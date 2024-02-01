Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A73F7845CC4
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Feb 2024 17:15:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2ABE960E7A;
	Thu,  1 Feb 2024 16:15:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2ABE960E7A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706804112;
	bh=gYWYexFtoJ2yHocou+INVoUtLbF8tOuPvQoRlZwm2yg=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=12bAxZw+IHLKCKzl/dTVVt5Sh+IzYeCH7vFXeh0ryrrw8mQgSrU2xak2gv39fe8kD
	 XEHl1HitGhXzfr4+7G6c30QKr4xo8pU3EIRTxXxcwhY+iwAO5V1k6a6M8c4MR2WWb3
	 a40+J9CRXEmwlbE7NtPLx0YzCLfa1fqhtWUTT65faAGEGLw9IR+UjQiEkzJqciG7hC
	 j8w+6kayW8ga7jVcDh++T+5+4GdWwlESvI73cYDauXwvFZvmMZBWnKjPbT14+3pcmp
	 WQ6v3tyP5e8CSlLoaBjhXz80aW98wKZExyUFwNXeiVPPK9OIci7Pp3hHYjTnbB2idI
	 2qvCI7GS4KyfA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6eowA7BydoCn; Thu,  1 Feb 2024 16:15:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3E1E760B27;
	Thu,  1 Feb 2024 16:15:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E1E760B27
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DEC911BF396
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 13:46:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B2993421D7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 13:46:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2993421D7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Otsy8W-LPvGG for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Feb 2024 13:46:41 +0000 (UTC)
Received: from mail-vk1-xa33.google.com (mail-vk1-xa33.google.com
 [IPv6:2607:f8b0:4864:20::a33])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D2B86421C4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 13:46:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D2B86421C4
Received: by mail-vk1-xa33.google.com with SMTP id
 71dfb90a1353d-4bfe04cd2b0so424448e0c.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 01 Feb 2024 05:46:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706795199; x=1707399999;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=gYWYexFtoJ2yHocou+INVoUtLbF8tOuPvQoRlZwm2yg=;
 b=KiyrwiV+kWSqBvkXRIQ+UHZS+64ItRnRUYA6lscce85B6OwnQLOPIsn6C7KCe4RC8W
 b5YWp9c9QSdPEIQf92dQ88MERzGzY8oxOa6K8WiPALwX5Cnnh75HMCSD7NwW1tjdWizs
 kx9efei5twJrCziecxHxRSkISZhi+KogHCXo3Eu/HqmUsKSJbWvo29lZr5oKDhPacJ2S
 Q+0SPu9pKzkrXJIkpZ1TokcuM/LPSpwsBheOMxIIVd9HdxqqsURPi12aHcxvp4ZyIDUX
 6mch84aRHBbCyR//S0eOceMzYWyVh2pI95shCIm07IvPWexuEgv9xXaoBSIfqPcR4B5z
 euIg==
X-Gm-Message-State: AOJu0YwuDnAQ0HHQ42Z444da3ZuDwtfpVVMF76CBodqJ5dxev6E8Gj3C
 9Pg3hD4GUtQ1suCZHBazK/JCuyAVOnk409r4JwCynJ9uYR9bsqwhDAEJZQrdHKUSzU54FP2OyNn
 NtoUn0xF722SKIGaN3GAMjaAMeyR1ilfOu2VO
X-Google-Smtp-Source: AGHT+IG80kHJI3o0nh9nc37cFYAZfNgIoolcnGet/bLjzO8FQfWUZqIqvqwlp1tA8htBaza2xRqZOec13j3l2wPN17s=
X-Received: by 2002:a05:6122:2a0d:b0:4b6:be94:acc6 with SMTP id
 fw13-20020a0561222a0d00b004b6be94acc6mr5599008vkb.10.1706795199311; Thu, 01
 Feb 2024 05:46:39 -0800 (PST)
MIME-Version: 1.0
References: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
 <20240201122216.2634007-2-aleksander.lobakin@intel.com>
 <3f6df876-4b25-4dc8-bbac-ce678c428d86@app.fastmail.com>
In-Reply-To: <3f6df876-4b25-4dc8-bbac-ce678c428d86@app.fastmail.com>
From: Alexander Potapenko <glider@google.com>
Date: Thu, 1 Feb 2024 14:45:58 +0100
Message-ID: <CAG_fn=Wb81V+axD2eLLiE9SfdbJ8yncrkhuyw8b+6OBJJ_M9Sw@mail.gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Thu, 01 Feb 2024 16:15:00 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1706795199; x=1707399999; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gYWYexFtoJ2yHocou+INVoUtLbF8tOuPvQoRlZwm2yg=;
 b=rTc2uSJ3S6uJYVGJgYLohPRbg/u+YViaFBL/ViaP+9kBw6THZn5TBybFB8/lZt17kc
 QaWUTI33K4OaVw7ctUILIk1Iq6F0aAzQVga6ATQm8esIq9QN7G9/fzok3hNjB+v/Lceu
 FZ5Z5ej31CfEW3eKXRvF811OWMIVMy2vUnltNliKCZTJmQGlVmwpHuyKcSQCdNURoyh4
 tCmeZ5w6pUlsjwBq4wFMDEVMwOtPSFy9QMZo3C+cwBQMcjcebIfnWtilqpVexNOdy6hM
 oKem24/vh5x191ENT7uXkf2YDt8RMlyKCnfiLeaIjuESiulx6Pp+9lckUa/0xiLWtG8o
 8+uA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=rTc2uSJ3
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 01/21] lib/bitmap: add
 bitmap_{read, write}()
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
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>, dm-devel@redhat.com,
 Jiri Pirko <jiri@resnulli.us>, linux-s390@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 William Breathitt Gray <william.gray@linaro.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>, Yury Norov <yury.norov@gmail.com>,
 Ido Schimmel <idosch@nvidia.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Netdev <netdev@vger.kernel.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>, Simon Horman <horms@kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, ntfs3@lists.linux.dev,
 Syed Nayyar Waris <syednwaris@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, linux-btrfs@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Feb 1, 2024 at 2:23=E2=80=AFPM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Thu, Feb 1, 2024, at 13:21, Alexander Lobakin wrote:
> > From: Syed Nayyar Waris <syednwaris@gmail.com>
> >
> > The two new functions allow reading/writing values of length up to
> > BITS_PER_LONG bits at arbitrary position in the bitmap.
> >
> > The code was taken from "bitops: Introduce the for_each_set_clump macro=
"
> > by Syed Nayyar Waris with a number of changes and simplifications:
> >  - instead of using roundup(), which adds an unnecessary dependency
> >    on <linux/math.h>, we calculate space as BITS_PER_LONG-offset;
> >  - indentation is reduced by not using else-clauses (suggested by
> >    checkpatch for bitmap_get_value());
> >  - bitmap_get_value()/bitmap_set_value() are renamed to bitmap_read()
> >    and bitmap_write();
> >  - some redundant computations are omitted.
>
> These functions feel like they should not be inline but are
> better off in lib/bitmap.c given their length.
>
> As far as I can tell, the header ends up being included
> indirectly almost everywhere, so just parsing these functions
> likey adds not just dependencies but also compile time.
>
>      Arnd

Removing particular functions from a header to reduce compilation time
does not really scale.
Do we know this case has a noticeable impact on the compilation time?
If yes, maybe we need to tackle this problem in a different way (e.g.
reduce the number of dependencies on it)?
