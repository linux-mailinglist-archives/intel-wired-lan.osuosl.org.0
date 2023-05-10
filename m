Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AC00B6FE09A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 May 2023 16:41:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4782F6FE75;
	Wed, 10 May 2023 14:41:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4782F6FE75
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683729700;
	bh=1qGngg2dw/ZyS9pVRrHM4cuOpkVWqZ7ch9kbJrB6mYw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=JZJ+UPMiXhQGVM7NWjt+KVQuJEG5hd+KP5PsLK1F3MilrLSu0VJeRWSuFKr8XNQVP
	 I61+hn1Y5UQNd9lW6RhS3Q/ZSqyuJOmgwzKlnOLmLQJ+DMm+3D4E+7F19m1CQoHvxE
	 dif76hnNGdDquiTq7wVyt/PUxIl73zHPZxFnIRMvAZaDfMFPamJ/mgxs65k0rpzfI6
	 4KNIp2N/G5mMPTmz83mA3ufbb5ENFZB2a+RdNQIHHiqLhrb8+/uvVdR7mnXqlj0zZJ
	 WJCzBBcSkX9jQLnoH1naBLeSs7HA4Y1XqNrhfI+k6pSEl8fb7xDrKPFZcJpoU6H1gE
	 BIEoc6vmS6ZDQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z8XpnDM5cEXy; Wed, 10 May 2023 14:41:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6AA9B605A6;
	Wed, 10 May 2023 14:41:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6AA9B605A6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 79C6C1BF2A6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 May 2023 09:19:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4DC2E40414
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 May 2023 09:19:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4DC2E40414
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YvjkdBKwZzi5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 May 2023 09:19:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 446DE403BE
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 446DE403BE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 May 2023 09:19:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="334635002"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="334635002"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 02:19:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="811065062"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="811065062"
Received: from jb-dev-vm.igk.intel.com (HELO jb-dev-vm.virt.intel.com)
 ([10.237.94.99])
 by fmsmga002.fm.intel.com with ESMTP; 10 May 2023 02:19:31 -0700
From: Jakub Buchocki <jakubx.buchocki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 10 May 2023 11:25:30 +0200
Message-Id: <20230510092530.2103031-1-jakubx.buchocki@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 10 May 2023 14:41:29 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683710374; x=1715246374;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=J+aGnbJE0m+K7qrXXHDN9gX1DqamBYEdrdIBHGkloho=;
 b=EI906cHKFnvimVYAMDE1QNKXvT4hHuyYBaA1kTR0548F+ZwF2SbVt3qa
 SbJ2u888tKmfzhmgChFK4irsRi1PrEiKk+a26N08Kf4gnPacpH+3X0MfJ
 WDZFd95MjtZ9jp/nNMakBHW15/dEVoytD+jVwgF60PXBxbTKeZbuzNtPP
 BjV/JKJ/8di4MTN2fw2lZQagZzMcOTkd/rzLz02BveVT2DDC/LqGyRMIh
 ZTasVJd9KTHM+A2iaW+H74BYVRRWjeTQxyyXLC5RJaN5HkIVod+/DI7VE
 Rq/XNv1LGaLxS/UBowBpwdXYh0+/iWgBj7Rn20RgF5TPn/S/N9aQT27qB
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EI906cHK
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: Fix ice module unload
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
Cc: Jakub Buchocki <jakubx.buchocki@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Clearing interrupt scheme before PFR reset, during the removal routine,
could cause the hardware errors and possibly lead to system reboot, as
the PF reset can cause the interrupt to be generated.
Move clearing interrupt scheme from device deinitialization subprocedure,
and call it directly in particular routines. In ice_remove(), call the
ice_clear_interrupt_scheme() after the PFR is complete and all pending
transactions are done.

