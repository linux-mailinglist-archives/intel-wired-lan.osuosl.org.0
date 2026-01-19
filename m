Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD29D3A1F6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jan 2026 09:45:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 03E7F60B8C;
	Mon, 19 Jan 2026 08:45:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D9IZT8u-oR-u; Mon, 19 Jan 2026 08:45:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5127160B8D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768812341;
	bh=m6JmUUKk0HTARz9c+4hGfaS02e7Ca3f+gSvgSBa28ns=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=3EpOCnhV0+NB9lec3s8cX/ljlGyQx1pkhkB+ee3Y20fexXvWyFrKPwwp0VzdgDT1X
	 /nTZ31V20If+Imz8bhAmzU3ugYW9pVfjyPwsI43zhAA63gYuxAV2XxirRaUjnJghdr
	 98rTHkHurxiVRQtRVi+3JhzWjH9H3oujNNjvXhyGaJN53/ZuKO+nksCG1p1ljtewzx
	 Ol+v0DYBHO06d3elwMv8Y/JDpsJW7qmQwTHS/Z7/IeUPKIHVE84O+DwHE/u1+uplSe
	 K0GgLXREyzelSpGsISo9KI0UM3Oszb6xW+ZFC/EmgVAkT9vzRy5XzDN9Tr+ky+uDmV
	 1hBmgvYf8pOAg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5127160B8D;
	Mon, 19 Jan 2026 08:45:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 549532A8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 08:45:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 425AA81298
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 08:45:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ug-DCmePSsO3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jan 2026 08:45:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=44.246.68.102;
 helo=pdx-out-003.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=472495a9d=takkozu@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 696C8811A6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 696C8811A6
Received: from pdx-out-003.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-003.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [44.246.68.102])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 696C8811A6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 08:45:38 +0000 (UTC)
X-CSE-ConnectionGUID: V9Qlg45FQN+EEUnoYnS2wQ==
X-CSE-MsgGUID: g8COJbzoQfeUUmqTbo2o6Q==
X-IronPort-AV: E=Sophos;i="6.21,237,1763424000"; d="scan'208";a="11116669"
Received: from ip-10-5-0-115.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.0.115])
 by internal-pdx-out-003.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Jan 2026 08:45:35 +0000
Received: from EX19MTAUWA002.ant.amazon.com [205.251.233.234:13357]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.27.220:2525]
 with esmtp (Farcaster)
 id ccab0b88-a479-47a8-9391-42f0ea8bc247; Mon, 19 Jan 2026 08:45:34 +0000 (UTC)
X-Farcaster-Flow-ID: ccab0b88-a479-47a8-9391-42f0ea8bc247
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWA002.ant.amazon.com (10.250.64.202) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.35;
 Mon, 19 Jan 2026 08:45:32 +0000
Received: from 603e5f7bc1fe.amazon.com (10.37.245.10) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.35;
 Mon, 19 Jan 2026 08:45:30 +0000
From: Takashi Kozu <takkozu@amazon.com>
To: <anthony.l.nguyen@intel.com>
CC: <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <aleksandr.loktionov@intel.com>,
 <pmenzel@molgen.mpg.de>, <piotr.kwapulinski@intel.com>, Takashi Kozu
 <takkozu@amazon.com>
Date: Mon, 19 Jan 2026 17:45:04 +0900
Message-ID: <20260119084511.95287-5-takkozu@amazon.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.37.245.10]
X-ClientProxiedBy: EX19D045UWC003.ant.amazon.com (10.13.139.198) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1768812338; x=1800348338;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=m6JmUUKk0HTARz9c+4hGfaS02e7Ca3f+gSvgSBa28ns=;
 b=nkdNVZrr0mW2Tqn8dl+uaCaBmduQ3a3osBqtWh+ZXwlxx+7CXQrQmV6L
 1tPYAiKXw3cKWH7u6Y5XPz46jg36649WiiS80jC7xcw3Nvn7AWHyHqzUl
 a2CgimXe1H/DD+rK9xxs6elUPSWRMdL2q2RNglQZp9n9YnZpIq2YfqbJD
 DziWNu+BIfTX/3Hvd15WLQNINTdaCTRVtzaZV57kQroZL4Z8zx5ZH/V5X
 mFaQOZmOpSELdLtWbHaRL2y04Cy7xAtg7pjMqXOLJYJ+2GbI77S4zHvAn
 U3n0Vvim1rLK7077OUIsbKAuc2CgPJA/0kfr2gMRErXMCDS1D6gzmRpIK
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=nkdNVZrr
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/3] igb: add RSS key get/set
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

  v3: 
      - add ASSERT_RTNL() to explicitly show that an rtnl lock is being used
      - Move netdev_rss_key_fill() function from igb_setup_mrqc() to igb_sw_init()
      - Add kernel-doc header to igb_write_rss_key()

      <Test>
      - tools/testing/selftests/drivers/net/hw/rss_api.py is successful
      Run the following command

      # NETIF=enp0s3 python tools/testing/selftests/drivers/net/hw/rss_api.py | grep -v "# Exception" 

      Then, I checked the diffs before and after applying the patch

      $ diff beforePatch.txt afterPatch.txt 
      9c9
      < not ok 6 rss_api.test_rxfh_nl_set_key
      ---
      > ok 6 rss_api.test_rxfh_nl_set_key
      16c16
      < # Totals: pass:4 fail:8 xfail:0 xpass:0 skip:0 error:0
      ---
      > # Totals: pass:5 fail:7 xfail:0 xpass:0 skip:0 error:0

      The failing tests originally fails due to hardware.

      - tools/testing/selftests/drivers/net/hw/toeplitz.py is untested since there is no actual hardware, but since the logic around wr32() is preserved as it is, key writing to the device remain the same.
      

  v2: Fix typos (igc_* → igb_*) 
      https://lore.kernel.org/intel-wired-lan/20260108052020.84218-5-takkozu@amazon.com/T/

  v1: https://lore.kernel.org/all/20251205082106.4028-5-takkozu@amazon.com/


Takashi Kozu (3):
  igb: prepare for RSS key get/set support
  igb: expose RSS key via ethtool get_rxfh
  igb: allow configuring RSS key via ethtool set_rxfh

 drivers/net/ethernet/intel/igb/igb.h         |  4 +
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 86 ++++++++++++++------
 drivers/net/ethernet/intel/igb/igb_main.c    |  9 +-
 3 files changed, 69 insertions(+), 30 deletions(-)

-- 
2.52.0

