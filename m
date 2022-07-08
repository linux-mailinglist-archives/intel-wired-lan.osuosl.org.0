Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F84656B996
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Jul 2022 14:25:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 37B21847B6;
	Fri,  8 Jul 2022 12:25:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 37B21847B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657283104;
	bh=a3phCgJlyU7d1y4B9Uun+hhdnihrXQ+KeY2Q8ono2aE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=kA26jvYHqOuIOn37XbhQhdR/SuQPFyYNzLFf4A7qDWv3W2U1qSwv9aRCGKNfJEQrT
	 29XmGzQkjeWmtDoYtgKWO+15gmmQuuPIKornOA6qFYZp1ymQfFkxQ0smhjxh2dmFDF
	 LDY1lx131OvzYwhGr+KvqJidAewJ/exZ4A+jC60Rv+1yrnvwkv7b7E5MIfN1EzDcxa
	 jHmSd0YQo7zW/rGfpSrEBW7+dEr78lFnc84QipP3TWIn50E7bQNajo4W2j0+kg8WrQ
	 BQQ9A70S7/yBCwum00mgYn1AfjmyqCKnmHTTohe82MCGlY23/TlkSUbzgdegDizPL6
	 +CNJRLfKssVJQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ES_ufi3z-A9w; Fri,  8 Jul 2022 12:25:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B1DF847B5;
	Fri,  8 Jul 2022 12:25:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B1DF847B5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EEB481BF32A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jul 2022 12:24:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C7B0640494
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jul 2022 12:24:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C7B0640494
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e1TPxIdgwB_x for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Jul 2022 12:24:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 16FAD4014C
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 16FAD4014C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jul 2022 12:24:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="285010634"
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="285010634"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 05:24:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="626690550"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga001.jf.intel.com with ESMTP; 08 Jul 2022 05:24:51 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 268COncY014111; Fri, 8 Jul 2022 13:24:49 +0100
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Date: Fri,  8 Jul 2022 14:24:17 +0200
Message-Id: <20220708122421.19309-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657283097; x=1688819097;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QoY4frX9pDEHOXtqopiLvr0uO54PNTdpZFPrw6NlCSQ=;
 b=gKOKqxlFcfIOTJCz1+BGZ01DjIsazmT0T8UCkBk1dPPaImZuRPb0kuUE
 8BuPDnQ2zsIUSVZ1iFBkB1A4EGP1BLP5rney7j1GV6jZJBP8nH0VLylKq
 QpCYZoUwagJ5L8nO2I2zGt3PS+mEOht6YyjyzMdP02EE5SCDXZ/ZFrbNd
 8Wfbkbw5JILCMCcHnQCCwG/TWDvgYbogAftIZAviVJ0dalPnHnO3yGNTM
 Ky3Giw810y9Q174+idMjYQ3+tLqJ6jaW7jLSCOfbSRiFYEXACCpmWloEb
 vbIuwx5AzcXDJPiuSMRMqhdu02sayiPMHRzBRNAv9tJeyWhGWt3LFF9ad
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gKOKqxlF
Subject: [Intel-wired-lan] [RFC PATCH net-next v4 0/4] ice: PPPoE offload
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
 paulus@samba.org, gnault@redhat.com, jesse.brandeburg@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, zhangkaiheb@126.com,
 pablo@netfilter.org, baowen.zheng@corigine.com, komachi.yoshiki@gmail.com,
 jhs@mojatatu.com, mostrows@earthlink.net, xiyou.wangcong@gmail.com,
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

v4:
  * PPPoE header validation
  * added MPLS support
  * added support for compressed PPP protocol field
  * flow_dissector_key_pppoe::session_id stored in __be16
  * new field: flow_dissector_key_pppoe::type
  * always add an ethtype lookup if PPP/PPPoE options are provided (to
    prevent setting incorrect ethtype)
  * rebase
v3:
  * revert byte order changes in is_ppp_proto_supported from previous
    version
  * add kernel-doc for is_ppp_proto_supported
  * add more CC
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
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   |  71 +++++++-
 drivers/net/ethernet/intel/ice/ice_tc_lib.h   |   8 +
 include/net/flow_dissector.h                  |  13 ++
 include/net/flow_offload.h                    |   6 +
 include/uapi/linux/pkt_cls.h                  |   3 +
 net/core/flow_dissector.c                     |  84 ++++++++-
 net/core/flow_offload.c                       |   7 +
 net/sched/cls_flower.c                        |  61 +++++++
 12 files changed, 426 insertions(+), 9 deletions(-)

-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
