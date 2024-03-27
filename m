Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C70588D820
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Mar 2024 08:57:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4006481EFE;
	Wed, 27 Mar 2024 07:57:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DalD1k7TYCI3; Wed, 27 Mar 2024 07:57:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3866181F3C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711526272;
	bh=743xqqMxvEa8pf291lhegMW777M4srXuD6J4SDbXQ5g=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=V9RKIH5X3rmWcYJOgrKjP+J+b+ZL1KfAJ5kQin4pP0vRXL5banXIYgh4YSM+rQcBP
	 uhFuz+WodzLA/i7ydRwB2KHsCEkz1iZfuCs7/YBoberYBBrXf1lFQJW3xym7uarAC/
	 7iF6sXkmHgTOWvvAbfdT5dVJ0DwCh3ULtY9KhKjfQolbhClYfsIdKYntJzQadhzeDU
	 xQzYliHzGDN70c50XvRXIQs5wfkDj2cyzEhVuSnmYRxVx2YZZhGM5Vf2S/STSoHkQW
	 xRlcWxggBQ0CHDAr39X5FvOKNh4eJ4hgqmSaWURqkVSal480EgmWlZJZ3BRvTfc0/a
	 efVZO6Qjjtfzw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3866181F3C;
	Wed, 27 Mar 2024 07:57:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A88E01BF42D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 07:57:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9512481F1F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 07:57:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yZ1_4mkdsFoz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Mar 2024 07:57:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9CCE181F12
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9CCE181F12
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9CCE181F12
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 07:57:48 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-207-mPdxmcAFPxyEsEoKQT00Tw-1; Wed, 27 Mar 2024 03:57:43 -0400
X-MC-Unique: mPdxmcAFPxyEsEoKQT00Tw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 58B6C185A781;
 Wed, 27 Mar 2024 07:57:43 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.224.197])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B596CC15775;
 Wed, 27 Mar 2024 07:57:41 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 27 Mar 2024 08:57:28 +0100
Message-ID: <20240327075733.8967-3-ivecera@redhat.com>
In-Reply-To: <20240327075733.8967-1-ivecera@redhat.com>
References: <20240327075733.8967-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1711526267;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=743xqqMxvEa8pf291lhegMW777M4srXuD6J4SDbXQ5g=;
 b=DRfGeoMAYrUX0dy4IzL1RDSgVxMRIYz5Z1IWOtXBP7MbUHDPT3ZHIPEYxKISSoHKlabv4O
 9OIAWYCIR8dGlkRauXHk60amIkgtMFDFhn1uJ6OWAXHw9Q89QbvqiXk//RU9dhUKgc8b0d
 UcHaWlPsaLFfWgQb6QEOoMR8qIxvQ38=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=DRfGeoMA
Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/7] i40e: Refactor argument
 of several client notification functions
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 aleksandr.loktionov@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit 0ef2d5afb12d ("i40e: KISS the client interface") simplified
the client interface so in practice it supports only one client
per i40e netdev. But we have still 2 notification functions that
uses as parameter a pointer to VSI of netdevice associated with
the client. After the mentioned commit only possible and used
VSI is the main (LAN) VSI.
So refactor these functions so they are called with PF pointer argument
and the associated VSI (LAN) is taken inside them.

Reviewed-by: Michal Schmidt <mschmidt@redhat.com>
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h        |  4 ++--
 drivers/net/ethernet/intel/i40e/i40e_client.c | 20 +++++++++----------
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 12 +++++------
 3 files changed, 17 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 5248e78f7849..0792c7324527 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -1236,8 +1236,8 @@ static inline void i40e_dbg_exit(void) {}
 int i40e_lan_add_device(struct i40e_pf *pf);
 int i40e_lan_del_device(struct i40e_pf *pf);
 void i40e_client_subtask(struct i40e_pf *pf);
-void i40e_notify_client_of_l2_param_changes(struct i40e_vsi *vsi);
-void i40e_notify_client_of_netdev_close(struct i40e_vsi *vsi, bool reset);
+void i40e_notify_client_of_l2_param_changes(struct i40e_pf *pf);
+void i40e_notify_client_of_netdev_close(struct i40e_pf *pf, bool reset);
 void i40e_notify_client_of_vf_enable(struct i40e_pf *pf, u32 num_vfs);
 void i40e_notify_client_of_vf_reset(struct i40e_pf *pf, u32 vf_id);
 void i40e_client_update_msix_info(struct i40e_pf *pf);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_client.c b/drivers/net/ethernet/intel/i40e/i40e_client.c
