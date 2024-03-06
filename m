Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 717EC874399
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Mar 2024 00:14:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8315C4194C;
	Wed,  6 Mar 2024 23:14:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 56ziQ8zx-GYL; Wed,  6 Mar 2024 23:14:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B545341959
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709766856;
	bh=nqN9d1SZwjogGdh1y89JRQPa7/sYAUpKeJUYJg3fXB0=;
	h=Date:From:To:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=5C2LTBaA61Gf6JaFs3RMqU+/J1A7crfpZvFVsjB22TRI1STfU4GuAskvATYfvzJCR
	 37TfwHIrlk8f0iJSLU+KGQUHVEUpVRd+qNuLAuxcxvyRAr7zUZRWMs84vSHrOC/9ES
	 CHthAiovNTxlHnjWDp1utExTrcqOXDVdk1oC3rA1Glg2klr107XRPHJ6q/6EhCWu5Y
	 h1cGOU8h1Z1uUuD7PgPwxWvgzMsTGIJmB2CXlyx3tfm5jgasrgMH5J/3+dU3yobNwc
	 ohPZlMMxYg9v/1rK7ZJBQdEc1SzEx+SVaTvddqWNw7Tm+ElG58QrXegGGi0vFDRzVG
	 exSjDod6bTgLg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B545341959;
	Wed,  6 Mar 2024 23:14:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 692601BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 23:14:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 512D481F2A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 23:14:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a_kle3MbGIUY for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Mar 2024 23:14:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=helgaas@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8675082070
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8675082070
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8675082070
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 23:14:13 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 3BF2161B65;
 Wed,  6 Mar 2024 23:14:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 946E7C433F1;
 Wed,  6 Mar 2024 23:14:11 +0000 (UTC)
Date: Wed, 6 Mar 2024 17:14:10 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20240306231410.GA589078@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240306025023.800029-2-jesse.brandeburg@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1709766851;
 bh=POAJKR3OgJRYcpnuB29BhFD8tDhA1gO7avSXC5ZFZo8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=gAGNxjzkBgoTuFJZZjrry49jgFA52cv//m3W0iJRf2NcU1JLxAdQQfzHbJey8mtaC
 9swkBXyRf+0WUGWwNdQFYPwyTNXQYKO/ljriAbJ4+5jM7FRs50lmdsQmFRAWGIoHpI
 kB9ohfSH0GfyLzvGpYXjgXY8h/5znnSBcsA57sAwbe30jvRfBxMDXWP5BVquDaNZvm
 S4w8B8qXCYKc/EIOWmcEl753s9AkS3uY6XGJohpaHD2UyKrpLmpyffAgMgFONeP+I8
 Y2fEB9ldF/ITz5baySKp36Ek63C3S7FFs9O5XV+u1P1bo9voEvuhbl5drEqaIcFdTE
 9gSde6IGEjtvg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=gAGNxjzk
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/2] igb: simplify pci ops
 declaration
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org,
 Paul Cercueil <paul@crapouillou.net>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Alan Brady <alan.brady@intel.com>,
 horms@kernel.org, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

[+cc Paul for __maybe_unused cleanup]

On Tue, Mar 05, 2024 at 06:50:21PM -0800, Jesse Brandeburg wrote:
> The igb driver was pre-declaring tons of functions just so that it could
> have an early declaration of the pci_driver struct.
> 
> Delete a bunch of the declarations and move the struct to the bottom of the
> file, after all the functions are declared.

Nice fix, that was always annoying.

Seems like there's an opportunity to drop some of the __maybe_unused
annotations:

  static int __maybe_unused igb_suspend(struct device *dev)

after 1a3c7bb08826 ("PM: core: Add new *_PM_OPS macros, deprecate old ones").

I don't know if SET_RUNTIME_PM_OPS() makes __maybe_unused unnecessary
or not.

> +#ifdef CONFIG_PM
> +static const struct dev_pm_ops igb_pm_ops = {
> +	SET_SYSTEM_SLEEP_PM_OPS(igb_suspend, igb_resume)
> +	SET_RUNTIME_PM_OPS(igb_runtime_suspend, igb_runtime_resume,
> +			   igb_runtime_idle)
> +};
> +#endif
> +
> +static struct pci_driver igb_driver = {
> +	.name     = igb_driver_name,
> +	.id_table = igb_pci_tbl,
> +	.probe    = igb_probe,
> +	.remove   = igb_remove,
> +#ifdef CONFIG_PM
> +	.driver.pm = &igb_pm_ops,
> +#endif
> +	.shutdown = igb_shutdown,
> +	.sriov_configure = igb_pci_sriov_configure,
> +	.err_handler = &igb_err_handler
> +};
> +
>  /* igb_main.c */
> -- 
> 2.39.3
> 
