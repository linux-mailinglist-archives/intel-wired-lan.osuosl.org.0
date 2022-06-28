Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA44755C0AD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Jun 2022 13:29:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 36D9740AC7;
	Tue, 28 Jun 2022 11:29:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 36D9740AC7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656415792;
	bh=l2du7iVEeQHsULXPtd/FT5KK4Ocz+nwySmfqTLpwqRU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=BDsJfi04aWP2hRO7Ts2n6xM0N8GeyF1OTT21jhvmQTo/4djakqJPy9KDc83MUhLfV
	 1oEn7pMb+fN4XQ2CJAPghTikIdHdcxkjCPVF6EM8oDddk6oTQIC6CEnGNRuRhGTwsP
	 DsInLvCYM2dRVNdCsqe5uXgtkOaTyZJPJF+lYKfZr1U5gZBlrIzTcJZUXa0NiOGaWM
	 yP1Alhs2euzDZmtU8yecJtrai9uNqdcaBDCjj69awDd3V/JmeL8FuBRKX3jB6qXHd6
	 WENewobGmB8mE1wR5qSimtdptkKEWpTgnNbfLHCOEUDTcA1BMhn5sPT3f99w/TsS4N
	 qXfTjnvR2iBdg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YSMilxUTBCGO; Tue, 28 Jun 2022 11:29:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0EB8D400BF;
	Tue, 28 Jun 2022 11:29:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0EB8D400BF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5577D1BF3E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 11:29:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2E12340981
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 11:29:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E12340981
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JoDCEZJWhOcr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jun 2022 11:29:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EAA4B4097A
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EAA4B4097A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 11:29:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="307195655"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="307195655"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 04:29:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="717410484"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga004.jf.intel.com with ESMTP; 28 Jun 2022 04:29:39 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 25SBTb6X005664; Tue, 28 Jun 2022 12:29:37 +0100
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Date: Tue, 28 Jun 2022 13:29:14 +0200
Message-Id: <20220628112918.11296-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656415784; x=1687951784;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=p0JG3n5Au+TKpOHZ+YY1D3ctHRkoR8Vz5eq5RdEoDFQ=;
 b=Y+euDVf01C1+pSHVIwicFStvDOKKSuNo9LzleSInXKSTox2loy5ITUOD
 R9NVonmZXkriEyjupSrrroo5E21Na+shYQkEFVqCpA9pzLPgk3HmUDTWo
 YvHmTfxQv9y7xkvrYvh7Z/Ha+NDBwgcmcgLeURK5y8N9oue8Z6/CiChNi
 mRYjTK8+/TfvB1QKP5WzEsO3aHTCM8iAVZFhXfNHjmhwJqCfbUyswOGI6
 EgbIgiqebHifCRAAHW/MlFi6JUEaqNt/SIWcjBGVeJlzSQrEsv7y9Hofn
 7++frj40Z0MFMM02gNPIXDruAHfD78k+7XySv1lVkXPgWr+YLnFvmgHal
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y+euDVf0
Subject: [Intel-wired-lan] [RFC PATCH net-next v2 0/4] ice: PPPoE offload
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
Cc: simon.horman@corigine.com, kurt@linutronix.de, paulb@nvidia.com,
 edumazet@google.com, boris.sukholitko@broadcom.com, jiri@resnulli.us,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 zhangkaiheb@126.com, pablo@netfilter.org, baowen.zheng@corigine.com,
 komachi.yoshiki@gmail.com, jhs@mojatatu.com, xiyou.wangcong@gmail.com,
 pabeni@redhat.com, gustavoars@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add support for dissecting PPPoE and PPP-specific fields in flow dissector:
PPPoE session id and PPP protocol type. Add support for those fields in
tc-flower and support offloading PPPoE. Finally, add support for hardware
offload of PPPoE packets in switchdev mode in ice driver.

Example filter:
tc filter add dev $PF1 ingress protocol ppp_ses prio 1 flower pppoe_sid \
    1234 ppp_proto ip skip_sw action mirred egress redirect dev $VF1_PR

Changes in iproute2 are required to use the new fields (will be submitted
soon).

ICE COMMS DDP package is required to create a filter in ice.

Note: currently matching on vlan + PPPoE fields is not supported. Patch [0]
will add this feature.

[0] https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20220420210048.5809-1-martyna.szapar-mudlaw@intel.com

v2: cosmetic changes

Marcin Szycik (1):
  ice: Add support for PPPoE hardware offload

Wojciech Drewek (3):
  flow_dissector: Add PPPoE dissectors
  net/sched: flower: Add PPPoE filter
  flow_offload: Introduce flow_match_pppoe

 drivers/net/ethernet/intel/ice/ice.h          |   1 +
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |   5 +-
 .../ethernet/intel/ice/ice_protocol_type.h    |  11 ++
 drivers/net/ethernet/intel/ice/ice_switch.c   | 165 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   |  95 ++++++++--
 drivers/net/ethernet/intel/ice/ice_tc_lib.h   |   8 +
 include/net/flow_dissector.h                  |  11 ++
 include/net/flow_offload.h                    |   6 +
 include/uapi/linux/pkt_cls.h                  |   3 +
 net/core/flow_dissector.c                     |  51 +++++-
 net/core/flow_offload.c                       |   7 +
 net/sched/cls_flower.c                        |  46 +++++
 12 files changed, 392 insertions(+), 17 deletions(-)

-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
