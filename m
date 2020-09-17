Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C39BC26E67E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Sep 2020 22:19:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7FDA18764A;
	Thu, 17 Sep 2020 20:19:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hNeYUh5CkiTq; Thu, 17 Sep 2020 20:19:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9875586D7D;
	Thu, 17 Sep 2020 20:19:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 494C41BF37B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 20:19:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4390087734
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 20:19:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id djytAM4vlbrg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Sep 2020 20:19:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A2E4B8772A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 20:19:15 +0000 (UTC)
IronPort-SDR: f7zB4Z3in39+Tl5BT/Hwa0Dv/in8H6cYmLgSUdi9YJ+s1L9Z3mj1wF/HfqF3MXF1wfZpozadkv
 2ieLabTVXMtw==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="160711575"
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="160711575"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 13:19:14 -0700
IronPort-SDR: ZYsqrvvYaJemqibjche6LKS8kumgkzqs4InMWevJnUfFASTPNukA+0m1axhnXH4ZBNWqMKJ5+w
 VfNU86TMikLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="508574681"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by fmsmga005.fm.intel.com with ESMTP; 17 Sep 2020 13:19:13 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Sep 2020 13:13:37 -0700
Message-Id: <20200917201347.81570-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200917201347.81570-1-anthony.l.nguyen@intel.com>
References: <20200917201347.81570-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S53 05/15] ice: Set trusted VF as default
 VSI when setting allmulti on
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

From: Brett Creeley <brett.creeley@intel.com>

Currently the PF will only set a trusted VF as the default VSI when it
requests FLAG_VF_UNICAST_PROMISC over VIRTCHNL. However, when
FLAG_VF_MULTICAST_PROMISC is set it's expected that the trusted VF will
see multicast packets that don't have a matching destination MAC in the
devices internal switch. Fix this by setting the trusted VF as the
default VSI if either FLAG_VF_UNICAST_PROMISC or
FLAG_VF_MULTICAST_PROMISC is set.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 35ed71694d44..0478d8892f80 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -2382,7 +2382,7 @@ static int ice_vc_cfg_promiscuous_mode_msg(struct ice_vf *vf, u8 *msg)
 	}
 
 	if (!test_bit(ICE_FLAG_VF_TRUE_PROMISC_ENA, pf->flags)) {
-		bool set_dflt_vsi = !!(info->flags & FLAG_VF_UNICAST_PROMISC);
+		bool set_dflt_vsi = alluni || allmulti;
 
 		if (set_dflt_vsi && !ice_is_dflt_vsi_in_use(pf->first_sw))
 			/* only attempt to set the default forwarding VSI if
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
