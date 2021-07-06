Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E19E3BCF11
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jul 2021 13:27:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 360514056E;
	Tue,  6 Jul 2021 11:27:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q2EyFdna2Ikf; Tue,  6 Jul 2021 11:27:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2686C4055F;
	Tue,  6 Jul 2021 11:27:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A22911BF306
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jul 2021 11:27:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9DE1283880
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jul 2021 11:27:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CGOlKDbE37CC for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jul 2021 11:27:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1B82A83829
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jul 2021 11:27:00 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1A90461D61;
 Tue,  6 Jul 2021 11:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625570819;
 bh=I+FqOmRyObkijY/msE33fTQdbnQudaAaFYANp9Xw0cE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ju+S44O8CKqiVS/948b6X2Oj4LyjKV4p28ClVd+ylW6NG2tWlxBzKfeVKh98y4AvR
 LiMnYnkwNKIpOmwOA9AHeXxdN640MB5pbY/iLSdRRbFtM0W3lNnk0UfVCPoTHcp35M
 sqpRwl9fPaGxsi8wOeS689Sib8ZkJaRkoYjhUd0OgumVdz0SZyNMl3CfpW7Gb1V1wx
 FBsjD4J5+TM9uzyt9/O8wfHe3O3o4ro5IgrWCqatFUGhEnsSXCYB/sgeYsc3Z4XM7R
 pgmy+mV5xaeCsy4zAyXz9NuAzAsqnQHx9OJq7fve2eWm2DM92su//qiDmVWeL/5tJd
 zNqXKJEHLK0Cg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue,  6 Jul 2021 07:25:59 -0400
Message-Id: <20210706112638.2065023-16-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210706112638.2065023-1-sashal@kernel.org>
References: <20210706112638.2065023-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Subject: [Intel-wired-lan] [PATCH AUTOSEL 4.19 16/55] e100: handle eeprom as
 little endian
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
Cc: Sasha Levin <sashal@kernel.org>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jesse Brandeburg <jesse.brandeburg@intel.com>

[ Upstream commit d4ef55288aa2e1b76033717242728ac98ddc4721 ]

Sparse tool was warning on some implicit conversions from
little endian data read from the EEPROM on the e100 cards.

Fix these by being explicit about the conversions using
le16_to_cpu().

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/e100.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/e100.c b/drivers/net/ethernet/intel/e100.c
index 78b44d787638..bf64fab38385 100644
--- a/drivers/net/ethernet/intel/e100.c
+++ b/drivers/net/ethernet/intel/e100.c
@@ -1398,7 +1398,7 @@ static int e100_phy_check_without_mii(struct nic *nic)
 	u8 phy_type;
 	int without_mii;
 
-	phy_type = (nic->eeprom[eeprom_phy_iface] >> 8) & 0x0f;
+	phy_type = (le16_to_cpu(nic->eeprom[eeprom_phy_iface]) >> 8) & 0x0f;
 
 	switch (phy_type) {
 	case NoSuchPhy: /* Non-MII PHY; UNTESTED! */
@@ -1518,7 +1518,7 @@ static int e100_phy_init(struct nic *nic)
 		mdio_write(netdev, nic->mii.phy_id, MII_BMCR, bmcr);
 	} else if ((nic->mac >= mac_82550_D102) || ((nic->flags & ich) &&
 	   (mdio_read(netdev, nic->mii.phy_id, MII_TPISTATUS) & 0x8000) &&
-		(nic->eeprom[eeprom_cnfg_mdix] & eeprom_mdix_enabled))) {
+	   (le16_to_cpu(nic->eeprom[eeprom_cnfg_mdix]) & eeprom_mdix_enabled))) {
 		/* enable/disable MDI/MDI-X auto-switching. */
 		mdio_write(netdev, nic->mii.phy_id, MII_NCONFIG,
 				nic->mii.force_media ? 0 : NCONFIG_AUTO_SWITCH);
@@ -2264,9 +2264,9 @@ static int e100_asf(struct nic *nic)
 {
 	/* ASF can be enabled from eeprom */
 	return (nic->pdev->device >= 0x1050) && (nic->pdev->device <= 0x1057) &&
-	   (nic->eeprom[eeprom_config_asf] & eeprom_asf) &&
-	   !(nic->eeprom[eeprom_config_asf] & eeprom_gcl) &&
-	   ((nic->eeprom[eeprom_smbus_addr] & 0xFF) != 0xFE);
+	   (le16_to_cpu(nic->eeprom[eeprom_config_asf]) & eeprom_asf) &&
+	   !(le16_to_cpu(nic->eeprom[eeprom_config_asf]) & eeprom_gcl) &&
+	   ((le16_to_cpu(nic->eeprom[eeprom_smbus_addr]) & 0xFF) != 0xFE);
 }
 
 static int e100_up(struct nic *nic)
@@ -2922,7 +2922,7 @@ static int e100_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	/* Wol magic packet can be enabled from eeprom */
 	if ((nic->mac >= mac_82558_D101_A4) &&
-	   (nic->eeprom[eeprom_id] & eeprom_id_wol)) {
+	   (le16_to_cpu(nic->eeprom[eeprom_id]) & eeprom_id_wol)) {
 		nic->flags |= wol_magic;
 		device_set_wakeup_enable(&pdev->dev, true);
 	}
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
