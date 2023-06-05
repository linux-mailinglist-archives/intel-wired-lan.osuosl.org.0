Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6927228B7
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 16:22:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF65660D52;
	Mon,  5 Jun 2023 14:22:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EF65660D52
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685974926;
	bh=i/ro/8RT+BbdUqUW9BZKR8CXhBRvp2mHF5vpDuO23UU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=D0WUYR8MFvIScSmZcw+nlQvKDSNmR/xxaegVD7Y7BNMkc9neRS3cW/LNoRPj/yvbi
	 DEbMxJSGopdstfmnKxSan3P/eDCFNDo+AtOYr8dpvxSG8ZTYMnPaiFOHogyuizeFrT
	 wIDPYKfFZnKIGa9XcHRDmR50d+QTn0yFZ1dTOdXab5EWkKKCT/CTdztI9/95dG6+se
	 JjIre82gIcVo8xLj+vj/FM3IboiUtvLAmMEsQ8HMks6tyQZ4g+YkkaOsVn5+EJhGSf
	 udcn9ujoJxPMvEuuhmUJ+LLHGbQgadAUXpPKZiWd6hLH00nrI2hgP7+c54TAj6uAGc
	 bLPNJSuNRsyIA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4GCPqV8bFWQH; Mon,  5 Jun 2023 14:22:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8FC7E60672;
	Mon,  5 Jun 2023 14:22:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8FC7E60672
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9E7611BF21A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 14:21:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 744214157A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 14:21:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 744214157A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cc-TC7mmokN7 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 14:21:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2EE9341527
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2EE9341527
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 14:21:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="345972650"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="345972650"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 07:21:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="711826051"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="711826051"
Received: from unknown (HELO [10.237.140.161]) ([10.237.140.161])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 07:21:54 -0700
Message-ID: <98021ae6-cbe4-d0a6-630e-27ae44383376@linux.intel.com>
Date: Mon, 5 Jun 2023 16:21:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Simon Horman <simon.horman@corigine.com>, alexandr.lobakin@intel.com
References: <20230601131929.294667-1-marcin.szycik@linux.intel.com>
 <20230601131929.294667-3-marcin.szycik@linux.intel.com>
 <ZH2plrPDtUdmjL7w@corigine.com>
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <ZH2plrPDtUdmjL7w@corigine.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685974918; x=1717510918;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=lJ9AGNzMX+PU7sUV0is15+s6tIka1N202ifYSTs1Ujo=;
 b=MEWn+PcCtpG0OW2jcv7NRPrzc27mQArzUDLO9PSKKY89fEenAHNJmHSE
 Rppy4w99+K9ZW/zeasIENMwoEtmdD1Ys4oDmtqY4Zaje5JFszdvl2g7/e
 meQscwRUPEQVqRJ3wxrh99T3TqTE3UxrBbAp29zkHGntl7CWN4ihnKZjc
 g3Gqi968Z+yery8FH8ZvPOMHbP0ZTjZusRHpUNBkDKdc5MYUyeYyAhnsM
 s5mbGNR8PM7BOvbN0WWTUdHioS+p+pNsV1JhdipjkXIwBLlsE9oKS5ZJq
 iQO2I614VSYOnQkqkTYMwLAUJaHJ8shbVLuvNQTQSmKrQRhY3aQYn51jQ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MEWn+PcC
Subject: Re: [Intel-wired-lan] [RFC PATCH iwl-next 2/6] ip_tunnel: convert
 __be16 tunnel flags to bitmaps
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
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 05.06.2023 11:23, Simon Horman wrote:
> On Thu, Jun 01, 2023 at 03:19:25PM +0200, Marcin Szycik wrote:
>> From: Alexander Lobakin <alexandr.lobakin@intel.com>
>>
>> Historically, tunnel flags like TUNNEL_CSUM or TUNNEL_ERSPAN_OPT
>> have been defined as __be16. Now all of those 16 bits are occupied
>> and there's no more free space for new flags.
>> It can't be simply switched to a bigger container with no
>> adjustments to the values, since it's an explicit Endian storage,
>> and on LE systems (__be16)0x0001 equals to
>> (__be64)0x0001000000000000.
>> We could probably define new 64-bit flags depending on the
>> Endianness, i.e. (__be64)0x0001 on BE and (__be64)0x00010000... on
>> LE, but that would introduce an Endianness dependency and spawn a
>> ton of Sparse warnings. To mitigate them, all of those places which
>> were adjusted with this change would be touched anyway, so why not
>> define stuff properly if there's no choice.
> 
> Hi Marcin,
> 
> a few nits from my side, that you can take or leave.
> Overall this looks good to me.
> 
> 
> Reviewed-by: Simon Horman <simon.horman@corigine.com>

Hi Simon,

Thank you for review, I will fix the minor issues in v2.