Error example:
[   75.229328] ice 0000:ca:00.1: Failed to read Tx Scheduler Tree - User Selection data from flash
[   77.571315] {1}[Hardware Error]: Hardware error from APEI Generic Hardware Error Source: 1
[   77.571418] {1}[Hardware Error]: event severity: recoverable
[   77.571459] {1}[Hardware Error]:  Error 0, type: recoverable
[   77.571500] {1}[Hardware Error]:   section_type: PCIe error
[   77.571540] {1}[Hardware Error]:   port_type: 4, root port
[   77.571580] {1}[Hardware Error]:   version: 3.0
[   77.571615] {1}[Hardware Error]:   command: 0x0547, status: 0x4010
[   77.571661] {1}[Hardware Error]:   device_id: 0000:c9:02.0
[   77.571703] {1}[Hardware Error]:   slot: 25
[   77.571736] {1}[Hardware Error]:   secondary_bus: 0xca
[   77.571773] {1}[Hardware Error]:   vendor_id: 0x8086, device_id: 0x347a
[   77.571821] {1}[Hardware Error]:   class_code: 060400
[   77.571858] {1}[Hardware Error]:   bridge: secondary_status: 0x2800, control: 0x0013
[   77.572490] pcieport 0000:c9:02.0: AER: aer_status: 0x00200000, aer_mask: 0x00100020
[   77.572870] pcieport 0000:c9:02.0:    [21] ACSViol                (First)
[   77.573222] pcieport 0000:c9:02.0: AER: aer_layer=Transaction Layer, aer_agent=Receiver ID
[   77.573554] pcieport 0000:c9:02.0: AER: aer_uncor_severity: 0x00463010
[   77.691273] {2}[Hardware Error]: Hardware error from APEI Generic Hardware Error Source: 1
[   77.691738] {2}[Hardware Error]: event severity: recoverable
[   77.691971] {2}[Hardware Error]:  Error 0, type: recoverable
[   77.692192] {2}[Hardware Error]:   section_type: PCIe error
[   77.692403] {2}[Hardware Error]:   port_type: 4, root port
[   77.692616] {2}[Hardware Error]:   version: 3.0
[   77.692825] {2}[Hardware Error]:   command: 0x0547, status: 0x4010
[   77.693032] {2}[Hardware Error]:   device_id: 0000:c9:02.0
[   77.693238] {2}[Hardware Error]:   slot: 25
[   77.693440] {2}[Hardware Error]:   secondary_bus: 0xca
[   77.693641] {2}[Hardware Error]:   vendor_id: 0x8086, device_id: 0x347a
[   77.693853] {2}[Hardware Error]:   class_code: 060400
[   77.694054] {2}[Hardware Error]:   bridge: secondary_status: 0x0800, control: 0x0013
[   77.719115] pci 0000:ca:00.1: AER: can't recover (no error_detected callback)
[   77.719140] pcieport 0000:c9:02.0: AER: device recovery failed
[   77.719216] pcieport 0000:c9:02.0: AER: aer_status: 0x00200000, aer_mask: 0x00100020
[   77.719390] pcieport 0000:c9:02.0:    [21] ACSViol                (First)
[   77.719557] pcieport 0000:c9:02.0: AER: aer_layer=Transaction Layer, aer_agent=Receiver ID
[   77.719723] pcieport 0000:c9:02.0: AER: aer_uncor_severity: 0x00463010

Fixes: 5b246e533d01 ("ice: split probe into smaller functions")
Signed-off-by: Jakub Buchocki <jakubx.buchocki@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 0d8b8c6f9bd3..42435d124822 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4794,7 +4794,6 @@ static int ice_init_dev(struct ice_pf *pf)
 static void ice_deinit_dev(struct ice_pf *pf)
 {
 	ice_free_irq_msix_misc(pf);
-	ice_clear_interrupt_scheme(pf);
 	ice_deinit_pf(pf);
 	ice_deinit_hw(&pf->hw);
 }
@@ -5063,6 +5062,7 @@ static int ice_init(struct ice_pf *pf)
 	ice_dealloc_vsis(pf);
 err_alloc_vsis:
 	ice_deinit_dev(pf);
+	ice_clear_interrupt_scheme(pf);
 	return err;
 }
 
@@ -5090,6 +5090,8 @@ int ice_load(struct ice_pf *pf)
 	if (err)
 		return err;
 
+	ice_clear_interrupt_scheme(pf);
+
 	err = ice_init_dev(pf);
 	if (err)
 		return err;
@@ -5124,6 +5126,7 @@ int ice_load(struct ice_pf *pf)
 	ice_vsi_decfg(ice_get_main_vsi(pf));
 err_vsi_cfg:
 	ice_deinit_dev(pf);
+	ice_clear_interrupt_scheme(pf);
 	return err;
 }
 
@@ -5243,6 +5246,7 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	ice_deinit_eth(pf);
 err_init_eth:
 	ice_deinit(pf);
+	ice_clear_interrupt_scheme(pf);
 err_init:
 	pci_disable_device(pdev);
 	return err;
@@ -5352,6 +5356,7 @@ static void ice_remove(struct pci_dev *pdev)
 	 */
 	ice_reset(&pf->hw, ICE_RESET_PFR);
 	pci_wait_for_pending_transaction(pdev);
+	ice_clear_interrupt_scheme(pf);
 	pci_disable_device(pdev);
 }
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
