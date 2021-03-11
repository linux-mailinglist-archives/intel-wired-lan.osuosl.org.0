Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A79083369AF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Mar 2021 02:35:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0FB5642FFF;
	Thu, 11 Mar 2021 01:35:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pj_HhVmqOXpy; Thu, 11 Mar 2021 01:35:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D03F542FFC;
	Thu, 11 Mar 2021 01:35:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 626C71BF38B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 01:35:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4FBC3454B4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 01:35:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U_C23EoFlWqW for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Mar 2021 01:35:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com
 [IPv6:2607:f8b0:4864:20::102c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 35EB64695D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 01:35:28 +0000 (UTC)
Received: by mail-pj1-x102c.google.com with SMTP id w8so2640233pjf.4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Mar 2021 17:35:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=a/0fZNqVgloBnEhlkQpxMX/GvO0+8YU9LHLpoGezxsU=;
 b=BLduzivbLDbidT4i9qxmn8vfoPkTaHjSu4w/eg8d91Aqfs2kudcXSmXRfBuwGbdkFJ
 s7xpLe+SgmGJB8rlGiXKrpXTtQI5yaHx2T9VWveG2NaeIKBXiExzx1EXbPBePZvpHNjw
 L9JQZASKgZAv8zZhd0slVZSijffaT5i1L3bpyrNFe6BGU+v0L4eit3KDLjr6NT7LRz+n
 vD4sMUzWOVLuc6i1X0UhAhvxgeg3Oy25/0G1mN4Xi5CbX/TDPzdB1i/GaTNR4aQ0BRm2
 kpRM3ICut3wgH/g7SJ16jL+nrGIzluiiYuoU66SM4ZmNhZYUVGcbK0tkMt3cK8T4FIai
 rldQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=a/0fZNqVgloBnEhlkQpxMX/GvO0+8YU9LHLpoGezxsU=;
 b=OmxWilDflfBGOMDe4Se8qyDbpAlc5+SyL9uNutuvVE9p6OoRLvPEQpMaML7lbDPdcI
 5oFXJqKl7C+mLw8PHNV6AlAudr+83vh768uvyr/JjqN6JNZaqk8UZCi2VoGAgFPIe9jS
 WC8lFsHG+15dPIH/aJDJU+h67sSilRGUnQWmrC76B68rxM4rY/gEXzSG8471mbYTatXn
 XzqVr5E9d8X6gSNa6N3LjV26Tmf9xX18Y6qz1wazcnWgDiDv0mmozokqCYJqyVajWVFt
 o93VEIcu3Dz0g/pDYyMlaffj7OJw81jRfNRDbc65+UnsyybjVF0LJLVIbeJnO1ohuSi5
 Yw+g==
X-Gm-Message-State: AOAM532eLfvbIp63yjh2IKb4iX4jrae92Uu1Ivxr9rwWu/TpC0w7/YQx
 TfgGTi62ccd2HlaPQDtynZg=
X-Google-Smtp-Source: ABdhPJxxg907TFRawOVWMfevxA8dA7Tb3Slyc2F/2ACyyMlyS+8hHitTwll+g0rc/z6iFhmQk53UzQ==
X-Received: by 2002:a17:90a:fd0a:: with SMTP id
 cv10mr6158432pjb.167.1615426527562; 
 Wed, 10 Mar 2021 17:35:27 -0800 (PST)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id a21sm661686pfh.31.2021.03.10.17.35.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Mar 2021 17:35:27 -0800 (PST)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: kuba@kernel.org
Date: Wed, 10 Mar 2021 17:35:26 -0800
Message-ID: <161542652605.13546.13143472024905128153.stgit@localhost.localdomain>
In-Reply-To: <161542634192.13546.4185974647834631704.stgit@localhost.localdomain>
References: <161542634192.13546.4185974647834631704.stgit@localhost.localdomain>
User-Agent: StGit/0.23
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC PATCH 02/10] intel: Update drivers to use
 ethtool_gsprintf
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
Cc: doshir@vmware.com, mst@redhat.com, oss-drivers@netronome.com,
 jasowang@redhat.com, alexanderduyck@fb.com, akiyano@amazon.com,
 wei.liu@kernel.org, sthemmin@microsoft.com, pv-drivers@vmware.com,
 intel-wired-lan@lists.osuosl.org, yisen.zhuang@huawei.com, gtzalik@amazon.com,
 simon.horman@netronome.com, haiyangz@microsoft.com, drivers@pensando.io,
 salil.mehta@huawei.com, GR-Linux-NIC-Dev@marvell.com, rmody@marvell.com,
 netdev@vger.kernel.org, netanel@amazon.com, saeedb@amazon.com,
 snelson@pensando.io, skalluru@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander Duyck <alexanderduyck@fb.com>

