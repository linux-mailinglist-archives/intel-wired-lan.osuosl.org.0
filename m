Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B279E3912
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Dec 2024 12:43:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2DB304070B;
	Wed,  4 Dec 2024 11:43:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v9r7aJILRhW3; Wed,  4 Dec 2024 11:43:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE9474070D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733312611;
	bh=nWlMtLT9W/JE0sDV4ETleqSg3lVaVJyih/3HfM+FmPw=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=mdrqQ7I+kGgcy6jYzk00bwJrTwcGsWev/eUxqENUnyIYBUKk9pUbBTqCJhWw6VCFu
	 UhdlK65WCL1D6m0fX/2NnKKy3u8UEY2rPgV41m3ELJZWvqU1oTcTyBtVDNmJqyA4rF
	 gCs2yS00uGUxNOJEDBgqUjb2fBchwmRYB0nP5lYbKIyDiJvzzGmECPi/SSKrL2zT2N
	 zc6QzDCzsOT67q3wF0dDtZVZNkG6WYJ99k1TS4RzswReVzxGFCGJiNHH61r58WYZlM
	 7pWOS3NVs4Dx5XaqzJdoOQ2oxHszeX1SgUR4tOaAZSaD3wTQdEkb3pa6NNIboa7JMd
	 Iqn8NUXQRDcvA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AE9474070D;
	Wed,  4 Dec 2024 11:43:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id AB4B41DD1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 11:43:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9940E40707
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 11:43:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kc7LtMvYHsqA for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Dec 2024 11:43:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=wander@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 686A740706
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 686A740706
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 686A740706
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 11:43:26 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-118-i9Q0F52zP_eqrXOK9_WW0w-1; Wed,
 04 Dec 2024 06:43:22 -0500
X-MC-Unique: i9Q0F52zP_eqrXOK9_WW0w-1
X-Mimecast-MFC-AGG-ID: i9Q0F52zP_eqrXOK9_WW0w
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id BD6861955F39; Wed,  4 Dec 2024 11:43:19 +0000 (UTC)
Received: from wcosta-thinkpadt14gen4.rmtbr.csb (unknown [10.22.88.52])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 318A53000197; Wed,  4 Dec 2024 11:43:12 +0000 (UTC)
From: Wander Lairson Costa <wander@redhat.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Clark Williams <clrkwllms@kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>, Jeff Garzik <jgarzik@redhat.com>,
 Auke Kok <auke-jan.h.kok@intel.com>,
 intel-wired-lan@lists.osuosl.org (moderated list:INTEL ETHERNET DRIVERS),
 netdev@vger.kernel.org (open list:NETWORKING DRIVERS),
 linux-kernel@vger.kernel.org (open list),
 linux-rt-devel@lists.linux.dev (open list:Real-time Linux
 (PREEMPT_RT):Keyword:PREEMPT_RT)
Cc: Wander Lairson Costa <wander@redhat.com>
Date: Wed,  4 Dec 2024 08:42:23 -0300
Message-ID: <20241204114229.21452-1-wander@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1733312605;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=nWlMtLT9W/JE0sDV4ETleqSg3lVaVJyih/3HfM+FmPw=;
 b=IsfxExCES8pJZNShP79LD9fOk2H/PjV9AYX+nCPjbRdXUCEcB/c7bdKYXKki5qbN0d5GKP
 JySR4tlLB/x4P9x7o37QCCkLkRdFDnvKaAN18pfEDsTiijI3FLY3qx8+4HD8Oc9+h5IRKQ
 t9IQk4JgKtwgQyaTnoO7EYonwJTVZlA=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=IsfxExCE
Subject: [Intel-wired-lan] [PATCH iwl-net 0/4] igb: fix igb_msix_other()
 handling for PREEMPT_RT
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

This is the second attempt at fixing the behavior of igb_msix_other()
for PREEMPT_RT. The previous attempt [1] was reverted [2] following
concerns raised by Sebastian [3].

The initial approach proposed converting vfs_lock to a raw_spinlock,
a minor change intended to make it safe. However, it became evident
that igb_rcv_msg_from_vf() invokes kcalloc with GFP_ATOMIC,
which is unsafe in interrupt context on PREEMPT_RT systems.

To address this, the solution involves splitting igb_msg_task()
into two parts:

    * One part invoked from the IRQ context.
    * Another part called from the threaded interrupt handler.

To accommodate this, vfs_lock has been restructured into a double
lock: a spinlock_t and a raw_spinlock_t. In the revised design:

    * igb_disable_sriov() locks both spinlocks.
    * Each part of igb_msg_task() locks the appropriate spinlock for
    its execution context.

It is worth noting that the double lock mechanism is only active under
PREEMPT_RT. For non-PREEMPT_RT builds, the additional raw_spinlock_t
field is ommited.

If the extra raw_spinlock_t field can be tolerated under
!PREEMPT_RT (even though it remains unused), we can eliminate the
need for #ifdefs and simplify the code structure.

I will be on vacation from December 7th to Christmas and will address
review comments upon my return.

If possible, I kindly request the Intel team to perform smoke tests
on both stock and realtime kernels to catch any potential issues with
this patch series.

Cheers,
Wander

[1] https://lore.kernel.org/all/20240920185918.616302-2-wander@redhat.com/
[2] https://lore.kernel.org/all/20241104124050.22290-1-wander@redhat.com/
[3] https://lore.kernel.org/all/20241104110708.gFyxRFlC@linutronix.de/


Wander Lairson Costa (4):
  igb: narrow scope of vfs_lock in SR-IOV cleanup
  igb: introduce raw vfs_lock to igb_adapter
  igb: split igb_msg_task()
  igb: fix igb_msix_other() handling for PREEMPT_RT

 drivers/net/ethernet/intel/igb/igb.h      |   4 +
 drivers/net/ethernet/intel/igb/igb_main.c | 160 +++++++++++++++++++---
 2 files changed, 148 insertions(+), 16 deletions(-)

-- 
2.47.0

