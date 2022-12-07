Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8FE645825
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Dec 2022 11:49:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B933C4049F;
	Wed,  7 Dec 2022 10:49:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B933C4049F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670410165;
	bh=eNL0n3HNWWRzaq73f8GI3+eH9ePXmvMbK6J2mcoUi9o=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=SaVBuL0zODYunztU4Oi/Ss/0DD0J9jEGVslHxyTcsBZHR0A8e1Apt6fjru9OoPyS1
	 tPWvBLizn8NYN1vvUuGekp1wLdMgY+sAq2ejLosypEfuDlfd9TBDtns+uh34muU+2i
	 vqE+JdUyyEPXf+lZ8ftM6mmWGpD7RgnMSrY1CXO/lVLPEEkPYWT1uKCXba0ZFgExjq
	 A7fdNid2vrodgH0ekUlwo+viGt9yelaGisGlYq3uf+VotJbxKC/OlubKdOCq9fVzVq
	 x3Q7b3JGKYv7ky3JfcL1J/8WzfHGBHBrN5N0X1EVBZhA2D1/F0A3UkHUTViue1m8Xh
	 EHdciFe16cxFg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pUo2zyD7Mmca; Wed,  7 Dec 2022 10:49:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 349DB4024E;
	Wed,  7 Dec 2022 10:49:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 349DB4024E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 62B9A1BF5E6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Dec 2022 10:49:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3D84360AA0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Dec 2022 10:49:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3D84360AA0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wYfcCheF1D0h for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Dec 2022 10:49:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 05C57606C0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 05C57606C0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Dec 2022 10:49:16 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-578-hheFYIDHNlyO3MhRDQmKJw-1; Wed, 07 Dec 2022 05:49:11 -0500
X-MC-Unique: hheFYIDHNlyO3MhRDQmKJw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 454FF85A5A6;
 Wed,  7 Dec 2022 10:49:11 +0000 (UTC)
Received: from calimero.vinschen.de (unknown [10.39.192.219])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E29A81415102;
 Wed,  7 Dec 2022 10:49:10 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id 9A8FFA80971; Wed,  7 Dec 2022 11:49:07 +0100 (CET)
From: Corinna Vinschen <vinschen@redhat.com>
To: intel-wired-lan@lists.osuosl.org,
	netdev@vger.kernel.org
Date: Wed,  7 Dec 2022 11:49:07 +0100
Message-Id: <20221207104907.2626043-1-vinschen@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1670410155;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=zmXv/8bbpmbiyWkBgSg8UT9klWe2GE8lMYrHleGYEq4=;
 b=GKNIwehmE+VR8NUa/nWCE8ukpRkm8yrxfZr3SnZ4uIp7Dn0x1NLhVgn1yl1rLoLZ3xv2Nj
 bsIssInl3KIbMwby5c2TohPX1guBDp7NPM5lJP4NYpAIqbYUsA8tX/3i8d6zz9NZpGMNuj
 umyzB1+6Sbt8+3/TubmY9FG1ZA9nohU=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=GKNIwehm
Subject: [Intel-wired-lan] [PATCH] igb: conditionalize I2C bit banging on
 external thermal sensor support
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
Cc: patryk.piotrowski@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit a97f8783a937 ("igb: unbreak I2C bit-banging on i350") introduced
code to change I2C settings to bit banging unconditionally.

However, this patch introduced a regression:  On an Intel S2600CWR
Server Board with three NICs:

- 1x dual-port copper
  Intel I350 Gigabit Network Connection [8086:1521] (rev 01)
  fw 1.63, 0x80000dda

- 2x quad-port SFP+ with copper SFP Avago ABCU-5700RZ
  Intel I350 Gigabit Fiber Network Connection [8086:1522] (rev 01)
  fw 1.52.0

the SFP NICs no longer get link at all.  Reverting commit a97f8783a937
or switching to the Intel out-of-tree driver both fix the problem.

Per the igb out-of-tree driver, I2C bit banging on i350 depends on
support for an external thermal sensor (ETS).  However, commit
a97f8783a937 added bit banging unconditionally.  Additionally, the
out-of-tree driver always calls init_thermal_sensor_thresh on probe,
while our driver only calls init_thermal_sensor_thresh only in
igb_reset(), and only if an ETS is present, ignoring the internal
thermal sensor.  The affected SFPs don't provide an ETS.  Per Intel,
the behaviour is a result of i350 firmware requirements.

This patch fixes the problem by aligning the behaviour to the
out-of-tree driver:

