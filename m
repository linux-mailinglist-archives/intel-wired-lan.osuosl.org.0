Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kLZSOR36BWrFdwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 May 2026 18:36:45 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC45544C95
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 May 2026 18:36:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B3FB40FD2;
	Thu, 14 May 2026 16:36:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5zSbLoiyzWDL; Thu, 14 May 2026 16:36:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 846FB40FD4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778776600;
	bh=9el4z60kiT2GbSrro15jHieurMl8I//yMdi6wAi1wQo=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=xBBkfhou97Wp2/wB6ue+YOw/Rz7c/z69bZOJbrdMN1UDwGUwb3i1EdDdTJh2gp49e
	 c8F+xeBhCxzHryRHeBYUNUD+vV/ih+cpA0U48iJR6kNAa8bVS9HiB0DaB6NfktTRkx
	 dAD2pxGK09Dmu4gsiAZfHXNmTP80vib7mAmAW20C09ZRB+mXZCPHSe2PKBeHJaobXq
	 SZmRunyprVgtbwzUHNdkCT9l7r/fYeNKEijFX8JIyw5m84C2+7cR0AJxBIOwZOZfLD
	 SzQ6DU6p1YJeP7VpQStaWSUV1DGaDioZqa2cJiz+rEz/x2v9gg96q0Ukek8o3hen3f
	 yPXnrQJ7PsRcw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 846FB40FD4;
	Thu, 14 May 2026 16:36:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9A84C37D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 16:36:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7FF6D827C5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 16:36:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9kSvACiJR0So for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 May 2026 16:36:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 13835827BB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 13835827BB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 13835827BB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 16:36:36 +0000 (UTC)
X-CSE-ConnectionGUID: azYRSsu5TBi3Fpzu7+Tr1w==
X-CSE-MsgGUID: 4Y15lqwZRN6ZX/7Ot5Corw==
X-IronPort-AV: E=McAfee;i="6800,10657,11786"; a="83574035"
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="83574035"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 09:36:36 -0700
X-CSE-ConnectionGUID: Y9u0RyhmRUKIFcLUDmyAEQ==
X-CSE-MsgGUID: cpxKfWT+S6y9wKY7jbF8MQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="243404131"
Received: from fmerten-mobl.ger.corp.intel.com (HELO
 soc-5CG4396XFB.clients.intel.com) ([10.245.112.119])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 09:36:32 -0700
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Dawid Osuchowski <dawid.osuchowski@linux.intel.com>,
 stable@vger.kernel.org, Vladimir Medvedkin <vladimir.medvedkin@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Thu, 14 May 2026 18:35:55 +0200
Message-ID: <20260514163555.8243-1-dawid.osuchowski@linux.intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778776597; x=1810312597;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xvMjBVD9bF7j6Jvu6C0AEGRWhLophh/wkX/EWmhJxko=;
 b=djwtObqbWEmhud77PFXB0jy0xgd+S63gBJd/IUUkN6JhOBzUxNpJws2A
 QLjAgcoSkL8uUg9R1/t8uuzM0eNY+XTEZeXJ2LdsrhAw5xavUGOZPxiQ9
 hTPW9FDQDUqIK3eNE2wLxTXN9/EANCz0eKAEqV74iTlGHGFWKfFtM1VUN
 b25JtuJSLno5tWOQEgQEFUmey3e6aYYnvkBsmaYd/Wwg2v3C3A5SN1jvL
 scPH2MPJJAxUnyV/OPzMJKBJ8SSec85F2KlvKJQUGXs06sgwe/gQVSpyH
 IXCy3U3frVtrhJpxWrwIvW41T12R0qw00PbcL7yai0jEhDZaJ8mLlxLgF
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=djwtObqb
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix VF interrupts cleanup
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 5BC45544C95
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email];
	FROM_NEQ_ENVFROM(0.00)[dawid.osuchowski@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

When a virtual function sends an IRQ map command, the PF will set up
interrupts according to that request. However, because these interrupts are
never reset, the next time Virtual Function initializes, the interrupts are
still enabled for a given VF, which leads to performance degradation in
certain cases (e.g. Data Plane Development Kit) due to interrupts being
unexpectedly enabled and thus causing interrupt floods.

Cc: stable@vger.kernel.org
Fixes: 1071a8358a28 ("ice: Implement virtchnl commands for AVF support")
Suggested-by: Vladimir Medvedkin <vladimir.medvedkin@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 31 +++++++++++++++++++
 .../ethernet/intel/ice/ice_vf_lib_private.h   |  1 +
 drivers/net/ethernet/intel/ice/virt/queues.c  | 21 +++++++++++++
 3 files changed, 53 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 27e4acb1620f..bfd84193a105 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -847,6 +847,34 @@ static void ice_notify_vf_reset(struct ice_vf *vf)
 			      NULL);
 }
 
