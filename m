Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D8254B430
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jun 2022 17:08:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1420183298;
	Tue, 14 Jun 2022 15:08:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tGraLCxbUMfL; Tue, 14 Jun 2022 15:08:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA32783294;
	Tue, 14 Jun 2022 15:08:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9109A1BF4D7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jun 2022 15:08:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7D95B40B3D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jun 2022 15:08:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KNWMvyS0fMg0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jun 2022 15:08:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5D5C140B22
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jun 2022 15:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655219292; x=1686755292;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Wxhm7vbdWBs05KIbC2O6NnZOv2F/9l3b9S3+uorsDZI=;
 b=NjFV6JqSZ+HDW7F9gBTGCDOGgVx2oo7gamtyB9CKUwJyoxcrl8k0K//Q
 R6a9OFlhwdZLmMcWvX3Z3jlLbtgQl1PTsl/jBWRu3TT8ParG+xK+HHTHx
 mStgTxCf/c+6EnmDbl1etLPT77GP6svkMLkWc8sx1KCaPOHFJBplunTlY
 eo3vZliD+XaOZFv0BNGIaPttaA9pLDFw8DohjrIvgNSb63p2EXVXPUtnz
 KZInp7KO3ggklR0x3TfYGHMN+joTi35288ClSpjoBVyU5Jy955Vm+cyNF
 HzjJaZmaM2LdmqI/JwprL05lmltuc+v9l3RIksCTYcpR9uEXDNYtNAysV w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="259097598"
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="259097598"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2022 08:08:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="558381719"
Received: from boxer.igk.intel.com (HELO boxer) ([10.102.20.173])
 by orsmga006.jf.intel.com with ESMTP; 14 Jun 2022 08:08:08 -0700
