Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4905C92A30F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jul 2024 14:42:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DF8E880E92;
	Mon,  8 Jul 2024 12:42:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WI7G4bN0Y2kW; Mon,  8 Jul 2024 12:42:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 449DF80D75
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720442539;
	bh=3sOf1UsJJ2Kmk1Jaejg58MQKHh1GKWSKRvEPgD6iJpk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PkdMB2holubZjl5aIqTUTaWnZiQxrUbibNq7FpBXeS4c/yaLhefP+YtmWBoMLxqVg
	 NzxCm7eluIfi+rNfMgsqymnCPxAvEOXAup7eCoC0tTznkn4s7nWmNWXz521ozDWoyR
	 RF95dPqOPC8Gn3Ew2nDZWpp2iR9d+5a7IatnLPMyrR4/FpTD6auD2OZHoi2oOlrNJf
	 nIxOfiNuZyv2DzNcFfINEB8x0dvT4xDEa7K1M0iypY5bQJegZY43cq1hVI1wI1qFfY
	 chLkw2CE2F475JXCRYHdhSTGQKSqslpiCigTahkBaVS1MvnUoVslEuHnkn/TxHkAml
	 4grKvybNchVLA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 449DF80D75;
	Mon,  8 Jul 2024 12:42:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A69681BF97C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 12:42:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9E52E403C5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 12:42:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id brrogMwCXb9v for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jul 2024 12:42:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9C11B403C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C11B403C0
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9C11B403C0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 12:42:16 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 25728CE0A13;
 Mon,  8 Jul 2024 12:42:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95773C116B1;
 Mon,  8 Jul 2024 12:42:10 +0000 (UTC)
Date: Mon, 8 Jul 2024 13:42:08 +0100
From: Simon Horman <horms@kernel.org>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <20240708124208.GR1481495@kernel.org>
References: <20240703125922.5625-1-mateusz.polchlopek@intel.com>
 <20240703125922.5625-6-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240703125922.5625-6-mateusz.polchlopek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1720442533;
 bh=Wgz2uiozIHIDH/yHMDfCgHBZnNB235P31/pFr0zACA0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cZTC58eJTG5w0XOOVhkJy7mBcuMU6EYZG9YhXGUNQBXqx97UC3+yjtIjpXw+ZuQTv
 OP2I3gNG/Vwg/jzSYbSwypAi/FjJ+smFk9TFXH53wWGFzPrK8KdfqK1et8meDspoKy
 ByMvAYTlt3GHHH1JBM4m5AG8zfC8ppv7BAjL7CtagOvdVnh3aGQoRiaW9O8YTowxpR
 js/WG0mINjjVPiTWKanJ1FmQmoo6L+dKQMJFQ7ofQki7DKm4/vqxV1oFG8nS1cKpO4
 uO3RxvNZUew/uzxecZhG/OAV+uckl8Nc+KQW6aAFP+cXH4s0J4yrnMkVXwtNZZHo/K
 QBrUiKaOjSiJw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=cZTC58eJ
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 5/6] ice: Add MDD logging
 via devlink health
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
Cc: willemb@google.com, Wojciech Drewek <wojciech.drewek@intel.com>,
 Ben Shelton <benjamin.h.shelton@intel.com>, dwaipayanray1@gmail.com,
 linux-kernel@vger.kernel.org, Igor Bagnucki <igor.bagnucki@intel.com>,
 joe@perches.com, edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, apw@canonical.com, lukas.bulwahn@gmail.com,
 akpm@linux-foundation.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jul 03, 2024 at 08:59:21AM -0400, Mateusz Polchlopek wrote:
> From: Ben Shelton <benjamin.h.shelton@intel.com>
> 
> Add a devlink health reporter for MDD events. The 'dump' handler will
> return the information captured in each call to ice_handle_mdd_event().
> A device reset (CORER/PFR) will put the reporter back in healthy state.
> 
> Signed-off-by: Ben Shelton <benjamin.h.shelton@intel.com>
> Co-developed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

