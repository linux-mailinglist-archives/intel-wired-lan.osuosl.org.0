Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YAicD1LU8GkpZgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 17:37:54 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CDF1488042
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 17:37:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 50FC183BC1;
	Tue, 28 Apr 2026 15:37:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SGY4qfowdBC1; Tue, 28 Apr 2026 15:37:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DBD2280D44
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777390667;
	bh=uuFZgw0mJdifU6kaNsN4Q7gVpb3fsZn+E4BKg9kLdII=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sfY4V2Z5BcpmcQcxNucIrZvSouZZJIuEdooccBiuDSab/GML3scgAzrbcFaseTP8C
	 sgj+erVJssePCQbA94k640jpsA8yd0/U9d6g6ed9S/yBU0LMMPDL+RsmDywnW62VEq
	 uvs5g9FIB+C1xuG6zf5rBpH5yD/04qOxoxBrBknXa6u1A6V7PCEKB9Ji358VfyW0Ew
	 zEZFvaY7+qDyenwvZJYM7N5foT9DwHv4g3cPHwglWwsxWtARp5d+ceKrcBaAqIb8CB
	 afZk2F271str4zSiwrNWIRsNODCwyHx/I+9OAj1tIKZB7FRFclaNUFutUuxIxONnZn
	 yoMyY+TZ70Row==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DBD2280D44;
	Tue, 28 Apr 2026 15:37:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id D7F121B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 15:37:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C53598382D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 15:37:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0dG1Vofmsj7y for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 15:37:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3BBC08236B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3BBC08236B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3BBC08236B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 15:37:45 +0000 (UTC)
X-CSE-ConnectionGUID: PotZ+uPwSHmpSmedXPHIDw==
X-CSE-MsgGUID: cpiEm013SxC1uIq/em233Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="78415122"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78415122"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 08:37:45 -0700
X-CSE-ConnectionGUID: 4vZsTqtzRVW7vhaXyBEDjA==
X-CSE-MsgGUID: I6yUkJA8SAiYi/lduNbHrQ==
X-ExtLoop1: 1
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa003.fm.intel.com with ESMTP; 28 Apr 2026 08:37:42 -0700
Received: from gond.igk.intel.com (gond.igk.intel.com [10.123.220.52])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 642A3312C3;
 Tue, 28 Apr 2026 16:37:41 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, paul.greenwalt@intel.com, jacob.e.keller@intel.com,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Tue, 28 Apr 2026 16:37:16 +0200
Message-ID: <20260428143716.9653-4-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260428143716.9653-1-marcin.szycik@linux.intel.com>
References: <20260428143716.9653-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777390665; x=1808926665;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iDyuzVdhzoWktc6lJ5s6rwHPmOtA+aBIGReixZ0Jh04=;
 b=H8nKAr15q+reKiWIbiarApXS6XOH7kZ8ZPXTvfmFzKdxRa6zt6KYziF+
 aN/52uEZ/lJFyukH+VFjsLPZQrR/zIvup8EcH1GObM/2khKteFm0OZnCy
 Mk9od6SJ9drAP+HLn9K6zKkUkqJ6xdBTv0iFyQr74QGK5PZJ0jV2UhR9H
 I5rIatlRv4p5NK8CncxWW5b8EGkMVpl/Rwt22f8T9wB2HDOSexbg8pHUB
 /L32TKASJyber4K6MQK1Dx14ZqExh1cx0SyLQI0JEjqzw840EvyEHMNi4
 63BcWkv97gOKLTor90+8Tbzt5ZR168F55dOvaXP3GfJUZZ7ClIOGATdV+
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=H8nKAr15
Subject: [Intel-wired-lan] [PATCH iwl-next 3/3] virtchnl, iavf, ice,
 i40e: add extended generic VF capability flags
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
X-Rspamd-Queue-Id: 8CDF1488042
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,linux.intel.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]

VF capability flags in struct virtchnl_vf_resource::vf_cap_flags have
all been used up, preventing new flags from being added. Note that
despite not all bits being defined here, they are used by out-of-tree
releases of Intel drivers, therefore cannot be taken.

virtchnl message size and structure must remain unchanged to not break
reverse compatibility, therefore the existing virtchnl structure cannot
be extended with additional fields (e.g. flags2). vf_cap_flags type
cannot be changed to a larger one for the same reason.

Bit 2 of vf_cap_flags was reserved for exactly this case. Its presence
in message initially sent from VF shall now signal that there are more
capability flags to be parsed. If the PF driver acknowledges that via
VIRTCHNL_OP_GET_VF_RESOURCES response, the VF will send a separate
message: VIRTCHNL_OP_GET_VF_CAPS2, containing more capability flags.
Note: this mechanism is similar for VIRTCHNL_OP_1588_PTP_GET_CAPS.

The new message supports flexible size, so more flags can be added
without any architectural changes. Care was taken to ensure that no
out-of-bounds reads happen in case the bitmap is shorter in one of the
drivers.

