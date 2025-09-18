Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 58878B85A05
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Sep 2025 17:33:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DDDB580A80;
	Thu, 18 Sep 2025 15:33:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9-ZPDBlAMa3C; Thu, 18 Sep 2025 15:33:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2D52380A81
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758209605;
	bh=6aQGR9NinAsnMFj4rMFnHoEwwGxXKQvHw7d7ZbYMd38=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qVdr83x5poHJ6dj8pIxR4gylslTct1lAXz30562aZXa39qYnZpkmbPGQYLI2BXWDQ
	 w5BS+192yCl1fxzkp2a/pkA7y+W2XkU549FuXNVuKG31+g3c5OCAEPigqc/3A3ASsn
	 qFTur8UG5mO6bp6iLKQfw3Hm3bzUbGDcQHYQj1KDSBB3hxx5k91wt5AhTY1Aic/dZS
	 SBOBfnnQEm6Mskx7VSmNNwBoRSX8aMU99dQif4C9z60DUaQk1u54upV8lrloFMfz96
	 fNsUlzi6p1ROaM0uiZfrz5ONskD1kjLEiQFHVQ+qs7ILG/ob+U/ICVp0UKj8nEvy9R
	 I8XEk8op3NV0Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2D52380A81;
	Thu, 18 Sep 2025 15:33:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8051F1E3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 11:06:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7D55B611D5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 11:06:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dfUkZujDFMk4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Sep 2025 11:06:54 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 18 Sep 2025 11:06:53 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8EDE361167
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8EDE361167
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=chwee.lin.choong@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8EDE361167
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 11:06:53 +0000 (UTC)
X-CSE-ConnectionGUID: YtglKuZ7TbO5rq0EE/9ZsA==
X-CSE-MsgGUID: cxEhjPapRLuwY0Wy6TsRpQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="64336084"
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="64336084"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 03:59:45 -0700
X-CSE-ConnectionGUID: TW+Q+WYtS32lblmpHmpoQw==
X-CSE-MsgGUID: ZVBunwrSQee44Q89CHxReQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="180627016"
Received: from p2dy149cchoong.png.intel.com ([10.107.243.50])
 by orviesa005.jf.intel.com with ESMTP; 18 Sep 2025 03:59:41 -0700
From: Chwee-Lin Choong <chwee.lin.choong@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Avi Shalev <avi.shalev@intel.com>,
 Song Yoong Siang <yoong.siang.song@intel.com>
Date: Fri, 19 Sep 2025 02:38:11 +0800
Message-ID: <20250918183811.31270-1-chwee.lin.choong@intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 18 Sep 2025 15:33:23 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758193614; x=1789729614;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=k7WjdxD1akUFMFsnjD+igZOq30uLF23C9JuX5ROO/Wk=;
 b=P7ljWbHrtE7ynS9UX3dOAFEK4w7cbvEDUx5FsUPIpW2mhcfNlXef804W
 I+omYG0D86qDNgV9ESGoFaEeDG3773lJEu9eLyvkkFL6rmBscoO9uO1zS
 WyXnulF3sluVfUS97paWcv8h0Hu6yGhmtnIG1mGukFGFnsRCAR9+D0uUB
 OvuGNHEK3jayXwvRFllA8p0zO6zEn/gy3is2wQqX3lajciPuLA+hpA7JI
 XgYODkhya1UZXo5CUlS9nYORlruMZDqoqZC3E+gcAbN58TjYVGWmLIWiE
 yhme4m6R0XeuY9jahdXENz56XomZ4XQVG/h2JE2xi7fjKE5uFoATm+3r2
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=P7ljWbHr
Subject: [Intel-wired-lan] [PATCH iwl-net v1] igc: fix race condition in TX
 timestamp read for register 0
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

The current HW bug workaround checks the TXTT_0 ready bit first,
then reads LOW -> HIGH -> LOW from register 0 to detect if a
timestamp was captured.

This sequence has a race: if a new timestamp is latched after
reading the TXTT mask but before the first LOW read, both old
and new timestamp match, causing the driver to drop a valid
timestamp.

Fix by reading the LOW register first, then the TXTT mask,
so a newly latched timestamp will always be detected.

This fix also prevents TX unit hangs observed under heavy
timestamping load.

Fixes: c789ad7cbebc ("igc: Work around HW bug causing missing timestamps")
Suggested-by: Avi Shalev <avi.shalev@intel.com>
Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
Signed-off-by: Chwee-Lin Choong <chwee.lin.choong@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ptp.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index b7b46d863bee..930486b02fc1 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -774,10 +774,17 @@ static void igc_ptp_tx_reg_to_stamp(struct igc_adapter *adapter,
 static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)
 {
 	struct igc_hw *hw = &adapter->hw;
+	u32 txstmpl_old;
 	u64 regval;
 	u32 mask;
 	int i;
 
+	/* Read the "low" register 0 first to establish a baseline value.
+	 * This avoids a race where a new timestamp could be latched
+	 * after checking the TXTT mask.
+	 */
+	txstmpl_old = rd32(IGC_TXSTMPL);
+
 	mask = rd32(IGC_TSYNCTXCTL) & IGC_TSYNCTXCTL_TXTT_ANY;
 	if (mask & IGC_TSYNCTXCTL_TXTT_0) {
 		regval = rd32(IGC_TXSTMPL);
@@ -801,9 +808,8 @@ static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)
 		 * timestamp was captured, we can read the "high"
 		 * register again.
 		 */
-		u32 txstmpl_old, txstmpl_new;
+		u32 txstmpl_new;
 
-		txstmpl_old = rd32(IGC_TXSTMPL);
 		rd32(IGC_TXSTMPH);
 		txstmpl_new = rd32(IGC_TXSTMPL);
 
-- 
2.42.0

