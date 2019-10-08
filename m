Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC1ACF483
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Oct 2019 10:05:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D5482204CB;
	Tue,  8 Oct 2019 08:05:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QQaCdEI-j5st; Tue,  8 Oct 2019 08:05:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 941EA204FB;
	Tue,  8 Oct 2019 08:05:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2919A1BF255
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 08:05:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D7D8A86144
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 08:05:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xTUnc29FYDE3 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Oct 2019 08:05:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9707283FF4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 08:05:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 01:05:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,270,1566889200"; d="scan'208";a="199747067"
Received: from iannetti-mobl1.ger.corp.intel.com (HELO
 btopel-mobl.ger.intel.com) ([10.252.56.81])
 by FMSMGA003.fm.intel.com with ESMTP; 08 Oct 2019 01:05:20 -0700
To: Sridhar Samudrala <sridhar.samudrala@intel.com>,
 magnus.karlsson@intel.com, netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, maciej.fijalkowski@intel.com,
 tom.herbert@intel.com
References: <1570515415-45593-1-git-send-email-sridhar.samudrala@intel.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <4c316f09-0691-4a1b-f798-73299e978946@intel.com>
Date: Tue, 8 Oct 2019 10:05:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1570515415-45593-1-git-send-email-sridhar.samudrala@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 0/4] Enable direct receive on
 AF_XDP sockets
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
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2019-10-08 08:16, Sridhar Samudrala wrote:
> This is a rework of the following patch series
> https://lore.kernel.org/netdev/1565840783-8269-1-git-send-email-sridhar.samudrala@intel.com/#r
> that tried to enable direct receive by bypassing XDP program attached
> to the device.
> 
> Based on the community feedback and some suggestions from Bjorn, changed
> the semantics of the implementation to enable direct receive on AF_XDP
> sockets that are bound to a queue only when there is no normal XDP program
> attached to the device.
> 
> This is accomplished by introducing a special BPF prog pointer (DIRECT_XSK)
> that is attached at the time of binding an AF_XDP socket to a queue of a
> device. This is done only if there is no other XDP program attached to
> the device. The normal XDP program has precedence and will replace the
> DIRECT_XSK prog if it is attached later. The main reason to introduce a
> special BPF prog pointer is to minimize the driver changes. The only change
> is to use the bpf_get_prog_id() helper when QUERYING the prog id.
> 
> Any attach of a normal XDP program will take precedence and the direct xsk
> program will be removed. The direct XSK program will be attached
> automatically when the normal XDP program is removed when there are any
> AF_XDP direct sockets associated with that device.
> 
> A static key is used to control this feature in order to avoid any overhead
> for normal XDP datapath when there are no AF_XDP sockets in direct-xsk mode.
> 
> Here is some performance data i collected on my Intel Ivybridge based
> development system (Intel(R) Xeon(R) CPU E5-2697 v2 @ 2.70GHz)
> NIC: Intel 40Gb ethernet (i40e)
> 
> xdpsock rxdrop 1 core (both app and queue's irq pinned to the same core)
>     default : taskset -c 1 ./xdpsock -i enp66s0f0 -r -q 1
>     direct-xsk :taskset -c 1 ./xdpsock -i enp66s0f0 -r -q 1
> 6.1x improvement in drop rate
> 
> xdpsock rxdrop 2 core (app and queue's irq pinned to different cores)
>     default : taskset -c 3 ./xdpsock -i enp66s0f0 -r -q 1
>     direct-xsk :taskset -c 3 ./xdpsock -i enp66s0f0 -r -d -q 1
> 6x improvement in drop rate
> 
> xdpsock l2fwd 1 core (both app and queue's irq pinned to the same core)
>     default : taskset -c 1 ./xdpsock -i enp66s0f0 -l -q 1
>     direct-xsk :taskset -c 1 ./xdpsock -i enp66s0f0 -l -d -q 1
> 3.5x improvement in l2fwd rate
> 
> xdpsock rxdrop 2 core (app and queue'sirq pinned to different cores)
>     default : taskset -c 3 ./xdpsock -i enp66s0f0 -l -q 1
>     direct-xsk :taskset -c 3 ./xdpsock -i enp66s0f0 -l -d -q 1
> 4.5x improvement in l2fwd rate
> 
> dpdk-pktgen is used to send 64byte UDP packets from a link partner and
> ethtool ntuple flow rule is used to redirect packets to queue 1 on the
> system under test.
>

Thanks for working on this Sridhar! I like this approach! Except from
the bpf_get_prog_id() changes, no driver changes are needed.

It's also a cleaner (IMO) approach than my previous attempts [1,2,3]

Would be interesting to see NFP support AF_XDP offloading with this
option. (nudge, nudge).

A thought: From userland, a direct AF_XDP socket will not appear as an
XDP program is attached to the device (id == 0). Maybe show in ss(8)
(via xsk_diag.c) that the socket is direct?

[1] 
https://lore.kernel.org/netdev/CAJ+HfNj63QcLY8=y1fF93PZd3XcfiGSrbbWdiGByjTzZQydSSg@mail.gmail.com/
[2] 
https://lore.kernel.org/netdev/cd952f99-6bad-e0c8-5bcd-f0010218238c@intel.com/
[3] 
https://lore.kernel.org/netdev/20181207114431.18038-1-bjorn.topel@gmail.com/

> Sridhar Samudrala (4):
>    bpf: introduce bpf_get_prog_id and bpf_set_prog_id helper functions.
>    xsk: allow AF_XDP sockets to receive packets directly from a queue
>    libbpf: handle AF_XDP sockets created with XDP_DIRECT bind flag.
>    xdpsock: add an option to create AF_XDP sockets in XDP_DIRECT mode
> 
>   drivers/net/ethernet/broadcom/bnxt/bnxt_xdp.c     |  2 +-
>   drivers/net/ethernet/cavium/thunder/nicvf_main.c  |  2 +-
>   drivers/net/ethernet/freescale/dpaa2/dpaa2-eth.c  |  2 +-
>   drivers/net/ethernet/intel/i40e/i40e_main.c       |  2 +-
>   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c     |  3 +-
>   drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c |  3 +-
>   drivers/net/ethernet/mellanox/mlx4/en_netdev.c    |  3 +-
>   drivers/net/ethernet/mellanox/mlx5/core/en_main.c |  3 +-
>   drivers/net/ethernet/qlogic/qede/qede_filter.c    |  2 +-
>   drivers/net/ethernet/socionext/netsec.c           |  2 +-
>   drivers/net/netdevsim/bpf.c                       |  6 ++-
>   drivers/net/tun.c                                 |  4 +-
>   drivers/net/veth.c                                |  4 +-
>   drivers/net/virtio_net.c                          |  3 +-
>   include/linux/bpf.h                               |  3 ++
>   include/linux/filter.h                            | 18 +++++++
>   include/linux/netdevice.h                         | 10 ++++
>   include/net/xdp_sock.h                            |  5 ++
>   include/trace/events/xdp.h                        |  4 +-
>   include/uapi/linux/if_xdp.h                       |  5 ++
>   kernel/bpf/arraymap.c                             |  2 +-
>   kernel/bpf/cgroup.c                               |  2 +-
>   kernel/bpf/core.c                                 |  2 +-
>   kernel/bpf/syscall.c                              | 33 +++++++++----
>   kernel/events/core.c                              |  2 +-
>   kernel/trace/bpf_trace.c                          |  2 +-
>   net/core/dev.c                                    | 54 ++++++++++++++++++++-
>   net/core/filter.c                                 | 58 +++++++++++++++++++++++
>   net/core/flow_dissector.c                         |  2 +-
>   net/core/rtnetlink.c                              |  2 +-
>   net/core/xdp.c                                    |  2 +-
>   net/ipv6/seg6_local.c                             |  2 +-
>   net/sched/act_bpf.c                               |  2 +-
>   net/sched/cls_bpf.c                               |  2 +-
>   net/xdp/xsk.c                                     | 51 +++++++++++++++++++-
>   samples/bpf/xdpsock_user.c                        | 17 +++++--
>   tools/include/uapi/linux/if_xdp.h                 |  5 ++
>   tools/lib/bpf/xsk.c                               |  6 +++
>   38 files changed, 279 insertions(+), 53 deletions(-)
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