The new message includes the original 32 bits too, for consistency and
more straightforward parsing.

Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        |  19 ++-
 .../net/ethernet/intel/ice/virt/virtchnl.h    |   2 +
 include/linux/intel/virtchnl.h                |  55 ++++++-
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  84 +++++++++++
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  60 ++++++++
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 138 +++++++++++++++++-
 .../net/ethernet/intel/ice/virt/allowlist.c   |   6 +
 .../net/ethernet/intel/ice/virt/virtchnl.c    |  86 +++++++++++
 8 files changed, 444 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 64576cba3a01..5d812b0a52a3 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -343,6 +343,7 @@ struct iavf_adapter {
 #define IAVF_FLAG_AQ_GET_SUPPORTED_RXDIDS		BIT_ULL(42)
 #define IAVF_FLAG_AQ_GET_PTP_CAPS			BIT_ULL(43)
 #define IAVF_FLAG_AQ_SEND_PTP_CMD			BIT_ULL(44)
+#define IAVF_FLAG_AQ_GET_VF_CAP_CAPS2			BIT_ULL(45)
 
 	/* AQ messages that must be sent after IAVF_FLAG_AQ_GET_CONFIG, in
 	 * order to negotiated extended capabilities.
@@ -350,7 +351,9 @@ struct iavf_adapter {
 #define IAVF_FLAG_AQ_EXTENDED_CAPS			\
 	(IAVF_FLAG_AQ_GET_OFFLOAD_VLAN_V2_CAPS |	\
 	 IAVF_FLAG_AQ_GET_SUPPORTED_RXDIDS |		\
-	 IAVF_FLAG_AQ_GET_PTP_CAPS)
+	 IAVF_FLAG_AQ_GET_PTP_CAPS |			\
+	 IAVF_FLAG_AQ_GET_VF_CAP_CAPS2 |		\
+	 0)
 
 	/* flags for processing extended capability messages during
 	 * __IAVF_INIT_EXTENDED_CAPS. Each capability exchange requires
@@ -366,6 +369,8 @@ struct iavf_adapter {
 #define IAVF_EXTENDED_CAP_RECV_RXDID			BIT_ULL(3)
 #define IAVF_EXTENDED_CAP_SEND_PTP			BIT_ULL(4)
 #define IAVF_EXTENDED_CAP_RECV_PTP			BIT_ULL(5)
+#define IAVF_EXTENDED_CAP_SEND_CAPS2			BIT_ULL(6)
+#define IAVF_EXTENDED_CAP_RECV_CAPS2			BIT_ULL(7)
 
 #define IAVF_EXTENDED_CAPS				\
 	(IAVF_EXTENDED_CAP_SEND_VLAN_V2 |		\
@@ -373,7 +378,10 @@ struct iavf_adapter {
 	 IAVF_EXTENDED_CAP_SEND_RXDID |			\
 	 IAVF_EXTENDED_CAP_RECV_RXDID |			\
 	 IAVF_EXTENDED_CAP_SEND_PTP |			\
-	 IAVF_EXTENDED_CAP_RECV_PTP)
+	 IAVF_EXTENDED_CAP_RECV_PTP |			\
+	 IAVF_EXTENDED_CAP_SEND_CAPS2 |			\
+	 IAVF_EXTENDED_CAP_RECV_CAPS2 |			\
+	 0)
 
 	/* Lock to prevent possible clobbering of
 	 * current_netdev_promisc_flags
@@ -430,6 +438,7 @@ struct iavf_adapter {
 #define IAVF_RXDID_ALLOWED(a)						\
 	test_bit(VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC, (a)->vf_cap_flags)
 #define IAVF_PTP_ALLOWED(a) test_bit(VIRTCHNL_VF_CAP_PTP, (a)->vf_cap_flags)
+#define IAVF_CAPS2_ALLOWED(a) test_bit(VIRTCHNL_VF_CAPS2, (a)->vf_cap_flags)
 	struct virtchnl_vf_resource *vf_res; /* incl. all VSIs */
 	struct virtchnl_vsi_resource *vsi_res; /* our LAN VSI */
 	struct virtchnl_version_info pf_version;
@@ -439,7 +448,9 @@ struct iavf_adapter {
 	u64 supp_rxdids;
 	struct iavf_ptp ptp;
 
-	/* Mirrors vf_res->vf_cap_flags */
+	/* Negotiated via VIRTCHNL_OP_GET_VF_CAPS2. First 32 bits mirror
+	 * vf_res->vf_cap_flags.
+	 */
 	DECLARE_BITMAP(vf_cap_flags, VIRTCHNL_VF_CAPS_MAX);
 
 	u16 msg_enable;
@@ -578,6 +589,8 @@ int iavf_send_vf_supported_rxdids_msg(struct iavf_adapter *adapter);
 int iavf_get_vf_supported_rxdids(struct iavf_adapter *adapter);
 int iavf_send_vf_ptp_caps_msg(struct iavf_adapter *adapter);
 int iavf_get_vf_ptp_caps(struct iavf_adapter *adapter);
+int iavf_send_vf_caps2_msg(struct iavf_adapter *adapter);
+int iavf_get_vf_caps2(struct iavf_adapter *adapter);
 void iavf_set_queue_vlan_tag_loc(struct iavf_adapter *adapter);
 u16 iavf_get_num_vlans_added(struct iavf_adapter *adapter);
 void iavf_irq_enable(struct iavf_adapter *adapter, bool flush);
diff --git a/drivers/net/ethernet/intel/ice/virt/virtchnl.h b/drivers/net/ethernet/intel/ice/virt/virtchnl.h
index f7f909424098..5b51a5a73708 100644
--- a/drivers/net/ethernet/intel/ice/virt/virtchnl.h
+++ b/drivers/net/ethernet/intel/ice/virt/virtchnl.h
@@ -78,6 +78,8 @@ struct ice_virtchnl_ops {
 	int (*get_ptp_cap)(struct ice_vf *vf,
 			   const struct virtchnl_ptp_caps *msg);
 	int (*get_phc_time)(struct ice_vf *vf);
+	int (*get_vf_caps2)(struct ice_vf *vf,
+			    const struct virtchnl_vf_caps2 *msg);
 };
 
 #ifdef CONFIG_PCI_IOV
diff --git a/include/linux/intel/virtchnl.h b/include/linux/intel/virtchnl.h
index 577b0549b437..edaca5ec8fd8 100644
--- a/include/linux/intel/virtchnl.h
+++ b/include/linux/intel/virtchnl.h
@@ -162,6 +162,8 @@ enum virtchnl_ops {
 	/* opcode 68 through 111 are reserved */
 	VIRTCHNL_OP_CONFIG_QUEUE_BW = 112,
 	VIRTCHNL_OP_CONFIG_QUANTA = 113,
+	/* opcode 114 through 135 are reserved */
+	VIRTCHNL_OP_GET_VF_CAPS2 = 136,
 	VIRTCHNL_OP_MAX,
 };
 
@@ -244,13 +246,14 @@ struct virtchnl_vsi_resource {
 
 VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_vsi_resource);
 
-/* VF capability flags */
+/* Base (first 32) + extended VF capability flags */
 enum virtchnl_vf_caps_bitnr {
 	/* Inclusive of base mode L2 offloads including TX/RX Checksum
 	 * offloading and TSO for non-tunnelled packets.
 	 */
 	VIRTCHNL_VF_OFFLOAD_L2 = 0,
 	VIRTCHNL_VF_OFFLOAD_RDMA = 1,
+	VIRTCHNL_VF_CAPS2 = 2,
 	VIRTCHNL_VF_OFFLOAD_RSS_AQ = 3,
 	VIRTCHNL_VF_OFFLOAD_RSS_REG = 4,
 	VIRTCHNL_VF_OFFLOAD_WB_ON_ITR = 5,
@@ -275,6 +278,8 @@ enum virtchnl_vf_caps_bitnr {
 	VIRTCHNL_VF_OFFLOAD_QOS = 29,
 	VIRTCHNL_VF_CAP_PTP = 31,
 
+	/* Flags greater than 31 are only available via virtchnl_vf_caps2 */
+
 	VIRTCHNL_VF_CAPS_MAX /* must be last */
 };
 
@@ -284,7 +289,14 @@ struct virtchnl_vf_resource {
 	u16 max_vectors;
 	u16 max_mtu;
 
+	/* If both sides support VIRTCHNL_VF_CAPS2, extended flags, along with
+	 * flags from this structure will be sent in VIRTCHNL_OP_GET_VF_CAPS2.
+	 * Drivers should store capabilities negotiated this way in a bitmap,
+	 * instead of directly reading flags from this structure, in order to
+	 * have a unified interface for checking capabilities.
+	 */
 	u32 vf_cap_flags;
+
 	u32 rss_key_size;
 	u32 rss_lut_size;
 
@@ -1572,6 +1584,32 @@ struct virtchnl_ptp_caps {
 
 VIRTCHNL_CHECK_STRUCT_LEN(48, virtchnl_ptp_caps);
 
+/**
+ * virtchnl_vf_caps2 - generic extended capability flags
+ *
+ * VF sends this message to negotiate an extended set of capability flags if
+ * VIRTCHNL_VF_CAPS2 is set in virtchnl_vf_resource::vf_cap_flags.
+ *
+ * On send, VF sets what capabilities it requests. On reply, PF indicates what
+ * has been enabled for this VF. The PF shall not set bits which were not
+ * requested by the VF.
+ *
+ * Defines capabilities available to the VF, including the 32 original ones from
+ * vf_cap_flags on the same positions, plus the ones that didn't fit there.
+ * Drivers should construct a bitmap from this message, instead of checking the
+ * first 32 bits sent in VIRTCHNL_OP_GET_VF_RESOURCES, for consistency.
+ *
+ * The VF sends VIRTCHNL_OP_GET_VF_CAPS2 and fills the vf_cap_flags bitmap,
+ * indicating what capabilities it is requesting. The PF responds with the same
+ * message, indicating what is enabled for the VF.
+ */
+struct virtchnl_vf_caps2 {
+	u32 flags_len;
+	u32 vf_cap_flags[] __counted_by(flags_len);
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(4, virtchnl_vf_caps2);
+
 /**
  * struct virtchnl_phc_time - Contains the 64bits of PHC clock time in ns.
  * @time: PHC time in nanoseconds
@@ -1929,6 +1967,21 @@ virtchnl_vc_validate_vf_msg(struct virtchnl_version_info *ver, u32 v_opcode,
 	case VIRTCHNL_OP_1588_PTP_GET_TIME:
 		valid_len = sizeof(struct virtchnl_phc_time);
 		break;
+	case VIRTCHNL_OP_GET_VF_CAPS2: {
+		struct virtchnl_vf_caps2 *caps2 =
+			(struct virtchnl_vf_caps2 *)msg;
+
+		/* Require at least 1 element */
+		if (msglen < struct_size(caps2, vf_cap_flags, 1) ||
+		    msglen != struct_size(caps2, vf_cap_flags,
+					  caps2->flags_len)) {
+			err_msg_format = true;
+			break;
+		}
+
+		valid_len = struct_size(caps2, vf_cap_flags, caps2->flags_len);
+		}
+		break;
 	/* These are always errors coming from the VF. */
 	case VIRTCHNL_OP_EVENT:
 	case VIRTCHNL_OP_UNKNOWN:
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 519f18dacd4a..9c233c3176c3 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -2149,6 +2149,11 @@ static int i40e_vc_get_vf_resources_msg(struct i40e_vf *vf, u8 *msg)
 
 	bitmap_zero(vf->driver_caps, VIRTCHNL_VF_CAPS_MAX);
 	if (VF_IS_V11(&vf->vf_ver)) {
+		/* VIRTCHNL_OP_GET_VF_RESOURCES only sends the first 32 flags.
+		 * If VIRTCHNL_VF_CAPS2 (bit 2) is set, then there are more
+		 * flags. A complete set (including the first 32) is then sent
+		 * via VIRTCHNL_OP_GET_VF_CAPS2.
+		 */
 		bitmap_from_arr32(vf->driver_caps, (u32 *)msg,
 				  BITS_PER_TYPE(u32));
 	} else {
@@ -2218,6 +2223,10 @@ static int i40e_vc_get_vf_resources_msg(struct i40e_vf *vf, u8 *msg)
 	if (test_bit(VIRTCHNL_VF_OFFLOAD_ADQ, vf->driver_caps))
 		vfres->vf_cap_flags |= BIT(VIRTCHNL_VF_OFFLOAD_ADQ);
 
+	/* Indicate that VF can send more flags in VIRTCHNL_OP_GET_VF_CAPS2 */
+	if (test_bit(VIRTCHNL_VF_CAPS2, vf->driver_caps))
+		vfres->vf_cap_flags |= BIT(VIRTCHNL_VF_CAPS2);
+
 	vfres->num_vsis = num_vsis;
 	vfres->num_queue_pairs = vf->num_queue_pairs;
 	vfres->max_vectors = pf->hw.func_caps.num_msix_vectors_vf;
@@ -4192,6 +4201,78 @@ static int i40e_vc_del_qch_msg(struct i40e_vf *vf, u8 *msg)
 				       aq_ret);
 }
 
+/**
+ * i40e_vc_get_vf_caps2 - parse extended capability flags
+ * @vf: pointer to the VF info
+ * @msg: pointer to the msg buffer
+ *
+ * Called from the VF to negotiate extended capability flag set if
+ * VIRTCHNL_VF_CAPS2 was set in vf_cap_flags. The PF responds with the
+ * intersection of its supported flags and the VF's requested flags.
+ *
+ * Return: 0 on success, negative on failure
+ **/
+static int i40e_vc_get_vf_caps2(struct i40e_vf *vf, u8 *msg)
+{
+	struct virtchnl_vf_caps2 *vf_msg = (struct virtchnl_vf_caps2 *)msg;
+	DECLARE_BITMAP(msg_caps, VIRTCHNL_VF_CAPS_MAX);
+	struct virtchnl_vf_caps2 *caps2;
+	unsigned int nbits;
+	int aq_ret = 0;
+	int err;
+
+	caps2 = kzalloc_flex(*caps2, vf_cap_flags,
+			     BITS_TO_U32(VIRTCHNL_VF_CAPS_MAX));
+	if (!caps2)
+		return -ENOMEM;
+
+	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
+		aq_ret = -EINVAL;
+		goto send_msg;
+	}
+
+	if (!test_bit(VIRTCHNL_VF_CAPS2, vf->driver_caps)) {
+		aq_ret = -EINVAL;
+		goto send_msg;
+	}
+
+	caps2->flags_len = BITS_TO_U32(VIRTCHNL_VF_CAPS_MAX);
+
+	/* Set extended feature flags. The first 32 bits should be already set
+	 * in VIRTCHNL_OP_GET_VF_RESOURCES
+	 */
+
+	/* Make sure to not read after msg bitmap or local bitmap. The remaining
+	 * bits (if any) should be unset, since one side doesn't know about
+	 * them, therefore cannot support these capabilities.
+	 */
+	nbits = min_t(unsigned int, VIRTCHNL_VF_CAPS_MAX,
+		      BITS_PER_TYPE(u32) * vf_msg->flags_len);
+	bitmap_zero(msg_caps, VIRTCHNL_VF_CAPS_MAX);
+	bitmap_from_arr32(msg_caps, vf_msg->vf_cap_flags, nbits);
+
+	/* Note that msg->vf_cap_flags cannot be directly used, because then
+	 * we'd need to limit the operation range to nbits. If the local caps
+	 * is larger and has some flags set after nbits, then they would be
+	 * incorrectly left set.
+	 */
+	bitmap_and(vf->driver_caps, vf->driver_caps, msg_caps,
+		   VIRTCHNL_VF_CAPS_MAX);
+
+	bitmap_to_arr32(caps2->vf_cap_flags, vf->driver_caps,
+			VIRTCHNL_VF_CAPS_MAX);
+
+send_msg:
+	err = i40e_vc_send_msg_to_vf(vf, VIRTCHNL_OP_GET_VF_CAPS2, aq_ret,
+				     (u8 *)caps2,
+				     struct_size(caps2, vf_cap_flags,
+						 caps2->flags_len));
+
+	kfree(caps2);
+
+	return err;
+}
+
 /**
  * i40e_vc_process_vf_msg
  * @pf: pointer to the PF structure
@@ -4316,6 +4397,9 @@ int i40e_vc_process_vf_msg(struct i40e_pf *pf, s16 vf_id, u32 v_opcode,
 	case VIRTCHNL_OP_DEL_CLOUD_FILTER:
 		ret = i40e_vc_del_cloud_filter(vf, msg);
 		break;
+	case VIRTCHNL_OP_GET_VF_CAPS2:
+		ret = i40e_vc_get_vf_caps2(vf, msg);
+		break;
 	case VIRTCHNL_OP_UNKNOWN:
 	default:
 		dev_err(&pf->pdev->dev, "Unsupported opcode %d from VF %d\n",
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index ce2b61e56f9d..bb9d4b8c4b9b 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2038,6 +2038,8 @@ static int iavf_process_aq_command(struct iavf_adapter *adapter)
 		return iavf_send_vf_supported_rxdids_msg(adapter);
 	if (adapter->aq_required & IAVF_FLAG_AQ_GET_PTP_CAPS)
 		return iavf_send_vf_ptp_caps_msg(adapter);
+	if (adapter->aq_required & IAVF_FLAG_AQ_GET_VF_CAP_CAPS2)
+		return iavf_send_vf_caps2_msg(adapter);
 	if (adapter->aq_required & IAVF_FLAG_AQ_DISABLE_QUEUES) {
 		iavf_disable_queues(adapter);
 		return 0;
@@ -2675,6 +2677,55 @@ static void iavf_init_recv_ptp_caps(struct iavf_adapter *adapter)
 	iavf_change_state(adapter, __IAVF_INIT_FAILED);
 }
 
+/**
+ * iavf_init_send_flags2_caps - part of negotiating CAPS2 capabilities
+ * @adapter: board private structure
+ *
+ * Send VIRTCHNL_OP_GET_VF_CAPS2 message to the PF. Clear
+ * IAVF_EXTENDED_CAP_RECV_CAPS2 if the message is not sent, e.g. due to PF not
+ * negotiating VIRTCHNL_VF_CAPS2.
+ */
+static void iavf_init_send_flags2_caps(struct iavf_adapter *adapter)
+{
+	WARN_ON(!(adapter->extended_caps & IAVF_EXTENDED_CAP_SEND_CAPS2));
+
+	if (iavf_send_vf_caps2_msg(adapter) == -EOPNOTSUPP) {
+		/* PF does not support VIRTCHNL_VF_CAPS2. In this case, we
+		 * did not send the capability exchange message and do not
+		 * expect a response.
+		 */
+		adapter->extended_caps &= ~IAVF_EXTENDED_CAP_RECV_CAPS2;
+	}
+
+	/* We sent the message, so move on to the next step */
+	adapter->extended_caps &= ~IAVF_EXTENDED_CAP_SEND_CAPS2;
+}
+
+/**
+ * iavf_init_recv_flags2_caps - part of negotiating CAPS2 capabilities
+ * @adapter: board private structure
+ *
+ * Process receipt of VIRTCHNL_VF_CAPS2 message from PF.
+ */
+static void iavf_init_recv_flags2_caps(struct iavf_adapter *adapter)
+{
+	WARN_ON(!(adapter->extended_caps & IAVF_EXTENDED_CAP_RECV_CAPS2));
+
+	if (iavf_get_vf_caps2(adapter))
+		goto err;
+
+	/* We've processed the PF response to VIRTCHNL_OP_GET_VF_CAPS2 */
+	adapter->extended_caps &= ~IAVF_EXTENDED_CAP_RECV_CAPS2;
+	return;
+
+err:
+	/* We didn't receive a reply. Make sure we try sending again when
+	 * __IAVF_INIT_FAILED attempts to recover.
+	 */
+	adapter->extended_caps |= IAVF_EXTENDED_CAP_SEND_CAPS2;
+	iavf_change_state(adapter, __IAVF_INIT_FAILED);
+}
+
 /**
  * iavf_init_process_extended_caps - Part of driver startup
  * @adapter: board private structure
@@ -2717,6 +2768,15 @@ static void iavf_init_process_extended_caps(struct iavf_adapter *adapter)
 		return;
 	}
 
+	/* Process capability exchange for CAPS2 */
+	if (adapter->extended_caps & IAVF_EXTENDED_CAP_SEND_CAPS2) {
+		iavf_init_send_flags2_caps(adapter);
+		return;
+	} else if (adapter->extended_caps & IAVF_EXTENDED_CAP_RECV_CAPS2) {
+		iavf_init_recv_flags2_caps(adapter);
+		return;
+	}
+
 	/* When we reach here, no further extended capabilities exchanges are
 	 * necessary, so we finally transition into __IAVF_INIT_CONFIG_ADAPTER
 	 */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 38be4caf77f0..4509a1501928 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -172,7 +172,8 @@ int iavf_send_vf_config_msg(struct iavf_adapter *adapter)
 	       BIT(VIRTCHNL_VF_OFFLOAD_FDIR_PF) |
 	       BIT(VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF) |
 	       BIT(VIRTCHNL_VF_CAP_ADV_LINK_SPEED) |
-	       BIT(VIRTCHNL_VF_OFFLOAD_QOS);
+	       BIT(VIRTCHNL_VF_OFFLOAD_QOS) |
+	       BIT(VIRTCHNL_VF_CAPS2);
 
 	adapter->current_op = VIRTCHNL_OP_GET_VF_RESOURCES;
 	adapter->aq_required &= ~IAVF_FLAG_AQ_GET_CONFIG;
@@ -245,6 +246,52 @@ int iavf_send_vf_ptp_caps_msg(struct iavf_adapter *adapter)
 				(u8 *)&hw_caps, sizeof(hw_caps));
 }
 
+/**
+ * iavf_send_vf_caps2_msg - send request for second capability flags set
+ * @adapter: adapter structure
+ *
+ * Send VIRTCHNL_OP_GET_VF_CAPS2 to the PF with the VF's desired flags2
+ * bitmap. The PF responds with the intersection of the flags it supports.
+ *
+ * Return: 0 on success, -EOPNOTSUPP if CAPS2 was not negotiated, other error
+ * code on failure
+ */
+int iavf_send_vf_caps2_msg(struct iavf_adapter *adapter)
+{
+	DECLARE_BITMAP(msg_caps, VIRTCHNL_VF_CAPS_MAX);
+	struct virtchnl_vf_caps2 *caps2;
+	int err;
+
+	adapter->aq_required &= ~IAVF_FLAG_AQ_GET_VF_CAP_CAPS2;
+
+	if (!IAVF_CAPS2_ALLOWED(adapter))
+		return -EOPNOTSUPP;
+
+	caps2 = kzalloc_flex(*caps2, vf_cap_flags,
+			     BITS_TO_U32(VIRTCHNL_VF_CAPS_MAX));
+	if (!caps2)
+		return -ENOMEM;
+
+	caps2->flags_len = BITS_TO_U32(VIRTCHNL_VF_CAPS_MAX);
+
+	/* Copy from the local bitmap (should have only first 32 bits set) and
+	 * set extended feature flags to send.
+	 */
+	bitmap_copy(msg_caps, adapter->vf_cap_flags, VIRTCHNL_VF_CAPS_MAX);
+
+	bitmap_to_arr32(caps2->vf_cap_flags, msg_caps, VIRTCHNL_VF_CAPS_MAX);
+
+	adapter->current_op = VIRTCHNL_OP_GET_VF_CAPS2;
+
+	err = iavf_send_pf_msg(adapter, VIRTCHNL_OP_GET_VF_CAPS2, (u8 *)caps2,
+			       struct_size(caps2, vf_cap_flags,
+					   caps2->flags_len));
+
+	kfree(caps2);
+
+	return err;
+}
+
 /**
  * iavf_validate_num_queues
  * @adapter: adapter structure
@@ -296,7 +343,7 @@ int iavf_get_vf_config(struct iavf_adapter *adapter)
 	err = iavf_poll_virtchnl_msg(hw, &event, VIRTCHNL_OP_GET_VF_RESOURCES);
 	memcpy(adapter->vf_res, event.msg_buf, min(event.msg_len, len));
 
-	/* mirror to the extended bitmap */
+	/* mirror the first 32 bits to the extended bitmap */
 	bitmap_from_arr32(adapter->vf_cap_flags, &adapter->vf_res->vf_cap_flags,
 			  BITS_PER_TYPE(u32));
 
@@ -369,6 +416,78 @@ int iavf_get_vf_ptp_caps(struct iavf_adapter *adapter)
 	return err;
 }
 
