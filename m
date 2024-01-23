Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 331838395E4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jan 2024 18:07:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AC8B54048A;
	Tue, 23 Jan 2024 17:07:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AC8B54048A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706029661;
	bh=mzFunG/m5Xk8Rkt2IYd6rHZjb8+OZpPUGieytD2xXbs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=esva/nsuno3ynV84pJw+YfqM+UqMVQ6hCEYDGDrtZxQQLFdvWR+pb5XlmJqgZqWXT
	 G6WvvCznKBtZJzlxlHwgFNVxMzbhpyVxDMHlytJYv0XQiHFhctXybYqqp91Y8sEU2M
	 XIsu36TWwSmCpARL/z1pp6CY7wNyojtbQ1sFWZ40R1IZM3aKh7PIFPoUMucF87EJv/
	 KXZiwhas3AnOkjEZC2Nkv3YcZhrtLHQj77xHOMLCXmUkufZw7xV01d1PftTt8Z3LYz
	 I6z8aGerL+kbhpbU2XMwcRpaSc8hmzGJ52q3cv0TcvDUPcZJSBIfS3YWCB55T9+59p
	 qge+F1XqmUBYQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0TB_a2bSeLlV; Tue, 23 Jan 2024 17:07:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 715F240491;
	Tue, 23 Jan 2024 17:07:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 715F240491
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9DDA01BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 17:07:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7629A4191B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 17:07:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7629A4191B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f_E3o_4x_IYk for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jan 2024 17:07:34 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EA5E34191A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 17:07:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EA5E34191A
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 4373561C0A;
 Tue, 23 Jan 2024 17:07:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 855C1C433F1;
 Tue, 23 Jan 2024 17:07:31 +0000 (UTC)
Date: Tue, 23 Jan 2024 17:07:29 +0000
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240123170729.GM254773@kernel.org>
References: <20240123105131.2842935-1-karol.kolacinski@intel.com>
 <20240123105131.2842935-8-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240123105131.2842935-8-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1706029652;
 bh=y05+6U/j3fJ0ntOJAyCTQ2S/MJtrJuT/kbavnLl+T2Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nGJbio0OGdmtmKdgZlzUjT6+5cJlWI0WnZofCnh3QbgEV5jG2+GxWwD4G5OluOjfr
 gz2xjbYcUduAvxZ9heWCEmuz+Y9VmCfiXQ5DQpwD/wmLsdMBStVGJIuTuVZc2XDk/v
 kqt0Uxb1qL+HKBtULxPcWsSb9KV3zwcdkyE5chccvQWR5jPFD77cvdJ3wRYLiqoGk6
 k79TqXOBZ+kqYYm2S/MVTu/IL75CNUfwIPu9FUso/44Hsu0fk8mX284QSmbtofJMP2
 INt1Rg3d7b77o0VXJHKonJOzAYIFVHdnCrzxCRaBuvzjmYzzkiSHp35iDenodOlAvK
 5j3xgBZPCleDg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=nGJbio0O
Subject: Re: [Intel-wired-lan] [PATCH v7 iwl-next 7/7] ice: stop destroying
 and reinitalizing Tx tracker during reset
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 jesse.brandeburg@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jan 23, 2024 at 11:51:31AM +0100, Karol Kolacinski wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The ice driver currently attempts to destroy and re-initialize the Tx
> timestamp tracker during the reset flow. The release of the Tx tracker
> only happened during CORE reset or GLOBAL reset. The ice_ptp_rebuild()
> function always calls the ice_ptp_init_tx function which will allocate
> a new tracker data structure, resulting in memory leaks during PF reset.
> 
> Certainly the driver should not be allocating a new tracker without
> removing the old tracker data, as this results in a memory leak.
> Additionally, there's no reason to remove the tracker memory during a
> reset. Remove this logic from the reset and rebuild flow. Instead of
> releasing the Tx tracker, flush outstanding timestamps just before we
> reset the PHY timestamp block in ice_ptp_cfg_phy_interrupt().
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

