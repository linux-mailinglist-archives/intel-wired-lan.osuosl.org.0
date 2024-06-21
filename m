Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5DE912CE2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jun 2024 20:03:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C222F408AB;
	Fri, 21 Jun 2024 18:03:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J68xGEiM4rXn; Fri, 21 Jun 2024 18:03:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B17E408C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718992990;
	bh=/fejNfIXIJtvuAfi2f/gRBIjZhFoRrIfjc01kX/930A=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=h5nQjLP2FySB1uJwCmenZqx8xfFKOqjbK8/o7FkVETu6fanfwjRuIVA0tmW4c7Y+z
	 UBQuYcrtktLIo5sl9tsQZ13+FPt1BX3zzuWURB3C+bpFkWPgaJ/FFTUmKUmemUFaKH
	 m30eNJjoaIHhI+Egw5l1hP6KcLsXIWAwIaobESlgNl2MjaQvzCGPZIwtpvOl+xtvKe
	 a2X68NDrBEq7bywiZk5QGmTBaixB7KMjMScLtIM1DtgzNVuEyECiPmtPJofmdAOvLX
	 adP9cDrmABW9EzkY92+D71yfh4a/gQRp6a88pa1dMk1+FrQhMkDFGU/tfLkYPvb9WE
	 VH9tDSTIXQpjQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B17E408C4;
	Fri, 21 Jun 2024 18:03:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DEC171BF83A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 18:03:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D87CD810F9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 18:03:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6sPh7KzGXXCv for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jun 2024 18:03:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62c; helo=mail-pl1-x62c.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 19CB0810F5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 19CB0810F5
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com
 [IPv6:2607:f8b0:4864:20::62c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 19CB0810F5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 18:03:05 +0000 (UTC)
Received: by mail-pl1-x62c.google.com with SMTP id
 d9443c01a7336-1f9f9a3866fso4670415ad.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 11:03:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718992985; x=1719597785;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=/fejNfIXIJtvuAfi2f/gRBIjZhFoRrIfjc01kX/930A=;
 b=d+AjZqtm4R+a/ZEvQgG9319OHaSF2YvJgWn90sO9YciqfqMcphO+GzB8A3reCxyPnO
 GTLFRhNNbHA3x4LJm2LXCYA+TUX0QkLho4wEPxDIgS37uyMVPFETCjMwb5YQEvf6agDY
 QqFW87JfhtSmSZOu35Cy1Lb86kir8gJUkfK4B4BukDXmh2AYBoumUylz94Ha5PKUlfPh
 GPHqmiWRG9cbaqDWJlbduldNwvKKpxwy1pFOvLsZZE61lDqmmItrJy5YQEBj+ImZQ0k9
 xRoWozctb7xDozR9uVx2WFgv3zcD1a/br4sPTCoe8lW/HFLMtVLAb2gHJzDBBSUKriJ7
 oTGA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXtvj/7VOUY5550ZoJ0W3odOUPPjsXlk7gMiuXQg6qieb64jFVJGjDzAFjayLtnJByPX2w8vdHPZgorf5yZpO2v04H+OcShcPltUpCPCUGhEQ==
X-Gm-Message-State: AOJu0YwZjD2U3XPb5cQRCP5v51rRMd3NKNr8LUDFB41nVpU3g+0zJ7OG
 nLGEd+/hgV8QLKzhzqndy8B5jpSmJcdai1VZUEd2MAtQVSVaOyQ6/OEASVXZjY8=
X-Google-Smtp-Source: AGHT+IEVTg16ROXrYPMvs0xQGYg0izhYZTmomgQPRgdKW3ISlow8Icx8y2LCcDG7xFe9uuhQ9UIGkg==
X-Received: by 2002:a17:902:f549:b0:1f9:ec87:284e with SMTP id
 d9443c01a7336-1fa04ae5e33mr7336555ad.16.1718992984387; 
 Fri, 21 Jun 2024 11:03:04 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-1f9eb3c6a7csm16834235ad.160.2024.06.21.11.03.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Jun 2024 11:03:03 -0700 (PDT)
Date: Fri, 21 Jun 2024 11:03:01 -0700
From: Joe Damato <jdamato@fastly.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <ZnXAVdz48OI9tONv@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "Nambiar, Amritha" <amritha.nambiar@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, sridhar.samudrala@intel.com,
 nalramli@fastly.com, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
References: <20240410043936.206169-1-jdamato@fastly.com>
 <20240410043936.206169-2-jdamato@fastly.com>
 <bb0fbd29-c098-4a62-9217-c9fd1a450250@intel.com>
 <ZhckCOFplMR0GMjr@LQ3V64L9R2>
 <f6a3f010-8fb5-4494-9ef0-23501ea01f64@intel.com>
 <Zhrb6qJAoTYks2lK@LQ3V64L9R2>
 <a630e762-a866-7ce0-84ec-22ed09a92f89@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a630e762-a866-7ce0-84ec-22ed09a92f89@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1718992985; x=1719597785; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=/fejNfIXIJtvuAfi2f/gRBIjZhFoRrIfjc01kX/930A=;
 b=e4cs/qMEkDfWrNz9Ca+uSmiRIz+O58NUyWX8/PwGkwFeRJP5vp/ivDgS+SOGm0Ftf1
 MHcf6N7V9FAJiCHANmRhoErZuHnLF6Wkjx8Z6UxeEyFlcn8PsmLk4It6kiQa/3jJblH+
 69KZoSW66nJ8k15yuHaKZNVzrQ66yjUgtehpw=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=e4cs/qME
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
Cc: "Nambiar, Amritha" <amritha.nambiar@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Eric Dumazet <edumazet@google.com>, nalramli@fastly.com,
 intel-wired-lan@lists.osuosl.org, sridhar.samudrala@intel.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Apr 15, 2024 at 09:37:09AM -0700, Tony Nguyen wrote:
> 
> 
> On 4/13/2024 12:24 PM, Joe Damato wrote:
> > On Thu, Apr 11, 2024 at 04:02:37PM -0700, Nambiar, Amritha wrote:
> > > On 4/10/2024 4:43 PM, Joe Damato wrote:
> > > > On Wed, Apr 10, 2024 at 02:10:52AM -0700, Nambiar, Amritha wrote:
> > > > > On 4/9/2024 9:39 PM, Joe Damato wrote:
> > > > > > Make i40e compatible with the newly added netlink queue GET APIs.
> > > > > > 
> > > > > > $ ./cli.py --spec ../../../Documentation/netlink/specs/netdev.yaml \
> > > > > >      --do queue-get --json '{"ifindex": 3, "id": 1, "type": "rx"}'
> > > > > > 
> > > > > > {'id': 1, 'ifindex': 3, 'napi-id': 162, 'type': 'rx'}
> > > > > > 
> > > > > > $ ./cli.py --spec ../../../Documentation/netlink/specs/netdev.yaml \
> > > > > >      --do napi-get --json '{"id": 162}'
> > > > > > 
> > > > > > {'id': 162, 'ifindex': 3, 'irq': 136}
> > > > > > 
> > > > > > The above output suggests that irq 136 was allocated for queue 1, which has
> > > > > > a NAPI ID of 162.
> > > > > > 
> > > > > > To double check this is correct, the IRQ to queue mapping can be verified
> > > > > > by checking /proc/interrupts:
> > > > > > 
> > > > > > $ cat /proc/interrupts  | grep 136\: | \
> > > > > >      awk '{print "irq: " $1 " name " $76}'
> > > > > > 
> > > > > > irq: 136: name i40e-vlan300-TxRx-1
> > > > > > 
> > > > > > Suggests that queue 1 has IRQ 136, as expected.
> > > > > > 
> > > > > > Signed-off-by: Joe Damato <jdamato@fastly.com>
> > > > > > ---
> > > > > >     drivers/net/ethernet/intel/i40e/i40e.h      |  2 +
> > > > > >     drivers/net/ethernet/intel/i40e/i40e_main.c | 58 +++++++++++++++++++++
> > > > > >     drivers/net/ethernet/intel/i40e/i40e_txrx.c |  4 ++
> > > > > >     3 files changed, 64 insertions(+)
> > > > > > 
> > > > > > diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
> > > > > > index 2fbabcdb5bb5..5900ed5c7170 100644
> > > > > > --- a/drivers/net/ethernet/intel/i40e/i40e.h
> > > > > > +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> > > > > > @@ -1267,6 +1267,8 @@ int i40e_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd);
> > > > > >     int i40e_open(struct net_device *netdev);
> > > > > >     int i40e_close(struct net_device *netdev);
> > > > > >     int i40e_vsi_open(struct i40e_vsi *vsi);
> > > > > > +void i40e_queue_set_napi(struct i40e_vsi *vsi, unsigned int queue_index,
> > > > > > +			 enum netdev_queue_type type, struct napi_struct *napi);
> > > > > >     void i40e_vlan_stripping_disable(struct i40e_vsi *vsi);
> > > > > >     int i40e_add_vlan_all_mac(struct i40e_vsi *vsi, s16 vid);
> > > > > >     int i40e_vsi_add_vlan(struct i40e_vsi *vsi, u16 vid);
> > > > > > diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > > > > > index 0bdcdea0be3e..6384a0c73a05 100644
> > > > > > --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > > > > > +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > > > > > @@ -3448,6 +3448,58 @@ static struct xsk_buff_pool *i40e_xsk_pool(struct i40e_ring *ring)
> > > > > >     	return xsk_get_pool_from_qid(ring->vsi->netdev, qid);
> > > > > >     }
> > > > > > +/**
> > > > > > + * __i40e_queue_set_napi - Set the napi instance for the queue
> > > > > > + * @dev: device to which NAPI and queue belong
> > > > > > + * @queue_index: Index of queue
> > > > > > + * @type: queue type as RX or TX
> > > > > > + * @napi: NAPI context
> > > > > > + * @locked: is the rtnl_lock already held
> > > > > > + *
> > > > > > + * Set the napi instance for the queue. Caller indicates the lock status.
> > > > > > + */
> > > > > > +static void
> > > > > > +__i40e_queue_set_napi(struct net_device *dev, unsigned int queue_index,
> > > > > > +		      enum netdev_queue_type type, struct napi_struct *napi,
> > > > > > +		      bool locked)
> > > > > > +{
> > > > > > +	if (!locked)
> > > > > > +		rtnl_lock();
> > > > > > +	netif_queue_set_napi(dev, queue_index, type, napi);
> > > > > > +	if (!locked)
> > > > > > +		rtnl_unlock();
> > > > > > +}
> > > > > > +
> > > > > > +/**
> > > > > > + * i40e_queue_set_napi - Set the napi instance for the queue
> > > > > > + * @vsi: VSI being configured
> > > > > > + * @queue_index: Index of queue
> > > > > > + * @type: queue type as RX or TX
> > > > > > + * @napi: NAPI context
> > > > > > + *
> > > > > > + * Set the napi instance for the queue. The rtnl lock state is derived from the
> > > > > > + * execution path.
> > > > > > + */
> > > > > > +void
> > > > > > +i40e_queue_set_napi(struct i40e_vsi *vsi, unsigned int queue_index,
> > > > > > +		    enum netdev_queue_type type, struct napi_struct *napi)
> > > > > > +{
> > > > > > +	struct i40e_pf *pf = vsi->back;
> > > > > > +
> > > > > > +	if (!vsi->netdev)
> > > > > > +		return;
> > > > > > +
> > > > > > +	if (current_work() == &pf->service_task ||
> > > > > > +	    test_bit(__I40E_PF_RESET_REQUESTED, pf->state) ||
> > > > > 
> > > > > I think we might need something like ICE_PREPARED_FOR_RESET which detects
> > > > > all kinds of resets(PFR/CORE/GLOBR). __I40E_PF_RESET_REQUESTED handles PFR
> > > > > only. So, this might assert for RTNL lock on CORER/GLOBR.
> > > > 
> > > > The i40e code is a bit tricky so I'm not sure about these cases. Here's
> > > > what it looks like to me, but hopefully Intel can weigh-in here as well.
> > > > 
> > > > As some one who is not an expert in i40e, what follows is a guess that is
> > > > likely wrong ;)
> > > > 
> > > > The __I40E_GLOBAL_RESET_REQUESTED case it looks to me (I could totally
> > > > be wrong here) that the i40e_reset_subtask calls i40e_rebuild with
> > > > lock_acquired = false. In this case, we want __i40e_queue_set_napi to
> > > > pass locked = true (because i40e_rebuild will acquire the lock for us).
> > > > 
> > > > The __I40E_CORE_RESET_REQUESTED case appears to be the same as the
> > > > __I40E_GLOBAL_RESET_REQUESTED case in that i40e_rebuild is called with
> > > > lock_acquired = false meaning we also want __i40e_queue_set_napi to pass
> > > > locked = true (because i40e_rebuild will acquire the lock for us).
> > > > 
> > > > __I40E_PF_RESET_REQUESTED is more complex.
> > > > 
> > > > It seems:
> > > >             When the __I40E_PF_RESET_REQUESTED bit is set in:
> > > >               - i40e_handle_lldp_event
> > > >               - i40e_tx_timeout
> > > >               - i40e_intr
> > > >               - i40e_resume_port_tx
> > > >               - i40e_suspend_port_tx
> > > >               - i40e_hw_dcb_config
> > > > 
> > > >             then: i40e_service_event_schedule is called which queues
> > > >             i40e_service_task, which calls i40e_reset_subtask, which
> > > >             clears the __I40E_PF_RESET_REQUESTED bit and calls
> > > >             i40e_do_reset passing lock_acquired = false. In the
> > > >             __I40E_PF_RESET_REQUESTED case, i40e_reset_and_rebuild
> > > > 	  called with lock_acquired = false again and passed through to
> > > > 	  i40e_rebuild which will take rtnl on its own. This means
> > > >             in these cases, __i40e_queue_set_napi can pass locked = true.
> > > > 
> > > >             However...
> > > > 
> > > >               - i40e_set_features
> > > >               - i40e_ndo_bridge_setlink
> > > >               - i40e_create_queue_channel
> > > >               - i40e_configure_queue_channels
> > > >               - Error case in i40e_vsi_open
> > > > 
> > > >             call i40e_do_reset directly and pass lock_acquired = true so
> > > >             i40e_reset_and_rebuild will not take the RTNL.
> > > > 
> > > > 	  Important assumption: I assume that passing lock_acquired = true
> > > > 	  means that the lock really was previously acquired (and not simply
> > > > 	  unnecessary and not taken ?).
> > > > 
> > > > 	  If that is correct, then __i40e_queue_set_napi should also not take the rtnl (e.g.
> > > >             locked = true).
> > > > 
> > > > Again, I could be totally off here, but it looks like when:
> > > > 
> > > >     (current_work() == &pf->service_task) && test_bit(__I40E_PF_RESET_REQUESTED, pf->state)
> > > > 
> > > > is true, we want to call __i40e_queue_set_napi with locked = true,
> > > > 
> > > > and also all the other cases we want __i40e_queue_set_napi with locked = true
> > > > 
> > > > > > +	    test_bit(__I40E_DOWN, pf->state) ||
> > > > > > +	    test_bit(__I40E_SUSPENDED, pf->state))
> > > > > > +		__i40e_queue_set_napi(vsi->netdev, queue_index, type, napi,
> > > > > > +				      false);
> > > > > > +	else
> > > > > > +		__i40e_queue_set_napi(vsi->netdev, queue_index, type, napi,
> > > > > > +				      true);
> > > > 
> > > > I *think* (but honestly... I have no idea) the correct if statement *might* be
> > > > something like:
> > > > 
> > > >     /* __I40E_PF_RESET_REQUESTED via the service_task will
> > > >      * call i40e_rebuild with lock_acquired = false, causing rtnl to be
> > > >      * taken, meaning __i40e_queue_set_napi should *NOT* take the lock.
> > > >      *
> > > >      * __I40E_PF_RESET_REQUESTED when set directly and not via the
> > > >      * service task, i40e_reset is called with lock_acquired = true,
> > > >      * implying that the rtnl was already taken (and, more
> > > >      * specifically, the lock was not simply unnecessary and skipped)
> > > >      * and so __i40e_queue_set_napi should *NOT* take the lock.
> > > >      *
> > > >      * __I40E_GLOBAL_RESET_REQUESTED and __I40E_CORE_RESET_REQUESTED
> > > >      * trigger the service_task (via i40e_intr) which will cause
> > > >      * i40e_rebuild to acquire rtnl and so __i40e_queue_set_napi should
> > > >      * not acquire it.
> > > >      */
> > > >     if (current_work() == &pf->service_task ||
> > > >         test_bit(__I40E_PF_RESET_REQUESTED, pf->state) ||
> > > >         test_bit(__I40E_GLOBAL_RESET_REQUESTED, pf->state) ||
> > > >         test_bit(__I40E_CORE_RESET_REQUESTED, pf->state))
> > > >             __i40e_queue_set_napi(vsi->netdev, queue_index, type, napi,
> > > >                                   true);
> > > >     else if (test_bit(__I40E_DOWN, pf->state) ||
> > > >              test_bit(__I40E_SUSPENDED, pf->state))
> > > >             __i40e_queue_set_napi(vsi->netdev, queue_index, type, napi,
> > > >                                   false);
> > > >     else
> > > >             __i40e_queue_set_napi(vsi->netdev, queue_index, type, napi,
> > > >                                   true);
> > > > 
> > > > I suppose to figure this out, I'd need to investigate all cases where
> > > > i40e_rebuild is called with lock_acquired = true to ensure that the lock was
> > > > actually acquired (and not just unnecessary).
> > > > 
> > > > Unless some one who knows about i40e can answer this question more
> > > > definitively.
> > > > 
> > > 
> > > I'll wait for the i40e maintainers to chime in here.
> > 
> > Based on the findings of I40E_SUSPENDED below, the above if statement is
> > still slightly incorrect, please see below.
> > 
> > > > > > +}
> > > > > > +
> > > > > >     /**
> > > > > >      * i40e_configure_tx_ring - Configure a transmit ring context and rest
> > > > > >      * @ring: The Tx ring to configure
> > > > > > @@ -3558,6 +3610,8 @@ static int i40e_configure_tx_ring(struct i40e_ring *ring)
> > > > > >     	/* cache tail off for easier writes later */
> > > > > >     	ring->tail = hw->hw_addr + I40E_QTX_TAIL(pf_q);
> > > > > > +	i40e_queue_set_napi(vsi, ring->queue_index, NETDEV_QUEUE_TYPE_TX,
> > > > > > +			    &ring->q_vector->napi);
> > > > > 
> > > > > I am not sure very sure of this, have you tested this for the reset/rebuild
> > > > > path as well (example: ethtool -L and change queues). Just wondering if this
> > > > > path is taken for first time VSI init or additionally for any VSI rebuilds
> > > > > as well.
> > > > 
> > > > Can you explain more about what your concern is? I'm not sure I follow.
> > > > Was the concern just that on rebuild this code path might not be
> > > > executed because the driver might take a different path?
> > > > 
> > > > If so, I traced the code (and tested with ethtool):
> > > > 
> > > > When the device is probed:
> > > > 
> > > > i40e_probe
> > > >     i40e_vsi_open
> > > >       i40e_vsi_configure
> > > >         i40e_vsi_configure_rx
> > > >           i40e_configure_rx_ring
> > > >         i40e_vsi_configure_tx
> > > >           i40e_configure_tx_ring
> > > > 
> > > > When you use ethtool to change the channel count:
> > > > 
> > > > i40e_set_channels
> > > >     i40e_reconfig_rss_queues
> > > >       i40e_reset_and_rebuild
> > > >         i40e_rebuild
> > > >           i40e_pf_unquiesce_all_vsi
> > > >             i40e_unquiesce_vsi
> > > >               i40e_vsi_open
> > > >                 [.. the call stack above for i40e_vsi_open ..]
> > > > 
> > > > Are those the two paths you had in mind or were there other ones? FWIW, using
> > > > ethtool to change the channel count followed by using the cli.py returns what
> > > > appears to be correct data, so I think the ethtool -L case is covered.
> > > > 
> > > 
> > > Yes, this is what I had mind. Good to know that it is covered.
> > 
> > Thanks for the thorough review; I appreciate your insight. The more I look
> > at the i40e code paths, the more I realize that it is much trickier than I
> > originally thought.
> > 
> > > > Let me know if I am missing any cases you had in mind or if this answers your
> > > > question.
> > > > 
> > > 
> > > One other case was the suspend/resume callback. This path involves remapping
> > > vectors and rings (just like rebuild after changing channels), If this takes
> > > the i40e_rebuild path like before, then we are covered, as your changes are
> > > in i40e_vsi_configure. If not, we'll have to add it after re-initializing
> > > interrupt scheme .
> > 
> > Here's what I see in this path, namely that i40e_suspend does not call
> > i40e_queue_set_napi but sets appropriate bits that can be checked.
> > 
> > i40e_suspend:
> >    __I40E_DOWN is set
> >    __I40E_SUSPENDED is set
> >    rtnl_lock
> >      i40e_clear_interrupt_scheme
> >        i40e_vsi_free_q_vectors
> >          i40e_free_q_vector
> >    rtnl_unlock
> > 
> > It seems in the suspend case the i40e_free_rx_resources and
> > i40e_free_tx_resources are not called. This means I probably missed a case
> > and need to call i40e_queue_set_napi to set the NAPI mapping to NULL
> > somewhere in here without calling it twice. See further below for my
> > thoughts on this.
> > 
> > Continuing with resume, though:
> > 
> > i40e_resume:
> >    rtnl_lock
> >      i40e_restore_interrupt_scheme
> >        i40e_vsi_alloc_q_vectors
> >          i40e_vsi_alloc_q_vector
> >      __I40E_DOWN is cleared
> >      i40e_reset_and_rebuild (passes lock_acquired = true)
> >        i40e_rebuild (passes locked_acquired = true)
> >     rtnl_unlock
> >     __I40E_SUSPENDED is cleared
> > 
> > So, in this case i40e_resume would want to to call __i40e_queue_set_napi
> > with locked = true, to avoid rtnl since it's already been taken. I think to
> > cover this case __I40E_SUSPENDED needs to be checked but true can be passed
> > to the helper to avoid taking rtnl in the helper.
> > 
> > This is an adjusted if statement, which is likely still incorrect in some
> > cases (especially when considering my comments below on the
> > i40e_free_[rt]x_resource paths), but maybe getting slightly closer:
> > 
> >    /* __I40E_PF_RESET_REQUESTED via the service_task will
> >     * call i40e_rebuild with lock_acquired = false, causing rtnl to be
> >     * taken, meaning __i40e_queue_set_napi should *NOT* take the lock.
> >     *
> >     * __I40E_PF_RESET_REQUESTED when set directly and not via the
> >     * service task, i40e_reset is called with lock_acquired = true,
> >     * implying that the rtnl was already taken (and, more
> >     * specifically, the lock was not simply unnecessary and skipped)
> >     * and so __i40e_queue_set_napi should *NOT* take the lock.
> >     *
> >     * __I40E_GLOBAL_RESET_REQUESTED and __I40E_CORE_RESET_REQUESTED
> >     * trigger the service_task (via i40e_intr) which will cause
> >     * i40e_rebuild to acquire rtnl and so __i40e_queue_set_napi should
> >     * not acquire it.
> >     *
> >     * __I40E_SUSPENDED is set in i40e_suspend and cleared in i40e_resume
> >     * after rtnl_lock + i40_rebuild (with lock_acquired = true). In
> >     * i40e_resume's call to i40e_rebuild, rtnl is held so
> >     * __i40e_queue_set_napi should not take the lock, either.
> >     *
> >     * __I40E_IN_REMOVE is set in i40e_remove, and freeing the tx/rx
> >     * resources will trigger this path. In this case, rtnl will not be held,
> >     * so locked=false must be passed to the helper.
> >     *
> >     * __I40E_DOWN is set in a few places: i40e_probe, i40e_remove,
> >     * i40e_shutdown, i40e_suspend. It is only cleared in i40e_probe after
> >     * the vsi_open path is taken (in this case rtnl is needed) and it is
> >     * cleared in i40e_resume, where RTNL is not needed, but the i40e_resume
> >     * case is handled by checking __I40E_SUSPENDED in the first if block.
> >     */
> >    if (current_work() == &pf->service_task ||
> >        test_bit(__I40E_PF_RESET_REQUESTED, pf->state) ||
> >        test_bit(__I40E_GLOBAL_RESET_REQUESTED, pf->state) ||
> >        test_bit(__I40E_CORE_RESET_REQUESTED, pf->state) |
> >        test_bit(__I40E_SUSPENDED, pf->state))
> >            __i40e_queue_set_napi(vsi->netdev, queue_index, type, napi,
> >                                  true);
> >    else if (test_bit(__I40E_IN_REMOVE, pf->state) ||
> >             test_bit(__I40E_DOWN, pf->state))
> >            __i40e_queue_set_napi(vsi->netdev, queue_index, type, napi,
> >                                  false);
> >    else
> >            __i40e_queue_set_napi(vsi->netdev, queue_index, type, napi,
> >                                  true);
> > 
> > 
> > But please see below about i40e_free_q_vector.
> > 
> > > > > >     	return 0;
> > > > > >     }
> > > > > > @@ -3716,6 +3770,8 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
> > > > > >     			 ring->queue_index, pf_q);
> > > > > >     	}
> > > > > > +	i40e_queue_set_napi(vsi, ring->queue_index, NETDEV_QUEUE_TYPE_RX,
> > > > > > +			    &ring->q_vector->napi);
> > > > > > 
> > > > > Same as above.
> > > > > 
> > > > >     	return 0;
> > > > > >     }
> > > > > > @@ -4178,6 +4234,8 @@ static int i40e_vsi_request_irq_msix(struct i40e_vsi *vsi, char *basename)
> > > > > >     		q_vector->affinity_notify.notify = i40e_irq_affinity_notify;
> > > > > >     		q_vector->affinity_notify.release = i40e_irq_affinity_release;
> > > > > >     		irq_set_affinity_notifier(irq_num, &q_vector->affinity_notify);
> > > > > > +		netif_napi_set_irq(&q_vector->napi, q_vector->irq_num);
> > > > > > +
> > > > > >     		/* Spread affinity hints out across online CPUs.
> > > > > >     		 *
> > > > > >     		 * get_cpu_mask returns a static constant mask with
> > > > > > diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > > > > > index 64d198ed166b..d380885ff26d 100644
> > > > > > --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > > > > > +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > > > > > @@ -821,6 +821,8 @@ void i40e_clean_tx_ring(struct i40e_ring *tx_ring)
> > > > > >     void i40e_free_tx_resources(struct i40e_ring *tx_ring)
> > > > > >     {
> > > > > >     	i40e_clean_tx_ring(tx_ring);
> > > > > > +	i40e_queue_set_napi(tx_ring->vsi, tx_ring->queue_index,
> > > > > > +			    NETDEV_QUEUE_TYPE_TX, NULL);
> > > > > >     	kfree(tx_ring->tx_bi);
> > > > > >     	tx_ring->tx_bi = NULL;
> > > > > > @@ -1526,6 +1528,8 @@ void i40e_clean_rx_ring(struct i40e_ring *rx_ring)
> > > > > >     void i40e_free_rx_resources(struct i40e_ring *rx_ring)
> > > > > >     {
> > > > > >     	i40e_clean_rx_ring(rx_ring);
> > > > > > +	i40e_queue_set_napi(rx_ring->vsi, rx_ring->queue_index,
> > > > > > +			    NETDEV_QUEUE_TYPE_RX, NULL);
> > 
> > It appears to me that some cases may not end up calling
> > i40e_free_tx_resources or i40e_free_rx_resources, but most (or all?) cases
> > do call i40e_free_q_vector which is where the NAPI is deleted.
> > 
> > It probably makes more sense to put the NULL setting where the NAPI delete
> > happens, and then check those paths to see where rtnl is taken and make
> > sure the bit checking in the if statement lines up properly.
> > 
> > Before I go any deeper down this rabbit hole, I'll wait to see what the
> > i40e maintainers say / think about this.
> 
> + Alex for input

Just wanted to follow up on this; would really appreciate any
insight or advice you all can give me before I try posting another
version.

We'd really love to have support for these APIs in i40e, because we
have a lot of machines with this NIC in our fleet.

Thanks,
Joe
