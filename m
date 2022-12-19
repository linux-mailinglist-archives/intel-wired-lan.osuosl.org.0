Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B262650ED2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Dec 2022 16:42:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C7BCA60BA9;
	Mon, 19 Dec 2022 15:42:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C7BCA60BA9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671464549;
	bh=g6jjPsh2QX00WLhZzactO9zqG/aES0dl7lYz9si3o5g=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=d9e87s1qm1lcu4OA7U2FiJ0yOWY9e34va6AWDR3ODsxfyDITSl10jE0vgc+o5HbBH
	 M+8lpckZM3BifpVGP2eeLi8aAkY2aVl29f2fTIJZfSZwM8XsCSq7KRFj/hDOO0xWnF
	 8EkBfwkYqGQ6wVsUxXJ3WQkbPIW4iLryCEUQqtb3+GIZKoiyfuPzt4vyk17ezDWxGr
	 R3gdYA77oDIJd8ro0fyQCCdi79HNW81+RukUgXKbxJPtMt5qMIJa6zMjbEAprWQmcL
	 DMQjM+itPfOfwYypTHfguieI4pvrtBiPCfLqjFH5lUl5PYmdV2MrvXyYwTIY1wjTj8
	 KNUhaGEtoUtmA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XMpSzcpT62IH; Mon, 19 Dec 2022 15:42:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8FB7460B46;
	Mon, 19 Dec 2022 15:42:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8FB7460B46
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 148CA1BF317
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 15:42:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E11FF4093E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 15:42:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E11FF4093E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u-C2RjO20PwK for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Dec 2022 15:42:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 86EA740939
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 86EA740939
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 15:42:22 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 09A29B80EA1;
 Mon, 19 Dec 2022 15:42:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 428EAC433EF;
 Mon, 19 Dec 2022 15:42:19 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: bpf@vger.kernel.org
Date: Mon, 19 Dec 2022 16:41:29 +0100
Message-Id: <cover.1671462950.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1671464539;
 bh=tZDVjbL0ZWIptwNSQ822sM+4L3GOnBEYSN9bYCt+/R8=;
 h=From:To:Cc:Subject:Date:From;
 b=Z9R3pLLvaG4tAk5nWmynGQqmva0Sh2x+pbGmcO+FryktleNpiu7RpJdOXwMKMgPJm
 lFkEaDWfXwt2bfQxETjM7lk/qslBXHzHzaQ3PHFT/C5LYmDaRtB+08e4OTSkpDUv9t
 TWD8J9/6l903mX1YwDqbkS8GQr12+Vv1lTE+P8OYG58ErcdXlsuCLRTPOryHTqwvht
 epICnM02/xatD/NmdOzjlCpMclyY6N/3JCSBfHFQbs0g/BqzRfMp1OIXPpqPW3RrhB
 Yq6mNPx8ORD2zV8+6l97vCqvw5igLKVpIKzmMviSs1M6Go2qCjQG6F0aaMZhGsLG2K
 sAVXtEDuwbY4w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Z9R3pLLv
Subject: [Intel-wired-lan] [RFC bpf-next 0/8] xdp: introduce xdp-feature
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
Cc: mst@redhat.com, vladimir.oltean@nxp.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 andrii@kernel.org, intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com,
 kuba@kernel.org, pabeni@redhat.com, grygorii.strashko@ti.com,
 aelior@marvell.com, hawk@kernel.org, christophe.jaillet@wanadoo.fr,
 memxor@gmail.com, john@phrozen.org, bjorn@kernel.org,
 magnus.karlsson@intel.com, leon@kernel.org, netdev@vger.kernel.org,
 toke@redhat.com, ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
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

Kumar Kartikeya Dwivedi (1):
  libbpf: add API to get XDP/XSK supported features

Lorenzo Bianconi (3):
  tools: uapi: align if_link.h
  bpf: devmap: check XDP features in bpf_map_update_elem and
    __xdp_enqueue
  selftests/bpf: introduce XDP compliance test tool

