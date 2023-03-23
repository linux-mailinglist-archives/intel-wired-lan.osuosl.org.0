Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 287356C5BA8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Mar 2023 02:04:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3E39D60DDF;
	Thu, 23 Mar 2023 01:04:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E39D60DDF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679533460;
	bh=mDsQhHseVKVYH0jGssMIOUGG9xu7RhLvnQjJuTjCi5o=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2ReX3inwOn/Mb6jYiPyrQ8NRdiEz4ebq3JirJsmatwkys1yMOi8YJzZkgnQMCy46Z
	 1mAf/yINoUZZkiBJVnyB3W4ned+MCfHdlYpbhtGJ+ZI+mrdY7zUkisbZVqmyh7ByGG
	 aiUwdfQMCh3Zu7JNVffW3mLMKZYsEBekVhXKqqZbv7dDSpz8+M3cNihbBYPl0/ZDA5
	 Ih2Y0K3THLu5mm4BuVN2glkm15KGXoJsvmgvVyr/MqxldD3EwLxetLdSSx70qPZByU
	 MAN991xBoDcjOX01bEKl83horiGirgEUF+nmyCerIYwhdSDPaWV1k4hmOBiT9nVmbu
	 FJwBwn/W65LUA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bCtuL-oZNlV4; Thu, 23 Mar 2023 01:04:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2FD5D60C05;
	Thu, 23 Mar 2023 01:04:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2FD5D60C05
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4860E1BF966
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Mar 2023 01:04:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 29BA083F45
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Mar 2023 01:04:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 29BA083F45
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iAQEyK0EDQLs for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Mar 2023 01:04:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B6A3839E0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2B6A3839E0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Mar 2023 01:04:13 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 159C6B81EAB;
 Thu, 23 Mar 2023 01:04:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C3EAC433D2;
 Thu, 23 Mar 2023 01:04:08 +0000 (UTC)
Date: Wed, 22 Mar 2023 18:04:06 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20230322180406.2a46c3bd@kernel.org>
In-Reply-To: <06d6a33e-60d4-45ea-b928-d3691912b85e@lunn.ch>
References: <20230322233028.269410-1-kuba@kernel.org>
 <06d6a33e-60d4-45ea-b928-d3691912b85e@lunn.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1679533448;
 bh=yTkGinnidb0wxvyc4GgIs0dymE4OLoIYT3gTmzhMqQs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=TpfitazGTdU2d8RVtXtYaK1/I4rfYwX50WbkTqyGud4lAYs7vAN9zm4lHePUQJmuz
 R+RC/5kKrhqvgoVAJwT7TRv98QH3Xi4Yzh4I6SNYpjZtm4aNXX4wGUwklsWWXuzUOQ
 EGIoEM+NT9EUUodOS2meZwyhPy2ySl7vTQrRrRv7AO7tNyYyb4GPcDFXXQZKi/vpnY
 ytVHmhl7IMBtrDATGaIjrodA7mc0N50l+xgZ/AkFJRA18Hd7G4vnt/sjPpLgfXXWKv
 JW2X1QFr6OmkxKrB6K7hKBffQTgTUunkBIVDBiIwjfkkBQ7hr+JEI3PYFS2MUxybwM
 ggsRKGrdm3JBA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=TpfitazG
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/3] net: provide macros for
 commonly copied lockless queue stop/wake code
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
Cc: willemb@google.com, netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, michael.chan@broadcom.com, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CC: maintainers, in case there isn't a repost
https://lore.kernel.org/all/20230322233028.269410-1-kuba@kernel.org/

On Thu, 23 Mar 2023 01:35:34 +0100 Andrew Lunn wrote:
> On Wed, Mar 22, 2023 at 04:30:26PM -0700, Jakub Kicinski wrote:
> > A lot of drivers follow the same scheme to stop / start queues
> > without introducing locks between xmit and NAPI tx completions.
> > I'm guessing they all copy'n'paste each other's code.
> >
> > Smaller drivers shy away from the scheme and introduce a lock
> > which may cause deadlocks in netpoll.  
> 
> I notice there is no patch 0/X. Seems like the above would be good
> material for it, along with a comment that a few drivers are converted
> to make use of the new macros.

Then do I repeat the same text in the commit? Or cut the commit down?
Doesn't that just take away information from the commit which will
show up in git blame?

Having a cover letter is a good default, and required if the series 
is a larger change decomposed into steps. But here there is a major
change and a bunch of loose conversions. More sample users than
meaningful part.

LMK what your preference for splitting this info is, I'm unsure.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
