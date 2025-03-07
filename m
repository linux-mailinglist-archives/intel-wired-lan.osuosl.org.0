Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 21357A55C1C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Mar 2025 01:42:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB77E81342;
	Fri,  7 Mar 2025 00:42:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ChCZLmN3ph62; Fri,  7 Mar 2025 00:42:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1244383F35
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741308152;
	bh=bhc5nwx82RP7ofX73wWdAQIuJ13hb4tO9HahxL+hx2w=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=3UydwLvRH0b6dt0Pxi3AcS+WIDUR25PAPdOw+bhXEqs/hUu3A+maY7dUAXBc39g/C
	 K/ZdObCVZwxGN5LYtQViHFa4ltQk7CcB4hrxHYN2OF9T5iu0aTnZTdMIf+Yp3vmBgE
	 9G820xQNs4Hkk0admPewQd9qAdapOuKq+kY83vbnR1d8IXVHfBZYLxL1or/D7dhAuH
	 vQd6M+KWlMdwPE6zSOQRDgqCEZ04uWKP9GSBM95Komw0syAtnXP8KjMkAogsbQUKhk
	 iMaRNEjpsMA09zN9S+gaUAXtz1GQBd5hOG8j4syzktcgbi1T8lRTLKJ0WNn2Jn97jY
	 wB+0lKmGs3Kig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1244383F35;
	Fri,  7 Mar 2025 00:42:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id AB74971F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 00:42:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8EE8440BA5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 00:42:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EEmisllvc4Er for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Mar 2025 00:42:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 35723405B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 35723405B9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 35723405B9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 00:42:27 +0000 (UTC)
X-CSE-ConnectionGUID: Q+aFqwI7SOef/PsiAYsiig==
X-CSE-MsgGUID: hPKuBp8gTo2mKqg2dktDXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="53738397"
X-IronPort-AV: E=Sophos;i="6.14,227,1736841600"; d="scan'208";a="53738397"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 16:42:27 -0800
X-CSE-ConnectionGUID: 6SfQAwSfQseC6Y457pir9w==
X-CSE-MsgGUID: Ox9RJNcLQHOnu5XjBxUFTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="119094386"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by orviesa010.jf.intel.com with ESMTP; 06 Mar 2025 16:42:27 -0800
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  6 Mar 2025 16:39:56 -0800
Message-Id: <20250307003956.22018-1-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741308149; x=1772844149;
 h=from:to:cc:subject:date:message-id;
 bh=caDuKs0AuG92X3nJAsyNu2lZqkO2rfULuHB5rDkSwD4=;
 b=jAL54k6qwTb0dDAiX6eySfN2i3Kzxiuf6o4kXitcJBKHd94atKCsODf6
 X+gGpf/ajlOJl+X/8Q16ygwbgyUO9YddaJzeg4Yt2bBPGtg95PxV+hETc
 1D9SLqYKjpPatgazqHzr0iftyKK8GNk5QF6aDJjTy6APaazNrKgmKwFbB
 P8KDyc5xzwDLsRB9IuxqurpRUF/Eom6btw3A8bQWS7lbVaUnQrR5QHdGg
 0UdGFZU4/TbpIIkpFvRw7aTC6ofuAe2/Mu98q56Be5uDRs8ZLZZ25Onu+
 Ha4j9p3mAPrn1T0dFVKUMieVP+b5MNW5yI6d0h1BBGKLRzK/IBDAoMqrU
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jAL54k6q
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: fix adapter NULL pointer
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
 madhu.chittim@intel.com, anthony.l.nguyen@intel.com, kuba@kernel.org,
 decot@google.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Driver calls idpf_remove() from idpf_shutdown(), which can end up
calling idpf_remove() again when disabling SRIOV.

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
destroying the vports and freeing the mailbox.

Reported-by: Yuying Ma <yuma@redhat.com>
Fixes: e850efed5e15 ("idpf: add module register and probe functionality")
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
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

