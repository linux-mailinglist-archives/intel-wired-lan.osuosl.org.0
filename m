Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B90A07EE6
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jan 2025 18:39:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 727C883147;
	Thu,  9 Jan 2025 17:39:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kFdqxBNvGA6v; Thu,  9 Jan 2025 17:39:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 81B7C830D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736444363;
	bh=6KsRQIc1JxQBezEIVdfkOzKqKFxNDLhEnsfcwp5vSS0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=D+GYFnAxaRVVQ747BJpZG/cb2Xfp/f+3uKUlLbSiV66lp1q+Ou8VLwVwYu9ZBrMF9
	 kZIQ0QLNiPjcP2SBjBDqxX5TsIz+M87ESZ7LJ12ICGzOLBXq1CTseV9miBywDUWOOl
	 YwXQvkLLPGlqyn9KMRQiJROL4EatRwqJpRGc0Opxh1FJ6/HpaU5vrz8RNJjD2Bm+eN
	 6WpE+LtlPm9vFAmE7Mjwnu3pfE0RJB3oB0OO2bH+sVN7wh0egGQOsOJbkF14q0pIeK
	 T8ANmDmeKLsB2yH5AQ2nyFkGeyVlI80ZBG7iJelt8MniY3Z3clbFg+Cqk6lMWTDPs1
	 RYRYtEQOj+8nA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 81B7C830D7;
	Thu,  9 Jan 2025 17:39:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 43DE4942
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 17:39:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 240E740312
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 17:39:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w26NM5JA0fnI for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jan 2025 17:39:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::633; helo=mail-pl1-x633.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 281E7402E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 281E7402E6
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com
 [IPv6:2607:f8b0:4864:20::633])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 281E7402E6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 17:39:20 +0000 (UTC)
Received: by mail-pl1-x633.google.com with SMTP id
 d9443c01a7336-216728b1836so19584235ad.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 09 Jan 2025 09:39:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736444360; x=1737049160;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=6KsRQIc1JxQBezEIVdfkOzKqKFxNDLhEnsfcwp5vSS0=;
 b=CyHv+9SMm4nronDnfkroWE2++GDtJHDdnZF82GM/GuSvI64JTm89I9KOs0CJyIPeOx
 fqdZeM2qx5gicDXBZdOmlkTewNyfYUZlqRDCMlaZEInOHrbCqKEesNqr3ZXCnTCJTqGm
 Gr7HQ2FyZVzKYpc/xtolZsaTpMD1bYoCzEBZItcpBVr/wrzVMthuUfO1mhmVg27J88R2
 90Yu1bGHz1sdIFuYAcgKAyqYEtOUmlf1idy30jQyOfaV8owY45m1tUmKDRmfUUJILOy8
 UTqdHGevuB6KQHURNJE+D7JVO7aj9x118jmbjsY5dhPHScI0uAH5vdZYj8hHr3PwJ4p1
 omNw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWpxBReGAdjf/QAJLsS1BHkaPz6vNPHo12wpWkW4v7reoT/JGOwS2bxraWGHLDeIlC1ElFr090BGwKM+gX2cPE=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwWNUP+S7IVEIXz/l5Pkuo1e3d9TAbLYkVDPXa+QWvrTZO1PChe
 tklaOOiUclb1VnZehSjFb1zFlZ5F3gGnyEtGs8E61Y4gbTd7YcM=
X-Gm-Gg: ASbGncsfceyB+BTG69KI1eaNFaYFTKyiG4autJlrw7tFC7a9Bn1ZyEaH2/0A8HUlB/v
 p6l9hmdsyqncX898PsJKdnOLjbwLZauIzQp+ihwKXCvNjyYgaTSSPo4ZwtC66QxHOBUICgtUs1U
 iyr0waX5uP8CrB3xRchN7Ck26+hrnxw1MQWvysWh+EUDXl9Kp5GHw9jGsqeTel/CHbOw5qLLDDY
 h4tmy8rW/ujzXxzEtr6vfd0bFHz5EIUPSMCi8JRbXE+1c3wbrmp6M5K
X-Google-Smtp-Source: AGHT+IEOsPd8gi8EzkqvvII6DaS7kpXwJUDoEvR9sz6x99GD7Aypk+y99jv+WqRaCxVsNJdjbVm5kQ==
X-Received: by 2002:a17:902:d2ca:b0:216:56d5:d87 with SMTP id
 d9443c01a7336-21a83f8ea52mr112422135ad.34.1736444360267; 
 Thu, 09 Jan 2025 09:39:20 -0800 (PST)
