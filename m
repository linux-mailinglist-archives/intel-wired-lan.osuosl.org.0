Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 772EFBC4C33
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Oct 2025 14:21:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3CE754054F;
	Wed,  8 Oct 2025 12:21:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nVrM0-1iluGb; Wed,  8 Oct 2025 12:21:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B027A40536
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759926070;
	bh=ORYvUE4tMh/ggRyCHrqvbesBm59MkM/N1hYd/LZgXUQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6wCkyWQSO1bH73UP88KVJWEFlQ1gwivlfGhh/NmLuX71l9CXZ7rsd/29sd97cWvFU
	 sViV9r4rbSdhIWZgwkKZV2MP/iC8Bxwmap9cOI/AYvrp/LFsxWjAktAk8oNv5CHDWw
	 tF3OI8jh3sqsXnOX31WNHQLTrIYXWpJY+bnpuws54hda1wPlp8DPIjntOJcdcGzIzU
	 Aycn5pEIL1sxPTA57JeeTB1NmpixRQbC4W0YFtMI1SOEk/6e0g3O6nFyhqy/ixUtPy
	 0ezu96HlcO3B5Kaa95IMVcf/xF9utOIjHXQye3+1qEg75PHhIg4Df++KRhHTJxLLtM
	 x5DE4yCF0UEog==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B027A40536;
	Wed,  8 Oct 2025 12:21:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 70254226
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Oct 2025 12:21:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6229B408B7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Oct 2025 12:21:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vHWOaiUdzafv for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Oct 2025 12:21:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EED84408A5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EED84408A5
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EED84408A5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Oct 2025 12:21:06 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 5007F61F96;
 Wed,  8 Oct 2025 12:21:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9A9FC4CEF4;
 Wed,  8 Oct 2025 12:21:03 +0000 (UTC)
Date: Wed, 8 Oct 2025 13:21:01 +0100
From: Simon Horman <horms@kernel.org>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Dan Nowlin <dan.nowlin@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20251008122101.GQ3060232@horms.kernel.org>
References: <20251008102853.1058695-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251008102853.1058695-1-grzegorz.nitka@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1759926065;
 bh=FX5RNl1lzqNqGngAP/VMyHZqqJPFd4CjDybomC/qQD0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LpqB4cHEzV3WxfqGZ7LfwhovKKvl94dtsby+Cm4kBdfmiXSDnfVM0F9jasnZT3kai
 7CbGvnoa7VdnCy590RYRz0I7xONNBPVtSYL2lWFuNoDGUxd8xvlEaLNEBcqrZCgmmG
 /xb2x1evyunFYDmlDj5ihkuQAvx1wHq5HHZCF8BR7G9BIYVUItmB+EBywNW3ysbR4F
 G31jIvx04EGk7YIM+wtQ4K5EeIofHex/CNJkSkVmXTimRGgw4zz1GvTI7FGW/D666D
 3Hkq7MW/98DzzvT9+mUFpvADQ1kIR67U4VXzYPPWkB7yQWYfGy/YScg0vuNJ7McEhd
 dxr37tvjsmE0g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=LpqB4cHE
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix usage of logical PF
 id
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

On Wed, Oct 08, 2025 at 12:28:53PM +0200, Grzegorz Nitka wrote:
> In some devices, the function numbers used are non-contiguous. For
> example, here is such configuration for E825 device:
> 
> root@/home/root# lspci -v | grep Eth
> 0a:00.0 Ethernet controller: Intel Corporation Ethernet Connection
> E825-C for backplane (rev 04)
> 0a:00.1 Ethernet controller: Intel Corporation Ethernet Connection
> E825-C for backplane (rev 04)
> 0a:00.4 Ethernet controller: Intel Corporation Ethernet Connection
> E825-C 10GbE (rev 04)
> 0a:00.5 Ethernet controller: Intel Corporation Ethernet Connection
> E825-C 10GbE (rev 04)
> 
> When distributing RSS and FDIR masks, which are global resources across
> the active devices, it is required to have a contiguous PF id, which can
> be described as a logical PF id. In the case above, function 0 would
> have a logical PF id of 0, function 1 would have a logical PF id
> of 1, and functions 4 and 5 would have a logical PF ids 2 and 3
> respectively.
> Using logical PF id can properly describe which slice of resources can
> be used by a particular PF.
> 
> The 'function id' to 'logical id' mapping has been introduced with the
> commit 015307754a19 ("ice: Support VF queue rate limit and quanta size
> configuration"). However, the usage of 'logical_pf_id' field was
> unintentionally skipped for profile mask configuration.
> Fix it by using 'logical_pf_id' instead of 'pf_id' value when configuring
> masks.
> 
> Without that patch, wrong indexes, i.e. out of range for given PF, can
> be used while configuring resources masks, which might lead to memory
> corruption and undefined driver behavior.
> The call trace below is one of the examples of such error:
> 
> [  +0.000008] WARNING: CPU: 39 PID: 3830 at drivers/base/devres.c:1095
> devm_kfree+0x70/0xa0
> [  +0.000002] RIP: 0010:devm_kfree+0x70/0xa0
> [  +0.000001] Call Trace:
> [  +0.000002]  <TASK>
> [  +0.000002]  ice_free_hw_tbls+0x183/0x710 [ice]
> [  +0.000106]  ice_deinit_hw+0x67/0x90 [ice]
> [  +0.000091]  ice_deinit+0x20d/0x2f0 [ice]
> [  +0.000076]  ice_remove+0x1fa/0x6a0 [ice]
> [  +0.000075]  pci_device_remove+0xa7/0x1d0
> [  +0.000010]  device_release_driver_internal+0x365/0x530
> [  +0.000006]  driver_detach+0xbb/0x170
> [  +0.000003]  bus_remove_driver+0x117/0x290
> [  +0.000007]  pci_unregister_driver+0x26/0x250
> 
> Fixes: 015307754a19 ("ice: Support VF queue rate limit and quanta size configuration")
> Suggested-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

