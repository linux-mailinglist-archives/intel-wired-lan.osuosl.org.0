Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BE99F814D7C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Dec 2023 17:49:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4EC1A41D70;
	Fri, 15 Dec 2023 16:49:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4EC1A41D70
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702658974;
	bh=2dSWHLZFZVvw7sTbasW/1/k6FGFkVFUc2QS/5H1z+xw=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ew92dmq2Fp3oNdHwPRBGSMqki7TrfjyfuP6tWk79nUQUpKp6KaN4eU1HG5t/DteQ7
	 AgJK9J8jZuWMjAmkRTLs513sbxui26f51uquJlvy03pT+5jsH4CT4b7c0HCTQEKpUR
	 DAxWGBinJZmTM6Zpu2wQjIhjiqzJodNjfAdRjSbTKDJKk+C2f+YLo2oPNtdKLVyzIF
	 /ok4CIE/tHgXjXj+3KwEsbEjQg1wdFhKvzah2c9+4tZIBKv90McaEymileBkaQa5i+
	 O1aMuc8vUc1Yw5PjI9wRq5uQjukwL9m+UehuzsGSLBZWZefTbyPViXI7HevBQiAEn9
	 OSrh0rbdSSaFA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sKmTXUoOfPMM; Fri, 15 Dec 2023 16:49:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 27C5741BF7;
	Fri, 15 Dec 2023 16:49:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 27C5741BF7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 34CF61BF418
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 16:49:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1A51561078
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 16:49:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A51561078
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dEn66GPePp3j for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Dec 2023 16:49:27 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 72F8E61077
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 16:49:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 72F8E61077
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 5896262656;
 Fri, 15 Dec 2023 16:49:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0517C433C7;
 Fri, 15 Dec 2023 16:49:25 +0000 (UTC)
Date: Fri, 15 Dec 2023 08:49:24 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20231215084924.40b47a7e@kernel.org>
In-Reply-To: <67e287f5-b126-4049-9f3b-f05bf216c8b9@intel.com>
References: <20231207164911.14330-1-marcin.szycik@linux.intel.com>
 <b3e5ec09-d01b-0cea-69ea-c7406ea3f8b5@intel.com>
 <13f7d3b4-214c-4987-9adc-1c14ae686946@intel.com>
 <aeb76f91-ab1d-b951-f895-d618622b137b@intel.com>
 <539ae7a3-c769-4cf6-b82f-74e05b01f619@linux.intel.com>
 <67e287f5-b126-4049-9f3b-f05bf216c8b9@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1702658966;
 bh=5PHuAaFaCYATOtsy7iWNG+199rmb+dNu49WRu/iAdQE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=pQkDdn87YTPWYCQ/njtT2ma80iQYV9Id5HGXdWE7+Cqn+zQ+/qB//f1TRNgOIsvFt
 pfz7zwFPoRwSzc6QH1wOJWw8Z1Znl2ZXCrVKCGE0hbyx1MRtjqFa38BJMxt8uW0Bm/
 3Va4Sb9724teO9KOEibnh/+P15a3cpREvF0c4R+66liJoK/SnuEdzVE1D8F0HR8/OV
 /GYILjEV8V/ioVVWhk2vIPgzyID6OwfIFWO8dJXwkIUCMW6OMcgYgYsBXaYBrwDOTY
 y7qkKsuhfQHJBSH21o75JYRHzkv2uqiWwA1KBUa/Ga+F40oS+hJ/6eOp13jp+b2B8H
 QgRDF6QCoa8Ag==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=pQkDdn87
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/7] Add PFCP filter
 support
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
Cc: jiri@resnulli.us, wojciech.drewek@intel.com, idosch@nvidia.com,
 jesse.brandeburg@intel.com, Eric Dumazet <edumazet@google.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 michal.swiatkowski@linux.intel.com, netdev@vger.kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 15 Dec 2023 11:11:23 +0100 Alexander Lobakin wrote:
> Ping? :s
> Or should we resubmit?

Can you wait for next merge window instead?
We're getting flooded with patches as everyone seemingly tries to get
their own (i.e. the most important!) work merged before the end of 
the year. The set of PRs from the bitmap tree which Linus decided
not to pull is not empty. So we'd have to go figure out what's exactly
is in that branch we're supposed to pull, and whether it's fine.
It probably is, but you see, this is a problem which can be solved by
waiting, and letting Linus pull it himself. While the 150 patches we're
getting a day now have to be looked at.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
