# =======================
# BUILD STAGE
# =======================
FROM node:20-alpine AS builder

WORKDIR /app

RUN apk add --no-cache libc6-compat

COPY package.json pnpm-lock.yaml ./
RUN npm install -g pnpm
RUN pnpm install --frozen-lockfile

COPY . .

# Public origin used for og:url and rel="canonical". Baked into the client
# bundle at build time; see .env.example.
ARG NEXT_PUBLIC_SITE_URL
ENV NEXT_PUBLIC_SITE_URL=$NEXT_PUBLIC_SITE_URL

# Enable Next.js standalone output
RUN pnpm build

# =======================
# RUNTIME STAGE
# =======================
FROM node:20-alpine AS runner

WORKDIR /app

ENV NODE_ENV=production

# Create non-root user
RUN addgroup -S nextjs && adduser -S nextjs -G nextjs

# Copy only production files
COPY --from=builder /app/public ./public
COPY --from=builder /app/.next/standalone ./
COPY --from=builder /app/.next/static ./.next/static

USER nextjs

EXPOSE 3000

CMD ["node", "server.js"]

