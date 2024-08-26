Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7995D95F7BB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Aug 2024 19:15:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2634A6078C;
	Mon, 26 Aug 2024 17:15:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R5dHvfb4eE1N; Mon, 26 Aug 2024 17:15:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 523F460640
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724692506;
	bh=NoAjW2R+o80sdyLbdCHHBi35GI05J7LD2G0MnQa6MWo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wxpJ8plWLCZFOp7IZ8MmUNA3vVLqUSXv6JZ8SQ9IZOqOoAoKriFT+xmj7YeMdogTp
	 uMkRTjHQHT+4VfNxV5o3q4swhzT37oBcI8Y9zovdhjv6Z5dhInFzoF01WWuBX/BPaF
	 ZiHNZ+rgMo05h67tC9VBMAmiLhXXG0EaIZZYifWoQ8/A/EmtUazbcg+U3ZbX2m4FQx
	 m+0CDWJqQzlB0ljaVXUYLSsIszlGXV6Mukakj5UcynFd8cBpeiWsmMv3iX7at50SZ6
	 CHQCJUi7GRglvdU8e8WtDYZ73gHAAYWHm3qi71FFIuJvk0e5DZin4t3iX9NlkAXOwj
	 pk+ydzUlgXSSw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 523F460640;
	Mon, 26 Aug 2024 17:15:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A41D71BF336
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 17:15:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 906D6402EE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 17:15:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f8l5ddieQbhc for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Aug 2024 17:15:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=80.12.242.75;
 helo=msa.smtpout.orange.fr; envelope-from=christophe.jaillet@wanadoo.fr;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 11A5C402DE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 11A5C402DE
Received: from msa.smtpout.orange.fr (smtp-75.smtpout.orange.fr [80.12.242.75])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 11A5C402DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 17:15:02 +0000 (UTC)
Received: from [192.168.1.37] ([90.11.132.44]) by smtp.orange.fr with ESMTPA
 id idIusKUkBFtEmidIus4Qnh; Mon, 26 Aug 2024 19:15:00 +0200
X-ME-Helo: [192.168.1.37]
X-ME-Auth: bWFyaW9uLmphaWxsZXRAd2FuYWRvby5mcg==
X-ME-Date: Mon, 26 Aug 2024 19:15:00 +0200
X-ME-IP: 90.11.132.44
Message-ID: <bbe06f51-459a-4973-9322-56b3d27427f1@wanadoo.fr>
Date: Mon, 26 Aug 2024 19:14:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Dan Carpenter <dan.carpenter@linaro.org>
References: <fa4f19064be084d5e740e625dcf05805c0d71ad0.1724394169.git.christophe.jaillet@wanadoo.fr>
 <c786a345-9ec4-4e41-8e69-506239db291c@stanley.mountain>
 <2896a4b2-2297-44cd-b4c7-a4d320298740@intel.com>
Content-Language: en-US, fr-FR
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <2896a4b2-2297-44cd-b4c7-a4d320298740@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=wanadoo.fr; s=t20230301; t=1724692500;
 bh=NoAjW2R+o80sdyLbdCHHBi35GI05J7LD2G0MnQa6MWo=;
 h=Message-ID:Date:MIME-Version:Subject:To:From;
 b=RdlVNqXDGoIcfOHx16drsR+hMe5aGLy1GFtGLONfa7t0tUPljKNgfBzgYSkDvMuxG
 RILfXksBLAaN1wlZokC2GYKU2m7jyMde44Bp4jlaVCfHDS3dL0wqkaLPE8LNCe8oxX
 RMPZ1uwuumGbYzi59I0rFTg6NPB6kMWgbgt3Uem/CBHvAfdF9Kd7JfdgsRaKYsgRUi
 9vs12BmYVjT3OJ8ewJn+YslnWH5BKNmZRuD3emjhEH87R4tGHUQ4/K64JZCvfR++JG
 bDslmHqL+dyHAabDSR3ngKZWBtwfXIFWZ8oQGLAOuSWeHFr0aOLbx6dWkuVW5izlH/
 UE29btMe4pKCQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=wanadoo.fr
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=wanadoo.fr header.i=@wanadoo.fr header.a=rsa-sha256
 header.s=t20230301 header.b=RdlVNqXD
