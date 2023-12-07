Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D701808DC1
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Dec 2023 17:48:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B62B183D16;
	Thu,  7 Dec 2023 16:48:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B62B183D16
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701967723;
	bh=oh+oiGMDu7fgC+xvCDwSbTbg1Ileln7geolFccdmPsM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=872L/nPRs9qwrMVMmIMb1sbsN36MPutfJDIWTxGN8tQs+3xZKyof91NhG4RuvjIDZ
	 4ijnNbO4S72x7qh1zJGw/iU7qqyfZvw9OX8eiAnmTi2R2VOppwktJuWHI6Ha9GGtWy
	 RADiFsM5G83fAlIVScdqeZCFfDfB7ZSzvSEQAQlcb4vPPpVwA47FNfuC7QNMllyksL
	 eerhX6PBcepnLk3pzCS6J6A7GgyhXN7/qTyUZNrR7iHBqgEYwLRipQezbb4BzyfrNw
	 tOtfKiJzrO7ZOBLyKi+Ru/sXkWLHabkrdYVxc7R/F6vju7N3EfqIWNvYtbRtdD+a87
	 FTS01oohjRNLQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 55DfQlwtm41e; Thu,  7 Dec 2023 16:48:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4005783C80;
	Thu,  7 Dec 2023 16:48:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4005783C80
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 26B931BF5B3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 16:48:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EF070420F6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 16:48:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF070420F6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bOm-sssB5BNr for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Dec 2023 16:48:36 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CB5D141FB1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 16:48:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB5D141FB1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="373759520"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="373759520"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 08:48:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="775477318"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="775477318"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga007.fm.intel.com with ESMTP; 07 Dec 2023 08:48:31 -0800
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 55EF935421;
 Thu,  7 Dec 2023 16:48:29 +0000 (GMT)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 Dec 2023 17:49:04 +0100
Message-ID: <20231207164911.14330-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701967715; x=1733503715;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ai92a1bnHOo9EOrNqsNG9g3WR6dgPWWCudljwSfRnZo=;
 b=dC81DU9nVkJpB35RribD1by74k/uCTWo5/cjxTPMLf+jvoZvcGeG2Gqq
 fSN2o9CpE4sI1VqDN/PG8KbQUT3r4t/ZpKm+MWuqVqohW9EHFT7t/NhzX
 l6icsrllm+d3b0cxAi2YALZiFp00zs+7FPzFwLi06gk1GLcLgC7DBduXZ
 MiyQGKfnepLNcvYGWQ6V2qU9xbctSKvZDRrz2kJqrSH4ioBW07A73rk0v
 HkUFln+/qK4AtK1UzBOFHJB5Qd0MxHvf0ex8IkLu//eKVdh2l5LBAOwZG
 ZwyUbLJ5GER6Tb5Uj5xrAg2Dx8fOiqvs1fCKKTHsBAEzZaUP5IMRR5Mvn
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dC81DU9n
Subject: [Intel-wired-lan] [PATCH iwl-next v4 0/7] Add PFCP filter support
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
Cc: jiri@resnulli.us, andy@kernel.org, wojciech.drewek@intel.com,
 netdev@vger.kernel.org, idosch@nvidia.com, jesse.brandeburg@intel.com,
 aleksander.lobakin@intel.com, Marcin Szycik <marcin.szycik@linux.intel.com>,
 michal.swiatkowski@linux.intel.com, simon.horman@corigine.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add support for creating PFCP filters in switchdev mode. Add pfcp module
that allows to create a PFCP-type netdev. The netdev then can be passed to
tc when creating a filter to indicate that PFCP filter should be created.

To add a PFCP filter, a special netdev must be created and passed to tc
command:

  ip link add pfcp0 type pfcp
  tc filter add dev eth0 ingress prio 1 flower pfcp_opts \
    1:12ab/ff:fffffffffffffff0 skip_hw action mirred egress redirect \
    dev pfcp0

Changes in iproute2 [1] are required to use pfcp_opts in tc.

ICE COMMS package is required as it contains PFCP profiles.

Part of this patchset modifies IP_TUNNEL_*_OPTs, which were previously
stored in a __be16. All possible values have already been used, making it
impossible to add new ones.

[1] https://lore.kernel.org/netdev/20230614091758.11180-1-marcin.szycik@linux.intel.com
---
This patchset should be applied on top of the "boys" tree [2], as it
depends on recent bitmap changes.

[2] https://github.com/norov/linux/commits/boys
---
v3: https://lore.kernel.org/intel-wired-lan/20230721071532.613888-1-marcin.szycik@linux.intel.com
v2: https://lore.kernel.org/intel-wired-lan/20230607112606.15899-1-marcin.szycik@linux.intel.com
v1: https://lore.kernel.org/intel-wired-lan/20230601131929.294667-1-marcin.szycik@linux.intel.com
---

