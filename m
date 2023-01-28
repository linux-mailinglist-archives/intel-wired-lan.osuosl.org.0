Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1487B67F863
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Jan 2023 15:06:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 117A281A33;
	Sat, 28 Jan 2023 14:06:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 117A281A33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674914811;
	bh=a2SlexR4Y4DYPoERFtL+ZDeHqP0rbLZZHUrt2w6VeKY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=fp+gN5wBfN1ac8xtbJ5dw8s3oDrRApYjbHDZeEiQ6aI7IIlgtMXtkJi+pFPY0tfz2
	 dRDA0LyTkHZqlYGAYE4LrC6WUKVZRC94SE2BHjHzqyS8QMfEu21+lAqtV7RSUKg7XT
	 Or9eASDTbwdjzd12B8Fc+51md5SUQfhGMzOqhTR6pKcq6rzZVa4Og8tJuQPvOzV6PX
	 x8GcW+yD+XIvaIeQ+I6lNI8NJ4NXrHSnYz0/sr+qRvGLT0NX/CaCfrcDFLHcFl25BE
	 iPpuqk/RQmUjLwYgSgaYXqecZlATKrNiOcCokQpei7WKl3z+xJyB6ivJ+Jn9cvBUKH
	 EoQhjgBV5wXjg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ds7W2iwYiZaj; Sat, 28 Jan 2023 14:06:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B513A817A8;
	Sat, 28 Jan 2023 14:06:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B513A817A8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 171631BF232
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 14:06:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DA4B141583
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 14:06:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA4B141583
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c7L_trA1mi8X for <intel-wired-lan@lists.osuosl.org>;
 Sat, 28 Jan 2023 14:06:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7FAFA41581
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7FAFA41581
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 14:06:43 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3E39960C0B;
 Sat, 28 Jan 2023 14:06:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1778AC4339B;
 Sat, 28 Jan 2023 14:06:41 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: bpf@vger.kernel.org
Date: Sat, 28 Jan 2023 15:06:11 +0100
Message-Id: <cover.1674913191.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674914801;
 bh=/lg9r1PrlzYTWrbPq6/YzOGbXiWbjRm+A8rXFVtzXl4=;
 h=From:To:Cc:Subject:Date:From;
 b=KLNX3PsH/m1fT8Q46hsNE6eM20GGH7P3k6U2VTLS+Xb5zD3/XUfYBZD+OsEdJzwmi
 swIjbL6XRrI8Kwfa1pMdxGcCqk5DrmHEYL59OVvlsjmenjjMNPL76pZMrb+txM3f/3
 VIlRFEZjDXF07/g9T7v8+wW8Alsb/chsOvP/0pFhqXYGcD+emGjm+PUhQ+YMEangui
 qtpBBUYF6dNKxArxhfmfiW2YcIQ3FHfUw1cLQf/3Lfa75/3Xk7XQpw2Pqqw38uu9zW
 9cNHFHp+Fdk103Toodu/Qtjgn+YNv9sjlVy9Eojs8YWBHxveEZF2wbkQ32q9XnFaFG
 IEFs5XQyAU+UA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=KLNX3PsH
Subject: [Intel-wired-lan] [PATCH v4 bpf-next 0/8] xdp: introduce
 xdp-feature support
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
Cc: mst@redhat.com, vladimir.oltean@nxp.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, sdf@google.com,
 daniel@iogearbox.net, andrii@kernel.org, intel-wired-lan@lists.osuosl.org,
 simon.horman@corigine.com, kuba@kernel.org, pabeni@redhat.com,
 aelior@marvell.com, hawk@kernel.org, christophe.jaillet@wanadoo.fr,
 memxor@gmail.com, john@phrozen.org, bjorn@kernel.org,
 magnus.karlsson@intel.com, leon@kernel.org, netdev@vger.kernel.org,
 toke@redhat.com, martin.lau@linux.dev, ecree.xilinx@gmail.com,
 alardam@gmail.com, gospo@broadcom.com, saeedm@nvidia.com, davem@davemloft.net,
 nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Introduce the capability to export the XDP features supported by the NIC.
