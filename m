Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 136068D50CC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 May 2024 19:16:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2214417B1;
	Thu, 30 May 2024 17:16:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MXSt69cOaHa9; Thu, 30 May 2024 17:16:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2692417BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717089376;
	bh=5tW7nUTVXZ928BV1gzzD9P5CCnJWg4yrCCQFpV2pTEY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=C8agw9HcPr8CKmtQIGk6/kI4WPaoA3A078kgwY1u0LuB6hnkfdbse0wtG3wHrre6f
	 OlN8furxQmE09Xd6K+WrSxkfxaoUNchwgG7NZXh7a7ApMWOrW3UuIHzVlC3aR8luu4
	 0waZqck4QQMrUaWfBSd4CayiTuxfz5RqRONrvXzSSSBQFdmKoUo8PtwQJjiJAaigJn
	 BcfFMLQHUYKlz3Wbu/cl/bOyz8DGrNY0p74OyVf2z92XGm5WeLdxqBnGyWL26kA46g
	 s2yPQjwJtBBgm5i4WV23g/0nDOl/JoAzI8pvTcksGL1ASY23oGkxY0sFgY5NSmncS/
	 Oipxk8mruaxaw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B2692417BD;
	Thu, 30 May 2024 17:16:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0B3AD1D48F3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 17:16:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0396F60B64
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 17:16:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X1LlO0m_zPQw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 May 2024 17:16:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=paul.greenwalt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 39FD96062A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 39FD96062A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 39FD96062A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 17:16:12 +0000 (UTC)
X-CSE-ConnectionGUID: 7++CvdHzQzaAMbPX5O4lmg==
X-CSE-MsgGUID: bMz1g6ltT1qeMbIG2R+9dw==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13355966"
X-IronPort-AV: E=Sophos;i="6.08,202,1712646000"; d="scan'208";a="13355966"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2024 10:16:00 -0700
X-CSE-ConnectionGUID: AvJpC/ImQGGFz+q7/7SJxg==
X-CSE-MsgGUID: nCH2pphHSvW85R6QKSdVcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,202,1712646000"; d="scan'208";a="35965910"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.244.154])
 by fmviesa010.fm.intel.com with ESMTP; 30 May 2024 10:16:00 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 30 May 2024 13:06:17 -0400
Message-ID: <20240530170617.837659-1-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717089373; x=1748625373;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nXNSBy3zzG/8qudR1KoWW0ouDRINWQ5ov3/SvJXMJZU=;
 b=KovCx+Gb9QsprqoYNtaWoNkr0i3SeR3++s161t84MSrI8J104QlaLQxk
 LqR6T9wNaXi/FidD9iBHi1Q9lIYDNbxj1TvP3OOkKZEvBCFqkj+M5hNk3
 GokpAWJ5qwFeCLxvaTYPURz9vF31BZRfBPSVbpTuwTOK8opzPNNx/ByOI
 0/25QH/IB24Hg+83yFOeTlNZdZmomOD2wyKkPRAqvFyAVbpvwSPjh8WKn
 57V6p3nmxK127DVuJC15nnJ5U07R14wZvcsZYRDRD9ZxDRfQ3GYReSedg
 azU5fW2GYKRAxaib3UiZTn36wvOZFBlcOpCQFx+x5hKwWDBrlM+CFcoJk
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KovCx+Gb
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix 200G link speed
 message log
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Paul Greenwalt <paul.greenwalt@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit 24407a01e57c ("ice: Add 200G speed/phy type use") added support
for 200G PHY speeds, but did not include 200G link speed message
support. As a result the driver incorrectly reports Unknown for 200G
link speed.

Fix this by adding 200G support to ice_print_link_msg().

Fixes: 24407a01e57c ("ice: Add 200G speed/phy type use")
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 1b61ca3a6eb6..899f9a07bfa8 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -805,6 +805,9 @@ void ice_print_link_msg(struct ice_vsi *vsi, bool isup)
 	}
 
 	switch (vsi->port_info->phy.link_info.link_speed) {
+	case ICE_AQ_LINK_SPEED_200GB:
+		speed = "200 G";
+		break;
 	case ICE_AQ_LINK_SPEED_100GB:
 		speed = "100 G";
 		break;
-- 
2.41.0

