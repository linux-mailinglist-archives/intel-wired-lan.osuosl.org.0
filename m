Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mlitAk7gRGrw2QoAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 11:39:26 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B606EBA9E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 11:39:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=fhXCbpD2;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=redhat.com (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A7296142E;
	Wed,  1 Jul 2026 09:39:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VkXgTB9jzOu1; Wed,  1 Jul 2026 09:39:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C7E86147C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782898763;
	bh=UsmnL53bdoWENsxk2WAeV5ns8uuB8IT32cQO3WodAQY=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fhXCbpD2VEth0q3DxnKcDKqTSahdHgnp52hryCr1E6amPVXt/WBBMmLWHR25TPusx
	 0a4MMiGeB1jUuyt2CB2jIhUtPOFO/LOEr+stBJnGW21Ay6ZK9LK2BUFc+scMNN/rtY
	 sNSfJ7aN5SpYylRyOWAMVWrHle+6+g7jsmRc1f+n6ikUUHg303MlPkEATmNhMZZ9ha
	 BbhvMCfVw7Y2bBPLYksvmhH3Q+24PXSYkNNaaPE/UUPP/XsISkVnx2ROBood/nYQdU
	 3ZMnIR7w9Gb8+CXQZikhl6p6mwSxkFF2mILgaHWtiahlQdaEMF868WA7xETiILEE8s
	 3/sNmY/McUI4Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9C7E86147C;
	Wed,  1 Jul 2026 09:39:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7B454127
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 09:39:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5809C410F1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 09:39:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uu0OercDcJTh for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jul 2026 09:39:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 34387410EF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 34387410EF
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 34387410EF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 09:39:20 +0000 (UTC)
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-669--NE2DHTAPmmosthXRs1bZg-1; Wed, 01 Jul 2026 05:39:18 -0400
X-MC-Unique: -NE2DHTAPmmosthXRs1bZg-1
X-Mimecast-MFC-AGG-ID: -NE2DHTAPmmosthXRs1bZg_1782898757
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-472bdd6f529so266738f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 01 Jul 2026 02:39:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1782898757; x=1783503557;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=UsmnL53bdoWENsxk2WAeV5ns8uuB8IT32cQO3WodAQY=;
 b=f1tXA7rC3iLD0O7R4EuNUu6mDTGSg2nH1Hx4BdAKpg25X0pfFit8shRDx7VSGV6883
 AliITZfKpklvz7IJJP638tk1b2QpuD4+sJ6vQB/ttNBpYQvafEY3Uo1G2aOjRUbgCfHY
 YGgj97q79eX4zSGSlRtr+bisSBFh9NBIZM8G2OyVL6Zj5nDRmjTUGP1ouz9BhFQdFmhp
 Flsq+d8+iVrH38hk4zC+tRowjhqmR7LFAxG/Z6ZrIGYpJN767zb9WjRJ5XZKiSRLbnvY
 pUzRFyzHZ2khdiexbRK3pk6a+UPCKnML1DbH1NHeaDGAhRYmVc7KTRxL9uxCQrFjZ4ag
 gaIQ==
X-Gm-Message-State: AOJu0YwZG+kWf1cAL6CErqXvabogefPtD6VzpydPcWAUGdaks9i/gR0N
 iC+1+rBqY+mtovIPcrozOD3HLahZFuNY1SVjEIoEHr3A7kMrELkBq7Y6rKY5X0J/pXb8ZK7zxdt
 U+6AIyBWjyIzD9yh0mKs2d+vR1JylYjrn4IELoTmuqgedNP13IggZZEiU9Dnayn3E3h1XI4SBNT
 kXJhwIZ6GdzuQYC5uATpJjKe1En1YAfESE3nDa9my3eRFWsrCQvIFX2w==
X-Gm-Gg: AfdE7clwaoGzO28SGuA3j7DvZT2luhPF1WtXUBtP2WieuqT0pn7L34sj878dOe//cfw
 xdbYybWtHtuosbMBkajvMUI5wdjmXSmeMrdGdoN0cwjjpbN1gsPYTXnO1xDdTyqY2Bqk3RGY6AR
 hFLbPAPzEuy6yvSZpftukj/hDt9BOBxu+xZTaLwdXLNn5panfzi33NRF//pbEicyt1n81odcQR0
 9gMFXQ8phhut0DLvCVhlunftFwihfefOfXRZwAG+AZFrdlbExqjWfuexMQYnR17TLKn4yH3AO1c
 USlSMEHgazyRioKDnThEbaaxJWK2myPjHGjQJqbF9uLXCsOnEdS08g967qKOdg7gAteHFsuqUL9
 tK3BhLNcWlfwg/+KMlzQwSiSk
X-Received: by 2002:a05:6000:29d7:b0:473:a74d:34d7 with SMTP id
 ffacd0b85a97d-47757f4d0b8mr1100285f8f.2.1782898757061; 
 Wed, 01 Jul 2026 02:39:17 -0700 (PDT)
X-Received: by 2002:a05:6000:29d7:b0:473:a74d:34d7 with SMTP id
 ffacd0b85a97d-47757f4d0b8mr1100244f8f.2.1782898756540; 
 Wed, 01 Jul 2026 02:39:16 -0700 (PDT)
Received: from fedora.redhat.com ([216.128.14.135])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-475641e4cdesm16547001f8f.13.2026.07.01.02.39.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jul 2026 02:39:16 -0700 (PDT)
From: mheib@redhat.com
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, jiri@resnulli.us, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, horms@kernel.org,
 corbet@lwn.net, anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, Mohammad Heib <mheib@redhat.com>
Date: Wed,  1 Jul 2026 12:38:29 +0300
Message-ID: <20260701093830.948756-1-mheib@redhat.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: vfcR3NjzVJL8fGCY-q8R6EidLPYqhgJ2HNxkaTp0sP0_1782898757
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1782898759;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=UsmnL53bdoWENsxk2WAeV5ns8uuB8IT32cQO3WodAQY=;
 b=PcvpF36wczr007VeEkTPYOrxnhV6bpu8Hw5n4t663CRZwt1L7fTutoIjJiqRxjESyUllW+
 fboyJhTi7IaOluZRc73neQdLEIM3PbuwevY2BJblj4OpnQOiNnB8Q7AU9BRAQ9MgY2GBuk
 C6J63pByD62OWJflVuGQctOoc8rOp3M=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=PcvpF36w
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/2] i40e: move ATR sample
 rate from ring to PF level
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
X-Spamd-Result: default: False [3.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_NO_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mheib@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 74B606EBA9E

From: Mohammad Heib <mheib@redhat.com>

The ATR sample rate is currently stored per-ring and initialized when each
TX ring is configured. Since the sample rate is a global policy that
applies uniformly across all rings, it makes more sense to store it at
the PF level.

Move atr_sample_rate from struct i40e_ring to struct i40e_pf and initialize
it once during i40e_sw_init(). Update i40e_atr() to reference the PF-level
field. Change atr_count from u8 to u32 to match the sample rate type.

Signed-off-by: Mohammad Heib <mheib@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h      | 1 +
 drivers/net/ethernet/intel/i40e/i40e_main.c | 9 +++------
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 4 ++--
 drivers/net/ethernet/intel/i40e/i40e_txrx.h | 3 +--
 4 files changed, 7 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 1b6a8fbaa648..88eb40ee45f0 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -487,6 +487,7 @@ struct i40e_pf {
 	u16 rss_size_max;          /* HW defined max RSS queues */
 	u16 fdir_pf_filter_count;  /* num of guaranteed filters for this PF */
 	u16 num_alloc_vsi;         /* num VSIs this driver supports */
+	u32 atr_sample_rate;
 	bool wol_en;
 
 	struct hlist_head fdir_filter_list;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 1fb86bd1af8e..3834af6c09be 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -3457,12 +3457,7 @@ static int i40e_configure_tx_ring(struct i40e_ring *ring)
 		ring->xsk_pool = i40e_xsk_pool(ring);
 
 	/* some ATR related tx ring init */
-	if (test_bit(I40E_FLAG_FD_ATR_ENA, vsi->back->flags)) {
-		ring->atr_sample_rate = I40E_DEFAULT_ATR_SAMPLE_RATE;
-		ring->atr_count = 0;
-	} else {
-		ring->atr_sample_rate = 0;
-	}
+	ring->atr_count = 0;
 
 	/* configure XPS */
 	i40e_config_xps_tx_ring(ring);
@@ -12745,6 +12740,8 @@ static int i40e_sw_init(struct i40e_pf *pf)
 		}
 	}
 
