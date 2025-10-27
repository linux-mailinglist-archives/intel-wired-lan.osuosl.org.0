Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F18C156B4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Oct 2025 16:25:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0676E803B9;
	Tue, 28 Oct 2025 15:25:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pYQ55doa82Yb; Tue, 28 Oct 2025 15:25:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 47904803F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761665112;
	bh=3fXrczP/tH9sGyN44YbyszhSBDmNu6JorF9M9mPbTjU=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6kH4nMYz63Mtk8jVFShQW4kYljFiJuFvQ73MLrgm0xawbS5adQR8rLAmuwHweuNhy
	 x4h6a6MHF4l7hiTJ7lnefxxDkFS/kpZGbYIrLrFzr5A19uh6XV1LFC1B0jxzkI70TB
	 PabvYyFm/2Ow+XswAN+Y1Njl3a4EiKksLydyE+tNB19Tj7eMrOlTSnhRUdR1Ia9Rcb
	 SuXWRGf3rhcpuWNW9NFJqPmDPAFwjIWhJ7o1uztLYW2AtQvFSyd18ldp9M+q8gOsu3
	 g99Vy0UwagrRVgD2zS7AhDeRpcMfq9y47Wy34h1tiNDOu4Qd1rqPTXGW+TRLyXDfNU
	 gBx0D8sKIIp8A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 47904803F1;
	Tue, 28 Oct 2025 15:25:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 92E66939
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 22:56:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8B8B384421
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 22:56:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EZAoQ6DsPb7K for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Oct 2025 22:56:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b129; helo=mail-yx1-xb129.google.com;
 envelope-from=linus.walleij@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8752483E16
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8752483E16
Received: from mail-yx1-xb129.google.com (mail-yx1-xb129.google.com
 [IPv6:2607:f8b0:4864:20::b129])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8752483E16
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 22:56:36 +0000 (UTC)
Received: by mail-yx1-xb129.google.com with SMTP id
 956f58d0204a3-63e35e48a27so5266806d50.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 15:56:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761605795; x=1762210595;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=3fXrczP/tH9sGyN44YbyszhSBDmNu6JorF9M9mPbTjU=;
 b=a34gks3RJaVJYwJdm3VuLVBXlHrE9bxdjQ9igdXY8zARfQwJiNVnXvMQBKfQobynC8
 0LxfQ3qnKVhFETb+E3pc1yx71MmYPqJBNcENA4BZVByRcmH/MS9jT/duETuJ+yTm4I/L
 jS/e4Jyjjc0BAS5THaKBkInnNEOXGAMobMhDIuwqnc7hIUe8qUtaMvytZMDnpT9wJNys
 uMugJQPDiJHs0Yp6oMnyHf28l2KrUz+2ARhqznuFsbyb8Z8oJhg4hOWo/zzP7kHfRhrs
 PfLWiX+SFL5HqSSRKkUbb/5mdaMDjFSdTU4gI86Ph8QpMPs0lUkKA9c0KkfB6ztgY/II
 jfYw==
X-Forwarded-Encrypted: i=1;
 AJvYcCW6O8Gid/NFjCrWma0uIZc0OitqmRf3DEXQj9Eg/IiqIduFDmj+l5R+F+Rv5VQDIYSKJ+VMKVbCkAQD71Rr9Sw=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy4QRG6rSiQ8cFkdOoI4ukStvM2t4/fItDsPk5TYnBksZbGBtIv
 +IqAm1+JSU4VlYRRGdV4wM2+bhx6ELG2ENdRqCh+CDvdYmoaC3ugQBbaX3R3aG1//H4s6wufQ1s
 5jzYXWwsKHviZC+oXd3qwduai5vYslKUrjJX49y2sRg==
X-Gm-Gg: ASbGncu2rQPxu2/UZ5a8QsXXt5j7b9uh3AT/l//mUPLbH4BOLejwP0oBJR3ymNzpGnP
 cxzl3KJBqgDDA8W2jQH/QZ224y07c3+lUqVDg9c50IsYZm8vaReFMu26Wzi7PbQqapt152yaZ9/
 VxcFo+2cHsMUdf6CSfDANJcJEXOWMwKp9e58s5FUtS11DACqH5P2oa6xqDjonarorxKNhyAcgaL
 2fRTSq1jfZws9mZsq4JzoYrnrS1g8pEzLUfTb4xjwgidK2PEAv2baiI4sLM
