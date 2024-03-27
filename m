Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FFC088E5FF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Mar 2024 15:30:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E1968201C;
	Wed, 27 Mar 2024 14:30:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WQ8zY3MTNGNo; Wed, 27 Mar 2024 14:30:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D329A81FC9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711549831;
	bh=Lrv8dEqMlGqmX6pygY1tFYnSYid6I3scJBTixQw16B4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=boNh3W1T1lGZ3APX2tkkyFyLLH/+koJgGky9XKELVXXwJyOUGucAzhILMjSkY96Jm
	 oTUuTVEhSKdgtRM5Z5ExY5VB8RGVyiUI/QpvCxf6HnYwarwso5guD2/aTx+sgbJRXk
	 9fsFaez8mB4CUAPSzd91brrRlZYbjdnAwNR08luuIXkyLULb5QgXb2ZP62fE3grALp
	 /Z8mdFKahWyBL5j5TuVnK2eDmsQ41IY4BMo84utfcRJkeJO7I/htZgf/KwLoOLoiRH
	 +RCNA3Ng4dxYELzow9oGHESSrp7Y0DY5PaM8rPF1qrucxgZhtSDVKRy2IIxpFoUVIq
	 HqXZTQCKYS4Qg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D329A81FC9;
	Wed, 27 Mar 2024 14:30:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0CA2C1BF279
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 14:30:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 039A381FD0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 14:30:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yYIn1sUCZ2n9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Mar 2024 14:30:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2DC9E81F88
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2DC9E81F88
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2DC9E81F88
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 14:30:27 +0000 (UTC)
X-CSE-ConnectionGUID: 1dAzg/LiSdWya278nnU24Q==
X-CSE-MsgGUID: rR6fbPJ9QrmZTz/063ehxg==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6592547"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; 
   d="scan'208";a="6592547"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 07:23:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="20973106"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa004.fm.intel.com with ESMTP; 27 Mar 2024 07:23:19 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Wed, 27 Mar 2024 15:22:41 +0100
Message-ID: <20240327142241.1745989-4-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240327142241.1745989-1-aleksander.lobakin@intel.com>
References: <20240327142241.1745989-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711549827; x=1743085827;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iiy+IT/DztQVWAIWT58TrPOTIu+zB11vMHnxpdfkMvE=;
 b=c199Jt+VyKa9TV/6Ht2YM0/VMmo64kdkEU5kuroPxKSIlTXWtN/W5dyp
 Q9TpEoCuoLHBwuEiz7vZEptwsssO1YileUynqDFbe+qJ28hLz/+AbNIRv
 Kr32kzGn5M6EbdpFFRXp3h92OwTmMoRtErUDCWmcmpa7dmgza+vskqtbt
 BUbl9jjD8+zV1eEHuNMEwKlBvJd2FJT5IEVdcCE5XiokY8SXAW1yPsJkw
 wVvjNW58KLP0TsbjSKRN6jm324wfVwz1IeJqH3R3OdAg4l4famByiumOf
 DjJoGgdc4ZjM0uxpAXCmgImyYsOxvE5Hp4KueMQiiDICofVEfduZtICMy
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=c199Jt+V
Subject: [Intel-wired-lan] [PATCH net-next v2 3/3] idpf: sprinkle
 __counted_by{, _le}() in the virtchnl2 header
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
Cc: Kees Cook <keescook@chromium.org>, netdev@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-kernel@vger.kernel.org,
 Nathan Chancellor <nathan@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 Simon Horman <horms@kernel.org>, nex.sw.ncis.osdt.itp.upstreaming@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Both virtchnl2.h and its consumer idpf_virtchnl.c are very error-prone.
There are 10 structures with flexible arrays at the end, but 9 of them
has flex member counter in Little Endian.
Make the code a bit more robust by applying __counted_by_le() to those
9. LE platforms is the main target for this driver, so they would
receive additional protection.
While we're here, add __counted_by() to virtchnl2_ptype::proto_id, as
its counter is `u8` regardless of the Endianness.
Compile test on x86_64 (LE) didn't reveal any new issues after applying
the attributes.

