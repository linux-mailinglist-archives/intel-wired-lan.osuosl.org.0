Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF84B0DD95
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jul 2025 16:16:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8488440A6E;
	Tue, 22 Jul 2025 14:16:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J2OPu_B1BE2J; Tue, 22 Jul 2025 14:16:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F07DA40F30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753193811;
	bh=tVf9s+VBrCxFX0/0lHXJexCtjFH2FtKEcOQbNsybb/U=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=C2M2Opk73sLLotE8lE8GqLMPzV6U7WFbzLBgJtTA8dpsFD0umXeEzkJNGZ+KuqLib
	 4T2POZQlit0SwIfbORo7LVIwiVFghAm1ebTNslmYsSyXMzGTqbhkU/mP4OwiJDd0sY
	 VZhZGhZXjbAGztM+nTmRao5cTCyih6c3DsWo+JwHTCayJUqHM/nvyz3ZzHodyTCvkY
	 isEWmcQV+2KDp891S/8+W3u8bn33nouaCbpP7JC8Yubo5c0sP4gvN+Ago1LYe/Vqp3
	 QCbayeJ1tY1l53WAetRlW4Usrbu9vUcMM3R9bWgaJKHoVqNphHwEaL51KYMTzTB4za
	 Zd/uhN3ASfrbA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F07DA40F30;
	Tue, 22 Jul 2025 14:16:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 73E39E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 14:16:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 65ED240F29
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 14:16:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8GKkMQgf_-Bb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jul 2025 14:16:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b29; helo=mail-yb1-xb29.google.com;
 envelope-from=willemdebruijn.kernel@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C483940A6E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C483940A6E
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com
 [IPv6:2607:f8b0:4864:20::b29])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C483940A6E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 14:16:47 +0000 (UTC)
Received: by mail-yb1-xb29.google.com with SMTP id
 3f1490d57ef6-e8bd2eaf8ccso5061188276.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 07:16:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753193806; x=1753798606;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=tVf9s+VBrCxFX0/0lHXJexCtjFH2FtKEcOQbNsybb/U=;
 b=e1Vdwp3M00COWEr94VPD8htYOSmznvmkLrBaCRDlaCAPX25cuQZWhagPrObhIDPsrd
 FzKQImccahCFuAwcAgycAHS9snAXAsrEj8eMrIUnKrFbprOzDjVlz+mh5r6artrpitR6
 E6zTmRc8nBhE7ODY8q9N/B2GKEe2jRvIN7kx3+YfZmBZMSjkYtjpvQbIY851Fqi5RMSl
 TMLxXmxwQxm2d7wwzRWTOQ0WIRk7z2agyorVy5y8cxBSYtOKZhBn1c/ZCfWtiF8OWKVH
 Gg9m5stU8EKSNLOPUX4vT2fn2/OcHP567+Cnt/9sAFrFkExx6IefmJEGtLDTwLypnJZU
 Xo9g==
X-Forwarded-Encrypted: i=1;
 AJvYcCX8wfY+k2y4mswSXz8Qw0t6f68Tkx3HKfJL0VaBdj/nhpjiQs8CLO7CxItO+tTN+/d9S/qrtJDvsxVLWrZ6owo=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy6QQvOn/aRYfnKQsrvMtPYIjyUt7kH1EVnANyDhmUY0u2UCjrQ
 lWcTUNvK+DLV9NEtzxRv6FxUzSpWBuJ4KwOzeFb8PYfOFhE33zBVjdmh
X-Gm-Gg: ASbGncsb8i2PY4xz1gHPJn21N+m3haiTfnjZ23S8FV9pItVXdCkGEAYvzHfbTa0hx01
 ZypYNidzLzooDsq2vEqP8T9XXzYiWj2GWaJPHU8LvGFFt0AJEjNAxUKEvHyUKTxjh1YMkOfHejF
 EVz1x6TpV2RVzG8jCq2K79H8se28KxcONC6i+QSSIuU8++/rn6vZF4Mz79BEx2n0dgM4UCvGzW0
 PpipyJ+XUe9p/t1tbJ58BEoiFhZf1IZiPpfrxxwOn/yMf7BaIUosU9G68LK4qefTMaiRXOaJtrx
 17UrlkabQWkKrV8j6xwbh5WxSUne55qMPnWD513tqhcj3ENevcsw4fP4Nbgr5U4yRVT6aE5yenm
 o8Am1448Oj+ZZM7pmPAzd5ECAUN1LbdUDlHn6vml74sK8fvPseSDnscOzXOQfKxQvJAWXJg==
