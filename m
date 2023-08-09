Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AE093775E44
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Aug 2023 13:55:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DDC9C60FD5;
	Wed,  9 Aug 2023 11:55:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DDC9C60FD5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691582148;
	bh=kNs79/qyXDXBTbsvTGJPxuJzgbO10uxszjAIabQr56E=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Y1OXTYfRqXMN8mEYTjaHwtkZIURQ7A4rtok7mXFiGekNUQ22xbmBP92/q8fHAyiht
	 3oZeYRBe/2iwBvstGHnJkpYsCESdF2TALimHyCOwHqLlP6S5L+sxTfkrMUE3cQarwQ
	 Z7V5JCK6Or96ZnCCx45e5WJzznkDAfMhu+aDofgZEh351BL3t/UoVxi1e0PvCMC+9f
	 Fji/EhSyP4oAxqYFgQAJ17oBBseqehoqiOOe2uNXzVJD8nGKnq9MvBo13bSfbmEIEp
	 EkxsqJQWRTFiNEQ2mWIi+aIWQxl9Vk00kryHjw/Bv0Zt1Gdo99+PAckA62n3zBxkmc
	 8JPnvOTMcwaJQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ylBtVG304rYX; Wed,  9 Aug 2023 11:55:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CFA9360FBC;
	Wed,  9 Aug 2023 11:55:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CFA9360FBC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 489B21BF589
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 11:55:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 29CA24023F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 11:55:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 29CA24023F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JXm_v7VChaYT for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Aug 2023 11:55:42 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C0EE74010D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 11:55:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C0EE74010D
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="356067587"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="356067587"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2023 04:55:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="875217706"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmsmga001.fm.intel.com with ESMTP; 09 Aug 2023 04:55:42 -0700
From: Andrii Staikov <andrii.staikov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  9 Aug 2023 13:55:37 +0200
Message-Id: <20230809115537.1071857-1-andrii.staikov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691582141; x=1723118141;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KDpjm89YBqEPnvmEjVjpPpJfu+Gg7aXyofCxJDa9MIU=;
 b=lAk1Efj5JnEfRIkgOi03mVt9sQY/u326+jMglc/Hh6RMeYq2LrvvEvbm
 dp/WLVxHHf6QBnbICVQuebFS/j3a9ttmQIa7wi64Cz1p49DTO6CYX25mH
 zc9t/lle2mZ7FCVLKOmYzGHaBEBiBQMuv9+Q/T2LZO6DRKwkaWaRH2NgX
 vTVqYvvbmay29XPsbcpovYeM1ZzDMNbliFcRi3NPJE7XR+dJu/0E4sWKj
 A1nvF+YfKJ/G1mpJSb5QjKHCqbV7e4+InmuuHlnBuLxd2BU1AhVE/EOid
 cIjCkJiZB6cQ3O8ozR2+q2mXZNa/VTI7tvEzRkTq7v7l9o3UEL6o8Xy0v
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lAk1Efj5
Subject: [Intel-wired-lan] [PATCH iwl-net v2] i40e: fix potential memory
 leaks in i40e_remove()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Andrii Staikov <andrii.staikov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Instead of freeing memory of a single VSI, make sure
the memory for all VSIs is cleared before releasing VSIs.
Add releasing of their resources in a loop with the iteration
mumber equal to the number of allocated VSIs.

Fixes: 41c445ff0f48 ("i40e: main driver core")
Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v1 -> v2: Changed commit message.
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 29ad1797adce..1c892b14a337 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -16326,8 +16326,14 @@ static void i40e_remove(struct pci_dev *pdev)
 	/* Now we can shutdown the PF's VSI, just before we kill
 	 * adminq and hmc.
 	 */
-	if (pf->vsi[pf->lan_vsi])
-		i40e_vsi_release(pf->vsi[pf->lan_vsi]);
+	for (i = pf->num_alloc_vsi; i--;)
+		if (pf->vsi[i]) {
+			i40e_vsi_close(pf->vsi[i]);
+			i40e_vsi_free_q_vectors(pf->vsi[i]);
+			i40e_vsi_release(pf->vsi[i]);
+			kfree(pf->vsi[i]);
+			pf->vsi[i] = NULL;
+		}
 
 	i40e_cloud_filter_exit(pf);
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
