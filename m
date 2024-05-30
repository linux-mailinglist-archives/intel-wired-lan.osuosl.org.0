Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A90C88D517C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 May 2024 19:51:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1DCF84198F;
	Thu, 30 May 2024 17:51:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AlbDPvRQFSEu; Thu, 30 May 2024 17:51:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E88DD4198D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717091469;
	bh=G9zvrFKKudL7vj4TTxEJqHlgYPgNcGxHpMrRef56wJs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0m15WiQUiT2U/Rr4/RuacHkWs/9d9C+yMttGlvWcNjUvpse0h0rnb+y7vceRjg5gp
	 vUaQ1u8A/20iOFJQdwidnCyTNA4wgmHx8dagwrIG5e9NCsc8rF0UumY1ASs3uKJB/X
	 /JeiRH+IByO1bHrHRfkUdX3LkrHmAPaMl4b26IJfPIdmJURC9gqSxwouq+2dCjFKr1
	 lBWrJHF0CHyCDebSuwrafhgrBwyQXuang4vdEcEcZqROJSsSfPtd+PjYItMuHU4AhH
	 h+mpytaVvJg1dMLDugieAeaG0P77gM+hGVRACyYel2G0Z5zJdlhf8Ch5BAM+hZPlL7
	 a1BZygmZvUoHw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E88DD4198D;
	Thu, 30 May 2024 17:51:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9873C1D45C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 17:51:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 82E33404B1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 17:51:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vQnUfZC_lC4L for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 May 2024 17:51:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=217.140.110.172;
 helo=foss.arm.com; envelope-from=robin.murphy@arm.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 14B46404A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 14B46404A0
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by smtp2.osuosl.org (Postfix) with ESMTP id 14B46404A0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 17:51:02 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 546CB1424;
 Thu, 30 May 2024 10:51:26 -0700 (PDT)
Received: from [10.1.196.40] (e121345-lin.cambridge.arm.com [10.1.196.40])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B93ED3F641;
 Thu, 30 May 2024 10:51:00 -0700 (PDT)
Message-ID: <b6632140-f2b0-40db-9d1e-2486ddc5810b@arm.com>
Date: Thu, 30 May 2024 18:50:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Yury Norov <yury.norov@gmail.com>
References: <20240327152358.2368467-1-aleksander.lobakin@intel.com>
 <20240327152358.2368467-14-aleksander.lobakin@intel.com>
 <5a18f5ac-4e9a-4baf-b720-98eac7b6792f@arm.com>
 <ZlizL6d1_ePq-eKs@yury-ThinkPad>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <ZlizL6d1_ePq-eKs@yury-ThinkPad>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=arm.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 13/21] bitmap: make
 bitmap_{get, set}_value8() use bitmap_{read, write}()
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Alexander Potapenko <glider@google.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 30/05/2024 6:11 pm, Yury Norov wrote:
> On Wed, May 29, 2024 at 04:12:25PM +0100, Robin Murphy wrote:
>> Hi Alexander,
>>
>> On 27/03/2024 3:23 pm, Alexander Lobakin wrote:
>>> Now that we have generic bitmap_read() and bitmap_write(), which are
>>> inline and try to take care of non-bound-crossing and aligned cases
>>> to keep them optimized, collapse bitmap_{get,set}_value8() into
>>> simple wrappers around the former ones.
>>> bloat-o-meter shows no difference in vmlinux and -2 bytes for
>>> gpio-pca953x.ko, which says the optimization didn't suffer due to
>>> that change. The converted helpers have the value width embedded
>>> and always compile-time constant and that helps a lot.
>>
>> This change appears to have introduced a build failure for me on arm64
>> (with GCC 9.4.0 from Ubuntu 20.04.02) - reverting b44759705f7d makes
>> these errors go away again:
>>
>> In file included from drivers/gpio/gpio-pca953x.c:12:
>> drivers/gpio/gpio-pca953x.c: In function ‘pca953x_probe’:
>> ./include/linux/bitmap.h:799:17: error: array subscript [1, 1024] is outside array bounds of ‘long unsigned int[1]’ [-Werror=array-bounds]
>>    799 |  map[index + 1] &= BITMAP_FIRST_WORD_MASK(start + nbits);
>>        |                 ^~
>> In file included from ./include/linux/atomic.h:5,
>>                   from drivers/gpio/gpio-pca953x.c:11:
>> drivers/gpio/gpio-pca953x.c:1015:17: note: while referencing ‘val’
>>   1015 |  DECLARE_BITMAP(val, MAX_LINE);
>>        |                 ^~~
>> ./include/linux/types.h:11:16: note: in definition of macro ‘DECLARE_BITMAP’
>>     11 |  unsigned long name[BITS_TO_LONGS(bits)]
>>        |                ^~~~
>> In file included from drivers/gpio/gpio-pca953x.c:12:
>> ./include/linux/bitmap.h:800:17: error: array subscript [1, 1024] is outside array bounds of ‘long unsigned int[1]’ [-Werror=array-bounds]
>>    800 |  map[index + 1] |= (value >> space);
>>        |  ~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
>> In file included from ./include/linux/atomic.h:5,
>>                   from drivers/gpio/gpio-pca953x.c:11:
>> drivers/gpio/gpio-pca953x.c:1015:17: note: while referencing ‘val’
>>   1015 |  DECLARE_BITMAP(val, MAX_LINE);
>>        |                 ^~~
>> ./include/linux/types.h:11:16: note: in definition of macro ‘DECLARE_BITMAP’
>>     11 |  unsigned long name[BITS_TO_LONGS(bits)]
>>        |                ^~~~
>>
>> I've not dug further since I don't have any interest in the pca953x
>> driver - it just happened to be enabled in my config, so for now I've
>> turned it off. However I couldn't obviously see any other reports of
>> this, so here it is.
> 
> It's a compiler false-positive. The straightforward fix is to disable the warning
> For gcc9+, and it's in Andrew Morton's tree alrady. but there's some discussion
> ongoing on how it should be mitigated properlu:
> 
> https://lore.kernel.org/all/0ab2702f-8245-4f02-beb7-dcc7d79d5416@app.fastmail.com/T/

Ah, great! Guess I really should have scrolled further down my lore 
search results - I assumed I was looking for any other reports of a 
recent regression in mainline, not ones from 6 months ago :)

Cheers,
Robin.
