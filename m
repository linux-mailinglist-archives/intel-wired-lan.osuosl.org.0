Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cFySBZN/eGkFqQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jan 2026 10:04:19 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF7B91740
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jan 2026 10:04:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6E6DE60F33;
	Tue, 27 Jan 2026 08:54:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wnRb2tncVCNW; Tue, 27 Jan 2026 08:54:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AEE6460F2E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769504071;
	bh=5Vu2GOUUTUkzQBR4MGj91wDX9S48NAbJAlRo+YnFDDU=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=OrFYjYxh+q9L6WGzOFIiH2RO+vFN4xWHp+OMLMjra2eWS5SYSKnZI+Hl2EpErEOMj
	 4T5lhUfCf/iNtLcHN+7PYbUC04tSRCsb4cOWqa0Kx/RCBUgQ3LyGgeKHwGrsR5OJlT
	 wCSnZeCHHkP625NFfnmLBujIhWFGW5JES74WWrXHjuoKyU8r34oH67QoZ5kRm79Akd
	 qT0MCxAfQe6T70nubCl1fbndB7Obo5PeEg20R4LJIqVIK9V6J3MgS5GUCZNuQNJ1H6
	 BCRmg6IDF1YNVsc+2tsjLFhMjYcnQ9qyBTeoKAErBG1HIG76U9ddkye6jWV146GQ6Y
	 wCy2QjXpbsgog==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AEE6460F2E;
	Tue, 27 Jan 2026 08:54:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id BC54C2F4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 08:54:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AC2B980DE5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 08:54:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WMcDSK70WaCl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Jan 2026 08:54:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.42.203.116;
 helo=pdx-out-008.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=4803e00d0=takkozu@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8D0DE80DDB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D0DE80DDB
Received: from pdx-out-008.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-008.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [52.42.203.116])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8D0DE80DDB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 08:54:27 +0000 (UTC)
X-CSE-ConnectionGUID: PKJUmrdeS6mevJl3rA2FPA==
X-CSE-MsgGUID: TajFWLVmQOCONlZAeeyy8A==
X-IronPort-AV: E=Sophos;i="6.21,256,1763424000"; d="scan'208";a="11660345"
Received: from ip-10-5-6-203.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.6.203])
 by internal-pdx-out-008.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2026 08:54:24 +0000
Received: from EX19MTAUWC002.ant.amazon.com [205.251.233.51:26705]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.19.122:2525]
 with esmtp (Farcaster)
 id 8abc2707-6992-48fe-a36f-6b2eefa5c4a0; Tue, 27 Jan 2026 08:54:24 +0000 (UTC)
X-Farcaster-Flow-ID: 8abc2707-6992-48fe-a36f-6b2eefa5c4a0
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWC002.ant.amazon.com (10.250.64.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.35;
 Tue, 27 Jan 2026 08:54:23 +0000
Received: from 603e5f7bc1fe.amazon.com (10.37.245.7) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.35;
 Tue, 27 Jan 2026 08:54:21 +0000
From: Takashi Kozu <takkozu@amazon.com>
To: <anthony.l.nguyen@intel.com>
CC: <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <aleksandr.loktionov@intel.com>,
 <pmenzel@molgen.mpg.de>, <piotr.kwapulinski@intel.com>, <enjuk@amazon.com>,
 Takashi Kozu <takkozu@amazon.com>
Date: Tue, 27 Jan 2026 17:54:07 +0900
Message-ID: <20260127085410.79645-5-takkozu@amazon.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.37.245.7]
X-ClientProxiedBy: EX19D037UWC004.ant.amazon.com (10.13.139.254) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1769504068; x=1801040068;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5Vu2GOUUTUkzQBR4MGj91wDX9S48NAbJAlRo+YnFDDU=;
 b=Hy03BS5BGpdELgCh9ImIpUQfIGoZih4n45VhRzFiF9lsy1ymsRu7BnCT
 cpqnCPWNpwphvlDlPszQTu8q7trLo76gyha4vXNmLBKBS6pOHgkLdVcob
 uNZBGFwNrMFqTBW/L2Ioq3gPMfrkK9AxsGD+8VL4G1tgWFG8ObcrSvu02
 UnjUHhsapZFrEoYvm5UEn8Om1Skx8Qk3YoMmuHFuLiW9g+PJ2RgrJcW/Y
 JHsuc4Bl5zBAInWQdncnszDWQNgVnKdb8vsaSkjfRwtFVAzX6YH+gLAI8
 6bXGo7myDTiYdLQHgdkqjRR3hC2c4pI/vhRk9tPhV/6EcWU6vJY2VgLjv
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=Hy03BS5B
Subject: [Intel-wired-lan] [PATCH iwl-next v5 0/3] igb: add RSS key get/set
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [9.29 / 15.00];
	BLACKLIST_DMARC(6.00)[amazon.com:D:-];
	DMARC_POLICY_QUARANTINE(1.50)[amazon.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:pmenzel@molgen.mpg.de,m:piotr.kwapulinski@intel.com,m:enjuk@amazon.com,m:takkozu@amazon.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	GREYLIST(0.00)[pass,body];
	FORGED_SENDER(0.00)[takkozu@amazon.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[takkozu@amazon.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_XOIP(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[11]
X-Rspamd-Queue-Id: 9DF7B91740
X-Rspamd-Action: add header
X-Spam: Yes

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
  v5:
      - delete 'has_user_rss_key' flag because it's unnecessary. 

  v4: 
      - modify the position of the declaration in the igb_write_rss_key() so that it is at the start of the block.

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

 drivers/net/ethernet/intel/igb/igb.h         |  3 +
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 85 ++++++++++++++------
 drivers/net/ethernet/intel/igb/igb_main.c    |  8 +-
 3 files changed, 66 insertions(+), 30 deletions(-)

-- 
2.52.0

