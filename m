Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A95C166A4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Oct 2025 19:15:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CFC4540556;
	Tue, 28 Oct 2025 18:15:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 72-aVGphNm5k; Tue, 28 Oct 2025 18:15:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4CC1240553
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761675315;
	bh=IdoA2Hsz3DXflOJ/uWb+OTuJMtFaS4jo6XzpS3PQUeQ=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vrXP1eEsGiZN13VLPXcbaEKevkjUVHK5W/ECRJGfk93HMp141sDjAtBTKYVsXKCc7
	 jpZrWXh3R+5yh7KUwoXOj1h3a5wDJ7fOBkW+HdA3nsfTmpE4sFER1KYmWVdEjD91yM
	 +GObVri9Mln+73AeXEuG+zDSPJg1hNsP3jvqynq4iTXJtif7og1n+HdGq21stV20d7
	 /7A4ds9QHelP5AIyz+mJ/UsDehEZqYEZryKNjjNXk3cf/HMZw5WtMxDLQeZJ7jcGBF
	 IJ0haPSRjAgm3TAAsXir9/+8vPkAyQs3kFuOhIkVzOUy8Mtz8hFTd1gNNqvE8K05uH
	 YkOBQ0ko6mrNg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4CC1240553;
	Tue, 28 Oct 2025 18:15:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4179822F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 18:15:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 333D980BB8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 18:15:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3twGXTxl8zog for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Oct 2025 18:15:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::629; helo=mail-pl1-x629.google.com;
 envelope-from=samitolvanen@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9073880966
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9073880966
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9073880966
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 18:15:13 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id
 d9443c01a7336-27eeafd4882so30505ad.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 11:15:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761675313; x=1762280113;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=IdoA2Hsz3DXflOJ/uWb+OTuJMtFaS4jo6XzpS3PQUeQ=;
 b=fpMcQmtYqSTAAkw9s55e+d4kaoc+r4LSJ+Q7qRTA823QsPmQoFl2kS04zu/7XUVWYd
 GLOT6B+tzVIkUF3ztBQe6GRxQTjOW+HIXWPH1YOC64CsJ6rhpyVPGzCv/bmiKsF+ep+9
 +4xq6GJEctU+/9kqRTGhcY4hfI8hv6Yn0/e7gO+YAf/G7mItEl0j8CH9cEuiZPfQb7VE
 uwRwcWbYFOvzLB0pxEmjrQrpaihrfsFbAQDK9pkZxXdX0R6EQ3cD0keEY+zkRpc+1fu0
 WvKVAT5206WPIHAtyTaAbIv9Kc/eThB5Kwk+kf/os8PxP5tDrsIp5Poa8Q+w+bxT+GRw
 5z6w==
X-Forwarded-Encrypted: i=1;
 AJvYcCWi7R6nkZ5RZAYRzLizSnGSddxY/4Qb4geTHcPk0tmx2udjMVL4D9jRTlvcwTVByXftZ8+hnHYlzLaOeUaDHuo=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx6GIdHj1np5ckIIhZrSeNZRjHzPNd3zYSKJH2zjsh6FO9wgBvw
 G0nZldES2TGvWNQuEV19Hg63Q6+AWiJLHd6u9H74le10F/YmEQm/jKLQZsXVNHIGdv1c17Y4zfn
 erUQlky+H0wnk6OjXZnfhp9nhsF88XCEA31ciN4RY
X-Gm-Gg: ASbGncvNvRSlVyfNX1StZKj5lwoE6VKdM0jWIZvUFTfgq9ttsXVIr+bbcu9Unj5wLxo
 eaLbuo4C7uJM0xrerqRTTJRoUCN4iUGIGPJbhWYG8cOyjwcEoqR8nKxaR4aaTJAEX2gUMwgHk2G
 POJPF90D5k0hFvDbSQi7lgr07ESS0FyBZ8Q95hvxO/evkHeuauTjJovkiILFHiYtXcLy5mS+xfq
 tYTrRQ4sOAxbiCeJTVeT9o7p0MYyFTebu8gxSe4cgsJgQ2w50DOj5RonQ==
