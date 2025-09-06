Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 381A8B46959
	for <lists+intel-wired-lan@lfdr.de>; Sat,  6 Sep 2025 07:53:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A591F83E54;
	Sat,  6 Sep 2025 05:52:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SXIGsC0_dCAB; Sat,  6 Sep 2025 05:52:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BE97283E47
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757137977;
	bh=TPc0WkfGfsp6qmcwRcgMulnl8xpARdCh9bvgudyMu7I=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=WKMBZUIWrUof7Az8/cQ6o08S+eWhFbxpVopLF/UzTizJRes3wt5ug+M2ldqzw+hDd
	 BiyrE6E9zWz/tHYNM97InPWl0udSxNPPMiSlkcYIE06UTGLyN3j+PEdfe80LBh5+fa
	 5GiiJjoZ1U9GCi5KhjF7PlkOuwYtfjbVS4hAXquPb+6BpsAeG0VYg6h/7WiAAQm9nF
	 mF8crOWZ2VywiJXXt0La5Cr3zG2sa0mGz/cs41YIOP1k7KOr/P0H/rJxUpR+klnaTi
	 aEp9gzB3GwaYBUGzECOd0Ryas4sExuhMpgJg2j+zMzonPjNUp15VOLuxR9WV4+lKaI
	 2zmcta8XOm9ig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BE97283E47;
	Sat,  6 Sep 2025 05:52:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 97493E0E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Sep 2025 05:52:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7CA516144A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Sep 2025 05:52:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OVnDenRFEfRS for <intel-wired-lan@lists.osuosl.org>;
 Sat,  6 Sep 2025 05:52:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=50.112.246.219;
 helo=pdx-out-015.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=3374551b6=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 80A0661383
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 80A0661383
Received: from pdx-out-015.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-015.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [50.112.246.219])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 80A0661383
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Sep 2025 05:52:54 +0000 (UTC)
X-CSE-ConnectionGUID: 7CPTnwrqRhe41Z9IzYG/jA==
X-CSE-MsgGUID: sWKtFZUuRcCDpJqakPJj5A==
X-IronPort-AV: E=Sophos;i="6.18,243,1751241600"; 
   d="scan'208";a="2404541"
Received: from ip-10-5-0-115.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.0.115])
 by internal-pdx-out-015.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Sep 2025 05:52:52 +0000
Received: from EX19MTAUWB002.ant.amazon.com [10.0.21.151:54514]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.12.13:2525]
 with esmtp (Farcaster)
 id ca8fba9b-da9d-409b-984f-2323c7e6d4ed; Sat, 6 Sep 2025 05:52:51 +0000 (UTC)
X-Farcaster-Flow-ID: ca8fba9b-da9d-409b-984f-2323c7e6d4ed
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWB002.ant.amazon.com (10.250.64.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Sat, 6 Sep 2025 05:52:50 +0000
Received: from b0be8375a521.amazon.com (10.37.244.7) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Sat, 6 Sep 2025 05:52:48 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Kurt Kanzenbach
 <kurt@linutronix.de>, <kohei.enju@gmail.com>, Kohei Enju <enjuk@amazon.com>
Date: Sat, 6 Sep 2025 14:51:30 +0900
Message-ID: <20250906055239.29396-1-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.244.7]
X-ClientProxiedBy: EX19D036UWB001.ant.amazon.com (10.13.139.133) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1757137974; x=1788673974;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TPc0WkfGfsp6qmcwRcgMulnl8xpARdCh9bvgudyMu7I=;
 b=qznqnojgOMhW3126OWzJELpOcQfltQPaGv7FPNigZm/ehu6Ett3kBKVJ
 L5ytOqdBAiZJkjixnq8+xZ1qZvaDAyfBCuQkYzquMbWwUQdAZ07y5rWdR
 hu1fnskjI4nP/FIDzekoYGdKi1lBgoUqYGmacULTov1YjiUgc8VltgKNW
 b9H/R2BFnVrOzDy3EWMlXrvc0QTcszdhnxqcYDum6sFrA4yTDHN5W76PE
 KzDCgSV2+my6Td0LYGmCJ0U78JnfsYLAmWNQNEw1vgaosqd8Oqu7aIb+s
 14FQA6sDvelfcXon4AWJUIv7zjcfOs1VHp46iRjamDD11hUE1GqVBqIDQ
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=qznqnojg
Subject: [Intel-wired-lan] [PATCH v1 iwl-net] igc: unregister netdev when
 igc_led_setup() fails in igc_probe()
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

Currently igc_probe() doesn't unregister netdev when igc_led_setup()
fails, causing BUG_ON() in free_netdev() and then kernel panics. [1]

This behavior can be tested using fault-injection framework. I used the
failslab feature to test the issue. [2]

Call unregister_netdev() when igc_led_setup() fails to avoid the kernel
panic.

[1]
 kernel BUG at net/core/dev.c:12047!
 Oops: invalid opcode: 0000 [#1] SMP NOPTI
 CPU: 0 UID: 0 PID: 937 Comm: repro-igc-led-e Not tainted 6.17.0-rc4-enjuk-tnguy-00865-gc4940196ab02 #64 PREEMPT(voluntary)
 Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2 04/01/2014
 RIP: 0010:free_netdev+0x278/0x2b0
 [...]
 Call Trace:
  <TASK>
  igc_probe+0x370/0x910
  local_pci_probe+0x3a/0x80
  pci_device_probe+0xd1/0x200
 [...]

[2]
 #!/bin/bash -ex

 FAILSLAB_PATH=/sys/kernel/debug/failslab/
 DEVICE=0000:00:05.0
 START_ADDR=$(grep " igc_led_setup" /proc/kallsyms \
         | awk '{printf("0x%s", $1)}')
 END_ADDR=$(printf "0x%x" $((START_ADDR + 0x100)))

 echo $START_ADDR > $FAILSLAB_PATH/require-start
 echo $END_ADDR > $FAILSLAB_PATH/require-end
 echo 1 > $FAILSLAB_PATH/times
 echo 100 > $FAILSLAB_PATH/probability
 echo N > $FAILSLAB_PATH/ignore-gfp-wait

 echo $DEVICE > /sys/bus/pci/drivers/igc/bind

Fixes: ea578703b03d ("igc: Add support for LEDs on i225/i226")
Signed-off-by: Kohei Enju <enjuk@amazon.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index e79b14d50b24..95c415d0917d 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -7336,11 +7336,13 @@ static int igc_probe(struct pci_dev *pdev,
 	if (IS_ENABLED(CONFIG_IGC_LEDS)) {
 		err = igc_led_setup(adapter);
 		if (err)
-			goto err_register;
+			goto err_led_setup;
 	}
 
 	return 0;
 
+err_led_setup:
+	unregister_netdev(netdev);
 err_register:
 	igc_release_hw_control(adapter);
 	igc_ptp_stop(adapter);
-- 
2.48.1

