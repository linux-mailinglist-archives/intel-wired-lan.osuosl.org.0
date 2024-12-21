Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E9E9FA1F4
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Dec 2024 19:43:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 148A381DE6;
	Sat, 21 Dec 2024 18:43:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zs2zT0MHP_PO; Sat, 21 Dec 2024 18:43:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6657981E4A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734806614;
	bh=EL9sWILBSGTYl+aZk0fVJx8i0jxQ5SOOcBDq3z7WT58=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1Ltb9LnFvfFJLAHfvggbzMwXUVyYPw2J9m+U6sQ9r1oW3N0w8woS9vg2iCwuxK2Za
	 P26i/6P7Q6Mt5aA5x/1TP68jGP0+d8RHVRkh3oIPTSdNK8HuZMu7GyfAo4C4D0UhE7
	 y0FIAA14kf94UloavLXSmHXn3qvNAb65wkna+VHiBzmImyBz4hsxfL5JxR7iDXX1VX
	 lGOTuTmYfMjQhpD3/BQ5nbG/5AG8aReJ7rDHGWdBGBBa3q44SfuEH6WIhyvtmwwcv1
	 r32bffewXt4yDTlF5DtacB+JFjB88rcvQJSOqHA+Ch9ODbLFSv21SSvDWRM5Momguk
	 i2PrxVXNjOCFA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6657981E4A;
	Sat, 21 Dec 2024 18:43:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B8694757
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Dec 2024 18:43:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 975AB707E6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Dec 2024 18:43:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id etKOGM1D4wMq for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Dec 2024 18:43:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1098:5b::1;
 helo=mx.treblig.org; envelope-from=linux@treblig.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C9ABF707A5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C9ABF707A5
