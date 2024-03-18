Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 592E387EAFC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Mar 2024 15:31:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 402C7405D8;
	Mon, 18 Mar 2024 14:31:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yrS9evHmQ3DN; Mon, 18 Mar 2024 14:31:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 24E6E40584
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710772287;
	bh=KTsyW3SxJyU9wukPhyx1uiE38nBAE6/xCCl0ApRE3Vo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=e/jHHhXPiDH/7XBMX2HF5oS7EIxHW9dCLKuE5jYhk2l1hc+L4sYC377B4ZrUmmZM5
	 LxDHz6mCVeXzDN65rmscMO28DdCVd7/GeAkDgmM/ua6tRHNK4jt5qvUc/A4MpZuVnQ
	 c54z7LoBEMXJVPQOmq969ccpgDFlHMq1Ws8u7gvYMBxPzhNwht+kCCr97io7XTFNFj
	 QlcEx7a1r1VK4ryJVGWyf/PnTznrJTyAYthkX3Ku66YzoPynMY+wo5LHB7PB1rcJP1
	 h0nf+wMCWeYDHfrFYccZihz8LGxzpMMq/Kn/jBNVyu0cKu4CMREyH1jv/Zzj693lCy
	 YSMdskGllJnYg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 24E6E40584;
	Mon, 18 Mar 2024 14:31:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EDF8D1BF5A0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Mar 2024 14:31:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DB07060797
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Mar 2024 14:31:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g6w9ZL9k_ZeW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Mar 2024 14:31:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CB27460624
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB27460624
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CB27460624
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Mar 2024 14:31:21 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-31-3pQWexPyNpKGwdiFrLt56Q-1; Mon, 18 Mar 2024 10:31:17 -0400
X-MC-Unique: 3pQWexPyNpKGwdiFrLt56Q-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
 [10.11.54.3])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A2C0C8007B5;
 Mon, 18 Mar 2024 14:31:15 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.224.33])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4AA4E112132A;
 Mon, 18 Mar 2024 14:31:14 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Mar 2024 15:30:49 +0100
Message-ID: <20240318143058.287014-6-ivecera@redhat.com>
In-Reply-To: <20240318143058.287014-1-ivecera@redhat.com>
References: <20240318143058.287014-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1710772280;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KTsyW3SxJyU9wukPhyx1uiE38nBAE6/xCCl0ApRE3Vo=;
 b=MDS5b9gOMdf4QljYyF0NGzIXHv130SzUmLsElKjw6P/5HmcKQvnNOiLyBQww9Xu48DP9ug
 DcswU7FqFOFVMYFCZjz63JAQ6XBS3wG7LPKLhmWXwvSoLOeEHo6GCzYswE9wYJgOxq+4Oz
 Vq9KL/nErdqzdkoRGT/OvdWR3bXcO/Y=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=MDS5b9gO
Subject: [Intel-wired-lan] [PATCH iwl-next 5/7] i40e: Consolidate checks
 whether given VSI is main
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
Cc: "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In the driver code there are 3 types of checks whether given
VSI is main or not:
1. vsi->type ==/!= I40E_VSI_MAIN
2. vsi ==/!= pf->vsi[pf->lan_vsi]
3. vsi->seid ==/!= pf->vsi[pf->lan_vsi]->seid

All of them are equivalent and can be consolidated. Convert cases
2 and 3 to case 1.

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 .../net/ethernet/intel/i40e/i40e_debugfs.c    |  2 +-
 .../net/ethernet/intel/i40e/i40e_ethtool.c    | 12 ++++++------
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 19 +++++++++----------
 3 files changed, 16 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
index 09db46de2994..abf624d770e6 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
@@ -129,7 +129,7 @@ static void i40e_dbg_dump_vsi_seid(struct i40e_pf *pf, int seid)
 		dev_info(&pf->pdev->dev,
 			 "    state[%d] = %08lx\n",
 			 i, vsi->state[i]);
