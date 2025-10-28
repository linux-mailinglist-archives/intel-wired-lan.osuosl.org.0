Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E3A5C16511
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Oct 2025 18:53:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A2436606F7;
	Tue, 28 Oct 2025 17:52:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id We_0vtqMK588; Tue, 28 Oct 2025 17:52:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2E16260703
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761673973;
	bh=kGqgCqSj4+eDurNR5uOg2tNpRaSUEQfF3D2HFe5YavY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6Zfpe34ygWXgdupMWmwT21smmkSVan1+fu8c/w/zSV+lvmoK09ycKWexSla9A22KS
	 nB0OUxh/pqEXio4RB+CKLjmHBRGy9TwbYzO/duujDjtSlpmVPBUfHRNxHBD93Mkte7
	 6tg5k0AY9a4SgHl4xagTUAvMg5zuRYz0z8QUoD82ulzA/TXc+GsJSucOhuPTRNKsaa
	 /+mHSAwLAUl9xOHEHI6/l7BArwzyVepSk0+JtA0fluWyJLHX0D+xyP9xQzubNIPXXu
	 0s/LQhe4dNf/9bP3NqraZM1oLs3cLM5f/2FfuBaBaNZ37tL4hqq1XKzRssPMdT4rTC
	 mHBeyc5Wqe7Ew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E16260703;
	Tue, 28 Oct 2025 17:52:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5F79C22F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 17:52:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 50C1B80E0E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 17:52:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NWuFBG9Xu1kQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Oct 2025 17:52:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=nathan@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6C2F580E0B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C2F580E0B
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6C2F580E0B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 17:52:50 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 1DAFB449B8;
 Tue, 28 Oct 2025 17:52:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F24AC4CEE7;
 Tue, 28 Oct 2025 17:52:45 +0000 (UTC)
Date: Tue, 28 Oct 2025 10:52:43 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, Kees Cook <kees@kernel.org>,
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
Message-ID: <20251028175243.GB1548965@ax162>
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
 d=kernel.org; s=k20201202; t=1761673970;
 bh=Moq064DwQdSS6qTOYeb42y6SY5Kr7+VDV6iVv9m8xBQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jcqim24vkU/lNUAwQO+ySvG//0jPahaWXHXgAox1AfcfBdPxJPT3NTHoljAfIQYGt
 MaBdO4/AgJqqdZ1woP/x1NfOVWC8yunhevd9di6JM/iv1H0gJ6eqPQxFXzoUHGJ04D
 scy+VnPKywP5ILoZhGpWVOIRAO5XcBMvpBvKhPZDzpq2NhBpAuqqbUUowFnp8a96KC
 4rlVUHFdp71lSRoL2i/I5XpYnhYsLp/3LnWR1D0bbTjC0rcdQNHh9Sjo+1WtXiSX0P
 yVN+0IeIxy/79PMPodDKBtZBZNCwUeLSgW2NbN9RZOlwk167bZu+8Er41Ugle2BBsI
 Z3n/fBO32uYAA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=jcqim24v
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
> > Instead of working around issues with the generic pass, would it make
> > more sense to just disable arm32 CFI with older Clang versions
> > entirely? Linus, any thoughts?
> 
> We have people using this with the default compilers that come with
> Debiand and Fedora. I would say as soon as the latest release of
> the major distributions supports this, we can drop support for older
> compilers.

Okay, I think that is reasonable enough. This is not a very large
workaround and I do not expect these type of workarounds to be necessary
frequently so I think it is worth keeping this working if people are
actually using it. That means we could mandate the backend version of
kCFI for ARM with Debian Forky in 2027.

Cheers,
Nathan
