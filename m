Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA3179F344
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Sep 2023 22:51:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 63286416FE;
	Wed, 13 Sep 2023 20:51:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 63286416FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694638274;
	bh=Yg9jeQlOoK5Ro1bf1mk31wQDduIaJ3PNlhnHnmkR9RU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=m3XutHChPuH/TBj/2PXG/y87zm5yiZZb/AI9bXMDHpqiugRG0Nm/AcacGrq2rgW2y
	 KWF//tdo1GExNawF+0ed/9rUO/7HMQHPUz7Gv+TLs9EDUxPE8M9q/wpjihBaEBCguj
	 ltQWQ+EgbLxH2F+xi5LHz2TN18FFUWQJsqY3dhi2PUCG07gcFIlh1Hq6kcsvzc6QWB
	 ysjCjPfTjL79/5hmAZB1v2mnA0/KEcj/JY/GvzcusRKuuIWYqscSKiPKiQNLwHedjp
	 TlwcSDbvWLkiQ6YHX4E4Sj5gSprZJmcvCNRAe8t0rnMGVejUbVS7tt8WL/OLZu5nMX
	 ChIwIHLL1iSVw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VDUTPmHBEcmY; Wed, 13 Sep 2023 20:51:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AA09F416C8;
	Wed, 13 Sep 2023 20:51:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA09F416C8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4EBDD1BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Sep 2023 20:50:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9F61460ED5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Sep 2023 20:50:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F61460ED5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IGRerAhfnAc3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Sep 2023 20:50:39 +0000 (UTC)
Received: from out-212.mta0.migadu.com (out-212.mta0.migadu.com
 [IPv6:2001:41d0:1004:224b::d4])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E49FD611D8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Sep 2023 20:50:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E49FD611D8
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
To: Jakub Kicinski <kuba@kernel.org>, Jiri Pirko <jiri@resnulli.us>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Paolo Abeni <pabeni@redhat.com>
Date: Wed, 13 Sep 2023 21:49:42 +0100
Message-Id: <20230913204943.1051233-9-vadim.fedorenko@linux.dev>
In-Reply-To: <20230913204943.1051233-1-vadim.fedorenko@linux.dev>
References: <20230913204943.1051233-1-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1694638237;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vZass3Dyedj4ggitp08zjYqaNhpM0XXdE/iC0Le1m5g=;
 b=RJYILRiPernX0SgPJS3DjhC+yzHFojqyk7DUGdhyfjB4JDM/tT9wgeisH+cgci50yb45Xs
 8pXrn2N8fZg3/s8uR3Ih6FDeMNGgDvQVL7odaZDjeIe1V270Gj13C2CLLiShd0v8PpSsRb
 KBXxYz/K7FrqB5foBGb6bygP5mrxcqk=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=RJYILRiP
Subject: [Intel-wired-lan] [PATCH net-next v8 8/9] ptp_ocp: implement DPLL
 ops
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
Cc: Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Bart Van Assche <bvanassche@acm.org>,
 Michal Michalik <michal.michalik@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Milena Olech <milena.olech@intel.com>,
 Jiri Pirko <jiri@nvidia.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Implement basic DPLL operations in ptp_ocp driver as the
simplest example of using new subsystem.

Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Jiri Pirko <jiri@nvidia.com>
---
v5->v6:
- rename DPLL_PIN_CAPS_* -> DPLL_PIN_CAPABILITIES_*
RFC:
v9->v10:
- implement monitoring thread and netlink notification

 drivers/ptp/Kconfig   |   1 +
 drivers/ptp/ptp_ocp.c | 369 +++++++++++++++++++++++++++++++++++-------
 2 files changed, 310 insertions(+), 60 deletions(-)

diff --git a/drivers/ptp/Kconfig b/drivers/ptp/Kconfig
index ed9d97a032f1..5dd5f188e14f 100644
--- a/drivers/ptp/Kconfig
+++ b/drivers/ptp/Kconfig
@@ -188,6 +188,7 @@ config PTP_1588_CLOCK_OCP
 	depends on COMMON_CLK
 	select NET_DEVLINK
 	select CRC16
