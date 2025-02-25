Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDB5A442DF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Feb 2025 15:35:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8BA0660A6B;
	Tue, 25 Feb 2025 14:35:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MbIYbR_Gfwnj; Tue, 25 Feb 2025 14:35:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 599B260A3D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740494122;
	bh=0Qdy8pR/Dcc2nulb9kFWPIH5MwfoS+sb5ucheWbrsmU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jZ2r+lsL8xRVD8vCGAMS6S+z5D/5uOjvlvpDUEHUQpkYagehUJsac+6kcAK7h3QT5
	 /q8U5ym+6ZXmIme5ufbwoKA35FxR0wSEC1Kud+46B+cXEn+qlNXPfg983Tf5IbDjXH
	 c2SglOYhPXWnp/mcY2GLBt6OrXIkb/R5lFssIwjNnuRpYOULjkefag7BMN6nnIGZdg
	 qce7lKBMjuS2dkIyQEcL9sqG7kHAombd9e3MT0MT+Nb7l6QxE/mVtXzoL5xiOBtXlR
	 ypFakw9ThK8q3KadlawE4M1BkJAQ1m/NpmdtfcS57Q+enQPimX5PrKQy23r4FWWiTu
	 U7/KCIIGGRdRw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 599B260A3D;
	Tue, 25 Feb 2025 14:35:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id CDEA42292
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 14:35:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BDD4B80D62
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 14:35:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id INbPXdhMrovG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Feb 2025 14:35:18 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32c; helo=mail-wm1-x32c.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DA39D80CF5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA39D80CF5
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DA39D80CF5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 14:35:15 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 5b1f17b1804b1-43aac0390e8so13480225e9.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 06:35:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740494114; x=1741098914;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=0Qdy8pR/Dcc2nulb9kFWPIH5MwfoS+sb5ucheWbrsmU=;
 b=VXtXsW2V5RundWBbQ4xokv8a4X9l5B/Em2qeKlM7lkyHcqWSeV2xcJcnN667bmVGjc
 twabZOFQU8Twl7SvXKmC/bYMnRulLBg1OknZ0BW41YObPFdS6L4k0Q5TjCJy6/v8B9X7
 dQuneMRSaokPB5IqVQXyke+E0HNHqFyBPr4R45EWYhlUbiBaPxPhiFADoKNijFC1feg2
 2H2q/Uf0NJLQy+CP8dg5tvdbF9Lyk+ODk8z30bF/FB+7gdg79z47AyD0eajcnbyaEo+Y
 +1StZOmGAUuF1Lcm6ZUSzkUnUHAysNDOPXh5COJOyVO534s+0BXz+MsoC1y3+MPSoBoO
 Ojwg==
X-Gm-Message-State: AOJu0YyBgYLXfZZ1I0Pg7rH3JYHhdwWx/GH5BknAA6saXllp7S5ZyCGM
 yC+ypaMlaeYe7gN7cQ1YXXotzL5Znw/dMhgf/iDhgnNrhNScjaP1Zao2Rl1ko7U=
X-Gm-Gg: ASbGnctbnLhIfHWcrMRHrL4jscvMqiJKr9UafeuMce6NE1UHEswqzBbd2BakbSr25tx
 pxp9LzehvP9Y+P7JphYWpAsQ6Mxozlt7PqXKGvlUN6AMkgjBG3NYaOheZ+10WZ1J+HrqKiZFk/W
 zWuBLnx9+Pjs7TGLFiR43mb9GoUWUxWyaoV7V5OPgcA9nqdiTHY7V5YPWbeVsgNVS383pxp8Gat
 FBIfb+ZNDIHv0vZwL9wJAZuHQNCgOGIP/uAgDqXrbVyViD9jpeKtBwwjxdhNUZMeqVBkgeCgr7X
 FcJ6iH092ZchoEVi/fqZkMdHSig2rwJPGj+ShFNWvrGtbxwyq6TJdA==
X-Google-Smtp-Source: AGHT+IFbUcoHiBtSwH/dRFa+OIyHDCaNUFaFSzscYqKv5SpUEUS4+iybkDZXSOreAsEymh00vLC2+Q==
X-Received: by 2002:a05:600c:458e:b0:439:91dd:cfa3 with SMTP id
 5b1f17b1804b1-439ae221d72mr140180855e9.29.1740494113674; 
 Tue, 25 Feb 2025 06:35:13 -0800 (PST)
Received: from jiri-mlt.client.nvidia.com ([140.209.217.212])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-390cd86ca9csm2483645f8f.22.2025.02.25.06.35.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2025 06:35:13 -0800 (PST)
Date: Tue, 25 Feb 2025 15:35:09 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>, 
 Cosmin Ratiu <cratiu@nvidia.com>, Tariq Toukan <tariqt@nvidia.com>,
 netdev@vger.kernel.org, Konrad Knitter <konrad.knitter@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, davem@davemloft.net, 
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Andrew Lunn <andrew@lunn.ch>, linux-kernel@vger.kernel.org,
 ITP Upstream <nxne.cnse.osdt.itp.upstreaming@intel.com>, 
 Carolina Jubran <cjubran@nvidia.com>
