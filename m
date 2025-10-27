Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A6EABC11746
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Oct 2025 21:59:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 83938613F8;
	Mon, 27 Oct 2025 20:59:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u36W3RrNANIt; Mon, 27 Oct 2025 20:59:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0F4EE613FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761598757;
	bh=yprLLzu/23+hltQ8hDoRSGSE9VYBXZzoi6lRcgP6GUU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=b27lajqCSOAzfsyDpBulxGXrIz8srBDnUuvYhZXiVJb1CmyQwj+/Fs4AydZp5Yn4R
	 J0/rykXbP+bqfYqMmcqK3UR93jECwWR/qQly7GqioXygGIRdyNsCP0P1YlGb5P3w18
	 Wf7DdyIEkrz46iBra/584qajXhCat4BGTZZpvagANOFLocwI6wyeHhJIE2jWTpCyq/
	 0lDdbVnCGgPkmG2PCtN+2alV/nyhLpz+ylTTMC724s7g2NTMWLX0qZg45r/LBPZbmt
	 dopYZ6TlyQGPwCDKxX45VqqyyIpi7rWwAFyeA9P3ibmPwaGcjCdQKv5UnzBb875Jgq
	 G1QMbTaMiks/w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0F4EE613FB;
	Mon, 27 Oct 2025 20:59:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2FA6E939
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 20:59:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2115141585
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 20:59:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v477ybY37dMV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Oct 2025 20:59:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=nathan@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 758ED41584
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 758ED41584
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 758ED41584
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 20:59:14 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 46FC5612EE;
 Mon, 27 Oct 2025 20:59:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16BB8C4CEF1;
 Mon, 27 Oct 2025 20:59:08 +0000 (UTC)
Date: Mon, 27 Oct 2025 13:59:06 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Kees Cook <kees@kernel.org>,
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
Message-ID: <20251027205906.GC3183341@ax162>
References: <20251025-idpf-fix-arm-kcfi-build-error-v1-0-ec57221153ae@kernel.org>
 <20251025-idpf-fix-arm-kcfi-build-error-v1-2-ec57221153ae@kernel.org>
 <CABCJKuesdSH2xhm_NZOjxHWpt5M866EL_RUBdQNZ54ov7ObH-Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CABCJKuesdSH2xhm_NZOjxHWpt5M866EL_RUBdQNZ54ov7ObH-Q@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1761598752;
 bh=yprLLzu/23+hltQ8hDoRSGSE9VYBXZzoi6lRcgP6GUU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=b1yBFjqe7L7wiSakMaFxsykOaqlqtoXS31LKAHj3epXm3lgg8XIkT42EhxqZMwgO3
 YE7454XpIAkuPSYsGIFN/QE3es/tu2qd9U+QkuR3owshZPsToFp83dDaCtkCVgoRzO
 35KmyTDhGtTE2j+vKr6oONd4rMigXy3t7Mz/aWAaFUSWnkXbr3O2K/CfP3fGUjZjVR
 ocs11llI7nRErN6nMomsXTtegUW8LQSEQwpUWBFap/NFEJuaM5hZR/g+S8dZg0YoP4
 kMd/jISG6W4xXr1WRJwsmFiTwkZDgYkTmhOkqHuSDGeAngmyCunnKdLx+yPfkVqrjL
 S34035HO3C3Gw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=b1yBFjqe
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

Hi Sami,

On Mon, Oct 27, 2025 at 08:53:49AM -0700, Sami Tolvanen wrote:
> Instead of working around issues with the generic pass, would it make
> more sense to just disable arm32 CFI with older Clang versions
> entirely? Linus, any thoughts?

That would certainly get to the heart of the problem. I have no real
strong opinion about keeping these older versions working, especially
since we have no idea how many people are actively using CONFIG_CFI on
ARM. I will say that this particular issue is rather exceptional (i.e.,
I don't know how often this would really come up in the future) because
this code is relying on the fact that these indirect calls will be made
direct by the compiler and checking for it, which does not seem like it
would be really common in the kernel otherwise. We would likely have to
forbid future use of the generic pass as well.

Cheers,
Nathan
