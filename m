Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DBECF839160
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jan 2024 15:31:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 669E381E57;
	Tue, 23 Jan 2024 14:31:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 669E381E57
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706020280;
	bh=Wb2LadyDq3EncKOixdkKXF1xf+5ToI114DbbSpnU1nY=;
	h=In-Reply-To:References:Date:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OSktYRYmYd1OKmuJukw15ZugGwyk+90PPgPoQOpPGaptIprlJHTh3EH7tR77HhX6q
	 FAl1Fucy8veznbrbYsDSg0aGbSP/ZWfFuPg3W9H31+Ut6stcRQAbnN3Dek1/pYJkTJ
	 SXw+y+mbHSnlYHBaX0Vx7Y7tlgZsHvwyBLOproW9NHcxJM5KfO4c4bm+boxtop0SPv
	 Ys4cLQe0ST4ecGHqOmVWUkbxzKsaoySrfjbOgGkJDqvvfoulhREBEBO5iajSr7ekva
	 UfQ9G7yokTPhr5oTyGlqvFV2uUzuXb8hLX4z6Hogcb/JjJNMa9arERNomduKmmHLGL
	 zLlfgRpNS+MfA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kKdhKcwJ7pqc; Tue, 23 Jan 2024 14:31:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 280A081E55;
	Tue, 23 Jan 2024 14:31:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 280A081E55
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 49A801BF35D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 14:31:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 12A6160ED7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 14:31:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 12A6160ED7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6PxmC-q3U-Dw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jan 2024 14:31:11 +0000 (UTC)
X-Greylist: delayed 568 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 23 Jan 2024 14:31:10 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C053B60C20
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com
 [64.147.123.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C053B60C20
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 14:31:10 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id F2C013200A04;
 Tue, 23 Jan 2024 09:21:36 -0500 (EST)
Received: from imap51 ([10.202.2.101])
 by compute5.internal (MEProxy); Tue, 23 Jan 2024 09:21:38 -0500
X-ME-Sender: <xms:b8uvZZutZyYhjvm11xsbDHd-yctTohxrZ96EclPn7v7Uk295CAYxIA>
 <xme:b8uvZSdJ-DzXvh4tLWbWKsloyBAkMqIGhWu0zDscTRdh84QtuWV6_vntH6OGKUGWc
 o9tQr6gGnuPR811080>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdekkedgieduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtgfesthhqredtreerjeenucfhrhhomhepfdet
 rhhnugcuuegvrhhgmhgrnhhnfdcuoegrrhhnugesrghrnhgusgdruggvqeenucggtffrrg
 htthgvrhhnpefgkeeuleegieeghfduudeltdekfeffjeeuleehleefudettddtgfevueef
 feeigeenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivg
 eptdenucfrrghrrghmpehmrghilhhfrhhomheprghrnhgusegrrhhnuggsrdguvg
X-ME-Proxy: <xmx:b8uvZcyHxEDFbucCwS_wdJTB7xZCjv4VpoI1kQNX4uuVdNYjj6sBQw>
 <xmx:b8uvZQOGooI-lZsO5yozfuK-_cjQpfLDCPfU0iE3UrR2Mn2j9dL4qQ>
 <xmx:b8uvZZ-FoQRRZFNwPBfm4zrKoG5PrhcOqTLtRYQnZkkS4F1E545I9g>
 <xmx:cMuvZdVu3pmkvuhw0wgTNHs20QG_zyCJ2SI5aNTi4b7I7-93_VGCkA>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id C023DB6008D; Tue, 23 Jan 2024 09:21:35 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-119-ga8b98d1bd8-fm-20240108.001-ga8b98d1b
MIME-Version: 1.0
Message-Id: <0229fa60-2d87-4b1c-b9f0-6f04c6e4dbdd@app.fastmail.com>
In-Reply-To: <d03e90ca-8485-4d1b-5ec1-c3398e0e8da@linux-m68k.org>
References: <CAHk-=wiB4iHTtfZKiy5pC24uOjun4fbj4kSX0=ZnGsOXadMf6g@mail.gmail.com>
 <20240123111235.3097079-1-geert@linux-m68k.org>
 <d03e90ca-8485-4d1b-5ec1-c3398e0e8da@linux-m68k.org>
Date: Tue, 23 Jan 2024 15:21:14 +0100
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Geert Uytterhoeven" <geert@linux-m68k.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain;charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arndb.de; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm2; t=1706019696;
 x=1706106096; bh=Wb2LadyDq3EncKOixdkKXF1xf+5ToI114DbbSpnU1nY=; b=
 PKayuLNrs/RNOnY9Pm3PTRTDtc1BuvHxlCD7DuFwY3X2d3w/3n1RTZ9LkQQmom3/
 w6idujhcC4sf3BbCM5+B3rKAeN6o49DZxzKkXiUHhjhwBc48BWX6QQG9FBbGrESz
 dY9isiD4klmX7hDZxIpR0XAo9bx2f3HmXbcXHrgnWu377wYBVGHNDJeydLYODUm3
 R2v4IQChjpBjq1THZkrhojBT62tPQZhhhJX7vhM3GS1LAQ5MUjk8AsVhFsBFrQgH
 doe9VBd2+6WHeaR4G96Yes5cYzvayqaI2fWvhDYf/ZZHo1Zb7cz6wduRTcnHpKrW
 6kE0Ci1RccWeYTA5fc/t/A==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1706019696; x=
 1706106096; bh=Wb2LadyDq3EncKOixdkKXF1xf+5ToI114DbbSpnU1nY=; b=i
 aeyMu9IQJm8viLVFcRG2+AfApl0inhRKl32d9bxe+ynOLxLBL2s/6xnBdR+sart7
 wAZAjiA4uL/DTaIWBboS2/YhhyDMgMYyxOQ4f604bM7uJzQt+e/9izTFd+xJifVo
 xQ50WHbYZD/V2ZAwYra6Pek4hm9CLQF0AsKq4BVdceSEFeVHgMY+a42IjHl2qdAC
 3tidNdDH6brWPgcA3qtQ97S9I8mHpThso03DUhwzCMsTMvIaulq1IZgWkWvjI17h
 qB/abhBsPAnPQnf0Ws70h0wwPbXzEqjR98NOYls5N0AIzgYtr4Y02V+Cwfh6GpX1
 RL81i2NKrtG69Wlsq/MXA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=arndb.de header.i=@arndb.de
 header.a=rsa-sha256 header.s=fm2 header.b=PKayuLNr; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm3 header.b=iaeyMu9I
Subject: Re: [Intel-wired-lan] Build regressions/improvements in v6.8-rc1
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
Cc: Chris Zankel <chris@zankel.net>, linux-scsi@vger.kernel.org,
 linux-sh@vger.kernel.org, Netdev <netdev@vger.kernel.org>,
 mpi3mr-linuxdrv.pdl@broadcom.com, qat-linux@intel.com,
 dri-devel@lists.freedesktop.org, Max Filippov <jcmvbkbc@gmail.com>,
 linux-mtd@lists.infradead.org, linux-hardening@vger.kernel.org,
 sparclinux@vger.kernel.org,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 linuxppc-dev@lists.ozlabs.org, intel-xe@lists.freedesktop.org,
 linux-crypto@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jan 23, 2024, at 12:45, Geert Uytterhoeven wrote:

>> 68 error regressions:
>
>>  + /kisskb/src/arch/powerpc/sysdev/udbg_memcons.c: error: no previous=
 prototype for 'memcons_getc' [-Werror=3Dmissing-prototypes]:  =3D> 80:5
>>  + /kisskb/src/arch/powerpc/sysdev/udbg_memcons.c: error: no previous=
 prototype for 'memcons_getc_poll' [-Werror=3Dmissing-prototypes]:  =3D>=
 57:5
>>  + /kisskb/src/arch/powerpc/sysdev/udbg_memcons.c: error: no previous=
 prototype for 'memcons_putc' [-Werror=3Dmissing-prototypes]:  =3D> 44:6
>
> powerpc-gcc{5,12,13}/ppc64_book3e_allmodconfig

I now sent patches for powerpc booke warnings

>>  + /kisskb/src/arch/sh/kernel/cpu/init.c: error: no previous prototyp=
e for 'l2_cache_init' [-Werror=3Dmissing-prototypes]:  =3D> 99:29
>
> sh4-gcc1[123]/se7{619,750}_defconfig
> sh4-gcc1[123]/sh-{all{mod,no,yes},def}config
> sh4-gcc11/sh-allnoconfig

I assume the sh maintainers will eventually get to that

>>  + /kisskb/src/arch/sparc/include/asm/floppy_64.h: error: no previous=
 prototype for 'sparc_floppy_irq' [-Werror=3Dmissing-prototypes]:  =3D> =
200:13
>>  + /kisskb/src/arch/sparc/include/asm/floppy_64.h: error: no previous=
 prototype for 'sun_pci_fd_dma_callback' [-Werror=3Dmissing-prototypes]:=
  =3D> 437:6
>
> sparc64-gcc{5,11,12,13}/sparc64-allmodconfig

Andrew Morton did a patch for the sparc warnings, and Andreas Larsson
is joining as a maintainer, so hopefully he can pick that up soon.
> sparc64-gcc{5,1[123]}/sparc64-allmodconfig
>
>>  + /kisskb/src/arch/sparc/vdso/vclock_gettime.c: error: no previous p=
rototype for '__vdso_clock_gettime' [-Werror=3Dmissing-prototypes]:  =3D=
> 254:1
>>  + /kisskb/src/arch/sparc/vdso/vclock_gettime.c: error: no previous p=
rototype for '__vdso_clock_gettime_stick' [-Werror=3Dmissing-prototypes]=
:  =3D> 282:1
>>  + /kisskb/src/arch/sparc/vdso/vclock_gettime.c: error: no previous p=
rototype=20

There are prototypes in include/vdso/gettime.h that should be
used here, but unfortunately the sparc implementation does
not match the prototypes because sparc is missing the gettime64
support.

> sparc64-gcc{5,12,13}/sparc64-{allno,def}config
> sparc64-gcc11/sparc64-{all{mod,no},def}config
>
>>  + /kisskb/src/arch/x86/um/shared/sysdep/kernel-offsets.h: error: no =
previous prototype for =E2=80=98foo=E2=80=99 [-Werror=3Dmissing-prototyp=
es]:  =3D> 9:6
>
> um-x86_64-gcc12/um-{all{mod,yes},def}config

I made a patch for arch/um yesterday.

> sparc64-gcc1[12]/sparc64-allmodconfig
>
>>  + /kisskb/src/drivers/scsi/mpi3mr/mpi3mr_transport.c: error: the fra=
me size of 1680 bytes is larger than 1536 bytes [-Werror=3Dframe-larger-=
than=3D]:  =3D> 1818:1

I sent a patch in November when the regression started, missed
the reply about needing another change
https://lore.kernel.org/all/CAFdVvOxH4UQjww4124E2ttuTgknzkHoPxVSFOQgLfoV=
_dkANwQ@mail.gmail.com/

>>  + {standard input}: Error: displacement to undefined symbol .L105 ov=
erflows 8-bit field :  =3D> 590, 593
>>  + {standard input}: Error: displacement to undefined symbol .L135 ov=
erflows 8-bit field :  =3D> 603
>>  + {standard input}: Error: displacement to undefined symbol .L140 ov=
erflows 8-bit field :  =3D> 606
>>  + {standard input}: Error: displacement to undefined symbol .L76 ove=
rflows 12-bit field:  =3D> 591, 594
>>  + {standard input}: Error: displacement to undefined symbol .L77 ove=
rflows 8-bit field : 607 =3D> 607, 582, 585
>>  + {standard input}: Error: displacement to undefined symbol .L97 ove=
rflows 12-bit field:  =3D> 607
>>  + {standard input}: Error: pcrel too far: 604, 590, 577, 593, 572, 5=
69, 598, 599, 596, 610 =3D> 610, 574, 599, 569, 598, 596, 601, 590, 604,=
 595, 572, 577, 593
>
> SH ICE crickets

Linus did a patch for the syscall, and I sent another one for
arch/sh to prevent this from happening again:

https://lore.kernel.org/all/CAHk-=3Dwjh6Cypo8WC-McXgSzCaou3UXccxB+7PVeSu=
GR8AjCphg@mail.gmail.com/
https://lore.kernel.org/all/07d8877b-d933-46f4-8ca4-c10ed602f37e@app.fas=
tmail.com/

Resent mine now.

      Arnd
