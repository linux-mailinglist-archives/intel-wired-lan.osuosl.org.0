Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F00E7789B4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Aug 2023 11:28:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B113B83112;
	Fri, 11 Aug 2023 09:28:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B113B83112
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691746132;
	bh=WTpTzI0soNxWx+BhL2FXc8M77GyCVNWsRjxzJ1NOKUE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=fHEr7FNzOLLA9DETDx/gLsxov5wQpL/u9rFsxuTHUrpWAF3+werXpMn6/0d1mplGs
	 LEv/JuIvg8aua9OPKvlTYA+uwx3hNjM34faU7wZiiylBAwCPRB6lUVP95YDoEV0tdh
	 v5Vm6c4d1tbdgiKHk6EpN5EYJNIvmziiYQUKCrolb6ZnhZK7DY433CqHgHCRXWEJjp
	 HhTv/L4dAunO88ukIr4NjO0JF+5jSN2FQS9XKHxTwP7jT0KJ0MZ043jDMXyh98ZZAB
	 /MLKKWu07VyEyWxw5GyDs44SIBGuPFhc7qVXriDLIkXZarSBulZudU4BJ8hoylF/38
	 T6nY44QwlUzmQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LhHs0cnClKvb; Fri, 11 Aug 2023 09:28:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A3533821AB;
	Fri, 11 Aug 2023 09:28:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A3533821AB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E549F1BF336
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 09:28:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B894340425
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 09:28:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B894340425
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DW1zizvbx9sb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Aug 2023 09:28:41 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E392D4027A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 09:28:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E392D4027A
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="374407819"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="374407819"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2023 02:28:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="876094252"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmsmga001.fm.intel.com with ESMTP; 11 Aug 2023 02:28:42 -0700
From: Andrii Staikov <andrii.staikov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 11 Aug 2023 11:28:36 +0200
Message-Id: <20230811092836.1707101-1-andrii.staikov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691746120; x=1723282120;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sYa92iiZ7rnoHJKxUotiWDogOkI1LRI9MP4pol5PvyQ=;
 b=DcAD0ow2k/jO0AXSc7Jti+TaGDLnqtGvY+VR2ehIqaju2BgzbSTLjcmj
 7ZbZ5fitBy1kWaTf8q2fkeV+T4aCgm/XFWRP2lt/a/2MATTLBngQYJj2B
 x0Dzh5qlYN/1vkJ+877scOlNuXuo5ZWzOCkUG0F4iTczdR3jjayfW3w0I
 /ups8etPRvprZJWV9N6+gmgLPo9P1GZu75zv6GKhOerkJZufTNOKU9mch
 u+Ki5wm3RzkTWhh0jA+WzMeB/TkHi1pYCvjSsKa6dr15IHXOJL9Pdr09X
 h59J0CyEZGvIlh9MLROskGixN0A2F0jiqo2zmojmEqIFc4sCd3N2/Adby
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DcAD0ow2
Subject: [Intel-wired-lan] [PATCH iwl-net v3] i40e: fix potential memory
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
number equal to the number of allocated VSIs.

Fixes: 41c445ff0f48 ("i40e: main driver core")
Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v1 -> v2: Changed commit message.
v2 -> v3: Fixed mistakes in the commit message.
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
