Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 54508A7853D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Apr 2025 01:36:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 866226126D;
	Tue,  1 Apr 2025 23:36:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VfUv3CsE0o2Z; Tue,  1 Apr 2025 23:36:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 06D3E61086
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743550572;
	bh=aodx46LzP61XtfMAd/n7/yLSH8MgXAkLQIw5B25ykZ0=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BbP+QeeZcDmsqZ7sTjdVjGKVCCfO97xrZ/Myt99my5oBO9aloOV7byXa5+IkV1/7n
	 L0RfGa1264iAkH/QZTTZBaYBdWAXUr8KLKPcjvWSn/Vl6vFHxwxDSmueHfwDCG2DP9
	 yleF3P1/xFqxPCyoGdSU6S9pHdgbVNKKGv4TkJ+LkC6wytXtVN8MhU8A80xt/gLJBJ
	 SSG1U5sGc3vludPpDzU9tloWT042v+RX7tj11zJQWcz2aUqkKp1rtT0UpJMEKlNnJ1
	 AqEG28ur3Tbr45F+m1i2pxepSIP6PZhf6pI3FmaQxuAz7Hw57qmYUZ5TeO0EgsW3P5
	 CLWgPkVv2Ydzg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 06D3E61086;
	Tue,  1 Apr 2025 23:36:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C473417E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Apr 2025 23:36:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4B1E04134D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Apr 2025 23:36:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZlcUSjQniW_J for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Apr 2025 23:36:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A6F8441348
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A6F8441348
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A6F8441348
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Apr 2025 23:36:07 +0000 (UTC)
X-CSE-ConnectionGUID: dhfxa/dxSuG0TRivjMnboQ==
X-CSE-MsgGUID: QGH6AL5wQNK9rTjCZ2qAeQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="55527610"
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="55527610"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 16:36:06 -0700
X-CSE-ConnectionGUID: Jm9bToE/RSCCtHL7weBXKg==
X-CSE-MsgGUID: I/vHSDDzRFuPGFhbX0mcFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="127354854"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 16:36:06 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Tue, 01 Apr 2025 16:35:32 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250401-jk-igc-ptm-fixes-v4-v4-4-c0efb82bbf85@intel.com>
References: <20250401-jk-igc-ptm-fixes-v4-v4-0-c0efb82bbf85@intel.com>
In-Reply-To: <20250401-jk-igc-ptm-fixes-v4-v4-0-c0efb82bbf85@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>
Cc: david.zage@intel.com, vinicius.gomes@intel.com, 
 rodrigo.cadore@l-acoustics.com, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>, 
 Christopher S M Hall <christopher.s.hall@intel.com>, 
 Corinna Vinschen <vinschen@redhat.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743550567; x=1775086567;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=r1stb9zG3U0cmql7UEZ+eh55cn6cQhuUE/KePWRVdk4=;
 b=Hn9e8ZtgBR3d6G3g/xIT4VDYpSaz2og0lJ1csX1LcFCPLfJBwEjYs1l7
 Jt1hxoo8uVuMlxORppNOmPgA7DWI2iFErBGlKVjtWbs60itfrn0mF+mET
 /hscdwMfd2hIgfKKath8jzDYDjLWXUPNhCSciWtJ+BZGWAnvE7NeTNqsX
 lyEhH+wh4K7s7ha+pgtL4meYHrzCPpknahuf1XdHmhOHB9oqu1sNYNpku
 Z/XbygaU94cQqj96EFrV/gIYL8IIJa5PiAqwDO0PJQPtf+LQratr+6uQk
 s9rGLTS4tIsazKcvv83rjbAIxsrX/0NFv/s/pgLOwn66aFXGkGENP3NK6
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Hn9e8Ztg
Subject: [Intel-wired-lan] [PATCH iwl-net v4 4/6] igc: handle the
 IGC_PTP_ENABLED flag correctly
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

From: Christopher S M Hall <christopher.s.hall@intel.com>

All functions in igc_ptp.c called from igc_main.c should check the
IGC_PTP_ENABLED flag. Adding check for this flag to stop and reset
functions.

Fixes: 5f2958052c58 ("igc: Add basic skeleton for PTP")
Signed-off-by: Christopher S M Hall <christopher.s.hall@intel.com>
Reviewed-by: Corinna Vinschen <vinschen@redhat.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ptp.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 516abe7405deee94866c22ccc3d101db1a21dbb6..343205bffc355022306bcb1db35109e2113bb430 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -1244,8 +1244,12 @@ void igc_ptp_suspend(struct igc_adapter *adapter)
  **/
 void igc_ptp_stop(struct igc_adapter *adapter)
 {
+	if (!(adapter->ptp_flags & IGC_PTP_ENABLED))
+		return;
+
 	igc_ptp_suspend(adapter);
 
+	adapter->ptp_flags &= ~IGC_PTP_ENABLED;
 	if (adapter->ptp_clock) {
 		ptp_clock_unregister(adapter->ptp_clock);
 		netdev_info(adapter->netdev, "PHC removed\n");
@@ -1266,6 +1270,9 @@ void igc_ptp_reset(struct igc_adapter *adapter)
 	unsigned long flags;
 	u32 timadj;
 
+	if (!(adapter->ptp_flags & IGC_PTP_ENABLED))
+		return;
+
 	/* reset the tstamp_config */
 	igc_ptp_set_timestamp_mode(adapter, &adapter->tstamp_config);
 

-- 
2.48.1.397.gec9d649cc640

