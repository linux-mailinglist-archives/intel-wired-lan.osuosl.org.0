Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E43D0DD8B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Jan 2026 22:05:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 18D708134B;
	Sat, 10 Jan 2026 21:05:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MFI_8YgEHMNd; Sat, 10 Jan 2026 21:05:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 87A2C81353
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768079129;
	bh=gFxPlhETqVxBcpvZwh1z12pLI/x9cH1wDoqM1WNT2G0=;
	h=Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=HjRGLtDKwZ6p9irX1kvsi4ZGY1kzMn1+yR1LM+wghuCvpejreB2xNJP63dDzyZOQ3
	 8S/Pg+tF+/JLJApMamVxxa1LuSzIBF0WcAzyhpknn5/pK3ijjnwdPfCY5F3EAOGNgL
	 4GOHk1rJ3nngbfp5dLaYLtQod/1HXWndvUHha80X/YPJBoQVV/fWtcA4g+aRL1lYdh
	 GAZCumXLpVKOFliemurTwOnqZ9nVyKs9T8TmomUqs+qdIFVce/Oe4Wkw4TnXo0eBxe
	 znANKanvODPLNhUqJSFnGuQxUubzmABmsPMYH4CvKsdszSwAeUq013LE9LTn4hd/6t
	 FFaFweUQF+i7A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 87A2C81353;
	Sat, 10 Jan 2026 21:05:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 67722131
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:05:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 56B0F40645
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:05:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ucpKmjQc-EEw for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Jan 2026 21:05:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::643; helo=mail-ej1-x643.google.com;
 envelope-from=jakub@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8C85E40644
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C85E40644
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com
 [IPv6:2a00:1450:4864:20::643])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8C85E40644
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:05:26 +0000 (UTC)
Received: by mail-ej1-x643.google.com with SMTP id
 a640c23a62f3a-b86ef1e864cso78784466b.1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 13:05:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768079124; x=1768683924;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=gFxPlhETqVxBcpvZwh1z12pLI/x9cH1wDoqM1WNT2G0=;
 b=i3fb5x8YiliH5dOxc+Upk3eynwgoXj+nLUCsoEo1DSkiaACWKICweTw4/Io++6QCCt
 7CGA8WTvLnpz7sAck0m6/JMBPRwa519D5UEJfyhzQnDZ5t+RvGUwbwUDv14W4yE1Zkun
 7XjBDMOD0uBe0ZZGm8s3zcW77Q3Xd2+Z0LrqWVkXjAqZvp/4y8yDSD3yUtjd9XdFTsa4
 KYy2KycJYE8XahLHRYubbdNWQ92JkBXT3FhSvkD5XP63jukGqJAZjoxVGfPNWHb6u1Rp
 xWYF5kGo5FcjsFi6z3MamTDybpwp3tqD4P7nn2aAyhR0O0axZ4wOsCGZUK/TEiQXpc2t
 AMyg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWVsSlGMRF1EKYNL/st8WGG+mLOesu2DLdGzcqm/eUtA2t0f5nsspdDjAS1MhYEXhIJs300iO4WDRF6W99MG5Y=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzjPLWEBc09QZmd/cW5dtOkT0latArFEuZdlGwZ2jfuA1LyDOft
 ksG6OTI+R5vAAZlQarP3Ur2EhxZgtHNuOp0KX1LbNFSKIFcEHkxXa4edhJwZcbmvy0Q=
