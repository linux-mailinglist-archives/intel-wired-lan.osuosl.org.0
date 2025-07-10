Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 72978AFFF24
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Jul 2025 12:25:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C8A28610AF;
	Thu, 10 Jul 2025 10:25:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iftHpbRAkH95; Thu, 10 Jul 2025 10:25:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ECBD261095
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752143127;
	bh=nXW8sF/Br1/Qw7nPChYf/1oqd4SsDx+vQrmyDzBrh9M=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=co//XxHlQQu9E8a+DLnqdjGwyhjVcSwsu7exNj5CwrbIpFeKzDYDdk/o9xXI9god/
	 aHY1Rcp4+bSB+hIHWIYsLB9XA44Nd3XuDjOpPp1oDVI/6cHUB3tpx/rWFrBrFEZJju
	 6BbiVqbo7oIPxkJTfnoumf0X/7ny28e8oqLq1ZjLt6KlBqwUQxE8Fmb32U/tTI7qF7
	 JKIxgjKYhJdPQ5Jb+U8UlfV5H/CWmI/327AF1bpe6tIZJ2svP7VYl1rjNestZIipSC
	 AhvZjNKvFN7I6o2hzT3JaH0Cdk2SRwrCogRnutgpDe6jojdTU2kGCSRYD/S9m/zpsT
	 W84Z0c03UznPg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id ECBD261095;
	Thu, 10 Jul 2025 10:25:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id B9B27114
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jul 2025 10:25:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9FC3F408E9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jul 2025 10:25:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NlnVERLarPvM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Jul 2025 10:25:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D76AE408C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D76AE408C8
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D76AE408C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jul 2025 10:25:23 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 34D2BA548FD;
 Thu, 10 Jul 2025 10:25:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5854C4CEE3;
 Thu, 10 Jul 2025 10:25:18 +0000 (UTC)
Date: Thu, 10 Jul 2025 11:25:16 +0100
From: Simon Horman <horms@kernel.org>
To: Markus =?utf-8?Q?Bl=C3=B6chl?= <markus@blochl.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 markus.bloechl@ipetronik.com, John Stultz <jstultz@google.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <20250710102516.GP721198@horms.kernel.org>
References: <20250709-e1000e_crossts-v2-1-2aae94384c59@blochl.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250709-e1000e_crossts-v2-1-2aae94384c59@blochl.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1752143121;
 bh=OTAGDJehumguZ7HzBQgsD4oSk+XeA3SFo2ualcXHoFw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LBtiq0V93Bn4LCgxW0oTzpvlEGWQj8N+TEn4YVJ4fdJDY749R5a5Xw2WCC2kCVG/l
 RjhNv6CwJWj37mSehFEdbwYoiuJf6cEprxkiJLQVm9rHTpSglVSj+TWjjFk20PsQ3u
 INwORcIC5HfgWfZ56/4gzFwPMvI7juiR2/H6rORFzZhdh0tJFZMv2ccARuJJFNAMre
 gRoGYcjWGG6PRwPxUOgNAvuFUQQuCK5c3YNLLdvY/fkgXy7WAczxihBrZYcbM8gCaf
 H6ryobFI2N7WAMGPJ4L0DjJM2Yr891hGcNPHhJp6wrFIRn4yI9ERabALC/vcGsOsjM
 uFOrV4+KumfTQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=LBtiq0V9
Subject: Re: [Intel-wired-lan] [PATCH v2] e1000e: Populate entire
 system_counterval_t in get_time_fn() callback
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

On Wed, Jul 09, 2025 at 07:28:07PM +0200, Markus Blöchl wrote:
> get_time_fn() callback implementations are expected to fill out the
> entire system_counterval_t struct as it may be initially uninitialized.
> 
> This broke with the removal of convert_art_to_tsc() helper functions
> which left use_nsecs uninitialized.
> 
> Assign the entire struct again.
> 
> Fixes: bd48b50be50a ("e1000e: Replace convert_art_to_tsc()")
> Cc: stable@vger.kernel.org
> Signed-off-by: Markus Blöchl <markus@blochl.de>
> ---
> Notes:
>     Related-To: <https://lore.kernel.org/lkml/txyrr26hxe3xpq3ebqb5ewkgvhvp7xalotaouwludjtjifnah2@7tmgczln4aoo/>
> 
> Changes in v2:
> - Add Lakshmi in Cc:
> - Add Signed-off-by: trailer which was lost in b4 workflow
> - Link to v1: https://lore.kernel.org/r/20250709-e1000e_crossts-v1-1-f8a80c792e4f@blochl.de

Reviewed-by: Simon Horman <horms@kernel.org>

