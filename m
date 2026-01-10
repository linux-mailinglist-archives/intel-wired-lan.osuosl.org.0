Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0420FD0DDC4
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Jan 2026 22:06:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D954860873;
	Sat, 10 Jan 2026 21:05:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KTiZ03HmFZjI; Sat, 10 Jan 2026 21:05:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E78B3607EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768079140;
	bh=3qhyznqsQeHYrRcXEj2wKTRt+KnMhdHylhV/MRU3QAQ=;
	h=Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=aB5yp/5KRdwcGbVF3UUaZZjhn5a979zIzi7FqErJHyzLAfSuOvsYj/hjuMwbTSCEP
	 dc/7x8Z1ODYnbg9wRZrEEcDd1znCe+IHgoz5jUoanVVdFX08zfGUKFCIW7ZbXw4ljq
	 jqudE9ylybMh3bWjAylU2YpL3zN7Uf87+1sn2ZhdvKm5ccXIdbXFodV7+fclg2y6Tk
	 dkkGSnP+NKuThyFG4kfLbWEFvByE+44a6UgsohT0QKQsFLkyztbYKU5NnIzvVFODzl
	 BtPz9347XWTzXHVMzFEwDdP5Yg9Gbe5QcOu5AseRNCOGgc5ExrpaD5aVvH44uzMIqM
	 iRDXM+R9HF/kw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E78B3607EE;
	Sat, 10 Jan 2026 21:05:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C49C318D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:05:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AB5FF8135A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:05:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UD8OeUXDGa4I for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Jan 2026 21:05:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::531; helo=mail-ed1-x531.google.com;
 envelope-from=jakub@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B4A6581396
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B4A6581396
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B4A6581396
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:05:36 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id
 4fb4d7f45d1cf-6505cac9879so8934246a12.1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 13:05:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768079135; x=1768683935;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=3qhyznqsQeHYrRcXEj2wKTRt+KnMhdHylhV/MRU3QAQ=;
 b=QQSnBFxXzozEofEtJPIVxG7ZjZMyKVz24E63qlw5uh6yV9P+yMwclGPA+dN8tjHsjm
 5IWJYGBSzDmPrXofC4wyCHzGSc/bKjaPKMUYJ0U9dw9cgl8mini8l7whPrBwbHBYj/k4
 HrPc9rOVMM4pacRngD4bakxkyEdwfWsOEMWGLqMV86FAHojTyws0YY9r/o4Jgq5Xqj7R
 xewW/4pMNjn2hSx/67wsI35a+uKctIA8aXvAy2aXLqGj0Wmv/abvlX2ijNxCK2o8RsLE
 XpaI7bo1c2ESPi/fkXRwGGcnYjCZMOmKr89e1X+2GVEGEHmO9TsJvpPFA3SpkD3zJDeh
 nJFQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUTuTpQHsDL9OjDpUPSguKcjbri9BLG88BHCJP6mXjmJJZWhuMyem2blCRu31jvJGxNT25uzNpsqa44wif33sI=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzWTcGGYCI4+E2y2nYNLo700jaREFDV7PmrdSLastUppnVhlgHK
 uHoZHy991Vv6Tgp6Cnqi4O2T5r7EazXjoQalQB+Yj1+8Zcsgl0t2rrRMwuPQztRlEbI=
X-Gm-Gg: AY/fxX4yRaHYo5bJx3ypRpqp33JHnGYeMdaMulTEeQ2aFo9Nvo7P/Z5oSVBWNNFKo24
 HcPgDoLbvX9Jf6EHIoBHjA9l7/Xj+sLez/I/YDMqkyei1qwdTTlSeyJtlthOycZVxKXczWmO3v9
 4M/bvSKvZ96ioKpOATeAYWfXK4QY6mwnJ0vOcnsHVtfBuL6u4GucxSO/oGrVco2gljHVOf8Jpht
 Vg5pXQZ+y4/9oZg1ks0YD70MZrMp5izjTc5DQywigQ9pucRXump1KjG+AZxUuA97O0GZY1fW4az
 qo12LxqbBKEsuvot9VSewkHQPyLEW/Je4NsPG08stTEgYyHq3q/an1N3TdjELZY8ajPanavmM8T
 sfdgNS9Z9M4ohZ/Ugtffzsh8tJiyLpsQFndOlUkAyTxXxCEzKuGUhG89uA5aEtTZrBE6Sn0wltO
 qVNCv6NAlACznGH15a+eID1/hyJ2okjxIJDdRxFArJ0HK30JIu3XBsDTkvlB8=
