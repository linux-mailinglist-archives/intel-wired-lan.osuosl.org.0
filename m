Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F8AE43C92B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Oct 2021 14:05:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7AA8340299;
	Wed, 27 Oct 2021 12:05:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kWB02jLz1nE2; Wed, 27 Oct 2021 12:05:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 38119402C6;
	Wed, 27 Oct 2021 12:05:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1C5781BF368
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 12:05:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0B88060669
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 12:05:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oZbjuTqJaN2w for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Oct 2021 12:05:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2724A600CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 12:05:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="230417114"
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="230417114"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 05:04:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="494816849"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by fmsmga007.fm.intel.com with ESMTP; 27 Oct 2021 05:04:52 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 27 Oct 2021 14:04:47 +0200
Message-Id: <20211027120447.28075-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix VF failed to init
 adminq: -53
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
Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Norbert Zulinski <norbertx.zulinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Norbert Zulinski <norbertx.zulinski@intel.com>

Fix the problem with init adminq in VF reset handler.
When the PF finished reinitialize VF resource set VFR_VFACTIVE bit
in VF Reset Status register. It is sign for VF driver among others
to shut down and reinitialize the admin queue. VF handle reset procedure
is sampling this register to check every 10ms. PF driver give up to 20ms
to VF reset procedure. For a single VF reset it is enoungh time to do it
but in case request VF reset twice, the first VF reset can be not
completely finished when PF requests it one more time.
Fixed by adding additional time for VF to finish reset procedure
before sending next VF reset request by PF.

Fixes: 5c3c48ac6bf5 ("i40e: implement virtual device interface")
Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Signed-off-by: Norbert Zulinski <norbertx.zulinski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 4 ++++
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h | 2 ++
 2 files changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 5a488ce..ec0e52c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -172,6 +172,9 @@ void i40e_vc_notify_vf_reset(struct i40e_vf *vf)
 	    !test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states))
 		return;
 
+	if (ktime_get_ns() - vf->reset_timestamp < I40E_VF_RESET_TIME_MIN)
+		usleep_range(30000, 60000);
+
 	abs_vf_id = vf->vf_id + (int)vf->pf->hw.func_caps.vf_base_id;
 
 	pfe.event = VIRTCHNL_EVENT_RESET_IMPENDING;
@@ -1536,6 +1539,7 @@ bool i40e_reset_vf(struct i40e_vf *vf, bool flr)
 	i40e_cleanup_reset_vf(vf);
 
 	i40e_flush(hw);
+	vf->reset_timestamp = ktime_get_ns();
 	clear_bit(__I40E_VF_DISABLE, pf->state);
 
 	return true;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
index 49575a6..0e7d555 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
@@ -19,6 +19,7 @@
 #define I40E_MAX_VF_PROMISC_FLAGS	3
 
 #define I40E_VF_STATE_WAIT_COUNT	20
+#define I40E_VF_RESET_TIME_MIN		30000000	// time in nsec
 
 /* Various queue ctrls */
 enum i40e_queue_ctrl {
@@ -80,6 +81,7 @@ struct i40e_vf {
 	u16 port_vlan_id;
 	bool pf_set_mac;	/* The VMM admin set the VF MAC address */
 	bool trusted;
+	u64 reset_timestamp;
 
 	/* VSI indices - actual VSI pointers are maintained in the PF structure
 	 * When assigned, these will be non-zero, because VSI 0 is always
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
