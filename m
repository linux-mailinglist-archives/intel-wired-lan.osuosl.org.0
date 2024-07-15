Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 70691932EA9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jul 2024 18:51:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 36B7C81164;
	Tue, 16 Jul 2024 16:51:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MGYe6KRbCIpD; Tue, 16 Jul 2024 16:51:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 28F2481176
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721148706;
	bh=9FyOTMQEyctKcX6PD7xEEfPVD/zlnl5HQmXYTfM+6jY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=QSjroBRv/erIWilqyMW1QPcgRfibD+c6WYBPM93qQMeAHlVIdoZL1p7Mdp+a1nqY/
	 tYGqLoPMJFLyKJBoEmNgbqWqpBzTooY9bjAuKXaphlL51cSf6HOeZFtU0BhOON+7Jg
	 obhtetH3kq+czKqxcJSeanA5Dz36b+OxXox5cW4RO+LOQ7KpZxhvaNtr8Btz1Tgvqy
	 cExGZwBgEfYI5zQgO8Tg3hOv78wqmGplhuVDowL1zcWRcrafeEJ1M3yQHbBJ/And9u
	 zCFOdU/3Kj3qfmIyUq3akQ1HNbXmMUOHZjb0P+C+lJS1QPoGSK+u8qJJs2i3qed5b9
	 NufOOLX0DSAxA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 28F2481176;
	Tue, 16 Jul 2024 16:51:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CC81B1BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2024 19:12:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B8247403B9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2024 19:12:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7wdFpdogTGMu for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jul 2024 19:12:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=kheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9148640373
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9148640373
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9148640373
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2024 19:12:15 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-195-On_l9IgAOuGIKzO9doLriA-1; Mon,
 15 Jul 2024 15:12:11 -0400
X-MC-Unique: On_l9IgAOuGIKzO9doLriA-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 10DDE1955D53; Mon, 15 Jul 2024 19:12:10 +0000 (UTC)
Received: from fedora-x1.redhat.com (unknown [10.22.16.23])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 9479D19560AE; Mon, 15 Jul 2024 19:12:07 +0000 (UTC)
From: Kamal Heib <kheib@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 15 Jul 2024 15:11:48 -0400
Message-ID: <20240715191148.746362-1-kheib@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mailman-Approved-At: Tue, 16 Jul 2024 16:51:42 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1721070734;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=9FyOTMQEyctKcX6PD7xEEfPVD/zlnl5HQmXYTfM+6jY=;
 b=AczNkbiyD8gWMQENP8Nvq1oiM8jASTwKBlu5yEYiQhJ+rt2VWzHPv9gLCP8nvq59Zo5lKO
 FQLj2TFOWSfPGis91C2VVoXGzY7xjKoyRk5kknDDQJDINkFtLgOEODgqTNUYGy6zLkDSJo
 MkVej4RUMnZGhF+P2coBm/HTMxLikJs=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=AczNkbiy
Subject: [Intel-wired-lan] [PATCH iwl-next] i40e: Add support for fw health
 report
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
Cc: Ivan Vecera <ivecera@redhat.com>, netdev@vger.kernel.org,
 Kamal Heib <kheib@redhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add support for reporting fw status via the devlink health report.

Example:
 # devlink health show pci/0000:02:00.0 reporter fw
 pci/0000:02:00.0:
   reporter fw
     state healthy error 0 recover 0
 # devlink health diagnose pci/0000:02:00.0 reporter fw
 Status: normal

