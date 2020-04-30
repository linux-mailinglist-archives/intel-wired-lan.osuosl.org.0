Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0031E1C07E2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2020 22:26:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9EDE185A22;
	Thu, 30 Apr 2020 20:26:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DAVx3RhbWPly; Thu, 30 Apr 2020 20:26:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5127585361;
	Thu, 30 Apr 2020 20:26:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4F0C41BF48B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2020 11:20:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4A04386C9D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2020 11:20:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QvHXk2ePQlfD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Apr 2020 11:20:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1E6D886C15
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2020 11:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588245642;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=23FnCrzFcuojp4X3v0KnNJTEpPw9D9rWz6fAvyG2EZY=;
 b=PmN2b+Gk7BN3bGVDeChI5ziC2sff6WsEhE38uyWtZAaGhUPyujw+SEs+NNmCHHNNK1fyqf
 xTxJA20WeJVKe2dwc55y1NJTIgE6XKWj6L3vPshtdU8C1wRzMGLW0CIWEIJOvRa4yXobVa
 UC7hJ4NNfGC3RhbHHB2+vQQg828WLmg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-295-kTYvG8NEMJCLTf4doNsQ1g-1; Thu, 30 Apr 2020 07:20:34 -0400
X-MC-Unique: kTYvG8NEMJCLTf4doNsQ1g-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 60457107ACCD;
 Thu, 30 Apr 2020 11:20:29 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.40.208.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B9DD15EDE5;
 Thu, 30 Apr 2020 11:20:22 +0000 (UTC)
Received: from [192.168.42.3] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 65D5F324DB2C0;
 Thu, 30 Apr 2020 13:20:21 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: sameehj@amazon.com
Date: Thu, 30 Apr 2020 13:20:21 +0200
Message-ID: <158824557985.2172139.4173570969543904434.stgit@firesoul>
User-Agent: StGit/0.19
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mailman-Approved-At: Thu, 30 Apr 2020 20:26:25 +0000
Subject: [Intel-wired-lan] [PATCH net-next v2 00/33] XDP extend with
 knowledge of frame size
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
Cc: Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Jason Wang <jasowang@redhat.com>, GR-everest-linux-l2@marvell.com,
 thomas.petazzoni@bootlin.com, akiyano@amazon.com, steffen.klassert@secunet.com,
 Wei Liu <wei.liu@kernel.org>, Stephen Hemminger <sthemmin@microsoft.com>,
 Ioana Radulescu <ruxandra.radulescu@nxp.com>,
 Toshiaki Makita <toshiaki.makita1@gmail.com>,
 Alexei Starovoitov <alexei.starovoitov@gmail.com>,
 Saeed Mahameed <saeedm@mellanox.com>, intel-wired-lan@lists.osuosl.org,
 Jesper Dangaard Brouer <brouer@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 =?utf-8?b?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>, gtzalik@amazon.com,
 Sunil Goutham <sgoutham@marvell.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, Ariel Elior <aelior@marvell.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Michael Chan <michael.chan@broadcom.com>,
 Andy Gospodarek <andrew.gospodarek@broadcom.com>, bpf@vger.kernel.org,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Daniel Borkmann <borkmann@iogearbox.net>, zorik@amazon.com,
 netdev@vger.kernel.org,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
 Mao Wenan <maowenan@huawei.com>, Robert Richter <rrichter@marvell.com>,
 David Ahern <dsahern@gmail.com>, Andy Gospodarek <gospo@broadcom.com>,
 Tariq Toukan <tariqt@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

(Send for net-next due to all the driver updates)

V2:
- Fix bug in mlx5 for XDP_PASS case
- Collected nitpicks and ACKs from mailing list
V1:
- Fix bug in dpaa2

XDP have evolved to support several frame sizes, but xdp_buff was not
updated with this information. This have caused the side-effect that
XDP frame data hard end is unknown. This have limited the BPF-helper
bpf_xdp_adjust_tail to only shrink the packet. This patchset address
this and add packet tail extend/grow.

The purpose of the patchset is ALSO to reserve a memory area that can be
used for storing extra information, specifically for extending XDP with
multi-buffer support. One proposal is to use same layout as
skb_shared_info, which is why this area is currently 320 bytes.

When converting xdp_frame to SKB (veth and cpumap), the full tailroom
area can now be used and SKB truesize is now correct. For most
drivers this result in a much larger tailroom in SKB "head" data
area. The network stack can now take advantage of this when doing SKB
coalescing. Thus, a good driver test is to use xdp_redirect_cpu from
samples/bpf/ and do some TCP stream testing.

Use-cases for tail grow/extend:
(1) IPsec / XFRM needs a tail extend[1][2].
(2) DNS-cache responses in XDP.
(3) HAProxy ALOHA would need it to convert to XDP.
(4) Add tail info e.g. timestamp and collect via tcpdump

[1] http://vger.kernel.org/netconf2019_files/xfrm_xdp.pdf
[2] http://vger.kernel.org/netconf2019.html

---

Ilias Apalodimas (1):
      net: netsec: Add support for XDP frame size