X-Google-Smtp-Source: AGHT+IFJxZPsBn36jb9IqqtiTCDa4X0Ih3+3+W1DlxJFcn7w7OJaZooe7uHyHPMcjKs42kSUEEM7iqG3b3fxHPvN1mY=
X-Received: by 2002:a05:690e:4184:b0:63f:2b69:9a2a with SMTP id
 956f58d0204a3-63f6b8559e7mr1530051d50.0.1761605793644; Mon, 27 Oct 2025
 15:56:33 -0700 (PDT)
MIME-Version: 1.0
References: <20251025-idpf-fix-arm-kcfi-build-error-v1-0-ec57221153ae@kernel.org>
 <20251025-idpf-fix-arm-kcfi-build-error-v1-2-ec57221153ae@kernel.org>
 <CABCJKuesdSH2xhm_NZOjxHWpt5M866EL_RUBdQNZ54ov7ObH-Q@mail.gmail.com>
In-Reply-To: <CABCJKuesdSH2xhm_NZOjxHWpt5M866EL_RUBdQNZ54ov7ObH-Q@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 Oct 2025 23:56:21 +0100
X-Gm-Features: AWmQ_bno-qx6koLOtrZwcQNDXGnT81r2Gd96qzGlQrBISAXpENMYtJk71SRHkpM
Message-ID: <CACRpkdaeOYEcK9w1oy59WBqjNrK7q5zT2rzg8pHgDdZdKWVKZg@mail.gmail.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Kees Cook <kees@kernel.org>, 
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
X-Mailman-Approved-At: Tue, 28 Oct 2025 15:25:10 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1761605795; x=1762210595; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3fXrczP/tH9sGyN44YbyszhSBDmNu6JorF9M9mPbTjU=;
 b=uvZ4+Y/6r4LWOtgvuCWw4OH9FiqB4iQTxuoQqejTd0UHfe5Q+ABi1rEcgO6BSUHv4V
 FsSgefT1DIy1ziQ4BivM6zxBKtMYjIiebga5h+O++p/kCzwZGPfChx9RLINo3Ge9nlCb
 UVJQYPsrBaGJKHTA2u9vAMDvVEp9y7Segr1/Z6o7cnGeLzxPHoKjeQg5MfjZf52ISDaK
 EoFrdu15KXVoWrAl20b+V1Y1NcdbjUwIktNk7b/HhUFB8qOKTtYZgXa88s4W4oTbmOTr
 BQx6qjs8lrodHKG25vLYYCCFA1UIxrFuFlYxiUB1d9SzUy2MeRocqsDI3FmfiK5FAjd+
 K7Dg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=uvZ4+Y/6
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

On Mon, Oct 27, 2025 at 4:54=E2=80=AFPM Sami Tolvanen <samitolvanen@google.=
com> wrote:
> On Sat, Oct 25, 2025 at 1:53=E2=80=AFPM Nathan Chancellor <nathan@kernel.=
org> wrote:
> >
> > Prior to clang 22.0.0 [1], ARM did not have an architecture specific
> > kCFI bundle lowering in the backend, which may cause issues. Select
> > CONFIG_ARCH_USES_CFI_GENERIC_LLVM_PASS to enable use of __nocfi_generic=
.
> >
> > Link: https://github.com/llvm/llvm-project/commit/d130f402642fba3d065aa=
cb506cb061c899558de [1]
> > Link: https://github.com/ClangBuiltLinux/linux/issues/2124
> > Signed-off-by: Nathan Chancellor <nathan@kernel.org>

I didn't know Kees stepped in and fixed this, christmas comes
early this year! I had it on my TODO to do this or get someone to
do this, but now it turns out I don't have to.

> > +       # https://github.com/llvm/llvm-project/commit/d130f402642fba3d0=
65aacb506cb061c899558de
> > +       select ARCH_USES_CFI_GENERIC_LLVM_PASS if CLANG_VERSION < 22000=
0
>
> Instead of working around issues with the generic pass, would it make
> more sense to just disable arm32 CFI with older Clang versions
> entirely? Linus, any thoughts?

We have people using this with the default compilers that come with
Debiand and Fedora. I would say as soon as the latest release of
the major distributions supports this, we can drop support for older
compilers.

Yours,
Linus Walleij
