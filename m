Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6BF8A9DE8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 17:03:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B40C341561;
	Thu, 18 Apr 2024 15:03:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4yWOOxhfp8s6; Thu, 18 Apr 2024 15:02:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C332A4028E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713452576;
	bh=31gRuhOgrMOigy+IfblEh9upqYXlujfKut2KdVCFRAU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=xuc99f5nFtq23cDyGSY8FXu5PK+kJ2xpyhZ3mB5uCJHN7P7tk9211MegM2vVKbNsH
	 Jcvmj1j8+qDnss+1mbDKYhES+W8vJKvYl71jEpFTDhNMO9ErC4psSMLVxcqEs0Xjbu
	 CtyKE36Z+svDls9l9daucK1/pfizSLf9xlvfMkvPC63+TcvlALtr1c2Y25RjWOI8er
	 oeCsCLqXPQGMo16y/uzexjrRyXtR1xrF8dAhxUul56W14UdlQsnI1SYRCUVv8xfr26
	 3CxmR1nlosZoWFLBAVO6Y/Zze5x8tK6VLP51ux/edDq0q/mnxzypCw0SrCC85mA8A1
	 1/vAx+zy/i5Lg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C332A4028E;
	Thu, 18 Apr 2024 15:02:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3E1541BF286
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 11:03:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 32C8F415C6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 11:03:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id voLKrpPJbMUr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 11:03:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 43900415BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43900415BD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 43900415BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 11:03:47 +0000 (UTC)
X-CSE-ConnectionGUID: 29BRTD+8S8mAJHh/SU7dqQ==
X-CSE-MsgGUID: gb3lOFo8RamWP29DVnn9QA==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="12763757"
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="12763757"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 04:03:46 -0700
X-CSE-ConnectionGUID: rp+MM2n5QnW6wQO2sVPBdw==
X-CSE-MsgGUID: q1Uq+MiOSmiGEPggHSDVwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="23021657"
Received: from unknown (HELO localhost.igk.intel.com) ([10.211.13.141])
 by fmviesa008.fm.intel.com with ESMTP; 18 Apr 2024 04:03:45 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 18 Apr 2024 13:03:18 +0200
Message-Id: <20240418110318.67202-1-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 18 Apr 2024 15:02:49 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713438227; x=1744974227;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eAVw/Rm28PRAbnn5C8EDuezCyUUUpKWahTorxk/3Nt4=;
 b=i9+ZVBXGig7RWEOV9oZbPQa9z55gETR9IEjcCzAxlr3rYyODJf2uZ01b
 atyNvx93LD6Xn3WYqznsHfqsfPpg3pXqpAIkvHX1F6IP53NBhjcs9cA4+
 NImwdp2PzFapikMoZi5yYz7DsK0ZWJyGVhrV0CLj0/msbSzsjZEZky6BH
 fAgNK6grtvTUdLEE3VV88pwrwfx2yYi+DJcN2gHYeR7e3mrkvOsO3mv8O
 st8RZD7uPiH2ldPIfzHZjWHyWMs1VKyEyZq+/MGG0tdkscYMEHG+QsOCd
 XJLj08ilccsw9oF/WH6zV8fvUBQ6+1cKsanwuV+iJub+TBuBKuTZ/N5Ah
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=i9+ZVBXG
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: Extend auxbus device naming
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
multi-segment configurations

Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 0f17fc1181d2..54fe1931d598 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2893,6 +2893,7 @@ ice_ptp_auxbus_create_id_table(struct ice_pf *pf, const char *name)
 static int ice_ptp_register_auxbus_driver(struct ice_pf *pf)
 {
 	struct auxiliary_driver *aux_driver;
+	struct pci_dev *pdev = pf->pdev;
 	struct ice_ptp *ptp;
 	struct device *dev;
 	char *name;
@@ -2903,8 +2904,9 @@ static int ice_ptp_register_auxbus_driver(struct ice_pf *pf)
 	aux_driver = &ptp->ports_owner.aux_driver;
 	INIT_LIST_HEAD(&ptp->ports_owner.ports);
 	mutex_init(&ptp->ports_owner.lock);
-	name = devm_kasprintf(dev, GFP_KERNEL, "ptp_aux_dev_%u_%u_clk%u",
-			      pf->pdev->bus->number, PCI_SLOT(pf->pdev->devfn),
+	name = devm_kasprintf(dev, GFP_KERNEL, "ptp_aux_dev_%u_%u_%u_clk%u",
+			      pci_domain_nr(pdev->bus), pdev->bus->number,
+			      PCI_SLOT(pdev->devfn),
 			      ice_get_ptp_src_clock_index(&pf->hw));
 	if (!name)
 		return -ENOMEM;
@@ -3106,6 +3108,7 @@ static void ice_ptp_release_auxbus_device(struct device *dev)
 static int ice_ptp_create_auxbus_device(struct ice_pf *pf)
 {
 	struct auxiliary_device *aux_dev;
+	struct pci_dev *pdev = pf->pdev;
 	struct ice_ptp *ptp;
 	struct device *dev;
 	char *name;
@@ -3118,8 +3121,9 @@ static int ice_ptp_create_auxbus_device(struct ice_pf *pf)
 
 	aux_dev = &ptp->port.aux_dev;
 
-	name = devm_kasprintf(dev, GFP_KERNEL, "ptp_aux_dev_%u_%u_clk%u",
-			      pf->pdev->bus->number, PCI_SLOT(pf->pdev->devfn),
+	name = devm_kasprintf(dev, GFP_KERNEL, "ptp_aux_dev_%u_%u_%u_clk%u",
+			      pci_domain_nr(pdev->bus), pdev->bus->number,
+			      PCI_SLOT(pdev->devfn),
 			      ice_get_ptp_src_clock_index(&pf->hw));
 	if (!name)
 		return -ENOMEM;
-- 
2.35.3

