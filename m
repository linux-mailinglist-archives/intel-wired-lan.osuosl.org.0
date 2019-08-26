Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4428E9D54A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Aug 2019 20:02:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 41269868C8;
	Mon, 26 Aug 2019 18:02:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zlnk5AnLoQgC; Mon, 26 Aug 2019 18:02:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BAAA8868CB;
	Mon, 26 Aug 2019 18:02:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8CA311BF33A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2019 18:02:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7AF69868C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2019 18:02:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d8mQluNLsXFo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Aug 2019 18:02:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1F3D7868C0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2019 18:02:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 11:02:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; d="scan'208";a="170935701"
Received: from irsmsx107.ger.corp.intel.com ([163.33.3.99])
 by orsmga007.jf.intel.com with ESMTP; 26 Aug 2019 11:02:13 -0700
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.73]) by
 IRSMSX107.ger.corp.intel.com ([169.254.10.55]) with mapi id 14.03.0439.000;
 Mon, 26 Aug 2019 19:02:12 +0100
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH] igb: read flash with iomem=strict
Thread-Index: AdVcN7s826NWkNHTQfuOXgKtGASDIg==
Date: Mon, 26 Aug 2019 18:02:11 +0000
Message-ID: <0EF347314CF65544BA015993979A29CD8D2CAE01@irsmsx105.ger.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNDMwOWNjZmItNDk4Ni00M2Y0LTlhYWQtMzdhNDk3Y2ZiYjlmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiUHlzRzF4VzFMSWFOTitZUVwvUzZZVmY3Tk1OYndQY3diVUh1K1cyU0lGZEx4NUgrR2VjakJsWnJJM25zUUhYUHkifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] igb: read flash with iomem=strict
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
Cc: "Ludkiewicz, Adam" <adam.ludkiewicz@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Adam Ludkeiwicz <adam.ludkiewicz@intel.com>

When Secure Boot is enabled access to the /dev/mem is forbidden for
user-space applications and clients are reporting inability to use tools
in Secure Boot Mode. The way to perform NVM update is to use igb driver.
Currently 1G Linux Base Driver has API which allows only EEPROM access.
There is a need to extend IOCTL API to allow NVM and registers access.

Signed-off-by: Adam Ludkiewicz <adam.ludkiewicz@intel.com>
---

diff --git a/drivers/net/ethernet/intel/igb/e1000_defines.h b/drivers/net/e=
thernet/intel/igb/e1000_defines.h
index d2e2c50..68dee6a 100644
--- a/drivers/net/ethernet/intel/igb/e1000_defines.h
+++ b/drivers/net/ethernet/intel/igb/e1000_defines.h
@@ -481,6 +481,7 @@
#define E1000_RAH_POOL_1 0x00040000

=A0/* Error Codes */
+#define E1000_SUCCESS=A0=A0=A0=A0=A0 0
#define E1000_ERR_NVM=A0=A0=A0=A0=A0 1
#define E1000_ERR_PHY=A0=A0=A0=A0=A0 2
#define E1000_ERR_CONFIG=A0=A0 3
@@ -800,6 +801,37 @@
#define NVM_ETS_DATA_INDEX_SHIFT=A0=A0 8
#define NVM_ETS_DATA_HTHRESH_MASK=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 0x00FF

+#define E1000_REGISTER_SET_SIZE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 0x20000 /* CSR Size */
+#define E1000_FLA=A0=A0=A0=A0=A0=A0=A0 0x0001C=A0 /* Flash Access - RW */
+#define E1000_FLOP=A0=A0=A0=A0 0x0103C=A0 /* FLASH Opcode Register */
+#define E1000_I350_BARCTRL=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 0x5BFC /* BAR ctrl reg */
+#define E1000_I350_DTXMXPKTSZ=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 0x355C /* Maximum sent packet size reg*/
+
+#define E1000_SRWR=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 0=
x12018
+#define E1000_EEC_REG=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 0x12010
+
+#define E1000_SHADOWINF=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 0x12068
+#define E1000_FLFWUPDATE=A0=A0=A0=A0 0x12108
+
+/* os dep */
+#define E1000_READ_FLASH_REG(a, reg) (readl((a)->flash_address + (reg)))
+
+#define E1000_READ_FLASH_REG8(a, reg) ( \
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 readb(READ_ONCE((a)->flash_address) +=
 (reg)))
