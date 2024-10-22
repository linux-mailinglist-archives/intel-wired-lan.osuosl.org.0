Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CBAD99AB812
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 22:58:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 80B2E404FF;
	Tue, 22 Oct 2024 20:58:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KECdXBfS2RLB; Tue, 22 Oct 2024 20:58:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E74E404EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729630701;
	bh=3nOwD9lkrUDYYUOOp26VYiqs0pM6VysutcI+Z8NYNEQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cAftaC22gigzmbIrRLPDv9pA6/XGfLlfWhGRSQXA4KpTmlt47LMMYuW0mA0t14KkQ
	 KaVJB/wIsPdu0rcTXTMXJrNhqz92gJIOTUWQgKsM01RShiCxkBrUFtYTykvfJUqI46
	 BxgaUdzBC4F7wlfg1jyFzPjvabHmNJdcr1PLNrUZoD2LTi5j9+86y+PoUksNWwH65I
	 blbHLzlSeMB89klp8SbKsxcUXNFgL9vwYaTLfoDP3LQhYBi0xLLr2zossys7XcRpUG
	 GDS6H6KPU6VPYkd9U49IRc5ryqTzcKMaatogHf/5AoJBN9MpsAhlfXSo+fFb+VVoKN
	 Fa9jFU3MzI0ag==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E74E404EB;
	Tue, 22 Oct 2024 20:58:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4F8CC59F4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 20:58:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2E369404E2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 20:58:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tRlQ6ksqkB4A for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 20:58:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::102c; helo=mail-pj1-x102c.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D7B2F40106
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D7B2F40106
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com
 [IPv6:2607:f8b0:4864:20::102c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D7B2F40106
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 20:58:17 +0000 (UTC)
Received: by mail-pj1-x102c.google.com with SMTP id
 98e67ed59e1d1-2e2bd0e2c4fso4642591a91.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 13:58:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729630697; x=1730235497;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=3nOwD9lkrUDYYUOOp26VYiqs0pM6VysutcI+Z8NYNEQ=;
 b=J+8pDZo83W2EZkuRgbSYxP7udbK5fG3tZfCXIrtyi3NQHPC5nN6+D6ZH+JZR/k7SXW
 OIHncALxwQOqY9+bWbej1kcXMW6IOWV8Ue441DsyK36YquJGBaG9pDjxmHgOUo1YWb98
 1D37XOYYTd5tj2zR88ACNbjPlrRPv66hL09n8SVP3PbVp4v2nOsvYDhyJYNHmi6tl60D
 8maeBDbguK64yY0/I8m3mpmFXsrdouM4+FwiNlP7NWpuSuC0igOzdTSQ+XqNaiINf7i1
 j8jSf5AeWogNW53MptNLZYwwsFCnhG2OqU/bV63EUQcy/fPTOWbBvPS54A+TjzPaDom2
 PE8A==
X-Forwarded-Encrypted: i=1;
 AJvYcCW0xBz5vIPiOY8pax7I1sV7yN4N5Ent+U3T+217uJuHz/ZyqS6XiQLEYMRgaHfubD+emxhMrctDTPEKM1GTStU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxCNjFKjaALSiZJK4YZcXs23T6w8u9xlJdoCCBo+0/+MTV2lzie
 hZc5/9lA3z4qWVwXtR+Gj7YcPwm8yql9BwYr6NK6f5Dy9LVwxGt1lEr3YTGUN9obSv9ZmkBmBms
 K
X-Google-Smtp-Source: AGHT+IFuaj5b71S0NIUeGmZ8xwvs7H0mLx+yYas133Ktloz7vz9pqp0kb0p5RyugJCulagxpYtuotQ==
X-Received: by 2002:a17:90a:e502:b0:2e2:ddfa:24d5 with SMTP id
 98e67ed59e1d1-2e76b5e2442mr247700a91.15.1729630696853; 
 Tue, 22 Oct 2024 13:58:16 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2e5ad510771sm6687535a91.50.2024.10.22.13.58.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2024 13:58:16 -0700 (PDT)
Date: Tue, 22 Oct 2024 13:58:13 -0700
From: Joe Damato <jdamato@fastly.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: netdev@vger.kernel.org, kurt@linutronix.de, vinicius.gomes@intel.com,
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
Message-ID: <ZxgR5XP-YE4adYz3@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
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
 "open list:XDP (eXpress Data Path)" <bpf@vger.kernel.org>
References: <20241018171343.314835-1-jdamato@fastly.com>
 <20241018171343.314835-3-jdamato@fastly.com>
 <ZxgK5jsCn5VmKKrH@LQ3V64L9R2>
 <40242f59-139a-4b45-8949-1210039f881b@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <40242f59-139a-4b45-8949-1210039f881b@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1729630697; x=1730235497; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=3nOwD9lkrUDYYUOOp26VYiqs0pM6VysutcI+Z8NYNEQ=;
 b=rRZAVr70bZ9D4kArO9BM7clw2Z886YubVVsCB4MmDa2Qrt0YNxY0LvSH/UuOlV8WZ2
 Tw3rPTtYfNLiaDUyN2b0R3DiDIfI8e6sRBEqX8cYzpdQMkqNs/7yVu74KY5l2bSJWSMV
 jjB+OboSn06Lb6fxRzEjoENdTa48Irz9V+80g=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=rRZAVr70
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

On Tue, Oct 22, 2024 at 01:53:01PM -0700, Jacob Keller wrote:
> 
> 
> On 10/22/2024 1:28 PM, Joe Damato wrote:
> > I took another look at this to make sure that RTNL is held when
> > igc_set_queue_napi is called after the e1000 bug report came in [1],
> > and there may be two locations I've missed:
> > 
> > 1. igc_resume, which calls __igc_open
> > 2. igc_io_error_detected, which calls igc_down
> > 
> > In both cases, I think the code can be modified to hold rtnl around
> > calls to __igc_open and igc_down.
> > 
> > Let me know what you think ?
> > 
> > If you agree that I should hold rtnl in both of those cases, what is
> > the best way to proceed:
> >   - send a v4, or
> >   - wait for this to get merged (since I got the notification it was
> >     pulled into intel-next) and send a fixes ?
> > 
> 
> Intel-next uses a stacked set of patches which we then send in batches
> via PRs as they pass our internal testing.
> 
> We can drop the v3 and await v4.

OK, thanks for the info. I will prepare, test locally, and send a
v4 shortly.

> > Here's the full analysis I came up with; I tried to be thorough, but
> > it is certainly possible I missed a call site:
> > 
> > For the up case:
> > 
> > - igc_up:
> >   - called from igc_reinit_locked, which is called via:
> >     - igc_reset_task (rtnl is held)
> >     - igc_set_features (ndo_set_features, which itself has an ASSERT_RTNL)
> >     - various places in igc_ethtool (set_priv_flags, nway_reset,
> >       ethtool_set_eee) all of which have RTNL held
> >   - igc_change_mtu which also has RTNL held
> > - __igc_open
> >   - called from igc_resume, which may need an rtnl_lock ?
> >   - igc_open
> >     - called from igc_io_resume, rtnl is held
> >     - called from igc_reinit_queues, only via ethool set_channels,
> >       where rtnl is held
> >     - ndo_open where rtnl is held
> > 
> > For the down case:
> > 
> > - igc_down:
> >   - called from various ethtool locations (set_ringparam,
> >     set_pauseparam, set_link_ksettings) all of which hold rtnl
> >   - called from igc_io_error_detected, which may need an rtnl_lock
> >   - igc_reinit_locked which is fine, as described above
> >   - igc_change_mtu which is fine, as described above
> >   - called from __igc_close
> >     - called from __igc_shutdown which holds rtnl
> >     - called from igc_reinit_queues which is fine as described above
> >     - called from igc_close which is ndo_close
> 
> This analysis looks complete to me.

Thanks; I'd appreciate your comments on the e1000 RFC I posted, if
you have a moment. I'm going to update that thread with more data
now that I have analysed igc as there are some parallels:

https://lore.kernel.org/netdev/20241022172153.217890-1-jdamato@fastly.com/
