Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A804A8B10
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Feb 2022 18:58:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6C8F240432;
	Thu,  3 Feb 2022 17:58:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JH7GBzmoKKcb; Thu,  3 Feb 2022 17:58:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3623840241;
	Thu,  3 Feb 2022 17:58:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 76B2B1BF3EE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 17:58:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 619468149C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 17:58:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QqazD4jSsunu for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Feb 2022 17:58:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EE3AC81426
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 17:58:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643911125; x=1675447125;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VI1r/6iK6mnauZwkq4QZBR2CwVJXVarjhv28jbCTWR4=;
 b=GatHxPsbY9c2911ksoUJYHD3eXPs87jy3vswYUjFomfMY7bCU5J7btJ3
 wT+uJPPTUv6aNexQFjbgqv2M8bULC4cZ8zXDhzEMwez9pXBDyiZ4f2M1A
 C1oy1V4+i46xBQDqNJtTh6R9lIUDPL5DH9y3lIaNiNyF1WK+XFvmnsqW4
 so/wjkZB/qj4ziW6cz+wvBmkrw/QZZODtw7zjTYsFNibdSPIPuNrFYYBh
 uFXBblKciDYc41QkIpdAiomXbMcJTG+LyUq+FD+7aKJgP5FAtqaJQdtG5
 8fk5yz+dtwTCJmWLe1mk2cQtUxwJMU9Id5bdBlze/bPD9mM3SKgdFf/hS w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="247036206"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="247036206"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 09:58:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="480563352"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga003.jf.intel.com with ESMTP; 03 Feb 2022 09:58:36 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 213HwZri008744; Thu, 3 Feb 2022 17:58:35 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Alan Brady <alan.brady@intel.com>
Date: Thu,  3 Feb 2022 18:56:36 +0100
Message-Id: <20220203175636.17265-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <CO1PR11MB5186CCE85D2D5A4AE6E816398F279@CO1PR11MB5186.namprd11.prod.outlook.com>
References: <20220128001009.721392-10-alan.brady@intel.com>
 <CO1PR11MB5186CCE85D2D5A4AE6E816398F279@CO1PR11MB5186.namprd11.prod.outlook.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 09/19] iecm: alloc vport TX
 resources
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Phani Burra <phani.r.burra@intel.com>, Madhu Chittim <madhu.chittim@intel.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alan Brady <alan.brady@intel.com>
Date: Thu, 3 Feb 2022 00:45:19 +0100

> > -----Original Message-----
> > From: Lobakin, Alexandr <alexandr.lobakin@intel.com>
> > Sent: Friday, January 28, 2022 5:57 AM
> > To: Brady, Alan <alan.brady@intel.com>
> > Cc: Lobakin, Alexandr <alexandr.lobakin@intel.com>; intel-wired-
> > lan@lists.osuosl.org; Burra, Phani R <phani.r.burra@intel.com>; Chittim, Madhu
> > <madhu.chittim@intel.com>; Linga, Pavan Kumar
> > <pavan.kumar.linga@intel.com>
> > Subject: Re: [Intel-wired-lan] [PATCH net-next 09/19] iecm: alloc vport TX
> > resources
> > 
> > From: Alan Brady <alan.brady@intel.com>
> > Date: Thu, 27 Jan 2022 16:09:59 -0800
> > 
> > > With init_task out of the way, we can start implementing open and data
> > > path. During open we'll allocate queue resources for vport. This only
> > > includes what's needed to get the TX resources. The next patch will get RX
> > > resources.
> > >
> > > The splitq model is unique in that it introduces the concept of "queue
> > > groups" where, for TX, we have some number of descriptor queues being
> > > serviced by one completion queue in a given group association. By
> > > 'splitting' a normal queue into two queues, one context is just handling
> > > descriptors and one context handling buffers, we can more effeciently deal
> > > with both and configure asymmetric setups (multiple descriptor queues to
> > > one completion queue).
> > >
> > > Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> > > Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> > > Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> > > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > > Signed-off-by: Alan Brady <alan.brady@intel.com>
> > > ---
> > >  drivers/net/ethernet/intel/iecm/Makefile      |    1 +
> > >  drivers/net/ethernet/intel/iecm/iecm_lib.c    |  369 ++++-
> > >  .../ethernet/intel/iecm/iecm_singleq_txrx.c   |   29 +
> > >  drivers/net/ethernet/intel/iecm/iecm_txrx.c   | 1282 ++++++++++++++++-
> > >  .../net/ethernet/intel/iecm/iecm_virtchnl.c   |   29 +
> > >  drivers/net/ethernet/intel/include/iecm.h     |   28 +
> > >  .../ethernet/intel/include/iecm_lan_txrx.h    |  394 +++++
> > >  .../net/ethernet/intel/include/iecm_txrx.h    |   96 ++
> > >  8 files changed, 2214 insertions(+), 14 deletions(-)
> > >  create mode 100644 drivers/net/ethernet/intel/iecm/iecm_singleq_txrx.c
> > >  create mode 100644 drivers/net/ethernet/intel/include/iecm_lan_txrx.h
> > >

