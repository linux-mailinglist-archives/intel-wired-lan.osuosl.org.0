Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 08736D0DD94
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Jan 2026 22:05:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C669D8135C;
	Sat, 10 Jan 2026 21:05:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4seAl4R4tdDU; Sat, 10 Jan 2026 21:05:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E68081372
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768079133;
	bh=0TnUC/TQ0eRLnTNM/gOpI3DULP5gf/J95rnk3NBvNrg=;
	h=Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=KSbH83jOvbn6J8HED8wNfhiuEY0K3Yl5Qd2ZgT4t2Q1qebHS6Ol2YovV8YvqidfC3
	 bGX1TFgqi/f8rRlqwDSTcLGvSm5ljrM89fSojv7BH6hFNzCT8yVNaR+lTa6aAzLZWW
	 kFxBuB0h+aI5pHiO/oa7W0q3KN2KF+oj8h0o070IckoLvn5uIPiNZgxUeuM8PR44re
	 83ZrLad4XxQBzvPsNGn9MMs6xzH8CPkLy0W6gjIieeGAuWeH59rUpFYJnpy4ZNbiXu
	 aksYb+qOhL/X7ZUailohAclHC4/cL/qThc/9agm0nR37sCVdqSZW7HN9wlSxb3xfz8
	 wF3bEJhIP7TJA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4E68081372;
	Sat, 10 Jan 2026 21:05:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 08D76131
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:05:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EF01040090
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:05:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 79EJ8bzBkWAH for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Jan 2026 21:05:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::629; helo=mail-ej1-x629.google.com;
 envelope-from=jakub@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3F16940088
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F16940088
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3F16940088
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:05:30 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id
 a640c23a62f3a-b72b495aa81so1005385666b.2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 13:05:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768079128; x=1768683928;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=0TnUC/TQ0eRLnTNM/gOpI3DULP5gf/J95rnk3NBvNrg=;
 b=VRvvRiRkmxSOpVGt0MWtmvUTcE3BBKeD+4tZFz5jMYJYZ+z5WJcXr9xR0Tj7/MzxKQ
 LLPGzdXuW4nMiiHKvFU9hWs2r/uZCnqKyfXjnPtymnb5vil3rA2k+rGynaJwi3DNCZLL
 H1PcUOK16tG2r+wPkVuvz5yP4vLTZryF15ydYse4jBWOgBj3GSK/Lh2yvJL2F0hhEO/c
 gGk6NLjuriNMjz75/TN+2Z61Mh+JAulOgR1RHBFio82fx4wtffi4YXRY8A3ijmt1d2pp
 gP/rRH+pI6ZDiQFyb+UmeRa7JvCm77qja3IIAg5bML/GV+FYmG0qaFAWxdKliHn7rOty
 PH/Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCVQdyc+5thWnMCjBYi4G/aS9ICCZHYTOgvvbAyTQQ37/KnuPtMoytqsq/ymqqIldlIoNdwBn/QQJaGmW9L9R3U=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwdEM+uXvgWAn19xePiFscvGvQF0ZRDdURlxmhZdCzQjH4o6e95
 RnUWSqX2gkAdM58IfUXZGPa7wwZsM98/i58RXUCWV0D+ag2NrAnJIWWbGd9xqLtSQ9M=
X-Gm-Gg: AY/fxX6nwbPlhqqxZG8tgzoy++qEQyZ6vzt9k7J4j5vqnWAmwvMchPOPxobRhPl2goz
 Yf4uzf7RjjKV3eEaW67FRvJm6y7qkWkPUNQ4Os6q87vFpl58A6Rxx79b/FxhDModT2PlrN5bmus
 y/jv2r6KBT08vxN7/fZtL7tgUBrK+J96Dud9/Cl7X+cY3/hHvoDpYLjnziFKNvxLMT7Fmp4MvQ9
 4O6UamE3LsYaIxHs4AV9ovDsYyM1o2vHoBem0xkC+3Ph5gxx55A6cxyNx8A0z+NYwMuXM2vTT48
 /cBWdoYGH1rwwAZraQvIMeifd7bXK7t16Su1QIAThtBL+ElnINNGqXlKGOc3e27QqGaYTTKHUVf
 3iuS5mdIeJrlLgkI0d32mf6z5RQUbsIjPbCF29b742CMsVVknA4MHlaG4jzAoYhgyKyXqSOWtkj
 Ah4aZ+ppic19O5g/ROd42FuWrzVKLzzZBOyPN6g5g1nNQGPtLUXUuEEBunkn4=
X-Google-Smtp-Source: AGHT+IHFpJUTXLFWUnnv3h2YytegrKQCwISqD8mtMirbPzcSGIv/sObbMsW2/ceFAmzo69tIkpwihQ==
X-Received: by 2002:a17:907:2da6:b0:b72:134a:48c8 with SMTP id
 a640c23a62f3a-b8445232b14mr1313892266b.14.1768079128172; 
 Sat, 10 Jan 2026 13:05:28 -0800 (PST)
Received: from cloudflare.com (79.184.207.118.ipv4.supernova.orange.pl.
 [79.184.207.118]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b86f61d2774sm243607866b.41.2026.01.10.13.05.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Jan 2026 13:05:27 -0800 (PST)
Date: Sat, 10 Jan 2026 22:05:18 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260110-skb-meta-fixup-skb_metadata_set-calls-v1-4-1047878ed1b0@cloudflare.com>
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
 d=cloudflare.com; s=google09082023; t=1768079128; x=1768683928;
 darn=lists.osuosl.org; 
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to;
 bh=0TnUC/TQ0eRLnTNM/gOpI3DULP5gf/J95rnk3NBvNrg=;
 b=SmmEAS4roYiLBfSP5HgqWJqsBas3M9Sk7q8jazo4fzWYRNutthkd5OCIPHm6mgPqIv
 gx1ErMsSQvqhNuuVbkbTJfSR23yr6mrrZv2nSr6PpcV7NcxNJr5zpqxiiifbMsJqCuV2
 0wC7gPBOLG7Q+5aJWvUPh+KgzGg8/2uUIygkFhch9bNgBqL7b6+nhjnO65Xx9Tk9kDA9
 mKOaw5P8avcoAI41ESe0VwZGGiP5OKAXfeIXNPPeUHrIVIr2SK4px1kfyAYapKGeh3wk
 1JbXaY+9oOHxEWjb9b9kaV2gcAsqJbodp4xJHkyP/H4zVilxzzWddlOAY6iNXAaT3WfO
 LW2Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=SmmEAS4r
Subject: [Intel-wired-lan] [PATCH net-next 04/10] igb: Call skb_metadata_set
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
 drivers/net/ethernet/intel/igb/igb_xsk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/ethernet/intel/igb/igb_xsk.c
index 30ce5fbb5b77..9202da66e32c 100644
--- a/drivers/net/ethernet/intel/igb/igb_xsk.c
+++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
@@ -284,8 +284,8 @@ static struct sk_buff *igb_construct_skb_zc(struct igb_ring *rx_ring,
 	       ALIGN(totalsize, sizeof(long)));
 
 	if (metasize) {
-		skb_metadata_set(skb, metasize);
 		__skb_pull(skb, metasize);
+		skb_metadata_set(skb, metasize);
 	}
 
 	return skb;

-- 
2.43.0

