Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE07A2FCF0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 23:22:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EF0B7818AC;
	Mon, 10 Feb 2025 22:22:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OkIZRZQp12WD; Mon, 10 Feb 2025 22:22:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0EB1581F0F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739226135;
	bh=fbq5bdkh5KGZmV4lXmeUGC15WHyvC1UK0TIUDiJsUQ0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rDWLRdkb56eX0gyOzXUbPd1af2sgVFKCnnZLlgCoTXx9/mh+2hZo9NvVed5yBeGs8
	 DsYVgmE1ZzQkiK6NJ4bgnkxsaZGgummtFac14/JdseXwudyhuAGpov0eOF3QcF3wrQ
	 UpNEF34wkgXWwHPbpaEvohk5lLSSIEXpH8GsP6RO8GoR31GCI3nXbhdlXtHPLNP97d
	 ldn8TD1v17MTHUjVYWFteMbshe+S7zS3l1kO5RlxHTRkHJrpz/RY2J1431z0Vn60F9
	 VC9+a68pJcg1T7WhjQApiO955BU5wblkWdkyPdvq1IkzqEWYJtXOsf+y/siHHbvxU6
	 4cCPdzHJmhdCw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0EB1581F0F;
	Mon, 10 Feb 2025 22:22:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8D1576C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 22:22:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7138D812C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 22:22:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R1i9BO-kG0ko for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2025 22:22:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::630; helo=mail-pl1-x630.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F102382053
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F102382053
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com
 [IPv6:2607:f8b0:4864:20::630])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F102382053
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 22:22:08 +0000 (UTC)
Received: by mail-pl1-x630.google.com with SMTP id
 d9443c01a7336-21f710c17baso40168055ad.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 14:22:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739226128; x=1739830928;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:to:from:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=fbq5bdkh5KGZmV4lXmeUGC15WHyvC1UK0TIUDiJsUQ0=;
 b=NSdvI2prxQ3ddH3sPVt8TjCl4pnCVhg1ZZpu3eV4/Sa4YSj/4tptO/lrujxw0mTFsd
 heDjBXCUzL2yNmQnSHiiWE5moO8c5RfLQUVx1Dh3pDIGYsZ++buJtC/W1UU6IXt+Vpfz
 ZciR05bdtMAVPqj4GNqu3wttjM15r8ZsI6CO+AVZRvrkMBV3rb2BxPJdgmMjdudrL8LN
 qSYh5EEIVjBmv+7+oNBfr8TtswDsQr585Ak0EwO9SEVB4JCLvcDzU/tDJ6+6pF1wuOaJ
 JhCpJpMRNS4pvRuXrcNq3OruLIhaGCEU1UVi5gSUuyJuHPy/jq7PFLrWxQaXDtDmJ4ru
 y/3A==
X-Forwarded-Encrypted: i=1;
 AJvYcCVMsfIPn74I1sO+7ENeHEAXvXIIQ8IjsRLExbJHh2V2tg5IKUvoh5a3fGAmQa6LdWHQN9nKSaYBZdp/CNYw2pM=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyjFPN9LGzX0u9QISJAMbt7+8/cPpIXWvL1bv2hWl+H8uNrNua6
 b+nH/nin3Knv+mf0ONlBYFNiHDpCKqufaJj32OgTU4KP7sx5WpdpGfsdd/gFSQVC/B/lqP2PAfa
 h
X-Gm-Gg: ASbGncuM7vY/TXSY525AYiwqzhgjuSZ+vuz3o1LYUHAASK+S6Wl2nvU04LaQcWgl0nu
 3AXKKays2s/pWDF78r4FdVTvbcGD5927O6hFrCJ9gsv0D1HuqZB/BlxFOIj51x9YPFFzGYFbYJo
 bfNVZB9wD+IY+G9ehgHk/RjwqnrwlXzodQJQWGdLFblry3bTT69ERVQFgLY2IzISPSIe3FCkYvW
 PM+zDLxsr2x80QT3btvbMrRwv+onZSBMecaE1ZXz5OOLj0LRkbYOapXmYmx3RkgEZJVc0iWzVRg
 0RGhlkYgRCHE+agOrvkokITftOWx4T7EXItWMwJAh3t/zQl5p7jVLJKeKg==
X-Google-Smtp-Source: AGHT+IFT1mfdHNlgzjIhjuvz926QB5vh22HSLx2qvqTalfE3+n+YY/zew1rCD6y0tP0B+x0g7qTHuQ==
X-Received: by 2002:a05:6a20:6f8b:b0:1ed:707e:7c4 with SMTP id
 adf61e73a8af0-1ee03b6fe02mr24807986637.38.1739226127931; 
 Mon, 10 Feb 2025 14:22:07 -0800 (PST)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-730aad5535fsm1205630b3a.51.2025.02.10.14.22.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2025 14:22:07 -0800 (PST)
