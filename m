Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 891FD89F203
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Apr 2024 14:26:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 39765608D4;
	Wed, 10 Apr 2024 12:26:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6fR7i4czIXSV; Wed, 10 Apr 2024 12:26:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED32B608F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712751994;
	bh=CSCpmaXp+oi9d4GHA7AWcvX9FpJjfwEQ8607uXiTz+c=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1yEUd91CrYwEZiKzHLW7Vhl3Dz4VYC+YTxT4BUzLqx4qEnzy/R2sj6qw/JdWwjmQx
	 w51ufSM/2ylQsiM8ebXqozEsEn4NG00+b5TioyFdzrywBH7zHv7PEgpW0pd9zliBNC
	 G3UpvnBbDcPRIs/OkKCgaSQ7k/AC3LrOHuhpawK2duiPCRDAArDO0xrrKak3l3PGmK
	 K4f6IF82C99Fd7HjDjAyunaUNUUc989VIEeqZx4spChpuvmwpEwLAseMFtUDW1U3AO
	 H8wnbsd8oL3DNmzZFolQnnLqBxxSQMwWZqiTFi3WgaBWBtKWOu7qF+3AUIqDmeuq/t
	 aKXrC/+4GrGLg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ED32B608F9;
	Wed, 10 Apr 2024 12:26:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 78FD31BF3C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 12:26:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 63570408D5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 12:26:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TsoYLVVHR14L for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Apr 2024 12:26:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3983040180
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3983040180
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3983040180
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 12:26:31 +0000 (UTC)
X-CSE-ConnectionGUID: yHz51FaKQmm9nUHsI0133g==
X-CSE-MsgGUID: RI98oxP0TZO4Ed17L7AMtA==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="7982194"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; 
   d="scan'208";a="7982194"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 05:26:31 -0700
X-CSE-ConnectionGUID: tYcKbHyrR+2rmanyf1QASg==
X-CSE-MsgGUID: xHCiuGFPSxepl+YvRZZrrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="51760043"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa001.fm.intel.com with ESMTP; 10 Apr 2024 05:26:28 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id B1E2F28798;
 Wed, 10 Apr 2024 13:26:26 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 10 Apr 2024 08:16:55 -0400
Message-Id: <20240410121706.6223-2-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240410121706.6223-1-mateusz.polchlopek@intel.com>
References: <20240410121706.6223-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712751991; x=1744287991;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cAAqRptvacpuGye4JbzJsPjpXkrxFqrVluCCjCIKcfM=;
 b=OfooJRHyUqy8MXVN+200EpLWjwihj1/lWNlwiKcp94rZX10tHUl6dEMY
 0sq6UpNce6+I7+VhQw85udBanDz7CeV61lIQ0Ecm7SiW7KqYBqZAHojl7
 eSeBvnU/XBxpbJTaDKrqrD88QNXzZUK/26pmprUWv5ycbOEj7IzWHEAHU
 iFu8VvBhGsFMA2teAfKJygfpTo3CdwQb5i2YlQWnchxHFAIeZHg4+Y0T4
 VxwR+vOLuKW2tM/cUtLbqOYNevhcOu99d/bjaij5uzh6iPIl4PQIlxeoE
 ZHHphV6IMS6Jf5XL4a0NUAgIoqp1ZSsCxrcbDIkvtzwCxnGjaQ2fV5b6w
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OfooJRHy
Subject: [Intel-wired-lan] [PATCH iwl-next v4 01/12] virtchnl: add support
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
 anthony.l.nguyen@intel.com, horms@kernel.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>
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

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 include/linux/avf/virtchnl.h | 66 ++++++++++++++++++++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index 8e177b67e82f..5003d29e3f5b 100644
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
 
@@ -260,6 +263,7 @@ VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_vsi_resource);
 #define VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC	BIT(26)
 #define VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF		BIT(27)
 #define VIRTCHNL_VF_OFFLOAD_FDIR_PF		BIT(28)
+#define VIRTCHNL_VF_CAP_PTP			BIT(31)
 
 #define VF_BASE_MODE_OFFLOADS (VIRTCHNL_VF_OFFLOAD_L2 | \
 			       VIRTCHNL_VF_OFFLOAD_VLAN | \
@@ -1405,6 +1409,62 @@ struct virtchnl_fdir_del {
 
 VIRTCHNL_CHECK_STRUCT_LEN(12, virtchnl_fdir_del);
 
+#define VIRTCHNL_1588_PTP_CAP_RX_TSTAMP		BIT(1)
+#define VIRTCHNL_1588_PTP_CAP_READ_PHC		BIT(2)
+
+/**
+ * struct virtchnl_ptp_caps
+ *
+ * Structure that defines the PTP capabilities available to the VF. The VF
+ * sends VIRTCHNL_OP_1588_PTP_GET_CAPS, and must fill in the ptp_caps field
+ * indicating what capabilities it is requesting. The PF will respond with the
+ * same message with the virtchnl_ptp_caps structure indicating what is
+ * enabled for the VF.
+ *
+ * @caps: On send, VF sets what capabilities it requests. On reply, PF
+ *        indicates what has been enabled for this VF. The PF shall not set
+ *        bits which were not requested by the VF.
+ * @rsvd: Reserved bits for future extension.
+ *
+ * PTP capabilities
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
+ * struct virtchnl_phc_time
+ * @time: PHC time in nanoseconds
+ * @rsvd: Reserved for future extension
+ *
+ * Structure received with VIRTCHNL_OP_1588_PTP_GET_TIME. Contains the 64bits
+ * of PHC clock time in * nanoseconds.
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
 
@@ -1626,6 +1686,12 @@ virtchnl_vc_validate_vf_msg(struct virtchnl_version_info *ver, u32 v_opcode,
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

