Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CDAF79505E8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Aug 2024 15:08:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 709FF81B14;
	Tue, 13 Aug 2024 13:08:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sShpcVtU-Gei; Tue, 13 Aug 2024 13:08:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D80380DDF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723554497;
	bh=L0qs5l3rHaIHRj1WN/IoIUT5Aq5kI13NOQJph2DJwZc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vlf6N+xOCO2R9eU9whuiTpK2ZecXvB4VsQLDia9iIY6ALS8DmvPVNUbdnGHJz5D+I
	 A4Pa1NqR9sHKJ934R7g7yZkl80XB917FYjlGrQX9JXoXkNdt8izhQIhaMDK4ls8Hrr
	 NGykMjC9pO1SFZdiF7YdQ/PuiM0gT7NTVXzwMmRAizV3Sx5qfzUT7xqJicie7xioio
	 nAVJ0SvAh/dhEG96XEvofyaSucrpvf9xITNm3o8x+WPZm5ITdCcE1mMmX4mNWOhWrt
	 UjIo1DJg30+tPRlwstAzj5A6Iw8kzI7vJLbW2WLl1TObX30KQcPF3dMuFN77muSoQ/
	 mfjNInem05htQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3D80380DDF;
	Tue, 13 Aug 2024 13:08:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BD7C31BF275
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 13:08:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A8E0740A43
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 13:08:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WaWAshWD3xFp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Aug 2024 13:08:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 49D1840A41
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 49D1840A41
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 49D1840A41
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 13:08:12 +0000 (UTC)
X-CSE-ConnectionGUID: SRiXoCXASkKztO0g55PEhg==
X-CSE-MsgGUID: hJHQ3FBTRQSyFHF+8u2NTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11163"; a="32290906"
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="32290906"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 06:08:10 -0700
X-CSE-ConnectionGUID: DxniclT0SjKwAo4t4Z5nkw==
X-CSE-MsgGUID: 10RNhXJ9TfS7+rH8+lEDsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="59417120"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa008.jf.intel.com with ESMTP; 13 Aug 2024 06:08:08 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 3B6C632C87;
 Tue, 13 Aug 2024 14:08:06 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	aleksander.lobakin@intel.com
Date: Tue, 13 Aug 2024 08:55:00 -0400
Message-Id: <20240813125513.8212-2-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240813125513.8212-1-mateusz.polchlopek@intel.com>
References: <20240813125513.8212-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723554492; x=1755090492;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9jvNZoUxVWOhan80V8NC78FuZjCVw72X/JMQNZEh+/8=;
 b=OzcNLioqxa1bbemZHEsWmNIApHLwPFJVlWVX97YQ/V5D5MD6rL7nCPEV
 pOXXayjra3JnP79Bdg1SuqQBawwrmGyDOXZD1i6ggwmCEM+MjCu4s6smC
 udJc2hUvBS30AxBO226WsOHL+hlqaSPONuRAiUywwiZmabKC5MeNlaHUF
 9W9bh/A5g+McW9kHmXmYHeduLOZ28fQLbDXDvh6Iqa0cOjz4fzqohkb0h
 7lmJeCwUOjqMe19OtwSJWHpQM103ytbR7J4AdVz0/wU8nClayzrrO6qzQ
 BJHYDA3rwvXndgIjeB3vsxI3iKXrlEp26iiXAjKrfkSGKzUdHAsujNgvI
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OzcNLioq
Subject: [Intel-wired-lan] [PATCH iwl-next v9 01/14] virtchnl: add support
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
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 include/linux/avf/virtchnl.h | 63 ++++++++++++++++++++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index f41395264dca..5edfb01fa064 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -151,6 +151,9 @@ enum virtchnl_ops {
 	VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2 = 55,
 	VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2 = 56,
 	VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2 = 57,
+	/* opcode 58 and 59 are reserved */
+	VIRTCHNL_OP_1588_PTP_GET_CAPS = 60,
+	VIRTCHNL_OP_1588_PTP_GET_TIME = 61,
 	VIRTCHNL_OP_MAX,
 };
 
@@ -261,6 +264,7 @@ VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_vsi_resource);
 #define VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC	BIT(26)
 #define VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF		BIT(27)
 #define VIRTCHNL_VF_OFFLOAD_FDIR_PF		BIT(28)
+#define VIRTCHNL_VF_CAP_PTP			BIT(31)
 
 #define VF_BASE_MODE_OFFLOADS (VIRTCHNL_VF_OFFLOAD_L2 | \
 			       VIRTCHNL_VF_OFFLOAD_VLAN | \
@@ -1416,6 +1420,59 @@ struct virtchnl_fdir_del {
 
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
+VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_phc_time);
+
 #define __vss_byone(p, member, count, old)				      \
 	(struct_size(p, member, count) + (old - 1 - struct_size(p, member, 0)))
 
@@ -1637,6 +1694,12 @@ virtchnl_vc_validate_vf_msg(struct virtchnl_version_info *ver, u32 v_opcode,
 	case VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2:
 		valid_len = sizeof(struct virtchnl_vlan_setting);
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

