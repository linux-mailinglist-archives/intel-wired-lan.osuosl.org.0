Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EDEA60108B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Oct 2022 15:53:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3796E40541;
	Mon, 17 Oct 2022 13:53:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3796E40541
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666014813;
	bh=9wnq0v6CzlBPcVGrq4W8tfulAPwOSV0WebYBgjqFCZI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=hXMmX+V7DNd9FlP2mBrT0vE5w0zo9zGCCWS0ylI0E98Ppo6BlfxPrdFFNbNndE8fn
	 n+oE21iyvU6nTLhp4QKwiqAaq4kh5RsYvRWVzoX6fL6mXIetZypfjwU/Ulle5RDjkM
	 2kQJAu2b0RJedEI4X+5OWWl3wNAaT5j/IJXnvM6V/K1pWw7S+T/Ns88q/h2I8C0urc
	 FUqZvkSToxUj4IdU5LYecJ4WuqfRBkJDuhx1Sh2jIfKslkRXgml+cEDqo6DaoMedBb
	 s2ZXrS5SuQEid968WELvh/W7n9QsCIOJm+XvBMk9B4CaFfSuwDsuDTr1PNUjUPbcP/
	 NiosTE5S5vg6Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4xdzF7SkXhvH; Mon, 17 Oct 2022 13:53:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4538640236;
	Mon, 17 Oct 2022 13:53:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4538640236
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 32D891BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Oct 2022 05:01:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 037B4419A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Oct 2022 05:01:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 037B4419A1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tVtcOCo9JS-H for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Oct 2022 05:01:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 069D64199D
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 069D64199D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Oct 2022 05:00:59 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id c24so840495plo.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Oct 2022 22:00:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=vo2vClF0viTyEV9dF3uXEQmi9DD+bFYaARDbiE673FY=;
 b=WVbfo7uU9dmktZXtCrcbevzrevwTAJiCt+ZpQbLw4CZHPmP0O1Wt/I029CTvJjHJ0E
 oxb1GNEP1OmeU0G1FJ4ZMgiLaFYaSz7Rf3nlj70CCVVeZ5u/OUULlEx7hfwKhkIz3Ksw
 ghbhD0AWeyogok7/4M6SPPmRt++8qhJw/weYBiAX6HJz7hQ4vncLpwQeiLz42sK7XRcu
 B2+Sys1geBV3m6tlLesWkrcV1yfABa6v8wNIjRNiKGXjKenomr6EhoNUgCYTnrzwzSh/
 KdSCyLQEMsW0p3/1o2v8BLf2Ur7QUq8T4Hhm34Hsae+AqjHOW9dOdJrDIIHa5EmVvm3Q
 K17w==
X-Gm-Message-State: ACrzQf3k+pKimundfDx9UjHJ1HMR1QgT4igdzoXh3hyeI7dMnu3gl4L7
 KPhwGPh/3VEqF80GAGeE+CC89Q==
X-Google-Smtp-Source: AMsMyM7prQsv8d89ELhZC16iF907vgbbEkzq/tHxl8hNDtEPOBmor31gzGC8wSwsOIsGn0Nx+m3iVg==
X-Received: by 2002:a17:90b:1806:b0:20d:3256:38 with SMTP id
 lw6-20020a17090b180600b0020d32560038mr8847987pjb.94.1665637259078; 
 Wed, 12 Oct 2022 22:00:59 -0700 (PDT)
Received: from fedora.flets-east.jp ([2400:4050:c360:8200:8ae8:3c4:c0da:7419])
 by smtp.gmail.com with ESMTPSA id
 v22-20020a17090abb9600b0020bfd6586c6sm2278518pjr.7.2022.10.12.22.00.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Oct 2022 22:00:58 -0700 (PDT)
From: Akihiko Odaki <akihiko.odaki@daynix.com>
To: 
Date: Thu, 13 Oct 2022 14:00:44 +0900
Message-Id: <20221013050044.11862-1-akihiko.odaki@daynix.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 17 Oct 2022 13:53:27 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=vo2vClF0viTyEV9dF3uXEQmi9DD+bFYaARDbiE673FY=;
 b=bcFJXUHNzbEqQLUtO/5UnkbVjmKzQ+mDYMt0K89Rc/1Of0EdHQYXnHCqgkNNy81BNE
 oZIBtnrnC9bZElluyBGBIRbZ2qzyqcR2OBCaHR80lxcIc43dp7ZP/yJGfwymLvJy+055
 PsY5LMoboAg0kSIcjgPrzZdaTBSv5fTyyQHdns8R4q2gF74J+/jVUNisidxiZtABwJcW
 A0OUqscxtNJzlSvWhb6YQ4W/aljdSUvafmjZ5vvBFhIcXmA2IsNrDw/W3MeIeufgJ+pc
 xLq+YSWhCqEoG2BZH1gs5I9DF5kYTGCLmKueUHxDh1X79DeNaf/x7pp2rQsiyhk0iU6P
 azUw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=daynix-com.20210112.gappssmtp.com
 header.i=@daynix-com.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=bcFJXUHN
Subject: [Intel-wired-lan] [PATCH] e1000e: Fix TX dispatch condition
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Yuri Benditovich <yuri.benditovich@daynix.com>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Yan Vugenfirer <yan@daynix.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

e1000_xmit_frame is expected to stop the queue and dispatch frames to
hardware if there is not sufficient space for the next frame in the
buffer, but sometimes it failed to do so because the estimated maxmium
size of frame was wrong. As the consequence, the later invocation of
e1000_xmit_frame failed with NETDEV_TX_BUSY, and the frame in the buffer
remained forever, resulting in a watchdog failure.

This change fixes the estimated size by making it match with the
condition for NETDEV_TX_BUSY. Apparently, the old estimation failed to
account for the following lines which determines the space requirement
for not causing NETDEV_TX_BUSY:
>	/* reserve a descriptor for the offload context */
>	if ((mss) || (skb->ip_summed == CHECKSUM_PARTIAL))
>		count++;
>	count++;
>
>	count += DIV_ROUND_UP(len, adapter->tx_fifo_limit);

This issue was found with http-stress02 test included in Linux Test
Project 20220930.

Signed-off-by: Akihiko Odaki <akihiko.odaki@daynix.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 321f2a95ae3a..da113f5011e9 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -5936,9 +5936,9 @@ static netdev_tx_t e1000_xmit_frame(struct sk_buff *skb,
 		e1000_tx_queue(tx_ring, tx_flags, count);
 		/* Make sure there is space in the ring for the next send. */
 		e1000_maybe_stop_tx(tx_ring,
-				    (MAX_SKB_FRAGS *
+				    ((MAX_SKB_FRAGS + 1) *
 				     DIV_ROUND_UP(PAGE_SIZE,
-						  adapter->tx_fifo_limit) + 2));
+						  adapter->tx_fifo_limit) + 4));
 
 		if (!netdev_xmit_more() ||
 		    netif_xmit_stopped(netdev_get_tx_queue(netdev, 0))) {
-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
