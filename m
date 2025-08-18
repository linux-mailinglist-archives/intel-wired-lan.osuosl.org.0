Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 71EDEB2AC75
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Aug 2025 17:19:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2333083ED2;
	Mon, 18 Aug 2025 15:19:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Kpj5wsq0216X; Mon, 18 Aug 2025 15:19:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8239383D94
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755530390;
	bh=DOhBWZFo7LzCg4UtaYsUCZFroWpoYt3Mk9YSL3IWDZI=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=H1Ny34Z40DmfaThsmPqgXLrb7hbhWs1duI3xEurC3q+lhx7nce11BDDUStvOZa5T8
	 kWfuPo1Pot96GEpVQhpf+HhB44c+W6Fz9wvIMPj/uU666Na/pJKXfZAUkZSYTyqDy7
	 tzsH4qv8MRW8/EOF7HNEDPPhG1FHh1+T1wPm3bHmYQmAbYPgkJS6KC0hTVm+N0P1wS
	 QRvcSG+4OogGYluEioj1kxPCeilyrPgwgCihdQ/ZuaDHULQfgo1Nt7WdtaJSIiEIks
	 c18oz9uOEZvi1zQkjw4vd9DcH3qziox3LGDccLGCtBrMzmPIf65KYT0JtetuTd4LH8
	 +utqwuz6ghhIA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8239383D94;
	Mon, 18 Aug 2025 15:19:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E0356E2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 15:19:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C6AA883DB4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 15:19:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qU1LZJWe2mWO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Aug 2025 15:19:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=34.218.115.239;
 helo=pdx-out-013.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=318ef9ef4=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 349FD83D77
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 349FD83D77
Received: from pdx-out-013.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-013.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [34.218.115.239])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 349FD83D77
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 15:19:48 +0000 (UTC)
X-CSE-ConnectionGUID: CWbWVxBeRvCbeBS5jVW+Lw==
X-CSE-MsgGUID: PjatYlaPS0Sqc/7KbI86uQ==
X-IronPort-AV: E=Sophos;i="6.17,293,1747699200"; 
   d="scan'208";a="1194046"
Received: from ip-10-5-0-115.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.0.115])
 by internal-pdx-out-013.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Aug 2025 15:19:45 +0000
Received: from EX19MTAUWB001.ant.amazon.com [10.0.21.151:37552]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.5.153:2525]
 with esmtp (Farcaster)
 id 9580e680-4300-449d-87a2-3ccb291c079f; Mon, 18 Aug 2025 15:19:45 +0000 (UTC)
X-Farcaster-Flow-ID: 9580e680-4300-449d-87a2-3ccb291c079f
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWB001.ant.amazon.com (10.250.64.248) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Mon, 18 Aug 2025 15:19:45 +0000
Received: from b0be8375a521.amazon.com (10.37.245.11) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.17;
 Mon, 18 Aug 2025 15:19:40 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <kohei.enju@gmail.com>, Kohei Enju <enjuk@amazon.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>
Date: Tue, 19 Aug 2025 00:18:26 +0900
Message-ID: <20250818151902.64979-5-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250818151902.64979-4-enjuk@amazon.com>
References: <20250818151902.64979-4-enjuk@amazon.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.245.11]
X-ClientProxiedBy: EX19D032UWA001.ant.amazon.com (10.13.139.62) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1755530388; x=1787066388;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DOhBWZFo7LzCg4UtaYsUCZFroWpoYt3Mk9YSL3IWDZI=;
 b=cEZLehSv/uH3Mxf3XdxhyIaYS4oJjK7Gb/iYwJiz47XVbn2VJREQCbmp
 ebU1G//ZN8n8xZ8SnIhMdfc/3SuOpJqSWHIt9JyhR0gsbMLKzkfrxPx6n
 QE2BCjm42slry3zyMUKomfgyszt842+AKibEAo1rjcEOYBed582BQjjGp
 E9yuNbiLQNPPZ75NjMa6nQVnMgCuDiGSO7pMGH2slP3d4tb5SI1o4ov5y
 UFaES3veGAilpaBtVSnOulR+AETXM6Gp1c8L/OLvuRmuJS5YKDu7XbWTr
 rDbHV7jGgIBH9/IFAQQFQ2cO3ONg31v9GyRSy1nZBdsD9w9jeZ14gJvKc
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=cEZLehSv
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 1/2] igbvf: add lbtx_packets
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
with non-loopback statistics (rx_packets, rx_bytes). Therefore,
align the order by swapping positions of lbrx_bytes and lbrx_packets.

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

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
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

