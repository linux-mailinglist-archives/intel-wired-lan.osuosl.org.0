Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D6FF64FFF4
	for <lists+intel-wired-lan@lfdr.de>; Sun, 18 Dec 2022 17:07:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF92860706;
	Sun, 18 Dec 2022 16:07:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BF92860706
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671379660;
	bh=VjKbixySqJjgU4NBYHaXv0ZREihQJIxnCUoS7eLrqbc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7ngf8XH9P/lTkj0/xgXHrvfRlqfoju24pdvzWdiFtVp+TPEW18yilIuAchZpDEMF/
	 w+PCUIKX+7c7tOsA3ziWGqnysWNC7PBUNOtc50kdERNZRoQa8w1kE9GerBSiGdzc9E
	 /awc02p+SqsPbQ8v/3bL0wUN/81ohHMWtKJ2aHTxTWCbDu1YWoPhTY/sl8F8hsnAHg
	 C+0iVQRiJC0nlZIdPKlR9eIZ1ezXmdpY/ZZNQEwwGXyLU6MvYLOR+FzXPsSU1RgShG
	 cYy0Yl+C/tH1euRu0bZkywLOxCdhKjZO3wpLA39y/M5JFLEwptGWQAiT5EuqTsXtyL
	 70DWw2SGFrGzA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MpgJcxo5rhvy; Sun, 18 Dec 2022 16:07:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B0269606AA;
	Sun, 18 Dec 2022 16:07:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B0269606AA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5B3F71BF3A3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Dec 2022 16:07:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2B58B81421
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Dec 2022 16:07:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B58B81421
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z6FX3TaIwwO2 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 18 Dec 2022 16:07:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 600CC81420
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 600CC81420
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Dec 2022 16:07:33 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A278260DD5;
 Sun, 18 Dec 2022 16:07:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20F50C43392;
 Sun, 18 Dec 2022 16:07:31 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sun, 18 Dec 2022 11:01:39 -0500
Message-Id: <20221218160142.925394-82-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221218160142.925394-1-sashal@kernel.org>
References: <20221218160142.925394-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1671379652;
 bh=B6WGf5Mz8SgeST3xpYSXXRbwW/Ae6pRLshq8wjtPeVs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nhhmFe7qXdEkto1DevrmIZzhvsT1Ai/QpdMT+7P2e169zaRPQuttvulOVsTAPqeiT
 BTKh7Fzojgn30brKc7TwVcL/HJWuWTI7M0TsRsZMRJQ2zNiPY6DRuUMxjfsnWFI83M
 c20C0NpIfu3AA99Fx3eZqFMDk4QEjLGMpc9gY6xHuQFIKW1FMldHqWvOMLl/cUiQy2
 4aPMfZeggJZkzvnfC2Yw6ZWipTsfudrWOdPW3solCHuXyyyLYPjhYYeEpCXxgUqZm8
 e92E+Vif1rupmYj+AAoxo6auPItXAshsTmeBEAc8DioNH4xrnaJH9rOeDgw4rWyAnT
 zIcvJ/YqvQjUw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=nhhmFe7q
Subject: [Intel-wired-lan] [PATCH AUTOSEL 6.1 82/85] ice: synchronize the
 misc IRQ when tearing down Tx tracker
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
Cc: Sasha Levin <sashal@kernel.org>, intel-wired-lan@lists.osuosl.org,
 richardcochran@gmail.com, jesse.brandeburg@intel.com, edumazet@google.com,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

[ Upstream commit f0ae124019faaa03f8b4c3fbe52ae35ab3a8dbda ]

Since commit 1229b33973c7 ("ice: Add low latency Tx timestamp read") the
ice driver has used a threaded IRQ for handling Tx timestamps. This change
did not add a call to synchronize_irq during ice_ptp_release_tx_tracker.
Thus it is possible that an interrupt could occur just as the tracker is
being removed. This could lead to a use-after-free of the Tx tracker
structure data.

Fix this by calling sychronize_irq in ice_ptp_release_tx_tracker after
we've cleared the init flag. In addition, make sure that we re-check the
init flag at the end of ice_ptp_tx_tstamp before we exit ensuring that we
will stop polling for new timestamps once the tracker de-initialization has
begun.

Refactor the ts_handled variable into "more_timestamps" so that we can
simply directly assign this boolean instead of relying on an initialized
value of true. This makes the new combined check easier to read.

With this change, the ice_ptp_release_tx_tracker function will now wait for
the threaded interrupt to complete if it was executing while the init flag
was cleared.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 0f668468d141..53fec5bbe6e0 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -639,7 +639,7 @@ static u64 ice_ptp_extend_40b_ts(struct ice_pf *pf, u64 in_tstamp)
 static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
 {
 	struct ice_ptp_port *ptp_port;
-	bool ts_handled = true;
+	bool more_timestamps;
 	struct ice_pf *pf;
 	u8 idx;
 
@@ -701,11 +701,10 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
 	 * poll for remaining timestamps.
 	 */
 	spin_lock(&tx->lock);
-	if (!bitmap_empty(tx->in_use, tx->len))
-		ts_handled = false;
+	more_timestamps = tx->init && !bitmap_empty(tx->in_use, tx->len);
 	spin_unlock(&tx->lock);
 
-	return ts_handled;
+	return !more_timestamps;
 }
 
 /**
@@ -776,6 +775,9 @@ ice_ptp_release_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
 {
 	tx->init = 0;
 
+	/* wait for potentially outstanding interrupt to complete */
+	synchronize_irq(pf->msix_entries[pf->oicr_idx].vector);
+
 	ice_ptp_flush_tx_tracker(pf, tx);
 
 	kfree(tx->tstamps);
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
