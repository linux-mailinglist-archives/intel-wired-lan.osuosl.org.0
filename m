Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7170D7BBAE9
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Oct 2023 16:55:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E50AF83BED;
	Fri,  6 Oct 2023 14:55:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E50AF83BED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696604148;
	bh=Gswzq0cG6GOStI0MCnwhmS+dNXcahDKTBfKi1LPdLSk=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qlRTgxbZKuO5Rab4z/tyjHnlS1aF7qf6NtHO+6jNgrWNM6+S9FBNitHXSkBCQF5Qz
	 jYoGteQ2nwbnrAkDknjRmgHqxmKOnLts91r4fcqlBjyxTmYXfLG115XRl4cfVreHSO
	 JzLEYhy/N+L5C3jOC6EBAPg72lYvR1zNx/BZfELoafyi+74WbFNDM2GP9mrNmYuPYv
	 YZ331ePM4nh3a6L/3TA9Jyez8IFBJZ+/JZyLBMPQrhbwh5RkOeRTlGYDIWKRyJSa9k
	 SEaTiqkot/9fAVl5ePw/jTEm0A+Fquo+z6yW3Ca9YK+DRHo1co7w6H6vTEzzgq5duO
	 8H1+fPb0kP4Sg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2b_9vaV-d45z; Fri,  6 Oct 2023 14:55:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8166382779;
	Fri,  6 Oct 2023 14:55:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8166382779
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 049821BF34F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 14:55:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CD30140C10
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 14:55:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD30140C10
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sr8d_5KIc048 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Oct 2023 14:55:40 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C177C40184
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 14:55:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C177C40184
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id DCFC3B829A1;
 Fri,  6 Oct 2023 14:55:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E078AC433C8;
 Fri,  6 Oct 2023 14:55:36 +0000 (UTC)
Date: Fri, 6 Oct 2023 07:55:36 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <20231006075536.3b21582e@kernel.org>
In-Reply-To: <ZR/9yCVakCrDbBww@nanopsycho>
References: <20231006114101.1608796-1-arkadiusz.kubalewski@intel.com>
 <20231006114101.1608796-3-arkadiusz.kubalewski@intel.com>
 <ZR/9yCVakCrDbBww@nanopsycho>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1696604137;
 bh=escjTaAkihSGCwsnxPhJNWcVLi3MOtJXB2WfVZLU/AI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Xjq91hMUaSUj8yHtoYoNfxZsXwJMtqvlTupffCdR2YqZrTI02mHmFywx6WT36rqAR
 XrYQ8/ALEPGkvO0a61fV+WztHkKKKl+zgJrQxl7eIWRNgTE5c7XvFB/QQXK5jt0QYM
 nf075SJZMFtTd4ckmPb9JIU+0EifqUWsTni/VUCtI2wT5a0NEGIPm993UgSnbD+Dzg
 z9lfKhDs5GWxmz0AbJjzYDxDaMdW4ERn/eeRZPcH3Qr2QwXlBwAXN4otiY4K4TJ/DK
 uEDxEvs+/GxE+LHO3vPhhAiTXbqmENV3cFz4on9f3Ry1BnyTQ7EcskuZQr5UUDa0c5
 1XFU4+/wjFSAg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Xjq91hMU
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/5] dpll: spec: add
 support for pin-dpll signal phase offset/adjust
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
Cc: vadim.fedorenko@linux.dev, corbet@lwn.net, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 6 Oct 2023 14:30:00 +0200 Jiri Pirko wrote:
> >+version: 2  
> 
> I'm confused. Didn't you say you'll remove this? If not, my question
> from v1 still stands.

Perhaps we should dis-allow setting version in non-genetlink-legacy
specs? I thought it may be a useful thing to someone, at some point,
but so far the scoreboard is: legit uses: 0, confused uses: 1 :S

Thoughts?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
