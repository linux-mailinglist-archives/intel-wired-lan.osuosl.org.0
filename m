Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F73AA4F25
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Apr 2025 16:54:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D4AA740BA2;
	Wed, 30 Apr 2025 14:54:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9ocUTT8Nk8xm; Wed, 30 Apr 2025 14:54:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC83740919
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746024891;
	bh=TdjNj/Z8hXHrzanMpLobxS/s3TyVCieP9g/NQcu6SxU=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=CYvHToh43USRh4YY4+5J8VltpLNeFBaj9mWy0jJj19ZanX/osMrnkxd4Oe+GglCPv
	 W6jYWxVTHSgmmFR9YnJ+DRfPK//AnNpU3/1idqmHbMClrUW2TXwi6ucy1ZxYIjAo1g
	 ux2AKWi5zzc3+7W0NvqUggTAWAqmWIokFqY3cHINL5eyrD3OHV2wkfnLYkdZoLb5CN
	 mnfQIXNAiVPwr2CrUx2Fll3aZ3znrQb77gfisqEZ5WNtxd3YE/kSunGYPDMsx8Qrw7
	 4YqN5pLnnr6bgM+23xvJYkxxCS5lChQExzffJreBdM56ZjdmcAgm7idq5i1wYVw8AC
	 KioI+6BI2CWdA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC83740919;
	Wed, 30 Apr 2025 14:54:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id BAAD4943
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 14:54:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B7DAA82112
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 14:54:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yN8kmvUcGSKY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Apr 2025 14:54:49 +0000 (UTC)
X-Greylist: delayed 592 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 30 Apr 2025 14:54:48 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D056C8210A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D056C8210A
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=bigeasy@linutronix.de; receiver=<UNKNOWN> 
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D056C8210A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 14:54:48 +0000 (UTC)
Date: Wed, 30 Apr 2025 16:44:52 +0200
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: intel-wired-lan@lists.osuosl.org, linux-rt-devel@lists.linux.dev
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Clark Williams <clrkwllms@kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>, Thomas Gleixner <tglx@linutronix.de>,
 Wander Lairson Costa <wander@redhat.com>
Message-ID: <20250430144452.8zcAZc29@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1746024293;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=TdjNj/Z8hXHrzanMpLobxS/s3TyVCieP9g/NQcu6SxU=;
 b=Q8nrOYSPZgK4XGpPUUixqrGEZcFMaKv6gXR3wHftdT1gMKvqmjGa4YtWZufX1eZfA+oPmB
 kjddxznKKgoZDPHcRWq9dvJHDdkWwni+5of2XNvBFzUHhGwUojiVyuR72+qUHLVw27D3pD
 7Txu1E9d/uiKF+9OvLaTeJY3VVQoix1zHTYb8hXWyvSRm5fYfqrJkRP5HrO5nficFLVSB7
 VuLXh26yBsD0UQiMI0iibwguAs/mFtsV+qG0IqXZRHEDQH9IMbfq6+5NpfVL/No2kjf4TV
 rszzwn3zn6rIYMJ47rJ6WI7mdJhm3H8JFGlAErIt/v87gMq5A1ob/klKtEQ06Q==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1746024293;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=TdjNj/Z8hXHrzanMpLobxS/s3TyVCieP9g/NQcu6SxU=;
 b=vQ6W2tHYdmi9lJ33GkLDCDLIrlGCYSQsuFAP7r3iClEzKyo0EfM2PbSBh+lPhFW52brSaL
 VSXTfeBglICqWKAA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=Q8nrOYSP; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=vQ6W2tHY
Subject: [Intel-wired-lan] [PATCH] igb: Request igb_msix_other as a threaded
 interrupt handler
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

Wander reported that performing a SR-IOV setup on PREEMPT_RT can fail/
timeout.
The reason is that during the setup the VF device performs a reset
(igbvf_reset()) and polls for an ACK (e1000_reset_hw_vf() ->
e1000_check_for_ack_vf()) with disabled bottom halves. For the ACK to
complete it is required for the igb_msix_other() interrupt handler to
run.
The interrupt handler is forced-threaded on PREEMPT_RT and therefore
delayed until after bottom halves are enabled again. This happens only
after e1000_reset_hw_vf() times out. This scenario requires that the
interrupt handler and the reset handler run on the same CPU.
This scenario is not limited to PREEMPT_RT but can also happen without
PREEMPT_RT if the interrupts are forced threaded via `threadirqs'.
Setups without forced threaded interrupts are not affected.

The interrupt handler (igb_msix_other()) does not require bottom halves
to be disabled. It does not call into the network stack which would
mandate it. Requesting the handler explicit as a threaded interrupt will
not disable bottom halves prior invocation of the handler thus avoiding
the scenario.

Request igb_msix_other as a threaded interrupt handler.

Reported-by: Wander Lairson Costa <wander@redhat.com>
Closes: https://lore.kernel.org/all/20240920185918.616302-2-wander@redhat.com/
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---

I've been sitting on this one for a while. While this avoids the timeout
on a PREEMPT_RT setup, the !PREEMPT_RT + threadirqs setup remains
affected. The difference is that PREEMPT_RT allows a context switch
within a local_bh_disable() section while !PREEMPT_RT does not.

Allowing e1000_reset_hw_vf() to run/ wait/ poll without
e1000_hw::mbx_lock, which disable BH, should fix both setups.

 drivers/net/ethernet/intel/igb/igb_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index c646c71915f03..0827e8dcd9de7 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -912,8 +912,8 @@ static int igb_request_msix(struct igb_adapter *adapter)
 	struct net_device *netdev = adapter->netdev;
 	int i, err = 0, vector = 0, free_vector = 0;
 
-	err = request_irq(adapter->msix_entries[vector].vector,
-			  igb_msix_other, 0, netdev->name, adapter);
+	err = request_threaded_irq(adapter->msix_entries[vector].vector,
+				   igb_msix_other, 0, netdev->name, adapter);
 	if (err)
 		goto err_out;
 
-- 
2.49.0

