Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B3DBE8E344
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Aug 2019 05:46:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4E1F286890;
	Thu, 15 Aug 2019 03:46:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pvET7nsDg6K8; Thu, 15 Aug 2019 03:46:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1E749868B5;
	Thu, 15 Aug 2019 03:46:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5E00A1BF3BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 03:46:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 52141204AE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 03:46:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CNN9r8xEMZF0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Aug 2019 03:46:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id 65043203F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 03:46:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Aug 2019 20:46:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,387,1559545200"; d="scan'208";a="352124050"
Received: from arch-p28.jf.intel.com ([10.166.187.31])
 by orsmga005.jf.intel.com with ESMTP; 14 Aug 2019 20:46:23 -0700
From: Sridhar Samudrala <sridhar.samudrala@intel.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com, netdev@vger.kernel.org,
 bpf@vger.kernel.org, sridhar.samudrala@intel.com,
 intel-wired-lan@lists.osuosl.org, maciej.fijalkowski@intel.com,
 tom.herbert@intel.com
Date: Wed, 14 Aug 2019 20:46:18 -0700
Message-Id: <1565840783-8269-1-git-send-email-sridhar.samudrala@intel.com>
X-Mailer: git-send-email 1.8.3.1
Subject: [Intel-wired-lan] [PATCH bpf-next 0/5] Add support for SKIP_BPF
 flag for AF_XDP sockets
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

This patch series introduces XDP_SKIP_BPF flag that can be specified
during the bind() call of an AF_XDP socket to skip calling the BPF 
program in the receive path and pass the buffer directly to the socket.

When a single AF_XDP socket is associated with a queue and a HW
filter is used to redirect the packets and the app is interested in
receiving all the packets on that queue, we don't need an additional 
BPF program to do further filtering or lookup/redirect to a socket.

Here are some performance numbers collected on 
  - 2 socket 28 core Intel(R) Xeon(R) Platinum 8180 CPU @ 2.50GHz
  - Intel 40Gb Ethernet NIC (i40e)

All tests use 2 cores and the results are in Mpps.

turbo on (default)
---------------------------------------------	
                      no-skip-bpf    skip-bpf
---------------------------------------------	
rxdrop zerocopy           21.9         38.5 
l2fwd  zerocopy           17.0         20.5
rxdrop copy               11.1         13.3
l2fwd  copy                1.9          2.0

no turbo :  echo 1 > /sys/devices/system/cpu/intel_pstate/no_turbo
---------------------------------------------	
                      no-skip-bpf    skip-bpf
---------------------------------------------	
rxdrop zerocopy           15.4         29.0
l2fwd  zerocopy           11.8         18.2
rxdrop copy                8.2         10.5
l2fwd  copy                1.7          1.7
---------------------------------------------	

Sridhar Samudrala (5):
  xsk: Convert bool 'zc' field in struct xdp_umem to a u32 bitmap
  xsk: Introduce XDP_SKIP_BPF bind option
  i40e: Enable XDP_SKIP_BPF option for AF_XDP sockets
  ixgbe: Enable XDP_SKIP_BPF option for AF_XDP sockets
  xdpsock_user: Add skip_bpf option

 drivers/net/ethernet/intel/i40e/i40e_txrx.c   | 22 +++++++++-
 drivers/net/ethernet/intel/i40e/i40e_xsk.c    |  6 +++
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 20 ++++++++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c  | 16 ++++++-
 include/net/xdp_sock.h                        | 21 ++++++++-
 include/uapi/linux/if_xdp.h                   |  1 +
 include/uapi/linux/xdp_diag.h                 |  1 +
 net/xdp/xdp_umem.c                            |  9 ++--
 net/xdp/xsk.c                                 | 43 ++++++++++++++++---
 net/xdp/xsk_diag.c                            |  5 ++-
 samples/bpf/xdpsock_user.c                    |  8 ++++
 11 files changed, 135 insertions(+), 17 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
