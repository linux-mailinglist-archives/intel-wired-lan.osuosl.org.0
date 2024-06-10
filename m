Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F21B8902196
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jun 2024 14:26:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 50ACF82B1A;
	Mon, 10 Jun 2024 12:26:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l4rZLl8GyvYo; Mon, 10 Jun 2024 12:26:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4BE6882E22
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718022363;
	bh=3XZAD1ddtRgMO2Z4kMBs0Y1tn5/umD5oy7SIi1qVyNw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=c42DfuN+o4aaJt7YutcMDrVKsljkYXdVc/heAvK26yd4pjGTI+lMShOTrBBDzHoyR
	 NLNPEGjPYM8OUmK5p9k9qX/TmAWQsKJmfZyHZO1rrqxCzx58vM42EHt9E1OEN0cXZr
	 2lbG3aeGf8gaG7oAIsZ0K26r2y94CwGPo8cmNXggtbiuNzA90dPlmfwBvtdR93WkmG
	 cnWgkOVu00JPhSgGKQ7KnSWegyLZP3kCWCII4E7cYFGFvOtkFor5rrZOWA4NSAXtCY
	 i/XLdhzpC3iUmaTXtHss7HZpULti/iW1sxaFFszXneiQ7rbn0rBly705Zb4SvAt5IS
	 cDRd+dLGyHFdw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4BE6882E22;
	Mon, 10 Jun 2024 12:26:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E33521BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 12:26:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CF1D982323
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 12:26:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vPVsosi1LbhJ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jun 2024 12:26:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5196481774
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5196481774
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5196481774
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 12:25:58 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id D71ED61E5FE38;
 Mon, 10 Jun 2024 14:25:39 +0200 (CEST)
Message-ID: <ea00b2d5-e463-4c4c-808f-5eeb3e0d71df@molgen.mpg.de>
Date: Mon, 10 Jun 2024 14:25:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Kelvin Kang <kelvin.kang@intel.com>
References: <20240610092051.2030587-1-aleksandr.loktionov@intel.com>
 <a2ad5189-10d1-4e6b-8509-b1ce4e1e7526@molgen.mpg.de>
 <SJ0PR11MB5866360BDA97A03298A4A637E5C62@SJ0PR11MB5866.namprd11.prod.outlook.com>
 <SJ0PR11MB5866699ABC33C1DDCD86A3D7E5C62@SJ0PR11MB5866.namprd11.prod.outlook.com>
 <SJ0PR11MB58660E94611961DC52634069E5C62@SJ0PR11MB5866.namprd11.prod.outlook.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <SJ0PR11MB58660E94611961DC52634069E5C62@SJ0PR11MB5866.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: fix hot issue NVM
 content is corrupted after nvmupdate
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
Cc: Jan Sokolowski <jan.sokolowski@intel.com>, netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Anthony L Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Leon Romanovsky <leonro@nvidia.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Aleksandr,


Thank you for your response.


Am 10.06.24 um 12:20 schrieb Loktionov, Aleksandr:
> 
> 
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Loktionov, Aleksandr
>> Sent: Monday, June 10, 2024 12:16 PM

>>> -----Original Message-----
>>> From: Loktionov, Aleksandr
>>> Sent: Monday, June 10, 2024 12:14 PM

>>>> -----Original Message-----
>>>> From: Paul Menzel <pmenzel@molgen.mpg.de>
>>>> Sent: Monday, June 10, 2024 11:45 AM

