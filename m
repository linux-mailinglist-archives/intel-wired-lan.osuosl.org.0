Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD288AEA96
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Apr 2024 17:17:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4569E81F7F;
	Tue, 23 Apr 2024 15:17:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wMKo4OQWmIRT; Tue, 23 Apr 2024 15:17:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B770481F81
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713885431;
	bh=hB53THwsi4FkJm9PIfl9+YQYvybNwb0ERLiWO+mT2n8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=gAODHtDZeucn6RpTP4NE3XTpaFqiLP03y0AG5zU9DPUuwp30IjDH3x5/Cv71xiBdz
	 3TG7+/zyaHo7L/yZnNANfU4KlQJMteY1XbKE1N4VktRnymtpyp0m3Nrbt4uyejFH0+
	 bjF4MdjF7hPauR65vKncJ2TRBQvs4u9OHA/9TwDV1uV5IPbyX1wu7YMgtgbMSmIuDN
	 Y4Yb2xRg+l1hnRIRGtrIcn7wLdsLpPKWDa2t2BwqyFtBcOYAYQojWwFr69ZYs6GKtJ
	 8a+dYDrUamp3YjogZlL0//fvKlzaUASgJ8NYohBXS3u9yfxAKhIU6N04iz4+ABe/hi
	 lnUp6ipBCFojQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B770481F81;
	Tue, 23 Apr 2024 15:17:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B97711BF304
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 09:15:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B1F9040C2D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 09:15:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e7SnAOF5EG1P for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Apr 2024 09:15:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 80E9940BF8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 80E9940BF8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 80E9940BF8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 09:15:33 +0000 (UTC)
X-CSE-ConnectionGUID: vcd3xU3CSm2/ew9TWSJaoA==
X-CSE-MsgGUID: NbXelzwnTy6ocdStHQnmeg==
X-IronPort-AV: E=McAfee;i="6600,9927,11052"; a="34835648"
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="34835648"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2024 02:15:32 -0700
X-CSE-ConnectionGUID: Zm4+HrTHTLuxjd73darihQ==
X-CSE-MsgGUID: jWLiRbgcSTWRGEWq3jT6kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="28811170"
Received: from unknown (HELO localhost.igk.intel.com) ([10.211.13.141])
 by fmviesa003.fm.intel.com with ESMTP; 23 Apr 2024 02:15:31 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Apr 2024 11:14:59 +0200
Message-Id: <20240423091459.72216-1-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 23 Apr 2024 15:17:07 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713863733; x=1745399733;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zENXedFIh6Tmz/JHiVkv82LEMexdoV9DEhKBzO9s4ec=;
 b=GRuU7baCWX2IQK7XXXU5ynx7oQTIjmnKF8cOY/fWESS0FdyOrJmWwKzh
 IALpwbzOeOPmfW7BdTk3K2oN19higotSR//alAxskjY3rusgnEfsQYi+E
 5FGA1HmDV4yFHpw3kpHS/2t+eO5yCx4DZmzZVYb9wC+nsJm5h5LouIC5O
 p2CN57ll+7WkzWs80jPvrz4z2P/tRXhm619C/tI0fWIrEFL+NDdphvK35
 RJVcI/VLy65gKoAg8R0+Eep6GbuVjkJq1X4WmI7bLnzSGsM5eG/3XOrcq
 aFpQwnfdnxA6Aax8T0sOh8dpp6XZimHo3GUndbYRpipZd4bFETNVYmeCk
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GRuU7baC
Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: Extend auxbus device
 naming
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

Include segment/domain number in the device name to distinguish
between PCI devices located on different root complexes in
multi-segment configurations. Naming is changed from
ptp_<bus>_<slot>_clk<clock>  to ptp_<domain>_<bus>_<slot>_clk<clock>

v1->v2
Rebase on top of the latest changes

Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 402436b72322..744b102f7636 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2993,8 +2993,9 @@ ice_ptp_auxbus_create_id_table(struct ice_pf *pf, const char *name)
 static int ice_ptp_register_auxbus_driver(struct ice_pf *pf)
 {
 	struct auxiliary_driver *aux_driver;
+	struct pci_dev *pdev = pf->pdev;
 	struct ice_ptp *ptp;
-	char busdev[8] = {};
+	char busdev[16] = {};
 	struct device *dev;
 	char *name;
 	int err;
@@ -3005,8 +3006,10 @@ static int ice_ptp_register_auxbus_driver(struct ice_pf *pf)
 	INIT_LIST_HEAD(&ptp->ports_owner.ports);
 	mutex_init(&ptp->ports_owner.lock);
 	if (ice_is_e810(&pf->hw))
-		sprintf(busdev, "%u_%u_", pf->pdev->bus->number,
-			PCI_SLOT(pf->pdev->devfn));
+		snprintf(busdev, sizeof(busdev), "%u_%u_%u_",
+			 pci_domain_nr(pdev->bus),
+			 pdev->bus->number,
+			 PCI_SLOT(pdev->devfn));
 	name = devm_kasprintf(dev, GFP_KERNEL, "ptp_%sclk%u", busdev,
 			      ice_get_ptp_src_clock_index(&pf->hw));
 	if (!name)
@@ -3210,8 +3213,9 @@ static void ice_ptp_release_auxbus_device(struct device *dev)
 static int ice_ptp_create_auxbus_device(struct ice_pf *pf)
 {
 	struct auxiliary_device *aux_dev;
+	struct pci_dev *pdev = pf->pdev;
 	struct ice_ptp *ptp;
-	char busdev[8] = {};
+	char busdev[16] = {};
 	struct device *dev;
 	char *name;
 	int err;
@@ -3224,8 +3228,10 @@ static int ice_ptp_create_auxbus_device(struct ice_pf *pf)
 	aux_dev = &ptp->port.aux_dev;
 
 	if (ice_is_e810(&pf->hw))
-		sprintf(busdev, "%u_%u_", pf->pdev->bus->number,
-			PCI_SLOT(pf->pdev->devfn));
+		snprintf(busdev, sizeof(busdev), "%u_%u_%u_",
+			 pci_domain_nr(pdev->bus),
+			 pdev->bus->number,
+			 PCI_SLOT(pdev->devfn));
 
 	name = devm_kasprintf(dev, GFP_KERNEL, "ptp_%sclk%u", busdev,
 			      ice_get_ptp_src_clock_index(&pf->hw));
-- 
2.35.3