Acked-by: Kees Cook <keescook@chromium.org>
Acked-by: Gustavo A. R. Silva <gustavoars@kernel.org>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/virtchnl2.h | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h b/drivers/net/ethernet/intel/idpf/virtchnl2.h
index 29419211b3d9..63deb120359c 100644
--- a/drivers/net/ethernet/intel/idpf/virtchnl2.h
+++ b/drivers/net/ethernet/intel/idpf/virtchnl2.h
@@ -555,7 +555,7 @@ VIRTCHNL2_CHECK_STRUCT_LEN(32, virtchnl2_queue_reg_chunk);
 struct virtchnl2_queue_reg_chunks {
 	__le16 num_chunks;
 	u8 pad[6];
-	struct virtchnl2_queue_reg_chunk chunks[];
+	struct virtchnl2_queue_reg_chunk chunks[] __counted_by_le(num_chunks);
 };
 VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_queue_reg_chunks);
 
@@ -703,7 +703,7 @@ struct virtchnl2_config_tx_queues {
 	__le32 vport_id;
 	__le16 num_qinfo;
 	u8 pad[10];
-	struct virtchnl2_txq_info qinfo[];
+	struct virtchnl2_txq_info qinfo[] __counted_by_le(num_qinfo);
 };
 VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_config_tx_queues);
 
@@ -782,7 +782,7 @@ struct virtchnl2_config_rx_queues {
 	__le32 vport_id;
 	__le16 num_qinfo;
 	u8 pad[18];
-	struct virtchnl2_rxq_info qinfo[];
+	struct virtchnl2_rxq_info qinfo[] __counted_by_le(num_qinfo);
 };
 VIRTCHNL2_CHECK_STRUCT_LEN(24, virtchnl2_config_rx_queues);
 
@@ -868,7 +868,7 @@ VIRTCHNL2_CHECK_STRUCT_LEN(32, virtchnl2_vector_chunk);
 struct virtchnl2_vector_chunks {
 	__le16 num_vchunks;
 	u8 pad[14];
-	struct virtchnl2_vector_chunk vchunks[];
+	struct virtchnl2_vector_chunk vchunks[] __counted_by_le(num_vchunks);
 };
 VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_vector_chunks);
 
@@ -912,7 +912,7 @@ struct virtchnl2_rss_lut {
 	__le16 lut_entries_start;
 	__le16 lut_entries;
 	u8 pad[4];
-	__le32 lut[];
+	__le32 lut[] __counted_by_le(lut_entries);
 };
 VIRTCHNL2_CHECK_STRUCT_LEN(12, virtchnl2_rss_lut);
 
@@ -977,7 +977,7 @@ struct virtchnl2_ptype {
 	u8 ptype_id_8;
 	u8 proto_id_count;
 	__le16 pad;
-	__le16 proto_id[];
+	__le16 proto_id[] __counted_by(proto_id_count);
 } __packed __aligned(2);
 VIRTCHNL2_CHECK_STRUCT_LEN(6, virtchnl2_ptype);
 
@@ -1104,7 +1104,7 @@ struct virtchnl2_rss_key {
 	__le32 vport_id;
 	__le16 key_len;
 	u8 pad;
-	u8 key_flex[];
+	u8 key_flex[] __counted_by_le(key_len);
 } __packed;
 VIRTCHNL2_CHECK_STRUCT_LEN(7, virtchnl2_rss_key);
 
@@ -1131,7 +1131,7 @@ VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_queue_chunk);
 struct virtchnl2_queue_chunks {
 	__le16 num_chunks;
 	u8 pad[6];
-	struct virtchnl2_queue_chunk chunks[];
+	struct virtchnl2_queue_chunk chunks[] __counted_by_le(num_chunks);
 };
 VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_queue_chunks);
 
@@ -1195,7 +1195,7 @@ struct virtchnl2_queue_vector_maps {
 	__le32 vport_id;
 	__le16 num_qv_maps;
 	u8 pad[10];
-	struct virtchnl2_queue_vector qv_maps[];
+	struct virtchnl2_queue_vector qv_maps[] __counted_by_le(num_qv_maps);
 };
 VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_queue_vector_maps);
 
@@ -1247,7 +1247,7 @@ struct virtchnl2_mac_addr_list {
 	__le32 vport_id;
 	__le16 num_mac_addr;
 	u8 pad[2];
-	struct virtchnl2_mac_addr mac_addr_list[];
+	struct virtchnl2_mac_addr mac_addr_list[] __counted_by_le(num_mac_addr);
 };
 VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_mac_addr_list);
 
-- 
2.44.0

