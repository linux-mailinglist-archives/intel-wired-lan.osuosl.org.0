Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AB26A688439
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Feb 2023 17:21:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A4A360D50;
	Thu,  2 Feb 2023 16:21:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A4A360D50
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675354906;
	bh=LMBgMqQSHkCTpDXj5AG8aEEpfudcvyk/r15Im2ZMqg0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=a8MYwvVjXndbLUOH+GqsKwOWTk+vVRpSpvf1+qiRv8wmigONc6n+WNo4yzNQoxKww
	 TM7UBeSNicsUnEo9UglphtLJ0/rSVNTCGdtrp6Tk+YxgTE6LXh5CDfQg9372letGPt
	 sLNlf0PlHQIAgD+mDFmRK58bM+KXT9ggQbnTR7pwAeKkJ4E/XZVAoKVSvok5mQjtnc
	 lXe0tkfOb83xNTixj/B/gmslXifr4KpcYAKX84KJHasmVFQOqjYviGsVNkFnJZQM+M
	 ZiePCV52LavzZR8YxA13iy+QPzEDeejzhhqfSj1xoOYwBiNFeWOrj08QYJ//9FtaUA
	 OFgk/osxVSjzA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kegpnEjb3ZK3; Thu,  2 Feb 2023 16:21:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D378E60C04;
	Thu,  2 Feb 2023 16:21:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D378E60C04
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2EF941BF2C0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Feb 2023 01:29:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F127D419BF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Feb 2023 01:29:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F127D419BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 531HtLHCXBA0 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Feb 2023 01:29:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ED35A408ED
Received: from evilolive.daedalian.us (evilolive.daedalian.us
 [IPv6:2600:3c00::f03c:91ff:fe73:cd86])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ED35A408ED
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Feb 2023 01:29:26 +0000 (UTC)
Received: by evilolive.daedalian.us (Postfix, from userid 1001)
 id B8869120D7; Wed,  1 Feb 2023 17:23:06 -0800 (PST)
Date: Wed, 1 Feb 2023 17:23:06 -0800
From: John Hickey <jjh@daedalian.us>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <20230202012306.GC5283@daedalian.us>
References: <20230131073815.181341-1-jjh@daedalian.us> <Y9q0YDLVO+ndlaa8@boxer>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y9q0YDLVO+ndlaa8@boxer>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Approved-At: Thu, 02 Feb 2023 16:21:40 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=daedalian.us; s=default; t=1675300986;
 bh=PuxWVmUVVXvV1ssLEXkGV5RSf65YjswKPUGUzNAyA2Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TqzrSss3IhfctTdxYyr2sSU7UYP14hRwlMJj/DwqNtJFszx5b+fP3nOdm1br7wrdV
 sZ9kQ93GyjFJy4SUF0ZY8no9T0MKsukt4hlbeotbByDdZGzsxpFhYfQaH8kH6Eiphp
 OxLySnjQB4FDWIPG7vsf5rSnKrbCs3Zc9oHg4FSuLX+LDaLywIp4hHSXHC0BJzrT2F
 fDSU4z5Z3HBfGRDDVMrJwL5eESTKO8Oz4T9jMTUy1U965xg4zoKqEPbkyhZRm8sTOQ
 MurpuVW1TrDjp08nU3QOZS/G31fZSeXcuS+MPOL9TgrVSfDQSO82jaN1RAOZAKNzT+
 SrAlcNZMeKCaw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=daedalian.us header.i=@daedalian.us
 header.a=rsa-sha256 header.s=default header.b=TqzrSss3
Subject: Re: [Intel-wired-lan] [PATCH net v2] ixgbe: Panic during XDP_TX
 with > 64 CPUs
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
Cc: Shujin Li <lishujin@kuaishou.com>, Alexei Starovoitov <ast@kernel.org>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, intel-wired-lan@lists.osuosl.org,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, John Hickey <jjh@daedalian.us>,
 Eric Dumazet <edumazet@google.com>, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org, Jason Xing <xingwanli@kuaishou.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Feb 01, 2023 at 07:50:08PM +0100, Maciej Fijalkowski wrote:
