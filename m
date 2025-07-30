Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A4AB6B15F83
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jul 2025 13:33:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4772340C1D;
	Wed, 30 Jul 2025 11:33:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 74X7_Hbmzn-9; Wed, 30 Jul 2025 11:32:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 970CA40C73
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753875179;
	bh=uHW3kJohF557YGobfQDpyiyx5O/H1BpxwxCIIzE1A1k=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=soKjtr+xULpBICZJC7A1qlp/rF94wLbdo0e4Fgdg7wj9YW5PLBf6NCurLg+hsKZUC
	 gEhG2vELm7hkG2jd10j8WQsmxEwyHmQQK/wIfVBT4hdAAQ10SL/XI1vWL3rXgHJrju
	 zw7kaC7d/MIaB/krfTSGWtc9o9NHMtETLq2ZNnuOnTustjbXbJ8okachroSmabFCNb
	 aL89HcKzKxJ10oWHIJtwoot3v+nzwZv8WO2QWgOgyI+1RzGPIw88aPwjf3hFrML1KQ
	 kQP/YyQAnCslKJm50LWDMOrK18liPGMresp5t61Ccq1aqZo68cpBEq/jcdNtmn/x6X
	 QEvhz/2bhZbTA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 970CA40C73;
	Wed, 30 Jul 2025 11:32:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id E35E813D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 11:32:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C9C4040C1D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 11:32:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3-70bHRIEqnQ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jul 2025 11:32:56 +0000 (UTC)
X-Greylist: delayed 62687 seconds by postgrey-1.37 at util1-new.osuosl.org;
 Wed, 30 Jul 2025 11:32:55 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B4C0640C0E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B4C0640C0E
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=95.215.58.173;
 helo=out-173.mta1.migadu.com; envelope-from=vadim.fedorenko@linux.dev;
 receiver=<UNKNOWN> 
Received: from out-173.mta1.migadu.com (out-173.mta1.migadu.com
 [95.215.58.173])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B4C0640C0E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 11:32:55 +0000 (UTC)
Message-ID: <8b22e9d3-e4d2-4726-9622-28881b2cd406@linux.dev>
Date: Wed, 30 Jul 2025 12:32:43 +0100
MIME-Version: 1.0
To: Gal Pressman <gal@nvidia.com>, Andrew Lunn <andrew@lunn.ch>,
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 intel-wired-lan@lists.osuosl.org, Donald Hunter <donald.hunter@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>
Cc: Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org
References: <20250729102354.771859-1-vadfed@meta.com>
 <041f79a2-5f96-4427-b0e2-6a159fbec84a@nvidia.com>
 <1129bf26-273e-4685-a0b8-ed8b0e4050f3@linux.dev>
 <3e84a20e-87ea-413c-9e9d-950605a55bf6@nvidia.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <3e84a20e-87ea-413c-9e9d-950605a55bf6@nvidia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1753875171;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uHW3kJohF557YGobfQDpyiyx5O/H1BpxwxCIIzE1A1k=;
 b=bukVWX11iXapIW2wm/IWiowp//jiNbLbLJLMmIY9LeEDVHA1rcLhzj4rcYxfFIO1n2CefM
 vgUA28+Glk97rQsmJSHzdjLQq/Sa/4vUonVYXMUm27DYo6za5u5zR6RydbMBDLouMeuebL
 vxEv4qDovEnshA2Q1SJmunSYt9JQcto=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=bukVWX11
Subject: Re: [Intel-wired-lan] [RFC PATCH] ethtool: add FEC bins histogramm
 report
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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

On 30/07/2025 11:42, Gal Pressman wrote:
> On 30/07/2025 12:29, Vadim Fedorenko wrote:
>> On 30/07/2025 06:54, Gal Pressman wrote:
>>> On 29/07/2025 13:23, Vadim Fedorenko wrote:
>>>> diff --git a/drivers/net/netdevsim/ethtool.c b/drivers/net/netdevsim/
>>>> ethtool.c
>>>> index f631d90c428ac..7257de9ea2f44 100644
>>>> --- a/drivers/net/netdevsim/ethtool.c
>>>> +++ b/drivers/net/netdevsim/ethtool.c
>>>> @@ -164,12 +164,25 @@ nsim_set_fecparam(struct net_device *dev,
>>>> struct ethtool_fecparam *fecparam)
>>>>        ns->ethtool.fec.active_fec = 1 << (fls(fec) - 1);
>>>>        return 0;
>>>>    }
>>>> +static const struct ethtool_fec_hist_range netdevsim_fec_ranges[] = {
>>>> +    {  0,  0},
>>>> +    {  1,  3},
>>>> +    {  4,  7},
>>>> +    { -1, -1}
>>>> +};
>>>
>>> The driver-facing API works nicely when the ranges are allocated as
>>> static arrays, but I expect most drivers will need to allocate it
>>> dynamically as the ranges will be queried from the device.
>>> In that case, we need to define who is responsible of freeing the ranges
>>> array.
>>
>> Well, the ranges will not change during link operation, unless the type
>> of FEC is changed. You may either have static array of FEC ranges per
>> supported FEC types. Or query it on link-up event and reuse it on every
>> call for FEC stats. In this case it's pure driver's responsibility to
>> manage memory allocations. There is definitely no need to re-query
>> ranges on every single call for stats.
> 
> This is just adding unnecessary complexity to the drivers, trying to
> figure out the right lifetime for this array.
> It will be much simpler if the core passes an array for the drivers to
> fill. That way both static and dynamic ranges would work the same.

There is no need to pass huge pre-allocated array for drivers which
doesn't have support for the histogram. The core doesn't have this info
about the driver. And again - there is no need to refill ranges array
every time as it will not change. I believe it's pure driver area of
knowledge and responsibility.
