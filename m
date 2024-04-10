Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 105F18A0427
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Apr 2024 01:43:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 88B7760E56;
	Wed, 10 Apr 2024 23:43:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zEjSkraUGFpV; Wed, 10 Apr 2024 23:43:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5666E60EA2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712792593;
	bh=EEVESkcf0S03MSgXfRfIQaKVMDK3fwo2I1//tbTNVXQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oFEU+t/yVLxYRPvmhgCJdHtv7A8ggBMLqhi9zHTwN4SpsRZV1siCH2eVZJB7EigNQ
	 zAkPuVZgu32PYYyhz3IQWxC01Ua0pStZ3Z0yTPsQ0FKG/JS6kXhu3opyM/OGO1Rb90
	 E99S8vTQeqXhANkzPwYmYgGAwwp8pl7DDWqPJwjJfMtMn9s2hUcjjNjM3A7wbvDdi8
	 Nz2nT2IVNSh2PbgtMT8fqv/isj42LKKhKgKnCKQXGcp8I7ZmYznEa9HcTufdPyybia
	 /2KCycOYncAPInTL57eIFsqkTuwp4p8ASy746v7tJly6mixx7lKSF78zFlzjipwEOx
	 bX7gJmQmFW+jw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5666E60EA2;
	Wed, 10 Apr 2024 23:43:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 88C671BF215
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 23:43:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7394781FE2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 23:43:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KjkXNT_kTNWV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Apr 2024 23:43:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::82a; helo=mail-qt1-x82a.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2A2EC82002
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A2EC82002
Received: from mail-qt1-x82a.google.com (mail-qt1-x82a.google.com
 [IPv6:2607:f8b0:4864:20::82a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2A2EC82002
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 23:43:08 +0000 (UTC)
Received: by mail-qt1-x82a.google.com with SMTP id
 d75a77b69052e-4347e55066cso23219481cf.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 16:43:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712792588; x=1713397388;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=EEVESkcf0S03MSgXfRfIQaKVMDK3fwo2I1//tbTNVXQ=;
 b=qAKoi8yWbrnEjeiIjbgTR6fzTlFLqnPO+Y7+MXjuHbg307e9+d7koZsF1LYqI6hS3W
 zdKyyNdTNf0QWMe60zpQ1EbChkyKi+5Fnko7GyGOBzks/PlgirmAJkl+eFyhxG8SrXA7
 UUva4x5Qpz8CcKli1duI7rOxEvwgCuHABaohr/GxUXZ0tkKMHJEbeH9HF10fA+0YmJO0
 AE2L5O8Kh8AF0nEtAiFYGOm9aNuxkwgU1TPT5O189gqrQWOnEq18Z1LzCY7+cqaYk6k1
 3xNwIXssATgHdzImD7K93DDmTzZ/f5eGnFTjHEh4/3MM9m2tVOIdILRKf4bubfkHj7M6
 H67Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCXWPuN6t3J/bcg9fPzbvZD+o4JJOcCuZSgDsytbl3OSdrM2qBaYAbsUcHxsZas6FOW2Q0cuv5LL7R5h0xS+RulqJQ6SJUwW8TgI1oAT7edM7w==
X-Gm-Message-State: AOJu0Yy6CcY6cRMBCJ/tdfwYeEwMKcUlZLzaDAycfQUf1d4kRwMrkA8j
 ltboZ9K227V4HRA+w425NuPb3s4U2Sd9y3E9SJaFOc0dpYzMuirDV8kz60FhSBw=
X-Google-Smtp-Source: AGHT+IHhMI9p8LiUmOEhI4Zhyv4Ub3Hen9Jkjl+UE8ibgFi4W+Ov80I6AzGhOsyLJ+8N4BfQpioxYA==
X-Received: by 2002:ac8:5907:0:b0:434:cfe4:90fe with SMTP id
 7-20020ac85907000000b00434cfe490femr5580676qty.38.1712792587604; 
 Wed, 10 Apr 2024 16:43:07 -0700 (PDT)
Received: from LQ3V64L9R2 ([74.92.140.241]) by smtp.gmail.com with ESMTPSA id
 w14-20020ac84d0e000000b004364e61ce09sm158979qtv.66.2024.04.10.16.43.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Apr 2024 16:43:07 -0700 (PDT)
Date: Wed, 10 Apr 2024 19:43:04 -0400
From: Joe Damato <jdamato@fastly.com>
To: "Nambiar, Amritha" <amritha.nambiar@intel.com>
Message-ID: <ZhckCOFplMR0GMjr@LQ3V64L9R2>
References: <20240410043936.206169-1-jdamato@fastly.com>
 <20240410043936.206169-2-jdamato@fastly.com>
 <bb0fbd29-c098-4a62-9217-c9fd1a450250@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bb0fbd29-c098-4a62-9217-c9fd1a450250@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1712792588; x=1713397388; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=EEVESkcf0S03MSgXfRfIQaKVMDK3fwo2I1//tbTNVXQ=;
 b=Wr8yK98etUcMV1Z7Oc+gwnG74v3wzp4SauVn0w+hJJOM4mZqTquwfIkgUgS8FFdAQq
 Wj036rOCdQYNSdrG9CDUCXwo6Vk87O8YLhwzD8jk/VasB3OX/B99b/X3EfEhj4QeZufB
 gCUS0RlMQJ2az5Rls03jSSV8I0PaxeYgq2pRI=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=Wr8yK98e
Subject: Re: [Intel-wired-lan] [intel-next 1/2] net/i40e: link NAPI
 instances to queues and IRQs
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 nalramli@fastly.com, intel-wired-lan@lists.osuosl.org,
 sridhar.samudrala@intel.com, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Apr 10, 2024 at 02:10:52AM -0700, Nambiar, Amritha wrote:
> On 4/9/2024 9:39 PM, Joe Damato wrote:
> > Make i40e compatible with the newly added netlink queue GET APIs.
> > 
> > $ ./cli.py --spec ../../../Documentation/netlink/specs/netdev.yaml \
> >    --do queue-get --json '{"ifindex": 3, "id": 1, "type": "rx"}'
> > 
> > {'id': 1, 'ifindex': 3, 'napi-id': 162, 'type': 'rx'}
> > 
> > $ ./cli.py --spec ../../../Documentation/netlink/specs/netdev.yaml \
> >    --do napi-get --json '{"id": 162}'
> > 
> > {'id': 162, 'ifindex': 3, 'irq': 136}
> > 
> > The above output suggests that irq 136 was allocated for queue 1, which has
> > a NAPI ID of 162.
> > 
> > To double check this is correct, the IRQ to queue mapping can be verified
> > by checking /proc/interrupts:
> > 
> > $ cat /proc/interrupts  | grep 136\: | \
> >    awk '{print "irq: " $1 " name " $76}'
> > 
> > irq: 136: name i40e-vlan300-TxRx-1
> > 
> > Suggests that queue 1 has IRQ 136, as expected.
> > 
> > Signed-off-by: Joe Damato <jdamato@fastly.com>
> > ---
> >   drivers/net/ethernet/intel/i40e/i40e.h      |  2 +
> >   drivers/net/ethernet/intel/i40e/i40e_main.c | 58 +++++++++++++++++++++
> >   drivers/net/ethernet/intel/i40e/i40e_txrx.c |  4 ++
> >   3 files changed, 64 insertions(+)
> > 
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
> > index 2fbabcdb5bb5..5900ed5c7170 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e.h
> > +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> > @@ -1267,6 +1267,8 @@ int i40e_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd);
> >   int i40e_open(struct net_device *netdev);
> >   int i40e_close(struct net_device *netdev);
> >   int i40e_vsi_open(struct i40e_vsi *vsi);
> > +void i40e_queue_set_napi(struct i40e_vsi *vsi, unsigned int queue_index,
> > +			 enum netdev_queue_type type, struct napi_struct *napi);
> >   void i40e_vlan_stripping_disable(struct i40e_vsi *vsi);
> >   int i40e_add_vlan_all_mac(struct i40e_vsi *vsi, s16 vid);
> >   int i40e_vsi_add_vlan(struct i40e_vsi *vsi, u16 vid);
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > index 0bdcdea0be3e..6384a0c73a05 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > @@ -3448,6 +3448,58 @@ static struct xsk_buff_pool *i40e_xsk_pool(struct i40e_ring *ring)
> >   	return xsk_get_pool_from_qid(ring->vsi->netdev, qid);
> >   }
> > +/**
> > + * __i40e_queue_set_napi - Set the napi instance for the queue
> > + * @dev: device to which NAPI and queue belong
> > + * @queue_index: Index of queue
> > + * @type: queue type as RX or TX
> > + * @napi: NAPI context
> > + * @locked: is the rtnl_lock already held
> > + *
> > + * Set the napi instance for the queue. Caller indicates the lock status.
> > + */
> > +static void
> > +__i40e_queue_set_napi(struct net_device *dev, unsigned int queue_index,
> > +		      enum netdev_queue_type type, struct napi_struct *napi,
> > +		      bool locked)
> > +{
> > +	if (!locked)
> > +		rtnl_lock();
> > +	netif_queue_set_napi(dev, queue_index, type, napi);
> > +	if (!locked)
> > +		rtnl_unlock();
> > +}
> > +
> > +/**
> > + * i40e_queue_set_napi - Set the napi instance for the queue
> > + * @vsi: VSI being configured
> > + * @queue_index: Index of queue
> > + * @type: queue type as RX or TX
> > + * @napi: NAPI context
> > + *
> > + * Set the napi instance for the queue. The rtnl lock state is derived from the
> > + * execution path.
> > + */
> > +void
> > +i40e_queue_set_napi(struct i40e_vsi *vsi, unsigned int queue_index,
> > +		    enum netdev_queue_type type, struct napi_struct *napi)
> > +{
> > +	struct i40e_pf *pf = vsi->back;
> > +
> > +	if (!vsi->netdev)
> > +		return;
> > +
> > +	if (current_work() == &pf->service_task ||
> > +	    test_bit(__I40E_PF_RESET_REQUESTED, pf->state) ||
> 
> I think we might need something like ICE_PREPARED_FOR_RESET which detects
> all kinds of resets(PFR/CORE/GLOBR). __I40E_PF_RESET_REQUESTED handles PFR
> only. So, this might assert for RTNL lock on CORER/GLOBR.

The i40e code is a bit tricky so I'm not sure about these cases. Here's
what it looks like to me, but hopefully Intel can weigh-in here as well.

As some one who is not an expert in i40e, what follows is a guess that is
likely wrong ;)

The __I40E_GLOBAL_RESET_REQUESTED case it looks to me (I could totally
be wrong here) that the i40e_reset_subtask calls i40e_rebuild with
lock_acquired = false. In this case, we want __i40e_queue_set_napi to
pass locked = true (because i40e_rebuild will acquire the lock for us).

The __I40E_CORE_RESET_REQUESTED case appears to be the same as the
__I40E_GLOBAL_RESET_REQUESTED case in that i40e_rebuild is called with
lock_acquired = false meaning we also want __i40e_queue_set_napi to pass
locked = true (because i40e_rebuild will acquire the lock for us).

__I40E_PF_RESET_REQUESTED is more complex.

It seems:
          When the __I40E_PF_RESET_REQUESTED bit is set in:
            - i40e_handle_lldp_event
            - i40e_tx_timeout
            - i40e_intr
            - i40e_resume_port_tx
            - i40e_suspend_port_tx
            - i40e_hw_dcb_config

          then: i40e_service_event_schedule is called which queues
          i40e_service_task, which calls i40e_reset_subtask, which
          clears the __I40E_PF_RESET_REQUESTED bit and calls
          i40e_do_reset passing lock_acquired = false. In the
          __I40E_PF_RESET_REQUESTED case, i40e_reset_and_rebuild
	  called with lock_acquired = false again and passed through to
	  i40e_rebuild which will take rtnl on its own. This means
          in these cases, __i40e_queue_set_napi can pass locked = true.

          However...

            - i40e_set_features
            - i40e_ndo_bridge_setlink
            - i40e_create_queue_channel
            - i40e_configure_queue_channels
            - Error case in i40e_vsi_open

          call i40e_do_reset directly and pass lock_acquired = true so
          i40e_reset_and_rebuild will not take the RTNL.

	  Important assumption: I assume that passing lock_acquired = true
	  means that the lock really was previously acquired (and not simply
	  unnecessary and not taken ?).

	  If that is correct, then __i40e_queue_set_napi should also not take the rtnl (e.g.
          locked = true).

Again, I could be totally off here, but it looks like when:

  (current_work() == &pf->service_task) && test_bit(__I40E_PF_RESET_REQUESTED, pf->state)

is true, we want to call __i40e_queue_set_napi with locked = true,

and also all the other cases we want __i40e_queue_set_napi with locked = true

> > +	    test_bit(__I40E_DOWN, pf->state) ||
> > +	    test_bit(__I40E_SUSPENDED, pf->state))
> > +		__i40e_queue_set_napi(vsi->netdev, queue_index, type, napi,
> > +				      false);
> > +	else
> > +		__i40e_queue_set_napi(vsi->netdev, queue_index, type, napi,
> > +				      true);

