Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 61EE4672CD7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 00:47:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C76BD82254;
	Wed, 18 Jan 2023 23:47:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C76BD82254
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674085640;
	bh=d58q9bQlevIpLeSg6w9RA58sdkOPCgq5/iTZBAlQRF0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=27PJ6HHw8Kxh/vcqHGwWTVEdfRSV1oNJRNkEK3nq7LYIcsn3eDSuPQ3YsVHQCxjQK
	 JCkFMycjLgWnsrCzTKqrrLYWTxlcLtCumfVhJGem78JVOvP9uSvkHB2CA7EsgQzEL8
	 P2lcm1DkOj/ltuMK20VPq0kx4yRyk9nYyy/dkKE+z7u3fAdobqAMyFYZuNgafozOwh
	 Np6UVPrs0KqzkGquWKyBNBsTKDS+2J1y2gzT7anDYFpC8P9UhdSMfjhH6dtaNKTV1z
	 fa96sY7oTerMC7M7FsbrobRUhknPMXpS0wnPgHWMe8mPlRv4G08vc5yOAngK/ECcYW
	 OUNQEYWmZbH9A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S-2ASDSSBGlV; Wed, 18 Jan 2023 23:47:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C31BE82236;
	Wed, 18 Jan 2023 23:47:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C31BE82236
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1FD271BF392
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 23:47:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EF22960B1E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 23:47:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EF22960B1E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 969imCJcM8Op for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jan 2023 23:47:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 21B6F6107E
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 21B6F6107E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 23:47:01 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 5319DB81F9E;
 Wed, 18 Jan 2023 23:46:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B012CC433A8;
 Wed, 18 Jan 2023 23:46:57 +0000 (UTC)
From: Bjorn Helgaas <helgaas@kernel.org>
To: linux-pci@vger.kernel.org
Date: Wed, 18 Jan 2023 17:46:09 -0600
Message-Id: <20230118234612.272916-7-helgaas@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230118234612.272916-1-helgaas@kernel.org>
References: <20230118234612.272916-1-helgaas@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674085617;
 bh=Q7STsSb6Kr+DZwWQHS/EQAYfGdVa2M58+aA/Ne1n18Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cIxtHpdDD818WpJWzpuP3a2PWgCskj8A81KrTlMGgFf7ETrwZ44Tjq9Z4c1a3i+Cj
 g6nCxHs2TevgKTpDIhBYE0MfwhGLBuoxiG8Y7G32fxwjTa7H0QYRNp41yqtIUxANFU
 z16nmYiEkuUUJEdnKDqG4z7kElqfRkfgmMSaCqYTNqnaWF4gWYoHCPVU5i2+San+MK
 Z0ZJCFEZ3L20USwjy/WKXOXAxreCc4nVF0pJtdq01l2LHV0cno4jUzKaV43vQ8fivb
 C63oqlF5SIX3bMUB1FZ+rj4agT8L5qr34it77kZzR+hjsRLf/TsBXuDviaqQlnZb0m
 fNpBsh/3U7n3g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=cIxtHpdD
Subject: [Intel-wired-lan] [PATCH 6/9] ice: Remove redundant
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Bjorn Helgaas <bhelgaas@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Bjorn Helgaas <bhelgaas@google.com>

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
---
 drivers/net/ethernet/intel/ice/ice_main.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a9a7f8b52140..9fb68919df02 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4672,7 +4672,6 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 		return err;
 	}
 
-	pci_enable_pcie_error_reporting(pdev);
 	pci_set_master(pdev);
 
 	pf->pdev = pdev;
@@ -4975,7 +4974,6 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	ice_devlink_destroy_regions(pf);
 	ice_deinit_hw(hw);
 err_exit_unroll:
-	pci_disable_pcie_error_reporting(pdev);
 	pci_disable_device(pdev);
 	return err;
 }
@@ -5103,7 +5101,6 @@ static void ice_remove(struct pci_dev *pdev)
 	ice_reset(&pf->hw, ICE_RESET_PFR);
 	pci_wait_for_pending_transaction(pdev);
 	ice_clear_interrupt_scheme(pf);
-	pci_disable_pcie_error_reporting(pdev);
 	pci_disable_device(pdev);
 }
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
