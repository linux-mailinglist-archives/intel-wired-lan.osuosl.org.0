Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2830CB0B481
	for <lists+intel-wired-lan@lfdr.de>; Sun, 20 Jul 2025 11:11:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B1B4761499;
	Sun, 20 Jul 2025 09:11:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C_eoNwZMX4Ju; Sun, 20 Jul 2025 09:11:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 244EC61195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753002711;
	bh=XweBJ/0MYVVQb+Ps7XFsEfRMQO+tmpbLCmT+yp+uezc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=l9ldhgvE4cekRJvpDS7HshxxwpfnQqDRtP5A0nvTnOeXocKSAgXG4bKlN0HTAT2nU
	 lKfbGUFT7tJho54ssjmH7lM7s/sTDHWavbE3FLHVo3zInyakdlPhKnBxK0HZwZQuj6
	 oPNOBrTvCL57HxceCdCSxlXhqY7lAWmunhidEkrnlZcfIjb6NN3tBnyxt6wEonMJYi
	 jIqVMpfpvr2AVWtuRaT4HyT46gTM3NMosDNAz0B1vXiXMOkVtsvvr5c7htH6yASSZg
	 yQJilm7Y0gdxaoWjs2/iAD/52keWmyoB+ugQC412bDgH9Ze9L/covjRNh05GNDah92
	 SRuu83vrDo4qA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 244EC61195;
	Sun, 20 Jul 2025 09:11:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 287AADA
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Jul 2025 09:11:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C61FD61028
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Jul 2025 09:11:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wMZFkZP5N4VS for <intel-wired-lan@lists.osuosl.org>;
 Sun, 20 Jul 2025 09:11:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::433; helo=mail-pf1-x433.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3901061062
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3901061062
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com
 [IPv6:2607:f8b0:4864:20::433])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3901061062
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Jul 2025 09:11:48 +0000 (UTC)
Received: by mail-pf1-x433.google.com with SMTP id
 d2e1a72fcca58-748fe69a7baso3110604b3a.3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Jul 2025 02:11:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753002707; x=1753607507;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=XweBJ/0MYVVQb+Ps7XFsEfRMQO+tmpbLCmT+yp+uezc=;
 b=O4xa06inq/LwP854CDzg8t7QQ48wpYBbxQ2KS8GwILOkwsWDwfVF10ZpY0gaexV1Kd
 Ns5Ixy3QhCrcdnJeczAjp3a1o6k5yQBigfUjFfNsaQX0YOKB/Y3haYrIiJawpqJZZjP8
 EJTBxIwAltnVOwXDEUpMl0HsyQmajTTZqIBO1ex0WhIBNi5H2osReS8ftfVnCrPRay82
 WqTT1jl9dARD56Og8p4NvoA+Ux+f3zn2DAhk3DDnqtzkWcvzArSp2LP6EDL79Pt0EhCQ
 //W2sRMLUOWHvrY43V8FwC4BoFvhvYbdfQfb5iTpt8TL3iq4WCq3els8gSfR9KWOrHMk
 kTVg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXR5eVcWf631FHjbWJ7l0cGwOTCtapPkpoA4IUCyXJ1tcisBVg9rmxx1acVqFG6StOhudjDrbYZ6+v1g3mWgeQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxYxPlFAfLK7qlV/58ktshUsZPlIQ3mwWcBIuyAbe+MhzjfSU09
 oHQeCnRL8+gUv/OWjHCbKeXXjGKqfefvCOwqsK+AJa+vU69AaG4W96/q
X-Gm-Gg: ASbGncsBWt6404GQcq0B1/bcEH5m/8fEHg5dBSi6g47UTc3Hjg95Uq3i4ooCOUFCkah
 Zo8zMTNSe7w6BwfVwNnAUPuqBjpaN1A8zr+oiTobthLtwUeMCZcSs7fUlF09ydxiy7kfpZm0uVJ
 PfnrZxGtcyBUUQxYrvA7pk1QhxYFs4A6ZBYvAW7MIe39mDCt5AONDO+vhG+cUXZLgkhege3Fjn/
 BlrZPapEi+FSbMMfoWmA2XBYAhbU9Al8YSlOi4XDkdLM6HPBfMiKZy7lrnDdexiFiY8a2ldA8Lv
 FMjpeArvx/PS3kczPvHt+hZFHkfSKXNSv/+ByZags6HCnzpozLPvas5GFQUTYQmxSmJ74CFPG6E
 7WlLt5uX1wibMYpfKfkIExML+M458cGR1uHLJ1cYvChWrXroA0X5YDSkpWPA=
X-Google-Smtp-Source: AGHT+IHorp1bRu9HtmMw6GlN9olv5TOncXRl5qHg8FrQc9eBehnphTLcYkb51Og0pTgG0T7xRZI0+w==
X-Received: by 2002:a05:6a00:1a8b:b0:74e:ac5b:17ff with SMTP id
 d2e1a72fcca58-7584aa4d084mr17167004b3a.13.1753002707459; 
 Sun, 20 Jul 2025 02:11:47 -0700 (PDT)
