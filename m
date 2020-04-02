Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C13919C733
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Apr 2020 18:38:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9A799266DD;
	Thu,  2 Apr 2020 16:38:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id slIyrsjHEMIg; Thu,  2 Apr 2020 16:38:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1F81B21135;
	Thu,  2 Apr 2020 16:38:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EB5DF1BF395
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 16:38:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E0A7A88118
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 16:38:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rt-BhQwwYIRN for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Apr 2020 16:38:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 58249880F8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 16:38:12 +0000 (UTC)
Received: from [192.168.0.4] (ip5f5af30c.dynamic.kabel-deutschland.de
 [95.90.243.12])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 79DD3206442DD;
 Thu,  2 Apr 2020 18:38:09 +0200 (CEST)
From: Paul Menzel <pmenzel@molgen.mpg.de>
To: Aaron F Brown <aaron.f.brown@intel.com>
References: <20190916065240.41486-1-sasha.neftin@intel.com>
 <309B89C4C689E141A5FF6A0C5FB2118B9714C814@ORSMSX103.amr.corp.intel.com>
Message-ID: <cf87df61-9a63-5eb3-6589-a29a934bfa93@molgen.mpg.de>
Date: Thu, 2 Apr 2020 18:38:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <309B89C4C689E141A5FF6A0C5FB2118B9714C814@ORSMSX103.amr.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1] e1000e: Add support for S0ix
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
Cc: intel-wired-lan@lists.osuosl.org,
 Rajneesh Bhardwaj <rajneesh.bhardwaj@linux.intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Aaron,


Am 11.10.19 um 02:56 schrieb Brown, Aaron F:
>> From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On Behalf Of
>> Sasha Neftin
>> Sent: Sunday, September 15, 2019 11:53 PM
>> To: intel-wired-lan@lists.osuosl.org
>> Cc: Rajneesh Bhardwaj <rajneesh.bhardwaj@linux.intel.com>
>> Subject: [Intel-wired-lan] [PATCH v1] e1000e: Add support for S0ix
>>
>> Implement flow for S0ix support. Modern SoCs support S0ix low power
>> states during idle periods, which are sub-states of ACPI S0 that increase
>> power saving while supporting an instant-on experience for providing
>> lower latency that ACPI S0. The S0ix states shut off parts of the SoC
>> when they are not in use, while still maintaning optimal performance.
>> This patch add support for S0ix started from an Ice Lake platform.
>>
>> Suggested-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
>> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
>> Signed-off-by: Rajneesh Bhardwaj <rajneesh.bhardwaj@linux.intel.com>
>> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
>> ---
>>   drivers/net/ethernet/intel/e1000e/netdev.c | 186
>> +++++++++++++++++++++++++++++
>>   drivers/net/ethernet/intel/e1000e/regs.h   |   4 +
>>   2 files changed, 190 insertions(+)
> 
> I do not yet have access to an Ice lake platform but this does not seem to harm any of my regression systems, so...
> Tested-by: Aaron Brown <aaron.f.brown@intel.com>

Is testing several s2idle cycles part of your testing (with (un)plugging 
the cable)?

Can you reproduce the issues reported on the list [1][2]?


Kind regards,

Paul


[1]: https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1865570
[2]: https://bugzilla.redhat.com/show_bug.cgi?id=1816621
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
