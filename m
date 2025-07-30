Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD26B162F7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jul 2025 16:40:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 557818231E;
	Wed, 30 Jul 2025 14:40:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EcX_jrWTGB5K; Wed, 30 Jul 2025 14:39:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 72C7C821F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753886399;
	bh=n+4H2xiBKW5X0cWt2WZdKgHJgvToyDebbzm/YnZuTIQ=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZiLWSMTxdajtDF7UfYLoLXDdoGciPkGh0ORb3Rjg1vDXXNj8zl3yMNqY+CfN4Ps2k
	 OI471utbMHIiFr7lf4BiOVireW3QkLyMCgt5VS9UZsLqAMj4V3PDIX5lPT8vcbIuP7
	 rqn7/n6lI/0y9hKFzwiQgRQl74vvHmeRZjXmfJL4HzQajS0gqoYKj92tBjdrVy72NL
	 n/oOXCCnhMsRGN3q/FamI5ibWIzVwwYESGvx9q8sI2z3tM+vgd05UMf5k9kd8ranjb
	 xiw8HTmRgGuBDqM0ZCVgCm8u3v9WSMr45+JMG4h7UCvwC6+Aovj/MO86lzZDg0Bu2K
	 cV87a8datAaZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 72C7C821F4;
	Wed, 30 Jul 2025 14:39:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8A67A186
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 14:39:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7C3E540B74
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 14:39:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 80PH8Xv-u53d for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jul 2025 14:39:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=91.218.175.184;
 helo=out-184.mta0.migadu.com; envelope-from=vadim.fedorenko@linux.dev;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7DA7D40B56
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7DA7D40B56
Received: from out-184.mta0.migadu.com (out-184.mta0.migadu.com
 [91.218.175.184])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7DA7D40B56
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 14:39:57 +0000 (UTC)
Message-ID: <f6941817-6be2-400e-bee9-0be075884aa2@linux.dev>
Date: Wed, 30 Jul 2025 15:39:50 +0100
MIME-Version: 1.0
To: Jakub Kicinski <kuba@kernel.org>
Cc: Andrew Lunn <andrew@lunn.ch>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 Donald Hunter <donald.hunter@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, netdev@vger.kernel.org
References: <20250729102354.771859-1-vadfed@meta.com>
 <982c780a-1ff1-4d79-9104-c61605c7e802@lunn.ch>
 <1a7f0aa0-47ae-4936-9e55-576cdf71f4cc@linux.dev>
 <9c1c8db9-b283-4097-bb3f-db4a295de2a5@lunn.ch>
 <4270ff14-06cd-4a78-afe7-1aa5f254ebb6@linux.dev>
 <c52af63b-1350-4574-874e-7d6c41bc615d@lunn.ch>
 <424e38be-127d-49d8-98bf-1b4a2075d710@linux.dev>
 <20250729185146.513504e0@kernel.org>
 <bb66c931-ac17-4a70-ba11-2a109794b9e2@linux.dev>
 <20250730064419.2588a5e3@kernel.org>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20250730064419.2588a5e3@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1753886393;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=n+4H2xiBKW5X0cWt2WZdKgHJgvToyDebbzm/YnZuTIQ=;
 b=Z1mwff7aBKUCInA4WktPHH02b14TVa1a+4f21oXqNUuC2yY1uVQvuPdzQSzbJRFuYu5Jxu
 g68ZeyxPSJG4/bexRebzH+uQUWZm/a37uBeSHgBQ0ziDiALXOCdqKqu7O7COhQJShOA0fx
 +7b/KPPMsC7MaxQ9ulrWlOMT23zNeFQ=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=Z1mwff7a
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

On 30/07/2025 14:44, Jakub Kicinski wrote:
> On Wed, 30 Jul 2025 10:18:46 +0100 Vadim Fedorenko wrote:
>>> IDK, 0,0 means all symbols were completely correct.
>>> It may be useful for calculating bit error rate?
>>
>> The standard doesn't have this bin, its value can be potentially
>> deducted from all packets counter.
> 
> We have a number of counters outside of the standard. Here the
> extension is pretty trivial, so I don't see why we'd deprive
> the user of the information HW collects. The translation between
> bytes and symbols is not exact. Not sure we care about exactness
> but, again, trivial to keep the 0,0 bin.
> 
>>> A workaround for having the {-1, -1} sentinel could also be to skip
>>> the first entry:
>>>
>>> 	if (i && !ranges[i].low && !ranges[i].high)
>>> 		break;
>>
>> I was thinking of this way, the problem is that in the core we rely on
>> the driver to provide at least 2 bins and we cannot add any compile-time
>> checks because it's all dynamic.
> 
> 1 bin is no binning, its not a legit use of the histogram API.
> We have a counter for corrected symbols already, that's the "1 bin".

Got it. Ok, I agree, we can keep bin (0,0) as the very first one, I'll
implement it in the way you suggested above