Date: Tue, 14 Jun 2022 17:08:07 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Piotr Skajewski <piotrx.skajewski@intel.com>
Message-ID: <YqikV7W1sJuGBsnW@boxer>
References: <20220519055358.20314-1-piotrx.skajewski@intel.com>
 <20220601131448.13796-1-piotrx.skajewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220601131448.13796-1-piotrx.skajewski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v2] ixgbe: Add locking to prevent
 panic when setting sriov_numvfs to zero
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
Cc: intel-wired-lan@lists.osuosl.org, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jun 01, 2022 at 03:14:48PM +0200, Piotr Skajewski wrote:
> > On Thu, May 19, 2022 at 07:53:58AM +0200, Piotr Skajewski wrote:
> > > It is possible to disable VFs while the PF driver is processing requests
> > > from the VF driver.  This can result in a panic.
> > > 
> > > BUG: unable to handle kernel paging request at 000000000000106c
> > > PGD 0 P4D 0
> > > Oops: 0000 [#1] SMP NOPTI
> > > CPU: 8 PID: 0 Comm: swapper/8 Kdump: loaded Tainted: G I      --------- -
> > > Hardware name: Dell Inc. PowerEdge R740/06WXJT, BIOS 2.8.2 08/27/2020
> > > RIP: 0010:ixgbe_msg_task+0x4c8/0x1690 [ixgbe]
> > > Code: 00 00 48 8d 04 40 48 c1 e0 05 89 7c 24 24 89 fd 48 89 44 24 10 83 ff
> > > 01 0f 84 b8 04 00 00 4c 8b 64 24 10 4d 03 a5 48 22 00 00 <41> 80 7c 24 4c
> > > 00 0f 84 8a 03 00 00 0f b7 c7 83 f8 08 0f 84 8f 0a
> > > RSP: 0018:ffffb337869f8df8 EFLAGS: 00010002
> > > RAX: 0000000000001020 RBX: 0000000000000000 RCX: 000000000000002b
> > > RDX: 0000000000000002 RSI: 0000000000000008 RDI: 0000000000000006
> > > RBP: 0000000000000006 R08: 0000000000000002 R09: 0000000000029780
> > > R10: 00006957d8f42832 R11: 0000000000000000 R12: 0000000000001020
> > > R13: ffff8a00e8978ac0 R14: 000000000000002b R15: ffff8a00e8979c80
> > > FS:  0000000000000000(0000) GS:ffff8a07dfd00000(0000) knlGS:00000000000000
> > > CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > > CR2: 000000000000106c CR3: 0000000063e10004 CR4: 00000000007726e0
> > > DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> > > DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> > > PKRU: 55555554
> > > Call Trace:
> > >  <IRQ>
> > >  ? ttwu_do_wakeup+0x19/0x140
> > >  ? try_to_wake_up+0x1cd/0x550
> > >  ? ixgbevf_update_xcast_mode+0x71/0xc0 [ixgbevf]
> > >  ixgbe_msix_other+0x17e/0x310 [ixgbe]
> > >  __handle_irq_event_percpu+0x40/0x180
> > >  handle_irq_event_percpu+0x30/0x80
> > >  handle_irq_event+0x36/0x53
> > >  handle_edge_irq+0x82/0x190
> > >  handle_irq+0x1c/0x30
> > >  do_IRQ+0x49/0xd0
> > >  common_interrupt+0xf/0xf
> > > 
> > > This can be eventually be reproduced with the following script:
> > > 
> > > while :
> > > do
> > >     echo 63 > /sys/class/net/<devname>/device/sriov_numvfs
> > >     sleep 1
> > >     echo 0 > /sys/class/net/<devname>/device/sriov_numvfs
> > >     sleep 1
> > > done
> > > 
> > > Add lock when disabling SR-IOV to prevent process VF mailbox communication.
> > > 
> > > Signed-off-by: Piotr Skajewski <piotrx.skajewski@intel.com>
> > 
> > This is a fix for sure. Please target it to net tree and add fixes tag.
> > 
> > > ---
> > > changes in v2:
> > >     - replace type spin_lock_bh to spin_lock
> > 
> > Why? Please explain what contexts are being synchronized.k
> 
> The synchronization of shared resources while creating and removing many
> virtual function simultaneously.

This doesn't answer my question unfortunately :(

> 
> > 
> > > 
> > >  drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  1 +
> > >  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  3 ++
> > >  .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    | 28 ++++++++++++-------
> > >  3 files changed, 22 insertions(+), 10 deletions(-)
> > > 
> > > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> > > index 921a4d977d65..8813b4dd6872 100644
> > > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> > > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> > > @@ -779,6 +779,7 @@ struct ixgbe_adapter {
> > >  #ifdef CONFIG_IXGBE_IPSEC
> > >  	struct ixgbe_ipsec *ipsec;
> > >  #endif /* CONFIG_IXGBE_IPSEC */
> > > +	spinlock_t vfs_lock;
> > >  };
> > >  
> > >  static inline int ixgbe_determine_xdp_q_idx(int cpu)
> > > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > > index c4a4954aa317..6c403f112d29 100644
> > > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > > @@ -6402,6 +6402,9 @@ static int ixgbe_sw_init(struct ixgbe_adapter *adapter,
> > >  	/* n-tuple support exists, always init our spinlock */
> > >  	spin_lock_init(&adapter->fdir_perfect_lock);
> > >  
> > > +	/* init spinlock to avoid concurrency of VF resources */
> > > +	spin_lock_init(&adapter->vfs_lock);
> > > +
> > >  #ifdef CONFIG_IXGBE_DCB
> > >  	ixgbe_init_dcb(adapter);
> > >  #endif
> > > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> > > index 7f11c0a8e7a9..6f583df19635 100644
> > > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> > > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> > > @@ -207,6 +207,8 @@ int ixgbe_disable_sriov(struct ixgbe_adapter *adapter)
> > >  	unsigned int num_vfs = adapter->num_vfs, vf;
> > >  	int rss;
> > >  
> > > +	spin_lock(&adapter->vfs_lock);
> > > +
> > >  	/* set num VFs to 0 to prevent access to vfinfo */
> > >  	adapter->num_vfs = 0;
> > >  
> > > @@ -228,6 +230,8 @@ int ixgbe_disable_sriov(struct ixgbe_adapter *adapter)
> > >  	kfree(adapter->mv_list);
> > >  	adapter->mv_list = NULL;
> > >  
> > > +	spin_unlock(&adapter->vfs_lock);
> > > +
> > >  	/* if SR-IOV is already disabled then there is nothing to do */
> > >  	if (!(adapter->flags & IXGBE_FLAG_SRIOV_ENABLED))
> > >  		return 0;
> > > @@ -1357,19 +1361,23 @@ void ixgbe_msg_task(struct ixgbe_adapter *adapter)
> > >  	struct ixgbe_hw *hw = &adapter->hw;
> > >  	u32 vf;
> > >  
> > > -	for (vf = 0; vf < adapter->num_vfs; vf++) {
> > > -		/* process any reset requests */
> > > -		if (!ixgbe_check_for_rst(hw, vf))
> > > -			ixgbe_vf_reset_event(adapter, vf);
> > > +	spin_lock(&adapter->vfs_lock);

So this is broken and that's why I was asking for explanation in regards
to what contexts we're playing with.

ixgbe_msg_task() which splat points to is run in interrupt context, so you
need to disable the interrupts before holding a lock. You should use
spin_lock_irqsave(). Otherwise there is a chance that
ixgbe_disable_sriov() would be interrupted by ixgbe_msg_task() on the same
cpu and you'll run into the deadlock.

> > > +	if (adapter->vfinfo) {
> > 
> > why this is needed?
> 
> While creating and removing many VF at the same time,
> it happens that we process messages from VF whose resources
> have already been released. Driver should not process message
> while this is happening.

I was only asking why we need check for adapter->vinfo and I feel that
you started to explain why locking is needed here.

> 
> > 
> > also maybe revert the logic and flatten the code:
> >     if (!adapter->vfinfo)
> > 	goto unlock;
> >     (...)
> > unlock:
> >     spin_unlock(&adapter->vfs_lock);
> > 
> 
> This check is not related to spinlock itself but
> stick to the loop where VF message is processed.
> 
> > > +		for (vf = 0; vf < adapter->num_vfs; vf++) {
> > > +			/* process any reset requests */
> > > +			if (!ixgbe_check_for_rst(hw, vf))
> > > +				ixgbe_vf_reset_event(adapter, vf);
> > >  
> > > -		/* process any messages pending */
> > > -		if (!ixgbe_check_for_msg(hw, vf))
> > > -			ixgbe_rcv_msg_from_vf(adapter, vf);
> > > +			/* process any messages pending */
> > > +			if (!ixgbe_check_for_msg(hw, vf))
> > > +				ixgbe_rcv_msg_from_vf(adapter, vf);
> > >  
> > > -		/* process any acks */
> > > -		if (!ixgbe_check_for_ack(hw, vf))
> > > -			ixgbe_rcv_ack_from_vf(adapter, vf);
> > > +			/* process any acks */
> > > +			if (!ixgbe_check_for_ack(hw, vf))
> > > +				ixgbe_rcv_ack_from_vf(adapter, vf);
> > > +		}
> > >  	}
> > > +	spin_unlock(&adapter->vfs_lock);
> > >  }
> > >  
> > >  static inline void ixgbe_ping_vf(struct ixgbe_adapter *adapter, int vf)
> > > -- 
> > > 2.35.0.rc0
> > > 
> > > _______________________________________________
> > > Intel-wired-lan mailing list
> > > Intel-wired-lan@osuosl.org
> > > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
