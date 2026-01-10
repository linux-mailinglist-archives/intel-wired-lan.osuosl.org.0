Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 858ECD0DD91
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Jan 2026 22:05:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B049460820;
	Sat, 10 Jan 2026 21:05:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Je_cN-7e2rdg; Sat, 10 Jan 2026 21:05:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2DDC2607E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768079130;
	bh=boSDHCNRu6fyxjZsrDAsWl71xR0mK1vjeAbhKjI6fRc=;
	h=Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=W33DZiA1paA+s5LItYdPjSh0nfaoaWIUvtI9wVYxu550zynv5LFO6BAEgqxwVJztT
	 dTHfMLiRmpHaILmXXyR/ELp61l8Z4fyR8Ali59RUgTeYmIpS8SArWOLdNx3/OqBCvc
	 i2H+pzE9xrJH4DUT6/g3coVimbUFwe+q8QXcRuvP2VVU6wx09j3Qvf1tMIGJ/hzxvW
	 ySBeztYEuTNzS4vPlE2dDBrgVD2qEe29cQ/gkP0dvpm5nPyR9iFR1+f7iHafs1F13L
	 nRAotAqclERdkwqcOd0ovOl/lGnhT6o9HJCquqKXaY5aUU6aTfRrr99ITtN4Zqi60Z
	 Pvu92E74it8Nw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2DDC2607E7;
	Sat, 10 Jan 2026 21:05:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id A1570131
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:05:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8EEE460785
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:05:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dQyMbLLjNLWm for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Jan 2026 21:05:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::634; helo=mail-ej1-x634.google.com;
 envelope-from=jakub@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A50B5607B1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A50B5607B1
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A50B5607B1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:05:27 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id
 a640c23a62f3a-b734fcbf1e3so1044446766b.3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 13:05:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768079126; x=1768683926;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=boSDHCNRu6fyxjZsrDAsWl71xR0mK1vjeAbhKjI6fRc=;
 b=Qa34Os+VzqnhNcpl83paGoHSrzNBzBjQtpJYAT+6wCZzpuQnJPSz3Gw6LNvhkHzdhZ
 tzcrqJsZIVB+xjaMH576MMd4Ay6MlgPapl2gfN/zYvnutGs5Sq75cYyuSOy/vtbX5ULI
 HTYirL6Q1rB2JOzgA2QbJFepe7b/6badfLPcx+zT0l6r4XLIXWOmDCj0i/xspQVYaLwI
 SZOPXIRynYM9hBjed1tdUDj0qRufinDKUnX6a/CWATcku/r7bu3IeSeHMEGjFKZx7wa+
 1tB8/7tbICsTYxgRaJjfyaLZKuap/fKtb2Zp8HrXjmChi/du2GYLDnWfZYYlB1YBciHB
 RlPw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXRpYP6TW34OL91fRXHXIBpNUsTH2wyuvMPbi3bhfIRoEJbTrnMHCfS/lgfQ7r1UZNyx+lbXSkiFb/MpJa7vJ8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzUeZ80aKFX2nlCQAR943bsariqnWHwwnWiA0DH5ML7mZiwHV43
 7/PVq0mnoVxFYGhj7ky4G3kMyKISMYBwaXXdBZY2KTN1xL52IB+/vD4RO3hu3jXOUjU=
X-Gm-Gg: AY/fxX4mAmVbwpoKmh/OcZwR9F40WdMIK3aCcY2x2kuPrHvBnNPxUdv/wWDy+Gf70xx
 h7yvEUu1xQzqm5MuL6yebaLwesrdx+lbDedRT7RwEKtybATef+tjxBpApTkhOTN9z+Qemw/Wjrr
 j3d1bqrDcrr7RXq0GgpWhNWx6AaQlqTycLj4CiK6F1at+6QvM8706+thZOjhT8kofyPzroWU84u
 XCfHQnxpfrB4Xcvnrcho0uI54iTgWLpMnVzhOT0filim0GZQ3RnhL3m64bVPyi2iI54dWpMSLbS
 A8NUZquW9Y9LR1oSgxZ/ikh+G6zTSU2t7wf21VtknFZ2caKMpMr5xfVKbOGT1I6c/Q+01e0CVzd
 VTSSWh3Hjw7P4D3iKVRCCf4JpUpnDVa0gRHGN+32t/CbmMd3tEdsL4O0hQkHxZdvRAfFgGacu9X
 bBKA5ylcVWvENXr/DYKOlNNf5mpVVQKx/3ocAGnHQjCMujLl7w8VflfCM9MSk=
X-Google-Smtp-Source: AGHT+IEshYDSYgCJqSefNVm4rMDKSWFaQVKh1B8mzv/nYNmn2TNWQjnoEFs5sQkugV6KrgohAKZImQ==
X-Received: by 2002:a17:907:9812:b0:b7c:e758:a79d with SMTP id
 a640c23a62f3a-b8444f4f40emr1328381166b.37.1768079125661; 
 Sat, 10 Jan 2026 13:05:25 -0800 (PST)
Received: from cloudflare.com (79.184.207.118.ipv4.supernova.orange.pl.
 [79.184.207.118]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b8701e1d467sm130421566b.70.2026.01.10.13.05.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Jan 2026 13:05:25 -0800 (PST)
Date: Sat, 10 Jan 2026 22:05:16 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260110-skb-meta-fixup-skb_metadata_set-calls-v1-2-1047878ed1b0@cloudflare.com>
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
 d=cloudflare.com; s=google09082023; t=1768079126; x=1768683926;
 darn=lists.osuosl.org; 
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to;
 bh=boSDHCNRu6fyxjZsrDAsWl71xR0mK1vjeAbhKjI6fRc=;
 b=FrgLQZAFTngbnBTCp2DMqWzjoPRxscBx1RuqTVm35KKMtaRwRwIi1r5rzV0oyJ4Trt
 cfwACu8tfwPGxzJfr/j+A3UU7ISlSjvXUnOBZIPgN2ZHCoDX9TBHUd6Lj0AwWRM7PdzD
 FIAJXFnYS2hJ8v4v/2NkWpYlrRdRAhdp2SqSXSV7Xolm8DYtWfd8F1Tf45142svZnsgJ
 foyggmw9kfzzUICxZjZblHpq0XAhR4hC77MJ+nHIAtLD2QeeGqv3fH2U1nT/4f4gW+WR
 78BiOb/R5MXkldNZf/M2ZyTTbv+kWIf42ia1umypwGfUoHiW3W4qePl6ghd0OI8HcYew
 U30w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=FrgLQZAF
Subject: [Intel-wired-lan] [PATCH net-next 02/10] bnxt_en: Call
 skb_metadata_set when skb->data points past metadata
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
 drivers/net/ethernet/broadcom/bnxt/bnxt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt.c b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
index 8419d1eb4035..7d0d81d29167 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
@@ -1440,8 +1440,8 @@ static struct sk_buff *bnxt_copy_xdp(struct bnxt_napi *bnapi,
 		return skb;
 
 	if (metasize) {
-		skb_metadata_set(skb, metasize);
 		__skb_pull(skb, metasize);
+		skb_metadata_set(skb, metasize);
 	}
 
 	return skb;

-- 
2.43.0

