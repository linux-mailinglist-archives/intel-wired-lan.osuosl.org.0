Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AA225903175
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jun 2024 07:44:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1E23E810E4;
	Tue, 11 Jun 2024 05:44:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Nh-lBWaA8NXI; Tue, 11 Jun 2024 05:44:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 42A5181016
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718084649;
	bh=Ni5EiqfE19GgJAagzEeA/URDCb51teDUC50fLcGZEHg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Gi21h5G01RnsnNcf4tm15q1i4Qcv8gx9nGDlaq4KdDnwhgLBHDm3CvlW0y7oYSQvq
	 2hZSdEjzc1+j5xF13Y+VDdKzvuWuV9nGGb9grZRUWNPhblv9jj81Z2QPdw3GQzGOMH
	 KE7Dj23guwT2wdCyT+jgauJFen9F8A/4u227lt5RiPeRdXy4RDs1BZN/JNcbo4zD2m
	 99JxnFJANz8+DhkQjAh3NM7o2OMgK8axTI1G31b36wyTwD1EWvPS9OtoF9jHidIT23
	 4Uv0ing6pb/S+7I/cSUtiCniNZDkhlzUf5+iuTpkL21ov03eA7CRhrT6kya93pAQkd
	 uLM423xqKeuLA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 42A5181016;
	Tue, 11 Jun 2024 05:44:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2E03C1BF39F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 05:44:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 13D8140B7E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 05:44:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2H_asBIls6bs for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jun 2024 05:44:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.121;
 helo=smtp-relay-canonical-1.canonical.com;
 envelope-from=hui.wang@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B4A274016B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B4A274016B
Received: from smtp-relay-canonical-1.canonical.com
 (smtp-relay-canonical-1.canonical.com [185.125.188.121])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B4A274016B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 05:44:04 +0000 (UTC)
Received: from [10.1.1.110] (unknown [103.229.218.199])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPSA id 17DCA3F1C6; 
 Tue, 11 Jun 2024 05:43:52 +0000 (UTC)
Message-ID: <3359c6cb-cd2a-4738-8907-5018fa3e9606@canonical.com>
Date: Tue, 11 Jun 2024 13:43:49 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 vitaly.lifshits@intel.com, dima.ruinskiy@intel.com, davem@davemloft.net,
 pabeni@redhat.com, edumazet@google.com, sasha.neftin@intel.com,
 naamax.meir@linux.intel.com
References: <20240610013222.12082-1-hui.wang@canonical.com>
 <6ec4337f-7bf4-442d-8eca-128e528fde2a@molgen.mpg.de>
Content-Language: en-US
From: Hui Wang <hui.wang@canonical.com>
In-Reply-To: <6ec4337f-7bf4-442d-8eca-128e528fde2a@molgen.mpg.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1718084640;
 bh=Ni5EiqfE19GgJAagzEeA/URDCb51teDUC50fLcGZEHg=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=eCnFnn+qcyykwuC15o5VHAyS1VoCHpwuBJJEcxxGFxiyeqmKaijkTszUIbfG5Lt5+
 3owboPlzBnRiVDSYGQ4hazu2gMvtO19zDYcd0ckXIfRu9/UTnmf3BYH+y1V+J8j+Lc
 FXw3A2n/LjUbRG0UZULbnPaNB15TrNDo5L3Zf7NlBtaaRiNTMbzqb4bmEQv8/NcYYP
 RT5b6Vwnfmg8YX8oWtWydG85m2OYQAmbjxuhZzsnOt5zd+BMyOLORz8Ncmq8cOKl99
 pMOag0iyeVbeIXS2jTt1zqiMDXHsIZWhcWAeJiqaHmBbtdqX8GOq4mZTep0qOEwxaZ
 wPyWlV1vMXWlw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=eCnFnn+q
Subject: Re: [Intel-wired-lan] [iwl-net][PATCH] Revert "e1000e: move force
 SMBUS near the end of enable_ulp function"
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
Cc: regressions@lists.linux.dev, horms@kernel.org, jacob.e.keller@intel.com,
 todd.e.brandt@intel.com, rui.zhang@intel.com, dmummenschanz@web.de
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 6/10/24 14:36, Paul Menzel wrote:
> Dear Hui,
>
>
> Thank you for your patch.
>
>
> Am 10.06.24 um 03:32 schrieb Hui Wang:
>> This reverts commit bfd546a552e140b0a4c8a21527c39d6d21addb28
>>
>> Commit bfd546a552e1 ("e1000e: move force SMBUS near the end of
>> enable_ulp function") introduces system suspend failure on some
>> ethernet cards, at the moment, the pciid of the affected ethernet
>> cards include [8086:15b8] and [8086:15bc].
>>
>> About the regression the commit bfd546a552e1 ("e1000e: move force
>
> … regression introduced by commit …
Got it.
>
>> SMBUS near the end of enable_ulp function") tried to fix, looks like
>> it is not trivial to fix, we need to find a better way to resolve it.
>
> Please send a revert for commit 861e8086029e (e1000e: move force SMBUS 
> from enable ulp function to avoid PHY loss issue), present since Linux 
> v6.9-rc3 and not containing enough information in the commit messsage, 
> so we have a proper baseline. (That’s also why I originally suggested 
> to split it into two commits (revert + your change).)

In regards to reverting the commit 861e8086029e (e1000e: move force 
SMBUS from enable ulp function to avoid PHY loss issue), the author is 
Vitaly, let him evaluate how to act.

Thanks.

>
