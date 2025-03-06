Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D90CA551AD
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Mar 2025 17:45:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4D63381BD6;
	Thu,  6 Mar 2025 16:45:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q9z6NrtjYxsa; Thu,  6 Mar 2025 16:45:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8300181B83
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741279547;
	bh=Y1tVqjEsF9yz8as4gUEJSF7TOmyvcDOBt4MIJRvQkVI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Pe5Kt/PpJBNv+dwZoxG/jdS4wKGf6q4vddaeY2sDS2eE3vPa4KqrHheluRbMu7mz+
	 zgf6IYgg7XxGlHZowBfS85zARLMqsQrvZRlW/qvcvTYzqkwBJaibk2lXI22PvdmdOX
	 QQ6gpyuhBo5jFaKwLAiuEXGKPWcJoO8DmM9ztiERJar6PFRuR1yatsct5o2b1GPzDi
	 l0KrexbJ92BU66+ITkl5uc96UkuZrAdrYeIlYyzpnuR9vXamezo94SC1exqZdOFZ7a
	 Zhi+R1PKYn16OmWoZgBoL0s/9pFPAx9QEOFShwUiM0tybZzyrZ5qM8AO83QU7MXzla
	 JcJrtKUq5GSzA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8300181B83;
	Thu,  6 Mar 2025 16:45:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id AC27DE2E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 16:45:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A660481B48
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 16:45:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nK8gtHOpxH7v for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Mar 2025 16:45:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62b; helo=mail-pl1-x62b.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B008981B36
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B008981B36
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B008981B36
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 16:45:44 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id
 d9443c01a7336-223fd89d036so18258055ad.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 Mar 2025 08:45:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741279544; x=1741884344;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Y1tVqjEsF9yz8as4gUEJSF7TOmyvcDOBt4MIJRvQkVI=;
 b=cfM1jEVkhUUsRpk0rX+C85LFiHEwbtaT+Fe2zzqjAmxQLdGQctAjrgRcm3vUYSY/er
 W6YjwjoTxw/6MJQVDEK6D043Jez3ShCQNfsbb9U5X2fSvImTFi6qePwSJA+spRIf6oJf
 zR1gzKcQ2N+DDx67mNK6tL7mufAm+pSulSFi6Fhfy72JTKhmX+58CwvINpD2kWuM5oVs
 LlnOXNl4rYj7mXAMbEpjA1na4YpHPZrM2es5q8SC4iOi4wpSU+ygeIHMB4t3lEsHxw9H
 VsuecjlFvVnnDgbC2KvOGRs7U7rs738W7Hh20VTbccVkGmIjKDY8TMQ93nCVm610sx+8
 IJ2w==
X-Forwarded-Encrypted: i=1;
 AJvYcCWi1kEp0z7goTmnQpm+4KQdD0YAsc7xErGSOevW/Os1xr+vqNL+iFzsvZvn8mkpKfHJaHB+bhjIskcvGQJEJRY=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx1YFLQ60FoYfdFAP+T0gk+1hw/d+uxU23+mkqU9Vwn15+UDzOr
 G2rlnb2EHZ5dRPLoCRqpJKLuBFFVO1GpNWp+ChiAcL/CBUXwD2v58EGsioDl7Bs=
X-Gm-Gg: ASbGncszDHPvQKwwazGeE9DzL9P0RSIfdVmu/+La38wcyKQ9oRbldmg+Rqhe17HRWm6
 zb0qcEOaM5cyL6toQODrtQabEhpcAi+KHPnGoLuEzrf/E8hnZOkoxzXp6GgCBdqh9h/La4fNz+q
 1EeenZ83MX1fum43VjIxiPNSWYWO7tD/DwVmyGO8S+IVlWMh2h/1s6yUWz/tUJAEmCu2E3Fj6Q9
 Nqe1WRh4t8se5cB+EZfD7wzyOQx6qx1Gjp2L1PO84IjZKlJwpXsTZns69P1SRpeTAsxFEK3FelL
 WwEUOvIggx9gd4IIbzieVF1VLFH29fKycJUpeO1Pt3rmSAG/pebJAZMbn8BnKehuu+YYYERpPKB
 0oaJ31Ne5VJo=
X-Google-Smtp-Source: AGHT+IGQhJlPlmoVKTFjSwcpy61urGaNYqp80VZY41flaZiT4qOPtjFv0gmL/biTffVDgOSzy876LQ==
X-Received: by 2002:a05:6a00:244f:b0:736:5c8e:bab8 with SMTP id
 d2e1a72fcca58-73682b5510amr13251516b3a.3.1741279543956; 
 Thu, 06 Mar 2025 08:45:43 -0800 (PST)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-73698452a28sm1570365b3a.78.2025.03.06.08.45.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Mar 2025 08:45:43 -0800 (PST)
Date: Thu, 6 Mar 2025 08:45:40 -0800
From: Joe Damato <jdamato@fastly.com>
To: florian@bezdeka.de
Cc: netdev@vger.kernel.org, vitaly.lifshits@intel.com,
 avigailx.dahan@intel.com, anthony.l.nguyen@intel.com,
 stable@vger.kernel.org, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Message-ID: <Z8nRNJ7QmevZrKYZ@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>, florian@bezdeka.de,
 netdev@vger.kernel.org, vitaly.lifshits@intel.com,
 avigailx.dahan@intel.com, anthony.l.nguyen@intel.com,
 stable@vger.kernel.org, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
