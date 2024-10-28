Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F029B3592
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Oct 2024 17:00:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F0BC540553;
	Mon, 28 Oct 2024 16:00:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ebhAL6FvBd4J; Mon, 28 Oct 2024 16:00:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7ACD1404E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730131216;
	bh=haqq1qNw0QZXGAInx6qkNQxtQ4BitayuB9tS5HSqd6o=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HahUNfK23qRNkKR5sWGpdYVe5l+UcFgXRP6Z3hBXUIyKfX+wbZ9pXFISFXVQ4J02/
	 +FbcSiOcs8dbM9wZ6wdZ+YMvFtKkz9OnK8cRM1rCEin3a340+HMtYjLiJ5VwIHjiVg
	 mueOQJF13n9OIyh39BobqFCVPbXtLHFrYMQaDYXLqWpbFp4mbT0obJwA/4vvMBfzcZ
	 yPVjroSXJKn7U2qcUMH50x2EP/fibLfiysxRUoaIf36l96cPrGjsDLkswpVRdZIFaE
	 lFgU2J83k1WAOtvfcrbldePfGQEA29z+61VHveDvGv3vR9jySS/sWloznPifUcGUyI
	 QrZ6oscPQ8c3Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7ACD1404E7;
	Mon, 28 Oct 2024 16:00:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0679CAEE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 16:00:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E8EEF40236
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 16:00:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O-9bytRJbXmL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Oct 2024 16:00:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::636; helo=mail-pl1-x636.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6E597400D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6E597400D8
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com
 [IPv6:2607:f8b0:4864:20::636])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6E597400D8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 16:00:11 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id
 d9443c01a7336-20c77459558so36667755ad.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 09:00:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1730131211; x=1730736011;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:to:from:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=haqq1qNw0QZXGAInx6qkNQxtQ4BitayuB9tS5HSqd6o=;
 b=NP5p55MH1Tn5Voy2DLpzzvqZFh+a/cQ/vgYz7AzO7XUkSurYgYYagsTIUQYuzpULuk
 rZcY9ObSV43VjezuzavJZ6WljBCUA4Md6n0bBkkp8IpkDkj5TagCxqLy3Jl4kxGqKQLJ
 wDKQbhNmdYuh2hr4yJmRT7k/cR3TBSaSbIr1ShNE3kOeLF7m1aYy8pA+aoEjEsWQHcoa
 gZj8aM8529x4cRyBSX/7pZL7AMEtTKftMdzkpcKL9IPZBWLbfoBb77LyH7bUPPngcuYM
 1vRp6lyEuUoJRIdriXjdcaLVEoSIuYPMU72b1IUMRhLnkxYzDReLLc3D6H114N29fPXX
 D+tg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVu13Eerzqy9z6s93qQdjx7Vzc7Y1e1WxaNsOPjwXzlbZ3+fpZfg7EUy0xYma08u6MlO/iu1N0cgWuL5kE4MkM=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw7u7Je3PRsAU/ED6Cb26OLdwuTxXStWHF/sUAJKZrOJwKG9NSY
 msHFR0Hli0KvpgaXjtn6v2i+B+KgYKuioMwddElp8P1kkiSn08mlvls9xTRwS+0=
X-Google-Smtp-Source: AGHT+IF9MGeNuqga+/weHL5uzr367LPHam5w/xQkq4qZWyfTUkcZfzU+GWfOJyg15RswH1RPZtBi6A==
X-Received: by 2002:a17:903:2449:b0:20c:d578:d712 with SMTP id
 d9443c01a7336-210c6ce56acmr139563655ad.59.1730131211059; 
 Mon, 28 Oct 2024 09:00:11 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-210bbf4332fsm52282025ad.16.2024.10.28.09.00.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2024 09:00:10 -0700 (PDT)