Jesper Dangaard Brouer (32):
      xdp: add frame size to xdp_buff
      bnxt: add XDP frame size to driver
      sfc: add XDP frame size
      mvneta: add XDP frame size to driver
      net: XDP-generic determining XDP frame size
      xdp: xdp_frame add member frame_sz and handle in convert_to_xdp_frame
      xdp: cpumap redirect use frame_sz and increase skb_tailroom
      veth: adjust hard_start offset on redirect XDP frames
      veth: xdp using frame_sz in veth driver
      dpaa2-eth: add XDP frame size
      hv_netvsc: add XDP frame size to driver
      qlogic/qede: add XDP frame size to driver
      net: ethernet: ti: add XDP frame size to driver cpsw
      ena: add XDP frame size to amazon NIC driver
      mlx4: add XDP frame size and adjust max XDP MTU
      net: thunderx: add XDP frame size
      nfp: add XDP frame size to netronome driver
      tun: add XDP frame size
      vhost_net: also populate XDP frame size
      virtio_net: add XDP frame size in two code paths
      ixgbe: fix XDP redirect on archs with PAGE_SIZE above 4K
      ixgbe: add XDP frame size to driver
      ixgbevf: add XDP frame size to VF driver
      i40e: add XDP frame size to driver
      ice: add XDP frame size to driver
      xdp: for Intel AF_XDP drivers add XDP frame_sz
      mlx5: rx queue setup time determine frame_sz for XDP
      xdp: allow bpf_xdp_adjust_tail() to grow packet size
      xdp: clear grow memory in bpf_xdp_adjust_tail()
      bpf: add xdp.frame_sz in bpf_prog_test_run_xdp().
      selftests/bpf: adjust BPF selftest for xdp_adjust_tail
      selftests/bpf: xdp_adjust_tail add grow tail tests


 drivers/net/ethernet/amazon/ena/ena_netdev.c       |    1 
 drivers/net/ethernet/amazon/ena/ena_netdev.h       |    5 -
 drivers/net/ethernet/broadcom/bnxt/bnxt_xdp.c      |    1 
 drivers/net/ethernet/cavium/thunder/nicvf_main.c   |    1 
 drivers/net/ethernet/freescale/dpaa2/dpaa2-eth.c   |    7 +
 drivers/net/ethernet/intel/i40e/i40e_txrx.c        |   30 ++++-
 drivers/net/ethernet/intel/i40e/i40e_xsk.c         |    2 
 drivers/net/ethernet/intel/ice/ice_txrx.c          |   34 ++++--
 drivers/net/ethernet/intel/ice/ice_xsk.c           |    2 
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c      |   33 ++++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c       |    2 
 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c  |   34 ++++--
 drivers/net/ethernet/marvell/mvneta.c              |   25 ++--
 drivers/net/ethernet/mellanox/mlx4/en_netdev.c     |    3 
 drivers/net/ethernet/mellanox/mlx4/en_rx.c         |    1 
 drivers/net/ethernet/mellanox/mlx5/core/en.h       |    1 
 drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c   |    1 
 drivers/net/ethernet/mellanox/mlx5/core/en_main.c  |    6 +
 drivers/net/ethernet/mellanox/mlx5/core/en_rx.c    |    2 
 .../net/ethernet/netronome/nfp/nfp_net_common.c    |    6 +
 drivers/net/ethernet/qlogic/qede/qede_fp.c         |    1 
 drivers/net/ethernet/qlogic/qede/qede_main.c       |    2 
 drivers/net/ethernet/sfc/rx.c                      |    1 
 drivers/net/ethernet/socionext/netsec.c            |   30 +++--
 drivers/net/ethernet/ti/cpsw.c                     |    1 
 drivers/net/ethernet/ti/cpsw_new.c                 |    1 
 drivers/net/hyperv/netvsc_bpf.c                    |    1 
 drivers/net/hyperv/netvsc_drv.c                    |    2 
 drivers/net/tun.c                                  |    2 
 drivers/net/veth.c                                 |   28 +++--
 drivers/net/virtio_net.c                           |   15 ++
 drivers/vhost/net.c                                |    1 
 include/net/xdp.h                                  |   27 ++++
 include/net/xdp_sock.h                             |   11 ++
 include/uapi/linux/bpf.h                           |    4 -
 kernel/bpf/cpumap.c                                |   21 ---
 net/bpf/test_run.c                                 |   16 ++-
 net/core/dev.c                                     |   14 +-
 net/core/filter.c                                  |   15 ++
 net/core/xdp.c                                     |    7 +
 .../selftests/bpf/prog_tests/xdp_adjust_tail.c     |  123 +++++++++++++++++++-
 .../testing/selftests/bpf/progs/test_adjust_tail.c |   30 -----
 .../bpf/progs/test_xdp_adjust_tail_grow.c          |   33 +++++
 .../bpf/progs/test_xdp_adjust_tail_shrink.c        |   30 +++++
 44 files changed, 474 insertions(+), 139 deletions(-)
 delete mode 100644 tools/testing/selftests/bpf/progs/test_adjust_tail.c
 create mode 100644 tools/testing/selftests/bpf/progs/test_xdp_adjust_tail_grow.c
 create mode 100644 tools/testing/selftests/bpf/progs/test_xdp_adjust_tail_shrink.c

--

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
