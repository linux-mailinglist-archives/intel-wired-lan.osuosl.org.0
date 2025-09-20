Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C33DB8C0E5
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 Sep 2025 08:39:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B43180E8B;
	Sat, 20 Sep 2025 06:39:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mFrhoQMUppms; Sat, 20 Sep 2025 06:39:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD9D880E95
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758350380;
	bh=DngEYkk0WyVFKbicUZyC/M+tZZLP+BY1LCYPHMJq73U=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Tz6DHtE2rdTl8Hg1OUaAwzEJrKaci+bkv5i289zjrhQ5gMpUhW/gTBsmQYaBxGAjE
	 P5ICFYS0v1jS57557jAkN3N/3H+ZKGZwAUrtFZ8wjHbFNSKoOrEtrgLMNQP1TPlc3M
	 wSdkpPT5A393Fm36IaMbgPVcyjLvfHchW5Rrpaf5bLOQhuhfLKiSbe25L0CjJTXdc8
	 CpjK/f3B17sOtG61sjqcBFCbd341wiq2TEiaeKfKnFGuDDQhmgWm+ZhNbUIBEbuRF4
	 hP8lyw0WufHGniUNscRRAUobIwTDx56H2m0iWkDykFQhGA3pUke0TUCwHNKM7A95Jc
	 A802xODbeIx+Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BD9D880E95;
	Sat, 20 Sep 2025 06:39:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7F5B1E7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Sep 2025 06:39:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7CC2680E7B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Sep 2025 06:39:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A4eP6na43WvV for <intel-wired-lan@lists.osuosl.org>;
 Sat, 20 Sep 2025 06:39:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=35.162.73.231;
 helo=pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=351c65b72=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6F09C80E6A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F09C80E6A
Received: from pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [35.162.73.231])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6F09C80E6A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Sep 2025 06:39:38 +0000 (UTC)
X-CSE-ConnectionGUID: f9AUeRKFQkGo3mwCVwDdmQ==
X-CSE-MsgGUID: z25lp9b7Tl21LO8ckHVrdw==
X-IronPort-AV: E=Sophos;i="6.18,280,1751241600"; 
   d="scan'208";a="3221644"
Received: from ip-10-5-9-48.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.9.48])
 by internal-pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Sep 2025 06:39:35 +0000
Received: from EX19MTAUWB001.ant.amazon.com [10.0.38.20:62830]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.11.168:2525]
 with esmtp (Farcaster)
 id 95a0804d-cf77-41a1-a611-af3935ecb572; Sat, 20 Sep 2025 06:39:35 +0000 (UTC)
X-Farcaster-Flow-ID: 95a0804d-cf77-41a1-a611-af3935ecb572
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWB001.ant.amazon.com (10.250.64.248) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Sat, 20 Sep 2025 06:39:35 +0000
Received: from b0be8375a521.amazon.com (10.37.245.7) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Sat, 20 Sep 2025 06:39:33 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Vitaly Lifshits
 <vitaly.lifshits@intel.com>, <aleksandr.loktionov@intel.com>,
 <kohei.enju@gmail.com>, Kohei Enju <enjuk@amazon.com>
Date: Sat, 20 Sep 2025 15:39:18 +0900
Message-ID: <20250920063923.31468-1-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.245.7]
X-ClientProxiedBy: EX19D041UWA002.ant.amazon.com (10.13.139.121) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1758350378; x=1789886378;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DngEYkk0WyVFKbicUZyC/M+tZZLP+BY1LCYPHMJq73U=;
 b=GLHJ6dt7g664qc4B1C2lZcT7RCidtVNa3LlHFfgbvdU+tnFvc/d3QKIm
 rIA+++QfXTs1B5UABH0zaXyRNcGAy97j8yF9qgLeUzRnNpOjz0bhcA9K8
 MhhnOf7084YibfxghbujrVZtgWACR4S/AOUohRJNb6LXblGBa5/ikKPeR
 pjvMMYzPQA3fV8mmN0Cc7fSlTjweyzOVpjZnwyI/+mfZ97/KFARfSlbMO
 cp6hiwo/2Ziqeh6TKY6qsgP8vSgtz50qMO1kG2/I0+6g1M+XHdVsFfO73
 pOLD15846VoYQaE44wprriatu+ONy99heWtWYnlrFwlp/5K0r92eXnhLM
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=GLHJ6dt7
Subject: [Intel-wired-lan] [PATCH v2 iwl-net] igc: power up the PHY before
 the link test
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

The current implementation of the igc driver doesn't power up the PHY
before the link test in igc_ethtool_diag_test(), causing the link test
to always report FAIL when admin state is down and the PHY is
consequently powered down.

To test the link state regardless of admin state, power up the PHY
before the link test in the offline test path. After the link test, the
original PHY state is restored by igc_reset(), so additional code which
explicitly restores the original state is not necessary.

Note that this change is applied only for the offline test path. This is
because in the online path we shouldn't interrupt normal networking
operation and powering up the PHY and restoring the original state would
interrupt that.

This implementation also uses igc_power_up_phy_copper() without checking
the media type, since igc devices are currently only copper devices and
the function is called in other places without checking the media type.

Furthermore, the powering up is on a best-effort basis, that is, we
don't handle failures of powering up (e.g. bus error) and just let the
test report FAIL.

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
Changes:
v1->v2:
  - rephrase commit message to clarify:
    - applied only for offline test path
    - original power state is restored by igc_reset()
    - powering up the PHY is on a best-effort basis
v1: https://lore.kernel.org/intel-wired-lan/20250830170656.61496-1-enjuk@amazon.com/
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
