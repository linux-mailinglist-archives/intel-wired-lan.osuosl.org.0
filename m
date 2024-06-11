Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED1F0903C91
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jun 2024 15:01:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C373F40347;
	Tue, 11 Jun 2024 13:01:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c6b6ALdHeFib; Tue, 11 Jun 2024 13:01:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D700840556
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718110881;
	bh=N/msmeaOOa4E4zAbjMotssu/COABPKFI5U9UHaIyq0M=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=2WMBhRV4XabC9wS3hn/Pa1dWzQ3MsxNfmKEqGUr/zAnvTh/a8MU0X41isVAdGDkqo
	 GjAaggGTmgegJFAxPwO+lKjl1ykKeqcZ8n8+6GKZZ7P/2RglAyqQJHEe4sS8s61JmM
	 7pBGFvbbgo2+Bp1MrOX93+HCzd3m4AIymN73VPMOmjMu6hhaF7yEC4n3ByiumGk15L
	 jkQgQayIgo9/yd1bp4LE6h+dsgiWQqnAGX+LLQpL5YqkROj50BSpCv8wTY1JRekGfu
	 muAkQZ2430tGu5qlBlGBMYNI4Br0W2fQ1PB8jWlfRiGQrPuyQbi7TiSzwVgLZgJLLM
	 98AxS0VjUtyYQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D700840556;
	Tue, 11 Jun 2024 13:01:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B3DB31BF39A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 13:01:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9DFD180EBF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 13:01:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3v4ZBQ_JrjST for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jun 2024 13:01:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=gregkh@linuxfoundation.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7AB7580EB6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7AB7580EB6
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7AB7580EB6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 13:01:17 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 1A14560E88;
 Tue, 11 Jun 2024 13:01:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56AA5C4AF48;
 Tue, 11 Jun 2024 13:01:15 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Date: Tue, 11 Jun 2024 15:01:04 +0200
Message-ID: <20240611130103.3262749-7-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=8097;
 i=gregkh@linuxfoundation.org; h=from:subject;
 bh=0JZaCXW+n6H3OOec6ZC4VzANYpWXLrydYTlRC21cNoM=;
 b=owGbwMvMwCRo6H6F97bub03G02pJDGkZXv377+23kF/wqELi4uFeuzsHjbJvzz76ZW5qgbOMi
 OnP0GzvjlgWBkEmBlkxRZYv23iO7q84pOhlaHsaZg4rE8gQBi5OAZjIBnaGBZM3XlC5buT2tvrZ
 5hvTphh0fv18aQPDPMU/y30a3d71FF3fpOdu/J5pptniLAA=
X-Developer-Key: i=gregkh@linuxfoundation.org; a=openpgp;
 fpr=F4B60CC5BF78C2214A313DCB3147D40DDB2DFB29
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1718110875;
 bh=0JZaCXW+n6H3OOec6ZC4VzANYpWXLrydYTlRC21cNoM=;
 h=From:To:Cc:Subject:Date:From;
 b=ewCcNeFyq/mkicN6HAoGxWW/7T93ZP4/IaputgZrzcjWFj9c2HBxYUhcfAQqoX31C
 UREfUSsaHshnuvVSUQbtPqJfdYurZf09CNnL7JSwdtKwwGJMsqTHWi7kntu2DvpL5c
 1pujHXfcrKtbc/IIPXwCcZcZ+iE3XWEUiZXBR390=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linuxfoundation.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org
 header.a=rsa-sha256 header.s=korg header.b=ewCcNeFy
Subject: [Intel-wired-lan] [PATCH 1/6] auxbus: make to_auxiliary_drv accept
 and return a constant pointer
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
Cc: Daniel Baluta <daniel.baluta@nxp.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Bard Liao <yung-chuan.liao@linux.intel.com>,
 sound-open-firmware@alsa-project.org, Bingbu Cao <bingbu.cao@intel.com>,
 Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org,
 Ira Weiny <ira.weiny@intel.com>, Takashi Iwai <tiwai@suse.com>,
 intel-wired-lan@lists.osuosl.org,
 Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Tianshu Qiu <tian.shu.qiu@intel.com>, linux-media@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>, linux-sound@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Dave Ertman <david.m.ertman@intel.com>,
 Jaroslav Kysela <perex@perex.cz>, Michael Chan <michael.chan@broadcom.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Peter Ujfalusi <peter.ujfalusi@linux.intel.com>,
 Kai Vehmanen <kai.vehmanen@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Tariq Toukan <tariqt@nvidia.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, netdev@vger.kernel.org,
 Saeed Mahameed <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In the quest to make struct device constant, start by making
