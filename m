Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B32C819E99B
	for <lists+intel-wired-lan@lfdr.de>; Sun,  5 Apr 2020 08:46:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 486D387E5D;
	Sun,  5 Apr 2020 06:46:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id esdNleDCbluc; Sun,  5 Apr 2020 06:46:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D1A2A880C1;
	Sun,  5 Apr 2020 06:46:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1820C1BF4E2
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Apr 2020 06:46:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0C0672036E
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Apr 2020 06:46:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k2Aiw5q+XQed for <intel-wired-lan@lists.osuosl.org>;
 Sun,  5 Apr 2020 06:46:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id 0E72E2014B
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Apr 2020 06:46:31 +0000 (UTC)
IronPort-SDR: QWgeF3v7xta1LdsTb7j0yBlqsRqZpnFegRO6EdwJRlvnzcIwTsUEO54C15fPnzSm/RA8J7GKOC
 Umm0GKn+Z8Iw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2020 23:46:29 -0700
IronPort-SDR: GJD9An3CSZgngnvVbIve/eYsdh2/bOf/U9TVWHjqKxIZ8jfq6ZCsfqOXdGhMZF20eYTi3tX6wO
 Z9nyb/HjljsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,346,1580803200"; d="scan'208";a="243210075"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.214.203.6])
 ([10.214.203.6])
 by fmsmga008.fm.intel.com with ESMTP; 04 Apr 2020 23:46:27 -0700
To: Aaron Ma <aaron.ma@canonical.com>, Hans de Goede <hdegoede@redhat.com>,
 jeffrey.t.kirsher@intel.com, davem@davemloft.net,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, "Lifshits, Vitaly"
 <vitaly.lifshits@intel.com>, "Neftin, Sasha" <sasha.neftin@intel.com>,
 "Tsai, Rex" <rex.tsai@intel.com>
References: <20200323191639.48826-1-aaron.ma@canonical.com>
 <4f9f1ad0-e66a-d3c8-b152-209e9595e5d7@redhat.com>
 <1c0e602f-1fe7-62b1-2283-b98783782e87@canonical.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <00b477c9-ef20-be95-1748-44efba18ebd3@intel.com>
Date: Sun, 5 Apr 2020 09:46:26 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <1c0e602f-1fe7-62b1-2283-b98783782e87@canonical.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: bump up timeout to wait when
 ME un-configure ULP mode
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/3/2020 06:15, Aaron Ma wrote:
> Hi Jeffrey:
> 
> I have received the email that you apply this patch to next-queue branch
> dev-queue.
> 
> But after this branch is rebased to v5.6, I can't find it.
> 
> Will you apply again?
Aaron, Kai,
S0ix flow supported only on none ME system. Our PAE works to communicate 
this to OS vendors. You should get BIOS option to disable ME on your system.
This fix just will mask real problem on specific system - won't be solve 
the problem. I suggest recall this patch and Lenovo Carbon in DMI black 
list.
> 
> Thanks,
> Aaron
> 
> On 4/2/20 8:31 PM, Hans de Goede wrote:
>>
>> This fix fixes a real problem, on a popular model laptop
>> and since it just extends a timeout it is a pretty harmless
>> (no chance of regressions) fix. As such since there seems
>> to be no other solution in sight, can we please move forward
>> with this fix for now ?
Thanks,
Sasha
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
