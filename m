Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2022F8BD3
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Jan 2021 07:14:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id ECD63874FC;
	Sat, 16 Jan 2021 06:14:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S7yh9TubmNH7; Sat, 16 Jan 2021 06:14:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9B21A874FF;
	Sat, 16 Jan 2021 06:14:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A957C1BF861
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Jan 2021 06:14:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A5DB185D97
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Jan 2021 06:14:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PeUWTwHLk67c for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Jan 2021 06:14:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com
 [209.85.210.179])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 932BD85C54
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Jan 2021 06:14:30 +0000 (UTC)
Received: by mail-pf1-f179.google.com with SMTP id x126so6884878pfc.7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jan 2021 22:14:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=GcDQDv7mFHcGzkL4z+RhUvR05OkRKTeW0Xhqt5i/PZc=;
 b=YyOsnKFsHbCCOnTLmJKeqet080Pd14q0jBAKWAnJz0hX9kpU44mvuJcBaesXsg64ST
 6bKPjzj+/HetnFOx2C2NTYicW2Xn9Om0LhlTtGnjvNp1/gU40KgDmUarRbqsBA0b3Xvv
 pGxmXTWzRWWflsIQYQawDa+J484K1aAZuTpV8s4+bR7zP1Y86bEM0Kg8/hjvPS+fSj5U
 YqfP51movbhNtI4sPdTFLKyXHRw4A4nJhyDe2peak0nLa8y9i45gsQMeYUaHqelCOmAq
 p7aolZ0XIr14JFiDPcyu4yl6r8doSXOS5G3wPqbQv/Zd3OmS/ssDOphM7sTJ2UEHMM2C
 arxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=GcDQDv7mFHcGzkL4z+RhUvR05OkRKTeW0Xhqt5i/PZc=;
 b=RoVfc/rG2YZcs0OpnqVm30L5q+G8i8go6p4AhcKqCUI2dg2iX/fg5CrKp5TOWKiGvf
 AcvyYlXHooPnQw+LH3wC6EtLOtahWJJwylB9kVd4oWdJa2xDSwfoW3fXK00NDQJgJjQJ
 h0zp5yfULKzzBlK/0twRSV6F7YsmfceeD1si6YzlrsScmHHwCpeKVRoxMd02Qv1GSlbp
 7wS9KaTcEOX0zB+NhUfMP9FnsaAUUPM+LbN4QZVXkQ6X/qvzFq2KFCV5rcz5XHqz8IpD
 88Axb2TNYLDoXpIlI42iy5OuD0XmbwXyb6Uqe8AnL/ORv3wrAAzR95ET/oAuHkgQJKeF
 gtTg==
X-Gm-Message-State: AOAM532OGn1UOjc8JGgSoILyZKsvuIz/DQMk2iXUnogyrIP5jTOmeuNn
 4/fYHey8rU9aXaYnOutwsuI=
X-Google-Smtp-Source: ABdhPJxETlwAXI2t5X+FU6+CsHVtHCXjSMbknJQFc+8hdJKgfKrSOvWgMOyi9vIPNWMHLCnfN8lFkA==
X-Received: by 2002:a65:5283:: with SMTP id y3mr16253618pgp.174.1610777670297; 
 Fri, 15 Jan 2021 22:14:30 -0800 (PST)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id w200sm9864931pfc.14.2021.01.15.22.14.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 15 Jan 2021 22:14:29 -0800 (PST)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>,
	linux-sctp@vger.kernel.org
Date: Sat, 16 Jan 2021 14:13:41 +0800
Message-Id: <f58d50ef96eb1504f4a952cc75a19d21dcf85827.1610777159.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <7b4d84fe32d588884fcd75c2f6f84eb8cd052622.1610777159.git.lucien.xin@gmail.com>
References: <cover.1610777159.git.lucien.xin@gmail.com>
 <34c9f5b8c31610687925d9db1f151d5bc87deba7.1610777159.git.lucien.xin@gmail.com>
 <aa69157e286b0178bf115124f4b2da254e07a291.1610777159.git.lucien.xin@gmail.com>
 <c1a1972ea509a7559a8900e1a33212d09f58f3c9.1610777159.git.lucien.xin@gmail.com>
 <7b4d84fe32d588884fcd75c2f6f84eb8cd052622.1610777159.git.lucien.xin@gmail.com>
In-Reply-To: <cover.1610777159.git.lucien.xin@gmail.com>
References: <cover.1610777159.git.lucien.xin@gmail.com>
Subject: [Intel-wired-lan] [PATCH net-next 5/6] net: ixgbe: use
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
checksum offload packet, and yet it also makes ixgbe support SCTP
CRC checksum offload for UDP and GRE encapped packets, just as it
does in igb driver.

Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 14 +-------------
 1 file changed, 1 insertion(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 6cbbe09..2973c54 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -8040,15 +8040,6 @@ static int ixgbe_tso(struct ixgbe_ring *tx_ring,
 	return 1;
 }
 
-static inline bool ixgbe_ipv6_csum_is_sctp(struct sk_buff *skb)
-{
-	unsigned int offset = 0;
-
-	ipv6_find_hdr(skb, &offset, IPPROTO_SCTP, NULL, NULL);
-
-	return offset == skb_checksum_start_offset(skb);
-}
-
 static void ixgbe_tx_csum(struct ixgbe_ring *tx_ring,
 			  struct ixgbe_tx_buffer *first,
 			  struct ixgbe_ipsec_tx_data *itd)
@@ -8074,10 +8065,7 @@ static void ixgbe_tx_csum(struct ixgbe_ring *tx_ring,
 		break;
 	case offsetof(struct sctphdr, checksum):
 		/* validate that this is actually an SCTP request */
-		if (((first->protocol == htons(ETH_P_IP)) &&
-		     (ip_hdr(skb)->protocol == IPPROTO_SCTP)) ||
-		    ((first->protocol == htons(ETH_P_IPV6)) &&
-		     ixgbe_ipv6_csum_is_sctp(skb))) {
+		if (skb_csum_is_sctp(skb)) {
 			type_tucmd = IXGBE_ADVTXD_TUCMD_L4T_SCTP;
 			break;
 		}
-- 
2.1.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