to_auziliary_drv() return a constant pointer so that drivers that call
this can be fixed up before the driver core changes.

As the return type previously was not constant, also fix up all callers
that were assuming that the pointer was not going to be a constant one
in order to not break the build.

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Dave Ertman <david.m.ertman@intel.com>
Cc: Ira Weiny <ira.weiny@intel.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Bingbu Cao <bingbu.cao@intel.com>
Cc: Tianshu Qiu <tian.shu.qiu@intel.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Michael Chan <michael.chan@broadcom.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Eric Dumazet <edumazet@google.com>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Paolo Abeni <pabeni@redhat.com>
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: Saeed Mahameed <saeedm@nvidia.com>
Cc: Leon Romanovsky <leon@kernel.org>
Cc: Tariq Toukan <tariqt@nvidia.com>
Cc: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: Peter Ujfalusi <peter.ujfalusi@linux.intel.com>
Cc: Bard Liao <yung-chuan.liao@linux.intel.com>
Cc: Ranjani Sridharan <ranjani.sridharan@linux.intel.com>
Cc: Daniel Baluta <daniel.baluta@nxp.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Jaroslav Kysela <perex@perex.cz>
Cc: Takashi Iwai <tiwai@suse.com>
Cc: Richard Cochran <richardcochran@gmail.com>
Cc: linux-media@vger.kernel.org
Cc: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org
Cc: linux-rdma@vger.kernel.org
Cc: sound-open-firmware@alsa-project.org
Cc: linux-sound@vger.kernel.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/base/auxiliary.c                      | 8 ++++----
 drivers/media/pci/intel/ipu6/ipu6-bus.h       | 2 +-
 drivers/net/ethernet/broadcom/bnxt/bnxt_ulp.c | 4 ++--
 drivers/net/ethernet/intel/ice/ice_ptp.c      | 2 +-
 drivers/net/ethernet/mellanox/mlx5/core/dev.c | 4 ++--
 include/linux/auxiliary_bus.h                 | 2 +-
 sound/soc/sof/sof-client.c                    | 4 ++--
 7 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/base/auxiliary.c b/drivers/base/auxiliary.c
