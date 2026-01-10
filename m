Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D29C6D0DDAC
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Jan 2026 22:06:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BDFA68137C;
	Sat, 10 Jan 2026 21:05:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yKsFdumB89jW; Sat, 10 Jan 2026 21:05:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3DE3F813CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768079139;
	bh=Eg4zjCrLlkyG6qsti60/giOUAtyjjkrdEhVln0uD/Xw=;
	h=Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=gqtUArTPybcWo+wYq1pxekZvaa0q0NtjaJAn7Aatnum8s5hmjtye7fnaKZrmFDhDr
	 15u71zvSyIjP7SMV5fa5z3+SD+wKShd2/25pxwcbNhz0GCeFc2Iz8hequQb9cX/yun
	 hNCPcnQXm5MGpP1Ya4i3nNSDtHFn3vVt0OsQ4+cZBnqOdDJruk0TysDHBezklC2lyl
	 Oh1LToKrzFlnrj265j/K/pcXJ3StQkcYpexsSYnvKbEUUL1nVpEB2eucb5u4f/j+Gh
	 61yen1t1LegHKdn8qXVPE8sxhwI02SB9JriHFu4T7Tj993Ynp1jxKOk5BLVx/c+i5e
	 WhYGyuZbrrddw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3DE3F813CE;
	Sat, 10 Jan 2026 21:05:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7E5B818D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:05:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 708CA40645
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:05:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9NFZisBjLo_8 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Jan 2026 21:05:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::635; helo=mail-ej1-x635.google.com;
 envelope-from=jakub@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 51D9040644
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 51D9040644
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 51D9040644
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:05:35 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id
 a640c23a62f3a-b72b495aa81so1005391966b.2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 13:05:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768079133; x=1768683933;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=Eg4zjCrLlkyG6qsti60/giOUAtyjjkrdEhVln0uD/Xw=;
 b=DasKDYTeq713QRQ1BFppSu8wjCNmX+1Q1D4u5lMppMDaTw3pg/wISMTHMZLsAnCaG1
 CLTt3xgOJAzFfOCwYC7q5m22A/aItaW9NDj3H3mRcX6SYDxowJIR/HswCnuPGi0LfHW+
 DuO0PpGtOOH2P6EHG0O0Z9vqYaymYeLF2ZFbOGBnzPFgSDeY58Ui9Yf5JaIFivfYzqaH
 yfzwJm2SFgd8MYAx2FKInmLkEOZaNaOsGRmib89RxShoDEpFEQkiTFkhMvyg2bGi5uCL
 1oT967iLyV/rHOJiNX5AMNLBAVjXYUnSAHcKOwTcNlKtOTjrA5JUmq8+64dvpGCZPmjU
 oqLw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXuLgclo2mble6MIdhUoYciwcL9BJTbMsza72YQGXU3OaLax3CDJfway0FIIvi4yQ/sdL9wDW8HHludnBJi4d0=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwgW5ehl0dNu7nlih3odkU+zj5RUXi5w1F1zsUDXpIW4Okppc++
 NiCS9NdsEG6A46oGYxQPhCJtmtHudQLrAqqdbxkSOrzC+/VAq67xN9A7TDoaL2Oy3yI=
X-Gm-Gg: AY/fxX79d8REWORsYQjNgIyCOLWZb0YHBXP/dAiPa9bEHdXWK7IX7nnFJSPfsMPZ+iX
 QJAVsJaE+cQyZTPEWfWWELQhnY3faDvVlzfoUlh0nErGkQQ4BTVF4ibdaZxS9nirRw0/awpXCol
 QIvAhRtOLa3zmAPydBMruZWOlFQZMwnhTMSqYm9WoWvFuILHQVhXzpTaBaAu1UT+7aPJn3CkkWg
 r/shpYefKD+t/GZ8P6z2m8/3Fuo0Yn4lvlrV2Mp7gotjg0QjKQEgCUkTISbBTovMESZtIgAwxPF
 OV3AbftrLjp7+BuAACGlLws1IHHPJ+BYb6X3UroCeQ4eHvBQm+GbG3nUn3fx03GlNTU3R7Iu+ty
 RBNrRSnl21yL1iw2xIx1VZ4lVk7yqrh4t5swlPjyPs7kRT6e8MMJ+cj3a3x3G4I1PwPHnGH98Bw
 tPqHgYNJV7Y3b9i6B7mkBIqnCA01GXG+FyP4kubGrWfL1Ew0cS4BnpTF77AcQ=
X-Google-Smtp-Source: AGHT+IHr5jjLIg7Fc8OxmV32vOhb8biD7VVZIPMdffGLc0JSFUNEJ8LGc6xEjJiUaoLQN5K1DNcPEQ==
X-Received: by 2002:a17:907:1b02:b0:b76:f57f:a2c3 with SMTP id
 a640c23a62f3a-b84451ef354mr1384718666b.12.1768079133287; 
 Sat, 10 Jan 2026 13:05:33 -0800 (PST)
Received: from cloudflare.com (79.184.207.118.ipv4.supernova.orange.pl.
 [79.184.207.118]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b86f912a2ddsm209666266b.71.2026.01.10.13.05.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Jan 2026 13:05:32 -0800 (PST)
Date: Sat, 10 Jan 2026 22:05:22 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260110-skb-meta-fixup-skb_metadata_set-calls-v1-8-1047878ed1b0@cloudflare.com>
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
 d=cloudflare.com; s=google09082023; t=1768079133; x=1768683933;
 darn=lists.osuosl.org; 
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Eg4zjCrLlkyG6qsti60/giOUAtyjjkrdEhVln0uD/Xw=;
 b=Nz/5PDWsDRPjUNZthqrNup9jDz03+vuEKETcyaq/xCcN82c/kzxdAqcsouT5ESUdyG
 1m18wofIP26YCVOigiVRs4q07rR6qpSiNhIw12r8mxRpSTmgQqOxo50by9kAriL8pD96
 6/v9Y0VAEPEuEfNx79WKjSs0SGQiTvpDp3xzbZm0eXVdz4GDW2EmQHUkydnk2NnBfkZa
 DUrykbC1NeS7b1ES35HOs+/UMV8LSQ0H9jVzQ3f9I0sdiEIKuOg6yAqKFxZoBU80eEat
 m8vHhultHychqyJc5HeWMfVHrXadLjgyoa0cBT+DqLcObr/olTbzerJXCyeCyEx6I05G
 k5sQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=Nz/5PDWs
Subject: [Intel-wired-lan] [PATCH net-next 08/10] veth: Call
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

Unlike other drivers, veth calls skb_metadata_set after eth_type_trans,
which pulls the Ethernet header and moves skb->data. This violates the
new contract with skb_metadata.

Adjust the driver to pull the MAC header after calling skb_metadata_set.

Signed-off-by: Jakub Sitnicki <jakub@cloudflare.com>
---
 drivers/net/veth.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/veth.c b/drivers/net/veth.c
index 14e6f2a2fb77..1d1dbfa2e5ef 100644
--- a/drivers/net/veth.c
+++ b/drivers/net/veth.c
@@ -874,11 +874,11 @@ static struct sk_buff *veth_xdp_rcv_skb(struct veth_rq *rq,
 	else
 		skb->data_len = 0;
 
-	skb->protocol = eth_type_trans(skb, rq->dev);
-
 	metalen = xdp->data - xdp->data_meta;
 	if (metalen)
 		skb_metadata_set(skb, metalen);
+
+	skb->protocol = eth_type_trans(skb, rq->dev);
 out:
 	return skb;
 drop:

-- 
2.43.0

