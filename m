Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 620699AB79A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 22:28:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0BA8A80F64;
	Tue, 22 Oct 2024 20:28:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gGyXpBn2kRcC; Tue, 22 Oct 2024 20:28:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D8B9C80F65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729628910;
	bh=PJMWdLBxWmamd6hVKbJ1xLBNYdB6AKwK9i9T9Bn4rmA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=82M4DFLLhJ8ORcLz7RLTwX5OuP2EpJA+85DuMsGXuJ9qKbIbxUnLnAsp9TZaDyDOE
	 gg+2zmsvMmoa7kvEGsnzOJo3YXsSFp8+fsNEWyFSBuaAxbv158J9nZfReQ7QuZDQ4e
	 e/QElnBbkQa6PfhnQ8kBgCdZzfWlelixM3GCW9PBXVpZY3PrygSWM34ctzvg8Oxfwj
	 LKAYrCga29LTAwPniUcvyR7GIaGQMSLWrOFPJtp9wQkwjQEtHknGo2Q45KGAtx0i8D
	 eE9Q/i86Kc5L3ngyzD0Gjc2IrCKxw5RU41QtCKxISc72UxQc4V8qj0vKVgsb7NunpM
	 62Z9m8Sll0tng==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D8B9C80F65;
	Tue, 22 Oct 2024 20:28:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8D4C72072
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 20:28:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 672FA6081A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 20:28:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yu4q6LV-Um65 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 20:28:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::633; helo=mail-pl1-x633.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 77009607E4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77009607E4
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com
 [IPv6:2607:f8b0:4864:20::633])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 77009607E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 20:28:26 +0000 (UTC)
Received: by mail-pl1-x633.google.com with SMTP id
 d9443c01a7336-20caccadbeeso66305195ad.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 13:28:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729628906; x=1730233706;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=PJMWdLBxWmamd6hVKbJ1xLBNYdB6AKwK9i9T9Bn4rmA=;
 b=xNFAF0IPzfSNsoCiwK6Zw6HZRqgTL2AfEOaR0R857+y6Gy0u4dGBbdNXym0O3dBNox
 /IyOoDCVRztqlLgLvSFnbpAdZilcsR5VG3tn/M/IN05R6jU8nNNNW5B+we6ONnI63sIj
 BjRv2GHIFMhICZ3sCgccRPZmtBAedgaJRbFNS51rd+9nbtIzfHwsfQ4twHRGns0CTkUg
 sdTjvesY29hVHxf122f8agJQ0k+Q2zcMQ5Go/XGXpatUAbL7AzNSwkZbTN7P17+XRo7Y
 IIOCMGYslS+q523s/wkTUCeoBhLlRfagDcf/frWxoLZJjfnbp/C/BZ8WQBjMSCWOlTd6
 AQhQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXZot2As89JQHok7/PAcci4IuWmT3Ip/g9xFBi6w7WOYbPYYzv66x+ev8oik0JBBdGo+hpIiBpyrC1zz8qDMqM=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw/PqDoAcs3a7ovW4AjYuEOp+FiI6sRMHqSDm9oiFp2j1fnCIM4
 OD3nTG7kNZE+23YNLSCxpzfl7RqtDO4HkBTrFozVwUATLfpcWvOjO5J++250BcE=
X-Google-Smtp-Source: AGHT+IF/ce2cH6YsKQwrxSrc+EOHV6a0+Ka22Y3Dqi0AhC2mugNz9U3DkGtcDFiVTs9rUCoC04Hcuw==
X-Received: by 2002:a17:903:2344:b0:20c:d469:ba95 with SMTP id
 d9443c01a7336-20fa9e09f1bmr5229205ad.16.1729628906327; 
 Tue, 22 Oct 2024 13:28:26 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-20e7f0c0bb7sm46730885ad.143.2024.10.22.13.28.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2024 13:28:25 -0700 (PDT)
Date: Tue, 22 Oct 2024 13:28:22 -0700
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Cc: kurt@linutronix.de, vinicius.gomes@intel.com,
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
 "open list:XDP (eXpress Data Path)" <bpf@vger.kernel.org>,
 jacob.e.keller@intel.com
Message-ID: <ZxgK5jsCn5VmKKrH@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>, netdev@vger.kernel.org,
 kurt@linutronix.de, vinicius.gomes@intel.com,
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
 "open list:XDP (eXpress Data Path)" <bpf@vger.kernel.org>,
 jacob.e.keller@intel.com
References: <20241018171343.314835-1-jdamato@fastly.com>
 <20241018171343.314835-3-jdamato@fastly.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241018171343.314835-3-jdamato@fastly.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1729628906; x=1730233706; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=PJMWdLBxWmamd6hVKbJ1xLBNYdB6AKwK9i9T9Bn4rmA=;
 b=wfI0fI1u6DJKh7WgC//m+6SZuU1K0yKK2LQlSeTRyts22oWcsmS+9PlU6IRiDd1jDO
 8eypPIFH80c+PkgrtWZW7bPCfHQUW43sPdtxUoyzF2CNVJLNs11grAgnSPbD2bHSL/er
 SQFia+XrnlnkTlGdErK0RCMlcF+DapycjSZII=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=wfI0fI1u
Subject: Re: [Intel-wired-lan] [net-next v3 2/2] igc: Link queues to NAPI
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

