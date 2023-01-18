Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4B9672336
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Jan 2023 17:29:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BFDAD60FCD;
	Wed, 18 Jan 2023 16:29:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BFDAD60FCD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674059349;
	bh=RLYYLk4c1PCeL/UYJ2RVcqnhRKqR5HsKgGO61e3aUyw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Reply-To:Cc:From;
	b=FjBIXaVt7cCeTpa2B0C7gd8KCNOQonKmrWJpPm2trf7ycWMNoMT6HzQj0L3WVVkh6
	 xGA7RJAX2EWYvOik9oTVMzh3odNl1Zf06cWwbpslImO86cPKxcBEzy3gZ1GZ6NBoKs
	 nT6wmS0uAsh/kPsLHEKXLIUEqlAGqljvOHsIwpJobscIr3UzGa7TfrLb604dfqtNK1
	 qAmmGDJ0DtuDP/nwBy0e5cePK25gr+eWyF9SEVou0aTRXJhlb8KsZNy46CajXvngFJ
	 xcTghaMbE23QXT+V6g/h1lAtJHmSYeNhrWaOR6qTQuwJOrQ8+4V2JslPGiHtW44znx
	 llgQM+6EDSAjA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JnILBfJksvWc; Wed, 18 Jan 2023 16:29:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD00960FD6;
	Wed, 18 Jan 2023 16:29:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD00960FD6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0F9FD1BF578
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 16:17:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EB25A8209A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 16:17:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB25A8209A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DFEXNkyB_r4D for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jan 2023 16:17:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 02E3982096
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 02E3982096
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 16:17:49 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-435-ZFMX-FN7OVCPNumI5uwNgg-1; Wed, 18 Jan 2023 11:17:47 -0500
X-MC-Unique: ZFMX-FN7OVCPNumI5uwNgg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
 [10.11.54.4])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AE2B91C05AB7;
 Wed, 18 Jan 2023 16:17:46 +0000 (UTC)
Received: from metal.redhat.com (ovpn-192-69.brq.redhat.com [10.40.192.69])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 531EE2026D4B;
 Wed, 18 Jan 2023 16:17:44 +0000 (UTC)
From: Daniel Vacek <neelx@redhat.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>
Date: Wed, 18 Jan 2023 17:17:26 +0100
Message-Id: <20230118161727.2485457-1-neelx@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mailman-Approved-At: Wed, 18 Jan 2023 16:28:51 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1674058668;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=pU6AC9cRWg3g9Q98YLxAbBqb6BOxub7aw+UutKP+hlQ=;
 b=ZdxE4kzXcMexKkw98+0NLM6Uw2HiMmUkdyArZVjFkfE8bjC2HUZEE6GQ/27a2gN35g+D9T
 ZaavnlG+5RlS+z5ft4N4ijKRnb+KxWB+Mm0VO3Nfh6UK9Sra1I/qphea80FHu3JTTy/SFa
 bP6ECyhtZybVD7MM69/9byDs0p4YR38=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=ZdxE4kzX
Subject: [Intel-wired-lan] [PATCH v2] ice/ptp: fix the PTP worker retrying
 indefinitely if the link went down
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
Reply-To: 20230117181533.2350335-1-neelx@redhat.com
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Daniel Vacek <neelx@redhat.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When the link goes down the ice_ptp_tx_tstamp() may loop re-trying to
process the packets till the 2 seconds timeout finally drops them.
In such a case it makes sense to just drop them right away.

Signed-off-by: Daniel Vacek <neelx@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index d63161d73eb16..cb776a7199839 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -680,6 +680,7 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
 	struct ice_pf *pf;
 	struct ice_hw *hw;
 	u64 tstamp_ready;
+	bool link_up;
 	int err;
 	u8 idx;
 
@@ -695,11 +696,14 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
 	if (err)
 		return false;
 
+	/* Drop packets if the link went down */
+	link_up = hw->port_info->phy.link_info.link_info & ICE_AQ_LINK_UP;
+
 	for_each_set_bit(idx, tx->in_use, tx->len) {
 		struct skb_shared_hwtstamps shhwtstamps = {};
 		u8 phy_idx = idx + tx->offset;
 		u64 raw_tstamp = 0, tstamp;
-		bool drop_ts = false;
+		bool drop_ts = !link_up;
 		struct sk_buff *skb;
 
 		/* Drop packets which have waited for more than 2 seconds */
@@ -728,7 +732,7 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
 		ice_trace(tx_tstamp_fw_req, tx->tstamps[idx].skb, idx);
 
 		err = ice_read_phy_tstamp(hw, tx->block, phy_idx, &raw_tstamp);
-		if (err)
+		if (err && !drop_ts)
 			continue;
 
 		ice_trace(tx_tstamp_fw_done, tx->tstamps[idx].skb, idx);
-- 
2.39.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
