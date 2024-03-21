Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 173CF881B83
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Mar 2024 04:29:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C54B81EE9;
	Thu, 21 Mar 2024 03:29:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v60E07qneg0d; Thu, 21 Mar 2024 03:29:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B170C81EA9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710991764;
	bh=JH7eRe4CLXoM7ZMe4KQBz2hc/x0tXXFjT19GCfgRCdY=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HCBaMRzpBcmSQ1gAW15qPvKvCfwSMwzv21+JITv12oXyngNWH5dokTv1n4FvsLdm0
	 ZyP4w8rHl4POIiDvD+BIOi+IudBY82/zK1l6bFjEkznXQn/NOsIqmPln2//hXpF3jn
	 TsTxSgMRPf17vTvNURcgoiEMVylMap+fZDqQtIRyk3cBEpxdC99nMAKUUBDg4L9KUJ
	 8s2j36d4y+HTZc+HGHiWIwG7cOgAyOFEPAIdtP1/f6BYhDGb5swxdMR8VLTSIimI1E
	 5A24ChdU6AhDFE8swABO7xQ0wAjCw7nJsR6Aj+hvfq6oypjth0+y733zYYA0TMj4ak
	 pcUFTXGvfodxA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B170C81EA9;
	Thu, 21 Mar 2024 03:29:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CB6D91BF955
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 03:29:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B703D81EAE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 03:29:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k_V0CgT66igq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Mar 2024 03:29:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1FEE081EA9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1FEE081EA9
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1FEE081EA9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 03:29:20 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id A0F3860EC2;
 Thu, 21 Mar 2024 03:29:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79A8CC433F1;
 Thu, 21 Mar 2024 03:29:17 +0000 (UTC)
Date: Wed, 20 Mar 2024 20:29:16 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Dan Carpenter <dan.carpenter@linaro.org>
Message-ID: <20240320202916.2f2bda73@kernel.org>
In-Reply-To: <facf5615-d7ac-4167-b23c-6bab7c123138@moroto.mountain>
References: <77145930-e3df-4e77-a22d-04851cf3a426@moroto.mountain>
 <20240319124317.3c3f16cd@kernel.org>
 <facf5615-d7ac-4167-b23c-6bab7c123138@moroto.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1710991758;
 bh=AndrSsRlqw/W3pe2hOtcA+x3b9aKANapvXbBK9oocR0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=OyeHGcVWPFs5jA4jqo37nPwn0hPr4JaN3Tk9M97jdrF1Ew6O1kaC8D7ZDTAE5Z403
 GDPKM4sMWJUrachr1ZouLRAwbI1VUoef22cCmIzAJNN2bDXSg3VJI2lSqN6f8b3GdY
 iuvnuhitVAge5QJNdD46qatqfWY+7FQeyb+JiFT6fBfqatpoB+k2MKrmbGNP7PeN3y
 QnEea0YPBxvhRQUUy4Yqf2XCOFbXwo0NV/NGGf6uZ4JBDlgpmaunLjgXLCaF0bF1ba
 azYkWxrcD9eL9ImsxJT7eHcQwHE4Bvk1STDgkTmilGmDnFULbc4mZaMXW2pPP2Dn4z
 76vwdGIAeT86w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=OyeHGcVW
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix freeing uninitialized
 pointers
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 20 Mar 2024 08:01:49 +0300 Dan Carpenter wrote:
> > This is just trading one kind of bug for another, and the __free()
> > magic is at a cost of readability.
> > 
> > I think we should ban the use of __free() in all of networking,
> > until / unless it cleanly handles the NULL init case.  
> 
> Free handles the NULL init case, it doesn't handle the uninitialized
> case.  I had previously argued that checkpatch should complain about
> every __free() pointer if the declaration doesn't have an assignment.
> 
> The = NULL assignment is unnecessary if the pointer is assigned to
> something else before the first return, so this might cause "unused
> assignment" warnings?  I don't know if there are any tools which
> complain about that in that situation.  I think probably we should just
> make that an exception and do the checkpatch thing because it's such a
> simple rule to implement.

What I was trying to say is that the __free() thing is supposed to
prevent bugs, and it's not. Even if it was easy to write the matcher
rule, if __free() needs a rule to double check its use - it's failing 
at making it easier to write correct code.

In any case. This is a patch for Intel wired, I'll let Intel folks
decide.
