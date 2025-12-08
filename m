Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 50488CABEC0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 08 Dec 2025 04:07:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 86ACE833A8;
	Mon,  8 Dec 2025 03:07:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dIQVOQwnBLzw; Mon,  8 Dec 2025 03:07:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D71ED83337
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765163254;
	bh=cWQlXLg2oAF75NLRYyi4rsXiifU/frpwJu+/Rp1ZA2k=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=g4EFUEr89WMzavKIYBMMkuHIP4GRxIrQRpgyRXrh1cE+p8s2sm22mjnyG5YCry1En
	 DDZpUh9mAiW/dzsKJUmEUVR2LbvTF+tEHAe7JmGpvpEKWkj8ZHDPiwiwJLTGCEI3B4
	 Rej8cwwILn+mG7wRGoyds735AnVb9N3RI9xyWFY7b79Zje1VlvIKUv+iIJxDM/gZrN
	 ex89itm18EiR/9vyj28gBIWMHyXo6jtZ0I4STrqsjBE/r+P6jmceqc6ekqbTZr3lcc
	 C45KCeHwyQ4//O4TkDVquVaDX1ufYNlbm06igTuog4Dej76LjKXQirs6nduVdpSdbO
	 vzDlOaHv1IZVg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D71ED83337;
	Mon,  8 Dec 2025 03:07:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7AB2F151
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Dec 2025 03:07:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 597984056A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Dec 2025 03:07:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SpBi9p23uldl for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Dec 2025 03:07:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::634; helo=mail-pl1-x634.google.com;
 envelope-from=allyheev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B7D6840439
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B7D6840439
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B7D6840439
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Dec 2025 03:07:31 +0000 (UTC)
Received: by mail-pl1-x634.google.com with SMTP id
 d9443c01a7336-2953e415b27so47330295ad.2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 07 Dec 2025 19:07:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765163251; x=1765768051;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=cWQlXLg2oAF75NLRYyi4rsXiifU/frpwJu+/Rp1ZA2k=;
 b=nM29LxZlAJQzfA/n7CXdUlsw3l9s3xg22epWpc9ijfVYfLCGNB4kh0ToKXPuK64BCM
 PtRZIN4+z6816DNix9RMVm9PmR+G96Vy3cH+3PAYNlCn+tVIItja5wuWD+4Mp0kF5llv
 fPy4OKqpVBBjoMKMo0C4FJY4re8muedzECHOhM5naNHm09QlOfIW1FwuCSG5wf+mgWMK
 s+0jfv/SJyibopLyfXxqBqYkPin0L0t9s4bQv7H/MId8iKIoCfxhB1sSwBI7QREAf0PP
 VIPgdBUQrLhChmvjxWEEtACvryLtRaJtE5GFLi45HS0BInewSgJUFjnP7Eh8o5qDtYNf
 AUsA==
X-Gm-Message-State: AOJu0Yzl6Xl3QILTCtf/6Q5GHpEv/OJNUkgcHVZJ7QDF9/AkuvYZd4MF
 U5zPvXUBBOTkoS/GlTjfl6I78QEd1hj2o/2f9RNZ5d9meowj2isVuXrY
X-Gm-Gg: ASbGncu8P2TYrChJjEQjGGz8zHKL1+eTO0Wfe6ApKbMYMoNeVJ5J13F2ElVmlXn+Bra
 TKUJQQQnQmSKYGhx7CP+LhR7iNvoIMLAtcKP+iUvYahZf9XHcWxniUC1+xCSou+jqQIqtrq1nPd
 p25P/7JJaV62fClD2fo3JKNvzfZ+p/G/p3eON16CL80IQ4X9+b1w3abThkf8mQtNJhDT9Coi/R2
 vWMg+kSrxVeLJ9QSyW1gI1uNPO42G+mno5mxEaED9dSPMnYy/6UykyTJ6BJVkBWZAmLDylMxZRr
 GmJtdXd6n8TDr4z/JtV8RIhfnWwDEgdip8pC5DeWKouNN+Icy7Hhzz1kXk45GE8dTE+YxYCy+Ld
 jEG0LPjXPkHE5Xo7/FmIGD6ilgmKkxAKv3g2MY0WtnMzAJLhSzlxkbqSVfDXrS9RnufDVklqaZr
 af7s+Q22BXi/tu+21M1G6prJokTAp9awS+iOrd+OPZ3i4m7YAQPw==
X-Google-Smtp-Source: AGHT+IGclfbgYDV+2PprDNhoMS/qASDyleKSKZkgks8aJAQqaFHDlkmA3RGKrzkqi7Tvl94BT/sCTA==
X-Received: by 2002:a17:903:2287:b0:264:70da:7a3b with SMTP id
 d9443c01a7336-29df5dec918mr73703385ad.49.1765163250925; 
 Sun, 07 Dec 2025 19:07:30 -0800 (PST)
Received: from ?IPv6:2401:4900:8fcc:9f:1de4:3838:6ac:e885?
 ([2401:4900:8fcc:9f:1de4:3838:6ac:e885])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-29daeaabf7csm107759555ad.79.2025.12.07.19.07.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Dec 2025 19:07:30 -0800 (PST)
