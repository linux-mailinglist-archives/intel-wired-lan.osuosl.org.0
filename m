Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CBAB07B4211
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 Sep 2023 18:18:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 530174227E;
	Sat, 30 Sep 2023 16:18:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 530174227E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696090684;
	bh=o2tdkBxi52bFGUyOPFnWUjRCOQtWbTopZ3pRwODXo48=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6xA1p5/hAiG5TRLJcDpuSI3hRoMSn9qnUD6DCEjvJ4TvaETtg1otHzsD1UeSG9weH
	 ONz89qplM8EQruEO9+ZAvH9uweK4OpIIIcf5C4somPBk7rURcOW3noWBerHJPVW3o9
	 uLraB8rIpeZBa58F2BV0kBaLe7DkumyNpuHWKqG60j+f1boMGw3VmAQNjSIQWBNCLP
	 2Zq88h5AsYDgRK9gmJ0TaTyb/1VVIN3jXeLZCQQsjEBGDL/xwX4ArFrKQfvgc0/D/D
	 0QpWeRPlDnSJwjL6nD1fqso3kjxTjPVRetwekmeDQEGVGojiCXWzCe3rl5xp/mZ7rc
	 jl3eeF698/C9g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lX-hCqZKTxle; Sat, 30 Sep 2023 16:18:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1417442241;
	Sat, 30 Sep 2023 16:18:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1417442241
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5D86A1BF36F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Sep 2023 16:17:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4414183CDF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Sep 2023 16:17:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4414183CDF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tB9ngsEAGlnB for <intel-wired-lan@lists.osuosl.org>;
 Sat, 30 Sep 2023 16:17:57 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 009E583CC6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Sep 2023 16:17:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 009E583CC6
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id F110ECE1D2F;
 Sat, 30 Sep 2023 16:17:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38E53C433C7;
 Sat, 30 Sep 2023 16:17:50 +0000 (UTC)
Date: Sat, 30 Sep 2023 18:17:48 +0200
From: Simon Horman <horms@kernel.org>
To: Prasad Koya <prasad@arista.com>
Message-ID: <20230930161748.GD92317@kernel.org>
References: <20230922163804.7DDBA2440449@us122.sjc.aristanetworks.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230922163804.7DDBA2440449@us122.sjc.aristanetworks.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1696090672;
 bh=G8gJlihvipQwNDatoTzGrXw1pQtQJJLuIFbWWRkWTR4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=i109Ka1k9hNFTZwtAreSIxEbGGKNtAvtuVcDnKvQlZ+cvgSkF1p+Wm+OTSBWLaXJA
 JGGYpNrLcDGQhbV4zSnNzQOjM3Ont/1VNAyBlNLOiotwitWEd3p73ttQQZKzM84hXF
 foVHqaFw1srxcrxGl1o2SDuNwyUTgRA3+pp9Spr1GHYZGGssYew4uB38J1bRGCLOU2
 +p5lOt9NEG1Oxov+CHxAjN4NJlec6kiq4ok9W+RA0c1X9wzBTZ+Tdye7ePTeH9Ab37
 xafXoKEQ8eXjEnJHYCqmvo3YumPgseLcaqcuAEQvRjAXuA8yjH0Ln1yX1eMio6gO4y
 NjVtlXvJKlTsg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=i109Ka1k
Subject: Re: [Intel-wired-lan] [PATCH] [iwl-net] Revert "igc: set TP bit in
 'supported' and 'advertising' fields of ethtool_link_ksettings"
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
Cc: dumazet@google.com, sasha.neftin@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Sep 22, 2023 at 09:38:04AM -0700, Prasad Koya wrote:
> This reverts commit 9ac3fc2f42e5ffa1e927dcbffb71b15fa81459e2.
> 
> After the command "ethtool -s enps0 speed 100 duplex full autoneg on",
> i.e., advertise only 100Mbps speed to the peer, "ethtool enps0" shows
> advertised speeds as 100Mbps and 2500Mbps. Same behavior is seen
> when changing the speed to 10Mbps or 1000Mbps.
> 
> This applies to I225/226 parts, which only supports copper mode.
> Reverting to original till the ambiguity is resolved.
> 
> Fixes: 9ac3fc2f42e5 ("igc: set TP bit in 'supported' and 
> 'advertising' fields of ethtool_link_ksettings")

nit: I don't think it is correct to linewrap Fixes tags.

> Signed-off-by: Prasad Koya <prasad@arista.com>

...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
