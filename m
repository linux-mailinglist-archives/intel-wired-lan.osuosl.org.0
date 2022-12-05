Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 661766434E6
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Dec 2022 20:53:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0758B60F6B;
	Mon,  5 Dec 2022 19:53:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0758B60F6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670270030;
	bh=5i4Jz8w7csKXxcRc+ZqU1eLRjQqa/jFHzkSlqbyL7qY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1oltMJdOaj/j1q4clZ/i3zsgyjHu4XGVcgkTXl/ahLPxjWHKnXp9w6yG29wk3H8RQ
	 EG3+wrQbLT837Bzz/DW0QFLoTrkk77SxcJ7xC3CkW+JEJ+p1d9D2T9LabVSdHuqY6j
	 dbwSpvbuLfP2DXQthMf6LRiG9ZCYZqtAT2obvMpZtBw5XhBVdnpLsF+Ms0GKmbymRO
	 FgkafD4ZPGvTIlz/tVP4wIQ7KMTMBdQuviRSg9WtiPmk2G8ErT46YDkCMIRUWgwBLT
	 M5Fwu4s20+c16b6FHzJRMfmFvMYRpROR3wHtD/IqBwL+gVX8D/Gc3oCetG2Lr27lgp
	 J7E7OqB883cXw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZTGYapMvPM7h; Mon,  5 Dec 2022 19:53:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BD7D60E85;
	Mon,  5 Dec 2022 19:53:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BD7D60E85
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4B74F1BF865
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 19:53:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2D74D818CA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 19:53:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2D74D818CA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XPMHZ4pBtvxm for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Dec 2022 19:53:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A364817B5
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6A364817B5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 19:53:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="317592387"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="317592387"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 11:53:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="709379312"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="709379312"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.7])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 11:53:02 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Mon,  5 Dec 2022 11:52:48 -0800
Message-Id: <20221205195253.2475492-11-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.1.420.g319605f8f00e
In-Reply-To: <20221205195253.2475492-1-jacob.e.keller@intel.com>
References: <20221205195253.2475492-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670269984; x=1701805984;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1mudzVjg/4EzlMk1lT5VJCnhpsN6ku+bSHxpDgyf/QY=;
 b=Dd/sfLSBoquEYxr7tqfbMfzJYfM+91h3r+JHMQzMxznWn/lnF+3mDdwY
 Qld4dd2wHoeraPQ1s2QFc8M3rg9xWg4xPZ8P/SPUowYyTOuRH6YDvNVEN
 OtPZwXheWLz6QSEpv9SccZDu1aqlqSKcdCEwLIufJ1O1l4ILB3FMgQ+uU
 YPQvrg3tB1Ok03rjDDk8My/BV9rwjRLzyM7sRPp1L8kj+7Fz6G79pA68s
 sRkPjZTNjaeR4s45lEfkXNT2ZZvde+BItmavHiYPx8GHuA/cZonBnwYia
 SCZOZu45+75oK8RGS0UxzVndPeRv1OaTRR+pCa9286AuW1h+e81QkIWmi
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Dd/sfLSB
Subject: [Intel-wired-lan] [PATCH net-next v3 10/15] ice: disable Tx
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
Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
Changes since v2:
* Context changes to account for change in ice_ptp_alloc_tx_tracker now
  initializing spin lock last.

 drivers/net/ethernet/intel/ice/ice_ptp.c | 11 ++++++++++-
 drivers/net/ethernet/intel/ice/ice_ptp.h |  2 ++
 2 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 481492d84e0e..dffcd50bac3f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -613,7 +613,7 @@ ice_ptp_is_tx_tracker_up(struct ice_ptp_tx *tx)
 {
 	lockdep_assert_held(&tx->lock);
 
-	return tx->init && !tx->calibrating;
+	return tx->init && !tx->calibrating && !tx->link_down;
 }
 
 /**
@@ -806,6 +806,8 @@ ice_ptp_alloc_tx_tracker(struct ice_ptp_tx *tx)
 	}
 
 	tx->init = 1;
+	tx->link_down = 0;
+	tx->calibrating = 0;
 
 	spin_lock_init(&tx->lock);
 
@@ -1396,6 +1398,13 @@ void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
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
2.38.1.420.g319605f8f00e

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