Message-ID: <a137d0a4f3479b6164307a49b9193746db95fba9.camel@gmail.com>
From: ally heev <allyheev@gmail.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Tony Nguyen	
 <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Dan Carpenter <dan.carpenter@linaro.org>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet	 <edumazet@google.com>, Alexander
 Lobakin <aleksander.lobakin@intel.com>,  Simon Horman <horms@kernel.org>
Date: Mon, 08 Dec 2025 08:37:24 +0530
In-Reply-To: <df193ddb-4591-417d-8d62-42d99d6d468f@intel.com>
References: <20251124-aheev-fix-free-uninitialized-ptrs-ethernet-intel-v1-0-a03fcd1937c0@gmail.com>
 <81053279-f2da-420c-b7a1-9a81615cd7ca@intel.com>
 <ec570c6f8c041f60f1de0b002e61e5a2971633c5.camel@gmail.com>
 <eaf30e67-ce1a-47ce-8207-b973ea260bf5@intel.com>
 <f34adbc99606c1f9157112123b7039d2a5bb589e.camel@gmail.com>
 <df193ddb-4591-417d-8d62-42d99d6d468f@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1765163251; x=1765768051; darn=lists.osuosl.org;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
 :date:message-id:reply-to;
 bh=cWQlXLg2oAF75NLRYyi4rsXiifU/frpwJu+/Rp1ZA2k=;
 b=ObxxPp7Mf4u8ar/FPHDVnGOxanQELTJ7I2DB00uh6rpiikGJpNo/t4IqB0SWxS7Bc0
 LDxJ1rKC7LW8rIGbKbQ92NUAqTXEQmx0bTur6WLpfhYxoif+6mA9osrgN6M2sn1lMSGh
 +kQYtihMA+wBJWLmWUKvqvTYP9Ot77gixyFRTVEgAXm++j0k7ztSfS3oyar5VbjJxaY1
 1qc5WBRWu0lGFWGHMnuhr8s9NPutPq23o5W1+JXZDNoO1F8lNOG9WOeZSvJjxRlgdgYA
 fB9wybfDlXEmzKFpcCEAZkTqFYdGBgCuCH2L5oWnEL7Szxfc+ezNOlgTxNtU/IXiUM6O
 KzVA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=ObxxPp7M
Subject: Re: [Intel-wired-lan] [RFT net-next PATCH RESEND 0/2] ethernet:
 intel: fix freeing uninitialized pointers with __free
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

On Wed, 2025-12-03 at 09:45 +0100, Przemek Kitszel wrote:
> On 12/3/25 09:09, ally heev wrote:
> > On Tue, 2025-12-02 at 10:17 -0800, Tony Nguyen wrote:
> > >=20
> > > On 12/2/2025 11:47 AM, ally heev wrote:
> > > > On Mon, 2025-12-01 at 13:40 -0800, Tony Nguyen wrote:
> > > > >=20
> > > > > On 11/23/2025 11:40 PM, Ally Heev wrote:
> > > > > > Uninitialized pointers with `__free` attribute can cause undefi=
ned
> > > > > > behavior as the memory assigned randomly to the pointer is free=
d
> > > > > > automatically when the pointer goes out of scope.
> > > > > >=20
> > > > > > We could just fix it by initializing the pointer to NULL, but, =
as usage of
> > > > > > cleanup attributes is discouraged in net [1], trying to achieve=
 cleanup
> > > > > > using goto
> > > > >=20
> > > > > These two drivers already have multiple other usages of this. All=
 the
> > > > > other instances initialize to NULL; I'd prefer to see this do the=
 same
> > > > > over changing this single instance.
> > > > >=20
> > > >=20
> > > > Other usages are slightly complicated to be refactored and might ne=
ed
> > > > good testing. Do you want me to do it in a different series?
> > >=20
> > > Hi Ally,
> > >=20
> > > Sorry, I think I was unclear. I'd prefer these two initialized to NUL=
L,
> > > to match the other usages, over removing the __free() from them.
> >=20
> > I had a patch for that already, but, isn't using __free discouraged in
> > networking drivers [1]? Simon was against it [2]
>=20
> you see, the construct is discouraged, so we don't use it everywhere,
> but cleaning up just a little would not change the state of the matter
> (IOW we will still be in "driver has some __free() usage" state).
>=20

But still we can just fix the uninitialized ones the right way [1]
right? since we have to fix them anyway. There already a patch [2] for
that

[1]
https://lore.kernel.org/lkml/CAHk-=3DwiCOTW5UftUrAnvJkr6769D29tF7Of79gUjdQH=
S_TkF5A@mail.gmail.com/
[2]
https://lore.kernel.org/all/20251106-aheev-uninitialized-free-attr-net-ethe=
rnet-v3-1-ef2220f4f476@gmail.com/

> TBH, I would not spent my time "undoing" all of the __free() that we
> have already, especially the testing part sounds not fun.

+1

>=20
> Turning all usage points to "=3D NULL" is orthogonal, and would be great.
>=20
> >=20
> > [2] https://lore.kernel.org/all/aQ9xp9pchMwml30P@horms.kernel.org/
> > [1] https://docs.kernel.org/process/maintainer-netdev.html#using-device=
-managed-and-cleanup-h-constructs
> >=20
> > Regards,
> > Ally
> >=20