I *think* (but honestly... I have no idea) the correct if statement *might* be
something like:

  /* __I40E_PF_RESET_REQUESTED via the service_task will
   * call i40e_rebuild with lock_acquired = false, causing rtnl to be
   * taken, meaning __i40e_queue_set_napi should *NOT* take the lock.
   *
   * __I40E_PF_RESET_REQUESTED when set directly and not via the
   * service task, i40e_reset is called with lock_acquired = true,
   * implying that the rtnl was already taken (and, more
   * specifically, the lock was not simply unnecessary and skipped)
   * and so __i40e_queue_set_napi should *NOT* take the lock.
   *
   * __I40E_GLOBAL_RESET_REQUESTED and __I40E_CORE_RESET_REQUESTED
   * trigger the service_task (via i40e_intr) which will cause
   * i40e_rebuild to acquire rtnl and so __i40e_queue_set_napi should
   * not acquire it.
   */
  if (current_work() == &pf->service_task ||
      test_bit(__I40E_PF_RESET_REQUESTED, pf->state) ||
      test_bit(__I40E_GLOBAL_RESET_REQUESTED, pf->state) ||
      test_bit(__I40E_CORE_RESET_REQUESTED, pf->state))
          __i40e_queue_set_napi(vsi->netdev, queue_index, type, napi,
                                true);
  else if (test_bit(__I40E_DOWN, pf->state) ||
           test_bit(__I40E_SUSPENDED, pf->state))
          __i40e_queue_set_napi(vsi->netdev, queue_index, type, napi,
                                false);
  else
          __i40e_queue_set_napi(vsi->netdev, queue_index, type, napi,
                                true);

