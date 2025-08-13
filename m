Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E6AB24337
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Aug 2025 09:52:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B7756817B0;
	Wed, 13 Aug 2025 07:52:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id isx-hrCRI6zc; Wed, 13 Aug 2025 07:52:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 231F28174F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755071542;
	bh=9mYqUdh8+4WOrSA0/b4w7nz2P7jBkHZ0NDF86QchptE=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=YlzHGSWy/nzxZ2d2M5dMjgNsL0mhdOxYv2MR8i2RF6vncQH9GU3r+EuL2rrLTl2MC
	 hTNCGn1ckyI9pj2oe9jm22wLlWnS3w6teDmnLtFaqdsro+2Eo5EChrvegCkWa52ayv
	 m3/nwGHLKMicgChmSfZoCG6ZhTqkQCrW3l5ujcCBU8rH43/qsmeWbI17a3x71lMtt2
	 NvedLa4ASJ/nygAvIXdjvqzkLOGNKVEa+EFo9VN0Am1YlZip3dRAS0KypZ2zK9/6ms
	 TRsXCK/jQfYwZ2z55RZcCo+e9SPPgJ6j5NzsNXE1s77o1iff+u8FyOloqHD+BnTtJK
	 A/T7vmx4qjmTQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 231F28174F;
	Wed, 13 Aug 2025 07:52:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 948411B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 07:52:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7ADDF60707
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 07:52:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K6dGNxLuJaUe for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Aug 2025 07:52:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=35.155.198.111;
 helo=pdx-out-009.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=31388b11e=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F236260703
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F236260703
Received: from pdx-out-009.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-009.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [35.155.198.111])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F236260703
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 07:52:19 +0000 (UTC)
X-CSE-ConnectionGUID: OE1E8bnWRoKCaUqkm5WiKw==
X-CSE-MsgGUID: /oe6bVl4R4qVJMGsyY5R6g==
X-IronPort-AV: E=Sophos;i="6.17,285,1747699200"; 
   d="scan'208";a="987739"
Received: from ip-10-5-12-219.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.12.219])
 by internal-pdx-out-009.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Aug 2025 07:52:17 +0000
Received: from EX19MTAUWB002.ant.amazon.com [10.0.7.35:41088]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.16.146:2525]
 with esmtp (Farcaster)
 id 7b0c3d88-72a3-4bf1-923c-d4a238488dc3; Wed, 13 Aug 2025 07:52:17 +0000 (UTC)
X-Farcaster-Flow-ID: 7b0c3d88-72a3-4bf1-923c-d4a238488dc3
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWB002.ant.amazon.com (10.250.64.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Wed, 13 Aug 2025 07:52:17 +0000
Received: from b0be8375a521.amazon.com (10.37.244.11) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.17;
 Wed, 13 Aug 2025 07:52:15 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <kohei.enju@gmail.com>, Kohei Enju <enjuk@amazon.com>
Date: Wed, 13 Aug 2025 16:50:49 +0900
Message-ID: <20250813075206.70114-1-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.244.11]
X-ClientProxiedBy: EX19D038UWB002.ant.amazon.com (10.13.139.185) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1755071539; x=1786607539;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9mYqUdh8+4WOrSA0/b4w7nz2P7jBkHZ0NDF86QchptE=;
 b=l33lw2t4zPDefXT805ha9S3EheTJ2Djpse8y+1GmhE5iyiKBIjJlc31J
 l5b5dm57ih1L8GUZxr/+Fkqc9QqtZbACBcYOHIGigIyj0nfOSTjOeX0V4
 6rCMgzreXlgtlx5H50fgbEJHBMfTVnv002T3HVY8Zp+8x6EMoc9WnE6zn
 kxXhvA7pKuK2AiU5bvm019AJwgSydhvZveTTNn7ewot4YIdN2p3UZE2IX
 CpsucqtWEP8Imr0s6RoUx3R8tYQuCY7Ly3jNi8H+/mz0Hc1BGskuDH9BA
 BLsRVm4Ue6bNYZIOFzelp+q5d2dry+lvSKGapg2QSPgy0coVSeyr/RGZ5
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=l33lw2t4
Subject: [Intel-wired-lan] [PATCH v1 iwl-next 0/2] igbvf: ethtool statistics
 improvements
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

This series contains:
1. Add missing lbtx_packets and lbtx_bytes counters that are available
in hardware but not exposed via ethtool
2. Remove rx_long_byte_count counter that shows the same value as
rx_bytes

Tested on Intel Corporation I350 Gigabit Network Connection.

Kohei Enju (2):
  igbvf: add lbtx_packets and lbtx_bytes to ethtool statistics
  igbvf: remove duplicated counter rx_long_byte_count from ethtool
    statistics

 drivers/net/ethernet/intel/igbvf/ethtool.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

-- 
2.48.1