index d3a2c40c2f12..5832e31bb77b 100644
--- a/drivers/base/auxiliary.c
+++ b/drivers/base/auxiliary.c
@@ -180,7 +180,7 @@ static const struct auxiliary_device_id *auxiliary_match_id(const struct auxilia
 static int auxiliary_match(struct device *dev, struct device_driver *drv)
 {
 	struct auxiliary_device *auxdev = to_auxiliary_dev(dev);
-	struct auxiliary_driver *auxdrv = to_auxiliary_drv(drv);
+	const struct auxiliary_driver *auxdrv = to_auxiliary_drv(drv);
 
 	return !!auxiliary_match_id(auxdrv->id_table, auxdev);
 }
@@ -203,7 +203,7 @@ static const struct dev_pm_ops auxiliary_dev_pm_ops = {
 
 static int auxiliary_bus_probe(struct device *dev)
 {
-	struct auxiliary_driver *auxdrv = to_auxiliary_drv(dev->driver);
+	const struct auxiliary_driver *auxdrv = to_auxiliary_drv(dev->driver);
 	struct auxiliary_device *auxdev = to_auxiliary_dev(dev);
 	int ret;
 
@@ -222,7 +222,7 @@ static int auxiliary_bus_probe(struct device *dev)
 
 static void auxiliary_bus_remove(struct device *dev)
 {
-	struct auxiliary_driver *auxdrv = to_auxiliary_drv(dev->driver);
+	const struct auxiliary_driver *auxdrv = to_auxiliary_drv(dev->driver);
 	struct auxiliary_device *auxdev = to_auxiliary_dev(dev);
 
 	if (auxdrv->remove)
@@ -232,7 +232,7 @@ static void auxiliary_bus_remove(struct device *dev)
 
 static void auxiliary_bus_shutdown(struct device *dev)
 {
-	struct auxiliary_driver *auxdrv = NULL;
+	const struct auxiliary_driver *auxdrv = NULL;
 	struct auxiliary_device *auxdev;
 
 	if (dev->driver) {
diff --git a/drivers/media/pci/intel/ipu6/ipu6-bus.h b/drivers/media/pci/intel/ipu6/ipu6-bus.h
index b26c6aee1621..bb4926dfdf08 100644
--- a/drivers/media/pci/intel/ipu6/ipu6-bus.h
+++ b/drivers/media/pci/intel/ipu6/ipu6-bus.h
@@ -21,7 +21,7 @@ struct ipu6_buttress_ctrl;
 
 struct ipu6_bus_device {
 	struct auxiliary_device auxdev;
-	struct auxiliary_driver *auxdrv;
+	const struct auxiliary_driver *auxdrv;
 	const struct ipu6_auxdrv_data *auxdrv_data;
 	struct list_head list;
 	void *pdata;
diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt_ulp.c b/drivers/net/ethernet/broadcom/bnxt/bnxt_ulp.c
index ba3fa1c2e5d9..b9e7d3e7b15d 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt_ulp.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt_ulp.c
@@ -239,7 +239,7 @@ void bnxt_ulp_stop(struct bnxt *bp)
 
 		adev = &aux_priv->aux_dev;
 		if (adev->dev.driver) {
-			struct auxiliary_driver *adrv;
+			const struct auxiliary_driver *adrv;
 			pm_message_t pm = {};
 
 			adrv = to_auxiliary_drv(adev->dev.driver);
@@ -277,7 +277,7 @@ void bnxt_ulp_start(struct bnxt *bp, int err)
 
 		adev = &aux_priv->aux_dev;
 		if (adev->dev.driver) {
-			struct auxiliary_driver *adrv;
+			const struct auxiliary_driver *adrv;
 
 			adrv = to_auxiliary_drv(adev->dev.driver);
 			edev->en_state = bp->state;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 0f17fc1181d2..7341e7c4ef24 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2784,7 +2784,7 @@ static struct ice_pf *
 ice_ptp_aux_dev_to_owner_pf(struct auxiliary_device *aux_dev)
 {
 	struct ice_ptp_port_owner *ports_owner;
-	struct auxiliary_driver *aux_drv;
+	const struct auxiliary_driver *aux_drv;
 	struct ice_ptp *owner_ptp;
 
 	if (!aux_dev->dev.driver)
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/dev.c b/drivers/net/ethernet/mellanox/mlx5/core/dev.c
index 47e7c2639774..9a79674d27f1 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/dev.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/dev.c
@@ -349,7 +349,7 @@ int mlx5_attach_device(struct mlx5_core_dev *dev)
 {
 	struct mlx5_priv *priv = &dev->priv;
 	struct auxiliary_device *adev;
-	struct auxiliary_driver *adrv;
+	const struct auxiliary_driver *adrv;
 	int ret = 0, i;
 
 	devl_assert_locked(priv_to_devlink(dev));
@@ -406,7 +406,7 @@ void mlx5_detach_device(struct mlx5_core_dev *dev, bool suspend)
 {
 	struct mlx5_priv *priv = &dev->priv;
 	struct auxiliary_device *adev;
-	struct auxiliary_driver *adrv;
+	const struct auxiliary_driver *adrv;
 	pm_message_t pm = {};
 	int i;
 
diff --git a/include/linux/auxiliary_bus.h b/include/linux/auxiliary_bus.h
index de21d9d24a95..bdff7b85f2ae 100644
--- a/include/linux/auxiliary_bus.h
+++ b/include/linux/auxiliary_bus.h
@@ -203,7 +203,7 @@ static inline struct auxiliary_device *to_auxiliary_dev(struct device *dev)
 	return container_of(dev, struct auxiliary_device, dev);
 }
 
-static inline struct auxiliary_driver *to_auxiliary_drv(struct device_driver *drv)
+static inline const struct auxiliary_driver *to_auxiliary_drv(const struct device_driver *drv)
 {
 	return container_of(drv, struct auxiliary_driver, driver);
 }
diff --git a/sound/soc/sof/sof-client.c b/sound/soc/sof/sof-client.c
index 99f74def4ab6..5d6005a88e79 100644
--- a/sound/soc/sof/sof-client.c
+++ b/sound/soc/sof/sof-client.c
@@ -357,7 +357,7 @@ EXPORT_SYMBOL_NS_GPL(sof_client_ipc4_find_module, SND_SOC_SOF_CLIENT);
 
 int sof_suspend_clients(struct snd_sof_dev *sdev, pm_message_t state)
 {
-	struct auxiliary_driver *adrv;
+	const struct auxiliary_driver *adrv;
 	struct sof_client_dev *cdev;
 
 	mutex_lock(&sdev->ipc_client_mutex);
@@ -380,7 +380,7 @@ EXPORT_SYMBOL_NS_GPL(sof_suspend_clients, SND_SOC_SOF_CLIENT);
 
 int sof_resume_clients(struct snd_sof_dev *sdev)
 {
-	struct auxiliary_driver *adrv;
+	const struct auxiliary_driver *adrv;
 	struct sof_client_dev *cdev;
 
 	mutex_lock(&sdev->ipc_client_mutex);
-- 
2.45.2

