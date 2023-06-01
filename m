Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 44014719E3D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Jun 2023 15:32:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D3307842BC;
	Thu,  1 Jun 2023 13:32:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D3307842BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685626341;
	bh=yOB3ffrpXgvyiYrJbltD408YxZk1VzQTVgHS+IEGEEM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=aQ4RLfG6jo357pTgV5pY9X1BjdgGNpbHzr3hrqVV2VvtS6Tg/BKZ2q48JlxYku2Lt
	 thDGeGK5asB7pdXnGEp15vjZw71c1/fNWet2PVDs3jb0/BCvJr6jInESrrhzVeTNcS
	 3KiR8qPuYYZvaVyQ++SCyLrR2+s+OnA8YPSzIoAMWgP3QnqTh0LXsLv1VtypAGTcDG
	 F10MUAG8G6euNkmA5jPy/iia1W/vECFALbYUaaGtLoUBVvl7+llQGoOoUQ9I1iJ01q
	 pVXPdO/ccqpKs7wdUU4u4cmWFWKu3STC+M+tELfpoAoO74avxJowKVpKt2NnOhi8mN
	 /KZPO3bmFf+eA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id btC5bBcYqoMy; Thu,  1 Jun 2023 13:32:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AFC4484299;
	Thu,  1 Jun 2023 13:32:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AFC4484299
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 59B7F1BF316
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 13:32:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3E3D46154F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 13:32:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E3D46154F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d1ehbq5DrLSw for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Jun 2023 13:32:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EFA7E60FAF
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EFA7E60FAF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 13:32:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="335906110"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="335906110"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 06:32:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="772427560"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="772427560"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga008.fm.intel.com with ESMTP; 01 Jun 2023 06:32:02 -0700
Received: from giewont.igk.intel.com (giewont.igk.intel.com [10.211.8.15])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 6E68C34911;
 Thu,  1 Jun 2023 14:32:01 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  1 Jun 2023 15:19:23 +0200
Message-Id: <20230601131929.294667-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685626333; x=1717162333;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RgiQGvmUDub6+gNx9X991KYukyKWMS93NxABk3mmbr4=;
 b=TD947NtCcPCEoMbY9f1CI8TqMM+8/ASfR1+91bUs9exfAcsAPmEnDWVI
 sxTtJMdPwZHIZs0GL++7EXePxlEpIkXkNn5Ec38KO41Yp14hKw2dYZfj8
 ZGXagoBPS5NsOg+82iQHq7IeqJML5sfyy/FZdWhYx/RY134AVigqKyhSe
 +rOiLOxrYtlcsZ0Q7wEwBCW14duWVgKADn3jpVjly6sQFRA80chm0PxcC
 BxuUi0f9wcpVzx7FVICEM+7bwruVTCqP3nzSEeLOMZtNTiSacNsqJkzUy
 NzYumzg8SBzajavyvaoNI8dI6hiRknkuyNpVfb4aQ8igF+R0LqCWr7NJd
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TD947NtC
Subject: [Intel-wired-lan] [RFC PATCH iwl-next 0/6] ice: Add PFCP filter
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
Cc: jiri@resnulli.us, netdev@vger.kernel.org, idosch@nvidia.com,
 jesse.brandeburg@intel.com, simon.horman@corigine.com, kuba@kernel.org,
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
1:123/ff:fffffffffffffff0 skip_hw action mirred egress redirect dev pfcp0

Changes in iproute2 are required to be able to add the pfcp netdev and use
pfcp_opts in tc (patchset will be submitted later).

ICE COMMS package is required as it contains PFCP profiles.

Part of this patchset modifies IP_TUNNEL_*_OPTs, which were previously
stored in a __be16. All possible values have already been used, making it
impossible to add new ones.

Alexander Lobakin (2):
  ip_tunnel: use a separate struct to store tunnel params in the kernel
  ip_tunnel: convert __be16 tunnel flags to bitmaps

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
 drivers/net/ethernet/intel/ice/ice_tc_lib.h   |   7 +-
 .../ethernet/mellanox/mlx5/core/en/tc_tun.h   |   2 +-
 .../mellanox/mlx5/core/en/tc_tun_encap.c      |   6 +-
 .../mellanox/mlx5/core/en/tc_tun_geneve.c     |  12 +-
 .../mellanox/mlx5/core/en/tc_tun_gre.c        |   9 +-
 .../mellanox/mlx5/core/en/tc_tun_vxlan.c      |   9 +-
 .../net/ethernet/mellanox/mlx5/core/en_tc.c   |  15 +-
 .../ethernet/mellanox/mlxsw/spectrum_ipip.c   |  62 ++--
 .../ethernet/mellanox/mlxsw/spectrum_ipip.h   |   2 +-
 .../ethernet/mellanox/mlxsw/spectrum_span.c   |  10 +-
 .../ethernet/netronome/nfp/flower/action.c    |  26 +-
 drivers/net/geneve.c                          |  46 ++-
 drivers/net/pfcp.c                            | 307 ++++++++++++++++++
 drivers/net/vxlan/vxlan_core.c                |  14 +-
 include/linux/netdevice.h                     |   7 +-
 include/net/dst_metadata.h                    |  10 +-
 include/net/flow_dissector.h                  |   2 +-
 include/net/gre.h                             |  59 ++--
 include/net/ip6_tunnel.h                      |   4 +-
 include/net/ip_tunnels.h                      | 106 +++++-
 include/net/pfcp.h                            |  83 +++++
 include/net/udp_tunnel.h                      |   4 +-
 include/uapi/linux/if_tunnel.h                |  36 ++
 include/uapi/linux/pkt_cls.h                  |  14 +
 net/bridge/br_vlan_tunnel.c                   |   5 +-
 net/core/filter.c                             |  20 +-
 net/core/flow_dissector.c                     |  12 +-
 net/ipv4/fou_bpf.c                            |   2 +-
 net/ipv4/gre_demux.c                          |   2 +-
 net/ipv4/ip_gre.c                             | 148 +++++----
 net/ipv4/ip_tunnel.c                          |  92 ++++--
 net/ipv4/ip_tunnel_core.c                     |  83 +++--
 net/ipv4/ip_vti.c                             |  43 ++-
 net/ipv4/ipip.c                               |  33 +-
 net/ipv4/ipmr.c                               |   2 +-
 net/ipv4/udp_tunnel_core.c                    |   5 +-
 net/ipv6/addrconf.c                           |   3 +-
 net/ipv6/ip6_gre.c                            |  87 ++---
 net/ipv6/ip6_tunnel.c                         |  14 +-
 net/ipv6/sit.c                                |  47 ++-
 net/netfilter/ipvs/ip_vs_core.c               |   6 +-
 net/netfilter/ipvs/ip_vs_xmit.c               |  20 +-
 net/netfilter/nft_tunnel.c                    |  45 +--
 net/openvswitch/flow_netlink.c                |  55 ++--
 net/psample/psample.c                         |  26 +-
 net/sched/act_tunnel_key.c                    |  39 +--
 net/sched/cls_flower.c                        | 134 +++++++-
 56 files changed, 1519 insertions(+), 469 deletions(-)
 create mode 100644 drivers/net/pfcp.c
 create mode 100644 include/net/pfcp.h

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
