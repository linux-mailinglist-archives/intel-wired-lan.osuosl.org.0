Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B90AD402F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Jun 2025 19:15:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EBC74613C2;
	Tue, 10 Jun 2025 17:15:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3ri6R4TjdJoR; Tue, 10 Jun 2025 17:15:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5C6A2613DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749575729;
	bh=PbIGzSVfDwiEgSWF74Mc6LFH+xkyt/V3j/EbdHhOVFA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MVT0nYzVYW15LPAXavxhZ+jP5VQIm9eiKsLH8p6JR8m2C6MzvpezeVqrB5Z8uYrqJ
	 wZyohsN4fE1gf4Arl6ns/7JgY5D4nPgDi+J8Ejn5HNB8EtEZm8GkUN3t6JPK81iHMc
	 7roytcJjQZ6O1n1GxTf4UDBpDE6SA/S9/e+QYSRqImaJJgigy4MIixOoSlmDR15SNt
	 RNFavICORYlTStkGKeIcs6SZTFLt5/xbGU5Uk5Zf1hp1Z32PkljGRg3gIwySZBRzna
	 IET9IVYojy+AbQKfCm/7i7rpa4dPfPHv897dB2WDMNAiWCeE5PXSxPcwUu9Rx9A+f/
	 qIN8A0rhgo53A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C6A2613DB;
	Tue, 10 Jun 2025 17:15:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 834821F2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 17:15:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 80BEE40D15
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 17:15:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QOGAkgj4FFN4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Jun 2025 17:15:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::629; helo=mail-pl1-x629.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8810C40E40
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8810C40E40
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8810C40E40
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 17:15:26 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id
 d9443c01a7336-235a3dd4f0dso39731175ad.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 10:15:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749575726; x=1750180526;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=PbIGzSVfDwiEgSWF74Mc6LFH+xkyt/V3j/EbdHhOVFA=;
 b=rPns1wH6l1p+08spa/D0KFrHKRGspXzOH2pf8YFnc6MBzEIfQ7PCiSXfZzaMAPGj1K
 YjV4seYWjryZ8dVfY/SPcoLs1wpYOOiBq8BXkjqIl4AIH7EeqYFJwunbH/dNSE++3g+M
 MR/vLOFzwsqPQOcwD9Gj4EW+x0NivOUub3Dq4jFniw+uO/V15O8C1yLaPOOxDO29btDN
 0Lqss5tcsulvckWnzFwwzldYpJW/Dl6ndLzbKzWwPlUSBVHRWEXTHCYCh0Jvjgu5BFdY
 ZpIFdlaII9S32grMX4kiXYSDvJRpD2GhGO4tj3fS+dl5BBTB9VwVD3214ileerAlcxJU
 NeDA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVRQPq/2URI/AjOY8Lr+9zMy0KJ6wm+Msy6jAxa5CzTv7wQOgZQaX2jDahG6kDuyIpIziA9Ew3Ds4dn3DAF7ww=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxSiUNEBPIUDU1Ok5FxHx0ljp7N1TcQ/YWjQH54YcuPYOju4/45
 U+Wu0eYB63o6PHuT0G75yZprhB5k6M0rURqbN3w1Q995nBtsjq+GYMw=
X-Gm-Gg: ASbGncufvNSF7lSymoFC+8wwWrJjQdph+t/Sz8OuYpMYHktVgsCPIEm/7UW9MWXqmh7
 +44pWOm59zAk4bem+AQQ/DDNqyPtVRGzfATepPklY8Hdbdfp/RM3Lwq/ZMbKMy42pZtMEbcgozD
 2I79mC8RntWcYN4DIGyC+8vlCinceBVAquX/XqJMT6MYiByoxg3z9RHMpPMwMhIj/R3tFG5hDc4
 AapixX1LEZI4HuATnE1vIOGBxVXGVs+KLHBH9wQ6XB1DBUPEZ425MM2ODnwqIptgzZTDxhLt3TI
 A2/Du1tANZKF/gUOD6itbkvHPVl1Kzq2N5tx+BFSzKnzEFpwoDrnsgVEgS1YJusGgEj1lT7AWc5
 R26+D14apgoooOLFUfeba+2Q=
