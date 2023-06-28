Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F28F1740FCF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jun 2023 13:11:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4B45382304;
	Wed, 28 Jun 2023 11:11:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B45382304
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687950698;
	bh=OEDkAZqmjdLs7p2Lc9N5O3wEEIblsRygPasTnj2Drwk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=X1be0ywtRTa7YbzwMRIQlBusniqUly3g8255X/qZDQvBhO1i5+iUkiyhcLBniN2cZ
	 CokUGcezwnUqLgeWVcsgEIJH3wxOWMvvDZLkGU9+lTe7sfuRScEG9AT19Aam5wKsrG
	 oQxuzsg6d4zZdFLKM0oXFqP+yp2N39tKT78D8fK4fV5LSGdQKYWaj6jvl1WFIcTIIM
	 26eWqchjmXjrBDmHM9gLSAIWJf/EC5VhYtHlGF4gZ+293dBZXJYJNTpmuOgt2F5C/S
	 RxAB2KkugPNg/GT7PCbIg3BizIveXaBrsYlaKBZoO+dKtqpyJH3FsMizRO74O96pum
	 Ezq5Qw1J5Lqvw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rG1e2-dJayjY; Wed, 28 Jun 2023 11:11:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3ADD5821A2;
	Wed, 28 Jun 2023 11:11:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3ADD5821A2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 66F3B1BF2E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 11:11:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2C88B60BC6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 11:11:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2C88B60BC6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mcNQ4Zoa7hEN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jun 2023 11:11:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7584E60B91
Received: from out-21.mta0.migadu.com (out-21.mta0.migadu.com [91.218.175.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7584E60B91
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 11:11:30 +0000 (UTC)
Message-ID: <2e9ce197-2732-d061-b11d-4f4513af6abc@linux.dev>
Date: Wed, 28 Jun 2023 12:11:19 +0100
MIME-Version: 1.0
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 Jiri Pirko <jiri@resnulli.us>
References: <20230623123820.42850-1-arkadiusz.kubalewski@intel.com>
 <ZJq3a6rl6dnPMV17@nanopsycho>
 <DM6PR11MB4657084DDD7554663F86C1C19B24A@DM6PR11MB4657.namprd11.prod.outlook.com>
 <DM6PR11MB4657A1ACB586AD9B45C7996E9B24A@DM6PR11MB4657.namprd11.prod.outlook.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <DM6PR11MB4657A1ACB586AD9B45C7996E9B24A@DM6PR11MB4657.namprd11.prod.outlook.com>
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1687950686;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=L1I/ER/w6jNuNeN1IzKuVARZ7DzIC62fE15mQqKlcKA=;
 b=Rdepi0ljPQ2cZvn1YYGKUl4KHpRN6kkf2yTS5VgyROLqP19w683nmg9jAPJUuhyTK9RD+n
 FSSEs43rfghN6NEQu0DbynAEjUXM97SW+nvtSu/fbL7My/4ovr5DZ3UhNU+6rL+OkX6hIT
 Qa7packtPMeaAcIYXpWRq1A4sWVQwyc=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=Rdepi0lj
Subject: Re: [Intel-wired-lan] [RFC PATCH v9 00/10] Create common DPLL
 configuration API
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
Cc: "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "mst@redhat.com" <mst@redhat.com>, "razor@blackwall.org" <razor@blackwall.org>,
 "phil@nwl.cc" <phil@nwl.cc>, "javierm@redhat.com" <javierm@redhat.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "benjamin.tissoires@redhat.com" <benjamin.tissoires@redhat.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "lucien.xin@gmail.com" <lucien.xin@gmail.com>,
 "leon@kernel.org" <leon@kernel.org>, "corbet@lwn.net" <corbet@lwn.net>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "masahiroy@kernel.org" <masahiroy@kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "vadfed@meta.com" <vadfed@meta.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "airlied@redhat.com" <airlied@redhat.com>, "vadfed@fb.com" <vadfed@fb.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "ricardo.canuelo@collabora.com" <ricardo.canuelo@collabora.com>,
 "arnd@arndb.de" <arnd@arndb.de>, "idosch@nvidia.com" <idosch@nvidia.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "claudiajkang@gmail.com" <claudiajkang@gmail.com>,
 "kuniyu@amazon.com" <kuniyu@amazon.com>,
 "jacek.lawrynowicz@linux.intel.com" <jacek.lawrynowicz@linux.intel.com>,
 "liuhangbin@gmail.com" <liuhangbin@gmail.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "nicolas.dichtel@6wind.com" <nicolas.dichtel@6wind.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "axboe@kernel.dk" <axboe@kernel.dk>, "sj@kernel.org" <sj@kernel.org>,
 "linux@zary.sk" <linux@zary.sk>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "ogabbay@kernel.org" <ogabbay@kernel.org>,
 "nipun.gupta@amd.com" <nipun.gupta@amd.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andy.ren@getcruise.com" <andy.ren@getcruise.com>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>, "M,
 Saeed" <saeedm@nvidia.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "Olech, Milena" <milena.olech@intel.com>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 28/06/2023 10:27, Kubalewski, Arkadiusz wrote:
>> From: Kubalewski, Arkadiusz
>> Sent: Wednesday, June 28, 2023 11:15 AM
>>
>>> From: Jiri Pirko <jiri@resnulli.us>
>>> Sent: Tuesday, June 27, 2023 12:18 PM
>>>
>>> Fri, Jun 23, 2023 at 02:38:10PM CEST, arkadiusz.kubalewski@intel.com
>> wrote:
>>>
>>>> v8 -> v9:
>>>
>>> Could you please address all the unresolved issues from v8 and send v10?
>>> I'm not reviewing this one.
>>>
>>> Thanks!
>>
>> Sure, will do, but first missing to-do/discuss list:
>> 1) remove mode_set as not used by any driver
>> 2) remove "no-added-value" static functions descriptions in
>>    dpll_core/dpll_netlink
>> 3) merge patches [ 03/10, 04/10, 05/10 ] into patches that are compiling
>>    after each patch apply
>> 4) remove function return values descriptions/lists
>> 5) Fix patch [05/10]:
>>    - status Supported
>>    - additional maintainers
>>    - remove callback:
>>      int (*source_pin_idx_get)(...) from `struct dpll_device_ops`
>> 6) Fix patch [08/10]: rethink ice mutex locking scheme
>> 7) Fix patch [09/10]: multiple comments on
>> https://lore.kernel.org/netdev/ZIQu+%2Fo4J0ZBspVg@nanopsycho/#t
>> 8) add PPS DPLL phase offset to the netlink get-device API
>>
>> Thank you!
>> Arkadiusz
> 
> If someone has any objections please state them now, I will work on
> all above except 5) and 7).
> Vadim, could you take care of those 2 points?
> 
Yeah, sure, I'll update 5 and 7.
I'm not sure about 8) - do we really need this info, I believe every 
supported DPLL device exports PTP device as well. But I'm Ok to add this 
feature too.

> Thank you!
> Arkadiusz

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
