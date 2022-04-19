Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C167D506FFD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Apr 2022 16:22:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD66C61301;
	Tue, 19 Apr 2022 14:22:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ylfKZ5ABJM6O; Tue, 19 Apr 2022 14:22:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C342661309;
	Tue, 19 Apr 2022 14:22:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AFFAF1BF319
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 14:22:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AAAD161307
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 14:22:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yj59qxzBvjez for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Apr 2022 14:22:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D942F61301
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 14:22:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1650378146;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=gx2u0UDEGlbJLmTjSX+0S/6XhMRFSaDMTCWYbhQAR20=;
 b=PviaDVWcldPDSxfs6gRZYnRbj1kIyXznvrdPZtGMMdRDQM4LaNl1O526t6caFBZyhss1sP
 fzhr1ruZzmi5d2FkzSojwA+ZByIAgqAAYfZp7Tg3tWNyO2BqvRnTOSud7fud3uZ9jRWiHn
 MS08lRJUYhcuqgSIVFBy13pi0ancghQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-502-2Ii0ajvxNeikvyfFkEhgzQ-1; Tue, 19 Apr 2022 10:22:25 -0400
X-MC-Unique: 2Ii0ajvxNeikvyfFkEhgzQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B3D86811E75;
 Tue, 19 Apr 2022 14:22:24 +0000 (UTC)
Received: from ceranb.redhat.com (unknown [10.40.194.169])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AAAC8145F94D;
 Tue, 19 Apr 2022 14:22:22 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Tue, 19 Apr 2022 16:22:21 +0200
Message-Id: <20220419142221.2349382-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Subject: [Intel-wired-lan] [PATCH net v2] ice: Protect vf_state check by
 cfg_lock in ice_vc_process_vf_msg()
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
Cc: Fei Liu <feliu@redhat.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 mschmidt@redhat.com, Brett Creeley <brett.creeley@intel.com>,
 open list <linux-kernel@vger.kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Previous patch labelled "ice: Fix incorrect locking in
ice_vc_process_vf_msg()"  fixed an issue with ignored messages
sent by VF driver but a small race window still left.

Recently caught trace during 'ip link set ... vf 0 vlan ...' operation:

[ 7332.995625] ice 0000:3b:00.0: Clearing port VLAN on VF 0
[ 7333.001023] iavf 0000:3b:01.0: Reset indication received from the PF
[ 7333.007391] iavf 0000:3b:01.0: Scheduling reset task
[ 7333.059575] iavf 0000:3b:01.0: PF returned error -5 (IAVF_ERR_PARAM) to our request 3
[ 7333.059626] ice 0000:3b:00.0: Invalid message from VF 0, opcode 3, len 4, error -1

Setting of VLAN for VF causes a reset of the affected VF using
ice_reset_vf() function that runs with cfg_lock taken:

1. ice_notify_vf_reset() informs IAVF driver that reset is needed and
   IAVF schedules its own reset procedure
2. Bit ICE_VF_STATE_DIS is set in vf->vf_state
3. Misc initialization steps
4. ice_sriov_post_vsi_rebuild() -> ice_vf_set_initialized() and that
   clears ICE_VF_STATE_DIS in vf->vf_state

Step 3 is mentioned race window because IAVF reset procedure runs in
parallel and one of its step is sending of VIRTCHNL_OP_GET_VF_RESOURCES
message (opcode==3). This message is handled in ice_vc_process_vf_msg()
and if it is received during the mentioned race window then it's
marked as invalid and error is returned to VF driver.

Protect vf_state check in ice_vc_process_vf_msg() by cfg_lock to avoid
this race condition.

Fixes: e6ba5273d4ed ("ice: Fix race conditions between virtchnl handling and VF ndo ops")
Tested-by: Fei Liu <feliu@redhat.com>
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 5612c032f15a..b72606c9e6d0 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -3625,6 +3625,8 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event)
 		return;
 	}
 
+	mutex_lock(&vf->cfg_lock);
+
 	/* Check if VF is disabled. */
 	if (test_bit(ICE_VF_STATE_DIS, vf->vf_states)) {
 		err = -EPERM;
@@ -3648,19 +3650,14 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event)
 				      NULL, 0);
 		dev_err(dev, "Invalid message from VF %d, opcode %d, len %d, error %d\n",
 			vf_id, v_opcode, msglen, err);
-		ice_put_vf(vf);
-		return;
+		goto finish;
 	}
 
-	mutex_lock(&vf->cfg_lock);
-
 	if (!ice_vc_is_opcode_allowed(vf, v_opcode)) {
 		ice_vc_send_msg_to_vf(vf, v_opcode,
 				      VIRTCHNL_STATUS_ERR_NOT_SUPPORTED, NULL,
 				      0);
-		mutex_unlock(&vf->cfg_lock);
-		ice_put_vf(vf);
-		return;
+		goto finish;
 	}
 
 	switch (v_opcode) {
@@ -3773,6 +3770,7 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event)
 			 vf_id, v_opcode, err);
 	}
 
+finish:
 	mutex_unlock(&vf->cfg_lock);
 	ice_put_vf(vf);
 }
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
