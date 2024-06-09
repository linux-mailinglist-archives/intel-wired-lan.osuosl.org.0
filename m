Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9A2902605
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jun 2024 17:51:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E7F260871;
	Mon, 10 Jun 2024 15:51:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4f4OnvOrh9da; Mon, 10 Jun 2024 15:51:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A10E460847
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718034704;
	bh=U4H+tbLQVqBpmXAVAxLwfC0DnLHNgzTP1Xv586sXQB4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=yOSRVHMAahHMLaKcQ6/PyrxtM+64hHSBJR64qKDZjn4fq+nJOftRAf2Sq+BhvWt5d
	 vv9yvNU2p5yjFpCDCNwcYVsim0GxESlJ160ClIqiOqkKVuhbVrH+yik51xPC4qva45
	 nMT3r0QpTedcL6+fO5YVzXi4yLsv4nZ1Ft2iInN6Md8uWjh7HlH7sCiSpVOsP7WI+z
	 r2O6D7zqEewRzCL9BJw0ofB1PYpTRnUvx5u4z6X56x0y54Le8gIne/26D5injpLqjg
	 XJs8M0ndiMYqgVjOGtVBKyXIJQs/z7RLmF3PbWgJKlR1DblvnBxLheLVMl2HLp1hha
	 PtLHWJhcawXzA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A10E460847;
	Mon, 10 Jun 2024 15:51:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 107C71BF3F3
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 08:18:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EF26182499
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 08:18:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q87dTrgtmzky for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Jun 2024 08:18:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::530; helo=mail-pg1-x530.google.com;
 envelope-from=m8809301@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 54B7C82423
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 54B7C82423
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com
 [IPv6:2607:f8b0:4864:20::530])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 54B7C82423
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 08:18:25 +0000 (UTC)
Received: by mail-pg1-x530.google.com with SMTP id
 41be03b00d2f7-6e41550ae5bso1185196a12.3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 09 Jun 2024 01:18:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1717921104; x=1718525904;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=U4H+tbLQVqBpmXAVAxLwfC0DnLHNgzTP1Xv586sXQB4=;
 b=VJcoIbiykWBIQBPQD83MFBDWOaP28esqMIeKY/GchCsavtZlqrc79liynTP+wLhcZN
 S+SgG3ojtndPIfdNZEz1tu9LTjyB3XdfOPaCLSkYzxM42oDjYqSt9ws2HhrZHeuBGaXP
 3HDgCDNxkFUhZ7ZlauNL3cle17z91f6wDt/m1jZK0HivldO1veuqIQvwq/IKRIyKGZVl
 sUmZgIQJ5wKNm5SLZzB1TLbt3zXHQa4whX5sbpcImX9vij+Ffh+IIAt/tNxOj5tSHDPe
 GT68shZTqN0b7tMS1n9+K5+TXfJ3FO0+4sUCLGxttDGqUCAYsNupzfYw0An3Uz8SzTCX
 2how==
X-Forwarded-Encrypted: i=1;
 AJvYcCUyytXX0N4aJutG8fH1IKcMNPkZqL1cSmZ/6v2l1YybPrsX7go4gwWLL/lhLnKxZzQlgh3XWwcX1QkO7k6gSkWi/e2LTVQQYblG0i3C5Jp82g==
X-Gm-Message-State: AOJu0YwD4s2oj3fhdt7zC/xBM6eO5OW0Nzir0XeDTAIWkqgKimvKx/Qi
 mV03h/V8/IDTNV0AWmPsXzU1qCZ4JZB/wbsJ94yXz5W+HK6tdH/4
X-Google-Smtp-Source: AGHT+IE1oXi7G9BIe0mPmP3nLxy08GQZv5Tb54kGyNj0XIpwp9mXohfSUk9hJImC3/B0WZrDHLUiRA==
X-Received: by 2002:a05:6a20:7285:b0:1af:baf9:feee with SMTP id
 adf61e73a8af0-1b2f9a6060dmr7417915637.26.1717921104371; 
 Sun, 09 Jun 2024 01:18:24 -0700 (PDT)
