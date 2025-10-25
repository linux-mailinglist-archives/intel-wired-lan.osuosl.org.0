Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 58987C09256
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Oct 2025 17:01:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BCB9D40893;
	Sat, 25 Oct 2025 15:01:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NHdY4YHuLPe4; Sat, 25 Oct 2025 15:01:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3650C40895
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761404517;
	bh=6rH7qvf1RZBkjVdwkDlcJfm9sBHxPRv2fdKfMYL++g0=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=bt3jSwhDhyKPLdvOZzv0vPE1gji7MDx2eAQYirYGs4rJP7q1EOOiN7KUwyL2HfumF
	 Uq0RRZNHrn4Mk41ZXc6AVF04JB3HSgnpEtD9TvWMY1GeMl7DeSOTCFPpC4/uR9QI+B
	 dv46y5pfgoUsGpMEQwyhRguVXvwXP2A+LA/iMXEYarh/HLsXfzR0kePdUsfCNHcI/i
	 /AMwgY+drn9R6Lf75VwPlHUrIHa3aUJzI106vTh33IE8C1yfzNbqx5XRB3Ht9IiNwT
	 NkeeVXmfvQSGEPuJwyVtGq2ApdIn8AZDzWhiFujqXx65uKsspkR8eQNrpQ4hnqhewn
	 HseaSypqRsorA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3650C40895;
	Sat, 25 Oct 2025 15:01:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E157943F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 15:01:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C74D28110E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 15:01:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QnQih64Z4ka3 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Oct 2025 15:01:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=44.245.243.92;
 helo=pdx-out-001.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=3869390cb=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CD44981107
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD44981107
Received: from pdx-out-001.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-001.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [44.245.243.92])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CD44981107
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 15:01:52 +0000 (UTC)
X-CSE-ConnectionGUID: JqhhCBMlSdSNihIDIsM+Zg==
X-CSE-MsgGUID: yD1g/CtZQSyg3bF4O+czxw==
X-IronPort-AV: E=Sophos;i="6.18,281,1751241600"; 
   d="scan'208";a="5710376"
Received: from ip-10-5-6-203.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.6.203])
 by internal-pdx-out-001.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Oct 2025 15:01:50 +0000
Received: from EX19MTAUWA002.ant.amazon.com [205.251.233.234:6857]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.17.61:2525]
 with esmtp (Farcaster)
 id aceeaefd-0e9d-4774-a592-5cce947f4747; Sat, 25 Oct 2025 15:01:50 +0000 (UTC)
X-Farcaster-Flow-ID: aceeaefd-0e9d-4774-a592-5cce947f4747
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWA002.ant.amazon.com (10.250.64.202) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Sat, 25 Oct 2025 15:01:50 +0000
Received: from b0be8375a521.amazon.com (10.37.244.8) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.29;
 Sat, 25 Oct 2025 15:01:47 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <kohei.enju@gmail.com>, Kohei Enju <enjuk@amazon.com>
Date: Sun, 26 Oct 2025 00:01:29 +0900
Message-ID: <20251025150136.47618-1-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.244.8]
X-ClientProxiedBy: EX19D039UWA004.ant.amazon.com (10.13.139.68) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1761404513; x=1792940513;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6rH7qvf1RZBkjVdwkDlcJfm9sBHxPRv2fdKfMYL++g0=;
 b=EdAIcxp/+Lg5BfjI4oQyLBwUoTlZq9Vd5Nwv1zBsEpEkMzSIc0juE+MZ
 04gHcgNxGCetKOx2QZPb0ztbCOPP/fYxSifriG1tkr3UJPPEfnOG71qTv
 5f2qwAFxgWutWnWIDpm1SK4OUOToy9EZH2GyjlK3drawIzFxnsvA0jE2w
 q3dUDsW6Hma3npWHh0N42KALOdg+jhomcF6fcNBNnXwKs21ul4WIVVCyk
 RWFz8Xc8RrtZ1QRtQW370eKcJPdo6hb6v1MtBidgzoszj2cJ1F7nGBbSg
 8A5XMqcZGYBuhclVD+IgG+09eR33r5rWZQOi+4+jWSkXBd+ifrygIPAwk
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=EdAIcxp/
Subject: [Intel-wired-lan] [PATCH iwl-next v1 0/3] igc: add RSS key get/set
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

This series adds ethtool get/set support for the RSS hash key in the igc
driver.
- `ethtool -x <dev>` to display the RSS key
- `ethtool -X <dev> hkey <key>` to configure the RSS key

Without patch:
 # ethtool -x $DEV | grep key -A1
 RSS hash key:
 Operation not supported
 # ethtool -X $DEV hkey be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef
 Cannot set RX flow hash configuration:
  Hash key setting not supported

With patch:
 # ethtool -x $DEV | grep key -A1
 RSS hash key:
 dd:7c:1f:06:1a:42:dc:e5:7e:90:2c:48:aa:3f:5d:5a:d7:da:ec:44:3e:3f:df:78:89:1e:3c:68:2e:59:da:a0:23:5a:32:5c:cf:5e:7e:7b
 # ethtool -X $DEV hkey be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef
 # ethtool -x $DEV | grep key -A1
 RSS hash key:
 be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef

Kohei Enju (3):
  igc: prepare for RSS key get/set support
  igc: expose RSS key via ethtool get_rxfh
  igc: allow configuring RSS key via ethtool set_rxfh

 drivers/net/ethernet/intel/igc/igc.h         |  4 ++
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 60 ++++++++++++++------
 drivers/net/ethernet/intel/igc/igc_main.c    |  7 +--
 3 files changed, 50 insertions(+), 21 deletions(-)

-- 
2.51.0