--- 8< ---

> > > +	spin_lock_bh(&adapter->mac_filter_list_lock);
> > > +	list_for_each_entry(f, &adapter->config_data.mac_filter_list, list) {
> > > +		if (!f->remove)
> > > +			f->add = true;
> > > +	}
> > 
> > Redundant braces around a single statement.
> > 
> 
> Will not fix.

As I said in my previous message, this answer doesn't make this
choice clearer neither to me, nor to other reviewers.

> 
> > > +	spin_unlock_bh(&adapter->mac_filter_list_lock);
> > > +
> > > +	iecm_add_del_ether_addrs(vport, true, false);
> > > +}
> > > +
> > > +/**
> > > + * iecm_set_all_vlans - Re-add all VLANs in list

--- 8< ---

> > > @@ -1395,8 +1754,8 @@ void iecm_free_dma_mem(struct iecm_hw *hw,
> > struct iecm_dma_mem *mem)
> > >  }
> > >
> > >  static const struct net_device_ops iecm_netdev_ops_splitq = {
> > > -	.ndo_open = NULL,
> > > -	.ndo_stop = NULL,
> > > +	.ndo_open = iecm_open,
> > > +	.ndo_stop = iecm_stop,
> > >  	.ndo_start_xmit = NULL,
> > 
> > Hmm, forgot to mention this earlier as well. Consider marking
> > CONFIG_IECM as `depends on BROKEN` in Kconfig and remove this line
> > in the last commit. Otherwise, it will be possible to panic the
> > kernel as at least .ndo_start_xmit should always be set, kernel
> > doesn't check for it being non-NULL, it just calls it. Same with
> > open, stop and probably more, so it's a good practice to disable
> > drivers with depending on BROKEN until it receives the workable
> > state.
> > 
> 
> I don't have the full history on 'BROKEN' being a dependency but it seems silly to me to add some thrash just for that. Will consider.

Here: [0] I add 'depends on BROKEN' as the patch itself only adds
some basic functionality and will be ready only after couple patches
more.
It's a common practice, we mark some Kconfig symbols such way when
they're either will become usable after some more changes or when
a particular feature stops working properly or building on some
configurations.

This driver is not ready to work right after you add a Kconfig
option for it. Notably already mentioned NULLed .ndo_start_xmit()
will cause nullptr accesses if register_netdev() is called. It's
not a rare case at all when automation build systems and people
use Git bisecting and test kernels in the middle of a series. If
there is a chance to crash the kernel that way, it will crash
sooner or later.

Ok, maybe `depends on BROKEN` doesn't incremental-building friendly
as allmodconfigs will start to build iecm only after removing this
line, but at least make sure there's no chance for this driver to
probe earlier than it's fully functional.

> 
> > >  	.ndo_set_rx_mode = NULL,
> > >  	.ndo_validate_addr = eth_validate_addr,

--- 8< ---

> > > +static void iecm_set_vlan_tag_loc(struct iecm_adapter *adapter,
> > > +				  struct iecm_queue *q)
> > > +{
> > > +	if (iecm_is_cap_ena(adapter, IECM_OTHER_CAPS,
> > VIRTCHNL2_CAP_VLAN)) {
> > > +		struct virtchnl_vlan_supported_caps *insertion_support;
> > > +
> > > +		insertion_support =
> > > +				&adapter->vlan_caps-
> > >offloads.insertion_support;
> > > +		if (insertion_support->outer) {
> > > +			if (insertion_support->outer &
> > > +			    VIRTCHNL_VLAN_TAG_LOCATION_L2TAG1)
> > > +				set_bit(__IECM_Q_VLAN_TAG_LOC_L2TAG1,
> > > +					q->flags);
> > > +			else if (insertion_support->outer &
> > > +				 VIRTCHNL_VLAN_TAG_LOCATION_L2TAG2)
> > > +				set_bit(__IECM_Q_VLAN_TAG_LOC_L2TAG2,
> > > +					q->flags);
> > > +		} else if (insertion_support->inner) {
> > > +			if (insertion_support->inner &
> > > +			    VIRTCHNL_VLAN_TAG_LOCATION_L2TAG1)
> > > +				set_bit(__IECM_Q_VLAN_TAG_LOC_L2TAG1,
> > > +					q->flags);
> > > +			else if (insertion_support->inner &
> > > +				 VIRTCHNL_VLAN_TAG_LOCATION_L2TAG2)
> > > +				set_bit(__IECM_Q_VLAN_TAG_LOC_L2TAG2,
> > > +					q->flags);
> > > +		}
> > > +	} else if (iecm_is_cap_ena(adapter, IECM_BASE_CAPS,
> > > +				   VIRTCHNL2_CAP_VLAN)) {
> > > +		set_bit(__IECM_Q_VLAN_TAG_LOC_L2TAG1, q->flags);
> > > +	}
> > 
> > If !ena -> set_bit() + return, -1 indent.
> > 
> 
> I'm afraid I'm not following here.

	/* Do we have OTHER? */
	if (!iecm_is_cap_ena(adapter, IECM_OTHER_CAPS, VIRTCHNL2_CAP_VLAN)) {
		/* OK, we don't. If we have BASE, set L2TAG1 bit and exit,
		 * otherwise just exit.
		 */
		if (iecm_is_cap_ena(adapter, IECM_BASE_CAPS,
				    VIRTCHNL2_CAP_VLAN))
			set_bit(__IECM_Q_VLAN_TAG_LOC_L2TAG1, q->flags);

		return;
	}

	/* We have OTHER, let's proceed with full-blown features */
	if (insertion_support->outer) {
		...
	}