Received: from richard-1-2.. (223-137-2-26.emome-ip.hinet.net. [223.137.2.26])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-1f6bd75f2f4sm61370365ad.22.2024.06.09.01.18.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 09 Jun 2024 01:18:24 -0700 (PDT)
From: Richard chien <m8809301@gmail.com>
X-Google-Original-From: Richard chien <richard.chien@hpe.com>
To: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Date: Sun,  9 Jun 2024 16:15:26 +0800
Message-Id: <20240609081526.5621-1-richard.chien@hpe.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 10 Jun 2024 15:51:42 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1717921104; x=1718525904; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=U4H+tbLQVqBpmXAVAxLwfC0DnLHNgzTP1Xv586sXQB4=;
 b=NcLSlr4lfwrxRVL0IvK1M4lDo6D6E0t5+Nv3OtMxbfVjCGtdcZ+JBQ+3JTO8Xdp1YW
 KerT7653yv06hcBwaut3I8ziMlIzvhO7JnsGaDZkHLT23HpCbv1QAkXW4QwEdsjY/PTD
 Rb/4QyJABxqEX2+Sk62pSwAsJAdQyH8KjUnAXiaq2mNCP7fYWG9fir0+W0Q/g/tFi6+b
 rQi/kzgeWFlkeWypvzQRDQX17x+9eqUfXNjlosUgvLhWFeWbJ9H479pcacRk5DmY17oI
 JfexuCXCgVu0w7LGOzZoqcgJ+PH0RAquQ2n0ds+RQzdjcm21olPhpPr2cehBnHhFdTy8
 9FXQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=NcLSlr4l
Subject: [Intel-wired-lan] [PATCH] igb: Add support for firmware update
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

This patch adds support for firmware update to the in-tree igb driver and it is actually a port from the out-of-tree igb driver.
In-band firmware update is one of the essential system maintenance tasks. To simplify this task, the Intel online firmware update
utility provides a common interface that works across different Intel NICs running the igb/ixgbe/i40e drivers. Unfortunately, the
in-tree igb and ixgbe drivers are unable to support this firmware update utility, causing problems for enterprise users who do not
or cannot use out-of-distro drivers due to security and various other reasons (e.g. commercial Linux distros do not provide technical
support for out-of-distro drivers). As a result, getting this feature into the in-tree igb driver is highly desirable.

Signed-off-by: Richard chien <richard.chien@hpe.com>
---
 .../net/ethernet/intel/igb/e1000_defines.h    |   1 +
 drivers/net/ethernet/intel/igb/e1000_hw.h     |  59 +++
 drivers/net/ethernet/intel/igb/e1000_nvm.c    |  51 +++
 drivers/net/ethernet/intel/igb/e1000_nvm.h    |   4 +
 drivers/net/ethernet/intel/igb/e1000_regs.h   |   9 +
 drivers/net/ethernet/intel/igb/igb_ethtool.c  | 378 ++++++++++++------
 drivers/net/ethernet/intel/igb/igb_main.c     |  34 ++
 7 files changed, 424 insertions(+), 112 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/e1000_defines.h b/drivers/net/ethernet/intel/igb/e1000_defines.h
index fa0289284..2fcf7621a 100644
--- a/drivers/net/ethernet/intel/igb/e1000_defines.h
+++ b/drivers/net/ethernet/intel/igb/e1000_defines.h
@@ -481,6 +481,7 @@
 #define E1000_RAH_POOL_1 0x00040000
 
 /* Error Codes */
+#define E1000_SUCCESS      0
 #define E1000_ERR_NVM      1
 #define E1000_ERR_PHY      2
 #define E1000_ERR_CONFIG   3
