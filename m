Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 512EC9B4D37
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Oct 2024 16:12:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F39A5810AA;
	Tue, 29 Oct 2024 15:12:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3xAMWoX0Kk5Y; Tue, 29 Oct 2024 15:12:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7946A810B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730214769;
	bh=Ex1rmyZkmwqDNLUJxxrioL4AYIw4oAzp5IE6ZWCPO/w=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pRAUimM9HhPbOr9ApDwWTQf3K49TBO4ssee7FL6m88uamEBagLPJGbb2zFJZyz5MW
	 ZrOp0JIv3fby5p1EKuxpbie1AE6o31X9uMqyLFS5qvPbSyzuUsoqMzulyG0m3fHH3s
	 6ZwSkyV2U1Kt/ViBCitm6IYgWX8dH23Kh7/r6TnTLuhonyhdeG5xAuNLdLSfjxB26x
	 dRyhLGkJ+Jtc9mJ9lW7fI7IrpvH8JZvisEjwiGsf72W/vdHavPu22SRJ9Rajv5960r
	 6D4YPd9lk8aTjwdvraR+ZkEvUMCQRPsnSUkEpsQVeqmM56RNareG6ibWGx/F60+Qa/
	 +/+opyB8toywg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7946A810B0;
	Tue, 29 Oct 2024 15:12:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 877B7AEE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 15:12:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7474440465
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 15:12:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AiXuwTuvgE6C for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Oct 2024 15:12:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::435; helo=mail-pf1-x435.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9D1E440A24
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D1E440A24
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com
 [IPv6:2607:f8b0:4864:20::435])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9D1E440A24
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 15:12:45 +0000 (UTC)
Received: by mail-pf1-x435.google.com with SMTP id
 d2e1a72fcca58-7203c431f93so4447565b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 08:12:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1730214765; x=1730819565;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Ex1rmyZkmwqDNLUJxxrioL4AYIw4oAzp5IE6ZWCPO/w=;
 b=gY5vC7hOcUXl+kq59XyLkVdXTosBHJdgnlegsNmokpZWMv/7RiUvlbkn3IlGKDq/2q
 6lHIXCy58AmbGPbt4MTKel/BY4TmIHxvSMF4OGwtd/fkn1dz1uOUt19OYW96K13qMREs
 3cxLim7sHRe1HO8RKKGdealCHMUYsAVEe69RasmZKvvu5biA83DkmOafU+2nygyLPAg/
 h+aH6Qbba9FUx51oAirLzXItyJxeDNQVWtfFT+YfEnyF43YkKqAljVDsfutODhwiXDpd
 DUEuTtBV1mWO6sopFs+a0wTKyTr3Ioo7NzPFOutHaRZvf7YFGkEx0a1b2AfCStWPHBZM
 KXaA==
X-Forwarded-Encrypted: i=1;
 AJvYcCV4bv1wmn+19rgyBO+Bi5b3T2hs70pghPg+F+BppCstrbTwMC+E9CU2c61dnKgLIbeG8oIPI4Ee9akkSalOjH8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyNytzXMePSyC2BGLBPjNuy5NyGvihH/u6ifX5gbzJr0h/o26LQ
 75JPG34+xtcxOtX4pj3vCtWEGgNLzDmadKAIieIgFwe2CqxyzPI+Qp/gB+8vhQw=
X-Google-Smtp-Source: AGHT+IHNpotb0sKenFY/cbENmq1YwjDTtTxVrPeETvhJySYF2srKlpjG2wklHdoFEJG0WDDUCmKrYQ==
X-Received: by 2002:a05:6a00:39a8:b0:71e:744a:3fbc with SMTP id
 d2e1a72fcca58-7206306efbemr16239558b3a.21.1730214764577; 
 Tue, 29 Oct 2024 08:12:44 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7205793272bsm7626695b3a.69.2024.10.29.08.12.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2024 08:12:44 -0700 (PDT)
