Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 55885C3A22A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 06 Nov 2025 11:14:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EF4AD4043E;
	Thu,  6 Nov 2025 10:14:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dayGQblRNcvW; Thu,  6 Nov 2025 10:14:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2850741090
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762424042;
	bh=XVferEyN4+RzXvE7eehEmFRfQazqGQ49nTw3vZt6WP4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SUh7hSpXYYi0hyJEkB3ylPMfk//F5jonpWV1+wIILIwyXMnWlWJnQFk+4Cmkx8yUZ
	 +qkJALMqEPxY9VJAE2oDHDNllbNFrLMVpdwiEc7pcm7dRHKhd+iPSJTJxGNCtgoee7
	 0Hmv8z6XSj0X/oJ4f1Pp+foXspO/kvh1MN2o2Dy//fHUW1t6zrE2ol7NQ9ANJxUcoP
	 hRpi13Z+v5L3o08V/aOfpw/eCwdTT1MbJ7+BFPQvtdF2Ubo8XutAFrtEod9Rt3MR19
	 6erfOhMQTvRL1Xl0QAwsj9nddiFr0c1YGfUA0NU5ksY7pnAhpyxtYvflspHmgtLQ9y
	 Wxo5AoNJfDVkQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2850741090;
	Thu,  6 Nov 2025 10:14:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 411831CD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 10:14:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2747F841C0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 10:14:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CsZ6OeWb9SLp for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Nov 2025 10:13:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42a; helo=mail-pf1-x42a.google.com;
 envelope-from=allyheev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 46B6F8418A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 46B6F8418A
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com
 [IPv6:2607:f8b0:4864:20::42a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 46B6F8418A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 10:13:59 +0000 (UTC)
Received: by mail-pf1-x42a.google.com with SMTP id
 d2e1a72fcca58-781997d195aso569756b3a.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 Nov 2025 02:13:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762424038; x=1763028838;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=XVferEyN4+RzXvE7eehEmFRfQazqGQ49nTw3vZt6WP4=;
 b=YVpiem3xovrAYGFxHzGnq5pHvBVCN3245o1yAB12d+pag/ZeQ3t9qflnFu+SU/f/F3
 YctZZTfBQ7GJiPdxKSDYUdJMu4lww+twZKSEeKKPtIm3vawgPJdHOonLRvJskQxzTwrS
 tbE17wNFknYQGmL50C6f4CCSRFJjfkpXRO33vPfxdxiNtDP3vqLDNEk9km9bwwZYOk6J
 bRG9PqmC8P1K7HrbYnSdabLV1Mvaiat5dP6817FnyIYyTPuxnNCQ+cST5Q5j40/YGNq4
 26J4QEy4pVGGWped4foiHNvvUQMVcg17zUKVah2GvjBbTKJXKcWZOpdRBuyUkYa12cVN
 iJyA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVq1M7bjqRyhdslr0FFb5mMx8YqTJNaGLHK4c6romV9M6LOoUtjydoQmukhVSVbxu8N+a3gmb+JgOFyyfm1wNk=@lists.osuosl.org
X-Gm-Message-State: AOJu0YySBB5hwg4GlLbpjs/d5/1aoxe8k0DzZ9m0Tr6qN6m3Ke85m5/n
 9FfEVIZfuq04TTNYeaELVyqcNm+wMYLWkjz5Mfq5Obp1jL9NKMpTWGCE
X-Gm-Gg: ASbGncsQO76Qam74gpqqXbmF+pY839nW9T0JEm8Epq4TIZh4xSHIGtSRexqy6WYlrds
 rw2QNAF8EOHJP+Bt6xG8Xw7UN5mj3RCr7rxcU0uI+dyU62p773tK+QEvzOuACftQhAVbE9H/7k3
 H/V4KImHBpFhjKldjXSV349KndF7MVp0BBJqFDUzTQkyuJI+VUI6RnfM01C4pLE3UAbshfCkcA5
 Pl1KPoR4R7Rhhgh4RI62GsMsRuBuZFgly/SiY3NT9TwY68WZFyti3sRYavqCQM6dvyCRVrtSZPJ
 N+4jQkEua7OaaQKjXeO1pBSf557qc8peuCOYxmMqHVYVVEVUEwgicR8drslXNiVNFrTyQegMRYI
 60oquCU/Gh1dqI0dP37mbg7LT+LgUBJX1ZeexD1yGdoSJiEgpkXSNXCzh4EOk/ih/w1yliS/tt3
 GGSye75udSk+qvaZtXbyd6z1ozWx0J0D4Q1s9t9kvazH0ew/Uu
X-Google-Smtp-Source: AGHT+IHFm4f4DIfuJZeWFWHECmS607MVUrzEbqxwY7bBNABCSqwm+nfFI94x/cfAN4hYxfUSU4FFIA==
X-Received: by 2002:a05:6a00:2e0d:b0:792:574d:b12 with SMTP id
 d2e1a72fcca58-7ae1d7350a5mr8116654b3a.10.1762424038444; 
 Thu, 06 Nov 2025 02:13:58 -0800 (PST)
Received: from ?IPv6:2401:4900:88f4:f6c4:5041:b658:601d:5d75?
 ([2401:4900:88f4:f6c4:5041:b658:601d:5d75])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7af825fbc63sm2270481b3a.49.2025.11.06.02.13.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Nov 2025 02:13:58 -0800 (PST)
Message-ID: <26b0845236aeeedae68b20765376e6acf3bb0e97.camel@gmail.com>
From: ally heev <allyheev@gmail.com>
To: kernel test robot <lkp@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>,  Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller"	 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski	 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "K. Y.
 Srinivasan"	 <kys@microsoft.com>, Haiyang Zhang <haiyangz@microsoft.com>,
 Wei Liu	 <wei.liu@kernel.org>, Dexuan Cui <decui@microsoft.com>
Cc: oe-kbuild-all@lists.linux.dev, netdev@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org, 
 linux-hyperv@vger.kernel.org, Dan Carpenter <error27@gmail.com>
Date: Thu, 06 Nov 2025 15:43:49 +0530
In-Reply-To: <202511061627.TYBaNPrX-lkp@intel.com>
References: <20251105-aheev-uninitialized-free-attr-net-ethernet-v1-1-f6ea84bbd750@gmail.com>
 <202511061627.TYBaNPrX-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1+deb13u1 
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1762424038; x=1763028838; darn=lists.osuosl.org;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
 :date:message-id:reply-to;
 bh=XVferEyN4+RzXvE7eehEmFRfQazqGQ49nTw3vZt6WP4=;
 b=nr2nk6EEasbKBM735z5duqHMTcmBJPfY6Y64uo9l5zN+y+fI/Ny34VhrYGoSwrjj23
 KxdRLJcGkv82MTCEPTmFKcejaiAuBb+e3rPB7xj7Wmzf98lm0LDnQ83Jtu4hOwvss/Ek
 rfTbDc9gUBPz7x+nCB9djlyp1Dt0PHfk+vGRAjlreGPwM1A/E3lJNspnx87sDJbnAwIs
 Sr7x7EQMep1UE4LGCbEBSDlNWZcWbHQgcnA/IaRpXe9d494Ptk4x9AE+6HSUSY/xXb/R
 hEszxiSJ8FhcVNDHF3sXoBXHFEdPewjIciAuXArTACY0fJVR1SHqgZ2SAUZzOw2I802h
 sM9Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=nr2nk6EE
Subject: Re: [Intel-wired-lan] [PATCH] net: ethernet: fix uninitialized
 pointers with free attr
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

On Thu, 2025-11-06 at 17:06 +0800, kernel test robot wrote:
> Hi Ally,
>=20
> kernel test robot noticed the following build errors:
>=20
> [auto build test ERROR on c9cfc122f03711a5124b4aafab3211cf4d35a2ac]
>=20
> url:    https://github.com/intel-lab-lkp/linux/commits/Ally-Heev/net-ethe=
rnet-fix-uninitialized-pointers-with-free-attr/20251105-192022
> base:   c9cfc122f03711a5124b4aafab3211cf4d35a2ac
> patch link:    https://lore.kernel.org/r/20251105-aheev-uninitialized-fre=
e-attr-net-ethernet-v1-1-f6ea84bbd750%40gmail.com
> patch subject: [PATCH] net: ethernet: fix uninitialized pointers with fre=
e attr
> config: x86_64-randconfig-015-20251106 (https://download.01.org/0day-ci/a=
rchive/20251106/202511061627.TYBaNPrX-lkp@intel.com/config)
> compiler: gcc-14 (Debian 14.2.0-19) 14.2.0
> reproduce (this is a W=3D1 build): (https://download.01.org/0day-ci/archi=
ve/20251106/202511061627.TYBaNPrX-lkp@intel.com/reproduce)
>=20
> If you fix the issue in a separate patch/commit (i.e. not just a new vers=
ion of
> the same patch/commit), kindly add following tags
> > Reported-by: kernel test robot <lkp@intel.com>
> > Closes: https://lore.kernel.org/oe-kbuild-all/202511061627.TYBaNPrX-lkp=
@intel.com/
>=20
> All errors (new ones prefixed by >>):
>=20
>    In file included from include/uapi/linux/posix_types.h:5,
>                     from include/uapi/linux/types.h:14,
>                     from include/linux/types.h:6,
>                     from include/linux/objtool_types.h:7,
>                     from include/linux/objtool.h:5,
>                     from arch/x86/include/asm/bug.h:7,
>                     from include/linux/bug.h:5,
>                     from include/linux/vfsdebug.h:5,
>                     from include/linux/fs.h:5,
>                     from include/linux/debugfs.h:15,
>                     from drivers/net/ethernet/microsoft/mana/gdma_main.c:=
4:
>    drivers/net/ethernet/microsoft/mana/gdma_main.c: In function 'irq_setu=
p':
> > > include/linux/stddef.h:8:14: error: invalid initializer
>        8 | #define NULL ((void *)0)
>          |              ^
>    drivers/net/ethernet/microsoft/mana/gdma_main.c:1508:55: note: in expa=
nsion of macro 'NULL'
>     1508 |         cpumask_var_t cpus __free(free_cpumask_var) =3D NULL;
>          |                                                       ^~~~
>=20
>=20
> vim +8 include/linux/stddef.h
>=20
> ^1da177e4c3f41 Linus Torvalds   2005-04-16  6 =20
> ^1da177e4c3f41 Linus Torvalds   2005-04-16  7  #undef NULL
> ^1da177e4c3f41 Linus Torvalds   2005-04-16 @8  #define NULL ((void *)0)
> 6e218287432472 Richard Knutsson 2006-09-30  9 =20

Sorry. I think I messed up config somehow during build. Hence, couldn't
catch the error in local. Fixed in v2
