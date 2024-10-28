Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8922E9B355F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Oct 2024 16:50:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3954E80EFC;
	Mon, 28 Oct 2024 15:50:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cWKZJ-4EzG3u; Mon, 28 Oct 2024 15:50:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E478180EF1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730130647;
	bh=FnWrBI/Ng0ohLOMbR5pqja8Ic94slwd/ycmRHXmbqDY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FnWZAM3GA2aaLer5WCbJHb7VfV7E+62QB2NEJmMxf/Rb1bw8Y31A9iJVxVtAmTd8/
	 7GOuJ8bxiaPGPxKwmnpqowpQAU8ZGIUj66gKC4JzS8nDhd1ezrT1bu/W5ibmvQgvKM
	 iNDAuic1MiOgrRnl9/yZeD9uwvBloSBylfT8ThVKYfg3UywcYoQ3grK+bypGwOYOPT
	 JjjbdGcu4fBRptaae/SHkOsMF4ZpoL2gv5eNSTBS5RUe58IE4MGZLfFAwxv3uNWzHD
	 DQB5Rgvman15YkrH9IjPdSjfrW27/G67C3oYRLQF07/pNtvzk7JXXzk08qIGcfLvCB
	 oR6/TIsBJHOSg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E478180EF1;
	Mon, 28 Oct 2024 15:50:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 252D4112A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 15:50:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 05695403AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 15:50:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id trdlQnl7VVlM for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Oct 2024 15:50:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::102d; helo=mail-pj1-x102d.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F3C2E400D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F3C2E400D8
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com
 [IPv6:2607:f8b0:4864:20::102d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F3C2E400D8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 15:50:42 +0000 (UTC)
Received: by mail-pj1-x102d.google.com with SMTP id
 98e67ed59e1d1-2e34a089cd3so3642160a91.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 08:50:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1730130642; x=1730735442;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=FnWrBI/Ng0ohLOMbR5pqja8Ic94slwd/ycmRHXmbqDY=;
 b=MRq15ZDoHTcieY8vjJZ+fJDISZiWTedrMYLAgms9waTqLiwGTpiew8bAeLtxgqPBc/
 iEA2u7H+mfNvaHtY0dwFd/yiLMt/1kW2QdujS0FcndAieLHZDyhPeqFEc7ZpBtqdvDo2
 xDcYL9OCXXAMlLeh5W9GIaB+aMoSJq2zRIpS+KI85RfmOWXiIoL5GVbQ+7yIG/+pMKO9
 9Z8neovBPAvut/LnmNM0kicc/oVDSU4HHaK0OTrAVrOLw7wP6S6rttF3No9yN7FlebTe
 nQ1Kp+baui8bDNs0NETO2fQymsczcLM7zwdq8NWLB3dHMhCdWvkCWLp7mkRyV0WnkOUp
 iPMA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUMH9QFm7ZCxX1L3Lhj/Dr5GO6EPFmsPF729fvvzPMNkIY++FUMzJ4uyWkuaPei3hl2IQh4wZXO08fzR6PbRd8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxK+qsO0obZrWj4A7OPuT/9OR1H9foQlqJeJobdOm8wFVxw0DjZ
 BxaLbDLIp6HYg3KdR3/5gbnelJ3tMacB0r8ec4xJfhbayrL0yuDqJwzZg17AA5s=
X-Google-Smtp-Source: AGHT+IF3/TCUpiKd84EFsAhToNlikdsicPBU+qdfa1uLxwqiByy2S0dHIBV5Oh8nWhYJGeniWTavIQ==
X-Received: by 2002:a17:90b:3654:b0:2e0:7b2b:f76 with SMTP id
 98e67ed59e1d1-2e8f1072f43mr10157236a91.19.1730130641962; 
 Mon, 28 Oct 2024 08:50:41 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2e8e3555c1dsm7314523a91.4.2024.10.28.08.50.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2024 08:50:41 -0700 (PDT)
Date: Mon, 28 Oct 2024 08:50:38 -0700
From: Joe Damato <jdamato@fastly.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "kurt@linutronix.de" <kurt@linutronix.de>,
 "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
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
 "open list:XDP (eXpress Data Path)" <bpf@vger.kernel.org>,
 stanislaw.gruszka@linux.intel.com
Message-ID: <Zx-yzhq4unv0gsVX@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "kurt@linutronix.de" <kurt@linutronix.de>,
 "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
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
 "open list:XDP (eXpress Data Path)" <bpf@vger.kernel.org>,
 stanislaw.gruszka@linux.intel.com
References: <20241022215246.307821-1-jdamato@fastly.com>
 <20241022215246.307821-3-jdamato@fastly.com>
 <d7799132-7e4a-0ac2-cbda-c919ce434fe2@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d7799132-7e4a-0ac2-cbda-c919ce434fe2@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1730130642; x=1730735442; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=FnWrBI/Ng0ohLOMbR5pqja8Ic94slwd/ycmRHXmbqDY=;
 b=gUGTVgcBeRpR0HNYhZXYDJuoKV7Tyi8I4pAh2WLLSBOxSy8EfTSDDw46vDU7BRe9sh
 8ghi1PLXscJBK1sFHknTUWSK9bnog9iiAAa5dS88fFZOuAoQtQDRCtDLepZs/l2GP/f4
 fMmyAm3cC9+Wtt8cgOSJczMBuD8jAcQ0xnC6I=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=gUGTVgcB
Subject: Re: [Intel-wired-lan] [iwl-next v4 2/2] igc: Link queues to NAPI
 instances
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

On Sun, Oct 27, 2024 at 11:49:33AM +0200, Lifshits, Vitaly wrote:
> 
> On 10/23/2024 12:52 AM, Joe Damato wrote:
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
> > Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> > ---
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
> >   drivers/net/ethernet/intel/igc/igc.h      |  2 ++
> >   drivers/net/ethernet/intel/igc/igc_main.c | 41 ++++++++++++++++++++---
> >   drivers/net/ethernet/intel/igc/igc_xdp.c  |  2 ++
> >   3 files changed, 40 insertions(+), 5 deletions(-)
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
> > index 7964bbedb16c..04aa216ef612 100644
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
> > @@ -7385,7 +7410,9 @@ static int igc_resume(struct device *dev)
> >   	wr32(IGC_WUS, ~0);
> >   	if (netif_running(netdev)) {
> > +		rtnl_lock();
> 
> This change will bring back the deadlock issue that was fixed in commit:
> 6f31d6b: "igc: Refactor runtime power management flow".

OK, thanks for letting me know.

I think I better understand what the issue is. It seems that:

- igc_resume can be called with rtnl held via ethtool (which I
  didn't know), which calls __igc_open
- __igc_open re-enables NAPIs and re-links queues to NAPI IDs (which
  requires rtnl)

so, it seems like the rtnl_lock() I've added to igc_resume is
unnecessary.

I suppose I don't know all of the paths where the pm functions can
be called -- are there others where RTNL is _not_ already held?

I looked at e1000e and it seems that driver does not re-enable NAPIs
in its resume path and thus does not suffer from the same issue as
igc.

So my questions are:

  1. Are there are other contexts where igc_resume is called where
     RTNL is not held?

  2. If the answer is that RTNL is always held when igc_resume is
     called, then I can send a v5 that removes the
     rtnl_lock/rtnl_unlock. What do you think?

[...]

> 
> Hi Joe,
> 
> 
> The current version will cause a regression, a possible deadlock, due to the
> addition of the rtnl_lock in igc_resume that was fixed previously.
> 
> You can refer to the following link:
> 
> https://github.com/torvalds/linux/commit/6f31d6b643a32cc126cf86093fca1ea575948bf0#diff-d5b32b873e9902b496280a5f42c246043c8f0691d8b3a6bbd56df99ce8ceb394L7190

Thanks for the link.
