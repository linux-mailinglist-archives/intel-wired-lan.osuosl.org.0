Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D30072F96A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 11:40:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E9DE6611FF;
	Wed, 14 Jun 2023 09:40:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E9DE6611FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686735609;
	bh=erms3zMQ25+dsa4KL70uE+qnhnt3s5zzeFcx25VRwTo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OR5r1dQOtlIZAsuPLfsmX/dIgT8YG349m0uDV0tB/kbpyndc5bxs8O4/8KTtF7Z5V
	 +bgRN1Zsj31+7sKFUhCuuhnrC/NWCzgXnnIaxDd6pvMYerxZgcs3YrnAxo1XUOlNA0
	 eeZaj32dz8opoO+Abp+orLYSkH2Y/efWcZ8X7mlrvGgbDJAXA+qqCsT72Q+68HkDwE
	 mQzZ2MY1sp9rVeuQsEYfI9xGQW12GumPbz+TOZjvz9BCv5K7yjE0+rBVVQQomXeW4W
	 bkRXCfPmonyyUn7+SRBAOuv8EweCA4wSL5qLMdpx0oCcxSXlVoQ7CWWa/kkAicok76
	 nK5BRUlNPJhqA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zD7V7TfYX3lq; Wed, 14 Jun 2023 09:40:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 91CD460739;
	Wed, 14 Jun 2023 09:40:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 91CD460739
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 473B31BF860
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 09:40:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 236BD418D7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 09:40:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 236BD418D7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EzlxCHIcKxNs for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 09:40:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC0FC408B2
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BC0FC408B2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 09:40:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="422170684"
X-IronPort-AV: E=Sophos;i="6.00,242,1681196400"; d="scan'208";a="422170684"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 02:40:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="741772509"
X-IronPort-AV: E=Sophos;i="6.00,242,1681196400"; d="scan'208";a="741772509"
Received: from mszycik-mobl1.ger.corp.intel.com (HELO [10.249.137.22])
 ([10.249.137.22])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 02:39:57 -0700
Message-ID: <7ff20252-4672-fdcf-6c64-f7bbbd469cc7@linux.intel.com>
Date: Wed, 14 Jun 2023 11:39:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: intel-wired-lan@lists.osuosl.org
References: <20230607112606.15899-1-marcin.szycik@linux.intel.com>
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <20230607112606.15899-1-marcin.szycik@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686735601; x=1718271601;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=dLy4O6Uul/cbqW0rTEAUKNks1q6NbuP6jzScLCB4tas=;
 b=Jsx1ETyopDlLPWbtcskJKDHCI6Hbd0kN17eNdDhmTY/2U2krpyTs6TPO
 u6wl2aw3+bIk5DAQozUfASy/fi1W5mQi7wgLfoaWtmD+Bez6O4OjzR1hL
 gx5bx+hsSMxPK1nKacZhdObrs6spe/aF+Stqm+3FmLHjKusMB8Y729tQg
 g1UhsOotyHH/jbiFzKvJUgCqE+oHXOoFOPxp/8HMPjOVG0Ukt+M7kA4gJ
 UsqzVHMaFgt6bsvJMTIvdLtObUNjiYO8IipkQpQiK51lcppu+eBz2bE3/
 0FajlcjBRHj9JWqaf/U8j4nIgiSSTzV9kgW30qKZjGAvXVnsiME8WSIOB
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Jsx1ETyo
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 0/6] ice: Add PFCP filter
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

On 07.06.2023 13:26, Marcin Szycik wrote:
> Add support for creating PFCP filters in switchdev mode. Add pfcp module
> that allows to create a PFCP-type netdev. The netdev then can be passed to
> tc when creating a filter to indicate that PFCP filter should be created.
> 
> To add a PFCP filter, a special netdev must be created and passed to tc
> command:
> 
> ip link add pfcp0 type pfcp
> tc filter add dev eth0 ingress prio 1 flower pfcp_opts \
> 1:123/ff:fffffffffffffff0 skip_hw action mirred egress redirect dev pfcp0
> 
> Changes in iproute2 are required to be able to add the pfcp netdev and use
> pfcp_opts in tc (patchset will be submitted later).

iproute2 patch posted to netdev [1]. A little clarification: no changes are
required to create pfcp type netdev - it can be created if pfcp module is
loaded. Changes in iproute2 are only needed to use the newly introduced
pfcp_opts.

[1] https://lore.kernel.org/netdev/20230614091758.11180-1-marcin.szycik@linux.intel.com

