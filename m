Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3F12E8A9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 May 2019 01:04:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 56E3F84B65;
	Wed, 29 May 2019 23:04:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P7oyWq_5ItJn; Wed, 29 May 2019 23:04:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 20CFC84AD2;
	Wed, 29 May 2019 23:04:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4FF8E1BF286
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2019 23:04:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4CB3486DBD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2019 23:04:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tjha-OqesplM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 May 2019 23:04:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 119F086DDE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2019 23:04:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 16:04:05 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.154])
 by fmsmga001.fm.intel.com with ESMTP; 29 May 2019 16:04:04 -0700
From: Lihong Yang <lihong.yang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 29 May 2019 16:06:42 -0700
Message-Id: <20190529230642.87106-1-lihong.yang@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] i40e: Check and set the PF driver state
 first in i40e_ndo_set_vf_mac
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

The PF driver state flag __I40E_VIRTCHNL_OP_PENDING needs to be
checked and set at the beginning of i40e_ndo_set_vf_mac. Otherwise,
if there are error conditions before it, the flag will be cleared
unexpectedly by this function to cause potential race conditions.
Hence move the check to the top of this function.

Signed-off-by: Lihong Yang <lihong.yang@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 38484ed6880d..ac3a130ee7d4 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -3940,6 +3940,11 @@ int i40e_ndo_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
 	int bkt;
 	u8 i;
 
+	if (test_and_set_bit(__I40E_VIRTCHNL_OP_PENDING, pf->state)) {
+		dev_warn(&pf->pdev->dev, "Unable to configure VFs, other operation is pending.\n");
+		return -EAGAIN;
+	}
+
 	/* validate the request */
 	ret = i40e_validate_vf(pf, vf_id);
 	if (ret)
@@ -3964,11 +3969,6 @@ int i40e_ndo_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
 		goto error_param;
 	}
 
-	if (test_and_set_bit(__I40E_VIRTCHNL_OP_PENDING, pf->state)) {
-		dev_warn(&pf->pdev->dev, "Unable to configure VFs, other operation is pending.\n");
-		return -EAGAIN;
-	}
-
 	if (is_multicast_ether_addr(mac)) {
 		dev_err(&pf->pdev->dev,
 			"Invalid Ethernet address %pM for VF %d\n", mac, vf_id);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
