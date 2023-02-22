Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6AFE69F9CB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Feb 2023 18:16:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 73CA0417CC;
	Wed, 22 Feb 2023 17:16:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 73CA0417CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677086204;
	bh=ff3yosO6mjYCIzC4+ZcNSIg2U6mM9MTPaC9Yr1dMQSI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VjgDNBvSv3XBpZXdeKx4aTnJZDScvlTWuQ1B9nzF0uYsOvAb2Do07zjzvSD5QJdDQ
	 DUGG2/FYY2hzgbnKdWUX1li2LQ0ZTLvjKGDK2B5R6cc4jRyUrsBZZUO9aJeVTNPFNX
	 InJSn4C748FcvVreFURbZeCkHvxvI8seNqhtaz4eUTaiPD7VaYv33tntvPnbWFS/vK
	 iTt0DHMEx5+O3E9cz1YHkuTkLsKrdd0NMOqOLWp9ebiapS1/ArsiSnTiDg/iNROwRZ
	 pXOJQBtETM3O1AEjfrNigfuWIuO9JEU3TySjXHheaOdNC/4YJ5feaRcuslXyfgUn1Z
	 jYZo0hBkINcJA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q-7C16AGsfVk; Wed, 22 Feb 2023 17:16:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5C31B417C9;
	Wed, 22 Feb 2023 17:16:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C31B417C9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 71B271BF364
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5CAE84171A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5CAE84171A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dUey4B9kC6jB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Feb 2023 17:09:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D1C141738
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9D1C141738
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="360466660"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="360466660"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 09:09:26 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="735980069"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="735980069"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 09:09:26 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 22 Feb 2023 09:09:17 -0800
Message-Id: <20230222170920.1629293-12-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.39.1.405.gd4c25cc71f83
In-Reply-To: <20230222170920.1629293-1-jacob.e.keller@intel.com>
References: <20230222170920.1629293-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677085789; x=1708621789;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Cv/SyS9aNXC6PrT5itosZpaJj9zMFmZ7hjrjKeS1osQ=;
 b=D9Hf1pIlTBMVBfMcHnEue2ESzbSHnOIGPjCBLyTF2wUB7v91qbwlArTz
 Dxu0bmc+CTwsXbJx+J6W+pbjsPk6MbE5Ag3iG+rKXhfbNP6ZV6rJDtJrr
 LejL3L6LJmb3xm+K+gIDKGwEC/WarR4qWqP98rfGlrVuh+Hpbhy8t14Fs
 Vql1fcvs2szVwS+vNV6dALAWn4N3WsCRHmKeNBfrW43H/y2SpFVT5XK9Z
 r2Rwk0FQDodV05PfJ3TFWTOB9kSgBm3h20MST7lu0YXLWFiDHRycNzUbN
 qH4zqyTVa2wFAT05mB/FZABi6IRUVdLADy+zDh2nI1FyIKw29hJvIj7Zr
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=D9Hf1pIl
Subject: [Intel-wired-lan] [intel-next PATCH 11/14] ice: pass mbxdata to
 ice_is_malicious_vf()
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice_is_malicious_vf() function takes information about the current
state of the mailbox during a single interrupt. This information includes
the number of messages processed so far, as well as the number of pending
messages not yet processed.

A future refactor is going to make ice_vc_process_vf_msg() call
ice_is_malicious_vf() instead of having it called separately in ice_main.c
This change will require passing all the necessary arguments into
ice_vc_process_vf_msg().

To make this simpler, have the main loop fill in the struct ice_mbx_data
and pass that rather than passing in the num_msg_proc and num_msg_pending.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c  | 10 +++++++++-
 drivers/net/ethernet/intel/ice/ice_sriov.c | 14 +++-----------
 drivers/net/ethernet/intel/ice/ice_sriov.h |  5 ++---
 3 files changed, 14 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 615a731d7afe..a7e7a186009e 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1393,6 +1393,8 @@ static void ice_aq_cancel_waiting_tasks(struct ice_pf *pf)
 	wake_up(&pf->aq_wait_queue);
 }
 
