Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE636D259
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jul 2019 18:50:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 08D608787C;
	Thu, 18 Jul 2019 16:50:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id La2ub2yYty96; Thu, 18 Jul 2019 16:50:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3BDEE87880;
	Thu, 18 Jul 2019 16:50:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 06E4A1BF308
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jul 2019 02:17:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0355820403
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jul 2019 02:17:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UHBnuHdSBDFi for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jul 2019 02:17:00 +0000 (UTC)
X-Greylist: delayed 00:08:09 by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by silver.osuosl.org (Postfix) with ESMTPS id C2F5A2279E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jul 2019 02:17:00 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id e189so20163314oib.11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jul 2019 19:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fredlawl-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=pYIGokAnHiTaXGPTQHk0GqCr5VmgXxhysOu7yDy4mE8=;
 b=mTXnqU5jjT+d2PiAwqfS+oHZeBwddIfIzbgwJr5HJVj8OZu3Ejhi+A9hQAi3E1QXSB
 p6yso+LASKDHoVMvrSZNUJW8Qr/lVybvydLGLZG3dAWCnsQe9rQVN9QPaP7cXSOOm7xG
 WeqBJrZ7jJE0djFZh+4thTZM1/E0H6ZFc4+kAD5x48/AIdMh8SWZL9dZtCJBm9OVm3eH
 hJBKA/kvNzNJnG5RfU9oPb10jIKyI3UyWzoAX2uJ9/ndXvbz/1w5O7at+bEgY29vT8Un
 cx5tgXraKzGDqNnRvqxLNfVGtKJDyu6t+DvKjYCl0HBdgLrZT/IlUcw4u2gwiB4nTnZ7
 vcMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=pYIGokAnHiTaXGPTQHk0GqCr5VmgXxhysOu7yDy4mE8=;
 b=TRR9NWKTQfrGys/EEXEaHOkci4e7ehhlOV3bPT8OWCs/h1wpWA/Ka8YARfvSx5EM9Y
 F404Jau1tw61WPSMEtBa8d+3SWwdYLbTy/YLeZnV9PSW8hVb9LdFNsjQpSi/uoLdZuTN
 NipOoilIabrqcv8smBfjJVMizy5XcFeW1TUY5NC9s/LgICgTceR8ic85Uv/BzG3mD3F0
 WlNw/8tfN/bOHZruAxn2/gfd2I2t/a32giRqL5lMqT6Wg2txEewQx9VXDtCM3mmgTORe
 KSMMmt0HJoWt/eP+S7iX0EOH28eKf1ChZVGXijRwXbmOlBodZQRsBx8LDyHxbSfxqs3D
 vOcQ==
X-Gm-Message-State: APjAAAX8iBl2gW3eWPty9IERof5Yf2PAs/ljDY3yDeBzCwCczoSfhlBS
 K6Z0ayaUtmnJp2raryAw7ANnz3Z/gJPinQ==
X-Google-Smtp-Source: APXvYqyU0Pfb/5vUCO66TmKbYlCzgLlHqd41g6a+kdgNWxNg9gHANJ35Dgn3P91SIentrM9mHXMU4w==
X-Received: by 2002:aca:382:: with SMTP id 124mr19829874oid.80.1563415730827; 
 Wed, 17 Jul 2019 19:08:50 -0700 (PDT)
Received: from linux.fredlawl.com ([2600:1700:18a0:11d0:18af:e893:6cb0:139a])
 by smtp.gmail.com with ESMTPSA id
 93sm9102146ota.77.2019.07.17.19.08.49
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 17 Jul 2019 19:08:50 -0700 (PDT)
From: Frederick Lawler <fred@fredlawl.com>
To: jeffrey.t.kirsher@intel.com
Date: Wed, 17 Jul 2019 21:07:39 -0500
Message-Id: <20190718020745.8867-4-fred@fredlawl.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190718020745.8867-1-fred@fredlawl.com>
References: <20190718020745.8867-1-fred@fredlawl.com>
X-Mailman-Approved-At: Thu, 18 Jul 2019 16:50:11 +0000
Subject: [Intel-wired-lan] [PATCH] igc: Prefer pcie_capability_read_word()
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
Cc: bhelgaas@google.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Frederick Lawler <fred@fredlawl.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit 8c0d3a02c130 ("PCI: Add accessors for PCI Express Capability")
added accessors for the PCI Express Capability so that drivers didn't
need to be aware of differences between v1 and v2 of the PCI
Express Capability.

Replace pci_read_config_word() and pci_write_config_word() calls with
pcie_capability_read_word() and pcie_capability_write_word().

Signed-off-by: Frederick Lawler <fred@fredlawl.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 34fa0e60a780..8e8ad07a5776 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -3891,13 +3891,11 @@ void igc_write_pci_cfg(struct igc_hw *hw, u32 reg, u16 *value)
 s32 igc_read_pcie_cap_reg(struct igc_hw *hw, u32 reg, u16 *value)
 {
 	struct igc_adapter *adapter = hw->back;
-	u16 cap_offset;
 
-	cap_offset = pci_find_capability(adapter->pdev, PCI_CAP_ID_EXP);
-	if (!cap_offset)
+	if (!pci_is_pcie(adapter->pdev))
 		return -IGC_ERR_CONFIG;
 
-	pci_read_config_word(adapter->pdev, cap_offset + reg, value);
+	pcie_capability_read_word(adapter->pdev, reg, value);
 
 	return IGC_SUCCESS;
 }
@@ -3905,13 +3903,11 @@ s32 igc_read_pcie_cap_reg(struct igc_hw *hw, u32 reg, u16 *value)
 s32 igc_write_pcie_cap_reg(struct igc_hw *hw, u32 reg, u16 *value)
 {
 	struct igc_adapter *adapter = hw->back;
-	u16 cap_offset;
 
-	cap_offset = pci_find_capability(adapter->pdev, PCI_CAP_ID_EXP);
-	if (!cap_offset)
+	if (!pci_is_pcie(adapter->pdev))
 		return -IGC_ERR_CONFIG;
 
-	pci_write_config_word(adapter->pdev, cap_offset + reg, *value);
+	pcie_capability_write_word(adapter->pdev, reg, *value);
 
 	return IGC_SUCCESS;
 }
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
