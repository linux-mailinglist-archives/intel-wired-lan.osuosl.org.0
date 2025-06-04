Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 13751ACD86B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Jun 2025 09:19:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4B66A83D4A;
	Wed,  4 Jun 2025 07:19:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CFAqlPns-aTF; Wed,  4 Jun 2025 07:19:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7EE4383D4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749021583;
	bh=jotyL6fw2QFmib7XhrvWgWBOU56+9ulP7/GE81z30cc=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cLLEYensaJ96RACuMdzUArTXoSY4IY9H2OnePt1yhB31qF4FblWsVMJQLaxIuGD+k
	 YRitHXZsnOTrT3YKagNFMUnICJqIFDH+FmP46+Enn/B6c994b29Sux81k/ED7x1H+6
	 Kd3FTYXhh0Lqfvm6mXJy/QRUJp44ZQ7NXKz/gKWd/0OwagxYZoZOGOgtnjiIIpTiF6
	 32yYtnI8jNjhGPZ175aZFGV+vvUqN5PaKScpyI3MrABAn7j5igSSoDokbCsp4EpVZL
	 VY/6lILgGq70oDnJsGmBGflT1d6vdHAdArfjGXNXwfeZ3u4BE9dFKIhnjazq2mQrtG
	 zGYD5p86Zhc/Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7EE4383D4E;
	Wed,  4 Jun 2025 07:19:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id D955B1A6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jun 2025 07:19:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BF35F403A4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jun 2025 07:19:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZC9_aZx-hXBL for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Jun 2025 07:19:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0541641EA7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0541641EA7
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0541641EA7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jun 2025 07:19:40 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 99293614BA;
 Wed,  4 Jun 2025 07:19:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37E0AC4CEE7;
 Wed,  4 Jun 2025 07:19:38 +0000 (UTC)
Date: Wed, 4 Jun 2025 08:19:35 +0100
From: Simon Horman <horms@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20250604071935.GA1675772@horms.kernel.org>
References: <20250523205537.161754-1-ahmed.zaki@intel.com>
 <20250528095521.GZ365796@horms.kernel.org>
 <06e4f649-0442-42cf-b1db-d88bd8556d39@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <06e4f649-0442-42cf-b1db-d88bd8556d39@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1749021579;
 bh=wq53DOaAoLJyLG80BiM+4b3BhydmWNVKvXCgbJlRxA8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WNQerjUkBYNwmbhaRujBC3sYM5k6oy2rJSd/SdS5J8kGtcZJ7Bd13/xvha4IRKN7V
 6hoejZAGZIISDU4rtBwrOAwwryJozJf5aWRB+i9jj0+E8sWzxJbi3T9u1DHi7eIHkG
 LhhCHWcyTysRFKoGDsCtm0Yr3S75yvI8bakKPaLQV46GYWavOHzYVIntRU8xC9aWtn
 CLj84stvxWw4bO96IUzOEXbKGe8SxMVl3cl9Btq3QHUs979WolKNFJC96xTINB4OJt
 FVu7noyg51tqfmjDMYUk4tIJjStexUaHJMO/66FuQgAAI9kOCwcq59ycOp9YPfFbPA
 3gckqXCWzPAgQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=WNQerjUk
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: convert control queue
 mutex to a spinlock
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

