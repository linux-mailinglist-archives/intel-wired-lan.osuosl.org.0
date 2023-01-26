Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB5567CB71
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Jan 2023 13:59:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CB4704173B;
	Thu, 26 Jan 2023 12:59:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CB4704173B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674737949;
	bh=SdU4khWMs+gB1uHpzUCXZpg68wFA5RbYip3Z4NEJnvI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=bfQ9oAUXkHJo7KFIdEjNgFH+vcdWeANmHPaKamTrTAMKNK5TZ9ReXbdQPzHRDSbXQ
	 fx2e7O2GGaaW9U/9WZPvmVx5bT/P5+tjaslcfnKA3ie5SNbda6TsWimTfvQUhrxHHh
	 hhjhZMYqIxmuqy+FOOKYjduWl/yHjyLyBlOqarIaPNgEwgU5nuODpS8RggluMElj4P
	 JOpdadVl7yQ7dMaSeiGTDrTcCKQWTxYNvtpG2xiSaKUK17fWqEt/Q1C85YtHuX/rBX
	 8k53VXQCTYv2zKMB8Ey9xr9HVj4gYdiDF7AI1M2+wKR4t8DE+J/NXZn3AHUtZieVbS
	 LpJrem1Gd+B8A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O3lWq0lj7W64; Thu, 26 Jan 2023 12:59:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 74A67416EB;
	Thu, 26 Jan 2023 12:59:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 74A67416EB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2A01F1BF4D7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 12:59:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0E7E98143C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 12:59:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E7E98143C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BdW8sSsK0o-v for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Jan 2023 12:58:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 99F108141B
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 99F108141B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 12:58:59 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 6ED0C616E7;
 Thu, 26 Jan 2023 12:58:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59415C433D2;
 Thu, 26 Jan 2023 12:58:57 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: bpf@vger.kernel.org
Date: Thu, 26 Jan 2023 13:58:25 +0100
Message-Id: <cover.1674737592.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674737937;
 bh=J56pUYj3hx6vcxR8OCAg3bPvvHztWkZxEUSF+x91Jdw=;
 h=From:To:Cc:Subject:Date:From;
 b=XdME3FC5ZV82frKWDhlc+YcU46v5lTVpRvN2zwDgmRkp8hLG7fJDZMlHZbsTyi+HU
 27G53poaO0XODBElJFNkFh7JxXF3Ga2ssfOeORz2WeKJAWFWKGyfplCkeOPvVxsUX0
 CzKVtBZzCmzafXpXtKFJaLJRi+JaGc0pmlUc7xS19b+URBZkfBmyGwGf7bR8IB8vfM
 yuhHHWY06rj2ELmkjrPiIpJ3JujGJe/vzWveVb6Gnfyy2VKLibW0D0APsZ8j+YhND1
 ECFAt6bNujRQ3Emk0oAR4F5P0jy+dZDZub2SFhzdhpDToZKJ+mBFFFN9KIBLroL/Xy
 gPvJ9geZibfHg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=XdME3FC5
Subject: [Intel-wired-lan] [PATCH v3 bpf-next 0/8] xdp: introduce
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
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 andrii@kernel.org, intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com,
 kuba@kernel.org, pabeni@redhat.com, aelior@marvell.com, hawk@kernel.org,
 christophe.jaillet@wanadoo.fr, memxor@gmail.com, john@phrozen.org,
 bjorn@kernel.org, magnus.karlsson@intel.com, leon@kernel.org,
 netdev@vger.kernel.org, toke@redhat.com, martin.lau@linux.dev,
 ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
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
 tools/lib/bpf/netlink.c                       | 121 ++-
 tools/lib/bpf/nlattr.h                        |  12 +
 tools/testing/selftests/bpf/.gitignore        |   1 +
 tools/testing/selftests/bpf/Makefile          |  11 +-
 .../bpf/prog_tests/xdp_do_redirect.c          |  27 +-
 .../selftests/bpf/prog_tests/xdp_info.c       |   8 +
 .../selftests/bpf/progs/xdp_features.c        | 249 ++++++
 .../selftests/bpf/test_xdp_features.sh        |  99 +++
 tools/testing/selftests/bpf/xdp_features.c    | 736 ++++++++++++++++++
 tools/testing/selftests/bpf/xdp_features.h    |  33 +
 62 files changed, 1966 insertions(+), 33 deletions(-)
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
