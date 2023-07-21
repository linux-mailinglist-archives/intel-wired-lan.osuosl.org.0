Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC31275C9B5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jul 2023 16:22:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AEB8E41799;
	Fri, 21 Jul 2023 14:22:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AEB8E41799
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689949324;
	bh=d6tr8lBdJqLgmvwOxFRmGqb+OEUDiuqR3F/pbm4Tqy0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=zgKeG9SpUwO0vgUPsk1QKu6KkKkL+0rm5fVSDg/EBo2wrHnqOyuj36/4iGYC+qtqo
	 nNqKuWFQiW/2n3OftZHe9gIkU/1fCYJgBuDfjD6FMrmV1Zw7qNQGkpcSFfn52/A5e8
	 uvLIRiLBUdHKZKKqChrDEcv0cJ7+vkzPl+Yuum9Fq2+38rNkV96x8FTOZLjYlrhDOW
	 8LTtteLiD20e+e72mBpDz1KSyaCBsRFTIGSaKpG40Lc5HO579Ox+numkTVe9E1Bj4o
	 R6CZm07g7i5XRHNyIXE34dCHR3PNJCdd14L70ATmEnH9eqj6ou0ZSbSQj5Ck5Fj7iN
	 NSXiVgxIklS7Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZIKLzi48sOyo; Fri, 21 Jul 2023 14:22:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 714E44178F;
	Fri, 21 Jul 2023 14:22:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 714E44178F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 35F8E1BF287
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 14:21:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D37C24179A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 14:21:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D37C24179A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZUvNLJd2-ZKc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jul 2023 14:21:56 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 21 Jul 2023 14:21:56 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2B574178F
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B2B574178F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 14:21:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="433263380"
X-IronPort-AV: E=Sophos;i="6.01,220,1684825200"; d="scan'208";a="433263380"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 07:14:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="868256453"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga001.fm.intel.com with ESMTP; 21 Jul 2023 07:14:45 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 83581340C0;
 Fri, 21 Jul 2023 15:14:42 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 21 Jul 2023 09:15:26 +0200
Message-ID: <20230721071532.613888-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689949316; x=1721485316;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Wn0rnpGWZ+NsWkHHiK1OYU4RJD1mCQb8yrP/hv0Nuqg=;
 b=I/udtPzZkW6ck4cl+SUiTa6IRyHNAgBhyK5NgCNrQLhx4qxG3MLslgkw
 8QFhBzzVxAs7qCNDShd4T76tNabWhWxtbE/Iyz2fx6YPKgEUvG9dzNOeo
 qg09KgbseAeYaOYckyUPcukxDsYEacmx5pOzW/UHmwq2K8znxYnbHY3wZ
 BLO3g0fsRJkEF5XBv1niFQfDZ/BGbGhFhHoq7EBTVtpRXhvi649xExgfh
 /uDW7aw9ubyWDGZmj+34a0eTVRXD9T+8F09xibI+uqfYo7Z9UUj/8W06L
 vK7ObWACrjBsRnkoTpM0oIGSQbsVcSY44xb7E/pmHNVtaA4B0+Gfwme4K
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I/udtPzZ
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/6] ice: Add PFCP filter
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
Cc: jiri@resnulli.us, andy@kernel.org, netdev@vger.kernel.org,
 idosch@nvidia.com, jesse.brandeburg@intel.com, simon.horman@corigine.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
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

Changes in iproute2 [1] are required to use pfcp_opts in tc.

ICE COMMS package is required as it contains PFCP profiles.

Part of this patchset modifies IP_TUNNEL_*_OPTs, which were previously
stored in a __be16. All possible values have already been used, making it
impossible to add new ones.

[1] https://lore.kernel.org/netdev/20230614091758.11180-1-marcin.szycik@linux.intel.com

v2: Fixed minor issues, typos
v3: Rebase

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
 .../ethernet/netronome/nfp/flower/action.c    |  12 +-
 drivers/net/geneve.c                          |  46 ++-
 drivers/net/pfcp.c                            | 303 ++++++++++++++++++
 drivers/net/vxlan/vxlan_core.c                |  14 +-
 include/linux/netdevice.h                     |   7 +-
 include/net/dst_metadata.h                    |  10 +-
 include/net/flow_dissector.h                  |   2 +-
 include/net/gre.h                             |  59 ++--
 include/net/ip6_tunnel.h                      |   4 +-
 include/net/ip_tunnels.h                      | 108 ++++++-
 include/net/pfcp.h                            |  83 +++++
 include/net/udp_tunnel.h                      |   4 +-
 include/uapi/linux/if_tunnel.h                |  36 +++
 include/uapi/linux/pkt_cls.h                  |  14 +
 net/bridge/br_vlan_tunnel.c                   |   9 +-
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
 56 files changed, 1505 insertions(+), 471 deletions(-)
 create mode 100644 drivers/net/pfcp.c
 create mode 100644 include/net/pfcp.h

-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