Received: from KERNELXING-MC1.tencent.com ([111.201.24.59])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-759cb76d53fsm3902585b3a.105.2025.07.20.02.11.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 20 Jul 2025 02:11:47 -0700 (PDT)
From: Jason Xing <kerneljasonxing@gmail.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, bjorn@kernel.org,
 magnus.karlsson@intel.com, maciej.fijalkowski@intel.com,
 jonathan.lemon@gmail.com, sdf@fomichev.me, ast@kernel.org,
 daniel@iogearbox.net, hawk@kernel.org, john.fastabend@gmail.com
Cc: bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, Jason Xing <kernelxing@tencent.com>
Date: Sun, 20 Jul 2025 17:11:21 +0800
Message-Id: <20250720091123.474-4-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20250720091123.474-1-kerneljasonxing@gmail.com>
References: <20250720091123.474-1-kerneljasonxing@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753002707; x=1753607507; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=XweBJ/0MYVVQb+Ps7XFsEfRMQO+tmpbLCmT+yp+uezc=;
 b=B4wstQ7gFBgJOFf65B+vit1xxaCwFNTDszXtS1sm5gZRFj50PGmJnh7z66L9/Lmz2w
 K8IWYwiCw+1M1uB0kYNK7YhJ6pt1A3HpJ0UjBYXABJMgQ396j0l8DOM/1g0wwzXlkuSr
 sUSMAVPR4V8Yoc9A19XgiAvAo2jqrrRh1nbu6qeJasZzEryZziZ5Zebr5+Jwl/3KHGVP
 jIPpNGGspvAc9ZN1qOahARZvTYVrc5Y8EbAIJvTSBouAgTCLkRQGk1l7YjHZyaOMSuSe
 SjvrHX71Erp5JM4KFIOCa/8I4L4xQSpMUv5yelLMbB2fMAfsnZFzh4ihXzEz0xk6VNAP
 efRQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=B4wstQ7g
Subject: [Intel-wired-lan] [PATCH net-next 3/5] ixgbe: xsk: use
 ixgbe_desc_unused as the budget in ixgbe_xmit_zc
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

From: Jason Xing <kernelxing@tencent.com>

- Adjust ixgbe_desc_unused as the budget value.
- Avoid checking desc_unused over and over again in the loop.

The patch makes ixgbe follow i40e driver that was done in commit
1fd972ebe523 ("i40e: move check of full Tx ring to outside of send loop").
[ Note that the above i40e patch has problem when ixgbe_desc_unused(tx_ring)
returns zero. The zero value as the budget value means we don't have any
possible descs to be sent, so it should return true instead to tell the
napi poll not to launch another poll to handle tx packets. Even though
that patch behaves correctly by returning true in this case, it happens
because of the unexpected underflow of the budget. Taking the current
version of i40e_xmit_zc() as an example, it returns true as expected. ]
Hence, this patch adds a standalone if statement of zero budget in front
of ixgbe_xmit_zc() as explained before.

Use ixgbe_desc_unused to replace the original fixed budget with the number
of available slots in the Tx ring. It can gain some performance.

Signed-off-by: Jason Xing <kernelxing@tencent.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
index a463c5ac9c7c..f3d3f5c1cdc7 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
@@ -393,17 +393,14 @@ static bool ixgbe_xmit_zc(struct ixgbe_ring *xdp_ring, unsigned int budget)
 	struct xsk_buff_pool *pool = xdp_ring->xsk_pool;
 	union ixgbe_adv_tx_desc *tx_desc = NULL;
 	struct ixgbe_tx_buffer *tx_bi;
-	bool work_done = true;
 	struct xdp_desc desc;
 	dma_addr_t dma;
 	u32 cmd_type;
 
-	while (likely(budget)) {
-		if (unlikely(!ixgbe_desc_unused(xdp_ring))) {
-			work_done = false;
-			break;
-		}
+	if (!budget)
+		return true;
 
+	while (likely(budget)) {
 		if (!netif_carrier_ok(xdp_ring->netdev))
 			break;
 
@@ -442,7 +439,7 @@ static bool ixgbe_xmit_zc(struct ixgbe_ring *xdp_ring, unsigned int budget)
 		xsk_tx_release(pool);
 	}
 
-	return !!budget && work_done;
+	return !!budget;
 }
 
 static void ixgbe_clean_xdp_tx_buffer(struct ixgbe_ring *tx_ring,
@@ -505,7 +502,7 @@ bool ixgbe_clean_xdp_tx_irq(struct ixgbe_q_vector *q_vector,
 	if (xsk_uses_need_wakeup(pool))
 		xsk_set_tx_need_wakeup(pool);
 
-	return ixgbe_xmit_zc(tx_ring, q_vector->tx.work_limit);
+	return ixgbe_xmit_zc(tx_ring, ixgbe_desc_unused(tx_ring));
 }
 
 int ixgbe_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
-- 
2.41.3

