Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF1C98AFBE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Oct 2024 00:17:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9EF0360762;
	Mon, 30 Sep 2024 22:17:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w0400oweD2Jd; Mon, 30 Sep 2024 22:17:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C8F7460755
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727734672;
	bh=yaaxkiqxrFeZMpuCEOlAmSvY8XC+Y49Kr8TckWNlvH8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SgHvtH7QvxoQloDnkbCqP17K/Ig4e6Zw2eISyIdZCCZHeu0ugxTTIf5xzVXnRVmVt
	 QUzTJ7AdXJZTguZDkN4adXHy5EJ6sic1XVEAmcaLVKn6ak1xlmt0BbxFlSBaO3RXjD
	 1tW3Ieb0viRWG6olNiWezemhYKdlTTkmIhrXlfReXv9HBg2Opix3hT1Bu4469uxa6r
	 VEqznUkUvmmAECvlXHqguKovjrA+qkHOqPIKDYbBkLmlqak28RfpNhcMGPVdKTmRfl
	 dHKtE1kpE6mRxhwXnMuo1IKWygEHdORlHElzeJ5DfrCuywe6obwfllVCc41wDuOc6n
	 B00tkOypBLlUg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C8F7460755;
	Mon, 30 Sep 2024 22:17:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0521C1BF34F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 22:17:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E722C4017A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 22:17:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VQL_LEm6UfEz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 22:17:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::629; helo=mail-pl1-x629.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D579D400AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D579D400AF
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D579D400AF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 22:17:49 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id
 d9443c01a7336-20aff65aa37so39672735ad.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 15:17:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727734669; x=1728339469;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=yaaxkiqxrFeZMpuCEOlAmSvY8XC+Y49Kr8TckWNlvH8=;
 b=Wk18BGnvwDQSBmndplx5CvSltHKf9SNd4f8eVdrMS57+wv5vMPlplklM0Fm4qpb+eo
 WcPTOtAvR6c+nY7k0o68G2HLcAxyImuZY9s24XJ9DSsLPfk03dASKQp2cHz08lg1kfJp
 GEVhI1lVqXcdcHt80/xYv2ocid6As39ZJ0Vo2riwKV5GBX26mqcUdTXB29wiutV3RAaT
 rVzLcyGKwDnbreSYocKAMkPeDQZP7yrzZ4VYe3SZxidQnQc7LipHmjWuH1IckNPdXi+f
 GxBcbx9F4cwr2tkoHT30IxMCfCUS5g38LJvAs+qnsgFIVcCfaBlNS83joRS8wy30BjtL
 RhUg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUGm6iodiv2Vi9MxLI4tfOcWxMGj4aXAnoYLSb91egZijgRp3CW4M4OF/hzVikPx1tEpo33Trr6u7/FwT0AdUw=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyrMxrY9VnbPvyvYEoEGAK1Q/tBTkY9+Kv3S3zQ7NaKecq1FQPM
 C7FhG5XMHmwbclTnqi5+mrH0SaHFgOhp/0HxqPV6B4JwJEV2a/WVGM3fnuoRyC8=
X-Google-Smtp-Source: AGHT+IFCiINOs2bzRNo4HKcHhl2Ol39o5l+KjTb9mUTk75c2bT6JJwSUoOwBr9bJfb1m5VohHLgdzA==
X-Received: by 2002:a17:903:40d1:b0:20b:3f70:2e05 with SMTP id
 d9443c01a7336-20b3f702f68mr189151205ad.41.1727734669074; 
 Mon, 30 Sep 2024 15:17:49 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-20b37e0d4bdsm58814175ad.139.2024.09.30.15.17.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Sep 2024 15:17:48 -0700 (PDT)
Date: Mon, 30 Sep 2024 15:17:46 -0700
From: Joe Damato <jdamato@fastly.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <Zvsjitl-SANM81Mk@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
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
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9f86b27c-8d5c-4df9-8d8c-91edb01b0b79@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1727734669; x=1728339469; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=yaaxkiqxrFeZMpuCEOlAmSvY8XC+Y49Kr8TckWNlvH8=;
 b=HmCGK9lmw2oXpxEJP0WmzoZxKT732SKsU2upwzespRDjuoc7Oz+5/dD3XrTarj+xKs
 fy6dU9W5/K2vwzDeyXVAC+Drq5VG18VbeqNM4kWg3wu6ORyCj3jgha/wrGyvYLGWME0x
 XJ8dv95H9d7oHCQO4as5T3bjsV9XJ9r9yOjxE=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=HmCGK9lm
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
Cc: netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Sep 30, 2024 at 03:10:41PM +0200, Przemek Kitszel wrote:
> On 9/30/24 14:38, Alexander Lobakin wrote:
> > From: Alexander Lobakin <aleksander.lobakin@intel.com>
> > Date: Mon, 30 Sep 2024 14:33:45 +0200
> > 
> > > From: Joe Damato <jdamato@fastly.com>
> > > Date: Wed, 25 Sep 2024 18:00:17 +0000
> 
> > struct napi_struct doesn't have any such fields and doesn't depend on
> > the kernel configuration, that's why it's hardcoded.
> > Please don't change that, just adjust the hardcoded values when needed.
> 
> This is the crucial point, and I agree with Olek.
> 
> If you will find it more readable/future proof, feel free to add
> comments like /* napi_struct */ near their "400" part in the hardcode.
> 
> Side note: you could just run this as a part of your netdev series,
> given you will properly CC.

I've already sent the official patch because I didn't hear back on
this RFC.

Sorry, but I respectfully disagree with you both on this; I don't
think it makes sense to have code that will break if fields are
added to napi_struct thereby requiring anyone who works on the core
to update this code over and over again.

I understand that the sizeofs are "meaningless" because of your
desire to optimize cachelines, but IMHO and, again, respectfully, it
seems strange that any adjustments to core should require a change
to this code.

I really do not want to include a patch to change the size of
napi_struct in idpf as part of my RFC which is totally unrelated to
idpf and will detract from the review of my core changes.

Perhaps my change is unacceptable, but there should be a way to deal
with this that doesn't require everyone working on core networking
code to update idpf, right?

- Joe
