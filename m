Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F89CA8713
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Dec 2025 17:56:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E37746F1F1;
	Fri,  5 Dec 2025 16:56:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hfG93MLY9zld; Fri,  5 Dec 2025 16:56:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C7656EB4D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764953764;
	bh=XqPo7JqIZstKgaZBPJXpgD+PM4FvGVfp1OcbLWfUjhc=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=tGhGevmy2UocG2YmCdP49w8lFeSjfo68jWLkZzEGRT+WpxYAlMi5F9+934snWzQHj
	 6ZNaF6VisFy5qrphP5lfrFFfUGAzClAaplHi9kb4D6kTxSwCufbIaPfxYK3N3DPLWC
	 ZrgCtuMgOZM/qnsY5FVdjVTHoHjMOZawn+Nx9el/Czc1iA0aga3TJEUV9sAHHO3o7L
	 omeCxeAj49EKvlDJxmM02ueCSyPefgSNo6Lhmdq8QJsUBaVw4Ic7XLj9Pi3rmggy+S
	 BRd/razD6oK4wDA4n3uXeUZR9k7HF30G2FtRl9v7yihc9kl960k7LGGRGOsCgF/b28
	 DQbqLMN9D6IGQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4C7656EB4D;
	Fri,  5 Dec 2025 16:56:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4BC41E7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 08:21:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3231884965
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 08:21:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 05mm1lHT9Aiw for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Dec 2025 08:21:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=35.162.73.231;
 helo=pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=427ee495b=takkozu@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3BF1F84964
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3BF1F84964
Received: from pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [35.162.73.231])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3BF1F84964
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 08:21:42 +0000 (UTC)
X-CSE-ConnectionGUID: h2cvQgZdTWafkj+4Keik8A==
X-CSE-MsgGUID: qCruteymSn227fEsSi1OsQ==
X-IronPort-AV: E=Sophos;i="6.20,251,1758585600"; 
   d="scan'208";a="8296611"
Received: from ip-10-5-0-115.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.0.115])
 by internal-pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Dec 2025 08:21:39 +0000
Received: from EX19MTAUWB002.ant.amazon.com [205.251.233.111:5620]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.51.201:2525]
 with esmtp (Farcaster)
 id c5622195-c63c-435f-bacf-adb027ae4b96; Fri, 5 Dec 2025 08:21:39 +0000 (UTC)
X-Farcaster-Flow-ID: c5622195-c63c-435f-bacf-adb027ae4b96
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWB002.ant.amazon.com (10.250.64.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.29;
 Fri, 5 Dec 2025 08:21:39 +0000
Received: from 603e5f7bc1fe.amazon.com (10.37.244.13) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.29;
 Fri, 5 Dec 2025 08:21:37 +0000
From: Takashi Kozu <takkozu@amazon.com>
To: <anthony.l.nguyen@intel.com>
CC: <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, Takashi Kozu <takkozu@amazon.com>
Date: Fri, 5 Dec 2025 17:21:04 +0900
Message-ID: <20251205082106.4028-5-takkozu@amazon.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.244.13]
X-ClientProxiedBy: EX19D039UWB001.ant.amazon.com (10.13.138.119) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Approved-At: Fri, 05 Dec 2025 16:56:02 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1764922903; x=1796458903;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XqPo7JqIZstKgaZBPJXpgD+PM4FvGVfp1OcbLWfUjhc=;
 b=EqgkzmlNmLP6mXnLBInQroOxdUuGOjecK277xXaZukB7NU85EuvEZz4V
 g3p7eQfvNvrrzDDnhG/dbx1WwaHvbDffitThsXtSaebdq0211GsXWzEw0
 uAN3ztn/d2CfTlxgQthqj03eMGvYnruoovYmZnQWb5nJ60ue4QiA+aR2F
 n9tbXXHtqi11p+qNqWQvshHFiNUeJtAGz6+uuYQ0WbaeHG1YF7/vYRHH6
 uAz0r5FeZQ9wWJqarzGoLsSLACJmlCxzdEWiyErfysv4oq9vilxBI0qjS
 JcJQ3KDWf8pkuKIcNp6oB+D0S+wFnv9mn4jw3CuK+X8VDoLEmh99SrSSv
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=EqgkzmlN
Subject: [Intel-wired-lan] [PATCH iwl-next v1 0/3] igb: add RSS key get/set
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

Takashi Kozu (3):
  Store the RSS key inside struct igb_adapter and introduce the
  igb: expose RSS key via ethtool get_rxfh
  igb: allow configuring RSS key via ethtool set_rxfh

 drivers/net/ethernet/intel/igb/igb.h         |  4 +
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 77 +++++++++++++-------
 drivers/net/ethernet/intel/igb/igb_main.c    |  7 +-
 3 files changed, 58 insertions(+), 30 deletions(-)

-- 
2.51.1