X-Google-Smtp-Source: AGHT+IERGgSXUSFxn2JeNfQ2C86EuHjvzEyZOaIycK2W0jkA78IAxEYdTtDG+mA9d+7pqLJIChA0NWObPqGrobS4WTk=
X-Received: by 2002:a17:903:22c3:b0:291:6858:ee60 with SMTP id
 d9443c01a7336-294de36e83fmr559985ad.4.1761675312071; Tue, 28 Oct 2025
 11:15:12 -0700 (PDT)
MIME-Version: 1.0
References: <20251025-idpf-fix-arm-kcfi-build-error-v1-0-ec57221153ae@kernel.org>
 <20251025-idpf-fix-arm-kcfi-build-error-v1-2-ec57221153ae@kernel.org>
 <CABCJKuesdSH2xhm_NZOjxHWpt5M866EL_RUBdQNZ54ov7ObH-Q@mail.gmail.com>
 <CACRpkdaeOYEcK9w1oy59WBqjNrK7q5zT2rzg8pHgDdZdKWVKZg@mail.gmail.com>
 <20251028175243.GB1548965@ax162>
In-Reply-To: <20251028175243.GB1548965@ax162>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Tue, 28 Oct 2025 11:14:35 -0700
X-Gm-Features: AWmQ_bnDLfsfNIG5--yjR8bWyBut4gyt9iExhd25ip84kUhmdr4d3xv1vPYI1-Q
Message-ID: <CABCJKudsbd6=8B+fkzbw6TkL-dVvSoT3Co=fW+jWOnuBtxsLKg@mail.gmail.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>, Kees Cook <kees@kernel.org>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>, 
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>, 
 Russell King <linux@armlinux.org.uk>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>, linux-kernel@vger.kernel.org, 
 llvm@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1761675313; x=1762280113; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=IdoA2Hsz3DXflOJ/uWb+OTuJMtFaS4jo6XzpS3PQUeQ=;
 b=FfIwOJuHoQB584kSpm+GnuIVsjugtxhzTx7AcVhT8LNS/9+Z3KRBfQlGj7X0Fh5X6y
 oVYTJ97PzaS4px9x0cBLkz2tmzDD/Phr8peijPLVA1ztZCwKCYT5kplVkot+qk5ZKp1c
 mHVP/kpILJfc1J2CdYf1n6aj+s4M793VPmxLRw5uZwXmUi9DY7z+h8U2YxmC2/t9tDw9
 DVTbUSyVUxLWdBIhB7/3kkl7llHf8s10DFOwnfOGBha13C2cFyG10u97glp503ueUycs
 9KfZuqKsmmSCRAexhr8gUbmQ/9b/LwhY2ffGT8lDJKW7ivMyjNVlKZfZrVLg2789j8Qb
 ZMZQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=FfIwOJuH
Subject: Re: [Intel-wired-lan] [PATCH 2/3] ARM: Select
 ARCH_USES_CFI_GENERIC_LLVM_PASS
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

On Tue, Oct 28, 2025 at 10:52=E2=80=AFAM Nathan Chancellor <nathan@kernel.o=
rg> wrote:
>
> On Mon, Oct 27, 2025 at 11:56:21PM +0100, Linus Walleij wrote:
> > On Mon, Oct 27, 2025 at 4:54=E2=80=AFPM Sami Tolvanen <samitolvanen@goo=
gle.com> wrote:
> > > Instead of working around issues with the generic pass, would it make
> > > more sense to just disable arm32 CFI with older Clang versions
> > > entirely? Linus, any thoughts?
> >
> > We have people using this with the default compilers that come with
> > Debiand and Fedora. I would say as soon as the latest release of
> > the major distributions supports this, we can drop support for older
> > compilers.
>
> Okay, I think that is reasonable enough. This is not a very large
> workaround and I do not expect these type of workarounds to be necessary
> frequently so I think it is worth keeping this working if people are
> actually using it. That means we could mandate the backend version of
> kCFI for ARM with Debian Forky in 2027.

Yeah, it's a bit unfortunate, but I agree that we shouldn't break
existing users until newer Clang is actually available in distros.

Sami
