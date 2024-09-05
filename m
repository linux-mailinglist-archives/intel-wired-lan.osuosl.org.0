Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E4A96CC6C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Sep 2024 03:56:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2DCA881287;
	Thu,  5 Sep 2024 01:56:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O3pDU6pFuRPe; Thu,  5 Sep 2024 01:56:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7D9E8810DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725501372;
	bh=JBVxpL0eWfFvFKln2uh3M67prgVSKm8MUDseW0Y1pXQ=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ckxooL0NZiM+Vj2ooZowSpEc7NRIPjr2ZUj7z2K6wC4WLMyRMHpGwAk+dIjq9U3eu
	 YY5lyGJre6cAIESb5J5J6knD/9KezFHu9J+DsNwbUGuM3CoMrEzKBBPtFqho0qU7Xr
	 qjKSpMC3vcKrTPBK3G69jFXWNKmwt6FCOxpxA0Lo3rl81crid5ZULPOaKzFofKKbdv
	 uHr4XgCk8abZhYOaStjt3s18UNmjrOlaI3e/i2tSu5peT51AB0XiZNHRWxnMF3fs6f
	 MZFWjgiGOmDOPhVwn8OZy+3FSCn4p+otoebZl3yRnodFAGeHKaxdrtcT4uHrLRSgKm
	 QdRtvsdRnCVRQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7D9E8810DE;
	Thu,  5 Sep 2024 01:56:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DBAC51BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 01:56:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C895E40457
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 01:56:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b78atoLRARdn for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Sep 2024 01:56:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7367A40025
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7367A40025
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7367A40025
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 01:56:09 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id B8B365C5831;
 Thu,  5 Sep 2024 01:56:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5DA3FC4CEC2;
 Thu,  5 Sep 2024 01:56:07 +0000 (UTC)
Date: Wed, 4 Sep 2024 18:56:06 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <20240904185606.366ef437@kernel.org>
In-Reply-To: <70576ddc8b7323192c452ee1c66e7a228f7d8b68.1725457317.git.pabeni@redhat.com>
References: <cover.1725457317.git.pabeni@redhat.com>
 <70576ddc8b7323192c452ee1c66e7a228f7d8b68.1725457317.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1725501367;
 bh=ER/YQRenfgFAaIh9sSTZF2sy46HPM/+nUbIjFGXd7kA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=qFvMl4kd53tHu5iZPHxZB9LAADztpL/NyZPPpRKE2EDAJ6kE/i1TNhAbHoYeSYCvQ
 uF0a28+LEgRTOH4LRE2ke3yBcYL00dvHbamZ3i9N788K1onKMP9cwPRizDWPhM1mVn
 hykWggKdjg9lGDCziSyLAG/MHckczx81rah8d2l9lzEJg19JSXMtF9rLhFB7QLqGYJ
 poMk99Njyi2pYvAGWmZQP5biW8sm/V2XmjKX7Cnn1mP8aL5x1ttOvA4XMu7AX65CNo
 xTg6vMV5OhdURkHq7YSswja6ZlZIpgj1VREf9o3LXxwwVQ6fnizXrqWBkAxFpDdu5R
 93Ew5fUtCPwrg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=qFvMl4kd
Subject: Re: [Intel-wired-lan] [PATCH v6 net-next 10/15] net-shapers:
 implement cap validation in the core
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
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 edumazet@google.com, Madhu Chittim <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Donald Hunter <donald.hunter@gmail.com>, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com, Sunil Kovvuri Goutham <sgoutham@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed,  4 Sep 2024 15:53:42 +0200 Paolo Abeni wrote:
> Use the device capabilities to reject invalid attribute values before
> pushing them to the H/W.
> 
> Note that validating the metric explicitly avoids NL_SET_BAD_ATTR()
> usage, to provide unambiguous error messages to the user.
> 
> Validating the nesting requires the knowledge of the new parent for
> the given shaper; as such is a chicken-egg problem: to validate the
> leaf nesting we need to know the node scope, to validate the node
> nesting we need to know the leafs parent scope.
> 
> To break the circular dependency, place the leafs nesting validation
> after the parsing.
> 
> Suggested-by: Jakub Kicinski <kuba@kernel.org>
> Signed-off-by: Paolo Abeni <pabeni@redhat.com>

Reviewed-by: Jakub Kicinski <kuba@kernel.org>
