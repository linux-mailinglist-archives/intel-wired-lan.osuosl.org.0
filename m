Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE41D1D5D76
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:57:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 70B9789A27;
	Sat, 16 May 2020 00:57:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ls4-+nTl4CfF; Sat, 16 May 2020 00:57:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id ECDC189744;
	Sat, 16 May 2020 00:57:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1BC661BF9C6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:57:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 12572204BE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:57:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R2+uOC-pIlWW for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:57:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id 213F522795
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:57:42 +0000 (UTC)
IronPort-SDR: LUYbCNgTw47bGqOH5JoxGzipjx5ac2B40SNV6P/dShVdsKqu18Ist5Z+wWNGDmOzCYs74IMzls
 RSZZQ5/Cnbvw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:57:40 -0700
IronPort-SDR: HAkvzDznQ5pDcpY9HJLB4a/Rq+nGMcC6qxpUUC+83NuQI6uVfIopZ0AZpT6IGTo43ZzzUAabGz
 eJvDgp1/6XVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="464922701"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by fmsmga005.fm.intel.com with ESMTP; 15 May 2020 17:57:40 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:55:01 -0700
Message-Id: <20200516005506.5113-4-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200516005506.5113-1-anthony.l.nguyen@intel.com>
References: <20200516005506.5113-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S46 4/9] ice: Allow VF to request reset as
 soon as it's initialized
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

A VF driver has the ability to request reset via VIRTCHNL_OP_RESET_VF.
This is a required step in VF driver load. Currently, the PF is only
allowing a VF to request reset using this method after the VF has
already communicated resources via VIRTCHNL_OP_GET_VF_RESOURCES.
However, this is incorrect because the VF can request reset before
requesting resources. Fix this by allowing the VF to request a reset
once it has been initialized.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 0ca614fa97bb..48ab7d89729e 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -1989,7 +1989,7 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
  */
 static void ice_vc_reset_vf_msg(struct ice_vf *vf)
 {
-	if (test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states))
+	if (test_bit(ICE_VF_STATE_INIT, vf->vf_states))
 		ice_reset_vf(vf, false);
 }
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
