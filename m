Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B338DCC9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Aug 2019 20:12:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 75D98883A6;
	Wed, 14 Aug 2019 18:12:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8rd9qGlHIMwo; Wed, 14 Aug 2019 18:12:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 99876883C9;
	Wed, 14 Aug 2019 18:12:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D2E4C1BF35A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 18:12:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CAA7F87784
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 18:12:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E1+BqAbeUW9F for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2019 18:12:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail3.candelatech.com (mail2.candelatech.com [208.74.158.173])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4D2BC8773E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 18:12:31 +0000 (UTC)
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id AEC3213C283;
 Wed, 14 Aug 2019 11:12:30 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com AEC3213C283
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1565806350;
 bh=M49r4gRumKV0IOAnzqFbEJE1uWNz/IgbXtTVkXM29dA=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=mII7idlsvKm4/2kCm8nL9zJUgUd6awkk9/34/znsjadYn+Qc1xZYKGdarvteZMWId
 tc3u7jOspTW2BXxCEjM43xrAerlSXx6MB0uaExHf5xjzt6apPsUudotgmTlCbLwxW7
 Qr/XxuXlCzkxeI2HMJ9GG0iy/0A1J0JKrJ3LTqOo=
To: Alexander Duyck <alexander.duyck@gmail.com>
References: <9e598973-0bca-eda1-c5df-9f3ef16bf700@candelatech.com>
 <CAKgT0UfyuDAnY5oHNAtFuBQkqn7NQiCxF9eSD+m+1EkrUOaaHA@mail.gmail.com>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <c8123132-c811-7467-fcf5-b3320961b527@candelatech.com>
Date: Wed, 14 Aug 2019 11:12:30 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAKgT0UfyuDAnY5oHNAtFuBQkqn7NQiCxF9eSD+m+1EkrUOaaHA@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] CMA alloc failed with 6 4-port X710 QAD4 NICs
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
Cc: intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/14/19 10:54 AM, Alexander Duyck wrote:
> On Mon, Aug 12, 2019 at 2:19 PM Ben Greear <greearb@candelatech.com> wrote:
>>
>> Hello,
>>
>> I have a user trying to boot up our 4.20+ kernel with 6 4-port 10G NICs in it.
>>
>> dmesg is full of cma_alloc errors.  I increased CMA space to 32MB, but still no luck.
>>
>> Any idea how much CMA memory is needed for this config?
>>
>> Thanks,
>> Ben
> 
> You are going to need to go much bigger since you have 24 ports. Each
> port can consume several MB of contiguous space due to all the
> dma_alloc_coherent calls. It also depends on the number of queues you
> have enabled on the system as each queue pair will consume 24K of
> contiguous space as well.
> 
> My advise would be to look at increasing it to somewhere in the range
> of 64MB to 128MB.
> 
> Another alternative, assuming that the drivers are still working after
> making a fall-back allocation out of non-CMA space would be to just
> add __GFP_NOWARN to the flags passed to dma_alloc_coherent. That
> should mute the warnings on allocation failures and just fall back to
> the warning provided by the caller.

cma=512M made the warnings go away, but last I heard, the user could not get
link on any of the ports with or without that change.  I'm not sure the root cause of that at this point, possibly it is
cabling or some higher software stack issue.

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
