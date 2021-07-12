Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3263C64C2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jul 2021 22:07:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 296248291A;
	Mon, 12 Jul 2021 20:07:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xf1UeuloBkQl; Mon, 12 Jul 2021 20:07:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 53E3F827F0;
	Mon, 12 Jul 2021 20:07:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AF52D1BF215
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jul 2021 20:07:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 98DC440552
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jul 2021 20:07:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I1Llum198ETr for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jul 2021 20:07:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3922640319
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jul 2021 20:07:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10043"; a="208230314"
X-IronPort-AV: E=Sophos;i="5.84,234,1620716400"; d="scan'208";a="208230314"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2021 13:07:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,234,1620716400"; d="scan'208";a="629793205"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.168])
 by orsmga005.jf.intel.com with ESMTP; 12 Jul 2021 13:07:45 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 12 Jul 2021 07:54:25 -0400
Message-Id: <20210712115425.214965-1-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] ice: rearm other interrupt cause register
 after enabling VFs
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The other interrupt cause register (OICR), global interrupt 0, is
disabled when enabling VFs to prevent handling VFLR. If the OICR is
not rearmed then the VF cannot communicate with the PF.

Rearm the OICR after enabling VFs.

Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 501331b6f70b..0a2e0b2c9227 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -1952,6 +1952,10 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
 	if (ice_eswitch_configure(pf))
 		goto err_unroll_sriov;
 
+	/* rearm global interrupts */
+	if (test_and_clear_bit(ICE_OICR_INTR_DIS, pf->state))
+		ice_irq_dynamic_ena(hw, NULL, NULL);
+
 	return 0;
 
 err_unroll_sriov:
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
