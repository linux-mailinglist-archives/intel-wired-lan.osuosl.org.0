Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E898F72AA34
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Jun 2023 10:06:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F0C57401B7;
	Sat, 10 Jun 2023 08:06:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F0C57401B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686384397;
	bh=qTmoTXLQ/2ntHcBzeJ7iF3s+gRaxg1yLbpldTetPDhY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6bVxuTmaeYbWwG/BkeiMRE2R7ZfxXF5dFsMu7qIG+Eon98/heIb3VrB8PeqORJc3v
	 +vQ57/3QkWtLOkuoYwM8ABouztzCU/7Dg325FvPhuXMvYaTWK9qIE3TBwnTLq4r/9u
	 EuGXGT0Myf+4xXGYjXq1ntp4974rR/CTFwlW6kJR5U4HvZTmTXPOEQnn+7dScn1mre
	 xcQp/Uq9V+UwW8sXcP6sGoBdFlCO6GElAEJTErg27VRF+j1i9WtBKF/zNJWv0dj5fb
	 9QhlqFvF3+Hf1aG1PjZoey05fAiRcPd9BQTB5FeGTpEpJ/XaUyW53cu0TytA5eOJVB
	 UA3GPKLamRXjQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LbGxAiLNo-ws; Sat, 10 Jun 2023 08:06:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6B78E40114;
	Sat, 10 Jun 2023 08:06:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6B78E40114
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9CE761BF35E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 08:06:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 722FF40114
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 08:06:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 722FF40114
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kgcKYInrayLk for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Jun 2023 08:06:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AEF8C400DD
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AEF8C400DD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 08:06:23 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id
 a640c23a62f3a-978863fb00fso451797166b.3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 01:06:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686384382; x=1688976382;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=JKmWzqZGw1WY81b3BcNc8q0jgu9SSiw4R4lKB3zkHfI=;
 b=bNoyOchFkVLE8SeefxWwoB0tUlX8AGjb82980MCtw701sN+0L+5saJ2L0g3ECGgQgd
 WpagqicdR2cC54IoJfJZ3Gg4vGb2qm+jPw6+u86/fgL1Q/YTZG2361ro2+Y/pN24IoeE
 NB8PhFdlbGQ6YzW4/Z5jA5wxWJFmlkS5FM3pAYusmgTcCw9nIwl4Y4WA7Ua+ggL5S/ay
 ED1cV19tZPR+DjwRC9i/LZhAGY1yLlDZgnzwnY5vIC4FczoI7uzd72bDOWTJQm5maDiC
 Nx+2pjdbcmiaS+OkO94n3pJRg9JPnDWg0ImLgFQ/5oG8drp573sA/7PWI9/S8CRaVNKk
 ZvLQ==
X-Gm-Message-State: AC+VfDyiLMmDjvYfsR+ahuzol0eUP2Dj2Cqzp1WWsnFNWm5bLQ8/pW2V
 hNWN6BOfYeiSXkqSLGi5K+HXLA==
X-Google-Smtp-Source: ACHHUZ4PUtfhMtb7RoGXoJxRfmaWkF7WjmOJ+Mc6DlY32VOX16S4Il1tuDfxBna6Cbr25LiUs1sQag==
X-Received: by 2002:a17:907:7f1e:b0:974:76:dcdd with SMTP id
 qf30-20020a1709077f1e00b009740076dcddmr5051083ejc.55.1686384381922; 
 Sat, 10 Jun 2023 01:06:21 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 i7-20020a1709061cc700b0096f830337e3sm2225972ejh.129.2023.06.10.01.06.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Jun 2023 01:06:21 -0700 (PDT)
Date: Sat, 10 Jun 2023 10:06:19 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <ZIQu+/o4J0ZBspVg@nanopsycho>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-10-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230609121853.3607724-10-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1686384382; x=1688976382; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=JKmWzqZGw1WY81b3BcNc8q0jgu9SSiw4R4lKB3zkHfI=;
 b=49jVcl/sKA6x9cBhS8snOvGoA+P1laOWTWqqdbVEfglKyGZnoHESH0unoRjaBZ6Rkw
 w2kt5d95JikIaMiqtUEAgvnGrk+5JQhXG5OhpmuAw7PpZy6rC24UqZS55pPMDE8op8O5
 iyUhWBkfYkZG+4pIi1ogzLdW2DAKnL/R2CUW0rm8LDtGU/7+YNPskWAcKbNOKWZvyU/N
 csHVDYlpuIrzsg3LlOiOJdHwDBTS9I6l9VGg3CZW6whFbIEpzYHO8ttbie4P6psFAkOE
 2BcCzWnWWGadDxe8lR3EhHvOa9wo3cVL0DMK4FyiT0mPPMT4w4H3rzkdzubRIYF2r+Xu
 oszA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=49jVcl/s
