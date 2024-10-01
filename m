Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F0898C08E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Oct 2024 16:44:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3648A60723;
	Tue,  1 Oct 2024 14:44:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S1-cINpNHLCz; Tue,  1 Oct 2024 14:44:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E78B160841
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727793884;
	bh=6xBuxdwkvAWBb4tsrg44inPQWvKApsZPZtxVVoPfSQs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VNdI4DGGgKredlAOevajJdI3/wIkSd9nUHxcmeYctd212P9/6S+53WRhS5tVcE8fF
	 BpFcybpQvR9WEdOa7QSPGeUfUmddhyecl6sEZLiKWN6ftwccZGiJQADWmap7Q2PdpC
	 /qdKOssbPhiaL0YRKTQVYB6m5503JSaJGAHGNab69GgLvte6g3pBEcN1TN5OoM/av5
	 CanlZud+WRDd98R4xph+l1hLDol8ejqmAp1KCOVsC612naeyjkkE5xRr7VIhJwvAdg
	 XKR816ZjEKU03jLvRY6+Q/xMZVigBUAlFH/9/TatXQKqOBQIG5toufGw1+tMshCz59
	 VGl9jcD8scz3Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E78B160841;
	Tue,  1 Oct 2024 14:44:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A1C2B1BF348
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 14:44:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9B72D405BB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 14:44:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xEltN86a1_SM for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Oct 2024 14:44:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::630; helo=mail-pl1-x630.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 46270405A6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 46270405A6
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com
 [IPv6:2607:f8b0:4864:20::630])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 46270405A6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 14:44:40 +0000 (UTC)
Received: by mail-pl1-x630.google.com with SMTP id
 d9443c01a7336-20b833f9b35so21115425ad.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 01 Oct 2024 07:44:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727793879; x=1728398679;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=6xBuxdwkvAWBb4tsrg44inPQWvKApsZPZtxVVoPfSQs=;
 b=qpiZAb3JPp8QJucTbtEkDhPn3LUyXlu23fXKZogW4PJ3U5A4tAG1yNGM8FeoEU1JQ+
 MXM4gMeGY3amv8QuNDAIL8rrhH7glbTZktvfw7SSikZs1amXulAglCnueI+ZjtteegJ2
 G5opE5XJbpWZlKjM9QCANAZyeNE0xKIuPOxXhd2AFwNcRB47hteh8jptdsWx7kibxq3B
 eWo86Pr5OjoVXreXcTaEQNj+LwEHk1ENEw6LwX5AatKO/EOGTRLiPsJmmSD47MizWJcE
 yt1bKujpJFL0qBHZwWViUngxr0dRi8ifLQ5ukpPiKOY/JSCJD0cFOiXNxkB2MPagYQzp
 BmMw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWPeTIvL+tkj7c6KrtmFJrLdgWkqrPlfsi1ZgR5MQcy1IduP7Rfsey2G8uyjpPToL7paSKbcEu87XNe5Oqsaec=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxzPR97zZHcINzsat3thDqdyuZXHi4oJ7ZfKkGeDvlS4nG+Q7JA
 fGhf281Kgv33VNrDrlNWbXTREnd4lkgx/mu+Wilf9wE8PhJEuULs3qnJXTmF2MI=
X-Google-Smtp-Source: AGHT+IFrL++WrEKmj9fGaGHTFlHosE8dClJc0XF1vbqkiHKt2WaJxn/SZxsD4FVlPmKCFMnGxnIe3Q==
X-Received: by 2002:a17:902:e5cd:b0:20b:9680:d5c4 with SMTP id
 d9443c01a7336-20b9680d828mr78255135ad.4.1727793879333; 
 Tue, 01 Oct 2024 07:44:39 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-20b37d68a93sm70530125ad.56.2024.10.01.07.44.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2024 07:44:38 -0700 (PDT)
Date: Tue, 1 Oct 2024 07:44:36 -0700
From: Joe Damato <jdamato@fastly.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <ZvwK1PnvREjf_wvK@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>,
 Simon Horman <horms@kernel.org>
References: <20240925180017.82891-1-jdamato@fastly.com>
 <20240925180017.82891-2-jdamato@fastly.com>
 <6a440baa-fd9b-4d00-a15e-1cdbfce52168@intel.com>
 <c32620a8-2497-432a-8958-b9b59b769498@intel.com>
 <9f86b27c-8d5c-4df9-8d8c-91edb01b0b79@intel.com>
 <Zvsjitl-SANM81Mk@LQ3V64L9R2>
 <a2d7ef07-a3a8-4427-857f-3477eb48af11@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a2d7ef07-a3a8-4427-857f-3477eb48af11@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1727793879; x=1728398679; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=6xBuxdwkvAWBb4tsrg44inPQWvKApsZPZtxVVoPfSQs=;
 b=TiEhqC090qkWiVmSWuk4zBuSiZ84xyQvoRbeOrifcTgmIAT+IWdL26eIMeyD8BAaeV
 8bmmIUd9c/ODhJSkmbyv5LpjXjAEVCC6ifZoZ0MlOG0XdC3ShBkM9t0KQ0U+gELHSXFT
 fW2/3FCRu2GQpuIGjG3x3ErecqIKixUF4XDfc=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=TiEhqC09