Introduce a XDP compliance test tool (xdp_features) to check the features
exported by the NIC match the real features supported by the driver.
Allow XDP_REDIRECT of non-linear XDP frames into a devmap.
Export XDP features for each XDP capable driver.
Extend libbpf netlink implementation in order to support netlink_generic
protocol.
Introduce a simple generic netlink family for netdev data.

Changes since v3:
- add IPv6 support to XDP compliance test tool
- rely on network_helpers in XDP compliance test tool
- cosmetics changes

Changes since v2:
- rebase on top of bpf-next
- fix compilation error

Changes since v1:
- add Documentation to netdev.yaml
- use flags instead of enum as type for netdev.yaml definitions
- squash XDP_PASS, XDP_DROP, XDP_TX and XDP_ABORTED into XDP_BASIC since they
  are supported by all drivers.
- add notifier event to xdp_features_set_redirect_target() and
  xdp_features_clear_redirect_target()
- add selftest for xdp-features support in bpf_xdp_detach()
- add IPv6 preliminary support to XDP compliance test tool

Changes since RFCv2:
- do not assume fixed layout for genl kernel messages
- fix warnings in netdev_nl_dev_fill
- fix capabilities for nfp driver
- add supported_sg parameter to xdp_features_set_redirect_target and drop
  __xdp_features_set_redirect_target routine

Changes since RFCv1:
- Introduce netdev-genl implementation and get rid of rtnl one.
- Introduce netlink_generic support in libbpf netlink implementation
- Rename XDP_FEATURE_* in NETDEV_XDP_ACT_*
- Rename XDP_FEATURE_REDIRECT_TARGET in NETDEV_XDP_ACT_NDO_XMIT
- Rename XDP_FEATURE_FRAG_RX in NETDEV_XDP_ACT_RX_SG
- Rename XDP_FEATURE_FRAG_TARFET in NETDEV_XDP_ACT_NDO_XMIT
- Get rid of XDP_LOCK feature.
- Move xdp_feature field in a netdevice struct hole in the 4th cacheline.

Jakub Kicinski (1):
  netdev-genl: create a simple family for netdev stuff

Lorenzo Bianconi (5):
  libbpf: add the capability to specify netlink proto in
    libbpf_netlink_send_recv
  libbpf: add API to get XDP/XSK supported features
  bpf: devmap: check XDP features in __xdp_enqueue routine
  selftests/bpf: add test for bpf_xdp_query xdp-features support
  selftests/bpf: introduce XDP compliance test tool