+	pf->atr_sample_rate = I40E_DEFAULT_ATR_SAMPLE_RATE;
+
 	if ((pf->hw.func_caps.fd_filters_guaranteed > 0) ||
 	    (pf->hw.func_caps.fd_filters_best_effort > 0)) {
 		set_bit(I40E_FLAG_FD_ATR_ENA, pf->flags);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 61525ab7d21e..da94cb2ce94d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -2882,7 +2882,7 @@ static void i40e_atr(struct i40e_ring *tx_ring, struct sk_buff *skb,
 		return;
 
 	/* if sampling is disabled do nothing */
-	if (!tx_ring->atr_sample_rate)
+	if (!pf->atr_sample_rate)
 		return;
 
 	/* Currently only IPv4/IPv6 with TCP is supported */
@@ -2934,7 +2934,7 @@ static void i40e_atr(struct i40e_ring *tx_ring, struct sk_buff *skb,
 	if (!th->fin &&
 	    !th->syn &&
 	    !th->rst &&
-	    (tx_ring->atr_count < tx_ring->atr_sample_rate))
+	    (tx_ring->atr_count < pf->atr_sample_rate))
 		return;
 
 	tx_ring->atr_count = 0;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.h b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
index bb741ff3e5f2..be587f804e7a 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
@@ -372,8 +372,7 @@ struct i40e_ring {
 	u16 next_to_clean;
 	u16 xdp_tx_active;
 
-	u8 atr_sample_rate;
-	u8 atr_count;
+	u32 atr_count;
 
 	bool ring_active;		/* is ring online or not */
 	bool arm_wb;		/* do something to arm write back */
-- 
2.53.0