Update the Intel drivers to make use of ethtool_gsprintf. The general idea
is to reduce code size and overhead by replacing the repeated pattern of
string printf statements and ETH_STRING_LEN counter increments.

Signed-off-by: Alexander Duyck <alexanderduyck@fb.com>
---
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c   |   16 ++----
 drivers/net/ethernet/intel/ice/ice_ethtool.c     |   55 +++++++---------------
 drivers/net/ethernet/intel/igb/igb_ethtool.c     |   40 ++++++----------
 drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c |   40 ++++++----------
 4 files changed, 50 insertions(+), 101 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index c70dec65a572..932c6635cfd6 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -2368,21 +2368,15 @@ static void i40e_get_priv_flag_strings(struct net_device *netdev, u8 *data)
 	struct i40e_netdev_priv *np = netdev_priv(netdev);
 	struct i40e_vsi *vsi = np->vsi;
 	struct i40e_pf *pf = vsi->back;
-	char *p = (char *)data;
+	u8 *p = data;
 	unsigned int i;
 
-	for (i = 0; i < I40E_PRIV_FLAGS_STR_LEN; i++) {
-		snprintf(p, ETH_GSTRING_LEN, "%s",
-			 i40e_gstrings_priv_flags[i].flag_string);
-		p += ETH_GSTRING_LEN;
-	}
+	for (i = 0; i < I40E_PRIV_FLAGS_STR_LEN; i++)
+		ethtool_gsprintf(&p, i40e_gstrings_priv_flags[i].flag_string);
 	if (pf->hw.pf_id != 0)
 		return;
