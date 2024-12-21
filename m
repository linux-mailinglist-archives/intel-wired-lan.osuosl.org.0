Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 223D29FA1F6
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Dec 2024 19:43:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD8754F037;
	Sat, 21 Dec 2024 18:43:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6fOk_xyugnGe; Sat, 21 Dec 2024 18:43:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF6184EF4D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734806620;
	bh=7DIlELWgzNGvwf4ldWAU2dlgWl8Sx9HJfUGOtuYL0nc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HTFjILYZ9NuvPcqAJWmzB64fkAonBCiNCHPMqyHxX5HS27biobCzELtK8rkECn2ua
	 Mnc+n47Oq9tuAK8a02J5IFkqvxxidybNayuhY9XwSIHdcYE/SpJ/610d+cODLEALn4
	 HGXYzEsS6qVix7jfRcUjQy/Syjw2PZS1gWizi/B0UhgDsCCJKBg0pwUfh8h+42Iaxj
	 LzUvW8iSA4mpCu5NWsgXHXqgWtR7Go8ZyH4Udi30H7Qa0bEqwoom4g19NLOPFpxnST
	 lXLlszNheVh2USp1lFbMH/MVu30rJRZq7guZjYcHe4oAyXCjFb4MffPtjnrsczvitN
	 uUK9lckITuGYA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF6184EF4D;
	Sat, 21 Dec 2024 18:43:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2767675A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Dec 2024 18:43:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1416140278
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Dec 2024 18:43:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cVtzolrdnAto for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Dec 2024 18:43:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1098:5b::1;
 helo=mx.treblig.org; envelope-from=linux@treblig.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DE6FA431CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DE6FA431CA
