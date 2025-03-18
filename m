Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E928DA669B8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Mar 2025 06:44:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 53BE240E4D;
	Tue, 18 Mar 2025 05:44:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KPl-2yhiDlN6; Tue, 18 Mar 2025 05:44:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E2AE40E44
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742276679;
	bh=wu467qPfyH3kGJlVMjZTSMd+botWafhgYWCKohTiF/A=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=B0qRMyLjkol80pPUQURXUY1PN9QUmwuPoq/Ybe5nFSIWmeIX/UuJj4HmIEyLYrOeQ
	 Vj12uDSeZRX9W4Y4b69hflAjwoLLWIolWveIzn8SSxqo/kZq4NGl/FU5mDoj2h+zFt
	 bMbJp48OJlPNGPUe0sCWr5NpKh3baIyWOdOYpOe1E6wGtNs4ap7/QobRDnS/CGQAiQ
	 pglznDcVFfTBOIO61e4zOK+FATyn2OEXBvBv87gKACUpyf4L2lwpyx+PqZoA5/mVmX
	 FAuygqecvcPdPHk9iKsdJHnTl8RAm7igLEMf8bGFHPPX1DcXEXAQBrNFIFJ1y0cj79
	 xmA3/09piyqFg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E2AE40E44;
	Tue, 18 Mar 2025 05:44:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id F02CBD5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 05:44:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DF18E400FF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 05:44:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 81kxWlZbOIQ6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Mar 2025 05:44:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 77B1D40A9C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 77B1D40A9C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 77B1D40A9C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 05:44:34 +0000 (UTC)
X-CSE-ConnectionGUID: Ncnhem2BSYSQvR7DV8Bmiw==
X-CSE-MsgGUID: Xpb1IJPmSIOq6/JTFJEnkA==
X-IronPort-AV: E=McAfee;i="6700,10204,11376"; a="43281361"
X-IronPort-AV: E=Sophos;i="6.14,256,1736841600"; d="scan'208";a="43281361"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 22:44:34 -0700
X-CSE-ConnectionGUID: A6ecuG6OTUifUqxqisT1qA==
X-CSE-MsgGUID: MCyqfzBzTq68hRyHhrCF9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,256,1736841600"; d="scan'208";a="122324625"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by fmviesa008.fm.intel.com with ESMTP; 17 Mar 2025 22:44:33 -0700
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 17 Mar 2025 22:42:02 -0700
Message-Id: <20250318054202.17405-1-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742276676; x=1773812676;
 h=from:to:cc:subject:date:message-id;
 bh=1ZdTYdh9OBD8bz6WNb3r2HqcCV8AD+25uxF+8QeNH2c=;
 b=jx4P4jB1QiVKAdw5Grrg9kt7N/XcoUJ7hfxk/s972lbElw6RwaQclwGM
 efHeWCZR1zUTSJuoJe/slqcfj/iWA6rV5gIzNyrZWeorUza4v8AEhcVQb
 Tt6OgfWZkiFlISgZ9bj6mwmdho3Sqbr4K6cP3Cum3gaLWZkypImufgzoF
 ZGOlB8/ugAe04vvs5+/XOZyySPuQwhlGdfJAx1mFLU7LjJ8EXCf975t6R
 47ioXm0JFzVTYeky+UDA01wGkFDFXuQa5BFwCCQvbGQ/SU8hOJ3QFxYeb
 ayYisW9jw8Y1hOu4PNCPOOxOBoEMscv5V9C2/DYuXFKfgV3yn3vhLkKrW
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jx4P4jB1
Subject: [Intel-wired-lan] [PATCH iwl-net v2] idpf: fix adapter NULL pointer
 dereference on reboot
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Cc: willemb@google.com, pabeni@redhat.com, netdev@vger.kernel.org,
 yuma@redhat.com, Aleksandr.Loktionov@intel.com, edumazet@google.com,
 madhu.chittim@intel.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 michal.swiatkowski@linux.intel.com, kuba@kernel.org, decot@google.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

With SRIOV enabled, idpf ends up calling into idpf_remove() twice.
First via idpf_shutdown() and then again when idpf_remove() calls into
sriov_disable(), because the VF devices use the idpf driver, hence the
same remove routine. When that happens, it is possible for the adapter
to be NULL from the first call to idpf_remove(), leading to a NULL
pointer dereference.

echo 1 > /sys/class/net/<netif>/device/sriov_numvfs
reboot

BUG: kernel NULL pointer dereference, address: 0000000000000020
...
RIP: 0010:idpf_remove+0x22/0x1f0 [idpf]
...
? idpf_remove+0x22/0x1f0 [idpf]
? idpf_remove+0x1e4/0x1f0 [idpf]
pci_device_remove+0x3f/0xb0
device_release_driver_internal+0x19f/0x200
pci_stop_bus_device+0x6d/0x90
pci_stop_and_remove_bus_device+0x12/0x20
pci_iov_remove_virtfn+0xbe/0x120
sriov_disable+0x34/0xe0
idpf_sriov_configure+0x58/0x140 [idpf]
idpf_remove+0x1b9/0x1f0 [idpf]
idpf_shutdown+0x12/0x30 [idpf]
pci_device_shutdown+0x35/0x60
device_shutdown+0x156/0x200
...

Replace the direct idpf_remove() call in idpf_shutdown() with
idpf_vc_core_deinit() and idpf_deinit_dflt_mbx(), which perform
the bulk of the cleanup, such as stopping the init task, freeing IRQs,
destroying the vports and freeing the mailbox. This avoids the calls to
sriov_disable() in addition to a small netdev cleanup, and destroying
workqueues, which don't seem to be required on shutdown.

Reported-by: Yuying Ma <yuma@redhat.com>
Fixes: e850efed5e15 ("idpf: add module register and probe functionality")
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
---
Changelog:
v2:
- Updated the description to clarify the path leading up to the crash,
  and the difference in the logic between remove and shutdown as result
  of this change.

v1:
https://lore.kernel.org/intel-wired-lan/20250307003956.22018-1-emil.s.tantilov@intel.com/
---
 drivers/net/ethernet/intel/idpf/idpf_main.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
index b6c515d14cbf..bec4a02c5373 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_main.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -87,7 +87,11 @@ static void idpf_remove(struct pci_dev *pdev)
  */
 static void idpf_shutdown(struct pci_dev *pdev)
 {
-	idpf_remove(pdev);
+	struct idpf_adapter *adapter = pci_get_drvdata(pdev);
+
+	cancel_delayed_work_sync(&adapter->vc_event_task);
+	idpf_vc_core_deinit(adapter);
+	idpf_deinit_dflt_mbx(adapter);
 
 	if (system_state == SYSTEM_POWER_OFF)
 		pci_set_power_state(pdev, PCI_D3hot);
-- 
2.17.2

