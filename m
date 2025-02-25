Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 735C0A44126
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Feb 2025 14:44:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2206860F4A;
	Tue, 25 Feb 2025 13:44:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Hi04ZvF4Elr5; Tue, 25 Feb 2025 13:44:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6FDBC60F3F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740491090;
	bh=1FAma1oFBIVbZbuumTWQh+kW2F+G3u/vbq+gjawci+8=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=CZniQYfPM1aj8u7xKd5pvzY81M6632Pvynp2U4V6Accb07t73HmfJ8thU4R3jJBUt
	 gJA3PgdQtnCtHVnwm80RsRHhETWKElToe/F3p+BjoSJnVXOGjl19CAcaMOV05+8q70
	 iWQLaFFOX+5fx0nZLQran49fNBGYPdo6LTOqB7D9Llbri4hsTc+NFdTpLBOILMHfn+
	 wRHm1beEkErxFQEYgqHE8DpXGffcIQ1d5VXHrJSXmY9uURrC+tZ6FokEjw8CMz44FE
	 P5eDMhtSP2BFQqmOdctyhWRf2AKKjbMrDAeiWrpm9tKzFhIbh42+3mYg0dnJJn5wHW
	 j3UdHygXa64lQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6FDBC60F3F;
	Tue, 25 Feb 2025 13:44:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 835042DE0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 13:44:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 737FD60F31
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 13:44:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RkqVUHdYlIgX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Feb 2025 13:44:47 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9586C60F2F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9586C60F2F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9586C60F2F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 13:44:47 +0000 (UTC)
X-CSE-ConnectionGUID: OwGNKzeESDm0vIdnrACRWg==
X-CSE-MsgGUID: A1bvd1WjT5Gwids23YPouA==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="28885202"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="28885202"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 05:44:47 -0800
X-CSE-ConnectionGUID: dy/9jhOETQSYm/UiQnMMvg==
X-CSE-MsgGUID: GtQsOQzLRMmjt8DajDliNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="121003835"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by fmviesa005.fm.intel.com with ESMTP; 25 Feb 2025 05:44:45 -0800
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, pmenzel@molgen.mpg.de,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Tue, 25 Feb 2025 14:40:10 +0100
Message-ID: <20250225134008.516924-3-martyna.szapar-mudlaw@linux.intel.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740491087; x=1772027087;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=n+RxzZHRUBGKVEMeXI9IeFSvvMS6jsZYYzWjVTruOos=;
 b=jYZij0Syog6wtG2UPe83E8Ua0Es3I88OAnEMBGlAY1yFdND3SJpaWREG
 +QE2W+EhsyJz/m2sc+ZazDS21abC0X/jnuR1lGbbnKX+BdpsvvrVoajBi
 e7d81DukcKHsWh2dCz7jscRlAIGspngsNDVSbXJaKWeoPddOei3Ianic7
 n3FHgjVfDvwuO0FP9ZZj9Gc3v4AE7LEIOFUW6MRWjrcnvDPpYV1ZockCr
 Xz5kqO7oWqRV2V9R3Xg6S36beksyQDkI9GJL005lM4WusBA60Cxv3CWyX
 tmRqK8HyEhIrRlt1coKZ2KLh1IgLLdtwLY/3OIbTlK+XllyoJ+vRXNdI3
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jYZij0Sy
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix fwlog after driver
 reinit
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

Fix an issue when firmware logging stops after devlink reload action
driver_reinit or driver reset. After the driver reinits and resumes
operations, it must re-request event notifications from the firmware
as a part of its recofiguration.
Fix it by restoring fw logging when it was previously registered
before these events.

Restoring fw logging in these cases was faultily removed with new
debugfs fw logging implementation.

Failure to init fw logging is not a critical error so it is safely
ignored. Information log in case of failure are handled by
ice_fwlog_register function.

Fixes: 73671c3162c8 ("ice: enable FW logging")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
---

v2:
commit message extended, no changes in code

---
 drivers/net/ethernet/intel/ice/ice_main.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a03e1819e6d5..6d6873003bcb 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5151,6 +5151,13 @@ int ice_load(struct ice_pf *pf)
 
 	devl_assert_locked(priv_to_devlink(pf));
 
+	if (pf->hw.fwlog_cfg.options & ICE_FWLOG_OPTION_IS_REGISTERED) {
+		err = ice_fwlog_register(&pf->hw);
+		if (err)
+			pf->hw.fwlog_cfg.options &=
+				~ICE_FWLOG_OPTION_IS_REGISTERED;
+	}
+
 	vsi = ice_get_main_vsi(pf);
 
 	/* init channel list */
@@ -7701,6 +7708,13 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 		goto err_init_ctrlq;
 	}
 
+	if (hw->fwlog_cfg.options & ICE_FWLOG_OPTION_IS_REGISTERED) {
+		err = ice_fwlog_register(hw);
+		if (err)
+			hw->fwlog_cfg.options &=
+				~ICE_FWLOG_OPTION_IS_REGISTERED;
+	}
+
 	/* if DDP was previously loaded successfully */
 	if (!ice_is_safe_mode(pf)) {
 		/* reload the SW DB of filter tables */
-- 
2.47.0

