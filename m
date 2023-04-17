Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2945A6E4E61
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Apr 2023 18:38:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D6AA681E88;
	Mon, 17 Apr 2023 16:38:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D6AA681E88
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681749521;
	bh=Lm4/Hjb01USWFWE3FyfiNJqIpSOmKqsXNQLoNEP3u/M=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NEEZruDTJYM7St00I3XnN3no71+dM5VuBh+pdznxVn/zKy9HP/bXhFRSkNs9zKqC0
	 +A1c66UJpiAOyZ7j3I34YdFRmiqDAUYdxYx4ugwWc5E1TE8rUfahHaCQHLSXqQr+QB
	 SGx+7SmqRLnOPKpm7kA+cZgjV5+ZwB53kBrhmj4xobksbLhLTegdDJa+v8Ttk+ZINk
	 9jnYodt/y0r58u99GmNHeOL94MLnY5ymaPICEL5SYXXUWJdmdnvxPKE8Wuie5Vo2U5
	 8kNcMz8z7V/jzthLE60D5pBaYwKr00kZwZ5SoWsvuGBKMZX23hGlCn9hPGO808sTyS
	 jK2z8kcHOY7vg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0sqgPNVoqGIu; Mon, 17 Apr 2023 16:38:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D61EE81E35;
	Mon, 17 Apr 2023 16:38:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D61EE81E35
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 392491BF3E0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 16:38:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1B22181E20
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 16:38:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B22181E20
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id styi-0Wum1uB for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Apr 2023 16:38:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F35581E19
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6F35581E19
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 16:38:35 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 5E7C461A11;
 Mon, 17 Apr 2023 16:38:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C882C433D2;
 Mon, 17 Apr 2023 16:38:33 +0000 (UTC)
Date: Mon, 17 Apr 2023 09:38:32 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Sasha Levin <sashal@kernel.org>
Message-ID: <20230417093832.686d0799@kernel.org>
In-Reply-To: <ZDrb58HEqLvG6ZoQ@sashalap>
References: <20230411011354.2619359-1-pavan.kumar.linga@intel.com>
 <ZDb3rBo8iOlTzKRd@sashalap>
 <643703892094_69bfb294a3@willemb.c.googlers.com.notmuch>
 <d2585839-fcec-4a68-cc7a-d147ce7deb04@intel.com>
 <20230412192434.53d55c20@kernel.org> <ZDnNRs6sWb45e4F6@sashalap>
 <20230414152744.4fd219f9@kernel.org> <ZDrb58HEqLvG6ZoQ@sashalap>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1681749513;
 bh=UIcbgmX53wdhHABZ1JIhU1zwxYYSwNI6E1wGq28Ge0c=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=n27BAVd2rXyx+l7JMv4M/tvCuSp6LLB+GuxvMUmppwqQqxyRcqHG8mM+9RbC4ixb9
 s0m41VPJ1LQQ3u/4IY3xRgIdx37yV+ViBqx75xs8JUe89PSkBmDLHdBW12gZKhmOSO
 l0Bj7/RskmXXfR5P/SNi+EqOkqyaPYb1tzb+MMotVgant1HkzA2uEF31rKmkkbS35h
 WhpCxCK7bRKy/tGyfMeSZrWWowYs6ZY9MxAl0M7zm6/09p6O9Ilw/HDoxJzyzLPnnc
 mPAToxURSYi9xtUpnnft66wUwQKzRFZBOKSaeIrdUaCq7M1dr3ZLKpTO7Wta4GQVzb
 74695ZdRWNkXA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=n27BAVd2
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, 15 Apr 2023 13:16:23 -0400 Sasha Levin wrote:
> Sorry, I may not have explained myself well. My concern is not around
> what's standard and what's not, nor around where in the kernel tree
> these drivers live.

My bad, I thought you were looking at this from the stable tree's angle.

> I'm concerned that down the road we may end up with two drivers that
> have the same name, and are working with hardware so similar that it
> might be confusing to understand which driver a user should be using.
> 
> Yes, it's not something too big, but we have an opportunity to think
> about this before committing to anything that might be a pain down the
> road.

Indeed, the "update" Willem mentioned should be at most a quirk or
capability exchange with the device within this driver. Two drivers
would be unacceptable.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