diff --git a/drivers/net/ethernet/intel/igb/e1000_hw.h b/drivers/net/ethernet/intel/igb/e1000_hw.h
index 44111f65a..bbdbb7198 100644
--- a/drivers/net/ethernet/intel/igb/e1000_hw.h
+++ b/drivers/net/ethernet/intel/igb/e1000_hw.h
@@ -292,6 +292,35 @@ struct e1000_host_mng_command_info {
 #include "e1000_nvm.h"
 #include "e1000_mbx.h"
 
+/* NVM Update commands */
+#define E1000_NVMUPD_CMD_REG_READ       0x0000000B
+#define E1000_NVMUPD_CMD_REG_WRITE      0x0000000C
+
+/* NVM Update features API */
+#define E1000_NVMUPD_FEATURES_API_VER_MAJOR             0
+#define E1000_NVMUPD_FEATURES_API_VER_MINOR             0
+#define E1000_NVMUPD_FEATURES_API_FEATURES_ARRAY_LEN    12
+#define E1000_NVMUPD_EXEC_FEATURES                      0xE
+#define E1000_NVMUPD_FEATURE_FLAT_NVM_SUPPORT           (1 << 0)
+#define E1000_NVMUPD_FEATURE_REGISTER_ACCESS_SUPPORT    (1 << 1)
+
+#define E1000_NVMUPD_MOD_PNT_MASK                       0xFF
+
+struct e1000_nvm_access {
+        u32 command;
+        u32 config;
+        u32 offset;     /* in bytes */
+        u32 data_size;  /* in bytes */
+        u8 data[1];
+};
+
+struct e1000_nvm_features {
+        u8 major;
+        u8 minor;
+        u16 size;
+        u8 features[E1000_NVMUPD_FEATURES_API_FEATURES_ARRAY_LEN];
+};
+
 struct e1000_mac_operations {
 	s32 (*check_for_link)(struct e1000_hw *);
 	s32 (*reset_hw)(struct e1000_hw *);
@@ -539,6 +568,8 @@ struct e1000_hw {
 	u16 vendor_id;
 
 	u8  revision_id;
+        /* NVM Update features */
+        struct e1000_nvm_features nvmupd_features;
 };
 
 struct net_device *igb_get_hw_dev(struct e1000_hw *hw);
@@ -551,4 +582,32 @@ s32 igb_write_pcie_cap_reg(struct e1000_hw *hw, u32 reg, u16 *value);
 
 void igb_read_pci_cfg(struct e1000_hw *hw, u32 reg, u16 *value);
 void igb_write_pci_cfg(struct e1000_hw *hw, u32 reg, u16 *value);
+
+
+u32 e1000_read_reg(struct e1000_hw *hw, u32 reg);
+
+#define E1000_WRITE_REG(hw, reg, val) \
+do { \
+        u8 __iomem *hw_addr = READ_ONCE((hw)->hw_addr); \
+        if (!E1000_REMOVED(hw_addr)) \
+                writel((val), &hw_addr[(reg)]); \
+} while (0)
+
+#define E1000_READ_REG(x, y) e1000_read_reg(x, y)
+#define E1000_READ_REG8(h, r) readb(READ_ONCE(h->hw_addr) + r)
+
+#define E1000_WRITE_FLASH_REG(a, reg, value) ( \
+        writel((value), ((a)->flash_address + reg)))
+
+//#define E1000_READ_FLASH_REG(a, reg) (readl((a)->flash_address + reg))
+
+//#define E1000_READ_FLASH_REG16(a, reg) (readw((a)->flash_address + reg))
+
+
+#define E1000_READ_FLASH_REG(a, reg) (readl((a)->flash_address + reg))
+
+#define E1000_READ_FLASH_REG8(a, reg) ( \
+        readb(READ_ONCE((a)->flash_address) + reg))
+
+
 #endif /* _E1000_IGB_HW_H_ */
diff --git a/drivers/net/ethernet/intel/igb/e1000_nvm.c b/drivers/net/ethernet/intel/igb/e1000_nvm.c
index 2dcd64d6d..e3635f3fd 100644
--- a/drivers/net/ethernet/intel/igb/e1000_nvm.c
+++ b/drivers/net/ethernet/intel/igb/e1000_nvm.c
@@ -778,3 +778,54 @@ void igb_get_fw_version(struct e1000_hw *hw, struct e1000_fw_version *fw_vers)
 			| eeprom_verl;
 	}
 }
