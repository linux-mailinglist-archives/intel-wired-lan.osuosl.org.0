Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9401867976C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jan 2023 13:15:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2CB5D40C15;
	Tue, 24 Jan 2023 12:15:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2CB5D40C15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674562548;
	bh=sQcymrlxK5rQHEkNyioe/bkPFO/S8e8FDfEEqpeiCGE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FM+aZIlM7/qv7S3yI4v2p2e59qwPEQE2XvbhXKM4M34f5NQ0UzY+9P/Qp8OEKdrbO
	 VIwaxv1C/7PB5STVnIF5XXnLUavETtLIldnjsywOEFR1PoE8yPGkVxLWpxaBvlSUWf
	 B15HrbYn506xUnDuHb0tJXW6nvslxdKMIcd6tkiOb2HR5AM5XS0Lvm/55dRXXibBDM
	 UxA+UdexwB02CEZsk83NZeGB0TLeWVbCbELF2eP55b3KDBccOTzz0uiFrcSurULyS9
	 1uBFB0a96dWeuYhNyRd4MDbO634IQtklkSUZgI75A9cfO/tcHfxVo8ijsaIXNcKoVE
	 2KV0f+MOOD7sQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NGZ6-4u48-7j; Tue, 24 Jan 2023 12:15:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 98C7140157;
	Tue, 24 Jan 2023 12:15:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 98C7140157
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 28D581BF2C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 12:15:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 02FE382151
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 12:15:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 02FE382151
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q-bTLt6Fe-Me for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jan 2023 12:15:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9629381F74
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9629381F74
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 12:15:37 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 24B01CE1AE4;
 Tue, 24 Jan 2023 12:15:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E0F7C433EF;
 Tue, 24 Jan 2023 12:15:32 +0000 (UTC)
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Steffen Klassert <steffen.klassert@secunet.com>
Date: Tue, 24 Jan 2023 13:54:59 +0200
Message-Id: <b5aa9d9845c5cc76848c31fcdefb48174eb7e703.1674560845.git.leon@kernel.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1674560845.git.leon@kernel.org>
References: <cover.1674560845.git.leon@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674562533;
 bh=pl8cG24XZ+zku0qv1XKNltPxzk6fr4A1lMHxZ5xgAVE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aXy5C5Qijs6rzHVYjlbcU8IaBcnvMyk7BqbEexUnaG4fk2GttdldLfRV6V6p1v87q
 hg1maJK7hkamfsmQepIj5hO16HzWLMnFGckBkf+vUlo1ODhSnSVj2VvZh06Dvr77J2
 Y9yK2c/zIvEwnLZKoHMGgaLOA3vwhzo0YCwcIYVtZOuXsT537b0GxJ1HSoJ5U+xU1V
 y6DTXWZqF5m7zdlS183+wzToojm7zK41WDMe0WFpHHNpOYNHnlcKHkyHEPabQjNomZ
 /C4lCFtOd8AiW7Z95IE2MwXhVtL8a1KHMOeOdx4EqoGjx7zrMzNsJrNlRWjFl9/doT
 lNaERiKtZERJw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=aXy5C5Qi
Subject: [Intel-wired-lan] [PATCH net-next v1 03/10] xfrm: extend add state
 callback to set failure reason
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
Cc: Veaceslav Falico <vfalico@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Jonathan Corbet <corbet@lwn.net>,
 Jay Vosburgh <j.vosburgh@gmail.com>, oss-drivers@corigine.com,
 linux-doc@vger.kernel.org, Raju Rangoju <rajur@chelsio.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Ayush Sawal <ayush.sawal@chelsio.com>,
 Simon Horman <simon.horman@corigine.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 Leon Romanovsky <leonro@nvidia.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Andy Gospodarek <andy@greyhouse.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Leon Romanovsky <leonro@nvidia.com>

Almost all validation logic is in the drivers, but they are
missing reliable way to convey failure reason to userspace
applications.

Let's use extack to return this information to users.

Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 Documentation/networking/xfrm_device.rst                  | 2 +-
 drivers/net/bonding/bond_main.c                           | 8 +++++---
 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c           | 5 +++--
 .../ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c  | 6 ++++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c            | 6 ++++--
 drivers/net/ethernet/intel/ixgbevf/ipsec.c                | 4 +++-
 drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c  | 3 ++-
 drivers/net/ethernet/netronome/nfp/crypto/ipsec.c         | 3 ++-
 drivers/net/netdevsim/ipsec.c                             | 3 ++-
 include/linux/netdevice.h                                 | 2 +-
 net/xfrm/xfrm_device.c                                    | 6 ++----
 net/xfrm/xfrm_state.c                                     | 2 +-
 12 files changed, 30 insertions(+), 20 deletions(-)

