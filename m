Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C92AAC0FD15
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Oct 2025 19:00:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 59FB1612DB;
	Mon, 27 Oct 2025 18:00:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ndikYtZIStrx; Mon, 27 Oct 2025 18:00:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B1628612F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761588028;
	bh=TOV2usxAVtrzpjNrsCDY6+oTbSzm7HQ0OagyrYKBhwU=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=e/j16a1O4RjZqymUU6gyZ0jLD0m1+sZ7nSLRBCdnySxlMxHabUAAVc1JmXLQ7DFxu
	 Y3E6oDdpPdRMe//l2t6i2dfk/uDVfyXwRKeqiI9yUBpqNrRx1b2P9eD+Z9JpyOuI9i
	 E4La2d6jSqBN4M/j7/Op8UXlcZhiP3aIID7FS0KuhQ1fll7LC6ia/pgI3i3a5MOj6i
	 prjfN3GOTq0D6QCfiYb4PA3esakMCnHNlyse6giteBDaat+nOrU2MQy97c6Affl/IT
	 YFuK1DDozDNU/i45ZxzHTnP96uWQIvykC+xXfP1oJPELx9NNQz4VNWj+RSRjOcD1A3
	 HIwgfb1XAJiFw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B1628612F5;
	Mon, 27 Oct 2025 18:00:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id CFC71939
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 15:54:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C1AA4610E9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 15:54:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x3JpDV17KFN6 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Oct 2025 15:54:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::629; helo=mail-pl1-x629.google.com;
 envelope-from=samitolvanen@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1A5C0610C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A5C0610C3
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1A5C0610C3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 15:54:27 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id
 d9443c01a7336-27eeafd4882so427855ad.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 08:54:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761580467; x=1762185267;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=TOV2usxAVtrzpjNrsCDY6+oTbSzm7HQ0OagyrYKBhwU=;
 b=BOnXKOE5OrOw6HsRNnK+PF9mVth6ox5xQflcNzpuVLwYSw/aVVIZXUg4x9SJ8xgqLA
 fqrHWZdkjGorPmkknpW1oVKRqCMONTVnW6Sfr5gZAQaDCemDwUio5biFY9U/0v6o993T
 Sf9LLIeNR2KqbTAOk1qORL6u/0veH2aWZMaKNH0qk6g+GOSahX8n7pvFJIjaFez7oE3b
 MbDtoPNmktxg8GXFXc7ahhe7AQ5uc+Y5TXnMJCdDs45pyZojwZUcCGOvGBVpW1nvUY7V
 iHAiCBVATTpgVOSnOXOTdoSzIqizIrKi0izNCL4ml3XxbxdZMZgvwlD27kQevU1lrP58
 FRXQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWICHY7QaIUS+IpkwVGCof6GBlq7U23Qr8HIq5GqG2CNZNEMxgsec+bMXlcOBwkdHZjBTmZOxhO/r7lOe1JrBk=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx0T/qFhIYhLtphIAveWNsQ61Eenv+g8l+kvhOepvpvc+nAEF0f
 1W0GBxXyGwJAl14oWOyCSvNcvVBevtSsq0zodMvgib44F41rNpPfmuisBc6/hzPGGEUYgdrzZeN
 NIUEmHgHMFEccjzxMVoWU/t9zV/rZvuWRnYYBMz/V
X-Gm-Gg: ASbGnctLQ2ApcbqRpgbyYbQAg9Nk+0CMCJn6v6lUBUIZjZScrmLhAia0a7cdIGM9SgC
 5lU0lHCePLtOb4t9eCTyoHJhH4RwP5w3NJtuQn8KZY0wCt9n/SGAc5Ky+arhRVJ/RetDukpKsn7
 evOYq9GIDmqnesTE/RGiL+8e4EzgSyGjPm2vCGlkQLH8sCr4XXdSaJ6uonbNKp/sfCIkTkf4G65
 t9nohsc+Lrvds+QrY5EOUYqV4w82MzxgHBynWyqsrbzhpRVmYoJDDVgg/1wI7o4R6pj
