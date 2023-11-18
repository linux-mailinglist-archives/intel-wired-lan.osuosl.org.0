Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9A67F0139
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 Nov 2023 17:49:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B1E4E418CD;
	Sat, 18 Nov 2023 16:48:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B1E4E418CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700326139;
	bh=hMMCKFqfAeixFljJTVWx6V6rjJ3ARkdkKCMdEBOpSS0=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LyzJ086gQPnVzdyBq1vzM67GpIqJUYum57N12bBMZN+v6H+5piE2D1+Y2XRvrsm+s
	 rCYvbHPk89/cDZqrePZRzArJZpSNa41SObNWxPn0ucsX0sEx2T38mAy430GUo2FpNq
	 kWd1UDb2mtGuZ2Bwsx/o0tSKonNIRCtVKiEBAocsJkPW7uMfxSESpx4joCOUYtbTCV
	 ETTZ0JaV3mWe3Y8kOUthlgtqRIV4AeVbiZea5MDUc1PIMu0R1hquVKr6v8WAqzLHRL
	 1PAYBXk9qLKSES+90DueT3riR7B/Oqjsp59sEWyPNQQ5TNKTgYv4oez7cpQy02BDDD
	 NN5LyJEfAL5+g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZgEQlxfpEBLO; Sat, 18 Nov 2023 16:48:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7D9814005E;
	Sat, 18 Nov 2023 16:48:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D9814005E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4C7291BF2F4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Nov 2023 16:48:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2367C82046
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Nov 2023 16:48:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2367C82046
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9lEfgmU-KR6s for <intel-wired-lan@lists.osuosl.org>;
 Sat, 18 Nov 2023 16:48:52 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CECCA82041
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Nov 2023 16:48:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CECCA82041
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 69C2CCE1272;
 Sat, 18 Nov 2023 16:48:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00C4CC433C7;
 Sat, 18 Nov 2023 16:48:44 +0000 (UTC)
Date: Sat, 18 Nov 2023 08:48:43 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: "Zhang, Xuejun" <xuejun.zhang@intel.com>
Message-ID: <20231118084843.70c344d9@kernel.org>
In-Reply-To: <bdb0137a-b735-41d9-9fea-38b238db0305@intel.com>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230822034003.31628-1-wenjun1.wu@intel.com>
 <ZORRzEBcUDEjMniz@nanopsycho> <20230822081255.7a36fa4d@kernel.org>
 <ZOTVkXWCLY88YfjV@nanopsycho>
 <0893327b-1c84-7c25-d10c-1cc93595825a@intel.com>
 <ZOcBEt59zHW9qHhT@nanopsycho>
 <5aed9b87-28f8-f0b0-67c4-346e1d8f762c@intel.com>
 <bdb0137a-b735-41d9-9fea-38b238db0305@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1700326125;
 bh=xLfVPVYs3IoAhH1xZoZKLq66qwEnEdYvEXxeOi9SulY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=W2YIPmx3NSZ0gmgghABBQFxchX5ZCZ1L7ZXw33F1ntm/FevkIDWsby44/yKBExJjV
 wEqF6rdoNRT7PmhxsoGccMnxeGXbccDjnm4yXV1/yysoUnW3jIkEUdg4nQcNJmHTTv
 5jfG8uLmH7zgUQm6IQP+Qgl8K9tkJtXCQI+3dDZf9up+p4ko/9cQbVZguSfJp76+Lk
 3+472ZxGq1eYpr7bcRrG4+VXu6sF+A90nDg79KaaE42e7h8+3OPqIn6+Hf2WrQnIuI
 Ozecj8XzJQAsrXxSlEKIZLMmnttJB5NEYw0AzTCMFz5bvLyl0+auxQ7F/eP0XqhJqK
 G2+8VjjSr4hmw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=W2YIPmx3
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/5] iavf: Add devlink and
 devlink rate support'
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
Cc: Jiri Pirko <jiri@resnulli.us>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>, netdev@vger.kernel.org,
 maxtram95@gmail.com, "Chittim, Madhu" <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, qi.z.zhang@intel.com,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 Wenjun Wu <wenjun1.wu@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 16 Nov 2023 21:52:49 -0800 Zhang, Xuejun wrote:
> Thanks for looking into our last patch with devlink API. Really 
> appreciate your candid review.
> 
> Following your suggestion, we have looked into 3 tc offload options to 
> support queue rate limiting
> 
> #1 mq + matchall + police
> 
> #2 mq + tbf

You can extend mqprio, too, if you wanted.

> #3 htb
> 
> all 3 tc offload options require some level of tc extensions to support 
> VF tx queue rate limiting (tx_maxrate & tx_minrate)
> 
> htb offload requires minimal tc changes or no change with similar change 
> done @ driver (we can share patch for review).
> 
> After discussing with Maxim Mikityanskiy( 
> https://lore.kernel.org/netdev/54a7dd27-a612-46f1-80dd-b43e28f8e4ce@intel.com/ 
> ), looks like sysfs interface with tx_minrate extension could be the 
> option we can take.
> 
> Look forward your opinion & guidance. Thanks for your time!

My least favorite thing to do is to configure the same piece of silicon
with 4 different SW interfaces. It's okay if we have 4 different uAPIs
(user level APIs) but the driver should not be exposed to all these
options.

I'm saying 4 but really I can think of 6 ways of setting maxrate :(

IMHO we need to be a bit more realistic about the notion of "offloading
the SW thing" for qdiscs specifically. Normally we offload SW constructs
to have a fallback and have a clear definition of functionality.
I bet most data-centers will use BPF+FQ these days, so the "fallback"
argument does not apply. And the "clear definition" when it comes to
basic rate limiting is.. moot.

Besides we already have mqprio, sysfs maxrate, sriov ndo, devlink rate,
none of which have SW fallback.

So since you asked for my opinion - my opinion is that step 1 is to
create a common representation of what we already have and feed it
to the drivers via a single interface. I could just be taking sysfs
maxrate and feeding it to the driver via the devlink rate interface.
If we have the right internals I give 0 cares about what uAPI you pick.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
