Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD52B228FC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 15:46:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1BBE084361;
	Tue, 12 Aug 2025 13:46:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rAeBxl_MV0-K; Tue, 12 Aug 2025 13:46:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 71FC584368
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755006372;
	bh=3tYtLXQTnVlFfyDQy/nYfcenuoz71+ZIMVjdDOaSCs4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JAKcUeekladgqhOA0pwlfZpbSddSeWHUB2qxINpi5Pgul5fr6+GhBQQJ/jMXmlDO5
	 7H4AN6FeeMDMLoFE482QrKMPcEh5F71kSOC5BYbRtb3NWsMzC4NFpHrcf0y/JRcMxY
	 LdppYim2VMLmf2coIBa49e/P8Vt00ZFxuaGphMVPVj9i6T1/pMo6lOg+lPc7wyH3NQ
	 JuG30ZclqDdjYl9qX81gbtsG5TkGKMNKAI++QF3jlqiazjsTPMe01a5LdmeKLEuqhB
	 6e4ILH6z5Tzw7j+33CpvfvqrQiWVERHLX6SRVwpLcE4TD4ZMgROb4vfJzwJE7b8P+E
	 wT81RiIb7H1jA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 71FC584368;
	Tue, 12 Aug 2025 13:46:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 143A8158
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 13:46:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 05F8841506
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 13:46:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Kk5LDtv1xm9K for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 13:46:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5BB2B413FE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5BB2B413FE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5BB2B413FE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 13:46:10 +0000 (UTC)
X-CSE-ConnectionGUID: R96wUUDnRRiiNMQ1vWg+dg==
X-CSE-MsgGUID: Y08xHxqKSNiWc2kLU/hIew==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="56994318"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="56994318"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 06:39:03 -0700
X-CSE-ConnectionGUID: HX8uqehtRy2HeWb7TW4I2g==
X-CSE-MsgGUID: sALZVvPWR2CaFRait38r8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="170416052"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 12 Aug 2025 06:39:01 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 5420432CAD;
 Tue, 12 Aug 2025 14:39:00 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: netdev@vger.kernel.org,
	Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Tue, 12 Aug 2025 15:28:59 +0200
Message-Id: <20250812132910.99626-2-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20250812132910.99626-1-przemyslaw.kitszel@intel.com>
References: <20250812132910.99626-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755006371; x=1786542371;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TOSXConkqbhZiWMfHQMp43j6TW/KPXqP30QVkaB7RRU=;
 b=GjGzPkPHQ8fOT1VilGQroAGO2XTr8/n5rTM6p4sCtVe3tBgM8UE+R4c4
 soZys63lS5X3/9+WsSSNHe6H7DZ62c4feLIZrzeIAJ24ZYOGDlUCggAV2
 vSCtrIwicZrGavuVTmiE6zlyswBuacXZHouOa2aCtzcdi1MD3rUWIW50D
 J56+8VANTbB8encOO5uhUiTRdyhGyJShUYS0w2BDOGDA0FqKRMtDykijN
 UsYMwBPtZf3Yq+eOYDlMzfITfSb5G/YMPU3uhmVD9oHPiyzxS0Fg/GyIM
 s2yi/Hx4ocxRZshsTzSOECYJC5qtxhEB9mShDnLZdBnmFjCM6GNxU3tGk
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GjGzPkPH
Subject: [Intel-wired-lan] [PATCH 01/12] ice: split queue stuff out of
 ice_virtchnl.c - p1
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

Temporary rename of ice_virtchnl.c into ice_virtchnl_queues.c

In order to split ice_virtchnl.c in a way that makes it much easier
to still blame new file, we do it via multiple git steps.

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile                         | 2 +-
 .../intel/ice/{ice_virtchnl.c => ice_virtchnl_queues.c}         | 0
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename drivers/net/ethernet/intel/ice/{ice_virtchnl.c => ice_virtchnl_queues.c} (100%)

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index d0f9c9492363..56aec5ab9e6b 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -47,7 +47,7 @@ ice-y := ice_main.o	\
 	 ice_adapter.o
 ice-$(CONFIG_PCI_IOV) +=	\
 	ice_sriov.o		\
-	ice_virtchnl.o		\
+	ice_virtchnl_queues.o	\
 	ice_virtchnl_allowlist.o \
 	ice_virtchnl_fdir.o	\
 	ice_vf_mbx.o		\
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_queues.c
similarity index 100%
rename from drivers/net/ethernet/intel/ice/ice_virtchnl.c
rename to drivers/net/ethernet/intel/ice/ice_virtchnl_queues.c
-- 
2.39.3

