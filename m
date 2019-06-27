Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5277258E54
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jun 2019 01:08:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 89CF4874F7;
	Thu, 27 Jun 2019 23:08:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xIDuTr2F4Sni; Thu, 27 Jun 2019 23:08:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A7A288697D;
	Thu, 27 Jun 2019 23:08:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 12D431BF859
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2019 23:08:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0D8B8880B3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2019 23:08:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QadEP+XLC+vA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jun 2019 23:08:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1795C88007
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2019 23:08:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 16:08:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,425,1557212400"; d="scan'208";a="156396182"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga008.jf.intel.com with ESMTP; 27 Jun 2019 16:08:25 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jun 2019 07:41:00 -0700
Message-Id: <20190627144101.24280-14-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190627144101.24280-1-anthony.l.nguyen@intel.com>
References: <20190627144101.24280-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S23 14/15] ice: Use smaller sized integer
 types
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

From: Pawel Kaminski <pawel.kaminski@intel.com>

The max number queues supported by the device is 768; we only need
a u16 to represent this.

Signed-off-by: Pawel Kaminski <pawel.kaminski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index f2ebbe83ae4c..72a9e79dd76d 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -2339,11 +2339,11 @@ static int ice_vc_request_qs_msg(struct ice_vf *vf, u8 *msg)
 	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
 	struct virtchnl_vf_res_request *vfres =
 		(struct virtchnl_vf_res_request *)msg;
-	int req_queues = vfres->num_queue_pairs;
+	u16 req_queues = vfres->num_queue_pairs;
 	struct ice_pf *pf = vf->pf;
-	int max_allowed_vf_queues;
-	int tx_rx_queue_left;
-	int cur_queues;
+	u16 max_allowed_vf_queues;
+	u16 tx_rx_queue_left;
+	u16 cur_queues;
 
 	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
@@ -2353,10 +2353,10 @@ static int ice_vc_request_qs_msg(struct ice_vf *vf, u8 *msg)
 	cur_queues = vf->num_vf_qs;
 	tx_rx_queue_left = min_t(int, pf->q_left_tx, pf->q_left_rx);
 	max_allowed_vf_queues = tx_rx_queue_left + cur_queues;
-	if (req_queues <= 0) {
+	if (!req_queues) {
 		dev_err(&pf->pdev->dev,
-			"VF %d tried to request %d queues. Ignoring.\n",
-			vf->vf_id, req_queues);
+			"VF %d tried to request 0 queues. Ignoring.\n",
+			vf->vf_id);
 	} else if (req_queues > ICE_MAX_BASE_QS_PER_VF) {
 		dev_err(&pf->pdev->dev,
 			"VF %d tried to request more than %d queues.\n",
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
