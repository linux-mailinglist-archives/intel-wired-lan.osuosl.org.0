Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E740C70F62E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 May 2023 14:22:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF046611D1;
	Wed, 24 May 2023 12:22:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EF046611D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684930971;
	bh=iTveuC8X00Khl07PnhuO3I8uE+Ei8KCr2IW24yxn3u8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LL3SKmto4GMV0zh5VKXlVIgfIc3iKXE7l7d403F43DSfoSHmw6nSDWYmIaJR89v2J
	 9IDUvNf5IgASPhfbouB0Syh9KpQfWML/8sw49ODYSwXkHtsQHl8Ir+p8lGQcw+oNxd
	 rwQ0GBNvdT9dX4lujHDlbL/YF2YT+2KmjcIk+Rd9kzSDMfYkUmle6KT95M0NzqRnDZ
	 anuM5jy8JVFPiBTWfs1fLBf7ujmipXcBGiguF7yr9bEflCsTKcQSbWfDIdzHo1v/RE
	 AclfTp1KD7YqZbH2DEux0gGmXtQpPWEnO89zaaXU01cG+5xaFX9OsWeee6h/0WBO0s
	 IUhc0WE6VoLsA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g26NP6cWc6S3; Wed, 24 May 2023 12:22:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CB9A661120;
	Wed, 24 May 2023 12:22:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB9A661120
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AD5781BF354
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 12:22:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 748BF4117A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 12:22:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 748BF4117A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fDfui_Pw4rIg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 May 2023 12:22:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B739B400C7
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B739B400C7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 12:22:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="417005089"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="417005089"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 05:22:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="794168555"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="794168555"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by FMSMGA003.fm.intel.com with ESMTP; 24 May 2023 05:22:34 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 44BC336C30;
 Wed, 24 May 2023 13:22:33 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 24 May 2023 14:21:10 +0200
Message-Id: <20230524122121.15012-3-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230524122121.15012-1-wojciech.drewek@intel.com>
References: <20230524122121.15012-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684930957; x=1716466957;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=n7qwPccrgZv6q6srAOusTi03V720B0sFClTa7AdEA7g=;
 b=EdUBEAZA/FlKCMsenJk9+p2gYXWiEsGAQomf0A0qZjDjqSdJKaCsArma
 sU3zFK1FCQ0JE0SJe7HvnT3szJGCvd/Y7fjho6dk0DEMVCAPWTFJNx0zF
 NOB5+7XT2KMWMgt1veLjxPGaAsXQ6tSPT6jVp3k+z/a5Gdmhttw39Q3Nm
 nw+JKaC0kkmGRTKbLddijMevdNg0yO8fkt1rqiQGJbxZdri2cDnIukek5
 5o/xnYoTF8+r3IE+BnVj6lOJlAoBGldwIWPCGOj2I666jJQuIcojsL1xV
 x0wZQIhEccOJ0SEA+bZIdST5rNnPONl+/lHwcS1YnM8IzT51bazm4wITr
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EdUBEAZA
Subject: [Intel-wired-lan] [PATCH iwl-next v4 02/13] ice: Prohibit rx mode
 change in switchdev mode
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, simon.horman@corigine.com,
 dan.carpenter@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Don't allow to change promisc mode in switchdev mode.
When switchdev is configured, PF netdev is set to be a
default VSI. This is needed for the slow-path to work correctly.
All the unmatched packets will be directed to PF netdev.

It is possible that this setting might be overwritten by
ndo_set_rx_mode. Prevent this by checking if switchdev is
enabled in ice_set_rx_mode.

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index b0d1e6116eb9..d8193de0715a 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5767,7 +5767,7 @@ static void ice_set_rx_mode(struct net_device *netdev)
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
 
-	if (!vsi)
+	if (!vsi || ice_is_switchdev_running(vsi->back))
 		return;
 
 	/* Set the flags to synchronize filters
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
