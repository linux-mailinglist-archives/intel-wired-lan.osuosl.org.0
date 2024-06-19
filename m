Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 14FE490EB1F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Jun 2024 14:29:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9DE19610C0;
	Wed, 19 Jun 2024 12:29:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W4YrVM2Si6sz; Wed, 19 Jun 2024 12:29:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0172C610BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718800194;
	bh=myYnsO217tM7lfrQYDK/8orrsR0Obp2WyE9FkUJFLr8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6h0PmNTLYxJe4TJ+sEtQ3CdmcapZRbHVL27azSdfCiY3fZA6V5V+hgZwPMsuVh0Hd
	 D5UHrKuYPLj5JMRwue3zxQem2fPosGaQJm+LE8hApOI3nE9NDY1g+CfL7g8fLFgn0Z
	 qQnojy/x2Rn7FdM9tlShq+fJHxhRhZpMqHX8VJCedArb5ew7xdKxBXy4XUloM1LkHP
	 e9298hYSqh8fnp7kA5YUpTNNOh+vyAfm9tTBfJoBXByJlj0RRT2YpWok0lyoZX+JM2
	 8IzhNoQ3etau5py71/N1ha3CfFBotxcxEzkW703WLqW7r6U6MZKD7xzpB2xMhvLFRF
	 GKz8396VC/vRA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0172C610BA;
	Wed, 19 Jun 2024 12:29:54 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AC17D1BF3AF
 for <intel-wired-lan@osuosl.org>; Wed, 19 Jun 2024 12:29:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A5DC7810CD
 for <intel-wired-lan@osuosl.org>; Wed, 19 Jun 2024 12:29:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 25wA8AwRpvPE for <intel-wired-lan@osuosl.org>;
 Wed, 19 Jun 2024 12:29:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.121;
 helo=smtp-relay-canonical-1.canonical.com;
 envelope-from=hui.wang@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B61C080BDB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B61C080BDB
Received: from smtp-relay-canonical-1.canonical.com
 (smtp-relay-canonical-1.canonical.com [185.125.188.121])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B61C080BDB
 for <intel-wired-lan@osuosl.org>; Wed, 19 Jun 2024 12:29:51 +0000 (UTC)
Received: from [192.168.0.106] (unknown [123.112.65.116])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPSA id EC3563FC0C; 
 Wed, 19 Jun 2024 12:29:47 +0000 (UTC)
Message-ID: <56f1848f-adde-4384-ab09-0e7d755cd11d@canonical.com>
Date: Wed, 19 Jun 2024 20:29:44 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>, intel-wired-lan@osuosl.org
References: <20240613120134.224585-1-vitaly.lifshits@intel.com>
 <4c367721-e893-48e2-9de3-f4f6b0a3ba73@canonical.com>
 <94c2e910-de36-4e6a-b8d4-34ac5baad328@intel.com>
Content-Language: en-US
From: Hui Wang <hui.wang@canonical.com>
In-Reply-To: <94c2e910-de36-4e6a-b8d4-34ac5baad328@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1718800188;
 bh=myYnsO217tM7lfrQYDK/8orrsR0Obp2WyE9FkUJFLr8=;
 h=Message-ID:Date:MIME-Version:Subject:To:References:From:
 In-Reply-To:Content-Type;
 b=Iqm2RvvxRkXYJG58pLeVHI/SrFyPyeiXAjxWSVkQgEub9q/3oH40diICJKcG1DdFN
 Z6E7uQr4Set17fA/b/y9Hc6n5z6ifPFtaEZAVEE79Uqvt/FK8Bj5QGb7rYA9L98m9z
 kQ4ixHF8KrBTjUB45hL0G0Pxbu0c5InTScfuNDUip+f71QnRUrPpptsKVacuaIeeZS
 M7CyM4mENA4pm1aNhvOH+37eICywXAWhY54qKKLAZ9sBr64KpbibhEqYvKX4sc8MwC
 ifiUKSZ8XPL0YB5n6iKdldrOAbJn1NV0f90jPpjx2IAmINZ7Caq4KlN6s8EjDK4jT/
 EuVL4sEHGUoig==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=Iqm2Rvvx
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: fix force
 smbus during suspend flow
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 6/19/24 20:17, Lifshits, Vitaly wrote:
>
> Hi Hui,
>
> On 6/14/2024 4:53 AM, Hui Wang wrote:
>> Hi Vitaly
>>
>> I tested the patch on a laptop with the ethernet card [8086:550A], 
>> the system suspend and resume worked well with the cable plugged or 
>> unplugged.
>>
>> But I still think that reverting 2 regression commits is a better 
>> solution.
> Reverting the patches will bring us back to the starting point where 
> we had a PHY access loss issue during suspend flows on MTL systems. I 
> don't think that it is what we want to accomplish.
OK, got it.
>>
>> Thanks.
...
>> +    if (hw->mac.type == e1000_pch_mtp) {
>>
>> Maybe we should also check ret_val like below:
> No, because we want to unconditionally force the MAC and the PHY to 
> transition to SMBUS mode. This is how it used to work previously 
> before moving this part of the code to the end of the function.

OK, got it.

Thanks.

>>
>> if (!ret_val && hw->mac.type == e1000_pch_mtp) {
>>
