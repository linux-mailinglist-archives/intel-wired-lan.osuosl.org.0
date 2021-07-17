Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 97FFD3CC3C6
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Jul 2021 16:19:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 337B083E57;
	Sat, 17 Jul 2021 14:19:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jw0Lo-WUId5N; Sat, 17 Jul 2021 14:19:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B723283E83;
	Sat, 17 Jul 2021 14:19:04 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1A0851BF834
 for <intel-wired-lan@osuosl.org>; Sat, 17 Jul 2021 14:18:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 15CAC83E83
 for <intel-wired-lan@osuosl.org>; Sat, 17 Jul 2021 14:18:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U8J1oaotqH8E for <intel-wired-lan@osuosl.org>;
 Sat, 17 Jul 2021 14:18:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6007D83E57
 for <intel-wired-lan@osuosl.org>; Sat, 17 Jul 2021 14:18:54 +0000 (UTC)
Received: from [192.168.0.3] (ip5f5aedb7.dynamic.kabel-deutschland.de
 [95.90.237.183])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 1BE3C61E5FE00;
 Sat, 17 Jul 2021 16:18:51 +0200 (CEST)
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
References: <20210709234516.24753-1-muhammad.husaini.zulkifli@intel.com>
 <f3b716f7-7009-d291-2d12-cc0c1196b501@molgen.mpg.de>
 <BYAPR11MB2871FB77D7B3A63861724091B8109@BYAPR11MB2871.namprd11.prod.outlook.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <678b7ca1-2414-efea-0d74-76eee6f3f732@molgen.mpg.de>
Date: Sat, 17 Jul 2021 16:18:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <BYAPR11MB2871FB77D7B3A63861724091B8109@BYAPR11MB2871.namprd11.prod.outlook.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Increase timeout value for
 Speed 100/1000/2500
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
Cc: intel-wired-lan@osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Muhammad,


Thank you for your response.

Am 17.07.21 um 16:16 schrieb Zulkifli, Muhammad Husaini:

>> -----Original Message-----
>> From: Paul Menzel <pmenzel@molgen.mpg.de>
>> Sent: Wednesday, July 14, 2021 2:24 PM
>> To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>
>> Cc: intel-wired-lan@osuosl.org
>> Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Increase timeout value for Speed 100/1000/2500

>> Am 10.07.21 um 01:45 schrieb Muhammad Husaini Zulkifli:
>>> As the cycle time is set to maximum of 1s, the TX Hang timeout need to
>>> be increase to avoid possible TX Hangs caused by using long Qbv cycles.
>>
>> s/increase/increased/
>>
>> Do you have a way how to reproduce the issue?
>>
>>> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
>>> ---
>>>    drivers/net/ethernet/intel/igc/igc_main.c | 4 +++-
>>>    1 file changed, 3 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
>>> b/drivers/net/ethernet/intel/igc/igc_main.c
>>> index c8abd7fb70e5..99fb5641297d 100644
>>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>>> @@ -5322,7 +5322,9 @@ static void igc_watchdog_task(struct work_struct
>> *work)
>>>    				adapter->tx_timeout_factor = 14;
>>>    				break;
>>>    			case SPEED_100:
>>> -				/* maybe add some timeout factor ? */
>>> +			case SPEED_1000:
>>> +			case SPEED_2500:
>>> +				adapter->tx_timeout_factor = 7;
>>
>> Please mention in the commit message, how the timeout factor of 7 was
>> determined. Why not any other number.
> 
> There is no dedicated number specific in data sheet for this timeout factor.
> This time out factor was determined during the debugging  to solve the "tx hang" issues that
> we were seeing in some cases especially during Scheduled packet Transmission(etf).

Thank you for the clarification. Please mention that in the commit 
message of v2.

>>>    				break;
>>>    			}


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