X-Google-Smtp-Source: AGHT+IHEj3UjKJezXJmgXkOXIgfXnXeUfZzoN/s16lHRjWyrvzci193qQh2S6+WItUf3e13YEOGqTA==
X-Received: by 2002:a17:907:2689:b0:b83:972a:6af6 with SMTP id
 a640c23a62f3a-b8444fa0b03mr1257356566b.44.1768079134594; 
 Sat, 10 Jan 2026 13:05:34 -0800 (PST)
Received: from cloudflare.com (79.184.207.118.ipv4.supernova.orange.pl.
 [79.184.207.118]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b842a23432dsm1467488166b.11.2026.01.10.13.05.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Jan 2026 13:05:34 -0800 (PST)
Date: Sat, 10 Jan 2026 22:05:23 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260110-skb-meta-fixup-skb_metadata_set-calls-v1-9-1047878ed1b0@cloudflare.com>
References: <20260110-skb-meta-fixup-skb_metadata_set-calls-v1-0-1047878ed1b0@cloudflare.com>
In-Reply-To: <20260110-skb-meta-fixup-skb_metadata_set-calls-v1-0-1047878ed1b0@cloudflare.com>
To: netdev@vger.kernel.org
Cc: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, 
 Michael Chan <michael.chan@broadcom.com>, 
 Pavan Chebbi <pavan.chebbi@broadcom.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, 
 Tariq Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>, 
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
 Jesper Dangaard Brouer <hawk@kernel.org>, 
 John Fastabend <john.fastabend@gmail.com>, 
 Stanislav Fomichev <sdf@fomichev.me>, intel-wired-lan@lists.osuosl.org, 
 bpf@vger.kernel.org, kernel-team@cloudflare.com
X-Mailer: b4 0.15-dev-07fe9
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1768079135; x=1768683935;
 darn=lists.osuosl.org; 
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to;
 bh=3qhyznqsQeHYrRcXEj2wKTRt+KnMhdHylhV/MRU3QAQ=;
 b=Z5jxZPLO6vglahI/lfR+arQ0BZrwBPugg+CukkoQealcC1T48R0HUIeoFtQxUIM9/I
 /KL57nfS82ldxIf+fWlP6tCezEh3hoaO2gev5L0RKAYbij4ZduDKa5tWDdx30yDpitAZ
 UDeAv2iGP68+XXcmThiDQ+4/alm5U6igAgRTHhp7eLVNKrlNVJZ8NHN5z9J5lYSOyMeR
 oJ9aA20vyQ1uVAVKU3G7DSmTDeaLnYsMojSbiP+fhT/5TR5PLFd45AcaABgrTJYGJIFN
 la6aHt54PTD46x0WLjN6gwaVB6JINVuxOKMSUY0a9cwZAS7mOsp8htUK/5A5OH8aacOj
 KKKw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=Z5jxZPLO
Subject: [Intel-wired-lan] [PATCH net-next 09/10] xsk: Call skb_metadata_set
 when skb->data points past metadata
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
From: Jakub Sitnicki via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Jakub Sitnicki <jakub@cloudflare.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Prepare to copy the XDP metadata into an skb extension in skb_metadata_set.

Adjust AF_XDP to pull from skb->data before calling skb_metadata_set.

Signed-off-by: Jakub Sitnicki <jakub@cloudflare.com>
---
 net/core/xdp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/core/xdp.c b/net/core/xdp.c
index 9100e160113a..e86ac1d6ad6d 100644
--- a/net/core/xdp.c
+++ b/net/core/xdp.c
@@ -768,8 +768,8 @@ struct sk_buff *xdp_build_skb_from_zc(struct xdp_buff *xdp)
 
 	metalen = xdp->data - xdp->data_meta;
 	if (metalen > 0) {
-		skb_metadata_set(skb, metalen);
 		__skb_pull(skb, metalen);
+		skb_metadata_set(skb, metalen);
 	}
 
 	skb_record_rx_queue(skb, rxq->queue_index);

-- 
2.43.0

