Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ECA488B414
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Mar 2024 23:30:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 491CE608E4;
	Mon, 25 Mar 2024 22:30:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zd6adyVGnVC0; Mon, 25 Mar 2024 22:30:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 87BCF608EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711405812;
	bh=S10HWQldKq4Wt//85lG0PQB4WggXXPM6QNu+piQ0XDE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oRrFwFx9GPInXB1XQm92Uq5E/g4WAKPwYGVShcEqF0SN1CxEgZd+nj80GNCc+YR+Z
	 UEh9lPn8qEoxnHpLEdW/O/9z9xgY709QLWLeYvjpbFQ5okEqUSCKGyhAgRetscr1jw
	 KWWtsrvVWJEzeOBIYYTWbsfJoya/JyngOFfrBtzUEjAL3dYeRN35IFJAsYRCJtB9Aa
	 c4xiEkx+FnwkMfNGAB2tpluXJx5J3f2ZX5lF/i/+tRYdXmq8HTH1oFlR7rFBBytY6/
	 51Y2/GrYlUtdqDlBT1EtogXeePjFiNyFUCwn3/fA92zPjPisuKEGKBoxB3773IhMlj
	 4Wl9xAiJxL96g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 87BCF608EF;
	Mon, 25 Mar 2024 22:30:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 587281BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 22:30:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5232081846
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 22:30:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FrIRx8_-WMVl for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Mar 2024 22:30:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=helgaas@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A8DBF817A9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A8DBF817A9
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A8DBF817A9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 22:30:06 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 7DE23611A9;
 Mon, 25 Mar 2024 22:30:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA65DC43394;
 Mon, 25 Mar 2024 22:30:04 +0000 (UTC)
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Mon, 25 Mar 2024 17:29:51 -0500
Message-Id: <20240325222951.1460656-4-helgaas@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240325222951.1460656-1-helgaas@kernel.org>
References: <20240325222951.1460656-1-helgaas@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1711405805;
 bh=4AJOQf5vgvqX5cAii8ibKLW+VtEtnKWwBG0U8INKPUk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hGczMVKUkELSV29AyRnwTX8hePyzeb2qCzy6G4mjg61tAQG1npyzMJ83lMum8liUr
 +S5FJejZQADYnJOttLOrD59NH6dqgcRIy9xr1dd9vqusmN/6NXPJMgcj96ECn+LxMr
 XukBPnXyDvoUbfsjRVKMPa6M+8HZK+tA1DvWCEVxF5pJx5+hCWl9kBU+O2qpXoTdOf
 8nF+Z+h2sDJXUj8J8iloxoW9iMkHgXVvatM+iujOAD8Hktn0ay8QIuz2YeMWcvKrXp
 q3x+UNRas8WznH3e0LmXZNwbQtsynz7GKRZISSv3AazXVPEGSKCTRCu0uNvL5A1fVk
 sW4I0FoCUhZEQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=hGczMVKU
Subject: [Intel-wired-lan] [PATCH 3/3] igc: Remove redundant runtime resume
 for ethtool ops
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

8c5ad0dae93c ("igc: Add ethtool support") added ethtool_ops.begin() and
.complete(), which used pm_runtime_get_sync() to resume suspended devices
before any ethtool_ops callback and allow suspend after it completed.

Subsequently, f32a21376573 ("ethtool: runtime-resume netdev parent before
ethtool ioctl ops") added pm_runtime_get_sync() in the dev_ethtool() path,
so the device is resumed before any ethtool_ops callback even if the driver
didn't supply a .begin() callback.

Remove the .begin() and .complete() callbacks, which are now redundant
because dev_ethtool() already resumes the device.

Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 1a64f1ca6ca8..f2c4f1966bb0 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1711,21 +1711,6 @@ static int igc_ethtool_set_eee(struct net_device *netdev,
 	return 0;
 }
 
-static int igc_ethtool_begin(struct net_device *netdev)
-{
-	struct igc_adapter *adapter = netdev_priv(netdev);
-
-	pm_runtime_get_sync(&adapter->pdev->dev);
-	return 0;
-}
-
-static void igc_ethtool_complete(struct net_device *netdev)
-{
-	struct igc_adapter *adapter = netdev_priv(netdev);
-
-	pm_runtime_put(&adapter->pdev->dev);
-}
-
 static int igc_ethtool_get_link_ksettings(struct net_device *netdev,
 					  struct ethtool_link_ksettings *cmd)
 {
@@ -2025,8 +2010,6 @@ static const struct ethtool_ops igc_ethtool_ops = {
 	.set_priv_flags		= igc_ethtool_set_priv_flags,
 	.get_eee		= igc_ethtool_get_eee,
 	.set_eee		= igc_ethtool_set_eee,
-	.begin			= igc_ethtool_begin,
-	.complete		= igc_ethtool_complete,
 	.get_link_ksettings	= igc_ethtool_get_link_ksettings,
 	.set_link_ksettings	= igc_ethtool_set_link_ksettings,
 	.self_test		= igc_ethtool_diag_test,
-- 
2.34.1

