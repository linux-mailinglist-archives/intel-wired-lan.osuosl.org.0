Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B91E675AF9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Jan 2023 18:17:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 859AC41D1D;
	Fri, 20 Jan 2023 17:17:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 859AC41D1D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674235053;
	bh=ZGlDU6jmcck4mO2a9wTPnC79ruKUyqIyZswFBF26Lfs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=B38lWvfSt3ez28iYMsEgu9YafleJhd1azuLr9bP5oDD9WGz2cMG4eVtKaOkGDyEsZ
	 asDlfPazKNUyVf92XToz/L0T9H/8QBqY5G4cjsY8T6cf5NtDI/Hx8giR86KnnEYtGJ
	 VVeO/18bwVOFmRr5jmc8Rey8/DxO9KZXft9P4E+EqbzW4jeO7Vy+qBQvRYj0o1Sj53
	 OWF7+wC3Pix6Tk9m2dy7oYAjR3AEDVl6PwT7so65JvD4MLWDdyVr5m42EtATrQV1/z
	 8CLjxiI/auR+jb+JRkbXy51VPW415Xo3rcLP+Fxp3JJojFek1CZBLBwUhLgzZLHa65
	 Rlorqfw2ro9nQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wauu1No8dmi8; Fri, 20 Jan 2023 17:17:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6094B41C81;
	Fri, 20 Jan 2023 17:17:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6094B41C81
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E56501BF584
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 17:17:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BFA66612B1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 17:17:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BFA66612B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O_DVQQVLQiIg for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Jan 2023 17:17:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB9F7612AF
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EB9F7612AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 17:17:23 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3414A62021;
 Fri, 20 Jan 2023 17:17:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B21FDC433D2;
 Fri, 20 Jan 2023 17:17:21 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: bpf@vger.kernel.org
Date: Fri, 20 Jan 2023 18:16:51 +0100
Message-Id: <861224c406f78694530fde0d52c49d92e1e990a2.1674234430.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <cover.1674234430.git.lorenzo@kernel.org>
References: <cover.1674234430.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674235042;
 bh=gxjQ713x52ESIBjM+6UDI3drhIbtl+7LRFj808Et6lw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MhRsQDNGm+cfkazqHYg3pUyEH4uY5BMySsfFYHmqe7satEdJE5/qucevlFvGiIPYt
 wzSfE5/gFFOBYrdaUpU5yy2abquSWzwjYEklbk5O2Enk98WsPpbznagIYtvnGNfowT
 +WKzScBp8sDj24iU3Ya3eULgGbh56H+33qB6bYHgme+C/RtO777XJAfqlcXa3FZKNK
 1EVSFIxtBSpEg84A3CL4bVSElEF/JQB069zLW25E6KDVqGO9zRad6QtfgtD4/QKFQP
 kbffn2mf0T+C9abNpOb51uz9ixLHv5FIpIawTYOTd4rPBcCRpThUKyEjVrnOBxJcgM
 SNCDGsPRCo65g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=MhRsQDNG
Subject: [Intel-wired-lan] [PATCH bpf-next 2/7] drivers: net: turn on XDP
 features
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
 niklas.soderlund@corigine.com, andrii@kernel.org,
 intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com, kuba@kernel.org,
 pabeni@redhat.com, aelior@marvell.com, hawk@kernel.org,
 christophe.jaillet@wanadoo.fr, memxor@gmail.com, john@phrozen.org,
 bjorn@kernel.org, magnus.karlsson@intel.com, leon@kernel.org,
 netdev@vger.kernel.org, toke@redhat.com, ecree.xilinx@gmail.com,
 alardam@gmail.com, gospo@broadcom.com, saeedm@nvidia.com, davem@davemloft.net,
 nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Marek Majtyka <alardam@gmail.com>

A summary of the flags being set for various drivers is given below.
Note that XDP_F_REDIRECT_TARGET and XDP_F_FRAG_TARGET are features
that can be turned off and on at runtime. This means that these flags
may be set and unset under RTNL lock protection by the driver. Hence,
READ_ONCE must be used by code loading the flag value.

Also, these flags are not used for synchronization against the availability
of XDP resources on a device. It is merely a hint, and hence the read
may race with the actual teardown of XDP resources on the device. This
may change in the future, e.g. operations taking a reference on the XDP
resources of the driver, and in turn inhibiting turning off this flag.
However, for now, it can only be used as a hint to check whether device
supports becoming a redirection target.

Turn 'hw-offload' feature flag on for:
 - netronome (nfp)
 - netdevsim.

Turn 'native' and 'zerocopy' features flags on for:
 - intel (i40e, ice, ixgbe, igc)
 - mellanox (mlx5).
 - stmmac

Turn 'native' features flags on for:
 - amazon (ena)
 - broadcom (bnxt)
 - freescale (dpaa, dpaa2, enetc)
 - funeth
 - intel (igb)
 - marvell (mvneta, mvpp2, octeontx2)
 - mellanox (mlx4)
 - qlogic (qede)
 - sfc
 - socionext (netsec)
 - ti (cpsw)
 - tap
 - veth
 - xen
 - virtio_net.

Turn 'basic' (tx, pass, aborted and drop) features flags on for:
 - netronome (nfp)
 - cavium (thunder)
 - hyperv.

Turn 'tx_lock' feature flag on for:
 - aquantia
 - freescale (dpaa2)
 - intel (igb)
 - marvell (mvneta, mvpp2)
 - microsoft (mana)
 - mediatek
 - qlogic (qede)
 - socionext (netsec)
 - ti (cpsw)
 - tap
 - veth
 - xen

