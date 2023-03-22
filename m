Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA92B6C5513
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 20:37:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 490D840496;
	Wed, 22 Mar 2023 19:37:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 490D840496
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679513839;
	bh=62WmKf4NKuN6EJhDHzYBs5GJvGkEHrkAPNHbYap0Me0=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=G0wYLwwVSin6R+sXGbQ31CfZoi5PoS8NYqN5FxLE1dr5Ac42zz4RtZGsfYkmasUfx
	 FVpjZfRVHjyh+VKu6Rc8/yt5Fw6D/uXHfK0Hm46ugnbl7W1Z2xxM5/SkbZ7Za3HcU2
	 SOH3tgwAG71OeTnzAFYTfBaDGUb44z6UnAZxB3wqM6xgE9yRcnjeVSCwIcQj6K1DKs
	 LdPclzQSvTQUeurO0PB7I1cLAxh4Yc6w96OMTJFZ+DfQvKzChrGkV+BTqfWdTf7O32
	 JLyTvgFVjDzsLToSFa42Z323uRq5LVG0LLIdl1+Q6xBH6wOphgWkNt4ihl7vFgT7oy
	 nchvpBbnInwgQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YdJkcy3ZVF0d; Wed, 22 Mar 2023 19:37:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3E80D4037C;
	Wed, 22 Mar 2023 19:37:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3E80D4037C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AA24E1BF3CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 19:37:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8F91F822DD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 19:37:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F91F822DD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0snbj9SFgqDR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 19:37:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4116282258
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4116282258
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 19:37:12 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 6873FB81B97;
 Wed, 22 Mar 2023 19:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB7AEC433EF;
 Wed, 22 Mar 2023 19:37:07 +0000 (UTC)
Date: Wed, 22 Mar 2023 12:37:06 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Piotr Raczynski <piotr.raczynski@intel.com>
Message-ID: <20230322123706.4a787946@kernel.org>
In-Reply-To: <20230322162530.3317238-1-piotr.raczynski@intel.com>
References: <20230322162530.3317238-1-piotr.raczynski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1679513828;
 bh=14HPl/jOpeEXMqjFUNq13TzrYrv7PJ882B71B32xP+I=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=u1nSyXe47Ee3Z17scmvotYh1kj8V8qGimdmYzzuCUNm7B9+gwQs1czsHnOqF3NC1O
 w4gR6G5NsQ62tnwqjeIopQ6dxmTWDKtKQjGTBa3jx9RSucF14sD8lQgU8V6AETIMVg
 I8e6X377Ek4qNMwoKfj3JVyKTHkNDwGknIK6Mw2vQzQFwVpzGA++r1oKOCIqrufTnQ
 9dYzqJJp1I99oIKNxrhrlVEP47fCmCuleF9qASFpPbuDcK9YK4ycbknOG5ca5I1LlS
 EI2PXw0uEo8i+2MJCiACLyHT14RR7SyKV8V4aMF86uohGDlKI4zGErCWUcg0LV/c3G
 ynirPD8Lj2OKA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=u1nSyXe4
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 0/8] ice: support dynamic
 interrupt allocation
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
Cc: michal.swiatkowski@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org,
 shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 22 Mar 2023 17:25:22 +0100 Piotr Raczynski wrote:
> This patchset reimplements MSIX interrupt allocation logic to allow dynamic
> interrupt allocation after MSIX has been initially enabled. This allows
> current and future features to allocate and free interrupts as needed and
> will help to drastically decrease number of initially preallocated
> interrupts (even down to the API hard limit of 1). Although this patchset
> does not change behavior in terms of actual number of allocated interrupts
> during probe, it will be subject to change.

Have you seen the mlx5 patch set? I haven't read in detail but seems
like you're working on the same stuff so could be worth cross-checking
each other's work:

https://lore.kernel.org/all/20230320175144.153187-1-saeed@kernel.org/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
