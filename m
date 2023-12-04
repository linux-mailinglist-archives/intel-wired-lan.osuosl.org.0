Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7778041A9
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Dec 2023 23:22:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 372618207C;
	Mon,  4 Dec 2023 22:22:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 372618207C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701728549;
	bh=rnTeIQ52svSY1QAAXyf3JYFtzCAmabTDVWZnz2xnkb4=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qM6fxKM4HLOzlFqoJfWDUql0NVPW6IweEIEetQJc17oKoXQWEgYKrXkgA2gi1yodT
	 yp7S6V2nYqO9MRxs04a3VHvK3LL0WQk8BlHy4YJHVC7MTdZmTfLpNMY6InRkMeWkMo
	 gMO64xVo7YBvt2yRk+bHQh+9oWkE+bO7JuO1SE+gDP851RpyAtqiK1zEql75vG4d9s
	 Trba3hSj06mKZCrsZCMj3cm+/0io0j5M510Js+c9R3cBOr8VGTtUEnGeQHInZ8b+qs
	 bdomjDgYnW20FHkJT28bA4UURffIf54BJPu2yv+l6XqiFcqmbdEnrNEE7EWyJBJt2p
	 igM7u7f5x8FGg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zxZiJRQXdejL; Mon,  4 Dec 2023 22:22:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A86A8206C;
	Mon,  4 Dec 2023 22:22:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A86A8206C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C22971BF303
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 22:22:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A6F684173E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 22:22:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A6F684173E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iR2Zx0oIKAxO for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Dec 2023 22:22:22 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E52DE41721
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 22:22:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E52DE41721
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 4C6DCB811BF;
 Mon,  4 Dec 2023 22:22:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BB28C433C8;
 Mon,  4 Dec 2023 22:22:18 +0000 (UTC)
Date: Mon, 4 Dec 2023 14:22:17 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Johannes Berg <johannes@sipsolutions.net>
Message-ID: <20231204142217.176ed99f@kernel.org>
In-Reply-To: <69c0fa67c2b0930f72e99c19c72fc706627989af.camel@sipsolutions.net>
References: <20231204200710.40c291e60cea.I2deb5804ef1739a2af307283d320ef7d82456494@changeid>
 <20231204200038.GA9330@merlins.org>
 <a6ac887f7ce8af0235558752d0c781b817f1795a.camel@sipsolutions.net>
 <20231204203622.GB9330@merlins.org>
 <24577c9b8b4d398fe34bd756354c33b80cf67720.camel@sipsolutions.net>
 <20231204205439.GA32680@merlins.org>
 <20231204212849.GA25864@merlins.org>
 <69c0fa67c2b0930f72e99c19c72fc706627989af.camel@sipsolutions.net>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1701728538;
 bh=keW5i8qebroJtN8Z6PS/TiYKwWuHQIjV6wam4mPyNsI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=WORYnH/2G61hGitGbL/VX0CUdq2C3ir2YM3iq+lAEOW3m4uhP9BqJvG7jpzljumzn
 DKPhrKj42dPuYZW+/f1g9cZZ4Bgtuvi8Ja0SlhyUhyNNKuMmap/f205KqCKeJ+rSk+
 nXx1mkNx9EHilNd1VHUohfJ1zeWVVeXqAgzBhbkYFQW1UqLI/GSK60woG2CIm8clvi
 GTcNDErjYJHF6Xl6Vb2l5ioa1RnsiSdifLjQAotWeDPf8S6WGvc6SvLRVjiimIg/7N
 y3e4qBcW9a/AINb42RtyctTvVzl8MDlzwtmmO/wd2xYMJh/zbpqzfEonk79fkwIvs2
 vu6SHEA0x0yAw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=WORYnH/2
Subject: Re: [Intel-wired-lan] [RFC PATCH] net: ethtool: do runtime PM
 outside RTNL
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
Cc: netdev@vger.kernel.org, Marc MERLIN <marc@merlins.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 04 Dec 2023 22:32:25 +0100 Johannes Berg wrote:
> Well, I was hoping that
> 
>  (a) ethtool folks / Jakub would comment if this makes sense, but I
>      don't see a good reason to do things the other way around (other
>      than "code is simpler"); and

My opinion on RPM is pretty uneducated. But taking rtnl_lock to resume
strikes me as shortsighted. RPM functionality should be fairly
self-contained, and deserving of a separate lock.
Or at the very least having looked at the igc RPM code in the past,
I'm a bit cautious about bending the core to fit it, as it is hardly
a model...

>  (b) Intel wired folks could help out with getting the patch across the
>      finish line, seeing how their driver needs it :) I think the dev
>      get/put needs to use the newer API, but I didn't immediately see
>      how that works locally in a function without an allocated tracker

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