+
+#define E1000_WRITE_FLASH_REG(a, reg, value) ( \
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 writel((value), ((a)->flash_address +=
 (reg))))
+
+#define E1000_READ_REG(x, y) igb_rd32(x, y)
+#define E1000_READ_REG8(h, r) readb(READ_ONCE((h)->hw_addr) + (r))
+
+#define E1000_WRITE_REG(hw, reg, val) \
+do { \
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u8 __iomem *hw_addr =3D READ_ONCE((hw=
)->hw_addr); \
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (!E1000_REMOVED(hw_addr)) \
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 writel((val), &hw_addr[(reg)]); \
+} while (0)
+
#define E1000_NVM_CFG_DONE_PORT_0=A0 0x040000 /* MNG config cycle done */
#define E1000_NVM_CFG_DONE_PORT_1=A0 0x080000 /* ...for second port */
#define E1000_NVM_CFG_DONE_PORT_2=A0 0x100000 /* ...for third port */
diff --git a/drivers/net/ethernet/intel/igb/e1000_hw.h b/drivers/net/ethern=
et/intel/igb/e1000_hw.h
index 5d87957..ff034d2 100644
--- a/drivers/net/ethernet/intel/igb/e1000_hw.h
+++ b/drivers/net/ethernet/intel/igb/e1000_hw.h
@@ -50,6 +50,19 @@
#define E1000_DEV_ID_I354_SGMII=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 0x=
1F41
#define E1000_DEV_ID_I354_BACKPLANE_2_5GBPS=A0=A0=A0=A0=A0=A0=A0=A0 0x1F45

+/* NVM Update commands */
+#define E1000_NVMUPD_CMD_REG_READ=A0=A0=A0=A0=A0=A0=A0=A0 0x0000000B
+#define E1000_NVMUPD_CMD_REG_WRITE=A0=A0=A0=A0=A0=A0 0x0000000C
+
+/* NVM Update features API */
+#define E1000_NVMUPD_FEATURES_API_VER_MAJOR=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 0
+#define E1000_NVMUPD_FEATURES_API_VER_MINOR=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 0
+#define E1000_NVMUPD_FEATURES_API_FEATURES_ARRAY_LEN=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 12
+#define E1000_NVMUPD_EXEC_FEATURES=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 0xE
+#define E1000_NVMUPD_FEATURE_FLAT_NVM_SUPPORT=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 BIT(0)
+#define E1000_NVMUPD_FEATURE_REGISTER_ACCESS_SUPPORT=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 BIT(1)
+#define E1000_NVMUPD_MOD_PNT_MASK=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 0x=
FF
+
#define E1000_REVISION_2 2
#define E1000_REVISION_4 4

@@ -514,6 +527,21 @@
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 bool mas_capable;
};

+struct e1000_nvm_access {
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 command;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 config;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 offset;=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 /* in bytes */
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 data_size;=A0=A0=A0 /* in bytes */
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u8 data[1];
+};
+
+struct e1000_nvm_features {
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u8 major;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u8 minor;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u16 size;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u8 features[E1000_NVMUPD_FEATURES_API=
_FEATURES_ARRAY_LEN];
+};
+
struct e1000_hw {
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 void *back;

@@ -539,6 +567,8 @@
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u16 vendor_id;

=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u8=A0 revision_id;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 /* NVM Update features */
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct e1000_nvm_features nvmupd_feat=
ures;
};

