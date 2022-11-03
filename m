Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB95618B0D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 23:02:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E89F040BC0;
	Thu,  3 Nov 2022 22:02:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E89F040BC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667512964;
	bh=s3cbSKUis1cw72DKZYJfMYtCCnVfFxLMDR2DHwWVIjQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TVuX5ySHMRDZdolzhPBKQOKKM+CcR1hPoOhLkf17Zt4ozOhThlx35U7RFV4vIULka
	 7fp6q9vJzMHLkE6p2TIiWA0x5J7ytX3pfaRnKAW5InSw+iLE5EN2Ytq6MIcMBxv0B8
	 qZaeorWNgeS57tPGGu5EurvmQQItiM4JJO8cKPfGgX9D5EWgmnnVgZXD6e8bSnqoEJ
	 fGx4P76aRgTo9hKBKGD5dt7sDqIBi7PSzIVBFIMau/XG/RZSohtrjhEtHC1fFw5w3O
	 mqQCvch+Oo6OK9nIXMhf+Oz/bhj9B7UtjVg+C2ydOx2Q7/lbRwaiJ6dz9RbGG8XNML
	 DnAOZH15e6R2A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PKrSXaVuERyU; Thu,  3 Nov 2022 22:02:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D3FA040520;
	Thu,  3 Nov 2022 22:02:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D3FA040520
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 75DF91BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 22:02:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 379F381F6D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 22:02:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 379F381F6D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YMhACy_PlYah for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Nov 2022 22:02:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 27BC481F77
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 27BC481F77
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 22:02:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="307436989"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="307436989"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 15:01:59 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="777480286"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="777480286"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 15:01:59 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Thu,  3 Nov 2022 15:01:40 -0700
Message-Id: <20221103220145.1851114-11-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.0.83.gd420dda05763
In-Reply-To: <20221103220145.1851114-1-jacob.e.keller@intel.com>
References: <20221103220145.1851114-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667512920; x=1699048920;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qBPuaM5gFobxqj7IZ+rOBD5Hy4Q0tK1pHeTW8cSMzD4=;
 b=l/rl40cnhla+t6a0+2LBcmg3R54pXKB08ZEjjUqrQYAzGBuowiECff1u
 U370Y7XJOUSJs8BbZnH/KwEr3o0tOjFKasr6FpnKoahuE5u1NscoAPDEH
 9LYd2tRG+i4V/GCCHXilCCgWSzBQk5NBG3/Mxb4LzDs54EVt5daQpxFus
 g1iE2gKsFxzs1OoxAkg+zHeSCwQNG8CVepx9k9iQ8vx+5pIzqOnAd7znz
 rdTBhWCW2jTJqaD/U4D8+pr1io6VW4lMdIBvehgWHGWQR/TxqPToqWU35
 W8gZJTBoUFEitMj09GibCf14uE2fjfBrs2q/oWOuNkt+vPQR0BBTX35ZE
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l/rl40cn
Subject: [Intel-wired-lan] [PATCH net-next v2 10/15] ice: disable Tx
 timestamps while link is down
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Introduce a new link_down field for the Tx tracker which indicates whether
the link is down for a given port.

Use this bit to prevent any Tx timestamp requests from starting while link
is down. This ensures that we do not try to start new timestamp requests
until after link has been restored.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Changes since v1
* Moved the changes to the init and calibrating fields out of this patch and
  into patch 7 of the series.

 drivers/net/ethernet/intel/ice/ice_ptp.c | 11 ++++++++++-
 drivers/net/ethernet/intel/ice/ice_ptp.h |  2 ++
 2 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index d9581472a139..5d69fc633322 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -632,7 +632,7 @@ ice_ptp_is_tx_tracker_up(struct ice_ptp_tx *tx)
 {
 	lockdep_assert_held(&tx->lock);
 
-	return tx->init && !tx->calibrating;
+	return tx->init && !tx->calibrating && !tx->link_down;
 }
 
 /**
@@ -829,6 +829,8 @@ ice_ptp_alloc_tx_tracker(struct ice_ptp_tx *tx)
 
 	spin_lock(&tx->lock);
 	tx->init = 1;
+	tx->link_down = 0;
+	tx->calibrating = 0;
 	spin_unlock(&tx->lock);
 
 	return 0;
@@ -1395,6 +1397,13 @@ void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
 	/* Update cached link status for this port immediately */
 	ptp_port->link_up = linkup;
 
+	/* Set the link status of the Tx tracker. While link is down, all Tx
+	 * timestamp requests will be ignored.
+	 */
+	spin_lock(&ptp_port->tx.lock);
+	ptp_port->tx.link_down = !linkup;
+	spin_unlock(&ptp_port->tx.lock);
+
 	/* E810 devices do not need to reconfigure the PHY */
 	if (ice_is_e810(&pf->hw))
 		return;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 0bfafaaab6c7..75dcab8e1124 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -119,6 +119,7 @@ struct ice_tx_tstamp {
  * @init: if true, the tracker is initialized;
  * @calibrating: if true, the PHY is calibrating the Tx offset. During this
  *               window, timestamps are temporarily disabled.
+ * @link_down: if true, the link is down and timestamp requests are disabled
  * @verify_cached: if true, verify new timestamp differs from last read value
  */
 struct ice_ptp_tx {
@@ -130,6 +131,7 @@ struct ice_ptp_tx {
 	u8 len;
 	u8 init : 1;
 	u8 calibrating : 1;
+	u8 link_down : 1;
 	u8 verify_cached : 1;
 };
 
-- 
2.38.0.83.gd420dda05763

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
