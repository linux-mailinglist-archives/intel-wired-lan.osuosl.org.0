Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 98753CB5542
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Dec 2025 10:17:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1D60084CCA;
	Thu, 11 Dec 2025 09:17:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K_c7jPz7eSZq; Thu, 11 Dec 2025 09:17:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1DF5184D41
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765444622;
	bh=uNg4F6k/RPBTY81QVwC0LvyuJ4LEYcF026qfDZof6vc=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=huz/6Ws4ScHZ8XmfMqNW2htDku0uIYGqa+f1+GiFYTR01YfHDDr97Ounooae8KHOC
	 Z49Bk6mGxyLZSFFzrkROVCfgydbCqNzEIEA6GLL2iPCktvzlQIOt9srNdiPrFaRE41
	 ilRaOA76K1ipDOAijncfKO8UJqWM0ExILRPXkNj9vmZn5qEsqJBghHUAgs+L2Lq9q0
	 1kvqHi6e93LIz9ZKcSsgrX7DrW+i5PSig5W4jtTbH2p81oPXeS9lkdVlj/DrTYZlxM
	 YN+vSfN5D29Cx6pkmQO+9xcOMy5BHFtEgEQCi6DrVRezQiCJsSLaivZCAIAbuBxoyX
	 cgWhou3s9z5ig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1DF5184D41;
	Thu, 11 Dec 2025 09:17:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 54EA32E9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 09:17:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 180BC408FD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 09:16:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BvIwEACYRSBm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Dec 2025 09:16:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=50.112.246.219;
 helo=pdx-out-015.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=43358fca2=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2982B408CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2982B408CE
Received: from pdx-out-015.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-015.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [50.112.246.219])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2982B408CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 09:16:56 +0000 (UTC)
X-CSE-ConnectionGUID: QlD+MqTGRSK10CPQW1szGw==
X-CSE-MsgGUID: rhJr8kBrQL6HS8tWaynf+w==
X-IronPort-AV: E=Sophos;i="6.20,265,1758585600"; 
   d="scan'208";a="8701028"
Received: from ip-10-5-12-219.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.12.219])
 by internal-pdx-out-015.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Dec 2025 09:16:54 +0000
Received: from EX19MTAUWC002.ant.amazon.com [205.251.233.51:32106]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.59.230:2525]
 with esmtp (Farcaster)
 id 02d555f5-35a8-4aa8-b756-0cb42fc2d65d; Thu, 11 Dec 2025 09:16:53 +0000 (UTC)
X-Farcaster-Flow-ID: 02d555f5-35a8-4aa8-b756-0cb42fc2d65d
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWC002.ant.amazon.com (10.250.64.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.29;
 Thu, 11 Dec 2025 09:16:53 +0000
Received: from b0be8375a521.amazon.com (10.37.245.7) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.29;
 Thu, 11 Dec 2025 09:16:51 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Jedrzej
 Jagielski" <jedrzej.jagielski@intel.com>, Stefan Wegrzyn
 <stefan.wegrzyn@intel.com>, Simon Horman <horms@kernel.org>, Jacob Keller
 <jacob.e.keller@intel.com>, <kohei@enjuk.org>, Kohei Enju <enjuk@amazon.com>
Date: Thu, 11 Dec 2025 18:15:30 +0900
Message-ID: <20251211091636.57722-1-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.245.7]
X-ClientProxiedBy: EX19D040UWB002.ant.amazon.com (10.13.138.89) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1765444617; x=1796980617;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uNg4F6k/RPBTY81QVwC0LvyuJ4LEYcF026qfDZof6vc=;
 b=tPk7FuiU4VdXXIuqSLc72Yk9IQB09sB2g9Q6wBBl2f6EoGaWYa4SSJ0P
 M26bALVnHCO49vgMeewMq5mZVDns2xgf6nvJSfva2gj83iNl8qC/WX5eG
 1YuiPkZaB/nuolpeX1yR/6K3vvTcKBwgMLJ+rRQ8EsGFhIw0f2wgrhahk
 HgHhz5SVeNHzVU10Wit41+H0OqQKFQL+EGk+9qBNXwFwhQhJ9E2OnFDUw
 ETBeUa2xOLyRzDXUD7LaRRMDrnXW6oi9qdVb1H+6kd+ex1vOMVdXDeBgL
 Xi+CHrUAhTN66bp1VlVGuadcnbAjJZz+jB0526IOl/Izhl1darD7XCvth
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=tPk7FuiU
Subject: [Intel-wired-lan] [PATCH iwl-net v2 0/2] ixgbe: fix issues around
 ixgbe_recovery_probe()
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

ixgbe_recovery_probe() and codes around this function have two bugs:
1. resource freeing up is not complete, resulting in memory leaks
2. mutex lock (hw->aci.lock) is initialized twice

Fix these issues.

Changes:
  v2:
    - let ixgbe_probe() to clean up, instead of ixgbe_recovery_probe()
    - don't initialize aci lock twice
  v1: https://lore.kernel.org/intel-wired-lan/20251206155146.95857-1-enjuk@amazon.com/

Kohei Enju (2):
  ixgbe: fix memory leaks in the ixgbe_recovery_probe() path
  ixgbe: don't initialize aci lock in ixgbe_recovery_probe()

 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 26 +++++++------------
 1 file changed, 10 insertions(+), 16 deletions(-)

-- 
2.52.0

