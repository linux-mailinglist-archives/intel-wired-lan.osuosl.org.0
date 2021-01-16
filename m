Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B522F8BD1
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Jan 2021 07:14:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2498C85C2E;
	Sat, 16 Jan 2021 06:14:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ToMVUKxInrdf; Sat, 16 Jan 2021 06:14:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A72CC8654C;
	Sat, 16 Jan 2021 06:14:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A29051BF861
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Jan 2021 06:14:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9EE1D86E3F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Jan 2021 06:14:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CDopa0M-qnOB for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Jan 2021 06:14:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com
 [209.85.210.180])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 77FC586E62
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Jan 2021 06:14:16 +0000 (UTC)
Received: by mail-pf1-f180.google.com with SMTP id m6so6891611pfm.6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jan 2021 22:14:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=uvk0y2wENIsw6rNbF1+OkFOxLr21ev6bXBNVBL+g4HU=;
 b=ZNCpCUkAxqUeDra4bYat8qk9p9VWE1LQhAyFYufQ6mEdxVK2AuwF97T3rwO0nkneX9
 l/7wLnhi11YARgirZC6yyMt3A7kdP1d1rnXWzI24VZEpW1O9JGIIrDkhUZedEBW+VIjV
 OKT1Fydi6UYRGbnUWc25RXE7s56kgBF+Aic4W2ckaE8JFjdipL5c2+W0aM4M4Xmvz+Pn
 2f0TvIT+Yue7pqhe7ZIeEiKVXtzI/d/wAhbLPV9wDav45kn4FZTRYhIAzpAvso4e/caV
 JbyDMTB9Wui1eRVGMI4BT/0mjDRpPFWtjG0jjA0tCu0QKpEiVrgB2HwY01unbOs2omA0
 /ECQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=uvk0y2wENIsw6rNbF1+OkFOxLr21ev6bXBNVBL+g4HU=;
 b=puRzMlBulpoOD7Do8/PTbnubxzQqft1rZ4aixvd7tWq90b++udIdaOd7Y4tI5h4A/3
 2pAlDOaIDd57kEQkUemtDcLjlXuqxZyYU2DxyBDR/Av0pAL84m0hIRr0oS4zSzJQ2+UB
 x2aRu+J8EyP8zieQ7vd7wuR7XHfJx0bneIss7nuKbsR9DV8etOWJWyhwv4wbrJid6lvc
 ed/OK4pFkgbgAULN7CPh4+X73YyWlAoyW/ngT0OO2aM2PDiAE8IL0xc0XOjHM68U8E8y
 bL6lDZHtH+ZxtH2r+4ElaBY+0Mjj4lSQlf3e/bRfve+MEZBIhgVvfeqtaszMH6HRdC2U
 w0MQ==
X-Gm-Message-State: AOAM532HkNX/IEJ7+5+fjK/V1KJZNuvrQ8Xh4tPKZJUYXe6vV9yFvETq
 EEnkkgoaadDIq46agilYBng=
X-Google-Smtp-Source: ABdhPJwoc/sR8PjU9Laii5iV7OfMXQl+IWjX9V4X6Y7mAAcvpLXovNzIXFrw1UvSb+dhbq71uX/7ag==
X-Received: by 2002:a63:43c6:: with SMTP id
 q189mr16036820pga.245.1610777656113; 
 Fri, 15 Jan 2021 22:14:16 -0800 (PST)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id 129sm9663877pfw.86.2021.01.15.22.14.15
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 15 Jan 2021 22:14:15 -0800 (PST)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>,
	linux-sctp@vger.kernel.org
Date: Sat, 16 Jan 2021 14:13:39 +0800
Message-Id: <c1a1972ea509a7559a8900e1a33212d09f58f3c9.1610777159.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <aa69157e286b0178bf115124f4b2da254e07a291.1610777159.git.lucien.xin@gmail.com>
References: <cover.1610777159.git.lucien.xin@gmail.com>
 <34c9f5b8c31610687925d9db1f151d5bc87deba7.1610777159.git.lucien.xin@gmail.com>
 <aa69157e286b0178bf115124f4b2da254e07a291.1610777159.git.lucien.xin@gmail.com>
In-Reply-To: <cover.1610777159.git.lucien.xin@gmail.com>
References: <cover.1610777159.git.lucien.xin@gmail.com>
Subject: [Intel-wired-lan] [PATCH net-next 3/6] net: igbvf: use
 skb_csum_is_sctp instead of protocol check
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
 Neil Horman <nhorman@tuxdriver.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Using skb_csum_is_sctp is a easier way to validate it's a SCTP CRC
checksum offload packet, and yet it also makes igbvf support SCTP
CRC checksum offload for UDP and GRE encapped packets, just as it
does in igb driver.

Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 drivers/net/ethernet/intel/igbvf/netdev.c | 14 +-------------
 1 file changed, 1 insertion(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/igbvf/netdev.c b/drivers/net/ethernet/intel/igbvf/netdev.c
index 30fdea2..fb3fbcb 100644
--- a/drivers/net/ethernet/intel/igbvf/netdev.c
+++ b/drivers/net/ethernet/intel/igbvf/netdev.c
@@ -2072,15 +2072,6 @@ static int igbvf_tso(struct igbvf_ring *tx_ring,
 	return 1;
 }
 
-static inline bool igbvf_ipv6_csum_is_sctp(struct sk_buff *skb)
-{
-	unsigned int offset = 0;
-
-	ipv6_find_hdr(skb, &offset, IPPROTO_SCTP, NULL, NULL);
-
-	return offset == skb_checksum_start_offset(skb);
-}
-
 static bool igbvf_tx_csum(struct igbvf_ring *tx_ring, struct sk_buff *skb,
 			  u32 tx_flags, __be16 protocol)
 {
@@ -2102,10 +2093,7 @@ static bool igbvf_tx_csum(struct igbvf_ring *tx_ring, struct sk_buff *skb,
 		break;
 	case offsetof(struct sctphdr, checksum):
 		/* validate that this is actually an SCTP request */
-		if (((protocol == htons(ETH_P_IP)) &&
-		     (ip_hdr(skb)->protocol == IPPROTO_SCTP)) ||
-		    ((protocol == htons(ETH_P_IPV6)) &&
-		     igbvf_ipv6_csum_is_sctp(skb))) {
+		if (skb_csum_is_sctp(skb)) {
 			type_tucmd = E1000_ADVTXD_TUCMD_L4T_SCTP;
 			break;
 		}
-- 
2.1.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