Date: Tue, 29 Oct 2024 08:12:41 -0700
From: Joe Damato <jdamato@fastly.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Cc: netdev@vger.kernel.org, jacob.e.keller@intel.com, kurt@linutronix.de,
 vinicius.gomes@intel.com, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:XDP (eXpress Data Path)" <bpf@vger.kernel.org>
Message-ID: <ZyD7aUc-tt_v3yda@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 netdev@vger.kernel.org, jacob.e.keller@intel.com,
 kurt@linutronix.de, vinicius.gomes@intel.com,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:XDP (eXpress Data Path)" <bpf@vger.kernel.org>
References: <20241028195243.52488-1-jdamato@fastly.com>
 <20241028195243.52488-3-jdamato@fastly.com>
 <f02044c0-1d90-49f8-8a2d-00ec84fba27a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f02044c0-1d90-49f8-8a2d-00ec84fba27a@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1730214765; x=1730819565; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Ex1rmyZkmwqDNLUJxxrioL4AYIw4oAzp5IE6ZWCPO/w=;
 b=iu9cUGRcO2NY5cF6PH1c+PZilm/IizQZnNiVrHMnemK5IS6lBXfOeGxaNszrWYs+Nq
 6xy+utDfn8TpptxY1GdAoCNKD/vXOEVyW20F6LNK9eoUcLNCQONfPypD3nDg5xgk9MSp
 vyEpjSOT2gaMdXf8OiprAuV0xvjCLIeg2sVZE=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=iu9cUGRc
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 2/2] igc: Link queues to
 NAPI instances
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

