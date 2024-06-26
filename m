Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 48BE9918182
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jun 2024 14:56:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DBE6060BCD;
	Wed, 26 Jun 2024 12:56:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WMEsTHx8ojZ8; Wed, 26 Jun 2024 12:56:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C36560BE7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719406592;
	bh=HKTxMRifH2zItGEH7dHLX+4vNxNBGASxDgqSWfZ51vU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5omfSyHccPdY2N40Vuqn60DRy4hpKxAEcCNl5+PuInjFNSvLcHsOSX0rPY8PK3eSB
	 NzyNNU8e34TuREoPgWqcY5/zO7UWoo5nIWXzyPzymVURj/Biq3gZgdvUaLMyp3zKKf
	 tXz8neY2OSU7itQXwetQp3Oj6vaeyii5XoJVt+TmeuyCmwVoxBS1PxGU9QhcVCukha
	 R4uNUFtOHWqgSmlHIkk9Jmrq3f1ms2Kjs4FKs/J69E5FfQTRCe61uBXua4bLXSvwW5
	 Im+LMitMse/5hakW+yw5bWoKKdR95VRsnRWZCsHcZzqWnekMCzWrd0AtY0l5SyShOB
	 nEQ4O/44XRkMQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C36560BE7;
	Wed, 26 Jun 2024 12:56:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DC7301BF3F7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 12:56:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C8F1840275
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 12:56:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tg5x0S3QnFvI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jun 2024 12:56:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6AD414016B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6AD414016B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6AD414016B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 12:56:29 +0000 (UTC)
X-CSE-ConnectionGUID: eNZYc45VRzew1O8liKZlnQ==
X-CSE-MsgGUID: 0G35eHLnQfyBv7weBlhH6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11114"; a="16158116"
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="16158116"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 05:56:29 -0700
X-CSE-ConnectionGUID: 5Y3kTx1xRwmv30qp74yksQ==
X-CSE-MsgGUID: baEJ95qjSa2TL7QTqzTzLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="48594652"
Received: from unknown (HELO localhost.igk.intel.com) ([10.211.13.141])
 by fmviesa004.fm.intel.com with ESMTP; 26 Jun 2024 05:56:28 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 26 Jun 2024 14:54:56 +0200
Message-ID: <20240626125456.27667-5-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240626125456.27667-1-sergey.temerkhanov@intel.com>
References: <20240626125456.27667-1-sergey.temerkhanov@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719406590; x=1750942590;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RFj/sljs8A7J1wwTCeufrl6q5EMho82lEUtRAGiiDCs=;
 b=k/ZVbLsAnSkzFWy59xEUJs0d2oom1g0CNmGSn5gEHjmoa+t5wZsns+Xy
 7ELpgWPkCiePudN134AbzL+k7X9C97Lh1Ui2VRYHgok+yAUopsRWp8iYX
 Nqw3Oe4HDrrYJPGkUT9NN+6Rch+sdBrvXhKrFS8Js3kDqfMhdA2v7z9ae
 qnT1Tzy8G0RUc8RZ5+xMd9NkxfS0oHYtOBG08OmkwQbyekqliBoJY10rc
 5JKuC7qtg0aI7RFtKi1b6h2f2EBVresCRo0GWG5oTC3XDnW3v0w+Jquw6
 l1fDpFWaC1NVMw0yBRdEUOSLijDiahrrku+p/TRth+75T1RFnznIKs3YY
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=k/ZVbLsA
Subject: [Intel-wired-lan] [PATCH iwl-next v2 4/4] ice: Drop auxbus use for
 PTP to finalize ice_adapter move
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Drop unused auxbus/auxdev support from the PTP code due to
move to the ice_adapter.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 252 -----------------------
 drivers/net/ethernet/intel/ice/ice_ptp.h |  23 ---
 2 files changed, 275 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 1740c8f1fb61..c2dda9a8614f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2950,188 +2950,6 @@ static void ice_ptp_cleanup_pf(struct ice_pf *pf)
 		mutex_unlock(&pf->adapter->ports.lock);
 	}
 }
