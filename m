Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C381FB0BEFA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jul 2025 10:34:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 656DB61CBB;
	Mon, 21 Jul 2025 08:34:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Iedb2q9XbC6o; Mon, 21 Jul 2025 08:33:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CBE2461CBC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753086839;
	bh=P7UTJT8lT4wXm+7/izafM3LkSsGFsZ5F3TgOwU6IHtI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IBPDARzSG3XQoQ3fJeVbBVTyJznF72tgg3xCH0U0grA3mtd3LL19zpR5bG7cILS4D
	 h5fxzg7+yRlN0hYwTmPx1oKyJw6PB7Ar5gqRGJ1wqTtvAbWJPO1BUh40YsHOYg9lHG
	 chf1DWiypJyMCnVlFygs4l9z6/bMB58mWEvp7y1Ho6i3iPd9HasJF/5jgAC2j73WRw
	 V6fHmPOuukMkNIQEeewl4kgNK9i273MqR7o+90pcFqkfsbaqkhTefew65uoxRE0AJj
	 DKvQPK5kN+hH2r4+6yjGnOpPUxgSxD0O3UAOScjalAkJPZHsliRLZkH+AlgTtQct4Z
	 NhCIYjSEiI0sw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CBE2461CBC;
	Mon, 21 Jul 2025 08:33:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7E55D1F7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 08:33:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6496961248
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 08:33:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c8YiCJHiCKvO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jul 2025 08:33:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::102d; helo=mail-pj1-x102d.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AD9DE61CB7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD9DE61CB7
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com
 [IPv6:2607:f8b0:4864:20::102d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AD9DE61CB7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 08:33:57 +0000 (UTC)
Received: by mail-pj1-x102d.google.com with SMTP id
 98e67ed59e1d1-311e2cc157bso3401275a91.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 01:33:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753086837; x=1753691637;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=P7UTJT8lT4wXm+7/izafM3LkSsGFsZ5F3TgOwU6IHtI=;
 b=B6n10RdPyORdF7yxVe9R8CjxZt5EFx2sq63DMdKz9tag7uzWnwmaoMl4Rwc8Qgsv15
 JPffCQNnmrPy8aT+QImJ1iytErmrI93OW8ReybUssGD7wFAHJPiIPXKQv4RRiEohzddI
 nYvJZWOX/FKGBaRvn9wGJ/vMlBbL6x1v/sLXY5a1G7zpViGIFFWRvrw1Wqj9EBxy5t8f
 ypC/LnX48pCuxg+sXJHa5jeuEW2QXNKzaW9q9WU4+4zNORTVyKB7qIL4DktaXEfQDSkB
 PFSMXq0BfKUaPiKVTGgKJi/Sxj4uiB/n3WOCbE1sRx7Q9CHdhaEguwChSj/a2+SG6o/3
 wUjQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVM25QeIh1ZwbNQnNorin+yn8hIx3V1IH6txn4DIwnggS4YoFBAaM2QPeWvFyFJ/z/xsI3gThjDS6uUSt5xRK8=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw5+igBkb7FcS8owdXGy6f1lwmTgKaqrnxUFQDfOGjiL0A64tmy
 +DC35s2JeyZbqDigPrMBwOU+GGKK9QXR7Bxr/OZa2yf2aht99JKbK69E
X-Gm-Gg: ASbGncu7y+ExjyXRDtR0CSvW64pilj9FBZxEYQ7REzPsgeuTZmnAOvMAtyy23k43rWU
 ph78aayFO8xp2RuOqhIGNDT8Q5qMsyCb679HNIOjHAkNhdtFeafxf7km7qcWTBgjANCfvldbh3U
 7Iw4GTFPxLwXM8nMoGjOMMw9cfyQn3Xq5G4QzE2C9QNBgXWmDuCSmUjXeUJD3YwBIUdppu/b7Cr
 jFEeoosjBi3ztBMMyqaBSjN+Ba+tlggOVWaGRcARLvtOn6dq4TGuZXF8IW0Vb8PjgqDeGFqVjOV
 XEEjVRoRloGuwVHd0WdWILO8z8qTxH9UxNBYA39Y7ecMI3A7mclwR909kiUWEBhieqSdu5YAybC
 bw7GHHHRDgdr+OfYY4/H68FSBnOIhWLhSytZ4l5PXDDqSIGPJUGZI8AFWC/Y=
X-Google-Smtp-Source: AGHT+IF8Hz+/t/2gY/ArGAcHrkTSl0567NOaqn1eqgYFznb2pekdZjDkcc5903EJP9BByp6s3l8uNA==
X-Received: by 2002:a17:90b:2e4f:b0:319:bf4:c3e8 with SMTP id
 98e67ed59e1d1-31c9e75afe6mr30594397a91.18.1753086836826; 
 Mon, 21 Jul 2025 01:33:56 -0700 (PDT)
Received: from KERNELXING-MC1.tencent.com ([111.201.24.59])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-31cb7742596sm7082116a91.27.2025.07.21.01.33.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Jul 2025 01:33:56 -0700 (PDT)
From: Jason Xing <kerneljasonxing@gmail.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, bjorn@kernel.org,
 magnus.karlsson@intel.com, maciej.fijalkowski@intel.com,
 jonathan.lemon@gmail.com, sdf@fomichev.me, ast@kernel.org,
 daniel@iogearbox.net, hawk@kernel.org, john.fastabend@gmail.com,
 mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com
Cc: linux-stm32@st-md-mailman.stormreply.com, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jason Xing <kernelxing@tencent.com>
Date: Mon, 21 Jul 2025 16:33:42 +0800
Message-Id: <20250721083343.16482-2-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20250721083343.16482-1-kerneljasonxing@gmail.com>
References: <20250721083343.16482-1-kerneljasonxing@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753086837; x=1753691637; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=P7UTJT8lT4wXm+7/izafM3LkSsGFsZ5F3TgOwU6IHtI=;
 b=Js3SaVZNDEHNJk5oaSIew9WtBXeXQzgMaEGxUAt8XpG1eGPajCbvXgqpe6S+lICSQI
 RxB2lP4WEwtt635rPyrFmYRAvIYqjmPZZw6W8N2ptuHrnzzQj7grAjJntldx3prPaC53
 ae4RQhSRKZHf4qM9rqOefLiu6/3NTOsmHSDZ1PLOzjx/IQDnW+HGHo4P4SiNLPTVwE+2
 VoN6pUmP7eDeXJUK38BBwRrNaLVg0vqE33Eh30oX2xKyRT66ChefiA25rL/iQwAanjxK
 zgoWW2nTq5t2mnTs8n1p41nEBZ9qoYrBg69X9tQ7dSXPUySaMf+bS9rFn2t/CDVkR6XG
 913w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=Js3SaVZN
Subject: [Intel-wired-lan] [PATCH net-next 1/2] stmmac: xsk: fix underflow
 of budget in zerocopy mode
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

The issue can happen when the budget number of descs are consumed. As
long as the budget is decreased to zero, it will again go into
while (budget-- > 0) statement and get decreased by one, so the
underflow issue can happen. It will lead to returning true whereas the
expected value should be false.

In this case where all the budget are used up, it means zc function
should return false to let the poll run again because normally we
might have more data to process.

Fixes: 132c32ee5bc0 ("net: stmmac: Add TX via XDP zero-copy socket")
Signed-off-by: Jason Xing <kernelxing@tencent.com>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index f350a6662880..ea5541f9e9a6 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -2596,7 +2596,7 @@ static bool stmmac_xdp_xmit_zc(struct stmmac_priv *priv, u32 queue, u32 budget)
 
 	budget = min(budget, stmmac_tx_avail(priv, queue));
 
-	while (budget-- > 0) {
+	while (budget > 0) {
 		struct stmmac_metadata_request meta_req;
 		struct xsk_tx_metadata *meta = NULL;
 		dma_addr_t dma_addr;
@@ -2681,6 +2681,8 @@ static bool stmmac_xdp_xmit_zc(struct stmmac_priv *priv, u32 queue, u32 budget)
 
 		tx_q->cur_tx = STMMAC_GET_ENTRY(tx_q->cur_tx, priv->dma_conf.dma_tx_size);
 		entry = tx_q->cur_tx;
+
+		budget--;
 	}
 	u64_stats_update_begin(&txq_stats->napi_syncp);
 	u64_stats_add(&txq_stats->napi.tx_set_ic_bit, tx_set_ic_bit);
-- 
2.41.3

