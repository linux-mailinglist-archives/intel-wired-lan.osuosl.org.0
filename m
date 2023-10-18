Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C31E7CEC4E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Oct 2023 01:50:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5C283419A3;
	Wed, 18 Oct 2023 23:50:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C283419A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697673032;
	bh=yiAxUm2mP7r8bWbamLg3a0lqEvzMydQTw5lq9cuCy8M=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=m9Rdy9yaOwUjx8eoJhtpjQ7kyxPO/OtUQcySfIfzRLuDcQvUeMrEwZ2XzzFUwUwOW
	 KQDxsQ8p8YMiRB0Nc5fwcaDvfJ64uRBCVXawMq/uK3YGDfQCMu3wjd5mR1dMq8FyoF
	 VO3loDqSa3y0/bfjKeM1zWIbTGJKj0C4xDPnHq0hks6P/8XeyxyGm4YstunHtGO1wg
	 DrHaaoJHqsY1QuhBBSuicIfwdaC0xlQNlykKDrncpEh+drrpZN2E/W3WTj/IuyvUT0
	 0WXiJQiKqRsW+es0uqHvY6WryXoNAe5MSOGlkwlMwCHSiH1Ck1db8rsVNEW/Dm/OT5
	 WnoUvUXaQaqXQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YU82UJ4WoEcY; Wed, 18 Oct 2023 23:50:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 798584199B;
	Wed, 18 Oct 2023 23:50:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 798584199B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2F1B21BF32E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 23:50:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0473F41997
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 23:50:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0473F41997
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P3fchTaaN1DG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Oct 2023 23:50:23 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ADF914198C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 23:50:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ADF914198C
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 830B9619D9;
 Wed, 18 Oct 2023 23:50:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2588C433C9;
 Wed, 18 Oct 2023 23:50:21 +0000 (UTC)
Date: Wed, 18 Oct 2023 16:50:20 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Duyck <alexander.duyck@gmail.com>
Message-ID: <20231018165020.55cc4a79@kernel.org>
In-Reply-To: <CAKgT0Udz+YdkmtO2Gbhr7CccHtBbTpKich4er3qQXY-b2inUoA@mail.gmail.com>
References: <20231016154937.41224-1-ahmed.zaki@intel.com>
 <20231016154937.41224-2-ahmed.zaki@intel.com>
 <8d1b1494cfd733530be887806385cde70e077ed1.camel@gmail.com>
 <26812a57-bdd8-4a39-8dd2-b0ebcfd1073e@intel.com>
 <CAKgT0Ud7JjUiE32jJbMbBGVexrndSCepG54PcGYWHJ+OC9pOtQ@mail.gmail.com>
 <14feb89d-7b4a-40c5-8983-5ef331953224@intel.com>
 <CAKgT0UfcT5cEDRBzCxU9UrQzbBEgFt89vJZjz8Tow=yAfEYERw@mail.gmail.com>
 <20231016163059.23799429@kernel.org>
 <CAKgT0Udyvmxap_F+yFJZiY44sKi+_zOjUjbVYO=TqeW4p0hxrA@mail.gmail.com>
 <20231017131727.78e96449@kernel.org>
 <CAKgT0Ud4PX1Y6GO9rW+Nvr_y862Cbv3Fpn+YX4wFHEos9rugJA@mail.gmail.com>
 <20231017173448.3f1c35aa@kernel.org>
 <CAKgT0Udz+YdkmtO2Gbhr7CccHtBbTpKich4er3qQXY-b2inUoA@mail.gmail.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1697673022;
 bh=xzyBRSLNILhZ9XPTGbRgeQaBpcpvp+VTRtwqd65Y2ps=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=jDyquIIAfzo1AcouG0XZnhFod8njD5NjytVJbZ17RUkxx9ihOmWpBENhLa05hU+wq
 or4nP6z09vCfgxp3rOamqbcitzreRbIsj6u1wt8KGE6yHS4RxP4XA3HmPQkdsSFjL7
 UCRQB32WmkOAxT9x6tFn7bZhxAexFDg+/CWMIf71JQrhlshzye5VJqqJNIxiYjXNHX
 Ytc/B+BrzZ6zzFFRPVTXtYRuZJdnoCEPilQ1oxsNtPWAnn1STqTK+9bQPzFyO58hk0
 sLOVU4PxJ258vj7dG6kHIz3twBBC7Y9zvpPsw/JzsWG3GxnwwLf9risIW2XpTvkm+T
 /ThvaixH7OLmA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=jDyquIIA
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/6] net: ethtool: allow
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 Ahmed Zaki <ahmed.zaki@intel.com>, edumazet@google.com,
 anthony.l.nguyen@intel.com, horms@kernel.org, vladimir.oltean@nxp.com,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 18 Oct 2023 11:12:13 -0700 Alexander Duyck wrote:
> > > Based on earlier comments it doesn't change the inputs, it just
> > > changes how I have to handle the data and the key. It starts reducing
> > > things down to something like the Intel implementation of Flow
> > > Director in terms of how the key gets generated and hashed.  
> >
> > About Flow Director I know only that it is bad :)  
> 
> Yeah, and that is my concern w/ the symmetric XOR is that it isn't
> good. It opens up the toeplitz hash to exploitation. You can target
> the same bucket by just making sure that source IP and port XOR with
> destination IP and port to the same value. That can be done by adding
> the same amount to each side. So there are 2^144 easily predictable
> possible combinations that will end up in the same hash bucket. Seems
> like it might be something that could be exploitable. That is why I
> want it marked out as a separate algo since it is essentially
> destroying entropy before we even get to the Toeplitz portion of the
> hash. As such it isn't a hash I would want to use for anything that is
> meant to spread workload since it is so easily exploitable.

I see your point.

Which is not to say that I know what to do about it. crc or any
future secure algo will get destroyed all the same. It's the input
entropy that gets destroyed, independently of the algo.

We already support xor, and it doesn't come with a warning saying
it's insecure so we kind of assume user knows what they are doing.

I think the API we pick for configuring sym-xor should be the same as
sym-sort. And the "makes algo insecure" argument won't apply to sort.

IMO fat warning in the documentation and ethtool man saying that this
makes the algo (any / all) vulnerable to attack would be enough.
Willem?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
