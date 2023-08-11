Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 63DCC7789DC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Aug 2023 11:31:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EFBCA83942;
	Fri, 11 Aug 2023 09:30:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EFBCA83942
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691746259;
	bh=pb8FENnwtv8xGNIMjsmJYqTPZCrzxPS6YhGsFr918Z8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8x11K+orY7xQyca0I4jf3TJ9SlnOvuBoGuXYapsQ1Mu0gd8k70XG3ZRAIRIaGdiVS
	 D20/+4PSq3Y8BjDWjZjYnx6IzZAY7LCVGOlv4mmxKO/UZ55ef7T0DBS1hXx9cToLpr
	 rJi+poFe+gxWTE8FE1XoYV3Bro5PtyndeAihdgmrNApk396Vyoh12J7pKCKfMZf9DF
	 D8irgau2IoP6lVY5Zp70aAVA3V88/uNbsMi0mkOXkUhqv6xoRYLnPxDTvtgPgMGUvz
	 1cqVuEG9qoa42J3Hwq0JIVlK7l0AsDocldG6ykXHFQPwiiHduQWDatc/LFv+d9ip57
	 VqjEESESkMsZA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jIl79Atowmul; Fri, 11 Aug 2023 09:30:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E9F62821AB;
	Fri, 11 Aug 2023 09:30:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9F62821AB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2B31D1BF336
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 09:30:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AF60D40482
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 09:30:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AF60D40482
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sdpL_fAP72N6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Aug 2023 09:30:51 +0000 (UTC)
Received: from out-117.mta0.migadu.com (out-117.mta0.migadu.com
 [IPv6:2001:41d0:1004:224b::75])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 482EE400D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 09:30:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 482EE400D1
Message-ID: <8d52ab61-e532-0ef8-4227-ea1ab469f4cb@linux.dev>
Date: Fri, 11 Aug 2023 10:30:43 +0100
MIME-Version: 1.0
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>
References: <20230809214027.556192-1-vadim.fedorenko@linux.dev>
 <20230809214027.556192-7-vadim.fedorenko@linux.dev>
 <20230810192102.2932d58f@kernel.org>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20230810192102.2932d58f@kernel.org>
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1691746247;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JZUyYZ+8XJKTUbZKK1DdFQCGq8cNFYsFwnq8YwkTDfs=;
 b=GxU9QjIRAA/RVyaUj1LaqCJKMOW/MhFBn7HuPQpEBaRlc0/os4PZM4k8PctvTdV7pEAoit
 sd1dFvUpsQz3nw3NVmf7QCM1FNKzCmMtDo//9eCKoYRlJZ/7qlzkuUvSisYCAl8riGEODZ
 YMhbjwuujNIc9Px/jlE4XGJ9iWNOP5U=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=GxU9QjIR
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 6/9] ice: add admin
 commands to access cgu configuration
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
Cc: Jiri Pirko <jiri@resnulli.us>, Bart Van Assche <bvanassche@acm.org>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-arm-kernel@lists.infradead.org,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 linux-clk@vger.kernel.org, Milena Olech <milena.olech@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/08/2023 03:21, Jakub Kicinski wrote:
> On Wed,  9 Aug 2023 22:40:24 +0100 Vadim Fedorenko wrote:
>> From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>
>> Add firmware admin command to access clock generation unit
>> configuration, it is required to enable Extended PTP and SyncE features
>> in the driver.
>> Add definitions of possible hardware variations of input and output pins
>> related to clock generation unit and functions to access the data.
> 
> Doesn't build, but hold off a little with reposting, please hopefully
> I'll have more time tomorrow to review.

Yeah, we've found the issue already and Arkadiusz has prepared a patch
to fix it. I can do the repost once you are ok to review.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
