Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DBDA797516
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Sep 2023 17:46:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB76A83F48;
	Thu,  7 Sep 2023 15:46:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB76A83F48
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694101597;
	bh=dIfOA3MP/jxXwctxAZpypMpD2Qd9pDBqi8xc3xLGjro=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=psjCrf2cljlNGy74qpk4K3ccHiXLKpzFdfwdeo3Vg4HJK9rAVRNvYbY/7OQa0bYJ1
	 7+0vJnyhx2qQqcCgSHcuO26yMSFcI5ydWsxXPJlJY/D5jDYpbhKYe8nFYU1ury63UG
	 g+S1H57gKbLkCFnzPrEuw8ZlA3fYUjY5DnRKtISRQk3SZ3aG4msFGyn0SqP/l3G+TH
	 LOIhqbFFg/o7FMj5PujQasuf1LFLZMaNwEWlh/kVkSvxeTFu2BKwVQoteOjv61CZbe
	 gy3g8Y2BgJySShPykpFEugQsE8dH9SFnVvQ4UlFrCS4kWpqNhKtj8VTWTPom50A4FZ
	 elz0B/0EsMt7Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ihgNayo60DM8; Thu,  7 Sep 2023 15:46:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B64383A57;
	Thu,  7 Sep 2023 15:46:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B64383A57
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 15AF71BF308
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Sep 2023 15:05:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F0EAF4027F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Sep 2023 15:05:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F0EAF4027F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 35b5hGG5gjw7 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Sep 2023 15:05:27 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A703E401E1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Sep 2023 15:05:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A703E401E1
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-589-wmTAwmDAMhqIRDWar89JEQ-1; Thu, 07 Sep 2023 11:05:22 -0400
X-MC-Unique: wmTAwmDAMhqIRDWar89JEQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
 [10.11.54.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7DF6E93F421;
 Thu,  7 Sep 2023 15:02:55 +0000 (UTC)
Received: from swamp.redhat.com (unknown [10.45.225.164])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BBDDF6B595;
 Thu,  7 Sep 2023 15:02:53 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Thu,  7 Sep 2023 17:02:51 +0200
Message-ID: <20230907150251.224931-2-poros@redhat.com>
In-Reply-To: <20230907150251.224931-1-poros@redhat.com>
References: <20230907150251.224931-1-poros@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1694099126;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jWCCEttxvodDZdaM3WlXXA7tEL4YbcEdc+RVAa5fFGI=;
 b=L57XJpU1M1vuECeOV78nPz8V2quc8lYv2TBNBhESaQ7Ke9Sxt48q1vzLowXqVZxopTocW+
 sbEdZ0/2DbCsDnOf9y6wlUCOJ7Rj31BtHsJwvXhW3CP6a43/Pjp3+6ufzt78NYa+Vqk2HE
 hDspl3Ch15zvRPT2Y4Bcgc0KmyQfdTY=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=L57XJpU1
Subject: [Intel-wired-lan] [PATCH net v2 2/2] iavf: schedule a request
 immediately after add/delete vlan
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
Cc: ivecera@redhat.com, intel-wired-lan@lists.osuosl.org,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, horms@kernel.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When the iavf driver wants to reconfigure the VLAN filters
(iavf_add_vlan, iavf_del_vlan), it sets a flag in
aq_required:
  adapter->aq_required |= IAVF_FLAG_AQ_ADD_VLAN_FILTER;
or:
  adapter->aq_required |= IAVF_FLAG_AQ_DEL_VLAN_FILTER;

This is later processed by the watchdog_task, but it runs periodically
every 2 seconds, so it can be a long time before it processes the request.

In the worst case, the interface is unable to receive traffic for more
than 2 seconds for no objective reason.

Signed-off-by: Petr Oros <poros@redhat.com>
Co-developed-by: Michal Schmidt <mschmidt@redhat.com>
Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
Co-developed-by: Ivan Vecera <ivecera@redhat.com>
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
Reviewed-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 86d472dfdbc10c..d9f8ac1d57fd62 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -821,7 +821,7 @@ iavf_vlan_filter *iavf_add_vlan(struct iavf_adapter *adapter,
 		list_add_tail(&f->list, &adapter->vlan_filter_list);
 		f->state = IAVF_VLAN_ADD;
 		adapter->num_vlan_filters++;
-		adapter->aq_required |= IAVF_FLAG_AQ_ADD_VLAN_FILTER;
+		iavf_schedule_aq_request(adapter, IAVF_FLAG_AQ_ADD_VLAN_FILTER);
 	}
 
 clearout:
@@ -843,7 +843,7 @@ static void iavf_del_vlan(struct iavf_adapter *adapter, struct iavf_vlan vlan)
 	f = iavf_find_vlan(adapter, vlan);
 	if (f) {
 		f->state = IAVF_VLAN_REMOVE;
-		adapter->aq_required |= IAVF_FLAG_AQ_DEL_VLAN_FILTER;
+		iavf_schedule_aq_request(adapter, IAVF_FLAG_AQ_DEL_VLAN_FILTER);
 	}
 
 	spin_unlock_bh(&adapter->mac_vlan_list_lock);
-- 
2.42.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