> On Mon, Jan 30, 2023 at 11:38:15PM -0800, John Hickey wrote:
> > In commit 'ixgbe: let the xdpdrv work with more than 64 cpus'
> > (4fe815850bdc), support was added to allow XDP programs to run on systems
> > with more than 64 CPUs by locking the XDP TX rings and indexing them
> > using cpu % 64 (IXGBE_MAX_XDP_QS).
> > 
> > Upon trying this out patch via the Intel 5.18.6 out of tree driver
> > on a system with more than 64 cores, the kernel paniced with an
> > array-index-out-of-bounds at the return in ixgbe_determine_xdp_ring in
> > ixgbe.h, which means ixgbe_determine_xdp_q_idx was just returning the
> > cpu instead of cpu % IXGBE_MAX_XDP_QS.
> 
> I'd like to ask you to include the splat you got in the commit message.
 
Ok, I can add this in for v3 of the patch.  I'll send it out if there is
agreement that it isn't necessary to turn off the ixgbe_xdp_locking_key
(explanation below).

 ================================================================================
 UBSAN: array-index-out-of-bounds in /var/lib/dkms/ixgbe/5.18.6+focal-1/build/src/ixgbe.h:1147:26
 index 65 is out of range for type 'ixgbe_ring *[64]'
 ================================================================================
 BUG: kernel NULL pointer dereference, address: 0000000000000058
 #PF: supervisor read access in kernel mode
 #PF: error_code(0x0000) - not-present page
 PGD 0 P4D 0
