Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE5D935182
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jul 2024 20:13:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1681C40F38;
	Thu, 18 Jul 2024 18:13:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dtXa2KrfegLy; Thu, 18 Jul 2024 18:13:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EC29240F30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721326418;
	bh=TOnJ9vokDFYh+suU6xxdHAiy69UUlMllTqmEBude3cA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=D+LmmKs964fLZAb2Va9FD5ZrduOuSbCVXmjI+CW6cNoENx1YGR8qmVN46u2j6ppgK
	 cNwYICS+RVC9zC8JhLlzjP/KjQF3aS12E9oi+HPrllWVqgauOAoAZkr+TjKlTQ325v
	 HrBPAUA0u9w6+ufuEO7SNCDE7vsl3xFbZ4pTsQ27P4JEUL0S4gZOanPC+pieJBc4i9
	 00umCNuRyLk2ZFfKk9SJgJ0ur2C9nwe04kNh2dNIDBvPyg1OWtRj6p3EdmEJ73cVpV
	 TAgT+eQm4s+Xr/OnDmpsuqFKRzkrww6LNic82XaLRXA+cpCqLvjbtLsI/rCthQqNa9
	 /POyqeIaXl/8A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EC29240F30;
	Thu, 18 Jul 2024 18:13:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 25C291BF337
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jul 2024 18:13:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1255B606F3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jul 2024 18:13:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Im4q1kO-rUbk for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jul 2024 18:13:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=kheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 40C9F60707
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 40C9F60707
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 40C9F60707
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jul 2024 18:13:35 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-158-nahnr37dM1uiKIoJgO-jaQ-1; Thu,
 18 Jul 2024 14:13:29 -0400
X-MC-Unique: nahnr37dM1uiKIoJgO-jaQ-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 35EA819560B4; Thu, 18 Jul 2024 18:13:28 +0000 (UTC)
Received: from fedora-x1.redhat.com (unknown [10.22.33.3])
 by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 4F3C51955F40; Thu, 18 Jul 2024 18:13:25 +0000 (UTC)
From: Kamal Heib <kheib@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 18 Jul 2024 14:13:19 -0400
Message-ID: <20240718181319.145884-1-kheib@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1721326414;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=TOnJ9vokDFYh+suU6xxdHAiy69UUlMllTqmEBude3cA=;
 b=a5oXElCVNEEidFOKaYxyO2Fo/QGT+n/WVl5G8t7XMN4Gln+DPmk+K4V8qdo6NxEWxQTDVo
 0NhXNtcUjQ0WjhdLjgaFJVH3n/gxse6qatAg+dn0iXden1DRTFjkiZP+Nm9jddFbFOwCjU
 zoFHLpFXDu9W7CAy5a475ck99/4g1t0=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=a5oXElCV
Subject: [Intel-wired-lan] [PATCH iwl-next v2] i40e: Add support for fw
 health report
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
 Mode: normal

Signed-off-by: Kamal Heib <kheib@redhat.com>
---
v2:
- Address comments from Jiri.
- Move the creation of the health report. 
---
 drivers/net/ethernet/intel/i40e/i40e.h        |  1 +
 .../net/ethernet/intel/i40e/i40e_devlink.c    | 57 +++++++++++++++++++
 .../net/ethernet/intel/i40e/i40e_devlink.h    |  2 +
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 14 +++++
 4 files changed, 74 insertions(+)

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
index cc4e9e2addb7..8fe64284e8d3 100644
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
+		devlink_fmsg_string_pair_put(fmsg, "Mode", "recovery");
+	else
+		devlink_fmsg_string_pair_put(fmsg, "Mode", "normal");
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
index cbcfada7b357..b6b3ae299b28 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -15370,6 +15370,9 @@ static bool i40e_check_recovery_mode(struct i40e_pf *pf)
 		dev_crit(&pf->pdev->dev, "Firmware recovery mode detected. Limiting functionality.\n");
 		dev_crit(&pf->pdev->dev, "Refer to the Intel(R) Ethernet Adapters and Devices User Guide for details on firmware recovery mode.\n");
 		set_bit(__I40E_RECOVERY_MODE, pf->state);
+		if (pf->fw_health_report)
+			devlink_health_report(pf->fw_health_report,
+					      "recovery mode detected", pf);
 
 		return true;
 	}
@@ -15810,6 +15813,13 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (test_bit(__I40E_RECOVERY_MODE, pf->state))
 		return i40e_init_recovery_mode(pf, hw);
 
+	err = i40e_devlink_create_health_reporter(pf);
+	if (err) {
+		dev_err(&pdev->dev,
+			"Failed to create health reporter %d\n", err);
+		goto err_health_reporter;
+	}
+
 	err = i40e_init_lan_hmc(hw, hw->func_caps.num_tx_qp,
 				hw->func_caps.num_rx_qp, 0, 0);
 	if (err) {
@@ -16175,6 +16185,8 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	(void)i40e_shutdown_lan_hmc(hw);
 err_init_lan_hmc:
 	kfree(pf->qp_pile);
+	i40e_devlink_destroy_health_reporter(pf);
+err_health_reporter:
 err_sw_init:
 err_adminq_setup:
 err_pf_reset:
@@ -16209,6 +16221,8 @@ static void i40e_remove(struct pci_dev *pdev)
 
 	i40e_devlink_unregister(pf);
 
+	i40e_devlink_destroy_health_reporter(pf);
+
 	i40e_dbg_pf_exit(pf);
 
 	i40e_ptp_stop(pf);
-- 
2.45.2

