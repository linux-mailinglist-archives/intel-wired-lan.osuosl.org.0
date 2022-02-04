Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3392C4A9B8E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Feb 2022 16:00:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9205741679;
	Fri,  4 Feb 2022 15:00:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XdsGshow1cvR; Fri,  4 Feb 2022 15:00:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8F6EB4090F;
	Fri,  4 Feb 2022 15:00:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8FC651BF3BE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 08:03:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 72D5381ADE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 08:03:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linutronix.de header.b="ljChLCBb";
 dkim=neutral reason="invalid (unsupported algorithm ed25519-sha256)"
 header.d=linutronix.de header.b="eLzMILb0"
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x5a5KPSAcJ2j for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Feb 2022 08:03:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 062828186B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 08:03:11 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1643961788;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=1Q9w9cCPiizS9c08viXczkQ5y2iVATK7Ure0+P8y1WA=;
 b=ljChLCBbv7pau6AmdP7lrZKgMaXOBH5xuPDQSv6n5Cxlvl7kOFDnMh4+NcPTLcyPE50T0H
 OHaKZJTqyDObo1ihgDWeO9g1ozkEh1AlkIN+kCl3EGUa0j/uMDg/35fl8Kzzc3ABqZJib0
 rsuM5DRLRPIy3Vtu66zrC599ckiBvmG6aLpYg+zr5BcUvRRQ+wY9Osmbwo6HD9xGNZbcaz
 cr5k25Cg4Qjnbdr2t7siEAC9Pkt0hBEB8vpTT/1ZmE5pzWfMjT6LszwOqPksez4/+xIju7
 FLJ3Xkzljt5cD7jQZq+t4DfYn3/DAlGIpJYbkMnaza6XKISQ5icpY+2it3yeCQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1643961788;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=1Q9w9cCPiizS9c08viXczkQ5y2iVATK7Ure0+P8y1WA=;
 b=eLzMILb0aJ6QOt9v0QzfE+irTbFbevFZeS2k8zVF4bzdF3a3nQtm6s5bJ1Mcgqpf/Y2boP
 vHVy0UUAp7KLgWCw==
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Fri,  4 Feb 2022 09:02:17 +0100
Message-Id: <20220204080217.70054-1-kurt@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 04 Feb 2022 15:00:48 +0000
Subject: [Intel-wired-lan] [PATCH net] igc: Clear old XDP info when changing
 ring settings
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
Cc: Andre Guedes <andre.guedes@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Jithu Joseph <jithu.joseph@intel.com>,
 netdev@vger.kernel.org, Kurt Kanzenbach <kurt@linutronix.de>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Vedang Patel <vedang.patel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When changing ring sizes the driver triggers kernel warnings in XDP code.

For instance, running 'ethtool -G $interface tx 1024 rx 1024' yields:

|[  754.838136] Missing unregister, handled but fix driver
|[  754.838143] WARNING: CPU: 4 PID: 704 at net/core/xdp.c:170 xdp_rxq_info_reg+0x7d/0xe0

The newly allocated ring is copied by memcpy() and still contains the old XDP
information. Therefore, it has to be cleared before allocating new resources
by igc_setup_rx_resources().

Igb does it the same way. Keep the code in sync.

Fixes: 4609ffb9f615 ("igc: Refactor XDP rxq info registration")
Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 8cc077b712ad..93839106504d 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -671,6 +671,10 @@ igc_ethtool_set_ringparam(struct net_device *netdev,
 			memcpy(&temp_ring[i], adapter->rx_ring[i],
 			       sizeof(struct igc_ring));
 
+			/* Clear copied XDP RX-queue info */
+			memset(&temp_ring[i].xdp_rxq, 0,
+			       sizeof(temp_ring[i].xdp_rxq));
+
 			temp_ring[i].count = new_rx_count;
 			err = igc_setup_rx_resources(&temp_ring[i]);
 			if (err) {
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
