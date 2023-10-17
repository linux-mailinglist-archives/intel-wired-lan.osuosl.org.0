Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C16E7CCDBF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Oct 2023 22:17:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B5783613DF;
	Tue, 17 Oct 2023 20:17:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B5783613DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697573861;
	bh=ry9XTTD4zaF1/B5xjmgYcnUKwLv85NrPbPzYcyNtV4s=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2nSrChch4KIFlFNgKy5xmg9CIlgOmcvq8/9k0J2UtOcdmr5tLoF867NdO77Q1Zpv4
	 v4hHqKMOvahm4FgEfKeD2E9Sn3HKJeSqxBNkRVj3Sy6d615XxrfYyox5FVq8HqOOxr
	 rTDsCZephjegpHCspDd3d4UshL4ks2zQtSsOPyk13Grys/bq5G8FlyNPnIoCNyOhvG
	 ddmcewWb9FgfAP1RrUS2iKNuVII6hWRwtroNkYtFp2nmDoj/UkkRZx4D8ULiPo0+3/
	 8ZaAH7mP1gabMszFJSFGMWv/7WVoGY5Qq+/cqP4pJFJitUWUoNbYZTtCedmeuexgGe
	 1Q6Mi9ewBbecg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wjxv2SS0dN-h; Tue, 17 Oct 2023 20:17:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9DC9E60FAE;
	Tue, 17 Oct 2023 20:17:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9DC9E60FAE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3913F1BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 20:17:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0FE0C41EB3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 20:17:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0FE0C41EB3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w7I-WotVLGSl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Oct 2023 20:17:34 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0DA1241EAE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 20:17:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0DA1241EAE
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id F279ACE20E8;
 Tue, 17 Oct 2023 20:17:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E9D5C433C7;
 Tue, 17 Oct 2023 20:17:28 +0000 (UTC)
Date: Tue, 17 Oct 2023 13:17:27 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Duyck <alexander.duyck@gmail.com>
Message-ID: <20231017131727.78e96449@kernel.org>
In-Reply-To: <CAKgT0Udyvmxap_F+yFJZiY44sKi+_zOjUjbVYO=TqeW4p0hxrA@mail.gmail.com>
References: <20231016154937.41224-1-ahmed.zaki@intel.com>
 <20231016154937.41224-2-ahmed.zaki@intel.com>
 <8d1b1494cfd733530be887806385cde70e077ed1.camel@gmail.com>
 <26812a57-bdd8-4a39-8dd2-b0ebcfd1073e@intel.com>
 <CAKgT0Ud7JjUiE32jJbMbBGVexrndSCepG54PcGYWHJ+OC9pOtQ@mail.gmail.com>
 <14feb89d-7b4a-40c5-8983-5ef331953224@intel.com>
 <CAKgT0UfcT5cEDRBzCxU9UrQzbBEgFt89vJZjz8Tow=yAfEYERw@mail.gmail.com>
 <20231016163059.23799429@kernel.org>
 <CAKgT0Udyvmxap_F+yFJZiY44sKi+_zOjUjbVYO=TqeW4p0hxrA@mail.gmail.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1697573849;
 bh=ZD4QymKAn9GvDpcL1wt4gWYiyp7jJSQIpyOTNO6Ptg4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=qCK4e2iroZsLp6ifWINmBnK7M1QTQoXL4y/dppV1GD9iPvhCcSwnLc2RH+T1MeJGN
 WWkaLvlV/j6dRouTcRtLc2j4n7HtoW++PEtLJq6VYhS1iO5IFMYjr6zQAUNEYhTss/
 9l/OIeqOnLJmWh59wqGcg47sqBbY3LPVSRzBRhLFcvNMniQ3Lc0yLROEFTOP7HPreJ
 /peYoR8VxOmXDgS07sj8uwxpKfuRa8LqYx7a7xn2MhRL1XVGRc0hL4tXiNEjb/hfqo
 k6H1aM6SqXbXxay+3I3AqYeFz08H9o3MWrdTPcOAFxJetiPFknVxQHHk1cf2nx+Ajb
 2Bu3j6XKwaOXA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=qCK4e2ir
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

On Tue, 17 Oct 2023 11:37:52 -0700 Alexander Duyck wrote:
> > Algo is also a bit confusing, it's more like key pre-processing?
> > There's nothing toeplitz about xoring input fields. Works as well
> > for CRC32.. or XOR.  
> 
> I agree that the change to the algorithm doesn't necessarily have
> anything to do with toeplitz, however it is still a change to the
> algorithm by performing the extra XOR on the inputs prior to
> processing. That is why I figured it might make sense to just add a
> new hfunc value that would mean toeplitz w/ symmetric XOR.

XOR is just one form of achieving symmetric hashing, sorting is another.

> > We can use one of the reserved fields of struct ethtool_rxfh to carry
> > this extension. I think I asked for this at some point, but there's
> > only so much repeated feedback one can send in a day :(  
> 
> Why add an extra reserved field when this is just a variant on a hash
> function? I view it as not being dissimilar to how we handle TSO or
> tx-checksumming. It would make sense to me to just set something like
> toeplitz-symmetric-xor to on in order to turn this on.

It's entirely orthogonal. {sym-XOR, sym-sort} x {toep, crc, xor} -
all combinations can work.

Forget the "is it algo or not algo" question, just purely from data
normalization perspective, in terms of the API, if combinations make
sense they should be controllable independently.

https://en.wikipedia.org/wiki/First_normal_form
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