Received: from localhost ([2601:646:9e00:f56e:123b:cea3:439a:b3e3])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-21a9f22f051sm516575ad.203.2025.01.09.09.39.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2025 09:39:19 -0800 (PST)
Date: Thu, 9 Jan 2025 09:39:19 -0800
From: Stanislav Fomichev <stfomichev@gmail.com>
To: "Song, Yoong Siang" <yoong.siang.song@intel.com>
Cc: "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, Willem de Bruijn <willemb@google.com>,
 "Bezdeka, Florian" <florian.bezdeka@siemens.com>,
 Donald Hunter <donald.hunter@gmail.com>,
 Jonathan Corbet <corbet@lwn.net>, Bjorn Topel <bjorn@kernel.org>,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 "Damato, Joe" <jdamato@fastly.com>, Stanislav Fomichev <sdf@fomichev.me>,
 Xuan Zhuo <xuanzhuo@linux.alibaba.com>,
 Mina Almasry <almasrymina@google.com>, Daniel Jurgens <danielj@nvidia.com>,
 Amritha Nambiar <amritha.nambiar@intel.com>,
 Andrii Nakryiko <andrii@kernel.org>, Eduard Zingerman <eddyz87@gmail.com>,
 Mykola Lysenko <mykolal@fb.com>,
 Martin KaFai Lau <martin.lau@linux.dev>, Song Liu <song@kernel.org>,
 Yonghong Song <yonghong.song@linux.dev>,
 KP Singh <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>,
 Jiri Olsa <jolsa@kernel.org>, Shuah Khan <shuah@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, 
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "xdp-hints@xdp-project.net" <xdp-hints@xdp-project.net>
Message-ID: <Z4AJx-a-eY3pgHNv@mini-arch>
References: <20250106135658.9734-1-yoong.siang.song@intel.com>
 <Z31fXHxWuKNog_Qh@mini-arch>
 <PH0PR11MB58304082BF0EA96D1A74E4C5D8132@PH0PR11MB5830.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <PH0PR11MB58304082BF0EA96D1A74E4C5D8132@PH0PR11MB5830.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1736444360; x=1737049160; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=6KsRQIc1JxQBezEIVdfkOzKqKFxNDLhEnsfcwp5vSS0=;
 b=OKeLngQq9sor34nU6gexda1bLBK4zs5gSxS6VyBeAXE0mTbuwHDvsvSBBK6XWiizhK
 V3rFakWM1JsQyVkWpe68moMZGeNeLPUabTJyLP87cVbFM3JKYEuaT9/ljJEyRVeQ9k5U
 Y6/D6TMB1pUGl2TuraqDFVtFe2zU1sD72fDHL5aAQCzoI/1rPrDS08OozY74TIUzOXL/
 rZtYGIf/PZrfoduTt0A8W5d3FWo35KZzKGu51zgIMyyKWoKJLwa06HEkOscGma5Mx29H
 NEJ4YrQZ2X6+wq0CLA01VTm1c5zxbTta+i5qzyDfeVxnJTIOxKNoXDrqOKtRZWJyHKde
 7JKQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=OKeLngQq
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v4 3/4] net: stmmac: Add
 launch time support to XDP ZC
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

On 01/09, Song, Yoong Siang wrote:
> On Wednesday, January 8, 2025 1:08 AM, Stanislav Fomichev <stfomichev@gmail.com> wrote:
> >On 01/06, Song Yoong Siang wrote:
> >> Enable launch time (Time-Based Scheduling) support to XDP zero copy via XDP
> >> Tx metadata framework.
> >>
> >> This patch is tested with tools/testing/selftests/bpf/xdp_hw_metadata on
> >> Intel Tiger Lake platform. Below are the test steps and result.
> >>
> >> Test Steps:
> >> 1. Add mqprio qdisc:
> >>    $ sudo tc qdisc add dev enp0s30f4 handle 8001: parent root mqprio num_tc
> >>      4 map 0 1 2 3 3 3 3 3 3 3 3 3 3 3 3 3 queues 1@0 1@1 1@2 1@3 hw 0
> >>
> >> 2. Enable launch time hardware offload on hardware queue 1:
> >>    $ sudo tc qdisc replace dev enp0s30f4 parent 8001:2 etf offload clockid
> >>      CLOCK_TAI delta 500000
> >>
> >> 3. Add an ingress qdisc:
> >>    $ sudo tc qdisc add dev enp0s30f4 ingress
> >>
> >> 4. Add a flower filter to route incoming packet with VLAN priority 1 into
> >>    hardware queue 1:
> >>    $ sudo tc filter add dev enp0s30f4 parent ffff: protocol 802.1Q flower
> >>      vlan_prio 1 hw_tc 1
> >>
> >> 5. Enable VLAN tag stripping:
> >>    $ sudo ethtool -K enp0s30f4 rxvlan on
> >>
> >> 6. Start xdp_hw_metadata selftest application:
> >>    $ sudo ./xdp_hw_metadata enp0s30f4 -l 1000000000
> >>
> >> 7. Send an UDP packet with VLAN priority 1 to port 9091 of DUT.
> >
> >Tangential: I wonder whether we can add the setup steps to the
> >xdp_hw_metadata tool? It is useful to have one command to run that
> >takes care of all the details. Same way it already enables HW
> >tstamping..
> >
> >Or, if not the full setup, some kind of detection we can signal to the
> >user that some things might be missing?
> 
> Sure. I can try to add the setup steps into xdp_hw_metadata
> by using ioctl() function. However, there are some device specific
> command, like the number of queue, their priority,
> how they route the incoming packet, etc. I will try to find out
> a common way that can work for most of the devices,
> at least work for both igc and stmmac.

We can query the number of queues (and everything else you need) in the
tool, similar to what we do in
testing/selftests/drivers/net/hw/ncdevmem.c, take a look. But if it's
too complicated, maybe at least print these commands on startup and tell
the user to run them.

The reason I'm asking is that I hope that we eventually can run this
tool from (automatic) testing/selftests/drivers/net/hw testsuite to
make sure the metadata stuff keeps working.