References: <20250305180901.128286-1-jdamato@fastly.com>
 <796726995fe2c0e895188862321a0de8@bezdeka.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <796726995fe2c0e895188862321a0de8@bezdeka.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1741279544; x=1741884344; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Y1tVqjEsF9yz8as4gUEJSF7TOmyvcDOBt4MIJRvQkVI=;
 b=XdLqIqZHPeT4bpkSAa2lWbsBuftV4sdN2D1Qa6g7Gz8imLUIX6Tt1q9IWIkE6Za3T/
 l04b8UXP7RgBs3u3ZuQ0SkOKo2cjUVwewDH0ld4mOXbwU/l/lRtPcjWoi/4jsrtSckqX
 vBXtMfR3RV+AcF8+enkd89GcN7sbxU3a9v7po=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=XdLqIqZH
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] igc: Fix XSK queue NAPI ID
 mapping
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

On Thu, Mar 06, 2025 at 05:27:38PM +0100, florian@bezdeka.de wrote:
> Hi Joe,
> 
> On 2025-03-05 19:09, Joe Damato wrote:
> > In commit b65969856d4f ("igc: Link queues to NAPI instances"), the XSK
> > queues were incorrectly unmapped from their NAPI instances. After
> > discussion on the mailing list and the introduction of a test to codify
> > the expected behavior, we can see that the unmapping causes the
> > check_xsk test to fail:
> > 
> > NETIF=enp86s0 ./tools/testing/selftests/drivers/net/queues.py
> > 
> > [...]
> >   # Check|     ksft_eq(q.get('xsk', None), {},
> >   # Check failed None != {} xsk attr on queue we configured
> >   not ok 4 queues.check_xsk
> > 
> > After this commit, the test passes:
> > 
> >   ok 4 queues.check_xsk
> > 
> > Note that the test itself is only in net-next, so I tested this change
> > by applying it to my local net-next tree, booting, and running the test.
> > 
> > Cc: stable@vger.kernel.org
> > Fixes: b65969856d4f ("igc: Link queues to NAPI instances")
> > Signed-off-by: Joe Damato <jdamato@fastly.com>
> > ---
> >  drivers/net/ethernet/intel/igc/igc_xdp.c | 2 --
> >  1 file changed, 2 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.c
> > b/drivers/net/ethernet/intel/igc/igc_xdp.c
> > index 13bbd3346e01..869815f48ac1 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_xdp.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_xdp.c
> > @@ -86,7 +86,6 @@ static int igc_xdp_enable_pool(struct igc_adapter
> > *adapter,
> >  		napi_disable(napi);
> >  	}
> > 
> > -	igc_set_queue_napi(adapter, queue_id, NULL);
> >  	set_bit(IGC_RING_FLAG_AF_XDP_ZC, &rx_ring->flags);
> >  	set_bit(IGC_RING_FLAG_AF_XDP_ZC, &tx_ring->flags);
> > 
> > @@ -136,7 +135,6 @@ static int igc_xdp_disable_pool(struct igc_adapter
> > *adapter, u16 queue_id)
> >  	xsk_pool_dma_unmap(pool, IGC_RX_DMA_ATTR);
> >  	clear_bit(IGC_RING_FLAG_AF_XDP_ZC, &rx_ring->flags);
> >  	clear_bit(IGC_RING_FLAG_AF_XDP_ZC, &tx_ring->flags);
> > -	igc_set_queue_napi(adapter, queue_id, napi);
> > 
> >  	if (needs_reset) {
> >  		napi_enable(napi);
> 
> That doesn't look correct to me. You removed both invocations of
> igc_set_queue_napi() from igc_xdp.c. Where is the napi mapping now
> done (in case XDP is enabled)?

igc_set_queue_napi is called when the queues are created (igc_up,
__igc_open). When the queues are created they'll be linked. Whether
or not XDP is enabled does not affect the queues being linked.

The test added for this (which I mentioned in the commit message)
confirms that this is the correct behavior, as does the
documentation in Documentation/netlink/specs/netdev.yaml.

See commit df524c8f5771 ("netdev-genl: Add an XSK attribute to
queues").

> To me it seems flipped. igc_xdp_enable_pool() should do the mapping
> (previously did the unmapping) and igc_xdp_disable_pool() should do
> the unmapping (previously did the mapping). No?

In igc, all queues get their NAPIs mapped in igc_up or __igc_open. I
had mistakenly added code to remove the mapping for XDP because I
was under the impression that NAPIs should not be mapped for XDP
queues. See the commit under fixes.

This was incorrect, so this commit removes the unmapping and
corrects the behavior.

With this change, all queues have their NAPIs mapped (whether or not
they are used for AF_XDP) and is the agreed upon behavior based on
prior conversations on the list and the documentation I mentioned
above.

> Btw: I got this patch via stable. It doesn't make sense to send it
> to stable where this patch does not apply.

Maybe I made a mistake, but as far as I can tell the commit under
fixes is in 6.14-rc*:

$ git tag --contains b65969856d4f
v6.14-rc1
v6.14-rc2
v6.14-rc3
v6.14-rc4

So, I think this change is:
  - Correct
  - Definitely a "fixes" and should go to iwl-net
  - But maybe does not need to CC stable ?

If the Intel folks would like me to resend with some change please
let me know.
