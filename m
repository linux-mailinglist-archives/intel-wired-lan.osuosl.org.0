Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2334D997299
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Oct 2024 19:04:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C9015403E3;
	Wed,  9 Oct 2024 17:04:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TXOOaU4AdbBk; Wed,  9 Oct 2024 17:04:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 36A0E4011F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728493496;
	bh=NalHCw/yq0o7mdTQugdEr81cV/UtYYP9jAld2HHFzx4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZiwZfVs8fcBv37NyogSRbYaMfMNsjdmmTEAfOX79FwdhDqyh583pj8W9jwEvZXqF4
	 MnRm/wSEnM6Y2Z79PFe+nVfC7D/yq4xyFsFasAlfdZyOspJpQJLxCuA74uPVNkCcFM
	 7LXAnX3MoXv5XQL/E3Zjq7B/2aBod1CdqUGo2oQ46vIr/HxclDlNrr9DCbcZUSRmUI
	 e7Tth5ux5NhX/47rAh+PA/YwuVZQj9otWS7I+YBY8o+ULLuF/kVRGzxfvsXGY+coaX
	 /r0fmIM7/H8tkGcHbCUgwdATcEcidhfCZ9F1/xMnsOnH9I6nlc5Ij82Oy94Eh+pN7o
	 59qtGflvdNyvg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 36A0E4011F;
	Wed,  9 Oct 2024 17:04:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EC12B1BF3E8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 17:04:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E70E360638
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 17:04:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kok0PvLMIjPG for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2024 17:04:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42e; helo=mail-pf1-x42e.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F39A660621
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F39A660621
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com
 [IPv6:2607:f8b0:4864:20::42e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F39A660621
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 17:04:53 +0000 (UTC)
Received: by mail-pf1-x42e.google.com with SMTP id
 d2e1a72fcca58-71df04d3cd1so28677b3a.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 09 Oct 2024 10:04:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728493493; x=1729098293;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=NalHCw/yq0o7mdTQugdEr81cV/UtYYP9jAld2HHFzx4=;
 b=Ov3IMyYiDGFoRPR6WNqS4cOcnCJDlTPdtGVevCGJp6GIfBsHd2a3HEIn/pg7ojtiq9
 XxGGCJ4JDWtfLIVp4ccSVIihXrPMm8z0vNIbuZzcPguYZAqylHs3Z/bT5GKd80d2TgfW
 I1OKEQLGpv1S29ZOCZ8dCbR/3GZpr6Ui2Wx6P7dlfx6cyxw3OI6Bs7lfR2YyevCued5Q
 xOIMIpA0mvhF/uxadOpaLT0d0QzDGSffO6UtWU8mvk6W23vy+7rSRFn36lxJ6ywMPQUp
 uL2Bdd1Sqd9Eh4Rez12d4zmTlGFOqz3fTOWb6EhLwoBag8NbfE6hYH+o/pkfSW+PlEgB
 mx7g==
X-Forwarded-Encrypted: i=1;
 AJvYcCWwDQPgQBOObplieQevPtVaSNNDjXe2iPbXXhugM1pSvWamBZcR4oVKnDVz+DVHNcTZSSIDwdFbmfKFATlZUMU=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy13uvGhzc6t29XxUqZbm50AC6B17Gtc2uYPK2t852Q5iRtaxkH
 9lqY5fQQnrUAdVHrlVr3+Yhgg2cke/q9Kw3byBY4mhzYzwFXbrgz8mx2PpmPmNw=
X-Google-Smtp-Source: AGHT+IFqKNOtM7UgT7AYC29dcw8raaeuwMzF/VpPH0z2HRNDGR2sp/uQxYQenaFEXXjj0Uh3m3BDGw==
X-Received: by 2002:a05:6a00:2e26:b0:71e:13ac:d835 with SMTP id
 d2e1a72fcca58-71e1db7b230mr5390770b3a.11.1728493493007; 
 Wed, 09 Oct 2024 10:04:53 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-71df0cd3dd7sm8032275b3a.81.2024.10.09.10.04.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2024 10:04:52 -0700 (PDT)
Date: Wed, 9 Oct 2024 10:04:49 -0700
From: Joe Damato <jdamato@fastly.com>
To: Kurt Kanzenbach <kurt@linutronix.de>
Message-ID: <Zwa3sW-4s7oqktX3@LQ3V64L9R2>
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
 <87msjg46lw.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87msjg46lw.fsf@kurt.kurt.home>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1728493493; x=1729098293; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=NalHCw/yq0o7mdTQugdEr81cV/UtYYP9jAld2HHFzx4=;
 b=sUk1trmGCSUZmMIL9QEQdIbyNpaXFhLumbY/le7ucdyBvFAbcZejwBBfNKpIE2S2rd
 2LiJqW6sDvbgsyX9qORpINYg7Fbfsbcqk7ajLEifYUqT8koqBCFBIsoK6WyLnucdW1mi
 +uTkK303KfGZjEXVtwrgUy31ur7YT4oSBVFFM=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=sUk1trmG
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

On Mon, Oct 07, 2024 at 11:14:51AM +0200, Kurt Kanzenbach wrote:
> Hi Joe,
> 
> On Thu Oct 03 2024, Joe Damato wrote:
> > Link queues to NAPI instances via netdev-genl API so that users can
> > query this information with netlink:
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
> > Since igc uses only combined queues, you'll note that the same NAPI ID
> > is present for both rx and tx queues at the same index, for example
> > index 0:
> >
> > {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
> > {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'tx'},
> >
> > Signed-off-by: Joe Damato <jdamato@fastly.com>
> > ---
> >  drivers/net/ethernet/intel/igc/igc_main.c | 30 ++++++++++++++++++++---
> >  1 file changed, 26 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> > index 7964bbedb16c..b3bd5bf29fa7 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> > @@ -4955,6 +4955,7 @@ static int igc_sw_init(struct igc_adapter *adapter)
> >  void igc_up(struct igc_adapter *adapter)
> >  {
> >  	struct igc_hw *hw = &adapter->hw;
> > +	struct napi_struct *napi;
> >  	int i = 0;
> >  
> >  	/* hardware has been reset, we need to reload some things */
> > @@ -4962,8 +4963,17 @@ void igc_up(struct igc_adapter *adapter)
> >  
> >  	clear_bit(__IGC_DOWN, &adapter->state);
> >  
> > -	for (i = 0; i < adapter->num_q_vectors; i++)
> > -		napi_enable(&adapter->q_vector[i]->napi);
> > +	for (i = 0; i < adapter->num_q_vectors; i++) {
> > +		napi = &adapter->q_vector[i]->napi;
> > +		napi_enable(napi);
> > +		/* igc only supports combined queues, so link each NAPI to both
> > +		 * TX and RX
> > +		 */
> 
> igc has IGC_FLAG_QUEUE_PAIRS. For example there may be 2 queues
> configured, but 4 vectors active (and 4 IRQs). Is your patch working
> with that?  Can be tested easily with `ethtool -L <inf> combined 2` or
> by booting with only 2 CPUs.

I tested what you asked, here's what it looks like on my system:

16 core Intel(R) Core(TM) i7-1360P

lspci:
Ethernet controller: Intel Corporation Device 125c (rev 04)
                     Subsystem: Intel Corporation Device 3037

ethtool -i:
firmware-version: 2017:888d

$ sudo ethtool -L enp86s0 combined 2
$ sudo ethtool -l enp86s0
Channel parameters for enp86s0:
Pre-set maximums:
RX:		n/a
TX:		n/a
Other:		1
Combined:	4
Current hardware settings:
RX:		n/a
TX:		n/a
Other:		1
Combined:	2

$ cat /proc/interrupts | grep enp86s0 | cut --delimiter=":" -f1
 144
 145
 146
 147
 148

Note that IRQ 144 is the "other" IRQ, so if we ignore that one...
/proc/interrupts shows 4 IRQs, despite there being only 2 queues.

Querying netlink to see which IRQs map to which NAPIs:

$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
                         --dump napi-get --json='{"ifindex": 2}'
[{'id': 8200, 'ifindex': 2, 'irq': 148},
 {'id': 8199, 'ifindex': 2, 'irq': 147},
 {'id': 8198, 'ifindex': 2, 'irq': 146},
 {'id': 8197, 'ifindex': 2, 'irq': 145}]

This suggests that all 4 IRQs are assigned to a NAPI (this mapping
happens due to netif_napi_set_irq in patch 1).

Now query the queues and which NAPIs they are associated with (which
is what patch 2 adds):

$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \ 
                         --dump queue-get --json='{"ifindex": 2}'
[{'id': 0, 'ifindex': 2, 'napi-id': 8197, 'type': 'rx'},
 {'id': 1, 'ifindex': 2, 'napi-id': 8198, 'type': 'rx'},
 {'id': 0, 'ifindex': 2, 'napi-id': 8197, 'type': 'tx'},
 {'id': 1, 'ifindex': 2, 'napi-id': 8198, 'type': 'tx'}]

As you can see above, since the queues are combined and there are
only 2 of them, NAPI IDs 8197 and 8198 (which are triggered via IRQ
145 and 146) are displayed.

Does that cover the case you had in mind? If not let me know and I
am happy to test any other cases you like.

Thanks for taking a look at the code.

- Joe