Message-ID: <zzyls3te4he2l5spf4wzfb53imuoemopwl774dzq5t5s22sg7l@37fk7fvgvnrr>
References: <20250219164410.35665-1-przemyslaw.kitszel@intel.com>
 <20250219164410.35665-2-przemyslaw.kitszel@intel.com>
 <ybrtz77i3hbxdwau4k55xn5brsnrtyomg6u65eyqm4fh7nsnob@arqyloer2l5z>
 <87855c66-0ab4-4b40-81fa-b37149c17dca@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87855c66-0ab4-4b40-81fa-b37149c17dca@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1740494114; x=1741098914;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=0Qdy8pR/Dcc2nulb9kFWPIH5MwfoS+sb5ucheWbrsmU=;
 b=IOEfijV1fNhEeZdB+5DKxJoDenHZvBiWnlwQ+RyQaT8EHC+UMXUjux8deb5txKmATx
 rxedf2VWuOq0xsZ7g7cktsASkYOzvDbBVQLKXbCULRKw1PjqREW2ZbQFKcnZidZodlz1
 T/CpDvP3IJVt50MXngczQg0fx7FScquRP2+tdZsPATs+dCur4FeNQ+0IuqFn1jHxoVwN
 snbh/b9RKI4Kst7ai/DB2TC90aUmBrrwh5+v122yoLrMk5NHli0g2YcYiwIVaREqXCeR
 wAKTogihTd8jMct4IsbTRuqZBbCPegxuFjoj0mxDDEfUlgZ8rA1HQHjzW2mQNNqanGET
 jxRA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=IOEfijV1
Subject: Re: [Intel-wired-lan] [RFC net-next v2 1/2] devlink: add whole
 device devlink instance
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

Tue, Feb 25, 2025 at 12:30:49PM +0100, przemyslaw.kitszel@intel.com wrote:
>
>> > Thanks to Wojciech Drewek for very nice naming of the devlink instance:
>> > PF0:		pci/0000:00:18.0
>> > whole-dev:	pci/0000:00:18
>> > But I made this a param for now (driver is free to pass just "whole-dev").
>> > 
>> > $ devlink dev # (Interesting part of output only)
>> > pci/0000:af:00:
>> >   nested_devlink:
>> >     pci/0000:af:00.0
>> >     pci/0000:af:00.1
>> >     pci/0000:af:00.2
>> >     pci/0000:af:00.3
>> >     pci/0000:af:00.4
>> >     pci/0000:af:00.5
>> >     pci/0000:af:00.6
>> >     pci/0000:af:00.7
>> 
>> 
>> In general, I like this approach. In fact, I have quite similar
>> patch/set in my sandbox git.
>> 
>> The problem I didn't figure out how to handle, was a backing entity
>> for the parent devlink.
>> 
>> You use part of PCI BDF, which is obviously wrong:
>> 1) bus_name/dev_name the user expects to be the backing device bus and
>>     address on it (pci/usb/i2c). With using part of BDF, you break this
>>     assumption.
>> 2) 2 PFs can have totally different BDF (in VM for example). Then your
>>     approach is broken.
>
>To make the hard part of it easy, I like to have the name to be provided
>by what the PF/driver has available (whichever will be the first of
>given device PFs), as of now, we resolve this issue (and provide ~what
>your devlink_shared does) via ice_adapter.

I don't understand. Can you provide some examples please?


>
>Making it a devlink instance gives user an easy way to see the whole
>picture of all resources handled as "shared per device", my current
>output, for all PFs and VFs on given device:
>
>pci/0000:af:00:
>  name rss size 8 unit entry size_min 0 size_max 24 size_gran 1
>    resources:
>      name lut_512 size 0 unit entry size_min 0 size_max 16 size_gran 1
>      name lut_2048 size 8 unit entry size_min 0 size_max 8 size_gran 1
>
>What is contributing to the hardness, this is not just one for all ice
>PFs, but one per device, which we distinguish via pci BDF.

How?


>
>> 
>> I was thinking about having an auxiliary device created for the parent,
>> but auxiliary assumes it is child. The is upside-down.
>> 
>> I was thinking about having some sort of made-up per-driver bus, like
>> "ice" of "mlx5" with some thing like DSN that would act as a "dev_name".
>> I have a patch that introduces:
>> 
>> struct devlink_shared_inst;
>> 
>> struct devlink *devlink_shared_alloc(const struct devlink_ops *ops,
>>                                       size_t priv_size, struct net *net,
>>                                       struct module *module, u64 per_module_id,
>>                                       void *inst_priv,
>>                                       struct devlink_shared_inst **p_inst);
>> void devlink_shared_free(struct devlink *devlink,
>>                          struct devlink_shared_inst *inst);
>> 
>> I took a stab at it here:
>> https://github.com/jpirko/linux_mlxsw/commits/wip_dl_pfs_parent/
>> The work is not finished.
>> 
>> 
>> Also, I was thinking about having some made-up bus, like "pci_ids",
>> where instead of BDFs as addresses, there would be DSN for example.
>> 
>> None of these 3 is nice.
>
>how one would invent/infer/allocate the DSN?

Driver knows DSN, it can obtain from pci layer.


>
>faux_bus mentioned by Jake would be about the same level of "fakeness"
>as simply allocating a new instance of devlink by the first PF, IMO :)

Hmm, briefly looking at faux, this looks like fills the gap I missed in
auxdev. Will try to use it in my patchset.

Thanks!


