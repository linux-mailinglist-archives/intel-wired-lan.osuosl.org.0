Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A828B0B47E
	for <lists+intel-wired-lan@lfdr.de>; Sun, 20 Jul 2025 11:11:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E50DC419E1;
	Sun, 20 Jul 2025 09:11:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f4v6Xg8tno1z; Sun, 20 Jul 2025 09:11:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6191641994
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753002704;
	bh=AqFKurrhgXKGO68xSd3MOtKTSUiUpTZQiZZDyPjY9jc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nwQBkpAlla7H8UhpshmmZr5D7j52GKDwWAtaIVAgu3cwLObw4CcZ7apOe+Qi45xOn
	 f+JjW0JBB58bflWuC1JV5JM/BaRSViBZv9MTWfBrygc5xgjR60g6PivBq57R6ccVMc
	 DyxRALrHmu4pgBrkExipHvqFfCSfGr9Eq22v46AS/g3xi2JxZUwOVBvjB2KKmmRnNj
	 8dofqxCh2UPnTuh4szN2949q/fQnLC9BlbTrVYV7RuIsOWcCQPgfaEqsgAGyy2nzvc
	 NvEu28Q7erPjYd6wAylhK9JKIdSM2lhXItieWnH1FGhYWITGO5yEzu1doikEZXGP11
	 JFHTVnKu/Ecpg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6191641994;
	Sun, 20 Jul 2025 09:11:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id B73ABDA
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Jul 2025 09:11:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9DE9940877
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Jul 2025 09:11:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AGcywSAmhSPV for <intel-wired-lan@lists.osuosl.org>;
 Sun, 20 Jul 2025 09:11:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42e; helo=mail-pf1-x42e.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1B18F40757
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1B18F40757
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com
 [IPv6:2607:f8b0:4864:20::42e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1B18F40757
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Jul 2025 09:11:42 +0000 (UTC)
Received: by mail-pf1-x42e.google.com with SMTP id
 d2e1a72fcca58-748d982e92cso2312229b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Jul 2025 02:11:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753002702; x=1753607502;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=AqFKurrhgXKGO68xSd3MOtKTSUiUpTZQiZZDyPjY9jc=;
 b=I3mKG3pC3IuacMZD2T7/x93MynoPworwlyySS98MotL3X7BLvTWTCBnyiOUjumdFwS
 ADQYMVZwNDudvdMXlkKbSLsM1fC9h/v9jF7CMRNpeFUUgZCCxLTNqp3XJozZSbyjZJCf
 bc2Rf2a7tKLJw7jxEVz+suybyVuhNBaipVypILcdH+ZMa7yqeCmSr4rWnQbhBe2PSIGw
 rWEAIwjujweZbYv9BXCNmplKbadl+0CX89KvhQDZUjfFCcsjgi2X142uz8fwn/PT3YkP
 JExVYz5AaDK6yi2y1dFm23j1Fpu+NDCGzS7a8wUaMWC5itXXPDLfnSXlUGf300VDoa9R
 FJYA==
X-Forwarded-Encrypted: i=1;
 AJvYcCW46+uVgqkO4f5D2FPF0duRCOvP7OrhXwZgwGJcB4hjzvx4bti5z9w/WONZM0IEMWpX4f4TBn8cHHN/qtzHTO4=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw34YHHy+dIQOGt9T/5lVX0iYUi1rJFAAI/fAe3qzIYaXHko6Mb
 1fb5lB/pYn6B9HfCi5zNNfOQj0dfJ/wsgPrSUCxq7wpJgPiAQ2lYAUQg
X-Gm-Gg: ASbGnct+OwUrcIoHDyL4XcVjmY+wtn39GT+w660OvzOafR62nlc+lMKOOGcGT0CVe3G
 rcb/7lhZRM/O0upWa1rUMll+BNFYrxPFOuHs3RzUw+uG15x+w1ISC5FUpyGHKJDYOZ+PW1SfBhY
 aO3iu2QFoT3+ISXlQNq3VJ2a//tpIUzlJ8LLtOFjcaLz1Bk9+b99TDgYxknRNGbRPtf43w12oZY
 h0E1ueyR5ICv5lpGYMCOOdSdfIPMAbg+zBD8oSe2Qg/A8X+ozsATIhPOhpp+1x9dLuoBD6MsnVL
 +GkqTqJkNNjK6/PGq8/6pateBlX9fKSNkhyH0VjBXib0j5ME4RjHrP3jFUzTjbtv0Eg41Oflppk
 fG6bR09rv/d0X4bfL4ecUNNP1dhFpSv8z75RDYQAWF/zoT5oaQKV5NXoi5SsRyysaj6rHyA==
X-Google-Smtp-Source: AGHT+IEJ5FcxXi7E152V9I7QXWTjGS6Pd9anA1JjNHWubokETEfoWd1owh9KeIXXmgfMtvGvcqAZ0A==
X-Received: by 2002:a05:6a00:887:b0:747:b043:41e5 with SMTP id
 d2e1a72fcca58-756ea7bf745mr21985436b3a.16.1753002702304; 
 Sun, 20 Jul 2025 02:11:42 -0700 (PDT)
Received: from KERNELXING-MC1.tencent.com ([111.201.24.59])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-759cb76d53fsm3902585b3a.105.2025.07.20.02.11.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 20 Jul 2025 02:11:41 -0700 (PDT)
From: Jason Xing <kerneljasonxing@gmail.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, bjorn@kernel.org,
 magnus.karlsson@intel.com, maciej.fijalkowski@intel.com,
 jonathan.lemon@gmail.com, sdf@fomichev.me, ast@kernel.org,
 daniel@iogearbox.net, hawk@kernel.org, john.fastabend@gmail.com
Cc: bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, Jason Xing <kernelxing@tencent.com>
Date: Sun, 20 Jul 2025 17:11:20 +0800
Message-Id: <20250720091123.474-3-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20250720091123.474-1-kerneljasonxing@gmail.com>
References: <20250720091123.474-1-kerneljasonxing@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753002702; x=1753607502; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=AqFKurrhgXKGO68xSd3MOtKTSUiUpTZQiZZDyPjY9jc=;
 b=eOy1zjgloz7lZobgCaDlT9i7fS/CJbZV88u1kuCXUrcODxHncFqH9d56YsH736mRZW
 CP+RYrvbLZqmti9bYEvKwMdTDhhtwCbYBfzDLb/eSKxPu3a4spOs7VHC0DAM44sfs86Z
 jISCMMGigPoQxJOVnK+xbNsgyZbYiosTLqXWB7Blt99t3j3BAoaL93sQ8+94iKMqoeeN
 hBrI32NZRvztvrwRpvXIUs+Lg+xuOrjczorv5UHBi9QbGLyA7PTI/T5CeJlmF+RrnIrh
 Cj97FX+u+P1YfkKVdszf2WFW1UyeQ8Ki+Em6hqgVyibszzo109+fBbDJ4BUEsgHzOXow
 ZFKw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=eOy1zjgl
Subject: [Intel-wired-lan] [PATCH net-next 2/5] ixgbe: xsk: resolve the
 underflow of budget in ixgbe_xmit_zc
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

Resolve the budget underflow which leads to returning true in ixgbe_xmit_zc
even when the budget of descs are thoroughly consumed.

Before this patch, when the budget is decreased to zero and finishes
sending the last allowed desc in ixgbe_xmit_zc, it will always turn back
and enter into the while() statement to see if it should keep processing
packets, but in the meantime it unexpectedly decreases the value again to
'unsigned int (0--)', namely, UINT_MAX. Finally, the ixgbe_xmit_zc returns
true, showing 'we complete cleaning the budget'. That also means
'clean_complete = true' in ixgbe_poll.

The true theory behind this is if that budget number of descs are consumed,
it implies that we might have more descs to be done. So we should return
false in ixgbe_xmit_zc to tell napi poll to find another chance to start
polling to handle the rest of descs. On the contrary, returning true here
means job done and we know we finish all the possible descs this time and
we don't intend to start a new napi poll.

It is apparently against our expectations. Please also see how
ixgbe_clean_tx_irq() handles the problem: it uses do..while() statement
to make sure the budget can be decreased to zero at most and the underflow
never happens.

Fixes: 8221c5eba8c1 ("ixgbe: add AF_XDP zero-copy Tx support")
Signed-off-by: Jason Xing <kernelxing@tencent.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
index 0ade15058d98..a463c5ac9c7c 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
@@ -398,7 +398,7 @@ static bool ixgbe_xmit_zc(struct ixgbe_ring *xdp_ring, unsigned int budget)
 	dma_addr_t dma;
 	u32 cmd_type;
 
-	while (budget-- > 0) {
+	while (likely(budget)) {
 		if (unlikely(!ixgbe_desc_unused(xdp_ring))) {
 			work_done = false;
 			break;
@@ -433,6 +433,8 @@ static bool ixgbe_xmit_zc(struct ixgbe_ring *xdp_ring, unsigned int budget)
 		xdp_ring->next_to_use++;
 		if (xdp_ring->next_to_use == xdp_ring->count)
 			xdp_ring->next_to_use = 0;
+
+		budget--;
 	}
 
 	if (tx_desc) {
-- 
2.41.3