X-Google-Smtp-Source: AGHT+IGZ9tejt0MSuMTdOic/nmELO8U8E+URRvnGcKJeXl48oXaS7nVF+OfxpaEqUoK81AoUlZMjAQ==
X-Received: by 2002:a17:902:f54b:b0:235:f298:cbbe with SMTP id
 d9443c01a7336-23641abc322mr1500425ad.12.1749575725391; 
 Tue, 10 Jun 2025 10:15:25 -0700 (PDT)
Received: from localhost (c-73-158-218-242.hsd1.ca.comcast.net.
 [73.158.218.242]) by smtp.gmail.com with UTF8SMTPSA id
 d9443c01a7336-23603077edbsm73764305ad.14.2025.06.10.10.15.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Jun 2025 10:15:24 -0700 (PDT)
From: Stanislav Fomichev <stfomichev@gmail.com>
To: netdev@vger.kernel.org
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, skalluru@marvell.com, manishc@marvell.com,
 andrew+netdev@lunn.ch, michael.chan@broadcom.com,
 pavan.chebbi@broadcom.com, ajit.khaparde@broadcom.com,
 sriharsha.basavapatna@broadcom.com, somnath.kotur@broadcom.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 tariqt@nvidia.com, saeedm@nvidia.com, louis.peens@corigine.com,
 shshaikh@marvell.com, GR-Linux-NIC-Dev@marvell.com, ecree.xilinx@gmail.com,
 horms@kernel.org, dsahern@kernel.org, shuah@kernel.org,
 ruanjinjie@huawei.com, mheib@redhat.com, stfomichev@gmail.com,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, oss-drivers@corigine.com,
 linux-net-drivers@amd.com, linux-kselftest@vger.kernel.org,
 leon@kernel.org, Cosmin Ratiu <cratiu@nvidia.com>
Date: Tue, 10 Jun 2025 10:15:19 -0700
Message-ID: <20250610171522.2119030-2-stfomichev@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250610171522.2119030-1-stfomichev@gmail.com>
References: <20250610171522.2119030-1-stfomichev@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1749575726; x=1750180526; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=PbIGzSVfDwiEgSWF74Mc6LFH+xkyt/V3j/EbdHhOVFA=;
 b=UHrQjPVUK+1nlJMjjLqI+Tj5WdWfFCFlm1e9JbPiYd6bujanzk+D698h79MgOb3sgC
 fVuyxaLrgSde9Dmhzqh2DgiSTa4gxeBTfaAeTmiGuflg9/4T0veIuMcL/vj4Cs9xB8/H
 9PSikxlclabPq9bWeWHXPERwtWeJVc17pNKO/IYQseMCrlbGKO8ivfz6Rx7yNGrOmpOr
 tjABvv7PT+QIEngl3P0SXxt36BizeWY8MO8Fy0U+6f5aDLRzuiMpd2GiXKpIdeyFIf88
 byJyCAZjHDWjAD36zQdIqZF60IjnDMiyFnDsr4NTxIPnRgdQZyYIhUGzm3iemN6RnSkC
 IAEg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=UHrQjPVU
Subject: [Intel-wired-lan] [PATCH net-next v3 1/4] udp_tunnel: remove
 rtnl_lock dependency
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Drivers that are using ops lock and don't depend on RTNL lock
still need to manage it because udp_tunnel's RTNL dependency.
Introduce new udp_tunnel_nic_lock and use it instead of
rtnl_lock. Drop non-UDP_TUNNEL_NIC_INFO_MAY_SLEEP mode from
udp_tunnel infra (udp_tunnel_nic_device_sync_work needs to
grab udp_tunnel_nic_lock mutex and might sleep).