Marek Majtyka (2):
  drivers: net: turn on XDP features
  xsk: add usage of XDP features flags

 Documentation/netlink/specs/netdev.yaml       | 100 +++
 drivers/net/ethernet/amazon/ena/ena_netdev.c  |   4 +
 .../net/ethernet/aquantia/atlantic/aq_nic.c   |   5 +
 drivers/net/ethernet/broadcom/bnxt/bnxt.c     |   3 +
 drivers/net/ethernet/broadcom/bnxt/bnxt_xdp.c |   2 +
 .../net/ethernet/cavium/thunder/nicvf_main.c  |   2 +
 .../net/ethernet/freescale/dpaa/dpaa_eth.c    |   4 +
 .../net/ethernet/freescale/dpaa2/dpaa2-eth.c  |   4 +
 .../net/ethernet/freescale/enetc/enetc_pf.c   |   3 +
 .../ethernet/fungible/funeth/funeth_main.c    |   6 +
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  10 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |   5 +
 drivers/net/ethernet/intel/igb/igb_main.c     |   9 +-
 drivers/net/ethernet/intel/igc/igc_main.c     |   3 +
 drivers/net/ethernet/intel/igc/igc_xdp.c      |   5 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |   6 +
 .../net/ethernet/intel/ixgbevf/ixgbevf_main.c |   1 +
 drivers/net/ethernet/marvell/mvneta.c         |   3 +
 .../net/ethernet/marvell/mvpp2/mvpp2_main.c   |   4 +
 .../ethernet/marvell/octeontx2/nic/otx2_pf.c  |   8 +-
 drivers/net/ethernet/mediatek/mtk_eth_soc.c   |   6 +
 .../net/ethernet/mellanox/mlx4/en_netdev.c    |   2 +
 .../net/ethernet/mellanox/mlx5/core/en_main.c |  11 +
 drivers/net/ethernet/microsoft/mana/mana_en.c |   2 +
 .../ethernet/netronome/nfp/nfp_net_common.c   |   5 +
 drivers/net/ethernet/qlogic/qede/qede_main.c  |   3 +
 drivers/net/ethernet/sfc/efx.c                |   4 +
 drivers/net/ethernet/sfc/siena/efx.c          |   4 +
 drivers/net/ethernet/socionext/netsec.c       |   3 +
 .../net/ethernet/stmicro/stmmac/stmmac_main.c |   2 +
 drivers/net/ethernet/ti/cpsw.c                |   4 +
 drivers/net/ethernet/ti/cpsw_new.c            |   4 +
 drivers/net/hyperv/netvsc_drv.c               |   2 +
 drivers/net/netdevsim/netdev.c                |   1 +
 drivers/net/tun.c                             |   5 +
 drivers/net/veth.c                            |   4 +
 drivers/net/virtio_net.c                      |   4 +
 drivers/net/xen-netfront.c                    |   2 +
 include/linux/netdevice.h                     |   3 +
 include/net/xdp.h                             |  15 +
 include/uapi/linux/netdev.h                   |  59 ++
 kernel/bpf/devmap.c                           |  16 +-
 net/core/Makefile                             |   3 +-
 net/core/dev.c                                |   1 +
 net/core/filter.c                             |  13 +-
 net/core/netdev-genl-gen.c                    |  48 ++
 net/core/netdev-genl-gen.h                    |  23 +
 net/core/netdev-genl.c                        | 179 +++++
 net/core/xdp.c                                |  18 +
 net/xdp/xsk_buff_pool.c                       |   7 +-
 tools/include/uapi/linux/netdev.h             |  59 ++
 tools/lib/bpf/libbpf.h                        |   3 +-
 tools/lib/bpf/netlink.c                       | 118 ++-
 tools/lib/bpf/nlattr.h                        |  12 +
 tools/testing/selftests/bpf/.gitignore        |   1 +
 tools/testing/selftests/bpf/Makefile          |  11 +-
 .../bpf/prog_tests/xdp_do_redirect.c          |  27 +-
 .../selftests/bpf/prog_tests/xdp_info.c       |   8 +
 .../selftests/bpf/progs/xdp_features.c        | 275 +++++++
 .../selftests/bpf/test_xdp_features.sh        | 100 +++
 tools/testing/selftests/bpf/xdp_features.c    | 731 ++++++++++++++++++
 tools/testing/selftests/bpf/xdp_features.h    |  33 +
 62 files changed, 1985 insertions(+), 33 deletions(-)
 create mode 100644 Documentation/netlink/specs/netdev.yaml
 create mode 100644 include/uapi/linux/netdev.h
 create mode 100644 net/core/netdev-genl-gen.c
 create mode 100644 net/core/netdev-genl-gen.h
 create mode 100644 net/core/netdev-genl.c
 create mode 100644 tools/include/uapi/linux/netdev.h
 create mode 100644 tools/testing/selftests/bpf/progs/xdp_features.c
 create mode 100755 tools/testing/selftests/bpf/test_xdp_features.sh
 create mode 100644 tools/testing/selftests/bpf/xdp_features.c
 create mode 100644 tools/testing/selftests/bpf/xdp_features.h

-- 
2.39.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
