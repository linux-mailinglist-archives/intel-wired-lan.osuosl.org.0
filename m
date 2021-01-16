Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3242F8BD0
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Jan 2021 07:14:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EF62985BAE;
	Sat, 16 Jan 2021 06:14:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x2KjCgtHhTD1; Sat, 16 Jan 2021 06:14:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4E55785D97;
	Sat, 16 Jan 2021 06:14:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C24D61BF861
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Jan 2021 06:14:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BE40085C2E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Jan 2021 06:14:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oIjx0uhZ60gF for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Jan 2021 06:14:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com
 [209.85.216.49])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 20B4185BD1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Jan 2021 06:14:08 +0000 (UTC)
Received: by mail-pj1-f49.google.com with SMTP id g15so2175465pjd.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jan 2021 22:14:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=/iL/g7I8EapQ7hx/Ua42HZrRsvsGuh8TkarNGwQsIs8=;
 b=gB937wVqSTEEqgO4ChtFvHK3VK3JSjkIepCYK5rBbNLDVN8uQ2ycZXkcxgJIPZ5lN+
 oSPfWgjLRy47C0aKrjnoz3vsDKV4HPitJLVVZi3jJ+KbMHRZYrBYlN/z/nKnH3YE6rBG
 khfL8WOCDNRbeSLjdVOjfaHuZRp8oczRC0nmVPO6wlgzWeTaaHr20/aXeovupBIGfzfY
 zBKwotFTysy9nhmp0peXofo7arXQ1TIL3L/i/1ErTu4yxsfMHlR5jAAG20MXB1IIoA3k
 BfCvT3cOPfwnBHwL9AabCLBsTfdDFS+E123bOTnZ7v0FRmzVJToef1LxFvziNZ/JrLdL
 dGmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=/iL/g7I8EapQ7hx/Ua42HZrRsvsGuh8TkarNGwQsIs8=;
 b=X5bLMs8vudspm0CX8OOobqzlL3dhEOMlxPCUNgj5sRfybn4GYJb6HZx2gAuNDKb9DB
 7beyRTIF75UAuk3TZ8kBujiaq/GF2/XY7bIGUCqndle5dy8AIlxo0nuEt0Yt5vvT6ccw
 eR3I8dYNRk8v6R1Rjm6w+amdEpMQ2BLDxB0hme0YSXX9VKDTfddHK2MuoRBoaW4kouK1
 3Q42TVVen00BFWrCfVeHUqMURpEGvZNpAtskBVH2KeAWPtU28ahHXvedZ9PKUWdA2/i8
 kpaTR8m5nZv1hyUjgPLFu2446+/Fa0t6zYOnH2fFrESUSlrSwxsSyrhmgono8BGUgSI5
 PBIg==
X-Gm-Message-State: AOAM533PmjXW7eSs4WtoHoNzb5GgJ7lQycz19iBrNhDU0T2i8V4jRWNW
 w+s8PD2k6gi1SuAXsKq44rM=
X-Google-Smtp-Source: ABdhPJxLveKMeCpGPHjtVz4XEHzWNkVtXJXc6F6ZL4bY7V2ABEPcgX7nQoGKkKf27M9Tj8v6vzP9xA==
X-Received: by 2002:a17:90b:305:: with SMTP id
 ay5mr14955006pjb.4.1610777647794; 
 Fri, 15 Jan 2021 22:14:07 -0800 (PST)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id 19sm9658182pfn.133.2021.01.15.22.14.06
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 15 Jan 2021 22:14:07 -0800 (PST)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>,
	linux-sctp@vger.kernel.org
Date: Sat, 16 Jan 2021 14:13:38 +0800
Message-Id: <aa69157e286b0178bf115124f4b2da254e07a291.1610777159.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <34c9f5b8c31610687925d9db1f151d5bc87deba7.1610777159.git.lucien.xin@gmail.com>
References: <cover.1610777159.git.lucien.xin@gmail.com>
 <34c9f5b8c31610687925d9db1f151d5bc87deba7.1610777159.git.lucien.xin@gmail.com>
In-Reply-To: <cover.1610777159.git.lucien.xin@gmail.com>
References: <cover.1610777159.git.lucien.xin@gmail.com>
Subject: [Intel-wired-lan] [PATCH net-next 2/6] net: igb: use
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

Using skb_csum_is_sctp is a easier way to validate it's a SCTP
CRC checksum offload packet, and there is no need to parse the
packet to check its proto field, especially when it's a UDP or
GRE encapped packet.

So this patch also makes igb support SCTP CRC checksum offload
for UDP and GRE encapped packets.

Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 14 +-------------
 1 file changed, 1 insertion(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 03f78fd..8757ad0 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -5959,15 +5959,6 @@ static int igb_tso(struct igb_ring *tx_ring,
 	return 1;
 }
 
-static inline bool igb_ipv6_csum_is_sctp(struct sk_buff *skb)
-{
-	unsigned int offset = 0;
-
-	ipv6_find_hdr(skb, &offset, IPPROTO_SCTP, NULL, NULL);
-
-	return offset == skb_checksum_start_offset(skb);
-}
-
 static void igb_tx_csum(struct igb_ring *tx_ring, struct igb_tx_buffer *first)
 {
 	struct sk_buff *skb = first->skb;
@@ -5990,10 +5981,7 @@ static void igb_tx_csum(struct igb_ring *tx_ring, struct igb_tx_buffer *first)
 		break;
 	case offsetof(struct sctphdr, checksum):
 		/* validate that this is actually an SCTP request */
-		if (((first->protocol == htons(ETH_P_IP)) &&
-		     (ip_hdr(skb)->protocol == IPPROTO_SCTP)) ||
-		    ((first->protocol == htons(ETH_P_IPV6)) &&
-		     igb_ipv6_csum_is_sctp(skb))) {
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