On Fri, Oct 18, 2024 at 05:13:43PM +0000, Joe Damato wrote:
> Link queues to NAPI instances via netdev-genl API so that users can
> query this information with netlink. Handle a few cases in the driver:
>   1. Link/unlink the NAPIs when XDP is enabled/disabled
>   2. Handle IGC_FLAG_QUEUE_PAIRS enabled and disabled
> 
> Example output when IGC_FLAG_QUEUE_PAIRS is enabled:
> 
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>                          --dump queue-get --json='{"ifindex": 2}'
> 
> [{'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
>  {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'rx'},
>  {'id': 2, 'ifindex': 2, 'napi-id': 8195, 'type': 'rx'},
>  {'id': 3, 'ifindex': 2, 'napi-id': 8196, 'type': 'rx'},
>  {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'tx'},
>  {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'tx'},
>  {'id': 2, 'ifindex': 2, 'napi-id': 8195, 'type': 'tx'},
>  {'id': 3, 'ifindex': 2, 'napi-id': 8196, 'type': 'tx'}]
> 
> Since IGC_FLAG_QUEUE_PAIRS is enabled, you'll note that the same NAPI ID
> is present for both rx and tx queues at the same index, for example
> index 0:
> 
> {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
> {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'tx'},
> 
> To test IGC_FLAG_QUEUE_PAIRS disabled, a test system was booted using
> the grub command line option "maxcpus=2" to force
> igc_set_interrupt_capability to disable IGC_FLAG_QUEUE_PAIRS.
> 
> Example output when IGC_FLAG_QUEUE_PAIRS is disabled:
> 
> $ lscpu | grep "On-line CPU"
> On-line CPU(s) list:      0,2
> 
> $ ethtool -l enp86s0  | tail -5
> Current hardware settings:
> RX:		n/a
> TX:		n/a
> Other:		1
> Combined:	2
> 
> $ cat /proc/interrupts  | grep enp
>  144: [...] enp86s0
>  145: [...] enp86s0-rx-0
>  146: [...] enp86s0-rx-1
>  147: [...] enp86s0-tx-0
>  148: [...] enp86s0-tx-1
> 
> 1 "other" IRQ, and 2 IRQs for each of RX and Tx, so we expect netlink to
> report 4 IRQs with unique NAPI IDs:
> 
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>                          --dump napi-get --json='{"ifindex": 2}'
> [{'id': 8196, 'ifindex': 2, 'irq': 148},
>  {'id': 8195, 'ifindex': 2, 'irq': 147},
>  {'id': 8194, 'ifindex': 2, 'irq': 146},
>  {'id': 8193, 'ifindex': 2, 'irq': 145}]
> 
> Now we examine which queues these NAPIs are associated with, expecting
> that since IGC_FLAG_QUEUE_PAIRS is disabled each RX and TX queue will
> have its own NAPI instance:
> 
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>                          --dump queue-get --json='{"ifindex": 2}'
> [{'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
>  {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'rx'},
>  {'id': 0, 'ifindex': 2, 'napi-id': 8195, 'type': 'tx'},
>  {'id': 1, 'ifindex': 2, 'napi-id': 8196, 'type': 'tx'}]
> 
> Signed-off-by: Joe Damato <jdamato@fastly.com>
> ---
>  v3:
>    - Replace igc_unset_queue_napi with igc_set_queue_napi(adapater, i,
>      NULL), as suggested by Vinicius Costa Gomes
>    - Simplify implemention of igc_set_queue_napi as suggested by Kurt
>      Kanzenbach, with a tweak to use ring->queue_index
> 
>  v2:
>    - Update commit message to include tests for IGC_FLAG_QUEUE_PAIRS
>      disabled
>    - Refactored code to move napi queue mapping and unmapping to helper
>      functions igc_set_queue_napi and igc_unset_queue_napi
>    - Adjust the code to handle IGC_FLAG_QUEUE_PAIRS disabled
>    - Call helpers to map/unmap queues to NAPIs in igc_up, __igc_open,
>      igc_xdp_enable_pool, and igc_xdp_disable_pool
> 
>  drivers/net/ethernet/intel/igc/igc.h      |  2 ++
>  drivers/net/ethernet/intel/igc/igc_main.c | 33 ++++++++++++++++++++---
>  drivers/net/ethernet/intel/igc/igc_xdp.c  |  2 ++
>  3 files changed, 33 insertions(+), 4 deletions(-)

I took another look at this to make sure that RTNL is held when
igc_set_queue_napi is called after the e1000 bug report came in [1],
and there may be two locations I've missed:

1. igc_resume, which calls __igc_open
2. igc_io_error_detected, which calls igc_down

In both cases, I think the code can be modified to hold rtnl around
calls to __igc_open and igc_down.

Let me know what you think ?

If you agree that I should hold rtnl in both of those cases, what is
the best way to proceed:
  - send a v4, or
  - wait for this to get merged (since I got the notification it was
    pulled into intel-next) and send a fixes ?

Here's the full analysis I came up with; I tried to be thorough, but
it is certainly possible I missed a call site:

For the up case:

- igc_up:
  - called from igc_reinit_locked, which is called via:
    - igc_reset_task (rtnl is held)
    - igc_set_features (ndo_set_features, which itself has an ASSERT_RTNL)
    - various places in igc_ethtool (set_priv_flags, nway_reset,
      ethtool_set_eee) all of which have RTNL held
  - igc_change_mtu which also has RTNL held
- __igc_open
  - called from igc_resume, which may need an rtnl_lock ?
  - igc_open
    - called from igc_io_resume, rtnl is held
    - called from igc_reinit_queues, only via ethool set_channels,
      where rtnl is held
    - ndo_open where rtnl is held

For the down case:

- igc_down:
  - called from various ethtool locations (set_ringparam,
    set_pauseparam, set_link_ksettings) all of which hold rtnl
  - called from igc_io_error_detected, which may need an rtnl_lock
  - igc_reinit_locked which is fine, as described above
  - igc_change_mtu which is fine, as described above
  - called from __igc_close
    - called from __igc_shutdown which holds rtnl
    - called from igc_reinit_queues which is fine as described above
    - called from igc_close which is ndo_close
