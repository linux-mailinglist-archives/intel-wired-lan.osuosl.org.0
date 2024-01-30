Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 05EF48420D6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jan 2024 11:11:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 81EE541B33;
	Tue, 30 Jan 2024 10:11:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 81EE541B33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706609505;
	bh=lmOeyMwWYgVH9cF8GPIvshL3MIJRZ/YHOwbCDZdOR50=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TkWAKbkfhpCQacQkTChLDjT9xmdX2kaj+yxnDmjZKePoEPuvomtxmKVxLX5gbLPJV
	 XY3noeIEKM01exFPd1eVETXBvhHynEr/EtAcbHEsTParLU0u60jnOPfCON6um37xv9
	 87Ekz/8RL1WOulOElqmxNxs82F3Lo4qQIf4L+d2lsi+sINucroJnGxvG0oq9HLzLQR
	 vgm1PBElJiMv+Cnx+vJgsH+B55THY3DWK62XQjKATblo83+jI+lQ8wxEml1w0u7a70
	 QEFABv5l4jlpwUdAUIQgtWsUr6CSuA1ARijRf9vN9wUy5HVmgl5GO5M274bqV3Na1V
	 ENP3/ei+F0vRg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 92gI_6aDcw6M; Tue, 30 Jan 2024 10:11:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 635CB41B1B;
	Tue, 30 Jan 2024 10:11:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 635CB41B1B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8D6921BF29C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 10:11:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 63D928392C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 10:11:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 63D928392C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LnnQZVEBOQwL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jan 2024 10:11:38 +0000 (UTC)
Received: from mail-yw1-x1131.google.com (mail-yw1-x1131.google.com
 [IPv6:2607:f8b0:4864:20::1131])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 594A58390F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 10:11:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 594A58390F
Received: by mail-yw1-x1131.google.com with SMTP id
 00721157ae682-603e7d19725so15644237b3.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 02:11:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706609497; x=1707214297;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=lmOeyMwWYgVH9cF8GPIvshL3MIJRZ/YHOwbCDZdOR50=;
 b=qBWc0XZtXqVTKGvk9h2LTB6UdvBIzqCFRsG/khm58UuXqA7VetFpBUD562YniR6SRp
 pF++jo9RpiXxPhybh03qA3wEK82eJR3cNn4qHb+gsUyPPOOCr91PDHvQt5vBjtwmfic/
 rIzWPkzwCGYGUvOqOPKVrQY+qk4YVLgkHzWXcUdF+wlA9407qeLqWTLpOyDJxjaaZQzr
 HeolOsDJQTVCgL/PPdjjVL4Gs8+q+E/xTzcH1iWHg2huZbuquuwzQ5c63BtnTkpth09F
 g6/YTvnM4NsoSigNHKSDBNyXyXn6RtsGMN3UKCMpH1aEjUVA5L8VY0zQEONBmyvpHgVS
 e1Yg==
X-Gm-Message-State: AOJu0Yyk9clTNioasRuiz8txlojsDkXaIKEdgdC4BO3wRJxzeCxCL5aQ
 XzXid5Sy/jKaNvaY6fGEiuhPvwlC0dEsltvuKlPWQU4iD2H4U2XywM3W0xpVqUaIHeNKtLH6ddH
 LRxqTQnpdgwdGtnqr+k1lEXL0q0w=
X-Google-Smtp-Source: AGHT+IFRK4YrafkFlOPeBC9SYD6/OCZjylW/dLDByDsvbyNSUSM6fgkeRBu+0v3hZktbmcW8jzax9bO7QB1UvHQI25I=
X-Received: by 2002:a25:9b44:0:b0:dc6:9c4f:9e7f with SMTP id
 u4-20020a259b44000000b00dc69c4f9e7fmr1139552ybo.18.1706609497124; Tue, 30 Jan
 2024 02:11:37 -0800 (PST)
MIME-Version: 1.0
References: <20240127140747.905552-1-hayatake396@gmail.com>
 <154f979e-a335-461b-b72e-5e9c54fe940c@linux.intel.com>
 <CADFiAcJShbgBLXdVgs1vK1jqDFopkRcw-se4b4h0V3Yd60xLVw@mail.gmail.com>
 <92958c7b-7e5f-4e25-819f-4e52f9ffcf7b@linux.intel.com>