X-Google-Smtp-Source: AGHT+IHP7FxitzXESY9w0S6KZhfv95yINoBxcZiXaQntPpFdLn7KC8PXaCXmQQWqLiwrO+Z+Yy7ijA==
X-Received: by 2002:a05:6902:2210:b0:e8b:b593:b06b with SMTP id
 3f1490d57ef6-e8c5f8acfb2mr24476660276.28.1753193806375; 
 Tue, 22 Jul 2025 07:16:46 -0700 (PDT)
Received: from localhost (23.67.48.34.bc.googleusercontent.com. [34.48.67.23])
 by smtp.gmail.com with UTF8SMTPSA id
 3f1490d57ef6-e8d7cc0b1cesm3206309276.3.2025.07.22.07.16.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Jul 2025 07:16:45 -0700 (PDT)
Date: Tue, 22 Jul 2025 10:16:44 -0400
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Jason Xing <kerneljasonxing@gmail.com>, 
 Paul Menzel <pmenzel@molgen.mpg.de>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, 
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com, 
 kuba@kernel.org, pabeni@redhat.com, bjorn@kernel.org, 
 magnus.karlsson@intel.com, maciej.fijalkowski@intel.com, 
 jonathan.lemon@gmail.com, sdf@fomichev.me, ast@kernel.org, 
 daniel@iogearbox.net, hawk@kernel.org, john.fastabend@gmail.com, 
 mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com, 
 linux-stm32@st-md-mailman.stormreply.com, bpf@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Jason Xing <kernelxing@tencent.com>
Message-ID: <687f9d4cf0b14_2aa7cc29443@willemb.c.googlers.com.notmuch>
In-Reply-To: <CAL+tcoAP7Zk7A4pzK-za+_NMoX11SGR3ubtY6R+aaywoEq_H+g@mail.gmail.com>
References: <20250721083343.16482-1-kerneljasonxing@gmail.com>
 <20250721083343.16482-2-kerneljasonxing@gmail.com>
 <8c9e97e4-3590-49a8-940b-717deac0078d@molgen.mpg.de>
 <CAL+tcoAP7Zk7A4pzK-za+_NMoX11SGR3ubtY6R+aaywoEq_H+g@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753193806; x=1753798606; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=tVf9s+VBrCxFX0/0lHXJexCtjFH2FtKEcOQbNsybb/U=;
 b=TGQvc9nDXl6KaSsrwwlAbwNjXBtepyHbZiZqXoEwkWanI4+bsVnFjsuL44tW59z0zn
 Lt46sYnegQhBUOnGtWUwMIUPlKS2bNgVYrnVfp0ZOdPkrr8xKTd2K0vAQXLeujhtCQhc
 ncsVNj5lwuiw6s68d6CGN/A0qUL4w2cB9fwODxnHHtKrMHLAH/fRHcsM0raM8bTJePYp
 OAw+aewwiB/Q2oe5Q34U4R/lnVVlIvvTn3gCuXTkcZXH4N8mRU7ZakwRlj5SQ5v71JVc
 wZh44Gj6Rz+0At6EaVXY7/LDqIrrjyZfrVte/OxP6PJerjQwlFUvfQXVoNgLell1JL0N
 mPaw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=TGQvc9nD
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] stmmac: xsk: fix
 underflow of budget in zerocopy mode
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

Jason Xing wrote:
> Hi Paul,
> =

> On Mon, Jul 21, 2025 at 4:56=E2=80=AFPM Paul Menzel <pmenzel@molgen.mpg=
.de> wrote:
> >
> > Dear Jason,
> >
> >
> > Thank you for your patch.
> =

> Thanks for your quick response and review :)
> =

> >
> > Am 21.07.25 um 10:33 schrieb Jason Xing:
> > > From: Jason Xing <kernelxing@tencent.com>
> > >
> > > The issue can happen when the budget number of descs are consumed. =
As
> >
> > Instead of =E2=80=9CThe issue=E2=80=9D, I=E2=80=99d use =E2=80=9CAn u=
nderflow =E2=80=A6=E2=80=9D.
> =

> Will change it.
> =

> >
> > > long as the budget is decreased to zero, it will again go into
> > > while (budget-- > 0) statement and get decreased by one, so the
> > > underflow issue can happen. It will lead to returning true whereas =
the
> > > expected value should be false.
> >
> > What is =E2=80=9Cit=E2=80=9D?
> =

> It means 'underflow of budget' behavior.

A technicality, but this is (negative) overflow.

Underflow is a computation that results in a value that is too small
to be represented by the given type.=
