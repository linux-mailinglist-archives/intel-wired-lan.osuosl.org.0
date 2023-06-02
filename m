Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 459887205C4
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Jun 2023 17:19:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 359F2405B3;
	Fri,  2 Jun 2023 15:19:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 359F2405B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685719156;
	bh=rA6gA2HgVb/+YMfW5vabHKqdFOBieiwR1T9B45YN3qY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=w1Z3lAzv6BTsTE+bWLqRy0SZH+d47YddA93T8so7Mvx8yzwuOBZK0kYSsWKtVDjrb
	 j/uDziOMHBBxQEtcFOoDL1TQ0hMQDkqmfOGEEvN9wSCbrfsUSlircOoSG44o3OxcT/
	 Yo/Wo9hZ82JuLWqde3sej9YKz7a9VxaMi8OfkyO6mo/pfoJeG7SZjs9vNZIwiDbhos
	 t/wP1CXswCo/LecXVvBXuan0BDAJeKaNduhNueynh/OuDYIMNn5SIsrPK/3xd7xP4a
	 /jzQq1Klrh09H0fSbW1qAZ7I8NfYH1IfvJ0Ojmf//slcCf1HPUKq5qKjfudbKrYWcq
	 LjSOs+t8PcE/g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aT1Y_ktQ0UVR; Fri,  2 Jun 2023 15:19:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 86727400FE;
	Fri,  2 Jun 2023 15:19:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 86727400FE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E836D1BF285
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 15:19:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B572D42724
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 15:19:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B572D42724
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5lEDLE1wboZa for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Jun 2023 15:19:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 776B542716
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 776B542716
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 15:19:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="384175362"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="384175362"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 08:18:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="797622047"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="797622047"
Received: from jb-dev-vm.igk.intel.com (HELO jb-dev-vm.virt.intel.com)
 ([10.237.94.99])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Jun 2023 08:18:42 -0700
From: Jakub Buchocki <jakubx.buchocki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  2 Jun 2023 17:25:42 +0200
Message-Id: <20230602152542.2951486-1-jakubx.buchocki@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685719147; x=1717255147;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8nziEm5HZZH0ZjGiG/Tk2wXLOsXNevYd8g6HOdizYy0=;
 b=gTHW1vv9cxRphJnRK6EZVuSzYAr/D7XcEYXhc88vRQi17rwTqY9YjELn
 P45w7xMlhwwmiPDYfotS2Mcgs4T8Upoyfuuz47LqL1tyy2Wo3hNCaULrp
 TAEMG2EWOb6DH3zWwZTUfrPx/jOIHvv+Jjf2D7gZTQ6yiA86srO2zY1bp
 j9Z/RN/P8fjxco5TITb93p+CnuQOh24tXaIxq/bNL34lYwS+0jiE0SsET
 GwDZbCbElV8ki8bG7DYVM7irVN0emXKJzsvzFFRAAwqn3OLlpHTeJTPz+
 fopuEspAB+GKcSNbmooGOnY2xTzHKqvmCW+c0Zg+H9O+x2vBhc8mBgXPL
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gTHW1vv9
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: Fix ice module unload
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
Cc: jiri@resnulli.us, Jakub Buchocki <jakubx.buchocki@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Clearing the interrupt scheme before PFR reset,
during the removal routine, could cause the hardware
errors and possibly lead to system reboot, as the PF
reset can cause the interrupt to be generated.

Place the call for PFR reset inside ice_deinit_dev(),
wait until reset and all pending transactions are done,
then call ice_clear_interrupt_scheme().

This introduces a PFR reset to multiple error paths.

Additionally, remove the call for the reset from
ice_load() - it will be a part of ice_unload() now.

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
---
v1 -> v2: The approach has been changed to address comments on netdev, to avoid multiple, individual calls to ice_clear_interrupt_scheme().
---
 drivers/net/ethernet/intel/ice/ice_main.c | 16 +++++-----------
 1 file changed, 5 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 03513d4871ab..42c318ceff61 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4802,9 +4802,13 @@ static int ice_init_dev(struct ice_pf *pf)
 static void ice_deinit_dev(struct ice_pf *pf)
 {
 	ice_free_irq_msix_misc(pf);
-	ice_clear_interrupt_scheme(pf);
 	ice_deinit_pf(pf);
 	ice_deinit_hw(&pf->hw);
+
+	/* Service task is already stopped, so call reset directly. */
+	ice_reset(&pf->hw, ICE_RESET_PFR);
+	pci_wait_for_pending_transaction(pf->pdev);
+	ice_clear_interrupt_scheme(pf);
 }
 
 static void ice_init_features(struct ice_pf *pf)
@@ -5094,10 +5098,6 @@ int ice_load(struct ice_pf *pf)
 	struct ice_vsi *vsi;
 	int err;
 
-	err = ice_reset(&pf->hw, ICE_RESET_PFR);
-	if (err)
-		return err;
-
 	err = ice_init_dev(pf);
 	if (err)
 		return err;
@@ -5354,12 +5354,6 @@ static void ice_remove(struct pci_dev *pdev)
 	ice_setup_mc_magic_wake(pf);
 	ice_set_wake(pf);
 
-	/* Issue a PFR as part of the prescribed driver unload flow.  Do not
-	 * do it via ice_schedule_reset() since there is no need to rebuild
-	 * and the service task is already stopped.
-	 */
-	ice_reset(&pf->hw, ICE_RESET_PFR);
-	pci_wait_for_pending_transaction(pdev);
 	pci_disable_device(pdev);
 }
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
