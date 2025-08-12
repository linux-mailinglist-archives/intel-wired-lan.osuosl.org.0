Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 74DEFB228FE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 15:46:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A82EC8437E;
	Tue, 12 Aug 2025 13:46:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EthTAWX_M67Z; Tue, 12 Aug 2025 13:46:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 057E784385
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755006376;
	bh=aazLJDfSivYRq+W0KJotwsdKW2pN8tMsOKIOA4IgNKI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Uuf+43JfHvZzMcak2A1JcUMuX17Mfi2a0d6VS7ww6/xRra6KIA6m9vnQtQrGD6pVJ
	 2WQxUvYhQQ1K/hoHxFWt7bJouBoO2pR7VhnUkTbqi9JCiv8juxzOlbIVXarHAC6msM
	 JEkpMqF99j+uzWA67p9snCXXppz6CxGcOOqWOpUdNeNWIUpckF/3gjFQD4Mq0W6ct2
	 LHaJYnT3nt6CLZW+fEhJmI3QQdS0dmojlAuXir7SRL33vK7qrXGZLvXO/Ro8YlSQn/
	 W9UdxCSG6mlLt4kAMbfutXqmHszPvtjSKAENDs4kOQCXmg03P63Srtb2/nLADW15WT
	 Tt+oURknsaoQg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 057E784385;
	Tue, 12 Aug 2025 13:46:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 223A6158
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 13:46:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5F1E941506
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 13:46:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id foW1Kkq0g8nl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 13:46:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AF986414BB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AF986414BB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AF986414BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 13:46:10 +0000 (UTC)
X-CSE-ConnectionGUID: mguBi3m9Rwic2KILSV0usQ==
X-CSE-MsgGUID: KAtJlUxMRZmegNd8Zab+Gg==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="56994322"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="56994322"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 06:39:06 -0700
X-CSE-ConnectionGUID: mtL56hs5Sg2reneZuOturg==
X-CSE-MsgGUID: fJezaJpqQK2KzlPZuwQ/fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="170416064"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 12 Aug 2025 06:39:04 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 2305132CAD;
 Tue, 12 Aug 2025 14:39:03 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: netdev@vger.kernel.org,
	Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Tue, 12 Aug 2025 15:29:03 +0200
Message-Id: <20250812132910.99626-6-przemyslaw.kitszel@intel.com>
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
 bh=vIpi+g0K3+O6k66kKqZ/03Vf+0OMHaf6O7+yzY2Gtgo=;
 b=EC5vQ5JxNJFg9MbtrQu4IslUh5uUZa2wRS+o/EyoVwi6NxuY5s2EV9sz
 T3uQsZ4tOlYTS4atiM/L8WnHGqC0dtazaEll3HPGTCSVnKq0AW/ng+HTh
 JscMqgacd0897scIwmAHss3iJoo7qkXo1AdwRfACFAxZo7cQaNYusXeDa
 8oxAolYX9ZKhHoA6tPgljqkk2mhPVT/7jCk7bvh8BQBU0tGumSw5XmznD
 u+mkAcxpcDHGbUTxy94+tyZJdiNTxpSVOfWdldzU4cwpx0HH7NzendwUN
 4jvEjek6PM2srSWV+2cgMwy7vfF8tykG4zX67uMEhUL0Gu07nI3nfXwzR
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EC5vQ5Jx
Subject: [Intel-wired-lan] [PATCH 05/12] ice: split RSS stuff out of
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

Temporary rename of ice_virtchnl.c into ice_virtchnl_rss.c

In order to split ice_virtchnl.c in a way that makes it much easier
to still blame new file, we do it via multiple git steps.

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile                         | 2 +-
 .../ethernet/intel/ice/{ice_virtchnl.c => ice_virtchnl_rss.c}   | 0
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename drivers/net/ethernet/intel/ice/{ice_virtchnl.c => ice_virtchnl_rss.c} (100%)

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 46a21ed67066..b5247d370663 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -47,7 +47,7 @@ ice-y := ice_main.o	\
 	 ice_adapter.o
 ice-$(CONFIG_PCI_IOV) +=	\
 	ice_sriov.o		\
-	ice_virtchnl.o		\
+	ice_virtchnl_rss.o	\
 	ice_virtchnl_allowlist.o \
 	ice_virtchnl_fdir.o	\
 	ice_virtchnl_queues.o	\
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_rss.c
similarity index 100%
rename from drivers/net/ethernet/intel/ice/ice_virtchnl.c
rename to drivers/net/ethernet/intel/ice/ice_virtchnl_rss.c
-- 
2.39.3