Signed-off-by: Kamal Heib <kheib@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h        |  1 +
 .../net/ethernet/intel/i40e/i40e_devlink.c    | 57 +++++++++++++++++++
 .../net/ethernet/intel/i40e/i40e_devlink.h    |  2 +
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 15 +++++
 4 files changed, 75 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index d546567e0286..f94671b6e7c6 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -465,6 +465,7 @@ static inline const u8 *i40e_channel_mac(struct i40e_channel *ch)
 struct i40e_pf {
 	struct pci_dev *pdev;
 	struct devlink_port devlink_port;
+	struct devlink_health_reporter *fw_health_report;
 	struct i40e_hw hw;
 	DECLARE_BITMAP(state, __I40E_STATE_SIZE__);
 	struct msix_entry *msix_entries;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_devlink.c b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
index cc4e9e2addb7..ad91c150cdba 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_devlink.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
@@ -122,6 +122,25 @@ static int i40e_devlink_info_get(struct devlink *dl,
 	return err;
 }
 
+static int i40e_fw_reporter_diagnose(struct devlink_health_reporter *reporter,
+				     struct devlink_fmsg *fmsg,
+				     struct netlink_ext_ack *extack)
+{
+	struct i40e_pf *pf = devlink_health_reporter_priv(reporter);
+
+	if (test_bit(__I40E_RECOVERY_MODE, pf->state))
+		devlink_fmsg_string_pair_put(fmsg, "Status", "recovery");
+	else
+		devlink_fmsg_string_pair_put(fmsg, "Status", "normal");
+
+	return 0;
+}
+
+static const struct devlink_health_reporter_ops i40e_fw_reporter_ops = {
+	.name = "fw",
+	.diagnose = i40e_fw_reporter_diagnose,
+};
+
 static const struct devlink_ops i40e_devlink_ops = {
 	.info_get = i40e_devlink_info_get,
 };
@@ -233,3 +252,41 @@ void i40e_devlink_destroy_port(struct i40e_pf *pf)
 {
 	devlink_port_unregister(&pf->devlink_port);
 }
+
+/**
+ * i40e_devlink_create_health_reporter - Create the health reporter for this PF
+ * @pf: the PF to create reporter for
+ *
+ * Create health reporter for this PF.
+ *
+ * Return: zero on success or an error code on failure.
+ **/
+int i40e_devlink_create_health_reporter(struct i40e_pf *pf)
+{
+	struct devlink *devlink = priv_to_devlink(pf);
+	struct device *dev = &pf->pdev->dev;
+	int rc = 0;
+
+	devl_lock(devlink);
+	pf->fw_health_report =
+		devl_health_reporter_create(devlink, &i40e_fw_reporter_ops, 0, pf);
+	if (IS_ERR(pf->fw_health_report)) {
+		rc = PTR_ERR(pf->fw_health_report);
+		dev_err(dev, "Failed to create fw reporter, err = %d\n", rc);
+	}
+	devl_unlock(devlink);
+
+	return rc;
+}
+
+/**
+ * i40e_devlink_destroy_health_reporter - Destroy the health reporter
+ * @pf: the PF to cleanup
+ *
+ * Destroy the health reporter
+ **/
+void i40e_devlink_destroy_health_reporter(struct i40e_pf *pf)
+{
+	if (!IS_ERR_OR_NULL(pf->fw_health_report))
+		devlink_health_reporter_destroy(pf->fw_health_report);
+}
diff --git a/drivers/net/ethernet/intel/i40e/i40e_devlink.h b/drivers/net/ethernet/intel/i40e/i40e_devlink.h
index 469fb3d2ee25..018679094bb5 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_devlink.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_devlink.h
@@ -14,5 +14,7 @@ void i40e_devlink_register(struct i40e_pf *pf);
 void i40e_devlink_unregister(struct i40e_pf *pf);
 int i40e_devlink_create_port(struct i40e_pf *pf);
 void i40e_devlink_destroy_port(struct i40e_pf *pf);
+int i40e_devlink_create_health_reporter(struct i40e_pf *pf);
+void i40e_devlink_destroy_health_reporter(struct i40e_pf *pf);
 
 #endif /* _I40E_DEVLINK_H_ */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index cbcfada7b357..13cad5f58029 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -15370,6 +15370,9 @@ static bool i40e_check_recovery_mode(struct i40e_pf *pf)
 		dev_crit(&pf->pdev->dev, "Firmware recovery mode detected. Limiting functionality.\n");
 		dev_crit(&pf->pdev->dev, "Refer to the Intel(R) Ethernet Adapters and Devices User Guide for details on firmware recovery mode.\n");
 		set_bit(__I40E_RECOVERY_MODE, pf->state);
+		if (pf->fw_health_report)
+			devlink_health_report(pf->fw_health_report,
+					      "FW recovery mode detected", pf);
 
 		return true;
 	}
@@ -15636,6 +15639,14 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		err = -ENOMEM;
 		goto err_pf_alloc;
 	}
+
+	err = i40e_devlink_create_health_reporter(pf);
+	if (err) {
+		dev_err(&pdev->dev,
+			"Failed to create health reporter %d\n", err);
+		goto err_health_reporter;
+	}
+
 	pf->next_vsi = 0;
 	pf->pdev = pdev;
 	set_bit(__I40E_DOWN, pf->state);
@@ -16180,6 +16191,8 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 err_pf_reset:
 	iounmap(hw->hw_addr);
 err_ioremap:
+	i40e_devlink_destroy_health_reporter(pf);
+err_health_reporter:
 	i40e_free_pf(pf);
 err_pf_alloc:
 	pci_release_mem_regions(pdev);
@@ -16209,6 +16222,8 @@ static void i40e_remove(struct pci_dev *pdev)
 
 	i40e_devlink_unregister(pf);
 
+	i40e_devlink_destroy_health_reporter(pf);
+
 	i40e_dbg_pf_exit(pf);
 
 	i40e_ptp_stop(pf);
-- 
2.45.2

