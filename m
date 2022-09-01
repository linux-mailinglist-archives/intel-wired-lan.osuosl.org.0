Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EBA95A963D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Sep 2022 14:04:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5139D41A56;
	Thu,  1 Sep 2022 12:04:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5139D41A56
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662033888;
	bh=Qf6MPMYlVQCWuP9ftBAp9j1BdhaoY7RqD/JxnKqXV8E=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=cZua2PLoRAt/9StgYYUh0HX/rap+9LcdQjVF/1+OUhiWlaqpvuiCU/n2VA5ZgzLxh
	 rNrtZftkLsj5i2I+LX9nUNbozWwmHnFXJFe1A2/HsmWinSgxsmd+vJKufRjYilrGqQ
	 vZ8X4gbzEurO3ce3vzSvwDYRrry7wZlv41z6sLRXHqIKzz+cBSAK1sACGfXCzI2T+d
	 1u4jvwa7rx8bts2FjX0fnY5qK3iIG3arYA3pTU6rd4x01DT4Vtud6a8rMEn/htEEkU
	 DBc8wxIrzBl0yb+mrH0/Dwe231sNHPbp/0wdfP69vRlL1K/OCvuJ2DAA09xzO2FWvF
	 8NECISzzYegNg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wmKJ_EtHFOOf; Thu,  1 Sep 2022 12:04:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 011F041A54;
	Thu,  1 Sep 2022 12:04:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 011F041A54
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AE2191BF338
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 12:04:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8745E60C25
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 12:04:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8745E60C25
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8UgOGdXW5KLP for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Sep 2022 12:04:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B662160BE4
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B662160BE4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 12:04:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="293274352"
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="293274352"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 05:04:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="608532252"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga007.jf.intel.com with ESMTP; 01 Sep 2022 05:04:35 -0700
Received: from switcheroo.igk.intel.com (switcheroo.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 281C4XRg024211; Thu, 1 Sep 2022 13:04:33 +0100
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: netdev@vger.kernel.org
Date: Thu,  1 Sep 2022 14:01:26 +0200
Message-Id: <20220901120131.1373568-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662033880; x=1693569880;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1VZETW+lYPSSAj1gPR1ChU5vmyR8Mqu/SV+ocHcR0WQ=;
 b=AYbeoyA847hWh5avT+W3QkSzwL0YGr1VJBZHqkkYVQc9xD4tm3v+Zkux
 DfblC1Dwsd2uK6mS0coYwpuElHzH+xDEJUdvViQyS8LRC9eJ8EBa+V6W/
 YzH9HKOE4FR69wwJjEpFKD2nyJdrGngMhagrJLDzY9xLSTmNIAt7EUPPw
 Oy6mLLgfqfN2Vvi3rgyM67Z2hnDup1nQiz+AtlK9m6ba/1s/5r6A2m/Kq
 RK5x21k89t6XaaeEqRNSKYzevxtv5YYLWnkymQBOybZWQ5GhEFYoplKdl
 NzMbOIsv5Iv+ogSjsG0uiIz5LbXYaE4JoR7h05NnCuTebQVuX5moSiirJ
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AYbeoyA8
Subject: [Intel-wired-lan] [RFC PATCH net-next v3 0/5] ice: L2TPv3 offload
 support
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
Cc: simon.horman@corigine.com, kurt@linutronix.de, komachi.yoshiki@gmail.com,
 jchapman@katalix.com, edumazet@google.com, boris.sukholitko@broadcom.com,
 louis.peens@corigine.com, gnault@redhat.com, intel-wired-lan@lists.osuosl.org,
 vladbu@nvidia.com, kuba@kernel.org, pabeni@redhat.com, pablo@netfilter.org,
 baowen.zheng@corigine.com, maksym.glubokiy@plvision.eu, jiri@resnulli.us,
 paulb@nvidia.com, jhs@mojatatu.com, xiyou.wangcong@gmail.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add support for dissecting L2TPv3 session id in flow dissector. Add support
for this field in tc-flower and support offloading L2TPv3. Finally, add
support for hardware offload of L2TPv3 packets based on session id in
switchdev mode in ice driver.

Example filter:
  # tc filter add dev $PF1 ingress prio 1 protocol ip \
      flower \
        ip_proto l2tp \
        l2tpv3_sid 1234 \
        skip_sw \
      action mirred egress redirect dev $VF1_PR

Changes in iproute2 are required to use the new fields.

ICE COMMS DDP package is required to create a filter in ice.
COMMS DDP package contains profiles of more advanced protocols.
Without COMMS DDP package hw offload will not work, however
sw offload will still work.

v2: rebase
v3: refactor of __skb_flow_dissect_l2tpv3

Marcin Szycik (1):
  ice: Add L2TPv3 hardware offload support

Wojciech Drewek (4):
  uapi: move IPPROTO_L2TP to in.h
  flow_dissector: Add L2TPv3 dissectors
  net/sched: flower: Add L2TPv3 filter
  flow_offload: Introduce flow_match_l2tpv3

 .../ethernet/intel/ice/ice_protocol_type.h    |  8 +++
 drivers/net/ethernet/intel/ice/ice_switch.c   | 70 ++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   | 27 ++++++-
 drivers/net/ethernet/intel/ice/ice_tc_lib.h   |  6 ++
 include/net/flow_dissector.h                  |  9 +++
 include/net/flow_offload.h                    |  6 ++
 include/uapi/linux/in.h                       |  2 +
 include/uapi/linux/l2tp.h                     |  2 -
 include/uapi/linux/pkt_cls.h                  |  2 +
 net/core/flow_dissector.c                     | 28 ++++++++
 net/core/flow_offload.c                       |  7 ++
 net/sched/cls_flower.c                        | 16 +++++
 12 files changed, 179 insertions(+), 4 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