+
+/**
+ *  e1000_read_nvm - Reads NVM (EEPROM)
+ *  @hw: pointer to the HW structure
+ *  @offset: the word offset to read
+ *  @words: number of 16-bit words to read
+ *  @data: pointer to the properly sized buffer for the data.
+ *
+ *  Reads 16-bit chunks of data from the NVM (EEPROM). This is a function
+ *  pointer entry point called by drivers.
+ **/
+s32 e1000_read_nvm(struct e1000_hw *hw, u16 offset, u16 words, u16 *data)
+{
+        if (hw->nvm.ops.read)
+                return hw->nvm.ops.read(hw, offset, words, data);
+
+        return -E1000_ERR_CONFIG;
+}
+
+/**
+ *  e1000_write_nvm - Writes to NVM (EEPROM)
+ *  @hw: pointer to the HW structure
+ *  @offset: the word offset to read
+ *  @words: number of 16-bit words to write
+ *  @data: pointer to the properly sized buffer for the data.
+ *
+ *  Writes 16-bit chunks of data to the NVM (EEPROM). This is a function
+ *  pointer entry point called by drivers.
+ **/
+s32 e1000_write_nvm(struct e1000_hw *hw, u16 offset, u16 words, u16 *data)
+{
+        if (hw->nvm.ops.write)
+                return hw->nvm.ops.write(hw, offset, words, data);
+
+        return E1000_SUCCESS;
+}
+
+/**
+ *  e1000_update_nvm_checksum - Updates NVM (EEPROM) checksum
+ *  @hw: pointer to the HW structure
+ *
+ *  Updates the NVM checksum. Currently no func pointer exists and all
+ *  implementations are handled in the generic version of this function.
+ **/
+s32 e1000_update_nvm_checksum(struct e1000_hw *hw)
+{
+        if (hw->nvm.ops.update)
+                return hw->nvm.ops.update(hw);
+
+        return -E1000_ERR_CONFIG;
+}
diff --git a/drivers/net/ethernet/intel/igb/e1000_nvm.h b/drivers/net/ethernet/intel/igb/e1000_nvm.h
index 091cddf4a..6584a0a7a 100644
--- a/drivers/net/ethernet/intel/igb/e1000_nvm.h
+++ b/drivers/net/ethernet/intel/igb/e1000_nvm.h
@@ -33,4 +33,8 @@ struct e1000_fw_version {
 };
 void igb_get_fw_version(struct e1000_hw *hw, struct e1000_fw_version *fw_vers);
 
+s32 e1000_read_nvm(struct e1000_hw *hw, u16 offset, u16 words, u16 *data);
+s32 e1000_write_nvm(struct e1000_hw *hw, u16 offset, u16 words, u16 *data);
+s32 e1000_update_nvm_checksum(struct e1000_hw *hw);
+
 #endif
diff --git a/drivers/net/ethernet/intel/igb/e1000_regs.h b/drivers/net/ethernet/intel/igb/e1000_regs.h
index eb9f6da92..eae551959 100644
--- a/drivers/net/ethernet/intel/igb/e1000_regs.h
+++ b/drivers/net/ethernet/intel/igb/e1000_regs.h
@@ -9,8 +9,10 @@
 #define E1000_EECD     0x00010  /* EEPROM/Flash Control - RW */
 #define E1000_EERD     0x00014  /* EEPROM Read - RW */
 #define E1000_CTRL_EXT 0x00018  /* Extended Device Control - RW */
+#define E1000_FLA      0x0001C  /* Flash Access - RW */
 #define E1000_MDIC     0x00020  /* MDI Control - RW */
 #define E1000_MDICNFG  0x00E04  /* MDI Config - RW */
+#define E1000_REGISTER_SET_SIZE         0x20000 /* CSR Size */
 #define E1000_SCTL     0x00024  /* SerDes Control - RW */
 #define E1000_FCAL     0x00028  /* Flow Control Address Low - RW */
 #define E1000_FCAH     0x0002C  /* Flow Control Address High -RW */
@@ -49,6 +51,7 @@
 #define E1000_EEMNGCTL_I210 0x12030  /* MNG EEprom Control */
 #define E1000_EEARBC_I210 0x12024  /* EEPROM Auto Read Bus Control */
 #define E1000_EEWR     0x0102C  /* EEPROM Write Register - RW */
+#define E1000_FLOP      0x0103C  /* FLASH Opcode Register */
 #define E1000_I2CCMD   0x01028  /* SFPI2C Command Register - RW */
 #define E1000_FRTIMER  0x01048  /* Free Running Timer - RW */
 #define E1000_TCPTIMER 0x0104C  /* TCP Timer - RW */
@@ -66,6 +69,7 @@
 #define E1000_MPHY_ADDR_CTRL	0x0024 /* GbE MPHY Address Control */
 #define E1000_MPHY_DATA		0x0E10 /* GBE MPHY Data */
 #define E1000_MPHY_STAT		0x0E0C /* GBE MPHY Statistics */
+#define E1000_I350_BARCTRL              0x5BFC /* BAR ctrl reg */
 
 /* IEEE 1588 TIMESYNCH */
 #define E1000_TSYNCRXCTL 0x0B620 /* Rx Time Sync Control register - RW */
@@ -116,6 +120,7 @@
 #define E1000_DMCRTRH	0x05DD0 /* Receive Packet Rate Threshold */
 #define E1000_DMCCNT	0x05DD4 /* Current Rx Count */
 #define E1000_FCRTC	0x02170 /* Flow Control Rx high watermark */
