Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C75A0A4BB3D
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Mar 2025 10:54:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1010881A8E;
	Mon,  3 Mar 2025 09:54:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M3XctfA9AGHd; Mon,  3 Mar 2025 09:54:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6FAF3818A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740995654;
	bh=icdFmXVOuKG1LWZIixX9Ngewj2JAW4a5Y5os+23m3mg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=w7OszWY4DuInQUlj5zhWaE93LkWU6PxWxwCFScWxn2DdwgZSyw4NHMouFDOKMion/
	 d3W26LTveNuqo4y+P0GwalHxGi4jCA8XebmMpbJRpuAY8UmDcEVfsS+ZgrUR9+U/oo
	 Gjkm1jdjges9iCIEjRQA1doqv2TJiQaju8EVhnbSK4xyZ8+W40yP559Eq8lgVPzIXF
	 UIDWsRye633qt3oOpCbtc2txrDLIukJqHcSNEohMNrTUrGpwz6FIIoVrcSk8WJRn92
	 skpTccRQs9HOwCoLBNF2ySrc+lFmIH5SJt1xUs0lp7KNNWoyb+75XRhEhLqJfvRUd5
	 p8waUTDWfTbMg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6FAF3818A2;
	Mon,  3 Mar 2025 09:54:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 688E6D2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 09:54:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C025140A05
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 09:54:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TBeZ7fGqCH-l for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Mar 2025 09:54:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E04C2402F3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E04C2402F3
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E04C2402F3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 09:54:10 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id CF67F5C57C9;
 Mon,  3 Mar 2025 09:51:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BEAA4C4CEE4;
 Mon,  3 Mar 2025 09:54:07 +0000 (UTC)
Date: Mon, 3 Mar 2025 09:54:05 +0000
From: Simon Horman <horms@kernel.org>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20250303095405.GQ1615191@kernel.org>
References: <20250226113409.446325-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250226113409.446325-1-mateusz.polchlopek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1740995649;
 bh=c1Lvome+23UjOHK9xCkGg5jc+J3HRiu4lPiJ5XsX5+k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mJljErG/qqeholJw9y2TbK8znKFffbrWOEldE4B80HZmwVtHQZSPDMn68sHrPlGNq
 SxBai8slwoaFcRlVcEXoAwl4C+lkhJ6Yy6clS6U0ONmT39iI24IX2xg+ar7sa6s39Q
 eF6ghjIkV+wljcNjvaFjgUPRFuFqGBWZmW26HbEcrlqaAJr78fAOtbm9M0gVEV0/qj
 hQ81CoBrX5A5dJri6UUBEU77rMZL3e8HYInNv2glV1MWJtZCxgeiK4j9JRR+OutWns
 DzZcC6kvI85KkUcf66YVd0Awx4qxl8mYMDxN0zZwPuLcWknhmGQ7aoUbtFYw2WhOK0
 GlJeypV2H+GWA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=mJljErG/
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: refactor the Tx
 scheduler feature
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

On Wed, Feb 26, 2025 at 12:33:56PM +0100, Mateusz Polchlopek wrote:
> Embed ice_get_tx_topo_user_sel() inside the only caller:
> ice_devlink_tx_sched_layers_get().
> Instead of jump from the wrapper to the function that does "get" operation
> it does "get" itself.
> 
> Remove unnecessary comment and make usage of str_enabled_disabled()
> in ice_init_tx_topology().

Hi Mateusz,

These changes seem reasonable to me.
But I wonder if they could be motivated in the commit message.

What I mean is, the commit message explains what has been done.
But I think it should explain why it has been done.

> Suggested-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>

...
