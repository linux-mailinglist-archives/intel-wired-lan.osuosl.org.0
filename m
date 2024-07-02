Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A020791EDA8
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jul 2024 06:12:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 58C5F60AF4;
	Tue,  2 Jul 2024 04:12:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 69ZTFScGqviv; Tue,  2 Jul 2024 04:12:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A5671607AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719893522;
	bh=j9KpTb3Lb8CNCpQnD2X9IjOSp8M8+8VBgByk+17X140=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=y+KDdNREjo4iIbl9D+BgSryeP4g5xqsoI66SsiQsDwtvViwPx/x5yNap2NybBfzRv
	 fF4ADHfHTmwRLY6u87zA+twB0jCfWEXb4TU8rCSwK50EYqpniVpmUC/bCPGNusOLSF
	 uFZ7ntLN5tWrV6PpeLZ65Z8izJsNsnkN9N3m5092J52US1WbbGE3x2/V+sRNxFZZSP
	 sfsHgLhNmMTiZ3chEfu5ToLd3TNpYAbZfYI/FLpaNXt6jm41Hvcz9hF7JXpeUXgfV1
	 +IALuGhaxIJIwHKfcH6S6/RWQK8nEkQnJIERniDU1nZsE1JH+6izvAQ2At0Pxe+Q2X
	 5wQ+K0y3BPt9A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A5671607AB;
	Tue,  2 Jul 2024 04:12:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 85D4A1BF32E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 04:12:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 806FF60A48
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 04:12:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UIC6JiVHLw3Y for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2024 04:11:59 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9C11760AE8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C11760AE8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9C11760AE8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 04:11:59 +0000 (UTC)
X-CSE-ConnectionGUID: An5dKmctQfCOV8Lr2qz6QQ==
X-CSE-MsgGUID: k5qFTA5wQs+5MYvYstuHgg==
X-IronPort-AV: E=McAfee;i="6700,10204,11120"; a="20916521"
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="20916521"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2024 21:11:59 -0700
X-CSE-ConnectionGUID: 013kFb9YRG6E1dNdSTzwNw==
X-CSE-MsgGUID: EMJIRaMTTNijTvRFkaUmcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="50959324"
Received: from linux.intel.com ([10.54.29.200])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2024 21:11:59 -0700
Received: from mohdfai2-iLBPG12-1.png.intel.com
 (mohdfai2-iLBPG12-1.png.intel.com [10.88.227.73])
 by linux.intel.com (Postfix) with ESMTP id 7B6C1201A797;
 Mon,  1 Jul 2024 21:11:56 -0700 (PDT)
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Tue,  2 Jul 2024 00:09:26 -0400
Message-Id: <20240702040926.3327530-5-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240702040926.3327530-1-faizal.abdul.rahim@linux.intel.com>
References: <20240702040926.3327530-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719893519; x=1751429519;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6DF+Tg08u2ZMCkSK6BU/n5CzYxotLfqWDSV6lDu1oZo=;
 b=YkuWZ/S5mGDmunJNAvcSzwr/H/n7/WkF1sLagFukJIjAfIz6IWhl3Y4T
 EWxKXVsLIQGDxqToqdEhz5k1QO6ebgYZe4+aSYSXhYe2458/kwqGHBDHd
 R+CHI4aqoEF9AJA7+gwc2XHF1sFppyRLtE1c+lwxdlPp3jN2wYdpWJ/t2
 qOxUr+hebeObfBU352b2GNzbcCijoOwjQKRpm8OYOQZmFZuGcJuDSgIVO
 W4Hde8wUuyeH/cpZfPnU2ozSCYhlJYKJaiWief01WRZM4b/g/Um7HA5sj
 jzIevg1PIS6w9r4UmClnJM1uDLvGYcJP4U3mF3v8XWIa6xZZoL+XBgc45
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YkuWZ/S5
Subject: [Intel-wired-lan] [PATCH iwl-net v1 4/4] igc: Fix qbv tx latency by
 setting gtxoffset
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

A large tx latency issue was discovered during testing when only QBV was
enabled. The issue occurs because gtxoffset was not set when QBV is
active, it was only set when launch time is active.

The patch "igc: Correct the launchtime offset" only sets gtxoffset when
the launchtime_enable field is set by the user. Enabling launchtime_enable
ultimately sets the register IGC_TXQCTL_QUEUE_MODE_LAUNCHT (referred to as
LaunchT in the SW user manual).

Section 7.5.2.6 of the IGC i225/6 SW User Manual Rev 1.2.4 states:
"The latency between transmission scheduling (launch time) and the
time the packet is transmitted to the network is listed in Table 7-61."

However, the patch misinterprets the phrase "launch time" in that section
by assuming it specifically refers to the LaunchT register, whereas it
actually denotes the generic term for when a packet is released from the
internal buffer to the MAC transmit logic.

This launch time, as per that section, also implicitly refers to the QBV
gate open time, where a packet waits in the buffer for the QBV gate to
open. Therefore, latency applies whenever QBV is in use. TSN features such
as QBU and QAV reuse QBV, making the latency universal to TSN features.

Discussed with i226 HW owner (Shalev, Avi) and we were in agreement that
the term "launch time" used in Section 7.5.2.6 is not clear and can be
easily misinterpreted. Avi will update this section to:
"When TQAVCTRL.TRANSMIT_MODE = TSN, the latency between transmission
scheduling and the time the packet is transmitted to the network is listed
in Table 7-61."

Fix this issue by using igc_tsn_is_tx_mode_in_tsn() as a condition to
write to gtxoffset, aligning with the newly updated SW User Manual.

Tested:
1. Enrol taprio on talker board
   base-time 0
   cycle-time 1000000
   flags 0x2
   index 0 cmd S gatemask 0x1 interval1
   index 0 cmd S gatemask 0x1 interval2

   Note:
   interval1 = interval for a 64 bytes packet to go through
   interval2 = cycle-time - interval1

2. Take tcpdump on listener board

3. Use udp tai app on talker to send packets to listener

4. Check the timestamp on listener via wireshark

Test Result:
100 Mbps: 113 ~193 ns
1000 Mbps: 52 ~ 84 ns
2500 Mbps: 95 ~ 223 ns

Note that the test result is similar to the patch "igc: Correct the
launchtime offset".

Fixes: 790835fcc0cb ("igc: Correct the launchtime offset")
Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc_tsn.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index 26dbe3442ad1..e95502fc844b 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -61,7 +61,7 @@ void igc_tsn_adjust_txtime_offset(struct igc_adapter *adapter)
 	struct igc_hw *hw = &adapter->hw;
 	u16 txoffset;
 
-	if (!is_any_launchtime(adapter))
+	if (!igc_tsn_is_tx_mode_in_tsn(adapter))
 		return;
 
 	switch (adapter->link_speed) {
-- 
2.25.1

