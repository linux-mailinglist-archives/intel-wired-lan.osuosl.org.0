Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC07D010DA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 08 Jan 2026 06:20:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 29DCC82531;
	Thu,  8 Jan 2026 05:20:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 35XvosgAQZc2; Thu,  8 Jan 2026 05:20:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C5BE482532
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767849644;
	bh=4yrd543BqppBfDDQcrJeipvTbsa3INp/g8US0rju7KA=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=xu8Qr3rMswZ1oboll6bfGwi053UYz19dBjJLuHHiIrbgPNcFcjAgw55aATKr1QGnO
	 n+NqmsfOP/OSN3ThUO4vTFMESulVcjEXm2UnPXA66D8Fk8bmg9eUvChHiDwgzAyAg2
	 OmUx3AmkwQrXygKr/Yl4rS1WWaToYJ2hgiQGY253t/mEiBIlrskjhteyAzN/Do53N5
	 jfhVNwnRCx1vzQ5mkzvkJY7LHNftS3kPzoP7T0KpqzOlZBVkQAUhWXHHwdh+xR/JSY
	 lNGk38EUasLD9coJQkPtBXx/0kH7v4enOv6NYflaYLAeq6VF3d3i73JlkROpXfmz2M
	 3NPVAUTXxbRWQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C5BE482532;
	Thu,  8 Jan 2026 05:20:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id AA49925B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 05:20:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 913C682525
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 05:20:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wQmRJtVUxz8I for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jan 2026 05:20:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=35.83.148.184;
 helo=pdx-out-014.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=461565dfb=takkozu@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9EB5582512
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9EB5582512
Received: from pdx-out-014.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-014.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [35.83.148.184])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9EB5582512
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 05:20:42 +0000 (UTC)
X-CSE-ConnectionGUID: kQbvIKdVS/G/h4n9YHyFLQ==
X-CSE-MsgGUID: bgqAZ6JfQHKnoItBKZs+4g==
X-IronPort-AV: E=Sophos;i="6.21,209,1763424000"; d="scan'208";a="10233129"
Received: from ip-10-5-12-219.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.12.219])
 by internal-pdx-out-014.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jan 2026 05:20:39 +0000
Received: from EX19MTAUWB002.ant.amazon.com [205.251.233.111:30973]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.62.78:2525]
 with esmtp (Farcaster)
 id 6a82af07-4606-4a33-99c5-229ed34ef6e8; Thu, 8 Jan 2026 05:20:39 +0000 (UTC)
X-Farcaster-Flow-ID: 6a82af07-4606-4a33-99c5-229ed34ef6e8
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWB002.ant.amazon.com (10.250.64.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.35;
 Thu, 8 Jan 2026 05:20:37 +0000
Received: from 603e5f7bc1fe.amazon.com (10.37.244.10) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.35;
 Thu, 8 Jan 2026 05:20:35 +0000
From: Takashi Kozu <takkozu@amazon.com>
To: <anthony.l.nguyen@intel.com>
CC: <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, Takashi Kozu <takkozu@amazon.com>
Date: Thu, 8 Jan 2026 14:20:12 +0900
Message-ID: <20260108052020.84218-5-takkozu@amazon.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.37.244.10]
X-ClientProxiedBy: EX19D033UWA002.ant.amazon.com (10.13.139.10) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1767849642; x=1799385642;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4yrd543BqppBfDDQcrJeipvTbsa3INp/g8US0rju7KA=;
 b=cN5pOkpJf+koPrLpo/vZ22iTdbaG/fiTIDbPQ5FLK/eXhwHKgSnF7XWk
 C/vgohTTeGdrYb9OGkH+7nWHAD6z1Nk4rVf8KGUYIrxRdgHS8pvrhiwXt
 Jebw5ozvUoJpmmhXzFgKkMr384+NKLYyGKz3rYzGhJ+gcbNd6vX4o9g9Z
 zKXinJRZorJRZ578Rx3fy8zqAr8fl6ToU6qj/vtJY9Daxexb9HpeSh81R
 BWRSArK3JVv80s2fnEBxoNgqTXTU5BS7w/mUhsLMFrnQ8f5jzDXecwRGS
 0hkR9b1d/AVeuTYjT0JnVqJ1Cz8qGZz6iS4hJYFhTlGfqNhQ01cejDSRe
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=cN5pOkpJ
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/3] igb: add RSS key get/set
 support
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

This series adds ethtool get/set support for the RSS hash key in the igb
driver.
- `ethtool -x <dev>` to display the RSS key
- `ethtool -X <dev> hkey <key>` to configure the RSS key

Without patch:

# ethtool -x $DEV | grep key -A1
RSS hash key:
Operation not supported
# ethtool -X $DEV hkey 00:00:00:00:00:00:00:00:00:00:00:00:000
Cannot set RX flow hash configuration:
  Hash key setting not supported


With patch:

# ethtool -x $DEV | grep key -A1
RSS hash key:
86:5d:11:56:bd:6f:20:38:3b:f8:bb:df:00:3a:b0:24:95:9f:f9:f4:25:a3:01:3e:4a:15:d6:7c:4d:af:39:7e:4a:95:f2:fd:f6:b6:26:f7

# ethtool -X $DEV hkey 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
# ethtool -x $DEV | grep key -A1
RSS hash key:
00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00

<Changelog>

  v2: Fix typos (igc_* → igb_*) 

  v1: https://lore.kernel.org/all/20251205082106.4028-5-takkozu@amazon.com/

Takashi Kozu (3):
  Store the RSS key inside struct igb_adapter and introduce the
  igb: expose RSS key via ethtool get_rxfh
  igb: allow configuring RSS key via ethtool set_rxfh

 drivers/net/ethernet/intel/igb/igb.h         |  4 +
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 77 +++++++++++++-------
 drivers/net/ethernet/intel/igb/igb_main.c    |  7 +-
 3 files changed, 58 insertions(+), 30 deletions(-)

-- 
2.52.0