I suppose to figure this out, I'd need to investigate all cases where
i40e_rebuild is called with lock_acquired = true to ensure that the lock was
actually acquired (and not just unnecessary).

Unless some one who knows about i40e can answer this question more
definitively.

> > +}
> > +
> >   /**
> >    * i40e_configure_tx_ring - Configure a transmit ring context and rest
> >    * @ring: The Tx ring to configure
> > @@ -3558,6 +3610,8 @@ static int i40e_configure_tx_ring(struct i40e_ring *ring)
> >   	/* cache tail off for easier writes later */
> >   	ring->tail = hw->hw_addr + I40E_QTX_TAIL(pf_q);
> > +	i40e_queue_set_napi(vsi, ring->queue_index, NETDEV_QUEUE_TYPE_TX,
> > +			    &ring->q_vector->napi);
> 
> I am not sure very sure of this, have you tested this for the reset/rebuild
> path as well (example: ethtool -L and change queues). Just wondering if this
> path is taken for first time VSI init or additionally for any VSI rebuilds
> as well.

Can you explain more about what your concern is? I'm not sure I follow.
Was the concern just that on rebuild this code path might not be
executed because the driver might take a different path?

If so, I traced the code (and tested with ethtool):

When the device is probed:

i40e_probe
  i40e_vsi_open
    i40e_vsi_configure
      i40e_vsi_configure_rx
        i40e_configure_rx_ring
      i40e_vsi_configure_tx
        i40e_configure_tx_ring

