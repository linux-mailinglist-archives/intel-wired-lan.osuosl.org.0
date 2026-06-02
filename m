Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4Iz1L1gOH2onewAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Jun 2026 19:09:44 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D08630899
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Jun 2026 19:09:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=132dc9Gg;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A021680BB6;
	Tue,  2 Jun 2026 17:09:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JHtDcv1c1X7a; Tue,  2 Jun 2026 17:09:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D9CE580815
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780420176;
	bh=+LqfBkYWJ+KGYd+B1upp7jmbyH7gWGLnP5XNzg2JhgI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=132dc9Gg8jkkwWGeio7lToT1EPUCnU4R22EA9fsEJqGLS1gQrQA6VlyqkQrSY7ke3
	 FtOyfcPKjZ8R2d3Wcj8ccQSBlOnrUZns99RZjQZqaZqM7pyUTC1+Vqx7NFsjy19qlv
	 R/PMLPxQ8+Ku5rfBcgo1Dsblv0hpkLRVHrLIvVYvqJzOUGqQQsb/CiWxgrKJPoGFaz
	 kvzHceuW+r4BHjm2T8O4uxsv1imxCJPbB8hQ+5g4jJSPgqrKtOZENgpjmZQqoGlal+
	 wDKZOMG29zPseN9EjoYT6muT4gXeXcP213eWcaDeYdsyHCKUim6MGjA5cT3Jlk/JAq
	 XnHVu4xEe27GA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D9CE580815;
	Tue,  2 Jun 2026 17:09:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 24BD52F5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 17:09:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6122E8059E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 17:09:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4_Tj_f5Gjix0 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jun 2026 17:09:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 78CA4822D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 78CA4822D1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 78CA4822D1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 17:09:33 +0000 (UTC)
X-CSE-ConnectionGUID: EWAYhMjIRU2kmpTtqI/zJw==
X-CSE-MsgGUID: /kUih80wTdKp4Ar2mor+uA==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="81074149"
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="81074149"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 10:09:32 -0700
X-CSE-ConnectionGUID: eIZFWocMSZWcX3NyPrkXJQ==
X-CSE-MsgGUID: PLvp+a+aQoyM15xObdSinQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="241475798"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.14])
 by fmviesa008.fm.intel.com with ESMTP; 02 Jun 2026 10:09:32 -0700
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Date: Tue,  2 Jun 2026 10:20:23 -0700
Message-Id: <20260602172024.2285947-3-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20260602172024.2285947-1-joshua.a.hay@intel.com>
References: <20260602172024.2285947-1-joshua.a.hay@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780420174; x=1811956174;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nRj26T7zJ310GnaZVo8UWEecUe0vUxwCVUiciD4hn0w=;
 b=OJ1cajXJNmGfM4D15w46GYu8ozGgtCpvtQL4cSmKdq2rkGq7LVbdvN11
 ozVGZCyrh5SPKKwQpEgTKkgNe70CVsAc8KLy1bNN2Be1rtRXvbZTjNiFQ
 fmfxAaFeoAGcS8xwrEIsX6ARH/96rkg+cG7jyuqkLw64ftDx8XJ2KE/pp
 wW8TA3GhmqJ+urt9GsmgwcY6ht80OdWLyI0jjSMW6Uz/Mw2ltgDjEw9Tm
 y7GXV8KtP3WdP8/YSh+I2mQlCQrqweKl/Zmozev8QBtlqCmAiltkkGc9W
 +nhjWAZ/pLZN8N3vTn5QEJPa/UFAE/q3psVijrHzKBNvwaDo/JYrguZKw
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OJ1cajXJ
Subject: [Intel-wired-lan] [PATCH net v2 2/3] idpf: fix next_to_clean data
 races
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joshua.a.hay@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,intel.com:mid,intel.com:from_mime,intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:from_smtp,osuosl.org:dkim];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 83D08630899

As reported by Sashiko [1], IDPF_DESC_UNUSED() evaluates
txq->next_to_clean twice, and next_to_clean can be concurrently updated
by NAPI.  next_to_clean can change between evaluations, resulting in a
miscalculated free descriptor count that is larger than the ring
capacity. Consequently, netif_subqueue_maybe_stop() could incorrectly
determine there is room in the queue, bypassing the stop mechanism and
allowing active in-flight descriptors to be overwritten.

This patch is based on commit 9eab46b7cb8d ("e1000: fix data race
between tx_ring->next_to_clean").

Fixes: 6818c4d5b3c2 ("idpf: add splitq start_xmit")
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Link: https://sashiko.dev/#/patchset/20260504-jk-iwl-net-2026-05-04-v1-0-a222a88bd962%40intel.com [1]
---
 drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c | 3 ++-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c         | 9 ++++++---
 drivers/net/ethernet/intel/idpf/idpf_txrx.h         | 9 ++++++---
 3 files changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
index e3ddf18dcbf5..a0e3de3ed0a9 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
@@ -558,7 +558,8 @@ static bool idpf_tx_singleq_clean(struct idpf_tx_queue *tx_q, int napi_budget,
 	} while (likely(budget));
 
 	ntc += tx_q->desc_count;
-	tx_q->next_to_clean = ntc;
+	/* Sync with IDPF_DESC_UNUSED called from idpf_tx_singleq_frame. */
+	smp_store_release(&tx_q->next_to_clean, ntc);
 
 	*cleaned += ss.packets;
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 34fc85cbb3f4..9cc4fbd13313 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -2073,8 +2073,10 @@ static void idpf_tx_splitq_clean(struct idpf_tx_queue *tx_q, u16 end,
 	struct idpf_tx_buf *tx_buf;
 
 	if (descs_only) {
-		/* Bump ring index to mark as cleaned. */
-		tx_q->next_to_clean = end;
+		/* Bump ring index to mark as cleaned and sync with
+		 * IDPF_DESC_UNUSED called from idpf_txq_has_room.
+		 */
+		smp_store_release(&tx_q->next_to_clean, end);
 		return;
 	}
 
@@ -2111,7 +2113,8 @@ static void idpf_tx_splitq_clean(struct idpf_tx_queue *tx_q, u16 end,
 		idpf_tx_splitq_clean_bump_ntc(tx_q, ntc, tx_desc, tx_buf);
 	}
 
-	tx_q->next_to_clean = ntc;
+	/* Sync with IDPF_DESC_UNUSED called from idpf_txq_has_room. */
+	smp_store_release(&tx_q->next_to_clean, ntc);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 4be5b3b6d3ed..8eadc2682c96 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -119,9 +119,12 @@ do {								\
 #define IDPF_RXD_EOF_SPLITQ		VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_EOF_M
 #define IDPF_RXD_EOF_SINGLEQ		VIRTCHNL2_RX_BASE_DESC_STATUS_EOF_M
 
-#define IDPF_DESC_UNUSED(txq)     \
-	((((txq)->next_to_clean > (txq)->next_to_use) ? 0 : (txq)->desc_count) + \
-	(txq)->next_to_clean - (txq)->next_to_use - 1)
+#define IDPF_DESC_UNUSED(txq)						\
+({									\
+	unsigned int ntc = smp_load_acquire(&(txq)->next_to_clean);	\
+	unsigned int ntu = READ_ONCE((txq)->next_to_use);		\
+	(ntc > ntu ? 0 : (txq)->desc_count) + ntc - ntu - 1;		\
+})
 
 #define IDPF_TX_COMPLQ_OVERFLOW_THRESH(txcq)	((txcq)->desc_count >> 1)
 /* Determine the absolute number of completions pending, i.e. the number of
-- 
2.39.2

