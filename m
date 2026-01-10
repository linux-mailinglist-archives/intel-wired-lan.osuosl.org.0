Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9E4D0DDBB
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Jan 2026 22:06:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1F20760887;
	Sat, 10 Jan 2026 21:05:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8vWgoF3iw0lF; Sat, 10 Jan 2026 21:05:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7F52360889
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768079140;
	bh=gJGe4F24ZVfayrOmF+dW97eXhP3gCrceZMdfXokyiw8=;
	h=Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=flMKgf0ddzGarlh8cgG06uMVg812dMD6REBkEvsmf8/YZiEfQPx+l0QX4pcZYcRdm
	 jfkdfuYHW/HcfEG5OSF10LX0ejJ4jXUvgn/J5HoMjGhaZOHXppSztInDQc32rIQkhf
	 fyq8s+KGQCRdLGodAdjn2i/y8YD0qZCUv/s+hrDMTRc4wvf3IGrtVr8hRhqzQUHr7I
	 Y5Ap5iKzTHba23jXv24e8rbWwd8lUDiUt/bKqKb1R75gNNz24Y32l/hFW17Ms2cH1C
	 ArryT0gfuyRBYQjUukZIqU7q/6cbgUmbUIGvJW+XquhbzdL0hty5lORUTrUVFwAbVo
	 XCsCgJjo0LVaQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F52360889;
	Sat, 10 Jan 2026 21:05:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C8414131
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:05:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C543940090
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:05:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tnd47WDtS0nN for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Jan 2026 21:05:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::532; helo=mail-ed1-x532.google.com;
 envelope-from=jakub@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 044C140088
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 044C140088
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 044C140088
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:05:37 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id
 4fb4d7f45d1cf-64b9cb94ff5so7620070a12.2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 13:05:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768079136; x=1768683936;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=gJGe4F24ZVfayrOmF+dW97eXhP3gCrceZMdfXokyiw8=;
 b=GOCH3yH7zk6wDzcd+tYUH2iSmL7cRCgmkDOxWCCBAXqZup+NeARbGnXsXuUgNMaZ3q
 zQeYCD1xRu8HrP3QIkFsifkCmsp5JdDVOmvrgj/mur/w2/ZcG2tYJWWuHC7RNn4LkPCT
 qCQI1igAfit+OX5h28oAGuKV1LVBQGnsO/kA6RdqkP5te6N3XCfuB3GHFSI9AJPSoi8X
 uSaJKSC7cE3gJLfai/t658cyw7JoBVbzJ/EK1JoLBkPJMJ9ORKlTeFNRXBJ/C100Jp07
 VnIoYdHuwWZRaTx+8fQz2dIHFg0e5+2jQCw5bsIecF4HURnUeAP1T+RkmGCqiejRj4Ym
 kZYg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVVI8v0DEFYGlZHgvZ8/VC2y2mKZlpznj/K0Zz+Yt06RLpcLI2UrjSC/pREwE8zk7l8f+fwQ5Avz9sw4chNbfU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzD2qZ1ugFv8L6dKp2j2p+tKM6IhzHLctjctDha9o5DBa8wfBja
 N0Gt8jrg28BKmNubz+dFRZ89DVM4H//i3csnXFgWKIAWupiDJzNqnTCqvQ3EDUnW4Ow=
X-Gm-Gg: AY/fxX4FK7YnwHYSbol75yASCehaIaT77DXFH413NQL5AEZuK5qitPZ5Xe2tmZRymQi
 c+CWcQyeY/g6GsUDQykn2sq5Upxwkrxha0sJKEZFpEQg2ZQ7z0eRxuM8beytl3WLkz8wkbRdl2j
 kXmyFaVCj7a8od607DX2NkQ+jAqcG0/LrLk/bvKAM6Pl23TKg9HOW9IriIx3JtdfYCmDuafGjkT
 5ExGRBBYGd73gWq6VcpcNh4no1PhO2B8ZOyL4aLspM7JDiwyzl8J7fvNH9ST620HJ4IqQCdJ/SS
 CIPsaRwfqxuTNEXeV/1IzjSX4Spzwg0Tml8wzBMHj1CtXwG/Il0clZ/YLKO7alve9WJpn0kLvHc
 dvv/4JmLroLVqkeSSBVKfViiHEvJ6GUvREDxSXdyPXqLKC4UWdiCxk3JDfpOhd9UgNSEVOprKHh
 ZwxSyjhWVcPq0vj5QdBJ0WsIVKZMcfodiXThBRuYaUY++Dt7jssKUrtZiHXDPs/dNqH5Wf9Q==
X-Google-Smtp-Source: AGHT+IG5ojyykHKJrNS2iqi01P/vtltLLnJRqU4cDTs8uiHP43TabkDLYPv8nJjlhqnzI9Nx6i13Jw==
X-Received: by 2002:a17:907:97d0:b0:b84:22ab:a830 with SMTP id
 a640c23a62f3a-b8445233534mr1342410266b.18.1768079135871; 
 Sat, 10 Jan 2026 13:05:35 -0800 (PST)
Received: from cloudflare.com (79.184.207.118.ipv4.supernova.orange.pl.
 [79.184.207.118]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b842a234000sm1495187766b.4.2026.01.10.13.05.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Jan 2026 13:05:35 -0800 (PST)
Date: Sat, 10 Jan 2026 22:05:24 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260110-skb-meta-fixup-skb_metadata_set-calls-v1-10-1047878ed1b0@cloudflare.com>
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
 d=cloudflare.com; s=google09082023; t=1768079136; x=1768683936;
 darn=lists.osuosl.org; 
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to;
 bh=gJGe4F24ZVfayrOmF+dW97eXhP3gCrceZMdfXokyiw8=;
 b=C/+++DDAtvJNKH+GRul8amPk/UUI42gB1JDHsBwWw60vr8hE3AxLxjQzIjtljBwa4L
 Ym5CBG2802jsUd8XP8Ez7rJEP6LhbIzwm3IxwDNMS2f2kG4tOTDuAZslDZZf4cre8ybz
 ogDAp4jP0b23jXKdX+Xl0iREoPSUJuMI/2Q29j7KQfDl5X6RG8nJMezRDnlOw4F8/6Kl
 +XKmr5IGwCjyQIfabXvAbzJaQsY1dHahACHaNOT6wYbID9OV/ob7Pi0avdxjD9NbZDLM
 alYxLI9tTVAAdZf3sP8Wj5dM+QJJiZEAZVpkXXgHAIgGWxTa/dspm8G30G5/HEzuK/7U
 79nA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=C/+++DDA
Subject: [Intel-wired-lan] [PATCH net-next 10/10] xdp: Call skb_metadata_set
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

XDP generic mode runs after MAC header has been already pulled. Adjust
skb->data before calling skb_metadata_set to adhere to new contract.

Signed-off-by: Jakub Sitnicki <jakub@cloudflare.com>
---
 net/core/dev.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/net/core/dev.c b/net/core/dev.c
index c711da335510..f8e5672e835f 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -5468,8 +5468,11 @@ u32 bpf_prog_run_generic_xdp(struct sk_buff *skb, struct xdp_buff *xdp,
 		break;
 	case XDP_PASS:
 		metalen = xdp->data - xdp->data_meta;
-		if (metalen)
+		if (metalen) {
+			__skb_push(skb, mac_len);
 			skb_metadata_set(skb, metalen);
+			__skb_pull(skb, mac_len);
+		}
 		break;
 	}
 

-- 
2.43.0

