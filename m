Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6AF8B3E96
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Apr 2024 19:50:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1413183B15;
	Fri, 26 Apr 2024 17:50:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZMPnK_S9nQ83; Fri, 26 Apr 2024 17:50:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4481683AA3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714153819;
	bh=XqnHsa7dT+bVkR20M5HjiPjSCumypzBrb6u9WrAmkKo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zAK9K6IsG6PjPhbYcbH2E/VbrVB49KPf8VlEO/LMtkaWZwhPD5VxegqPx739UiOLZ
	 nXoPWLUdHY+TUxt8g/5P4Xy3o/bXeRFfft6I3pfJzzcS+Gp8qx7Y8HHQ8Afc7rhBkK
	 qwmfFM0TCXUiMGlSDPzNDBa3K7yt3XzdoXZA2HTlbqXBe8g8Kgv+fKbYwICbMOc4I8
	 YbPtLDGw6h3u21CfPyPS/biPkJJwO8dCZ7OEt5xGD2Rv9bz25wKdnEFrvHo1uCVTkL
	 hFWO3XLkQULty/N51LrqwIAVGsICbj/fWGnjm2P+YYn8F6+AMVi7M0Ma6nLXkkSHTP
	 D0cyQ2HR1pf8A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4481683AA3;
	Fri, 26 Apr 2024 17:50:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A07CB1BF3BB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 17:50:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 97A2383AD1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 17:50:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zoashn7Ed4BF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Apr 2024 17:50:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 68F9583AA8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68F9583AA8
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 68F9583AA8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 17:50:12 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-314-vEBWDUEfPieB1xGAJeV_EQ-1; Fri, 26 Apr 2024 13:50:07 -0400
X-MC-Unique: vEBWDUEfPieB1xGAJeV_EQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B34CF810BDC;
 Fri, 26 Apr 2024 17:50:06 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.225.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AFC40C13FA3;
 Fri, 26 Apr 2024 17:50:04 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Fri, 26 Apr 2024 19:49:43 +0200
Message-ID: <20240426174953.208591-5-ivecera@redhat.com>
In-Reply-To: <20240426174953.208591-1-ivecera@redhat.com>
References: <20240426174953.208591-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1714153811;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XqnHsa7dT+bVkR20M5HjiPjSCumypzBrb6u9WrAmkKo=;
 b=EsbjJRgzHr0O6/BSULmtywIOgdxJ1qiHd+0Xx/Z5yMedO40C+aTESmV9k9nfiT1EAn2NRr
 mNk0Ui6u3wh6UtK4Npb6ePZ8e/Z5H7t5XHPggjk96HNofduXstk4c99QSlfnDXsQ/0N21/
 g8hefyXSr85pXX8SVUozMi1dTJ3sXoM=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=EsbjJRgz
Subject: [Intel-wired-lan] [PATCH net-next v3 4/7] i40e: Add helper to
 access main VSI
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
Cc: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Richard Cochran <richardcochran@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add simple helper i40e_pf_get_main_vsi(pf) to access main VSI
that replaces pattern 'pf->vsi[pf->lan_vsi]'

Reviewed-by: Michal Schmidt <mschmidt@redhat.com>
Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h        |  11 ++
 drivers/net/ethernet/intel/i40e/i40e_client.c |  10 +-
 drivers/net/ethernet/intel/i40e/i40e_ddp.c    |   3 +-
 .../net/ethernet/intel/i40e/i40e_debugfs.c    |  32 +++---
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |   8 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 107 ++++++++++--------
 drivers/net/ethernet/intel/i40e/i40e_ptp.c    |   6 +-
 drivers/net/ethernet/intel/i40e/i40e_txrx.c   |   8 +-
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  14 ++-
 9 files changed, 116 insertions(+), 83 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 0792c7324527..fb0b913692e1 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -1372,6 +1372,17 @@ i40e_pf_get_vsi_by_seid(struct i40e_pf *pf, u16 seid)
 	return NULL;
 }
 
