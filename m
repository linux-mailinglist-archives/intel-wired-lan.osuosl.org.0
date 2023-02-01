Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED95F686868
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Feb 2023 15:36:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 73D30409FA;
	Wed,  1 Feb 2023 14:36:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 73D30409FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675262217;
	bh=kBjg7pCOBJGKstMad/nrFftvMdiLSD8pTlmL5oWNwjs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Ez1dvYqJtt2lfWRxBEAePFBY94l/XXSE82/ssIEM2GN5pGeyr3jFFYjvBBg3WT14O
	 QUuznr14EJ5LXCyhEvuA66F1TF7Irbxw1z1vjEReDG+vErRtbji1hHf7Xa5aWqkdew
	 rMX4BubwT4Ml+3H+RSIS/vuXIfnV5ftv6iD2Rq1NnCPxFoh8Pe9OeYDB+c/qYb8tei
	 SCdIoLIHo9q72vh1UNaz4KYej11xDjgmTjJbhCSnQn1KRsPvHK3nmam1V/WoJNhg15
	 2UC/knyUbvj796ouH1Tfl3YlHXR2q2DZGyhFsbLeNwefCXcbuyLamHLaJ28FNK69yG
	 g/jVgD9GK6g4Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fYMjdC1foMJm; Wed,  1 Feb 2023 14:36:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6606A409DE;
	Wed,  1 Feb 2023 14:36:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6606A409DE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 846991BF95C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 14:36:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5DD36409DE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 14:36:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5DD36409DE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nkeNjhKpveIP for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Feb 2023 14:36:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9AF1940391
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9AF1940391
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 14:36:50 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-570-TBZyxdzeN6-fHou-fiWZww-1; Wed, 01 Feb 2023 09:36:45 -0500
X-MC-Unique: TBZyxdzeN6-fHou-fiWZww-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
 [10.11.54.4])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4A78287A9E0;
 Wed,  1 Feb 2023 14:36:45 +0000 (UTC)
Received: from queeg.tpb.lab.eng.brq.redhat.com (unknown [10.43.135.229])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 902FF2026D68;
 Wed,  1 Feb 2023 14:36:44 +0000 (UTC)
From: Miroslav Lichvar <mlichvar@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  1 Feb 2023 15:36:43 +0100
Message-Id: <20230201143643.2624559-1-mlichvar@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1675262209;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=zVnofsFdJfa3uS+5wBNzqOt01D01SWaTjf8y/4KVgVg=;
 b=CgaCq7EMcFjlz7kSk3U45Fr/eDvfctWM84GrlTy8j02+j1qYRXtjeYC0JxZIeqWe7Hlw7x
 1DvV/cSIRPrr1T+gleAI739Muky2eHGINyCxemRTbkzxtRKMTZnf8sUYR3f1GVmWJ7iDXU
 TRGKehG7P9EtQAFq7QTPneYqd+vQWv0=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=CgaCq7EM
Subject: [Intel-wired-lan] [PATCH net-next] igb: Fix PPS input and output
 using 3rd and 4th SDP
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
Cc: Matt Corallo <ntp-lists@mattcorallo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix handling of the tsync interrupt to compare the pin number with
IGB_N_SDP instead of IGB_N_EXTTS/IGB_N_PEROUT and fix the indexing to
the perout array.

Fixes: cf99c1dd7b77 ("igb: move PEROUT and EXTTS isr logic to separate functions")
Reported-by: Matt Corallo <ntp-lists@mattcorallo.com>
Cc: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Miroslav Lichvar <mlichvar@redhat.com>
---
The fix of PPS output was not tested.

 drivers/net/ethernet/intel/igb/igb_main.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index c56b991fa610..04f06b396e92 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -6789,7 +6789,7 @@ static void igb_perout(struct igb_adapter *adapter, int tsintr_tt)
 	struct timespec64 ts;
 	u32 tsauxc;
 
-	if (pin < 0 || pin >= IGB_N_PEROUT)
+	if (pin < 0 || pin >= IGB_N_SDP)
 		return;
 
 	spin_lock(&adapter->tmreg_lock);
@@ -6797,7 +6797,7 @@ static void igb_perout(struct igb_adapter *adapter, int tsintr_tt)
 	if (hw->mac.type == e1000_82580 ||
 	    hw->mac.type == e1000_i354 ||
 	    hw->mac.type == e1000_i350) {
-		s64 ns = timespec64_to_ns(&adapter->perout[pin].period);
+		s64 ns = timespec64_to_ns(&adapter->perout[tsintr_tt].period);
 		u32 systiml, systimh, level_mask, level, rem;
 		u64 systim, now;
 
@@ -6845,8 +6845,8 @@ static void igb_perout(struct igb_adapter *adapter, int tsintr_tt)
 		ts.tv_nsec = (u32)systim;
 		ts.tv_sec  = ((u32)(systim >> 32)) & 0xFF;
 	} else {
-		ts = timespec64_add(adapter->perout[pin].start,
-				    adapter->perout[pin].period);
+		ts = timespec64_add(adapter->perout[tsintr_tt].start,
+				    adapter->perout[tsintr_tt].period);
 	}
 
 	/* u32 conversion of tv_sec is safe until y2106 */
@@ -6855,7 +6855,7 @@ static void igb_perout(struct igb_adapter *adapter, int tsintr_tt)
 	tsauxc = rd32(E1000_TSAUXC);
 	tsauxc |= TSAUXC_EN_TT0;
 	wr32(E1000_TSAUXC, tsauxc);
-	adapter->perout[pin].start = ts;
+	adapter->perout[tsintr_tt].start = ts;
 
 	spin_unlock(&adapter->tmreg_lock);
 }
@@ -6869,7 +6869,7 @@ static void igb_extts(struct igb_adapter *adapter, int tsintr_tt)
 	struct ptp_clock_event event;
 	struct timespec64 ts;
 
-	if (pin < 0 || pin >= IGB_N_EXTTS)
+	if (pin < 0 || pin >= IGB_N_SDP)
 		return;
 
 	if (hw->mac.type == e1000_82580 ||
-- 
2.39.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