Date: Mon, 28 Oct 2024 09:00:06 -0700
From: Joe Damato <jdamato@fastly.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
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
Message-ID: <Zx-1BhZlXRQCImex@LQ3V64L9R2>
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
 <Zx-yzhq4unv0gsVX@LQ3V64L9R2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zx-yzhq4unv0gsVX@LQ3V64L9R2>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1730131211; x=1730736011; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:to:from:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=haqq1qNw0QZXGAInx6qkNQxtQ4BitayuB9tS5HSqd6o=;
 b=fC3u9qsCc6HdYPq1crRj/m/KJKKO7Jo2QUOJw7etPXNvIurirx1YTwFVJAG6+OhDLI
 fum3Tlwo9+5qhvhscwG9U3Vk3x0qyCQgAPGtOhmSdQyiZdfTMUthhVkkXi2MiNrQq86n
 oeliBn/6Tp1LSuz5AkoSoHdXSFSqOcEAa4440=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=fC3u9qsC
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

On Mon, Oct 28, 2024 at 08:50:38AM -0700, Joe Damato wrote:
> On Sun, Oct 27, 2024 at 11:49:33AM +0200, Lifshits, Vitaly wrote:
> > 
> > On 10/23/2024 12:52 AM, Joe Damato wrote:
> > > Link queues to NAPI instances via netdev-genl API so that users can
> > > query this information with netlink. Handle a few cases in the driver:
> > >    1. Link/unlink the NAPIs when XDP is enabled/disabled
> > >    2. Handle IGC_FLAG_QUEUE_PAIRS enabled and disabled
> > > 
> > > Example output when IGC_FLAG_QUEUE_PAIRS is enabled:
> > > 
> > > $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
> > >                           --dump queue-get --json='{"ifindex": 2}'
> > > 
> > > [{'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
> > >   {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'rx'},
> > >   {'id': 2, 'ifindex': 2, 'napi-id': 8195, 'type': 'rx'},
> > >   {'id': 3, 'ifindex': 2, 'napi-id': 8196, 'type': 'rx'},
> > >   {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'tx'},
> > >   {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'tx'},
> > >   {'id': 2, 'ifindex': 2, 'napi-id': 8195, 'type': 'tx'},
> > >   {'id': 3, 'ifindex': 2, 'napi-id': 8196, 'type': 'tx'}]
> > > 
> > > Since IGC_FLAG_QUEUE_PAIRS is enabled, you'll note that the same NAPI ID
> > > is present for both rx and tx queues at the same index, for example
> > > index 0:
> > > 
> > > {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
> > > {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'tx'},
> > > 
> > > To test IGC_FLAG_QUEUE_PAIRS disabled, a test system was booted using
> > > the grub command line option "maxcpus=2" to force
> > > igc_set_interrupt_capability to disable IGC_FLAG_QUEUE_PAIRS.
> > > 
> > > Example output when IGC_FLAG_QUEUE_PAIRS is disabled:
> > > 
> > > $ lscpu | grep "On-line CPU"
> > > On-line CPU(s) list:      0,2
> > > 
> > > $ ethtool -l enp86s0  | tail -5
> > > Current hardware settings:
> > > RX:		n/a
> > > TX:		n/a
> > > Other:		1
> > > Combined:	2
> > > 
> > > $ cat /proc/interrupts  | grep enp
> > >   144: [...] enp86s0
> > >   145: [...] enp86s0-rx-0
> > >   146: [...] enp86s0-rx-1
> > >   147: [...] enp86s0-tx-0
> > >   148: [...] enp86s0-tx-1
> > > 
> > > 1 "other" IRQ, and 2 IRQs for each of RX and Tx, so we expect netlink to
> > > report 4 IRQs with unique NAPI IDs:
> > > 
> > > $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
> > >                           --dump napi-get --json='{"ifindex": 2}'
> > > [{'id': 8196, 'ifindex': 2, 'irq': 148},
> > >   {'id': 8195, 'ifindex': 2, 'irq': 147},
> > >   {'id': 8194, 'ifindex': 2, 'irq': 146},
> > >   {'id': 8193, 'ifindex': 2, 'irq': 145}]
> > > 
> > > Now we examine which queues these NAPIs are associated with, expecting
> > > that since IGC_FLAG_QUEUE_PAIRS is disabled each RX and TX queue will
> > > have its own NAPI instance:
> > > 
> > > $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
> > >                           --dump queue-get --json='{"ifindex": 2}'
> > > [{'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
> > >   {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'rx'},
> > >   {'id': 0, 'ifindex': 2, 'napi-id': 8195, 'type': 'tx'},
> > >   {'id': 1, 'ifindex': 2, 'napi-id': 8196, 'type': 'tx'}]
> > > 
> > > Signed-off-by: Joe Damato <jdamato@fastly.com>
> > > Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> > > ---
> > >   v4:
> > >     - Add rtnl_lock/rtnl_unlock in two paths: igc_resume and
> > >       igc_io_error_detected. The code added to the latter is inspired by
> > >       a similar implementation in ixgbe's ixgbe_io_error_detected.
> > > 
> > >   v3:
> > >     - Replace igc_unset_queue_napi with igc_set_queue_napi(adapater, i,
> > >       NULL), as suggested by Vinicius Costa Gomes
> > >     - Simplify implemention of igc_set_queue_napi as suggested by Kurt
> > >       Kanzenbach, with a tweak to use ring->queue_index
> > > 
> > >   v2:
> > >     - Update commit message to include tests for IGC_FLAG_QUEUE_PAIRS
> > >       disabled
> > >     - Refactored code to move napi queue mapping and unmapping to helper
> > >       functions igc_set_queue_napi and igc_unset_queue_napi
> > >     - Adjust the code to handle IGC_FLAG_QUEUE_PAIRS disabled
> > >     - Call helpers to map/unmap queues to NAPIs in igc_up, __igc_open,
> > >       igc_xdp_enable_pool, and igc_xdp_disable_pool
> > > 
> > >   drivers/net/ethernet/intel/igc/igc.h      |  2 ++
> > >   drivers/net/ethernet/intel/igc/igc_main.c | 41 ++++++++++++++++++++---
> > >   drivers/net/ethernet/intel/igc/igc_xdp.c  |  2 ++
> > >   3 files changed, 40 insertions(+), 5 deletions(-)
> > > 
> > > diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> > > index eac0f966e0e4..b8111ad9a9a8 100644
> > > --- a/drivers/net/ethernet/intel/igc/igc.h
> > > +++ b/drivers/net/ethernet/intel/igc/igc.h
> > > @@ -337,6 +337,8 @@ struct igc_adapter {
> > >   	struct igc_led_classdev *leds;
> > >   };
> > > +void igc_set_queue_napi(struct igc_adapter *adapter, int q_idx,
> > > +			struct napi_struct *napi);
> > >   void igc_up(struct igc_adapter *adapter);
> > >   void igc_down(struct igc_adapter *adapter);
> > >   int igc_open(struct net_device *netdev);
> > > diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> > > index 7964bbedb16c..04aa216ef612 100644
> > > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> > > @@ -4948,6 +4948,22 @@ static int igc_sw_init(struct igc_adapter *adapter)
> > >   	return 0;
> > >   }
> > > +void igc_set_queue_napi(struct igc_adapter *adapter, int vector,
> > > +			struct napi_struct *napi)
> > > +{
> > > +	struct igc_q_vector *q_vector = adapter->q_vector[vector];
> > > +
> > > +	if (q_vector->rx.ring)
> > > +		netif_queue_set_napi(adapter->netdev,
> > > +				     q_vector->rx.ring->queue_index,
> > > +				     NETDEV_QUEUE_TYPE_RX, napi);
> > > +
> > > +	if (q_vector->tx.ring)
> > > +		netif_queue_set_napi(adapter->netdev,
> > > +				     q_vector->tx.ring->queue_index,
> > > +				     NETDEV_QUEUE_TYPE_TX, napi);
> > > +}
> > > +
> > >   /**
> > >    * igc_up - Open the interface and prepare it to handle traffic
> > >    * @adapter: board private structure
> > > @@ -4955,6 +4971,7 @@ static int igc_sw_init(struct igc_adapter *adapter)
> > >   void igc_up(struct igc_adapter *adapter)
> > >   {
> > >   	struct igc_hw *hw = &adapter->hw;
> > > +	struct napi_struct *napi;
> > >   	int i = 0;
> > >   	/* hardware has been reset, we need to reload some things */
> > > @@ -4962,8 +4979,11 @@ void igc_up(struct igc_adapter *adapter)
> > >   	clear_bit(__IGC_DOWN, &adapter->state);
> > > -	for (i = 0; i < adapter->num_q_vectors; i++)
> > > -		napi_enable(&adapter->q_vector[i]->napi);
> > > +	for (i = 0; i < adapter->num_q_vectors; i++) {
> > > +		napi = &adapter->q_vector[i]->napi;
> > > +		napi_enable(napi);
> > > +		igc_set_queue_napi(adapter, i, napi);
> > > +	}
> > >   	if (adapter->msix_entries)
> > >   		igc_configure_msix(adapter);
> > > @@ -5192,6 +5212,7 @@ void igc_down(struct igc_adapter *adapter)
> > >   	for (i = 0; i < adapter->num_q_vectors; i++) {
> > >   		if (adapter->q_vector[i]) {
> > >   			napi_synchronize(&adapter->q_vector[i]->napi);
> > > +			igc_set_queue_napi(adapter, i, NULL);
> > >   			napi_disable(&adapter->q_vector[i]->napi);
> > >   		}
> > >   	}
> > > @@ -6021,6 +6042,7 @@ static int __igc_open(struct net_device *netdev, bool resuming)
> > >   	struct igc_adapter *adapter = netdev_priv(netdev);
> > >   	struct pci_dev *pdev = adapter->pdev;
> > >   	struct igc_hw *hw = &adapter->hw;
> > > +	struct napi_struct *napi;
> > >   	int err = 0;
> > >   	int i = 0;
> > > @@ -6056,8 +6078,11 @@ static int __igc_open(struct net_device *netdev, bool resuming)
> > >   	clear_bit(__IGC_DOWN, &adapter->state);
> > > -	for (i = 0; i < adapter->num_q_vectors; i++)
> > > -		napi_enable(&adapter->q_vector[i]->napi);
> > > +	for (i = 0; i < adapter->num_q_vectors; i++) {
> > > +		napi = &adapter->q_vector[i]->napi;
> > > +		napi_enable(napi);
> > > +		igc_set_queue_napi(adapter, i, napi);
> > > +	}
> > >   	/* Clear any pending interrupts. */
> > >   	rd32(IGC_ICR);
> > > @@ -7385,7 +7410,9 @@ static int igc_resume(struct device *dev)
> > >   	wr32(IGC_WUS, ~0);
> > >   	if (netif_running(netdev)) {
> > > +		rtnl_lock();
> > 
> > This change will bring back the deadlock issue that was fixed in commit:
> > 6f31d6b: "igc: Refactor runtime power management flow".
> 
> OK, thanks for letting me know.
> 
> I think I better understand what the issue is. It seems that:
> 
> - igc_resume can be called with rtnl held via ethtool (which I
>   didn't know), which calls __igc_open
> - __igc_open re-enables NAPIs and re-links queues to NAPI IDs (which
>   requires rtnl)
> 
> so, it seems like the rtnl_lock() I've added to igc_resume is
> unnecessary.
> 
> I suppose I don't know all of the paths where the pm functions can
> be called -- are there others where RTNL is _not_ already held?
> 
> I looked at e1000e and it seems that driver does not re-enable NAPIs
> in its resume path and thus does not suffer from the same issue as
> igc.
> 
> So my questions are:
> 
>   1. Are there are other contexts where igc_resume is called where
>      RTNL is not held?
> 
>   2. If the answer is that RTNL is always held when igc_resume is
>      called, then I can send a v5 that removes the
>      rtnl_lock/rtnl_unlock. What do you think?

I see, so it looks like there is:
   - resume
   - runtime_resume

The bug I am reintroducing is runtime_resume already holding RTNL
before my added call to rtnl_lock.

OK.

Does resume also hold rtnl before the driver's igc_resume is called?
I am asking because I don't know much about how PM works.

If resume does not hold RTNL (but runtime resume does, as the bug
you pointed out shows), it seems like a wrapper can be added to tell
the code whether rtnl should be held or not based on which resume is
happening.

Does anyone know if: resume (not runtime_resume) already holds RTNL?
I'll try to take a look and see, but I am not very familiar with PM.
