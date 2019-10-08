Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C2A1CF29D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Oct 2019 08:17:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1DE5487E74;
	Tue,  8 Oct 2019 06:17:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XdVnzzS4+y1h; Tue,  8 Oct 2019 06:17:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 51B2487E68;
	Tue,  8 Oct 2019 06:17:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A8CF81BF289
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 06:16:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A5D9422268
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 06:16:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iwftM8YiPITe for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Oct 2019 06:16:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id 95CA6221CC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 06:16:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 23:16:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,269,1566889200"; d="scan'208";a="187206748"
Received: from arch-p28.jf.intel.com ([10.166.187.31])
 by orsmga008.jf.intel.com with ESMTP; 07 Oct 2019 23:16:55 -0700
From: Sridhar Samudrala <sridhar.samudrala@intel.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com, netdev@vger.kernel.org,
 bpf@vger.kernel.org, sridhar.samudrala@intel.com,
 intel-wired-lan@lists.osuosl.org, maciej.fijalkowski@intel.com,
 tom.herbert@intel.com
Date: Mon,  7 Oct 2019 23:16:51 -0700
Message-Id: <1570515415-45593-1-git-send-email-sridhar.samudrala@intel.com>
X-Mailer: git-send-email 1.8.3.1
Subject: [Intel-wired-lan] [PATCH bpf-next 0/4] Enable direct receive on
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is a rework of the following patch series 
https://lore.kernel.org/netdev/1565840783-8269-1-git-send-email-sridhar.samudrala@intel.com/#r
that tried to enable direct receive by bypassing XDP program attached
to the device.

Based on the community feedback and some suggestions from Bjorn, changed
the semantics of the implementation to enable direct receive on AF_XDP
sockets that are bound to a queue only when there is no normal XDP program
attached to the device.

This is accomplished by introducing a special BPF prog pointer (DIRECT_XSK)
that is attached at the time of binding an AF_XDP socket to a queue of a
device. This is done only if there is no other XDP program attached to
the device. The normal XDP program has precedence and will replace the
DIRECT_XSK prog if it is attached later. The main reason to introduce a
special BPF prog pointer is to minimize the driver changes. The only change
is to use the bpf_get_prog_id() helper when QUERYING the prog id.

Any attach of a normal XDP program will take precedence and the direct xsk
program will be removed. The direct XSK program will be attached
automatically when the normal XDP program is removed when there are any
AF_XDP direct sockets associated with that device.

A static key is used to control this feature in order to avoid any overhead
for normal XDP datapath when there are no AF_XDP sockets in direct-xsk mode.

Here is some performance data i collected on my Intel Ivybridge based
development system (Intel(R) Xeon(R) CPU E5-2697 v2 @ 2.70GHz)
NIC: Intel 40Gb ethernet (i40e)

xdpsock rxdrop 1 core (both app and queue's irq pinned to the same core)
   default : taskset -c 1 ./xdpsock -i enp66s0f0 -r -q 1
   direct-xsk :taskset -c 1 ./xdpsock -i enp66s0f0 -r -q 1
6.1x improvement in drop rate

xdpsock rxdrop 2 core (app and queue's irq pinned to different cores)
   default : taskset -c 3 ./xdpsock -i enp66s0f0 -r -q 1
   direct-xsk :taskset -c 3 ./xdpsock -i enp66s0f0 -r -d -q 1
6x improvement in drop rate

xdpsock l2fwd 1 core (both app and queue's irq pinned to the same core)
   default : taskset -c 1 ./xdpsock -i enp66s0f0 -l -q 1
   direct-xsk :taskset -c 1 ./xdpsock -i enp66s0f0 -l -d -q 1
3.5x improvement in l2fwd rate

xdpsock rxdrop 2 core (app and queue'sirq pinned to different cores)
   default : taskset -c 3 ./xdpsock -i enp66s0f0 -l -q 1
   direct-xsk :taskset -c 3 ./xdpsock -i enp66s0f0 -l -d -q 1
4.5x improvement in l2fwd rate

dpdk-pktgen is used to send 64byte UDP packets from a link partner and 
ethtool ntuple flow rule is used to redirect packets to queue 1 on the 
system under test.

Sridhar Samudrala (4):
  bpf: introduce bpf_get_prog_id and bpf_set_prog_id helper functions.
  xsk: allow AF_XDP sockets to receive packets directly from a queue
  libbpf: handle AF_XDP sockets created with XDP_DIRECT bind flag.
  xdpsock: add an option to create AF_XDP sockets in XDP_DIRECT mode

 drivers/net/ethernet/broadcom/bnxt/bnxt_xdp.c     |  2 +-
 drivers/net/ethernet/cavium/thunder/nicvf_main.c  |  2 +-
 drivers/net/ethernet/freescale/dpaa2/dpaa2-eth.c  |  2 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c       |  2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c     |  3 +-
 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c |  3 +-
 drivers/net/ethernet/mellanox/mlx4/en_netdev.c    |  3 +-
 drivers/net/ethernet/mellanox/mlx5/core/en_main.c |  3 +-
 drivers/net/ethernet/qlogic/qede/qede_filter.c    |  2 +-
 drivers/net/ethernet/socionext/netsec.c           |  2 +-
 drivers/net/netdevsim/bpf.c                       |  6 ++-
 drivers/net/tun.c                                 |  4 +-
 drivers/net/veth.c                                |  4 +-
 drivers/net/virtio_net.c                          |  3 +-
 include/linux/bpf.h                               |  3 ++
 include/linux/filter.h                            | 18 +++++++
 include/linux/netdevice.h                         | 10 ++++
 include/net/xdp_sock.h                            |  5 ++
 include/trace/events/xdp.h                        |  4 +-
 include/uapi/linux/if_xdp.h                       |  5 ++
 kernel/bpf/arraymap.c                             |  2 +-
 kernel/bpf/cgroup.c                               |  2 +-
 kernel/bpf/core.c                                 |  2 +-
 kernel/bpf/syscall.c                              | 33 +++++++++----
 kernel/events/core.c                              |  2 +-
 kernel/trace/bpf_trace.c                          |  2 +-
 net/core/dev.c                                    | 54 ++++++++++++++++++++-
 net/core/filter.c                                 | 58 +++++++++++++++++++++++
 net/core/flow_dissector.c                         |  2 +-
 net/core/rtnetlink.c                              |  2 +-
 net/core/xdp.c                                    |  2 +-
 net/ipv6/seg6_local.c                             |  2 +-
 net/sched/act_bpf.c                               |  2 +-
 net/sched/cls_bpf.c                               |  2 +-
 net/xdp/xsk.c                                     | 51 +++++++++++++++++++-
 samples/bpf/xdpsock_user.c                        | 17 +++++--
 tools/include/uapi/linux/if_xdp.h                 |  5 ++
 tools/lib/bpf/xsk.c                               |  6 +++
 38 files changed, 279 insertions(+), 53 deletions(-)

-- 
2.14.5

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
