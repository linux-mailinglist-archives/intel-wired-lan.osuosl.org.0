Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 214BD9AE90F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Oct 2024 16:39:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5620560AA7;
	Thu, 24 Oct 2024 14:39:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Iac4rISSpztm; Thu, 24 Oct 2024 14:39:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B732260AA0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729780787;
	bh=R7YUg5IXc6E6Yt85dLT51WZzOJkIV0WWyOYx4gztMsQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lGvyyrlRAS79l5UhyY5+0PoMDU8fLnqH8H5hsYuq+r50CjFikAWs6GmDkK3ug4lSj
	 YtrOpdtT542zIoEFHHbbsgFvA80ynb7TahgGWoGyAhyVDDRMrw5dW5jozqvj424eqN
	 cJ1RHPbKzhmEOJ7prqHIOl5epyUifDtIV0nWe4SV3QUK7ioigMdcOAJqgjENXad0Dg
	 4w7YHKhTXUwch2Sa44nB6XcnlCkk87Auj9sq5MtrlHTnR7dNNJQHBQ3UCOtPh8Yjd9
	 oQ+CqOpYTte49i/4KJgHCYMKJLNAEgI6nqhlLQiN+5r0IngnpYl2+VVW8PjCMRqHgh
	 y+Vs7bOU+N8Ag==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B732260AA0;
	Thu, 24 Oct 2024 14:39:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 78BA45A5A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 14:39:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4434281491
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 14:39:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3zEcjjxJdmxv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Oct 2024 14:39:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A51868083B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A51868083B
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A51868083B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 14:39:44 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id E840CA414F9;
 Thu, 24 Oct 2024 14:39:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B91EEC4CEC7;
 Thu, 24 Oct 2024 14:39:41 +0000 (UTC)
Date: Thu, 24 Oct 2024 15:39:39 +0100
From: Simon Horman <horms@kernel.org>
To: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 stable@vger.kernel.org, Tarun K Singh <tarun.k.singh@intel.com>
Message-ID: <20241024143939.GQ1202098@kernel.org>
References: <20241022173527.87972-1-pavan.kumar.linga@intel.com>
 <20241022173527.87972-3-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241022173527.87972-3-pavan.kumar.linga@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1729780782;
 bh=j7R7q/n1DGRJwGT/TXFXwmZAbDEB6EUvmAjBQm7Nx6s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Tos/w7CxlYFcGag7h2b3k8RKWpM4Hz+vbcPW6zd94dK2EM7zuI7TZQJf9Nh7uwrtV
 oMknMJ5wJXS64s73pcdxC2H3kUczbjgudI2JR9bw5o7IlNkqmgJ+EU9restFtTBQwH
 RAiw2022PlE0qH1Mduq5TvPJuldOxzuCJfx5L0PrQam/03YvYyBl7HxKwG1oII1I0F
 64bHtdsLbymYCNTn+q4Zs/ZmYe4qeSDrF/PVKdrHL1JvtFjIYhvLKWhU7OANh0rpj9
 hR9RqISWgDgGASa2TFVFrgyiKFfwI9ltvuAX5DUG6taf1DBiV0BjRuuLVQ2fbk+od8
 Xf9f19zJaS0lw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Tos/w7Cx
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] idpf: fix
 idpf_vc_core_init error path
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

On Tue, Oct 22, 2024 at 10:35:27AM -0700, Pavan Kumar Linga wrote:
> In an event where the platform running the device control plane
> is rebooted, reset is detected on the driver. It releases
> all the resources and waits for the reset to complete. Once the
> reset is done, it tries to build the resources back. At this
> time if the device control plane is not yet started, then
> the driver timeouts on the virtchnl message and retries to
> establish the mailbox again.
> 
> In the retry flow, mailbox is deinitialized but the mailbox
> workqueue is still alive and polling for the mailbox message.
> This results in accessing the released control queue leading to
> null-ptr-deref. Fix it by unrolling the work queue cancellation
> and mailbox deinitialization in the order which they got
> initialized.
> 
> Also remove the redundant scheduling of the mailbox task in
> idpf_vc_core_init.

I think it might be better to move this last change into a separate patch
targeted at iwl rather than iwl-net. It isn't a fix, right?

> 
> Fixes: 4930fbf419a7 ("idpf: add core init and interrupt request")
> Fixes: 34c21fa894a1 ("idpf: implement virtchnl transaction manager")
> Cc: stable@vger.kernel.org # 6.9+
> Reviewed-by: Tarun K Singh <tarun.k.singh@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>

...