Cc: Michael Chan <michael.chan@broadcom.com>
Reviewed-by: Cosmin Ratiu <cratiu@nvidia.com>
Suggested-by: Jakub Kicinski <kuba@kernel.org>
Signed-off-by: Stanislav Fomichev <stfomichev@gmail.com>
---
 .../net/ethernet/broadcom/bnx2x/bnx2x_main.c  |  3 +-
 drivers/net/ethernet/broadcom/bnxt/bnxt.c     |  6 ++--
 drivers/net/ethernet/emulex/benet/be_main.c   |  3 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  1 -
 drivers/net/ethernet/intel/ice/ice_main.c     |  1 -
 .../net/ethernet/mellanox/mlx4/en_netdev.c    |  3 +-
 .../net/ethernet/mellanox/mlx5/core/en_main.c |  3 +-
 .../ethernet/netronome/nfp/nfp_net_common.c   |  3 +-
 .../net/ethernet/qlogic/qede/qede_filter.c    |  3 --
 .../net/ethernet/qlogic/qlcnic/qlcnic_main.c  |  1 -
 drivers/net/ethernet/sfc/ef10.c               |  1 -
 drivers/net/netdevsim/udp_tunnels.c           |  4 ---
 include/net/udp_tunnel.h                      |  8 ++---
 net/ipv4/udp_tunnel_nic.c                     | 30 +++++++++----------
 14 files changed, 24 insertions(+), 46 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c