+	select DPLL
 	help
 	  This driver adds support for an OpenCompute time card.
 
diff --git a/drivers/ptp/ptp_ocp.c b/drivers/ptp/ptp_ocp.c
index 20a974ced8d6..88d60a9b5731 100644
--- a/drivers/ptp/ptp_ocp.c
+++ b/drivers/ptp/ptp_ocp.c
@@ -23,6 +23,7 @@
 #include <linux/mtd/mtd.h>
 #include <linux/nvmem-consumer.h>
 #include <linux/crc16.h>
+#include <linux/dpll.h>
 
 #define PCI_VENDOR_ID_FACEBOOK			0x1d9b
 #define PCI_DEVICE_ID_FACEBOOK_TIMECARD		0x0400
@@ -260,12 +261,21 @@ enum ptp_ocp_sma_mode {
 	SMA_MODE_OUT,
 };
 
+static struct dpll_pin_frequency ptp_ocp_sma_freq[] = {
+	DPLL_PIN_FREQUENCY_1PPS,
+	DPLL_PIN_FREQUENCY_10MHZ,
+	DPLL_PIN_FREQUENCY_IRIG_B,
+	DPLL_PIN_FREQUENCY_DCF77,
+};
+
 struct ptp_ocp_sma_connector {
 	enum	ptp_ocp_sma_mode mode;
 	bool	fixed_fcn;
 	bool	fixed_dir;
 	bool	disabled;
 	u8	default_fcn;
+	struct dpll_pin		   *dpll_pin;
+	struct dpll_pin_properties dpll_prop;
 };
 
 struct ocp_attr_group {
@@ -294,6 +304,7 @@ struct ptp_ocp_serial_port {
 
 #define OCP_BOARD_ID_LEN		13
 #define OCP_SERIAL_LEN			6
+#define OCP_SMA_NUM			4
 
 struct ptp_ocp {
 	struct pci_dev		*pdev;
@@ -331,7 +342,9 @@ struct ptp_ocp {
 	const struct attribute_group **attr_group;
 	const struct ptp_ocp_eeprom_map *eeprom_map;
 	struct dentry		*debug_root;
+	bool			sync;
 	time64_t		gnss_lost;
+	struct delayed_work	sync_work;
 	int			id;
 	int			n_irqs;
 	struct ptp_ocp_serial_port	gnss_port;
@@ -350,8 +363,9 @@ struct ptp_ocp {
 	u32			ts_window_adjust;
 	u64			fw_cap;
 	struct ptp_ocp_signal	signal[4];
-	struct ptp_ocp_sma_connector sma[4];
+	struct ptp_ocp_sma_connector sma[OCP_SMA_NUM];
 	const struct ocp_sma_op *sma_op;
+	struct dpll_device *dpll;
 };
 
 #define OCP_REQ_TIMESTAMP	BIT(0)
@@ -835,6 +849,7 @@ static DEFINE_IDR(ptp_ocp_idr);
 struct ocp_selector {
 	const char *name;
 	int value;
+	u64 frequency;
 };
 
 static const struct ocp_selector ptp_ocp_clock[] = {
@@ -855,31 +870,31 @@ static const struct ocp_selector ptp_ocp_clock[] = {
 #define SMA_SELECT_MASK		GENMASK(14, 0)
 
 static const struct ocp_selector ptp_ocp_sma_in[] = {
-	{ .name = "10Mhz",	.value = 0x0000 },
-	{ .name = "PPS1",	.value = 0x0001 },
-	{ .name = "PPS2",	.value = 0x0002 },
-	{ .name = "TS1",	.value = 0x0004 },
-	{ .name = "TS2",	.value = 0x0008 },
-	{ .name = "IRIG",	.value = 0x0010 },
-	{ .name = "DCF",	.value = 0x0020 },
-	{ .name = "TS3",	.value = 0x0040 },
-	{ .name = "TS4",	.value = 0x0080 },
-	{ .name = "FREQ1",	.value = 0x0100 },
-	{ .name = "FREQ2",	.value = 0x0200 },
-	{ .name = "FREQ3",	.value = 0x0400 },
-	{ .name = "FREQ4",	.value = 0x0800 },
-	{ .name = "None",	.value = SMA_DISABLE },
+	{ .name = "10Mhz",  .value = 0x0000,      .frequency = 10000000 },
+	{ .name = "PPS1",   .value = 0x0001,      .frequency = 1 },
+	{ .name = "PPS2",   .value = 0x0002,      .frequency = 1 },
+	{ .name = "TS1",    .value = 0x0004,      .frequency = 0 },
+	{ .name = "TS2",    .value = 0x0008,      .frequency = 0 },
+	{ .name = "IRIG",   .value = 0x0010,      .frequency = 10000 },
+	{ .name = "DCF",    .value = 0x0020,      .frequency = 77500 },
+	{ .name = "TS3",    .value = 0x0040,      .frequency = 0 },
+	{ .name = "TS4",    .value = 0x0080,      .frequency = 0 },
+	{ .name = "FREQ1",  .value = 0x0100,      .frequency = 0 },
+	{ .name = "FREQ2",  .value = 0x0200,      .frequency = 0 },
+	{ .name = "FREQ3",  .value = 0x0400,      .frequency = 0 },
+	{ .name = "FREQ4",  .value = 0x0800,      .frequency = 0 },
+	{ .name = "None",   .value = SMA_DISABLE, .frequency = 0 },
 	{ }
 };
 
 static const struct ocp_selector ptp_ocp_sma_out[] = {
-	{ .name = "10Mhz",	.value = 0x0000 },
-	{ .name = "PHC",	.value = 0x0001 },
-	{ .name = "MAC",	.value = 0x0002 },
-	{ .name = "GNSS1",	.value = 0x0004 },
-	{ .name = "GNSS2",	.value = 0x0008 },
-	{ .name = "IRIG",	.value = 0x0010 },
-	{ .name = "DCF",	.value = 0x0020 },
+	{ .name = "10Mhz",	.value = 0x0000,  .frequency = 10000000 },
+	{ .name = "PHC",	.value = 0x0001,  .frequency = 1 },
+	{ .name = "MAC",	.value = 0x0002,  .frequency = 1 },
+	{ .name = "GNSS1",	.value = 0x0004,  .frequency = 1 },
+	{ .name = "GNSS2",	.value = 0x0008,  .frequency = 1 },
+	{ .name = "IRIG",	.value = 0x0010,  .frequency = 10000 },
+	{ .name = "DCF",	.value = 0x0020,  .frequency = 77000 },
 	{ .name = "GEN1",	.value = 0x0040 },
 	{ .name = "GEN2",	.value = 0x0080 },
 	{ .name = "GEN3",	.value = 0x0100 },
@@ -890,15 +905,15 @@ static const struct ocp_selector ptp_ocp_sma_out[] = {
 };
 
 static const struct ocp_selector ptp_ocp_art_sma_in[] = {
-	{ .name = "PPS1",	.value = 0x0001 },
-	{ .name = "10Mhz",	.value = 0x0008 },
+	{ .name = "PPS1",	.value = 0x0001,  .frequency = 1 },
+	{ .name = "10Mhz",	.value = 0x0008,  .frequency = 1000000 },
 	{ }
 };
 
 static const struct ocp_selector ptp_ocp_art_sma_out[] = {
-	{ .name = "PHC",	.value = 0x0002 },
-	{ .name = "GNSS",	.value = 0x0004 },
-	{ .name = "10Mhz",	.value = 0x0010 },
+	{ .name = "PHC",	.value = 0x0002,  .frequency = 1 },
+	{ .name = "GNSS",	.value = 0x0004,  .frequency = 1 },
+	{ .name = "10Mhz",	.value = 0x0010,  .frequency = 10000000 },
 	{ }
 };
 
@@ -1351,7 +1366,6 @@ static int
 ptp_ocp_init_clock(struct ptp_ocp *bp)
 {
 	struct timespec64 ts;
-	bool sync;
 	u32 ctrl;
 
 	ctrl = OCP_CTRL_ENABLE;
@@ -1375,8 +1389,8 @@ ptp_ocp_init_clock(struct ptp_ocp *bp)
 
 	ptp_ocp_estimate_pci_timing(bp);
 
-	sync = ioread32(&bp->reg->status) & OCP_STATUS_IN_SYNC;
-	if (!sync) {
+	bp->sync = ioread32(&bp->reg->status) & OCP_STATUS_IN_SYNC;
+	if (!bp->sync) {
 		ktime_get_clocktai_ts64(&ts);
 		ptp_ocp_settime(&bp->ptp_info, &ts);
 	}
@@ -2289,22 +2303,35 @@ ptp_ocp_sma_fb_set_inputs(struct ptp_ocp *bp, int sma_nr, u32 val)
 static void
 ptp_ocp_sma_fb_init(struct ptp_ocp *bp)
 {
+	struct dpll_pin_properties prop = {
+		.board_label = NULL,
+		.type = DPLL_PIN_TYPE_EXT,
+		.capabilities = DPLL_PIN_CAPABILITIES_DIRECTION_CAN_CHANGE,
+		.freq_supported_num = ARRAY_SIZE(ptp_ocp_sma_freq),
+		.freq_supported = ptp_ocp_sma_freq,
+
+	};
 	u32 reg;
 	int i;
 
 	/* defaults */
+	for (i = 0; i < OCP_SMA_NUM; i++) {
+		bp->sma[i].default_fcn = i & 1;
+		bp->sma[i].dpll_prop = prop;
+		bp->sma[i].dpll_prop.board_label =
+			bp->ptp_info.pin_config[i].name;
+	}
 	bp->sma[0].mode = SMA_MODE_IN;
 	bp->sma[1].mode = SMA_MODE_IN;
 	bp->sma[2].mode = SMA_MODE_OUT;
 	bp->sma[3].mode = SMA_MODE_OUT;
-	for (i = 0; i < 4; i++)
-		bp->sma[i].default_fcn = i & 1;
-
 	/* If no SMA1 map, the pin functions and directions are fixed. */
 	if (!bp->sma_map1) {
-		for (i = 0; i < 4; i++) {
+		for (i = 0; i < OCP_SMA_NUM; i++) {
 			bp->sma[i].fixed_fcn = true;
 			bp->sma[i].fixed_dir = true;
+			bp->sma[1].dpll_prop.capabilities &=
+				~DPLL_PIN_CAPABILITIES_DIRECTION_CAN_CHANGE;
 		}
 		return;
 	}
@@ -2314,7 +2341,7 @@ ptp_ocp_sma_fb_init(struct ptp_ocp *bp)
 	 */
 	reg = ioread32(&bp->sma_map2->gpio2);
 	if (reg == 0xffffffff) {
-		for (i = 0; i < 4; i++)
+		for (i = 0; i < OCP_SMA_NUM; i++)
 			bp->sma[i].fixed_dir = true;
 	} else {
 		reg = ioread32(&bp->sma_map1->gpio1);
@@ -2336,7 +2363,7 @@ static const struct ocp_sma_op ocp_fb_sma_op = {
 };
 
 static int
-ptp_ocp_fb_set_pins(struct ptp_ocp *bp)
+ptp_ocp_set_pins(struct ptp_ocp *bp)
 {
 	struct ptp_pin_desc *config;
 	int i;
@@ -2403,16 +2430,16 @@ ptp_ocp_fb_board_init(struct ptp_ocp *bp, struct ocp_resource *r)
 
 	ptp_ocp_tod_init(bp);
 	ptp_ocp_nmea_out_init(bp);
-	ptp_ocp_sma_init(bp);
 	ptp_ocp_signal_init(bp);
 
 	err = ptp_ocp_attr_group_add(bp, fb_timecard_groups);
 	if (err)
 		return err;
 
-	err = ptp_ocp_fb_set_pins(bp);
+	err = ptp_ocp_set_pins(bp);
 	if (err)
 		return err;
+	ptp_ocp_sma_init(bp);
 
 	return ptp_ocp_init_clock(bp);
 }
@@ -2452,6 +2479,14 @@ ptp_ocp_register_resources(struct ptp_ocp *bp, kernel_ulong_t driver_data)
 static void
 ptp_ocp_art_sma_init(struct ptp_ocp *bp)
 {
+	struct dpll_pin_properties prop = {
+		.board_label = NULL,
+		.type = DPLL_PIN_TYPE_EXT,
+		.capabilities = 0,
+		.freq_supported_num = ARRAY_SIZE(ptp_ocp_sma_freq),
+		.freq_supported = ptp_ocp_sma_freq,
+
+	};
 	u32 reg;
 	int i;
 
@@ -2466,16 +2501,16 @@ ptp_ocp_art_sma_init(struct ptp_ocp *bp)
 	bp->sma[2].default_fcn = 0x10;	/* OUT: 10Mhz */
 	bp->sma[3].default_fcn = 0x02;	/* OUT: PHC */
 
-	/* If no SMA map, the pin functions and directions are fixed. */
-	if (!bp->art_sma) {
-		for (i = 0; i < 4; i++) {
+	for (i = 0; i < OCP_SMA_NUM; i++) {
+		/* If no SMA map, the pin functions and directions are fixed. */
+		bp->sma[i].dpll_prop = prop;
+		bp->sma[i].dpll_prop.board_label =
+			bp->ptp_info.pin_config[i].name;
+		if (!bp->art_sma) {
 			bp->sma[i].fixed_fcn = true;
 			bp->sma[i].fixed_dir = true;
+			continue;
 		}
-		return;
-	}
-
-	for (i = 0; i < 4; i++) {
 		reg = ioread32(&bp->art_sma->map[i].gpio);
 
 		switch (reg & 0xff) {
@@ -2486,9 +2521,13 @@ ptp_ocp_art_sma_init(struct ptp_ocp *bp)
 		case 1:
 		case 8:
 			bp->sma[i].mode = SMA_MODE_IN;
+			bp->sma[i].dpll_prop.capabilities =
+				DPLL_PIN_CAPABILITIES_DIRECTION_CAN_CHANGE;
 			break;
 		default:
 			bp->sma[i].mode = SMA_MODE_OUT;
+			bp->sma[i].dpll_prop.capabilities =
+				DPLL_PIN_CAPABILITIES_DIRECTION_CAN_CHANGE;
 			break;
 		}
 	}
@@ -2555,6 +2594,9 @@ ptp_ocp_art_board_init(struct ptp_ocp *bp, struct ocp_resource *r)
 	/* Enable MAC serial port during initialisation */
 	iowrite32(1, &bp->board_config->mro50_serial_activate);
 
+	err = ptp_ocp_set_pins(bp);
+	if (err)
+		return err;
 	ptp_ocp_sma_init(bp);
 
 	err = ptp_ocp_attr_group_add(bp, art_timecard_groups);
@@ -2696,16 +2738,9 @@ sma4_show(struct device *dev, struct device_attribute *attr, char *buf)
 }
 
 static int
-ptp_ocp_sma_store(struct ptp_ocp *bp, const char *buf, int sma_nr)
+ptp_ocp_sma_store_val(struct ptp_ocp *bp, int val, enum ptp_ocp_sma_mode mode, int sma_nr)
 {
 	struct ptp_ocp_sma_connector *sma = &bp->sma[sma_nr - 1];
-	enum ptp_ocp_sma_mode mode;
-	int val;
-
-	mode = sma->mode;
-	val = sma_parse_inputs(bp->sma_op->tbl, buf, &mode);
-	if (val < 0)
-		return val;
 
 	if (sma->fixed_dir && (mode != sma->mode || val & SMA_DISABLE))
 		return -EOPNOTSUPP;
@@ -2740,6 +2775,20 @@ ptp_ocp_sma_store(struct ptp_ocp *bp, const char *buf, int sma_nr)
 	return val;
 }
 
+static int
+ptp_ocp_sma_store(struct ptp_ocp *bp, const char *buf, int sma_nr)
+{
+	struct ptp_ocp_sma_connector *sma = &bp->sma[sma_nr - 1];
+	enum ptp_ocp_sma_mode mode;
+	int val;
+
+	mode = sma->mode;
+	val = sma_parse_inputs(bp->sma_op->tbl, buf, &mode);
+	if (val < 0)
+		return val;
+	return ptp_ocp_sma_store_val(bp, val, mode, sma_nr);
+}
+
 static ssize_t
 sma1_store(struct device *dev, struct device_attribute *attr,
 	   const char *buf, size_t count)
@@ -3834,9 +3883,8 @@ ptp_ocp_summary_show(struct seq_file *s, void *data)
 		strcpy(buf, "unknown");
 		break;
 	}
-	val = ioread32(&bp->reg->status);
 	seq_printf(s, "%7s: %s, state: %s\n", "PHC src", buf,
-		   val & OCP_STATUS_IN_SYNC ? "sync" : "unsynced");
+		   bp->sync ? "sync" : "unsynced");
 
 	if (!ptp_ocp_gettimex(&bp->ptp_info, &ts, &sts)) {
 		struct timespec64 sys_ts;
@@ -4068,7 +4116,6 @@ ptp_ocp_phc_info(struct ptp_ocp *bp)
 {
 	struct timespec64 ts;
 	u32 version, select;
-	bool sync;
 
 	version = ioread32(&bp->reg->version);
 	select = ioread32(&bp->reg->select);
@@ -4077,11 +4124,10 @@ ptp_ocp_phc_info(struct ptp_ocp *bp)
 		 ptp_ocp_select_name_from_val(ptp_ocp_clock, select >> 16),
 		 ptp_clock_index(bp->ptp));
 
-	sync = ioread32(&bp->reg->status) & OCP_STATUS_IN_SYNC;
 	if (!ptp_ocp_gettimex(&bp->ptp_info, &ts, NULL))
 		dev_info(&bp->pdev->dev, "Time: %lld.%ld, %s\n",
 			 ts.tv_sec, ts.tv_nsec,
-			 sync ? "in-sync" : "UNSYNCED");
+			 bp->sync ? "in-sync" : "UNSYNCED");
 }
 
 static void
@@ -4178,12 +4224,168 @@ ptp_ocp_detach(struct ptp_ocp *bp)
 	device_unregister(&bp->dev);
 }
 
+static int ptp_ocp_dpll_lock_status_get(const struct dpll_device *dpll,
+					void *priv,
+					enum dpll_lock_status *status,
+					struct netlink_ext_ack *extack)
+{
+	struct ptp_ocp *bp = priv;
+
+	*status = bp->sync ? DPLL_LOCK_STATUS_LOCKED : DPLL_LOCK_STATUS_UNLOCKED;
+
+	return 0;
+}
+
+static int ptp_ocp_dpll_state_get(const struct dpll_pin *pin, void *pin_priv,
+				  const struct dpll_device *dpll, void *priv,
+				  enum dpll_pin_state *state,
+				  struct netlink_ext_ack *extack)
+{
+	struct ptp_ocp *bp = priv;
+	int idx;
+
+	if (bp->pps_select) {
+		idx = ioread32(&bp->pps_select->gpio1);
+		*state = (&bp->sma[idx] == pin_priv) ? DPLL_PIN_STATE_CONNECTED :
+						      DPLL_PIN_STATE_SELECTABLE;
+		return 0;
+	}
+	NL_SET_ERR_MSG(extack, "pin selection is not supported on current HW");
+	return -EINVAL;
+}
+
+static int ptp_ocp_dpll_mode_get(const struct dpll_device *dpll, void *priv,
+				 u32 *mode, struct netlink_ext_ack *extack)
+{
+	*mode = DPLL_MODE_AUTOMATIC;
+	return 0;
+}
+
+static bool ptp_ocp_dpll_mode_supported(const struct dpll_device *dpll,
+					void *priv, const enum dpll_mode mode,
+					struct netlink_ext_ack *extack)
+{
+	return mode == DPLL_MODE_AUTOMATIC;
+}
+
+static int ptp_ocp_dpll_direction_get(const struct dpll_pin *pin,
+				      void *pin_priv,
+				      const struct dpll_device *dpll,
+				      void *priv,
+				      enum dpll_pin_direction *direction,
+				      struct netlink_ext_ack *extack)
+{
+	struct ptp_ocp_sma_connector *sma = pin_priv;
+
+	*direction = sma->mode == SMA_MODE_IN ?
+				  DPLL_PIN_DIRECTION_INPUT :
+				  DPLL_PIN_DIRECTION_OUTPUT;
+	return 0;
+}
+
+static int ptp_ocp_dpll_direction_set(const struct dpll_pin *pin,
+				      void *pin_priv,
+				      const struct dpll_device *dpll,
+				      void *dpll_priv,
+				      enum dpll_pin_direction direction,
+				      struct netlink_ext_ack *extack)
+{
+	struct ptp_ocp_sma_connector *sma = pin_priv;
+	struct ptp_ocp *bp = dpll_priv;
+	enum ptp_ocp_sma_mode mode;
+	int sma_nr = (sma - bp->sma);
+
+	if (sma->fixed_dir)
+		return -EOPNOTSUPP;
+	mode = direction == DPLL_PIN_DIRECTION_INPUT ?
+			    SMA_MODE_IN : SMA_MODE_OUT;
+	return ptp_ocp_sma_store_val(bp, 0, mode, sma_nr);
+}
+
+static int ptp_ocp_dpll_frequency_set(const struct dpll_pin *pin,
+				      void *pin_priv,
+				      const struct dpll_device *dpll,
+				      void *dpll_priv, u64 frequency,
+				      struct netlink_ext_ack *extack)
+{
+	struct ptp_ocp_sma_connector *sma = pin_priv;
+	struct ptp_ocp *bp = dpll_priv;
+	const struct ocp_selector *tbl;
+	int sma_nr = (sma - bp->sma);
+	int i;
+
+	if (sma->fixed_fcn)
+		return -EOPNOTSUPP;
+
+	tbl = bp->sma_op->tbl[sma->mode];
+	for (i = 0; tbl[i].name; i++)
+		if (tbl[i].frequency == frequency)
+			return ptp_ocp_sma_store_val(bp, i, sma->mode, sma_nr);
+	return -EINVAL;
+}
+
+static int ptp_ocp_dpll_frequency_get(const struct dpll_pin *pin,
+				      void *pin_priv,
+				      const struct dpll_device *dpll,
+				      void *dpll_priv, u64 *frequency,
+				      struct netlink_ext_ack *extack)
+{
+	struct ptp_ocp_sma_connector *sma = pin_priv;
+	struct ptp_ocp *bp = dpll_priv;
+	const struct ocp_selector *tbl;
+	int sma_nr = (sma - bp->sma);
+	u32 val;
+	int i;
+
+	val = bp->sma_op->get(bp, sma_nr);
+	tbl = bp->sma_op->tbl[sma->mode];
+	for (i = 0; tbl[i].name; i++)
+		if (val == tbl[i].value) {
+			*frequency = tbl[i].frequency;
+			return 0;
+		}
+
+	return -EINVAL;
+}
+
+static const struct dpll_device_ops dpll_ops = {
+	.lock_status_get = ptp_ocp_dpll_lock_status_get,
+	.mode_get = ptp_ocp_dpll_mode_get,
+	.mode_supported = ptp_ocp_dpll_mode_supported,
+};
+
+static const struct dpll_pin_ops dpll_pins_ops = {
+	.frequency_get = ptp_ocp_dpll_frequency_get,
+	.frequency_set = ptp_ocp_dpll_frequency_set,
+	.direction_get = ptp_ocp_dpll_direction_get,
+	.direction_set = ptp_ocp_dpll_direction_set,
+	.state_on_dpll_get = ptp_ocp_dpll_state_get,
+};
+
+static void
+ptp_ocp_sync_work(struct work_struct *work)
+{
+	struct ptp_ocp *bp;
+	bool sync;
+
+	bp = container_of(work, struct ptp_ocp, sync_work.work);
+	sync = !!(ioread32(&bp->reg->status) & OCP_STATUS_IN_SYNC);
+
+	if (bp->sync != sync)
+		dpll_device_change_ntf(bp->dpll);
+
+	bp->sync = sync;
+
+	queue_delayed_work(system_power_efficient_wq, &bp->sync_work, HZ);
+}
+
 static int
 ptp_ocp_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 {
 	struct devlink *devlink;
 	struct ptp_ocp *bp;
-	int err;
+	int err, i;
+	u64 clkid;
 
 	devlink = devlink_alloc(&ptp_ocp_devlink_ops, sizeof(*bp), &pdev->dev);
 	if (!devlink) {
@@ -4202,6 +4404,8 @@ ptp_ocp_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 	if (err)
 		goto out_disable;
 
+	INIT_DELAYED_WORK(&bp->sync_work, ptp_ocp_sync_work);
+
 	/* compat mode.
 	 * Older FPGA firmware only returns 2 irq's.
 	 * allow this - if not all of the IRQ's are returned, skip the
@@ -4233,8 +4437,43 @@ ptp_ocp_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 
 	ptp_ocp_info(bp);
 	devlink_register(devlink);
-	return 0;
 
+	clkid = pci_get_dsn(pdev);
+	bp->dpll = dpll_device_get(clkid, 0, THIS_MODULE);
+	if (IS_ERR(bp->dpll)) {
+		err = PTR_ERR(bp->dpll);
+		dev_err(&pdev->dev, "dpll_device_alloc failed\n");
+		goto out;
+	}
+
+	err = dpll_device_register(bp->dpll, DPLL_TYPE_PPS, &dpll_ops, bp);
+	if (err)
+		goto out;
+
+	for (i = 0; i < OCP_SMA_NUM; i++) {
+		bp->sma[i].dpll_pin = dpll_pin_get(clkid, i, THIS_MODULE, &bp->sma[i].dpll_prop);
+		if (IS_ERR(bp->sma[i].dpll_pin)) {
+			err = PTR_ERR(bp->dpll);
+			goto out_dpll;
+		}
+
+		err = dpll_pin_register(bp->dpll, bp->sma[i].dpll_pin, &dpll_pins_ops,
+					&bp->sma[i]);
+		if (err) {
+			dpll_pin_put(bp->sma[i].dpll_pin);
+			goto out_dpll;
+		}
+	}
+	queue_delayed_work(system_power_efficient_wq, &bp->sync_work, HZ);
+
+	return 0;
+out_dpll:
+	while (i) {
+		--i;
+		dpll_pin_unregister(bp->dpll, bp->sma[i].dpll_pin, &dpll_pins_ops, &bp->sma[i]);
+		dpll_pin_put(bp->sma[i].dpll_pin);
+	}
+	dpll_device_put(bp->dpll);
 out:
 	ptp_ocp_detach(bp);
 out_disable:
@@ -4249,7 +4488,17 @@ ptp_ocp_remove(struct pci_dev *pdev)
 {
 	struct ptp_ocp *bp = pci_get_drvdata(pdev);
 	struct devlink *devlink = priv_to_devlink(bp);
+	int i;
 
+	cancel_delayed_work_sync(&bp->sync_work);
+	for (i = 0; i < OCP_SMA_NUM; i++) {
+		if (bp->sma[i].dpll_pin) {
+			dpll_pin_unregister(bp->dpll, bp->sma[i].dpll_pin, &dpll_pins_ops, bp);
+			dpll_pin_put(bp->sma[i].dpll_pin);
+		}
+	}
+	dpll_device_unregister(bp->dpll, &dpll_ops, bp);
+	dpll_device_put(bp->dpll);
 	devlink_unregister(devlink);
 	ptp_ocp_detach(bp);
 	pci_disable_device(pdev);
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
