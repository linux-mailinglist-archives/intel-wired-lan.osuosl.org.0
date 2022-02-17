Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC984B9523
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Feb 2022 01:52:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 64530416E2;
	Thu, 17 Feb 2022 00:52:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9LtqqGUslBKV; Thu, 17 Feb 2022 00:52:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 579944167E;
	Thu, 17 Feb 2022 00:52:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2B92F1C113E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Feb 2022 00:51:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EDECB61C47
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Feb 2022 00:51:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mSnAanFfANqv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Feb 2022 00:51:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 326B961C5C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Feb 2022 00:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645059111; x=1676595111;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S5RpcudJS+BVYm2upx7+ZvIGQLFqVqRzoEGdjupgK2o=;
 b=hnroal75dA48vnUQttXrjIbteiweZSuUj5/s0VDifFRoQ4+loPfmTWVM
 oVBgXhFucThdqbdVNnrxB30ohz4vdZD8SI+7tgc540CVlSTNNiXz+Ym94
 ioJlLBaGgGSZhMMAq1pNahYlbpiPWymn0Ea8tPhWqdMi+rwgWNoIWSQmo
 wfEUwsGq8kP9KEm8n03IOujvcm8wzZfjN4VOlKgh1kUNYwc/6+AT4jNt4
 WsrwogpwPTbzs6Qo24vq1i1NQZYvsg0eHsbJDRZeRc302d9eVtGnJ/jV1
 4tLq0oosHSxkm2fT9SNd+UVJq2i2yjS/meGJcRhmnQbbJCO7/nW46APLN w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="250955992"
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="250955992"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 16:51:42 -0800
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="588879570"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 16:51:42 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 16 Feb 2022 16:51:36 -0800
Message-Id: <20220217005136.75627-3-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.129.gb80121027d12
In-Reply-To: <20220217005136.75627-1-jacob.e.keller@intel.com>
References: <20220217005136.75627-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net PATCH 2/2] ice: stop disabling VFs due to PF
 error responses
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

The ice_vc_send_msg_to_vf function has logic to detect "failure"
responses being sent to a VF. If a VF is sent more than
ICE_DFLT_NUM_INVAL_MSGS_ALLOWED then the VF is marked as disabled.
Almost identical logic also existed in the i40e driver.

This logic was added to the ice driver in commit 1071a8358a28 ("ice:
Implement virtchnl commands for AVF support") which itself copied from
the i40e implementation in commit 5c3c48ac6bf5 ("i40e: implement virtual
device interface").

Neither commit provides a proper explanation or justification of the
check. In fact, later commits to i40e changed the logic to allow
bypassing the check in some specific instances.

The "logic" for this seems to be that error responses somehow indicate a
malicious VF. This is not really true. The PF might be sending an error
for any number of reasons such as lack of resources, etc.

Additionally, this causes the PF to log an info message for every failed
VF response which may confuse users, and can spam the kernel log.

This behavior is not documented as part of any requirement for our
products and other operating system drivers such as the FreeBSD
implementation of our drivers do not include this type of check.

In fact, the change from dev_err to dev_info in i40e commit 18b7af57d9c1
("i40e: Lower some message levels") explains that these messages
typically don't actually indicate a real issue. It is quite likely that
a user who hits this in practice will be very confused as the VF will be
disabled without an obvious way to recover.

We already have robust malicious driver detection logic using actual
hardware detection mechanisms that detect and prevent invalid device
usage. Remove the logic since its not a documented requirement and the
behavior is not intuitive.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c   | 18 ------------------
 .../net/ethernet/intel/ice/ice_virtchnl_pf.h   |  3 ---
 2 files changed, 21 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 8a61b23f7cb3..353c2a3755d0 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -2180,24 +2180,6 @@ ice_vc_send_msg_to_vf(struct ice_vf *vf, u32 v_opcode,
 
 	dev = ice_pf_to_dev(pf);
 
-	/* single place to detect unsuccessful return values */
-	if (v_retval) {
-		vf->num_inval_msgs++;
-		dev_info(dev, "VF %d failed opcode %d, retval: %d\n", vf->vf_id,
-			 v_opcode, v_retval);
-		if (vf->num_inval_msgs > ICE_DFLT_NUM_INVAL_MSGS_ALLOWED) {
-			dev_err(dev, "Number of invalid messages exceeded for VF %d\n",
-				vf->vf_id);
-			dev_err(dev, "Use PF Control I/F to enable the VF\n");
-			set_bit(ICE_VF_STATE_DIS, vf->vf_states);
-			return -EIO;
-		}
-	} else {
-		vf->num_valid_msgs++;
-		/* reset the invalid counter, if a valid message is received. */
-		vf->num_inval_msgs = 0;
-	}
-
 	aq_ret = ice_aq_send_msg_to_vf(&pf->hw, vf->vf_id, v_opcode, v_retval,
 				       msg, msglen, NULL);
 	if (aq_ret && pf->hw.mailboxq.sq_last_status != ICE_AQ_RC_ENOSYS) {
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
index 752487a1bdd6..8f27255cc0cc 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
@@ -14,7 +14,6 @@
 #define ICE_MAX_MACADDR_PER_VF		18
 
 /* Malicious Driver Detection */
-#define ICE_DFLT_NUM_INVAL_MSGS_ALLOWED		10
 #define ICE_MDD_EVENTS_THRESHOLD		30
 
 /* Static VF transaction/status register def */
@@ -134,8 +133,6 @@ struct ice_vf {
 	unsigned int max_tx_rate;	/* Maximum Tx bandwidth limit in Mbps */
 	DECLARE_BITMAP(vf_states, ICE_VF_STATES_NBITS);	/* VF runtime states */
 
-	u64 num_inval_msgs;		/* number of continuous invalid msgs */
-	u64 num_valid_msgs;		/* number of valid msgs detected */
 	unsigned long vf_caps;		/* VF's adv. capabilities */
 	u8 num_req_qs;			/* num of queue pairs requested by VF */
 	u16 num_mac;
-- 
2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
