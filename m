Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 44DA3798736
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Sep 2023 14:42:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 457BE41DCF;
	Fri,  8 Sep 2023 12:42:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 457BE41DCF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694176942;
	bh=YlAKBE/25x6kF/c35a0wgb3jiKsh+If0AG/eEnZSvg0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=lQ2IKCFR+YgRoufEmyrUYwEpTk1ib5t84nljlf/grMpE4uSDKtae7o1swv3hSmvqd
	 ozpdn2h7C1IAwmKGMOoZ2DrZzmM6xa8w6Lza3TrUS50ztyrmFHQ7uLTiyVGBCN5jkj
	 cjUPp1Z8L8CvUiXoDrRl/n2C/cpde7ze/booIquuKnac4o/afRFukr9z5eZCma7RrC
	 KxZ+Cm8zFGtJyDoY7yef9PaTevSXQVqfk91yFfEnhW+5c0KoufmVpRlmWZWMRbZKrO
	 ACVBeY3u2V+dZguoXgrzF7510gcfOE/XUjLbmONj/iG+T9AVnATAIyWQrD3v0igZWW
	 TULfy4/Qs1DEw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EALOrYNBtEgM; Fri,  8 Sep 2023 12:42:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC01641C2B;
	Fri,  8 Sep 2023 12:42:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC01641C2B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EC7B31BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Sep 2023 12:42:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C0A9881FA5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Sep 2023 12:42:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C0A9881FA5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jSNpzqx_mx_u for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Sep 2023 12:42:13 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9B8C081326
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Sep 2023 12:42:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B8C081326
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="357940411"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="357940411"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 05:42:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="745601965"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="745601965"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmsmga007.fm.intel.com with ESMTP; 08 Sep 2023 05:42:03 -0700
From: Andrii Staikov <andrii.staikov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  8 Sep 2023 14:42:01 +0200
Message-Id: <20230908124201.1836101-1-andrii.staikov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694176933; x=1725712933;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1czcaAl8T7Va4mnRKKmDlySznPqbIwwcEkzNzmrbZDw=;
 b=Q+01Ds52V4rojcFYwpXljzNpQwKt+MSLSzUmAi/hr3ZgVlL6V0CxGBTs
 lXY2tSgEGU3GCxmlOn3n6+IBj845VxEIh2lIZhztr7XacNM88nWes2u2l
 jjue6dEj8jFOgJPvpZ0SMokHQ1slBXdBr6IYhBoLWqw+jzjbOb/cpiowi
 Wn4NdZOAV83eUtVJhdjumYpllBAHM/UOBDyhPvvMi3Zg/YedlpJpknAMy
 +pS1feXjuRGcXhe/IE9Dh+yAt/7mQjp60ahQCvQWvcn0dGh6edmcFTrty
 tKWn31eOI4B9/NWt1rM8ZjYV1HYNniHXWDASbKlRS6yc0HUOeGtmDBFF3
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q+01Ds52
Subject: [Intel-wired-lan] [PATCH iwl-net v4] i40e: fix potential memory
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, netdev@vger.kernel.org,
 Andrii Staikov <andrii.staikov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Instead of freeing memory of a single VSI, make sure
the memory for all VSIs is cleared before releasing VSIs.
Add releasing of their resources in a loop with the iteration
number equal to the number of allocated VSIs.

Fixes: 41c445ff0f48 ("i40e: main driver core")
Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v1 -> v2: Changed commit message.
v2 -> v3: Fixed mistakes in the commit message.
v3 -> v4: Remove redundant i40e_vsi_free_q_vectors() and kfree() calls.
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 29ad1797adce..a368a190a22e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -16323,11 +16323,15 @@ static void i40e_remove(struct pci_dev *pdev)
 			i40e_switch_branch_release(pf->veb[i]);
 	}
 
-	/* Now we can shutdown the PF's VSI, just before we kill
+	/* Now we can shutdown the PF's VSIs, just before we kill
 	 * adminq and hmc.
 	 */
-	if (pf->vsi[pf->lan_vsi])
-		i40e_vsi_release(pf->vsi[pf->lan_vsi]);
+	for (i = pf->num_alloc_vsi; i--;)
+		if (pf->vsi[i]) {
+			i40e_vsi_close(pf->vsi[i]);
+			i40e_vsi_release(pf->vsi[i]);
+			pf->vsi[i] = NULL;
+		}
 
 	i40e_cloud_filter_exit(pf);
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
