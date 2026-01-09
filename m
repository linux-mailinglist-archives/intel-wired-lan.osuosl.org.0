Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 853F8D08592
	for <lists+intel-wired-lan@lfdr.de>; Fri, 09 Jan 2026 10:53:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 39A35606EA;
	Fri,  9 Jan 2026 09:53:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tm9UkwixURV6; Fri,  9 Jan 2026 09:53:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ACCF160E0E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767952419;
	bh=J0fV7Q6QwtvNo/R0F1+7rc9zpPvYCDlIAaoCm76Z1eA=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=UuKC4o+lm5+mm23yIYamlvu5atf8mya+/0Ag9NA1kQ62Q8zBaLf2DGJKiOtql43uu
	 7J4ToZE4FrvL4D7FlvNb6WLzZqZYbD+gwwqXmN+TInf01v7e1HJ1iuL4kBn/GvN/Qq
	 BeBqs9Vw+9sBkY0mAblAFYDP5bma31A3igcknyjbCB1ZwXr2W5PJGLHV/VVrDxzLYc
	 /i74LxuYgbp/brTcftZvO3ISUeDu3wncPaxzGIYsFEW+iWY6+KpZV24ghxdOSSResS
	 Z9jwd+EyCSsqDH9+ZtmpnYu+w0WKhIE/KeIfkIROgUWEMvYXm3J0NfDki5b7vHHHFW
	 c1Y9vJDctlKXw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id ACCF160E0E;
	Fri,  9 Jan 2026 09:53:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 63FEB131
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 09:53:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4B541401EA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 09:53:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iWz-LSYVYzbX for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jan 2026 09:53:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5BC404011A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5BC404011A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5BC404011A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 09:53:35 +0000 (UTC)
X-CSE-ConnectionGUID: X+jghJy1THmV2O+zUYl/IA==
X-CSE-MsgGUID: EQGuKdYmQQ6PU47zxxc2tw==
X-IronPort-AV: E=McAfee;i="6800,10657,11665"; a="80444232"
X-IronPort-AV: E=Sophos;i="6.21,212,1763452800"; d="scan'208";a="80444232"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2026 01:53:35 -0800
X-CSE-ConnectionGUID: wq7xPbJ/SriYC6E5Y/eZAA==
X-CSE-MsgGUID: TAQXvhJ3QIOgUXKXYCknJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,212,1763452800"; d="scan'208";a="226813256"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa002.fm.intel.com with ESMTP; 09 Jan 2026 01:53:33 -0800
Received: from gond.igk.intel.com (gond.igk.intel.com [10.123.220.52])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 86320278D4;
 Fri,  9 Jan 2026 09:53:32 +0000 (GMT)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Fri,  9 Jan 2026 09:53:39 +0100
Message-ID: <20260109085339.49839-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767952417; x=1799488417;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RB5uC0PLRMLIszW++ntMi95ZkbuVdAu3AgLwewqxGYU=;
 b=lft4QVq2hmY8wpe+pQ+A7IUdZDPDJt5fqbVyUSY+XNMdKnJIGScwWEsR
 EDVohp4ADzbOm7da4Gh4z8ljUCkupOSj8h2TgApThoTVH39qxrlS3Q5HT
 Km6fP7GQDo6X1iflkk9rvn6CcW+mTgHGk+kgr5O2Wwg4hQVDQb4Ek+3J+
 Vgd4NZ8pxuMqXo7YvHFbAz08wb0EHdc94KuxafQo6vlesJplDB2HTclYS
 kz7zDjXlVNb2kRjVD0HvDwJV+5uygyMxRsNulZ+SFGOZ0Izhms3M4DxOg
 4XHQWeski8ItU86KtPo9NyQ2U1GB8z4tJXkr7mHb6Bcpd3FbiHfivlQdU
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lft4QVq2
Subject: [Intel-wired-lan] [PATCH net] ice: fix setting RSS VSI hash for E830
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

ice_set_rss_hfunc() performs a VSI update, in which it sets hashing
function, leaving other VSI options unchanged. However, ::q_opt_flags is
mistakenly set to the value of another field, instead of its original
value, probably due to a typo. What happens next is hardware-dependent:

On E810, only the first bit is meaningful (see
ICE_AQ_VSI_Q_OPT_PE_FLTR_EN) and can potentially end up in a different
state than before VSI update.

On E830, some of the remaining bits are not reserved. Setting them
to some unrelated values can cause the firmware to reject the update
because of invalid settings, or worse - succeed.

Reproducer:
  sudo ethtool -X $PF1 equal 8

Output in dmesg:
  Failed to configure RSS hash for VSI 6, error -5

Fixes: 352e9bf23813 ("ice: enable symmetric-xor RSS for Toeplitz hash function")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index cf8ba5a85384..08268f1a03da 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -8038,7 +8038,7 @@ int ice_set_rss_hfunc(struct ice_vsi *vsi, u8 hfunc)
 	ctx->info.q_opt_rss |=
 		FIELD_PREP(ICE_AQ_VSI_Q_OPT_RSS_HASH_M, hfunc);
 	ctx->info.q_opt_tc = vsi->info.q_opt_tc;
-	ctx->info.q_opt_flags = vsi->info.q_opt_rss;
+	ctx->info.q_opt_flags = vsi->info.q_opt_flags;
 
 	err = ice_update_vsi(hw, vsi->idx, ctx, NULL);
 	if (err) {
-- 
2.49.0

