Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B8CC171B4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Oct 2025 23:01:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7482960B3E;
	Tue, 28 Oct 2025 22:01:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WQWnG8vlzYQ4; Tue, 28 Oct 2025 22:01:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5A8760B42
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761688875;
	bh=PXnh59nBcFWNlYT0v6PXDwQhFAtGG7ySSricjDezmZI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MK24/TKf+MMsGKpmdwAUUS5xKFNXJv4ebR5y02Xx3eQcv+sb6Cv2RefANL/AicrlH
	 Y9FFvXBw/3I2vgBefpH/s6xfj+2ihuwKCW01NfoPtZrrUUNMKGxp63UhCgayLpRxrM
	 QDjgsGwkY/c0xD2J3rvvQ2tncy/xNS2gBaACFREDpTSYsOXQr0gU4xZj6Xjtw0Clmi
	 PekpVe4TuhvyUZvSHzFIoE0Gi52qpR+ljAP2GVf0PXkD+9BVDMOiRxcII0buOOFJ/U
	 YA2lByWJsbN7BWmeIjLGcZZ9FxgWMojQENNAxZ6tQt0rNsBsNLvAOMhyyCQgB83eue
	 FwkHxKGAIbuvA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D5A8760B42;
	Tue, 28 Oct 2025 22:01:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8B41D707
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 22:01:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7D13381156
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 22:01:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dF0O_R75H-Sj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Oct 2025 22:01:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=nathan@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BED1581136
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BED1581136
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BED1581136
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 22:01:13 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 107EC603FE;
 Tue, 28 Oct 2025 22:01:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07A86C4CEE7;
 Tue, 28 Oct 2025 22:01:07 +0000 (UTC)
Date: Tue, 28 Oct 2025 15:01:05 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: Kees Cook <kees@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>,
 Sami Tolvanen <samitolvanen@google.com>,
 Russell King <linux@armlinux.org.uk>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 linux-kernel@vger.kernel.org, llvm@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Message-ID: <20251028220105.GC1548965@ax162>
References: <20251025-idpf-fix-arm-kcfi-build-error-v1-0-ec57221153ae@kernel.org>
 <20251025-idpf-fix-arm-kcfi-build-error-v1-3-ec57221153ae@kernel.org>
 <dfc94b21-0baa-4b1f-9261-725d8d5c66f0@intel.com>
 <20251027205409.GB3183341@ax162>
 <5eb7ba26-8ecb-4a39-b9ed-961fffe4aa97@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5eb7ba26-8ecb-4a39-b9ed-961fffe4aa97@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1761688871;
 bh=axkFG9sBBk92SZMcb2CWNRulpTDXD1Y8N5Mk/ScHrDk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QM0AKc5DCU3iBAaMAaoULokkQsILBOAEqZhala/2ILEwKDeRFwKfN9E2ZmXf+ClUt
 qWcVJfO6x6GOsDKqVD23u1SIhKoHzgputa6M4WzjV7S2YnOy3w7Hqpm8agAnf2zrxE
 PkcxM0zFoHY1EC4SD2JFlQdf+g8TlGXAdoWkv/H4AOiVt6MTmz+BGoOS4NSifJpcQW
 a2wcNWebFB+7QJJe/sZ5znEkG17uL8Rk3q7kCUs6WJ4VSaX27iCQbqKox/IToLeP+w
 T0gTgUj/FYKWhneLLpKO8ZHwhBA0ZBTBd/UxpvT2SnX727l2ky+QE0R0NecZyiUGez
 PEXDI4rQ41Heg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=QM0AKc5D
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

On Tue, Oct 28, 2025 at 05:29:30PM +0100, Alexander Lobakin wrote:
> From: Nathan Chancellor <nathan@kernel.org>
> Date: Mon, 27 Oct 2025 13:54:09 -0700
> 
> > On Mon, Oct 27, 2025 at 03:59:51PM +0100, Alexander Lobakin wrote:
> >> Hmmm,
> >>
> >> For this patch:
> >>
> >> Acked-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> > 
> > Thanks a lot for taking a look, even if it seems like we might not
> > actually go the route of working around this.
> > 
> >> However,
> >>
> >> The XSk metadata infra in the kernel relies on that when we call
> >> xsk_tx_metadata_request(), we pass a static const struct with our
> >> callbacks and then the compiler makes all these calls direct.
> >> This is not limited to libeth (although I realize that it triggered
> >> this build failure due to the way how I pass these callbacks), every
> >> driver which implements XSk Tx metadata and calls
> >> xsk_tx_metadata_request() relies on that these calls will be direct,
> >> otherwise there'll be such performance penalty that is unacceptable
> >> for XSk speeds.
> > 
> > Hmmmm, I am not really sure how you could guarantee that these calls are
> > turned direct from indirect aside from placing compile time assertions
> > around like this... when you say "there'll be such performance penalty
> 
> You mean in case of CFI or in general? Because currently on both GCC and
> Clang with both OPTIMIZE_FOR_{SIZE,SPEED} they get inlined in every driver.

I mean in general but obviously that sort of optimization is high value
for the compiler to perform so I would only expect it not to occur in
extreme cases like sanitizers being enabled; I would expect no issues
when using a backend CFI implementation

> > that is unacceptable for XSk speeds", does that mean that everything
> > will function correctly but slower than expected or does the lack of
> > proper speed result in functionality degredation?
> 
> Nothing would break, just work way slower than expected.
> xsk_tx_metadata_request() is called for each Tx packet (when Tx metadata
> is enabled). Average XSK Tx perf is ~35-40 Mpps (millions of packets per
> second), often [much] higher. Having an indirect call there would divide
> it by n.

Ah okay.

> >> Maybe xsk_tx_metadata_request() should be __nocfi as well? Or all
> >> the callers of it?
> > 
> > I would only expect __nocfi_generic to be useful for avoiding a problem
> > such as this. __nocfi would be too big of a hammer because it would
> 
> Yep, sorry, I actually meant __nocfi_generic...

I figured, just wanted to make sure! This series needs to go to mainline
sooner rather than later, so maybe xsk_tx_metadata_request() could pick
up __nocfi_generic as a future change to net-next since there is no
obvious breakage? 32-bit ARM is the only architecture affected by this
change since all other architectures that support kCFI have a backend
specific lowering and I am guessing very few people would actually
notice this problem in practice.

Thanks again for chiming in and taking a look!

Cheers,
Nathan