[34646.423888] Oops: 0000 [#1] SMP NOPTI
 CPU: 65 PID: 408 Comm: ksoftirqd/65 Tainted: G          IOE     5.15.0-48-generic #54~20.04.1-Ubuntu
 Hardware name: Dell Inc. PowerEdge R640/0W23H8, BIOS 2.5.4 01/13/2020
 RIP: 0010:ixgbe_xmit_xdp_ring+0x1b/0x1c0 [ixgbe]
 Code: 3b 52 d4 cf e9 42 f2 ff ff 66 0f 1f 44 00 00 0f 1f 44 00 00 55 b9 00 00 00 00 48 89 e5 41 57 41 56 41 55 41 54 53 48 83 ec 08 <44> 0f b7 47 58 0f b7 47 5a 0f b7 57 54 44 0f b7 76 08 66 41 39 c0
 RSP: 0018:ffffbc3fcd88fcb0 EFLAGS: 00010282
 RAX: ffff92a253260980 RBX: ffffbc3fe68b00a0 RCX: 0000000000000000
 RDX: ffff928b5f659000 RSI: ffff928b5f659000 RDI: 0000000000000000
 RBP: ffffbc3fcd88fce0 R08: ffff92b9dfc20580 R09: 0000000000000001
 R10: 3d3d3d3d3d3d3d3d R11: 3d3d3d3d3d3d3d3d R12: 0000000000000000
 R13: ffff928b2f0fa8c0 R14: ffff928b9be20050 R15: 000000000000003c
 FS:  0000000000000000(0000) GS:ffff92b9dfc00000(0000) knlGS:0000000000000000
 CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
 CR2: 0000000000000058 CR3: 000000011dd6a002 CR4: 00000000007706e0
 DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
 DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
 PKRU: 55555554
 Call Trace:
  <TASK>
  ixgbe_poll+0x103e/0x1280 [ixgbe]
  ? sched_clock_cpu+0x12/0xe0
  __napi_poll+0x30/0x160
  net_rx_action+0x11c/0x270
  __do_softirq+0xda/0x2ee
  run_ksoftirqd+0x2f/0x50
  smpboot_thread_fn+0xb7/0x150
  ? sort_range+0x30/0x30
  kthread+0x127/0x150
  ? set_kthread_struct+0x50/0x50
  ret_from_fork+0x1f/0x30
  </TASK>

> > 
> > I think this is how it happens:
> > 
> > Upon loading the first XDP program on a system with more than 64 CPUs,
> > ixgbe_xdp_locking_key is incremented in ixgbe_xdp_setup.  However,
> > immediately after this, the rings are reconfigured by ixgbe_setup_tc.
> > ixgbe_setup_tc calls ixgbe_clear_interrupt_scheme which calls
> > ixgbe_free_q_vectors which calls ixgbe_free_q_vector in a loop.
> > ixgbe_free_q_vector decrements ixgbe_xdp_locking_key once per call if
> > it is non-zero.  Commenting out the decrement in ixgbe_free_q_vector
> > stopped my system from panicing.
> > 
> > I suspect to make the original patch work, I would need to load an XDP
> > program and then replace it in order to get ixgbe_xdp_locking_key back
> > above 0 since ixgbe_setup_tc is only called when transitioning between
> > XDP and non-XDP ring configurations, while ixgbe_xdp_locking_key is
> > incremented every time ixgbe_xdp_setup is called.
> > 
> > Also, ixgbe_setup_tc can be called via ethtool --set-channels, so this
> > becomes another path to decrement ixgbe_xdp_locking_key to 0 on systems
> > with greater than 64 CPUs.
> > 
> > For this patch, I have changed static_branch_inc to static_branch_enable
> > in ixgbe_setup_xdp.  We aren't counting references and I don't see any
> > reason to turn it off, since all the locking appears to be in the XDP_TX
> > path, which isn't run if a XDP program isn't loaded.
> > 
> > Fixes: 4fe815850bdc ("ixgbe: let the xdpdrv work with more than 64 cpus")
> > Signed-off-by: John Hickey <jjh@daedalian.us>
> > ---
> > v1 -> v2:
> > 	Added Fixes and net tag.  No code changes.
> > ---
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c  | 3 ---
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 2 +-
> >  2 files changed, 1 insertion(+), 4 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
> > index f8156fe4b1dc..0ee943db3dc9 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
> > @@ -1035,9 +1035,6 @@ static void ixgbe_free_q_vector(struct ixgbe_adapter *adapter, int v_idx)
> >  	adapter->q_vector[v_idx] = NULL;
> >  	__netif_napi_del(&q_vector->napi);
> >  
> > -	if (static_key_enabled(&ixgbe_xdp_locking_key))
> > -		static_branch_dec(&ixgbe_xdp_locking_key);
> 
> Yeah calling this per each qvector is *very* unbalanced approach whereas
> you bump it single time when loading xdp prog.
> 
> > -
> >  	/*
> >  	 * after a call to __netif_napi_del() napi may still be used and
> >  	 * ixgbe_get_stats64() might access the rings on this vector,
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > index ab8370c413f3..cd2fb72c67be 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > @@ -10283,7 +10283,7 @@ static int ixgbe_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
> >  	if (nr_cpu_ids > IXGBE_MAX_XDP_QS * 2)
> >  		return -ENOMEM;
> >  	else if (nr_cpu_ids > IXGBE_MAX_XDP_QS)
> > -		static_branch_inc(&ixgbe_xdp_locking_key);
> > +		static_branch_enable(&ixgbe_xdp_locking_key);
> 
> Now that you removed static_branch_dec you probably need a counter part
> (static_branch_disable) at appriopriate place.

My first thought was to also turn it off, but the ixgbe_xdp_locking_key
is only used in XDP areas (I attempted to explain this in last paragraph
of the commit, but it might be unclear).  Setting the key depends on:
calling ixgbe_xdp_setup and having more than 64 CPUs.  Since the key
is only used in the XDP context and since the number of CPUs shouldn't
change, I think turning off the key just introduces complexity with
no benefit.  If you unload an xdp program, the key controls nothing.
If we really do want to turn it off, we'd probably do so at the end of
ixgbe_xdp_setup if need_reset was true and the prog is null.

Here is where ixgbe_xdp_locking_key is used:

ixgbe.h:

    ixgbe_determine_xdp_q_idx

ixgbe_main.c:

    ixgbe_run_xdp
    ixgbe_xdp_ring_update_tail_locked
    ixgbe_xdp_xmit

ixgbe_xsk.c:

    ixgbe_run_xdp_zc


The function ixgbe_determine_xdp_q_idx is only used in:

ixgbe_main.c:
    ixgbe_run_xdp
    ixgbe_clean_rx_irq upon IXGBE_XDP_TX
    ixgbe_xdp_xmit

ixgbe_xsk.c:
    ixgbe_run_xdp_zc
    ixgbe_clean_rx_irq_zc upon IXGBE_XDP_TX

 
> >  
> >  	old_prog = xchg(&adapter->xdp_prog, prog);
> >  	need_reset = (!!prog != !!old_prog);
> > -- 
> > 2.37.2
> > 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
