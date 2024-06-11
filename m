Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5D090317B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jun 2024 07:45:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 70DA582033;
	Tue, 11 Jun 2024 05:45:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LIoXS1JbbKhl; Tue, 11 Jun 2024 05:45:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9945C8202D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718084749;
	bh=1uQHXhtS+FSETeH2hqizhIc/c/smCB4G/AydYNkP0wA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UQOxOUqpJA0OFj7TM73NwyBmFx7KJ9EB6JwCEUINmvZX2AkGA0yhn1dIAf0K4pVtz
	 vhA0u64eTb0fxM2WgBF5BDhlvTLu4vOq3/fuMJQcuap+BHunfk3PUuWiHa0EM7l1lQ
	 WV9lnXcu/FNySIGM6SQdGti9323Iuxq69RrXdL1FUGUgJfNuQHM9mDLGBLT7a2g/U9
	 0awnoh5l2VZTqq9kCC5EPAcWbFNw8DRe/C4ffhmERUac1DyBjQ92a81pLpSjY5mpXw
	 K4cdmUgJ1R1JRnEe1YQ0WoadO15q9lRW/iwgofxKsoe1w0/vtFbTrkmL/NenvFqLdf
	 ay3J65qcn0aJw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9945C8202D;
	Tue, 11 Jun 2024 05:45:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 377601BF39F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 05:45:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2269E82012
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 05:45:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 74r0-27rwWaQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jun 2024 05:45:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.121;
 helo=smtp-relay-canonical-1.canonical.com;
 envelope-from=hui.wang@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 50F5C82011
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 50F5C82011
Received: from smtp-relay-canonical-1.canonical.com
 (smtp-relay-canonical-1.canonical.com [185.125.188.121])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 50F5C82011
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 05:45:46 +0000 (UTC)
Received: from [10.1.1.110] (unknown [103.229.218.199])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPSA id 5352A3F1C6; 
 Tue, 11 Jun 2024 05:45:33 +0000 (UTC)
Message-ID: <ccca7897-ac53-4056-8617-a3ace57bf7b6@canonical.com>
Date: Tue, 11 Jun 2024 13:45:28 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Zhang, Rui" <rui.zhang@intel.com>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "naamax.meir@linux.intel.com" <naamax.meir@linux.intel.com>,
 "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Neftin, Sasha" <sasha.neftin@intel.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>
References: <20240610013222.12082-1-hui.wang@canonical.com>
 <6ec4337f-7bf4-442d-8eca-128e528fde2a@molgen.mpg.de>
 <98ccb75d7ef48c182425f130e0b2ececeec630ec.camel@intel.com>
Content-Language: en-US
From: Hui Wang <hui.wang@canonical.com>
In-Reply-To: <98ccb75d7ef48c182425f130e0b2ececeec630ec.camel@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1718084741;
 bh=1uQHXhtS+FSETeH2hqizhIc/c/smCB4G/AydYNkP0wA=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=iULaIfvRVc3jFrI3242MAXXKclEeiHSfcQruSnS5M0Izuor8FRo/kkS6N0HrTVDj2
 LPjqfE0cuNz1ZpBa8alBxIEUIMT249UC+YNmyW5rBzz2DPNaGbTfUns/1i9VHFvVV6
 x1gof4Y0XOw6aXQbY0lP2VfFx+C15jP/9qKtaO5Y5czJS9q6B6oKi7SNGR8914m5vH
 2p91G6RknJz8PkAh/eM30E4WxOYv5svrLJpZtVbbi2LPkTag6HMtmUGZtPB6InHZ6D
 E8G0hMuOBViC5fSCFVATHHQHG+KVVyDr7wQCb5kg3IU8NZECb5gmbvCf9CHx3KrRDq
 95L8n3MziKSPA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=iULaIfvR
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Brandt,
 Todd E" <todd.e.brandt@intel.com>,
 "regressions@lists.linux.dev" <regressions@lists.linux.dev>,
 "horms@kernel.org" <horms@kernel.org>,
 "dmummenschanz@web.de" <dmummenschanz@web.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 6/10/24 22:14, Zhang, Rui wrote:
> On Mon, 2024-06-10 at 08:36 +0200, Paul Menzel wrote:
>> Dear Hui,
>>
>>
>>
>> Naama also added Tested-by lines two both commits in question. Could
>> Intel’s test coverage please extended to the problem at hand?
>>
>> Acked-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Plus that,
> 1. Todd and I can test with upstream + this patch to confirm that
>     a. the regression for Todd is gone.
>     b. the s2idle failure for me is back
> 2. I can test with upstream + this patch + revert of commit
> 861e8086029e (e1000e: move force SMBUS from enable ulp function to
> avoid PHY loss issue) to confirm s2idle is working again.
>
> thanks,
> rui
Thanks.
>
>>
>> Kind regards,
>>
>> Paul