X-Gm-Gg: AY/fxX7G4vUF2xnpKeGP0j8YXETnkjre/H5ui0qkRIivIQIapgnEF+r3eNnBukzTBEQ
 CwNuXwNOj5w/uY5SxcAEXD5kgdCH6yqeAghiGmPWsBT7T7rCQK2pVxSpW14kc5AO3dH4pB/tBYN
 nLLghUx2VT71P17sd+J9oomjuucfRVTdhRgI9uYyY1bICdsRLZtyjs//R9MyjHUabCV4zYMpLvm
 2b+q6VJ1RYOlpqL4xyRsruGh8iUnbQJbXRuOfJcFOQpaMfoBdzwCz8JdZvhb+VmIwqYbJ1R/SAD
 ELaOgXbQ0LTQ6WXIay5Wj9UDK5R1n3uUDqwUNBe6mvJjlJRb+pi5DA+Yx3hpDz0RBjXkTqI/4zT
 FPlbW+NHeJka0Oa+vqXN/wg7nBtb9dBOI5x2bfFtyxR4NKCg4qo/TOWJISxvwrbtUJ1OQBGkwVZ
 TI/XHr8xD15daU/w7YbjRiRUItl6u3plA6RGoenDPk13C3a61QO8d+b2M43ec=
X-Google-Smtp-Source: AGHT+IF5BxzWvfCoMccLbvoqPziS+aIevf0t2FWDvLU7znmlF7MWPVqlhN+PmXzLEX7ramlHVgZibw==
X-Received: by 2002:a17:907:6d10:b0:b72:6728:5bb1 with SMTP id
 a640c23a62f3a-b84454361f3mr1533060966b.56.1768079124355; 
 Sat, 10 Jan 2026 13:05:24 -0800 (PST)
Received: from cloudflare.com (79.184.207.118.ipv4.supernova.orange.pl.
 [79.184.207.118]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b842a23432dsm1467459766b.11.2026.01.10.13.05.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Jan 2026 13:05:24 -0800 (PST)
Date: Sat, 10 Jan 2026 22:05:15 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260110-skb-meta-fixup-skb_metadata_set-calls-v1-1-1047878ed1b0@cloudflare.com>
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
 d=cloudflare.com; s=google09082023; t=1768079124; x=1768683924;
 darn=lists.osuosl.org; 
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to;
 bh=gFxPlhETqVxBcpvZwh1z12pLI/x9cH1wDoqM1WNT2G0=;
 b=bRENfN2tqQH7jjpzsLHjNz2nVV9rtW2wM5APuUProy5vdiGauzSIIdZ+jMMj2Vz/ii
 7TkPFSVf7ctxYjnDKTS8v9kgkdaRo5HnT7bxWHQu8JqlGW1+bUHdqA//36e+ZJKEuEbO
 rcLLjlRrxyL7H/NXVnxuSmSD84E61XLHH1euexXIawm8igE4WWG3broXaJht3Jl3rdUH
 F6102B8B2SzmowSRuFPA0JqKwgc0mPXBjbjf8lQV8QOUlyd8xgV2XgN8AOr0mtfpNb1c
 Cxwn4z9/LWhRoSDYbtUNxqnBPSbsIbttruczctugAJYgQfaHF8KyQ8DxjDMpfzKX6t1n
 JK2g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=bRENfN2t
Subject: [Intel-wired-lan] [PATCH net-next 01/10] net: Document
 skb_metadata_set contract with the drivers
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

Prepare to copy XDP metadata into an skb extension chunk. To access the
metadata contents, we need to know where it is located. Document the
expectation - skb->data must point right past the metadata when
skb_metadata_set gets called.

Signed-off-by: Jakub Sitnicki <jakub@cloudflare.com>
---
 include/linux/skbuff.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/include/linux/skbuff.h b/include/linux/skbuff.h
index 86737076101d..df001283076f 100644
--- a/include/linux/skbuff.h
+++ b/include/linux/skbuff.h
@@ -4554,6 +4554,13 @@ static inline bool skb_metadata_differs(const struct sk_buff *skb_a,
 	       true : __skb_metadata_differs(skb_a, skb_b, len_a);
 }
 
+/**
+ * skb_metadata_set - Record packet metadata length.
+ * @skb: packet carrying the metadata
+ * @meta_len: number of bytes of metadata preceding skb->data
+ *
+ * Must be called when skb->data already points past the metadata area.
+ */
 static inline void skb_metadata_set(struct sk_buff *skb, u8 meta_len)
 {
 	skb_shinfo(skb)->meta_len = meta_len;

-- 
2.43.0

