Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BDAD1B2433B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Aug 2025 09:52:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F501411FA;
	Wed, 13 Aug 2025 07:52:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qqph0ONJwS8X; Wed, 13 Aug 2025 07:52:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 140DD4117A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755071567;
	bh=0tluNgAk0CYLsM7ZvS5LjeDUB61MgUfMGZZtsKFZxYc=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xC/5BQ2l7xzpmZkSIpZMfOPGtfdFENV9PLZFQWN944DvhKPjXzetpfwRYZKJVWxn0
	 9Ie3XNDZvBJGtc94PaCqEwqbIU8LTArAafD20QvIjJYiIw5r7dd47NVw1QgkJFJGUf
	 0Jb/y0AJfT8qxnrbfUshayEsjaRHhGOdnR95IcmEdluS7fRK3P30BYWoEV7TMr6QRj
	 V37fHDyN166FpC+SIfh02imyXN9CSZi0DEZ4hV3/4YKH0W1QVJkixpuzY7LHj4LFJo
	 i8CXYkDTiROLktdyLtV3Bpv5IGtqT4Sxf+L//T0oUq3BMiq/iieh+25aEr1fR9KXXG
	 +fjrv5r3Y/LTw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 140DD4117A;
	Wed, 13 Aug 2025 07:52:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 134E81B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 07:52:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 052A9400E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 07:52:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EeJj-_hPQXAn for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Aug 2025 07:52:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=99.78.197.220;
 helo=smtp-fw-80009.amazon.com; envelope-from=prvs=31388b11e=enjuk@amazon.co.jp;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 496D1400C1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 496D1400C1
Received: from smtp-fw-80009.amazon.com (smtp-fw-80009.amazon.com
 [99.78.197.220])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 496D1400C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 07:52:44 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="6.17,285,1747699200"; d="scan'208";a="224790435"
Received: from pdx4-co-svc-p1-lb2-vlan2.amazon.com (HELO
 smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev) ([10.25.36.210])
 by smtp-border-fw-80009.pdx80.corp.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Aug 2025 07:52:42 +0000
Received: from EX19MTAUWA002.ant.amazon.com [10.0.7.35:13498]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.38.54:2525]
 with esmtp (Farcaster)
 id 28d6fb3a-6f70-44b1-adb1-5c55fb937a18; Wed, 13 Aug 2025 07:52:42 +0000 (UTC)
X-Farcaster-Flow-ID: 28d6fb3a-6f70-44b1-adb1-5c55fb937a18
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWA002.ant.amazon.com (10.250.64.202) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Wed, 13 Aug 2025 07:52:41 +0000
Received: from b0be8375a521.amazon.com (10.37.244.11) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.17;
 Wed, 13 Aug 2025 07:52:39 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <kohei.enju@gmail.com>, Kohei Enju <enjuk@amazon.com>
Date: Wed, 13 Aug 2025 16:50:50 +0900
Message-ID: <20250813075206.70114-2-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250813075206.70114-1-enjuk@amazon.com>
References: <20250813075206.70114-1-enjuk@amazon.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.244.11]
X-ClientProxiedBy: EX19D031UWA001.ant.amazon.com (10.13.139.88) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1755071564; x=1786607564;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0tluNgAk0CYLsM7ZvS5LjeDUB61MgUfMGZZtsKFZxYc=;
 b=qBWbyimWn3JE5LYVgkN5JfXtcmzN3IF+SVypsFSXaGLhquWWJGxvVNAt
 OiM9tEDzweOXB3wddUg+sCRSoC6kZJGvZagfvY1jEnY6eSuvnUae1jkkh
 dTdVRni/MjQMPaaBZo4h9XDP2pI2yfi5VxHLBgU9lltJAmGLe/mQof/bI
 iARca+GtWkv3FGPxm8tmzZPj2lC2M5592RrC+ABVvjstY1YwOhnLCqXI6
 zyKBKPWlxD51sudxi5n4uPsK+C+BVk3KmIt7p9jf5YmxYvB0B3QE54shs
 mM8ygagXa3WErgvCyn/h6WJ+2d+yLJ85ByzP7Dc8VmgpaxWMOKKwB1bEs
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=qBWbyimW
Subject: [Intel-wired-lan] [PATCH v1 iwl-next 1/2] igbvf: add lbtx_packets
 and lbtx_bytes to ethtool statistics
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently ethtool shows lbrx_packets and lbrx_bytes (Good RX
Packets/Octets loopback Count), but doesn't show the TX-side equivalents
(lbtx_packets and lbtx_bytes). Add visibility of those missing
statistics by adding them to ethtool statistics.

In addition, the order of lbrx_bytes and lbrx_packets is not consistent
with non-loopback statistics (rx_packets, rx_bytes). Therefore, align
the order by swapping positions of lbrx_bytes and lbrx_packets.

Tested on Intel Corporation I350 Gigabit Network Connection.

Before:
  # ethtool -S ens5 | grep -E "x_(bytes|packets)"
       rx_packets: 135
       tx_packets: 106
       rx_bytes: 16010
       tx_bytes: 12451
       lbrx_bytes: 1148
       lbrx_packets: 12

After:
  # ethtool -S ens5 | grep -E "x_(bytes|packets)"
       rx_packets: 748
       tx_packets: 304
       rx_bytes: 81513
       tx_bytes: 33698
       lbrx_packets: 97
       lbtx_packets: 109
       lbrx_bytes: 12090
       lbtx_bytes: 12401

Tested-by: Kohei Enju <enjuk@amazon.com>
Signed-off-by: Kohei Enju <enjuk@amazon.com>
---
 drivers/net/ethernet/intel/igbvf/ethtool.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igbvf/ethtool.c b/drivers/net/ethernet/intel/igbvf/ethtool.c
index 773895c663fd..c6defc495f13 100644
--- a/drivers/net/ethernet/intel/igbvf/ethtool.c
+++ b/drivers/net/ethernet/intel/igbvf/ethtool.c
@@ -30,8 +30,10 @@ static const struct igbvf_stats igbvf_gstrings_stats[] = {
 	{ "rx_bytes", IGBVF_STAT(stats.gorc, stats.base_gorc) },
 	{ "tx_bytes", IGBVF_STAT(stats.gotc, stats.base_gotc) },
 	{ "multicast", IGBVF_STAT(stats.mprc, stats.base_mprc) },
-	{ "lbrx_bytes", IGBVF_STAT(stats.gorlbc, stats.base_gorlbc) },
 	{ "lbrx_packets", IGBVF_STAT(stats.gprlbc, stats.base_gprlbc) },
+	{ "lbtx_packets", IGBVF_STAT(stats.gptlbc, stats.base_gptlbc) },
+	{ "lbrx_bytes", IGBVF_STAT(stats.gorlbc, stats.base_gorlbc) },
+	{ "lbtx_bytes", IGBVF_STAT(stats.gotlbc, stats.base_gotlbc) },
 	{ "tx_restart_queue", IGBVF_STAT(restart_queue, zero_base) },
 	{ "tx_timeout_count", IGBVF_STAT(tx_timeout_count, zero_base) },
 	{ "rx_long_byte_count", IGBVF_STAT(stats.gorc, stats.base_gorc) },
-- 
2.48.1

