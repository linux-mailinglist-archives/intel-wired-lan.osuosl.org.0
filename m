Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F0A9FFCD9
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jan 2025 18:37:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AC9916069E;
	Thu,  2 Jan 2025 17:37:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id juWP70JjcJim; Thu,  2 Jan 2025 17:37:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D3B9160723
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735839475;
	bh=7DIlELWgzNGvwf4ldWAU2dlgWl8Sx9HJfUGOtuYL0nc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DMhqRLKGiQNFKBBwlWMG5oFvnOtfobPklj9/nc4Li6XG6BnbZJx+F5YljlQF18EKj
	 EiAcmoc3NwQ/inFFfVd9RGek/uALNoQ307CMDeDwIzOQZsF7eLCIbsyc2HQt2Bs3gh
	 LlOdXUhPxpVETMy6CMCzKy1Ofd2JqAJ6xYClho6Lcftd+f80I/MIN6K4cQ6CBcTwse
	 dRBfjYUE4qT+7LTB24+bHoWHg5Y8/gzp1BN+BeAqMLduOf2vrgkK1J1AkTB0M/2FDi
	 fipVzbInGiQ1Zcq3rq/ohNzE1V/O+KqO+vw09QSNSSzTMKLjRIb+zD2D2ZZYGgYt/J
	 YQVxCUUS15tvw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D3B9160723;
	Thu,  2 Jan 2025 17:37:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B3C5CF27
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 17:37:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9471B40128
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 17:37:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4L0CzOjxaKCK for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jan 2025 17:37:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1098:5b::1;
 helo=mx.treblig.org; envelope-from=linux@treblig.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 86FBF401C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 86FBF401C8
Received: from mx.treblig.org (mx.treblig.org [IPv6:2a00:1098:5b::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 86FBF401C8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 17:37:52 +0000 (UTC)
Received: from localhost ([127.0.0.1] helo=dalek.home.treblig.org)
 by mx.treblig.org with esmtp (Exim 4.96)
 (envelope-from <linux@treblig.org>) id 1tTP8M-007tod-0P;
 Thu, 02 Jan 2025 17:37:22 +0000
From: linux@treblig.org
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Dr. David Alan Gilbert" <linux@treblig.org>
Date: Thu,  2 Jan 2025 17:37:11 +0000
Message-ID: <20250102173717.200359-4-linux@treblig.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250102173717.200359-1-linux@treblig.org>
References: <20250102173717.200359-1-linux@treblig.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx; h=MIME-Version:Message-ID:Date:Subject:From:Content-Type:From
 :Subject; bh=7DIlELWgzNGvwf4ldWAU2dlgWl8Sx9HJfUGOtuYL0nc=; b=G/wxJMXOnwSiyXLm
 /jhG9ErKR7SQM/1v/z4Sb9UOGec54mTBIhfqwXhb72NJw6WP4ZYli1i2O1yHtduJ884uXnF/lZYNK
 TnOGmPrqrQzRyn2WJquxVVjDNpWi0mMjCFy1QSpPxu/ICyHuGqRLHY6Uoe42XjmvymVmFW1odUmy6
 vIBaXVq6MhDP6LdDu8kVVC0aHAUpg+x3tGVNk2Qx9Bl6/veu8ADyCgZUXwrVCgSYkjfyzJ5tjCOcP
 XjchSFfYT4jSXvyJx4vk+7Cm1fYjpUFSvIyD/KstGUNDL4SGn+mo+p+FPeRLTHfPa8tWQMYMZomPl
 c4upQ6hKrIrbPv6UYw==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=treblig.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org
 header.a=rsa-sha256 header.s=bytemarkmx header.b=G/wxJMXO
Subject: [Intel-wired-lan] [PATCH net-next 3/9] i40e: Remove unused
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

