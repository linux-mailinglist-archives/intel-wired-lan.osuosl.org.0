Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A0A92B467
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jul 2024 11:51:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F1A540B3E;
	Tue,  9 Jul 2024 09:51:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u6torhk4nVBq; Tue,  9 Jul 2024 09:51:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7F212409BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720518709;
	bh=KyRnVcmZbTNXycxErjVvwV1wvoZBYnXG86mZ/3hwXJM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RuYYNvzanK933iEtwKZDAucEYU0kH3YTsIW/7D5dPIQcL0g01/AIlXJP0IYkVRZa3
	 CyyVKPY41ZfrngLoqLxqnurVLpVgo78e3czqxR6n2dgn/PdLwM2U44+mXYtxxcXWnF
	 +3/CKZ5FB1Ai6HeBmFW+oms7z+vP/rpPMO9sOd7SplHhPC3H+XO6KXpM5zVn5PF4Qb
	 CvSs9ushRVqPO1Ie6L+pljUi9Qpi7lwUpy6DQcFRNWY1pDEpG9KEVz8hoRJSR6puBy
	 0OTiNUKhaJNLpDlvzppBsyun5Ayp2GtQkLS8qDI8zqSjPeZLUL0Y66tEqwsWIra1fY
	 9eEKLzSPBBFtw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F212409BD;
	Tue,  9 Jul 2024 09:51:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C9AFD1BF29A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 09:51:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C337760B51
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 09:51:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6xAeigrFS4u9 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Jul 2024 09:51:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7554060B34
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7554060B34
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7554060B34
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 09:51:44 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 3CE0261E40617;
 Tue,  9 Jul 2024 11:51:00 +0200 (CEST)
Message-ID: <56160e13-662d-4f7e-86d3-1a88716f01d9@molgen.mpg.de>
Date: Tue, 9 Jul 2024 11:50:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Aleksandr Mishin <amishin@t-argos.ru>
References: <20240708182736.8514-1-amishin@t-argos.ru>
 <033111e2-e743-4523-8c4f-7d5f1c801e65@molgen.mpg.de>
 <23d2e91c-4215-4ea5-8b3c-4dd58a1062af@molgen.mpg.de>
 <190d0cdc-d6de-4526-b235-91b25b50c905@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <190d0cdc-d6de-4526-b235-91b25b50c905@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] ice: Adjust over
 allocation of memory in ice_sched_add_root_node() and ice_sched_add_node()
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
Cc: lvc-project@linuxtesting.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Simon Horman <horms@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Przemek,


Thank you for your quick reply.


Am 09.07.24 um 11:11 schrieb Przemek Kitszel:
> On 7/9/24 10:54, Paul Menzel wrote:
>> [Cc: -anirudh.venkataramanan@intel.com (Address rejected)]
>>
>> Am 09.07.24 um 10:49 schrieb Paul Menzel:

>>> Am 08.07.24 um 20:27 schrieb Aleksandr Mishin:
>>>> In ice_sched_add_root_node() and ice_sched_add_node() there are calls to
>>>> devm_kcalloc() in order to allocate memory for array of pointers to
>>>> 'ice_sched_node' structure. But incorrect types are used as sizeof()
>>>> arguments in these calls (structures instead of pointers) which leads to
>>>> over allocation of memory.
>>>
>>> If you have the explicit size at hand, it’d be great if you added 
>>> those to the commit message.
>>>
>>>> Adjust over allocation of memory by correcting types in devm_kcalloc()
>>>> sizeof() arguments.
>>>>
>>>> Found by Linux Verification Center (linuxtesting.org) with SVACE.
>>>
>>> Maybe mention, that Coverity found that too, and the warning was 
>>> disabled, and use that commit in Fixes: tag? That’d be commit 
>>> b36c598c999c (ice: Updates to Tx scheduler code), different from the 
>>> one you used.
> 
> this version does not have any SHA mentioned :)

Sorry, I don’t understand your answer. What SHA do you mean?

>>> `Documentation/process/submitting-patches.rst` says:
>>>
>>>> A Fixes: tag indicates that the patch fixes an issue in a previous
>>>> commit. It is used to make it easy to determine where a bug
>>>> originated, which can help review a bug fix. This tag also assists
>>>> the stable kernel team in determining which stable kernel versions
>>>> should receive your fix. This is the preferred method for indicating
>>>> a bug fixed by the patch.
> 
> so, this is not a "fix" per definition of a fix: "your patch changes
> observable misbehavior"
> If the over-allocation would be counted in megabytes, then it will
> be a different case.

The quoted text just talks about “an issue”. What definition do you 
refer to?


Kind regards,

Paul