Received: from mx.treblig.org (mx.treblig.org [IPv6:2a00:1098:5b::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DE6FA431CA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Dec 2024 18:43:20 +0000 (UTC)
Received: from localhost ([127.0.0.1] helo=dalek.home.treblig.org)
 by mx.treblig.org with esmtp (Exim 4.96)
 (envelope-from <linux@treblig.org>) id 1tP4R8-006hEJ-02;
 Sat, 21 Dec 2024 18:42:50 +0000
From: linux@treblig.org
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Dr. David Alan Gilbert" <linux@treblig.org>
Date: Sat, 21 Dec 2024 18:42:41 +0000
Message-ID: <20241221184247.118752-4-linux@treblig.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241221184247.118752-1-linux@treblig.org>
References: <20241221184247.118752-1-linux@treblig.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx; h=MIME-Version:Message-ID:Date:Subject:From:Content-Type:From
 :Subject; bh=7DIlELWgzNGvwf4ldWAU2dlgWl8Sx9HJfUGOtuYL0nc=; b=rb6jmhXqCeG5nhsJ
 0/rURDtLdjx2DUq7d3LPzbdJgnhACOUvxYwuhpZBH2iSnQUyNyhbjeFEc3HS+BE1V9UAZb+aEhTul
 IY632KqXQrXW/7rI+bCZrH698HuYRQhXmVuLbllUwryUBvgLOSRqr5F8Gkvpv7ZkSvS576igCwtmX
 w3Yi5u6ZXCQvt+C96+HeHyJapFkIndVWGe4J7IEZrQKJijd6czHJuuH/AwZ+avnQeR9Rm79O6Oipc
 ddEidahJWIkBohGMwwWoSLtvQsjyGIxszBYy/WgyIZSQ9sgaZ+PurjVMfB3jkP293oAHa7apew30w
 TIsPRKw/RuFkaitSoA==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=treblig.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org
 header.a=rsa-sha256 header.s=bytemarkmx header.b=rb6jmhXq
Subject: [Intel-wired-lan] [RFC net-next 3/9] i40e: Remove unused
 i40e_(read|write)_phy_register
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

i40e_read_phy_register() and i40e_write_phy_register() were added in
2016 by
commit f62ba91458b5 ("i40e: Add functions which apply correct PHY access
method for read and write operation")

but haven't been used.

Remove them.

(There are more specific _clause* variants of these functions
that are still used.)

Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>
---
 drivers/net/ethernet/intel/i40e/i40e_common.c | 78 -------------------
 .../net/ethernet/intel/i40e/i40e_prototype.h  |  4 -
 2 files changed, 82 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index ba780a949a47..6779e281a648 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -4335,84 +4335,6 @@ int i40e_write_phy_register_clause45(struct i40e_hw *hw,
 	return status;
 }
 
-/**
- * i40e_write_phy_register
- * @hw: pointer to the HW structure
- * @page: registers page number
- * @reg: register address in the page
- * @phy_addr: PHY address on MDIO interface
- * @value: PHY register value
- *
- * Writes value to specified PHY register
- **/
-int i40e_write_phy_register(struct i40e_hw *hw,
-			    u8 page, u16 reg, u8 phy_addr, u16 value)
-{
-	int status;
-
-	switch (hw->device_id) {
-	case I40E_DEV_ID_1G_BASE_T_X722:
-		status = i40e_write_phy_register_clause22(hw, reg, phy_addr,
-							  value);
-		break;
-	case I40E_DEV_ID_1G_BASE_T_BC:
-	case I40E_DEV_ID_5G_BASE_T_BC:
-	case I40E_DEV_ID_10G_BASE_T:
-	case I40E_DEV_ID_10G_BASE_T4:
-	case I40E_DEV_ID_10G_BASE_T_BC:
-	case I40E_DEV_ID_10G_BASE_T_X722:
-	case I40E_DEV_ID_25G_B:
-	case I40E_DEV_ID_25G_SFP28:
-		status = i40e_write_phy_register_clause45(hw, page, reg,
-							  phy_addr, value);
-		break;
-	default:
-		status = -EIO;
-		break;
-	}
-
-	return status;
-}
-
-/**
- * i40e_read_phy_register
- * @hw: pointer to the HW structure
- * @page: registers page number
- * @reg: register address in the page
- * @phy_addr: PHY address on MDIO interface
- * @value: PHY register value
- *
- * Reads specified PHY register value
- **/
-int i40e_read_phy_register(struct i40e_hw *hw,
-			   u8 page, u16 reg, u8 phy_addr, u16 *value)
-{
-	int status;
-
-	switch (hw->device_id) {
-	case I40E_DEV_ID_1G_BASE_T_X722:
-		status = i40e_read_phy_register_clause22(hw, reg, phy_addr,
-							 value);
-		break;
-	case I40E_DEV_ID_1G_BASE_T_BC:
-	case I40E_DEV_ID_5G_BASE_T_BC:
-	case I40E_DEV_ID_10G_BASE_T:
-	case I40E_DEV_ID_10G_BASE_T4:
-	case I40E_DEV_ID_10G_BASE_T_BC:
-	case I40E_DEV_ID_10G_BASE_T_X722:
-	case I40E_DEV_ID_25G_B:
-	case I40E_DEV_ID_25G_SFP28:
-		status = i40e_read_phy_register_clause45(hw, page, reg,
-							 phy_addr, value);
-		break;
-	default:
-		status = -EIO;
-		break;
-	}
-
-	return status;
-}
-
 /**
  * i40e_get_phy_address
  * @hw: pointer to the HW structure
diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
index c0a4bd53501c..bfebe18c0041 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
@@ -439,10 +439,6 @@ int i40e_read_phy_register_clause45(struct i40e_hw *hw,
 				    u8 page, u16 reg, u8 phy_addr, u16 *value);
 int i40e_write_phy_register_clause45(struct i40e_hw *hw,
 				     u8 page, u16 reg, u8 phy_addr, u16 value);
-int i40e_read_phy_register(struct i40e_hw *hw, u8 page, u16 reg,
-			   u8 phy_addr, u16 *value);
-int i40e_write_phy_register(struct i40e_hw *hw, u8 page, u16 reg,
-			    u8 phy_addr, u16 value);
 u8 i40e_get_phy_address(struct i40e_hw *hw, u8 dev_num);
 int i40e_aq_write_ddp(struct i40e_hw *hw, void *buff,
 		      u16 buff_size, u32 track_id,
-- 
2.47.1

