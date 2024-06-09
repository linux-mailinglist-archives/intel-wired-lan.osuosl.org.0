Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD76902606
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jun 2024 17:51:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6442760648;
	Mon, 10 Jun 2024 15:51:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WXerFS0IcDbo; Mon, 10 Jun 2024 15:51:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D7D2E607A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718034706;
	bh=W/pWqNS/u9ahkqK+oeNI1+gm1pKxYW6kk8vHELluENw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=zxENHyFFmbOizQKotFrWMFV/WkSSta2tN1jDUEkmLlpocepjq4iEnXA93Sqg3gTW4
	 onaAIDiDrqPagtZceu2bG33zaDUaBUP9LoKr6n5hYwx14B2chKyZ3RFTSowky0LnE5
	 BSGDQUxqfpCNkix5Ub5SQi32Puc56Ab3QpXaBV8xfd8zkpn37bcs1Zfm2zPOTy6tQw
	 3NmOSMQaIKxJBFGDSNZSmSSqnIGdgh3KpDD5WILonEP8iCBXBMA6h9IWljY2Pl4OQ/
	 lLVUKS7g/H49bFTlbQ9n9yojUFa2SXrTTq/uwHBxNTm5j0V8BGh61EAVFSDzKJ5HeV
	 05QgJHLs6t7WA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D7D2E607A8;
	Mon, 10 Jun 2024 15:51:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 346D81BF20D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 08:59:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 20DA240429
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 08:59:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EnpTaeN5b6XQ for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Jun 2024 08:59:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::52a; helo=mail-pg1-x52a.google.com;
 envelope-from=m8809301@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4B9BA40106
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B9BA40106
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com
 [IPv6:2607:f8b0:4864:20::52a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4B9BA40106
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 08:59:56 +0000 (UTC)
Received: by mail-pg1-x52a.google.com with SMTP id
 41be03b00d2f7-6e57506bb2dso1116888a12.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 09 Jun 2024 01:59:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1717923595; x=1718528395;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=W/pWqNS/u9ahkqK+oeNI1+gm1pKxYW6kk8vHELluENw=;
 b=I7peIJJrsKT0aa6Y4WUGCuW2l+LeIfYUvK1ccLXQJE9fGTxN/EQp3G8yspDBll/sXx
 TwmbMysWWFaKtfJ2aJbJxJ3X86zFAVoIbhs6QIk+/d7i5cV1UzmPUOAMDbWjUKLSfcAk
 trAvaru5oBJJt7AeO1NovhzOdhUN9pFLWCTKnvGouSxlbLiqe+V21YMQM0HPtvaVIrW7
 QotZQODrS5pU1lvjy8lW9Ub1REENLRTvzaF0IgsLRhV2xzNP1uJVdT+FdZC5UueuWjjU
 fjT//GkTQbvjlg1LKtWfRPOGec6hZP0Oxsk9OiHFaRdepyY6bwlv3Ulq1f2hCNa4CjYM
 Kcqg==
X-Forwarded-Encrypted: i=1;
 AJvYcCV7U5ooCz0DatKHe5NAeq7RcoVHUO8ekQb8bgXhbxYAO6zKbg8JE5Tq7cbie5g2+wwsrHZLQF9ArMbmUKJZ9nUWBpasjApmzOzTv6N69MH2hg==
X-Gm-Message-State: AOJu0YxN6+KFt0noI9EPhxPGcC3olqAzwWCZ2pE3yuT4U7hLtorquWUd
 uJgfbyVLu3M9bqY/H1BtiO9fEHZSu804OESQJ7TgqtqrNlo5MJ0F
X-Google-Smtp-Source: AGHT+IEI9kRXr1suV4pE3NprZ4CoN8wyS6LC7SJ3RhSIDWAssP5sDEavsZHw0UiQmhhha2LSfypdZg==
X-Received: by 2002:a05:6300:8088:b0:1b0:812:ab3e with SMTP id
 adf61e73a8af0-1b2f9c64118mr6698217637.38.1717923595328; 
 Sun, 09 Jun 2024 01:59:55 -0700 (PDT)
Received: from richard-1-2.. (223-137-2-26.emome-ip.hinet.net. [223.137.2.26])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2c304fe9622sm251515a91.18.2024.06.09.01.59.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 09 Jun 2024 01:59:54 -0700 (PDT)
From: Richard chien <m8809301@gmail.com>
X-Google-Original-From: Richard chien <richard.chien@hpe.com>
To: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Date: Sun,  9 Jun 2024 16:57:35 +0800
Message-Id: <20240609085735.6253-1-richard.chien@hpe.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 10 Jun 2024 15:51:42 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1717923595; x=1718528395; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=W/pWqNS/u9ahkqK+oeNI1+gm1pKxYW6kk8vHELluENw=;
 b=XSAOLqhFZ94hBXB9BBJNa/YHCmBu01vlsdUiZ8mqVAmJXcSBvA/j/WiuiudM8n+fQV
 rANXB8UjSXYzydXCoy9I5VTe5OHuQ4qICPTZ+ihvLvvRxp7kZTGl0hAfTV2C4oBKctS+
 U1VDIJLfeF4TvsA9OB8Vl9SXb1+ysncK2UqTe9lQBfWc0vNzbVLz1XXndgFN3u7hNSxo
 w4z9IiU2hxIP7VJ4CI2nbPJ+Fh7jCBQJzGsP4tlYBoOFDS1W19YXOSpqOKrvs0KPPsJY
 7XlsrexX2BhUDo01vscvyBvRaTRX8PkE1tKKlotds+gWOSBO2DULO7x3KK8LLTwR5Sdf
 UV5g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=XSAOLqhF
Subject: [Intel-wired-lan] [PATCH] ixgbe: Add support for firmware update
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
Cc: linux-kernel@vger.kernel.org, Richard chien <richard.chien@hpe.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch adds support for firmware update to the in-tree ixgbe driver and it is actually a port
from the out-of-tree ixgbe driver. In-band firmware update is one of the essential system maintenance
tasks. To simplify this task, the Intel online firmware update utility provides a common interface
that works across different Intel NICs running the igb/ixgbe/i40e drivers. Unfortunately, the in-tree
igb and ixgbe drivers are unable to support this firmware update utility, causing problems for
enterprise users who do not or cannot use out-of-distro drivers due to security and various other
reasons (e.g. commercial Linux distros do not provide technical support for out-of-distro drivers).
As a result, getting this feature into the in-tree ixgbe driver is highly desirable.

Signed-off-by: Richard chien <richard.chien@hpe.com>
---
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 360 +++++++++++++-----
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  11 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |  37 ++
 3 files changed, 317 insertions(+), 91 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index 6e6e6f184..3ce5c662a 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -993,114 +993,292 @@ static void ixgbe_get_regs(struct net_device *netdev,
 
 static int ixgbe_get_eeprom_len(struct net_device *netdev)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
-	return adapter->hw.eeprom.word_size * 2;
+        struct ixgbe_adapter *adapter = netdev_priv(netdev);
+
+        return pci_resource_len(adapter->pdev, 0);
+}
+
+static u8 ixgbe_nvmupd_get_module(u32 val)
+{
+        return (u8)(val & IXGBE_NVMUPD_MOD_PNT_MASK);
+}
+
+static int ixgbe_nvmupd_validate_offset(struct ixgbe_adapter *adapter,
+                                        u32 offset)
+{
+        struct net_device *netdev = adapter->netdev;
+
+        switch (offset) {
+        case IXGBE_STATUS:
+        case IXGBE_ESDP:
+        case IXGBE_MSCA:
+        case IXGBE_MSRWD:
+        case IXGBE_EEC_8259X:
+        case IXGBE_FLA_8259X:
+        case IXGBE_FLOP:
+        case IXGBE_SWSM_8259X:
+        case IXGBE_FWSM_8259X:
+        case IXGBE_FACTPS_8259X:
+        case IXGBE_GSSR:
+        case IXGBE_HICR:
+        case IXGBE_FWSTS:
+                return 0;
+        default:
+                if ((offset >= IXGBE_MAVTV(0) && offset <= IXGBE_MAVTV(7)) ||
+                    (offset >= IXGBE_RAL(0) && offset <= IXGBE_RAH(15)))
+                        return 0;
+        }
+
+        switch (adapter->hw.mac.type) {
+        case ixgbe_mac_82599EB:
+                switch (offset) {
+                case IXGBE_AUTOC:
+                case IXGBE_EERD:
+                case IXGBE_BARCTRL:
+                        return 0;
+                default:
+                        if (offset >= 0x00020000 &&
+                            offset <= ixgbe_get_eeprom_len(netdev))
+                                return 0;
+                }
+                break;
+        case ixgbe_mac_X540:
+                switch (offset) {
+                case IXGBE_EERD:
+                case IXGBE_EEWR:
+                case IXGBE_SRAMREL:
+                case IXGBE_BARCTRL:
+                        return 0;
+                default:
+                        if ((offset >= 0x00020000 &&
+                             offset <= ixgbe_get_eeprom_len(netdev)))
+                                return 0;
+                }
+                break;
+        case ixgbe_mac_X550:
+                switch (offset) {
+                case IXGBE_EEWR:
+                case IXGBE_SRAMREL:
+                case IXGBE_PHYCTL_82599:
+                case IXGBE_FWRESETCNT:
+                        return 0;
+                default:
+                        if (offset >= IXGBE_FLEX_MNG_PTR(0) &&
+                            offset <= IXGBE_FLEX_MNG_PTR(447))
+                                return 0;
+                }
+                break;
+        case ixgbe_mac_X550EM_x:
+                switch (offset) {
+                case IXGBE_PHYCTL_82599:
+                case IXGBE_NW_MNG_IF_SEL:
+                case IXGBE_FWRESETCNT:
+                case IXGBE_I2CCTL_X550:
+                        return 0;
+                default:
+                        if ((offset >= IXGBE_FLEX_MNG_PTR(0) &&
+                             offset <= IXGBE_FLEX_MNG_PTR(447)) ||
+                            (offset >= IXGBE_FUSES0_GROUP(0) &&
+                             offset <= IXGBE_FUSES0_GROUP(7)))
+                                return 0;
+                }
+                break;
+        case ixgbe_mac_x550em_a:
+                switch (offset) {
+                case IXGBE_PHYCTL_82599:
+                case IXGBE_NW_MNG_IF_SEL:
+                case IXGBE_FWRESETCNT:
+                case IXGBE_I2CCTL_X550:
+                case IXGBE_FLA_X550EM_a:
+                case IXGBE_SWSM_X550EM_a:
+                case IXGBE_FWSM_X550EM_a:
+                case IXGBE_SWFW_SYNC_X550EM_a:
+                case IXGBE_FACTPS_X550EM_a:
+                case IXGBE_EEC_X550EM_a:
+                        return 0;
+                default:
+                        if (offset >= IXGBE_FLEX_MNG_PTR(0) &&
+                            offset <= IXGBE_FLEX_MNG_PTR(447))
+                                return 0;
+                }
+        default:
+                break;
+        }
+
+        return -ENOTTY;
+}
+
+static int ixgbe_nvmupd_command(struct ixgbe_hw *hw,
+                                struct ixgbe_nvm_access *nvm,
+                                u8 *bytes)
+{
+        u32 command;
+        int ret_val = 0;
+        u8 module;
+
+        command = nvm->command;
+        module = ixgbe_nvmupd_get_module(nvm->config);
+
+        switch (command) {
+        case IXGBE_NVMUPD_CMD_REG_READ:
+                switch (module) {
+                case IXGBE_NVMUPD_EXEC_FEATURES:
+                        if (nvm->data_size == hw->nvmupd_features.size)
+                                memcpy(bytes, &hw->nvmupd_features,
+                                       hw->nvmupd_features.size);
+                        else
+                                ret_val = -ENOMEM;
+                break;
+                default:
+                        if (ixgbe_nvmupd_validate_offset(hw->back, nvm->offset))
+                                return -ENOTTY;
+
+                        if (nvm->data_size == 1)
+                                *((u8 *)bytes) = IXGBE_R8_Q(hw, nvm->offset);
+                        else
+                                *((u32 *)bytes) = IXGBE_R32_Q(hw, nvm->offset);
+                break;
+                }
+        break;
+        case IXGBE_NVMUPD_CMD_REG_WRITE:
+                if (ixgbe_nvmupd_validate_offset(hw->back, nvm->offset))
+                        return -ENOTTY;
+
+                IXGBE_WRITE_REG(hw, nvm->offset, *((u32 *)bytes));
+        break;
+        }
+
+        return ret_val;
 }
 
 static int ixgbe_get_eeprom(struct net_device *netdev,
-			    struct ethtool_eeprom *eeprom, u8 *bytes)
+                            struct ethtool_eeprom *eeprom, u8 *bytes)
 {
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
-	struct ixgbe_hw *hw = &adapter->hw;
-	u16 *eeprom_buff;
-	int first_word, last_word, eeprom_len;
-	int ret_val = 0;
-	u16 i;
+        struct ixgbe_adapter *adapter = netdev_priv(netdev);
+        struct ixgbe_hw *hw = &adapter->hw;
+        u16 *eeprom_buff;
+        int first_word, last_word, eeprom_len;
+        struct ixgbe_nvm_access *nvm;
+        u32 magic;
+        int ret_val = 0;
+        u16 i;
 
-	if (eeprom->len == 0)
-		return -EINVAL;
-
-	eeprom->magic = hw->vendor_id | (hw->device_id << 16);
-
-	first_word = eeprom->offset >> 1;
-	last_word = (eeprom->offset + eeprom->len - 1) >> 1;
-	eeprom_len = last_word - first_word + 1;
-
-	eeprom_buff = kmalloc_array(eeprom_len, sizeof(u16), GFP_KERNEL);
-	if (!eeprom_buff)
-		return -ENOMEM;
+        //WARN("ixgbe_get_eeprom() invoked, bytes=%u\n", bytes);
 
-	ret_val = hw->eeprom.ops.read_buffer(hw, first_word, eeprom_len,
-					     eeprom_buff);
+        if (eeprom->len == 0)
+                return -EINVAL;
 
-	/* Device's eeprom is always little-endian, word addressable */
-	for (i = 0; i < eeprom_len; i++)
-		le16_to_cpus(&eeprom_buff[i]);
+        magic = hw->vendor_id | (hw->device_id << 16);
+        if (eeprom->magic && eeprom->magic != magic) {
+                nvm = (struct ixgbe_nvm_access *)eeprom;
+                ret_val = ixgbe_nvmupd_command(hw, nvm, bytes);
+                return ret_val;
+        }
 
-	memcpy(bytes, (u8 *)eeprom_buff + (eeprom->offset & 1), eeprom->len);
-	kfree(eeprom_buff);
+        /* normal ethtool get_eeprom support */
+        eeprom->magic = hw->vendor_id | (hw->device_id << 16);
 
-	return ret_val;
-}
+        first_word = eeprom->offset >> 1;
+        last_word = (eeprom->offset + eeprom->len - 1) >> 1;
+        eeprom_len = last_word - first_word + 1;
 
