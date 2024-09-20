Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6684897D4F5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Sep 2024 13:52:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C776B6F504;
	Fri, 20 Sep 2024 11:52:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FjMe4A4LHR2Q; Fri, 20 Sep 2024 11:52:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 367856077B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726833148;
	bh=xpsm3CrtW4f+wfW4rDFxGYi4YQT8GjQ6IjbCBiPojyQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PsjfNq/u9THjQJO4jf1Sp1UJcHoNC8YjpMuYHyIvMgxULQXMb1YZ+A5yQKDh930EG
	 kooBU1kkc2TyaGWwC7TkE/s4gel7ekl/1cog2rCAGOBXk0cVjXSIGjLcCU4B25qmeN
	 /Ilz4FdvHlJ7GCk5hCoBzwINeSFr0bnxLOHORoEfrL6RZFOh2gLDsXxaoR2a6g643t
	 sGhU069P0Zp8oWyIq6oqTNN+Kl21fdPPPquvC3rJLxGObKGlHM3XPybxTyPoxvNY17
	 5DZOIJPwdGBlI+WQw75cvyR1jHKrnBRL/4hiYEmvbl5hT+BnFW+UmSB6IWE0BbgSzr
	 z8jnAxKSF2kIw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 367856077B;
	Fri, 20 Sep 2024 11:52:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 449B71BF414
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 11:52:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AEBFB81422
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 11:52:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JS7Tal-hvGmX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Sep 2024 11:52:22 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D33AF81C26
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D33AF81C26
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D33AF81C26
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 11:52:21 +0000 (UTC)
X-CSE-ConnectionGUID: 6oWzP6V6Q5OCeET7UYJTYw==
X-CSE-MsgGUID: ZjhM4MVwRAWydMp0Pl5AkQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="25708350"
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="25708350"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2024 04:52:22 -0700
X-CSE-ConnectionGUID: I2l/uRqHRgOfH/SRtb7aIA==
X-CSE-MsgGUID: wXAL8tOCTTewEBUKnv5AaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="75046034"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa003.jf.intel.com with ESMTP; 20 Sep 2024 04:52:19 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 90F1A27BC1;
 Fri, 20 Sep 2024 12:52:18 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 20 Sep 2024 13:55:10 +0200
Message-ID: <20240920115508.3168-4-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20240920115508.3168-3-marcin.szycik@linux.intel.com>
References: <20240920115508.3168-3-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726833142; x=1758369142;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hhBq2op7M4PcDdmTGfhYbmO8pVY6PQOWvLVVBKnWkcg=;
 b=fmLXmweESchQzXNZUOfcJ1FysXkrJXOGm65rgErGCw5m+HUnla+P0FPC
 Mh2tqW3kZH2bkEXX07Tmh3PrcGZ9P2i9L3z1Zx1uzdAPQGiHD3H8sPpma
 gPRw3tditjnr5FapgZTxx1MGd1AFZJK9r1BTSXOToEWon1TrWLB3sz89x
 EVuLH47vZfAaf3/2lKP/3xSJVJLOie65IzL3xUyEpXtpN2JJoBHfLNZ2b
 pQp5xnevjAs+b0Pk01hvXFXUwI9X1Nr6m1kpSSYNXFkXxbIsfuA2y3tnr
 wPsGB/6puVUQiNO0eaU3gK4JKhZ2fRfe8FeSX656eMFqiBXvKEPtCELYi
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fmLXmweE
Subject: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: Fix netif_is_ice() in
 Safe Mode
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
Cc: netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@linux.intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, mateusz.polchlopek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

netif_is_ice() works by checking the pointer to netdev ops. However, it
only checks for the default ice_netdev_ops, not ice_netdev_safe_mode_ops,
so in Safe Mode it always returns false, which is unintuitive. While it
doesn't look like netif_is_ice() is currently being called anywhere in Safe
Mode, this could change and potentially lead to unexpected behaviour.

Fixes: df006dd4b1dc ("ice: Add initial support framework for LAG")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 7b6725d652e1..b58ef3e69f9c 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -87,7 +87,8 @@ ice_indr_setup_tc_cb(struct net_device *netdev, struct Qdisc *sch,
 
 bool netif_is_ice(const struct net_device *dev)
 {
-	return dev && (dev->netdev_ops == &ice_netdev_ops);
+	return dev && (dev->netdev_ops == &ice_netdev_ops ||
+		       dev->netdev_ops == &ice_netdev_safe_mode_ops);
 }
 
 /**
-- 
2.45.0

