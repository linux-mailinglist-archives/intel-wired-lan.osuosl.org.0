Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A395958DB4B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Aug 2022 17:42:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9F3278146D;
	Tue,  9 Aug 2022 15:42:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9F3278146D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660059737;
	bh=4KXa5W91+nPUnnupDBZQldwFiU2PAYAh7HO7u5707IY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=8twAbBVBPVGCPGknNbNpkHDt5wmDTC7hbe9ae9YjckMZcZgXq02Kb8a0MiCAQ8D2Y
	 GjXLYTVOKM9XvXiDfj3mU7SIAnhQ7hGnRSg6JLG8af0NM/owYsyz3tvh08L/dN7z4z
	 4qsp7gm+OusZgEZFSma3rLlcBse5ZEXhVwHWcKXMvgcQIDzX0PFLkwNkynubo9yIxr
	 bER4ItZAl/eMy7ZqVafahIqm6jDyisaVhKOsCSjILmQ1uf6c109S5FzL9MesftRp7D
	 qohttpZ0FU7sF/DYO+Xx2KdMTs06b8h4gOXUy/qIiogf7q6pkSwpaXiiKtsKaJGXUQ
	 7xfP7ctVi7yzQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TLI_P8pkEKqs; Tue,  9 Aug 2022 15:42:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6BEDA81B70;
	Tue,  9 Aug 2022 15:42:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6BEDA81B70
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 798E31BF5E6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Aug 2022 13:35:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5D60940895
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Aug 2022 13:35:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5D60940895
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NP6G8E08mZ2K for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Aug 2022 13:35:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9B57A40136
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com
 [IPv6:2607:f8b0:4864:20::52f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9B57A40136
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Aug 2022 13:35:57 +0000 (UTC)
Received: by mail-pg1-x52f.google.com with SMTP id h132so11358152pgc.10
 for <intel-wired-lan@lists.osuosl.org>; Tue, 09 Aug 2022 06:35:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc;
 bh=tGbfSymHJ+zxuolTJeDnvn9lzIe0OwQIg8yMo09fobQ=;
 b=HJsUv/arJq4l2gbth2E22D6s3EabuNeL/+Xs8h1cwEAIQHZoPqbx0Yql3zN7vc6Xv4
 +IOjuntcC8DjTYaGNKUqwzGBGSfbEUcF0xhA3/4pujjvxNzDQ2HvU+GKamWMLY58bt8X
 7trkShMRNg4kOgz6BKoA1Tj2ap+UU1ySsM7/7R7C2yHIqyzyKHT9+jogtsOcLFQbEUx4
 tNjb4lip9s36FnW98wXKTK6EyLhPmUF2Xc4xct755L21Bmv+IlxjGCKsg1hWtKc1WWk2
 Oa0v36xxLp4YCgg3eB5ao/dSjfvy630IZUQ3+CopdEi6K2LxCQSTvw7a1EyLHiYdzwCi
 xTeQ==
X-Gm-Message-State: ACgBeo3oPrbZxbm0Nzdg9F0AIIPhov7lmrnIkCl3o3yZQ6B6O8nrNRNx
 TUpN2RCxswUQrMAKlnRqEOU=
X-Google-Smtp-Source: AA6agR5wNX9vgz02VMgAva9mLj9N6h5i0d3uDED1NVeMhsiRpwuS9Yh2L/wypOPOvWHpabpZMOnKWw==
X-Received: by 2002:a63:d117:0:b0:41a:f0ee:f194 with SMTP id
 k23-20020a63d117000000b0041af0eef194mr18709156pgg.588.1660052157022; 
 Tue, 09 Aug 2022 06:35:57 -0700 (PDT)
Received: from pipi-desktop.testerjoe ([101.88.11.237])
 by smtp.gmail.com with ESMTPSA id
 g64-20020a625243000000b0052d6ad246a4sm10829525pfb.144.2022.08.09.06.35.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Aug 2022 06:35:56 -0700 (PDT)
From: Linjun Bao <meljbao@gmail.com>
To: 
Date: Tue,  9 Aug 2022 21:35:01 +0800
Message-Id: <20220809133502.37387-1-meljbao@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 09 Aug 2022 15:42:11 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc;
 bh=tGbfSymHJ+zxuolTJeDnvn9lzIe0OwQIg8yMo09fobQ=;
 b=SxeL4oMkbs91TTe014uyXFykJHKU9/1Aqpcimyt1wM44ts92liZQyV7SlDhgr3S4TD
 4tqUJDSFBxurNQ//KNNWEcpUWFLKMil/sDLu117bVFl8dzCGkiLgzCDrl3LaEp3WLKo/
 Yi+lAQePzMSHce1/Z84t+jZSAkdYV3DZUR83zmajPd5kpaUFWP1tSXnm+dgqmp+sxhFg
 atF6gAoXkwo29eggDTfjpWdS0pZNsvcTWXiCsfVAWqpp0wp32pNmAStakhn5SlxrcGBZ
 lFu8N2T/x6si0XaYIh10+ZWBAOJa8gOnYDQeHIJ0YEM/pOhnTlUtBTpLkHADZwpl7JAm
 IVUA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=SxeL4oMk
Subject: [Intel-wired-lan] [PATCH] igc: Remove _I_PHY_ID check for i225
 devices
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 meljbao@gmail.com, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Source commit 7c496de538ee ("igc: Remove _I_PHY_ID checking"),
remove _I_PHY_ID check for i225 device, since i225 devices only
have one PHY vendor.

Signed-off-by: Linjun Bao <meljbao@gmail.com>
---
 drivers/net/ethernet/intel/igc/igc_base.c | 10 +---------
 drivers/net/ethernet/intel/igc/igc_main.c |  3 +--
 drivers/net/ethernet/intel/igc/igc_phy.c  |  6 ++----
 3 files changed, 4 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_base.c b/drivers/net/ethernet/intel/igc/igc_base.c
index db289bcce21d..d66429eb14a5 100644
--- a/drivers/net/ethernet/intel/igc/igc_base.c
+++ b/drivers/net/ethernet/intel/igc/igc_base.c
@@ -187,15 +187,7 @@ static s32 igc_init_phy_params_base(struct igc_hw *hw)
 
 	igc_check_for_copper_link(hw);
 
-	/* Verify phy id and set remaining function pointers */
-	switch (phy->id) {
-	case I225_I_PHY_ID:
-		phy->type	= igc_phy_i225;
-		break;
-	default:
-		ret_val = -IGC_ERR_PHY;
-		goto out;
-	}
+	phy->type = igc_phy_i225;
 
 out:
 	return ret_val;
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 9ba05d9aa8e0..b8297a63a7fd 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2884,8 +2884,7 @@ bool igc_has_link(struct igc_adapter *adapter)
 		break;
 	}
 
