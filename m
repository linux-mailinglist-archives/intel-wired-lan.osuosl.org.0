Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C981599AFEF
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Oct 2024 03:58:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 48F8E60890;
	Sat, 12 Oct 2024 01:58:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n0Af0dwsQYSG; Sat, 12 Oct 2024 01:58:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D42BA606C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728698304;
	bh=sPTxo3VFYU4gU7ufZRtzjpXalxztZVEPSaPzwsbMAL4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3XoPzYf7zrUCCsepEqZTBGvswdVtjXfuK8Wt++vyzvoE86dOiK9aKJXhRsmHVVkoz
	 fcO4X0WGFLKAMYnFQZ1K5qbXX9SPcEIVfJoqMIfx7U5UaL4ctlgVgcwz+LS585+iAv
	 v9gI7eb1uBZfJPSUi4Bhcy7THxg9nTZNytckTIUcZbL9d+cS6uG/DGDRUtMT2hpqkR
	 ZkGdesDTpQ32kOLFm2BYgnlHJsouMKy8cbmo9iip0hh3M0N0TPUFNvMgRa/Z82Diru
	 yiJSP2Mn8exEHxSZnfCafhSXn4Vdy8HrMvsXm0dFYcChZ9/IxnE6qD618K7lUkD/79
	 cq7Bie+mWvkcA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D42BA606C9;
	Sat, 12 Oct 2024 01:58:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 026571BF3EC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2024 01:58:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E454C605BD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2024 01:58:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qqzr_zJOpH9k for <intel-wired-lan@lists.osuosl.org>;
 Sat, 12 Oct 2024 01:58:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::636; helo=mail-pl1-x636.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B4ABF60590
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4ABF60590
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com
 [IPv6:2607:f8b0:4864:20::636])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B4ABF60590
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2024 01:58:21 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id
 d9443c01a7336-20c7edf2872so20826955ad.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 18:58:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728698301; x=1729303101;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=sPTxo3VFYU4gU7ufZRtzjpXalxztZVEPSaPzwsbMAL4=;
 b=VW4Z62saRJQZcV2HK/76L73JWUCqjROBSR0xjl2MqsJPnJWxF0Ra6R8e4sT3aVz796
 6uVcM9oMWs6heycU6d0rVsEq8CVxVev73/DuTDChEaC2wRMmEfMQuEuEX3yo6Gqkcd9Y
 OLcbbTbxSj78UL39+ZLaoWgdg1NNSQu9Azz7qZ6e33zoDS2ygIMAmhwzz9C9LRZDuB6M
 Y2BugrgG7az/cpetn0ReeqttHZX8CHW1+1i3p63CAf3UMXw5ifzK2g5Hzj7p8s0bs6Fl
 VOatQEhVg9lk87Oa0gIHxGgbE5pcQqf8uRF7eWtLRSkkzRRhdHBropsFfsl0Zr36P2KE
 ujtA==
X-Forwarded-Encrypted: i=1;
 AJvYcCX/MfWBLv228iKM0OCzjLS8unfDYbMV6fQhoJAJHDAbf9OGa9RXaUuU+/9KdYj+DTaXEJPkYNVEZCQ7RZwNvlk=@lists.osuosl.org
X-Gm-Message-State: AOJu0Ywzwdjjpk9h7QoGhsOC31SUyTkNpA4IE1mOhIrLFq1Fs5IYtUFN
 JcvaszJoGUYZ76FfmViJG+zXIbCTBR3+o79borLyN4xzweNSW6PwBuczqgzwuPA=
X-Google-Smtp-Source: AGHT+IFVwIQ6PMGM56eLlaZkrc08o6k3Sy0bydvPmDgSTXAqrEzreKcjXkDt2YW3st/N3yNRzoCaPA==
X-Received: by 2002:a17:902:c403:b0:20b:c043:3873 with SMTP id
 d9443c01a7336-20ca03d6844mr64920765ad.21.1728698300799; 
 Fri, 11 Oct 2024 18:58:20 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-20c8bad9b4asm29730905ad.45.2024.10.11.18.58.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2024 18:58:20 -0700 (PDT)
