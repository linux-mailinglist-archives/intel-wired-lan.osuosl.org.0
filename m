Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6D55A465C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Aug 2022 11:47:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D03F4088F;
	Mon, 29 Aug 2022 09:47:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8D03F4088F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661766455;
	bh=uafuSB7t1iHYDDlIw5WxJrAyM2X6VxJkp9f5hlmNyAQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ZEikz6hyjE5hcRJygUa7iusk5y5PwNHp6hquZ1GYuEuRg93qhxl2seqkDbJtjdAU+
	 2Yeqjf5MG4+gJrQEynacN72TzPbepcy1ZpzjSuehyAisnzLkJQBrTXrHFDqlUSk6qF
	 B2e45paBzNx+xkC7A7SVaUr2CrS7q6QNuxxtM7lFiJfkLrBNgOcedc9kmfKMEhK6uK
	 g9M87A72ZDlAwoN8J+k8Egd8WnK/HqFz68llS54OzOrlM2b0iIE7itQ6NnaPLnd4sz
	 GgulX9lHZBLG+iyRDNUUGMVPL+Yza/JDGr7MhDwKPnExTCFqxEHYlPxE4X+iB/k8bv
	 3s0jj3CCZ46EQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UJQKmgxbi0dh; Mon, 29 Aug 2022 09:47:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 346B84087A;
	Mon, 29 Aug 2022 09:47:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 346B84087A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 00C8B1BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Aug 2022 09:47:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CF12D82974
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Aug 2022 09:47:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF12D82974
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P3UVrH1Mwcuy for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Aug 2022 09:47:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D126182FE7
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D126182FE7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Aug 2022 09:47:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10453"; a="277870055"
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="277870055"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 02:47:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="607397962"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga007.jf.intel.com with ESMTP; 29 Aug 2022 02:47:22 -0700
Received: from switcheroo.igk.intel.com (switcheroo.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 27T9lK8d021475; Mon, 29 Aug 2022 10:47:20 +0100
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: netdev@vger.kernel.org
Date: Mon, 29 Aug 2022 11:44:07 +0200
Message-Id: <20220829094412.554018-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661766449; x=1693302449;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EPtlX6EM1eW9HL7W3h+VCUGWIBUjNVtJCzuBn9atU0U=;
 b=eggAjq/gfk4UXXUSvIIMuBv+dCUfo0xHk7B+e3lygncvzULtoJmwLmEG
 K704xjMD5YU7hNdoESP9fbh7kZZwQIEqa/srAZBedV+KcCtGen0DAZCPj
 Fp5ivix/t/X3VhCp/5EztYWJgieF4h9w2avZCz72rCqNNwhpluSw7rHb0
 azdIbvyC18fClSOA7w4MK+N4YBxGFyiEaVtnmnx2Ogh2VukzS/8llXCXk
 7JvJfdI69Va0dV9H/q8I7wyXmBmpAykazFLzq/EJ18crnxnnvfCcf0dVu
 XnlzksBmPSKYTvWEIFvnc4ywFhHbuHVJH8+AugDNyBXVaHNlTutyiOY9/
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eggAjq/g
Subject: [Intel-wired-lan] [RFC PATCH net-next v2 0/5] ice: L2TPv3 offload
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