Marek Majtyka (4):
  net: introduce XDP features flag
  drivers: net: turn on XDP features
  xsk: add usage of XDP features flags
  xsk: add check for full support of XDP in bind

 .../networking/netdev-xdp-features.rst        |  60 ++
 drivers/net/ethernet/amazon/ena/ena_netdev.c  |   5 +
 .../net/ethernet/aquantia/atlantic/aq_nic.c   |   3 +
 drivers/net/ethernet/broadcom/bnxt/bnxt.c     |   2 +
 drivers/net/ethernet/broadcom/bnxt/bnxt_xdp.c |   2 +
 .../net/ethernet/cavium/thunder/nicvf_main.c  |   2 +
 .../net/ethernet/freescale/dpaa/dpaa_eth.c    |   2 +
 .../net/ethernet/freescale/dpaa2/dpaa2-eth.c  |   1 +
 .../net/ethernet/freescale/enetc/enetc_pf.c   |   3 +
 .../ethernet/fungible/funeth/funeth_main.c    |   6 +
 drivers/net/ethernet/intel/i40e/i40e_main.c   |   9 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |   5 +
 drivers/net/ethernet/intel/igb/igb_main.c     |   9 +-
 drivers/net/ethernet/intel/igc/igc_main.c     |   2 +
 drivers/net/ethernet/intel/igc/igc_xdp.c      |   5 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |   5 +
 .../net/ethernet/intel/ixgbevf/ixgbevf_main.c |   1 +
 drivers/net/ethernet/marvell/mvneta.c         |   3 +
 .../net/ethernet/marvell/mvpp2/mvpp2_main.c   |   3 +
 .../ethernet/marvell/octeontx2/nic/otx2_pf.c  |   9 +-
 drivers/net/ethernet/mediatek/mtk_eth_soc.c   |   5 +
 .../net/ethernet/mellanox/mlx4/en_netdev.c    |   2 +
 .../net/ethernet/mellanox/mlx5/core/en_main.c |   9 +
 drivers/net/ethernet/microsoft/mana/mana_en.c |   2 +
 .../ethernet/netronome/nfp/nfp_net_common.c   |   3 +
 drivers/net/ethernet/qlogic/qede/qede_main.c  |   2 +
 drivers/net/ethernet/sfc/efx.c                |   2 +
 drivers/net/ethernet/sfc/siena/efx.c          |   2 +
 drivers/net/ethernet/socionext/netsec.c       |   2 +
 .../net/ethernet/stmicro/stmmac/stmmac_main.c |   1 +
 drivers/net/ethernet/ti/cpsw.c                |   2 +
 drivers/net/ethernet/ti/cpsw_new.c            |   2 +
 drivers/net/hyperv/netvsc_drv.c               |   2 +
 drivers/net/netdevsim/netdev.c                |   1 +
 drivers/net/tun.c                             |   3 +
 drivers/net/veth.c                            |   4 +
 drivers/net/virtio_net.c                      |   5 +
 drivers/net/xen-netfront.c                    |   1 +
 include/linux/netdevice.h                     |   2 +
 include/linux/xdp_features.h                  |  64 ++
 include/net/xdp.h                             |  39 +
 include/uapi/linux/if_link.h                  |   7 +
 include/uapi/linux/if_xdp.h                   |   1 +
 include/uapi/linux/xdp_features.h             |  34 +
 kernel/bpf/devmap.c                           |  25 +-
 net/core/filter.c                             |  13 +-
 net/core/rtnetlink.c                          |  34 +
 net/xdp/xsk.c                                 |   4 +-
 net/xdp/xsk_buff_pool.c                       |  20 +-
 tools/include/uapi/linux/if_link.h            |  10 +
 tools/include/uapi/linux/if_xdp.h             |   1 +
 tools/include/uapi/linux/xdp_features.h       |  34 +
 tools/lib/bpf/libbpf.h                        |   1 +
 tools/lib/bpf/libbpf.map                      |   1 +
 tools/lib/bpf/netlink.c                       |  62 ++
 tools/testing/selftests/bpf/Makefile          |   5 +-
 .../selftests/bpf/progs/test_xdp_features.c   | 235 ++++++
 .../selftests/bpf/test_xdp_features.sh        |  99 +++
 tools/testing/selftests/bpf/xdp_features.c    | 745 ++++++++++++++++++
 tools/testing/selftests/bpf/xsk.c             |   3 +
 60 files changed, 1602 insertions(+), 24 deletions(-)
 create mode 100644 Documentation/networking/netdev-xdp-features.rst
 create mode 100644 include/linux/xdp_features.h
 create mode 100644 include/uapi/linux/xdp_features.h
 create mode 100644 tools/include/uapi/linux/xdp_features.h
 create mode 100644 tools/testing/selftests/bpf/progs/test_xdp_features.c
 create mode 100755 tools/testing/selftests/bpf/test_xdp_features.sh
 create mode 100644 tools/testing/selftests/bpf/xdp_features.c

-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
