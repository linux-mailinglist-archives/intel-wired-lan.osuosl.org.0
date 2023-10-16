Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7C07CACCD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Oct 2023 17:02:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CDEE3408F7;
	Mon, 16 Oct 2023 15:02:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CDEE3408F7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697468534;
	bh=GE4ET5GQ0PTc+JOTtkvwlW8kP+QEoW3+B39gHyQHPTc=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ACQtgAEz8Sj700/FqXP1M/dj45V0aUjSNRlzKD1GBNJ6EmU4TJoJ4fa3QF2SKf5PL
	 6GbymjoPa+J8U8xKI0aOqQI7UPRPp5nd/MsRSj9x4SGRLz3Y/9XbP74Q/Aaxp4Mdnj
	 oDxvVBahWroWWNXoSTKy6i03ms4jD1vxxkYM7Im0CELIT/0sK4iNvnbqAV+TIuNVwD
	 +bds4GeBwo4UJa6KxEw9ldUEniAWRekAuVtersR4ltL4EG7ZGSxyFLn3j1mHlQKJYW
	 nRJJLnLzzLxYe9T6psQPUmG8K6TFI5Ta7vfhoK4fcsyCW8dsmcwJ//4eKwYhypliSg
	 n+HpCf3XpkKRg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K1Hj_JboyLQz; Mon, 16 Oct 2023 15:02:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 375D74179D;
	Mon, 16 Oct 2023 15:02:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 375D74179D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5B4D51BF95C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 15:02:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 40BE281E39
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 15:02:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 40BE281E39
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LSw3LclpVDWl for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Oct 2023 15:02:05 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 19CB581E46
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 15:02:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 19CB581E46
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 1942E60FDB;
 Mon, 16 Oct 2023 15:02:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2663CC433C9;
 Mon, 16 Oct 2023 15:02:03 +0000 (UTC)
Date: Mon, 16 Oct 2023 08:02:02 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <20231016080202.0d755ef3@kernel.org>
In-Reply-To: <cf6c824a-be09-4b6c-b2a2-fb870e9f0c37@intel.com>
References: <20231010200437.9794-1-ahmed.zaki@intel.com>
 <20231010200437.9794-2-ahmed.zaki@intel.com>
 <CAF=yD-+=3=MqqsHESPsgD0yCQSCA9qBe1mB1OVhSYuB_GhZK6g@mail.gmail.com>
 <8d205051-d04c-42ff-a2c5-98fcd8545ecb@intel.com>
 <CAF=yD-J=6atRuyhx+a9dvYkr3_Ydzqwwp0Pd1HkFsgNzzk01DQ@mail.gmail.com>
 <cf6c824a-be09-4b6c-b2a2-fb870e9f0c37@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1697468523;
 bh=J5b7wIkmNDZePcl6689bb1lqUj0fI6CrDKw3d6N9cNQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=nwE77uyMYSNbphoXAWn6ygCBN9Q7OQRXv+tz+SPnRISF379jWyUQyfomoc1+mxW+P
 NIZnRfAqC7tevyg0mOTjTv782qCPLA07+i1UgcSqJvOt9JSMVDjEwOCv2uPKAtxvmY
 vJRzQTj1EvdV5oQGdwUkT8mhnpJyD3Rl0m935hTPR6wFmLES/JXnhJs7MscEZtAaY9
 0bf7k93jUqoAJ/4bVq0BMXTEeIzsc46z1jqTcU7Ymq752JZSgaQ6nsayyXx0/2P7fB
 0qNmHFNfzp6Vtb6D7TS/cXVLLYFRvR0M0fDeIgPzfPK3YyK862ibFTE6AgjLW3C3Bc
 34jwcmi6xdGYw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=nwE77uyM
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/6] net: ethtool: allow
 symmetric-xor RSS hash for any flow type
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
Cc: mkubecek@suse.cz, andrew@lunn.ch,
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 vladimir.oltean@nxp.com, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, 14 Oct 2023 06:19:54 -0600 Ahmed Zaki wrote:
> >> +#define        RXH_SYMMETRIC_XOR       (1 << 30)
> >> +#define        RXH_DISCARD             (1 << 31)
> >>
> >> Are these indentation changes intentional?
> >>
> >>
> >> Yes, for alignment ("RXH_SYMMETRIC_XOR" is too long).  
> > 
> > I think it's preferable to not touch other lines. Among others, that
> > messes up git blame. But it's subjective. Follow your preference if no
> > one else chimes in.  
> 
> Jakub,
> 
> Sorry for late reply, I was off for few days.
> 
> I'd like to keep this version, I don't see any other comments that needs 
> to be addressed. Can you accept this or need a v4/rebase ?

I think you should add a comment above the define explaining what
"symmetric-xor" is. Is this correct?

/* XOR corresponding source and destination fields, both copies 
 * of the XOR'ed fields are fed into the RSS and RXHASH calculation.
 */
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
