Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0364C61A03B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Nov 2022 19:47:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D4D1541992;
	Fri,  4 Nov 2022 18:47:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D4D1541992
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667587664;
	bh=dGV78sWcu6KQNkg2KZGJNnIFD5Z9fpOSFTD9SfL+5Zw=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zeFCXKKJuMxMn7s8xothL/RrV0+G6kvWlp2TcLbXZ3jGrRqj+RoFh3lWGrc/D14jD
	 z624VYrDWjB7UpMsqzV4V3QF6PpoxTWvBhzXVKLRWSGnLJ8UyPYQaEs7aQdSjX+lVe
	 iUnOpRzMLqQFvWGuuxefACYZ3IMuzawklwZU/6eDHJ/dpdQ43STHVSAEdG/6eZjHY/
	 ZNdG45Ou5Zxwyb1qEaCthhBIPD3GhynDUQHWgkN7M+Bz1ExTTSOTq9Ta6kaRU1V4XC
	 1MuBz0ALRvn0kKJBJ/SlUhcnzKgvEXcwqrDs5mGNY8G5/F9Eq3JTpo9zUSdfF7ZEZJ
	 T2I4HOs49VW6g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bQjRc1yUEb9F; Fri,  4 Nov 2022 18:47:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9456A41990;
	Fri,  4 Nov 2022 18:47:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9456A41990
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 830F71BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 18:47:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6631B403CA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 18:47:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6631B403CA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n6aXYOww0pNR for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Nov 2022 18:47:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 86F474011F
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 86F474011F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 18:47:37 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 93AD1CE2D8B;
 Fri,  4 Nov 2022 18:47:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7088FC433C1;
 Fri,  4 Nov 2022 18:47:31 +0000 (UTC)
Date: Fri, 4 Nov 2022 11:47:30 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <20221104114730.42294e1c@kernel.org>
In-Reply-To: <003bc385-dc14-12ba-d3d6-53de3712a5dc@intel.com>
References: <20221031114456.10482-1-jirislaby@kernel.org>
 <20221102204110.26a6f021@kernel.org>
 <bf584d22-8aca-3867-5e3a-489d62a61929@kernel.org>
 <003bc385-dc14-12ba-d3d6-53de3712a5dc@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1667587651;
 bh=FCVLnWzagH7Ltd74TWHda9yHbM/ThxqIP+R6QjDXusQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=K8hlD+njx6G0TqbVm5Fth4CASD4xRSsQn3RzlPzp94KN29oCnPq1QW9c+GhArw0lr
 IQV8gpSUILgpCglcGFRxTTIEVu1IfaPnMuRSqcLulzeSRZBwyFfxm5DPY3KkKH/1XE
 iSDtWmLg+4zjj/QSfMgcNWeO3kXacE7WifGznlQF/rfapUXZUCNb5sTi8cpbbuhm8u
 HDBnUcSH2d2i2GM6C12emCculNjc1Ze801WOqR9G0RSVwKLF9LR4+kmtJKjfLRjvNe
 JlJHOrX1NojuKHc1moNVg0FzATcdR3XD0Y6vUNrtrNaoZcn0EO03RExhAOesjgH+tw
 83q/IgxOqpz1w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=K8hlD+nj
Subject: Re: [Intel-wired-lan] [PATCH] i40e (gcc13): synchronize
 allocate/free functions return type & values
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
Cc: Jiri Slaby <jirislaby@kernel.org>, linux-kernel@vger.kernel.org, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, Martin Liska <mliska@suse.cz>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 4 Nov 2022 11:33:07 -0700 Tony Nguyen wrote:
> As Jiri mentioned, this is propagated up throughout the driver. We could 
> change this function to return int but all the callers would then need 
> to convert these errors to i40e_status to propagate. This doesn't really 
> gain much other than having this function return int. To adjust the 
> entire call chain is going to take more work. As this is resolving a 
> valid warning and returning what is currently expected, what are your 
> thoughts on taking this now to resolve the issue and our i40e team will 
> take the work on to convert the functions to use the standard errnos?

My thoughts on your OS abstraction layers should be pretty evident.
If anything I'd like to be more vigilant about less flagrant cases.

I don't think this is particularly difficult, let's patch it up
best we can without letting the "status" usage grow.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