+/**
+ * iavf_process_caps2 - store received extended caps in adapter
+ * @adapter: adapter structure
+ * @caps2: received extended capabilities message
+ *
+ * Return: 0 on success, negative on failure
+ */
+static int iavf_process_caps2(struct iavf_adapter *adapter,
+			      struct virtchnl_vf_caps2 *caps2)
+{
+	unsigned int nbits;
+
+	if (caps2->flags_len == 0)
+		return -EINVAL;
+
+	/* Make sure to not read after msg bitmap or local bitmap. The remaining
+	 * bits (if any) should be unset, since one side doesn't know about
+	 * them, therefore cannot support these capabilities.
+	 */
+	nbits = min_t(unsigned int, VIRTCHNL_VF_CAPS_MAX,
+		      BITS_PER_TYPE(u32) * caps2->flags_len);
+
+	bitmap_zero(adapter->vf_cap_flags, VIRTCHNL_VF_CAPS_MAX);
+	bitmap_from_arr32(adapter->vf_cap_flags, caps2->vf_cap_flags, nbits);
+	/* Assume the first 32 bits were already written to
+	 * adapter->vf_res->vf_cap_flags in VIRTCHNL_OP_GET_VF_RESOURCES. Driver
+	 * should not use these anyway.
+	 */
+
+	return 0;
+}
+
+/**
+ * iavf_get_vf_caps2 - receive second capability flags from PF
+ * @adapter: adapter structure
+ *
+ * Poll the admin queue for a response to VIRTCHNL_OP_GET_VF_CAPS2 and process
+ * the negotiated flags.
+ *
+ * Return: 0 on success, negative on failure
+ */
+int iavf_get_vf_caps2(struct iavf_adapter *adapter)
+{
+	struct iavf_arq_event_info event;
+	struct virtchnl_vf_caps2 *caps2;
+	int err;
+
+	/* Actual length might be larger if PF knows more flags, but we don't
+	 * care about them since they should be unset after the negotiation.
+	 * Even if they were somehow not, VF has no way to store them.
+	 */
+	event.buf_len = struct_size(caps2, vf_cap_flags, VIRTCHNL_VF_CAPS_MAX);
+
+	event.msg_buf = kzalloc(event.buf_len, GFP_KERNEL);
+	if (!event.msg_buf)
+		return -ENOMEM;
+
+	err = iavf_poll_virtchnl_msg(&adapter->hw, &event,
+				     VIRTCHNL_OP_GET_VF_CAPS2);
+	if (err)
+		goto free_msg_buf;
+
+	caps2 = (struct virtchnl_vf_caps2 *)event.msg_buf;
+
+	err = iavf_process_caps2(adapter, caps2);
+
+free_msg_buf:
+	kfree(event.msg_buf);
+
+	return err;
+}
+
 /**
  * iavf_configure_queues
  * @adapter: adapter structure
@@ -2707,6 +2826,21 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 	case VIRTCHNL_OP_1588_PTP_GET_TIME:
 		iavf_virtchnl_ptp_get_time(adapter, msg, msglen);
 		break;
+	case VIRTCHNL_OP_GET_VF_CAPS2: {
+		struct virtchnl_vf_caps2 *caps2 =
+			(struct virtchnl_vf_caps2 *)msg;
+
+		/* Require at least 1 element */
+		if (msglen < struct_size(caps2, vf_cap_flags, 1) ||
+		    msglen != struct_size(caps2, vf_cap_flags,
+					  caps2->flags_len))
+			return;
+
+		if (iavf_process_caps2(adapter, caps2))
+			dev_warn(&adapter->pdev->dev,
+				 "Invalid extended flags received from PF\n");
+		}
+		break;
 	case VIRTCHNL_OP_ENABLE_QUEUES:
 		/* enable transmits */
 		iavf_irq_enable(adapter, true);
