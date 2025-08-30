Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A49B2B3CDC9
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 Aug 2025 19:07:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C7B97607BE;
	Sat, 30 Aug 2025 17:07:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 22MjjlP6xVsV; Sat, 30 Aug 2025 17:07:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 300A9607C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756573635;
	bh=vtoHwbnjMYaKkuefkVMlJvs69QCPincUUUT1mwg3QrU=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=kniS4SRoVeXOuC1KFzJGChebawb8cF8XwxRiPGVqVi78qNL282YZI/DPa+Q0Wqahg
	 MHLeOnHPQEJAnoUwH+9kTgo7BZsceNL+7S/wWSOv3UdcEQrApIGM757/blf3WHIqkw
	 Rlr6gy0n2PUo2KWeKxeDmUGvT9tAnu7HCAfzl0aXuvVblqRlICDDbk4GhwSc+PRuh8
	 Y8zSrIPw6OtQkiK2xOCRntf8jIoSOxULl8el1212/+1gPpK3k7UY75NaDJBqnvmUhp
	 J4nRaUeN2qrs22Ngaldu+vVEovG97XjZH39n4n2u+gefRw6s/zPDuTtOY3LiuS8zg7
	 odAkll4dyYpcA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 300A9607C0;
	Sat, 30 Aug 2025 17:07:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3843269
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Aug 2025 17:07:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 306B860619
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Aug 2025 17:07:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zjlCAkos_Slo for <intel-wired-lan@lists.osuosl.org>;
 Sat, 30 Aug 2025 17:07:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=50.112.246.219;
 helo=pdx-out-015.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=3304d371e=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 806CF60610
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 806CF60610
Received: from pdx-out-015.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-015.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [50.112.246.219])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 806CF60610
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Aug 2025 17:07:13 +0000 (UTC)
X-CSE-ConnectionGUID: bAQNkEFQSbyErR0aiQQYcg==
X-CSE-MsgGUID: YnHDzTZTRXWeWZSoEZ8kmA==
X-IronPort-AV: E=Sophos;i="6.18,225,1751241600"; 
   d="scan'208";a="1976103"
Received: from ip-10-5-9-48.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.9.48])
 by internal-pdx-out-015.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Aug 2025 17:07:11 +0000
Received: from EX19MTAUWB001.ant.amazon.com [10.0.38.20:61962]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.28.142:2525]
 with esmtp (Farcaster)
 id 702d1bac-376b-4f8e-b9ff-04c77493302d; Sat, 30 Aug 2025 17:07:11 +0000 (UTC)
X-Farcaster-Flow-ID: 702d1bac-376b-4f8e-b9ff-04c77493302d
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWB001.ant.amazon.com (10.250.64.248) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.17;
 Sat, 30 Aug 2025 17:07:10 +0000
Received: from b0be8375a521.amazon.com (10.37.245.7) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Sat, 30 Aug 2025 17:07:08 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Vitaly Lifshits
 <vitaly.lifshits@intel.com>, <kohei.enju@gmail.com>, Kohei Enju
 <enjuk@amazon.com>
Date: Sun, 31 Aug 2025 02:06:19 +0900
Message-ID: <20250830170656.61496-1-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.245.7]
X-ClientProxiedBy: EX19D031UWC001.ant.amazon.com (10.13.139.241) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1756573633; x=1788109633;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vtoHwbnjMYaKkuefkVMlJvs69QCPincUUUT1mwg3QrU=;
 b=OXR6x/+xc7aEuouicjdl7B378R3zm0phESHOpYJzhjhBWrazUCH6+oWZ
 MuE+hwhp097ikCYc2pOqPh44gQpjGZvgwcXL5rT2t/nkuwlCPziyTr08H
 LPl5r2WI4Jddd9eZFXIwHPKX0XFbSSr9KR+yNfU1+ZpBIFSxavj2ibJHq
 e4imuo8CeK90TMXvKDvwiEsFFeLmp2u/aWNXEJDoIPoQ73vtnVh0tneVB
 QoOJIYUc9ysKq9YrJrq20WwOXrGQdusb16YzVa5woTuDM0VmtI7sKV8Vq
 xCbFLUJhC00FBIuAfIFlu0NxrjxDsTpPLl2P6ReKSvOUxO98WWuq2Qp8m
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=OXR6x/+x
Subject: [Intel-wired-lan] [PATCH v1 iwl-net] igc: power up PHY before link
 test
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

The current implementation of igc driver doesn't power up PHY before
link test in igc_ethtool_diag_test(), causing the link test to always
report FAIL when admin state is down and PHY is consequently powered
down.

To test the link state regardless of admin state, let's power up PHY in
case of PHY down before link test.

Tested on Intel Corporation Ethernet Controller I226-V (rev 04) with
cable connected and link available.

Set device down and do ethtool test.
  # ip link set dev enp0s5 down

Without patch:
  # ethtool --test enp0s5
  The test result is FAIL
  The test extra info:
  Register test  (offline)         0
  Eeprom test    (offline)         0
  Interrupt test (offline)         0
  Loopback test  (offline)         0
  Link test   (on/offline)         1

With patch:
  # ethtool --test enp0s5
  The test result is PASS
  The test extra info:
  Register test  (offline)         0
  Eeprom test    (offline)         0
  Interrupt test (offline)         0
  Loopback test  (offline)         0
  Link test   (on/offline)         0

Fixes: f026d8ca2904 ("igc: add support to eeprom, registers and link self-tests")
Signed-off-by: Kohei Enju <enjuk@amazon.com>
---
This patch uses igc_power_up_phy_copper() instead of igc_power_up_link()
to avoid PHY reset. The function only clears MII_CR_POWER_DOWN bit
without performing PHY reset, so it should not cause the autoneg
interference issue explained in the following comment:
    /* Link test performed before hardware reset so autoneg doesn't
     * interfere with test result
     */
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index f3e7218ba6f3..ca93629b1d3a 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -2094,6 +2094,9 @@ static void igc_ethtool_diag_test(struct net_device *netdev,
 		netdev_info(adapter->netdev, "Offline testing starting");
 		set_bit(__IGC_TESTING, &adapter->state);
 
+		/* power up PHY for link test */
+		igc_power_up_phy_copper(&adapter->hw);
+
 		/* Link test performed before hardware reset so autoneg doesn't
 		 * interfere with test result
 		 */
-- 
2.48.1

