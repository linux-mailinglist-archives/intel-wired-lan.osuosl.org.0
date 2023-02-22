Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 836E969F9BC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Feb 2023 18:16:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1586441751;
	Wed, 22 Feb 2023 17:16:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1586441751
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677086169;
	bh=dewbCWd00+wz/C/mwd1rNMRY5VWt2PSRdg+slilkExw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dSOo2TggC7qmlt96bcykxQI9vBLNxiNEdNTG3p0EAzPzntvwhTkGAj3nEpTCXRjkv
	 K0YlmLwMqmQxZ0s7f7HSISx8YLwNUTXrq3CS4rUkLahn8gCd7+7b1ZeOLQ1qtW+sWK
	 OBnV5guKvu75RJOiOEOoNXi/e/enuAU/gJ6s4+hAhqu3D+CSNDdFILwIRWxXGS9bgk
	 tjiQKQGdH/I53DWJYiB3QAx/WlX3Si35l0uPvF0CRMTH9vFo1sHJV/d+NDUjjdHkz9
	 imRWlwhMN2YgzMECDkfFATLfEa3NND/VlRRL2/WyOwxlgo9Oq231Ddx6IARiVNG0kG
	 bYXzWGkYjgJoQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id US4KnPE2-rlk; Wed, 22 Feb 2023 17:16:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6D37F41717;
	Wed, 22 Feb 2023 17:16:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6D37F41717
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 51E331BF364
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 718C26115C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 718C26115C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hf20xopMlmHy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Feb 2023 17:09:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BBDCF60B12
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BBDCF60B12
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="360466656"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="360466656"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 09:09:26 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="735980060"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="735980060"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 09:09:25 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 22 Feb 2023 09:09:14 -0800
Message-Id: <20230222170920.1629293-9-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.39.1.405.gd4c25cc71f83
In-Reply-To: <20230222170920.1629293-1-jacob.e.keller@intel.com>
References: <20230222170920.1629293-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677085788; x=1708621788;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zIW66WkZW3K9V8zy8Px9LzK0J4/RZt3ACm4Mc6XHkSU=;
 b=VPB0EK/BkDIHGg7cY8kcYNQewCyuHymL03n6Pp5u25dHh9himA1K1rAI
 nt+SX2Yg5eneIw7HZ62DsTsD/vTXLDRoEUuxUNiAW8Pu/60ZMbEx9wx4P
 PakRdiFpWtvrFlnV402HtqTdMCGhwTSaP8VGK1liLAaH2ciwa9UgK6rR6
 zZ/Dp/cPtIClK2mf/Ah1J3vdmCTcgtZQGbfRuNkCu5lxWUrXfIZVrAXdD
 5w6sZIGphRLuI8AGwWa0yPm9pmKysFNav2vhqZvw9V7VV/AqLpijr3eyM
 qxQsEXPnLTTkTq2PMUcF2MWFFsWVF/AAi/LRyuu9gVgm+Kyb29ZR+xCLJ
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VPB0EK/B
Subject: [Intel-wired-lan] [intel-next PATCH 08/14] ice: declare
 ice_vc_process_vf_msg in ice_virtchnl.h
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

The ice_vc_process_vf_msg function is the main entry point for handling
virtchnl messages. This function is defined in ice_virtchnl.c but its
declaration is still in ice_sriov.c

The ice_sriov.c file used to contain all of the virtualization logic until
commit bf93bf791cec ("ice: introduce ice_virtchnl.c and ice_virtchnl.h")
moved the virtchnl logic to its own file.

The ice_vc_process_vf_msg function should have had its declaration moved to
ice_virtchnl.h then. Fix this.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.h    | 3 ---
 drivers/net/ethernet/intel/ice/ice_virtchnl.h | 6 ++++++
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.h b/drivers/net/ethernet/intel/ice/ice_sriov.h
index 955ab810a198..1082b0691a3f 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.h
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.h
@@ -33,7 +33,6 @@ int
 ice_get_vf_cfg(struct net_device *netdev, int vf_id, struct ifla_vf_info *ivi);
 
 void ice_free_vfs(struct ice_pf *pf);
-void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event);
 void ice_restore_all_vfs_msi_state(struct pci_dev *pdev);
 bool
 ice_is_malicious_vf(struct ice_pf *pf, struct ice_rq_event_info *event,
@@ -68,8 +67,6 @@ ice_vc_validate_pattern(struct ice_vf *vf, struct virtchnl_proto_hdrs *proto);
 static inline void ice_process_vflr_event(struct ice_pf *pf) { }
 static inline void ice_free_vfs(struct ice_pf *pf) { }
 static inline
-void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event) { }
-static inline
 void ice_vf_lan_overflow_event(struct ice_pf *pf, struct ice_rq_event_info *event) { }
 static inline void ice_print_vfs_mdd_events(struct ice_pf *pf) { }
 static inline void ice_print_vf_rx_mdd_event(struct ice_vf *vf) { }
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.h b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
index b454654d7b0c..6d5af29c855e 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
@@ -63,6 +63,7 @@ int
 ice_vc_send_msg_to_vf(struct ice_vf *vf, u32 v_opcode,
 		      enum virtchnl_status_code v_retval, u8 *msg, u16 msglen);
 bool ice_vc_isvalid_vsi_id(struct ice_vf *vf, u16 vsi_id);
+void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event);
 #else /* CONFIG_PCI_IOV */
 static inline void ice_virtchnl_set_dflt_ops(struct ice_vf *vf) { }
 static inline void ice_virtchnl_set_repr_ops(struct ice_vf *vf) { }
@@ -81,6 +82,11 @@ static inline bool ice_vc_isvalid_vsi_id(struct ice_vf *vf, u16 vsi_id)
 {
 	return false;
 }
+
+static inline void
+ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event)
+{
+}
 #endif /* !CONFIG_PCI_IOV */
 
 #endif /* _ICE_VIRTCHNL_H_ */
-- 
2.39.1.405.gd4c25cc71f83

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