diff --git a/drivers/net/ethernet/intel/ice/virt/allowlist.c b/drivers/net/ethernet/intel/ice/virt/allowlist.c
index eb3d3b4e65a9..a5c27489a7ff 100644
--- a/drivers/net/ethernet/intel/ice/virt/allowlist.c
+++ b/drivers/net/ethernet/intel/ice/virt/allowlist.c
@@ -90,6 +90,11 @@ static const u32 ptp_allowlist_opcodes[] = {
 	VIRTCHNL_OP_1588_PTP_GET_TIME,
 };
 
+/* VIRTCHNL_VF_CAPS2 */
+static const u32 caps2_allowlist_opcodes[] = {
+	VIRTCHNL_OP_GET_VF_CAPS2,
+};
+
 static const u32 tc_allowlist_opcodes[] = {
 	VIRTCHNL_OP_GET_QOS_CAPS, VIRTCHNL_OP_CONFIG_QUEUE_BW,
 	VIRTCHNL_OP_CONFIG_QUANTA,
@@ -117,6 +122,7 @@ static const struct allowlist_opcode_info allowlist_opcodes[] = {
 	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_VLAN_V2, vlan_v2_allowlist_opcodes),
 	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_QOS, tc_allowlist_opcodes),
 	ALLOW_ITEM(VIRTCHNL_VF_CAP_PTP, ptp_allowlist_opcodes),
