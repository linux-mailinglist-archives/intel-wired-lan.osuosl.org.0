Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1698C99FD9E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Oct 2024 03:01:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A4655608A9;
	Wed, 16 Oct 2024 01:01:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QUlCr0Hmr3Qd; Wed, 16 Oct 2024 01:01:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 87A66608A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729040495;
	bh=LwITyP/tHiSvmhKS9kDwYbqHDTa6LjHd2wgVqJpiwS0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iFf0MkOp+2c2BMw+soy4AOm3168pUGjI8HOYrJ0ImUrPYxrKUqTyJpqlgSOMPgMK3
	 2BlGKB0+NgLQ/A1BLh/fY6/9JHr7BsRWxRmvKsiNsCUmJbJZnQZmyuDdZ0orzqgLJi
	 c0DY/mBtyHBLrlW5j7udyN1s5+oTyh1xsO61LUwgi5sKvfpMluKyun6+VjKIqkT3EL
	 YWk6sM9d84j84tj4RCyEkq7fRBVQxJ6zy3TTUBNs9idBEUJ9XC44bFl7p5fqfIbJeW
	 sGGC57d3gBddNMlkRffzPzD6ctXrdr1Ek8QATqoXgdwU8JzEYzvz4onXNxEjV7+4IN
	 kQ7kTNWocrM3g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 87A66608A4;
	Wed, 16 Oct 2024 01:01:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 93B7C2072
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 01:01:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6BB3980E21
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 01:01:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GIFhwnync7i0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Oct 2024 01:01:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::52a; helo=mail-pg1-x52a.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6E3FD80B26
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E3FD80B26
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com
 [IPv6:2607:f8b0:4864:20::52a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6E3FD80B26
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 01:01:32 +0000 (UTC)
Received: by mail-pg1-x52a.google.com with SMTP id
 41be03b00d2f7-7ea8ecacf16so1550971a12.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 18:01:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729040491; x=1729645291;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=LwITyP/tHiSvmhKS9kDwYbqHDTa6LjHd2wgVqJpiwS0=;
 b=QLwA99JkCIP+j7CUpxIh8mlr5LMLmYeED8S7giIWWSXCQ/n8DdjDGDa3W708uL1aUm
 s1l8n13JDEqDCwpbnuHqKgBHcEOLtLXXVyH1O3wxF+EDfPdkTg6kn5tRQHun9agTMh/r
 NJtepcF2RzeaRycCZBbJbIOXL97YGzzxUOyYHe8Kee7jG1u8KJxsvPib9zMrQevWUmds
 kL2Icg5T6YdVPGJz5fjjIEeczhFuulZDsIdWamsQm2odNrQu3NTSHhA0eHFHtix9jSi6
 VteoywtMt2P6RasYqc/jrPCAkBW+yFSj1emKUs5SqRMke0AG+x/rrdXefZoSYub+yro7
 /nCg==
X-Forwarded-Encrypted: i=1;
 AJvYcCW3FlDP/yNH87voOb1YZmgN+LSIWXTJZtCdJnSY3poV5S0hKKTbIP8/OayyOgK9gJagWVF08DURO56Qb98HNvg=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwaSCn6YHPKWWuyNGbOWaHfP2Qd2Lzj7CUlqtOoK2p8QgCT9fGQ
 5a4EgVU+8szcLfwYAIp2urn9wDAqe46zpsUzf5ziq2KSj469dAIPLv7XQUO+bNs=
X-Google-Smtp-Source: AGHT+IFgtcJqMf5QpqhZob66AklcaVZNotbGk59N2QQ8WDGlir7z/0wQgN7eOkPKJvZ6Cb/Eod3ktw==
X-Received: by 2002:a05:6a21:3a42:b0:1d8:f977:8cda with SMTP id
 adf61e73a8af0-1d8f977d2efmr5042091637.27.1729040491522; 
 Tue, 15 Oct 2024 18:01:31 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-71e774cf5b0sm1967351b3a.167.2024.10.15.18.01.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2024 18:01:31 -0700 (PDT)
Date: Tue, 15 Oct 2024 18:01:26 -0700
From: Joe Damato <jdamato@fastly.com>
To: Kurt Kanzenbach <kurt@linutronix.de>
Cc: netdev@vger.kernel.org, vinicius.gomes@intel.com,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
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
Message-ID: <Zw8QZowkIRM-8-U1@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Kurt Kanzenbach <kurt@linutronix.de>, netdev@vger.kernel.org,
 vinicius.gomes@intel.com, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
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
References: <20241014213012.187976-1-jdamato@fastly.com>
 <20241014213012.187976-3-jdamato@fastly.com>
 <87h69d3bm2.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87h69d3bm2.fsf@kurt.kurt.home>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1729040491; x=1729645291; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=LwITyP/tHiSvmhKS9kDwYbqHDTa6LjHd2wgVqJpiwS0=;
 b=rEgv7d0uJU+Lbp+vpHRy1CcpnmfBhRr54VZFpH6fIrFRQF3/YywOyZ9LnoPEm/El/j
 INnLBKnB5JlGvl2+LRi60NbApc71YJ/JS1R3uF7LYOShjCXRFa7Jd70EsGkqhBRe7iC8
 CcvZOxEuJqEq4CdEPiH1vD78zQvNFJoGKEG7U=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=rEgv7d0u
Subject: Re: [Intel-wired-lan] [RFC net-next v2 2/2] igc: Link queues to
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

On Tue, Oct 15, 2024 at 12:27:01PM +0200, Kurt Kanzenbach wrote:
> On Mon Oct 14 2024, Joe Damato wrote:
> > Link queues to NAPI instances via netdev-genl API so that users can
> > query this information with netlink. Handle a few cases in the driver:
> >   1. Link/unlink the NAPIs when XDP is enabled/disabled
> >   2. Handle IGC_FLAG_QUEUE_PAIRS enabled and disabled
> >
> > Example output when IGC_FLAG_QUEUE_PAIRS is enabled:
> >
> > $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
> >                          --dump queue-get --json='{"ifindex": 2}'
> >
> > [{'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
> >  {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'rx'},
> >  {'id': 2, 'ifindex': 2, 'napi-id': 8195, 'type': 'rx'},
> >  {'id': 3, 'ifindex': 2, 'napi-id': 8196, 'type': 'rx'},
> >  {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'tx'},
> >  {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'tx'},
> >  {'id': 2, 'ifindex': 2, 'napi-id': 8195, 'type': 'tx'},
> >  {'id': 3, 'ifindex': 2, 'napi-id': 8196, 'type': 'tx'}]
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
> >  144: [...] enp86s0
> >  145: [...] enp86s0-rx-0
> >  146: [...] enp86s0-rx-1
> >  147: [...] enp86s0-tx-0
> >  148: [...] enp86s0-tx-1
> >
> > 1 "other" IRQ, and 2 IRQs for each of RX and Tx, so we expect netlink to
> > report 4 IRQs with unique NAPI IDs:
> >
> > $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
> >                          --dump napi-get --json='{"ifindex": 2}'
> > [{'id': 8196, 'ifindex': 2, 'irq': 148},
> >  {'id': 8195, 'ifindex': 2, 'irq': 147},
> >  {'id': 8194, 'ifindex': 2, 'irq': 146},
> >  {'id': 8193, 'ifindex': 2, 'irq': 145}]
> >
> > Now we examine which queues these NAPIs are associated with, expecting
> > that since IGC_FLAG_QUEUE_PAIRS is disabled each RX and TX queue will
> > have its own NAPI instance:
> >
> > $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
> >                          --dump queue-get --json='{"ifindex": 2}'
> > [{'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
> >  {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'rx'},
> >  {'id': 0, 'ifindex': 2, 'napi-id': 8195, 'type': 'tx'},
> >  {'id': 1, 'ifindex': 2, 'napi-id': 8196, 'type': 'tx'}]
> >
> > Signed-off-by: Joe Damato <jdamato@fastly.com>
> > ---
> >  v2:
> >    - Update commit message to include tests for IGC_FLAG_QUEUE_PAIRS
> >      disabled
> >    - Refactored code to move napi queue mapping and unmapping to helper
> >      functions igc_set_queue_napi and igc_unset_queue_napi
> >    - Adjust the code to handle IGC_FLAG_QUEUE_PAIRS disabled
> >    - Call helpers to map/unmap queues to NAPIs in igc_up, __igc_open,
> >      igc_xdp_enable_pool, and igc_xdp_disable_pool
> >
> >  drivers/net/ethernet/intel/igc/igc.h      |  3 ++
> >  drivers/net/ethernet/intel/igc/igc_main.c | 58 +++++++++++++++++++++--
> >  drivers/net/ethernet/intel/igc/igc_xdp.c  |  2 +
> >  3 files changed, 59 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> > index eac0f966e0e4..7b1c9ea60056 100644
> > --- a/drivers/net/ethernet/intel/igc/igc.h
> > +++ b/drivers/net/ethernet/intel/igc/igc.h
> > @@ -337,6 +337,9 @@ struct igc_adapter {
> >  	struct igc_led_classdev *leds;
> >  };
> >  
> > +void igc_set_queue_napi(struct igc_adapter *adapter, int q_idx,
> > +			struct napi_struct *napi);
> > +void igc_unset_queue_napi(struct igc_adapter *adapter, int q_idx);
> >  void igc_up(struct igc_adapter *adapter);
> >  void igc_down(struct igc_adapter *adapter);
> >  int igc_open(struct net_device *netdev);
> > diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> > index 7964bbedb16c..59c00acfa0ed 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> > @@ -4948,6 +4948,47 @@ static int igc_sw_init(struct igc_adapter *adapter)
> >  	return 0;
> >  }
> >  
> > +void igc_set_queue_napi(struct igc_adapter *adapter, int q_idx,
> > +			struct napi_struct *napi)
> > +{
> > +	if (adapter->flags & IGC_FLAG_QUEUE_PAIRS) {
> > +		netif_queue_set_napi(adapter->netdev, q_idx,
> > +				     NETDEV_QUEUE_TYPE_RX, napi);
> > +		netif_queue_set_napi(adapter->netdev, q_idx,
> > +				     NETDEV_QUEUE_TYPE_TX, napi);
> > +	} else {
> > +		if (q_idx < adapter->num_rx_queues) {
> > +			netif_queue_set_napi(adapter->netdev, q_idx,
> > +					     NETDEV_QUEUE_TYPE_RX, napi);
> > +		} else {
> > +			q_idx -= adapter->num_rx_queues;
> > +			netif_queue_set_napi(adapter->netdev, q_idx,
> > +					     NETDEV_QUEUE_TYPE_TX, napi);
> > +		}
> > +	}
> > +}
> 
> In addition, to what Vinicius said. I think this can be done
> simpler. Something like this?
> 
> void igc_set_queue_napi(struct igc_adapter *adapter, int vector,
> 			struct napi_struct *napi)
> {
> 	struct igc_q_vector *q_vector = adapter->q_vector[vector];
> 
> 	if (q_vector->rx.ring)
> 		netif_queue_set_napi(adapter->netdev, vector, NETDEV_QUEUE_TYPE_RX, napi);
> 
> 	if (q_vector->tx.ring)
> 		netif_queue_set_napi(adapter->netdev, vector, NETDEV_QUEUE_TYPE_TX, napi);
> }

Ah, yes, that is much simpler. Thanks for the suggestion. I'll do
that for the v3.
