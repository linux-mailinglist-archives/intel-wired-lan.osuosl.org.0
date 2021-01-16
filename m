Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB9B2F8BD2
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Jan 2021 07:14:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CD7CA86E62;
	Sat, 16 Jan 2021 06:14:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uDnB+GPhdk1d; Sat, 16 Jan 2021 06:14:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 32FAE86E66;
	Sat, 16 Jan 2021 06:14:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E5BF01BF861
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Jan 2021 06:14:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E1553874FD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Jan 2021 06:14:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5mrYvHKxIkkz for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Jan 2021 06:14:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com
 [209.85.210.181])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 49AE7874F7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Jan 2021 06:14:22 +0000 (UTC)
Received: by mail-pf1-f181.google.com with SMTP id m6so6900235pfk.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jan 2021 22:14:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=V2nEP27oGTcNy8IrU1fSA3OjNH51LnvWbCcr7tSh5c4=;
 b=bGjvKnbY+JV9g1sz/zHa0oU2w2C0idy+1+ZliPwg8xRc2aJP+MnrANHVyu8X0UT0hN
 J5M29sLWMEIbCec47kB7sRD6NLB6iUkAyaLFwEfpmsb+EY0h5EeV37f8LZsZRLwZR68y
 hPtUhSQqdGyT37M0dOr5Myagv/IUC+0js7TnMF7TDuib5eOhnhKRwWy3mzRb6GHdaLz7
 ZuE2C66mwjmtfDHwIXi6ocUZeHenQkWUFB86jdvB/xVW+sikj5LDQGEwuuzMjQNZ4WMO
 zgTETYT3JmNkoADYLl1+AruRau4yYTgjzw+f4k7rDejFXcjutW8xELStSBFH42tW+M73
 TL2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=V2nEP27oGTcNy8IrU1fSA3OjNH51LnvWbCcr7tSh5c4=;
 b=j7K/axHVlLG2Y1o8WdklhBDsV7ENqZGgotfezJno9fijnf0PQ35Lo84n7CMHjLIOKs
 Y01jJ7UnJq9aVRep029W6A/zCCtdy7LeMYZAg9Q+R0UKnvV6/vHyIfIdj37Jk+3hB12i
 Ub4sDrPAKaSZkLGxXERAs0xrshvLEzYolVfyv/CF0AAaN30PrAJ3wr9ATcVLcp2Ygjgm
 MBNa9FqBQ/Ih68+dLrE4VPvVFt8W7biPMxlfK0fzI3jFA8OdgphBXZxdsFB809IeKKGO
 xjO4TctkK4D8NwT3kZ235IN6mRUcqpPBzDLxl07xSjuO0TChdpEmFNtZfZKr/uJX2X44
 KrxA==
X-Gm-Message-State: AOAM530Iq/4fXZdjZpbnsowFRMO1M6LEGl2+oGE4yRuGg1yh9gf6rTF/
 5qzb0vkFOM3sHrC46fo5upQ=
X-Google-Smtp-Source: ABdhPJyyy42brQiNKCwn9At6xMddGS+824+a+h4kd+1mpMebf24dzNCMMmkQFeKXtYh5D0bHp7U+IA==
X-Received: by 2002:a63:1110:: with SMTP id g16mr16274126pgl.357.1610777661982; 
 Fri, 15 Jan 2021 22:14:21 -0800 (PST)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id f24sm9447968pjj.5.2021.01.15.22.14.20
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 15 Jan 2021 22:14:21 -0800 (PST)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>,
	linux-sctp@vger.kernel.org
Date: Sat, 16 Jan 2021 14:13:40 +0800
Message-Id: <7b4d84fe32d588884fcd75c2f6f84eb8cd052622.1610777159.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <c1a1972ea509a7559a8900e1a33212d09f58f3c9.1610777159.git.lucien.xin@gmail.com>
References: <cover.1610777159.git.lucien.xin@gmail.com>
 <34c9f5b8c31610687925d9db1f151d5bc87deba7.1610777159.git.lucien.xin@gmail.com>
 <aa69157e286b0178bf115124f4b2da254e07a291.1610777159.git.lucien.xin@gmail.com>
 <c1a1972ea509a7559a8900e1a33212d09f58f3c9.1610777159.git.lucien.xin@gmail.com>
In-Reply-To: <cover.1610777159.git.lucien.xin@gmail.com>
References: <cover.1610777159.git.lucien.xin@gmail.com>
Subject: [Intel-wired-lan] [PATCH net-next 4/6] net: igc: use
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
checksum offload packet, and yet it also makes igc support SCTP
CRC checksum offload for UDP and GRE encapped packets, just as it
does in igb driver.

Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 14 +-------------
 1 file changed, 1 insertion(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index afd6a62..43aec42 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -949,15 +949,6 @@ static void igc_tx_ctxtdesc(struct igc_ring *tx_ring,
 	}
 }
 
-static inline bool igc_ipv6_csum_is_sctp(struct sk_buff *skb)
-{
-	unsigned int offset = 0;
-
-	ipv6_find_hdr(skb, &offset, IPPROTO_SCTP, NULL, NULL);
-
-	return offset == skb_checksum_start_offset(skb);
-}
-
 static void igc_tx_csum(struct igc_ring *tx_ring, struct igc_tx_buffer *first)
 {
 	struct sk_buff *skb = first->skb;
@@ -980,10 +971,7 @@ static void igc_tx_csum(struct igc_ring *tx_ring, struct igc_tx_buffer *first)
 		break;
 	case offsetof(struct sctphdr, checksum):
 		/* validate that this is actually an SCTP request */
-		if ((first->protocol == htons(ETH_P_IP) &&
-		     (ip_hdr(skb)->protocol == IPPROTO_SCTP)) ||
-		    (first->protocol == htons(ETH_P_IPV6) &&
-		     igc_ipv6_csum_is_sctp(skb))) {
+		if (skb_csum_is_sctp(skb)) {
 			type_tucmd = IGC_ADVTXD_TUCMD_L4T_SCTP;
 			break;
 		}
-- 
2.1.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