+#define ICE_MBX_OVERFLOW_WATERMARK 64
+
 /**
  * __ice_clean_ctrlq - helper function to clean controlq rings
  * @pf: ptr to struct ice_pf
@@ -1483,6 +1485,7 @@ static int __ice_clean_ctrlq(struct ice_pf *pf, enum ice_ctl_q q_type)
 		return 0;
 
 	do {
+		struct ice_mbx_data data = {};
 		u16 opcode;
 		int ret;
 
@@ -1509,7 +1512,12 @@ static int __ice_clean_ctrlq(struct ice_pf *pf, enum ice_ctl_q q_type)
 			ice_vf_lan_overflow_event(pf, &event);
 			break;
 		case ice_mbx_opc_send_msg_to_pf:
-			if (!ice_is_malicious_vf(pf, &event, i, pending))
+			data.num_msg_proc = i;
+			data.num_pending_arq = pending;
+			data.max_num_msgs_mbx = hw->mailboxq.num_rq_entries;
+			data.async_watermark_val = ICE_MBX_OVERFLOW_WATERMARK;
+
+			if (!ice_is_malicious_vf(pf, &event, &data))
 				ice_vc_process_vf_msg(pf, &event);
 			break;
 		case ice_aqc_opc_fw_logging:
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 938be486721e..5ae923ea979c 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -1782,16 +1782,14 @@ void ice_restore_all_vfs_msi_state(struct pci_dev *pdev)
  * ice_is_malicious_vf - helper function to detect a malicious VF
  * @pf: ptr to struct ice_pf
  * @event: pointer to the AQ event
- * @num_msg_proc: the number of messages processed so far
- * @num_msg_pending: the number of messages peinding in admin queue
+ * @mbxdata: data about the state of the mailbox
  */
 bool
 ice_is_malicious_vf(struct ice_pf *pf, struct ice_rq_event_info *event,
-		    u16 num_msg_proc, u16 num_msg_pending)
+		    struct ice_mbx_data *mbxdata)
 {
 	s16 vf_id = le16_to_cpu(event->desc.retval);
 	struct device *dev = ice_pf_to_dev(pf);
-	struct ice_mbx_data mbxdata;
 	bool report_malvf = false;
 	struct ice_vf *vf;
 	int status;
@@ -1803,14 +1801,8 @@ ice_is_malicious_vf(struct ice_pf *pf, struct ice_rq_event_info *event,
 	if (test_bit(ICE_VF_STATE_DIS, vf->vf_states))
 		goto out_put_vf;
 
-	mbxdata.num_msg_proc = num_msg_proc;
-	mbxdata.num_pending_arq = num_msg_pending;
-	mbxdata.max_num_msgs_mbx = pf->hw.mailboxq.num_rq_entries;
-#define ICE_MBX_OVERFLOW_WATERMARK 64
-	mbxdata.async_watermark_val = ICE_MBX_OVERFLOW_WATERMARK;
-
 	/* check to see if we have a newly malicious VF */
-	status = ice_mbx_vf_state_handler(&pf->hw, &mbxdata, &vf->mbx_info,
+	status = ice_mbx_vf_state_handler(&pf->hw, mbxdata, &vf->mbx_info,
 					  &report_malvf);
 	if (status)
 		goto out_put_vf;
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.h b/drivers/net/ethernet/intel/ice/ice_sriov.h
index 1082b0691a3f..8fa61d954fae 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.h
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.h
@@ -36,7 +36,7 @@ void ice_free_vfs(struct ice_pf *pf);
 void ice_restore_all_vfs_msi_state(struct pci_dev *pdev);
 bool
 ice_is_malicious_vf(struct ice_pf *pf, struct ice_rq_event_info *event,
-		    u16 num_msg_proc, u16 num_msg_pending);
+		    struct ice_mbx_data *mbxdata);
 
 int
 ice_set_vf_port_vlan(struct net_device *netdev, int vf_id, u16 vlan_id, u8 qos,
@@ -75,8 +75,7 @@ static inline void ice_restore_all_vfs_msi_state(struct pci_dev *pdev) { }
 static inline bool
 ice_is_malicious_vf(struct ice_pf __always_unused *pf,
 		    struct ice_rq_event_info __always_unused *event,
-		    u16 __always_unused num_msg_proc,
-		    u16 __always_unused num_msg_pending)
+		    struct ice_mbx_data *mbxdata)
 {
 	return false;
 }
-- 
2.39.1.405.gd4c25cc71f83

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
