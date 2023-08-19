Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E1962781894
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Aug 2023 11:48:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D841760C20;
	Sat, 19 Aug 2023 09:47:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D841760C20
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692438479;
	bh=PhX3IPdA+LviyGfSywoxuilccFx9nFWp85ZZR/8XPiQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Z8bNmoP/2hVqUJjeAUItYIhG5tMBijAdkyhVXIzqt5DFadgUhnI0DxzZs3UN4PM1r
	 hcnR/oL/pub+k3FGXa0iX7O+/UcY3307TeAiZpSBnkkgAQ+HUJOGWWRGeKj5mw9hsf
	 lXqiTAqiEWPLiB5akcGxVXYA5oQ33K8sx/6Be1An836pIcvxaTw4VSkCkXyQ5kPVpB
	 KszcZwsq1IU5Ak6pRr3X0EHT/BybljvjPkBdvsZEC1yxprfnuJLDz1uG8aqt28r50/
	 lUB6iChLkF4aorPqV2V3u41J+dVhFhGbAHYJS+uJAH8nJq40mEskn7E1RjfXbSXbHk
	 xoN04XbGDdjtg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ynZ09uNz7XXR; Sat, 19 Aug 2023 09:47:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 86DF760A67;
	Sat, 19 Aug 2023 09:47:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 86DF760A67
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 53C091BF306
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Aug 2023 09:47:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3ADF860A67
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Aug 2023 09:47:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3ADF860A67
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IGzCVpQiqHi7 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Aug 2023 09:47:52 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4ADB2607FE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Aug 2023 09:47:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4ADB2607FE
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="353577265"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="353577265"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2023 02:47:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="728878264"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="728878264"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.168])
 by orsmga007.jf.intel.com with ESMTP; 19 Aug 2023 02:47:50 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sat, 19 Aug 2023 02:40:25 -0700
Message-Id: <20230819094025.15196-1-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692438472; x=1723974472;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ynqb6SitFONfu8Bcdt21Op5zeHmxsOgPEjDDo2AmaMk=;
 b=Wd2UfwWF/mLs6ZToAgLEdPCfmDtgL2Mt2b6oyJN8/SbmP6RDuIf/GagC
 szE2O7OzpFv11RLzhH8F9O7pi6MOYsWJoNg2BcNBlbBeelZxWIGHzw8f/
 LxfhSp+VYfpUssb1OerMOZaA9Whi5mFzParJ0SWcm/7yIbNpjmGuWOb4O
 Z8gSDj1FdZFtKgQ04D++SGj9hIJT4jDJPvnD1j09Xy2H8rgfow1E4s7YN
 aU4TMQBdus8aqRGgL6rdaNPD3UerwlDAXpe21wdDmFtKgGeOrXwOIskoF
 jqldTgM7H+Sk8YAW4pFNKlZ67XGJyJ5zlLByhHCa88KBkd7Ypx3nZi8Cv
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Wd2UfwWF
Subject: [Intel-wired-lan] [PATCH iwl-next v2 3/9] ethtool: Add missing
 ETHTOOL_LINK_MODE_ to forced speed map
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
Cc: andrew@lunn.ch, aelior@marvell.com, manishc@marvell.com,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The Ethtool forced speeds to Ethtool supported link modes map is missing
some Ethtool forced speeds and ETHTOOL_LINK_MODE_. Add the all speeds
and mapped link modes to provide a common implementation among drivers.

Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 include/linux/ethtool.h | 80 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 80 insertions(+)

diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
index 245fd4a8d85b..519d6ec73d98 100644
--- a/include/linux/ethtool.h
+++ b/include/linux/ethtool.h
@@ -1069,12 +1069,33 @@ struct ethtool_forced_speed_map {
 	.arr_size	= ARRAY_SIZE(ethtool_forced_speed_##value),	\
 }
 
+static const u32 ethtool_forced_speed_10[] __initconst = {
+	ETHTOOL_LINK_MODE_10baseT_Full_BIT,
+	ETHTOOL_LINK_MODE_10baseT1L_Full_BIT,
+	ETHTOOL_LINK_MODE_10baseT1S_Full_BIT,
+};
+
+static const u32 ethtool_forced_speed_100[] __initconst = {
+	ETHTOOL_LINK_MODE_100baseT_Full_BIT,
+	ETHTOOL_LINK_MODE_100baseFX_Half_BIT,
+	ETHTOOL_LINK_MODE_100baseFX_Full_BIT,
+};
+
 static const u32 ethtool_forced_speed_1000[] __initconst = {
 	ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
 	ETHTOOL_LINK_MODE_1000baseKX_Full_BIT,
 	ETHTOOL_LINK_MODE_1000baseX_Full_BIT,
 };
 
+static const u32 ethtool_forced_speed_2500[] __initconst = {
+	ETHTOOL_LINK_MODE_2500baseT_Full_BIT,
+	ETHTOOL_LINK_MODE_2500baseX_Full_BIT,
+};
+
+static const u32 ethtool_forced_speed_5000[] __initconst = {
+	ETHTOOL_LINK_MODE_5000baseT_Full_BIT,
+};
+
 static const u32 ethtool_forced_speed_10000[] __initconst = {
 	ETHTOOL_LINK_MODE_10000baseT_Full_BIT,
 	ETHTOOL_LINK_MODE_10000baseKR_Full_BIT,
@@ -1084,10 +1105,12 @@ static const u32 ethtool_forced_speed_10000[] __initconst = {
 	ETHTOOL_LINK_MODE_10000baseSR_Full_BIT,
 	ETHTOOL_LINK_MODE_10000baseLR_Full_BIT,
 	ETHTOOL_LINK_MODE_10000baseLRM_Full_BIT,
+	ETHTOOL_LINK_MODE_10000baseER_Full_BIT,
 };
 
 static const u32 ethtool_forced_speed_20000[] __initconst = {
 	ETHTOOL_LINK_MODE_20000baseKR2_Full_BIT,
+	ETHTOOL_LINK_MODE_20000baseMLD2_Full_BIT,
 };
 
 static const u32 ethtool_forced_speed_25000[] __initconst = {
@@ -1107,6 +1130,18 @@ static const u32 ethtool_forced_speed_50000[] __initconst = {
 	ETHTOOL_LINK_MODE_50000baseKR2_Full_BIT,
 	ETHTOOL_LINK_MODE_50000baseCR2_Full_BIT,
 	ETHTOOL_LINK_MODE_50000baseSR2_Full_BIT,
+	ETHTOOL_LINK_MODE_50000baseKR_Full_BIT,
+	ETHTOOL_LINK_MODE_50000baseKR_Full_BIT,
+	ETHTOOL_LINK_MODE_50000baseCR_Full_BIT,
+	ETHTOOL_LINK_MODE_50000baseLR_ER_FR_Full_BIT,
+	ETHTOOL_LINK_MODE_50000baseDR_Full_BIT,
+};
+
+static const u32 ethtool_forced_speed_56000[] __initconst = {
+	ETHTOOL_LINK_MODE_56000baseKR4_Full_BIT,
+	ETHTOOL_LINK_MODE_56000baseCR4_Full_BIT,
+	ETHTOOL_LINK_MODE_56000baseSR4_Full_BIT,
+	ETHTOOL_LINK_MODE_56000baseLR4_Full_BIT,
 };
 
 static const u32 ethtool_forced_speed_100000[] __initconst = {
@@ -1114,6 +1149,51 @@ static const u32 ethtool_forced_speed_100000[] __initconst = {
 	ETHTOOL_LINK_MODE_100000baseSR4_Full_BIT,
 	ETHTOOL_LINK_MODE_100000baseCR4_Full_BIT,
 	ETHTOOL_LINK_MODE_100000baseLR4_ER4_Full_BIT,
+	ETHTOOL_LINK_MODE_100000baseCR2_Full_BIT,
+	ETHTOOL_LINK_MODE_100000baseSR2_Full_BIT,
+	ETHTOOL_LINK_MODE_100000baseKR2_Full_BIT,
+	ETHTOOL_LINK_MODE_100000baseLR2_ER2_FR2_Full_BIT,
+	ETHTOOL_LINK_MODE_100000baseDR2_Full_BIT,
+	ETHTOOL_LINK_MODE_100000baseKR_Full_BIT,
+	ETHTOOL_LINK_MODE_100000baseSR_Full_BIT,
+	ETHTOOL_LINK_MODE_100000baseLR_ER_FR_Full_BIT,
+	ETHTOOL_LINK_MODE_100000baseCR_Full_BIT,
+	ETHTOOL_LINK_MODE_100000baseDR_Full_BIT,
+};
+
+static const u32 ethtool_forced_speed_200000[] __initconst = {
+	ETHTOOL_LINK_MODE_200000baseKR4_Full_BIT,
+	ETHTOOL_LINK_MODE_200000baseSR4_Full_BIT,
+	ETHTOOL_LINK_MODE_200000baseLR4_ER4_FR4_Full_BIT,
+	ETHTOOL_LINK_MODE_200000baseDR4_Full_BIT,
+	ETHTOOL_LINK_MODE_200000baseCR4_Full_BIT,
+	ETHTOOL_LINK_MODE_200000baseKR2_Full_BIT,
+	ETHTOOL_LINK_MODE_200000baseSR2_Full_BIT,
+	ETHTOOL_LINK_MODE_200000baseLR2_ER2_FR2_Full_BIT,
+	ETHTOOL_LINK_MODE_200000baseDR2_Full_BIT,
+	ETHTOOL_LINK_MODE_200000baseCR2_Full_BIT,
+};
+
+static const u32 ethtool_forced_speed_400000[] __initconst = {
+	ETHTOOL_LINK_MODE_400000baseKR8_Full_BIT,
+	ETHTOOL_LINK_MODE_400000baseSR8_Full_BIT,
+	ETHTOOL_LINK_MODE_400000baseLR8_ER8_FR8_Full_BIT,
+	ETHTOOL_LINK_MODE_400000baseDR8_Full_BIT,
+	ETHTOOL_LINK_MODE_400000baseCR8_Full_BIT,
+	ETHTOOL_LINK_MODE_400000baseKR4_Full_BIT,
+	ETHTOOL_LINK_MODE_400000baseSR4_Full_BIT,
+	ETHTOOL_LINK_MODE_400000baseLR4_ER4_FR4_Full_BIT,
+	ETHTOOL_LINK_MODE_400000baseDR4_Full_BIT,
+	ETHTOOL_LINK_MODE_400000baseCR4_Full_BIT,
+};
+
+static const u32 ethtool_forced_speed_800000[] __initconst = {
+	ETHTOOL_LINK_MODE_800000baseCR8_Full_BIT,
+	ETHTOOL_LINK_MODE_800000baseKR8_Full_BIT,
+	ETHTOOL_LINK_MODE_800000baseDR8_Full_BIT,
+	ETHTOOL_LINK_MODE_800000baseDR8_2_Full_BIT,
+	ETHTOOL_LINK_MODE_800000baseSR8_Full_BIT,
+	ETHTOOL_LINK_MODE_800000baseVR8_Full_BIT,
 };
 
 /**
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
