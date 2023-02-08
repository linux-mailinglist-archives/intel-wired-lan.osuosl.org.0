Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9091468E62F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Feb 2023 03:44:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6131C403EC;
	Wed,  8 Feb 2023 02:44:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6131C403EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675824248;
	bh=TIgAUG7X9MMCnYbdVD94TTIgcHjpT0kVBenhnaRc7yg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=yfTikIyg9aTtTj5f+D2kv3wZT7xI/MwpzJVxGsztkDyzFJjQ9KZVhy4vJYnJ6qCxO
	 rvnSUYLdOP3NOKZamy6W5Owl/KL2kOBiS+/QWqNHJ6SB0XSZLKun0LEjY71twXVKtR
	 Nr2oTL+1QsLThYI+dnwSx/cehN90raQ8I5I9WE/YwArlYiQwgN8DmJy/k4yMMMiNhl
	 4MOIAf6jHTs3Y9hj51ORmK/EmFbbtSnW8xLRJRqLROJ49TaHUxbXhh9vG2FAn8TF6t
	 iw3ZPAt2qKYduPZnkMKK5bESFHd05y7KnYKliSQsfCNUF2wnk3IW0srvi02Lh847jH
	 kq8Z4e2aXVL0w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g-X4BMUd4SEG; Wed,  8 Feb 2023 02:44:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 157B840305;
	Wed,  8 Feb 2023 02:44:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 157B840305
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8AD471BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 02:44:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 59D7B61058
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 02:44:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 59D7B61058
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QCkdoH9SFkdO for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Feb 2023 02:44:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BF7B60B13
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0BF7B60B13
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 02:44:00 +0000 (UTC)
Received: by mail-pl1-x635.google.com with SMTP id k13so17816312plg.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 07 Feb 2023 18:44:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=La3OH/wxxUC+XGiTFrGm7IEcXqspoaqeInslaM1lK3o=;
 b=BlghqkSX0mdxczxKbhOn/2yxcF7JEf0PGU5y0rI0zOkyjzCGaDvJ2Boe4sa8f4VeIV
 tacCfz0cRZylc3xd7vkrj1+U0lUj5L2FWHbFFUEwyo1LxEh4TTQR3vbcOai2TSjtH4OJ
 Unn+G+hoThe28ignn3fuS07VOAUkL211OCWMyr5UGQUfSVYP7GHeyMmekzlx3VFvEovx
 yz4DrfbZ82SkYkGa3UUD6RJQt7cuVOAX4d9/D/A+aGl/8PZlCG+KsnO4nBM9LgsAIAg7
 0czH0abst4VnzuGrPcQaTNuBRDD4dotSOy40DhB9b9YxPL425UaPhxrl4vAjLKYR8iuZ
 kiQA==
X-Gm-Message-State: AO0yUKXHzfiryjfmp0KYLLN0dNr3Ugrv4av8wyfTQbh1pb+8Bus7EaAq
 Ujua9dD4CLVWqLQvVLpiYo0=
X-Google-Smtp-Source: AK7set+g6t0zpDw6cZ6u3Ejsod7XXE0VcvWokhkIB7GAN6au/Bx55Hahcu7ysmaoaUwaCydcafhm1A==
X-Received: by 2002:a05:6a20:7d95:b0:bc:5f20:140d with SMTP id
 v21-20020a056a207d9500b000bc5f20140dmr6731933pzj.30.1675824240304; 
 Tue, 07 Feb 2023 18:44:00 -0800 (PST)
Received: from KERNELXING-MB0.tencent.com ([103.7.29.31])
 by smtp.gmail.com with ESMTPSA id
 jk3-20020a170903330300b001960735c652sm9660835plb.169.2023.02.07.18.43.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Feb 2023 18:43:59 -0800 (PST)
From: Jason Xing <kerneljasonxing@gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, richardcochran@gmail.com, ast@kernel.org,
 daniel@iogearbox.net, hawk@kernel.org, john.fastabend@gmail.com,
 alexandr.lobakin@intel.com, maciej.fijalkowski@intel.com