-static int ixgbe_set_eeprom(struct net_device *netdev,
-			    struct ethtool_eeprom *eeprom, u8 *bytes)
-{
-	struct ixgbe_adapter *adapter = netdev_priv(netdev);
-	struct ixgbe_hw *hw = &adapter->hw;
-	u16 *eeprom_buff;
-	void *ptr;
-	int max_len, first_word, last_word, ret_val = 0;
-	u16 i;
+        eeprom_buff = kmalloc(sizeof(u16) * eeprom_len, GFP_KERNEL);
+        if (!eeprom_buff)
+                return -ENOMEM;
 
-	if (eeprom->len == 0)
-		return -EINVAL;
+        ret_val = hw->eeprom.ops.read_buffer(hw, first_word, eeprom_len,
+                                           eeprom_buff);
 
-	if (eeprom->magic != (hw->vendor_id | (hw->device_id << 16)))
-		return -EINVAL;
+        /* Device's eeprom is always little-endian, word addressable */
+        for (i = 0; i < eeprom_len; i++)
+                le16_to_cpus(&eeprom_buff[i]);
 
-	max_len = hw->eeprom.word_size * 2;
+        memcpy(bytes, (u8 *)eeprom_buff + (eeprom->offset & 1), eeprom->len);
+        kfree(eeprom_buff);
 
-	first_word = eeprom->offset >> 1;
-	last_word = (eeprom->offset + eeprom->len - 1) >> 1;
-	eeprom_buff = kmalloc(max_len, GFP_KERNEL);
-	if (!eeprom_buff)
-		return -ENOMEM;
-
-	ptr = eeprom_buff;
-
-	if (eeprom->offset & 1) {
-		/*
-		 * need read/modify/write of first changed EEPROM word
-		 * only the second byte of the word is being modified
-		 */
-		ret_val = hw->eeprom.ops.read(hw, first_word, &eeprom_buff[0]);
-		if (ret_val)
-			goto err;
-
-		ptr++;
-	}
-	if ((eeprom->offset + eeprom->len) & 1) {
-		/*
-		 * need read/modify/write of last changed EEPROM word
-		 * only the first byte of the word is being modified
-		 */
-		ret_val = hw->eeprom.ops.read(hw, last_word,
-					  &eeprom_buff[last_word - first_word]);
-		if (ret_val)
-			goto err;
-	}
-
-	/* Device's eeprom is always little-endian, word addressable */
-	for (i = 0; i < last_word - first_word + 1; i++)
-		le16_to_cpus(&eeprom_buff[i]);
-
-	memcpy(ptr, bytes, eeprom->len);
-
-	for (i = 0; i < last_word - first_word + 1; i++)
-		cpu_to_le16s(&eeprom_buff[i]);
-
-	ret_val = hw->eeprom.ops.write_buffer(hw, first_word,
-					      last_word - first_word + 1,
-					      eeprom_buff);
+        return ret_val;
+}
 