Date: Mon, 10 Feb 2025 14:22:05 -0800
From: Joe Damato <jdamato@fastly.com>
To: Kurt Kanzenbach <kurt@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <Z6p8DeQxCEpb6Nij@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20250210-igb_irq-v1-0-bde078cdb9df@linutronix.de>
 <20250210-igb_irq-v1-1-bde078cdb9df@linutronix.de>
 <Z6pEq9fs5RvglrVk@LQ3V64L9R2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z6pEq9fs5RvglrVk@LQ3V64L9R2>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1739226128; x=1739830928; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:to:from:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=fbq5bdkh5KGZmV4lXmeUGC15WHyvC1UK0TIUDiJsUQ0=;
 b=NqJrh/6piyebQVRreFeChvVTYqXzI01CaNKZ4igwQWtzTxIDHnFHSdhRYIAhbhN56R
 z25mkrhtlUKZJI/ZecY+9kyGNquDYn3FYwF0N48elj8jl3i7Z0xGWewbNeWCB2UcUL5H
 kkZFxQ1K6a8KFzy3h9QaW05KTvM8SeWwukn6U=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=NqJrh/6p
Subject: Re: [Intel-wired-lan] [PATCH 1/3] igb: Link IRQs to NAPI instances
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

On Mon, Feb 10, 2025 at 10:25:47AM -0800, Joe Damato wrote:
> On Mon, Feb 10, 2025 at 10:19:35AM +0100, Kurt Kanzenbach wrote:
> > Link IRQs to NAPI instances via netdev-genl API. This allows users to query
> > that information via netlink:
> > 
> > |$ ./tools/net/ynl/pyynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
> > |                               --dump napi-get --json='{"ifindex": 2}'
> > |[{'defer-hard-irqs': 0,
> > |  'gro-flush-timeout': 0,
> > |  'id': 8204,
> > |  'ifindex': 2,
> > |  'irq': 127,
> > |  'irq-suspend-timeout': 0},
> > | {'defer-hard-irqs': 0,
> > |  'gro-flush-timeout': 0,
> > |  'id': 8203,
> > |  'ifindex': 2,
> > |  'irq': 126,
> > |  'irq-suspend-timeout': 0},
> > | {'defer-hard-irqs': 0,
> > |  'gro-flush-timeout': 0,
> > |  'id': 8202,
> > |  'ifindex': 2,
> > |  'irq': 125,
> > |  'irq-suspend-timeout': 0},
> > | {'defer-hard-irqs': 0,
> > |  'gro-flush-timeout': 0,
> > |  'id': 8201,
> > |  'ifindex': 2,
> > |  'irq': 124,
> > |  'irq-suspend-timeout': 0}]
> > |$ cat /proc/interrupts | grep enp2s0
> > |123:          0          1 IR-PCI-MSIX-0000:02:00.0   0-edge      enp2s0
> > |124:          0          7 IR-PCI-MSIX-0000:02:00.0   1-edge      enp2s0-TxRx-0
> > |125:          0          0 IR-PCI-MSIX-0000:02:00.0   2-edge      enp2s0-TxRx-1
> > |126:          0          5 IR-PCI-MSIX-0000:02:00.0   3-edge      enp2s0-TxRx-2
> > |127:          0          0 IR-PCI-MSIX-0000:02:00.0   4-edge      enp2s0-TxRx-3
> > 
> > Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> > ---
> >  drivers/net/ethernet/intel/igb/igb_main.c | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> > index d368b753a4675d01b5dfa50dee4cd218e6a5e14b..d4128d19cc08f62f95682069bb5ed9b8bbbf10cb 100644
> > --- a/drivers/net/ethernet/intel/igb/igb_main.c
> > +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> > @@ -947,6 +947,9 @@ static int igb_request_msix(struct igb_adapter *adapter)
> >  				  q_vector);
> >  		if (err)
> >  			goto err_free;
> > +
> > +		netif_napi_set_irq(&q_vector->napi,
> > +				   adapter->msix_entries[vector].vector);
> >  	}
> 
> As far as I can tell, all paths that lead here hold RTNL:

A nit on my own comment, netif_napi_set_irq doesn't ASSERT_RTNL (but
does hold net_device->lock); its the other functions in patch 2 that
ASSERT_RTNL.

My reviewed-by stands; just wanted to correct myself.
