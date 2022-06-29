Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AF458560347
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jun 2022 16:40:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4050383F9C;
	Wed, 29 Jun 2022 14:40:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4050383F9C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656513634;
	bh=CtmwHkOVPr95LwRCiE7mDcEmjBjm2A1M8qN2JdJZiT4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=CVH94NF0LkQEQpLPDe6jpa+Yv1rmif9TC84OiOP2LdwJ2yAmr69IyFI6Sd2ZrKtUl
	 jmRAtOjxT2XHhkVbIwTT8YtkUiw4fJNIgGfAtlB3avzXaprPkDNLiQVFWnTH8dHSYQ
	 piDmgO6OgcM4i2EMtD/hRtqbtGbJDYsRgTK1VkiQzPZCq5kGMc5jTX61y4k95Q+qp/
	 ky+BL9fb+v/oZg3sgBXI9yrt1a0pw1Uq/NF2QeYl6g6SnP/mt/brNXxlGxH4pmUnHg
	 wOSj/7YtwbpkwwYHeIDdYMS4do5SihSHyD2NA/W+MM/VEZq2tAX5qar0vvWY1xu+Ux
	 9RSKnb6ST3IIQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rYssTjDn-pxY; Wed, 29 Jun 2022 14:40:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 17E8C840B6;
	Wed, 29 Jun 2022 14:40:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 17E8C840B6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9FAAF1BF28F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 14:40:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 797AC83F9C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 14:40:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 797AC83F9C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GczmtiUoQgCC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Jun 2022 14:40:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 32FAB8400D
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 32FAB8400D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 14:40:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10392"; a="261845748"
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="261845748"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 07:40:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="680529634"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by FMSMGA003.fm.intel.com with ESMTP; 29 Jun 2022 07:40:21 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 25TEeJ3X022901; Wed, 29 Jun 2022 15:40:19 +0100
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Date: Wed, 29 Jun 2022 16:38:55 +0200
Message-Id: <20220629143859.209028-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656513626; x=1688049626;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=o3+KChBf4+3ZJMDHGT08ONBg+wKGFRjSPMoH4qjIIkM=;
 b=APj4n4Vjqq8bu+5+iP93bW2ubd/8pCi485XqmlRVi2cuoMrZJDqvXw3B
 NMl+CFJNUfcrJWg1zdOvp95Ia0F0w9efba+t7BXkCBYuMwyjxaPrDPPvU
 ceg8SKzpCkDkiGJQFkEwAbxICMF3xHvXg3zpDK4X5rr068r2l9CnIufa3
 irnxgK2XpvMf43cfjrKypJ9I6+YwCdALMcem5gd8++pRFHPFdC8Oa7hF0
 ajcM15BVvJyCUlEmBfYuVMHSAKEJ/PQdlzR5owRigSKBk14H8jEDd77wD
 RoUHxolX9QeYd2KVkMgujORIqBsIRgVlAa7WZhJ2iIIEGvKYtR4dKrWgD
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=APj4n4Vj
Subject: [Intel-wired-lan] [RFC PATCH net-next v3 0/4] ice: PPPoE offload
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

Note: currently matching on vlan + PPPoE fields is not supported. Patch [0]
will add this feature.

[0] https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20220420210048.5809-1-martyna.szapar-mudlaw@intel.com

v3: revert byte order changes in is_ppp_proto_supported from previous
    version, add kernel-doc for is_ppp_proto_supported, add more CC
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
 net/core/flow_dissector.c                     |  55 +++++-
 net/core/flow_offload.c                       |   7 +
 net/sched/cls_flower.c                        |  46 +++++
 12 files changed, 396 insertions(+), 17 deletions(-)

-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
