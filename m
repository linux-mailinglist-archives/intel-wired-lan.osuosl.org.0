Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A7399C626
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Oct 2024 11:44:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4B20C6070C;
	Mon, 14 Oct 2024 09:44:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X1FDS-kBl0Bj; Mon, 14 Oct 2024 09:44:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E4CE60690
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728899048;
	bh=Hv7eCNmLcQHFMV7xQ7vtYpArSn5zKOE0JtzdKosDko0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7msZ73yXuEJ55fhXlbkLx1exIiKnv9GVk2a3n3KDNV3dP9+rQJJ/ksvMgigHrtJQm
	 NyOnFt6wPbuCaV2xVjO27rOtXoRBlPKSclx9NSijkAriRmOPf14P7sS/RFIQ3/T2eA
	 FER0RBNFGA2EBadj0TjxE3a91DzcTUc44OttFJnXRi9Hf1LHK2RHZpNTJe7+lpVybz
	 to2700iz0YbAKGwr8y9ccu8AShijI4ukA4MV6iDMB7WV+FEYezX9VmzOj4NTu4awOD
	 oH26v4mqggvhwx9ZI57SVDe5CGPFdcdmPQSKQZGHVX7SrLfcexAHlq2JFk2qoSVZDW
	 uJjgcvQvKWwzw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E4CE60690;
	Mon, 14 Oct 2024 09:44:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2B4141BF364
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 09:44:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ADA60402A2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 09:44:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q0GLZJALpPhV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Oct 2024 09:44:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4AE9740499
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4AE9740499
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4AE9740499
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 09:44:04 +0000 (UTC)
X-CSE-ConnectionGUID: 8CoIs7BfSgWu/d3Ldu7JSA==
X-CSE-MsgGUID: amOnCTQNTd6YxbprSO0OcQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="45712140"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="45712140"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 02:44:02 -0700
X-CSE-ConnectionGUID: U2bR5+vzTc+Eto8Qw9JhaQ==
X-CSE-MsgGUID: KMqU8tYPQGGEaB1qK0A+cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,202,1725346800"; d="scan'208";a="77531788"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa009.fm.intel.com with ESMTP; 14 Oct 2024 02:44:00 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 14FA627BCC;
 Mon, 14 Oct 2024 10:43:59 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	aleksander.lobakin@intel.com
Date: Sun, 13 Oct 2024 11:44:02 -0400
Message-Id: <20241013154415.20262-2-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20241013154415.20262-1-mateusz.polchlopek@intel.com>
References: <20241013154415.20262-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728899044; x=1760435044;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aAF9bEhJujSmDgMmh827WTfXfAzZgF7tLjzA+Tj1wtA=;
 b=OtIEoEEi0hfUSzMLXpDDngXVuyvAgaABZrHlNQzNbs0Ba+HBYNaayl/T
 O2p4J2ckyT/6SZkckCTs1fTJ8BYp/WvsmK2gB6c0j2iRNz/qfP3L957SD
 NWBQQl04lZlddpAvDm0Tib+ctEZpN0ezpHcXDejMQ8BOMBxlALGRFbj9M
 rKWVwUH1mfcg3/mO6xa2DfAwuorK2B/fr4UjpRHwkCLZNpXx+kbDgyei0
 WhrG0T6Wrd+9khXaz7hLd7/gaayMKhuhf+murfklhjc7Q9KpAQ8Z3lqF/
 3keOp3sNjVrn6IcMqZTIAu0umuzyyIP6zIlYAS2qLaZcYzbTtomNiqQIN
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OtIEoEEi
Subject: [Intel-wired-lan] [PATCH iwl-next v11 01/14] virtchnl: add support
 for enabling PTP on iAVF
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 Simon Horman <horms@kernel.org>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Rahul Rameshbabu <rrameshbabu@nvidia.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

Add support for allowing a VF to enable PTP feature - Rx timestamps

The new capability is gated by VIRTCHNL_VF_CAP_PTP, which must be
set by the VF to request access to the new operations. In addition, the
VIRTCHNL_OP_1588_PTP_CAPS command is used to determine the specific
capabilities available to the VF.

This support includes the following additional capabilities:

* Rx timestamps enabled in the Rx queues (when using flexible advanced
  descriptors)
* Read access to PHC time over virtchnl using
  VIRTCHNL_OP_1588_PTP_GET_TIME

Extra space is reserved in most structures to allow for future
extension (like set clock, Tx timestamps).  Additional opcode numbers
are reserved and space in the virtchnl_ptp_caps structure is
specifically set aside for this.
Additionally, each structure has some space reserved for future
extensions to allow some flexibility.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Rahul Rameshbabu <rrameshbabu@nvidia.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 include/linux/avf/virtchnl.h | 67 +++++++++++++++++++++++++++++++++++-
 1 file changed, 66 insertions(+), 1 deletion(-)

diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index 223e433c39fe..2b874986fe5c 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -154,7 +154,10 @@ enum virtchnl_ops {
 	VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2 = 55,
 	VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2 = 56,
 	VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2 = 57,
-	/* opcode 57 - 65 are reserved */
+	/* opcode 58 and 59 are reserved */
+	VIRTCHNL_OP_1588_PTP_GET_CAPS = 60,
+	VIRTCHNL_OP_1588_PTP_GET_TIME = 61,
+	/* opcode 62 - 65 are reserved */
 	VIRTCHNL_OP_GET_QOS_CAPS = 66,
 	/* opcode 68 through 111 are reserved */
 	VIRTCHNL_OP_CONFIG_QUEUE_BW = 112,
@@ -270,6 +273,7 @@ VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_vsi_resource);
 #define VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF		BIT(27)
 #define VIRTCHNL_VF_OFFLOAD_FDIR_PF		BIT(28)
 #define VIRTCHNL_VF_OFFLOAD_QOS			BIT(29)
+#define VIRTCHNL_VF_CAP_PTP			BIT(31)
 
 #define VF_BASE_MODE_OFFLOADS (VIRTCHNL_VF_OFFLOAD_L2 | \
 			       VIRTCHNL_VF_OFFLOAD_VLAN | \
@@ -1425,6 +1429,61 @@ struct virtchnl_fdir_del {
 
 VIRTCHNL_CHECK_STRUCT_LEN(12, virtchnl_fdir_del);
 
+#define VIRTCHNL_1588_PTP_CAP_RX_TSTAMP		BIT(1)
+#define VIRTCHNL_1588_PTP_CAP_READ_PHC		BIT(2)
+
+/**
+ * struct virtchnl_ptp_caps - Defines the PTP caps available to the VF.
+ * @caps: On send, VF sets what capabilities it requests. On reply, PF
+ *        indicates what has been enabled for this VF. The PF shall not set
+ *        bits which were not requested by the VF.
+ * @rsvd: Reserved bits for future extension.
+ *
+ * Structure that defines the PTP capabilities available to the VF. The VF
+ * sends VIRTCHNL_OP_1588_PTP_GET_CAPS, and must fill in the ptp_caps field
+ * indicating what capabilities it is requesting. The PF will respond with the
+ * same message with the virtchnl_ptp_caps structure indicating what is
+ * enabled for the VF.
+ *
+ * VIRTCHNL_1588_PTP_CAP_RX_TSTAMP indicates that the VF receive queues have
+ * receive timestamps enabled in the flexible descriptors. Note that this
+ * requires a VF to also negotiate to enable advanced flexible descriptors in
+ * the receive path instead of the default legacy descriptor format.
+ *
+ * VIRTCHNL_1588_PTP_CAP_READ_PHC indicates that the VF may read the PHC time
+ * via the VIRTCHNL_OP_1588_PTP_GET_TIME command.
+ *
+ * Note that in the future, additional capability flags may be added which
+ * indicate additional extended support. All fields marked as reserved by this
+ * header will be set to zero. VF implementations should verify this to ensure
+ * that future extensions do not break compatibility.
+ */
+struct virtchnl_ptp_caps {
+	u32 caps;
+	u8 rsvd[44];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(48, virtchnl_ptp_caps);
+
+/**
+ * struct virtchnl_phc_time - Contains the 64bits of PHC clock time in ns.
+ * @time: PHC time in nanoseconds
+ * @rsvd: Reserved for future extension
+ *
+ * Structure received with VIRTCHNL_OP_1588_PTP_GET_TIME. Contains the 64bits
+ * of PHC clock time in nanoseconds.
+ *
+ * VIRTCHNL_OP_1588_PTP_GET_TIME may be sent to request the current time of
+ * the PHC. This op is available in case direct access via the PHC registers
+ * is not available.
+ */
+struct virtchnl_phc_time {
+	u64 time;
+	u8 rsvd[8];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_phc_time);
+
 struct virtchnl_shaper_bw {
 	/* Unit is Kbps */
 	u32 committed;
@@ -1756,6 +1815,12 @@ virtchnl_vc_validate_vf_msg(struct virtchnl_version_info *ver, u32 v_opcode,
 			}
 		}
 		break;
+	case VIRTCHNL_OP_1588_PTP_GET_CAPS:
+		valid_len = sizeof(struct virtchnl_ptp_caps);
+		break;
+	case VIRTCHNL_OP_1588_PTP_GET_TIME:
+		valid_len = sizeof(struct virtchnl_phc_time);
+		break;
 	/* These are always errors coming from the VF. */
 	case VIRTCHNL_OP_EVENT:
 	case VIRTCHNL_OP_UNKNOWN:
-- 
2.38.1

