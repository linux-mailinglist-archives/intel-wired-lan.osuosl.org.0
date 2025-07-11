Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 309D2B02638
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Jul 2025 23:15:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C628140BFB;
	Fri, 11 Jul 2025 21:15:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UscMNZQVg-JW; Fri, 11 Jul 2025 21:15:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 38EFF409F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752268511;
	bh=/T5kLqgd7uqnOpcrVhsYYXvXkpLivuQDXF6SI/UNBPU=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qawuNNOlq8pumivNQlk8ioDuVKzT7V/MuNPpR+KpOgH4iWRmBx7srinGpPhNd/WCB
	 QWM9Cdw1Pso92UfAdpBB4VlZedc0AZH1jfpmwNLCd7L7Lh9Wbfy74FdclgCONYVDew
	 iJ4WPo7yVjqQ1hhGQeOr/MLS0afTV9nAxs2fEKTFdtJZurKfmboLU+3+mbcJ5RYkMm
	 s9iIYuKs+omJmq14tOUmq/LwC8X2ldt8o1ejKmwLQqaD/QAuhXjCTadnYwGZDe9EEM
	 7gMnpf1Nljt0Uckvjyqcx8AkR2Cx+f0swmxbTmjgHdXl3dsFJoLbBxldg+KcFkx25C
	 yNKWr176jtiuQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 38EFF409F3;
	Fri, 11 Jul 2025 21:15:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 67E40119
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jul 2025 21:15:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4E1978219A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jul 2025 21:15:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DCBS4SjYvz0e for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Jul 2025 21:15:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 831D4820D9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 831D4820D9
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 831D4820D9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jul 2025 21:15:07 +0000 (UTC)
Received: from [192.168.0.192] (ip5f5af13e.dynamic.kabel-deutschland.de
 [95.90.241.62])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 5176561E64841;
 Fri, 11 Jul 2025 23:14:51 +0200 (CEST)
Message-ID: <acc5fe70-ecb4-404c-9439-ff3181118983@molgen.mpg.de>
Date: Fri, 11 Jul 2025 23:14:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Brian Vazquez <brianvv@google.com>
Cc: Joshua A Hay <joshua.a.hay@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
References: <20250625161156.338777-1-joshua.a.hay@intel.com>
 <c4f80a35-c92b-4989-8c63-6289463a170c@molgen.mpg.de>
 <DM4PR11MB65024CB6CF4ED7302FDB9D58D446A@DM4PR11MB6502.namprd11.prod.outlook.com>
 <c6444d15-bc20-41a8-9230-9bb266cb2ac6@molgen.mpg.de>
 <yhluj2ljtv4qoq65zfqoagwdwshokfmzylf52numl26skxqfp4@k3dm7jrimuis>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <yhluj2ljtv4qoq65zfqoagwdwshokfmzylf52numl26skxqfp4@k3dm7jrimuis>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH net 0/5] idpf: replace Tx flow
 scheduling buffer ring with buffer pool
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Brian,


Thank you for your reply.

Am 07.07.25 um 16:43 schrieb Brian Vazquez:
> O Mon, Jun 30, 2025 at 06:22:11PM +0200, Paul Menzel wrote:

>> Am 30.06.25 um 18:08 schrieb Hay, Joshua A:
>>
>>>> Am 25.06.25 um 18:11 schrieb Joshua Hay:
>>>>> This series fixes a stability issue in the flow scheduling Tx send/clean
>>>>> path that results in a Tx timeout.
>>>>>
>>>>> The existing guardrails in the Tx path were not sufficient to prevent
>>>>> the driver from reusing completion tags that were still in flight (held
>>>>> by the HW).  This collision would cause the driver to erroneously clean
>>>>> the wrong packet thus leaving the descriptor ring in a bad state.
>>>>>
>>>>> The main point of this refactor is replace the flow scheduling buffer
>>>>
>>>> … to replace …?
>>>
>>> Thanks, will fix in v2
>>>
>>>>> ring with a large pool/array of buffers.  The completion tag then simply
>>>>> is the index into this array.  The driver tracks the free tags and pulls
>>>>> the next free one from a refillq.  The cleaning routines simply use the
>>>>> completion tag from the completion descriptor to index into the array to
>>>>> quickly find the buffers to clean.
>>>>>
>>>>> All of the code to support the refactor is added first to ensure traffic
>>>>> still passes with each patch.  The final patch then removes all of the
>>>>> obsolete stashing code.
>>>>
>>>> Do you have reproducers for the issue?
>>>
>>> This issue cannot be reproduced without the customer specific device
>>> configuration, but it can impact any traffic once in place.
>>
>> Interesting. Then it’d be great if you could describe that setup in more
>> detail.

> The hardware can process packets and return completions out of order;
> this depends on HW configuration that is difficult to replicate.
> 
> To match completions with packets, each packet with pending completions
> must be associated to a unique ID.  The previous code would occasionally
> reassigned the same ID to multiple pending packets, resulting in
> resource leaks and eventually panics.

Thank you for describing the problem again. Too bad it’s not easily 
reproducible.

> The new code uses a much simpler data structure to assign IDs that
> is immune to duplicate assignment, and also much more efficient at
> runtime.

Maybe that could be added to the commit message too. How can the 
efficiency claim be verified?

>>>>> Joshua Hay (5):
>>>>>      idpf: add support for Tx refillqs in flow scheduling mode
>>>>>      idpf: improve when to set RE bit logic
>>>>>      idpf: replace flow scheduling buffer ring with buffer pool
>>>>>      idpf: stop Tx if there are insufficient buffer resources
>>>>>      idpf: remove obsolete stashing code
>>>>>
>>>>>     .../ethernet/intel/idpf/idpf_singleq_txrx.c   |   6 +-
>>>>>     drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 626 ++++++------------
>>>>>     drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  76 +--
>>>>>     3 files changed, 239 insertions(+), 469 deletions(-)

Kind regards,

Paul
