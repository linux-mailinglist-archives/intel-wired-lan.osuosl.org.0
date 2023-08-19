Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 28206781896
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Aug 2023 11:49:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C55BE60BBE;
	Sat, 19 Aug 2023 09:49:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C55BE60BBE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692438559;
	bh=HW5p5tDBLy+9FSlp+9n4RfqWiQ4hkhlSoreubdmMKt4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ipQn/TnUiURSYDu912pDVPMjkmlyztEC1fuNMaX/vd4tY6uFnvwJED6RPA9oImpZh
	 KFQPd9ScYtIKp32HPczlbfU8gyNAPiEHB/il96sKNeGbKYQRaD0z46a2OadHv3069g
	 x0YfcaGfOeEoYhDolaZ+4PelGdR5ox7ZQoVfcLv2S/47cqrrY+rCJ0oWjsA7u9yZ6I
	 EhetuddaKq5/gub8ra4RxDyqSrZH7FL+dhB9owvcqU7lxSPPfB7xFYV54VbhaMOoTn
	 ChJ7Ngx36DL89sObXiYf5+qQoYVFVpa3acxO3HCc8t2uzhLAdV7HfmnSttfudrMnM7
	 3Ns84TACgRkQQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LiVd9pk_Ul51; Sat, 19 Aug 2023 09:49:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A25E60B9A;
	Sat, 19 Aug 2023 09:49:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A25E60B9A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2FC681BF306
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Aug 2023 09:49:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 09E0060B9A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Aug 2023 09:49:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 09E0060B9A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x52rCXExZJBA for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Aug 2023 09:49:13 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 29DE660B98
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Aug 2023 09:49:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 29DE660B98
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="404261833"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="404261833"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2023 02:49:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="805419599"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="805419599"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.168])
 by fmsmga004.fm.intel.com with ESMTP; 19 Aug 2023 02:49:11 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sat, 19 Aug 2023 02:41:46 -0700
Message-Id: <20230819094146.15242-1-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692438553; x=1723974553;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wAZ2k6g9Dy+6qxoBcnz+IIkmSJoYSZbZiomClWnQN94=;
 b=Dxzn0r+5Vd2zuep48jroud9K6THj7i81DhHh1a7WfmkcWPvOldNqcRsy
 WWECfrF87IgISeWiJL8OtQFGw5WRCblWJS838oEw93QJYR6in1sRgYFIa
 e51o5ICUBMpomaPNDozgpTuK+P1kstQ65rRnA6KygxSwa0FMbMIb6wGWy
 AgaAQ2mw0MhcIKQtqIPJ+sXwHD+yjUZbOXNYSjwB4YNd8XdE3e3JaPVw6
 kVHqzA/+PgwAV3wPiPegeRETdNblW+qAu+h2smsd2RYwa+QUKcr7+WRMF
 fDLhaQwYE1UDaTKW4ySwh/Gl1LY/rdLVEiFk96rEF+jqYSr8YTDSmTmwA
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Dxzn0r+5
Subject: [Intel-wired-lan] [PATCH iwl-next v2 5/9] ice: Add 200G speed/phy
 type use
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
Cc: netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alice Michael <alice.michael@intel.com>

Add the support for 200G phy speeds and the mapping for their
advertisement in link. Add the new PHY type bits for AQ command, as
needed for 200G E830 controllers.

Signed-off-by: Alice Michael <alice.michael@intel.com>
Co-developed-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 14d030d208e0..cbd728386288 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -354,7 +354,6 @@ static struct ethtool_forced_speed_map ice_adv_lnk_speed_maps[] __ro_after_init
 	ETHTOOL_FORCED_SPEED_MAP(25000),
 	ETHTOOL_FORCED_SPEED_MAP(40000),
 	ETHTOOL_FORCED_SPEED_MAP(50000),
-	ETHTOOL_FORCED_SPEED_MAP(100000),
 };
 
 void __init ice_adv_lnk_speed_maps_init(void)
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
