Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C9DA43A3B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Feb 2025 10:50:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5582D40BA8;
	Tue, 25 Feb 2025 09:50:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KKJWmEpj8yZB; Tue, 25 Feb 2025 09:50:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 64631409C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740477030;
	bh=5ZwTgCC9q4pnIeNGZsDpdW971+igWAgGvznoMqPwOkg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XJzQyEWzxnA6797ly2YA40pgTLRc3m+an4zj15+GQyMXeMDn0a0XK7uqDeCL6UxHZ
	 5HeSH54h1D+hCKRMW3NwhU4wj3xRv3Ry1i1yeAfAyWy07pm9+qAevrIeGqAnB9CsgF
	 iU9QTmQ0+4mDw4BypFVZ6BHu7qWoiboTmDI0rGJRji2pc8TT3VlbfxKxrkbaXHol4K
	 REgXeuqIBJp+6rxG3xb7fwOlp6fopqpiinD3gSpUaCoF7RAay0rLl9NSAdX1xu59oP
	 nFI1KdSaQ4X9fRZpsPWxKobzE97CnDrnUv9P0C01wRynrWBbg2HSMxuAbD5w5QEzXG
	 vniNb1CuYe5ww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 64631409C2;
	Tue, 25 Feb 2025 09:50:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id F11622292
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 09:50:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D234040979
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 09:50:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9K_TRPOKDqR0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Feb 2025 09:50:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1790F4094A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1790F4094A
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1790F4094A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 09:50:26 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 02ADE61194;
 Tue, 25 Feb 2025 09:50:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB4D1C4CEDD;
 Tue, 25 Feb 2025 09:50:23 +0000 (UTC)
Date: Tue, 25 Feb 2025 09:50:21 +0000
From: Simon Horman <horms@kernel.org>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Milena Olech <milena.olech@intel.com>
Message-ID: <20250225095021.GK1615191@kernel.org>
References: <20250221093949.2436728-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250221093949.2436728-1-grzegorz.nitka@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1740477025;
 bh=R9IAsn/L53EggdKqXzsabdBav6X8XQ4XTacPu2ZXr9g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Z7anxuj4xZR8gLYCKAqx5HjW6bptcnV+1b79c18Du6SwFwrk0MTHQmu70Pifdo4/q
 lNnguyOL/DUbsZV8t2XuP6oWvI86FIo/FDJe2Rv5p7JCGob9aeXScX4K24iUqfLcvE
 y4L10vND3+t9rQH71q4bpStkOJjMkPO0WWd+mmiIsUMeyWn7jtWsPvU/WDwKajtvf7
 MdqTMG72Rk/fTfTI0/wNGeICp+FC6QBorHHJogHrAhnwJUSNHl5xPkvwQ2cCQa7526
 kBYvzfOrB5xh1CtCxPB01GrcMoGcvWJ8hSRWGK9iBWLViAXQ+nqQ71sHE53IxWCgL6
 AK6k/XP9lm72g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Z7anxuj4
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix lane number
 calculation
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

On Fri, Feb 21, 2025 at 10:39:49AM +0100, Grzegorz Nitka wrote:
> E82X adapters do not have sequential IDs, lane number is PF ID.
> 
> Add check for ICE_MAC_GENERIC and skip checking port options.

This I see.

> 
> Also, adjust logical port number for specific E825 device with external
> PHY support (PCI device id 0x579F). For this particular device,
> with 2x25G (PHY0) and 2x10G (PHY1) port configuration, modification of
> pf_id -> lane_number mapping is required. PF IDs on the 2nd PHY start
> from 4 in such scenario. Otherwise, the lane number cannot be
> determined correctly, leading to PTP init errors during PF initialization.
> 
> Fixes: 258f5f9058159 ("ice: Add correct PHY lane assignment")
> Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Milena Olech <milena.olech@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

