Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C9EA9F5B6A
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Nov 2019 23:54:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 85BCE86FFF;
	Fri,  8 Nov 2019 22:54:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v280HnFSXGDa; Fri,  8 Nov 2019 22:54:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D2F3387475;
	Fri,  8 Nov 2019 22:54:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CE0191BF5DB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 22:54:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C8AD324723
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 22:54:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R1+9wkOH6cV4 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Nov 2019 22:54:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id 7DE662426B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 22:54:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 14:54:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,283,1569308400"; d="scan'208";a="201478830"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga008.fm.intel.com with ESMTP; 08 Nov 2019 14:54:16 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  8 Nov 2019 06:23:21 -0800
Message-Id: <20191108142331.10221-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108142331.10221-1-anthony.l.nguyen@intel.com>
References: <20191108142331.10221-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S33 05/15] ice: fix stack leakage
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

From: Jesse Brandeburg <jesse.brandeburg@intel.com>

In the case of an invalid virtchannel request the driver
would return uninitialized data to the VF from the PF stack
which is a bug.  Fix by initializing the stack variable
earlier in the function before any return paths can be taken.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index fd419230a6c0..f8d26674cf5a 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -1886,8 +1886,8 @@ static int ice_vc_get_stats_msg(struct ice_vf *vf, u8 *msg)
 	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
 	struct virtchnl_queue_select *vqs =
 		(struct virtchnl_queue_select *)msg;
+	struct ice_eth_stats stats = { 0 };
 	struct ice_pf *pf = vf->pf;
-	struct ice_eth_stats stats;
 	struct ice_vsi *vsi;
 
 	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
@@ -1906,7 +1906,6 @@ static int ice_vc_get_stats_msg(struct ice_vf *vf, u8 *msg)
 		goto error_param;
 	}
 
-	memset(&stats, 0, sizeof(struct ice_eth_stats));
 	ice_update_eth_stats(vsi);
 
 	stats = vsi->eth_stats;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