Subject: Re: [Intel-wired-lan] [RFC net-next 1/1] idpf: Don't hard code
 napi_struct size
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Oct 01, 2024 at 03:14:07PM +0200, Alexander Lobakin wrote:
> From: Joe Damato <jdamato@fastly.com>
> Date: Mon, 30 Sep 2024 15:17:46 -0700
> 
> > On Mon, Sep 30, 2024 at 03:10:41PM +0200, Przemek Kitszel wrote:
> >> On 9/30/24 14:38, Alexander Lobakin wrote:
> >>> From: Alexander Lobakin <aleksander.lobakin@intel.com>
> >>> Date: Mon, 30 Sep 2024 14:33:45 +0200
> >>>
> >>>> From: Joe Damato <jdamato@fastly.com>
> >>>> Date: Wed, 25 Sep 2024 18:00:17 +0000
> >>
> >>> struct napi_struct doesn't have any such fields and doesn't depend on
> >>> the kernel configuration, that's why it's hardcoded.
> >>> Please don't change that, just adjust the hardcoded values when needed.
> >>
> >> This is the crucial point, and I agree with Olek.
> >>
> >> If you will find it more readable/future proof, feel free to add
> >> comments like /* napi_struct */ near their "400" part in the hardcode.
> >>
> >> Side note: you could just run this as a part of your netdev series,
> >> given you will properly CC.
> > 
> > I've already sent the official patch because I didn't hear back on
> > this RFC.
> > 
> > Sorry, but I respectfully disagree with you both on this; I don't
> > think it makes sense to have code that will break if fields are
> > added to napi_struct thereby requiring anyone who works on the core
> > to update this code over and over again.
> > 
> > I understand that the sizeofs are "meaningless" because of your
> > desire to optimize cachelines, but IMHO and, again, respectfully, it
> > seems strange that any adjustments to core should require a change
> > to this code.
> 
> But if you change any core API, let's say rename a field used in several
> drivers, you anyway need to adjust the affected drivers.

Sorry, but that's a totally different argument.

There are obvious cases where touching certain parts of core would
require changes to drivers, yes. I agree on that if I change an API
or a struct field name, or remove an enum, then this affects drivers
which must be updated.

idpf does not fall in this category as it relies on the *size* of
the structure, not the field names. Adding a new field wouldn't
break any of your existing code accessing fields in the struct since
I haven't removed a field.

Adding a new field may adjust the size. According to your previous
email: idpf cares about the size because it wants the cachelines to
look a certain way in pahole. OK, but why is that the concern of
someone working on core code?

It doesn't make sense to me that if I add a new field, I now need to
look at pahole output for idpf to make sure you will approve of the
cacheline placement.

> It's a common practice that some core changes require touching drivers.
> Moreover, sizeof(struct napi_struct) doesn't get changed often, so I
> don't see any issue in adjusting one line in idpf by just increasing one
> value there by sizeof(your_new_field).

The problem is: what if everyone starts doing this? Trying to rely
on the specific size of some core data structure in their driver
code for cacheline placement?

Do I then need to shift through each driver with pahole and adjust
the cacheline placement of each affected structure because I added a
field to napi_struct ?

The burden of optimizing cache line placement should fall on the
driver maintainers, not the person adding the field to napi_struct.

It would be different if I deleted a field or renamed a field. In
those cases: sure that's my issue to deal with changing the affected
drivers. Just like it would be if I removed an enum value.

> If you do that, then:
> + you get notified that you may affect the performance of different
>   drivers (napi_struct is usually embedded into perf-critical
>   structures in drivers);

But I don't want to think about idpf; it's not my responsibility at
all to ensure that the cacheline placement in idpf is optimal.

> + I get notified (Cced) that someone's change will affect idpf, so I'll
>   be aware of it and review the change;
> - you need to adjust one line in idpf.

Adjust one line in idpf and then go through another revision if the
maintainers don't like what the cachelines look like in pahole?

And I need to do this for something totally unrelated that idpf
won't even support (because I'm not adding support for it in the
RFC) ?

> Is it just me or these '+'s easily outweight that sole '-'?

I disagree even more than I disagreed yesterday.
