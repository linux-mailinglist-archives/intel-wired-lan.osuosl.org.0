Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EF63090D064
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jun 2024 15:33:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1D03561222;
	Tue, 18 Jun 2024 13:33:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LYezE1fZ3E7U; Tue, 18 Jun 2024 13:33:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6CA7661079
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718717610;
	bh=iJ6Ykm/kYhyCZT21ejKzNBRvOF1gIP1y0gYvOZ308+g=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aQf4yIgMkF7ZVmM1paG3GE3TNPUL3raCYRGPsLwneN3Ia7WX0YwWnGqKFSeYUO4tX
	 BVWq3VGwpIeLMKga5p0SA3BmCm//WkD47aY7GNSffhQWf3xgFesOWoQyldQVpnw9Ah
	 5MGkiw9RqaDxQquefyesGGcmdm39DeYOyzoWB0OAqKggsbzc409aQ72I4GTdX1n+Ss
	 vHdcSXc5aqj+uk73nnxdkmWDZlRgZd0U5ynGY6Bav40dYYfnXv11c9N3hRv8P2LXLp
	 DQhwxa5kJcZ8giPZP1LCHuLJUjuc9UwGH4diHH8zgcKHDcALrLri9C1FtRX1GbvOiu
	 EC7KiP0JjoyEg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6CA7661079;
	Tue, 18 Jun 2024 13:33:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B5BAF1BF3BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 13:33:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A0DD140148
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 13:33:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 86cTIlUUu9YJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jun 2024 13:33:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BD07E42A9C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BD07E42A9C
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BD07E42A9C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 13:33:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 90379618E1;
 Tue, 18 Jun 2024 13:33:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F25CC3277B;
 Tue, 18 Jun 2024 13:33:23 +0000 (UTC)
Date: Tue, 18 Jun 2024 14:33:22 +0100
From: Simon Horman <horms@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20240618133322.GO8447@kernel.org>
References: <20240617132407.107292-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240617132407.107292-1-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1718717606;
 bh=JZuxPolsAuRkq/uBpCeDrZdRmxqz2tm0CZN2xEu8kkY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iMOK6oywWe2jFel/MCtr2voYqPZp1PbAfEkZPwnNz8U82L97ffeEgbK/X/3V5Nt7v
 NIOza4F1iQtjYocHeJOFJg6RFO0on6A4rAdVIJ54IbZc0/SsNlPZclVnA+CLtOk7tg
 HjNj03vEWDJtb/ElnbD5jQc+6ww3HU6DVjdhVcc83ciok2+6wNywjli8F0WT8cmI1j
 Q8dOMuxxX6FOiuDQlP2Ut+KNZEGjtCeCrU6heg528OYIn4yuwvw8ZXSQOaitoomW8h
 Ofvi+w9LWQWwLqTb8li2mUEXhBXPLSl9wiXfi1OVFl/mimghgqXq5DRKV0A7YDjYIV
 4zY0MYgl2Op9A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=iMOK6oyw
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: do not init struct
 ice_adapter more times than needed
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
Cc: Jiri Pirko <jiri@resnulli.us>,
 Sergey Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org,
 Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jun 17, 2024 at 03:24:07PM +0200, Przemek Kitszel wrote:
> Allocate and initialize struct ice_adapter object only once per physical
> card instead of once per port. This is not a big deal by now, but we want
> to extend this struct more and more in the near future. Our plans include
> PTP stuff and a devlink instance representing whole-device/physical card.
> 
> Transactions requiring to be sleep-able (like those doing user (here ice)
> memory allocation) must be performed with an additional (on top of xarray)
> mutex. Adding it here removes need to xa_lock() manually.
> 
> Since this commit is a reimplementation of ice_adapter_get(), a rather new
> scoped_guard() wrapper for locking is used to simplify the logic.
> 
> It's worth to mention that xa_insert() use gives us both slot reservation
> and checks if it is already filled, what simplifies code a tiny	bit.
> 
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