Alexander Lobakin (3):
  ip_tunnel: use a separate struct to store tunnel params in the kernel
  ip_tunnel: convert __be16 tunnel flags to bitmaps
  lib/bitmap: add tests for IP tunnel flags conversion helpers

Marcin Szycik (2):
  ice: refactor ICE_TC_FLWR_FIELD_ENC_OPTS
  ice: Add support for PFCP hardware offload in switchdev

Michal Swiatkowski (1):
  pfcp: always set pfcp metadata

Wojciech Drewek (1):
  pfcp: add PFCP module

 drivers/net/Kconfig                           |  13 +
 drivers/net/Makefile                          |   1 +
 drivers/net/bareudp.c                         |  19 +-
 drivers/net/ethernet/intel/ice/ice_ddp.c      |   9 +
 .../net/ethernet/intel/ice/ice_flex_type.h    |   4 +-
 .../ethernet/intel/ice/ice_protocol_type.h    |  12 +
 drivers/net/ethernet/intel/ice/ice_switch.c   |  85 +++++
 drivers/net/ethernet/intel/ice/ice_switch.h   |   2 +
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   |  68 +++-
 drivers/net/ethernet/intel/ice/ice_tc_lib.h   |   8 +-
 .../ethernet/mellanox/mlx5/core/en/tc_tun.h   |   2 +-
 .../mellanox/mlx5/core/en/tc_tun_encap.c      |   6 +-
 .../mellanox/mlx5/core/en/tc_tun_geneve.c     |  12 +-
 .../mellanox/mlx5/core/en/tc_tun_gre.c        |   8 +-
 .../mellanox/mlx5/core/en/tc_tun_vxlan.c      |   9 +-
 .../net/ethernet/mellanox/mlx5/core/en_tc.c   |  16 +-
 .../ethernet/mellanox/mlxsw/spectrum_ipip.c   |  56 ++--
 .../ethernet/mellanox/mlxsw/spectrum_ipip.h   |   2 +-
 .../ethernet/mellanox/mlxsw/spectrum_span.c   |  10 +-
 .../ethernet/netronome/nfp/flower/action.c    |  27 +-
 drivers/net/geneve.c                          |  44 ++-
 drivers/net/pfcp.c                            | 302 ++++++++++++++++++
 drivers/net/vxlan/vxlan_core.c                |  14 +-
 include/linux/netdevice.h                     |   7 +-
 include/net/dst_metadata.h                    |  10 +-
 include/net/flow_dissector.h                  |   2 +-
 include/net/gre.h                             |  70 ++--
 include/net/ip6_tunnel.h                      |   4 +-
 include/net/ip_tunnels.h                      | 139 ++++++--
 include/net/pfcp.h                            |  90 ++++++
 include/net/udp_tunnel.h                      |   4 +-
 include/uapi/linux/if_tunnel.h                |  36 +++
 include/uapi/linux/pkt_cls.h                  |  14 +
 lib/test_bitmap.c                             | 100 ++++++
 net/bridge/br_vlan_tunnel.c                   |   9 +-
 net/core/filter.c                             |  26 +-
 net/core/flow_dissector.c                     |  20 +-
 net/ipv4/fou_bpf.c                            |   2 +-
 net/ipv4/gre_demux.c                          |   2 +-
 net/ipv4/ip_gre.c                             | 144 +++++----
 net/ipv4/ip_tunnel.c                          | 109 +++++--
 net/ipv4/ip_tunnel_core.c                     |  82 +++--
 net/ipv4/ip_vti.c                             |  41 ++-
 net/ipv4/ipip.c                               |  33 +-
 net/ipv4/ipmr.c                               |   2 +-
 net/ipv4/udp_tunnel_core.c                    |   5 +-
 net/ipv6/addrconf.c                           |   3 +-
 net/ipv6/ip6_gre.c                            |  85 ++---
 net/ipv6/ip6_tunnel.c                         |  14 +-
 net/ipv6/sit.c                                |  38 ++-
 net/netfilter/ipvs/ip_vs_core.c               |   6 +-
 net/netfilter/ipvs/ip_vs_xmit.c               |  20 +-
 net/netfilter/nft_tunnel.c                    |  44 +--
 net/openvswitch/flow_netlink.c                |  61 ++--
 net/psample/psample.c                         |  26 +-
 net/sched/act_tunnel_key.c                    |  36 +--
 net/sched/cls_flower.c                        | 134 +++++++-
 57 files changed, 1652 insertions(+), 495 deletions(-)
 create mode 100644 drivers/net/pfcp.c
 create mode 100644 include/net/pfcp.h

-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