BTW, just have noticed that these checks for `outer` and `inner`
being non-0 are pointless, bitops will do the same job.

> 
> > > +}
> > > +
> > > +/**
> > > + * iecm_txq_group_alloc - Allocate all txq group resources

--- 8< ---

> > > +	/* Initialize flow scheduling for queues that were requested
> > > +	 * before the interface was brought up
> > > +	 */
> > > +	for (i = 0; i < vport->num_txq; i++) {
> > > +		if (test_bit(i, vport->adapter->config_data.etf_qenable)) {
> > > +			set_bit(__IECM_Q_FLOW_SCH_EN, vport->txqs[i]-
> > >flags);
> > > +			set_bit(__IECM_Q_ETF_EN, vport->txqs[i]->flags);
> > > +		}
> > > +	}
> > 
> > Redundant braces for the for-loop.
> > 
> 
> Will not fix.
> 
> > > +
> > > +	return 0;
> > > +err_out:
> > > +	iecm_vport_queues_rel(vport);
> > > +	return err;
> > > +}
> > > +
> > > +/**
> > > + * iecm_vport_intr_clean_queues - MSIX mode Interrupt Handler

--- 8< ---

> > > +	if (iecm_is_queue_model_split(vport->txq_model)) {
> > > +		for (i = 0; i < vport->num_txq_grp; i++)
> > > +			vport->txq_grps[i].complq->q_vector = NULL;
> > > +	} else {
> > > +		for (i = 0; i < vport->num_txq_grp; i++) {
> > > +			for (j = 0; j < vport->txq_grps[i].num_txq; j++)
> > > +				vport->txq_grps[i].txqs[j]->q_vector = NULL;
> > > +		}
> > 
> > Redundant braces.
> > 
> 
> Will not fix.
> 
> > > +	}
> > > +
> > > +	kfree(vport->q_vectors);
> > > +	vport->q_vectors = NULL;
> > > +}
> > > +
> > > +/**
> > > + * iecm_vport_intr_rel_irq - Free the IRQ association with the OS

--- 8< ---

> > > +static void iecm_net_dim(struct iecm_q_vector *q_vector)
> > > +{
> > > +	if (IECM_ITR_IS_DYNAMIC(q_vector->tx_intr_mode)) {
> > > +		struct dim_sample dim_sample = {};
> > > +		u64 packets = 0, bytes = 0;
> > > +		int i;
> > > +
> > > +		for (i = 0; i < q_vector->num_txq; i++) {
> > > +			packets += q_vector->tx[i]->q_stats.tx.packets;
> > > +			bytes += q_vector->tx[i]->q_stats.tx.bytes;
> > > +		}
> > > +
> > > +		dim_update_sample(q_vector->total_events, packets, bytes,
> > > +				  &dim_sample);
> > > +		net_dim(&q_vector->tx_dim, dim_sample);
> > > +	}
> > 
> > 	if (!dynamic_tx)
> > 		goto check_rx;
> > 
> > -1 level.
> > 
> > > +
> > > +	if (IECM_ITR_IS_DYNAMIC(q_vector->rx_intr_mode)) {
> > > +		struct dim_sample dim_sample = {};
> > > +		u64 packets = 0, bytes = 0;
> > > +		int i;
> > > +
> > > +		for (i = 0; i < q_vector->num_rxq; i++) {
> > > +			packets += q_vector->rx[i]->q_stats.rx.packets;
> > > +			bytes += q_vector->rx[i]->q_stats.rx.bytes;
> > > +		}
> > > +
> > > +		dim_update_sample(q_vector->total_events, packets, bytes,
> > > +				  &dim_sample);
> > > +		net_dim(&q_vector->rx_dim, dim_sample);
> > > +	}
> > 
> > 	if (!dynamic_rx)
> > 		return;
> > 
> > -1 as well.
> > 
> 
> I'm not entirely convinced this is better or more readable but I guess will fix.

	/* Do we have DIM enabled for Tx? If no, proceed with Rx */
	if (!IECM_ITR_IS_DYNAMIC(q_vector->tx_intr_mode))
		goto rx;

	for (i = 0; i < q_vector->num_txq; i++) {
		...

rx:
	/* Do we have DIM enabled for Rx? If no, just exit */
	if (!IECM_ITR_IS_DYNAMIC(q_vector->rx_intr_mode))
		return;

	for (i = 0; i < q_vector->num_rxq; i++) {
		...

I'm not entirely convinced this can look less readable then the code
above.

You could even split it into two small functions or even compress it
as they only differ with the direction suffixes:

/* Can be a function as well, would just require more arguments */
#define iecm_net_dim_dir(q_vector, dir) ({			\
	struct iecm_q_vector *__qv = (q_vector);		\
								\
	if (IECM_ITR_IS_DYNAMIC(__qv->dir##_intr_mode)) {	\
		struct dim_sample dim_sample = {};		\
		...						\
		net_dim(&__qv->dir##_dim, dim_sample);		\
	}							\
})

#define iecm_net_dim_rx(q_vector)	iecm_net_dim_dir(q_vector, rx)
#define iecm_net_dim_tx(q_vector)	iecm_net_dim_dir(q_vector, tx)

static void iecm_net_dim(struct iecm_q_vector *q_vector)
{
	iecm_net_dim_rx(q_vector);
	iecm_net_dim_tx(q_vector);
}

> 
> > > +}
> > > +
> > > +/**
> > > + * iecm_vport_intr_update_itr_ena_irq - Update itr and re-enable MSIX
> > interrupt

--- 8< ---

> > > +void iecm_vport_intr_write_itr(struct iecm_q_vector *q_vector, u16 itr, bool
> > tx)
> > > +{
> > > +	struct iecm_hw *hw = &q_vector->vport->adapter->hw;
> > > +	struct iecm_intr_reg *intr_reg;
> > > +
> > > +	if (tx && !q_vector->tx)
> > > +		return;
> > > +	else if (!tx && !q_vector->rx)
> > > +		return;
> > 
> > 	if ((tx && !q_vector->tx) || (!tx && !q_vector->rx))
> > 		return;
> > 
> > Fits into 79 cols and looks more elegant-ish.
> > 
> 
> Yours is a bit harder for humans to grok, would be prefer to keep this as-is.

For me it's harder to follow the ladder with two identical branches
(return-return).
I'd also rename `tx` to at least `is_tx` as it makes things even
more confusing.

> 
> > > +
> > > +	intr_reg = &q_vector->intr_reg;
> > > +	wr32(hw, tx ? intr_reg->tx_itr : intr_reg->rx_itr,
> > > +	     ITR_REG_ALIGN(itr) >> IECM_ITR_GRAN_S);
> > > +}
> > > +
> > > +/**
> > > + * iecm_vport_intr_ena_irq_all - Enable IRQ for the given vport

--- 8< ---

> > > +void iecm_fill_dflt_rss_lut(struct iecm_vport *vport)
> > > +{
> > > +	u16 num_active_rxq = vport->num_rxq;
> > > +	int i;
> > > +
> > > +	for (i = 0; i < vport->adapter->rss_data.rss_lut_size; i++)
> > > +		vport->adapter->rss_data.rss_lut[i] = i % num_active_rxq;
> > 
> > I think I saw a built-in kernel function for that, I'd grep for sth
> > like fill_default_rss.
> > 
> 
> Hmm I grep'd around and didn't see anything like that. Didn't see anything like that in other drivers I briefly looked at either.

I was sure it's there. It's ethtool_rxfh_indir_default(): [1].

You can deref vport->adapter->rss_data in a separate var to shorten
all this.

> 
> > > +}
> > > +
> > > +/**
> > > + * iecm_init_rss - Prepare for RSS

--- 8< ---

> > > +
> > >  #define MAKEMASK(m, s)	((m) << (s))
> > 
> > Consider using stock BIT(s) insteead of introducing this MAKEMASK().
> > 
> > >
> > > +struct iecm_tx_buf {
> > > +	struct hlist_node hlist;
> > > +	void *next_to_watch;
> > > +	union {
> > > +		struct sk_buff *skb;
> > > +		struct xdp_frame *xdpf;
> > > +	};
> > > +	unsigned int bytecount;
> > > +	unsigned short gso_segs;
> > > +#define IECM_TX_FLAGS_TSO			BIT(0)
> > > +#define IECM_TX_FLAGS_VLAN_TAG			BIT(1)
> > > +#define IECM_TX_FLAGS_HW_VLAN			BIT(2)
> > > +#define IECM_TX_FLAGS_HW_OUTER_SINGLE_VLAN	BIT(3)
> > > +#define IECM_TX_FLAGS_VLAN_SHIFT		16
> > > +#define IECM_TX_FLAGS_VLAN_MASK			0xFFFF0000
> > > +	u32 tx_flags;
> > > +	DEFINE_DMA_UNMAP_ADDR(dma);
> > > +	DEFINE_DMA_UNMAP_LEN(len);
> > > +	u16 compl_tag;		/* Unique identifier for buffer; used to
> > > +				 * compare with completion tag returned
> > > +				 * in buffer completion event
> > > +				 */
> > > +};
> > > +
> > > +struct iecm_buf_lifo {
> > > +	u16 top;
> > > +	u16 size;
> > > +	struct iecm_tx_buf **bufs;
> > 
> > There'll probably be a 4-byte gap before @bufs, move @top and @size
> > to the bottop to avoid this.
> > 
> > > +};

--- 8< ---

> > > --
> > > 2.33.0
> > 
> > Thanks,
> > Al

[0] https://lore.kernel.org/all/20211223002209.1092165-13-alexandr.lobakin@intel.com
[1] https://elixir.bootlin.com/linux/v5.17-rc2/source/include/linux/ethtool.h#L125

Thanks,
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