Turn 'redirect_target' feature flag on for:
 - amanzon (ena)
 - broadcom (bnxt)
 - freescale (dpaa, dpaa2)
 - intel (i40e, ice, igb, ixgbe)
 - ti (cpsw)
 - marvell (mvneta, mvpp2)
 - sfc
 - socionext (netsec)
 - qlogic (qede)
 - mellanox (mlx5)
 - tap
 - veth
 - virtio_net
 - xen

Co-developed-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
Co-developed-by: Lorenzo Bianconi <lorenzo@kernel.org>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
Signed-off-by: Marek Majtyka <alardam@gmail.com>
---
 drivers/net/ethernet/amazon/ena/ena_netdev.c  |  5 +++
 .../net/ethernet/aquantia/atlantic/aq_nic.c   |  4 +++
 drivers/net/ethernet/broadcom/bnxt/bnxt.c     |  2 ++
 drivers/net/ethernet/broadcom/bnxt/bnxt_xdp.c |  2 ++
 .../net/ethernet/cavium/thunder/nicvf_main.c  |  2 ++
 .../net/ethernet/freescale/dpaa/dpaa_eth.c    |  2 ++
 .../net/ethernet/freescale/dpaa2/dpaa2-eth.c  |  1 +
 .../net/ethernet/freescale/enetc/enetc_pf.c   |  2 ++
 .../ethernet/fungible/funeth/funeth_main.c    |  6 ++++
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 10 ++++--
 drivers/net/ethernet/intel/ice/ice_main.c     |  5 +++
 drivers/net/ethernet/intel/igb/igb_main.c     | 10 +++++-
 drivers/net/ethernet/intel/igc/igc_main.c     |  2 ++
 drivers/net/ethernet/intel/igc/igc_xdp.c      |  5 +++
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  5 +++
 .../net/ethernet/intel/ixgbevf/ixgbevf_main.c |  1 +
 drivers/net/ethernet/marvell/mvneta.c         |  2 ++
 .../net/ethernet/marvell/mvpp2/mvpp2_main.c   |  3 ++
 .../ethernet/marvell/octeontx2/nic/otx2_pf.c  |  8 +++--
 drivers/net/ethernet/mediatek/mtk_eth_soc.c   |  5 +++
 .../net/ethernet/mellanox/mlx4/en_netdev.c    |  2 ++
 .../net/ethernet/mellanox/mlx5/core/en_main.c | 10 ++++++
 drivers/net/ethernet/microsoft/mana/mana_en.c |  1 +
 .../ethernet/netronome/nfp/nfp_net_common.c   |  5 +++
 drivers/net/ethernet/qlogic/qede/qede_main.c  |  2 ++
 drivers/net/ethernet/sfc/efx.c                |  3 ++
 drivers/net/ethernet/sfc/siena/efx.c          |  3 ++
 drivers/net/ethernet/socionext/netsec.c       |  2 ++
 .../net/ethernet/stmicro/stmmac/stmmac_main.c |  1 +
 drivers/net/ethernet/ti/cpsw.c                |  2 ++
 drivers/net/ethernet/ti/cpsw_new.c            |  3 ++
 drivers/net/hyperv/netvsc_drv.c               |  2 ++
 drivers/net/netdevsim/netdev.c                |  1 +
 drivers/net/tun.c                             |  4 +++
 drivers/net/veth.c                            |  3 ++
 drivers/net/virtio_net.c                      |  5 +++
 drivers/net/xen-netfront.c                    |  1 +
 include/net/xdp.h                             | 31 +++++++++++++++++++
 38 files changed, 158 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/amazon/ena/ena_netdev.c b/drivers/net/ethernet/amazon/ena/ena_netdev.c
index e8ad5ea31aff..8226c93a0cbc 100644
--- a/drivers/net/ethernet/amazon/ena/ena_netdev.c
+++ b/drivers/net/ethernet/amazon/ena/ena_netdev.c
@@ -597,7 +597,10 @@ static int ena_xdp_set(struct net_device *netdev, struct netdev_bpf *bpf)
 				if (rc)
 					return rc;
 			}
