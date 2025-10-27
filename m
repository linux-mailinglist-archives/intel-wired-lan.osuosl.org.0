Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 47520C11721
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Oct 2025 21:54:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C2FEB83CCE;
	Mon, 27 Oct 2025 20:54:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9BOoHw9ChEJh; Mon, 27 Oct 2025 20:54:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8EE3183CC5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761598459;
	bh=0LOIk4XAej1gR4QcJU4+DlomoMUz/xZxsuIi12Hlnlo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YkrnCO+nG5UMY5PZ3O/H9bZqfvqFquG/0rfnExayo52gWcQVz+qMlBeWxWpK3zcBK
	 mHJdA6R+kwMMLqHgTnjW/Ie5P+tthv9gar1ZTOrmce1UGLgis0+OBGXqcnMtyjiJUI
	 5wemMz9rnuTPnVcmZjvKh4ljg+ZLfZQFIeISJnA9niyqajSWU4ioH+d8Sdt2AjHsRb
	 mX7PHNUvIrUgyOQUc8aU8JxKkbARNpMm8cPY4eWh93AZGpA9W8mbMOTzQNGsEE8fkP
	 37jBDG2/3JK3pWTvcU6e41Ur8Vh1ZHnMtc/m9FzXwFPygmU8K5HTAiqLpj0YF0ZCFZ
	 DRbBEQUzU+TLA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8EE3183CC5;
	Mon, 27 Oct 2025 20:54:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 46B6870B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 20:54:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3712341583
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 20:54:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D-l_GN7Kwq9L for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Oct 2025 20:54:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=nathan@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8B34C4157E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8B34C4157E
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8B34C4157E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 20:54:17 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 7892A6149B;
 Mon, 27 Oct 2025 20:54:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7267AC4CEF1;
 Mon, 27 Oct 2025 20:54:12 +0000 (UTC)
Date: Mon, 27 Oct 2025 13:54:09 -0700
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
Message-ID: <20251027205409.GB3183341@ax162>
References: <20251025-idpf-fix-arm-kcfi-build-error-v1-0-ec57221153ae@kernel.org>
 <20251025-idpf-fix-arm-kcfi-build-error-v1-3-ec57221153ae@kernel.org>
 <dfc94b21-0baa-4b1f-9261-725d8d5c66f0@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dfc94b21-0baa-4b1f-9261-725d8d5c66f0@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1761598456;
 bh=uUiV7M0JZyX2CSv7f9ahj+RSKvrXNw1GjFMW/sbepkE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Bv7swv2Vy5HIoJj0IeNA/HUdm/7Tvm2TPzj5ffzqBQn3VCjiHehnp7EgYx1tQdL8X
 Olr8Fit+1wuR5JT133eEO/hhTStqcqSeHC7xw2a3lTxD3sOPImFYH1HKDOXDAMADnX
 04PqLJ88APKr4lZvK751n8qXcjcrMn7qiIyLND547vY+Uo93h11HmKeLYLQ6EX1ToO
 7rm9tcb2dXSaOzzQ7rp51psaIbb/s6Fu2plViBCz1TLY5UPApAy/Hckld7+r+Mtgz/
 2kzXgT7y0UTuneT84Wpk5n67Bees6h1/OkHwzR+WOECr978M5Y3PmdUK2NN6Vm3lHA
 juAb69oS+a4Fw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Bv7swv2V
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

On Mon, Oct 27, 2025 at 03:59:51PM +0100, Alexander Lobakin wrote:
> Hmmm,
> 
> For this patch:
> 
> Acked-by: Alexander Lobakin <aleksander.lobakin@intel.com>

Thanks a lot for taking a look, even if it seems like we might not
actually go the route of working around this.

> However,
> 
> The XSk metadata infra in the kernel relies on that when we call
> xsk_tx_metadata_request(), we pass a static const struct with our
> callbacks and then the compiler makes all these calls direct.
> This is not limited to libeth (although I realize that it triggered
> this build failure due to the way how I pass these callbacks), every
> driver which implements XSk Tx metadata and calls
> xsk_tx_metadata_request() relies on that these calls will be direct,
> otherwise there'll be such performance penalty that is unacceptable
> for XSk speeds.

Hmmmm, I am not really sure how you could guarantee that these calls are
turned direct from indirect aside from placing compile time assertions
around like this... when you say "there'll be such performance penalty
that is unacceptable for XSk speeds", does that mean that everything
will function correctly but slower than expected or does the lack of
proper speed result in functionality degredation?

> Maybe xsk_tx_metadata_request() should be __nocfi as well? Or all
> the callers of it?

I would only expect __nocfi_generic to be useful for avoiding a problem
such as this. __nocfi would be too big of a hammer because it would
cause definite problems if these calls were emitted as indirect ones, as
they would not have the CFI setup on the caller side, resulting in
problems that are now flagged by commit 894af4a1cde6 ("objtool: Validate
kCFI calls") in mainline. It sounds like it could be useful on
xsk_tx_metadata_request() if we decide to further pursue this series but
given we could just bump the version of LLVM necessary for CONFIG_CFI on
ARM, we may just go that route.

Cheers,
Nathan