>>>> Am 10.06.24 um 11:20 schrieb Aleksandr Loktionov:
>>>>> After 230f3d53a547 patch all I/O errors are being converted into
>>>>> EAGAIN which leads to retries until timeout so nvmupdate sometimes
>>>>> fails after more than 20 minutes!
>>>>>
>>>>> Remove misleading EIO to EGAIN conversion and pass all errors as
>>>> is.
>>>>>
>>>>> Fixes: 230f3d53a547 ("i40e: remove i40e_status")
>>>>
>>>> This commit is present since v6.6-rc1, released September last year
>>>> (2023). So until now, nobody noticed this?
>>>>
>>> Really, really. The regression affects users only when they update
>>> F/W, and not all F/W are affected, only that generate I/O errors while
>>> update.
>> Not all the cards are affected, but the consequences are serous as
>> in subj.
>>
>>>>> Co-developed-by: Kelvin Kang <kelvin.kang@intel.com>
>>>>> Signed-off-by: Kelvin Kang <kelvin.kang@intel.com>
>>>>> Reviewed-by: Arkadiusz Kubalewski
>>>> <arkadiusz.kubalewski@intel.com>
>>>>> Signed-off-by: Aleksandr Loktionov
>>>> <aleksandr.loktionov@intel.com>
>>>>
>>>> Please give more details about your test setup. For me it’s also not
>>>> clear, how the NVM content gets corrupted as stated in the
>>>> summary/title. Could you please elaborate that in the commit message.

> For example X710DA2 with 0x8000ECB7 is affected, but there are
> probably more...

Please amend the commit message with this information, and for ease also 
the commands you executed.

> The corruption is already described - because of
> timeout nvmupdate timeouts failing to update NVM.

Only because something times out, does not mean it causes corruption.

Please amend the commit message. It looks like you also missed more of 
my questions below.

>>>>> ---
>>>>>    drivers/net/ethernet/intel/i40e/i40e_adminq.h | 4 ----
>>>>>    1 file changed, 4 deletions(-)
>>>>>
>>>>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.h
>>>>> b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
>>>>> index ee86d2c..55b5bb8 100644
>>>>> --- a/drivers/net/ethernet/intel/i40e/i40e_adminq.h
>>>>> +++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
>>>>> @@ -109,10 +109,6 @@ static inline int i40e_aq_rc_to_posix(int aq_ret, int aq_rc)
>>>>>    		-EFBIG,      /* I40E_AQ_RC_EFBIG */
>>>>>    	};
>>>>>
>>>>> -	/* aq_rc is invalid if AQ timed out */
>>>>> -	if (aq_ret == -EIO)
>>>>> -		return -EAGAIN;
>>>>> -
>>>>>    	if (!((u32)aq_rc < (sizeof(aq_to_posix) / sizeof((aq_to_posix)[0]))))
>>>>>    		return -ERANGE;
>>>>
>>>> The referenced commit 230f3d53a547 does:
>>>>
>>>> ```
>>>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.h
>>>> b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
>>>> index ee394aacef4d..267f2e0a21ce 100644
>>>> --- a/drivers/net/ethernet/intel/i40e/i40e_adminq.h
>>>> +++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
>>>> @@ -5,7 +5,6 @@
>>>>    #define _I40E_ADMINQ_H_
>>>>
>>>>    #include "i40e_osdep.h"
>>>> -  #include "i40e_status.h"
>>>>    #include "i40e_adminq_cmd.h"
>>>>
>>>>    #define I40E_ADMINQ_DESC(R, i)   \
>>>> @@ -117,7 +116,7 @@ static inline int i40e_aq_rc_to_posix(int aq_ret, int aq_rc)
>>>>           };
>>>>
>>>>           /* aq_rc is invalid if AQ timed out */
>>>> -       if (aq_ret == I40E_ERR_ADMIN_QUEUE_TIMEOUT)
>>>> +       if (aq_ret == -EIO)
>>>>                   return -EAGAIN;
>>>>
>>>>           if (!((u32)aq_rc < (sizeof(aq_to_posix) / sizeof((aq_to_posix)[0]))))
>>>> ```
>>>>
>>>> So I do not see yet, why removing the whole hunk is the solution.

Kind regards,

Paul


PS: Would it be possible, that you use another email program. The cited 
parts are wrapped awkwardly, and it takes some time to correct it in my 
response.