- split igb_init_i2c() into two functions:
  - igb_init_i2c() only performs the basic I2C initialization.
  - igb_set_i2c_bb() makes sure that E1000_CTRL_I2C_ENA is set
    and enables bit-banging.

- igb_probe() only calls igb_set_i2c_bb() if an ETS is present.

- igb_probe() calls init_thermal_sensor_thresh() unconditionally.

- igb_reset() aligns its behaviour to igb_probe(), i. e., call
  igb_set_i2c_bb() if an ETS is present and call
  init_thermal_sensor_thresh() unconditionally.

Fixes: a97f8783a937 ("igb: unbreak I2C bit-banging on i350")
Co-authored-by: Jamie Bainbridge <jbainbri@redhat.com>
Tested-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
Signed-off-by: Corinna Vinschen <vinschen@redhat.com>
Signed-off-by: Jamie Bainbridge <jbainbri@redhat.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 44 +++++++++++++++++------
 1 file changed, 34 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 4e65ffe3f4e3..7f56322b3ec2 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -138,6 +138,9 @@ static irqreturn_t igb_msix_ring(int irq, void *);
 static void igb_update_dca(struct igb_q_vector *);
 static void igb_setup_dca(struct igb_adapter *);
 #endif /* CONFIG_IGB_DCA */
+#ifdef CONFIG_IGB_HWMON
+static void igb_set_i2c_bb(struct e1000_hw *);
+#endif /* CONFIG_IGB_HWMON */
 static int igb_poll(struct napi_struct *, int);
 static bool igb_clean_tx_irq(struct igb_q_vector *, int);
 static int igb_clean_rx_irq(struct igb_q_vector *, int);
@@ -2399,7 +2402,8 @@ void igb_reset(struct igb_adapter *adapter)
 			 * interface.
 			 */
 			if (adapter->ets)
-				mac->ops.init_thermal_sensor_thresh(hw);
+				igb_set_i2c_bb(hw);
+			mac->ops.init_thermal_sensor_thresh(hw);
 		}
 	}
 #endif
@@ -3116,21 +3120,12 @@ static void igb_init_mas(struct igb_adapter *adapter)
  **/
 static s32 igb_init_i2c(struct igb_adapter *adapter)
 {
-	struct e1000_hw *hw = &adapter->hw;
 	s32 status = 0;
-	s32 i2cctl;
 
 	/* I2C interface supported on i350 devices */
 	if (adapter->hw.mac.type != e1000_i350)
 		return 0;
 
-	i2cctl = rd32(E1000_I2CPARAMS);
-	i2cctl |= E1000_I2CBB_EN
-		| E1000_I2C_CLK_OUT | E1000_I2C_CLK_OE_N
-		| E1000_I2C_DATA_OUT | E1000_I2C_DATA_OE_N;
-	wr32(E1000_I2CPARAMS, i2cctl);
-	wrfl();
-
 	/* Initialize the i2c bus which is controlled by the registers.
 	 * This bus will use the i2c_algo_bit structure that implements
 	 * the protocol through toggling of the 4 bits in the register.
@@ -3146,6 +3141,30 @@ static s32 igb_init_i2c(struct igb_adapter *adapter)
 	return status;
 }
 
+#ifdef CONFIG_IGB_HWMON
+/**
+ *  igb_set_i2c_bb - Init I2C interface
+ *  @adapter: pointer to adapter structure
+ **/
+static void igb_set_i2c_bb(struct e1000_hw *hw)
+{
+	s32 i2cctl;
+	u32 ctrl_ext;
+
+	ctrl_ext = rd32(E1000_CTRL_EXT);
+	ctrl_ext |= E1000_CTRL_I2C_ENA;
+	wr32(E1000_CTRL_EXT, ctrl_ext);
+	wrfl();
+
+	i2cctl = rd32(E1000_I2CPARAMS);
+	i2cctl |= E1000_I2CBB_EN
+		| E1000_I2C_CLK_OE_N
+		| E1000_I2C_DATA_OE_N;
+	wr32(E1000_I2CPARAMS, i2cctl);
+	wrfl();
+}
+#endif
+
 /**
  *  igb_probe - Device Initialization Routine
  *  @pdev: PCI device information struct
@@ -3520,6 +3539,11 @@ static int igb_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 			adapter->ets = true;
 		else
 			adapter->ets = false;
+		/* Only enable I2C bit banging if an external thermal
+		   sensor is supported. */
+		if (adapter->ets)
+		  igb_set_i2c_bb(hw);
+		hw->mac.ops.init_thermal_sensor_thresh(hw);
 		if (igb_sysfs_init(adapter))
 			dev_err(&pdev->dev,
 				"failed to allocate sysfs resources\n");
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
