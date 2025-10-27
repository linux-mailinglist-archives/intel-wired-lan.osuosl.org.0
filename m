Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 72CD8C11682
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Oct 2025 21:36:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B9DF78446D;
	Mon, 27 Oct 2025 20:36:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cQWh1OCGuwek; Mon, 27 Oct 2025 20:36:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 274BF8446E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761597402;
	bh=7vYNu/V+yB8ESbhKG+qhmi2rqh8DEHzZMx+plWdaAhk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zFce7elfif/ITGz1KaG35iNrz/kYuKDDX3fgBaUgSMT72P7LOOzOw2qyBJxvWQwXM
	 c8bquEL1v18Ahz57LpeKh+OD//UaVS0Stn1M1hNDR9GGCdY1y0fHADs6FL3yF6qwIU
	 GPlPOnilgbGfLwv9tJ+r9vLezGXVC2M8acvxYpWfxq+2UZsLpUa2F0VeE7x9Kk7pDr
	 3gu3O57W/DJjgrUciGVJEntPEL7YApRzw/d3HiB+iHNQyaWtdpHpF32WlZhOBX26LX
	 sWI4T9QeAZizQSHoPegt9Qh492I7/gQqcvHY9G0c4gRmCcExtlvkusfx1AWLINU/NI
	 k8ahxEfkL3Yrg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 274BF8446E;
	Mon, 27 Oct 2025 20:36:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id A9A48939
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 20:36:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8821740C04
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 20:36:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gRRT8TVPfwnb for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Oct 2025 20:36:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=nathan@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CD0B440AAF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD0B440AAF
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CD0B440AAF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 20:36:39 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id E21466059D;
 Mon, 27 Oct 2025 20:36:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57184C113D0;
 Mon, 27 Oct 2025 20:36:33 +0000 (UTC)
Date: Mon, 27 Oct 2025 13:36:30 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Kees Cook <kees@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Simon Horman <horms@kernel.org>,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>,
 Sami Tolvanen <samitolvanen@google.com>,
 Russell King <linux@armlinux.org.uk>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 linux-kernel@vger.kernel.org, llvm@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Message-ID: <20251027203630.GA3183341@ax162>
References: <20251025-idpf-fix-arm-kcfi-build-error-v1-0-ec57221153ae@kernel.org>
 <20251025-idpf-fix-arm-kcfi-build-error-v1-3-ec57221153ae@kernel.org>
 <fa4487d0-a077-4582-80aa-2deeccee6270@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fa4487d0-a077-4582-80aa-2deeccee6270@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1761597397;
 bh=7vYNu/V+yB8ESbhKG+qhmi2rqh8DEHzZMx+plWdaAhk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=D7dndVWKprOCSRBJDcOURDGTFrK7JuobTF+mTzjIHZk72c4FARzR4jiOUh37UXyUp
 /G1kAYzF29MRtsLosHiivhVYIUnVCPfYWzE8tUmrwxfizg8yY061hr7lAcWDNF42JY
 8yDvgvY4Qw/Mnf2dHilSANLgUvWmn+g4eRVLTD4C+8g83DRqj2QXyQd8a/mwpGhZ0z
 iWjcs7LSlcBGsu6BIyQWIBcKaq7SJc2pqvi5gzHCPAi5pKHDpbphrVZP0+thl9N3Si
 kcQ6g2jZ50aJLx0bC1jsEePTNV73o1C+SpRJ/2HGONCGVDnTjWtF6gmKZekOYJ7hJf
 cakXPLlCr953A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=D7dndVWK
Subject: Re: [Intel-wired-lan] [PATCH 3/3] libeth: xdp: Disable generic kCFI
 pass for libeth_xdp_tx_xmit_bulk()
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

Hi Przemek,

On Mon, Oct 27, 2025 at 12:09:47PM +0100, Przemek Kitszel wrote:
> sorry, but from regular driver developer perspective, just after reading
> your commit messages, I'm unable to tell what the fix is about, and from
> that follows a bigger issue: how to write code in the future to avoid
> such issues (it would be infeasible to always wait for a LLVM specialist
> to come up with a fix ;))

Sorry about that! To be fair, I am not sure most driver developers would
write something as subtle as this code to get themselves into a
situation where I or another LLVM person would need to come along to fix
it.

> was the tricky case to call __always_inline func from another that was
> marked the same? Would it be also the case if one of the functions would
> not be marked with __always_inline attribute, but still end up inlined?

No, I think the tricky case here is that the code depends on the
compiler being able to turn all these indirect calls, as the (*xmit)()
and (*prep)() parameters in libeth_xdp_tx_xmit_bulk(), into direct calls
through inlining. I find that depending on optimizations for correctness
(i.e., passing the assertion that the result of a equality test can be
proven true or false at compile time) is risky because it can result in
flexible but performant code but it is also sensitive to interactions
with other compiler internals and optimizations, resulting in changes
such as these.

> what would be the cost of the alternative naive solution, to always add
> __nocfi_generic to functions marked __always_inline?
> (technically you would redefine __always_inline to have also
> __nocfi_generic for the config combinations that require that)

No, you would not want to do this because if any indirect call remained
in the inlining chain, there would be no caller side CFI code generation
and that indirect call would automatically fail (if I understand
correctly), which is why commit 894af4a1cde6 ("objtool: Validate kCFI
calls") now validates this rule at compile time for x86_64 (which is not
affected by this issue since it does not use the generic LLVM kCFI pass
like ARM prior to 22.0.0 does).

> sorry for my ignorance of not reading any of the attached URLs

No worries, I am not sure how much more they would help with
understanding the problem, which is subtle. If I can clarify anything
further, please me know but I am not sure it will matter too much since
we will likely just forbid using the generic kCFI pass to avoid this
issue, rather than applying __nocfi_generic.

Cheers,
Nathan