+			xdp_features_set_redirect_target(&netdev->xdp_features,
+							 false);
 		} else if (old_bpf_prog) {
+			xdp_features_clear_redirect_target(&netdev->xdp_features);
 			rc = ena_destroy_and_free_all_xdp_queues(adapter);
 			if (rc)
 				return rc;
@@ -4103,6 +4106,8 @@ static void ena_set_conf_feat_params(struct ena_adapter *adapter,
 	/* Set offload features */
 	ena_set_dev_offloads(feat, netdev);
 
+	netdev->xdp_features = NETDEV_XDP_ACT_FULL;
+
 	adapter->max_mtu = feat->dev_attr.max_mtu;
 	netdev->max_mtu = adapter->max_mtu;
 	netdev->min_mtu = ENA_MIN_MTU;
diff --git a/drivers/net/ethernet/aquantia/atlantic/aq_nic.c b/drivers/net/ethernet/aquantia/atlantic/aq_nic.c
index 06508eebb585..3fc9a702083c 100644
--- a/drivers/net/ethernet/aquantia/atlantic/aq_nic.c
+++ b/drivers/net/ethernet/aquantia/atlantic/aq_nic.c
@@ -384,6 +384,10 @@ void aq_nic_ndev_init(struct aq_nic_s *self)
 	self->ndev->mtu = aq_nic_cfg->mtu - ETH_HLEN;
 	self->ndev->max_mtu = aq_hw_caps->mtu - ETH_FCS_LEN - ETH_HLEN;
 
+	self->ndev->xdp_features = NETDEV_XDP_ACT_FULL |
+				   NETDEV_XDP_ACT_NDO_XMIT |
+				   NETDEV_XDP_ACT_RX_SG |
+				   NETDEV_XDP_ACT_NDO_XMIT_SG;
 }
 
 void aq_nic_set_tx_ring(struct aq_nic_s *self, unsigned int idx,
diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt.c b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
index 16ce7a90610c..333636d83620 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
@@ -13686,6 +13686,8 @@ static int bnxt_init_one(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	netif_set_tso_max_size(dev, GSO_MAX_SIZE);
 
+	dev->xdp_features = NETDEV_XDP_ACT_FULL | NETDEV_XDP_ACT_RX_SG;
+
 #ifdef CONFIG_BNXT_SRIOV
 	init_waitqueue_head(&bp->sriov_cfg_wait);
 #endif
diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt_xdp.c b/drivers/net/ethernet/broadcom/bnxt/bnxt_xdp.c
index 36d5202c0aee..933b56eb5afe 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt_xdp.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt_xdp.c
@@ -422,9 +422,11 @@ static int bnxt_xdp_set(struct bnxt *bp, struct bpf_prog *prog)
 
 	if (prog) {
 		bnxt_set_rx_skb_mode(bp, true);
+		xdp_features_set_redirect_target(&dev->xdp_features, true);
 	} else {
 		int rx, tx;
 
+		xdp_features_clear_redirect_target(&dev->xdp_features);
 		bnxt_set_rx_skb_mode(bp, false);
 		bnxt_get_max_rings(bp, &rx, &tx, true);
 		if (rx > 1) {
diff --git a/drivers/net/ethernet/cavium/thunder/nicvf_main.c b/drivers/net/ethernet/cavium/thunder/nicvf_main.c
index f2f95493ec89..8b25313c7f6b 100644
--- a/drivers/net/ethernet/cavium/thunder/nicvf_main.c
+++ b/drivers/net/ethernet/cavium/thunder/nicvf_main.c
@@ -2218,6 +2218,8 @@ static int nicvf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	netdev->netdev_ops = &nicvf_netdev_ops;
 	netdev->watchdog_timeo = NICVF_TX_TIMEOUT;
 
+	netdev->xdp_features = NETDEV_XDP_ACT_BASIC;
+
 	/* MTU range: 64 - 9200 */
 	netdev->min_mtu = NIC_HW_MIN_FRS;
 	netdev->max_mtu = NIC_HW_MAX_FRS;
diff --git a/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c b/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
index 3f8032947d86..f6e1b270b6d0 100644
--- a/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
+++ b/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
@@ -244,6 +244,8 @@ static int dpaa_netdev_init(struct net_device *net_dev,
 	net_dev->features |= net_dev->hw_features;
 	net_dev->vlan_features = net_dev->features;
 
+	net_dev->xdp_features = NETDEV_XDP_ACT_FULL | NETDEV_XDP_ACT_NDO_XMIT;
+
 	if (is_valid_ether_addr(mac_addr)) {
 		memcpy(net_dev->perm_addr, mac_addr, net_dev->addr_len);
 		eth_hw_addr_set(net_dev, mac_addr);
diff --git a/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth.c b/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth.c
index 0c35abb7d065..6bf4eec441b9 100644
--- a/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth.c
+++ b/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth.c
@@ -4593,6 +4593,7 @@ static int dpaa2_eth_netdev_init(struct net_device *net_dev)
 			    NETIF_F_LLTX | NETIF_F_HW_TC | NETIF_F_TSO;
 	net_dev->gso_max_segs = DPAA2_ETH_ENQUEUE_MAX_FDS;
 	net_dev->hw_features = net_dev->features;
+	net_dev->xdp_features = NETDEV_XDP_ACT_ZC | NETDEV_XDP_ACT_NDO_XMIT;
 
 	if (priv->dpni_attrs.vlan_filter_entries)
 		net_dev->hw_features |= NETIF_F_HW_VLAN_CTAG_FILTER;
diff --git a/drivers/net/ethernet/freescale/enetc/enetc_pf.c b/drivers/net/ethernet/freescale/enetc/enetc_pf.c
index 9f6c4f5c0a6c..5f481985d3c1 100644
--- a/drivers/net/ethernet/freescale/enetc/enetc_pf.c
+++ b/drivers/net/ethernet/freescale/enetc/enetc_pf.c
@@ -825,6 +825,8 @@ static void enetc_pf_netdev_setup(struct enetc_si *si, struct net_device *ndev,
 		ndev->hw_features |= NETIF_F_RXHASH;
 
 	ndev->priv_flags |= IFF_UNICAST_FLT;
+	ndev->xdp_features = NETDEV_XDP_ACT_FULL | NETDEV_XDP_ACT_NDO_XMIT |
+			     NETDEV_XDP_ACT_RX_SG | NETDEV_XDP_ACT_NDO_XMIT_SG;
 
 	if (si->hw_features & ENETC_SI_F_PSFP && !enetc_psfp_enable(priv)) {
 		priv->active_offloads |= ENETC_F_QCI;
diff --git a/drivers/net/ethernet/fungible/funeth/funeth_main.c b/drivers/net/ethernet/fungible/funeth/funeth_main.c
index b4cce30e526a..544200c940e1 100644
--- a/drivers/net/ethernet/fungible/funeth/funeth_main.c
+++ b/drivers/net/ethernet/fungible/funeth/funeth_main.c
@@ -1160,6 +1160,11 @@ static int fun_xdp_setup(struct net_device *dev, struct netdev_bpf *xdp)
 			WRITE_ONCE(rxqs[i]->xdp_prog, prog);
 	}
 
+	if (prog)
+		xdp_features_set_redirect_target(&dev->xdp_features, true);
+	else
+		xdp_features_clear_redirect_target(&dev->xdp_features);
+
 	dev->max_mtu = prog ? XDP_MAX_MTU : FUN_MAX_MTU;
 	old_prog = xchg(&fp->xdp_prog, prog);
 	if (old_prog)
@@ -1765,6 +1770,7 @@ static int fun_create_netdev(struct fun_ethdev *ed, unsigned int portid)
 	netdev->vlan_features = netdev->features & VLAN_FEAT;
 	netdev->mpls_features = netdev->vlan_features;
 	netdev->hw_enc_features = netdev->hw_features;
+	netdev->xdp_features = NETDEV_XDP_ACT_FULL;
 
 	netdev->min_mtu = ETH_MIN_MTU;
 	netdev->max_mtu = FUN_MAX_MTU;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 53d0083e35da..3b868c5a8052 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -13339,9 +13339,11 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi, struct bpf_prog *prog,
 	old_prog = xchg(&vsi->xdp_prog, prog);
 
 	if (need_reset) {
-		if (!prog)
+		if (!prog) {
+			xdp_features_clear_redirect_target(&vsi->netdev->xdp_features);
 			/* Wait until ndo_xsk_wakeup completes. */
 			synchronize_rcu();
+		}
 		i40e_reset_and_rebuild(pf, true, true);
 	}
 
@@ -13362,11 +13364,14 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi, struct bpf_prog *prog,
 	/* Kick start the NAPI context if there is an AF_XDP socket open
 	 * on that queue id. This so that receiving will start.
 	 */
-	if (need_reset && prog)
+	if (need_reset && prog) {
 		for (i = 0; i < vsi->num_queue_pairs; i++)
 			if (vsi->xdp_rings[i]->xsk_pool)
 				(void)i40e_xsk_wakeup(vsi->netdev, i,
 						      XDP_WAKEUP_RX);
+		xdp_features_set_redirect_target(&vsi->netdev->xdp_features,
+						 true);
+	}
 
 	return 0;
 }
@@ -13783,6 +13788,7 @@ static int i40e_config_netdev(struct i40e_vsi *vsi)
 	netdev->hw_enc_features |= NETIF_F_TSO_MANGLEID;
 
 	netdev->features &= ~NETIF_F_HW_TC;
+	netdev->xdp_features = NETDEV_XDP_ACT_ZC;
 
 	if (vsi->type == I40E_VSI_MAIN) {
 		SET_NETDEV_DEV(netdev, &pf->pdev->dev);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a9a7f8b52140..ff2e35f50376 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -22,6 +22,7 @@
 #include "ice_eswitch.h"
 #include "ice_tc_lib.h"
 #include "ice_vsi_vlan_ops.h"
+#include <net/xdp_sock_drv.h>
 
 #define DRV_SUMMARY	"Intel(R) Ethernet Connection E800 Series Linux Driver"
 static const char ice_driver_string[] = DRV_SUMMARY;
@@ -2899,11 +2900,14 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog *prog,
 			if (xdp_ring_err)
 				NL_SET_ERR_MSG_MOD(extack, "Setting up XDP Tx resources failed");
 		}
+		xdp_features_set_redirect_target(&vsi->netdev->xdp_features,
+						 false);
 		/* reallocate Rx queues that are used for zero-copy */
 		xdp_ring_err = ice_realloc_zc_buf(vsi, true);
 		if (xdp_ring_err)
 			NL_SET_ERR_MSG_MOD(extack, "Setting up XDP Rx resources failed");
 	} else if (ice_is_xdp_ena_vsi(vsi) && !prog) {
+		xdp_features_clear_redirect_target(&vsi->netdev->xdp_features);
 		xdp_ring_err = ice_destroy_xdp_rings(vsi);
 		if (xdp_ring_err)
 			NL_SET_ERR_MSG_MOD(extack, "Freeing XDP Tx resources failed");
@@ -3446,6 +3450,7 @@ static int ice_cfg_netdev(struct ice_vsi *vsi)
 	np->vsi = vsi;
 
 	ice_set_netdev_features(netdev);
+	netdev->xdp_features = NETDEV_XDP_ACT_ZC;
 
 	ice_set_ops(netdev);
 
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 3c0c35ecea10..43a6f1f9d3fd 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -2871,8 +2871,15 @@ static int igb_xdp_setup(struct net_device *dev, struct netdev_bpf *bpf)
 		bpf_prog_put(old_prog);
 
 	/* bpf is just replaced, RXQ and MTU are already setup */
-	if (!need_reset)
+	if (!need_reset) {
 		return 0;
+	} else {
+		if (prog)
+			xdp_features_set_redirect_target(&dev->xdp_features,
+							 true);
+		else
+			xdp_features_clear_redirect_target(&dev->xdp_features);
+	}
 
 	if (running)
 		igb_open(dev);
@@ -3317,6 +3324,7 @@ static int igb_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	netdev->priv_flags |= IFF_SUPP_NOFCS;
 
 	netdev->priv_flags |= IFF_UNICAST_FLT;
+	netdev->xdp_features = NETDEV_XDP_ACT_FULL;
 
 	/* MTU range: 68 - 9216 */
 	netdev->min_mtu = ETH_MIN_MTU;
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index e86b15efaeb8..3702c3cea383 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6533,6 +6533,8 @@ static int igc_probe(struct pci_dev *pdev,
 	netdev->mpls_features |= NETIF_F_HW_CSUM;
 	netdev->hw_enc_features |= netdev->vlan_features;
 
+	netdev->xdp_features = NETDEV_XDP_ACT_ZC;
+
 	/* MTU range: 68 - 9216 */
 	netdev->min_mtu = ETH_MIN_MTU;
 	netdev->max_mtu = MAX_STD_JUMBO_FRAME_SIZE;
diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.c b/drivers/net/ethernet/intel/igc/igc_xdp.c
index aeeb34e64610..49c73a4034b1 100644
--- a/drivers/net/ethernet/intel/igc/igc_xdp.c
+++ b/drivers/net/ethernet/intel/igc/igc_xdp.c
@@ -29,6 +29,11 @@ int igc_xdp_set_prog(struct igc_adapter *adapter, struct bpf_prog *prog,
 	if (old_prog)
 		bpf_prog_put(old_prog);
 
+	if (prog)
+		xdp_features_set_redirect_target(&dev->xdp_features, true);
+	else
+		xdp_features_clear_redirect_target(&dev->xdp_features);
+
 	if (if_running)
 		igc_open(dev);
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index ab8370c413f3..7edb2721c1a8 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -10301,6 +10301,8 @@ static int ixgbe_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
 			rcu_assign_pointer(adapter->xdp_prog, old_prog);
 			return -EINVAL;
 		}
+		if (!prog)
+			xdp_features_clear_redirect_target(&dev->xdp_features);
 	} else {
 		for (i = 0; i < adapter->num_rx_queues; i++)
 			(void)xchg(&adapter->rx_ring[i]->xdp_prog,
@@ -10320,6 +10322,7 @@ static int ixgbe_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
 			if (adapter->xdp_ring[i]->xsk_pool)
 				(void)ixgbe_xsk_wakeup(adapter->netdev, i,
 						       XDP_WAKEUP_RX);
+		xdp_features_set_redirect_target(&dev->xdp_features, true);
 	}
 
 	return 0;
@@ -11017,6 +11020,8 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	netdev->priv_flags |= IFF_UNICAST_FLT;
 	netdev->priv_flags |= IFF_SUPP_NOFCS;
 
+	netdev->xdp_features = NETDEV_XDP_ACT_ZC;
+
 	/* MTU range: 68 - 9710 */
 	netdev->min_mtu = ETH_MIN_MTU;
 	netdev->max_mtu = IXGBE_MAX_JUMBO_FRAME_SIZE - (ETH_HLEN + ETH_FCS_LEN);
diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index ea0a230c1153..a44e4bd56142 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -4634,6 +4634,7 @@ static int ixgbevf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 			    NETIF_F_HW_VLAN_CTAG_TX;
 
 	netdev->priv_flags |= IFF_UNICAST_FLT;
+	netdev->xdp_features = NETDEV_XDP_ACT_BASIC;
 
 	/* MTU range: 68 - 1504 or 9710 */
 	netdev->min_mtu = ETH_MIN_MTU;
diff --git a/drivers/net/ethernet/marvell/mvneta.c b/drivers/net/ethernet/marvell/mvneta.c
index f8925cac61e4..7ca49753d618 100644
--- a/drivers/net/ethernet/marvell/mvneta.c
+++ b/drivers/net/ethernet/marvell/mvneta.c
@@ -5612,6 +5612,8 @@ static int mvneta_probe(struct platform_device *pdev)
 			NETIF_F_TSO | NETIF_F_RXCSUM;
 	dev->hw_features |= dev->features;
 	dev->vlan_features |= dev->features;
+	dev->xdp_features = NETDEV_XDP_ACT_FULL | NETDEV_XDP_ACT_NDO_XMIT |
+			    NETDEV_XDP_ACT_RX_SG | NETDEV_XDP_ACT_NDO_XMIT_SG;
 	dev->priv_flags |= IFF_LIVE_ADDR_CHANGE;
 	netif_set_tso_max_segs(dev, MVNETA_MAX_TSO_SEGS);
 
diff --git a/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c b/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
index 4da45c5abba5..826423541d7a 100644
--- a/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
+++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
@@ -6866,6 +6866,9 @@ static int mvpp2_port_probe(struct platform_device *pdev,
 
 	dev->vlan_features |= features;
 	netif_set_tso_max_segs(dev, MVPP2_MAX_TSO_SEGS);
+
+	dev->xdp_features = NETDEV_XDP_ACT_FULL | NETDEV_XDP_ACT_NDO_XMIT;
+
 	dev->priv_flags |= IFF_UNICAST_FLT;
 
 	/* MTU range: 68 - 9704 */
diff --git a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_pf.c b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_pf.c
index c1ea60bc2630..d88fd42e39b6 100644
--- a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_pf.c
+++ b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_pf.c
@@ -2512,10 +2512,13 @@ static int otx2_xdp_setup(struct otx2_nic *pf, struct bpf_prog *prog)
 	/* Network stack and XDP shared same rx queues.
 	 * Use separate tx queues for XDP and network stack.
 	 */
-	if (pf->xdp_prog)
+	if (pf->xdp_prog) {
 		pf->hw.xdp_queues = pf->hw.rx_queues;
-	else
+		xdp_features_set_redirect_target(&dev->xdp_features, false);
+	} else {
 		pf->hw.xdp_queues = 0;
+		xdp_features_clear_redirect_target(&dev->xdp_features);
+	}
 
 	pf->hw.tot_tx_queues += pf->hw.xdp_queues;
 
@@ -2878,6 +2881,7 @@ static int otx2_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 	netdev->watchdog_timeo = OTX2_TX_TIMEOUT;
 
 	netdev->netdev_ops = &otx2_netdev_ops;
+	netdev->xdp_features = NETDEV_XDP_ACT_FULL;
 
 	netdev->min_mtu = OTX2_MIN_MTU;
 	netdev->max_mtu = otx2_get_max_mtu(pf);
diff --git a/drivers/net/ethernet/mediatek/mtk_eth_soc.c b/drivers/net/ethernet/mediatek/mtk_eth_soc.c
index e3de9a53b2d9..d960dd3841d7 100644
--- a/drivers/net/ethernet/mediatek/mtk_eth_soc.c
+++ b/drivers/net/ethernet/mediatek/mtk_eth_soc.c
@@ -4186,6 +4186,11 @@ static int mtk_add_mac(struct mtk_eth *eth, struct device_node *np)
 		register_netdevice_notifier(&mac->device_notifier);
 	}
 
+	if (mtk_page_pool_enabled(eth))
+		eth->netdev[id]->xdp_features = NETDEV_XDP_ACT_FULL |
+						NETDEV_XDP_ACT_NDO_XMIT |
+						NETDEV_XDP_ACT_NDO_XMIT_SG;
+
 	return 0;
 
 free_netdev:
diff --git a/drivers/net/ethernet/mellanox/mlx4/en_netdev.c b/drivers/net/ethernet/mellanox/mlx4/en_netdev.c
index 8800d3f1f55c..77957db600cb 100644
--- a/drivers/net/ethernet/mellanox/mlx4/en_netdev.c
+++ b/drivers/net/ethernet/mellanox/mlx4/en_netdev.c
@@ -3410,6 +3410,8 @@ int mlx4_en_init_netdev(struct mlx4_en_dev *mdev, int port,
 		priv->rss_hash_fn = ETH_RSS_HASH_TOP;
 	}
 
+	dev->xdp_features = NETDEV_XDP_ACT_FULL;
+
 	/* MTU range: 68 - hw-specific max */
 	dev->min_mtu = ETH_MIN_MTU;
 	dev->max_mtu = priv->max_mtu;
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_main.c b/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
index cff5f2e29e1e..d3ad380ec959 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
@@ -4776,6 +4776,14 @@ static int mlx5e_xdp_set(struct net_device *netdev, struct bpf_prog *prog)
 	if (old_prog)
 		bpf_prog_put(old_prog);
 
+	if (reset) {
+		if (prog)
+			xdp_features_set_redirect_target(&netdev->xdp_features,
+							 true);
+		else
+			xdp_features_clear_redirect_target(&netdev->xdp_features);
+	}
+
 	if (!test_bit(MLX5E_STATE_OPENED, &priv->state) || reset)
 		goto unlock;
 
@@ -5170,6 +5178,8 @@ static void mlx5e_build_nic_netdev(struct net_device *netdev)
 	netdev->features         |= NETIF_F_HIGHDMA;
 	netdev->features         |= NETIF_F_HW_VLAN_STAG_FILTER;
 
+	netdev->xdp_features = NETDEV_XDP_ACT_ZC | NETDEV_XDP_ACT_RX_SG;
+
 	netdev->priv_flags       |= IFF_UNICAST_FLT;
 
 	netif_set_tso_max_size(netdev, GSO_MAX_SIZE);
diff --git a/drivers/net/ethernet/microsoft/mana/mana_en.c b/drivers/net/ethernet/microsoft/mana/mana_en.c
index 2f6a048dee90..25f21942aa20 100644
--- a/drivers/net/ethernet/microsoft/mana/mana_en.c
+++ b/drivers/net/ethernet/microsoft/mana/mana_en.c
@@ -2160,6 +2160,7 @@ static int mana_probe_port(struct mana_context *ac, int port_idx,
 	ndev->hw_features |= NETIF_F_RXHASH;
 	ndev->features = ndev->hw_features;
 	ndev->vlan_features = 0;
+	ndev->xdp_features = NETDEV_XDP_ACT_FULL | NETDEV_XDP_ACT_NDO_XMIT;
 
 	err = register_netdev(ndev);
 	if (err) {
diff --git a/drivers/net/ethernet/netronome/nfp/nfp_net_common.c b/drivers/net/ethernet/netronome/nfp/nfp_net_common.c
index 18fc9971f1c8..e4825d885560 100644
--- a/drivers/net/ethernet/netronome/nfp/nfp_net_common.c
+++ b/drivers/net/ethernet/netronome/nfp/nfp_net_common.c
@@ -2529,10 +2529,15 @@ static void nfp_net_netdev_init(struct nfp_net *nn)
 	netdev->features &= ~NETIF_F_HW_VLAN_STAG_RX;
 	nn->dp.ctrl &= ~NFP_NET_CFG_CTRL_RXQINQ;
 
+	netdev->xdp_features = NETDEV_XDP_ACT_BASIC;
+	if (nn->app && nn->app->type->id == NFP_APP_BPF_NIC)
+		netdev->xdp_features |= NETDEV_XDP_ACT_HW_OFFLOAD;
+
 	/* Finalise the netdev setup */
 	switch (nn->dp.ops->version) {
 	case NFP_NFD_VER_NFD3:
 		netdev->netdev_ops = &nfp_nfd3_netdev_ops;
+		netdev->xdp_features |= NETDEV_XDP_ACT_XSK_ZEROCOPY;
 		break;
 	case NFP_NFD_VER_NFDK:
 		netdev->netdev_ops = &nfp_nfdk_netdev_ops;
diff --git a/drivers/net/ethernet/qlogic/qede/qede_main.c b/drivers/net/ethernet/qlogic/qede/qede_main.c
index 953f304b8588..a8ad2b8386d3 100644
--- a/drivers/net/ethernet/qlogic/qede/qede_main.c
+++ b/drivers/net/ethernet/qlogic/qede/qede_main.c
@@ -892,6 +892,8 @@ static void qede_init_ndev(struct qede_dev *edev)
 
 	ndev->hw_features = hw_features;
 
+	ndev->xdp_features = NETDEV_XDP_ACT_FULL | NETDEV_XDP_ACT_NDO_XMIT;
+
 	/* MTU range: 46 - 9600 */
 	ndev->min_mtu = ETH_ZLEN - ETH_HLEN;
 	ndev->max_mtu = QEDE_MAX_JUMBO_PACKET_SIZE;
diff --git a/drivers/net/ethernet/sfc/efx.c b/drivers/net/ethernet/sfc/efx.c
index 0556542d7a6b..60b2183681ce 100644
--- a/drivers/net/ethernet/sfc/efx.c
+++ b/drivers/net/ethernet/sfc/efx.c
@@ -1078,6 +1078,9 @@ static int efx_pci_probe(struct pci_dev *pci_dev,
 
 	pci_info(pci_dev, "Solarflare NIC detected\n");
 
+	efx->net_dev->xdp_features = NETDEV_XDP_ACT_FULL |
+				     NETDEV_XDP_ACT_NDO_XMIT;
+
 	if (!efx->type->is_vf)
 		efx_probe_vpd_strings(efx);
 
diff --git a/drivers/net/ethernet/sfc/siena/efx.c b/drivers/net/ethernet/sfc/siena/efx.c
index 60e5b7c8ccf9..175c999bebc1 100644
--- a/drivers/net/ethernet/sfc/siena/efx.c
+++ b/drivers/net/ethernet/sfc/siena/efx.c
@@ -1048,6 +1048,9 @@ static int efx_pci_probe(struct pci_dev *pci_dev,
 
 	pci_info(pci_dev, "Solarflare NIC detected\n");
 
+	efx->net_dev->xdp_features = NETDEV_XDP_ACT_FULL |
+				     NETDEV_XDP_ACT_NDO_XMIT;
+
 	if (!efx->type->is_vf)
 		efx_probe_vpd_strings(efx);
 
diff --git a/drivers/net/ethernet/socionext/netsec.c b/drivers/net/ethernet/socionext/netsec.c
index 9b46579b5a10..4d6f17efa227 100644
--- a/drivers/net/ethernet/socionext/netsec.c
+++ b/drivers/net/ethernet/socionext/netsec.c
@@ -2104,6 +2104,8 @@ static int netsec_probe(struct platform_device *pdev)
 				NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM;
 	ndev->hw_features = ndev->features;
 
+	ndev->xdp_features = NETDEV_XDP_ACT_FULL | NETDEV_XDP_ACT_NDO_XMIT;
+
 	priv->rx_cksum_offload_flag = true;
 
 	ret = netsec_register_mdio(priv, phy_addr);
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index c6951c976f5d..316574ce3aa0 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -7145,6 +7145,7 @@ int stmmac_dvr_probe(struct device *device,
 
 	ndev->hw_features = NETIF_F_SG | NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM |
 			    NETIF_F_RXCSUM;
+	ndev->xdp_features = NETDEV_XDP_ACT_FULL | NETDEV_XDP_ACT_NDO_XMIT;
 
 	ret = stmmac_tc_init(priv, priv);
 	if (!ret) {
diff --git a/drivers/net/ethernet/ti/cpsw.c b/drivers/net/ethernet/ti/cpsw.c
index 13c9c2d6b79b..68b89c56d8b6 100644
--- a/drivers/net/ethernet/ti/cpsw.c
+++ b/drivers/net/ethernet/ti/cpsw.c
@@ -1458,6 +1458,7 @@ static int cpsw_probe_dual_emac(struct cpsw_priv *priv)
 	priv_sl2->emac_port = 1;
 	cpsw->slaves[1].ndev = ndev;
 	ndev->features |= NETIF_F_HW_VLAN_CTAG_FILTER | NETIF_F_HW_VLAN_CTAG_RX;
+	ndev->xdp_features = NETDEV_XDP_ACT_FULL | NETDEV_XDP_ACT_NDO_XMIT;
 
 	ndev->netdev_ops = &cpsw_netdev_ops;
 	ndev->ethtool_ops = &cpsw_ethtool_ops;
@@ -1635,6 +1636,7 @@ static int cpsw_probe(struct platform_device *pdev)
 	cpsw->slaves[0].ndev = ndev;
 
 	ndev->features |= NETIF_F_HW_VLAN_CTAG_FILTER | NETIF_F_HW_VLAN_CTAG_RX;
+	ndev->xdp_features = NETDEV_XDP_ACT_FULL | NETDEV_XDP_ACT_NDO_XMIT;
 
 	ndev->netdev_ops = &cpsw_netdev_ops;
 	ndev->ethtool_ops = &cpsw_ethtool_ops;
diff --git a/drivers/net/ethernet/ti/cpsw_new.c b/drivers/net/ethernet/ti/cpsw_new.c
index 83596ec0c7cb..1cf8c6202e05 100644
--- a/drivers/net/ethernet/ti/cpsw_new.c
+++ b/drivers/net/ethernet/ti/cpsw_new.c
@@ -1405,6 +1405,9 @@ static int cpsw_create_ports(struct cpsw_common *cpsw)
 		ndev->features |= NETIF_F_HW_VLAN_CTAG_FILTER |
 				  NETIF_F_HW_VLAN_CTAG_RX | NETIF_F_NETNS_LOCAL | NETIF_F_HW_TC;
 
+		ndev->xdp_features = NETDEV_XDP_ACT_FULL |
+				     NETDEV_XDP_ACT_NDO_XMIT;
+
 		ndev->netdev_ops = &cpsw_netdev_ops;
 		ndev->ethtool_ops = &cpsw_ethtool_ops;
 		SET_NETDEV_DEV(ndev, dev);
diff --git a/drivers/net/hyperv/netvsc_drv.c b/drivers/net/hyperv/netvsc_drv.c
index f9b219e6cd58..c7c1ce6ca201 100644
--- a/drivers/net/hyperv/netvsc_drv.c
+++ b/drivers/net/hyperv/netvsc_drv.c
@@ -2559,6 +2559,8 @@ static int netvsc_probe(struct hv_device *dev,
 
 	netdev_lockdep_set_classes(net);
 
+	net->xdp_features = NETDEV_XDP_ACT_FULL;
+
 	/* MTU range: 68 - 1500 or 65521 */
 	net->min_mtu = NETVSC_MTU_MIN;
 	if (nvdev->nvsp_version >= NVSP_PROTOCOL_VERSION_2)
diff --git a/drivers/net/netdevsim/netdev.c b/drivers/net/netdevsim/netdev.c
index 6db6a75ff9b9..35fa1ca98671 100644
--- a/drivers/net/netdevsim/netdev.c
+++ b/drivers/net/netdevsim/netdev.c
@@ -286,6 +286,7 @@ static void nsim_setup(struct net_device *dev)
 			 NETIF_F_TSO;
 	dev->hw_features |= NETIF_F_HW_TC;
 	dev->max_mtu = ETH_MAX_MTU;
+	dev->xdp_features = NETDEV_XDP_ACT_HW_OFFLOAD;
 }
 
 static int nsim_init_netdevsim(struct netdevsim *ns)
diff --git a/drivers/net/tun.c b/drivers/net/tun.c
index a7d17c680f4a..fc041cff75e4 100644
--- a/drivers/net/tun.c
+++ b/drivers/net/tun.c
@@ -1401,6 +1401,10 @@ static void tun_net_initialize(struct net_device *dev)
 
 		eth_hw_addr_random(dev);
 
+		/* Currently tun does not support XDP, only tap does. */
+		dev->xdp_features = NETDEV_XDP_ACT_FULL |
+				    NETDEV_XDP_ACT_NDO_XMIT;
+
 		break;
 	}
 
diff --git a/drivers/net/veth.c b/drivers/net/veth.c
index dfc7d87fad59..01f7b38888a0 100644
--- a/drivers/net/veth.c
+++ b/drivers/net/veth.c
@@ -1649,6 +1649,9 @@ static void veth_setup(struct net_device *dev)
 	dev->hw_enc_features = VETH_FEATURES;
 	dev->mpls_features = NETIF_F_HW_CSUM | NETIF_F_GSO_SOFTWARE;
 	netif_set_tso_max_size(dev, GSO_MAX_SIZE);
+
+	dev->xdp_features = NETDEV_XDP_ACT_FULL | NETDEV_XDP_ACT_NDO_XMIT |
+			    NETDEV_XDP_ACT_RX_SG | NETDEV_XDP_ACT_NDO_XMIT_SG;
 }
 
 /*
diff --git a/drivers/net/virtio_net.c b/drivers/net/virtio_net.c
index 7723b2a49d8e..2b32fd84016f 100644
--- a/drivers/net/virtio_net.c
+++ b/drivers/net/virtio_net.c
@@ -3155,7 +3155,11 @@ static int virtnet_xdp_set(struct net_device *dev, struct bpf_prog *prog,
 			if (i == 0 && !old_prog)
 				virtnet_clear_guest_offloads(vi);
 		}
+		if (!old_prog)
+			xdp_features_set_redirect_target(&dev->xdp_features,
+							 false);
 	} else {
+		xdp_features_clear_redirect_target(&dev->xdp_features);
 		vi->xdp_enabled = false;
 	}
 
@@ -3785,6 +3789,7 @@ static int virtnet_probe(struct virtio_device *vdev)
 		dev->hw_features |= NETIF_F_GRO_HW;
 
 	dev->vlan_features = dev->features;
+	dev->xdp_features = NETDEV_XDP_ACT_FULL;
 
 	/* MTU range: 68 - 65535 */
 	dev->min_mtu = MIN_MTU;
diff --git a/drivers/net/xen-netfront.c b/drivers/net/xen-netfront.c
index 14aec417fa06..58f0cbbadc90 100644
--- a/drivers/net/xen-netfront.c
+++ b/drivers/net/xen-netfront.c
@@ -1741,6 +1741,7 @@ static struct net_device *xennet_create_dev(struct xenbus_device *dev)
          * negotiate with the backend regarding supported features.
          */
 	netdev->features |= netdev->hw_features;
+	netdev->xdp_features = NETDEV_XDP_ACT_FULL | NETDEV_XDP_ACT_NDO_XMIT;
 
 	netdev->ethtool_ops = &xennet_ethtool_ops;
 	netdev->min_mtu = ETH_MIN_MTU;
diff --git a/include/net/xdp.h b/include/net/xdp.h
index 3d37460f0bdb..383f8051eb28 100644
--- a/include/net/xdp.h
+++ b/include/net/xdp.h
@@ -410,6 +410,37 @@ struct netdev_bpf;
 void xdp_attachment_setup(struct xdp_attachment_info *info,
 			  struct netdev_bpf *bpf);
 
+#if defined(CONFIG_NET) && defined(CONFIG_BPF_SYSCALL)
+
+static inline void
+xdp_features_set_redirect_target(xdp_features_t *xdp_features, bool support_sg)
+{
+	*xdp_features |= NETDEV_XDP_ACT_NDO_XMIT;
+	if (support_sg)
+		*xdp_features |= NETDEV_XDP_ACT_NDO_XMIT_SG;
+}
+
+static inline void
+xdp_features_clear_redirect_target(xdp_features_t *xdp_features)
+{
+	*xdp_features &= ~(NETDEV_XDP_ACT_NDO_XMIT |
+			   NETDEV_XDP_ACT_NDO_XMIT_SG);
+}
+
+#else
+
+static inline void
+xdp_features_set_redirect_target(xdp_features_t *xdp_features, bool support_sg)
+{
+}
+
+static inline void
+xdp_features_clear_redirect_target(xdp_features_t *xdp_features)
+{
+}
+
+#endif
+
 #define DEV_MAP_BULK_SIZE XDP_BULK_QUEUE_SIZE
 
 #endif /* __LINUX_NET_XDP_H__ */
-- 
2.39.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
