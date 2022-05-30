Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C9E5379C3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 May 2022 13:25:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 756E684155;
	Mon, 30 May 2022 11:25:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eq3UYcasaTv8; Mon, 30 May 2022 11:25:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6B54F8405A;
	Mon, 30 May 2022 11:25:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8D8DF1BF44C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 May 2022 11:25:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 88C8241A21
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 May 2022 11:25:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UhmL2DYmixKt for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 May 2022 11:25:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2D82D41A00
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 May 2022 11:25:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653909919; x=1685445919;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=NzLr991B8vmrYxgBerPxJ//omzu4bUWPUzYchzm6ZKU=;
 b=clu82JdX7RPVbNIbjX8p8C92lv23ecL2MNJM3gxYOJWZaepcOhavO7wR
 Bn7Vnkhb4wAYzEu1rZakIUsKaNIPKA9HmMNCemGF+jkg2DjI9SVG8XjWC
 fkEnx06uCmijWnZENZi135GETjfqFi/jmkHSMsGa9UKkpY4q9aXVSUe3p
 q+YUaxxJHlZF4QQcuWBP27VUhDQsW99RQVFgqpBtEiIptkFFH54Nk0MHz
 A1LExuHw0wwC4yoSG0NvSU13L5RAIE2NhtLjtEuFBFOqHF0e3IVeh3LSy
 Hls4+8rQDjGzwLoGr0Aw0ShBqgjLfFn/LXQ1kSzat91NGnBRJwcOhG0MM Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10362"; a="338012581"
X-IronPort-AV: E=Sophos;i="5.91,262,1647327600"; d="scan'208";a="338012581"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2022 04:25:16 -0700
X-IronPort-AV: E=Sophos;i="5.91,262,1647327600"; d="scan'208";a="605144965"
Received: from mszycik-mobl.ger.corp.intel.com (HELO [10.249.150.234])
 ([10.249.150.234])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2022 04:25:15 -0700
Message-ID: <d3493e8f-27d0-5a11-173f-74907b5410ff@linux.intel.com>
Date: Mon, 30 May 2022 13:25:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20220527115131.7413-1-marcin.szycik@linux.intel.com>
 <8fd71e27-7f9a-fab8-62c5-b16839b882f5@intel.com>
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <8fd71e27-7f9a-fab8-62c5-b16839b882f5@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net] ice: disable stripping in default
 VSI ctx
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 27-May-22 18:31, Tony Nguyen wrote:
> 
> 
> On 5/27/2022 4:51 AM, Marcin Szycik wrote:
> 
> This fixes commit doesn't exist in net, so it shouldn't be targeting net. It looks like the patch this is fixing is still on Intel Wired LAN [1]. Perhaps it would be better to squash it with that patch as a v2?

You're right, sorry I didn't notice this. I will send next version with net-next tag and a squash note.

>> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>>
>> In case when driver is in eswitch mode, having VLAN stripping enabled
>> causes failure in communication. All VLAN configuration commands are
>> blocked, because of that VF driver can't disable VLAN stripping at
>> initialization. It leads to the situation when VLAN stripping on VF VSI
>> is on, but in kernel it is off.
>>
>> To prevent this, set VLAN stripping to disabled in VSI initialization.
>> It doesn't break other usecases, because it is set according to kernel
>> settings.
>>
>> Fixes: f09901aa554a ("ice: remove VLAN representor specific ops")
>> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> 
> [1] https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20220425062756.14987-3-michal.swiatkowski@linux.intel.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