Date: Fri, 11 Oct 2024 18:58:17 -0700
From: Joe Damato <jdamato@fastly.com>
To: Kurt Kanzenbach <kurt@linutronix.de>
Message-ID: <ZwnXuSUbaFiyGn52@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Kurt Kanzenbach <kurt@linutronix.de>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20241003233850.199495-1-jdamato@fastly.com>
 <20241003233850.199495-3-jdamato@fastly.com>
 <87msjg46lw.fsf@kurt.kurt.home> <Zwa3sW-4s7oqktX3@LQ3V64L9R2>
 <87wmig3063.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87wmig3063.fsf@kurt.kurt.home>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1728698301; x=1729303101; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=sPTxo3VFYU4gU7ufZRtzjpXalxztZVEPSaPzwsbMAL4=;
 b=uNt1/rhSx+T+rnTWmEWz9eVwBfXSHSKJZpEod7BGVYghfovmuSoTN+W/pAEU5xnEsT
 6FCwW43xFimYQB4IMcdZohrOJd/vMlBByyOQEkCk2EoNpZo2LxH3yroo781OF/L/Y+gB
 Eh/HpjAhhyf+8dXHC1pXUjLgRXilQfbkPRw7E=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=uNt1/rhS
Subject: Re: [Intel-wired-lan] [RFC net-next 2/2] igc: Link queues to NAPI
 instances
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
Cc: netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Oct 10, 2024 at 09:08:20AM +0200, Kurt Kanzenbach wrote:
> On Wed Oct 09 2024, Joe Damato wrote:
> > On Mon, Oct 07, 2024 at 11:14:51AM +0200, Kurt Kanzenbach wrote:
> >> Hi Joe,
> >> 
> >> On Thu Oct 03 2024, Joe Damato wrote:
> >> > Link queues to NAPI instances via netdev-genl API so that users can
> >> > query this information with netlink:
> >> >
> >> > $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
> >> >                          --dump queue-get --json='{"ifindex": 2}'
> >> >
> >> > [{'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
> >> >  {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'rx'},
> >> >  {'id': 2, 'ifindex': 2, 'napi-id': 8195, 'type': 'rx'},
> >> >  {'id': 3, 'ifindex': 2, 'napi-id': 8196, 'type': 'rx'},
> >> >  {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'tx'},
> >> >  {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'tx'},
> >> >  {'id': 2, 'ifindex': 2, 'napi-id': 8195, 'type': 'tx'},
> >> >  {'id': 3, 'ifindex': 2, 'napi-id': 8196, 'type': 'tx'}]
> >> >
> >> > Since igc uses only combined queues, you'll note that the same NAPI ID
> >> > is present for both rx and tx queues at the same index, for example
> >> > index 0:
> >> >
> >> > {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
> >> > {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'tx'},
> >> >
> >> > Signed-off-by: Joe Damato <jdamato@fastly.com>
> >> > ---
> >> >  drivers/net/ethernet/intel/igc/igc_main.c | 30 ++++++++++++++++++++---
> >> >  1 file changed, 26 insertions(+), 4 deletions(-)
> >> >
> >> > diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> >> > index 7964bbedb16c..b3bd5bf29fa7 100644
> >> > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> >> > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> >> > @@ -4955,6 +4955,7 @@ static int igc_sw_init(struct igc_adapter *adapter)
> >> >  void igc_up(struct igc_adapter *adapter)
> >> >  {
> >> >  	struct igc_hw *hw = &adapter->hw;
> >> > +	struct napi_struct *napi;
> >> >  	int i = 0;
> >> >  
> >> >  	/* hardware has been reset, we need to reload some things */
> >> > @@ -4962,8 +4963,17 @@ void igc_up(struct igc_adapter *adapter)
> >> >  
> >> >  	clear_bit(__IGC_DOWN, &adapter->state);
> >> >  
> >> > -	for (i = 0; i < adapter->num_q_vectors; i++)
> >> > -		napi_enable(&adapter->q_vector[i]->napi);
> >> > +	for (i = 0; i < adapter->num_q_vectors; i++) {
> >> > +		napi = &adapter->q_vector[i]->napi;
> >> > +		napi_enable(napi);
> >> > +		/* igc only supports combined queues, so link each NAPI to both
> >> > +		 * TX and RX
> >> > +		 */
> >> 
> >> igc has IGC_FLAG_QUEUE_PAIRS. For example there may be 2 queues
> >> configured, but 4 vectors active (and 4 IRQs). Is your patch working
> >> with that?  Can be tested easily with `ethtool -L <inf> combined 2` or
> >> by booting with only 2 CPUs.
> >
> > I tested what you asked, here's what it looks like on my system:
> 
> Thanks.
> 
> >
> > 16 core Intel(R) Core(TM) i7-1360P
> >
> > lspci:
> > Ethernet controller: Intel Corporation Device 125c (rev 04)
> >                      Subsystem: Intel Corporation Device 3037
> >
> > ethtool -i:
> > firmware-version: 2017:888d
> >
> > $ sudo ethtool -L enp86s0 combined 2
> > $ sudo ethtool -l enp86s0
> > Channel parameters for enp86s0:
> > Pre-set maximums:
> > RX:		n/a
> > TX:		n/a
> > Other:		1
> > Combined:	4
> > Current hardware settings:
> > RX:		n/a
> > TX:		n/a
> > Other:		1
> > Combined:	2
> >
> > $ cat /proc/interrupts | grep enp86s0 | cut --delimiter=":" -f1
> >  144
> >  145
> >  146
> >  147
> >  148
> >
> > Note that IRQ 144 is the "other" IRQ, so if we ignore that one...
> > /proc/interrupts shows 4 IRQs, despite there being only 2 queues.
> >
> > Querying netlink to see which IRQs map to which NAPIs:
> >
> > $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
> >                          --dump napi-get --json='{"ifindex": 2}'
> > [{'id': 8200, 'ifindex': 2, 'irq': 148},
> >  {'id': 8199, 'ifindex': 2, 'irq': 147},
> >  {'id': 8198, 'ifindex': 2, 'irq': 146},
> >  {'id': 8197, 'ifindex': 2, 'irq': 145}]
> >
> > This suggests that all 4 IRQs are assigned to a NAPI (this mapping
> > happens due to netif_napi_set_irq in patch 1).
> >
> > Now query the queues and which NAPIs they are associated with (which
> > is what patch 2 adds):
> >
> > $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \ 
> >                          --dump queue-get --json='{"ifindex": 2}'
> > [{'id': 0, 'ifindex': 2, 'napi-id': 8197, 'type': 'rx'},
> >  {'id': 1, 'ifindex': 2, 'napi-id': 8198, 'type': 'rx'},
> >  {'id': 0, 'ifindex': 2, 'napi-id': 8197, 'type': 'tx'},
> >  {'id': 1, 'ifindex': 2, 'napi-id': 8198, 'type': 'tx'}]
> >
> > As you can see above, since the queues are combined and there are
> > only 2 of them, NAPI IDs 8197 and 8198 (which are triggered via IRQ
> > 145 and 146) are displayed.
> 
> Is that really correct?

So I definitely think the case where IGC_FLAG_QUEUE_PAIRS is enabled is
correct, that case is highlighted by the original commit message.

I think IGC_FLAG_QUEUE_PAIRS disabled was buggy, as you pointed out, and I've
made a change I'll include in the next RFC, which I believe fixes it.

Please see below for the case where IGC_FLAG_QUEUE_PAIRS is disabled and a
walk-through.

> There are four NAPI IDs which are triggered by
> the four IRQs.

I'm not an IGC expert and I appreciate your review/comments very much, so thank
you!

I don't think the number of queues I create with ethtool factors into whether
or not IGC_FLAG_QUEUE_PAIRS is enabled or not. Please forgive me for the length
of my message, but let me walk through the code to see if I've gotten it right,
including some debug output I added:

In igc_init_queue_configuration:

max_rss_queues = IGC_MAX_RX_QUEUES (4)

and

adapter->rss_queues = min of 4 or num_online_cpus

which I presume is 16 on my 16 core machine, so:

adapter->rss_queues = 4 (see below for debug output which verifies this)

In igc_set_flag_queue_pairs, the flag IGC_FLAG_QUEUE_PAIRS is set only if:

(adapter->rss_queues (4) > max_rss_queues(4) / 2) which simplifies
to (4 > 2), meaning the flag would be enabled regardless of the
number of queues I create with ethtool, as long as I boot my machine
with 16 cores available.

I verified this by adding debug output to igc_set_flag_queue_pairs and
igc_init_queue_configuration, which outputs:

igc 0000:56:00.0: IGC_FLAG_QUEUE_PAIRS on
igc 0000:56:00.0: max_rss_queues: 4, rss_queues: 4

That's at boot with the default number of combined queues of 4 (which is also
the hardware max).

The result of IGC_FLAG_QUEUE_PAIRS on was the result posted in the
original commit message of this patch and I believe that to be
correct.

The only place I can see that IGC_FLAG_QUEUE_PAIRS has any impact
(aside from ethtool IRQ coalescing, which we can ignore) is
igc_set_interrupt_capability:

  /* start with one vector for every Rx queue */
  numvecs = adapter->num_rx_queues;
  
  /* if Tx handler is separate add 1 for every Tx queue */
  if (!(adapter->flags & IGC_FLAG_QUEUE_PAIRS))
    numvecs += adapter->num_tx_queues;

In this case, the flag only has impact if it is _off_.

It impacts the number of vectors allocated, so I made a small change
to the driver, which I'll include in the next RFC to deal with the
IGC_FLAG_QUEUE_PAIRS off case.

In order to get IGC_FLAG_QUEUE_PAIRS off, I boot my machine with the grub
command line option "maxcpus=2", which should force the flag off.

Checking my debug output at boot to make sure:

igc 0000:56:00.0: IGC_FLAG_QUEUE_PAIRS off
igc 0000:56:00.0: max_rss_queues: 4, rss_queues: 2

So, now IGC_FLAG_QUEUE_PAIRS is off which should impact
igc_set_interrupt_capability and the vector calculation.

Let's check how things look at boot:

$ ethtool -l enp86s0 | tail -5
Current hardware settings:
RX:		n/a
TX:		n/a
Other:		1
Combined:	2

2 combined queues by default when I have 2 CPUs.

$ cat /proc/interrupts  | grep enp
 127:  enp86s0
 128:  enp86s0-rx-0
 129:  enp86s0-rx-1
 130:  enp86s0-tx-0
 131:  enp86s0-tx-1

1 other IRQ, and 2 IRQs for each of RX and TX.

Compare to netlink:

$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
                       --dump napi-get --json='{"ifindex": 2}'
[{'id': 8196, 'ifindex': 2, 'irq': 131},
 {'id': 8195, 'ifindex': 2, 'irq': 130},
 {'id': 8194, 'ifindex': 2, 'irq': 129},
 {'id': 8193, 'ifindex': 2, 'irq': 128}]

So the driver has 4 IRQs linked to 4 different NAPIs, let's check queues:

$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
                         --dump queue-get --json='{"ifindex": 2}'

[{'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
 {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'rx'},
 {'id': 0, 'ifindex': 2, 'napi-id': 8195, 'type': 'tx'},
 {'id': 1, 'ifindex': 2, 'napi-id': 8196, 'type': 'tx'}]

In this case you can see that each RX and TX queue has a unique NAPI.

I think this is correct, but slightly confusing :) as ethtool
reports n/a for RX and TX and only reports a combined queue count,
but you were correct that there was a bug for this case in the code
I proposed in this RFC.

I think this new output looks correct and will include the adjusted
patch and a detailed commit message in the next RFC.

Let me know if you think the output looks right to you now?
