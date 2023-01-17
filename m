Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E0966E5DD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Jan 2023 19:20:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ABEBC4049A;
	Tue, 17 Jan 2023 18:20:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ABEBC4049A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673979640;
	bh=enF0R1JZNNBU/OHEif3MBUcztnnPJGd74R41LrXou9U=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=857RcQpYgdSdO4AO+/DTPlCvSOspzF2VdAbPigeEVB8dOHMfBTcjAkYTPGQtFcHYL
	 +5IMEAWgO9tuAIabqzbCUxB2ImgIcyshM+1AIJ/5GzkMwLj9tPVZTSVYp+dJMO8mbc
	 7pVjBEoSl83bQy4hz2tcDTpPUMNpDEHcVjPonbaTB41mNGLBsyPFQhgWDDHguQI7yZ
	 MoCSXEfQfYCxQlfldEYL2KMzxxllSLZJHssH0o7BBupiz9aIphqhV4iWpA8jywC6+9
	 DsgX1FBqTEb/PwlG7ncIJPN4cPw1JQR6l2o2JoVduyo8kOS5yO8K+oSMO2VlWyjqUW
	 fO3mMNWmOMmNQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9MPr3MICyU3P; Tue, 17 Jan 2023 18:20:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9CE8B40339;
	Tue, 17 Jan 2023 18:20:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9CE8B40339
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4430C1BF31F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 18:15:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1E3BE403C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 18:15:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1E3BE403C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qLw4C9RuPMi5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Jan 2023 18:15:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 64F1840339
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 64F1840339
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 18:15:44 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-498-E6arC8fUMxqGHhfEb1Ibsg-1; Tue, 17 Jan 2023 13:15:40 -0500
X-MC-Unique: E6arC8fUMxqGHhfEb1Ibsg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 267BC3C0F42F;
 Tue, 17 Jan 2023 18:15:40 +0000 (UTC)
Received: from metal.redhat.com (ovpn-192-69.brq.redhat.com [10.40.192.69])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A90931415108;
 Tue, 17 Jan 2023 18:15:37 +0000 (UTC)
From: Daniel Vacek <neelx@redhat.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>
Date: Tue, 17 Jan 2023 19:15:32 +0100
Message-Id: <20230117181533.2350335-1-neelx@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mailman-Approved-At: Tue, 17 Jan 2023 18:20:35 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1673979343;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=hoHrYOZi5AepvexSScpofKM1v72zsm9+pebsH147dPw=;
 b=MmGczuIeAzksmWzYtCXrHg0tyDNjPW14GYi7MMQ6we8kPowOhyuNu5MjUrEnHfq9jjAcUU
 RTqu6eJbw0PNwQ5iHGXMS/+PPPAm2GL8ScLyH7FftDKX0LsxNgXOGAMBC0yoRWl7LuX1CZ
 LlsNC+X9Y40C9SRaH9+gYZL+6a+wBeY=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=MmGczuIe
Subject: [Intel-wired-lan] [PATCH] ice/ptp: fix the PTP worker retrying
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Daniel Vacek <neelx@redhat.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When the link goes down the ice_ptp_tx_tstamp_work() may loop forever trying
to process the packets. In this case it makes sense to just drop them.

Signed-off-by: Daniel Vacek <neelx@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index d63161d73eb16..c313177ba6676 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -680,6 +680,7 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
 	struct ice_pf *pf;
 	struct ice_hw *hw;
 	u64 tstamp_ready;
+	bool link_up;
 	int err;
 	u8 idx;
 
@@ -695,6 +696,8 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
 	if (err)
 		return false;
 
+	link_up = hw->port_info->phy.link_info.link_info & ICE_AQ_LINK_UP;
+
 	for_each_set_bit(idx, tx->in_use, tx->len) {
 		struct skb_shared_hwtstamps shhwtstamps = {};
 		u8 phy_idx = idx + tx->offset;
@@ -702,6 +705,12 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
 		bool drop_ts = false;
 		struct sk_buff *skb;
 
+		/* Drop packets if the link went down */
+		if (!link_up) {
+			drop_ts = true;
+			goto skip_ts_read;
+		}
+
 		/* Drop packets which have waited for more than 2 seconds */
 		if (time_is_before_jiffies(tx->tstamps[idx].start + 2 * HZ)) {
 			drop_ts = true;
-- 
2.39.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
