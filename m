Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE24ABC3C2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 May 2025 18:05:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8AB0640E31;
	Mon, 19 May 2025 16:05:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MO44z26ScLqw; Mon, 19 May 2025 16:05:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CEED440E19
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747670755;
	bh=B1WY3JmKd7V4W2JJJI2sqqdTzzYtt6unlZJjc87n19A=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wLEGPElE79eNqa+csK3sudiAGwsnG3CUPtRFZQZVpT+F2sjot5qD1wkobHy8WPNEb
	 7mXoNULVyE4gHvMafPKJgiznM3b5lZNxg/H7dISlBOW5UvCp9/FNGTDfG/ruBP/b/B
	 wdrQg7n+P/BjZKZqD2/j+YBcyz+FQgg0gh4zs9fdN6sPzEpbtts89Ygi8X/SYRg77t
	 OpG32s4D9iogEkad7pUzFw9zmcEk+yGgrx+QBYopV4J9Uz19wv/NKB/XVKJrJ81wtw
	 v1nY01kCe4Fa1tOGPwZrcc+zxpUXvjuEl81G91FCm4lJNFrA8uXvv9a2XsG4WinWMW
	 KjOjMSGA2NglA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CEED440E19;
	Mon, 19 May 2025 16:05:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D34CE193
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 16:05:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B954681E3F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 16:05:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AfWe01JWC0Cm for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 May 2025 16:05:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1E8F080E6D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E8F080E6D
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1E8F080E6D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 16:05:52 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 86E6B44B8E;
 Mon, 19 May 2025 16:05:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46B02C4CEE4;
 Mon, 19 May 2025 16:05:51 +0000 (UTC)
Date: Mon, 19 May 2025 17:05:49 +0100
From: Simon Horman <horms@kernel.org>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20250519160549.GK365796@horms.kernel.org>
References: <20250516130907.3503623-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250516130907.3503623-1-grzegorz.nitka@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747670752;
 bh=Rm3KTeILiUDBIswH6YVbkOFEww5Wgl0ZpJZ/oj5TAEs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qXeDQVafH+3dQwLmPUalQfD9ZIoGeTiNff0Mr8MRV9cdM1cdXQkPEm9qhiEhdkApb
 BeeR7MPOhYoyQUnhcCxg8VIt+9tiBizsvfVCF/wx8mREUiQWFIntsKEUBaueT81G05
 jsdo5I7zAWX7aLuSYx9MbAZ2eEodiT0tw8je3ZVrvd+bYPjf89DOvYVXa/id1HhExM
 riK77jcZf6zAz8me1BfLXxmfdXa19Ed4sXuixvTvpoQpMT7gBjuPu7nCF7nqRMS1CW
 sMI2CnNmE3ue4WTW7U553HiV4Vg6CC5QxVPX4GU7/tCk3b9PiDu0HleAFr9yBO28yy
 4IawXJFKSWuGQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=qXeDQVaf
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix eswitch code
 memory leak in reset scenario
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

On Fri, May 16, 2025 at 03:09:07PM +0200, Grzegorz Nitka wrote:
> Add simple eswitch mode checker in attaching VF procedure and allocate
> required port representor memory structures only in switchdev mode.
> The reset flows triggers VF (if present) detach/attach procedure.
> It might involve VF port representor(s) re-creation if the device is
> configured is switchdev mode (not legacy one).
> The memory was blindly allocated in current implementation,
> regardless of the mode and not freed if in legacy mode.
> 
> Kmemeleak trace:
> unreferenced object (percpu) 0x7e3bce5b888458 (size 40):
>   comm "bash", pid 1784, jiffies 4295743894
>   hex dump (first 32 bytes on cpu 45):
>     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
>     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
>   backtrace (crc 0):
>     pcpu_alloc_noprof+0x4c4/0x7c0
>     ice_repr_create+0x66/0x130 [ice]
>     ice_repr_create_vf+0x22/0x70 [ice]
>     ice_eswitch_attach_vf+0x1b/0xa0 [ice]
>     ice_reset_all_vfs+0x1dd/0x2f0 [ice]
>     ice_pci_err_resume+0x3b/0xb0 [ice]
>     pci_reset_function+0x8f/0x120
>     reset_store+0x56/0xa0
>     kernfs_fop_write_iter+0x120/0x1b0
>     vfs_write+0x31c/0x430
>     ksys_write+0x61/0xd0
>     do_syscall_64+0x5b/0x180
>     entry_SYSCALL_64_after_hwframe+0x76/0x7e
> 
> Testing hints (ethX is PF netdev):
> - create at least one VF
>     echo 1 > /sys/class/net/ethX/device/sriov_numvfs
> - trigger the reset
>     echo 1 > /sys/class/net/ethX/device/reset
> 
> Fixes: 415db8399d06 ("ice: make representor code generic")
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> 
> v1->v2: rebase, adding netdev mailing list

Reviewed-by: Simon Horman <horms@kernel.org>