In-Reply-To: <92958c7b-7e5f-4e25-819f-4e52f9ffcf7b@linux.intel.com>
From: takeru hayasaka <hayatake396@gmail.com>
Date: Tue, 30 Jan 2024 19:11:26 +0900
Message-ID: <CADFiAc+0G2ncXKDQ+p8aZ98HtfsqNBHoSZVTYhgXUHu+=dof+A@mail.gmail.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706609497; x=1707214297; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lmOeyMwWYgVH9cF8GPIvshL3MIJRZ/YHOwbCDZdOR50=;
 b=PNgMLCHREaWXPV/5PUhrGs2H3DXCabQkqftLIKYIxmXrSTfKnJawXqDgcWAfpVSvWh
 x2hnpu8stro2MRcwkNg1lCtXs2XHQPgIOA6sQr02SDtSiYN3mvcdUOK+HYhIGzdvnIuS
 Gfro7EqiiOXkXtU//2JQ+QDAFR8wYpsky6O77ZuvFaQw7t2Iu5qH47BEtk/Cok1YMgsR
 P/Ysy1l2vrcM73LB7cRgeziwEGh/jB0Ldz0/+d/GE0yDup2Z/eeX4kWV7/mLMxQjlEhg
 id3m9IL1eo03rEkNSv/B0DkFCayjEbpcOvn22ist5k41iwFYVPNS8TXJDFydGRtOEsiO
 gcHQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=PNgMLCHR
Subject: Re: [Intel-wired-lan] [PATCH net-next RESENT v3] ethtool: ice:
 Support for RSS settings to GTP from ethtool
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
Cc: Jonathan Corbet <corbet@lwn.net>, vladimir.oltean@nxp.com,
 linux-doc@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 laforge@gnumonks.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, mailhol.vincent@wanadoo.fr
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Marcin-san
Thank you for your comment:)

> The way I understand it now, this patch (and the ethtool one) adds hashin=
g on
> TEID field in GTP* headers. So I wanted to ask why do we have a case (gtp=
c(4|6))
> that doesn't include TEID? Do we hash on other fields in this header?

I understand your question to be asking why it is necessary to have
the option to select gtpc(4|6) for RSS when it doesn't include the
TEID.

When hashing in cases where TEID is not included, it can be done with
the IMSI (telephone number) or the SeqNum of the GTPC in this header.
Essentially, it depends on the implementation, but there is a reason
for differentiation as the context is different between cases where
GTPC includes TEID and those where it does not.

Thanks,
Takeru

2024=E5=B9=B41=E6=9C=8830=E6=97=A5(=E7=81=AB) 18:59 Marcin Szycik <marcin.s=
zycik@linux.intel.com>:
>
>
>
> On 30.01.2024 07:39, takeru hayasaka wrote:
> > Hi Marcin-san
> > Thanks for your review!
> >
> >> Do I understand correctly that all gtpu* include TEID? Maybe write it =
here.
> > Yes, that's correct.
> >
> >> It would be nice to see a link to the patch that added GTP and 'e' fla=
g support
> > to ethtool itself ("ethtool: add support for rx-flow-hash gtp").
> > I will send you the link.
> > The one I sent earlier was outdated, so I've updated it to match this p=
atch.
> > https://lore.kernel.org/netdev/20240130053742.946517-1-hayatake396@gmai=
l.com/
> >
> >> gtpc(4|6) doesn't include TEID, so what is its purpose?
> > In GTPC communication, there is no TEID in the CSR (Create Session Requ=
est).
> > Therefore, there are cases of GTPC that do not include TEID.
>
> The way I understand it now, this patch (and the ethtool one) adds hashin=
g on
> TEID field in GTP* headers. So I wanted to ask why do we have a case (gtp=
c(4|6))
> that doesn't include TEID? Do we hash on other fields in this header?
>
> >
> >> s/TEID(4byte)/TEID (4bytes)/
> >> Also, I think two newlines should remain here.
> > I will correct the TEID notation in the next patch!
>
> Thanks,
> Marcin
>
> ---8<---
