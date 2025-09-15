Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD4EB575BB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Sep 2025 12:12:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 358DF6F8F1;
	Mon, 15 Sep 2025 10:12:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZH00HlNNTELz; Mon, 15 Sep 2025 10:12:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ADF126F8E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757931141;
	bh=S1AtjpxdHDknlPBOsm9qAIYwzSA+5lc3fAGRaoo5YJs=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0F6d+FXvRedByt6y+YVspM2CJYIdcUpd6mJDqyerxy19W9hTRZ1fnnmANCPM1wCx3
	 JDT6iDvYcoCkeJw77V0E9cd26KjFFyYcoz1H9si5+szgy8jNDtujTmQly9fURurmWe
	 dgqg8im3X59duUSXvjvNK54y5/Gep8+5aBVlKw0Zy8ouRHXaBT9WphcxGt/K8mUD0Y
	 5EUwqUwNhCukkgEXSZYlpaTM6O+gXB3qQAYpPZzxxzDjv7Eh4ph3QY5seYpFlzkiO0
	 cW30VsrUrokPt+1+Y6OlxUG0hjyEkDFiHSFhaYmksp92DxMMqMgu1kfFWTMmUO+uOG
	 poBWSjeY6iGGw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id ADF126F8E4;
	Mon, 15 Sep 2025 10:12:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0394612D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 10:12:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E975284A48
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 10:12:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LDhhhBI1VrSA for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Sep 2025 10:12:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AD09983EE8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD09983EE8
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AD09983EE8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 10:12:17 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 9E4CB6028F364;
 Mon, 15 Sep 2025 12:12:03 +0200 (CEST)
Message-ID: <015b02e3-a9b7-4f4f-99da-fdf9bd1f8202@molgen.mpg.de>
Date: Mon, 15 Sep 2025 12:12:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org
References: <20250912080208.1048019-1-aleksandr.loktionov@intel.com>
 <8c3d7bc5-7269-4c8c-922d-7d6013ac51cb@molgen.mpg.de>
 <679b3ad8-91fd-4570-9e63-c6c5e22a8820@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <679b3ad8-91fd-4570-9e63-c6c5e22a8820@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] iavf: fix proper type for
 error code in iavf_resume()
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

Dear Przemek,


Thank you for your quick reply.

Am 15.09.25 um 11:58 schrieb Przemek Kitszel:
> On 9/15/25 11:12, Paul Menzel wrote:

>> Am 12.09.25 um 10:02 schrieb Aleksandr Loktionov:
>>> The variable 'err' in iavf_resume() is used to store the return value
>>> of different functions, which return an int. Currently, 'err' is
>>> declared as u32, which is semantically incorrect and misleading.
>>>
>>> In the Linux kernel, u32 is typically reserved for fixed-width data
>>> used in hardware interfaces or protocol structures. Using it for a
>>> generic error code may confuse reviewers or developers into thinking
>>> the value is hardware-related or size-constrained.
>>>
>>> Replace u32 with int to reflect the actual usage and improve code
>>> clarity and semantic correctness.
>>
>> Why not use `unsigned int`?
> 
> I don't think we need to provide rationale for "kernel has adopted
> a long standing practice of encoding errors as negative integer codes"
> each time we change a type, IOW it's too basic thing to mention.

Well, if it was unsigned before, than apparently no negative values were 
ever returned.

>>> No functional change.
>>>
>>> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>> ---
>>>   drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/ 
>>> net/ethernet/intel/iavf/iavf_main.c
>>> index 69054af..c2fbe44 100644
>>> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
>>> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
>>> @@ -5491,7 +5491,7 @@ static int iavf_resume(struct device *dev_d)
>>>   {
>>>       struct pci_dev *pdev = to_pci_dev(dev_d);
>>>       struct iavf_adapter *adapter;
>>> -    u32 err;
>>> +    int err;
>>>       adapter = iavf_pdev_to_adapter(pdev);
>>
>> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> 
> Thank you

Actually looking at the involved functions

     err = iavf_set_interrupt_capability(adapter);
     […]
     err = iavf_request_misc_irq(adapter);

they return (signed) integer, so in my opinion, this is the actual 
motivation for the change, and it’d be great, if the commit message 
could be amended accordingly.


Kind regards,

Paul
