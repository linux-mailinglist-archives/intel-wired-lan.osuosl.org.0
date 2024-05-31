Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E3D8D68F5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 May 2024 20:26:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 73BB242440;
	Fri, 31 May 2024 18:25:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Elpzw3SVQCW3; Fri, 31 May 2024 18:25:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8A9DC42431
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717179957;
	bh=mxoHhKc5yVqF5aLf2lCxuRlfSLgcWWZ4iiTVCViy8gc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=o9SGYojAyWXPJxGlJIj8d1S97cQyUr9bFFoWdSI7Rx+IDV9zA1EyvtQDo9EcJrwJY
	 Om1O2y8lQ9Xl4sGBEhYH8z5bO7nx8EZPTa+RbVFzKZYTwspMTUNVtdxN+J75r5HsNk
	 m+muaiQkOTjTjOky2MVXtT1nA3q12ClLX/VOdZApZ+ZHf6pxN7BfOwmr+awpjjgqyt
	 wjSDL/BBRAWC2OjHlbIoCj3+ghJfzRZJyemsHd/IE3oOyah1BbLQTUK5WCorWV5KsF
	 eKEI4XRnuSWSW7rqO62RRQxyA6KbU4wCklvDJkQ7JR7juPrDOf/a4qlDD9NdXWdIlw
	 MUXGm2aMfiDog==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A9DC42431;
	Fri, 31 May 2024 18:25:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1D0BD1D560A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 18:25:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 087158468E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 18:25:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mfbayjvN4c6A for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 May 2024 18:25:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EAA358468C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EAA358468C
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EAA358468C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 18:25:53 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 3362462A12;
 Fri, 31 May 2024 18:25:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93422C116B1;
 Fri, 31 May 2024 18:25:51 +0000 (UTC)
Date: Fri, 31 May 2024 19:25:49 +0100
From: Simon Horman <horms@kernel.org>
To: Michal Kubiak <michal.kubiak@intel.com>
Message-ID: <20240531182549.GR491852@kernel.org>
References: <20240516164108.1482192-1-michal.kubiak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240516164108.1482192-1-michal.kubiak@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717179952;
 bh=gw2JcXterCcKSVJS6tZdEZSTY3FbDxSWvpTUL/n5XmM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Kh3Ckn1aB1aX9w7X2x4+IFjKMsWvVkJIjAOPwPvQLsrAINfNJ2RDiiZOQa2GVPBa+
 atwIJlJKziUalAvb9X/q6yjwxcbqr1pPuhczZzo2SeFpuNoxgIjxIMQqxssTX7ssce
 3kp+c3OsM7EybjQ1dJb4W7N3h5IexVxJnKkxeuvPGIli82XZaEEsx5Na74KSHc/Jcc
 kRxvn5UUFYnr1egRwaPMdQ7I8+SuinQcPJtEKGYGfwmVnC5WNRVsrL4i1XS1fhS8TJ
 qivt5hlQj+n66U/OSS5vGgxp8BKQndbB127ngchWi55UMywBWvKHstEddx7HPOIaoM
 9eLVUUSyuyA2w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Kh3Ckn1a
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: Fix XDP program
 unloading while removing the driver
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, maciej.fijalkowski@intel.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, May 16, 2024 at 06:41:08PM +0200, Michal Kubiak wrote:
> The commit 6533e558c650 ("i40e: Fix reset path while removing
> the driver") introduced a new PF state "__I40E_IN_REMOVE" to block
> modifying the XDP program while the driver is being removed.
> Unfortunately, such a change is useful only if the ".ndo_bpf()"
> callback was called out of the rmmod context because unloading the
> existing XDP program is also a part of driver removing procedure.
> In other words, from the rmmod context the driver is expected to
> unload the XDP program without reporting any errors. Otherwise,
> the kernel warning with callstack is printed out to dmesg.
> 
> Example failing scenario:
>  1. Load the i40e driver.
>  2. Load the XDP program.
>  3. Unload the i40e driver (using "rmmod" command).
> 
> Fix this by improving checks in ".ndo_bpf()" to determine if that
> callback was called from the removing context and if the kernel
> wants to unload the XDP program. Allow for unloading the XDP program
> in such a case.
> 
> Fixes: 6533e558c650 ("i40e: Fix reset path while removing the driver")
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

