Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C908578208
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Jul 2022 14:18:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2622C410A1;
	Mon, 18 Jul 2022 12:18:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2622C410A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658146736;
	bh=LUnqOVL5oZhrfzsSwAMQ7unO9IVuf7nqXXHHbDgWTeU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=sF+m6fsks1jLHVWp0BTcvyNgGJQbrldbMboZUkZnZU4MFV6m9IZAKhK38DpmyWdTV
	 W9rQGWmioo8jE58UWSgSokNJUufDstib8mA+6V7anHi5JeHmjD5UIcVfp7Bq7PmV0N
	 KkTgVk7OBqm86UHjI8XrHSDuVvB4lg1cd5bZv5Z63HCWWYXKsR6dp5cpG7Qt8G5uqP
	 Gj/KUBAPVauvd89WkhWjDZ+bljFtbkTMTXeYFomdgP7LOpvyI++W/sNYSReqBrdNLn
	 52kBVs6Zr9eopCJx0unBVsI2XMEi+szKdkIvNvbsixLKfltnG/dAoQSlUOgGQuoZ3R
	 6FNWjmuTsQUMg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zn2mDajqiwKb; Mon, 18 Jul 2022 12:18:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A674D409F3;
	Mon, 18 Jul 2022 12:18:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A674D409F3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 173A81BF317
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jul 2022 12:18:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E49A5605A6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jul 2022 12:18:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E49A5605A6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aWb9C-PF2MlB for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Jul 2022 12:18:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 311AC600C6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 311AC600C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jul 2022 12:18:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10411"; a="286946708"
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="286946708"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 05:18:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="686716685"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by FMSMGA003.fm.intel.com with ESMTP; 18 Jul 2022 05:18:43 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 26ICIfCs016026; Mon, 18 Jul 2022 13:18:41 +0100
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Date: Mon, 18 Jul 2022 14:18:09 +0200
Message-Id: <20220718121813.159102-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658146729; x=1689682729;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jin3FfNKV7gOhWsaDgpdjF6ySp7J3/uc64WCEix2xwY=;
 b=DzGgXDC94647GRVeDIJ4yfh1Rur8dM0PL3wY/wgsLv9oKAIh3sNzfZuB
 NqX+hGjQ2+okC40VUxoUKLFuBhDspKyVZs4W58ZyV2Ctt5usU0rLTWqNg
 WyoS1HHdlTUGEFcGua3G5z9BDv73NlhLs/OHQ86tzrCmzOta9C+brCx3A
 bm149vtZcHAYIIltdOVpE+0D0GzO6T2o4yXxNzVxyHaIsy9W4/6r42GRW
 bke5PPz8GKhSKZ6+AsSoXfQ2fWMiTs1zSBUe77k3M7W63TsMaDyj7ql6I
 14cXjCD1im5NCb4YqpUBAfmDmtdpxwydzyxqPXKGAhBVGZeu8DGbE88Iw
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DzGgXDC9
Subject: [Intel-wired-lan] [RFC PATCH net-next v6 0/4] ice: PPPoE offload
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

v6:
  * make check for ppp proto more generic
  * fix remaining byte order issues
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
 include/linux/ppp_defs.h                      |  14 ++
 include/net/flow_dissector.h                  |  13 ++
 include/net/flow_offload.h                    |   6 +
 include/uapi/linux/pkt_cls.h                  |   3 +
 net/core/flow_dissector.c                     |  53 +++++-
 net/core/flow_offload.c                       |   7 +
 net/sched/cls_flower.c                        |  64 +++++++
 13 files changed, 412 insertions(+), 9 deletions(-)

-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
