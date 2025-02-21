Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 491F3A3FA4D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Feb 2025 17:11:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5E4B1408AB;
	Fri, 21 Feb 2025 16:11:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g5xEGNye7y9T; Fri, 21 Feb 2025 16:11:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 435544126E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740154285;
	bh=8Ew/m0Tesk9Nn8WJobtK7q6jqPTmqqXgIVl6zfztn/w=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mY5dIFGwBI8wGFWL9xwBezXoRIrkMNWSZXLkDaxZSfwLFe6KwRG8yhiT868Jahfdi
	 697VbdYRbE9xTDBdrbjmtZlObuhtH5xksoxFWcUlcz8YbIfc/0ZLcyumIABdvKgkkU
	 mmIedabiM56LFGx05hPLmytCD8ZQp8a+d4MNIs/U4hyZ0aJhm0zl/Ng+ktYqvByc1z
	 pNyk9/ImNvKHBS9xRKcEo2rWlYakWzVIdB6X1l3kbsfZ7/HemwDmZC+bV3wk7YPlw+
	 1sjVHlgXg3TLjW2ZfHJNWF84bdu5l/WV13PiswSRfkyuUqofxzur/KLaOmDfsVVoun
	 s8KRiKCguth6g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 435544126E;
	Fri, 21 Feb 2025 16:11:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1D630D92
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 10:24:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 022EE84090
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 10:24:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uQrWv0U3fCIJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Feb 2025 10:24:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::632; helo=mail-pl1-x632.google.com;
 envelope-from=0x1207@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1F00884089
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F00884089
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com
 [IPv6:2607:f8b0:4864:20::632])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1F00884089
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 10:24:25 +0000 (UTC)
Received: by mail-pl1-x632.google.com with SMTP id
 d9443c01a7336-2212a930001so51271205ad.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 02:24:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740133465; x=1740738265;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=8Ew/m0Tesk9Nn8WJobtK7q6jqPTmqqXgIVl6zfztn/w=;
 b=dPqTW4zR3FyL1kslf9YGbb1gq8ojkTaEFmHP5gY3MBccQC/jqbQEE8OfxavhswOlNR
 00wrjP5ZysTcysub5RAwAy7zJy4rvKGST+eUtO+IUw/o7wIwWO5nlpSmHnbqiDRCIEd2
 mWkTzDPhjAjlzvmzqmqU6FeQAkLK+GiND5i5gCS63EduEw50qfwmrkRt9NcdGGyMMk4U
 nlVCGfsv786Pc629K5aJHtKCA/dvbDaNmXZ0pDzHyybuMQ9RDYiJomRTBAEDDZKc5oQN
 hlRbKiAmibJO0kUl5fFiuhr+uRQjThizkVZlRGHmfFJyfMGK54lDreJG35yVX/g99NIa
 c8Gg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWTE5OmBI4o51uoUGi6k17qOy2G05EpNPPF9ChwQsy3QAzHwuy32HE0GrxSN4I+otW30FXLA4VHzTo8IBmDdMs=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzzTYvFGc7ugkzbrVDe+a6A93KHvF7j0qaierkdpMxdAYdtLKRb
 dBO703o5Yqqjncu6WDMwxioajCIhYPPkUNGzg0VYnYFJwCKY+aL/
X-Gm-Gg: ASbGnctXHYxRekcna5/Xs8QE0imA1XH5Ne5CzhJpOyVbPTXn1IZMzsSlEJ8MBU/xlJb
 gHPcJSqCDaqwIZFnHbDbW69yT3VdFv2l2Q/ZmmFw85oh758W21T/W9oCWuLfvx8ltpWREQ6ZPlU
 ZSQM8gO/2iZmQIGFM8n0IakxGwVobyvJuC9nOH3Wo9gnET3152hXut76C3yqlRfM7Mji97quc2E
 foP2zYAkkNW/texjHcP2pS7dtgs6ZrWQgqjIUQzLwWZB5p5H/Nhj3YlPypV+PbbEwYeO5vJHNXA
 D4EvXdb32BhXeUgnwluz9W8=