+/**
+ * i40e_pf_get_main_vsi - get pointer to main VSI
+ * @pf: pointer to a PF
+ *
+ * Return pointer to main VSI or NULL if it does not exist
+ **/
+static inline struct i40e_vsi *i40e_pf_get_main_vsi(struct i40e_pf *pf)
+{
+	return (pf->lan_vsi != I40E_NO_VSI) ? pf->vsi[pf->lan_vsi] : NULL;
+}
+
 /**
  * i40e_pf_get_veb_by_seid - find VEB by SEID
  * @pf: pointer to a PF
diff --git a/drivers/net/ethernet/intel/i40e/i40e_client.c b/drivers/net/ethernet/intel/i40e/i40e_client.c
index 93e52138826e..59263551c383 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_client.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_client.c
@@ -107,8 +107,8 @@ i40e_notify_client_of_vf_msg(struct i40e_vsi *vsi, u32 vf_id, u8 *msg, u16 len)
  **/
 void i40e_notify_client_of_l2_param_changes(struct i40e_pf *pf)
 {
+	struct i40e_vsi *vsi = i40e_pf_get_main_vsi(pf);
 	struct i40e_client_instance *cdev = pf->cinst;
-	struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
 	struct i40e_params params;
 
 	if (!cdev || !cdev->client)
@@ -333,9 +333,9 @@ static int i40e_register_auxiliary_dev(struct i40e_info *ldev, const char *name)
  **/
 static void i40e_client_add_instance(struct i40e_pf *pf)
 {
+	struct i40e_vsi *vsi = i40e_pf_get_main_vsi(pf);
 	struct i40e_client_instance *cdev = NULL;
 	struct netdev_hw_addr *mac = NULL;
-	struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
 
 	cdev = kzalloc(sizeof(*cdev), GFP_KERNEL);
 	if (!cdev)
@@ -399,9 +399,9 @@ void i40e_client_del_instance(struct i40e_pf *pf)
  **/
 void i40e_client_subtask(struct i40e_pf *pf)
 {
-	struct i40e_client *client;
+	struct i40e_vsi *vsi = i40e_pf_get_main_vsi(pf);
 	struct i40e_client_instance *cdev;
-	struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
+	struct i40e_client *client;
 	int ret = 0;
 
 	if (!test_and_clear_bit(__I40E_CLIENT_SERVICE_REQUESTED, pf->state))
@@ -665,8 +665,8 @@ static int i40e_client_update_vsi_ctxt(struct i40e_info *ldev,
 				       bool is_vf, u32 vf_id,
 				       u32 flag, u32 valid_flag)
 {
+	struct i40e_vsi *vsi = i40e_pf_get_main_vsi(ldev->pf);
 	struct i40e_pf *pf = ldev->pf;
-	struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
 	struct i40e_vsi_context ctxt;
 	bool update = true;
 	int err;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ddp.c b/drivers/net/ethernet/intel/i40e/i40e_ddp.c
index 2f53f0f53bc3..daa9f2c42f70 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ddp.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ddp.c
@@ -407,8 +407,9 @@ static int i40e_ddp_load(struct net_device *netdev, const u8 *data, size_t size,
  **/
 static int i40e_ddp_restore(struct i40e_pf *pf)
 {
+	struct i40e_vsi *vsi = i40e_pf_get_main_vsi(pf);
+	struct net_device *netdev = vsi->netdev;
 	struct i40e_ddp_old_profile_list *entry;
-	struct net_device *netdev = pf->vsi[pf->lan_vsi]->netdev;
 	int status = 0;
 
 	if (!list_empty(&pf->ddp_old_prof)) {
diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
index 6147c5f128e8..09db46de2994 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
@@ -53,6 +53,7 @@ static ssize_t i40e_dbg_command_read(struct file *filp, char __user *buffer,
 				     size_t count, loff_t *ppos)
 {
 	struct i40e_pf *pf = filp->private_data;
+	struct i40e_vsi *main_vsi;
 	int bytes_not_copied;
 	int buf_size = 256;
 	char *buf;
@@ -68,8 +69,8 @@ static ssize_t i40e_dbg_command_read(struct file *filp, char __user *buffer,
 	if (!buf)
 		return -ENOSPC;
 
-	len = snprintf(buf, buf_size, "%s: %s\n",
-		       pf->vsi[pf->lan_vsi]->netdev->name,
+	main_vsi = i40e_pf_get_main_vsi(pf);
+	len = snprintf(buf, buf_size, "%s: %s\n", main_vsi->netdev->name,
 		       i40e_dbg_command_buf);
 
 	bytes_not_copied = copy_to_user(buffer, buf, len);
@@ -786,7 +787,8 @@ static ssize_t i40e_dbg_command_write(struct file *filp,
 		cnt = sscanf(&cmd_buf[7], "%i", &vsi_seid);
 		if (cnt == 0) {
 			/* default to PF VSI */
-			vsi_seid = pf->vsi[pf->lan_vsi]->seid;
+			vsi = i40e_pf_get_main_vsi(pf);
+			vsi_seid = vsi->seid;
 		} else if (vsi_seid < 0) {
 			dev_info(&pf->pdev->dev, "add VSI %d: bad vsi seid\n",
 				 vsi_seid);
@@ -1030,7 +1032,7 @@ static ssize_t i40e_dbg_command_write(struct file *filp,
 				goto command_write_done;
 			}
 
-			vsi = pf->vsi[pf->lan_vsi];
+			vsi = i40e_pf_get_main_vsi(pf);
 			switch_id =
 				le16_to_cpu(vsi->info.switch_id) &
 					    I40E_AQ_VSI_SW_ID_MASK;
@@ -1380,6 +1382,9 @@ static ssize_t i40e_dbg_command_write(struct file *filp,
 		dev_info(&pf->pdev->dev, "FD current total filter count for this interface: %d\n",
 			 i40e_get_current_fd_count(pf));
 	} else if (strncmp(cmd_buf, "lldp", 4) == 0) {
+		/* Get main VSI */
+		struct i40e_vsi *main_vsi = i40e_pf_get_main_vsi(pf);
+
 		if (strncmp(&cmd_buf[5], "stop", 4) == 0) {
 			int ret;
 
@@ -1391,10 +1396,9 @@ static ssize_t i40e_dbg_command_write(struct file *filp,
 				goto command_write_done;
 			}
 			ret = i40e_aq_add_rem_control_packet_filter(&pf->hw,
-						pf->hw.mac.addr,
-						ETH_P_LLDP, 0,
-						pf->vsi[pf->lan_vsi]->seid,
-						0, true, NULL, NULL);
+						pf->hw.mac.addr, ETH_P_LLDP, 0,
+						main_vsi->seid, 0, true, NULL,
+						NULL);
 			if (ret) {
 				dev_info(&pf->pdev->dev,
 					"%s: Add Control Packet Filter AQ command failed =0x%x\n",
@@ -1409,10 +1413,9 @@ static ssize_t i40e_dbg_command_write(struct file *filp,
 			int ret;
 
 			ret = i40e_aq_add_rem_control_packet_filter(&pf->hw,
-						pf->hw.mac.addr,
-						ETH_P_LLDP, 0,
-						pf->vsi[pf->lan_vsi]->seid,
-						0, false, NULL, NULL);
+						pf->hw.mac.addr, ETH_P_LLDP, 0,
+						main_vsi->seid, 0, false, NULL,
+						NULL);
 			if (ret) {
 				dev_info(&pf->pdev->dev,
 					"%s: Remove Control Packet Filter AQ command failed =0x%x\n",
@@ -1639,6 +1642,7 @@ static ssize_t i40e_dbg_netdev_ops_read(struct file *filp, char __user *buffer,
 					size_t count, loff_t *ppos)
 {
 	struct i40e_pf *pf = filp->private_data;
+	struct i40e_vsi *main_vsi;
 	int bytes_not_copied;
 	int buf_size = 256;
 	char *buf;
@@ -1654,8 +1658,8 @@ static ssize_t i40e_dbg_netdev_ops_read(struct file *filp, char __user *buffer,
 	if (!buf)
 		return -ENOSPC;
 
-	len = snprintf(buf, buf_size, "%s: %s\n",
-		       pf->vsi[pf->lan_vsi]->netdev->name,
+	main_vsi = i40e_pf_get_main_vsi(pf);
+	len = snprintf(buf, buf_size, "%s: %s\n", main_vsi->netdev->name,
 		       i40e_dbg_netdev_ops_buf);
 
 	bytes_not_copied = copy_to_user(buffer, buf, len);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 42e7e6cdaa6d..0905c1fb2337 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -2029,7 +2029,7 @@ static void i40e_get_ringparam(struct net_device *netdev,
 {
 	struct i40e_netdev_priv *np = netdev_priv(netdev);
 	struct i40e_pf *pf = np->vsi->back;
-	struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
+	struct i40e_vsi *vsi = i40e_pf_get_main_vsi(pf);
 
 	ring->rx_max_pending = i40e_get_max_num_descriptors(pf);
 	ring->tx_max_pending = i40e_get_max_num_descriptors(pf);
@@ -3370,6 +3370,7 @@ static int i40e_get_ethtool_fdir_entry(struct i40e_pf *pf,
 	struct i40e_rx_flow_userdef userdef = {0};
 	struct i40e_fdir_filter *rule = NULL;
 	struct hlist_node *node2;
+	struct i40e_vsi *vsi;
 	u64 input_set;
 	u16 index;
 
@@ -3493,9 +3494,8 @@ static int i40e_get_ethtool_fdir_entry(struct i40e_pf *pf,
 		fsp->flow_type |= FLOW_EXT;
 	}
 
-	if (rule->dest_vsi != pf->vsi[pf->lan_vsi]->id) {
-		struct i40e_vsi *vsi;
-
+	vsi = i40e_pf_get_main_vsi(pf);
+	if (rule->dest_vsi != vsi->id) {
 		vsi = i40e_find_vsi_from_id(pf, rule->dest_vsi);
 		if (vsi && vsi->type == I40E_VSI_SRIOV) {
 			/* VFs are zero-indexed by the driver, but ethtool
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 4291001d0053..e45a556b19bb 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -2476,7 +2476,7 @@ i40e_aqc_broadcast_filter(struct i40e_vsi *vsi, const char *vsi_name,
  **/
 static int i40e_set_promiscuous(struct i40e_pf *pf, bool promisc)
 {
-	struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
+	struct i40e_vsi *vsi = i40e_pf_get_main_vsi(pf);
 	struct i40e_hw *hw = &pf->hw;
 	int aq_ret;
 
@@ -4323,7 +4323,7 @@ static irqreturn_t i40e_intr(int irq, void *data)
 
 	/* only q0 is used in MSI/Legacy mode, and none are used in MSIX */
 	if (icr0 & I40E_PFINT_ICR0_QUEUE_0_MASK) {
-		struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
+		struct i40e_vsi *vsi = i40e_pf_get_main_vsi(pf);
 		struct i40e_q_vector *q_vector = vsi->q_vectors[0];
 
 		/* We do not have a way to disarm Queue causes while leaving
@@ -5473,7 +5473,7 @@ static u8 i40e_dcb_get_enabled_tc(struct i40e_dcbx_config *dcbcfg)
  **/
 static u8 i40e_mqprio_get_enabled_tc(struct i40e_pf *pf)
 {
-	struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
+	struct i40e_vsi *vsi = i40e_pf_get_main_vsi(pf);
 	u8 num_tc = vsi->mqprio_qopt.qopt.num_tc;
 	u8 enabled_tc = 1, i;
 
@@ -5490,13 +5490,14 @@ static u8 i40e_mqprio_get_enabled_tc(struct i40e_pf *pf)
  **/
 static u8 i40e_pf_get_num_tc(struct i40e_pf *pf)
 {
-	struct i40e_hw *hw = &pf->hw;
 	u8 i, enabled_tc = 1;
 	u8 num_tc = 0;
-	struct i40e_dcbx_config *dcbcfg = &hw->local_dcbx_config;
 
-	if (i40e_is_tc_mqprio_enabled(pf))
-		return pf->vsi[pf->lan_vsi]->mqprio_qopt.qopt.num_tc;
+	if (i40e_is_tc_mqprio_enabled(pf)) {
+		struct i40e_vsi *vsi = i40e_pf_get_main_vsi(pf);
+
+		return vsi->mqprio_qopt.qopt.num_tc;
+	}
 
 	/* If neither MQPRIO nor DCB is enabled, then always use single TC */
 	if (!test_bit(I40E_FLAG_DCB_ENA, pf->flags))
@@ -5504,7 +5505,7 @@ static u8 i40e_pf_get_num_tc(struct i40e_pf *pf)
 
 	/* SFP mode will be enabled for all TCs on port */
 	if (!test_bit(I40E_FLAG_MFP_ENA, pf->flags))
-		return i40e_dcb_get_num_tc(dcbcfg);
+		return i40e_dcb_get_num_tc(&pf->hw.local_dcbx_config);
 
 	/* MFP mode return count of enabled TCs for this PF */
 	if (pf->hw.func_caps.iscsi)
@@ -6478,6 +6479,7 @@ static inline int i40e_setup_hw_channel(struct i40e_pf *pf,
 static bool i40e_setup_channel(struct i40e_pf *pf, struct i40e_vsi *vsi,
 			       struct i40e_channel *ch)
 {
+	struct i40e_vsi *main_vsi;
 	u8 vsi_type;
 	u16 seid;
 	int ret;
@@ -6491,7 +6493,8 @@ static bool i40e_setup_channel(struct i40e_pf *pf, struct i40e_vsi *vsi,
 	}
 
 	/* underlying switching element */
-	seid = pf->vsi[pf->lan_vsi]->uplink_seid;
+	main_vsi = i40e_pf_get_main_vsi(pf);
+	seid = main_vsi->uplink_seid;
 
 	/* create channel (VSI), configure TX rings */
 	ret = i40e_setup_hw_channel(pf, vsi, ch, seid, vsi_type);
@@ -7048,7 +7051,9 @@ int i40e_hw_dcb_config(struct i40e_pf *pf, struct i40e_dcbx_config *new_cfg)
 
 	/* Configure Rx Packet Buffers in HW */
 	for (i = 0; i < I40E_MAX_TRAFFIC_CLASS; i++) {
-		mfs_tc[i] = pf->vsi[pf->lan_vsi]->netdev->mtu;
+		struct i40e_vsi *main_vsi = i40e_pf_get_main_vsi(pf);
+
+		mfs_tc[i] = main_vsi->netdev->mtu;
 		mfs_tc[i] += I40E_PACKET_HDR_PAD;
 	}
 
@@ -9805,7 +9810,7 @@ static void i40e_fdir_flush_and_replay(struct i40e_pf *pf)
 		dev_warn(&pf->pdev->dev, "FD table did not flush, needs more time\n");
 	} else {
 		/* replay sideband filters */
-		i40e_fdir_filter_restore(pf->vsi[pf->lan_vsi]);
+		i40e_fdir_filter_restore(i40e_pf_get_main_vsi(pf));
 		if (!disable_atr && !pf->fd_tcp4_filter_cnt)
 			clear_bit(__I40E_FD_ATR_AUTO_DISABLED, pf->state);
 		clear_bit(__I40E_FD_FLUSH_REQUESTED, pf->state);
@@ -9903,7 +9908,7 @@ static void i40e_veb_link_event(struct i40e_veb *veb, bool link_up)
  **/
 static void i40e_link_event(struct i40e_pf *pf)
 {
-	struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
+	struct i40e_vsi *vsi = i40e_pf_get_main_vsi(pf);
 	u8 new_link_speed, old_link_speed;
 	bool new_link, old_link;
 	int status;
@@ -10274,7 +10279,7 @@ static void i40e_verify_eeprom(struct i40e_pf *pf)
  **/
 static void i40e_enable_pf_switch_lb(struct i40e_pf *pf)
 {
-	struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
+	struct i40e_vsi *vsi = i40e_pf_get_main_vsi(pf);
 	struct i40e_vsi_context ctxt;
 	int ret;
 
@@ -10310,7 +10315,7 @@ static void i40e_enable_pf_switch_lb(struct i40e_pf *pf)
  **/
 static void i40e_disable_pf_switch_lb(struct i40e_pf *pf)
 {
-	struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
+	struct i40e_vsi *vsi = i40e_pf_get_main_vsi(pf);
 	struct i40e_vsi_context ctxt;
 	int ret;
 
@@ -10386,7 +10391,7 @@ static int i40e_reconstitute_veb(struct i40e_veb *veb)
 
 	if (veb->uplink_seid == pf->mac_seid) {
 		/* Check that the LAN VSI has VEB owning flag set */
-		ctl_vsi = pf->vsi[pf->lan_vsi];
+		ctl_vsi = i40e_pf_get_main_vsi(pf);
 
 		if (WARN_ON(ctl_vsi->veb_idx != veb->idx ||
 			    !(ctl_vsi->flags & I40E_VSI_FLAG_VEB_OWNER))) {
@@ -10529,7 +10534,7 @@ static int i40e_vsi_clear(struct i40e_vsi *vsi);
  **/
 static void i40e_fdir_sb_setup(struct i40e_pf *pf)
 {
-	struct i40e_vsi *vsi;
+	struct i40e_vsi *main_vsi, *vsi;
 
 	/* quick workaround for an NVM issue that leaves a critical register
 	 * uninitialized
@@ -10554,8 +10559,8 @@ static void i40e_fdir_sb_setup(struct i40e_pf *pf)
 
 	/* create a new VSI if none exists */
 	if (!vsi) {
-		vsi = i40e_vsi_setup(pf, I40E_VSI_FDIR,
-				     pf->vsi[pf->lan_vsi]->seid, 0);
+		main_vsi = i40e_pf_get_main_vsi(pf);
+		vsi = i40e_vsi_setup(pf, I40E_VSI_FDIR, main_vsi->seid, 0);
 		if (!vsi) {
 			dev_info(&pf->pdev->dev, "Couldn't create FDir VSI\n");
 			clear_bit(I40E_FLAG_FD_SB_ENA, pf->flags);
@@ -10834,7 +10839,7 @@ static int i40e_reset(struct i40e_pf *pf)
 static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 {
 	const bool is_recovery_mode_reported = i40e_check_recovery_mode(pf);
-	struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
+	struct i40e_vsi *vsi = i40e_pf_get_main_vsi(pf);
 	struct i40e_hw *hw = &pf->hw;
 	struct i40e_veb *veb;
 	int ret;
@@ -10843,7 +10848,7 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 
 	if (test_bit(__I40E_EMP_RESET_INTR_RECEIVED, pf->state) &&
 	    is_recovery_mode_reported)
-		i40e_set_ethtool_ops(pf->vsi[pf->lan_vsi]->netdev);
+		i40e_set_ethtool_ops(vsi->netdev);
 
 	if (test_bit(__I40E_DOWN, pf->state) &&
 	    !test_bit(__I40E_RECOVERY_MODE, pf->state))
@@ -12395,7 +12400,7 @@ void i40e_fill_rss_lut(struct i40e_pf *pf, u8 *lut,
  **/
 static int i40e_pf_config_rss(struct i40e_pf *pf)
 {
-	struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
+	struct i40e_vsi *vsi = i40e_pf_get_main_vsi(pf);
 	u8 seed[I40E_HKEY_ARRAY_SIZE];
 	u8 *lut;
 	struct i40e_hw *hw = &pf->hw;
@@ -12467,7 +12472,7 @@ static int i40e_pf_config_rss(struct i40e_pf *pf)
  **/
 int i40e_reconfig_rss_queues(struct i40e_pf *pf, int queue_count)
 {
-	struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
+	struct i40e_vsi *vsi = i40e_pf_get_main_vsi(pf);
 	int new_rss_size;
 
 	if (!test_bit(I40E_FLAG_RSS_ENA, pf->flags))
@@ -13756,9 +13761,10 @@ static int i40e_config_netdev(struct i40e_vsi *vsi)
 		 * the end, which is 4 bytes long, so force truncation of the
 		 * original name by IFNAMSIZ - 4
 		 */
-		snprintf(netdev->name, IFNAMSIZ, "%.*sv%%d",
-			 IFNAMSIZ - 4,
-			 pf->vsi[pf->lan_vsi]->netdev->name);
+		struct i40e_vsi *main_vsi = i40e_pf_get_main_vsi(pf);
+
+		snprintf(netdev->name, IFNAMSIZ, "%.*sv%%d", IFNAMSIZ - 4,
+			 main_vsi->netdev->name);
 		eth_random_addr(mac_addr);
 
 		spin_lock_bh(&vsi->mac_filter_hash_lock);
@@ -14270,6 +14276,7 @@ static int i40e_vsi_setup_vectors(struct i40e_vsi *vsi)
  **/
 static struct i40e_vsi *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
 {
+	struct i40e_vsi *main_vsi;
 	u16 alloc_queue_pairs;
 	struct i40e_pf *pf;
 	u8 enabled_tc;
@@ -14304,10 +14311,12 @@ static struct i40e_vsi *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
 	/* Update the FW view of the VSI. Force a reset of TC and queue
 	 * layout configurations.
 	 */
-	enabled_tc = pf->vsi[pf->lan_vsi]->tc_config.enabled_tc;
-	pf->vsi[pf->lan_vsi]->tc_config.enabled_tc = 0;
-	pf->vsi[pf->lan_vsi]->seid = pf->main_vsi_seid;
-	i40e_vsi_config_tc(pf->vsi[pf->lan_vsi], enabled_tc);
+	main_vsi = i40e_pf_get_main_vsi(pf);
+	enabled_tc = main_vsi->tc_config.enabled_tc;
+	main_vsi->tc_config.enabled_tc = 0;
+	main_vsi->seid = pf->main_vsi_seid;
+	i40e_vsi_config_tc(main_vsi, enabled_tc);
+
 	if (vsi->type == I40E_VSI_MAIN)
 		i40e_rm_default_mac_filter(vsi, pf->hw.mac.perm_addr);
 
@@ -14990,6 +14999,7 @@ int i40e_fetch_switch_configuration(struct i40e_pf *pf, bool printconfig)
  **/
 static int i40e_setup_pf_switch(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 {
+	struct i40e_vsi *main_vsi;
 	u16 flags = 0;
 	int ret;
 
@@ -15034,8 +15044,8 @@ static int i40e_setup_pf_switch(struct i40e_pf *pf, bool reinit, bool lock_acqui
 	}
 
 	/* first time setup */
-	if (pf->lan_vsi == I40E_NO_VSI || reinit) {
-		struct i40e_vsi *vsi = NULL;
+	main_vsi = i40e_pf_get_main_vsi(pf);
+	if (!main_vsi || reinit) {
 		u16 uplink_seid;
 
 		/* Set up the PF VSI associated with the PF's main VSI
@@ -15045,11 +15055,12 @@ static int i40e_setup_pf_switch(struct i40e_pf *pf, bool reinit, bool lock_acqui
 			uplink_seid = pf->veb[pf->lan_veb]->seid;
 		else
 			uplink_seid = pf->mac_seid;
-		if (pf->lan_vsi == I40E_NO_VSI)
-			vsi = i40e_vsi_setup(pf, I40E_VSI_MAIN, uplink_seid, 0);
+		if (!main_vsi)
+			main_vsi = i40e_vsi_setup(pf, I40E_VSI_MAIN,
+						  uplink_seid, 0);
 		else if (reinit)
-			vsi = i40e_vsi_reinit_setup(pf->vsi[pf->lan_vsi]);
-		if (!vsi) {
+			main_vsi = i40e_vsi_reinit_setup(main_vsi);
+		if (!main_vsi) {
 			dev_info(&pf->pdev->dev, "setup of MAIN VSI failed\n");
 			i40e_cloud_filter_exit(pf);
 			i40e_fdir_teardown(pf);
@@ -15057,13 +15068,13 @@ static int i40e_setup_pf_switch(struct i40e_pf *pf, bool reinit, bool lock_acqui
 		}
 	} else {
 		/* force a reset of TC and queue layout configurations */
-		u8 enabled_tc = pf->vsi[pf->lan_vsi]->tc_config.enabled_tc;
+		u8 enabled_tc = main_vsi->tc_config.enabled_tc;
 
-		pf->vsi[pf->lan_vsi]->tc_config.enabled_tc = 0;
-		pf->vsi[pf->lan_vsi]->seid = pf->main_vsi_seid;
-		i40e_vsi_config_tc(pf->vsi[pf->lan_vsi], enabled_tc);
+		main_vsi->tc_config.enabled_tc = 0;
+		main_vsi->seid = pf->main_vsi_seid;
+		i40e_vsi_config_tc(main_vsi, enabled_tc);
 	}
-	i40e_vlan_stripping_disable(pf->vsi[pf->lan_vsi]);
+	i40e_vlan_stripping_disable(main_vsi);
 
 	i40e_fdir_sb_setup(pf);
 
@@ -15090,7 +15101,7 @@ static int i40e_setup_pf_switch(struct i40e_pf *pf, bool reinit, bool lock_acqui
 		rtnl_lock();
 
 	/* repopulate tunnel port filters */
-	udp_tunnel_nic_reset_ntf(pf->vsi[pf->lan_vsi]->netdev);
+	udp_tunnel_nic_reset_ntf(main_vsi->netdev);
 
 	if (!lock_acquired)
 		rtnl_unlock();
@@ -15234,6 +15245,7 @@ static int i40e_setup_pf_filter_control(struct i40e_pf *pf)
 #define REMAIN(__x) (INFO_STRING_LEN - (__x))
 static void i40e_print_features(struct i40e_pf *pf)
 {
+	struct i40e_vsi *main_vsi = i40e_pf_get_main_vsi(pf);
 	struct i40e_hw *hw = &pf->hw;
 	char *buf;
 	int i;
@@ -15247,8 +15259,7 @@ static void i40e_print_features(struct i40e_pf *pf)
 	i += scnprintf(&buf[i], REMAIN(i), " VFs: %d", pf->num_req_vfs);
 #endif
 	i += scnprintf(&buf[i], REMAIN(i), " VSIs: %d QP: %d",
-		      pf->hw.func_caps.num_vsis,
-		      pf->vsi[pf->lan_vsi]->num_queue_pairs);
+		       pf->hw.func_caps.num_vsis, main_vsi->num_queue_pairs);
 	if (test_bit(I40E_FLAG_RSS_ENA, pf->flags))
 		i += scnprintf(&buf[i], REMAIN(i), " RSS");
 	if (test_bit(I40E_FLAG_FD_ATR_ENA, pf->flags))
@@ -15912,7 +15923,9 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		dev_info(&pdev->dev, "setup_pf_switch failed: %d\n", err);
 		goto err_vsis;
 	}
-	INIT_LIST_HEAD(&pf->vsi[pf->lan_vsi]->ch_list);
+
+	vsi = i40e_pf_get_main_vsi(pf);
+	INIT_LIST_HEAD(&vsi->ch_list);
 
 	/* if FDIR VSI was set up, start it now */
 	vsi = i40e_find_vsi_by_type(pf, I40E_VSI_FDIR);
@@ -16414,15 +16427,15 @@ static void i40e_pci_error_resume(struct pci_dev *pdev)
  **/
 static void i40e_enable_mc_magic_wake(struct i40e_pf *pf)
 {
+	struct i40e_vsi *main_vsi = i40e_pf_get_main_vsi(pf);
 	struct i40e_hw *hw = &pf->hw;
 	u8 mac_addr[6];
 	u16 flags = 0;
 	int ret;
 
 	/* Get current MAC address in case it's an LAA */
-	if (pf->vsi[pf->lan_vsi] && pf->vsi[pf->lan_vsi]->netdev) {
-		ether_addr_copy(mac_addr,
-				pf->vsi[pf->lan_vsi]->netdev->dev_addr);
+	if (main_vsi && main_vsi->netdev) {
+		ether_addr_copy(mac_addr, main_vsi->netdev->dev_addr);
 	} else {
 		dev_err(&pf->pdev->dev,
 			"Failed to retrieve MAC address; using default\n");
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
index e7ebcb09f23c..b72a4b5d76b9 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
@@ -1472,7 +1472,8 @@ void i40e_ptp_restore_hw_time(struct i40e_pf *pf)
  **/
 void i40e_ptp_init(struct i40e_pf *pf)
 {
-	struct net_device *netdev = pf->vsi[pf->lan_vsi]->netdev;
+	struct i40e_vsi *vsi = i40e_pf_get_main_vsi(pf);
+	struct net_device *netdev = vsi->netdev;
 	struct i40e_hw *hw = &pf->hw;
 	u32 pf_id;
 	long err;
@@ -1536,6 +1537,7 @@ void i40e_ptp_init(struct i40e_pf *pf)
  **/
 void i40e_ptp_stop(struct i40e_pf *pf)
 {
+	struct i40e_vsi *main_vsi = i40e_pf_get_main_vsi(pf);
 	struct i40e_hw *hw = &pf->hw;
 	u32 regval;
 
@@ -1555,7 +1557,7 @@ void i40e_ptp_stop(struct i40e_pf *pf)
 		ptp_clock_unregister(pf->ptp_clock);
 		pf->ptp_clock = NULL;
 		dev_info(&pf->pdev->dev, "%s: removed PHC on %s\n", __func__,
-			 pf->vsi[pf->lan_vsi]->netdev->name);
+			 main_vsi->netdev->name);
 	}
 
 	if (i40e_is_ptp_pin_dev(&pf->hw)) {
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index fa08b0297925..c006f716a3bd 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -24,7 +24,7 @@ static void i40e_fdir(struct i40e_ring *tx_ring,
 {
 	struct i40e_filter_program_desc *fdir_desc;
 	struct i40e_pf *pf = tx_ring->vsi->back;
-	u32 flex_ptype, dtype_cmd;
+	u32 flex_ptype, dtype_cmd, vsi_id;
 	u16 i;
 
 	/* grab the next descriptor */
@@ -42,8 +42,8 @@ static void i40e_fdir(struct i40e_ring *tx_ring,
 	flex_ptype |= FIELD_PREP(I40E_TXD_FLTR_QW0_PCTYPE_MASK, fdata->pctype);
 
 	/* Use LAN VSI Id if not programmed by user */
-	flex_ptype |= FIELD_PREP(I40E_TXD_FLTR_QW0_DEST_VSI_MASK,
-				 fdata->dest_vsi ? : pf->vsi[pf->lan_vsi]->id);
+	vsi_id = fdata->dest_vsi ? : i40e_pf_get_main_vsi(pf)->id;
+	flex_ptype |= FIELD_PREP(I40E_TXD_FLTR_QW0_DEST_VSI_MASK, vsi_id);
 
 	dtype_cmd = I40E_TX_DESC_DTYPE_FILTER_PROG;
 
@@ -869,7 +869,7 @@ u32 i40e_get_tx_pending(struct i40e_ring *ring, bool in_sw)
  **/
 void i40e_detect_recover_hung(struct i40e_pf *pf)
 {
-	struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
+	struct i40e_vsi *vsi = i40e_pf_get_main_vsi(pf);
 	struct i40e_ring *tx_ring = NULL;
 	struct net_device *netdev;
 	unsigned int i;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 232b65b9c8ea..662622f01e31 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -795,13 +795,13 @@ static int i40e_config_vsi_rx_queue(struct i40e_vf *vf, u16 vsi_id,
 static int i40e_alloc_vsi_res(struct i40e_vf *vf, u8 idx)
 {
 	struct i40e_mac_filter *f = NULL;
+	struct i40e_vsi *main_vsi, *vsi;
 	struct i40e_pf *pf = vf->pf;
-	struct i40e_vsi *vsi;
 	u64 max_tx_rate = 0;
 	int ret = 0;
 
-	vsi = i40e_vsi_setup(pf, I40E_VSI_SRIOV, pf->vsi[pf->lan_vsi]->seid,
-			     vf->vf_id);
+	main_vsi = i40e_pf_get_main_vsi(pf);
+	vsi = i40e_vsi_setup(pf, I40E_VSI_SRIOV, main_vsi->seid, vf->vf_id);
 
 	if (!vsi) {
 		dev_err(&pf->pdev->dev,
@@ -3322,8 +3322,9 @@ static int i40e_vc_remove_vlan_msg(struct i40e_vf *vf, u8 *msg)
 static int i40e_vc_rdma_msg(struct i40e_vf *vf, u8 *msg, u16 msglen)
 {
 	struct i40e_pf *pf = vf->pf;
-	int abs_vf_id = vf->vf_id + pf->hw.func_caps.vf_base_id;
+	struct i40e_vsi *main_vsi;
 	int aq_ret = 0;
+	int abs_vf_id;
 
 	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states) ||
 	    !test_bit(I40E_VF_STATE_RDMAENA, &vf->vf_states)) {
@@ -3331,8 +3332,9 @@ static int i40e_vc_rdma_msg(struct i40e_vf *vf, u8 *msg, u16 msglen)
 		goto error_param;
 	}
 
-	i40e_notify_client_of_vf_msg(pf->vsi[pf->lan_vsi], abs_vf_id,
-				     msg, msglen);
+	main_vsi = i40e_pf_get_main_vsi(pf);
+	abs_vf_id = vf->vf_id + pf->hw.func_caps.vf_base_id;
+	i40e_notify_client_of_vf_msg(main_vsi, abs_vf_id, msg, msglen);
 
 error_param:
 	/* send the response to the VF */
-- 
2.43.2