Received: from mx.treblig.org (mx.treblig.org [IPv6:2a00:1098:5b::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C9ABF707A5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Dec 2024 18:43:12 +0000 (UTC)
Received: from localhost ([127.0.0.1] helo=dalek.home.treblig.org)
 by mx.treblig.org with esmtp (Exim 4.96)
 (envelope-from <linux@treblig.org>) id 1tP4R7-006hEJ-1B;
 Sat, 21 Dec 2024 18:42:49 +0000
From: linux@treblig.org
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Dr. David Alan Gilbert" <linux@treblig.org>
Date: Sat, 21 Dec 2024 18:42:40 +0000
Message-ID: <20241221184247.118752-3-linux@treblig.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241221184247.118752-1-linux@treblig.org>
References: <20241221184247.118752-1-linux@treblig.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx; h=MIME-Version:Message-ID:Date:Subject:From:Content-Type:From
 :Subject; bh=EL9sWILBSGTYl+aZk0fVJx8i0jxQ5SOOcBDq3z7WT58=; b=R8BXJxLT9V+pwos6
 FOeczG84Ohn5m6Akr7GQNoT2wQ0NggE5tfA3u0jF3Y+k1iIKmv15LsW/zUBIY1N/je02JiOPM3wCP
 lhEBsD39w5SyIlWeMt5v2Uzcd0G/sDmSD833A6hvO983rrdVVM0N/Kjyj2kPU+aRdIXjmaPZmtFzT
 NSCuI2uxXyvZ9wsib03v6Fp1BR74yZFR7+X0bgpLhFkzcIKmfeb09c/ByPxt3/OeLRCoZt8pF2PuB
 9gcnbLuV6RrC5l0Fbt/meBRuFqw1Yb67+Q22AdZkTcjoihQjKGaIWh6UDjUodaGXsYJj57hUiT5Bl
 JC5T0P3ohJDjn67zgg==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=treblig.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org
 header.a=rsa-sha256 header.s=bytemarkmx header.b=R8BXJxLT
Subject: [Intel-wired-lan] [RFC net-next 2/9] i40e: Remove unused
 i40e_blink_phy_link_led
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: "Dr. David Alan Gilbert" <linux@treblig.org>

i40e_blink_phy_link_led() was added in 2016 by
commit fd077cd3399b ("i40e: Add functions to blink led on 10GBaseT PHY")

but hasn't been used.

Remove it.

Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>
---
 drivers/net/ethernet/intel/i40e/i40e_common.c | 74 -------------------
 .../net/ethernet/intel/i40e/i40e_prototype.h  |  4 -
 2 files changed, 78 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index 47e71f72d87b..ba780a949a47 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -4428,80 +4428,6 @@ u8 i40e_get_phy_address(struct i40e_hw *hw, u8 dev_num)
 	return (u8)(reg_val >> ((dev_num + 1) * 5)) & 0x1f;
 }
 
-/**
- * i40e_blink_phy_link_led
- * @hw: pointer to the HW structure
- * @time: time how long led will blinks in secs
- * @interval: gap between LED on and off in msecs
- *
- * Blinks PHY link LED
- **/
-int i40e_blink_phy_link_led(struct i40e_hw *hw,
-			    u32 time, u32 interval)
-{
-	u16 led_addr = I40E_PHY_LED_PROV_REG_1;
-	u16 gpio_led_port;
-	u8 phy_addr = 0;
-	int status = 0;
-	u16 led_ctl;
-	u8 port_num;
-	u16 led_reg;
-	u32 i;
-
-	i = rd32(hw, I40E_PFGEN_PORTNUM);
-	port_num = (u8)(i & I40E_PFGEN_PORTNUM_PORT_NUM_MASK);
-	phy_addr = i40e_get_phy_address(hw, port_num);
-
-	for (gpio_led_port = 0; gpio_led_port < 3; gpio_led_port++,
-	     led_addr++) {
-		status = i40e_read_phy_register_clause45(hw,
-							 I40E_PHY_COM_REG_PAGE,
-							 led_addr, phy_addr,
-							 &led_reg);
-		if (status)
-			goto phy_blinking_end;
-		led_ctl = led_reg;
-		if (led_reg & I40E_PHY_LED_LINK_MODE_MASK) {
-			led_reg = 0;
-			status = i40e_write_phy_register_clause45(hw,
-							 I40E_PHY_COM_REG_PAGE,
-							 led_addr, phy_addr,
-							 led_reg);
-			if (status)
-				goto phy_blinking_end;
-			break;
-		}
-	}
-
-	if (time > 0 && interval > 0) {
-		for (i = 0; i < time * 1000; i += interval) {
-			status = i40e_read_phy_register_clause45(hw,
-						I40E_PHY_COM_REG_PAGE,
-						led_addr, phy_addr, &led_reg);
-			if (status)
-				goto restore_config;
-			if (led_reg & I40E_PHY_LED_MANUAL_ON)
-				led_reg = 0;
-			else
-				led_reg = I40E_PHY_LED_MANUAL_ON;
-			status = i40e_write_phy_register_clause45(hw,
-						I40E_PHY_COM_REG_PAGE,
-						led_addr, phy_addr, led_reg);
-			if (status)
-				goto restore_config;
-			msleep(interval);
-		}
-	}
-
-restore_config:
-	status = i40e_write_phy_register_clause45(hw,
-						  I40E_PHY_COM_REG_PAGE,
-						  led_addr, phy_addr, led_ctl);
-
-phy_blinking_end:
-	return status;
-}
-
 /**
  * i40e_led_get_reg - read LED register
  * @hw: pointer to the HW structure
diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
index 29f6a903a30c..c0a4bd53501c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
@@ -72,8 +72,6 @@ int i40e_led_set_phy(struct i40e_hw *hw, bool on,
 		     u16 led_addr, u32 mode);
 int i40e_led_get_phy(struct i40e_hw *hw, u16 *led_addr,
 		     u16 *val);
-int i40e_blink_phy_link_led(struct i40e_hw *hw,
-			    u32 time, u32 interval);
 
 /* admin send queue commands */
 
@@ -446,8 +444,6 @@ int i40e_read_phy_register(struct i40e_hw *hw, u8 page, u16 reg,
 int i40e_write_phy_register(struct i40e_hw *hw, u8 page, u16 reg,
 			    u8 phy_addr, u16 value);
 u8 i40e_get_phy_address(struct i40e_hw *hw, u8 dev_num);
-int i40e_blink_phy_link_led(struct i40e_hw *hw,
-			    u32 time, u32 interval);
 int i40e_aq_write_ddp(struct i40e_hw *hw, void *buff,
 		      u16 buff_size, u32 track_id,
 		      u32 *error_offset, u32 *error_info,
-- 
2.47.1

