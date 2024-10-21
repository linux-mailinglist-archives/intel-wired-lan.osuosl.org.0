Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B416C9A7152
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Oct 2024 19:48:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3758280CE7;
	Mon, 21 Oct 2024 17:48:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z-_NhgXchmLF; Mon, 21 Oct 2024 17:48:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7729880CF9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729532933;
	bh=UepQWLhGKdoVeo51/ty/iHxSg7xlU1D+zlnU04mr4yU=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KnrT36cdi1Rvyo0xa5F+GLy/bQvwSgZeOMvhv4yw9NP+RCGyU8v6AT+I9bb948so8
	 a2nvJNx9+Pwy9N2zDlST6s0A0jMusBOKQKcu0CiddvmrCbNmaHKtscZISjOi+BxKnx
	 umlSid9VHQ9C0mUvxL8epP3JruUDXSx6pXs1nAnYsjBrkoHP/UkJtZ4LGPYo1ynWgs
	 QZMsZECpTTp3t0dIMoitBZsWJ4tqRFTnvp+M6VzfMCq3K3cP4LmCfEaCbxL58/mxgr
	 g3Fx0JOGcPUyHQzejqJzPJEOSP22tCnhQNtDCg55O3Zq/j9CtSIMLoCdjD7kAESRPu
	 ruLciwmmRy/xA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7729880CF9;
	Mon, 21 Oct 2024 17:48:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A27C771F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 17:48:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 83E9780CE7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 17:48:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ax3zLwKkfTh5 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Oct 2024 17:48:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C360080A5B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C360080A5B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C360080A5B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 17:48:50 +0000 (UTC)
X-CSE-ConnectionGUID: fMJZ4P4TRzGg4+3tGIwmxw==
X-CSE-MsgGUID: P/wPY0N6RSmLwqheq050Tw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="32715261"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="32715261"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 10:48:50 -0700
X-CSE-ConnectionGUID: hkY7BdqQQDW4rDZ5kS6dMw==
X-CSE-MsgGUID: sYb+WLBRSH2a7gv/WVNOow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="84199817"
Received: from philliph-desk.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.124.220.26])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 10:48:49 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Joe Damato <jdamato@fastly.com>, netdev@vger.kernel.org
Cc: kurt@linutronix.de, Joe Damato <jdamato@fastly.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer
 <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, "moderated
 list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>, open list
 <linux-kernel@vger.kernel.org>, "open list:XDP (eXpress Data Path)"
 <bpf@vger.kernel.org>
In-Reply-To: <20241018171343.314835-3-jdamato@fastly.com>
References: <20241018171343.314835-1-jdamato@fastly.com>
 <20241018171343.314835-3-jdamato@fastly.com>
Date: Mon, 21 Oct 2024 10:48:48 -0700
Message-ID: <874j55gxdr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729532931; x=1761068931;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=HDUE7vShHHJQGRZ7OyKpTLUDq3+cfNdFoYfU2fj+6hI=;
 b=bBOhPFJZdeXoZ4uTG+mk4NOXiLxjqDiGDdF1yYyPL7tPqET8ohJn0E6L
 bb1WwlzfmM4UH4z+naQh8jU66zZjG+ndmBQcCuc0PuaD0HxzgYmnMkhmY
 OfBHxkJk7k/myRWl+4lw9G3+bXHRSQWa0xe4eoq0WEd4Hva1oEQTqrDTw
 O57WzEVg7DzFccpSCYrBm+/9Jzzf/pyMhJjxH0DXGyl6H5RSrQAz3xYhd
 vFWr40Lg1ipzeh4oia0YSqsR6FmOUCDHJBwUYUSxfLFkKlWMf6yA7w2V1
 PHFoVXsfro3KsPIYNsN2ariktdHLJFa0zokQD0AXR/5hk9P1+zpc/aDnA
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bBOhPFJZ
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

Joe Damato <jdamato@fastly.com> writes:

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


Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>


Cheers,
-- 
Vinicius