-	if (vsi == pf->vsi[pf->lan_vsi])
+	if (vsi->type == I40E_VSI_MAIN)
 		dev_info(&pf->pdev->dev, "    MAC address: %pM Port MAC: %pM\n",
 			 pf->hw.mac.addr,
 			 pf->hw.mac.port_addr);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 0905c1fb2337..5cd0d1b45f01 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -1241,7 +1241,7 @@ static int i40e_set_link_ksettings(struct net_device *netdev,
 		i40e_partition_setting_complaint(pf);
 		return -EOPNOTSUPP;
 	}
-	if (vsi != pf->vsi[pf->lan_vsi])
+	if (vsi->type != I40E_VSI_MAIN)
 		return -EOPNOTSUPP;
 	if (hw->phy.media_type != I40E_MEDIA_TYPE_BASET &&
 	    hw->phy.media_type != I40E_MEDIA_TYPE_FIBER &&
@@ -1710,7 +1710,7 @@ static int i40e_set_pauseparam(struct net_device *netdev,
 		return -EOPNOTSUPP;
 	}
 
-	if (vsi != pf->vsi[pf->lan_vsi])
+	if (vsi->type != I40E_VSI_MAIN)
 		return -EOPNOTSUPP;
 
 	is_an = hw_link_info->an_info & I40E_AQ_AN_COMPLETED;
@@ -2292,7 +2292,7 @@ static int i40e_get_stats_count(struct net_device *netdev)
 	struct i40e_pf *pf = vsi->back;
 	int stats_len;
 
-	if (vsi == pf->vsi[pf->lan_vsi] && pf->hw.partition_id == 1)
+	if (vsi->type == I40E_VSI_MAIN && pf->hw.partition_id == 1)
 		stats_len = I40E_PF_STATS_LEN;
 	else
 		stats_len = I40E_VSI_STATS_LEN;
@@ -2422,7 +2422,7 @@ static void i40e_get_ethtool_stats(struct net_device *netdev,
 	}
 	rcu_read_unlock();
 
-	if (vsi != pf->vsi[pf->lan_vsi] || pf->hw.partition_id != 1)
+	if (vsi->type != I40E_VSI_MAIN || pf->hw.partition_id != 1)
 		goto check_data_pointer;
 
 	veb_stats = ((pf->lan_veb != I40E_NO_VEB) &&
@@ -2495,7 +2495,7 @@ static void i40e_get_stat_strings(struct net_device *netdev, u8 *data)
 				      "rx", i);
 	}
 
-	if (vsi != pf->vsi[pf->lan_vsi] || pf->hw.partition_id != 1)
+	if (vsi->type != I40E_VSI_MAIN || pf->hw.partition_id != 1)
 		goto check_data_pointer;
 
 	i40e_add_stat_strings(&data, i40e_gstrings_veb_stats);
@@ -2792,7 +2792,7 @@ static int i40e_set_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
 		return -EOPNOTSUPP;
 	}
 
-	if (vsi != pf->vsi[pf->lan_vsi])
+	if (vsi->type != I40E_VSI_MAIN)
 		return -EOPNOTSUPP;
 
 	/* NVM bit on means WoL disabled for the port */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 86bc3fc0579b..d6dbd0fd79eb 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -989,7 +989,7 @@ static void i40e_update_vsi_stats(struct i40e_vsi *vsi)
 	ns->tx_dropped = es->tx_discards;
 
 	/* pull in a couple PF stats if this is the main vsi */