index f522ca8ff66b..fa7e5adf9804 100644
--- a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c
+++ b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c
@@ -10219,8 +10219,7 @@ static int bnx2x_udp_tunnel_sync(struct net_device *netdev, unsigned int table)
 
 static const struct udp_tunnel_nic_info bnx2x_udp_tunnels = {
 	.sync_table	= bnx2x_udp_tunnel_sync,
-	.flags		= UDP_TUNNEL_NIC_INFO_MAY_SLEEP |
-			  UDP_TUNNEL_NIC_INFO_OPEN_ONLY,
+	.flags		= UDP_TUNNEL_NIC_INFO_OPEN_ONLY,
 	.tables		= {
 		{ .n_entries = 1, .tunnel_types = UDP_TUNNEL_TYPE_VXLAN,  },
 		{ .n_entries = 1, .tunnel_types = UDP_TUNNEL_TYPE_GENEVE, },
diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt.c b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
index d5495762c945..a3dadde65b8d 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
@@ -15573,8 +15573,7 @@ static int bnxt_udp_tunnel_unset_port(struct net_device *netdev, unsigned int ta
 static const struct udp_tunnel_nic_info bnxt_udp_tunnels = {
 	.set_port	= bnxt_udp_tunnel_set_port,
 	.unset_port	= bnxt_udp_tunnel_unset_port,
-	.flags		= UDP_TUNNEL_NIC_INFO_MAY_SLEEP |
-			  UDP_TUNNEL_NIC_INFO_OPEN_ONLY,
+	.flags		= UDP_TUNNEL_NIC_INFO_OPEN_ONLY,
 	.tables		= {
 		{ .n_entries = 1, .tunnel_types = UDP_TUNNEL_TYPE_VXLAN,  },
 		{ .n_entries = 1, .tunnel_types = UDP_TUNNEL_TYPE_GENEVE, },
@@ -15582,8 +15581,7 @@ static const struct udp_tunnel_nic_info bnxt_udp_tunnels = {
 }, bnxt_udp_tunnels_p7 = {
 	.set_port	= bnxt_udp_tunnel_set_port,
 	.unset_port	= bnxt_udp_tunnel_unset_port,
-	.flags		= UDP_TUNNEL_NIC_INFO_MAY_SLEEP |
-			  UDP_TUNNEL_NIC_INFO_OPEN_ONLY,
+	.flags		= UDP_TUNNEL_NIC_INFO_OPEN_ONLY,
 	.tables		= {
 		{ .n_entries = 1, .tunnel_types = UDP_TUNNEL_TYPE_VXLAN,  },
 		{ .n_entries = 1, .tunnel_types = UDP_TUNNEL_TYPE_GENEVE, },
diff --git a/drivers/net/ethernet/emulex/benet/be_main.c b/drivers/net/ethernet/emulex/benet/be_main.c
index 3d2e21592119..f49400ba9729 100644
--- a/drivers/net/ethernet/emulex/benet/be_main.c
+++ b/drivers/net/ethernet/emulex/benet/be_main.c
@@ -4031,8 +4031,7 @@ static int be_vxlan_unset_port(struct net_device *netdev, unsigned int table,
 static const struct udp_tunnel_nic_info be_udp_tunnels = {
 	.set_port	= be_vxlan_set_port,
 	.unset_port	= be_vxlan_unset_port,
-	.flags		= UDP_TUNNEL_NIC_INFO_MAY_SLEEP |
-			  UDP_TUNNEL_NIC_INFO_OPEN_ONLY,
+	.flags		= UDP_TUNNEL_NIC_INFO_OPEN_ONLY,
 	.tables		= {
 		{ .n_entries = 1, .tunnel_types = UDP_TUNNEL_TYPE_VXLAN, },
 	},
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 120d68654e3f..3d3da9d15348 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -15891,7 +15891,6 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	pf->udp_tunnel_nic.set_port = i40e_udp_tunnel_set_port;
 	pf->udp_tunnel_nic.unset_port = i40e_udp_tunnel_unset_port;
-	pf->udp_tunnel_nic.flags = UDP_TUNNEL_NIC_INFO_MAY_SLEEP;
 	pf->udp_tunnel_nic.shared = &pf->udp_tunnel_shared;
 	pf->udp_tunnel_nic.tables[0].n_entries = I40E_MAX_PF_UDP_OFFLOAD_PORTS;
 	pf->udp_tunnel_nic.tables[0].tunnel_types = UDP_TUNNEL_TYPE_VXLAN |
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index d97d4b25b30d..e309531f8c9d 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4764,7 +4764,6 @@ int ice_init_dev(struct ice_pf *pf)
 
 	pf->hw.udp_tunnel_nic.set_port = ice_udp_tunnel_set_port;
 	pf->hw.udp_tunnel_nic.unset_port = ice_udp_tunnel_unset_port;
-	pf->hw.udp_tunnel_nic.flags = UDP_TUNNEL_NIC_INFO_MAY_SLEEP;
 	pf->hw.udp_tunnel_nic.shared = &pf->hw.udp_tunnel_shared;
 	if (pf->hw.tnl.valid_count[TNL_VXLAN]) {
 		pf->hw.udp_tunnel_nic.tables[0].n_entries =
diff --git a/drivers/net/ethernet/mellanox/mlx4/en_netdev.c b/drivers/net/ethernet/mellanox/mlx4/en_netdev.c
index 281b34af0bb4..d2071aff7b8f 100644
--- a/drivers/net/ethernet/mellanox/mlx4/en_netdev.c
+++ b/drivers/net/ethernet/mellanox/mlx4/en_netdev.c
@@ -2670,8 +2670,7 @@ static int mlx4_udp_tunnel_sync(struct net_device *dev, unsigned int table)
 
 static const struct udp_tunnel_nic_info mlx4_udp_tunnels = {
 	.sync_table	= mlx4_udp_tunnel_sync,
-	.flags		= UDP_TUNNEL_NIC_INFO_MAY_SLEEP |
-			  UDP_TUNNEL_NIC_INFO_IPV4_ONLY,
+	.flags		= UDP_TUNNEL_NIC_INFO_IPV4_ONLY,
 	.tables		= {
 		{ .n_entries = 1, .tunnel_types = UDP_TUNNEL_TYPE_VXLAN, },
 	},
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_main.c b/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
index ea822c69d137..ccde53f94045 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
@@ -5303,8 +5303,7 @@ void mlx5e_vxlan_set_netdev_info(struct mlx5e_priv *priv)
 
 	priv->nic_info.set_port = mlx5e_vxlan_set_port;
 	priv->nic_info.unset_port = mlx5e_vxlan_unset_port;
-	priv->nic_info.flags = UDP_TUNNEL_NIC_INFO_MAY_SLEEP |
-				UDP_TUNNEL_NIC_INFO_STATIC_IANA_VXLAN;
+	priv->nic_info.flags = UDP_TUNNEL_NIC_INFO_STATIC_IANA_VXLAN;
 	priv->nic_info.tables[0].tunnel_types = UDP_TUNNEL_TYPE_VXLAN;
 	/* Don't count the space hard-coded to the IANA port */
 	priv->nic_info.tables[0].n_entries =
diff --git a/drivers/net/ethernet/netronome/nfp/nfp_net_common.c b/drivers/net/ethernet/netronome/nfp/nfp_net_common.c
index 28997ddab966..14ba38bcb07b 100644
--- a/drivers/net/ethernet/netronome/nfp/nfp_net_common.c
+++ b/drivers/net/ethernet/netronome/nfp/nfp_net_common.c
@@ -2394,8 +2394,7 @@ static int nfp_udp_tunnel_sync(struct net_device *netdev, unsigned int table)
 
 static const struct udp_tunnel_nic_info nfp_udp_tunnels = {
 	.sync_table     = nfp_udp_tunnel_sync,
-	.flags          = UDP_TUNNEL_NIC_INFO_MAY_SLEEP |
-			  UDP_TUNNEL_NIC_INFO_OPEN_ONLY,
+	.flags          = UDP_TUNNEL_NIC_INFO_OPEN_ONLY,
 	.tables         = {
 		{
 			.n_entries      = NFP_NET_N_VXLAN_PORTS,
diff --git a/drivers/net/ethernet/qlogic/qede/qede_filter.c b/drivers/net/ethernet/qlogic/qede/qede_filter.c
index 985026dd816f..7e341e026489 100644
--- a/drivers/net/ethernet/qlogic/qede/qede_filter.c
+++ b/drivers/net/ethernet/qlogic/qede/qede_filter.c
@@ -987,20 +987,17 @@ static int qede_udp_tunnel_sync(struct net_device *dev, unsigned int table)
 
 static const struct udp_tunnel_nic_info qede_udp_tunnels_both = {
 	.sync_table	= qede_udp_tunnel_sync,
-	.flags		= UDP_TUNNEL_NIC_INFO_MAY_SLEEP,
 	.tables		= {
 		{ .n_entries = 1, .tunnel_types = UDP_TUNNEL_TYPE_VXLAN,  },
 		{ .n_entries = 1, .tunnel_types = UDP_TUNNEL_TYPE_GENEVE, },
 	},
 }, qede_udp_tunnels_vxlan = {
 	.sync_table	= qede_udp_tunnel_sync,
-	.flags		= UDP_TUNNEL_NIC_INFO_MAY_SLEEP,
 	.tables		= {
 		{ .n_entries = 1, .tunnel_types = UDP_TUNNEL_TYPE_VXLAN,  },
 	},
 }, qede_udp_tunnels_geneve = {
 	.sync_table	= qede_udp_tunnel_sync,
-	.flags		= UDP_TUNNEL_NIC_INFO_MAY_SLEEP,
 	.tables		= {
 		{ .n_entries = 1, .tunnel_types = UDP_TUNNEL_TYPE_GENEVE, },
 	},
diff --git a/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c b/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
index eb69121df726..53cdd36c4123 100644
--- a/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
+++ b/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
@@ -486,7 +486,6 @@ static int qlcnic_udp_tunnel_sync(struct net_device *dev, unsigned int table)
 
 static const struct udp_tunnel_nic_info qlcnic_udp_tunnels = {
 	.sync_table	= qlcnic_udp_tunnel_sync,
-	.flags		= UDP_TUNNEL_NIC_INFO_MAY_SLEEP,
 	.tables		= {
 		{ .n_entries = 1, .tunnel_types = UDP_TUNNEL_TYPE_VXLAN, },
 	},
diff --git a/drivers/net/ethernet/sfc/ef10.c b/drivers/net/ethernet/sfc/ef10.c
index 47349c148c0c..fcec81f862ec 100644
--- a/drivers/net/ethernet/sfc/ef10.c
+++ b/drivers/net/ethernet/sfc/ef10.c
@@ -3985,7 +3985,6 @@ static int efx_ef10_udp_tnl_unset_port(struct net_device *dev,
 static const struct udp_tunnel_nic_info efx_ef10_udp_tunnels = {
 	.set_port	= efx_ef10_udp_tnl_set_port,
 	.unset_port	= efx_ef10_udp_tnl_unset_port,
-	.flags          = UDP_TUNNEL_NIC_INFO_MAY_SLEEP,
 	.tables         = {
 		{
 			.n_entries = 16,
diff --git a/drivers/net/netdevsim/udp_tunnels.c b/drivers/net/netdevsim/udp_tunnels.c
index 640b4983a9a0..10cbbf1c584b 100644
--- a/drivers/net/netdevsim/udp_tunnels.c
+++ b/drivers/net/netdevsim/udp_tunnels.c
@@ -112,12 +112,10 @@ nsim_udp_tunnels_info_reset_write(struct file *file, const char __user *data,
 	struct net_device *dev = file->private_data;
 	struct netdevsim *ns = netdev_priv(dev);
 
-	rtnl_lock();
 	if (dev->reg_state == NETREG_REGISTERED) {
 		memset(ns->udp_ports.ports, 0, sizeof(ns->udp_ports.__ports));
 		udp_tunnel_nic_reset_ntf(dev);
 	}
-	rtnl_unlock();
 
 	return count;
 }
@@ -181,8 +179,6 @@ int nsim_udp_tunnels_info_create(struct nsim_dev *nsim_dev,
 		info->sync_table = NULL;
 	}
 
-	if (ns->udp_ports.sleep)
-		info->flags |= UDP_TUNNEL_NIC_INFO_MAY_SLEEP;
 	if (nsim_dev->udp_ports.open_only)
 		info->flags |= UDP_TUNNEL_NIC_INFO_OPEN_ONLY;
 	if (nsim_dev->udp_ports.ipv4_only)
diff --git a/include/net/udp_tunnel.h b/include/net/udp_tunnel.h
index 2df3b8344eb5..606168b0b64a 100644
--- a/include/net/udp_tunnel.h
+++ b/include/net/udp_tunnel.h
@@ -221,19 +221,17 @@ static inline void udp_tunnel_encap_enable(struct sock *sk)
 #define UDP_TUNNEL_NIC_MAX_TABLES	4
 
 enum udp_tunnel_nic_info_flags {
-	/* Device callbacks may sleep */
-	UDP_TUNNEL_NIC_INFO_MAY_SLEEP	= BIT(0),
 	/* Device only supports offloads when it's open, all ports
 	 * will be removed before close and re-added after open.
 	 */
-	UDP_TUNNEL_NIC_INFO_OPEN_ONLY	= BIT(1),
+	UDP_TUNNEL_NIC_INFO_OPEN_ONLY	= BIT(0),
 	/* Device supports only IPv4 tunnels */
-	UDP_TUNNEL_NIC_INFO_IPV4_ONLY	= BIT(2),
+	UDP_TUNNEL_NIC_INFO_IPV4_ONLY	= BIT(1),
 	/* Device has hard-coded the IANA VXLAN port (4789) as VXLAN.
 	 * This port must not be counted towards n_entries of any table.
 	 * Driver will not receive any callback associated with port 4789.
 	 */
-	UDP_TUNNEL_NIC_INFO_STATIC_IANA_VXLAN	= BIT(3),
+	UDP_TUNNEL_NIC_INFO_STATIC_IANA_VXLAN	= BIT(2),
 };
 
 struct udp_tunnel_nic;
diff --git a/net/ipv4/udp_tunnel_nic.c b/net/ipv4/udp_tunnel_nic.c
index b6d2d16189c0..956a04c4bed4 100644
--- a/net/ipv4/udp_tunnel_nic.c
+++ b/net/ipv4/udp_tunnel_nic.c
@@ -34,6 +34,7 @@ struct udp_tunnel_nic_table_entry {
  * @work_pending: @work is currently scheduled
  * @n_tables:	number of tables under @entries
  * @missed:	bitmap of tables which overflown
+ * @lock:	protects entries
  * @entries:	table of tables of ports currently offloaded
  */
 struct udp_tunnel_nic {
@@ -47,6 +48,7 @@ struct udp_tunnel_nic {
 
 	unsigned int n_tables;
 	unsigned long missed;
+	struct mutex lock;
 	struct udp_tunnel_nic_table_entry *entries[] __counted_by(n_tables);
 };
 
@@ -298,22 +300,11 @@ __udp_tunnel_nic_device_sync(struct net_device *dev, struct udp_tunnel_nic *utn)
 static void
 udp_tunnel_nic_device_sync(struct net_device *dev, struct udp_tunnel_nic *utn)
 {
-	const struct udp_tunnel_nic_info *info = dev->udp_tunnel_nic_info;
-	bool may_sleep;
-
 	if (!utn->need_sync)
 		return;
 
-	/* Drivers which sleep in the callback need to update from
-	 * the workqueue, if we come from the tunnel driver's notification.
-	 */
-	may_sleep = info->flags & UDP_TUNNEL_NIC_INFO_MAY_SLEEP;
-	if (!may_sleep)
-		__udp_tunnel_nic_device_sync(dev, utn);
-	if (may_sleep || utn->need_replay) {
-		queue_work(udp_tunnel_nic_workqueue, &utn->work);
-		utn->work_pending = 1;
-	}
+	queue_work(udp_tunnel_nic_workqueue, &utn->work);
+	utn->work_pending = 1;
 }
 
 static bool
@@ -554,12 +545,12 @@ static void __udp_tunnel_nic_reset_ntf(struct net_device *dev)
 	struct udp_tunnel_nic *utn;
 	unsigned int i, j;
 
-	ASSERT_RTNL();
-
 	utn = dev->udp_tunnel_nic;
 	if (!utn)
 		return;
 
+	mutex_lock(&utn->lock);
+
 	utn->need_sync = false;
 	for (i = 0; i < utn->n_tables; i++)
 		for (j = 0; j < info->tables[i].n_entries; j++) {
@@ -569,7 +560,7 @@ static void __udp_tunnel_nic_reset_ntf(struct net_device *dev)
 
 			entry->flags &= ~(UDP_TUNNEL_NIC_ENTRY_DEL |
 					  UDP_TUNNEL_NIC_ENTRY_OP_FAIL);
-			/* We don't release rtnl across ops */
+			/* We don't release utn lock across ops */
 			WARN_ON(entry->flags & UDP_TUNNEL_NIC_ENTRY_FROZEN);
 			if (!entry->use_cnt)
 				continue;
@@ -579,6 +570,8 @@ static void __udp_tunnel_nic_reset_ntf(struct net_device *dev)
 		}
 
 	__udp_tunnel_nic_device_sync(dev, utn);
+
+	mutex_unlock(&utn->lock);
 }
 
 static size_t
@@ -710,11 +703,15 @@ static void udp_tunnel_nic_device_sync_work(struct work_struct *work)
 		container_of(work, struct udp_tunnel_nic, work);
 
 	rtnl_lock();
+	mutex_lock(&utn->lock);
+
 	utn->work_pending = 0;
 	__udp_tunnel_nic_device_sync(utn->dev, utn);
 
 	if (utn->need_replay)
 		udp_tunnel_nic_replay(utn->dev, utn);
+
+	mutex_unlock(&utn->lock);
 	rtnl_unlock();
 }
 
@@ -730,6 +727,7 @@ udp_tunnel_nic_alloc(const struct udp_tunnel_nic_info *info,
 		return NULL;
 	utn->n_tables = n_tables;
 	INIT_WORK(&utn->work, udp_tunnel_nic_device_sync_work);
+	mutex_init(&utn->lock);
 
 	for (i = 0; i < n_tables; i++) {
 		utn->entries[i] = kcalloc(info->tables[i].n_entries,
-- 
2.49.0