-	/* Update the checksum */
-	if (ret_val == 0)
-		hw->eeprom.ops.update_checksum(hw);
+static int ixgbe_set_eeprom(struct net_device *netdev,
+                            struct ethtool_eeprom *eeprom, u8 *bytes)
+{
+        struct ixgbe_adapter *adapter = netdev_priv(netdev);
+        struct ixgbe_hw *hw = &adapter->hw;
+        int max_len, first_word, last_word, ret_val = 0;
+        struct ixgbe_nvm_access *nvm;
+        u32 magic;
+        u16 *eeprom_buff, i;
+        void *ptr;
+
+        //WARN("ixgbe_set_eeprom() invoked, bytes=%u\n", bytes);
+
+        if (eeprom->len == 0) 
+                return -EINVAL;
+
+        magic = hw->vendor_id | (hw->device_id << 16);
+        if (eeprom->magic && eeprom->magic != magic) {
+                nvm = (struct ixgbe_nvm_access *)eeprom;
+                ret_val = ixgbe_nvmupd_command(hw, nvm, bytes);
+                return ret_val;
+        }
+
+        /* normal ethtool set_eeprom support */
+
+        if (eeprom->magic != (hw->vendor_id | (hw->device_id << 16)))
+                return -EINVAL;
+
+        max_len = hw->eeprom.word_size * 2;
+
+        first_word = eeprom->offset >> 1;
+        last_word = (eeprom->offset + eeprom->len - 1) >> 1;
+        eeprom_buff = kmalloc(max_len, GFP_KERNEL);
+        if (!eeprom_buff)
+                return -ENOMEM;
+
+        ptr = eeprom_buff;
+
+        if (eeprom->offset & 1) {
+                /*
+                 * need read/modify/write of first changed EEPROM word
+                 * only the second byte of the word is being modified
+                 */
+                ret_val = hw->eeprom.ops.read(hw, first_word, &eeprom_buff[0]);
+                if (ret_val)
+                        goto err;
+
+                ptr++;
+        }
+        if (((eeprom->offset + eeprom->len) & 1) && (ret_val == 0)) {
+                /*
+                 * need read/modify/write of last changed EEPROM word
+                 * only the first byte of the word is being modified
+                 */
+                ret_val = hw->eeprom.ops.read(hw, last_word,
+                                          &eeprom_buff[last_word - first_word]);
+                if (ret_val)
+                        goto err;
+        }
+
+        /* Device's eeprom is always little-endian, word addressable */
+        for (i = 0; i < last_word - first_word + 1; i++)
+                le16_to_cpus(&eeprom_buff[i]);
+
+        memcpy(ptr, bytes, eeprom->len);
+
+        for (i = 0; i < last_word - first_word + 1; i++)
+                cpu_to_le16s(&eeprom_buff[i]);
+
+        ret_val = hw->eeprom.ops.write_buffer(hw, first_word,
+                                            last_word - first_word + 1,
+                                            eeprom_buff);
+
+        /* Update the checksum */
+        if (ret_val == 0)
+                hw->eeprom.ops.update_checksum(hw);
 
 err:
-	kfree(eeprom_buff);
-	return ret_val;
+        kfree(eeprom_buff);
+        return ret_val;
 }
 
 static void ixgbe_get_drvinfo(struct net_device *netdev,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 094653e81..ac2405105 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -6519,6 +6519,17 @@ static int ixgbe_sw_init(struct ixgbe_adapter *adapter,
 	if (nr_cpu_ids > IXGBE_MAX_XDP_QS)
 		static_branch_enable(&ixgbe_xdp_locking_key);
 
+        /* NVM Update features structure initialization */
+        hw->nvmupd_features.major = IXGBE_NVMUPD_FEATURES_API_VER_MAJOR;
+        hw->nvmupd_features.minor = IXGBE_NVMUPD_FEATURES_API_VER_MINOR;
+        hw->nvmupd_features.size = sizeof(hw->nvmupd_features);
+        memset(hw->nvmupd_features.features, 0x0,
+               IXGBE_NVMUPD_FEATURES_API_FEATURES_ARRAY_LEN *
+               sizeof(*hw->nvmupd_features.features));
+
+        hw->nvmupd_features.features[0] =
+                IXGBE_NVMUPD_FEATURE_REGISTER_ACCESS_SUPPORT;
+
 	return 0;
 }
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
index 346e3d911..5c71e67d2 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
@@ -129,6 +129,8 @@
 #define IXGBE_GRC_X550EM_x	IXGBE_GRC_8259X
 #define IXGBE_GRC_X550EM_a	0x15F64
 #define IXGBE_GRC(_hw)		IXGBE_BY_MAC((_hw), GRC)
+#define IXGBE_SRAMREL           0x10210
+#define IXGBE_FWRESETCNT        0x15F40
 
 /* General Receive Control */
 #define IXGBE_GRC_MNG  0x00000001 /* Manageability Enable */
@@ -936,6 +938,7 @@ struct ixgbe_nvm_version {
 #define IXGBE_SWSR      0x15F10
 #define IXGBE_HFDR      0x15FE8
 #define IXGBE_FLEX_MNG  0x15800 /* 0x15800 - 0x15EFC */
+#define IXGBE_FLEX_MNG_PTR(_i)  (IXGBE_FLEX_MNG + ((_i) * 4))
 
 #define IXGBE_HICR_EN              0x01  /* Enable bit - RO */
 /* Driver sets this bit when done to put command in RAM */
@@ -3390,6 +3393,38 @@ struct ixgbe_hw_stats {
 	u64 o2bspc;
 };
 
+/* NVM Update commands */
+#define IXGBE_NVMUPD_CMD_REG_READ	0x0000000B
+#define IXGBE_NVMUPD_CMD_REG_WRITE	0x0000000C 
+
+#define IXGBE_R32_Q(h, r) ixgbe_read_reg(h, r)
+#define IXGBE_R8_Q(h, r) readb(READ_ONCE(h->hw_addr) + r)
+
+/* NVM Update features API */
+#define IXGBE_NVMUPD_FEATURES_API_VER_MAJOR             0
+#define IXGBE_NVMUPD_FEATURES_API_VER_MINOR             0
+#define IXGBE_NVMUPD_FEATURES_API_FEATURES_ARRAY_LEN    12
+#define IXGBE_NVMUPD_EXEC_FEATURES                      0xe
+#define IXGBE_NVMUPD_FEATURE_FLAT_NVM_SUPPORT           BIT(0)
+#define IXGBE_NVMUPD_FEATURE_REGISTER_ACCESS_SUPPORT    BIT(1)
+
+#define IXGBE_NVMUPD_MOD_PNT_MASK                       0xFF
+
+struct ixgbe_nvm_access {
+        u32 command;
+        u32 config; 
+        u32 offset;     /* in bytes */
+        u32 data_size;  /* in bytes */
+        u8 data[1];
+};
+
+struct ixgbe_nvm_features {
+        u8 major;
+        u8 minor;
+        u16 size;
+        u8 features[IXGBE_NVMUPD_FEATURES_API_FEATURES_ARRAY_LEN];
+}; 
+
 /* forward declaration */
 struct ixgbe_hw;
 
@@ -3654,6 +3689,8 @@ struct ixgbe_hw {
 	bool				allow_unsupported_sfp;
 	bool				wol_enabled;
 	bool				need_crosstalk_fix;
+       /* NVM Update features */
+        struct ixgbe_nvm_features nvmupd_features;
 };
 
 struct ixgbe_info {
-- 
2.40.1

