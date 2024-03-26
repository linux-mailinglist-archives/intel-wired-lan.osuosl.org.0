Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5843088C994
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 17:42:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 85D6941532;
	Tue, 26 Mar 2024 16:42:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 19fgvsP9D28b; Tue, 26 Mar 2024 16:42:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8DDAB40516
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711471326;
	bh=UjGIJHamcAeatfR39Own/Ljg+dFDNhC7sTkvVZQPiB0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tJ96CAqDMU3fdb6p5G5/QciX9xqBJncCi6v0ZRS6ZhWT+h6D5OwWjySp6eiqrix8b
	 6BVfIKHpRbzf0XkYJukwN2JGNaO/u7jYrubb0c8yqar6mID0jJ/+V/OOm79/5cmmgU
	 FMTlUnhT1Tktocaawge8jkPJ+ad5EeC/zVDshHY+ssVvHPqYuWjWwwCfasIZXvbiy+
	 CnzXM5f909L103EEQcKOFvtu2jh7bJlA/UQo4LMivNagRLQ8AKHo7OJOMTPgJi3kGf
	 bgaQkLk1kS8weweNUhsvdExgy5dFFt7uMYluwim+Md44GpCDp58Qer91cSv87KkMnT
	 tNFyo3VE4fOjQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8DDAB40516;
	Tue, 26 Mar 2024 16:42:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 594771BF364
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 16:42:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 462EB605DE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 16:42:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jO765LguP_0K for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 16:42:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7486B60ABE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7486B60ABE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7486B60ABE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 16:42:01 +0000 (UTC)
X-CSE-ConnectionGUID: rANzHMh3TOmEl0rop4MLAQ==
X-CSE-MsgGUID: IHsTqqHOSnqNAuYDIRu/PA==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="24023343"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="24023343"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 09:41:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="20667408"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa003.jf.intel.com with ESMTP; 26 Mar 2024 09:41:52 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Tue, 26 Mar 2024 17:41:16 +0100
Message-ID: <20240326164116.645718-4-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240326164116.645718-1-aleksander.lobakin@intel.com>
References: <20240326164116.645718-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711471321; x=1743007321;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0M19hZnqA3jl1JLaoqiVosY36hhwzDxnFIUtxgxHlNI=;
 b=RZpTMcYYTCBB5Cy3MXE6HDNBumocMB5gLVGNMDbNeLTCOo28wLhIa/Kd
 94ZlsjbloV5uCTpELj4d6kpldBhN2egMNX1Lq9awdrhAqcSIyBftDnAP6
 bKvgzrGY1rJh/rze5U9tlKHfTEgiCl6S7/+oPuV/V/CXRkbNT6z4vREx+
 EWuWvDmJ+Q/gXCGDdjC6F2IKC3SgrPw3uGrl6pkTXOkwMFIDgt/cU/O5x
 3HAgaGdcQH+9u6x1UTF8eSQSknHOQNSEQowygIGUruwhhetPlBvN2nCD3
 zz/d7s1NHC0MTACf2UqwlJU4zUulemHrHATRQuRRPX6cicneMGcQAo9rl
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RZpTMcYY
Subject: [Intel-wired-lan] [PATCH net-next 3/3] idpf: sprinkle __counted_by{,
 _le}() in the virtchnl2 header
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