-	if (vsi == pf->vsi[pf->lan_vsi]) {
+	if (vsi->type == I40E_VSI_MAIN) {
 		ns->rx_crc_errors = pf->stats.crc_errors;
 		ns->rx_errors = pf->stats.crc_errors + pf->stats.illegal_bytes;
 		ns->rx_length_errors = pf->stats.rx_length_errors;
@@ -1234,7 +1234,7 @@ void i40e_update_stats(struct i40e_vsi *vsi)
 {
 	struct i40e_pf *pf = vsi->back;
 
-	if (vsi == pf->vsi[pf->lan_vsi])
+	if (vsi->type == I40E_VSI_MAIN)
 		i40e_update_pf_stats(pf);
 
 	i40e_update_vsi_stats(vsi);
@@ -6819,7 +6819,7 @@ static void i40e_dcb_reconfigure(struct i40e_pf *pf)
 		/* - Enable all TCs for the LAN VSI
 		 * - For all others keep them at TC0 for now
 		 */
-		if (v == pf->lan_vsi)
+		if (vsi->type == I40E_VSI_MAIN)
 			tc_map = i40e_pf_get_tc_map(pf);
 		else
 			tc_map = I40E_DEFAULT_TRAFFIC_CLASS;
@@ -9126,7 +9126,7 @@ int i40e_vsi_open(struct i40e_vsi *vsi)
 	i40e_vsi_free_rx_resources(vsi);
 err_setup_tx:
 	i40e_vsi_free_tx_resources(vsi);
-	if (vsi == pf->vsi[pf->lan_vsi])
+	if (vsi->type == I40E_VSI_MAIN)
 		i40e_do_reset(pf, I40E_PF_RESET_FLAG, true);
 
 	return err;
@@ -12001,7 +12001,7 @@ static int i40e_vsi_alloc_q_vectors(struct i40e_vsi *vsi)
 	/* if not MSIX, give the one vector only to the LAN VSI */
 	if (test_bit(I40E_FLAG_MSIX_ENA, pf->flags))
 		num_q_vectors = vsi->num_q_vectors;
-	else if (vsi == pf->vsi[pf->lan_vsi])
+	else if (vsi->type == I40E_VSI_MAIN)
 		num_q_vectors = 1;
 	else
 		return -EINVAL;
@@ -13118,7 +13118,7 @@ static int i40e_ndo_bridge_setlink(struct net_device *dev,
 	int rem;
 
 	/* Only for PF VSI for now */
-	if (vsi->seid != pf->vsi[pf->lan_vsi]->seid)
+	if (vsi->type != I40E_VSI_MAIN)
 		return -EOPNOTSUPP;
 
 	/* Find the HW bridge for PF VSI */
@@ -13190,7 +13190,7 @@ static int i40e_ndo_bridge_getlink(struct sk_buff *skb, u32 pid, u32 seq,
 	struct i40e_veb *veb;
 
 	/* Only for PF VSI for now */
-	if (vsi->seid != pf->vsi[pf->lan_vsi]->seid)
+	if (vsi->type != I40E_VSI_MAIN)
 		return -EOPNOTSUPP;
 
 	/* Find the HW bridge for the PF VSI */
@@ -14142,8 +14142,7 @@ int i40e_vsi_release(struct i40e_vsi *vsi)
 			 vsi->seid, vsi->uplink_seid);
 		return -ENODEV;
 	}
-	if (vsi == pf->vsi[pf->lan_vsi] &&
-	    !test_bit(__I40E_DOWN, pf->state)) {
+	if (vsi->type == I40E_VSI_MAIN && !test_bit(__I40E_DOWN, pf->state)) {
 		dev_info(&pf->pdev->dev, "Can't remove PF VSI\n");
 		return -ENODEV;
 	}
@@ -14407,7 +14406,7 @@ struct i40e_vsi *i40e_vsi_setup(struct i40e_pf *pf, u8 type,
 			veb = i40e_veb_setup(pf, vsi->uplink_seid, vsi->seid,
 					     vsi->tc_config.enabled_tc);
 		if (veb) {
-			if (vsi->seid != pf->vsi[pf->lan_vsi]->seid) {
+			if (vsi->type != I40E_VSI_MAIN) {
 				dev_info(&vsi->back->pdev->dev,
 					 "New VSI creation error, uplink seid of LAN VSI expected.\n");
 				return NULL;
-- 
2.43.0

