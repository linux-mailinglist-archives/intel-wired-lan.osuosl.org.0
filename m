Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD7AD0DDB8
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Jan 2026 22:06:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0857260861;
	Sat, 10 Jan 2026 21:05:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k3uEQ7EPJ1kH; Sat, 10 Jan 2026 21:05:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6BC306086C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768079137;
	bh=JYcerOXvT20TAZxV32Bgec2U2gzBl1lA7Z10rFU3rY8=;
	h=Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=iAxpF9PhEHzhPM7ygxfHcY36YgLgLyGOCwrqOdg3nRoMeL5nni3ynOaI+oImfdiTT
	 1qOmM+Y1BfE4EBF6u9SA24zJfCCN8qt/JEg1py5mau2l96onQf2GuQb1fcMX3Ww0oM
	 aDtEM/G0pVa8T+t+DmuIwbM8UzcN6/VjT7dd8ESMFWbuE0FUwxO3jB1BTmu8M1JGhD
	 T0LbPHRmNakp3RBN4LObl6sKhhr6sgqnXgL9UpBEMAiPaHTS102b0TQO7YYMsGYPOz
	 e/b24cT8TCL1m/cUKv25A3TOTgXoViOLs1sbBkEyXZ9ZYymbs+R0I8H49lTtOkwjnu
	 irl5cgWqiLgRA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6BC306086C;
	Sat, 10 Jan 2026 21:05:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 274B0131
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:05:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 24AD2606A9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:05:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zc-AHaAu4Yj4 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Jan 2026 21:05:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62e; helo=mail-ej1-x62e.google.com;
 envelope-from=jakub@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3647F6086C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3647F6086C
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3647F6086C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:05:34 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id
 a640c23a62f3a-b7277324204so819410066b.0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 13:05:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768079132; x=1768683932;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=JYcerOXvT20TAZxV32Bgec2U2gzBl1lA7Z10rFU3rY8=;
 b=UxO2xpn/lvRcLHJYbAGexw1wxPOn2F6ACrdlc+jhJni1sO8N+I0EGOlYIrDAnNNLeA
 fkXE3XNyjzrB0jgFTHDzpyCdDgFKGHAAvLODJ3Nbu73aEGb0UEvhtxXzQZnF3LQEcZlS
 CzihotklHOYkFGhDNXQfnrH5ABzFkrVD83uVGLq4EDDyX51aQViPUaFf/qEnEo2oXxQ4
 OtDi4llG6YkWtbUyHxZ7yTp3c0Qfou2FJSf3g/xlbTembQ/7JLEMLAzFuxYvcOiXxnwH
 fgDkPGUZoBoqkktPMXOkPI8C3/Z83rp1FawC3cZ7MOG5pdzgIexBAPYIrEX6kou/nrB3
 EZ8Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCWHvqdPSKfSB4eM05xBO2VMIW+t9s+Ij6yTeC7B+Vamahqru0TdIBs9v9/fFZkTTIk5Se1Uu6K+/haLsvZKUpQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yzv9Eik7FaP/geGIKk5ii5X8YCYIlJaxhr6pSWZQZc45cnL5mi1
 arCCEkdHt65rIuDbP3D80cOeZqKLBkyb4KuoxjOqnv68Ieof2LTrxLIbKePL3LBPpFI=
X-Gm-Gg: AY/fxX6JTrqw8OTF9zFCpaehSe8sntkcHwKwevbXcZC1qxA4nGNL0QBEic44alexdG8
 vuchwmWIMmFyfTLhU1YYwpZlexfa57qdIw/rKvakMddPJtGEGCd+tqVTjwqG+86APJqn7jnJvso
 Zbjgx9dRk44uoaQogOmBwqj2F35EAaYSQEaLumWEyjxpfYoocYVck43FgfZld1ec3o8pLFPQCw8
 clrbkXxKFe5KivGosTEcPS6sFYPRVqxdfD8WFCzoIPAYFPviuMJfMnwNsk35tBSrPbrYirS8pHY
 J9SUDq5S+unyMr3VDM+j/k+BFkGeIeKrbr6MKSyMzV1fzohQN9KP5OzTGlvogI7D12YgFJfGwg3
 tq54YwjL8axQY+qXRVGcc+rBNo/asLbskZYpkQcNmC1RNSmO4A5MBKXa1P3uJv8AlHPHUKKQJdC
 pAT5OTi7WHcDNMsiXmQ80ii0ttKqcHpDHOae0K7v/KwT9cFeHrh9Lft/cat2AHIZ7C7bVnUg==
X-Google-Smtp-Source: AGHT+IEFuKrUoamrVGukylQDbXiei94tsX9UTPR1SSJ/HUiay/bcZTQi78J/wZJ2myAmZPltA3HFYw==
X-Received: by 2002:a17:907:72d6:b0:b73:42df:27a with SMTP id
 a640c23a62f3a-b84451edb4amr1195769266b.1.1768079131992; 
 Sat, 10 Jan 2026 13:05:31 -0800 (PST)
Received: from cloudflare.com (79.184.207.118.ipv4.supernova.orange.pl.
 [79.184.207.118]) by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-6507b8c3f89sm13718558a12.5.2026.01.10.13.05.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Jan 2026 13:05:31 -0800 (PST)
Date: Sat, 10 Jan 2026 22:05:21 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260110-skb-meta-fixup-skb_metadata_set-calls-v1-7-1047878ed1b0@cloudflare.com>
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
 d=cloudflare.com; s=google09082023; t=1768079132; x=1768683932;
 darn=lists.osuosl.org; 
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to;
 bh=JYcerOXvT20TAZxV32Bgec2U2gzBl1lA7Z10rFU3rY8=;
 b=Qn8w3iU6KwWz0wENllcM+YwHcKwmO4NUZV48XTPVLlZv4hAA7jG67330/etZxBKDYD
 XxHxajAUUH6ZwWzZiTyXunalNACqWazubg6P8nZSpxR/kFT4CpW+2afTkjINAn6qEjG4
 ZAaXd9o+SBZxRd3Ck0lCuXEonId7VN1/yGpPRJryE4oMYoB9PTAGjhC08AGLFUiYCoqt
 vMJ/bsUh5crPjsSe4483AEt3mVMWCQUquuBims0RD6cTkPwmrY02UqGnIte3896kbGU1
 ofL5+fGpRqu1PwYUM0ethEIoENaZu9ve2GwPsT+uUFDEQ/b95okqV8yrX3eDymPKiOaF
 opJQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=Qn8w3iU6
Subject: [Intel-wired-lan] [PATCH net-next 07/10] mlx5e: Call
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
 drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.c b/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.c
index 2b05536d564a..20c983c3ce62 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.c
@@ -237,8 +237,8 @@ static struct sk_buff *mlx5e_xsk_construct_skb(struct mlx5e_rq *rq, struct xdp_b
 	skb_put_data(skb, xdp->data_meta, totallen);
 
 	if (metalen) {
-		skb_metadata_set(skb, metalen);
 		__skb_pull(skb, metalen);
+		skb_metadata_set(skb, metalen);
 	}
 
 	return skb;

-- 
2.43.0

