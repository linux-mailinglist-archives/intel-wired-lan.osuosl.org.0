Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D46B556FD2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jun 2019 19:47:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3C70586A4F;
	Wed, 26 Jun 2019 17:47:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UDInmUInDc5w; Wed, 26 Jun 2019 17:47:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3D99F86A14;
	Wed, 26 Jun 2019 17:47:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BB2051BF326
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 17:47:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B8474860FC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 17:47:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6iyrvtSMuJ8x for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jun 2019 17:47:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4625E86144
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 17:47:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 10:47:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,420,1557212400"; d="scan'208";a="183218136"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga001.fm.intel.com with ESMTP; 26 Jun 2019 10:47:52 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 26 Jun 2019 02:20:21 -0700
Message-Id: <20190626092027.52845-10-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190626092027.52845-1-anthony.l.nguyen@intel.com>
References: <20190626092027.52845-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S22 10/16] ice: Update number of VF queue
 before setting VSI resources
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
Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>

In case there is a request from a VF to change its number of queues, and
the request was successful, we need to update number of queues
configured on the VF before updating corresponding VSI for that VF,
especially LAN Tx queue tree and TC update, otherwise, we would continued
to use old value of vf->num_vf_qs for allocated Tx/Rx queues...

Signed-off-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index f5eaf3059063..c26f379713a4 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -567,11 +567,6 @@ static int ice_alloc_vf_res(struct ice_vf *vf)
 	int tx_rx_queue_left;
 	int status;
 
-	/* setup VF VSI and necessary resources */
-	status = ice_alloc_vsi_res(vf);
-	if (status)
-		goto ice_alloc_vf_res_exit;
-
 	/* Update number of VF queues, in case VF had requested for queue
 	 * changes
 	 */
@@ -581,6 +576,11 @@ static int ice_alloc_vf_res(struct ice_vf *vf)
 	    vf->num_req_qs != vf->num_vf_qs)
 		vf->num_vf_qs = vf->num_req_qs;
 
+	/* setup VF VSI and necessary resources */
+	status = ice_alloc_vsi_res(vf);
+	if (status)
+		goto ice_alloc_vf_res_exit;
+
 	if (vf->trusted)
 		set_bit(ICE_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
 	else
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
