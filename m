Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 593E24BDB2E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Feb 2022 18:19:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E6E4F40912;
	Mon, 21 Feb 2022 17:19:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3Ev_hKuNM85s; Mon, 21 Feb 2022 17:19:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D738F402C1;
	Mon, 21 Feb 2022 17:19:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3CCDA1BF339
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Feb 2022 17:19:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 29B2360D6E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Feb 2022 17:19:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fhyg_9b7subN for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Feb 2022 17:19:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 413076059F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Feb 2022 17:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645463963; x=1676999963;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tUhXvk+LFkLoswi++f9XcpeeaQoJBVXpSjX5dbLbTgU=;
 b=aabvCQ2ADIVcypQf+lsvWcpXO/9Azn4QUipJwQcaIjWV1Fr0xhNKBvmw
 e4AuRNM18i+Fdsn8YN4OeQU9WDXue8sAUyCnY4XTneu9x6cvbPiXuMpQa
 M4K1M72y7O7LGmifI6iMR4iVgsIVFaAaC+GRjT+dUV7AtYQcEsxH3bTi+
 Muc9hi4TpoMHva3lt0h+hSSy+0Ix4rje6MPZkeOWvyn+H60SqHD8LDxhI
 CQuy5Q+h7Sfm0D8FX1ijQ+iceRn8a6VJia1ihxcHJt+7wOQr15JgyCEZk
 E48L6lKBSQseh4g1kzOOpAIFb/+MTVKx5XI3Hcd2WIGAyiac03Zjwvlyu Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="251302746"
X-IronPort-AV: E=Sophos;i="5.88,386,1635231600"; d="scan'208";a="251302746"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 09:19:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,386,1635231600"; d="scan'208";a="490502351"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga003.jf.intel.com with ESMTP; 21 Feb 2022 09:19:12 -0800
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 21LHJBnN010069; Mon, 21 Feb 2022 17:19:11 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Date: Mon, 21 Feb 2022 11:14:18 +0100
Message-Id: <20220221101425.19776-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v7 0/7] ice: GTP support in
 switchdev
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
Cc: jiri@resnulli.us, osmocom-net-gprs@lists.osmocom.org, laforge@gnumonks.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, davem@davemloft.net,
 pablo@netfilter.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add support for adding GTP-C and GTP-U filters in switchdev mode.

To create a filter for GTP, create a GTP-type netdev with ip tool, enable
hardware offload, add qdisc and add a filter in tc:

ip link add $GTP0 type gtp role <sgsn/ggsn> hsize <hsize>
ethtool -K $PF0 hw-tc-offload on
tc qdisc add dev $GTP0 ingress
tc filter add dev $GTP0 ingress prio 1 flower enc_key_id 1337 \
action mirred egress redirect dev $VF1_PR

By default, a filter for GTP-U will be added. To add a filter for GTP-C,
specify enc_dst_port = 2123, e.g.:

tc filter add dev $GTP0 ingress prio 1 flower enc_key_id 1337 \
enc_dst_port 2123 action mirred egress redirect dev $VF1_PR

Note: outer IPv6 offload is not supported yet.
Note: GTP-U with no payload offload is not supported yet.

ICE COMMS package is required to create a filter as it contains GTP
profiles.

Changes in iproute2 [1] are required to be able to add GTP netdev and use
GTP-specific options (QFI and PDU type).

[1] https://lore.kernel.org/netdev/20220211182902.11542-1-wojciech.drewek@intel.com/T
---
v2: Adding more CC
v3: Fixed mail thread, sorry for spam
v4: Added GTP echo response in gtp module
v5: Change patch order
v6: Added GTP echo request in gtp module
v7: Fix kernel-docs in ice

Marcin Szycik (1):
  ice: Support GTP-U and GTP-C offload in switchdev

Michal Swiatkowski (1):
  ice: Fix FV offset searching

Wojciech Drewek (5):
  gtp: Allow to create GTP device without FDs
  gtp: Implement GTP echo response
  gtp: Implement GTP echo request
  net/sched: Allow flower to match on GTP options
  gtp: Add support for checking GTP device type

 drivers/net/ethernet/intel/ice/ice.h          |   1 +
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |  52 +-
 .../net/ethernet/intel/ice/ice_flex_pipe.h    |   2 +-
 .../net/ethernet/intel/ice/ice_flex_type.h    |   6 +-
 .../ethernet/intel/ice/ice_protocol_type.h    |  19 +
 drivers/net/ethernet/intel/ice/ice_switch.c   | 630 +++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_switch.h   |   9 +
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   | 105 ++-
 drivers/net/ethernet/intel/ice/ice_tc_lib.h   |   3 +
 drivers/net/gtp.c                             | 661 +++++++++++++++++-
 include/net/gtp.h                             |  42 ++
 include/uapi/linux/gtp.h                      |   2 +
 include/uapi/linux/if_link.h                  |   2 +
 include/uapi/linux/if_tunnel.h                |   4 +-
 include/uapi/linux/pkt_cls.h                  |  15 +
 net/sched/cls_flower.c                        | 116 +++
 16 files changed, 1565 insertions(+), 104 deletions(-)

-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
