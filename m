Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 906A0C1E2E9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Oct 2025 04:04:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 715BA40D41;
	Thu, 30 Oct 2025 03:04:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cJDJixCHLUs4; Thu, 30 Oct 2025 03:04:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B1B7D40D2D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761793448;
	bh=jsjqieVlu7j26QztQ4gx8a0IlvRQKGUmWf0NzLPg2hg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kkBECdd9VYfaNVsLhffNAdSrlcYNsQAmgzHWZG/PgivXw1eTa4IQcLYiD5dj7paFI
	 1zyS25peihrEeo2K8Z4+QcJK6Z1EvD0OnEt8M27GcBeenixWS5x1+ew7CrzdgD9g4I
	 EpuaCMxik+Qkp7ZT/LQ6Z8jAhQ1hsH54sHXDeRUrzZBIpR5QIixHxKM+BLk4dwTlSE
	 GMQ/KeqcogXJeyNY34+cRI77gzxxJnvBd+DkC2O2MOtk4D2M/LGExz7VNBC0er8bSG
	 B1RiaHD9lni2b3Rhucun3n9bjZjZXqe6tHHsMVFVIlqFa3RlZu8YfiIcBbCn6awg9l
	 wkbAuPxh0bLKA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B1B7D40D2D;
	Thu, 30 Oct 2025 03:04:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D1BA5CD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Oct 2025 03:04:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B761D40CDE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Oct 2025 03:04:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DfJayfZMMCiJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Oct 2025 03:04:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=kees@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EC6AE40CAA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC6AE40CAA
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EC6AE40CAA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Oct 2025 03:04:06 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 227AC44CBE;
 Thu, 30 Oct 2025 03:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E68BDC4CEF7;
 Thu, 30 Oct 2025 03:04:05 +0000 (UTC)
Date: Wed, 29 Oct 2025 20:04:05 -0700
From: Kees Cook <kees@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Sami Tolvanen <samitolvanen@google.com>,
 Nathan Chancellor <nathan@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>,
 Russell King <linux@armlinux.org.uk>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 linux-kernel@vger.kernel.org, llvm@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202510292002.10FDB135C3@keescook>
References: <20251025-idpf-fix-arm-kcfi-build-error-v1-0-ec57221153ae@kernel.org>
 <20251025-idpf-fix-arm-kcfi-build-error-v1-2-ec57221153ae@kernel.org>
 <CABCJKuesdSH2xhm_NZOjxHWpt5M866EL_RUBdQNZ54ov7ObH-Q@mail.gmail.com>
 <CACRpkdaeOYEcK9w1oy59WBqjNrK7q5zT2rzg8pHgDdZdKWVKZg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CACRpkdaeOYEcK9w1oy59WBqjNrK7q5zT2rzg8pHgDdZdKWVKZg@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1761793446;
 bh=AxveStPh2elBDvaO3K+y6I5FgqDnSBSlQMj0Px3/aIs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EZaDyQxgEBdxypDayV4zGIOC0hSpv/dimzVnZC6eD32j8HcYuLqXdqpfemFhJ/qjE
 fSS1UN28q2IgsCqqxMq6EZaVJTO2Xom8IuurL5aVSJ0D+E4E+9p2M8S4oyHxH0tVbc
 sCU/iAKPoST3uSPQc9greA1oCzdhXml2aOWtEpuNmUko0B61sesPBShgY8+NWmSOn/
 cTjD20hRAUKrV8tlMd6uLlS5oeMvsLW2W06i4CZDEamhbPZ1ZoEJo0lUJbriX9rnhF
 yCOTw0XExmFAp14LIcsxAiAElyXWgreXbAg7nwlZIhQd5qxGigk62k+ULsEsw3a2qu
 BvjswhKmGmznw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=EZaDyQxg
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

On Mon, Oct 27, 2025 at 11:56:21PM +0100, Linus Walleij wrote:
> On Mon, Oct 27, 2025 at 4:54 PM Sami Tolvanen <samitolvanen@google.com> wrote:
> > On Sat, Oct 25, 2025 at 1:53 PM Nathan Chancellor <nathan@kernel.org> wrote:
> > >
> > > Prior to clang 22.0.0 [1], ARM did not have an architecture specific
> > > kCFI bundle lowering in the backend, which may cause issues. Select
> > > CONFIG_ARCH_USES_CFI_GENERIC_LLVM_PASS to enable use of __nocfi_generic.
> > >
> > > Link: https://github.com/llvm/llvm-project/commit/d130f402642fba3d065aacb506cb061c899558de [1]
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/2124
> > > Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> 
> I didn't know Kees stepped in and fixed this, christmas comes
> early this year! I had it on my TODO to do this or get someone to
> do this, but now it turns out I don't have to.
> 
> > > +       # https://github.com/llvm/llvm-project/commit/d130f402642fba3d065aacb506cb061c899558de
> > > +       select ARCH_USES_CFI_GENERIC_LLVM_PASS if CLANG_VERSION < 220000
> >
> > Instead of working around issues with the generic pass, would it make
> > more sense to just disable arm32 CFI with older Clang versions
> > entirely? Linus, any thoughts?
> 
> We have people using this with the default compilers that come with
> Debiand and Fedora. I would say as soon as the latest release of
> the major distributions supports this, we can drop support for older
> compilers.

Okay, it seems like the consensus is to take this series so we don't
break existing users, even if they are rare.

Unless someone screams, I'll take this via the hardening tree...

-- 
Kees Cook