+/**
+ * ice_reset_interrupts - clear all queue interrupt configuration for a VSI
+ * @vsi: the VSI whose interrupt registers should be cleared
+ *
+ * Zero the QINT_RQCTL and QINT_TQCTL registers for all allocated queues
+ * in the VSI. This clears the entire register including MSIX_INDX, ITR_INDX,
+ * CAUSE_ENA and NEXTQ fields, unlike ice_vf_dis_rxq_interrupt() which only
+ * clears the CAUSE_ENA bit.
+ *
+ * This is used during VF reset to ensure no stale interrupt configuration
+ * persists when the VF is re-bound to a different driver (e.g. vfio-pci
+ * for Data Plane Development Kit).
+ */
+void ice_reset_interrupts(struct ice_vsi *vsi)
+{
+	struct ice_pf *pf = vsi->back;
+	struct ice_hw *hw = &pf->hw;
+	int i;
+
+	ice_for_each_alloc_rxq(vsi, i)
+		wr32(hw, QINT_RQCTL(vsi->rxq_map[i]), 0);
+
+	ice_for_each_alloc_txq(vsi, i)
+		wr32(hw, QINT_TQCTL(vsi->txq_map[i]), 0);
+
+	ice_flush(hw);
+}
+
 /**
  * ice_reset_vf - Reset a particular VF
  * @vf: pointer to the VF structure
@@ -918,6 +946,9 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 
 	ice_dis_vf_qs(vf);
 
+	/* cleanup interrupt registers */
+	ice_reset_interrupts(vsi);
+
 	/* Call Disable LAN Tx queue AQ whether or not queues are
 	 * enabled. This is needed for successful completion of VFR.
 	 */
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h b/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
index 5392b0404986..321d29c25b7c 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
@@ -26,6 +26,7 @@
 void ice_initialize_vf_entry(struct ice_vf *vf);
 void ice_deinitialize_vf_entry(struct ice_vf *vf);
 void ice_dis_vf_qs(struct ice_vf *vf);
+void ice_reset_interrupts(struct ice_vsi *vsi);
 int ice_check_vf_init(struct ice_vf *vf);
 enum virtchnl_status_code ice_err_to_virt_err(int err);
 struct ice_port_info *ice_vf_get_port_info(struct ice_vf *vf);
diff --git a/drivers/net/ethernet/intel/ice/virt/queues.c b/drivers/net/ethernet/intel/ice/virt/queues.c
index 31be2f76181c..431c9c546b04 100644
--- a/drivers/net/ethernet/intel/ice/virt/queues.c
+++ b/drivers/net/ethernet/intel/ice/virt/queues.c
@@ -224,6 +224,24 @@ void ice_vf_ena_rxq_interrupt(struct ice_vsi *vsi, u32 q_idx)
 	wr32(hw, QINT_RQCTL(pfq), reg | QINT_RQCTL_CAUSE_ENA_M);
 }
 
+/**
+ * ice_vf_dis_rxq_interrupt - disable Rx queue interrupt via QINT_RQCTL
+ * @vsi: VSI of the VF to configure
+ * @q_idx: VF queue index used to determine the queue in the PF's space
+ */
+static void ice_vf_dis_rxq_interrupt(struct ice_vsi *vsi, u32 q_idx)
+{
+	struct ice_hw *hw = &vsi->back->hw;
+	u32 pfq = vsi->rxq_map[q_idx];
+	u32 reg;
+
+	reg = rd32(hw, QINT_RQCTL(pfq));
+	reg &= ~QINT_RQCTL_CAUSE_ENA_M;
+	wr32(hw, QINT_RQCTL(pfq), reg);
+
+	ice_flush(hw);
+}
+
 /**
  * ice_vc_ena_qs_msg
  * @vf: pointer to the VF info
@@ -416,6 +434,8 @@ int ice_vc_dis_qs_msg(struct ice_vf *vf, u8 *msg)
 			goto error_param;
 		}
 
+		for_each_set_bit(vf_q_id, &q_map, ICE_MAX_RSS_QS_PER_VF)
+			ice_vf_dis_rxq_interrupt(vsi, vf_q_id);
 		bitmap_zero(vf->rxq_ena, ICE_MAX_RSS_QS_PER_VF);
 	} else if (q_map) {
 		for_each_set_bit(vf_q_id, &q_map, ICE_MAX_RSS_QS_PER_VF) {
@@ -436,6 +456,7 @@ int ice_vc_dis_qs_msg(struct ice_vf *vf, u8 *msg)
 				goto error_param;
 			}
 
+			ice_vf_dis_rxq_interrupt(vsi, vf_q_id);
 			/* Clear enabled queues flag */
 			clear_bit(vf_q_id, vf->rxq_ena);
 		}

base-commit: 24459e26fb49a0067ae93ae1bbb37abb2a42f6f2
-- 
2.52.0

