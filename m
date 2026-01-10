Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 38635D0DDAF
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Jan 2026 22:06:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AC53660877;
	Sat, 10 Jan 2026 21:05:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3anNf3r2SGe6; Sat, 10 Jan 2026 21:05:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2391A60858
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768079134;
	bh=ZUu+7PHs26UFdRHqzYfDQSourHFpoo8C5CEANCSZKUM=;
	h=Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=4izxdteyzrk2GBQP/lwWBUPaZkj/n4LakPY7IcwzzInOw/9zusEIBZwUhgdhW0l2N
	 wlt1c9SzSBGFMWx339clz5xtBfIclrEqXSacPKGKFAvYOc/QACAa3u/OxcTXqwiA8w
	 gTYXsCrHlIhGbux3W6QAJIN/xEdWDQXMgiK70/U85lJI4wBWB6RFL5MM9je6h0oIai
	 cbv2PwJAivk9sfB0cyraMec/AiujgKRfUlgnghep9fsFALeosEK4VO0opd/l27s0A4
	 rrtM1fhRDw9kHpH58ZkJslrXAAB1m9TYv03TJBMDpmAT8VO/c4zdS4kh2jsGB+GQFd
	 gFUqkkHZVswtw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2391A60858;
	Sat, 10 Jan 2026 21:05:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1320018D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:05:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EDA078135C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:05:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KC4WOjHmcvzq for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Jan 2026 21:05:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::634; helo=mail-ej1-x634.google.com;
 envelope-from=jakub@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BD9F58134D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD9F58134D
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BD9F58134D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:05:31 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id
 a640c23a62f3a-b7ffbf4284dso750715466b.3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 13:05:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768079129; x=1768683929;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=ZUu+7PHs26UFdRHqzYfDQSourHFpoo8C5CEANCSZKUM=;
 b=FSOE7/ziCmhBf6BXp/aaAP7QL1vwIp+NhoHjHXpPkoO29RRE8FyRtfYw9ngvCClK7f
 kY42f6aUWn9PH3c8SrTq4UQrvykKywki3I2/pYNuk5rtG6jzK8KjUj8m6PEC92JhG8Ow
 iEKZTk46nkKnPhHLzLRDAJpHOUfDBl7uA3JSN9ymw0sNDBOBqgkFG7h5/OIFOPRFy1m5
 Mzes3iRFqN2buAeI9d9/ADWxobeSOwYiBOwMCdxewM71Ksfy2D9UEwahu+jRwK+OSu8r
 nlhQXKutMquKj/sL02SBAvLaKirckL6OpKlU5fjwAAOhsQEkbST5A9JF1muoEybrQanI
 fKoA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUeZ2zMlEItlwgSd5M2XknjDna90QqQe7dhtQEbhOHVgGBgbzToQ44hUrvDRAhOAfB78xMxbXDWpoGqEuHX90A=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzhMEDuyA74RqfGzbYUG89FqR1QhIN2E+qFiED+pON3Iqnvqe2U
 mD/Lj+POAs5gEZNwnLZY2f1cd1QFMVVzYacNDWp3K7/nZPc3rIeH0Bc/reSUVaHYiCs=
X-Gm-Gg: AY/fxX7jJp3/YzXFNcJEccPLbrkhStLzd0W78+90NqmuXr62nnT2/Mg6F2A3I2JhthR
 q0N1RvdKMb9Jbl9wOGiBED2nxzEzA2QooHVQ4qS7e7yAIEqTSdUkRtCQqlJqvT7jhL21SI8+e+8
 85TuDwYj72D6Es97UnM1woNtzcmj55BC5R9JQ+e3g3j6+qKIU2AkDuuP2R8TmNwGzYAV7ryzziY
 SZ4yM+GGg+xbTMqQTnnr6pLcZK9n9repO7i3EYzfRtpI9dnEqWQ3CnRhsYIQghieOMh4JuabMa1
 fM/FXM/e/oC7vVBmGORqhxAQVIbJLyN5b9he4r/xdsCrKYjggHUtiA99AYLaBMucGs3zeNslUBH
 MqlRLYk+EjW7KmbCLCPVZ9GEWd1QoNp7Xcym3SgdgH3CUPJRyU5kpAKlkmu3MuxgdnrYZCILMsK
 bZctrxtRT3p55nMj+NZl84lumHYZS3dLyVV9Wj2ojjW7YiHN9eKSx/zL2DS1I=
X-Google-Smtp-Source: AGHT+IHZ1MkiW0BAlwdN9FIWmp/bE434W0FOzATRuz84uWEpbwM/KqLENQwYsINhv7tL4dP/p+Cb3A==
X-Received: by 2002:a17:907:3e9e:b0:b87:751:6f21 with SMTP id
 a640c23a62f3a-b87075187c4mr49897366b.36.1768079129480; 
 Sat, 10 Jan 2026 13:05:29 -0800 (PST)
Received: from cloudflare.com (79.184.207.118.ipv4.supernova.orange.pl.
 [79.184.207.118]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b842a235c0fsm1479807766b.9.2026.01.10.13.05.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Jan 2026 13:05:29 -0800 (PST)
Date: Sat, 10 Jan 2026 22:05:19 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260110-skb-meta-fixup-skb_metadata_set-calls-v1-5-1047878ed1b0@cloudflare.com>
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
 d=cloudflare.com; s=google09082023; t=1768079129; x=1768683929;
 darn=lists.osuosl.org; 
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ZUu+7PHs26UFdRHqzYfDQSourHFpoo8C5CEANCSZKUM=;
 b=LLZInMIUFmHBKJPzBPijVaG7IEc/1DaiUlgk8gmLrA1hHtixYlBFNwkTikQ2Ujo1e0
 b89xWu/kXLD//r03U8UGEmH2I0KayUoVbQMFKkusm1Qg8lPau6bi5EYU3Qu3j0pp3mRj
 yWQgaRprWR1hHSWVtM6iij02RLtgclImmNcQpL0NzWVlTPlr2cqv0vQw+pQ9/HRWjt+c
 BEdtt0+BzgEHhM6Sif+y1ZwO9sBmpEs8F2qrUjqGr8kGsIIIgxmYj+7fB7q9/RyqNl9v
 dLbjzJkhc0cB8B08XhYImtmXAw2Jck96MnIdiKJdqhIpED4jOWaObr26yhUtJoXxVcS7
 oRqg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=LLZInMIU
Subject: [Intel-wired-lan] [PATCH net-next 05/10] igc: Call skb_metadata_set
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

Adjust the driver to pull from skb->data before calling skb_metadata_set.

Signed-off-by: Jakub Sitnicki <jakub@cloudflare.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 7aafa60ba0c8..ba758399615b 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2024,8 +2024,8 @@ static struct sk_buff *igc_construct_skb(struct igc_ring *rx_ring,
 	       ALIGN(headlen + metasize, sizeof(long)));
 
 	if (metasize) {
-		skb_metadata_set(skb, metasize);
 		__skb_pull(skb, metasize);
+		skb_metadata_set(skb, metasize);
 	}
 
 	/* update all of the pointers */
@@ -2752,8 +2752,8 @@ static struct sk_buff *igc_construct_skb_zc(struct igc_ring *ring,
 	       ALIGN(totalsize, sizeof(long)));
 
 	if (metasize) {
-		skb_metadata_set(skb, metasize);
 		__skb_pull(skb, metasize);
+		skb_metadata_set(skb, metasize);
 	}
 
 	if (ctx->rx_ts) {

-- 
2.43.0