> 
>> Define IP_TUNNEL_*_BIT counterparts as a bit number instead of the
>> value already coded and a fistful of <16 <-> bitmap> converters and
>> helpers. The two flags which have a different bit position are
>> SIT_ISATAP_64 and VTI_ISVTI_64, as they were defined not as
>> __cpu_to_be16(), but as (__force __be16), i.e. had different
>> positions on LE and BE. Now they have a strongly defined place.
>> Change all __be16 fields which were used to store those flags, to
>> IP_TUNNEL_DECLARE_FLAGS() -> DECLARE_BITMAP(__IP_TUNNEL_FLAG_NUM) ->
>> unsigned long[1] for now, and replace all TUNNEL_* occurencies to
>> their 64-bit bitmap counterparts. Use the converters in the places
>> which talk to the userspace, hardware (NFP) or other hosts (GRE
>> header). The rest must explicitly use the new flags only. This must
>> be done at once, otherwise there will be too much conversions
>> throughout the code in the intermediate commits.
>> Finally, disable the old __be16 flags for use in the kernel code
>> (except for the two 'irregular' flags mentioned above), to prevent
>> any accidential (mis)use of them. For the userspace, nothing is
> 
> nit: s/accidential/accidental/
> 
>> changed, only additions were made.
>>
>> Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
>> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> 
>> ---
>>  drivers/net/bareudp.c                         |  19 ++-
>>  .../ethernet/mellanox/mlx5/core/en/tc_tun.h   |   2 +-
>>  .../mellanox/mlx5/core/en/tc_tun_encap.c      |   6 +-
>>  .../mellanox/mlx5/core/en/tc_tun_geneve.c     |  12 +-
>>  .../mellanox/mlx5/core/en/tc_tun_gre.c        |   9 +-
>>  .../mellanox/mlx5/core/en/tc_tun_vxlan.c      |   9 +-
>>  .../net/ethernet/mellanox/mlx5/core/en_tc.c   |  15 +-
>>  .../ethernet/mellanox/mlxsw/spectrum_ipip.c   |  32 +++--
>>  .../ethernet/mellanox/mlxsw/spectrum_span.c   |   6 +-
>>  .../ethernet/netronome/nfp/flower/action.c    |  26 +++-
>>  drivers/net/geneve.c                          |  46 +++---
>>  drivers/net/vxlan/vxlan_core.c                |  14 +-
>>  include/net/dst_metadata.h                    |  10 +-
>>  include/net/flow_dissector.h                  |   2 +-
>>  include/net/gre.h                             |  59 ++++----
>>  include/net/ip6_tunnel.h                      |   4 +-
>>  include/net/ip_tunnels.h                      |  90 ++++++++++--
>>  include/net/udp_tunnel.h                      |   4 +-
>>  include/uapi/linux/if_tunnel.h                |  33 +++++
>>  net/bridge/br_vlan_tunnel.c                   |   5 +-
>>  net/core/filter.c                             |  20 +--
>>  net/core/flow_dissector.c                     |  12 +-
>>  net/ipv4/fou_bpf.c                            |   2 +-
>>  net/ipv4/gre_demux.c                          |   2 +-
>>  net/ipv4/ip_gre.c                             | 131 +++++++++++-------
>>  net/ipv4/ip_tunnel.c                          |  51 ++++---
>>  net/ipv4/ip_tunnel_core.c                     |  81 +++++++----
>>  net/ipv4/ip_vti.c                             |  31 +++--
>>  net/ipv4/ipip.c                               |  21 ++-
>>  net/ipv4/udp_tunnel_core.c                    |   5 +-
>>  net/ipv6/ip6_gre.c                            |  87 +++++++-----
>>  net/ipv6/ip6_tunnel.c                         |  14 +-
>>  net/ipv6/sit.c                                |   9 +-
>>  net/netfilter/ipvs/ip_vs_core.c               |   6 +-
>>  net/netfilter/ipvs/ip_vs_xmit.c               |  20 +--
>>  net/netfilter/nft_tunnel.c                    |  45 +++---
>>  net/openvswitch/flow_netlink.c                |  55 ++++----
>>  net/psample/psample.c                         |  26 ++--
>>  net/sched/act_tunnel_key.c                    |  39 +++---
>>  net/sched/cls_flower.c                        |  27 ++--
>>  40 files changed, 695 insertions(+), 392 deletions(-)
> 
> nit: this is a rather long patch

Yes, but most of it comes from the fact that tunnel flags are simply used
in many places, and we need to touch all of them.

Alex, do you see a way to logically split this patch into smaller ones?

> 
> ...
> 
>> diff --git a/include/uapi/linux/if_tunnel.h b/include/uapi/linux/if_tunnel.h
>> index 102119628ff5..d222e70d8621 100644
>> --- a/include/uapi/linux/if_tunnel.h
>> +++ b/include/uapi/linux/if_tunnel.h
>> @@ -161,6 +161,14 @@ enum {
>>  
>>  #define IFLA_VTI_MAX	(__IFLA_VTI_MAX - 1)
>>  
>> +#ifndef __KERNEL__
>> +/* Historically, tunnel flags have been defined as __be16 and now there are
>> + * no free bits left. It is strongly advised to switch the already existing
>> + * userspace code to u32/BIGINT and the new *_BIT definitions from down below,
>> + * as __be16 can't be simply casted to a wider type on LE systems. All new
> 
> nit: s/casted/cast/
> 
> ...
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