-/**
- * ice_ptp_aux_dev_to_aux_pf - Get auxiliary PF handle for the auxiliary device
- * @aux_dev: auxiliary device to get the auxiliary PF for
- */
-static struct ice_pf *
-ice_ptp_aux_dev_to_aux_pf(struct auxiliary_device *aux_dev)
-{
-	struct ice_ptp_port *aux_port;
-	struct ice_ptp *aux_ptp;
-
-	aux_port = container_of(aux_dev, struct ice_ptp_port, aux_dev);
-	aux_ptp = container_of(aux_port, struct ice_ptp, port);
-
-	return container_of(aux_ptp, struct ice_pf, ptp);
-}
-
-/**
- * ice_ptp_aux_dev_to_owner_pf - Get PF handle for the auxiliary device
- * @aux_dev: auxiliary device to get the PF for
- */
-static struct ice_pf *
-ice_ptp_aux_dev_to_owner_pf(struct auxiliary_device *aux_dev)
-{
-	struct ice_ptp_port_owner *ports_owner;
-	struct auxiliary_driver *aux_drv;
-	struct ice_ptp *owner_ptp;
-
-	if (!aux_dev->dev.driver)
-		return NULL;
-
-	aux_drv = to_auxiliary_drv(aux_dev->dev.driver);
-	ports_owner = container_of(aux_drv, struct ice_ptp_port_owner,
-				   aux_driver);
-	owner_ptp = container_of(ports_owner, struct ice_ptp, ports_owner);
-	return container_of(owner_ptp, struct ice_pf, ptp);
-}
-
-/**
- * ice_ptp_auxbus_probe - Probe auxiliary devices
- * @aux_dev: PF's auxiliary device
- * @id: Auxiliary device ID
- */
-static int ice_ptp_auxbus_probe(struct auxiliary_device *aux_dev,
-				const struct auxiliary_device_id *id)
-{
-	struct ice_pf *owner_pf = ice_ptp_aux_dev_to_owner_pf(aux_dev);
-	struct ice_pf *aux_pf = ice_ptp_aux_dev_to_aux_pf(aux_dev);
-
-	if (WARN_ON(!owner_pf))
-		return -ENODEV;
-
-	INIT_LIST_HEAD(&aux_pf->ptp.port.list_member);
-	mutex_lock(&owner_pf->ptp.ports_owner.lock);
-	list_add(&aux_pf->ptp.port.list_member,
-		 &owner_pf->ptp.ports_owner.ports);
-	mutex_unlock(&owner_pf->ptp.ports_owner.lock);
-
-	return 0;
-}
-
-/**
- * ice_ptp_auxbus_remove - Remove auxiliary devices from the bus
- * @aux_dev: PF's auxiliary device
- */
-static void ice_ptp_auxbus_remove(struct auxiliary_device *aux_dev)
-{
-	struct ice_pf *owner_pf = ice_ptp_aux_dev_to_owner_pf(aux_dev);
-	struct ice_pf *aux_pf = ice_ptp_aux_dev_to_aux_pf(aux_dev);
-
-	mutex_lock(&owner_pf->ptp.ports_owner.lock);
-	list_del(&aux_pf->ptp.port.list_member);
-	mutex_unlock(&owner_pf->ptp.ports_owner.lock);
-}
-
-/**
- * ice_ptp_auxbus_shutdown
- * @aux_dev: PF's auxiliary device
- */
-static void ice_ptp_auxbus_shutdown(struct auxiliary_device *aux_dev)
-{
-	/* Doing nothing here, but handle to auxbus driver must be satisfied */
-}
-
-/**
- * ice_ptp_auxbus_suspend
- * @aux_dev: PF's auxiliary device
- * @state: power management state indicator
- */
-static int
-ice_ptp_auxbus_suspend(struct auxiliary_device *aux_dev, pm_message_t state)
-{
-	/* Doing nothing here, but handle to auxbus driver must be satisfied */
-	return 0;
-}
-
-/**
- * ice_ptp_auxbus_resume
- * @aux_dev: PF's auxiliary device
- */
-static int ice_ptp_auxbus_resume(struct auxiliary_device *aux_dev)
-{
-	/* Doing nothing here, but handle to auxbus driver must be satisfied */
-	return 0;
-}
-
-/**
- * ice_ptp_auxbus_create_id_table - Create auxiliary device ID table
- * @pf: Board private structure
- * @name: auxiliary bus driver name
- */
-static struct auxiliary_device_id *
-ice_ptp_auxbus_create_id_table(struct ice_pf *pf, const char *name)
-{
-	struct auxiliary_device_id *ids;
-
-	/* Second id left empty to terminate the array */
-	ids = devm_kcalloc(ice_pf_to_dev(pf), 2,
-			   sizeof(struct auxiliary_device_id), GFP_KERNEL);
-	if (!ids)
-		return NULL;
-
-	snprintf(ids[0].name, sizeof(ids[0].name), "ice.%s", name);
-
-	return ids;
-}
-
-/**
- * ice_ptp_register_auxbus_driver - Register PTP auxiliary bus driver
- * @pf: Board private structure
- */
-static int __always_unused ice_ptp_register_auxbus_driver(struct ice_pf *pf)
-{
-	struct auxiliary_driver *aux_driver;
-	struct ice_ptp *ptp;
-	struct device *dev;
-	char *name;
-	int err;
-
-	ptp = &pf->ptp;
-	dev = ice_pf_to_dev(pf);
-	aux_driver = &ptp->ports_owner.aux_driver;
-	INIT_LIST_HEAD(&ptp->ports_owner.ports);
-	mutex_init(&ptp->ports_owner.lock);
-	name = devm_kasprintf(dev, GFP_KERNEL, "ptp_aux_dev_%u_%u_clk%u",
-			      pf->pdev->bus->number, PCI_SLOT(pf->pdev->devfn),
-			      ice_get_ptp_src_clock_index(&pf->hw));
-	if (!name)
-		return -ENOMEM;
-
-	aux_driver->name = name;
-	aux_driver->shutdown = ice_ptp_auxbus_shutdown;
-	aux_driver->suspend = ice_ptp_auxbus_suspend;
-	aux_driver->remove = ice_ptp_auxbus_remove;
-	aux_driver->resume = ice_ptp_auxbus_resume;
-	aux_driver->probe = ice_ptp_auxbus_probe;
-	aux_driver->id_table = ice_ptp_auxbus_create_id_table(pf, name);
-	if (!aux_driver->id_table)
-		return -ENOMEM;
-
-	err = auxiliary_driver_register(aux_driver);
-	if (err) {
-		devm_kfree(dev, aux_driver->id_table);
-		dev_err(dev, "Failed registering aux_driver, name <%s>\n",
-			name);
-	}
-
-	return err;
-}
-
-/**
- * ice_ptp_unregister_auxbus_driver - Unregister PTP auxiliary bus driver
- * @pf: Board private structure
- */
-static void __always_unused ice_ptp_unregister_auxbus_driver(struct ice_pf *pf)
-{
-	struct auxiliary_driver *aux_driver = &pf->ptp.ports_owner.aux_driver;
-
-	auxiliary_driver_unregister(aux_driver);
-	devm_kfree(ice_pf_to_dev(pf), aux_driver->id_table);
-
-	mutex_destroy(&pf->ptp.ports_owner.lock);
-}
 
 /**
  * ice_ptp_clock_index - Get the PTP clock index for this device
@@ -3270,76 +3088,6 @@ static int ice_ptp_init_port(struct ice_pf *pf, struct ice_ptp_port *ptp_port)
 	}
 }
 
-/**
- * ice_ptp_release_auxbus_device
- * @dev: device that utilizes the auxbus
- */
-static void ice_ptp_release_auxbus_device(struct device *dev)
-{
-	/* Doing nothing here, but handle to auxbux device must be satisfied */
-}
-
-/**
- * ice_ptp_create_auxbus_device - Create PTP auxiliary bus device
- * @pf: Board private structure
- */
-static __always_unused int ice_ptp_create_auxbus_device(struct ice_pf *pf)
-{
-	struct auxiliary_device *aux_dev;
-	struct ice_ptp *ptp;
-	struct device *dev;
-	char *name;
-	int err;
-	u32 id;
-
-	ptp = &pf->ptp;
-	id = ptp->port.port_num;
-	dev = ice_pf_to_dev(pf);
-
-	aux_dev = &ptp->port.aux_dev;
-
-	name = devm_kasprintf(dev, GFP_KERNEL, "ptp_aux_dev_%u_%u_clk%u",
-			      pf->pdev->bus->number, PCI_SLOT(pf->pdev->devfn),
-			      ice_get_ptp_src_clock_index(&pf->hw));
-	if (!name)
-		return -ENOMEM;
-
-	aux_dev->name = name;
-	aux_dev->id = id;
-	aux_dev->dev.release = ice_ptp_release_auxbus_device;
-	aux_dev->dev.parent = dev;
-
-	err = auxiliary_device_init(aux_dev);
-	if (err)
-		goto aux_err;
-
-	err = auxiliary_device_add(aux_dev);
-	if (err) {
-		auxiliary_device_uninit(aux_dev);
-		goto aux_err;
-	}
-
-	return 0;
-aux_err:
-	dev_err(dev, "Failed to create PTP auxiliary bus device <%s>\n", name);
-	devm_kfree(dev, name);
-	return err;
-}
-
-/**
- * ice_ptp_remove_auxbus_device - Remove PTP auxiliary bus device
- * @pf: Board private structure
- */
-static __always_unused void ice_ptp_remove_auxbus_device(struct ice_pf *pf)
-{
-	struct auxiliary_device *aux_dev = &pf->ptp.port.aux_dev;
-
-	auxiliary_device_delete(aux_dev);
-	auxiliary_device_uninit(aux_dev);
-
-	memset(aux_dev, 0, sizeof(*aux_dev));
-}
-
 /**
  * ice_ptp_init_tx_interrupt_mode - Initialize device Tx interrupt mode
  * @pf: Board private structure
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index de73762e6f27..71c09acb5558 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -169,10 +169,8 @@ struct ice_ptp_tx {
  * ready for PTP functionality. It is used to track the port initialization
  * and determine when the port's PHY offset is valid.
  *
- * @list_member: list member structure of auxiliary device
  * @list_node: list member structure
  * @tx: Tx timestamp tracking for this port
- * @aux_dev: auxiliary device associated with this port
  * @ov_work: delayed work task for tracking when PHY offset is valid
  * @ps_lock: mutex used to protect the overall PTP PHY start procedure
  * @link_up: indicates whether the link is up
@@ -180,10 +178,8 @@ struct ice_ptp_tx {
  * @port_num: the port number this structure represents
  */
 struct ice_ptp_port {
-	struct list_head list_member;
 	struct list_head list_node;
 	struct ice_ptp_tx tx;
-	struct auxiliary_device aux_dev;
 	struct kthread_delayed_work ov_work;
 	struct mutex ps_lock; /* protects overall PTP PHY start procedure */
 	bool link_up;
@@ -197,23 +193,6 @@ enum ice_ptp_tx_interrupt {
 	ICE_PTP_TX_INTERRUPT_ALL,
 };
 
-/**
- * struct ice_ptp_port_owner - data used to handle the PTP clock owner info
- *
- * This structure contains data necessary for the PTP clock owner to correctly
- * handle the timestamping feature for all attached ports.
- *
- * @aux_driver: the structure carring the auxiliary driver information
- * @ports: list of porst handled by this port owner
- * @lock: protect access to ports list
- */
-
-struct ice_ptp_port_owner {
-	struct auxiliary_driver aux_driver;
-	struct list_head ports;
-	struct mutex lock;
-};
-
 #define GLTSYN_TGT_H_IDX_MAX		4
 
 enum ice_ptp_state {
@@ -229,7 +208,6 @@ enum ice_ptp_state {
  * @state: current state of PTP state machine
  * @tx_interrupt_mode: the TX interrupt mode for the PTP clock
  * @port: data for the PHY port initialization procedure
- * @ports_owner: data for the auxiliary driver owner
  * @work: delayed work function for periodic tasks
  * @cached_phc_time: a cached copy of the PHC time for timestamp extension
  * @cached_phc_jiffies: jiffies when cached_phc_time was last updated
@@ -253,7 +231,6 @@ struct ice_ptp {
 	enum ice_ptp_state state;
 	enum ice_ptp_tx_interrupt tx_interrupt_mode;
 	struct ice_ptp_port port;
-	struct ice_ptp_port_owner ports_owner;
 	struct kthread_delayed_work work;
 	u64 cached_phc_time;
 	unsigned long cached_phc_jiffies;
-- 
2.43.0

