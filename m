Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 578E866E377
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Jan 2023 17:23:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB3478135E;
	Tue, 17 Jan 2023 16:23:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB3478135E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673972628;
	bh=2VkEqD+m4vZG3i4cMHlasU6ucncvOncv71vlZ3KX5WU=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=C7mgKJIjKenXqnql5g1UvnqxTAT/04FSfrdjmad41ZbMyrUtjyTHVlkKDlZsm4P73
	 Soo30bTKL4t7vJuec5lw78usaZhQcO+OSa7+mvmGFVz3GspVZ6EDB0I02UhkmfOUlY
	 LAP3mvseBEzpmmpl2J8neu27b/p+OqMg/EEXKfuEftpBg2lXWPfVab9IhBlz7a4IDc
	 WKOTZgChx/Myk+s+4A1yWk08sZQXgCp5dzci7wT2UVm6N1IIPAbcrDBdZyM+Kgx2Y/
	 8azxH0Ag/km4LAuZG/K929pWsAX3+lV+fE7QkepdjQOFc5tZMHt7q5E9Y7UBDSN2P1
	 nNTTP5FXYczVg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T87IdI1k5FAu; Tue, 17 Jan 2023 16:23:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 56D3781214;
	Tue, 17 Jan 2023 16:23:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 56D3781214
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DE3A31BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 23:58:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B983B40BC9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 23:58:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B983B40BC9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8WxjGJkTiBQl for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jan 2023 23:58:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5403D40BC3
Received: from mail.3ffe.de (0001.3ffe.de [IPv6:2a01:4f8:c0c:9d57::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5403D40BC3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 23:58:44 +0000 (UTC)
Received: from mwalle01.sab.local (unknown [213.135.10.150])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mail.3ffe.de (Postfix) with ESMTPSA id 10C0D1693;
 Tue, 17 Jan 2023 00:52:47 +0100 (CET)
From: Michael Walle <michael@walle.cc>
Date: Tue, 17 Jan 2023 00:52:20 +0100
MIME-Version: 1.0
Message-Id: <20230116-net-next-c45-seperation-part-3-v1-5-0c53afa56aad@walle.cc>
References: <20230116-net-next-c45-seperation-part-3-v1-0-0c53afa56aad@walle.cc>
In-Reply-To: <20230116-net-next-c45-seperation-part-3-v1-0-0c53afa56aad@walle.cc>
To: Sean Wang <sean.wang@mediatek.com>, Landen Chao <Landen.Chao@mediatek.com>,
 DENG Qingfang <dqfext@gmail.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Byungho An <bh74.an@samsung.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, Salil Mehta <salil.mehta@huawei.com>, 
 Tom Lendacky <thomas.lendacky@amd.com>,
 Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
 Sergey Shtylyov <s.shtylyov@omp.ru>
X-Mailer: b4 0.11.1
X-Mailman-Approved-At: Tue, 17 Jan 2023 16:23:09 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=walle.cc; s=mail2022082101; t=1673913167;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PFq5un9JlbToLiEUj0nEDWPTfIuewGK7kNH+3d7asFw=;
 b=zcnE0vM9eHhinaZhJQuxvUlD1BcsW4ohyv3E1wm1GirFDOPAErkLLNw2OUPwGqlHt8buFN
 /SwXr7NxtcKDjd3X7Kr/U1OUwdcU6Oo/Ojif6DCTqmnretu9/DVl8kAHFADZTXsqZRriUo
 eDBVbck2sdoNknaQTvr7GF+yLmL9bcPIoE79JZjXjigrQm8nQfi5qS6/I2b5c3FYF9N1F5
 NGI9XcYI7x0OeTT1Q8cUjoEe00/oqIx5WZtwetBxo9b+G8jQ+yOQBUAUJHiaVAxU6N1SvE
 dc85hbU/CmWeRpUg0fwIAEX9+W3Rxv8om9S9YylrcIPf9/YvxBWL5RiH4XCaLQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=walle.cc header.i=@walle.cc
 header.a=rsa-sha256 header.s=mail2022082101 header.b=zcnE0vM9
Subject: [Intel-wired-lan] [PATCH net-next 05/12] ixgbe: Separate C22 and
 C45 transactions
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
Cc: Andrew Lunn <andrew@lunn.ch>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Michael Walle <michael@walle.cc>, intel-wired-lan@lists.osuosl.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Andrew Lunn <andrew@lunn.ch>

The ixgbe MDIO bus driver can perform both C22 and C45 transfers.
Create separate functions for each and register the C45 versions using
the new API calls where appropriate.

Signed-off-by: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: Michael Walle <michael@walle.cc>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c | 237 ++++++++++++++++++++-------
 1 file changed, 182 insertions(+), 55 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
index 123dca9ce468..689470c1e8ad 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
@@ -680,14 +680,14 @@ static s32 ixgbe_msca_cmd(struct ixgbe_hw *hw, u32 cmd)
 }
 
 /**
- *  ixgbe_mii_bus_read_generic - Read a clause 22/45 register with gssr flags
+ *  ixgbe_mii_bus_read_generic_c22 - Read a clause 22 register with gssr flags
  *  @hw: pointer to hardware structure
  *  @addr: address
  *  @regnum: register number
  *  @gssr: semaphore flags to acquire
  **/
-static s32 ixgbe_mii_bus_read_generic(struct ixgbe_hw *hw, int addr,
-				      int regnum, u32 gssr)
+static s32 ixgbe_mii_bus_read_generic_c22(struct ixgbe_hw *hw, int addr,
+					  int regnum, u32 gssr)
 {
 	u32 hwaddr, cmd;
 	s32 data;
@@ -696,31 +696,52 @@ static s32 ixgbe_mii_bus_read_generic(struct ixgbe_hw *hw, int addr,
 		return -EBUSY;
 
 	hwaddr = addr << IXGBE_MSCA_PHY_ADDR_SHIFT;
-	if (regnum & MII_ADDR_C45) {
-		hwaddr |= regnum & GENMASK(21, 0);
-		cmd = hwaddr | IXGBE_MSCA_ADDR_CYCLE | IXGBE_MSCA_MDI_COMMAND;
-	} else {
-		hwaddr |= (regnum & GENMASK(5, 0)) << IXGBE_MSCA_DEV_TYPE_SHIFT;
-		cmd = hwaddr | IXGBE_MSCA_OLD_PROTOCOL |
-			IXGBE_MSCA_READ_AUTOINC | IXGBE_MSCA_MDI_COMMAND;
-	}
+	hwaddr |= (regnum & GENMASK(5, 0)) << IXGBE_MSCA_DEV_TYPE_SHIFT;
+	cmd = hwaddr | IXGBE_MSCA_OLD_PROTOCOL |
+		IXGBE_MSCA_READ_AUTOINC | IXGBE_MSCA_MDI_COMMAND;
 
 	data = ixgbe_msca_cmd(hw, cmd);
 	if (data < 0)
 		goto mii_bus_read_done;
 
-	/* For a clause 45 access the address cycle just completed, we still
-	 * need to do the read command, otherwise just get the data
-	 */
-	if (!(regnum & MII_ADDR_C45))
-		goto do_mii_bus_read;
+	data = IXGBE_READ_REG(hw, IXGBE_MSRWD);
+	data = (data >> IXGBE_MSRWD_READ_DATA_SHIFT) & GENMASK(16, 0);
+
+mii_bus_read_done:
+	hw->mac.ops.release_swfw_sync(hw, gssr);
+	return data;
+}
+
+/**
+ *  ixgbe_mii_bus_read_generic_c45 - Read a clause 45 register with gssr flags
+ *  @hw: pointer to hardware structure
+ *  @addr: address
+ *  @devad: device address to read
+ *  @regnum: register number
+ *  @gssr: semaphore flags to acquire
+ **/
+static s32 ixgbe_mii_bus_read_generic_c45(struct ixgbe_hw *hw, int addr,
+					  int devad, int regnum, u32 gssr)
+{
+	u32 hwaddr, cmd;
+	s32 data;
+
+	if (hw->mac.ops.acquire_swfw_sync(hw, gssr))
+		return -EBUSY;
+
+	hwaddr = addr << IXGBE_MSCA_PHY_ADDR_SHIFT;
+	hwaddr |= devad << 16 | regnum;
+	cmd = hwaddr | IXGBE_MSCA_ADDR_CYCLE | IXGBE_MSCA_MDI_COMMAND;
+
+	data = ixgbe_msca_cmd(hw, cmd);
+	if (data < 0)
+		goto mii_bus_read_done;
 
 	cmd = hwaddr | IXGBE_MSCA_READ | IXGBE_MSCA_MDI_COMMAND;
 	data = ixgbe_msca_cmd(hw, cmd);
 	if (data < 0)
 		goto mii_bus_read_done;
 
-do_mii_bus_read:
 	data = IXGBE_READ_REG(hw, IXGBE_MSRWD);
 	data = (data >> IXGBE_MSRWD_READ_DATA_SHIFT) & GENMASK(16, 0);
 
@@ -730,15 +751,15 @@ static s32 ixgbe_mii_bus_read_generic(struct ixgbe_hw *hw, int addr,
 }
 
 /**
- *  ixgbe_mii_bus_write_generic - Write a clause 22/45 register with gssr flags
+ *  ixgbe_mii_bus_write_generic_c22 - Write a clause 22 register with gssr flags
  *  @hw: pointer to hardware structure
  *  @addr: address
  *  @regnum: register number
  *  @val: value to write
  *  @gssr: semaphore flags to acquire
  **/
-static s32 ixgbe_mii_bus_write_generic(struct ixgbe_hw *hw, int addr,
-				       int regnum, u16 val, u32 gssr)
+static s32 ixgbe_mii_bus_write_generic_c22(struct ixgbe_hw *hw, int addr,
+					   int regnum, u16 val, u32 gssr)
 {
 	u32 hwaddr, cmd;
 	s32 err;
@@ -749,20 +770,43 @@ static s32 ixgbe_mii_bus_write_generic(struct ixgbe_hw *hw, int addr,
 	IXGBE_WRITE_REG(hw, IXGBE_MSRWD, (u32)val);
 
 	hwaddr = addr << IXGBE_MSCA_PHY_ADDR_SHIFT;
-	if (regnum & MII_ADDR_C45) {
-		hwaddr |= regnum & GENMASK(21, 0);
-		cmd = hwaddr | IXGBE_MSCA_ADDR_CYCLE | IXGBE_MSCA_MDI_COMMAND;
-	} else {
-		hwaddr |= (regnum & GENMASK(5, 0)) << IXGBE_MSCA_DEV_TYPE_SHIFT;
-		cmd = hwaddr | IXGBE_MSCA_OLD_PROTOCOL | IXGBE_MSCA_WRITE |
-			IXGBE_MSCA_MDI_COMMAND;
-	}
+	hwaddr |= (regnum & GENMASK(5, 0)) << IXGBE_MSCA_DEV_TYPE_SHIFT;
+	cmd = hwaddr | IXGBE_MSCA_OLD_PROTOCOL | IXGBE_MSCA_WRITE |
+		IXGBE_MSCA_MDI_COMMAND;
+
+	err = ixgbe_msca_cmd(hw, cmd);
+
+	hw->mac.ops.release_swfw_sync(hw, gssr);
+	return err;
+}
+
+/**
+ *  ixgbe_mii_bus_write_generic_c45 - Write a clause 45 register with gssr flags
+ *  @hw: pointer to hardware structure
+ *  @addr: address
+ *  @devad: device address to read
+ *  @regnum: register number
+ *  @val: value to write
+ *  @gssr: semaphore flags to acquire
+ **/
+static s32 ixgbe_mii_bus_write_generic_c45(struct ixgbe_hw *hw, int addr,
+					   int devad, int regnum, u16 val,
+					   u32 gssr)
+{
+	u32 hwaddr, cmd;
+	s32 err;
+
+	if (hw->mac.ops.acquire_swfw_sync(hw, gssr))
+		return -EBUSY;
+
+	IXGBE_WRITE_REG(hw, IXGBE_MSRWD, (u32)val);
+
+	hwaddr = addr << IXGBE_MSCA_PHY_ADDR_SHIFT;
+	hwaddr |= devad << 16 | regnum;
+	cmd = hwaddr | IXGBE_MSCA_ADDR_CYCLE | IXGBE_MSCA_MDI_COMMAND;
 
-	/* For clause 45 this is an address cycle, for clause 22 this is the
-	 * entire transaction
-	 */
 	err = ixgbe_msca_cmd(hw, cmd);
-	if (err < 0 || !(regnum & MII_ADDR_C45))
+	if (err < 0)
 		goto mii_bus_write_done;
 
 	cmd = hwaddr | IXGBE_MSCA_WRITE | IXGBE_MSCA_MDI_COMMAND;
@@ -774,70 +818,144 @@ static s32 ixgbe_mii_bus_write_generic(struct ixgbe_hw *hw, int addr,
 }
 
 /**
- *  ixgbe_mii_bus_read - Read a clause 22/45 register
+ *  ixgbe_mii_bus_read_c22 - Read a clause 22 register
+ *  @bus: pointer to mii_bus structure which points to our driver private
+ *  @addr: address
+ *  @regnum: register number
+ **/
+static s32 ixgbe_mii_bus_read_c22(struct mii_bus *bus, int addr, int regnum)
+{
+	struct ixgbe_adapter *adapter = bus->priv;
+	struct ixgbe_hw *hw = &adapter->hw;
+	u32 gssr = hw->phy.phy_semaphore_mask;
+
+	return ixgbe_mii_bus_read_generic_c22(hw, addr, regnum, gssr);
+}
+
+/**
+ *  ixgbe_mii_bus_read_c45 - Read a clause 45 register
  *  @bus: pointer to mii_bus structure which points to our driver private
+ *  @devad: device address to read
  *  @addr: address
  *  @regnum: register number
  **/
-static s32 ixgbe_mii_bus_read(struct mii_bus *bus, int addr, int regnum)
+static s32 ixgbe_mii_bus_read_c45(struct mii_bus *bus, int devad, int addr,
+				  int regnum)
+{
+	struct ixgbe_adapter *adapter = bus->priv;
+	struct ixgbe_hw *hw = &adapter->hw;
+	u32 gssr = hw->phy.phy_semaphore_mask;
+
+	return ixgbe_mii_bus_read_generic_c45(hw, addr, devad, regnum, gssr);
+}
+
+/**
+ *  ixgbe_mii_bus_write_c22 - Write a clause 22 register
+ *  @bus: pointer to mii_bus structure which points to our driver private
+ *  @addr: address
+ *  @regnum: register number
+ *  @val: value to write
+ **/
+static s32 ixgbe_mii_bus_write_c22(struct mii_bus *bus, int addr, int regnum,
+				   u16 val)
 {
 	struct ixgbe_adapter *adapter = bus->priv;
 	struct ixgbe_hw *hw = &adapter->hw;
 	u32 gssr = hw->phy.phy_semaphore_mask;
 
-	return ixgbe_mii_bus_read_generic(hw, addr, regnum, gssr);
+	return ixgbe_mii_bus_write_generic_c22(hw, addr, regnum, val, gssr);
 }
 
 /**
- *  ixgbe_mii_bus_write - Write a clause 22/45 register
+ *  ixgbe_mii_bus_write_c45 - Write a clause 45 register
  *  @bus: pointer to mii_bus structure which points to our driver private
  *  @addr: address
+ *  @devad: device address to read
  *  @regnum: register number
  *  @val: value to write
  **/
-static s32 ixgbe_mii_bus_write(struct mii_bus *bus, int addr, int regnum,
-			       u16 val)
+static s32 ixgbe_mii_bus_write_c45(struct mii_bus *bus, int addr, int devad,
+				   int regnum, u16 val)
 {
 	struct ixgbe_adapter *adapter = bus->priv;
 	struct ixgbe_hw *hw = &adapter->hw;
 	u32 gssr = hw->phy.phy_semaphore_mask;
 
-	return ixgbe_mii_bus_write_generic(hw, addr, regnum, val, gssr);
+	return ixgbe_mii_bus_write_generic_c45(hw, addr, devad, regnum, val,
+					       gssr);
 }
 
 /**
- *  ixgbe_x550em_a_mii_bus_read - Read a clause 22/45 register on x550em_a
+ *  ixgbe_x550em_a_mii_bus_read_c22 - Read a clause 22 register on x550em_a
  *  @bus: pointer to mii_bus structure which points to our driver private
  *  @addr: address
  *  @regnum: register number
  **/
-static s32 ixgbe_x550em_a_mii_bus_read(struct mii_bus *bus, int addr,
-				       int regnum)
+static s32 ixgbe_x550em_a_mii_bus_read_c22(struct mii_bus *bus, int addr,
+					   int regnum)
+{
+	struct ixgbe_adapter *adapter = bus->priv;
+	struct ixgbe_hw *hw = &adapter->hw;
+	u32 gssr = hw->phy.phy_semaphore_mask;
+
+	gssr |= IXGBE_GSSR_TOKEN_SM | IXGBE_GSSR_PHY0_SM;
+	return ixgbe_mii_bus_read_generic_c22(hw, addr, regnum, gssr);
+}
+
+/**
+ *  ixgbe_x550em_a_mii_bus_read_c45 - Read a clause 45 register on x550em_a
+ *  @bus: pointer to mii_bus structure which points to our driver private
+ *  @addr: address
+ *  @devad: device address to read
+ *  @regnum: register number
+ **/
+static s32 ixgbe_x550em_a_mii_bus_read_c45(struct mii_bus *bus, int addr,
+					   int devad, int regnum)
+{
+	struct ixgbe_adapter *adapter = bus->priv;
+	struct ixgbe_hw *hw = &adapter->hw;
+	u32 gssr = hw->phy.phy_semaphore_mask;
+
+	gssr |= IXGBE_GSSR_TOKEN_SM | IXGBE_GSSR_PHY0_SM;
+	return ixgbe_mii_bus_read_generic_c45(hw, addr, devad, regnum, gssr);
+}
+
+/**
+ *  ixgbe_x550em_a_mii_bus_write_c22 - Write a clause 22 register on x550em_a
+ *  @bus: pointer to mii_bus structure which points to our driver private
+ *  @addr: address
+ *  @regnum: register number
+ *  @val: value to write
+ **/
+static s32 ixgbe_x550em_a_mii_bus_write_c22(struct mii_bus *bus, int addr,
+					    int regnum, u16 val)
 {
 	struct ixgbe_adapter *adapter = bus->priv;
 	struct ixgbe_hw *hw = &adapter->hw;
 	u32 gssr = hw->phy.phy_semaphore_mask;
 
 	gssr |= IXGBE_GSSR_TOKEN_SM | IXGBE_GSSR_PHY0_SM;
-	return ixgbe_mii_bus_read_generic(hw, addr, regnum, gssr);
+	return ixgbe_mii_bus_write_generic_c22(hw, addr, regnum, val, gssr);
 }
 
 /**
- *  ixgbe_x550em_a_mii_bus_write - Write a clause 22/45 register on x550em_a
+ *  ixgbe_x550em_a_mii_bus_write_c45 - Write a clause 45 register on x550em_a
  *  @bus: pointer to mii_bus structure which points to our driver private
  *  @addr: address
+ *  @devad: device address to read
  *  @regnum: register number
  *  @val: value to write
  **/
-static s32 ixgbe_x550em_a_mii_bus_write(struct mii_bus *bus, int addr,
-					int regnum, u16 val)
+static s32 ixgbe_x550em_a_mii_bus_write_c45(struct mii_bus *bus, int addr,
+					    int devad, int regnum, u16 val)
 {
 	struct ixgbe_adapter *adapter = bus->priv;
 	struct ixgbe_hw *hw = &adapter->hw;
 	u32 gssr = hw->phy.phy_semaphore_mask;
 
 	gssr |= IXGBE_GSSR_TOKEN_SM | IXGBE_GSSR_PHY0_SM;
-	return ixgbe_mii_bus_write_generic(hw, addr, regnum, val, gssr);
+	return ixgbe_mii_bus_write_generic_c45(hw, addr, devad, regnum, val,
+					       gssr);
 }
 
 /**
@@ -909,8 +1027,11 @@ static bool ixgbe_x550em_a_has_mii(struct ixgbe_hw *hw)
  **/
 s32 ixgbe_mii_bus_init(struct ixgbe_hw *hw)
 {
-	s32 (*write)(struct mii_bus *bus, int addr, int regnum, u16 val);
-	s32 (*read)(struct mii_bus *bus, int addr, int regnum);
+	s32 (*write_c22)(struct mii_bus *bus, int addr, int regnum, u16 val);
+	s32 (*read_c22)(struct mii_bus *bus, int addr, int regnum);
+	s32 (*write_c45)(struct mii_bus *bus, int addr, int devad, int regnum,
+			 u16 val);
+	s32 (*read_c45)(struct mii_bus *bus, int addr, int devad, int regnum);
 	struct ixgbe_adapter *adapter = hw->back;
 	struct pci_dev *pdev = adapter->pdev;
 	struct device *dev = &adapter->netdev->dev;
@@ -929,12 +1050,16 @@ s32 ixgbe_mii_bus_init(struct ixgbe_hw *hw)
 	case IXGBE_DEV_ID_X550EM_A_1G_T_L:
 		if (!ixgbe_x550em_a_has_mii(hw))
 			return 0;
-		read = &ixgbe_x550em_a_mii_bus_read;
-		write = &ixgbe_x550em_a_mii_bus_write;
+		read_c22 = ixgbe_x550em_a_mii_bus_read_c22;
+		write_c22 = ixgbe_x550em_a_mii_bus_write_c22;
+		read_c45 = ixgbe_x550em_a_mii_bus_read_c45;
+		write_c45 = ixgbe_x550em_a_mii_bus_write_c45;
 		break;
 	default:
-		read = &ixgbe_mii_bus_read;
-		write = &ixgbe_mii_bus_write;
+		read_c22 = ixgbe_mii_bus_read_c22;
+		write_c22 = ixgbe_mii_bus_write_c22;
+		read_c45 = ixgbe_mii_bus_read_c45;
+		write_c45 = ixgbe_mii_bus_write_c45;
 		break;
 	}
 
@@ -942,8 +1067,10 @@ s32 ixgbe_mii_bus_init(struct ixgbe_hw *hw)
 	if (!bus)
 		return -ENOMEM;
 
-	bus->read = read;
-	bus->write = write;
+	bus->read = read_c22;
+	bus->write = write_c22;
+	bus->read_c45 = read_c45;
+	bus->write_c45 = write_c45;
 
 	/* Use the position of the device in the PCI hierarchy as the id */
 	snprintf(bus->id, MII_BUS_ID_SIZE, "%s-mdio-%s", ixgbe_driver_name,

-- 
2.30.2
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
