Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A460D0DDA0
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Jan 2026 22:06:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 93095813C9;
	Sat, 10 Jan 2026 21:05:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fkJFAII_eLv5; Sat, 10 Jan 2026 21:05:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BC2EB81397
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768079136;
	bh=ZrS/fiDVSpNqpnGbLktJGFsAvmbG4oFl4B9ZbG+ylX8=;
	h=Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=9z8Buf45WuJyuvQCCNzY+Loly5na6CtE6yJJTaFyoia0IeZFYOA8SVm+vtLEE3EZR
	 Wj2L5/wsQY84sKfkOvCpRN+/1eVUZaaxBTFVU2ybJkAUQT6OEas/Up159yQ2+4PKwd
	 Mr1D4zKmfRmaKo4YdMGQnOjdjPsh4YTXlMuHnlrcS2XX/e1GB/3jusuaeZHxyI32Jk
	 VgEDWHHRlPTEK8Bde9AVfiuOsl90+e030IlKFDkKqH5LiEa5j5qmvleRX0uZVklvGs
	 gLJDPeVZ2t9V68rZcsCg6Bakloh46AnZLt8rzoTkvI0ssjuWJftou3Aq9XcQrvfxMk
	 xyR9CQfe+JCIg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BC2EB81397;
	Sat, 10 Jan 2026 21:05:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C579618D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:05:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B798D60862
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:05:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fMA9qKWWXfQ5 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Jan 2026 21:05:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::635; helo=mail-ej1-x635.google.com;
 envelope-from=jakub@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D5B636084B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5B636084B
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D5B636084B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:05:32 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id
 a640c23a62f3a-b87003e998bso63846066b.1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 13:05:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768079131; x=1768683931;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=ZrS/fiDVSpNqpnGbLktJGFsAvmbG4oFl4B9ZbG+ylX8=;
 b=RS7bqAGHWFQaRtslBMZEMqaM956NywMaknRNb3UTwl1ofyVD1Py1ZJpNnvAMZMngZJ
 7Or9w/I9wzh2SCIqWlIoLgHRLOke+AaO/fzKNo2MXIPAjEHEBp9V6Qb+qbmfcMA4SfhP
 4ZMOmtt3JdA/UCwj05SFF3CXLZjKH6RAQiMKSobiuaOqyZkUfUC2y1I6YSlqtPVNC19Y
 c8fDm1kDNzQIDlxcpm95r3PHWZOwRsQ3+XnEUULSDUk70YET4pW2HcjCm4dPLBRlG7lg
 SfcQqYg/7ippxF6I+6QsM8HxjoP9//CZWwxUK5PE46MOJ0YFciCRvPEQu52H17EUs6Aa
 AolA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUtUKmF2p+6S3gwaVsFbdUeJT1sdyOu0F33UK/jz6+zCgqJYKpy/tJZt8we+YeP9uYh3diZXkLDZWm6TtBjXeI=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw4yodLu+S5F0idI4diUkT860b4v3tVahhlPex1BbYnTWIe03Je
 i8xUd1untbILAa1XhxkhAaWyBKPR3MhFqNIzQB+sniTbo6ym8ZRI4VUbMlEc3J/kOQw=
X-Gm-Gg: AY/fxX75xU8ww1XK3wKb+8eb/Fap6+bKD99gt0eEsUX6pu1TGJyvC3A4SY4I9wNDCnE
 1uHzglD+UMxy4Xw6KW1i3sAZ7TB8vX+yufbfB/ooebzGWY8fvbiqpk2JMEVt6IzhoS/AzOLPdqy
 dT+afG64l/zkyfXBH1HJ5kLa16mXXzRpPF24M6GLd31qaiTKT3gIVMWMOC/T0SDSGXSYk4UNXIB
 1zt500Lf+xG30saCcDcy8FRPwPN6FJTZFqa9W90xFhLkqKGyjnkd12PBgEJADjPJk7QQ76PTR1m
 PgcWKrHPnKh0z0Ung9DKrgTTrjjwbKcnUti6NKDfNOwZwFZGh5nZfM6YV45HJij1kMU4Pa+40Ul
 /W0UZR3snSfc53y5fN2Qpg7o/tg8SUc65caAJ4o05g0pggY+Dd/luBhOi9VXpOQob49vFpHXA/8
 yvjZX5Xfui/6HA924l2PPbmf6xqnHFZwhtPtsFSdMDicxSACqnE5TnDdgBt6M=
X-Google-Smtp-Source: AGHT+IEXzU4wEefDLk0fDfjXgkYuzrme5GrsRIy+MsiA/VGuWxBA6XjNbLVOftqt0DT0rpqevpx7vw==
X-Received: by 2002:a17:907:a08:b0:b07:87f1:fc42 with SMTP id
 a640c23a62f3a-b8444f488f0mr1563600766b.16.1768079130751; 
 Sat, 10 Jan 2026 13:05:30 -0800 (PST)
Received: from cloudflare.com (79.184.207.118.ipv4.supernova.orange.pl.
 [79.184.207.118]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b842a4d3113sm1479232866b.43.2026.01.10.13.05.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Jan 2026 13:05:30 -0800 (PST)
Date: Sat, 10 Jan 2026 22:05:20 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260110-skb-meta-fixup-skb_metadata_set-calls-v1-6-1047878ed1b0@cloudflare.com>
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
 d=cloudflare.com; s=google09082023; t=1768079131; x=1768683931;
 darn=lists.osuosl.org; 
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ZrS/fiDVSpNqpnGbLktJGFsAvmbG4oFl4B9ZbG+ylX8=;
 b=dxK8sxRQwAtxS/4hJdsxkygTWCgXp+jNTj8aUtKBl6vORI/AjbnFlyFQfg3zUKCAlz
 rxSba0XLEDxQAs9611ugM5GDKipJNPP3VHAaU3HWiyKH9sIZ0oYiNxk7Aib4EQhAEVv6
 XCUxMfN314CS4fJRyi2RBWoTRmTbx5RW53bV6pmufLdH8BkR0tCbWurlwi7r+rR/yg7s
 b3v4PrFrZXxMW7Cxrfu9N2dwMOzO6yYj5OBpVXp9iG4GB7chRbVt7F/W+yixRyjvtxyJ
 0xv6L+yItkNG4323xnbSg7RmLrXeAktAUcD/vLVts1XxIXNzLqEM6YZJkl7/1sdxMLNT
 H5lw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=dxK8sxRQ
Subject: [Intel-wired-lan] [PATCH net-next 06/10] ixgbe: Call
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
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
index 7b941505a9d0..69104f432f8d 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
@@ -228,8 +228,8 @@ static struct sk_buff *ixgbe_construct_skb_zc(struct ixgbe_ring *rx_ring,
 	       ALIGN(totalsize, sizeof(long)));
 
 	if (metasize) {
-		skb_metadata_set(skb, metasize);
 		__skb_pull(skb, metasize);
+		skb_metadata_set(skb, metasize);
 	}
 
 	return skb;

-- 
2.43.0

