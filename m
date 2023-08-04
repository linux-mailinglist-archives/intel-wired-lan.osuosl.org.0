Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA5FE770330
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Aug 2023 16:35:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B3B50417E9;
	Fri,  4 Aug 2023 14:35:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B3B50417E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691159715;
	bh=KisQv5khAp7/B831yKk3qXFUx9NI7FaITVajq+8XQaM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xfglnrZOftSca0Dd6Itgr0NyqKxc+rxdwxvPmuMFBU/rcOSoNM36Y45gXQ1GEFtte
	 ZBD53ylSGwoU8BIN5Xebgzk0EoxRlfp4CbAy6Eqvt0/Z7/5lLEO26qWQ0Fdh8E7Boi
	 6GqCNV4OD5OA6ZtVqPrQBlp9EMATBULwHeuAuixS1H4pfVfbHqLXE6Tk+iVRQvAixa
	 lOAzcUqyED12OBoZe0o4YBopqWpei9Np43Srvn4wUih9NQI5QxzlgWyNys//SJPoga
	 +ftUgkbYXW7C2KfMFHBFkpL4/i8zxNGY0Mc7JoKxsNLojRuApIeQ23ny9GpedF2Njw
	 h6bL67BQdxJyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pd00uZgYhqKa; Fri,  4 Aug 2023 14:35:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4723B41777;
	Fri,  4 Aug 2023 14:35:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4723B41777
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 33D2A1BF97D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 14:35:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CECEC83942
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 14:35:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CECEC83942
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dw5gp1u10e5o for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Aug 2023 14:35:08 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 450A38390F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 14:35:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 450A38390F
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 278FC62042;
 Fri,  4 Aug 2023 14:35:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D8BBC433C7;
 Fri,  4 Aug 2023 14:35:05 +0000 (UTC)
Date: Fri, 4 Aug 2023 16:35:02 +0200
From: Simon Horman <horms@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <ZM0MlhZduLVa6YZV@kernel.org>
References: <20230803151347.23322-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230803151347.23322-1-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1691159706;
 bh=lI3Yz8yyI1OekaPbi6kQfjrKofOteaQVZnmEx+XbDVQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jCQUEn3kKTRpq8LNxvB8atg3pEf55bRiqS83dVV4mR9nGKMe7n+WwbNFdcj50i2+5
 tkxnMifwxXdiQHzJbzWCNwjBiiVCGybNy+8qggbvi+49V6wqFywsV2w+nprqQopEQL
 HM7HkjeCX3DBNHQKrxqUerxN3YUxVrKLIZUlsPLnypldZ2PUdQpyFX/7RqY3mI2PGE
 5afKAIgLXD6CJqzdD5D0jTf4cHxOuyQourKnWJD3JKHmRd0aX8DyelF1ruCXPoEcMV
 n4afMB2IpFFexRq9TElS9z5T7fXIy+NM+PwZ21T+aP0qkxCSrbzFTMfk5fU7Asx59z
 dk5EEmYkvx73A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=jCQUEn3k
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: split
 ice_aq_wait_for_event() func into two
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Aug 03, 2023 at 11:13:47AM -0400, Przemek Kitszel wrote:
> Mitigate race between registering on wait list and receiving
> AQ Response from FW.
> 
> ice_aq_prep_for_event() should be called before sending AQ command,
> ice_aq_wait_for_event() should be called after sending AQ command,
> to wait for AQ Response.
> 
> struct ice_aq_task is exposed to callers, what takes burden of memory
> ownership out from AQ-wait family of functions.
> 
> Embed struct ice_rq_event_info event into struct ice_aq_task
> (instead of it being a ptr), to remove some more code from the callers.
> 
> Additional fix: one of the checks in ice_aq_check_events() was off by one.

Hi Przemek,

This patch seems to be doing three things:

1. Refactoring code, in order to allow
2. Addressing a race condition
3. Correcting an off-by-one error

All good stuff. But all complex, and 1 somewhat buries 2 and 3.
I'm wondering if the patch could be broken up into smaller patches
to aid both review new and inspection later.

The above notwithstanding, the code does seems fine to me.

> Please note, that this was found by reading the code,
> an actual race has not yet materialized.

Sure. But I do wonder if a fixes tag might be appropriate anyway.

> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