X-Google-Smtp-Source: AGHT+IGJZmPsP1AQp35fmvwVzaW4gHUPKNfzSI/RTvC+piEPapIcYtvOiFrJzWkqFVimOfGDgcDxpA==
X-Received: by 2002:a05:6a21:7888:b0:1ee:e669:ef88 with SMTP id
 adf61e73a8af0-1eef52da075mr4126395637.16.1740133465235; 
 Fri, 21 Feb 2025 02:24:25 -0800 (PST)
Received: from localhost ([129.146.253.192]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-73250dd701bsm13961074b3a.131.2025.02.21.02.24.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2025 02:24:24 -0800 (PST)
Date: Fri, 21 Feb 2025 18:24:09 +0800
From: Furong Xu <0x1207@gmail.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Maxime
 Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Simon Horman <horms@kernel.org>, Russell
 King <linux@armlinux.org.uk>, Alexei Starovoitov <ast@kernel.org>, Daniel
 Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Russell King
 <rmk+kernel@armlinux.org.uk>, Serge Semin <fancer.lancer@gmail.com>,
 Xiaolei Wang <xiaolei.wang@windriver.com>, Suraj Jaiswal
 <quic_jsuraj@quicinc.com>, Kory Maincent <kory.maincent@bootlin.com>, Gal
 Pressman <gal@nvidia.com>, Jesper Nilsson <jesper.nilsson@axis.com>, Andrew
 Halaney <ahalaney@redhat.com>, Choong Yong Liang
 <yong.liang.choong@linux.intel.com>, Kunihiko Hayashi
 <hayashi.kunihiko@socionext.com>, Vinicius Costa Gomes
 <vinicius.gomes@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
Message-ID: <20250221182409.00006fd1@gmail.com>
In-Reply-To: <20250221095651.npjpkoy2y6nehusy@skbuf>
References: <20250220025349.3007793-1-faizal.abdul.rahim@linux.intel.com>
 <20250220025349.3007793-2-faizal.abdul.rahim@linux.intel.com>
 <20250221174249.000000cc@gmail.com>
 <20250221095651.npjpkoy2y6nehusy@skbuf>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.42; x86_64-w64-mingw32)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Fri, 21 Feb 2025 16:11:22 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1740133465; x=1740738265; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=8Ew/m0Tesk9Nn8WJobtK7q6jqPTmqqXgIVl6zfztn/w=;
 b=FTP4VSFSLNniBWFFJsOYLOmHBR1fyZp+zhXyzWvr1U5uw1V1MvaoA7ivg7I55W1PvE
 CXTCO/rL8q7NjSnuGEtxbFTPt9zYn3xIXqiIUf/Zvk8qD99BBfREDeWbV/gwV2UliB5K
 3VfD2e1qA9u6C7B6r2u53V7fokeX7CfxVBdwKWw4GndQkyPxSowM5riY1tucK2nyC5fs
 XMddgUnAM3XcfXQan7ZSVGjfbt8QFZIcDJWfx3RjG3TFfig+MPKgjoOvTdM63l1FaAW5
 j2oaaDyXBLpSjMCFyeDme+v0ln7N+CxW52lXJef6NA6SClW8/q7H3C62BF2zgEZ698fh
 ktfg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=FTP4VSFS
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 1/9] net: ethtool: mm:
 extract stmmac verification logic into common library
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

On Fri, 21 Feb 2025 11:56:51 +0200, Vladimir Oltean <vladimir.oltean@nxp.com> wrote:

> On Fri, Feb 21, 2025 at 05:42:49PM +0800, Furong Xu wrote:
> > > +void ethtool_mmsv_link_state_handle(struct ethtool_mmsv *mmsv, bool up)
> > > +{
> > > +	unsigned long flags;
> > > +
> > > +	ethtool_mmsv_stop(mmsv);
> > > +
> > > +	spin_lock_irqsave(&mmsv->lock, flags);
> > > +
> > > +	if (up && mmsv->pmac_enabled) {
> > > +		/* VERIFY process requires pMAC enabled when NIC comes up */
> > > +		ethtool_mmsv_configure_pmac(mmsv, true);
> > > +
> > > +		/* New link => maybe new partner => new verification process */
> > > +		ethtool_mmsv_apply(mmsv);
> > > +	} else {
> > > +		mmsv->status = ETHTOOL_MM_VERIFY_STATUS_INITIAL;  
> > 
> > Tested this patch on my side, everything works well, but the verify-status
> > is a little weird:
> > 
> > # kernel booted, check initial states:
> > ethtool --include-statistics --json --show-mm eth1
> > [ {
> >         "ifname": "eth1",
> >         "pmac-enabled": false,
> >         "tx-enabled": false,
> >         "tx-active": false,
> >         "tx-min-frag-size": 60,
> >         "rx-min-frag-size": 60,
> >         "verify-enabled": false,
> >         "verify-time": 128,
> >         "max-verify-time": 128,
> >         "verify-status": "INITIAL",
> >         "statistics": {
> >             "MACMergeFrameAssErrorCount": 0,
> >             "MACMergeFrameSmdErrorCount": 0,
> >             "MACMergeFrameAssOkCount": 0,
> >             "MACMergeFragCountRx": 0,
> >             "MACMergeFragCountTx": 0,
> >             "MACMergeHoldCount": 0
> >         }
> >     } ]
> > 
> > # Enable pMAC by: ethtool --set-mm eth1 pmac-enabled on
> > ethtool --include-statistics --json --show-mm eth1
> > [ {
> >         "ifname": "eth1",
> >         "pmac-enabled": true,
> >         "tx-enabled": false,
> >         "tx-active": false,
> >         "tx-min-frag-size": 60,
> >         "rx-min-frag-size": 60,
> >         "verify-enabled": false,
> >         "verify-time": 128,
> >         "max-verify-time": 128,
> >         "verify-status": "DISABLED",
> >         "statistics": {
> >             "MACMergeFrameAssErrorCount": 0,
> >             "MACMergeFrameSmdErrorCount": 0,
> >             "MACMergeFrameAssOkCount": 0,
> >             "MACMergeFragCountRx": 0,
> >             "MACMergeFragCountTx": 0,
> >             "MACMergeHoldCount": 0
> >         }
> >     } ]
> > 
> > # Disable pMAC by: ethtool --set-mm eth1 pmac-enabled off
> > ethtool --include-statistics --json --show-mm eth1
> > [ {
> >         "ifname": "eth1",
> >         "pmac-enabled": true,
> >         "tx-enabled": false,
> >         "tx-active": false,
> >         "tx-min-frag-size": 60,
> >         "rx-min-frag-size": 60,
> >         "verify-enabled": false,
> >         "verify-time": 128,
> >         "max-verify-time": 128,
> >         "verify-status": "DISABLED",
> >         "statistics": {
> >             "MACMergeFrameAssErrorCount": 0,
> >             "MACMergeFrameSmdErrorCount": 0,
> >             "MACMergeFrameAssOkCount": 0,
> >             "MACMergeFragCountRx": 0,
> >             "MACMergeFragCountTx": 0,
> >             "MACMergeHoldCount": 0
> >         }
> >     } ]
> > 
> > verify-status always normal on other cases.  
> 
> Thanks for testing and for reporting this inconsistency.
> 
> > @Vladimir, maybe we shouldn't update mmsv->status in ethtool_mmsv_link_state_handle()?
> > Or, update mmsv->status like below:
> > mmsv->status = mmsv->pmac_enabled ?
> > 		ETHTOOL_MM_VERIFY_STATUS_INITIAL :
> > 		ETHTOOL_MM_VERIFY_STATUS_DISABLED;  
> 
> You mean mmsv->status = mmsv->verify_enabled ? ETHTOOL_MM_VERIFY_STATUS_INITIAL :
>                         ~~~~~~~~~~~~~~~~~~~~   ETHTOOL_MM_VERIFY_STATUS_DISABLED?

Your fix is better when link is up/down, so I vote verify_enabled.
