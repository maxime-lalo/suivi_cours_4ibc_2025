/*
  Warnings:

  - Added the required column `ownerId` to the `NftCollection` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "NftCollection" ADD COLUMN     "ownerId" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "NftCollection" ADD CONSTRAINT "NftCollection_ownerId_fkey" FOREIGN KEY ("ownerId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