> 
> ICE COMMS package is required as it contains PFCP profiles.
> 
> Part of this patchset modifies IP_TUNNEL_*_OPTs, which were previously
> stored in a __be16. All possible values have already been used, making it
> impossible to add new ones.
> 
> Alexander Lobakin (2):
>   ip_tunnel: use a separate struct to store tunnel params in the kernel
>   ip_tunnel: convert __be16 tunnel flags to bitmaps
> 
> Marcin Szycik (2):
>   ice: refactor ICE_TC_FLWR_FIELD_ENC_OPTS
>   ice: Add support for PFCP hardware offload in switchdev
> 
> Michal Swiatkowski (1):
>   pfcp: always set pfcp metadata
> 
> Wojciech Drewek (1):
>   pfcp: add PFCP module
> 
>  drivers/net/Kconfig                           |  13 +
>  drivers/net/Makefile                          |   1 +
>  drivers/net/bareudp.c                         |  19 +-
>  drivers/net/ethernet/intel/ice/ice_ddp.c      |   9 +
>  .../net/ethernet/intel/ice/ice_flex_type.h    |   4 +-
>  .../ethernet/intel/ice/ice_protocol_type.h    |  12 +
>  drivers/net/ethernet/intel/ice/ice_switch.c   |  85 +++++
>  drivers/net/ethernet/intel/ice/ice_switch.h   |   2 +
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c   |  68 +++-
>  drivers/net/ethernet/intel/ice/ice_tc_lib.h   |   7 +-
>  .../ethernet/mellanox/mlx5/core/en/tc_tun.h   |   2 +-
>  .../mellanox/mlx5/core/en/tc_tun_encap.c      |   6 +-
>  .../mellanox/mlx5/core/en/tc_tun_geneve.c     |  12 +-
>  .../mellanox/mlx5/core/en/tc_tun_gre.c        |   9 +-
>  .../mellanox/mlx5/core/en/tc_tun_vxlan.c      |   9 +-
>  .../net/ethernet/mellanox/mlx5/core/en_tc.c   |  15 +-
>  .../ethernet/mellanox/mlxsw/spectrum_ipip.c   |  62 ++--
>  .../ethernet/mellanox/mlxsw/spectrum_ipip.h   |   2 +-
>  .../ethernet/mellanox/mlxsw/spectrum_span.c   |  10 +-
>  .../ethernet/netronome/nfp/flower/action.c    |  12 +-
>  drivers/net/geneve.c                          |  46 ++-
>  drivers/net/pfcp.c                            | 303 ++++++++++++++++++
>  drivers/net/vxlan/vxlan_core.c                |  14 +-
>  include/linux/netdevice.h                     |   7 +-
>  include/net/dst_metadata.h                    |  10 +-
>  include/net/flow_dissector.h                  |   2 +-
>  include/net/gre.h                             |  59 ++--
>  include/net/ip6_tunnel.h                      |   4 +-
>  include/net/ip_tunnels.h                      | 106 +++++-
>  include/net/pfcp.h                            |  83 +++++
>  include/net/udp_tunnel.h                      |   4 +-
>  include/uapi/linux/if_tunnel.h                |  36 +++
>  include/uapi/linux/pkt_cls.h                  |  14 +
>  net/bridge/br_vlan_tunnel.c                   |   5 +-
>  net/core/filter.c                             |  20 +-
>  net/core/flow_dissector.c                     |  12 +-
>  net/ipv4/fou_bpf.c                            |   2 +-
>  net/ipv4/gre_demux.c                          |   2 +-
>  net/ipv4/ip_gre.c                             | 148 +++++----
>  net/ipv4/ip_tunnel.c                          |  92 ++++--
>  net/ipv4/ip_tunnel_core.c                     |  83 +++--
>  net/ipv4/ip_vti.c                             |  43 ++-
>  net/ipv4/ipip.c                               |  33 +-
>  net/ipv4/ipmr.c                               |   2 +-
>  net/ipv4/udp_tunnel_core.c                    |   5 +-
>  net/ipv6/addrconf.c                           |   3 +-
>  net/ipv6/ip6_gre.c                            |  87 ++---
>  net/ipv6/ip6_tunnel.c                         |  14 +-
>  net/ipv6/sit.c                                |  47 ++-
>  net/netfilter/ipvs/ip_vs_core.c               |   6 +-
>  net/netfilter/ipvs/ip_vs_xmit.c               |  20 +-
>  net/netfilter/nft_tunnel.c                    |  45 +--
>  net/openvswitch/flow_netlink.c                |  55 ++--
>  net/psample/psample.c                         |  26 +-
>  net/sched/act_tunnel_key.c                    |  39 +--
>  net/sched/cls_flower.c                        | 134 +++++++-
>  56 files changed, 1501 insertions(+), 469 deletions(-)
>  create mode 100644 drivers/net/pfcp.c
>  create mode 100644 include/net/pfcp.h
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