-	if (hw->mac.type == igc_i225 &&
-	    hw->phy.id == I225_I_PHY_ID) {
+	if (hw->mac.type == igc_i225) {
 		if (!netif_carrier_ok(adapter->netdev)) {
 			adapter->flags &= ~IGC_FLAG_NEED_LINK_UPDATE;
 		} else if (!(adapter->flags & IGC_FLAG_NEED_LINK_UPDATE)) {
diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ethernet/intel/igc/igc_phy.c
index 6156c76d765f..1be112ce6774 100644
--- a/drivers/net/ethernet/intel/igc/igc_phy.c
+++ b/drivers/net/ethernet/intel/igc/igc_phy.c
@@ -235,8 +235,7 @@ static s32 igc_phy_setup_autoneg(struct igc_hw *hw)
 			return ret_val;
 	}
 
-	if ((phy->autoneg_mask & ADVERTISE_2500_FULL) &&
-	    hw->phy.id == I225_I_PHY_ID) {
+	if (phy->autoneg_mask & ADVERTISE_2500_FULL) {
 		/* Read the MULTI GBT AN Control Register - reg 7.32 */
 		ret_val = phy->ops.read_reg(hw, (STANDARD_AN_REG_MASK <<
 					    MMD_DEVADDR_SHIFT) |
@@ -376,8 +375,7 @@ static s32 igc_phy_setup_autoneg(struct igc_hw *hw)
 		ret_val = phy->ops.write_reg(hw, PHY_1000T_CTRL,
 					     mii_1000t_ctrl_reg);
 
-	if ((phy->autoneg_mask & ADVERTISE_2500_FULL) &&
-	    hw->phy.id == I225_I_PHY_ID)
+	if (phy->autoneg_mask & ADVERTISE_2500_FULL)
 		ret_val = phy->ops.write_reg(hw,
 					     (STANDARD_AN_REG_MASK <<
 					     MMD_DEVADDR_SHIFT) |
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
