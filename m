Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E4876C79E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Aug 2023 09:56:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 44F64813FE;
	Wed,  2 Aug 2023 07:56:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 44F64813FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690962983;
	bh=4OeD7SF3DlBkcAVOdhOpSbrsZ0njc3sYMBCENAFNNAg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=RsxB84yHvgqlDIsG3BnlQo0aOgAtaR08PDRmpsRHoTPrS9vjZuuFC37DgjWRm0liL
	 XS9HKX3180c3UjbSB36KKFCAPliLvO38cT7+V1+oKMljJRVzPvnsvq2qfbgu/tyOaO
	 A7MVFgDnpR1d/14STJXgKjlin4GCmJGpKXRSb8EvCumgMtXNCFvxLQRQzCr/U0SuR8
	 cYVntsA/Rqn3kH6g3ojAdet4cxNxPTsiIKgN+52A1mxkuCvuoEKCaIds/L/Jy947et
	 gEd05g7zE6VF+uCWoszvC6ny3lKiQcsUSOQkNNdLdVY7ftXInvY7Z79X6z+XjZLoeh
	 AUQgphvGG8Gjg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vTCA3r48ynxd; Wed,  2 Aug 2023 07:56:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3686F80C18;
	Wed,  2 Aug 2023 07:56:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3686F80C18
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9355E1BF360
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 07:56:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 697F840462
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 07:56:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 697F840462
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CUUMCmEdb5Lr for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Aug 2023 07:56:16 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 02 Aug 2023 07:56:16 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 133ED402C3
Received: from mgamail.intel.com (unknown [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 133ED402C3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 07:56:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="433350157"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="433350157"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2023 00:48:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="1059733010"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="1059733010"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmsmga005.fm.intel.com with ESMTP; 02 Aug 2023 00:48:56 -0700
From: Andrii Staikov <andrii.staikov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  2 Aug 2023 09:48:54 +0200
Message-Id: <20230802074854.3650629-1-andrii.staikov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690962976; x=1722498976;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ujXFlU+9VkxsCW5vjxMaLscmVuoj3Xt+zH95Nb74Jbc=;
 b=Vheh2fuqAYWzPtkE/aYJDWzad9kVUAQXKDvY6mzjW+mv24dcUi2qnrTf
 LN7Y14VRZFQElo97JjiDgsd5Qg0/FgS2iVI81C0zaIZFmaDXDcrxpODSk
 2t+Z9kGk5bq8UaZlNRj45VuUDE0JVBb6/iaBqQRIGlJozNzWVpZie/FAl
 lcu9/BBpoWGmwSnNWmlSWfcmvguqVSJRYMi4HPje393HVVpouTTaMbgDN
 MYqcXamo47tBt7DPRRqsi/wBLtQHuT9oGBEAtBlPiPMUIpa5CryAFSpcH
 n0D+x++qyXUGcoE14Jr0D2NVq0MfF4Pw8my98OpVnZURmvZbjMDwGDgnl
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Vheh2fuq
Subject: [Intel-wired-lan] [PATCH iwl-net v1] i40e: fix potential memory
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

Add defencive loop for all vsi-s and force resources cleanup.

Fixes: 41c445ff0f48 ("i40e: main driver core")
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
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
