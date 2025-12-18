Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BCF5CCDA99
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Dec 2025 22:19:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D019580C0E;
	Thu, 18 Dec 2025 21:19:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bQfasxP0NDEU; Thu, 18 Dec 2025 21:19:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C47A80C73
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766092744;
	bh=FA6TgbJGQryfg9Jjqh0LmtKIBMcUwuEcFz1Ra0Dx4fE=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=BInACzr9eDRLKJP7SDLGfHn6XkOBO/Rfd/OlJYfqyaHw5w0e4B1jJkzTfCdKy4Xhk
	 LCHQMHBJ6FHid6zIjFe5N3srfDn+7J0g17l1KsN5F1/uaN82o90KAzRLLOLzLw0oSL
	 VvMiaTiUjRUfTMubUao9U7JGO0qobp++J83kxRDd8U/+ffruHEpq1GIKs0zbduuqoy
	 EiRebm9AXvkc/CFkdSQlHxeq9jY+OCU5UKo+UAnocMceQsDhDUco3I/4oovNZA9IT5
	 sbfTKJxi2Mejp1S9Gnevxa7bSq6Bbukptwk2SI8Luzuu2AgQiWymgkmNxYbxkbEG0F
	 SVu4z3i+pXRKg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C47A80C73;
	Thu, 18 Dec 2025 21:19:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1A0BC2A2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 21:19:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0BDC040215
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 21:19:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wmtSFCb91n-C for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Dec 2025 21:19:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=paul.greenwalt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 401C940132
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 401C940132
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 401C940132
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 21:19:00 +0000 (UTC)
X-CSE-ConnectionGUID: 5+27AOHQR+SgCo5c6CkhKg==
X-CSE-MsgGUID: Y8p//JGxSwaFWVGC+UPhkg==
X-IronPort-AV: E=McAfee;i="6800,10657,11646"; a="67949820"
X-IronPort-AV: E=Sophos;i="6.21,159,1763452800"; d="scan'208";a="67949820"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 13:19:00 -0800
X-CSE-ConnectionGUID: oZZOEhaGRFyOlJj4uAJNBw==
X-CSE-MsgGUID: caT1Q6HyQIGQIIiHwm+7XQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,159,1763452800"; d="scan'208";a="203092769"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.5.147])
 by fmviesa005.fm.intel.com with ESMTP; 18 Dec 2025 13:19:00 -0800
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: przemyslaw.kitszel@intel.com, Paul Greenwalt <paul.greenwalt@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Thu, 18 Dec 2025 08:36:53 -0500
Message-ID: <20251218133653.343631-1-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766092741; x=1797628741;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ynhbtw4Atdz92Xqm6+E3pdLWJSYqnU97vjTLqcQjvRE=;
 b=mqVorCR7dGfH4Wn78/6MztJ3bBLP9RkFijtYTGXRTnq/go+5m3rhULDu
 3pgGu1eDEHj2+z4WllomT4wzFcqcM66mX6lRfe2cOuvr8gBl/I4ZNToW6
 NmWUnUq23lA/dJKHveGvj1WC7UA1pOxNpmaGO5qk/VPhhuLuYRt8nb4nf
 arytBaMNIQ2lG9R9nhNFW4h/ne/SQj/OA6oFhEFoN7LvmSpquveVzgGeQ
 y5F+csbVlpxT7D313NO93SKyZVvpUWD2+Il/1tbeTU9Nw7BCNPDRxsP7Y
 jWI+PZj7N5EVmU9pp0jqD1CJ0HMtPbiwULNvcojAW9Fdxp2CfwgpQ3hzP
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mqVorCR7
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: add missing
 ice_deinit_hw() in devlink reinit path
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

devlink-reload results in ice_init_hw failed error, and then removing
the ice driver causes a NULL pointer dereference.

[  +0.102213] ice 0000:ca:00.0: ice_init_hw failed: -16
...
[  +0.000001] Call Trace:
[  +0.000003]  <TASK>
[  +0.000006]  ice_unload+0x8f/0x100 [ice]
[  +0.000081]  ice_remove+0xba/0x300 [ice]

Commit 1390b8b3d2be ("ice: remove duplicate call to ice_deinit_hw() on
error paths") removed ice_deinit_hw() from ice_deinit_dev(). As a result
ice_devlink_reinit_down() no longer calls ice_deinit_hw(), but
ice_devlink_reinit_up() still calls ice_init_hw(). Since the control
queues are not uninitialized, ice_init_hw() fails with -EBUSY.

Add ice_deinit_hw() to ice_devlink_reinit_down() to correspond with
ice_init_hw() in ice_devlink_reinit_up().

Fixes: 1390b8b3d2be ("ice: remove duplicate call to ice_deinit_hw() on error paths")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/ice/devlink/devlink.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
index d88b7f3fd1f9..2ef39cc70c21 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
@@ -460,6 +460,7 @@ static void ice_devlink_reinit_down(struct ice_pf *pf)
 	ice_vsi_decfg(ice_get_main_vsi(pf));
 	rtnl_unlock();
 	ice_deinit_pf(pf);
+	ice_deinit_hw(&pf->hw);
 	ice_deinit_dev(pf);
 }
 
-- 
2.52.0