On Tue, Jun 03, 2025 at 11:37:30AM -0600, Ahmed Zaki wrote:
> 
> 
> On 2025-05-28 3:55 a.m., Simon Horman wrote:
> > On Fri, May 23, 2025 at 02:55:37PM -0600, Ahmed Zaki wrote:
> > > With VIRTCHNL2_CAP_MACFILTER enabled, the following warning is generated
> > > on module load:
> > > 
> > > [  324.701677] BUG: sleeping function called from invalid context at kernel/locking/mutex.c:578
> > > [  324.701684] in_atomic(): 1, irqs_disabled(): 0, non_block: 0, pid: 1582, name: NetworkManager
> > > [  324.701689] preempt_count: 201, expected: 0
> > > [  324.701693] RCU nest depth: 0, expected: 0
> > > [  324.701697] 2 locks held by NetworkManager/1582:
> > > [  324.701702]  #0: ffffffff9f7be770 (rtnl_mutex){....}-{3:3}, at: rtnl_newlink+0x791/0x21e0
> > > [  324.701730]  #1: ff1100216c380368 (_xmit_ETHER){....}-{2:2}, at: __dev_open+0x3f0/0x870
> > > [  324.701749] Preemption disabled at:
> > > [  324.701752] [<ffffffff9cd23b9d>] __dev_open+0x3dd/0x870
> > > [  324.701765] CPU: 30 UID: 0 PID: 1582 Comm: NetworkManager Not tainted 6.15.0-rc5+ #2 PREEMPT(voluntary)
> > > [  324.701771] Hardware name: Intel Corporation M50FCP2SBSTD/M50FCP2SBSTD, BIOS SE5C741.86B.01.01.0001.2211140926 11/14/2022
> > > [  324.701774] Call Trace:
> > > [  324.701777]  <TASK>
> > > [  324.701779]  dump_stack_lvl+0x5d/0x80
> > > [  324.701788]  ? __dev_open+0x3dd/0x870
> > > [  324.701793]  __might_resched.cold+0x1ef/0x23d
> > > <..>
> > > [  324.701818]  __mutex_lock+0x113/0x1b80
> > > <..>
> > > [  324.701917]  idpf_ctlq_clean_sq+0xad/0x4b0 [idpf]
> > > [  324.701935]  ? kasan_save_track+0x14/0x30
> > > [  324.701941]  idpf_mb_clean+0x143/0x380 [idpf]
> > > <..>
> > > [  324.701991]  idpf_send_mb_msg+0x111/0x720 [idpf]
> > > [  324.702009]  idpf_vc_xn_exec+0x4cc/0x990 [idpf]
> > > [  324.702021]  ? rcu_is_watching+0x12/0xc0
> > > [  324.702035]  idpf_add_del_mac_filters+0x3ed/0xb50 [idpf]
> > > <..>
> > > [  324.702122]  __hw_addr_sync_dev+0x1cf/0x300
> > > [  324.702126]  ? find_held_lock+0x32/0x90
> > > [  324.702134]  idpf_set_rx_mode+0x317/0x390 [idpf]
> > > [  324.702152]  __dev_open+0x3f8/0x870
> > > [  324.702159]  ? __pfx___dev_open+0x10/0x10
> > > [  324.702174]  __dev_change_flags+0x443/0x650
> > > <..>
> > > [  324.702208]  netif_change_flags+0x80/0x160
> > > [  324.702218]  do_setlink.isra.0+0x16a0/0x3960
> > > <..>
> > > [  324.702349]  rtnl_newlink+0x12fd/0x21e0
> > > 
> > > The sequence is as follows:
> > > 	rtnl_newlink()->
> > > 	__dev_change_flags()->
> > > 	__dev_open()->
> > > 	dev_set_rx_mode() - >  # disables BH and grabs "dev->addr_list_lock"
> > > 	idpf_set_rx_mode() ->  # proceed only if VIRTCHNL2_CAP_MACFILTER is ON
> > > 	__dev_uc_sync() ->
> > > 	idpf_add_mac_filter ->
> > > 	idpf_add_del_mac_filters ->
> > > 	idpf_send_mb_msg() ->
> > > 	idpf_mb_clean() ->
> > > 	idpf_ctlq_clean_sq()   # mutex_lock(cq_lock)
> > > 
> > > Fix by converting cq_lock to a spinlock. All operations under the new
> > > lock are safe except freeing the DMA memory, which may use vunmap(). Fix
> > > by requesting a contiguous physical memory for the DMA mapping.
> > 
> > Hi Ahmed,
> 
> Hi Simon, Sorry for the late reply, I was off last week.
> 
> > 
> > If I understand things correctly, then by safe you mean won't sleep.  But
> 
> correct, that is what I meant.
> 
> > if so my question is if the path that frees DMA memory which is updated by
> > this patch is run in a context where sleeping is not allowed.
> 
> I am not sure I understand the question, but the current freeing path runs
> in process context and sleeping is allowed (hence the previous use of
> mutex).
> 
> With the new spinlock, we need to make sure all code in-between the new spin
> lock/unlock cannot sleep. All was safe except DMA buffer freeing which
> called vunmap(). That is avoided in this patch by requesting contiguous DMA
> memory via DMA_ATTR_FORCE_CONTIGUOUS.

Thanks for the clarification. And I agree that this is a good approach.
And sorry for my somewhat nonsensical question earlier, my mind had
gone off on a tangent.

Reviewed-by: Simon Horman <horms@kernel.org>