Date: Wed,  8 Feb 2023 10:43:32 +0800
Message-Id: <20230208024333.10465-1-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=La3OH/wxxUC+XGiTFrGm7IEcXqspoaqeInslaM1lK3o=;
 b=HcoAEA6t13WP2R5z5xB0i39ady4K0zU6k1HBKc6Dmim0YBCX2HkUXoIAWMAfq5F9Ug
 u5AhG+Cs6exh7j7jEl/Y3nNbsc9ZUBZTaXwjijYD1HNxbRSkiWYv+qYshRdbS+Fn+RAQ
 It6Gkapc18/oiepO/BZ2sF5RwvwaeHuWHm+q2v9UG3u/nFG6UIGHpmFr9RwHjD6ympPG
 YVyxh6ucWUj5OBbrPXHKt3kAMRAyshdidtpcBF8z7+HK9YcrVjBXkK7upIkvDqcenTv0
 mVqcpBNaKF8wzGdE1+5A9CnjpsOvqy7WiYYPyXWKfXO1X3iOw8JaY8B7U7EHgc6Z7szK
 Pllw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=HcoAEA6t
Subject: [Intel-wired-lan] [PATCH net v4 1/3] ixgbe: allow to increase MTU
 to 3K with XDP enabled
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
Cc: kerneljasonxing@gmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jason Xing <kernelxing@tencent.com>

Recently I encountered one case where I cannot increase the MTU size
directly from 1500 to a much bigger value with XDP enabled if the
server is equipped with IXGBE card, which happened on thousands of
servers in production environment. After appling the current patch,
we can set the maximum MTU size to 3K.

This patch follows the behavior of changing MTU as i40e/ice does.

Referrences:
[1] commit 23b44513c3e6 ("ice: allow 3k MTU for XDP")
[2] commit 0c8493d90b6b ("i40e: add XDP support for pass and drop actions")

Fixes: fabf1bce103a ("ixgbe: Prevent unsupported configurations with XDP")
Signed-off-by: Jason Xing <kernelxing@tencent.com>
---
v4:
1) use ':' instead of '-' for kdoc

v3:
1) modify the titile and body message.

v2:
1) change the commit message.
2) modify the logic when changing MTU size suggested by Maciej and Alexander.
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 25 ++++++++++++-------
 1 file changed, 16 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index ab8370c413f3..25ca329f7d3c 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -6777,6 +6777,18 @@ static void ixgbe_free_all_rx_resources(struct ixgbe_adapter *adapter)
 			ixgbe_free_rx_resources(adapter->rx_ring[i]);
 }
 
+/**
+ * ixgbe_max_xdp_frame_size - returns the maximum allowed frame size for XDP
+ * @adapter: device handle, pointer to adapter
+ */
+static int ixgbe_max_xdp_frame_size(struct ixgbe_adapter *adapter)
+{
+	if (PAGE_SIZE >= 8192 || adapter->flags2 & IXGBE_FLAG2_RX_LEGACY)
+		return IXGBE_RXBUFFER_2K;
+	else
+		return IXGBE_RXBUFFER_3K;
+}
+
 /**
  * ixgbe_change_mtu - Change the Maximum Transfer Unit
  * @netdev: network interface device structure
@@ -6788,18 +6800,13 @@ static int ixgbe_change_mtu(struct net_device *netdev, int new_mtu)
 {
 	struct ixgbe_adapter *adapter = netdev_priv(netdev);
 
-	if (adapter->xdp_prog) {
+	if (ixgbe_enabled_xdp_adapter(adapter)) {
 		int new_frame_size = new_mtu + ETH_HLEN + ETH_FCS_LEN +
 				     VLAN_HLEN;
-		int i;
-
-		for (i = 0; i < adapter->num_rx_queues; i++) {
-			struct ixgbe_ring *ring = adapter->rx_ring[i];
 
-			if (new_frame_size > ixgbe_rx_bufsz(ring)) {
-				e_warn(probe, "Requested MTU size is not supported with XDP\n");
-				return -EINVAL;
-			}
+		if (new_frame_size > ixgbe_max_xdp_frame_size(adapter)) {
+			e_warn(probe, "Requested MTU size is not supported with XDP\n");
+			return -EINVAL;
 		}
 	}
 
-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