=A0struct net_device *igb_get_hw_dev(struct e1000_hw *hw);
diff --git a/drivers/net/ethernet/intel/igb/e1000_nvm.c b/drivers/net/ether=
net/intel/igb/e1000_nvm.c
index 09f4dcb..0522e04 100644
--- a/drivers/net/ethernet/intel/igb/e1000_nvm.c
+++ b/drivers/net/ethernet/intel/igb/e1000_nvm.c
@@ -780,3 +780,17 @@
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 | eeprom_verl;
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
}
+
+/* NVM Update features structure initialization */
+void e1000_init_nvmupdate_features(struct e1000_hw *hw)
+{
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 hw->nvmupd_features.major =3D E1000_N=
VMUPD_FEATURES_API_VER_MAJOR;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 hw->nvmupd_features.minor =3D E1000_N=
VMUPD_FEATURES_API_VER_MINOR;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 hw->nvmupd_features.size =3D sizeof(h=
w->nvmupd_features);
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 memset(hw->nvmupd_features.features, =
0x0,
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0=A0=A0=A0=A0 E1000_NVMUPD_FEATU=
RES_API_FEATURES_ARRAY_LEN *
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0=A0=A0=A0=A0 sizeof(*hw->nvmupd=
_features.features));
+
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 hw->nvmupd_features.features[0] =3D
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 E1000_NVMUPD_FEATURE_REGISTER_ACCESS_SUPPORT;
+}
diff --git a/drivers/net/ethernet/intel/igb/e1000_nvm.h b/drivers/net/ether=
net/intel/igb/e1000_nvm.h
index 091cddf..2f89b0b 100644
--- a/drivers/net/ethernet/intel/igb/e1000_nvm.h
+++ b/drivers/net/ethernet/intel/igb/e1000_nvm.h
@@ -32,5 +32,6 @@
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u16 or_patch;
};
void igb_get_fw_version(struct e1000_hw *hw, struct e1000_fw_version *fw_ve=
rs);
+void e1000_init_nvmupdate_features(struct e1000_hw *hw);

=A0#endif
diff --git a/drivers/net/ethernet/intel/igb/e1000_regs.h b/drivers/net/ethe=
rnet/intel/igb/e1000_regs.h
index 0ad737d..7d2ea56 100644
--- a/drivers/net/ethernet/intel/igb/e1000_regs.h
+++ b/drivers/net/ethernet/intel/igb/e1000_regs.h
@@ -390,6 +390,7 @@
#define E1000_O2BGPTC=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 0x08FE4 /* OS2BMC=
 packets received by BMC */
#define E1000_O2BSPC 0x0415C /* OS2BMC packets transmitted by host */

+#define E1000_EEC_REG=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 0x12010
#define E1000_SRWR=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
 0x12018=A0 /* Shadow Ram Write Register - RW */
#define E1000_I210_FLMNGCTL 0x12038
#define E1000_I210_FLMNGDATA=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 0x1203C
@@ -398,6 +399,8 @@
#define E1000_I210_FLSWCTL=A0=A0=A0 0x12048
#define E1000_I210_FLSWDATA 0x1204C
#define E1000_I210_FLSWCNT=A0=A0 0x12050
+#define E1000_SHADOWINF=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 0x12068
+#define E1000_FLFWUPDATE=A0=A0=A0=A0 0x12108

=A0#define E1000_I210_FLA=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 0x1201C

diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/in=
tel/igb/igb.h
index ca54e26..6a425c9 100644
--- a/drivers/net/ethernet/intel/igb/igb.h
+++ b/drivers/net/ethernet/intel/igb/igb.h
@@ -504,6 +504,7 @@
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u16 link_duplex;

=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u8 __iomem *io_addr; /* Mainly f=
or iounmap use */
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u8 __iomem *flash_addr;

=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct work_struct reset_task;
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct work_struct watchdog_task;
diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/eth=
ernet/intel/igb/igb_ethtool.c
index c645d9e..0a82cf5 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -712,10 +712,181 @@
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 regs_buff[727 + i] =3D rd32(E1000_TDWBAH(i + 4));
}

