Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E62357626F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Jul 2022 15:05:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 77D7384EE9;
	Fri, 15 Jul 2022 13:05:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 77D7384EE9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657890310;
	bh=SgEEp4/75LFccphDZJQrW402nYqHJydze5AXl5J+RWE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=583LFt5uSrmi8FaYrrU88LPm0DbErp8qYJyzIhC+tiWxgtdB5RhSj9JUCNcGUwZj/
	 OzFRCpXAbz0NUML6mBZ+zLPVEzRcLpKEgP76ZItK/X12xPZNib/DW5158lJCzdDYiQ
	 d5kG/EnTU0Q8caMtuoOSQg/OYXwrkRHBSG3Ot7MMH8xLSkVER294upIE3DQs8J5WVd
	 sS9B7945ynbv0d7Ca4j1xyMyOKuWv0KqVAqTJL7HyBZQ0/THI/2dZrWfxMlmIfjjPM
	 f3A6six7fLmKabX8IRu2j2PwmGCGy0etQprpY5gULSzO0qXS/gj+9lOPR2HQJsxdWE
	 mxwofwpXbWeCw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 26wsa7ykWqAd; Fri, 15 Jul 2022 13:05:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 61F6684B23;
	Fri, 15 Jul 2022 13:05:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 61F6684B23
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9935C1BF30D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jul 2022 13:05:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 716C060B0A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jul 2022 13:05:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 716C060B0A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sU5cXC3EijCn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Jul 2022 13:05:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9FFB960B18
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9FFB960B18
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jul 2022 13:05:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10408"; a="286527744"
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="286527744"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2022 06:05:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="600489618"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga007.fm.intel.com with ESMTP; 15 Jul 2022 06:04:57 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 26FD4tXK013793; Fri, 15 Jul 2022 14:04:55 +0100
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Date: Fri, 15 Jul 2022 15:04:26 +0200
Message-Id: <20220715130430.160029-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657890303; x=1689426303;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5vNuiax7PnFW6vFk7c1tktuDD1nUBAqUy/yn8ZhC6bI=;
 b=SKdF0SqYr6hVxd8lsBXkYZJ+agMVM+ZpnjqdgAAlZnjONwKwrNymH0ss
 U2M04+0nn9QeGkzLgh5egEDhD7qiyjMgvXpakbwN7fIaN1ZRecdbwCeFP
 aGXVUxjHI90jApuDcJBvwUsSZSZszEz2T/aM5/dCmCr70eaTYlLFQXFFh
 I0+7VupBE2gaguoOqm1VSOmSyQY6t1b38sA3ty/zly7IEDjgrpV658Pyn
 JduS/eZymM4CjTg9FNKMqe/M/TF9YbdfcEDRNyWJj/ZKvmZR8yp65tTcy
 AVGaag6FKpS4pN4IXp0NDB61o5l7G/dOQG2r4safkVhHM+J5NxJ1W6t6i
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SKdF0SqY
Subject: [Intel-wired-lan] [RFC PATCH net-next v5 0/4] ice: PPPoE offload
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
 jhs@mojatatu.com, xiyou.wangcong@gmail.com, pabeni@redhat.com,
 gustavoars@kernel.org, mostrows@speakeasy.net, davem@davemloft.net
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

v5: fix endianness when processing compressed protocols
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
 net/core/flow_dissector.c                     |  85 ++++++++-
 net/core/flow_offload.c                       |   7 +
 net/sched/cls_flower.c                        |  61 +++++++
 12 files changed, 427 insertions(+), 9 deletions(-)

-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
