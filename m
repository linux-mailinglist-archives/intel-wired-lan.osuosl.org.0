Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 07057AEE444
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Jun 2025 18:22:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 57FC682553;
	Mon, 30 Jun 2025 16:22:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Oocq9eV2x2AJ; Mon, 30 Jun 2025 16:22:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D054C820B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751300551;
	bh=Xj4HrK43mzzw9CapTXCc8Jkw8HTk7f0ksbo1CWVccCY=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RzXw4MToTov0qHlf6tHxfc8jpwU3XsUfKhZ3xOWr+4RMDdAnPLdtkSaRxtcu/o202
	 /myOIGiHi6+JnPwyLYu3uf+YEkusuMjFNiLJZ/teD0f2sJ8MYr9F0GVTV5F35efb8h
	 zfunigJmr2OQWAcJSZnwCjRmSLMRw51v3TF7b4uUpQI420Njk2mjnK2ph1N04DHl2V
	 cd55jeJZuEwMeb4T554/+K9Ccyk1sXL6rsOEsY8zSwo9Js8CMpb23xsmtPNz7LsaQk
	 b6GiZe9hd47algBe4jZyEN2/bPNU1aI0J9EMSkKCQFGc9qD3KnIu9oDafnH8pkT19V
	 RG5GyfkX04XUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D054C820B0;
	Mon, 30 Jun 2025 16:22:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id AF68A1C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 16:22:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A0F7181FA1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 16:22:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ViykP4D5Yz1M for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Jun 2025 16:22:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A8C4581EE1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A8C4581EE1
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A8C4581EE1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 16:22:28 +0000 (UTC)
Received: from [192.168.0.192] (ip5f5af7fe.dynamic.kabel-deutschland.de
 [95.90.247.254])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 96C1861E647AC;
 Mon, 30 Jun 2025 18:22:11 +0200 (CEST)
Message-ID: <c6444d15-bc20-41a8-9230-9bb266cb2ac6@molgen.mpg.de>
Date: Mon, 30 Jun 2025 18:22:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Joshua A Hay <joshua.a.hay@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20250625161156.338777-1-joshua.a.hay@intel.com>
 <c4f80a35-c92b-4989-8c63-6289463a170c@molgen.mpg.de>
 <DM4PR11MB65024CB6CF4ED7302FDB9D58D446A@DM4PR11MB6502.namprd11.prod.outlook.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <DM4PR11MB65024CB6CF4ED7302FDB9D58D446A@DM4PR11MB6502.namprd11.prod.outlook.com>
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

Dear Josh,


Am 30.06.25 um 18:08 schrieb Hay, Joshua A:

>> Am 25.06.25 um 18:11 schrieb Joshua Hay:
>>> This series fixes a stability issue in the flow scheduling Tx send/clean
>>> path that results in a Tx timeout.
>>>
>>> The existing guardrails in the Tx path were not sufficient to prevent
>>> the driver from reusing completion tags that were still in flight (held
>>> by the HW).  This collision would cause the driver to erroneously clean
>>> the wrong packet thus leaving the descriptor ring in a bad state.
>>>
>>> The main point of this refactor is replace the flow scheduling buffer
>>
>> … to replace …?
> 
> Thanks, will fix in v2
> 
>>> ring with a large pool/array of buffers.  The completion tag then simply
>>> is the index into this array.  The driver tracks the free tags and pulls
>>> the next free one from a refillq.  The cleaning routines simply use the
>>> completion tag from the completion descriptor to index into the array to
>>> quickly find the buffers to clean.
>>>
>>> All of the code to support the refactor is added first to ensure traffic
>>> still passes with each patch.  The final patch then removes all of the
>>> obsolete stashing code.
>>
>> Do you have reproducers for the issue?
> 
> This issue cannot be reproduced without the customer specific device
> configuration, but it can impact any traffic once in place.

Interesting. Then it’d be great if you could describe that setup in more 
detail.

>>> Joshua Hay (5):
>>>     idpf: add support for Tx refillqs in flow scheduling mode
>>>     idpf: improve when to set RE bit logic
>>>     idpf: replace flow scheduling buffer ring with buffer pool
>>>     idpf: stop Tx if there are insufficient buffer resources
>>>     idpf: remove obsolete stashing code
>>>
>>>    .../ethernet/intel/idpf/idpf_singleq_txrx.c   |   6 +-
>>>    drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 626 ++++++------------
>>>    drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  76 +--
>>>    3 files changed, 239 insertions(+), 469 deletions(-)


Kind regards,

Paul
