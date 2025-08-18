Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BCAAB2AC7D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Aug 2025 17:20:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 37751842C7;
	Mon, 18 Aug 2025 15:20:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wsqF2CQJ7oET; Mon, 18 Aug 2025 15:20:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A09928428B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755530416;
	bh=XMYejQHNqpjFbERCaP8aLdVx7eISvzwexSyDRnFQHOA=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GqL4Aetgja7GDoL2CZYraoDyZT0d9tiwdvL5Q4sS3B2Q5lBQug5gyrxEgrSrU2JFv
	 udCbtRYuM1ltdnR4iXkJEX0thwEOkNTtSZlmS1dpzWIsjOeEgUy2QXFS53IMPko1tF
	 loDppa4wvorSDEaNQioxTRIY++ao5qdYLBqdBjBZfQKaTXvOdwQYzVIadnrbY7BlG4
	 gPYYtaSytZg61nsXW1EsPpChTNOFFuWSIuT0KCOjNyg8zQP8j9c1Y2yg4xsad5YaRx
	 b61v8FTuGVuQ2QdpBfRZf0cpV5zXleSvG+DYkRKIo5fE4KVaYqovOESuvGq+6l4nox
	 sHB8nP7Y+a4FQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A09928428B;
	Mon, 18 Aug 2025 15:20:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 77B9D75
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 15:20:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 69B5760E0C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 15:20:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p3U7Lc1GrUIb for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Aug 2025 15:20:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=44.245.243.92;
 helo=pdx-out-001.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=318ef9ef4=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B8E3360A88
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B8E3360A88
Received: from pdx-out-001.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-001.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [44.245.243.92])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B8E3360A88
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 15:20:13 +0000 (UTC)
X-CSE-ConnectionGUID: GvNU4AY7ScqpFe9ijYZcyA==
X-CSE-MsgGUID: NOYTGUURQ1qeT1MfdGWN1Q==
X-IronPort-AV: E=Sophos;i="6.17,293,1747699200"; 
   d="scan'208";a="1310829"
Received: from ip-10-5-0-115.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.0.115])
 by internal-pdx-out-001.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Aug 2025 15:20:11 +0000
Received: from EX19MTAUWC002.ant.amazon.com [10.0.21.151:42477]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.52.244:2525]
 with esmtp (Farcaster)
 id 8a5d81ca-8000-47fd-9d85-193fbc95c6eb; Mon, 18 Aug 2025 15:20:11 +0000 (UTC)
X-Farcaster-Flow-ID: 8a5d81ca-8000-47fd-9d85-193fbc95c6eb
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWC002.ant.amazon.com (10.250.64.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Mon, 18 Aug 2025 15:20:11 +0000
Received: from b0be8375a521.amazon.com (10.37.245.11) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.17;
 Mon, 18 Aug 2025 15:20:08 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <kohei.enju@gmail.com>, Kohei Enju <enjuk@amazon.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>
Date: Tue, 19 Aug 2025 00:18:27 +0900
Message-ID: <20250818151902.64979-6-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250818151902.64979-4-enjuk@amazon.com>
References: <20250818151902.64979-4-enjuk@amazon.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.245.11]
X-ClientProxiedBy: EX19D038UWC001.ant.amazon.com (10.13.139.213) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1755530413; x=1787066413;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XMYejQHNqpjFbERCaP8aLdVx7eISvzwexSyDRnFQHOA=;
 b=maSQ1Lw/+2Jb/jAjFAtLkGIPY3CXu+fWrxCGWQVUnpFXmfcN3K9wsYmL
 TCHSoKJ7UgEqVYOjnGIxzBkc6DV2IMWwVAIl5jtMU9dEZuJJIyOoNE9s8
 SU0wVJeBd6mIN57fMjWboj95yiHzi1jKqfVhpsOEJxL8I2NbZbg6CBXkT
 xPwzmZYx4GfgsV6LX3vVQEH6miY3be+99tlUzvtsZC3NHJCn0A+yHKK9k
 npmqMZISF/WSksglOCpyKCBAsXWCN5Fg7PT13fEc0YiUtPcoIo07oE6hO
 uNspByDJ0Js5aUMfCjmWbhoVuFp9d1mMhpzsGL2hMk4YpMwFLSJfh+u4g
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=maSQ1Lw/
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 2/2] igbvf: remove redundant
 counter rx_long_byte_count from ethtool statistics
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

rx_long_byte_count shows the value of the GORC (Good Octets Received
Count) register. However, the register value is already shown as
rx_bytes and they always show the same value.

Remove rx_long_byte_count as the Intel ethernet driver e1000e did in
commit 0a939912cf9c ("e1000e: cleanup redundant statistics counter").

Tested on Intel Corporation I350 Gigabit Network Connection.

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
Signed-off-by: Kohei Enju <enjuk@amazon.com>
---
 drivers/net/ethernet/intel/igbvf/ethtool.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igbvf/ethtool.c b/drivers/net/ethernet/intel/igbvf/ethtool.c
index c6defc495f13..9c08ebfad804 100644
--- a/drivers/net/ethernet/intel/igbvf/ethtool.c
+++ b/drivers/net/ethernet/intel/igbvf/ethtool.c
@@ -36,7 +36,6 @@ static const struct igbvf_stats igbvf_gstrings_stats[] = {
 	{ "lbtx_bytes", IGBVF_STAT(stats.gotlbc, stats.base_gotlbc) },
 	{ "tx_restart_queue", IGBVF_STAT(restart_queue, zero_base) },
 	{ "tx_timeout_count", IGBVF_STAT(tx_timeout_count, zero_base) },
-	{ "rx_long_byte_count", IGBVF_STAT(stats.gorc, stats.base_gorc) },
 	{ "rx_csum_offload_good", IGBVF_STAT(hw_csum_good, zero_base) },
 	{ "rx_csum_offload_errors", IGBVF_STAT(hw_csum_err, zero_base) },
 	{ "rx_header_split", IGBVF_STAT(rx_hdr_split, zero_base) },
-- 
2.48.1