On Tue, Oct 29, 2024 at 11:49:03AM +0200, Lifshits, Vitaly wrote:
> 
> 
> On 10/28/2024 9:52 PM, Joe Damato wrote:
> > Link queues to NAPI instances via netdev-genl API so that users can
> > query this information with netlink. Handle a few cases in the driver:
> >    1. Link/unlink the NAPIs when XDP is enabled/disabled
> >    2. Handle IGC_FLAG_QUEUE_PAIRS enabled and disabled
> > 
> > Example output when IGC_FLAG_QUEUE_PAIRS is enabled:
> > 
> > $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
> >                           --dump queue-get --json='{"ifindex": 2}'
> > 
> > [{'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
> >   {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'rx'},
> >   {'id': 2, 'ifindex': 2, 'napi-id': 8195, 'type': 'rx'},
> >   {'id': 3, 'ifindex': 2, 'napi-id': 8196, 'type': 'rx'},
> >   {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'tx'},
> >   {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'tx'},
> >   {'id': 2, 'ifindex': 2, 'napi-id': 8195, 'type': 'tx'},
> >   {'id': 3, 'ifindex': 2, 'napi-id': 8196, 'type': 'tx'}]
> > 
> > Since IGC_FLAG_QUEUE_PAIRS is enabled, you'll note that the same NAPI ID
> > is present for both rx and tx queues at the same index, for example
> > index 0:
> > 
> > {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
> > {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'tx'},
> > 
> > To test IGC_FLAG_QUEUE_PAIRS disabled, a test system was booted using
> > the grub command line option "maxcpus=2" to force
> > igc_set_interrupt_capability to disable IGC_FLAG_QUEUE_PAIRS.
> > 
> > Example output when IGC_FLAG_QUEUE_PAIRS is disabled:
> > 
> > $ lscpu | grep "On-line CPU"
> > On-line CPU(s) list:      0,2
> > 
> > $ ethtool -l enp86s0  | tail -5
> > Current hardware settings:
> > RX:		n/a
> > TX:		n/a
> > Other:		1
> > Combined:	2
> > 
> > $ cat /proc/interrupts  | grep enp
> >   144: [...] enp86s0
> >   145: [...] enp86s0-rx-0
> >   146: [...] enp86s0-rx-1
> >   147: [...] enp86s0-tx-0
> >   148: [...] enp86s0-tx-1
> > 
> > 1 "other" IRQ, and 2 IRQs for each of RX and Tx, so we expect netlink to
> > report 4 IRQs with unique NAPI IDs:
> > 
> > $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
> >                           --dump napi-get --json='{"ifindex": 2}'
> > [{'id': 8196, 'ifindex': 2, 'irq': 148},
> >   {'id': 8195, 'ifindex': 2, 'irq': 147},
> >   {'id': 8194, 'ifindex': 2, 'irq': 146},
> >   {'id': 8193, 'ifindex': 2, 'irq': 145}]
> > 
> > Now we examine which queues these NAPIs are associated with, expecting
> > that since IGC_FLAG_QUEUE_PAIRS is disabled each RX and TX queue will
> > have its own NAPI instance:
> > 
> > $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
> >                           --dump queue-get --json='{"ifindex": 2}'
> > [{'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
> >   {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'rx'},
> >   {'id': 0, 'ifindex': 2, 'napi-id': 8195, 'type': 'tx'},
> >   {'id': 1, 'ifindex': 2, 'napi-id': 8196, 'type': 'tx'}]
> > 
> > Signed-off-by: Joe Damato <jdamato@fastly.com>
> > ---
> >   v5:
> >     - Rename igc_resume to __igc_do_resume and pass in a boolean
> >       "need_rtnl" to signal whether or not rtnl should be held before
> >       caling __igc_open. Call this new function from igc_runtime_resume
> >       and igc_resume passing in false (for igc_runtime_resume) and true
> >       (igc_resume), respectively. This is done to avoid reintroducing a
> >       bug fixed in commit: 6f31d6b: "igc: Refactor runtime power
> >       management flow" where rtnl is held in runtime_resume causing a
> >       deadlock.
> > 
> >   v4:
> >     - Add rtnl_lock/rtnl_unlock in two paths: igc_resume and
> >       igc_io_error_detected. The code added to the latter is inspired by
> >       a similar implementation in ixgbe's ixgbe_io_error_detected.
> > 
> >   v3:
> >     - Replace igc_unset_queue_napi with igc_set_queue_napi(adapater, i,
> >       NULL), as suggested by Vinicius Costa Gomes
> >     - Simplify implemention of igc_set_queue_napi as suggested by Kurt
> >       Kanzenbach, with a tweak to use ring->queue_index
> > 
> >   v2:
> >     - Update commit message to include tests for IGC_FLAG_QUEUE_PAIRS
> >       disabled
> >     - Refactored code to move napi queue mapping and unmapping to helper
> >       functions igc_set_queue_napi and igc_unset_queue_napi
> >     - Adjust the code to handle IGC_FLAG_QUEUE_PAIRS disabled
> >     - Call helpers to map/unmap queues to NAPIs in igc_up, __igc_open,
> >       igc_xdp_enable_pool, and igc_xdp_disable_pool
> > 
> >   drivers/net/ethernet/intel/igc/igc.h      |  2 +
> >   drivers/net/ethernet/intel/igc/igc_main.c | 52 ++++++++++++++++++++---
> >   drivers/net/ethernet/intel/igc/igc_xdp.c  |  2 +
> >   3 files changed, 49 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> > index eac0f966e0e4..b8111ad9a9a8 100644
> > --- a/drivers/net/ethernet/intel/igc/igc.h
> > +++ b/drivers/net/ethernet/intel/igc/igc.h
> > @@ -337,6 +337,8 @@ struct igc_adapter {
> >   	struct igc_led_classdev *leds;
> >   };
> > +void igc_set_queue_napi(struct igc_adapter *adapter, int q_idx,
> > +			struct napi_struct *napi);
> >   void igc_up(struct igc_adapter *adapter);
> >   void igc_down(struct igc_adapter *adapter);
> >   int igc_open(struct net_device *netdev);
> > diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> > index 7964bbedb16c..051a0cdb1143 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> > @@ -4948,6 +4948,22 @@ static int igc_sw_init(struct igc_adapter *adapter)
> >   	return 0;
> >   }
> > +void igc_set_queue_napi(struct igc_adapter *adapter, int vector,
> > +			struct napi_struct *napi)
> > +{
> > +	struct igc_q_vector *q_vector = adapter->q_vector[vector];
> > +
> > +	if (q_vector->rx.ring)
> > +		netif_queue_set_napi(adapter->netdev,
> > +				     q_vector->rx.ring->queue_index,
> > +				     NETDEV_QUEUE_TYPE_RX, napi);
> > +
> > +	if (q_vector->tx.ring)
> > +		netif_queue_set_napi(adapter->netdev,
> > +				     q_vector->tx.ring->queue_index,
> > +				     NETDEV_QUEUE_TYPE_TX, napi);
> > +}
> > +
> >   /**
> >    * igc_up - Open the interface and prepare it to handle traffic
> >    * @adapter: board private structure
> > @@ -4955,6 +4971,7 @@ static int igc_sw_init(struct igc_adapter *adapter)
> >   void igc_up(struct igc_adapter *adapter)
> >   {
> >   	struct igc_hw *hw = &adapter->hw;
> > +	struct napi_struct *napi;
> >   	int i = 0;
> >   	/* hardware has been reset, we need to reload some things */
> > @@ -4962,8 +4979,11 @@ void igc_up(struct igc_adapter *adapter)
> >   	clear_bit(__IGC_DOWN, &adapter->state);
> > -	for (i = 0; i < adapter->num_q_vectors; i++)
> > -		napi_enable(&adapter->q_vector[i]->napi);
> > +	for (i = 0; i < adapter->num_q_vectors; i++) {
> > +		napi = &adapter->q_vector[i]->napi;
> > +		napi_enable(napi);
> > +		igc_set_queue_napi(adapter, i, napi);
> > +	}
> >   	if (adapter->msix_entries)
> >   		igc_configure_msix(adapter);
> > @@ -5192,6 +5212,7 @@ void igc_down(struct igc_adapter *adapter)
> >   	for (i = 0; i < adapter->num_q_vectors; i++) {
> >   		if (adapter->q_vector[i]) {
> >   			napi_synchronize(&adapter->q_vector[i]->napi);
> > +			igc_set_queue_napi(adapter, i, NULL);
> >   			napi_disable(&adapter->q_vector[i]->napi);
> >   		}
> >   	}
> > @@ -6021,6 +6042,7 @@ static int __igc_open(struct net_device *netdev, bool resuming)
> >   	struct igc_adapter *adapter = netdev_priv(netdev);
> >   	struct pci_dev *pdev = adapter->pdev;
> >   	struct igc_hw *hw = &adapter->hw;
> > +	struct napi_struct *napi;
> >   	int err = 0;
> >   	int i = 0;
> > @@ -6056,8 +6078,11 @@ static int __igc_open(struct net_device *netdev, bool resuming)
> >   	clear_bit(__IGC_DOWN, &adapter->state);
> > -	for (i = 0; i < adapter->num_q_vectors; i++)
> > -		napi_enable(&adapter->q_vector[i]->napi);
> > +	for (i = 0; i < adapter->num_q_vectors; i++) {
> > +		napi = &adapter->q_vector[i]->napi;
> > +		napi_enable(napi);
> > +		igc_set_queue_napi(adapter, i, napi);
> > +	}
> >   	/* Clear any pending interrupts. */
> >   	rd32(IGC_ICR);
> > @@ -7342,7 +7367,7 @@ static void igc_deliver_wake_packet(struct net_device *netdev)
> >   	netif_rx(skb);
> >   }
> > -static int igc_resume(struct device *dev)
> > +static int __igc_do_resume(struct device *dev, bool need_rtnl)
> >   {
> >   	struct pci_dev *pdev = to_pci_dev(dev);
> >   	struct net_device *netdev = pci_get_drvdata(pdev);
> > @@ -7385,7 +7410,11 @@ static int igc_resume(struct device *dev)
> >   	wr32(IGC_WUS, ~0);
> >   	if (netif_running(netdev)) {
> > +		if (need_rtnl)
> > +			rtnl_lock();
> >   		err = __igc_open(netdev, true);
> > +		if (need_rtnl)
> > +			rtnl_unlock();
> >   		if (!err)
> >   			netif_device_attach(netdev);
> >   	}
> > @@ -7393,9 +7422,14 @@ static int igc_resume(struct device *dev)
> >   	return err;
> >   }
> > +static int igc_resume(struct device *dev)
> > +{
> > +	return __igc_do_resume(dev, true);
> > +}
> > +
> >   static int igc_runtime_resume(struct device *dev)
> >   {
> > -	return igc_resume(dev);
> > +	return __igc_do_resume(dev, false);
> >   }
> >   static int igc_suspend(struct device *dev)
> > @@ -7440,14 +7474,18 @@ static pci_ers_result_t igc_io_error_detected(struct pci_dev *pdev,
> >   	struct net_device *netdev = pci_get_drvdata(pdev);
> >   	struct igc_adapter *adapter = netdev_priv(netdev);
> > +	rtnl_lock();
> >   	netif_device_detach(netdev);
> > -	if (state == pci_channel_io_perm_failure)
> > +	if (state == pci_channel_io_perm_failure) {
> > +		rtnl_unlock();
> >   		return PCI_ERS_RESULT_DISCONNECT;
> > +	}
> >   	if (netif_running(netdev))
> >   		igc_down(adapter);
> >   	pci_disable_device(pdev);
> > +	rtnl_unlock();
> >   	/* Request a slot reset. */
> >   	return PCI_ERS_RESULT_NEED_RESET;
> > diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.c b/drivers/net/ethernet/intel/igc/igc_xdp.c
> > index e27af72aada8..4da633430b80 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_xdp.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_xdp.c
> > @@ -84,6 +84,7 @@ static int igc_xdp_enable_pool(struct igc_adapter *adapter,
> >   		napi_disable(napi);
> >   	}
> > +	igc_set_queue_napi(adapter, queue_id, NULL);
> >   	set_bit(IGC_RING_FLAG_AF_XDP_ZC, &rx_ring->flags);
> >   	set_bit(IGC_RING_FLAG_AF_XDP_ZC, &tx_ring->flags);
> > @@ -133,6 +134,7 @@ static int igc_xdp_disable_pool(struct igc_adapter *adapter, u16 queue_id)
> >   	xsk_pool_dma_unmap(pool, IGC_RX_DMA_ATTR);
> >   	clear_bit(IGC_RING_FLAG_AF_XDP_ZC, &rx_ring->flags);
> >   	clear_bit(IGC_RING_FLAG_AF_XDP_ZC, &tx_ring->flags);
> > +	igc_set_queue_napi(adapter, queue_id, napi);
> >   	if (needs_reset) {
> >   		napi_enable(napi);
> 
> I believe that this fix should work on most cases. I have some concerns that
> this solution might not be 100% robust as sometimes runtime resume may be
> triggered without the rtnl being held. For example, if it is initiated by a
> network wake event. But, for the moment I think that this appoach is good
> enough.
>
> My main comment here is the naming conventions, I prefer using the original
> parameters/function names for consistency, similarly to what was done in the
> igb driver:
> https://github.com/torvalds/linux/commit/ac8c58f5b535d6272324e2b8b4a0454781c9147e

Sorry, can you be more specific on what the naming issue is?

Do you want me to resubmit this with "__igc_do_resume" renamed to
"__igc_resume" and "bool need_rtnl" renamed to "bool rpm" or
something else?