When you use ethtool to change the channel count:

i40e_set_channels
  i40e_reconfig_rss_queues
    i40e_reset_and_rebuild
      i40e_rebuild
        i40e_pf_unquiesce_all_vsi
          i40e_unquiesce_vsi
            i40e_vsi_open
              [.. the call stack above for i40e_vsi_open ..]

Are those the two paths you had in mind or were there other ones? FWIW, using
ethtool to change the channel count followed by using the cli.py returns what
appears to be correct data, so I think the ethtool -L case is covered.

Let me know if I am missing any cases you had in mind or if this answers your
question.

> >   	return 0;
> >   }
> > @@ -3716,6 +3770,8 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
> >   			 ring->queue_index, pf_q);
> >   	}
> > +	i40e_queue_set_napi(vsi, ring->queue_index, NETDEV_QUEUE_TYPE_RX,
> > +			    &ring->q_vector->napi);
> > 
> Same as above.
> 
>   	return 0;
> >   }
> > @@ -4178,6 +4234,8 @@ static int i40e_vsi_request_irq_msix(struct i40e_vsi *vsi, char *basename)
> >   		q_vector->affinity_notify.notify = i40e_irq_affinity_notify;
> >   		q_vector->affinity_notify.release = i40e_irq_affinity_release;
> >   		irq_set_affinity_notifier(irq_num, &q_vector->affinity_notify);
> > +		netif_napi_set_irq(&q_vector->napi, q_vector->irq_num);
> > +
> >   		/* Spread affinity hints out across online CPUs.
> >   		 *
> >   		 * get_cpu_mask returns a static constant mask with
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > index 64d198ed166b..d380885ff26d 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > @@ -821,6 +821,8 @@ void i40e_clean_tx_ring(struct i40e_ring *tx_ring)
> >   void i40e_free_tx_resources(struct i40e_ring *tx_ring)
> >   {
> >   	i40e_clean_tx_ring(tx_ring);
> > +	i40e_queue_set_napi(tx_ring->vsi, tx_ring->queue_index,
> > +			    NETDEV_QUEUE_TYPE_TX, NULL);
> >   	kfree(tx_ring->tx_bi);
> >   	tx_ring->tx_bi = NULL;
> > @@ -1526,6 +1528,8 @@ void i40e_clean_rx_ring(struct i40e_ring *rx_ring)
> >   void i40e_free_rx_resources(struct i40e_ring *rx_ring)
> >   {
> >   	i40e_clean_rx_ring(rx_ring);
> > +	i40e_queue_set_napi(rx_ring->vsi, rx_ring->queue_index,
> > +			    NETDEV_QUEUE_TYPE_RX, NULL);
> >   	if (rx_ring->vsi->type == I40E_VSI_MAIN)
> >   		xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
> >   	rx_ring->xdp_prog = NULL;
