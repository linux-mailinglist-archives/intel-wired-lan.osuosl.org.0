Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D8A499397C
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Oct 2024 23:44:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5A9DD80E4A;
	Mon,  7 Oct 2024 21:44:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eicgvQC4Swmt; Mon,  7 Oct 2024 21:44:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 891B180E3E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728337459;
	bh=+VJ+rHUOc6D48fI7Y14jwhcm5+bKYDmrMSx1DsgHnAE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=0zpz8/iocXb5JKkczJGuCbUkmGPqIFv+5HOzala7p4Ygm6acXGPzdj7tD755JeprS
	 IjGo0E861px3A5cUPKV+8B1T6z6ft5SSVbTXdKfsLTPavKzl+kVmVRcW50XnVhep+X
	 zH6es31nBLdUEh/PzB1TWzIbwwaOZah9fDia+IspJ/2rkQ87sXFB01zJRWKtWxnOH/
	 LSU4qbkUN2a+7lT2vrc6Z3qS3p00SuHViqVPQrunWo/z3n41tLQsr2BveAz2Kiaos7
	 Cc/uhJsGK9hC3rmjZuEujxycnPXcMyw4sBhZlkGwA373ES25cAj1YPBAA43Yiq7Kq5
	 spKexxoC17Ifg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 891B180E3E;
	Mon,  7 Oct 2024 21:44:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AA9171BF400
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 21:44:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 982FC40261
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 21:44:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qdgfbRYD7HSg for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Oct 2024 21:44:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8BD23400FF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8BD23400FF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8BD23400FF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 21:44:16 +0000 (UTC)
X-CSE-ConnectionGUID: 3df4l+HgQFubTuGlULACsw==
X-CSE-MsgGUID: uoVmhW3xTH6Tb7Pty7vs2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="27675552"
X-IronPort-AV: E=Sophos;i="6.11,185,1725346800"; d="scan'208";a="27675552"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 14:44:16 -0700
X-CSE-ConnectionGUID: WCqZG9RUT22pMpTPiWMZ9Q==
X-CSE-MsgGUID: ODrwzj+6QFuEGQHRgKUb/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="75449453"
Received: from anguy11-upstream.jf.intel.com ([10.166.9.133])
 by orviesa010.jf.intel.com with ESMTP; 07 Oct 2024 14:44:16 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  7 Oct 2024 14:44:07 -0700
Message-ID: <20241007214408.501013-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728337456; x=1759873456;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SSGYF4xheaCEM3eFQW6XDhQ+RluuReYD8rH3Q6Rs114=;
 b=Syq8Pbjtg5CRl92x333aL5pTv/PYoYwEjJ+EbsqFS1shZVPMjLyoIcum
 1nr3GuD9AAJMdijHGN2zY3wbRqSTw3nIzUX2pDgybW82droim7roseP0U
 NMU+OW6R5jvXvD+UYBmjw5mGmu4dxq1ndsZ8BGi8ZF6Niip96DJWuK/DU
 jN+G1wjByq0HtDGsMN3nbxYBWay1Y+IbKbPDFySzt5Q/rxM8Q4XVb6fak
 B9GnLvl0ovg3x42CuTuOfDmX+YqxECP4IExevSdsze5KDhp7G5RWTJQKv
 sfanIfQoShVkLRxPUOWMVoclZ4nVd30yHUkEcbyguE507MUDIysbwcVAZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Syq8Pbjt
Subject: [Intel-wired-lan] [RESEND PATCH iwl-next] ice: Unbind the workqueue
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
Cc: przemyslaw.kitszel@intel.com, Frederic Weisbecker <frederic@kernel.org>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, larysa.zaremba@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Frederic Weisbecker <frederic@kernel.org>

The ice workqueue doesn't seem to rely on any CPU locality and should
therefore be able to run on any CPU. In practice this is already
happening through the unbound ice_service_timer that may fire anywhere
and queue the workqueue accordingly to any CPU.

Make this official so that the ice workqueue is only ever queued to
housekeeping CPUs on nohz_full.

Signed-off-by: Frederic Weisbecker <frederic@kernel.org>
---
Resend of: https://lore.kernel.org/all/20240922222420.18009-1-frederic@kernel.org/
- Added IWL and netdev lists

 drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 179631921611..b819e7f9d97d 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5904,7 +5904,7 @@ static int __init ice_module_init(void)
 
 	ice_adv_lnk_speed_maps_init();
 
-	ice_wq = alloc_workqueue("%s", 0, 0, KBUILD_MODNAME);
+	ice_wq = alloc_workqueue("%s", WQ_UNBOUND, 0, KBUILD_MODNAME);
 	if (!ice_wq) {
 		pr_err("Failed to create workqueue\n");
 		return status;
-- 
2.42.0

