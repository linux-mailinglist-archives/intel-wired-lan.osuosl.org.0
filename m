Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BED76E32D5
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Apr 2023 19:16:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8EBB484575;
	Sat, 15 Apr 2023 17:16:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8EBB484575
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681578993;
	bh=7cdnIJr4nlq/drT6Gdg/iigSJ7ObAXWBox1cWRig9Hg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RkbsQ7qQW92NvgHVs5B9a9pIMf+ItbhRa2wFQwYga1+tM+1j5w69Lray7QbiExbwQ
	 h8yzVuj1GBasZRi9MPwQIM7ALrW1m3VSq3Jr2QBuqIQP9NFurKSNAmiQ67Z483Shuy
	 Civq7rSl2maN14+qNEFn6I4L9pOtBtJhIXYhqDEhzssfSdcpgPLTAp3xMs1NuFGdjj
	 COreMd5S7ctPJ7BmVz2FSCdlpnjaeSQ71l40uH7SBx6zYBVpAK68/jt4XW0dCC1TXA
	 SmvQpZUHc3JQZckhFteLFZTLp6lGQMRyY32sXDwUwUovU4ddEwziFYj6qEfwHXP7mc
	 iytvmGGuvoMRg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6h3Y9HmNCi5u; Sat, 15 Apr 2023 17:16:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7BB6D8449F;
	Sat, 15 Apr 2023 17:16:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7BB6D8449F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 90D1B1C409F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Apr 2023 17:16:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7544060DF0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Apr 2023 17:16:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7544060DF0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qDV2l6NqlZUP for <intel-wired-lan@lists.osuosl.org>;
 Sat, 15 Apr 2023 17:16:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B282960C09
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B282960C09
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Apr 2023 17:16:26 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9FEB860B4B;
 Sat, 15 Apr 2023 17:16:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D92B4C433D2;
 Sat, 15 Apr 2023 17:16:24 +0000 (UTC)
Date: Sat, 15 Apr 2023 13:16:23 -0400
From: Sasha Levin <sashal@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <ZDrb58HEqLvG6ZoQ@sashalap>
References: <20230411011354.2619359-1-pavan.kumar.linga@intel.com>
 <ZDb3rBo8iOlTzKRd@sashalap>
 <643703892094_69bfb294a3@willemb.c.googlers.com.notmuch>
 <d2585839-fcec-4a68-cc7a-d147ce7deb04@intel.com>
 <20230412192434.53d55c20@kernel.org> <ZDnNRs6sWb45e4F6@sashalap>
 <20230414152744.4fd219f9@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230414152744.4fd219f9@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1681578985;
 bh=YBy+HV96SaoTKtOsia7TJlcxUKngGg+lySmETOQFiDU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pZvRlbzT8g5sy23nmcxRBsbVliB3K69RMZK9GfGuGewFuTM60q8Xt9M0SZsC9ZggF
 JIP9LLcA9muJvutXm8HpKDZbLGIqg9UUX/GbRxTu+pnyRzPnErb/WD5XtJ2ntNtIGU
 C+NN8tcZELaSLs94/daCY9+ZfZPx65DRoHlvbzmRfpv3MpacEiTiEUjQoxpvW4GB9s
 +qSarNqzLR5ICpSaM0lniqYbvjS0HyX23uok11az6zs9yxXuBKW9yqsUMmIsdYoi6Q
 0wEjHqA3zgVtHeVdHkO0y7HVmTZhBp5DMQ5vaCKBa4db7aFaGNVEtAy1FODgyxIDZk
 VzAOwq7QM1COQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=pZvRlbzT
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 00/15] Introduce Intel
 IDPF driver
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>, pabeni@redhat.com,
 willemb@google.com, jesse.brandeburg@intel.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, decot@google.com, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Apr 14, 2023 at 03:27:44PM -0700, Jakub Kicinski wrote:
>On Fri, 14 Apr 2023 18:01:42 -0400 Sasha Levin wrote:
>>> As I said previously in [0] until there is a compatible, widely
>>> available implementation from a second vendor - this is an Intel
>>> driver and nothing more. It's not moving anywhere.
>>
>> My concern isn't around the OASIS legal stuff, it's about the users who
>> end up using this and will end up getting confused when we have two (or
>> more) in-kernel "IDPF" drivers.
>>
>> I don't think that moving is an option - it'll brake distros and upset
>> users: we can't rename drivers as we go because it has a good chance of
>> breaking users.
>
>Minor pain for backports but I don't think we need to rename anything,
>just move.
>
>Or we can just leave it be under intel/, since there are not other
>participant now. Unless perhaps under google/ is a better option?
>
>Drivers are organized by the vendor for better or worse. We have a
>number of drivers under the "wrong directly" already. Companies merge /
>buy each others product lines, there's also some confusion about common
>IP drivers. It's all fine, whatever.
>
>Users are very, very unlikely to care.
>
>>> I think that's a reasonable position which should allow Intel to ship
>>> your code and me to remain professional.
>>
>> No concerns about OASIS or the current code, I just don't want to make
>> this a mess for the users.
>
>It's not a standard until someone else actually adopts it. What stops
>all the other vendors from declaring that their driver interface is a
>standard now, too?
>
>We have a long standing rule in netdev against using marketing language.

Sorry, I may not have explained myself well. My concern is not around
what's standard and what's not, nor around where in the kernel tree
these drivers live.

I'm concerned that down the road we may end up with two drivers that
have the same name, and are working with hardware so similar that it
might be confusing to understand which driver a user should be using.

Yes, it's not something too big, but we have an opportunity to think
about this before committing to anything that might be a pain down the
road.

-- 
Thanks,
Sasha
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
