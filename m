Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E10BC9317CA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jul 2024 17:40:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 51AFC404D1;
	Mon, 15 Jul 2024 15:40:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QY4bswJD1KIO; Mon, 15 Jul 2024 15:40:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 691A7405E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721058044;
	bh=oiBjniRJ1/LtKPOsn5s9dNfPXYzaF67nNwmCG70/qGg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0y+QHEIU09YxcqPQeDcVdDVWbqKoAtPbNbc85spJdFR/NaWZo/xBFA+rmaPvnkTai
	 A4B/qRtLMO7owdrI1B7eZqCM5Iai80tQt2zQWynvdBNVSK6LZn+pwsewt/+kom+9hm
	 E75wtzl9GBZVzetc1xqbvmnreqoS6CZGUFr6x1HWw/2bsYSN5Ooyku3oWWC14VkOmw
	 lDv9IocEj8BkhSP8LXvBLqyeBFR4Qt4qneZYE9CHotrliZ091Rcg8ZOkEFfthw6hMy
	 WxRybWokTWyKBmZ9prMdF227bFYsxkZIJzXFfwXnpqR1MdABSNMkVKRpCfdKeUoI3v
	 CJBEMqMf3mhOg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 691A7405E9;
	Mon, 15 Jul 2024 15:40:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9C87B1BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2024 15:40:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 95CCB404D2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2024 15:40:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZJOoFtF_aCGC for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jul 2024 15:40:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A81B740334
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A81B740334
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A81B740334
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2024 15:40:41 +0000 (UTC)
X-CSE-ConnectionGUID: hB7DZf7KQJKHFMExXP5wQA==
X-CSE-MsgGUID: KNvEnL2nTUGS2yhfyiSVQg==
X-IronPort-AV: E=McAfee;i="6700,10204,11134"; a="35987677"
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="35987677"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 08:40:41 -0700
X-CSE-ConnectionGUID: OceyW97EQq20oDSYpXRCfg==
X-CSE-MsgGUID: 8/FfvozaQGOhwrjpT9ciqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="49408483"
Received: from unknown (HELO localhost.igk.intel.com) ([10.211.13.141])
 by fmviesa006.fm.intel.com with ESMTP; 15 Jul 2024 08:40:40 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 15 Jul 2024 17:39:10 +0200
Message-ID: <20240715153911.53208-2-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240715153911.53208-1-sergey.temerkhanov@intel.com>
References: <20240715153911.53208-1-sergey.temerkhanov@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721058041; x=1752594041;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Xcby91CvHtdQucL3Gqpiq/obaC+y2zTJJ2JE4tqdZ6o=;
 b=St2rTv6c2JLLorAMKCpoiYWT+pb17xpAg/kmi3hxg8bBFTUP6GL5v4LL
 f7bxC05kQMGoWJ/g8qE+VrHsW8GZ43mobMeRzy+KTajIaBUWxtd9fC9Hr
 +KLWwPyC8Nl8kI6Yi9Yw1jj7SBVNE26CSek0xQjwkudppc+qf2u+XxeyR
 E4d2dPgX5c3eQPCxN1XRdlxzJg6lR2qZ9HolB4rS86l7P5NUcrCjFYYvh
 tTApY5eA4m5skdlmg9VMjTu3dxo+ReaRJsGXXy6QkX3DPCMe4oU1cpnwY
 O8nRKZxvdGPx+zF36uuQt6ThjB1h/0EZGbTiZm2LqxGzqVXB8qJ4JR9ni
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=St2rTv6c
Subject: [Intel-wired-lan] [PATCH iwl-net v2 1/2] ice: Fix reset handler
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