+#define E1000_PCIEMISC	0x05BB8 /* PCIE misc config register */
 
 /* TX Rate Limit Registers */
 #define E1000_RTTDQSEL	0x3604 /* Tx Desc Plane Queue Select - WO */
@@ -390,6 +395,7 @@ do { \
 #define E1000_O2BSPC	0x0415C /* OS2BMC packets transmitted by host */
 
 #define E1000_SRWR		0x12018  /* Shadow Ram Write Register - RW */
+#define E1000_EEC_REG           0x12010
 #define E1000_I210_FLMNGCTL	0x12038
 #define E1000_I210_FLMNGDATA	0x1203C
 #define E1000_I210_FLMNGCNT	0x12040
@@ -400,6 +406,9 @@ do { \
 
 #define E1000_I210_FLA		0x1201C
 
+#define E1000_SHADOWINF         0x12068
+#define E1000_FLFWUPDATE        0x12108
+
 #define E1000_I210_DTXMXPKTSZ	0x355C
 
 #define E1000_I210_TXDCTL(_n)	(0x0E028 + ((_n) * 0x40))
diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index 61d72250c..ebed72a3e 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -724,128 +724,282 @@ static void igb_get_regs(struct net_device *netdev,
 		regs_buff[739] = rd32(E1000_I210_RR2DCDELAY);
 }
 
-static int igb_get_eeprom_len(struct net_device *netdev)
-{
-	struct igb_adapter *adapter = netdev_priv(netdev);
-	return adapter->hw.nvm.word_size * 2;
+static u8 igb_nvmupd_get_module(u32 val)
+{
+        return (u8)(val & E1000_NVMUPD_MOD_PNT_MASK);
+}
+
+static int igb_nvmupd_validate_offset(struct igb_adapter *adapter, u32 offset)
+{
+        if (offset >= E1000_REGISTER_SET_SIZE)
+                return 0;
+
+        switch (offset) {
+        case E1000_CTRL:
+        case E1000_STATUS:
+        case E1000_EECD:
+        case E1000_EERD:
+        case E1000_CTRL_EXT:
+        case E1000_FLA:
+        case E1000_FLOP:
+        case E1000_SWSM:
+        case E1000_FWSM:
+        case E1000_SW_FW_SYNC:
+        case E1000_IOVTCL:
+        case E1000_I350_BARCTRL:
+        case E1000_THSTAT:
+        case E1000_EEC_REG:
+        case E1000_SRWR:
+        case E1000_I210_FLA:
+        case E1000_I210_FLSWCTL:
+        case E1000_I210_FLSWDATA:
+        case E1000_I210_FLSWCNT:
+        case E1000_SHADOWINF:
+        case E1000_FLFWUPDATE:
+        case E1000_RAL(0):
+        case E1000_RAL(1):
+        case E1000_RAL(2):
+        case E1000_RAL(3):
+        case E1000_RAL(4):
+        case E1000_RAL(5):
+        case E1000_RAL(6):
+        case E1000_RAL(7):
+        case E1000_RAL(8):
+        case E1000_RAL(9):
+        case E1000_RAL(10):
+        case E1000_RAL(11):
+        case E1000_RAL(12):
+        case E1000_RAL(13):
+        case E1000_RAL(14):
+        case E1000_RAL(15):
+        case E1000_RAH(0):
+        case E1000_RAH(1):
+        case E1000_RAH(2):
+        case E1000_RAH(3):
+        case E1000_RAH(4):
+        case E1000_RAH(5):
+        case E1000_RAH(6):
+        case E1000_RAH(7):
+        case E1000_RAH(8):
+        case E1000_RAH(9):
+        case E1000_RAH(10):
+        case E1000_RAH(11):
+        case E1000_RAH(12):
+        case E1000_RAH(13):
+        case E1000_RAH(14):
+        case E1000_RAH(15):
+                return 0;
+        default:
+                dev_warn(&adapter->pdev->dev, "Bad offset: %x\n", offset);
+                return -ENOTTY;
+        }
+}
+
+static int igb_nvmupd_command(struct e1000_hw *hw,
+                              struct e1000_nvm_access *nvm,
+                              u8 *bytes)
+{
+        struct igb_adapter *adapter = hw->back;
+        resource_size_t bar0_len;
+        int ret_val = 0;
+        u32 command;
+        u8 module;
+
+        bar0_len = pci_resource_len(adapter->pdev, 0);
+        command = nvm->command;
+        module = igb_nvmupd_get_module(nvm->config);
+
+        switch (command) {
+        case E1000_NVMUPD_CMD_REG_READ:
+                switch (module) {
+                case E1000_NVMUPD_EXEC_FEATURES:
+                        if (nvm->data_size == hw->nvmupd_features.size)
+                                memcpy(bytes, &hw->nvmupd_features,
+                                hw->nvmupd_features.size);
+                        else
+                                ret_val = -ENOMEM;
+                break;
+                default:
+                        if (igb_nvmupd_validate_offset(adapter, nvm->offset))
+                                return -ENOTTY;
+                        if (nvm->offset >= bar0_len) {
+                                if (hw->mac.type == e1000_82576 &&
+                                    hw->flash_address) {
+                                        if (nvm->data_size == 1)
+                                                *bytes = E1000_READ_FLASH_REG8(
+                                                        hw,
+                                                        nvm->offset - bar0_len);
+                                        else
+                                                *((u32 *)bytes) =
+                                                        E1000_READ_FLASH_REG(hw,
+                                                        nvm->offset - bar0_len);
+                                } else
+                                        ret_val = -EFAULT;
+                        } else if (nvm->data_size == 1)
+                                *bytes = E1000_READ_REG8(hw, nvm->offset);
+                        else
+                                *((u32 *)bytes) = E1000_READ_REG(hw,
+                                                                 nvm->offset);
+                break;
+                }
+        break;
+        case E1000_NVMUPD_CMD_REG_WRITE:
+                if (igb_nvmupd_validate_offset(adapter, nvm->offset))
+                        return -ENOTTY;
+                if (nvm->offset >= bar0_len) {
+                        if (hw->mac.type == e1000_82576 && hw->flash_address)
+                                E1000_WRITE_FLASH_REG(hw,
+                                                      nvm->offset - bar0_len,
+                                                      *((u32 *)bytes));
+                        else
+                                ret_val = -EFAULT;
+                } else
+                        E1000_WRITE_REG(hw, nvm->offset, *((u32 *)bytes));
+        break;
+        }
+
+        return ret_val;
 }
 
-static int igb_get_eeprom(struct net_device *netdev,
-			  struct ethtool_eeprom *eeprom, u8 *bytes)
+static int igb_get_eeprom_len(struct net_device *netdev)
 {
-	struct igb_adapter *adapter = netdev_priv(netdev);
-	struct e1000_hw *hw = &adapter->hw;
-	u16 *eeprom_buff;
-	int first_word, last_word;
-	int ret_val = 0;
-	u16 i;
-
-	if (eeprom->len == 0)
-		return -EINVAL;
-
-	eeprom->magic = hw->vendor_id | (hw->device_id << 16);
-
-	first_word = eeprom->offset >> 1;
-	last_word = (eeprom->offset + eeprom->len - 1) >> 1;
+        struct igb_adapter *adapter = netdev_priv(netdev);
+        struct pci_dev *pdev = adapter->pdev;
 
-	eeprom_buff = kmalloc_array(last_word - first_word + 1, sizeof(u16),
-				    GFP_KERNEL);
-	if (!eeprom_buff)
-		return -ENOMEM;
-
-	if (hw->nvm.type == e1000_nvm_eeprom_spi)
-		ret_val = hw->nvm.ops.read(hw, first_word,
-					   last_word - first_word + 1,
-					   eeprom_buff);
-	else {
-		for (i = 0; i < last_word - first_word + 1; i++) {
-			ret_val = hw->nvm.ops.read(hw, first_word + i, 1,
-						   &eeprom_buff[i]);
-			if (ret_val)
-				break;
-		}
-	}
-
-	/* Device's eeprom is always little-endian, word addressable */
-	for (i = 0; i < last_word - first_word + 1; i++)
-		le16_to_cpus(&eeprom_buff[i]);
+        if (adapter->hw.mac.type == e1000_82576)
+                return pci_resource_len(pdev, 0) + pci_resource_len(pdev, 1);
 
-	memcpy(bytes, (u8 *)eeprom_buff + (eeprom->offset & 1),
-			eeprom->len);
-	kfree(eeprom_buff);
+        return pci_resource_len(pdev, 0);
+}
 
-	return ret_val;
+static int igb_get_eeprom(struct net_device *netdev,
+                          struct ethtool_eeprom *eeprom, u8 *bytes)
+{
+        struct igb_adapter *adapter = netdev_priv(netdev);
+        struct e1000_hw *hw = &adapter->hw;
+        u16 *eeprom_buff;
+        int first_word, last_word;
+        int ret_val = 0;
+        struct e1000_nvm_access *nvm;
+        u32 magic;
+        u16 i;
+
+        if (eeprom->len == 0)
+                return -EINVAL;
+
+        magic = hw->vendor_id | (hw->device_id << 16);
+        if (eeprom->magic && eeprom->magic != magic) {
+                nvm = (struct e1000_nvm_access *)eeprom;
+                ret_val = igb_nvmupd_command(hw, nvm, bytes);
+                return ret_val;
+        }
+          
+        /* normal ethtool get_eeprom support */
+        eeprom->magic = hw->vendor_id | (hw->device_id << 16);
+
+        first_word = eeprom->offset >> 1;
+        last_word = (eeprom->offset + eeprom->len - 1) >> 1;
+
+        eeprom_buff = kmalloc(sizeof(u16) *
+                        (last_word - first_word + 1), GFP_KERNEL);
+        if (!eeprom_buff)
+                return -ENOMEM;
+
+        if (hw->nvm.type == e1000_nvm_eeprom_spi)
+                ret_val = e1000_read_nvm(hw, first_word,
+                                         last_word - first_word + 1,
+                                         eeprom_buff);
+        else {
+                for (i = 0; i < last_word - first_word + 1; i++) {
+                        ret_val = e1000_read_nvm(hw, first_word + i, 1,
+                                                 &eeprom_buff[i]);
+                        if (ret_val)
+                                break;
+                }
+        }
+
+        /* Device's eeprom is always little-endian, word addressable */
+        for (i = 0; i < last_word - first_word + 1; i++)
+                eeprom_buff[i] = le16_to_cpu(eeprom_buff[i]);
+
+        memcpy(bytes, (u8 *)eeprom_buff + (eeprom->offset & 1),
+                        eeprom->len);
+        kfree(eeprom_buff);
+
+        return ret_val;
 }
 
 static int igb_set_eeprom(struct net_device *netdev,
-			  struct ethtool_eeprom *eeprom, u8 *bytes)
-{
-	struct igb_adapter *adapter = netdev_priv(netdev);
-	struct e1000_hw *hw = &adapter->hw;
-	u16 *eeprom_buff;
-	void *ptr;
-	int max_len, first_word, last_word, ret_val = 0;
-	u16 i;
-
-	if (eeprom->len == 0)
-		return -EOPNOTSUPP;
-
-	if ((hw->mac.type >= e1000_i210) &&
-	    !igb_get_flash_presence_i210(hw)) {
-		return -EOPNOTSUPP;
-	}
-
-	if (eeprom->magic != (hw->vendor_id | (hw->device_id << 16)))
-		return -EFAULT;
-
-	max_len = hw->nvm.word_size * 2;
-
-	first_word = eeprom->offset >> 1;
-	last_word = (eeprom->offset + eeprom->len - 1) >> 1;
-	eeprom_buff = kmalloc(max_len, GFP_KERNEL);
-	if (!eeprom_buff)
-		return -ENOMEM;
-
-	ptr = (void *)eeprom_buff;
-
-	if (eeprom->offset & 1) {
-		/* need read/modify/write of first changed EEPROM word
-		 * only the second byte of the word is being modified
-		 */
-		ret_val = hw->nvm.ops.read(hw, first_word, 1,
-					    &eeprom_buff[0]);
-		ptr++;
-	}
-	if (((eeprom->offset + eeprom->len) & 1) && (ret_val == 0)) {
-		/* need read/modify/write of last changed EEPROM word
-		 * only the first byte of the word is being modified
-		 */
-		ret_val = hw->nvm.ops.read(hw, last_word, 1,
-				   &eeprom_buff[last_word - first_word]);
-		if (ret_val)
-			goto out;
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
-	ret_val = hw->nvm.ops.write(hw, first_word,
-				    last_word - first_word + 1, eeprom_buff);
-
-	/* Update the checksum if nvm write succeeded */
-	if (ret_val == 0)
-		hw->nvm.ops.update(hw);
-
-	igb_set_fw_version(adapter);
+                          struct ethtool_eeprom *eeprom, u8 *bytes)
+{
+        struct igb_adapter *adapter = netdev_priv(netdev);
+        struct e1000_hw *hw = &adapter->hw;
+        u16 *eeprom_buff;
+        void *ptr;
+        int max_len, first_word, last_word, ret_val = 0;
+        struct e1000_nvm_access *nvm;
+        u32 magic;
+        u16 i;
+
+        if (eeprom->len == 0)
+                return -EOPNOTSUPP;
+
+        magic = hw->vendor_id | (hw->device_id << 16);
+        if (eeprom->magic && eeprom->magic != magic) {
+                nvm = (struct e1000_nvm_access *)eeprom;
+                ret_val = igb_nvmupd_command(hw, nvm, bytes);
+                return ret_val;
+        }
+
+        /* normal ethtool get_eeprom support */
+        if (eeprom->magic != (hw->vendor_id | (hw->device_id << 16)))
+                return -EFAULT;
+
+        max_len = hw->nvm.word_size * 2;
+
+        first_word = eeprom->offset >> 1;
+        last_word = (eeprom->offset + eeprom->len - 1) >> 1;
+        eeprom_buff = kmalloc(max_len, GFP_KERNEL);
+        if (!eeprom_buff)
+                return -ENOMEM;
+
+        ptr = (void *)eeprom_buff;
+
+        if (eeprom->offset & 1) {
+                /* need read/modify/write of first changed EEPROM word */
+                /* only the second byte of the word is being modified */
+                ret_val = e1000_read_nvm(hw, first_word, 1,
+                                            &eeprom_buff[0]);
+                ptr++;
+        }
+        if (((eeprom->offset + eeprom->len) & 1) && (ret_val == 0)) {
+                /* need read/modify/write of last changed EEPROM word */
+                /* only the first byte of the word is being modified */
+                ret_val = e1000_read_nvm(hw, last_word, 1,
+                          &eeprom_buff[last_word - first_word]);
+                if (ret_val)
+                        goto out;
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
+        ret_val = e1000_write_nvm(hw, first_word,
+                                  last_word - first_word + 1, eeprom_buff);
+
+        /* Update the checksum if write succeeded.
+         * and flush shadow RAM for 82573 controllers */
+        if (ret_val == 0)
+                e1000_update_nvm_checksum(hw);
 out:
-	kfree(eeprom_buff);
-	return ret_val;
+        kfree(eeprom_buff);
+        return ret_val;
 }
 
 static void igb_get_drvinfo(struct net_device *netdev,
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index fce2930ae..06b97ed9a 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -1955,6 +1955,28 @@ static void igb_setup_tx_mode(struct igb_adapter *adapter)
 		   "enabled" : "disabled");
 }
 
+u32 e1000_read_reg(struct e1000_hw *hw, u32 reg)
+{
+        struct igb_adapter *igb = container_of(hw, struct igb_adapter, hw);
+        u8 __iomem *hw_addr = READ_ONCE(hw->hw_addr);
+        u32 value = 0;
+
+        if (E1000_REMOVED(hw_addr))
+                return ~value;
+
+        value = readl(&hw_addr[reg]);
+
+        /* reads should not return all F's */
+        if (!(~value) && (!reg || !(~readl(hw_addr)))) {
+                struct net_device *netdev = igb->netdev;
+
+                hw->hw_addr = NULL;
+                netdev_err(netdev, "PCIe link lost\n");
+        }
+
+        return value;
+}
+
 /**
  *  igb_configure - configure the hardware for RX and TX
  *  @adapter: private board structure
@@ -4091,6 +4113,18 @@ static int igb_sw_init(struct igb_adapter *adapter)
 		adapter->flags &= ~IGB_FLAG_DMAC;
 
 	set_bit(__IGB_DOWN, &adapter->state);
+
+        /* NVM Update features structure initialization */
+        hw->nvmupd_features.major = E1000_NVMUPD_FEATURES_API_VER_MAJOR;
+        hw->nvmupd_features.minor = E1000_NVMUPD_FEATURES_API_VER_MINOR;
+        hw->nvmupd_features.size = sizeof(hw->nvmupd_features);
+        memset(hw->nvmupd_features.features, 0x0,
+               E1000_NVMUPD_FEATURES_API_FEATURES_ARRAY_LEN *
+               sizeof(*hw->nvmupd_features.features));
+
+        hw->nvmupd_features.features[0] =
+                E1000_NVMUPD_FEATURE_REGISTER_ACCESS_SUPPORT;
+
 	return 0;
 }
 
-- 
2.40.1