Subject: Re: [Intel-wired-lan] [RFC PATCH v8 09/10] ptp_ocp: implement DPLL
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
Cc: geert+renesas@glider.be, mst@redhat.com, razor@blackwall.org, phil@nwl.cc,
 javierm@redhat.com, edumazet@google.com, benjamin.tissoires@redhat.com,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, linux-clk@vger.kernel.org,
 lucien.xin@gmail.com, leon@kernel.org, corbet@lwn.net,
 linux-rdma@vger.kernel.org, masahiroy@kernel.org, linux-doc@vger.kernel.org,
 jesse.brandeburg@intel.com, vadfed@meta.com, intel-wired-lan@lists.osuosl.org,
 airlied@redhat.com, vadfed@fb.com, pabeni@redhat.com,
 ricardo.canuelo@collabora.com, arnd@arndb.de, idosch@nvidia.com,
 richardcochran@gmail.com, claudiajkang@gmail.com, kuniyu@amazon.com,
 jacek.lawrynowicz@linux.intel.com, liuhangbin@gmail.com, kuba@kernel.org,
 nicolas.dichtel@6wind.com, linux-arm-kernel@lists.infradead.org,
 axboe@kernel.dk, sj@kernel.org, vadim.fedorenko@linux.dev, linux@zary.sk,
 gregkh@linuxfoundation.org, ogabbay@kernel.org, nipun.gupta@amd.com,
 linux-kernel@vger.kernel.org, andy.ren@getcruise.com, tzimmermann@suse.de,
 jonathan.lemon@gmail.com, saeedm@nvidia.com, davem@davemloft.net,
 milena.olech@intel.com, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Jun 09, 2023 at 02:18:52PM CEST, arkadiusz.kubalewski@intel.com wrote:
