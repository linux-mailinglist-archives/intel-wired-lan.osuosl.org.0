Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D2365C2E19B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 03 Nov 2025 22:09:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 21C9060A67;
	Mon,  3 Nov 2025 21:09:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6daeDgp_2FMO; Mon,  3 Nov 2025 21:09:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 89E6160A68
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762204196;
	bh=wEzv4ilkDufOCMLKBLb5k19NK+x2RF6mjTNu7DKBFQc=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=8zgkyAfs7Ipv2H1PB+lnyuVs3nRUx41qvme/XZky59lpKFbybpzvyiTF/Af4Qo219
	 w63t8qSeaQas0MNt+OqKMXxXTSqnedFzVZ0cSMNkceWSMybdTpR+JKb590Ezip9gwS
	 S8aRju2EO2daxKaUs0fAWwnHMo14jc95sFE+STfwL2aVyz2mOkU7fyNJXyo7dqAXlt
	 Wq7yQSFXwFApb/vOtVMtJvxtghvNzjLOtbbwEGle4Hd47SyqxkjIKDb4mLtkNyBIvw
	 Yexm2l2dG4+7hEJACMpRmrqZqcBFH2isusAEvCkJr5AR7eh6NXuzg+/4AT0VXYptnr
	 0wNPcS/6dxQ4A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 89E6160A68;
	Mon,  3 Nov 2025 21:09:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id E8E45278
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 21:09:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CF19C40502
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 21:09:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LxEj1qUPzEu4 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Nov 2025 21:09:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D1F724052B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D1F724052B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D1F724052B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 21:09:53 +0000 (UTC)
X-CSE-ConnectionGUID: nIOTAV2TSaSrzsJymQ+Lhg==
X-CSE-MsgGUID: 1F6w4UGbS3itMOCfZaU/Rg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="68129454"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="68129454"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 13:09:53 -0800
X-CSE-ConnectionGUID: +DecENeHQMqgOLLCvjIoHA==
X-CSE-MsgGUID: lAAtYi4yT/mi97Y2uTqotg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,277,1754982000"; d="scan'208";a="187121168"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.14])
 by orviesa008.jf.intel.com with ESMTP; 03 Nov 2025 13:09:53 -0800
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Joshua Hay <joshua.a.hay@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>
Date: Mon,  3 Nov 2025 13:20:36 -0800
Message-Id: <20251103212036.2788093-1-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762204194; x=1793740194;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nHyUw7CH5fqHOkzGJzjMZOpnhWd4lMtXz+aZjNJ3p9c=;
 b=mEbo96O/02qjHlaNiF5x0YoJl94dS4ArRqOEnYsp2AIBqXCCN9Os1qsL
 sPAw7rb3KH9oOnkas3xsa1MdEJ220msgw1Efwh0SRcP7pYhLd8JLIlZUH
 vBkb+tYmkfwsfz0Er9xQHjOj45P1riKHCdQlIvDikMCPNo9ryNfL94Tnd
 OfG6ymajpS0jfYTbMjRy6exj/lFU90dc0tHJjqyiGyDGCgdKw7z60br2o
 2pifyIcaw3XOWlH8/jYEJPXi3/sEPIEAJpEp27RgJYjFV/1IlFbvoSJAr
 HtI7nUvACY/cz7ZGqnzXjBvAa+igWgXx0z65VJFGGZydn9QO7IEJ3vRV6
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mEbo96O/
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: cap maximum Rx buffer size
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

The HW only supports a maximum Rx buffer size of 16K-128. On systems
using large pages, the libeth logic can configure the buffer size to be
larger than this. The upper bound is PAGE_SIZE while the lower bound is
MTU rounded up to the nearest power of 2. For example, ARM systems with
a 64K page size and an mtu of 9000 will set the Rx buffer size to 16K,
which will cause the config Rx queues message to fail.

Initialize the bufq/fill queue buf_len field to the maximum supported
size. This will trigger the libeth logic to cap the maximum Rx buffer
size by reducing the upper bound.

Fixes: 74d1412ac8f37 ("idpf: use libeth Rx buffer management for payload buffer")
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Acked-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 8 +++++---
 drivers/net/ethernet/intel/idpf/idpf_txrx.h | 1 +
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 828f7c444d30..dcdd4fef1c7a 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -695,9 +695,10 @@ static int idpf_rx_buf_alloc_singleq(struct idpf_rx_queue *rxq)
 static int idpf_rx_bufs_init_singleq(struct idpf_rx_queue *rxq)
 {
 	struct libeth_fq fq = {
-		.count	= rxq->desc_count,
-		.type	= LIBETH_FQE_MTU,
-		.nid	= idpf_q_vector_to_mem(rxq->q_vector),
+		.count		= rxq->desc_count,
+		.type		= LIBETH_FQE_MTU,
+		.buf_len	= IDPF_RX_MAX_BUF_SZ,
+		.nid		= idpf_q_vector_to_mem(rxq->q_vector),
 	};
 	int ret;
 
@@ -754,6 +755,7 @@ static int idpf_rx_bufs_init(struct idpf_buf_queue *bufq,
 		.truesize	= bufq->truesize,
 		.count		= bufq->desc_count,
 		.type		= type,
+		.buf_len	= IDPF_RX_MAX_BUF_SZ,
 		.hsplit		= idpf_queue_has(HSPLIT_EN, bufq),
 		.xdp		= idpf_xdp_enabled(bufq->q_vector->vport),
 		.nid		= idpf_q_vector_to_mem(bufq->q_vector),
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 75b977094741..a1255099656f 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -101,6 +101,7 @@ do {								\
 		idx = 0;					\
 } while (0)
 
+#define IDPF_RX_MAX_BUF_SZ			(16384 - 128)
 #define IDPF_RX_BUF_STRIDE			32
 #define IDPF_RX_BUF_POST_STRIDE			16
 #define IDPF_LOW_WATERMARK			64
-- 
2.39.2

