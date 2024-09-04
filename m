Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A831996B779
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 11:54:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 651034039F;
	Wed,  4 Sep 2024 09:54:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bPcrjJdGaY9g; Wed,  4 Sep 2024 09:54:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8065B40284
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725443689;
	bh=WC8bbiXg+vH5J8X+E9ZX6z3IVLVFjx2K5KdOt4oVdyA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=tPrCxJoJiV41ReCWBKaHnE/R4L/OsGbO5FWYwfvlE+F4prsFF3E6Dvsl7UWCBDCqj
	 xBM9q329uMJ7gtp934qm5mByOGSTswvsBWlWdllHPUuwoNipvUGqXt/6meVIwHtMDh
	 sf2qaW/2X10BgG3w+dayhwB2Sz+GcyHlyCtelRBLz0h7AGzlQ+XWdgm15LEoRtBLgQ
	 E1Xr90Pi+RsOS/sJPKDOoDDzREA3T56gnumEJSaI2UXaAiVDEb8gLuVZ8U1HNf2Gtf
	 WVbcczruH/LDo7J+QWOeC5cefXcPua973qKuiwJJjutli9cH9kSF74VEhzHSdek0aQ
	 x8FSg3ulybsTw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8065B40284;
	Wed,  4 Sep 2024 09:54:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3AEF71BF577
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:54:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 27E8040340
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:54:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sKirvQdRp8jL for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 09:54:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E57A3402FF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E57A3402FF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E57A3402FF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:54:45 +0000 (UTC)
X-CSE-ConnectionGUID: cVJyxuq4TI6UPnL0J4jZlQ==
X-CSE-MsgGUID: 1BdqzyB8SP2ZO/inWEgWoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="34664473"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="34664473"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 02:54:44 -0700
X-CSE-ConnectionGUID: YwwdvXlxSQu8VWPsqwJ44Q==
X-CSE-MsgGUID: 2cjHcJE3RoOhPTSsDAyR3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="69618113"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 04 Sep 2024 02:54:41 -0700
Received: from mglak.igk.intel.com (mglak.igk.intel.com [10.237.112.146])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id D6B0427BD9;
 Wed,  4 Sep 2024 10:54:39 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed,  4 Sep 2024 11:54:17 +0200
Message-ID: <20240904095418.6426-1-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.45.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725443686; x=1756979686;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=A8jBBEU4JmlCS2iIUWpGULpUfjnILI4ZQFsy022HtJM=;
 b=jcksETBak4va8F8p4UjF2w/KKI8EDk1iigi2mbqA/Vn52peldVR8TUP5
 aJCs7F/N2TmVld2jcZio5OjmpQfD67cOLrldtftEule9pEzDIrcpOve/s
 ACYHG1kglFSWwnsbrktnHrj9HQdPtYh66jGi1N7azKc9RhKzsB4PYEEnq
 DI0Y5PSmnmwNw0m9xR8NFw/ozl5VNoQOfl6mnDNBHVSbsCE4KScQ6Y72G
 97n/w8R8yKQPEKuL4wDKGWaN4yvODhXCObKnOeR57KbIZoKzCQGwI233h
 GLRivO/pkB+8F4KpxbHW+7T99kbOjYXkw0yJwX/6gyDbFa5Id3FwV4wJv
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jcksETBa
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: deinit virtchnl transaction
 manager after vport and vectors
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
Cc: "Tantilov, Emil S" <emil.s.tantilov@intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Joshua Hay <joshua.a.hay@intel.com>, linux-kernel@vger.kernel.org,
 Igor Bagnucki <igor.bagnucki@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Alan Brady <alan.brady@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When the device is removed, idpf is supposed to make certain virtchnl
requests e.g. VIRTCHNL2_OP_DEALLOC_VECTORS and VIRTCHNL2_OP_DESTROY_VPORT.

However, this does not happen due to the referenced commit introducing
virtchnl transaction manager and placing its deinitialization before those
messages are sent. Then the sending is impossible due to no transactions
being available.

Lack of cleanup can lead to the FW becoming unresponsive from e.g.
unloading-loading the driver and creating-destroying VFs afterwards.

Move transaction manager deinitialization to after other virtchnl-related
cleanup is done.

Fixes: 34c21fa894a1 ("idpf: implement virtchnl transaction manager")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index a5f9b7a5effe..f18f490dafd8 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -3040,9 +3040,9 @@ void idpf_vc_core_deinit(struct idpf_adapter *adapter)
 	if (!test_bit(IDPF_VC_CORE_INIT, adapter->flags))
 		return;
 
-	idpf_vc_xn_shutdown(adapter->vcxn_mngr);
 	idpf_deinit_task(adapter);
 	idpf_intr_rel(adapter);
+	idpf_vc_xn_shutdown(adapter->vcxn_mngr);
 
 	cancel_delayed_work_sync(&adapter->serv_task);
 	cancel_delayed_work_sync(&adapter->mbx_task);
-- 
2.45.0