-	for (i = 0; i < I40E_GL_PRIV_FLAGS_STR_LEN; i++) {
-		snprintf(p, ETH_GSTRING_LEN, "%s",
-			 i40e_gl_gstrings_priv_flags[i].flag_string);
-		p += ETH_GSTRING_LEN;
-	}
+	for (i = 0; i < I40E_GL_PRIV_FLAGS_STR_LEN; i++)
+		ethtool_gsprintf(&p, i40e_gl_gstrings_priv_flags[i].flag_string);
 }
 
 static void i40e_get_strings(struct net_device *netdev, u32 stringset,
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 2dcfa685b763..cef5ebeae886 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -871,68 +871,47 @@ static void ice_get_strings(struct net_device *netdev, u32 stringset, u8 *data)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
-	char *p = (char *)data;
 	unsigned int i;
+	u8 *p = data;
 
 	switch (stringset) {
 	case ETH_SS_STATS:
-		for (i = 0; i < ICE_VSI_STATS_LEN; i++) {
-			snprintf(p, ETH_GSTRING_LEN, "%s",
-				 ice_gstrings_vsi_stats[i].stat_string);
-			p += ETH_GSTRING_LEN;
-		}
+		for (i = 0; i < ICE_VSI_STATS_LEN; i++)
+			ethtool_gsprintf(&p,
+					 ice_gstrings_vsi_stats[i].stat_string);
 
 		ice_for_each_alloc_txq(vsi, i) {
-			snprintf(p, ETH_GSTRING_LEN,
-				 "tx_queue_%u_packets", i);
-			p += ETH_GSTRING_LEN;
-			snprintf(p, ETH_GSTRING_LEN, "tx_queue_%u_bytes", i);
-			p += ETH_GSTRING_LEN;
+			ethtool_gsprintf(&p, "tx_queue_%u_packets", i);
+			ethtool_gsprintf(&p, "tx_queue_%u_bytes", i);
 		}
 
 		ice_for_each_alloc_rxq(vsi, i) {
-			snprintf(p, ETH_GSTRING_LEN,
-				 "rx_queue_%u_packets", i);
-			p += ETH_GSTRING_LEN;
-			snprintf(p, ETH_GSTRING_LEN, "rx_queue_%u_bytes", i);
-			p += ETH_GSTRING_LEN;
+			ethtool_gsprintf(&p, "rx_queue_%u_packets", i);
+			ethtool_gsprintf(&p, "rx_queue_%u_bytes", i);
 		}
 
 		if (vsi->type != ICE_VSI_PF)
 			return;
 
-		for (i = 0; i < ICE_PF_STATS_LEN; i++) {
-			snprintf(p, ETH_GSTRING_LEN, "%s",
-				 ice_gstrings_pf_stats[i].stat_string);
-			p += ETH_GSTRING_LEN;
-		}
+		for (i = 0; i < ICE_PF_STATS_LEN; i++)
+			ethtool_gsprintf(&p,
+					 ice_gstrings_pf_stats[i].stat_string);
 
 		for (i = 0; i < ICE_MAX_USER_PRIORITY; i++) {
-			snprintf(p, ETH_GSTRING_LEN,
-				 "tx_priority_%u_xon.nic", i);
-			p += ETH_GSTRING_LEN;
-			snprintf(p, ETH_GSTRING_LEN,
-				 "tx_priority_%u_xoff.nic", i);
-			p += ETH_GSTRING_LEN;
+			ethtool_gsprintf(&p, "tx_priority_%u_xon.nic", i);
+			ethtool_gsprintf(&p, "tx_priority_%u_xoff.nic", i);
 		}
 		for (i = 0; i < ICE_MAX_USER_PRIORITY; i++) {
-			snprintf(p, ETH_GSTRING_LEN,
-				 "rx_priority_%u_xon.nic", i);
-			p += ETH_GSTRING_LEN;
-			snprintf(p, ETH_GSTRING_LEN,
-				 "rx_priority_%u_xoff.nic", i);
-			p += ETH_GSTRING_LEN;
+			ethtool_gsprintf(&p, "rx_priority_%u_xon.nic", i);
+			ethtool_gsprintf(&p, "rx_priority_%u_xoff.nic", i);
 		}
 		break;
 	case ETH_SS_TEST:
 		memcpy(data, ice_gstrings_test, ICE_TEST_LEN * ETH_GSTRING_LEN);
 		break;
 	case ETH_SS_PRIV_FLAGS:
-		for (i = 0; i < ICE_PRIV_FLAG_ARRAY_SIZE; i++) {
-			snprintf(p, ETH_GSTRING_LEN, "%s",
-				 ice_gstrings_priv_flags[i].name);
-			p += ETH_GSTRING_LEN;
-		}
+		for (i = 0; i < ICE_PRIV_FLAG_ARRAY_SIZE; i++)
+			ethtool_gsprintf(&p, ice_gstrings_priv_flags[i].name);
 		break;
 	default:
 		break;
diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index 28baf203459a..a82d2b901ac4 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -2347,35 +2347,23 @@ static void igb_get_strings(struct net_device *netdev, u32 stringset, u8 *data)
 			IGB_TEST_LEN*ETH_GSTRING_LEN);
 		break;
 	case ETH_SS_STATS:
-		for (i = 0; i < IGB_GLOBAL_STATS_LEN; i++) {
-			memcpy(p, igb_gstrings_stats[i].stat_string,
-			       ETH_GSTRING_LEN);
-			p += ETH_GSTRING_LEN;
-		}
-		for (i = 0; i < IGB_NETDEV_STATS_LEN; i++) {
-			memcpy(p, igb_gstrings_net_stats[i].stat_string,
-			       ETH_GSTRING_LEN);
-			p += ETH_GSTRING_LEN;
-		}
+		for (i = 0; i < IGB_GLOBAL_STATS_LEN; i++)
+			ethtool_gsprintf(&p,
+					 igb_gstrings_stats[i].stat_string);
+		for (i = 0; i < IGB_NETDEV_STATS_LEN; i++)
+			ethtool_gsprintf(&p,
+					 igb_gstrings_net_stats[i].stat_string);
 		for (i = 0; i < adapter->num_tx_queues; i++) {
-			sprintf(p, "tx_queue_%u_packets", i);
-			p += ETH_GSTRING_LEN;
-			sprintf(p, "tx_queue_%u_bytes", i);
-			p += ETH_GSTRING_LEN;
-			sprintf(p, "tx_queue_%u_restart", i);
-			p += ETH_GSTRING_LEN;
+			ethtool_gsprintf(&p, "tx_queue_%u_packets", i);
+			ethtool_gsprintf(&p, "tx_queue_%u_bytes", i);
+			ethtool_gsprintf(&p, "tx_queue_%u_restart", i);
 		}
 		for (i = 0; i < adapter->num_rx_queues; i++) {
-			sprintf(p, "rx_queue_%u_packets", i);
-			p += ETH_GSTRING_LEN;
-			sprintf(p, "rx_queue_%u_bytes", i);
-			p += ETH_GSTRING_LEN;
-			sprintf(p, "rx_queue_%u_drops", i);
-			p += ETH_GSTRING_LEN;
-			sprintf(p, "rx_queue_%u_csum_err", i);
-			p += ETH_GSTRING_LEN;
-			sprintf(p, "rx_queue_%u_alloc_failed", i);
-			p += ETH_GSTRING_LEN;
+			ethtool_gsprintf(&p, "rx_queue_%u_packets", i);
+			ethtool_gsprintf(&p, "rx_queue_%u_bytes", i);
+			ethtool_gsprintf(&p, "rx_queue_%u_drops", i);
+			ethtool_gsprintf(&p, "rx_queue_%u_csum_err", i);
+			ethtool_gsprintf(&p, "rx_queue_%u_alloc_failed", i);
 		}
 		/* BUG_ON(p - data != IGB_STATS_LEN * ETH_GSTRING_LEN); */
 		break;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index a280aa34ca1d..439765d72ac1 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -1368,45 +1368,33 @@ static void ixgbe_get_ethtool_stats(struct net_device *netdev,
 static void ixgbe_get_strings(struct net_device *netdev, u32 stringset,
 			      u8 *data)
 {
-	char *p = (char *)data;
 	unsigned int i;
+	u8 *p = data;
 
 	switch (stringset) {
 	case ETH_SS_TEST:
-		for (i = 0; i < IXGBE_TEST_LEN; i++) {
-			memcpy(data, ixgbe_gstrings_test[i], ETH_GSTRING_LEN);
-			data += ETH_GSTRING_LEN;
-		}
+		for (i = 0; i < IXGBE_TEST_LEN; i++)
+			ethtool_gsprintf(&p, ixgbe_gstrings_test[i]);
 		break;
 	case ETH_SS_STATS:
-		for (i = 0; i < IXGBE_GLOBAL_STATS_LEN; i++) {
-			memcpy(p, ixgbe_gstrings_stats[i].stat_string,
-			       ETH_GSTRING_LEN);
-			p += ETH_GSTRING_LEN;
-		}
+		for (i = 0; i < IXGBE_GLOBAL_STATS_LEN; i++)
+			ethtool_gsprintf(&p,
+					 ixgbe_gstrings_stats[i].stat_string);
 		for (i = 0; i < netdev->num_tx_queues; i++) {
-			sprintf(p, "tx_queue_%u_packets", i);
-			p += ETH_GSTRING_LEN;
-			sprintf(p, "tx_queue_%u_bytes", i);
-			p += ETH_GSTRING_LEN;
+			ethtool_gsprintf(&p, "tx_queue_%u_packets", i);
+			ethtool_gsprintf(&p, "tx_queue_%u_bytes", i);
 		}
 		for (i = 0; i < IXGBE_NUM_RX_QUEUES; i++) {
-			sprintf(p, "rx_queue_%u_packets", i);
-			p += ETH_GSTRING_LEN;
-			sprintf(p, "rx_queue_%u_bytes", i);
-			p += ETH_GSTRING_LEN;
+			ethtool_gsprintf(&p, "rx_queue_%u_packets", i);
+			ethtool_gsprintf(&p, "rx_queue_%u_bytes", i);
 		}
 		for (i = 0; i < IXGBE_MAX_PACKET_BUFFERS; i++) {
-			sprintf(p, "tx_pb_%u_pxon", i);
-			p += ETH_GSTRING_LEN;
-			sprintf(p, "tx_pb_%u_pxoff", i);
-			p += ETH_GSTRING_LEN;
+			ethtool_gsprintf(&p, "tx_pb_%u_pxon", i);
+			ethtool_gsprintf(&p, "tx_pb_%u_pxoff", i);
 		}
 		for (i = 0; i < IXGBE_MAX_PACKET_BUFFERS; i++) {
-			sprintf(p, "rx_pb_%u_pxon", i);
-			p += ETH_GSTRING_LEN;
-			sprintf(p, "rx_pb_%u_pxoff", i);
-			p += ETH_GSTRING_LEN;
+			ethtool_gsprintf(&p, "rx_pb_%u_pxon", i);
+			ethtool_gsprintf(&p, "rx_pb_%u_pxoff", i);
 		}
 		/* BUG_ON(p - data != IXGBE_STATS_LEN * ETH_GSTRING_LEN); */
 		break;


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
