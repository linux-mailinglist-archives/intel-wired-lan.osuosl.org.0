Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9DF622EEC
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Nov 2022 16:20:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B771960E2C;
	Wed,  9 Nov 2022 15:20:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B771960E2C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668007213;
	bh=3UUYskD3S9eA5sLNCSJpa9MPkkAEX6TFakCh7K+6EZM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=2Mr/cyY+juRG6n7koPBqP68G/3EwWlErIWkBT8ye5PlrflAZf2hMOkYYrVZZkjAKQ
	 k64a8xy23MHIG+w70r+qd4MAHSL8A83dTlqOBQgYv/3QePqOCIwABiImDskXmnyJOp
	 Io36tFR9dnEE86exAedxHtOJtyLk7uK++K0YiVYhdILz2JNK5pM9XGi72GrHZZlQSa
	 MW3NdEOGjGH+wMgb6GXIgf5V8k80vE6HOFISDWi6ywd0FV+qqI+Nn7LeCBFz6IkdCY
	 2fkxbaS4D0qY6kHhAjU3hDbDsHVfYoNYzKpIEMXPYs16dOisN23/s9Atxqszhb9ZSh
	 85ajBcHO71Wlw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wJgs8lL_u7hY; Wed,  9 Nov 2022 15:20:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AAA7260784;
	Wed,  9 Nov 2022 15:20:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AAA7260784
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DF02A1BF29A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 15:20:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C623E60784
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 15:20:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C623E60784
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wfahGOcsxEyv for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Nov 2022 15:20:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E80F60709
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1E80F60709
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 15:20:06 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-594-fyBtSCs0P4qUcgY1NzLV7Q-1; Wed, 09 Nov 2022 10:20:04 -0500
X-MC-Unique: fyBtSCs0P4qUcgY1NzLV7Q-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 617BE85A5B6;
 Wed,  9 Nov 2022 15:20:04 +0000 (UTC)
Received: from localhost (unknown [10.43.135.229])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C4ABA4B3FC6;
 Wed,  9 Nov 2022 15:20:03 +0000 (UTC)
Date: Wed, 9 Nov 2022 16:20:02 +0100
From: Miroslav Lichvar <mlichvar@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Message-ID: <Y2vFIq/6rB7k12Gd@localhost>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1668007206;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=nZRqPC4q9hdp49TI+2X2RyBCre3hi2PO5KT1G04wT98=;
 b=WNPLYv8J1pfjE2Ay4KimcYsaBEi9bb38ZTnONqociArO0ERgJoEx8s8/rWnjNN5l0GdLyB
 8tWH4zrFhXBzlO+7m83G33bh0r9mxi2iQIuL+TMSLOhP/PtKR2XFrEyCwTp4LMbjo5G+KJ
 Om1ICTINkd58OVDLn/EFWhFh4dnLi3A=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=WNPLYv8J
Subject: [Intel-wired-lan] ice driver bug with PTP vclocks
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
Cc: Richard Cochran <richardcochran@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

It seems the locking of the PTP clock in the ice driver conflicts with
spinlocks used by PTP virtual clocks protecting their timecounter and
cyclecounter. I get the following report when running ptp4l+phc2sys
pairs on multiple ports of an E810 with vclocks enabled:

BUG: scheduling while atomic: ptp7/3859/0x00000002
Preemption disabled at:
[<0000000000000000>] 0x0
CPU: 1 PID: 3859 Comm: ptp7 Tainted: G        W          6.0.6-300.fc37.x86_64 #1
Call Trace:
 <TASK>
 dump_stack_lvl+0x44/0x5c
 __schedule_bug.cold+0x81/0x8e
 __schedule+0xe82/0x12b0
 ? get_nohz_timer_target+0x18/0x1a0
 ? timerqueue_add+0x62/0xb0
 ? enqueue_hrtimer+0x2f/0x80
 schedule+0x5d/0xe0
 schedule_hrtimeout_range_clock+0xb5/0x100
 ? __hrtimer_init+0xe0/0xe0
 usleep_range_state+0x50/0x70
 ice_ptp_lock+0x39/0x60 [ice]
 ice_ptp_gettimex64+0x31/0x70 [ice]
 ? ptp_clock_release+0x50/0x50
 ? kthread_stop+0x170/0x170
 ptp_vclock_read+0x37/0x90
 timecounter_read+0x14/0x60
 ptp_vclock_refresh+0x2a/0x50
 ptp_aux_kworker+0x1c/0x40
 kthread_worker_fn+0xaa/0x250
 kthread+0xe9/0x110
 ? kthread_complete_and_exit+0x20/0x20
 ret_from_fork+0x22/0x30
 </TASK>

I tried to fix this in the vclock code by moving the PHC read outside
of the spinlock, but it turns out that's not a complete fix and it
breaks the update of the timecounter's cycle_last value. I suspect I'd
need to modify the cyclecounter to use a cached value which would need
to be read ahead of the timecounter call.

Any chance this could be addressed in the ice driver? Any suggestions?

-- 
Miroslav Lichvar

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
