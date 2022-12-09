Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1252264815C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Dec 2022 12:11:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9AA4440CB4;
	Fri,  9 Dec 2022 11:11:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9AA4440CB4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670584267;
	bh=F8LWpPRFXZu/QchMgYTMpN/IZDz5JfgDohB33w7O+Jg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tdYQF2f+Ho0fisbKsKV+c6R1nnStzljCLA/bcmdcwjX+igC8IiuAYpCXI7MeQXFnZ
	 UUuwz9DAdo9GuMKvoi16cbYCzTKI2tc4+mmCSRNfsicMudMJnDwQJ971ac6ViLo3Wz
	 Cs4Z3B+DPQvVoKuWQpr5zEGevHUeK10b9qQ8/PW8Sa+Sm5C6tjFE3Qt16BtuthnBRv
	 0bOLftqMIQInAD70I8itfllcO0WqHqcRl8+4E5B15EITRjuGsrZP5kbi0WkjFbCJmd
	 T5Oc5TIRMa/kYoCW4bgDsBzXrKAdaw3VgNNPvbYY4+WrJ5BpOkNwJbTkkQfcCgQTBg
	 bRLnxZih95wBA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eOfHue7rNhfg; Fri,  9 Dec 2022 11:11:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 87DC840CB2;
	Fri,  9 Dec 2022 11:11:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 87DC840CB2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C68141BF33B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Dec 2022 11:11:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AC0B341B51
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Dec 2022 11:11:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AC0B341B51
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hMkidXT2fsu1 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Dec 2022 11:11:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 750D740336
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 750D740336
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Dec 2022 11:11:00 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-58-aPTTVbFwP9q8hgdqLkQNKQ-1; Fri, 09 Dec 2022 06:10:55 -0500
X-MC-Unique: aPTTVbFwP9q8hgdqLkQNKQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7DB691C087AB;
 Fri,  9 Dec 2022 11:10:55 +0000 (UTC)
Received: from calimero.vinschen.de (unknown [10.39.192.219])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 309D340C6EC2;
 Fri,  9 Dec 2022 11:10:55 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id DC93FA8079F; Fri,  9 Dec 2022 12:10:51 +0100 (CET)
From: Corinna Vinschen <vinschen@redhat.com>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Fri,  9 Dec 2022 12:10:51 +0100
Message-Id: <20221209111051.3117836-1-vinschen@redhat.com>
In-Reply-To: <b062430c-b827-3ea7-7836-ebf3aa5b0936@intel.com>
References: <b062430c-b827-3ea7-7836-ebf3aa5b0936@intel.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1670584259;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=g7Xw+SjJpeMN8PiCtdlUQR+YT00BC5YxfDj735a9vIM=;
 b=azcRRVo+vupuT/YfLlFWskWP0RSuMZ/ytMo8a/Nlu/uB2niAvBX18VAB5x75R5wMTY/h6b
 HNvq6HNX3Pm5F8nmJBxmKyxRm1nx1ljsKTb6ZjdHGNCLlMQwOrD2sxiziGVcRTQelFQ201
 3CGOXsA+JN5dhq0BC/bplo4I+Pg1BPg=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=azcRRVo+
Subject: [Intel-wired-lan] [PATCH net v3] igb: conditionalize I2C bit
 banging on external thermal sensor support
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

v2: Add variable name in function declaration,
    rearrange declaration of local variables
v3: Co-authored-by: -> Co-developed-by:
    Move igb_set_i2c_bb to avoid forward declaration
    Fix comments
    Fix indentation

Fixes: a97f8783a937 ("igb: unbreak I2C bit-banging on i350")
Tested-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
Co-developed-by: Jamie Bainbridge <jbainbri@redhat.com>
Signed-off-by: Jamie Bainbridge <jbainbri@redhat.com>
Signed-off-by: Corinna Vinschen <vinschen@redhat.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 42 +++++++++++++++++------
 1 file changed, 32 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index f8e32833226c..1a68a3e91e7f 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -2252,6 +2252,30 @@ static void igb_enable_mas(struct igb_adapter *adapter)
 	}
 }
 
+#ifdef CONFIG_IGB_HWMON
+/**
+ *  igb_set_i2c_bb - Init I2C interface
+ *  @hw: pointer to hardware structure
+ **/
+static void igb_set_i2c_bb(struct e1000_hw *hw)
+{
+	u32 ctrl_ext;
+	s32 i2cctl;
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
 void igb_reset(struct igb_adapter *adapter)
 {
 	struct pci_dev *pdev = adapter->pdev;
@@ -2396,7 +2420,8 @@ void igb_reset(struct igb_adapter *adapter)
 			 * interface.
 			 */
 			if (adapter->ets)
-				mac->ops.init_thermal_sensor_thresh(hw);
+				igb_set_i2c_bb(hw);
+			mac->ops.init_thermal_sensor_thresh(hw);
 		}
 	}
 #endif
@@ -3113,21 +3138,12 @@ static void igb_init_mas(struct igb_adapter *adapter)
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
@@ -3517,6 +3533,12 @@ static int igb_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 			adapter->ets = true;
 		else
 			adapter->ets = false;
+		/* Only enable I2C bit banging if an external thermal
+		 * sensor is supported.
+		 */
+		if (adapter->ets)
+			igb_set_i2c_bb(hw);
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