>From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>
>Implement basic DPLL operations in ptp_ocp driver as the
>simplest example of using new subsystem.
>
>Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>---
> drivers/ptp/Kconfig   |   1 +
> drivers/ptp/ptp_ocp.c | 329 +++++++++++++++++++++++++++++++++++-------
> 2 files changed, 278 insertions(+), 52 deletions(-)
>
>diff --git a/drivers/ptp/Kconfig b/drivers/ptp/Kconfig
>index b00201d81313..e3575c2e34dc 100644
>--- a/drivers/ptp/Kconfig
>+++ b/drivers/ptp/Kconfig
>@@ -177,6 +177,7 @@ config PTP_1588_CLOCK_OCP
> 	depends on COMMON_CLK
> 	select NET_DEVLINK
> 	select CRC16
>+	select DPLL
> 	help
> 	  This driver adds support for an OpenCompute time card.
> 
>diff --git a/drivers/ptp/ptp_ocp.c b/drivers/ptp/ptp_ocp.c
>index ab8cab4d1560..40a1ab7053d4 100644
>--- a/drivers/ptp/ptp_ocp.c
>+++ b/drivers/ptp/ptp_ocp.c
>@@ -23,6 +23,7 @@
> #include <linux/mtd/mtd.h>
> #include <linux/nvmem-consumer.h>
> #include <linux/crc16.h>
>+#include <linux/dpll.h>
> 
> #define PCI_VENDOR_ID_FACEBOOK			0x1d9b
> #define PCI_DEVICE_ID_FACEBOOK_TIMECARD		0x0400
>@@ -260,12 +261,21 @@ enum ptp_ocp_sma_mode {
> 	SMA_MODE_OUT,
> };
> 
>+static struct dpll_pin_frequency ptp_ocp_sma_freq[] = {
>+	DPLL_PIN_FREQUENCY_1PPS,
>+	DPLL_PIN_FREQUENCY_10MHZ,
>+	DPLL_PIN_FREQUENCY_IRIG_B,
>+	DPLL_PIN_FREQUENCY_DCF77,
>+};
>+
> struct ptp_ocp_sma_connector {
> 	enum	ptp_ocp_sma_mode mode;
> 	bool	fixed_fcn;
> 	bool	fixed_dir;
> 	bool	disabled;
> 	u8	default_fcn;
>+	struct dpll_pin		   *dpll_pin;
>+	struct dpll_pin_properties dpll_prop;
> };
> 
> struct ocp_attr_group {
>@@ -294,6 +304,7 @@ struct ptp_ocp_serial_port {
> 
> #define OCP_BOARD_ID_LEN		13
> #define OCP_SERIAL_LEN			6
>+#define OCP_SMA_NUM			4
> 
> struct ptp_ocp {
> 	struct pci_dev		*pdev;
>@@ -350,8 +361,9 @@ struct ptp_ocp {
> 	u32			ts_window_adjust;
> 	u64			fw_cap;
> 	struct ptp_ocp_signal	signal[4];
>-	struct ptp_ocp_sma_connector sma[4];
>+	struct ptp_ocp_sma_connector sma[OCP_SMA_NUM];

Strictly speaking, this 4->OCP_SMA_NUM replacement should
be done as a separate patch.


> 	const struct ocp_sma_op *sma_op;
>+	struct dpll_device *dpll;
> };
> 
> #define OCP_REQ_TIMESTAMP	BIT(0)
>@@ -835,6 +847,7 @@ static DEFINE_IDR(ptp_ocp_idr);
> struct ocp_selector {
> 	const char *name;
> 	int value;
>+	u64 frequency;
> };
> 
> static const struct ocp_selector ptp_ocp_clock[] = {
>@@ -855,31 +868,31 @@ static const struct ocp_selector ptp_ocp_clock[] = {
> #define SMA_SELECT_MASK		GENMASK(14, 0)
> 
> static const struct ocp_selector ptp_ocp_sma_in[] = {
>-	{ .name = "10Mhz",	.value = 0x0000 },
>-	{ .name = "PPS1",	.value = 0x0001 },
>-	{ .name = "PPS2",	.value = 0x0002 },
>-	{ .name = "TS1",	.value = 0x0004 },
>-	{ .name = "TS2",	.value = 0x0008 },
>-	{ .name = "IRIG",	.value = 0x0010 },
>-	{ .name = "DCF",	.value = 0x0020 },
>-	{ .name = "TS3",	.value = 0x0040 },
>-	{ .name = "TS4",	.value = 0x0080 },
>-	{ .name = "FREQ1",	.value = 0x0100 },
>-	{ .name = "FREQ2",	.value = 0x0200 },
>-	{ .name = "FREQ3",	.value = 0x0400 },
>-	{ .name = "FREQ4",	.value = 0x0800 },
>-	{ .name = "None",	.value = SMA_DISABLE },
>+	{ .name = "10Mhz",  .value = 0x0000,      .frequency = 10000000 },
>+	{ .name = "PPS1",   .value = 0x0001,      .frequency = 1 },
>+	{ .name = "PPS2",   .value = 0x0002,      .frequency = 1 },
>+	{ .name = "TS1",    .value = 0x0004,      .frequency = 0 },
>+	{ .name = "TS2",    .value = 0x0008,      .frequency = 0 },
>+	{ .name = "IRIG",   .value = 0x0010,      .frequency = 10000 },
>+	{ .name = "DCF",    .value = 0x0020,      .frequency = 77500 },
>+	{ .name = "TS3",    .value = 0x0040,      .frequency = 0 },
>+	{ .name = "TS4",    .value = 0x0080,      .frequency = 0 },
>+	{ .name = "FREQ1",  .value = 0x0100,      .frequency = 0 },
>+	{ .name = "FREQ2",  .value = 0x0200,      .frequency = 0 },
>+	{ .name = "FREQ3",  .value = 0x0400,      .frequency = 0 },
>+	{ .name = "FREQ4",  .value = 0x0800,      .frequency = 0 },
>+	{ .name = "None",   .value = SMA_DISABLE, .frequency = 0 },
> 	{ }
> };
> 
> static const struct ocp_selector ptp_ocp_sma_out[] = {
>-	{ .name = "10Mhz",	.value = 0x0000 },
>-	{ .name = "PHC",	.value = 0x0001 },
>-	{ .name = "MAC",	.value = 0x0002 },
>-	{ .name = "GNSS1",	.value = 0x0004 },
>-	{ .name = "GNSS2",	.value = 0x0008 },
>-	{ .name = "IRIG",	.value = 0x0010 },
>-	{ .name = "DCF",	.value = 0x0020 },
>+	{ .name = "10Mhz",	.value = 0x0000,  .frequency = 10000000 },
>+	{ .name = "PHC",	.value = 0x0001,  .frequency = 1 },
>+	{ .name = "MAC",	.value = 0x0002,  .frequency = 1 },
>+	{ .name = "GNSS1",	.value = 0x0004,  .frequency = 1 },
>+	{ .name = "GNSS2",	.value = 0x0008,  .frequency = 1 },
>+	{ .name = "IRIG",	.value = 0x0010,  .frequency = 10000 },
>+	{ .name = "DCF",	.value = 0x0020,  .frequency = 77000 },
> 	{ .name = "GEN1",	.value = 0x0040 },
> 	{ .name = "GEN2",	.value = 0x0080 },
> 	{ .name = "GEN3",	.value = 0x0100 },
>@@ -890,15 +903,15 @@ static const struct ocp_selector ptp_ocp_sma_out[] = {
> };
> 
> static const struct ocp_selector ptp_ocp_art_sma_in[] = {
>-	{ .name = "PPS1",	.value = 0x0001 },
>-	{ .name = "10Mhz",	.value = 0x0008 },
>+	{ .name = "PPS1",	.value = 0x0001,  .frequency = 1 },
>+	{ .name = "10Mhz",	.value = 0x0008,  .frequency = 1000000 },
> 	{ }
> };
> 
> static const struct ocp_selector ptp_ocp_art_sma_out[] = {
>-	{ .name = "PHC",	.value = 0x0002 },
>-	{ .name = "GNSS",	.value = 0x0004 },
>-	{ .name = "10Mhz",	.value = 0x0010 },
>+	{ .name = "PHC",	.value = 0x0002,  .frequency = 1 },
>+	{ .name = "GNSS",	.value = 0x0004,  .frequency = 1 },
>+	{ .name = "10Mhz",	.value = 0x0010,  .frequency = 10000000 },
> 	{ }
> };
> 
>@@ -2282,22 +2295,35 @@ ptp_ocp_sma_fb_set_inputs(struct ptp_ocp *bp, int sma_nr, u32 val)
> static void
> ptp_ocp_sma_fb_init(struct ptp_ocp *bp)
> {
>+	struct dpll_pin_properties prop = {
>+		.board_label = NULL,

It's NULL, remove this poitless init.


>+		.type = DPLL_PIN_TYPE_EXT,
>+		.capabilities = DPLL_PIN_CAPS_DIRECTION_CAN_CHANGE,
>+		.freq_supported_num = ARRAY_SIZE(ptp_ocp_sma_freq),
>+		.freq_supported = ptp_ocp_sma_freq,
>+
>+	};
> 	u32 reg;
> 	int i;
> 
> 	/* defaults */
>+	for (i = 0; i < OCP_SMA_NUM; i++) {
>+		bp->sma[i].default_fcn = i & 1;
>+		bp->sma[i].dpll_prop = prop;
>+		bp->sma[i].dpll_prop.board_label =
>+			bp->ptp_info.pin_config[i].name;

It is really label on a board? Isn't it rather label on a front panel?


>+	}
> 	bp->sma[0].mode = SMA_MODE_IN;
> 	bp->sma[1].mode = SMA_MODE_IN;
> 	bp->sma[2].mode = SMA_MODE_OUT;
> 	bp->sma[3].mode = SMA_MODE_OUT;
>-	for (i = 0; i < 4; i++)
>-		bp->sma[i].default_fcn = i & 1;
>-
> 	/* If no SMA1 map, the pin functions and directions are fixed. */
> 	if (!bp->sma_map1) {
>-		for (i = 0; i < 4; i++) {
>+		for (i = 0; i < OCP_SMA_NUM; i++) {
> 			bp->sma[i].fixed_fcn = true;
> 			bp->sma[i].fixed_dir = true;
>+			bp->sma[1].dpll_prop.capabilities &=
>+				~DPLL_PIN_CAPS_DIRECTION_CAN_CHANGE;
> 		}
> 		return;
> 	}
>@@ -2307,7 +2333,7 @@ ptp_ocp_sma_fb_init(struct ptp_ocp *bp)
> 	 */
> 	reg = ioread32(&bp->sma_map2->gpio2);
> 	if (reg == 0xffffffff) {
>-		for (i = 0; i < 4; i++)
>+		for (i = 0; i < OCP_SMA_NUM; i++)
> 			bp->sma[i].fixed_dir = true;
> 	} else {
> 		reg = ioread32(&bp->sma_map1->gpio1);
>@@ -2329,7 +2355,7 @@ static const struct ocp_sma_op ocp_fb_sma_op = {
> };
> 
> static int
>-ptp_ocp_fb_set_pins(struct ptp_ocp *bp)
>+ptp_ocp_set_pins(struct ptp_ocp *bp)
> {
> 	struct ptp_pin_desc *config;
> 	int i;
>@@ -2396,16 +2422,16 @@ ptp_ocp_fb_board_init(struct ptp_ocp *bp, struct ocp_resource *r)
> 
> 	ptp_ocp_tod_init(bp);
> 	ptp_ocp_nmea_out_init(bp);
>-	ptp_ocp_sma_init(bp);
> 	ptp_ocp_signal_init(bp);
> 
> 	err = ptp_ocp_attr_group_add(bp, fb_timecard_groups);
> 	if (err)
> 		return err;
> 
>-	err = ptp_ocp_fb_set_pins(bp);
>+	err = ptp_ocp_set_pins(bp);
> 	if (err)
> 		return err;
>+	ptp_ocp_sma_init(bp);
> 
> 	return ptp_ocp_init_clock(bp);
> }
>@@ -2445,6 +2471,14 @@ ptp_ocp_register_resources(struct ptp_ocp *bp, kernel_ulong_t driver_data)
> static void
> ptp_ocp_art_sma_init(struct ptp_ocp *bp)
> {
>+	struct dpll_pin_properties prop = {
>+		.board_label = NULL,

It's NULL, remove this pointless init.


>+		.type = DPLL_PIN_TYPE_EXT,
>+		.capabilities = 0,

Again, it is zero, drop it.


>+		.freq_supported_num = ARRAY_SIZE(ptp_ocp_sma_freq),
>+		.freq_supported = ptp_ocp_sma_freq,
>+
>+	};
> 	u32 reg;
> 	int i;
> 
>@@ -2459,16 +2493,17 @@ ptp_ocp_art_sma_init(struct ptp_ocp *bp)
> 	bp->sma[2].default_fcn = 0x10;	/* OUT: 10Mhz */
> 	bp->sma[3].default_fcn = 0x02;	/* OUT: PHC */
> 
>-	/* If no SMA map, the pin functions and directions are fixed. */
>-	if (!bp->art_sma) {
>-		for (i = 0; i < 4; i++) {
>+
>+	for (i = 0; i < OCP_SMA_NUM; i++) {
>+		/* If no SMA map, the pin functions and directions are fixed. */
>+		bp->sma[i].dpll_prop = prop;
>+		bp->sma[i].dpll_prop.board_label =

It is really label on a board? Isn't it rather label on a front panel?


>+			bp->ptp_info.pin_config[i].name;
>+		if (!bp->art_sma) {
> 			bp->sma[i].fixed_fcn = true;
> 			bp->sma[i].fixed_dir = true;
>+			continue;
> 		}
>-		return;
>-	}
>-
>-	for (i = 0; i < 4; i++) {
> 		reg = ioread32(&bp->art_sma->map[i].gpio);
> 
> 		switch (reg & 0xff) {
>@@ -2479,9 +2514,13 @@ ptp_ocp_art_sma_init(struct ptp_ocp *bp)
> 		case 1:
> 		case 8:
> 			bp->sma[i].mode = SMA_MODE_IN;
>+			bp->sma[i].dpll_prop.capabilities =
>+				DPLL_PIN_CAPS_DIRECTION_CAN_CHANGE;
> 			break;
> 		default:
> 			bp->sma[i].mode = SMA_MODE_OUT;
>+			bp->sma[i].dpll_prop.capabilities =
>+				DPLL_PIN_CAPS_DIRECTION_CAN_CHANGE;
> 			break;
> 		}
> 	}
>@@ -2548,6 +2587,9 @@ ptp_ocp_art_board_init(struct ptp_ocp *bp, struct ocp_resource *r)
> 	/* Enable MAC serial port during initialisation */
> 	iowrite32(1, &bp->board_config->mro50_serial_activate);
> 
>+	err = ptp_ocp_set_pins(bp);
>+	if (err)
>+		return err;
> 	ptp_ocp_sma_init(bp);
> 
> 	err = ptp_ocp_attr_group_add(bp, art_timecard_groups);
>@@ -2689,16 +2731,9 @@ sma4_show(struct device *dev, struct device_attribute *attr, char *buf)
> }
> 
> static int
>-ptp_ocp_sma_store(struct ptp_ocp *bp, const char *buf, int sma_nr)
>+ptp_ocp_sma_store_val(struct ptp_ocp *bp, int val, enum ptp_ocp_sma_mode mode, int sma_nr)
> {
> 	struct ptp_ocp_sma_connector *sma = &bp->sma[sma_nr - 1];
>-	enum ptp_ocp_sma_mode mode;
>-	int val;
>-
>-	mode = sma->mode;
>-	val = sma_parse_inputs(bp->sma_op->tbl, buf, &mode);
>-	if (val < 0)
>-		return val;
> 
> 	if (sma->fixed_dir && (mode != sma->mode || val & SMA_DISABLE))
> 		return -EOPNOTSUPP;
>@@ -2733,6 +2768,20 @@ ptp_ocp_sma_store(struct ptp_ocp *bp, const char *buf, int sma_nr)
> 	return val;
> }
> 
>+static int
>+ptp_ocp_sma_store(struct ptp_ocp *bp, const char *buf, int sma_nr)
>+{
>+	struct ptp_ocp_sma_connector *sma = &bp->sma[sma_nr - 1];
>+	enum ptp_ocp_sma_mode mode;
>+	int val;
>+
>+	mode = sma->mode;
>+	val = sma_parse_inputs(bp->sma_op->tbl, buf, &mode);
>+	if (val < 0)
>+		return val;
>+	return ptp_ocp_sma_store_val(bp, val, mode, sma_nr);
>+}
>+
> static ssize_t
> sma1_store(struct device *dev, struct device_attribute *attr,
> 	   const char *buf, size_t count)
>@@ -4171,12 +4220,148 @@ ptp_ocp_detach(struct ptp_ocp *bp)
> 	device_unregister(&bp->dev);
> }
> 
>+static int ptp_ocp_dpll_lock_status_get(const struct dpll_device *dpll,
>+					void *priv,
>+					enum dpll_lock_status *status,
>+					struct netlink_ext_ack *extack)
>+{
>+	struct ptp_ocp *bp = priv;
>+	int sync;
>+
>+	sync = ioread32(&bp->reg->status) & OCP_STATUS_IN_SYNC;
>+	*status = sync ? DPLL_LOCK_STATUS_LOCKED : DPLL_LOCK_STATUS_UNLOCKED;
>+
>+	return 0;
>+}
>+
>+static int ptp_ocp_dpll_source_idx_get(const struct dpll_device *dpll,
>+				       void *priv, u32 *idx,
>+				       struct netlink_ext_ack *extack)

As I wrote in the other reply, this should be removed as it is a
leftover and is never called. You should implement pin op to get a state
on dpll instead.


>+{
>+	struct ptp_ocp *bp = priv;
>+
>+	if (bp->pps_select) {
>+		*idx = ioread32(&bp->pps_select->gpio1);
>+		return 0;
>+	}
>+	return -EINVAL;
>+}
>+
>+static int ptp_ocp_dpll_mode_get(const struct dpll_device *dpll, void *priv,
>+				 u32 *mode, struct netlink_ext_ack *extack)
>+{
>+	*mode = DPLL_MODE_AUTOMATIC;
>+	return 0;
>+}
>+
>+static bool ptp_ocp_dpll_mode_supported(const struct dpll_device *dpll,
>+					void *priv, const enum dpll_mode mode,
>+					struct netlink_ext_ack *extack)
>+{
>+	return mode == DPLL_MODE_AUTOMATIC;
>+}
>+
>+static int ptp_ocp_dpll_direction_get(const struct dpll_pin *pin,
>+				      void *pin_priv,
>+				      const struct dpll_device *dpll,
>+				      void *priv,
>+				      enum dpll_pin_direction *direction,
>+				      struct netlink_ext_ack *extack)
>+{
>+	struct ptp_ocp_sma_connector *sma = pin_priv;
>+
>+	*direction = sma->mode == SMA_MODE_IN ?
>+				  DPLL_PIN_DIRECTION_INPUT :
>+				  DPLL_PIN_DIRECTION_OUTPUT;
>+	return 0;
>+}
>+
>+static int ptp_ocp_dpll_direction_set(const struct dpll_pin *pin,
>+				      void *pin_priv,
>+				      const struct dpll_device *dpll,
>+				      void *dpll_priv,
>+				      enum dpll_pin_direction direction,
>+				      struct netlink_ext_ack *extack)
>+{
>+	struct ptp_ocp_sma_connector *sma = pin_priv;
>+	struct ptp_ocp *bp = dpll_priv;
>+	enum ptp_ocp_sma_mode mode;
>+	int sma_nr = (sma - bp->sma);
>+
>+	if (sma->fixed_dir)
>+		return -EOPNOTSUPP;
>+	mode = direction == DPLL_PIN_DIRECTION_INPUT ?
>+			    SMA_MODE_IN : SMA_MODE_OUT;
>+	return ptp_ocp_sma_store_val(bp, 0, mode, sma_nr);

Fill the extack message to give user a clue about what's wrong in case
of an error. You can pass the extack all the way down to
ptp_ocp_sma_store_val() and fill-up the msg there.
Call it with NULL from ptp_ocp_sma_store().


>+}
>+
>+static int ptp_ocp_dpll_frequency_set(const struct dpll_pin *pin,
>+				      void *pin_priv,
>+				      const struct dpll_device *dpll,
>+				      void *dpll_priv, u64 frequency,
>+				      struct netlink_ext_ack *extack)
>+{
>+	struct ptp_ocp_sma_connector *sma = pin_priv;
>+	struct ptp_ocp *bp = dpll_priv;
>+	const struct ocp_selector *tbl;
>+	int sma_nr = (sma - bp->sma);

No need for "()" here. Drop it.


>+	int val, i;
>+
>+	if (sma->fixed_fcn)
>+		return -EOPNOTSUPP;

Fill the extack message to give user a clue about what's wrong.


>+
>+	tbl = bp->sma_op->tbl[sma->mode];
>+	for (i = 0; tbl[i].name; i++)
>+		if (tbl[i].frequency == frequency)
>+			return ptp_ocp_sma_store_val(bp, val, sma->mode, sma_nr);

Fill the extack message to give user a clue about what's wrong in case
of an error.


>+	return -EINVAL;

Fill the extack message to give user a clue about what's wrong.


>+}
>+
>+static int ptp_ocp_dpll_frequency_get(const struct dpll_pin *pin,
>+				      void *pin_priv,
>+				      const struct dpll_device *dpll,
>+				      void *dpll_priv, u64 *frequency,
>+				      struct netlink_ext_ack *extack)
>+{
>+	struct ptp_ocp_sma_connector *sma = pin_priv;
>+	struct ptp_ocp *bp = dpll_priv;
>+	const struct ocp_selector *tbl;
>+	int sma_nr = (sma - bp->sma);

No need for "()" here. Drop it.


>+	u32 val;
>+	int i;
>+
>+	val = bp->sma_op->get(bp, sma_nr);
>+	tbl = bp->sma_op->tbl[sma->mode];
>+	for (i = 0; tbl[i].name; i++)
>+		if (val == tbl[i].value) {
>+			*frequency = tbl[i].frequency;
>+			return 0;
>+		}
>+
>+	return -EINVAL;

How can this happen? Isn't it a driver bug if it does? In that case,
please consider WARN_ON_ONCE() here.
Of if this can happen, fill the extack message to give user a clue
about what's wrong.


>+}
>+
>+static const struct dpll_device_ops dpll_ops = {
>+	.lock_status_get = ptp_ocp_dpll_lock_status_get,
>+	.source_pin_idx_get = ptp_ocp_dpll_source_idx_get,
>+	.mode_get = ptp_ocp_dpll_mode_get,
>+	.mode_supported = ptp_ocp_dpll_mode_supported,
>+};
>+
>+static const struct dpll_pin_ops dpll_pins_ops = {
>+	.frequency_get = ptp_ocp_dpll_frequency_get,
>+	.frequency_set = ptp_ocp_dpll_frequency_set,
>+	.direction_get = ptp_ocp_dpll_direction_get,
>+	.direction_set = ptp_ocp_dpll_direction_set,
>+};

For the record, you still miss the notifications. I know that you wrote
you plan to add them, just don't want to forget about them.


>+
> static int
> ptp_ocp_probe(struct pci_dev *pdev, const struct pci_device_id *id)
> {
> 	struct devlink *devlink;
> 	struct ptp_ocp *bp;
>-	int err;
>+	int err, i;
>+	u64 clkid;
> 
> 	devlink = devlink_alloc(&ptp_ocp_devlink_ops, sizeof(*bp), &pdev->dev);
> 	if (!devlink) {
>@@ -4226,8 +4411,39 @@ ptp_ocp_probe(struct pci_dev *pdev, const struct pci_device_id *id)
> 
> 	ptp_ocp_info(bp);
> 	devlink_register(devlink);
>-	return 0;
> 
>+	clkid = pci_get_dsn(pdev);
>+	bp->dpll = dpll_device_get(clkid, 0, THIS_MODULE);
>+	if (IS_ERR(bp->dpll)) {
>+		dev_err(&pdev->dev, "dpll_device_alloc failed\n");
>+		goto out;
>+	}
>+
>+	err = dpll_device_register(bp->dpll, DPLL_TYPE_PPS, &dpll_ops, bp);
>+	if (err)
>+		goto out;
>+
>+	for (i = 0; i < OCP_SMA_NUM; i++) {
>+		bp->sma[i].dpll_pin = dpll_pin_get(clkid, i, THIS_MODULE, &bp->sma[i].dpll_prop);
>+		if (IS_ERR(bp->sma[i].dpll_pin))
>+			goto out_dpll;
>+
>+		err = dpll_pin_register(bp->dpll, bp->sma[i].dpll_pin, &dpll_pins_ops,
>+					&bp->sma[i]);
>+		if (err) {
>+			dpll_pin_put(bp->sma[i].dpll_pin);

You should do this in error path, not here. Have and extra later to jump
in between dpll_pin_unregister() and dpll_pin_put().


>+			goto out_dpll;
>+		}
>+	}
>+
>+	return 0;
>+out_dpll:
>+	while (i) {
>+		--i;

while (i--) {

instead?


>+		dpll_pin_unregister(bp->dpll, bp->sma[i].dpll_pin, &dpll_pins_ops, &bp->sma[i]);
>+		dpll_pin_put(bp->sma[i].dpll_pin);
>+	}

You are missing dpll_device_unregister() here. Please fix your error
path.

>+	dpll_device_put(bp->dpll);

You are missing devlink_unregister() here. Please fix your error path.

A hint: The error path should be in sync with what you have in
ptp_ocp_remove().



> out:
> 	ptp_ocp_detach(bp);
> out_disable:
>@@ -4242,7 +4458,16 @@ ptp_ocp_remove(struct pci_dev *pdev)
> {
> 	struct ptp_ocp *bp = pci_get_drvdata(pdev);
> 	struct devlink *devlink = priv_to_devlink(bp);
>+	int i;
> 
>+	for (i = 0; i < OCP_SMA_NUM; i++) {
>+		if (bp->sma[i].dpll_pin) {
>+			dpll_pin_unregister(bp->dpll, bp->sma[i].dpll_pin, &dpll_pins_ops, bp);
>+			dpll_pin_put(bp->sma[i].dpll_pin);
>+		}
>+	}
>+	dpll_device_unregister(bp->dpll, &dpll_ops, bp);
>+	dpll_device_put(bp->dpll);
> 	devlink_unregister(devlink);
> 	ptp_ocp_detach(bp);
> 	pci_disable_device(pdev);
>-- 
>2.37.3
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