+static u8 igb_nvmupd_get_module(u32 val)
+{
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return (u8)(val & E1000_NVMUPD_MOD_PN=
T_MASK);
+}
+
+static int igb_nvmupd_validate_offset(struct igb_adapter *adapter, u32 off=
set)
+{
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (offset >=3D E1000_REGISTER_SET_SI=
ZE)
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 return 0;
+
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 switch (offset) {
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_CTRL:
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_STATUS:
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_EECD:
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_EERD:
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_CTRL_EXT:
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_FLA:
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_FLOP:
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_SWSM:
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_FWSM:
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_SW_FW_SYNC:
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_IOVTCL:
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_I350_BARCTRL:
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_THSTAT:
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_EEC_REG:
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_SRWR:
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_I210_FLA:
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_I210_FLSWCTL:
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_I210_FLSWDATA:
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_I210_FLSWCNT:
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_SHADOWINF:
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_FLFWUPDATE:
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_RAL(0):
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_RAL(1):
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_RAL(2):
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_RAL(3):
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_RAL(4):
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_RAL(5):
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_RAL(6):
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_RAL(7):
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_RAL(8):
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_RAL(9):
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_RAL(10):
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_RAL(11):
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_RAL(12):
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_RAL(13):
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_RAL(14):
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_RAL(15):
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_RAH(0):
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_RAH(1):
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_RAH(2):
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_RAH(3):
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_RAH(4):
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_RAH(5):
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_RAH(6):
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_RAH(7):
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_RAH(8):
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_RAH(9):
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_RAH(10):
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_RAH(11):
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_RAH(12):
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_RAH(13):
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_RAH(14):
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_RAH(15):
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 return 0;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 default:
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 dev_warn(&adapter->pdev->dev, "Bad offset: %x\n", offset);
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 return -ENOTTY;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
+}
+
+static int igb_nvmupd_command(struct e1000_hw *hw,
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0=A0=A0=A0 stru=
ct e1000_nvm_access *nvm,
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0=A0=A0=A0 u8 *=
bytes)
+{
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct igb_adapter *adapter =3D hw->b=
ack;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 resource_size_t bar0_len;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 int ret_val =3D 0;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 command;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u8 module;
+
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 bar0_len =3D pci_resource_len(adapter=
->pdev, 0);
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 command =3D nvm->command;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 module =3D igb_nvmupd_get_module(nvm-=
>config);
+
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 switch (command) {
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_NVMUPD_CMD_REG_READ:
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 switch (module) {
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 case E1000_NVMUPD_EXEC_FEATURES:
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (nvm->data_size =
=3D=3D hw->nvmupd_features.size)
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 memcpy(bytes, &hw->nvmupd_features,
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0=A0=A0=A0=A0 hw->nvmupd_features.size);
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 else
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 ret_val =3D -ENOMEM;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 break;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 default:
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (igb_nvmupd_valid=
ate_offset(adapter, nvm->offset))
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 return -ENOTTY;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (nvm->offset >=3D=
 bar0_len) {
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 if (hw->mac.type =3D=3D e1000_82576 &&
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0=A0 hw->flash_address) {
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u16 o=
ffset =3D nvm->offset - bar0_len;
+
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (n=
vm->data_size =3D=3D 1)
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 *bytes =3D
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 E1000_READ_FLASH_REG8(hw,
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0=A0=A0=A0 offs=
et);
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 else
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 *((u32 *)bytes) =3D
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 E1000_READ_FLASH_REG(hw,
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0=A0=A0 offset);
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 } else {
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ret_v=
al =3D -EFAULT;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 }
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 } else if (nvm->data=
_size =3D=3D 1) {
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 *bytes =3D E1000_READ_REG8(hw, nvm->offset);
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 } else {
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 *((u32 *)bytes) =3D E1000_READ_REG(hw,
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 nvm->offset);
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 break;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 }
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 break;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case E1000_NVMUPD_CMD_REG_WRITE:
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 if (igb_nvmupd_validate_offset(adapter, nvm->offset))
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return -ENOTTY;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 if (nvm->offset >=3D bar0_len) {
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (hw->mac.type =3D=
=3D e1000_82576 && hw->flash_address)
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 E1000_WRITE_FLASH_REG(hw,
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0=A0=A0=A0 nvm->offset - bar0_=
len,
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0=A0=A0=A0 *((u32 *)bytes));
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 else
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 ret_val =3D -EFAULT;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 } else {
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 E1000_WRITE_REG(hw, =
nvm->offset, *((u32 *)bytes));
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 }
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 break;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
+
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return ret_val;
+}
+
static int igb_get_eeprom_len(struct net_device *netdev)
{
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct igb_adapter *adapter =3D net=
dev_priv(netdev);
-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return adapter->hw.nvm.word_size *=
 2;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct pci_dev *pdev =3D adapter->pde=
v;
+
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (adapter->hw.mac.type =3D=3D e1000=
_82576)
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 return pci_resource_len(pdev, 0) + pci_resource_len(pdev, 1);
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 else
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 return pci_resource_len(pdev, 0);
+}
+
+s32 e1000_read_nvm(struct e1000_hw *hw, u16 offset, u16 words, u16 *data)
+{
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (hw->nvm.ops.read)
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 return hw->nvm.ops.read(hw, offset, words, data);
+
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return -E1000_ERR_CONFIG;
+}
+
+s32 e1000_write_nvm(struct e1000_hw *hw, u16 offset, u16 words, u16 *data)
+{
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (hw->nvm.ops.write)
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 return hw->nvm.ops.write(hw, offset, words, data);
+
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return E1000_SUCCESS;
+}
+
+s32 e1000_update_nvm_checksum(struct e1000_hw *hw)
+{
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (hw->nvm.ops.update)
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 return hw->nvm.ops.update(hw);
+
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return -E1000_ERR_CONFIG;
}

=A0static int igb_get_eeprom(struct net_device *netdev,
@@ -726,11 +897,21 @@
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u16 *eeprom_buff;
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 int first_word, last_word;
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 int ret_val =3D 0;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct e1000_nvm_access *nvm;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 magic;
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u16 i;

=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (eeprom->len =3D=3D 0)
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 return -EINVAL;

+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 magic =3D hw->vendor_id | (hw->device=
_id << 16);
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (eeprom->magic && eeprom->magic !=
=3D magic) {
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 nvm =3D (struct e1000_nvm_access *)eeprom;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 ret_val =3D igb_nvmupd_command(hw, nvm, bytes);
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 return ret_val;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
+
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* normal ethtool get_eeprom support =
*/
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 eeprom->magic =3D hw->vendor_id | (=
hw->device_id << 16);

=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 first_word =3D eeprom->offset >>=
 1;
@@ -742,13 +923,13 @@
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 return -ENOMEM;

=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (hw->nvm.type =3D=3D e1000_nv=
m_eeprom_spi)
-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 ret_val =3D hw->nvm.ops.read(hw, first_word,
-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =
=A0=A0 last_word - first_word + 1,
-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =
=A0=A0 eeprom_buff);
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 ret_val =3D e1000_read_nvm(hw, first_word,
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 last_=
word - first_word + 1,
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 eepro=
m_buff);
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 else {
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 for (i =3D 0; i < last_word - first_word + 1; i++) {
-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ret_val =3D hw->n=
vm.ops.read(hw, first_word + i, 1,
-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0 &eeprom_buff[i]);
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ret_val =3D e1000_re=
ad_nvm(hw, first_word + i, 1,
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 &eeprom_buff[i]);
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (ret_val)
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 break;
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 }
@@ -773,6 +954,8 @@
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u16 *eeprom_buff;
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 void *ptr;
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 int max_len, first_word, last_word,=
 ret_val =3D 0;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct e1000_nvm_access *nvm;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 magic;
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u16 i;

=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (eeprom->len =3D=3D 0)
@@ -783,6 +966,14 @@
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 return -EOPNOTSUPP;
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }

+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 magic =3D hw->vendor_id | (hw->device=
_id << 16);
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (eeprom->magic && eeprom->magic !=
=3D magic) {
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 nvm =3D (struct e1000_nvm_access *)eeprom;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 ret_val =3D igb_nvmupd_command(hw, nvm, bytes);
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 return ret_val;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
+
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* normal ethtool get_eeprom support =
*/
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (eeprom->magic !=3D (hw->vendor_=
id | (hw->device_id << 16)))
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 return -EFAULT;

@@ -800,16 +991,16 @@
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 /* need read/modify/write of first changed EEPROM word
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 =A0* only the second byte of the word is being modified
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 =A0*/
-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 ret_val =3D hw->nvm.ops.read(hw, first_word, 1,
-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =
=A0=A0=A0 &eeprom_buff[0]);
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 ret_val =3D e1000_read_nvm(hw, first_word, 1,
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 &eepr=
om_buff[0]);
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 ptr++;
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (((eeprom->offset + eeprom->len)=
 & 1) && (ret_val =3D=3D 0)) {
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 /* need read/modify/write of last changed EEPROM word
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 =A0* only the first byte of the word is being modified
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 =A0*/
-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 ret_val =3D hw->nvm.ops.read(hw, last_word, 1,
-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0 &eeprom_buff[last_word - first_word]);
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 ret_val =3D e1000_read_nvm(hw, last_word, 1,
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 &eepr=
om_buff[last_word - first_word]);
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }

=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* Device's eeprom is always lit=
tle-endian, word addressable */
@@ -821,12 +1012,14 @@
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 for (i =3D 0; i < last_word - first=
_word + 1; i++)
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 eeprom_buff[i] =3D cpu_to_le16(eeprom_buff[i]);

-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ret_val =3D hw->nvm.ops.write(hw, =
first_word,
-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0=A0 last_word - first_word + 1, eeprom_bu=
ff);
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ret_val =3D e1000_write_nvm(hw, first=
_word,
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 =A0 last_word - first_word + 1, eeprom_buff);

-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* Update the checksum if nvm writ=
e succeeded */
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* Update the checksum if write succe=
eded.
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 * and flush shadow RAM for 82573 cont=
rollers
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 */
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (ret_val =3D=3D 0)
-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 hw->nvm.ops.update(hw);
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 e1000_update_nvm_checksum(hw);

=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 igb_set_fw_version(adapter);
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 kfree(eeprom_buff);
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethern=
et/intel/igb/igb_main.c
index 39f33af..dbbcda3 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -3095,6 +3095,7 @@
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 memcpy(&hw->mac.ops, ei->mac_ops, s=
izeof(hw->mac.ops));
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 memcpy(&hw->phy.ops, ei->phy_ops, s=
izeof(hw->phy.ops));
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 memcpy(&hw->nvm.ops, ei->nvm_ops, s=
izeof(hw->nvm.ops));
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 e1000_init_nvmupdate_features(hw);
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* Initialize skew-specific constan=
ts */
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 err =3D ei->get_invariants(hw);
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (err)
@@ -3106,6 +3107,15 @@
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 goto err_sw_init;

=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 igb_get_bus_info_pcie(hw);
+
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* 82576 accesses flash differently */
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (adapter->hw.mac.type =3D=3D e1000=
_82576) {
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 adapter->flash_addr =3D ioremap(pci_resource_start(pdev, 1),
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=
=A0=A0=A0=A0 pci_resource_len(pdev, 1));
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 if (!adapter->flash_addr)
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 dev_warn(&pdev->dev,=
 "Flash address mapping failed.");
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 hw->flash_address =3D adapter->flash_addr;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }

=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 hw->phy.autoneg_wait_to_complete=
 =3D false;

@@ -3475,6 +3485,8 @@
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 igb_disable_sriov(pdev);
#endif
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 pci_iounmap(pdev, adapter->io_addr);
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (adapter->flash_addr)
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 pci_iounmap(pdev, adapter->flash_addr);
err_ioremap:
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 free_netdev(netdev);
err_alloc_etherdev:
@@ -3674,10 +3686,12 @@
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 unregister_netdev(netdev);

=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 igb_clear_interrupt_scheme(adapt=
er);
-
-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 pci_iounmap(pdev, adapter->io_addr=
);
-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (hw->flash_address)
-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 iounmap(hw->flash_address);
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (adapter->io_addr)
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 pci_iounmap(pdev, adapter->io_addr);
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (adapter->flash_addr)
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 pci_iounmap(pdev, adapter->flash_addr);
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (hw->flash_address && hw->flash_ad=
dress !=3D adapter->flash_addr)
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 pci_iounmap(pdev, hw->flash_address);
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 pci_release_mem_regions(pdev);

=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 kfree(adapter->mac_table);

--------------------------------------------------------------------

Intel Technology Poland sp. z o.o.
ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydz=
ial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-31=
6 | Kapital zakladowy 200.000 PLN.

Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata=
 i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wi=
adomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiek=
olwiek
przegladanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the s=
ole use of the intended recipient(s). If you are not the intended recipient=
, please contact the sender and delete all copies; any review or distributi=
on by
others is strictly prohibited.


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

