Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D0CD5B58040
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Sep 2025 17:19:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 58E57403C2;
	Mon, 15 Sep 2025 15:19:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iHMehQcav9_G; Mon, 15 Sep 2025 15:19:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CC113403E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757949576;
	bh=1YWkBghx8WoG7Xigqcxq9YJ6eVg8+8tLbSj5yp0+P90=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LgdJDmK5BqD6ZcGkyFBfYJp8XdyT9Kub1nzGausKQjism7drDn0jWiRTORTIdSW+f
	 dzHyrHkl/G0vSx8Ov5Eid0g9CE9wlASzNje773BVansy1jw/qFiFy0K16p/pfJkBxo
	 h9rqw0tIbiL7QENTi1tBc8Y6Ynz2hpBjuVJXqKJoGXTNFyqOO9+dhYUEO9hF751eAW
	 c+uCwZDA3JecNmGwLuTSKBgTexFWIBcsVKNMR5CrKxD6iR16wyYMr/v1Bsnbu6ErQk
	 A7hLTxxJ/EM+6o23bQkOs/tbnJPoJQ85+eA5Oke06bC6+EVyVzDdDdfkZ090oMNRSd
	 1fNIZKeyZWcuA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CC113403E5;
	Mon, 15 Sep 2025 15:19:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D182C12D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 15:19:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B7B42403C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 15:19:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pBs_FYOWnseT for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Sep 2025 15:19:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D5E9B4039B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D5E9B4039B
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D5E9B4039B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 15:19:33 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 438B7601D2;
 Mon, 15 Sep 2025 15:19:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88A5EC4CEF7;
 Mon, 15 Sep 2025 15:19:31 +0000 (UTC)
Date: Mon, 15 Sep 2025 08:19:30 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20250915081930.32de8247@kernel.org>
In-Reply-To: <84554f92-5b57-4fcd-85f5-89d9ec0f2523@intel.com>
References: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
 <20250912130627.5015-3-przemyslaw.kitszel@intel.com>
 <20250912161938.1647096b@kernel.org>
 <84554f92-5b57-4fcd-85f5-89d9ec0f2523@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1757949571;
 bh=+zPXRJvQLGrQg5knOB0aVgDPejM02fyGGa6SPEbwTdk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=PnedSK9FiWLSf1h+8yvnwvytyYIV1GvzvZ5H5oSMxMgZCXD9BnZrnur2iddMAmcxL
 28aukGW4Mgdm7wiaq9u8ehvr5wGax0nHfvtk7X8i8om2yDDT03w8CHYIVm8YmftNrh
 GAEeRZF0EkJ/yhWvIOF+MyBqN+ZL4lImnQnKkRixfYWRwImuDp6ADWmTYk1hTYq9/3
 pQHOjLhJ2jRQS1I7lqNtaAPau+gOM0qSKzyO934lt3RUfMhgspEAvkoTvBHWBtnpoC
 VrQhrg1GKeb9xuxs9nqpOBs3u2smT9GCtraaZ3kyo/t5cFEl+hxPQrWZUsQRt8TBNB
 p7ddP2/EZI8xw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=PnedSK9F
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/9] ice: move service task
 start out of ice_init_pf()
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
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 15 Sep 2025 13:01:47 +0200 Przemek Kitszel wrote:
> On 9/13/25 01:19, Jakub Kicinski wrote:
> > On Fri, 12 Sep 2025 15:06:20 +0200 Przemek Kitszel wrote:  
> >> +	timer_setup(&pf->serv_tmr, ice_service_timer, 0);
> >> +	pf->serv_tmr_period = HZ;
> >> +	INIT_WORK(&pf->serv_task, ice_service_task);
> >> +	clear_bit(ICE_SERVICE_SCHED, pf->state);  
> > 
> > I should just read the code, but this looks like an open-coded
> > deferred_work ?  
> 
> I wanted to put some joke about our driver, but it is not funny :F
> 
> ice-service-task is scheduled both by the timer and work_queue (ice_wq),
> there is more flags that I could count around the scheduling, and it is
> a pain to stop/reset the thing - I will definitively try to simplify
> the thing (esp. given I have a bug with driver reset on me)
> 
> but for now, the cited thing is just a little chunk that I have moved
> from one function to another (and the whole series is not about a race)

FWIW a lot of races that used to exist around work scheduling are now
trivially resolved by disabling the work. But yeah, not a blocker here
obviously..