X-Google-Smtp-Source: AGHT+IGd2VC+1ri7Tm8Icu43HfhHP31Eha9krNlCyWKJpXSqm52Nv3U4r4IDiw+4iGHBWYRgukstDdR1FrBi6TFHiUE=
X-Received: by 2002:a17:902:c40c:b0:25b:d970:fe45 with SMTP id
 d9443c01a7336-294ca876b46mr835215ad.1.1761580466893; Mon, 27 Oct 2025
 08:54:26 -0700 (PDT)
MIME-Version: 1.0
References: <20251025-idpf-fix-arm-kcfi-build-error-v1-0-ec57221153ae@kernel.org>
 <20251025-idpf-fix-arm-kcfi-build-error-v1-2-ec57221153ae@kernel.org>
In-Reply-To: <20251025-idpf-fix-arm-kcfi-build-error-v1-2-ec57221153ae@kernel.org>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Mon, 27 Oct 2025 08:53:49 -0700
X-Gm-Features: AWmQ_bkZ-boZ1PO-DZE1ghKe_XcmKdU5EzkIpPpXzyaf8mX9qkr6Gzs7ALPdxQ0
Message-ID: <CABCJKuesdSH2xhm_NZOjxHWpt5M866EL_RUBdQNZ54ov7ObH-Q@mail.gmail.com>
To: Nathan Chancellor <nathan@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>
Cc: Kees Cook <kees@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, 
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 Bill Wendling <morbo@google.com>, 
 Justin Stitt <justinstitt@google.com>, Russell King <linux@armlinux.org.uk>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>, 
 linux-kernel@vger.kernel.org, llvm@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 27 Oct 2025 18:00:26 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1761580467; x=1762185267; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=TOV2usxAVtrzpjNrsCDY6+oTbSzm7HQ0OagyrYKBhwU=;
 b=XcQMvhsCCl6Zq8ySQivxv0UwgVYLXpjb4sfvribkYoHpB/MHmmKev+NIjXVFvqOK+L
 UYXbjK3JzXN7ZpH9B0r5W4lthg+HGWsylnWpd0SBrHvcMn/gdua6QEOlT3zHBE2HFnAk
 +v2dG+am6uD5xl98e7P8anT5WFfGYn2vj/I2VyWjj7bgnQUNl5w5/0vy+BIzOLAf5VLS
 MWJwY9J3iLnpg+Xwrz9syVvEFx1DcSz/wZHiJipdRSgXUZ09IEIWg4PCeSlKfTeVUpfu
 E8jZwPF/48n/SifjRXp4ZypMvdP5/sq6PTX9x7qBspI/SrsHyUU3PaKx/64d6zhcKW8p
 V24Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=XcQMvhsC
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

Hi Nathan,

On Sat, Oct 25, 2025 at 1:53=E2=80=AFPM Nathan Chancellor <nathan@kernel.or=
g> wrote:
>
> Prior to clang 22.0.0 [1], ARM did not have an architecture specific
> kCFI bundle lowering in the backend, which may cause issues. Select
> CONFIG_ARCH_USES_CFI_GENERIC_LLVM_PASS to enable use of __nocfi_generic.
>
> Link: https://github.com/llvm/llvm-project/commit/d130f402642fba3d065aacb=
506cb061c899558de [1]
> Link: https://github.com/ClangBuiltLinux/linux/issues/2124
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  arch/arm/Kconfig | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 2e3f93b690f4..4fb985b76e97 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -44,6 +44,8 @@ config ARM
>         select ARCH_USE_BUILTIN_BSWAP
>         select ARCH_USE_CMPXCHG_LOCKREF
>         select ARCH_USE_MEMTEST
> +       # https://github.com/llvm/llvm-project/commit/d130f402642fba3d065=
aacb506cb061c899558de
> +       select ARCH_USES_CFI_GENERIC_LLVM_PASS if CLANG_VERSION < 220000

Instead of working around issues with the generic pass, would it make
more sense to just disable arm32 CFI with older Clang versions
entirely? Linus, any thoughts?

Sami