+	ALLOW_ITEM(VIRTCHNL_VF_CAPS2, caps2_allowlist_opcodes),
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/virt/virtchnl.c b/drivers/net/ethernet/intel/ice/virt/virtchnl.c
index f15e8c82d52d..37bf02cd4d41 100644
--- a/drivers/net/ethernet/intel/ice/virt/virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/virt/virtchnl.c
@@ -267,6 +267,11 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 
 	bitmap_zero(vf->driver_caps, VIRTCHNL_VF_CAPS_MAX);
 	if (VF_IS_V11(&vf->vf_ver)) {
+		/* VIRTCHNL_OP_GET_VF_RESOURCES only sends the first 32 flags.
+		 * If VIRTCHNL_VF_CAPS2 (bit 2) is set, then there are more
+		 * flags. A complete set (including the first 32) is then sent
+		 * via VIRTCHNL_OP_GET_VF_CAPS2.
+		 */
 		bitmap_from_arr32(vf->driver_caps, (u32 *)msg,
 				  BITS_PER_TYPE(u32));
 	} else {
@@ -333,6 +338,10 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 	if (test_bit(VIRTCHNL_VF_CAP_PTP, vf->driver_caps))
 		vfres->vf_cap_flags |= BIT(VIRTCHNL_VF_CAP_PTP);
 
+	/* Indicate that VF can send more flags in VIRTCHNL_OP_GET_VF_CAPS2 */
+	if (test_bit(VIRTCHNL_VF_CAPS2, vf->driver_caps))
+		vfres->vf_cap_flags |= BIT(VIRTCHNL_VF_CAPS2);
+
 	vfres->num_vsis = 1;
 	/* Tx and Rx queue are equal for VF */
 	vfres->num_queue_pairs = vsi->num_txq;
@@ -2453,6 +2462,78 @@ static int ice_vc_dis_vlan_insertion_v2_msg(struct ice_vf *vf, u8 *msg)
 				     v_ret, NULL, 0);
 }
 
