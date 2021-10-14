Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA3642DF0A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Oct 2021 18:19:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 20DBC80E8D;
	Thu, 14 Oct 2021 16:19:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aggDjUsjJ4Wm; Thu, 14 Oct 2021 16:19:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 44B2280E56;
	Thu, 14 Oct 2021 16:19:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6AC111BF575
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Oct 2021 16:19:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 55CBD404FD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Oct 2021 16:19:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5cOgG-OVVyCZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Oct 2021 16:19:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AD86240456
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Oct 2021 16:19:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="251151836"
X-IronPort-AV: E=Sophos;i="5.85,372,1624345200"; d="scan'208";a="251151836"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 09:10:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,372,1624345200"; d="scan'208";a="442878818"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga003.jf.intel.com with ESMTP; 14 Oct 2021 09:10:34 -0700
Received: from switcheroo.igk.intel.com (switcheroo.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 19EGAXwd008126
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Oct 2021 17:10:33 +0100
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 14 Oct 2021 18:09:58 +0200
Message-Id: <20211014160958.238689-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] ice: Forbid trusted VFs in
 switchdev mode
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

During auto-merge, check for switchdev mode has been inserted
in wrong place. It should be in ice_set_vf_trust not in ice_set_vf_mac.

Trusted VFs are forbidden in switchdev mode because they should
be configured only from the host side.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 3e7fdd7f2e1d..edbc417f8c7d 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -4815,11 +4815,6 @@ int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
 	struct ice_vf *vf;
 	int ret;
 
-	if (ice_is_eswitch_mode_switchdev(pf)) {
-		dev_info(ice_pf_to_dev(pf), "Trusted VF is forbidden in switchdev mode\n");
-		return -EOPNOTSUPP;
-	}
-
 	if (ice_validate_vf_id(pf, vf_id))
 		return -EINVAL;
 
@@ -4882,6 +4877,11 @@ int ice_set_vf_trust(struct net_device *netdev, int vf_id, bool trusted)
 	struct ice_vf *vf;
 	int ret;
 
+	if (ice_is_eswitch_mode_switchdev(pf)) {
+		dev_info(ice_pf_to_dev(pf), "Trusted VF is forbidden in switchdev mode\n");
+		return -EOPNOTSUPP;
+	}
+
 	if (ice_validate_vf_id(pf, vf_id))
 		return -EINVAL;
 
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
