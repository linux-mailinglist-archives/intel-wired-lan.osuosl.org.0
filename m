Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CvirJdIcRWrW7AoAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 15:57:38 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F686EE6EF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 15:57:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=2iUc3MxX;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9999D410EF;
	Wed,  1 Jul 2026 13:57:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LjQkVK4xuXao; Wed,  1 Jul 2026 13:57:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E8990410E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782914256;
	bh=Iyk9farFukAIvKGcWCVjubpPNe4OtJIT0B3fPfHAcek=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2iUc3MxXQmexJPJeUEAFLRX00PmiWH63V++rqbJQZHwJvDwnW6VjHeufQl+O+ubwV
	 O4Ecb+FkI7+vqkwQhNH8Kde6QWMf/cRB/GPx+9S5cwMvmvmTjKF+uvoNGS6bUsJKxp
	 HWEt5nSjvHCd5lj01pDLYAdE0s/jWEQ5UW/kwSIbQGRQu4zXbXzpZLKoBrxoxwi8h7
	 FENe3Qc1bnzsy9Kkt4m+gWKC4KEN2OAL5Taf8jSqklZ30dsFWXVEej0vYQfuSj1VD+
	 fLrNCvz5jstlWFdW16/KqM2g/1FV3p7kd2A/MpIcrw5t13vgu/SMfm/QChMOt22CHM
	 +Tdlbdw7nZ/5Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E8990410E8;
	Wed,  1 Jul 2026 13:57:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A61F62D5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 13:57:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8C274410BE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 13:57:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1DygGNXTyDNF for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jul 2026 13:57:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=rppt@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 95ACF410E8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95ACF410E8
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 95ACF410E8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 13:57:33 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id 854D1601DE;
 Wed,  1 Jul 2026 13:57:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C36391F00A3A;
 Wed,  1 Jul 2026 13:57:28 +0000 (UTC)
From: "Mike Rapoport (Microsoft)" <rppt@kernel.org>
Date: Wed, 01 Jul 2026 16:57:19 +0300
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260701-b4-drivers-ethernet-v1-2-58776615db6e@kernel.org>
References: <20260701-b4-drivers-ethernet-v1-0-58776615db6e@kernel.org>
In-Reply-To: <20260701-b4-drivers-ethernet-v1-0-58776615db6e@kernel.org>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Manish Chopra <manishc@marvell.com>, 
 Paolo Abeni <pabeni@redhat.com>
Cc: Edward Cree <ecree.xilinx@gmail.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Sudarsana Kalluru <skalluru@marvell.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, Mike Rapoport <rppt@kernel.org>, 
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org, 
 linux-mm@kvack.org, linux-net-drivers@amd.com, netdev@vger.kernel.org
X-Mailer: b4 0.16-dev
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1782914252;
 bh=Iyk9farFukAIvKGcWCVjubpPNe4OtJIT0B3fPfHAcek=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc;
 b=U6BFggHOgvcT6jnqIHNAILvtyPmnjoDU8/r6T3eutVDjMHU2SA1lyN1sKB5RVvif0
 m5/DOfgFr5ToAzwy0tvh+L2syNb1eCPp4fVX2CEOl5pFvd7Va1IBXmNDfJArzGcwsD
 cgqB8KhDBRXsleLlXezhAYJyRrypFpCfgfgOCR4Njze1F6see57I7na2GJrbYCi6yU
 gmFPDQNvTkx//l84i4La94Ia4mbGOc6YoRrF3eUJfiaUyr6G/bIhDUzzxblI3XBSbs
 /z+9cBTKhHbOnnl7eqSY9UK/VFOFV1TeKquJBAepagX43HEjRzBlTcUTSvJIqxIK9n
 NKZ/yW8tupQ3w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20260515 header.b=U6BFggHO
Subject: [Intel-wired-lan] [PATCH 2/4] ice: use kzalloc() to allocate
 staging buffer for reading from GNSS
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	FREEMAIL_CC(0.00)[gmail.com,intel.com,marvell.com,kernel.org,lists.osuosl.org,vger.kernel.org,kvack.org,amd.com];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:manishc@marvell.com,m:pabeni@redhat.com,m:ecree.xilinx@gmail.com,m:przemyslaw.kitszel@intel.com,m:skalluru@marvell.com,m:anthony.l.nguyen@intel.com,m:rppt@kernel.org,m:linux-kernel@vger.kernel.org,m:linux-mm@kvack.org,m:linux-net-drivers@amd.com,m:netdev@vger.kernel.org,m:andrew@lunn.ch,m:ecreexilinx@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER(0.00)[rppt@kernel.org,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rppt@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 13F686EE6EF

ice_gnss_read() uses get_zeroed_page() to  allocate a staging buffer for
reading GNSS module data via I2C bus.

This buffer can be allocated with kmalloc() as there's nothing special
about it to go directly to the page allocator.

kmalloc() provides a better API that does not require ugly casts and
kfree() does not need to know the size of the freed object.

Performance difference between kmalloc() and __get_free_pages() is not
measurable as both allocators take an object/page from a per-CPU list for
fast path allocations.

For the slow path the performance is anyway determined by the amount of
reclaim involved rather than by what allocator is used.

Replace use of get_zeroed_page() with kzalloc() and free_page() with
kfree().

Link: https://lore.kernel.org/all/635405e4-9423-4a25-a6e7-e03c8ea0bcbe@redhat.com
Signed-off-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_gnss.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
index 8fd954f1ebd6..7d21c3417b0b 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.c
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
@@ -2,6 +2,7 @@
 /* Copyright (C) 2021-2022, Intel Corporation. */
 
 #include "ice.h"
+#include <linux/slab.h>
 #include "ice_lib.h"
 
 /**
@@ -124,7 +125,7 @@ static void ice_gnss_read(struct kthread_work *work)
 
 	data_len = min_t(typeof(data_len), data_len, PAGE_SIZE);
 
-	buf = (char *)get_zeroed_page(GFP_KERNEL);
+	buf = kzalloc(PAGE_SIZE, GFP_KERNEL);
 	if (!buf) {
 		err = -ENOMEM;
 		goto requeue;
@@ -151,7 +152,7 @@ static void ice_gnss_read(struct kthread_work *work)
 			 count, i);
 	delay = ICE_GNSS_TIMER_DELAY_TIME;
 free_buf:
-	free_page((unsigned long)buf);
+	kfree(buf);
 requeue:
 	kthread_queue_delayed_work(gnss->kworker, &gnss->read_work, delay);
 	if (err)

-- 
2.53.0

