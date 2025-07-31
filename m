Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D5267B171C1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Jul 2025 15:07:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0DEBC41B46;
	Thu, 31 Jul 2025 13:07:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tdRN9ZqKEqFj; Thu, 31 Jul 2025 13:07:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7155F427B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753967225;
	bh=tAeF8WmHIA4WSHovsQ98Vssck3x2vIwxfh1dGu+C6Gw=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Sr17uDa8wkTAY6u/KLTd2wNbxgVxJcnpYLxzlWwBvUHFbuZ/NflQ3Nrw6RmaTuE41
	 yUJ9WdUJMCmPmjBXbtRvpi7cStdOmXug70+nn4g7b5s++VGHWUNDGp+Hrd7/zzAPV+
	 yX6E8uUEHavIso8qNSTlD5rUGpq/t2vN8YCGvE+rw57JZO4pr6vHhu9QtA+cx5DOd9
	 +tpGPsiop6jl4Nti53fPdBhACYfyDjHMAV9y2PEt3+J1QwLYVy8Dvib1KHTkBGPn1i
	 ek0rpYAZrlWZY8pSMny79a1rSJSTTwiadB+ADVk4hOtTRu8BtRq6KI7ocLmSjhq97C
	 rV2xF1v1SGecQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7155F427B4;
	Thu, 31 Jul 2025 13:07:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7AC89160
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 13:07:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 77D244167A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 13:07:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lGUZPLIvCPTO for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Jul 2025 13:07:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CB1A6411EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB1A6411EC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CB1A6411EC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 13:07:02 +0000 (UTC)
X-CSE-ConnectionGUID: 3yZfOI0tR3Gj1GrjCD0k3A==
X-CSE-MsgGUID: +NwDVGQUR4SVIqt78KZ3Xw==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="56369460"
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="56369460"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 06:07:02 -0700
X-CSE-ConnectionGUID: 4a3x4C4QTHSFoiHq+4lgTw==
X-CSE-MsgGUID: 5RfmKOz4TMyEtqun6eJwCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="163704405"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa008.fm.intel.com with ESMTP; 31 Jul 2025 06:07:01 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Thu, 31 Jul 2025 14:50:25 +0200
Message-Id: <20250731125025.1683557-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753967223; x=1785503223;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=l0vq5qn3at3NW29rFgCNYsWN3p9fceKGmmZzgwuLhdc=;
 b=EBEoJWTyQdqBscC/79P0tX4XSCE+bIsD3JRoIs0tpWK6JUjzzeHzMmKk
 dZQV8SRuz+BVoNgIyIefpA4O1fkxv9cumzMHCDf1B78bRpmz8fP3qFAaM
 bon8C8jcQGSx+KZwbrE9sPBz695Vob6A/X9wkgmJydK+zrH+3k+YHr+4W
 FQ4fSXK025sLCANs++a/Ld/g1CEuw9s6LbPxeQY4QXpZYxEO67l8gNelg
 9g6HCUwi41joReyQeWjYihGip7V2SwqH0XqVaH8tfE1DVPLl++bWh54Hg
 q9mkejWA5QItVPcGPOjFbicGklDS5qcmRvDS1MOYrk3dv8CUm4L1/WGXt
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EBEoJWTy
Subject: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: reduce number of reads
 when getting OROM data
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently, during locating the CIVD section, the ixgbe driver loops
over the OROM area and at each iteration reads only OROM-datastruct-size
amount of data. This results in many small reads and is inefficient.

Optimize this by reading the entire OROM bank into memory once before
entering the loop. This significantly reduces the probing time.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 58 +++++++++++++------
 1 file changed, 39 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index 87b03c1992a8..048b2aae155a 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -3006,50 +3006,70 @@ static int ixgbe_get_nvm_srev(struct ixgbe_hw *hw,
  * Searches through the Option ROM flash contents to locate the CIVD data for
  * the image.
  *
- * Return: the exit code of the operation.
+ * Return: -ENOMEM when cannot allocate memory, -EDOM for checksum violation,
+ *	   -ENODATA when cannot find proper data, -EIO for faulty read or
+ *	   0 on success.
+ *
+ *	   On success @civd stores collected data.
  */
 static int
 ixgbe_get_orom_civd_data(struct ixgbe_hw *hw, enum ixgbe_bank_select bank,
 			 struct ixgbe_orom_civd_info *civd)
 {
-	struct ixgbe_orom_civd_info tmp;
+	u32 orom_size = hw->flash.banks.orom_size;
+	u8 *orom_data;
 	u32 offset;
 	int err;
 
+	orom_data = kzalloc(orom_size, GFP_KERNEL);
+	if (!orom_data)
+		return -ENOMEM;
+
+	err = ixgbe_read_flash_module(hw, bank,
+				      IXGBE_E610_SR_1ST_OROM_BANK_PTR, 0,
+				      orom_data, orom_size);
+	if (err) {
+		err = -EIO;
+		goto cleanup;
+	}
+
 	/* The CIVD section is located in the Option ROM aligned to 512 bytes.
 	 * The first 4 bytes must contain the ASCII characters "$CIV".
 	 * A simple modulo 256 sum of all of the bytes of the structure must
 	 * equal 0.
 	 */
-	for (offset = 0; (offset + SZ_512) <= hw->flash.banks.orom_size;
-	     offset += SZ_512) {
+	for (offset = 0; (offset + SZ_512) <= orom_size; offset += SZ_512) {
+		struct ixgbe_orom_civd_info *tmp;
 		u8 sum = 0;
 		u32 i;
 
-		err = ixgbe_read_flash_module(hw, bank,
-					      IXGBE_E610_SR_1ST_OROM_BANK_PTR,
-					      offset,
-					      (u8 *)&tmp, sizeof(tmp));
-		if (err)
-			return err;
+		BUILD_BUG_ON(sizeof(*tmp) > SZ_512);
+
+		tmp = (struct ixgbe_orom_civd_info *)&orom_data[offset];
 
 		/* Skip forward until we find a matching signature */
-		if (memcmp(IXGBE_OROM_CIV_SIGNATURE, tmp.signature,
-			   sizeof(tmp.signature)))
+		if (memcmp(IXGBE_OROM_CIV_SIGNATURE, tmp->signature,
+			   sizeof(tmp->signature)))
 			continue;
 
 		/* Verify that the simple checksum is zero */
-		for (i = 0; i < sizeof(tmp); i++)
-			sum += ((u8 *)&tmp)[i];
+		for (i = 0; i < sizeof(*tmp); i++)
+			sum += ((u8 *)tmp)[i];
 
-		if (sum)
-			return -EDOM;
+		if (sum) {
+			err = -EDOM;
+			goto cleanup;
+		}
 
-		*civd = tmp;
-		return 0;
+		*civd = *tmp;
+		err = 0;
+		goto cleanup;
 	}
 
-	return -ENODATA;
+	err = -ENODATA;
+cleanup:
+	kfree(orom_data);
+	return err;
 }
 
 /**
-- 
2.31.1

