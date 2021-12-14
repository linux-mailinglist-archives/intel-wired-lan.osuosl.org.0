Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7E74739AB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Dec 2021 01:40:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DF25B40270;
	Tue, 14 Dec 2021 00:40:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cwK5NYNEMR2j; Tue, 14 Dec 2021 00:40:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9A17540128;
	Tue, 14 Dec 2021 00:40:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 486FA1BF9AC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 00:40:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 343CC60B41
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 00:40:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fgUh4s8_ESFn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Dec 2021 00:40:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5B0106077D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 00:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639442411; x=1670978411;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5/cjF2sgrOswGzjeVmoff0QHN1CsFuA/GB4LACTxm3A=;
 b=DEr+XENPLDY8hGDHBKmm19MHJ4WxjggCdnbCBkrdI4x4E2UkslhR8xRa
 txPITma2kyyCEXPoDcJSaovOo7wNlKQPR4q/9HsbsMfzOQ5sHvuhBD9Hx
 9pCPrxmK8QEuk5Ayho0G/C/AfQCnFy21S6wMrhDKPzPyK/xA0rKvyJev6
 nu4rDwVsJwH1Jlo76SwccgeF237npLfdH3Ah3ReW8paoc6Bdr2OVuYJwI
 GA1yH7daTQEIV0YuuRlvGDVKHGU3RFrNwA1fjsga80boic7TDgEXdcezl
 UaCbFxnllZIgymtpQIK7kzadL/Xa6SuBwNPW5NtNVDLhNjfg1qBhTl8Ls g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="225724414"
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="225724414"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 16:40:10 -0800
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="604047271"
Received: from vcostago-mobl3.jf.intel.com ([10.24.14.56])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 16:40:09 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Dec 2021 16:39:49 -0800
Message-Id: <20211214003949.666642-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <87wnk8qrt8.fsf@intel.com>
References: <87wnk8qrt8.fsf@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] igc: Do not enable
 crosstimestamping for i225-V models
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
Cc: netdev@vger.kernel.org, roots@gmx.de, regressions@leemhuis.info,
 greg@kroah.com, kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

It was reported that when PCIe PTM is enabled, some lockups could
be observed with some integrated i225-V models.

While the issue is investigated, we can disable crosstimestamp for
those models and see no loss of functionality, because those models
don't have any support for time synchronization.

Fixes: a90ec8483732 ("igc: Add support for PTP getcrosststamp()")
Link: https://lore.kernel.org/all/924175a188159f4e03bd69908a91e606b574139b.camel@gmx.de/
Reported-by: Stefan Dietrich <roots@gmx.de>
Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ptp.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 30568e3544cd..4f9245aa79a1 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -768,7 +768,20 @@ int igc_ptp_get_ts_config(struct net_device *netdev, struct ifreq *ifr)
  */
 static bool igc_is_crosststamp_supported(struct igc_adapter *adapter)
 {
-	return IS_ENABLED(CONFIG_X86_TSC) ? pcie_ptm_enabled(adapter->pdev) : false;
+	if (!IS_ENABLED(CONFIG_X86_TSC))
+		return false;
+
+	/* FIXME: it was noticed that enabling support for PCIe PTM in
+	 * some i225-V models could cause lockups when bringing the
+	 * interface up/down. There should be no downsides to
+	 * disabling crosstimestamping support for i225-V, as it
+	 * doesn't have any PTP support. That way we gain some time
+	 * while root causing the issue.
+	 */
+	if (adapter->pdev->device == IGC_DEV_ID_I225_V)
+		return false;
+
+	return pcie_ptm_enabled(adapter->pdev);
 }
 
 static struct system_counterval_t igc_device_tstamp_to_system(u64 tstamp)
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
