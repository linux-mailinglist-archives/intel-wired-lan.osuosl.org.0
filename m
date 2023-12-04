Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE07C804102
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Dec 2023 22:32:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 12DA341555;
	Mon,  4 Dec 2023 21:32:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 12DA341555
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701725559;
	bh=CJB3DYj9p/ddSL/C4ZRczjTMFiQvSOoU0L+mMJ/TLWA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AU4jMhsgBZXdS51auVC+JueFt43Paey0wVe5YA7e0q3/b86cbFTFPjAZCEpomnyls
	 BvcCCq6svZi9rWd4xi+mOhRFlQBoUxD+iVDTJeb/HQxW5JXZTam+FFT7kxZyYk1Ilt
	 Jh6ZpTwvXm485WNdeFiZ6LZLF1Ix6QAErq4C9Lh8maXGC30bT68qllPSx3LxdoNugD
	 SYjujR/XEsR9L/jqIwoxEwGrYMpECcVhvc25iWSg8F958uRQme/Pwi83BLPOSiCtwn
	 FRHjZ1xt9YVykwkKGQJrNlZ/SH/4iWlSGa2EfCE2YuMR79VChH2n3nYoldK+ibO5If
	 dFqhCstpO77kQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DMKNB65zRO7w; Mon,  4 Dec 2023 21:32:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B9A5940201;
	Mon,  4 Dec 2023 21:32:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B9A5940201
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 216721BF30E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 21:32:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0135841795
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 21:32:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0135841795
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jm3WtwzCTqYU for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Dec 2023 21:32:31 +0000 (UTC)
Received: from sipsolutions.net (s3.sipsolutions.net
 [IPv6:2a01:4f8:242:246e::2])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 293FF41793
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 21:32:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 293FF41793
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.97) (envelope-from <johannes@sipsolutions.net>)
 id 1rAGYE-0000000FGpo-1Fro; Mon, 04 Dec 2023 22:32:26 +0100
Message-ID: <69c0fa67c2b0930f72e99c19c72fc706627989af.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
To: Marc MERLIN <marc@merlins.org>
Date: Mon, 04 Dec 2023 22:32:25 +0100
In-Reply-To: <20231204212849.GA25864@merlins.org>
References: <20231204200710.40c291e60cea.I2deb5804ef1739a2af307283d320ef7d82456494@changeid>
 <20231204200038.GA9330@merlins.org>
 <a6ac887f7ce8af0235558752d0c781b817f1795a.camel@sipsolutions.net>
 <20231204203622.GB9330@merlins.org>
 <24577c9b8b4d398fe34bd756354c33b80cf67720.camel@sipsolutions.net>
 <20231204205439.GA32680@merlins.org> <20231204212849.GA25864@merlins.org>
User-Agent: Evolution 3.50.1 (3.50.1-1.fc39) 
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
 Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
 Resent-Cc:Resent-Message-ID; bh=7JmWiw2OjGew/L9t8WojbOOKVqJKnGxbMVBwCRVjGDA=; 
 t=1701725551; x=1702935151; b=mChIJu57D94WwqsN5YKWbezoTd6ZadBf3AYYNRZS3wWluK1
 XOyviJek5AAH+OoMlpPbbLT0Z2jKNJ0jb07H0kuTG598rk6jEYFbie9mcMemWjUN4icBwIcT/+Wu4
 3L4L7JpkJklwOQ2CBn4Z11ttvNwnGtpMKQbNX2UVMLuy/JBPiyRQTmzMJCjZeVb9o05Fr6BmgFWfI
 TCW+hzVmasHpoxfBZsNkISt9r+OtOH04LL+A5rd+906VKRgU/x6fSSggeTUQEC1hUMPj8DLqeIpxb
 ZyqbNiJANnUQDXmD+XJXL4FVu74t0rcRltS4gQCYmqT+e8yp7zMKIfXK3QAK34Vg==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=sipsolutions.net header.i=@sipsolutions.net
 header.a=rsa-sha256 header.s=mail header.b=mChIJu57
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2023-12-04 at 13:28 -0800, Marc MERLIN wrote:
> 
> Where do you we go from here? Is the patch obviously good/safe, or do we
> need to narrow things down/test some more?
> 

Well, I was hoping that

 (a) ethtool folks / Jakub would comment if this makes sense, but I
     don't see a good reason to do things the other way around (other
     than "code is simpler"); and

 (b) Intel wired folks could help out with getting the patch across the
     finish line, seeing how their driver needs it :) I think the dev
     get/put needs to use the newer API, but I didn't immediately see
     how that works locally in a function without an allocated tracker

johannes
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