index b32071ee84af..93e52138826e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_client.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_client.c
@@ -101,25 +101,26 @@ i40e_notify_client_of_vf_msg(struct i40e_vsi *vsi, u32 vf_id, u8 *msg, u16 len)
 
 /**
  * i40e_notify_client_of_l2_param_changes - call the client notify callback
- * @vsi: the VSI with l2 param changes
+ * @pf: PF device pointer
  *
- * If there is a client to this VSI, call the client
+ * If there is a client, call its callback
  **/
-void i40e_notify_client_of_l2_param_changes(struct i40e_vsi *vsi)
+void i40e_notify_client_of_l2_param_changes(struct i40e_pf *pf)
 {
-	struct i40e_pf *pf = vsi->back;
 	struct i40e_client_instance *cdev = pf->cinst;
+	struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
 	struct i40e_params params;
 
 	if (!cdev || !cdev->client)
 		return;
 	if (!cdev->client->ops || !cdev->client->ops->l2_param_change) {
-		dev_dbg(&vsi->back->pdev->dev,
+		dev_dbg(&pf->pdev->dev,
 			"Cannot locate client instance l2_param_change routine\n");
 		return;
 	}
 	if (!test_bit(__I40E_CLIENT_INSTANCE_OPENED, &cdev->state)) {
-		dev_dbg(&vsi->back->pdev->dev, "Client is not open, abort l2 param change\n");
+		dev_dbg(&pf->pdev->dev,
+			"Client is not open, abort l2 param change\n");
 		return;
 	}
 	memset(&params, 0, sizeof(params));
@@ -157,20 +158,19 @@ static void i40e_client_release_qvlist(struct i40e_info *ldev)
 
 /**
  * i40e_notify_client_of_netdev_close - call the client close callback
- * @vsi: the VSI with netdev closed
+ * @pf: PF device pointer
  * @reset: true when close called due to a reset pending
  *
  * If there is a client to this netdev, call the client with close
  **/
-void i40e_notify_client_of_netdev_close(struct i40e_vsi *vsi, bool reset)
+void i40e_notify_client_of_netdev_close(struct i40e_pf *pf, bool reset)
 {
-	struct i40e_pf *pf = vsi->back;
 	struct i40e_client_instance *cdev = pf->cinst;
 
 	if (!cdev || !cdev->client)
 		return;
 	if (!cdev->client->ops || !cdev->client->ops->close) {
-		dev_dbg(&vsi->back->pdev->dev,
+		dev_dbg(&pf->pdev->dev,
 			"Cannot locate client instance close routine\n");
 		return;
 	}
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 2f1604ae78c7..7fed7fb69d4e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -11283,14 +11283,12 @@ static void i40e_service_task(struct work_struct *work)
 		i40e_fdir_reinit_subtask(pf);
 		if (test_and_clear_bit(__I40E_CLIENT_RESET, pf->state)) {
 			/* Client subtask will reopen next time through. */
-			i40e_notify_client_of_netdev_close(pf->vsi[pf->lan_vsi],
-							   true);
+			i40e_notify_client_of_netdev_close(pf, true);
 		} else {
 			i40e_client_subtask(pf);
 			if (test_and_clear_bit(__I40E_CLIENT_L2_CHANGE,
 					       pf->state))
-				i40e_notify_client_of_l2_param_changes(
-								pf->vsi[pf->lan_vsi]);
+				i40e_notify_client_of_l2_param_changes(pf);
 		}
 		i40e_sync_filters_subtask(pf);
 	} else {
@@ -16228,7 +16226,7 @@ static void i40e_remove(struct pci_dev *pdev)
 	/* Client close must be called explicitly here because the timer
 	 * has been stopped.
 	 */
-	i40e_notify_client_of_netdev_close(pf->vsi[pf->lan_vsi], false);
+	i40e_notify_client_of_netdev_close(pf, false);
 
 	i40e_fdir_teardown(pf);
 
@@ -16487,7 +16485,7 @@ static void i40e_shutdown(struct pci_dev *pdev)
 	/* Client close must be called explicitly here because the timer
 	 * has been stopped.
 	 */
-	i40e_notify_client_of_netdev_close(pf->vsi[pf->lan_vsi], false);
+	i40e_notify_client_of_netdev_close(pf, false);
 
 	if (test_bit(I40E_HW_CAP_WOL_MC_MAGIC_PKT_WAKE, pf->hw.caps) &&
 	    pf->wol_en)
@@ -16541,7 +16539,7 @@ static int i40e_suspend(struct device *dev)
 	/* Client close must be called explicitly here because the timer
 	 * has been stopped.
 	 */
-	i40e_notify_client_of_netdev_close(pf->vsi[pf->lan_vsi], false);
+	i40e_notify_client_of_netdev_close(pf, false);
 
 	if (test_bit(I40E_HW_CAP_WOL_MC_MAGIC_PKT_WAKE, pf->hw.caps) &&
 	    pf->wol_en)
-- 
2.43.0