+/**
+ * ice_vc_get_vf_caps2 - handle VIRTCHNL_OP_GET_VF_CAPS2
+ * @vf: pointer to VF
+ * @msg: pointer to the message buffer
+ *
+ * Called from the VF to negotiate extended capability flag set if
+ * VIRTCHNL_VF_CAPS2 was set in vf_cap_flags. The PF responds with the
+ * intersection of its supported flags and the VF's requested flags.
+ *
+ * Return: 0 on success, negative on failure
+ */
+static int ice_vc_get_vf_caps2(struct ice_vf *vf,
+			       const struct virtchnl_vf_caps2 *msg)
+{
+	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
+	DECLARE_BITMAP(msg_caps, VIRTCHNL_VF_CAPS_MAX);
+	struct virtchnl_vf_caps2 *caps2;
+	unsigned int nbits;
+	int err;
+
+	caps2 = kzalloc_flex(*caps2, vf_cap_flags,
+			     BITS_TO_U32(VIRTCHNL_VF_CAPS_MAX));
+	if (!caps2)
+		return -ENOMEM;
+
+	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto send_msg;
+	}
+
+	if (!test_bit(VIRTCHNL_VF_CAPS2, vf->driver_caps)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto send_msg;
+	}
+
+	caps2->flags_len = BITS_TO_U32(VIRTCHNL_VF_CAPS_MAX);
+
+	/* Set extended feature flags. The first 32 bits should be already set
+	 * in VIRTCHNL_OP_GET_VF_RESOURCES
+	 */
+
+	/* Make sure to not read after msg bitmap or local bitmap. The remaining
+	 * bits (if any) should be unset, since one side doesn't know about
+	 * them, therefore cannot support these capabilities.
+	 */
+	nbits = min_t(unsigned int, VIRTCHNL_VF_CAPS_MAX,
+		      BITS_PER_TYPE(u32) * msg->flags_len);
+	bitmap_zero(msg_caps, VIRTCHNL_VF_CAPS_MAX);
+	bitmap_from_arr32(msg_caps, msg->vf_cap_flags, nbits);
+
+	/* Note that msg->vf_cap_flags cannot be directly used, because then
+	 * we'd need to limit the operation range to nbits. If the local caps
+	 * is larger and has some flags set after nbits, then they would be
+	 * incorrectly left set.
+	 */
+	bitmap_and(vf->driver_caps, vf->driver_caps, msg_caps,
+		   VIRTCHNL_VF_CAPS_MAX);
+
+	bitmap_to_arr32(caps2->vf_cap_flags, vf->driver_caps,
+			VIRTCHNL_VF_CAPS_MAX);
+
+send_msg:
+	err = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_GET_VF_CAPS2, v_ret,
+				    (u8 *)caps2,
+				    struct_size(caps2, vf_cap_flags,
+						caps2->flags_len));
+
+	kfree(caps2);
+
+	return err;
+}
+
 static int ice_vc_get_ptp_cap(struct ice_vf *vf,
 			      const struct virtchnl_ptp_caps *msg)
 {
@@ -2544,6 +2625,7 @@ static const struct ice_virtchnl_ops ice_virtchnl_dflt_ops = {
 	.cfg_q_quanta = ice_vc_cfg_q_quanta,
 	.get_ptp_cap = ice_vc_get_ptp_cap,
 	.get_phc_time = ice_vc_get_phc_time,
+	.get_vf_caps2 = ice_vc_get_vf_caps2,
 	/* If you add a new op here please make sure to add it to
 	 * ice_virtchnl_repr_ops as well.
 	 */
@@ -2681,6 +2763,7 @@ static const struct ice_virtchnl_ops ice_virtchnl_repr_ops = {
 	.cfg_q_quanta = ice_vc_cfg_q_quanta,
 	.get_ptp_cap = ice_vc_get_ptp_cap,
 	.get_phc_time = ice_vc_get_phc_time,
+	.get_vf_caps2 = ice_vc_get_vf_caps2,
 };
 
 /**
@@ -2924,6 +3007,9 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
 	case VIRTCHNL_OP_1588_PTP_GET_TIME:
 		err = ops->get_phc_time(vf);
 		break;
+	case VIRTCHNL_OP_GET_VF_CAPS2:
+		err = ops->get_vf_caps2(vf, (const void *)msg);
+		break;
 	case VIRTCHNL_OP_UNKNOWN:
 	default:
 		dev_err(dev, "Unsupported opcode %d from VF %d\n", v_opcode,
-- 
2.49.0