diff --git a/Documentation/networking/xfrm_device.rst b/Documentation/networking/xfrm_device.rst
index b9c53e626982..83abdfef4ec3 100644
--- a/Documentation/networking/xfrm_device.rst
+++ b/Documentation/networking/xfrm_device.rst
@@ -64,7 +64,7 @@ Callbacks to implement
   /* from include/linux/netdevice.h */
   struct xfrmdev_ops {
         /* Crypto and Packet offload callbacks */
-	int	(*xdo_dev_state_add) (struct xfrm_state *x);
+	int	(*xdo_dev_state_add) (struct xfrm_state *x, struct netlink_ext_ack *extack);
 	void	(*xdo_dev_state_delete) (struct xfrm_state *x);
 	void	(*xdo_dev_state_free) (struct xfrm_state *x);
 	bool	(*xdo_dev_offload_ok) (struct sk_buff *skb,
diff --git a/drivers/net/bonding/bond_main.c b/drivers/net/bonding/bond_main.c
index 0363ce597661..686b2a6fd674 100644
--- a/drivers/net/bonding/bond_main.c
+++ b/drivers/net/bonding/bond_main.c
@@ -419,8 +419,10 @@ static int bond_vlan_rx_kill_vid(struct net_device *bond_dev,
 /**
  * bond_ipsec_add_sa - program device with a security association
  * @xs: pointer to transformer state struct
+ * @extack: extack point to fill failure reason
  **/
-static int bond_ipsec_add_sa(struct xfrm_state *xs)
+static int bond_ipsec_add_sa(struct xfrm_state *xs,
+			     struct netlink_ext_ack *extack)
 {
 	struct net_device *bond_dev = xs->xso.dev;
 	struct bond_ipsec *ipsec;
@@ -454,7 +456,7 @@ static int bond_ipsec_add_sa(struct xfrm_state *xs)
 	}
 	xs->xso.real_dev = slave->dev;
 
-	err = slave->dev->xfrmdev_ops->xdo_dev_state_add(xs);
+	err = slave->dev->xfrmdev_ops->xdo_dev_state_add(xs, extack);
 	if (!err) {
 		ipsec->xs = xs;
 		INIT_LIST_HEAD(&ipsec->list);
@@ -494,7 +496,7 @@ static void bond_ipsec_add_sa_all(struct bonding *bond)
 	spin_lock_bh(&bond->ipsec_lock);
 	list_for_each_entry(ipsec, &bond->ipsec_list, list) {
 		ipsec->xs->xso.real_dev = slave->dev;
-		if (slave->dev->xfrmdev_ops->xdo_dev_state_add(ipsec->xs)) {
+		if (slave->dev->xfrmdev_ops->xdo_dev_state_add(ipsec->xs, NULL)) {
 			slave_warn(bond_dev, slave->dev, "%s: failed to add SA\n", __func__);
 			ipsec->xs->xso.real_dev = NULL;
 		}
diff --git a/drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c b/drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c
index 9cbce1faab26..6c0a41f3ae44 100644
--- a/drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c
+++ b/drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c
@@ -6490,7 +6490,8 @@ static const struct tlsdev_ops cxgb4_ktls_ops = {
 
 #if IS_ENABLED(CONFIG_CHELSIO_IPSEC_INLINE)
 
-static int cxgb4_xfrm_add_state(struct xfrm_state *x)
+static int cxgb4_xfrm_add_state(struct xfrm_state *x,
+				struct netlink_ext_ack *extack)
 {
 	struct adapter *adap = netdev2adap(x->xso.dev);
 	int ret;
@@ -6504,7 +6505,7 @@ static int cxgb4_xfrm_add_state(struct xfrm_state *x)
 	if (ret)
 		goto out_unlock;
 
-	ret = adap->uld[CXGB4_ULD_IPSEC].xfrmdev_ops->xdo_dev_state_add(x);
+	ret = adap->uld[CXGB4_ULD_IPSEC].xfrmdev_ops->xdo_dev_state_add(x, extack);
 
 out_unlock:
 	mutex_unlock(&uld_mutex);
diff --git a/drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c b/drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c
index ca21794281d6..ac2ea6206af1 100644
--- a/drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c
+++ b/drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c
@@ -80,7 +80,8 @@ static void *ch_ipsec_uld_add(const struct cxgb4_lld_info *infop);
 static void ch_ipsec_advance_esn_state(struct xfrm_state *x);
 static void ch_ipsec_xfrm_free_state(struct xfrm_state *x);
 static void ch_ipsec_xfrm_del_state(struct xfrm_state *x);
-static int ch_ipsec_xfrm_add_state(struct xfrm_state *x);
+static int ch_ipsec_xfrm_add_state(struct xfrm_state *x,
+				   struct netlink_ext_ack *extack);
 
 static const struct xfrmdev_ops ch_ipsec_xfrmdev_ops = {
 	.xdo_dev_state_add      = ch_ipsec_xfrm_add_state,
@@ -226,7 +227,8 @@ static int ch_ipsec_setkey(struct xfrm_state *x,
  * returns 0 on success, negative error if failed to send message to FPGA
  * positive error if FPGA returned a bad response
  */
-static int ch_ipsec_xfrm_add_state(struct xfrm_state *x)
+static int ch_ipsec_xfrm_add_state(struct xfrm_state *x,
+				   struct netlink_ext_ack *extack)
 {
 	struct ipsec_sa_entry *sa_entry;
 	int res = 0;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
index 53a969e34883..07c37dc619e8 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
@@ -557,8 +557,10 @@ static int ixgbe_ipsec_check_mgmt_ip(struct xfrm_state *xs)
 /**
  * ixgbe_ipsec_add_sa - program device with a security association
  * @xs: pointer to transformer state struct
+ * @extack: extack point to fill failure reason
  **/
-static int ixgbe_ipsec_add_sa(struct xfrm_state *xs)
+static int ixgbe_ipsec_add_sa(struct xfrm_state *xs,
+			      struct netlink_ext_ack *extack)
 {
 	struct net_device *dev = xs->xso.real_dev;
 	struct ixgbe_adapter *adapter = netdev_priv(dev);
@@ -950,7 +952,7 @@ int ixgbe_ipsec_vf_add_sa(struct ixgbe_adapter *adapter, u32 *msgbuf, u32 vf)
 	memcpy(xs->aead->alg_name, aes_gcm_name, sizeof(aes_gcm_name));
 
 	/* set up the HW offload */
-	err = ixgbe_ipsec_add_sa(xs);
+	err = ixgbe_ipsec_add_sa(xs, NULL);
 	if (err)
 		goto err_aead;
 
diff --git a/drivers/net/ethernet/intel/ixgbevf/ipsec.c b/drivers/net/ethernet/intel/ixgbevf/ipsec.c
index c1cf540d162a..752b9df4fb51 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ipsec.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ipsec.c
@@ -257,8 +257,10 @@ static int ixgbevf_ipsec_parse_proto_keys(struct xfrm_state *xs,
 /**
  * ixgbevf_ipsec_add_sa - program device with a security association
  * @xs: pointer to transformer state struct
+ * @extack: extack point to fill failure reason
  **/
-static int ixgbevf_ipsec_add_sa(struct xfrm_state *xs)
+static int ixgbevf_ipsec_add_sa(struct xfrm_state *xs,
+				struct netlink_ext_ack *extack)
 {
 	struct net_device *dev = xs->xso.real_dev;
 	struct ixgbevf_adapter *adapter;
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c b/drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c
index 3236c3b43149..a889df77dd2d 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c
@@ -298,7 +298,8 @@ static void _update_xfrm_state(struct work_struct *work)
 	mlx5_accel_esp_modify_xfrm(sa_entry, &modify_work->attrs);
 }
 
-static int mlx5e_xfrm_add_state(struct xfrm_state *x)
+static int mlx5e_xfrm_add_state(struct xfrm_state *x,
+				struct netlink_ext_ack *extack)
 {
 	struct mlx5e_ipsec_sa_entry *sa_entry = NULL;
 	struct net_device *netdev = x->xso.real_dev;
diff --git a/drivers/net/ethernet/netronome/nfp/crypto/ipsec.c b/drivers/net/ethernet/netronome/nfp/crypto/ipsec.c
index 4632268695cb..41b98f2b7402 100644
--- a/drivers/net/ethernet/netronome/nfp/crypto/ipsec.c
+++ b/drivers/net/ethernet/netronome/nfp/crypto/ipsec.c
@@ -260,7 +260,8 @@ static void set_sha2_512hmac(struct nfp_ipsec_cfg_add_sa *cfg, int *trunc_len)
 	}
 }
 
-static int nfp_net_xfrm_add_state(struct xfrm_state *x)
+static int nfp_net_xfrm_add_state(struct xfrm_state *x,
+				  struct netlink_ext_ack *extack)
 {
 	struct net_device *netdev = x->xso.dev;
 	struct nfp_ipsec_cfg_mssg msg = {};
diff --git a/drivers/net/netdevsim/ipsec.c b/drivers/net/netdevsim/ipsec.c
index b93baf5c8bee..84a02d69abad 100644
--- a/drivers/net/netdevsim/ipsec.c
+++ b/drivers/net/netdevsim/ipsec.c
@@ -125,7 +125,8 @@ static int nsim_ipsec_parse_proto_keys(struct xfrm_state *xs,
 	return 0;
 }
 
-static int nsim_ipsec_add_sa(struct xfrm_state *xs)
+static int nsim_ipsec_add_sa(struct xfrm_state *xs,
+			     struct netlink_ext_ack *extack)
 {
 	struct nsim_ipsec *ipsec;
 	struct net_device *dev;
diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 7c43b9fb9aae..63b77cbc947e 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -1035,7 +1035,7 @@ struct netdev_bpf {
 
 #ifdef CONFIG_XFRM_OFFLOAD
 struct xfrmdev_ops {
-	int	(*xdo_dev_state_add) (struct xfrm_state *x);
+	int	(*xdo_dev_state_add) (struct xfrm_state *x, struct netlink_ext_ack *extack);
 	void	(*xdo_dev_state_delete) (struct xfrm_state *x);
 	void	(*xdo_dev_state_free) (struct xfrm_state *x);
 	bool	(*xdo_dev_offload_ok) (struct sk_buff *skb,
diff --git a/net/xfrm/xfrm_device.c b/net/xfrm/xfrm_device.c
index 2cec637a4a9c..562b9d951598 100644
--- a/net/xfrm/xfrm_device.c
+++ b/net/xfrm/xfrm_device.c
@@ -309,7 +309,7 @@ int xfrm_dev_state_add(struct net *net, struct xfrm_state *x,
 	else
 		xso->type = XFRM_DEV_OFFLOAD_CRYPTO;
 
-	err = dev->xfrmdev_ops->xdo_dev_state_add(x);
+	err = dev->xfrmdev_ops->xdo_dev_state_add(x, extack);
 	if (err) {
 		xso->dev = NULL;
 		xso->dir = 0;
@@ -325,10 +325,8 @@ int xfrm_dev_state_add(struct net *net, struct xfrm_state *x,
 		 * authors to do not return -EOPNOTSUPP in packet offload mode.
 		 */
 		WARN_ON(err == -EOPNOTSUPP && is_packet_offload);
-		if (err != -EOPNOTSUPP || is_packet_offload) {
-			NL_SET_ERR_MSG(extack, "Device failed to offload this state");
+		if (err != -EOPNOTSUPP || is_packet_offload)
 			return err;
-		}
 	}
 
 	return 0;
diff --git a/net/xfrm/xfrm_state.c b/net/xfrm/xfrm_state.c
index 89c731f4f0c7..59fffa02d1cc 100644
--- a/net/xfrm/xfrm_state.c
+++ b/net/xfrm/xfrm_state.c
@@ -1274,7 +1274,7 @@ xfrm_state_find(const xfrm_address_t *daddr, const xfrm_address_t *saddr,
 			xso->real_dev = xdo->real_dev;
 			netdev_tracker_alloc(xso->dev, &xso->dev_tracker,
 					     GFP_ATOMIC);
-			error = xso->dev->xfrmdev_ops->xdo_dev_state_add(x);
+			error = xso->dev->xfrmdev_ops->xdo_dev_state_add(x, NULL);
 			if (error) {
 				xso->dir = 0;
 				netdev_put(xso->dev, &xso->dev_tracker);
-- 
2.39.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