Subject: Re: [Intel-wired-lan] [PATCH net-next] idpf: Slightly simplify
 memory management in idpf_add_del_mac_filters()
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
Cc: intel-wired-lan@lists.osuosl.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Le 26/08/2024 à 11:15, Przemek Kitszel a écrit :
> On 8/23/24 11:10, Dan Carpenter wrote:
>> On Fri, Aug 23, 2024 at 08:23:29AM +0200, Christophe JAILLET wrote:
>>> In idpf_add_del_mac_filters(), filters are chunked up into multiple
>>> messages to avoid sending a control queue message buffer that is too 
>>> large.
>>>
>>> Each chunk has up to IDPF_NUM_FILTERS_PER_MSG entries. So except for the
>>> last iteration which can be smaller, space for exactly
>>> IDPF_NUM_FILTERS_PER_MSG entries is allocated.
>>>
>>> There is no need to free and reallocate a smaller array just for the 
>>> last
>>> iteration.
>>>
>>> This slightly simplifies the code and avoid an (unlikely) memory 
>>> allocation
>>> failure.
>>>
> 
> Thanks, that is indeed an improvement.
> 
>>> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
>>> ---
>>>   drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 7 +++++--
>>>   1 file changed, 5 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c 
>>> b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>>> index 70986e12da28..b6f4b58e1094 100644
>>> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>>> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>>> @@ -3669,12 +3669,15 @@ int idpf_add_del_mac_filters(struct 
>>> idpf_vport *vport,
>>>           entries_size = sizeof(struct virtchnl2_mac_addr) * 
>>> num_entries;
>>>           buf_size = struct_size(ma_list, mac_addr_list, num_entries);
>>> -        if (!ma_list || num_entries != IDPF_NUM_FILTERS_PER_MSG) {
>>> -            kfree(ma_list);
>>> +        if (!ma_list) {
>>>               ma_list = kzalloc(buf_size, GFP_ATOMIC);
>>>               if (!ma_list)
>>>                   return -ENOMEM;
>>>           } else {
>>> +            /* ma_list was allocated in the first iteration
>>> +             * so IDPF_NUM_FILTERS_PER_MSG entries are
>>> +             * available
>>> +             */
>>>               memset(ma_list, 0, buf_size);
>>>           }
>>
>> It would be even nicer to move the ma_list allocation outside the loop:
>>
>>          buf_size = struct_size(ma_list, mac_addr_list, 
>> IDPF_NUM_FILTERS_PER_MSG);
>>          ma_list = kmalloc(buf_size, GFP_ATOMIC);
> 
> good point
> 
> I've opened whole function for inspection and it asks for even more,
> as of now, we allocate an array in atomic context, just to have a copy
> of some stuff from the spinlock-protected list.
> 
> It would be good to have allocation as pointed by Dan prior to iteration
> and fill it on the fly, sending when new message would not fit plus once
> at the end. Sending procedure is safe to be called under a spinlock.

If I understand correctly, you propose to remove the initial copy in 
mac_addr and hold &vport_config->mac_filter_list_lock till the end of 
the function?

That's it?

There is a wait_for_completion_timeout() in idpf_vc_xn_exec() and the 
default time-out is IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC	(60 * 1000)

So, should an issue occurs, and the time out run till the end, we could 
hold the 'mac_filter_list_lock' spinlock for up to 60 seconds?
Is that ok?


And if in asynch update mode, idpf_mac_filter_async_handler() also takes 
&vport_config->mac_filter_list_lock;. Could we dead-lock?


So, I'm not sure to understand what you propose, or the code in 
idpf_add_del_mac_filters() and co.

> 
> CCing author; CCing Olek to ask if there are already some refactors that
> would conflict with this.

I'll way a few days for these feedbacks and send a v2.

CJ

> 
>>
>> regards,
>> dan carpenter
>>
> 
> 
> 

