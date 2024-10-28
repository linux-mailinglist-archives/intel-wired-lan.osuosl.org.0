Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A6A9B39D3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Oct 2024 19:59:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A17438109E;
	Mon, 28 Oct 2024 18:59:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GTuRjZFlSFTx; Mon, 28 Oct 2024 18:59:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A1F68104B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730141975;
	bh=qeCldZNN0uQOZMpedqS7Oua78AnyCHE6/huQVyFkvbY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2P3jj5xlQv/s+hMbxztxW6M8Ccftq4lCnxNW+kwmBu6b0Nl8tJCUmiZo0rT73Uvwq
	 LQ5W/V7pl5pdDLvTUbryTasJTdCilmetTGL7dmbbEEu9ti+D872ZiibVyKIxdJykX8
	 +Y4buJEqevS6HuCb0rR4z4M9QFMHPLdAU7I/IMFw+SvUcysKxpXbrDnAvWyw7YHnPu
	 dmNT8cILeopGqCubdrQRKSntBUaYMlk/xXISxfH7OetSA18XofrWNaxm97c+8COtZY
	 k4UqrgV2ieGGe1dVKqHhxuEtibcBuTxrRGTR+9bDlFrrmubEFqTHomX3NDcW8f3F5m
	 WZ/zPlKu7BvdA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A1F68104B;
	Mon, 28 Oct 2024 18:59:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3110DAEE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 18:59:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1258B40228
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 18:59:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mLSoUAciJSUb for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Oct 2024 18:59:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::632; helo=mail-pl1-x632.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 16EF340207
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 16EF340207
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com
 [IPv6:2607:f8b0:4864:20::632])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 16EF340207
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 18:59:31 +0000 (UTC)
Received: by mail-pl1-x632.google.com with SMTP id
 d9443c01a7336-20ce5e3b116so31197345ad.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 11:59:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1730141971; x=1730746771;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=qeCldZNN0uQOZMpedqS7Oua78AnyCHE6/huQVyFkvbY=;
 b=ahf/sPLGfPUVybuFO/7kc8I5dyat5cUfmYEukqq/+Hqslo3WZOvZOhOB9iCwd9SEPP
 Cpq3MbkObkDNTEaTY1vmWq49wQRWjNzJxoh6xooZtXAN3GyPLTd6GLI2+f4LfbjQCd+T
 YZYs4ZRZCKrIueFbi3Nug2z95GWvfySGwMNqUVckHFdrttmaTp1OMQyP349ykla10QMg
 GQ6AIzZvSdOCAdy6H7SnDnKpF1rmIGJMRuUs7HEo9uSXC+svyTG017UR6LrFG6fV5V3H
 79WJVkEoh7vczXbH14DaELpfVtTRbju3SvFYlqgOQhMXRDW0zePedUlv0DZxTg9FsrWA
 ytWw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWZFH/cOKb3/DnIgYdTErnwEyMVF/ncge9061PahDNbU9BfwPE9IN2M3FaUuD0JWHlJWKvtCkD3Zx32sOq9dCI=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzlGtO71qM1PPZjRRpbdxnHtLL5uiCYXfgxLgiw7sWYZujh5yxk
 tWe8moT4MnfMiF+40y8eixvjR4tz0MCduBW6MEm6hPkfrggOzBMjwhmg73dV79I=
X-Google-Smtp-Source: AGHT+IHUdnN8IaS4uaqWrdTjg4xrewbchje8khIGQ1Drr+enMS0lfIciArKhVhl88XNPN1+fZdpMbg==
X-Received: by 2002:a17:902:ce12:b0:20c:7898:a8f4 with SMTP id
 d9443c01a7336-210c6ccfc15mr125345945ad.60.1730141971225; 
 Mon, 28 Oct 2024 11:59:31 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-210bbf434adsm53854335ad.10.2024.10.28.11.59.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2024 11:59:30 -0700 (PDT)
Date: Mon, 28 Oct 2024 11:59:27 -0700
From: Joe Damato <jdamato@fastly.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
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
Message-ID: <Zx_fD72US_Jhq1oL@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
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
 <Zx-yzhq4unv0gsVX@LQ3V64L9R2> <Zx-1BhZlXRQCImex@LQ3V64L9R2>
 <529d08d7-94ee-43da-904e-cf89823a59fb@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <529d08d7-94ee-43da-904e-cf89823a59fb@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1730141971; x=1730746771; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=qeCldZNN0uQOZMpedqS7Oua78AnyCHE6/huQVyFkvbY=;
 b=t8+8VjDyaqady3tJ1djMXbpIztzA5Yf6eipYWxvg8+GUe65L0/0+BfB/Sn04m3m/Lc
 qjWopLRfAXZiIW4Y+rbOZ/uEhYx3nMO0Tjq4c/lKdKYBB5Mj6SHtBzye16m5l8Kbuecc
 GwOpr2crEKL0z7nURxlc7Q+TafYONfmQ7OOVM=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=t8+8VjDy
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

On Mon, Oct 28, 2024 at 11:53:55AM -0700, Jacob Keller wrote:
> 
> 
> On 10/28/2024 9:00 AM, Joe Damato wrote:
> > 
> > I see, so it looks like there is:
> >    - resume
> >    - runtime_resume
> > 
> > The bug I am reintroducing is runtime_resume already holding RTNL
> > before my added call to rtnl_lock.
> > 
> > OK.
> > 
> > Does resume also hold rtnl before the driver's igc_resume is called?
> > I am asking because I don't know much about how PM works.
> > 
> > If resume does not hold RTNL (but runtime resume does, as the bug
> > you pointed out shows), it seems like a wrapper can be added to tell
> > the code whether rtnl should be held or not based on which resume is
> > happening.
> > 
> > Does anyone know if: resume (not runtime_resume) already holds RTNL?
> > I'll try to take a look and see, but I am not very familiar with PM.
> 
> I believe the resume doesn't hold RTNL, as its part of the core device
> code, which is not networking specific. It shouldn't be acquiring RTNL
> since that is a network specific lock.
> 
> I believe the code you posted as v5 should resolve this, and makes sense
> to me.
> 
> Thanks for digging into this :)

No problem; sorry for all the back and forth on this one and I
really appreciate your patience and reviews.

Thanks,
Joe
