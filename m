Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A15CD7D330B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Oct 2023 13:26:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B7DA7418F3;
	Mon, 23 Oct 2023 11:26:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B7DA7418F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698060367;
	bh=+JqpjfQxQIvA1QmgfQyX2kk6kj13fkdKXLmysznby+0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=au7gKjmvYtSJM4NCOzJU1cfwxYPimRszeGWM1hxC0zv7aVObn+57PtjEHG5iidb3F
	 mISO8uJOrYsggOrl8X8yferdfGzjvkqzWTnGFbb0pxLrhXL4iKm1X+OBYZnjAzT2K2
	 zG/ElNx+hJdVJ73w+V9DLVN+/f/LcuqTtXlrjoIos6oAoAtDPBsnyNSyrLjdtI7qdY
	 Rw1V8g05503rvyUB5RP8t74ZVf5dTj50O+uQvyI08qWGTHJuguZ++JR8RrUudK/9wu
	 fE/bCmo0u3s/eGaikPjgsxecqHFKwsik7cQD7UDxvHkPIsy5lMG87vYkDrLEaTUOPQ
	 dAQBneE4EGChA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oDExrwWPjOqL; Mon, 23 Oct 2023 11:26:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7E3EF41939;
	Mon, 23 Oct 2023 11:26:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E3EF41939
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3BAE21BF2B6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Oct 2023 11:26:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 13D3D418C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Oct 2023 11:26:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 13D3D418C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mVYog3Flw-bt for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Oct 2023 11:26:00 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 451C5418C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Oct 2023 11:26:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 451C5418C8
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 49436B81B98;
 Mon, 23 Oct 2023 11:25:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45013C433C8;
 Mon, 23 Oct 2023 11:25:56 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: stable@vger.kernel.org
Date: Mon, 23 Oct 2023 12:56:42 +0200
Message-ID: <20231023104832.357990560@linuxfoundation.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231023104828.488041585@linuxfoundation.org>
References: <20231023104828.488041585@linuxfoundation.org>
User-Agent: quilt/0.67
X-stable: review
X-Patchwork-Hint: ignore
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1698060356;
 bh=xXvY4xmd2AnMqShJdWovg+G43rAKn8hdI+9YL5/JR7g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=p9JrcLm6joP5AnMckmalDI0P/9GR9I55kAMQ9ce8vpyC9dRPd4k7r12UJI36no4cP
 Na4N3JUxTl6s3tXCDNFiG6hPUfdXzraqu7ZCFUBhgqQIvQEREn/XkJ54k5wKbVjTFz
 li5gcjJ7t0U8wjlMgGcKJKO3onXo/2qJMD3sxC1A=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
 header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=korg
 header.b=p9JrcLm6
Subject: [Intel-wired-lan] [PATCH 6.1 137/196] ice: Remove redundant
 pci_enable_pcie_error_reporting()
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
Cc: Sasha Levin <sashal@kernel.org>, Gurucharan G <gurucharanx.g@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, patches@lists.linux.dev,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

6.1-stable review patch.  If anyone has any objections, please let me know.

------------------

From: Bjorn Helgaas <bhelgaas@google.com>

[ Upstream commit ba153552c18d7eb839ec0bad7d7484e29ba4719c ]

pci_enable_pcie_error_reporting() enables the device to send ERR_*
Messages.  Since f26e58bf6f54 ("PCI/AER: Enable error reporting when AER is
native"), the PCI core does this for all devices during enumeration.

Remove the redundant pci_enable_pcie_error_reporting() call from the
driver.  Also remove the corresponding pci_disable_pcie_error_reporting()
from the driver .remove() path.

Note that this doesn't control interrupt generation by the Root Port; that
is controlled by the AER Root Error Command register, which is managed by
the AER service driver.

Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Stable-dep-of: 0288c3e709e5 ("ice: reset first in crash dump kernels")
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index ae733207d0116..f0f39364819ac 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4723,7 +4723,6 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 		return err;
 	}
 
-	pci_enable_pcie_error_reporting(pdev);
 	pci_set_master(pdev);
 
 	pf->pdev = pdev;
@@ -5016,7 +5015,6 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	ice_devlink_destroy_regions(pf);
 	ice_deinit_hw(hw);
 err_exit_unroll:
-	pci_disable_pcie_error_reporting(pdev);
 	pci_disable_device(pdev);
 	return err;
 }
@@ -5142,7 +5140,6 @@ static void ice_remove(struct pci_dev *pdev)
 	ice_reset(&pf->hw, ICE_RESET_PFR);
 	pci_wait_for_pending_transaction(pdev);
 	ice_clear_interrupt_scheme(pf);
-	pci_disable_pcie_error_reporting(pdev);
 	pci_disable_device(pdev);
 }
 
-- 
2.40.1



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
