Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ADFEF674402
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 22:10:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8CAA4611B5;
	Thu, 19 Jan 2023 21:10:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8CAA4611B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674162638;
	bh=fs97i41oGLORnS/K2Y5eAEHtuRyVy3KXYROywiSg0WQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SuXlS0Y9vvEpTRBka6RhMSYKgCG2HbH4XPR/SJtCkQUwZxXDxS1OQ9k0V1XsyX/Xj
	 Juss8SeTnA/T4lJIiz0Y/s0IpIldUggSpkNzzOMs+S4+rO7Ly6sTCxkjqi4QozvWw7
	 FKFs+JWcBM4d/DHZX9CikaBpmzBmOEDouwTep4UysMd3Azof3YcDOGLbCHVopd+D7p
	 E9vvYQ3jUe5LWDIJLjdQUlD+cWR8SKb2osEt/F6vZyTQtXFyC6nX3qoea5VPX6sXrg
	 JOhpjOI7fa3vbsageZ0BDpXrSfb/unYejmvBHFyAJv1f7lXoxi7TfBSzHyZbns8MS3
	 uQrYkWnHf45QA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D0-Vcdz_YZog; Thu, 19 Jan 2023 21:10:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 948EC60DED;
	Thu, 19 Jan 2023 21:10:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 948EC60DED
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A2C2F1BF2BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 20:23:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7CCC460B20
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 20:23:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7CCC460B20
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3X8OexgmL-s0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jan 2023 20:23:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C851560AF4
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C851560AF4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 20:23:33 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-477-pXzxzMvAN1C6_QctN5KchA-1; Thu, 19 Jan 2023 15:23:29 -0500
X-MC-Unique: pXzxzMvAN1C6_QctN5KchA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A1DE138149C1;
 Thu, 19 Jan 2023 20:23:28 +0000 (UTC)
Received: from metal.redhat.com (ovpn-192-69.brq.redhat.com [10.40.192.69])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9336040C2064;
 Thu, 19 Jan 2023 20:23:26 +0000 (UTC)
From: Daniel Vacek <neelx@redhat.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>
Date: Thu, 19 Jan 2023 21:23:16 +0100
Message-Id: <20230119202317.2741092-1-neelx@redhat.com>
In-Reply-To: <20230117181533.2350335-1-neelx@redhat.com>
References: <20230117181533.2350335-1-neelx@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mailman-Approved-At: Thu, 19 Jan 2023 21:10:33 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1674159812;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=chrJCnGKSxZ+Gqnkqp1hMJQsXXkdPAS4UelZoHmwcGY=;
 b=fNdizY8JDN+O5ERC0Nr0nOcJ8LW8D4eVD2yaVszdR3tnC5Zb1BGA/yIjUHPj3WvSM3PKhN
 +arVR5hhUAROajqq9Ozm9gM+gAe9i4EeCBjHv/QPg+1l0s9YPfqnyvbAzoKIup78Y5ST7F
 kprMqmer5IqCHQB3j6DKkjsReVSdhJE=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=fNdizY8J
Subject: [Intel-wired-lan] [PATCH v3] ice/ptp: fix the PTP worker retrying
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

When the link goes down the ice_ptp_tx_tstamp() may loop re-trying to
process the packets till the 2 seconds timeout finally drops them.
In such a case it makes sense to just drop them right away.

Signed-off-by: Daniel Vacek <neelx@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index d63161d73eb16..3c39ae3ed2426 100644
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
+	link_up = ptp_port->link_up;
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
