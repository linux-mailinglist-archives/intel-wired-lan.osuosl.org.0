Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 210F188B411
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Mar 2024 23:30:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB9EF608D9;
	Mon, 25 Mar 2024 22:30:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qp7Px6BstCNk; Mon, 25 Mar 2024 22:30:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD599608CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711405808;
	bh=k7vRgMOP4ei9RtFROCfUhgMl+ScSJrx6/hG3TID6p3g=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WK/cum8xzj0StScb8w2ScdlJejugNqXp0qmGjdeACzjjH6seclvB4Fm7K3gi6bCj0
	 6BOOzBWr0gvQ6soScGAccgtxE8vi2btJ+9E9yqsjEOwT3wmm8e6hH9qjTzdoT7xC4B
	 1MdkSJ3R+gM6Wv8V6PAkViMIdbWjO+pI+LijiaNf4z+miwcG+uo992YwqDZnWk2ORz
	 lxiMCYgvjnnh2i5g3HHMARy7UtHlXdIj66SVmvLyKMM9QZHKB17C5ZTZ5L6WVWc+Uh
	 i3oLR/EPwvz5Jef7nCIQWtHDHa/wjjn55m8GtaEn7ZV4Uex5XUWOGHKIBdtQRQ3tOz
	 fzPFsg9VKgl2Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD599608CE;
	Mon, 25 Mar 2024 22:30:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CC69B1BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 22:30:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C664C608C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 22:30:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q5EVlKio-oBQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Mar 2024 22:30:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=helgaas@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1D485605D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D485605D8
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1D485605D8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 22:30:03 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 58FF86115E;
 Mon, 25 Mar 2024 22:30:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0FEFC433F1;
 Mon, 25 Mar 2024 22:30:02 +0000 (UTC)
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Mon, 25 Mar 2024 17:29:50 -0500
Message-Id: <20240325222951.1460656-3-helgaas@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240325222951.1460656-1-helgaas@kernel.org>
References: <20240325222951.1460656-1-helgaas@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1711405803;
 bh=4KsogMxOnNi4o94Zor1uvaqS/A0cfHOQgy7yenfTfDw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZTrgMTzi4z13sOnAJDGuwJ5KfrodFzM9Z3f3xfczMrulYxBbWBMsvC8loPtYtubYI
 +BDRQ+znulUNxSeI4O0UYI3k1ytrojfpDPB7/Sh0y9WIgDJ9cduRVcAbWzD1NBu/Z+
 o1d50aQZHeK7zhaEWagboDxOCgSSFWE/PJmr0k/4vm2w9q02zdTMNj3ZP9ATjvJLSU
 hJn8TijL6+4F6virrUKyxX+cySj19kQ0t73uIuk5bLyK7GxI7x5XXeqWh5VmxcCCnJ
 AyQo5i8d7M7DfOZLc0c4LMPZBjzVzZ/kxAPp7uR2dr+SdVyE1L2CEN4g7PKyZFsJ6Q
 gHK5LWy5/d/jA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ZTrgMTzi
Subject: [Intel-wired-lan] [PATCH 2/3] igb: Remove redundant runtime resume
 for ethtool_ops
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
Cc: Sasha Neftin <sasha.neftin@intel.com>, netdev@vger.kernel.org,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 linux-kernel@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 intel-wired-lan@lists.osuosl.org, Zheng Yan <zheng.z.yan@intel.com>,
 Konstantin Khlebnikov <khlebnikov@openvz.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Bjorn Helgaas <bhelgaas@google.com>

749ab2cd1270 ("igb: add basic runtime PM support") added
ethtool_ops.begin() and .complete(), which used pm_runtime_get_sync() to
resume suspended devices before any ethtool_ops callback and allow suspend
after it completed.

Subsequently, f32a21376573 ("ethtool: runtime-resume netdev parent before
ethtool ioctl ops") added pm_runtime_get_sync() in the dev_ethtool() path,
so the device is resumed before any ethtool_ops callback even if the driver
didn't supply a .begin() callback.

Remove the .begin() and .complete() callbacks, which are now redundant
because dev_ethtool() already resumes the device.

Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
---
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index 99977a22b843..61d72250c0ed 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -3272,19 +3272,6 @@ static int igb_get_module_eeprom(struct net_device *netdev,
 	return 0;
 }
 
-static int igb_ethtool_begin(struct net_device *netdev)
-{
-	struct igb_adapter *adapter = netdev_priv(netdev);
-	pm_runtime_get_sync(&adapter->pdev->dev);
-	return 0;
-}
-
-static void igb_ethtool_complete(struct net_device *netdev)
-{
-	struct igb_adapter *adapter = netdev_priv(netdev);
-	pm_runtime_put(&adapter->pdev->dev);
-}
-
 static u32 igb_get_rxfh_indir_size(struct net_device *netdev)
 {
 	return IGB_RETA_SIZE;
@@ -3508,8 +3495,6 @@ static const struct ethtool_ops igb_ethtool_ops = {
 	.set_channels		= igb_set_channels,
 	.get_priv_flags		= igb_get_priv_flags,
 	.set_priv_flags		= igb_set_priv_flags,
-	.begin			= igb_ethtool_begin,
-	.complete		= igb_ethtool_complete,
 	.get_link_ksettings	= igb_get_link_ksettings,
 	.set_link_ksettings	= igb_set_link_ksettings,
 };
-- 
2.34.1

