Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1143A93129A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jul 2024 12:50:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B2887404D5;
	Mon, 15 Jul 2024 10:50:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qrFhWVb6lBQb; Mon, 15 Jul 2024 10:50:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD3CD40536
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721040626;
	bh=oiBjniRJ1/LtKPOsn5s9dNfPXYzaF67nNwmCG70/qGg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Xkugd255d60anYEbw9uhhAD+YYcq7tyz0aG7Xldx2zol3XmIExhZ24ss0chUG666I
	 LPbrxaaLPwHSDkYY2k+4BH5nXm9YImyS1A5e8QcLu0mPSjEm0AuZR7UxtJ85qm5aN3
	 z3oM5m/me5iAkY/HwgdgKc0SSnwo2/nzK1T/k7n4LmeBLltUlk8Ns/Mfr6+7cJpyAV
	 sNbYytfZUmw/DT0PnREvz93Mb9epzNijAmfipWR5LKqixvGy39oBsjT4RjTo9HoRmu
	 5Og4OgHx41wnuZnnKwMooctnolJctzRZA/DB6+LcodtgLxoqy9wiy3kTNzziia37yC
	 R572AhMXhMiVg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD3CD40536;
	Mon, 15 Jul 2024 10:50:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 037A71BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2024 10:50:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E0308404D5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2024 10:50:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f4m9uu4ynt24 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jul 2024 10:50:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0ABDA40442
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0ABDA40442
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0ABDA40442
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2024 10:50:22 +0000 (UTC)
X-CSE-ConnectionGUID: JXGqvJFgQlucox/i9NDK9Q==
X-CSE-MsgGUID: RyM6JwDZSDipLFvFQUnkNg==
X-IronPort-AV: E=McAfee;i="6700,10204,11133"; a="18609011"
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="18609011"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 03:50:20 -0700
X-CSE-ConnectionGUID: 2t9QlrDnQDquXCaCLEbrVg==
X-CSE-MsgGUID: r6XHH3dJT/m22GOXVyrZ5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="49545153"
Received: from unknown (HELO localhost.igk.intel.com) ([10.211.13.141])
 by fmviesa009.fm.intel.com with ESMTP; 15 Jul 2024 03:50:19 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 15 Jul 2024 12:48:44 +0200
Message-ID: <20240715104845.51419-2-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240715104845.51419-1-sergey.temerkhanov@intel.com>
References: <20240715104845.51419-1-sergey.temerkhanov@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721040623; x=1752576623;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Xcby91CvHtdQucL3Gqpiq/obaC+y2zTJJ2JE4tqdZ6o=;
 b=KwcEswmdsBx+3ILdVax1IUFd6Tnt3HZXzGHk1iMnlJUvoCZXa5fSdHJW
 KgaGw2YAQHXglY7rBP2xCZsG/0QZxBwulb/Gnyos8mrV4GL7Rk8lSmvxd
 QMrtO8Rc+8vJWCnT8EgGhjKTA5esSlTa5/RIdQlOL3vSwhvf6OHFH4Bg5
 Ro3ct0Yayl7IL4r/tFB+WLoBw+JgxYTR4Lk/G6q6I8K00GMKc/2WhakcC
 LI5zqIkGvV1a2BcThTzSJdaaPAnex99NbHj48Ssxx9/eJpPlPhmOTTy9H
 qJWFL2uHNYW1DXg3Tsj90+OJpAgc4thN2J9PTiGelLZyOfrHg2bqHDAWd
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KwcEswmd
Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/2] ice: Fix reset handler
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Grzegorz Nitka <grzegorz.nitka@intel.com>

Synchronize OICR IRQ when preparing for reset to avoid potential
race conditions between the reset procedure and OICR

Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Fixes: 4aad5335969f ("ice: add individual interrupt allocation")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index e2990993b16f..3405fe749b25 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -560,6 +560,8 @@ ice_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 	if (test_bit(ICE_PREPARED_FOR_RESET, pf->state))
 		return;
 
+	synchronize_irq(pf->oicr_irq.virq);
+
 	ice_unplug_aux_dev(pf);
 
 	/* Notify VFs of impending reset */
-- 
2.43.0

