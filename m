Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 527B9B15B65
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jul 2025 11:22:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D05D140B58;
	Wed, 30 Jul 2025 09:22:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pbR17VXup0w0; Wed, 30 Jul 2025 09:22:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D80740B4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753867367;
	bh=rtrloE9sFpUz4h4rprIGtpQUhs6s4RahC3fvX1JZSkY=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7COo8Ou76crT2fGGx+wVDf+Mr6swwanJBojcEKhQdhfFoV5clx1df/n/LzcB9knYy
	 gKw9UTjvMd665+c5Fg7d+uQgBQUyOHfaRb6IjoO2TFOaSi/Nn8Ew9WhdKiQ1QAv8sH
	 31nGanbjU+gCVjZ7Pm9HkhWjV+QCdD4XIX6ay+ISAMs3ajedPINEa7gvy4AjzWulb/
	 1k3SZQ7Xi39KwZkASHQw43zLaI4v6BWPSrMflYfzc9e0Ub80JjaG2zLYlabg9me9No
	 9jxqJuL9laqeoMn8EjZegkwC9iQT3xzCYd1XD7M/aQsguEY+uTnRsR7K3W0beUIAgJ
	 v3HTHU5g6D7+g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D80740B4C;
	Wed, 30 Jul 2025 09:22:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 11D73194
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 09:22:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EC85D6136A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 09:22:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5H521emUUN4Q for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jul 2025 09:22:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:203:375::b3; helo=out-179.mta1.migadu.com;
 envelope-from=vadim.fedorenko@linux.dev; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2877C61369
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2877C61369
Received: from out-179.mta1.migadu.com (out-179.mta1.migadu.com
 [IPv6:2001:41d0:203:375::b3])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2877C61369
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 09:22:44 +0000 (UTC)
Message-ID: <15ca2392-1dbd-4f4d-a478-3d8edc32bc90@linux.dev>
Date: Wed, 30 Jul 2025 10:22:36 +0100
MIME-Version: 1.0
To: Jakub Kicinski <kuba@kernel.org>, Vadim Fedorenko <vadfed@meta.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 Donald Hunter <donald.hunter@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, netdev@vger.kernel.org
References: <20250729102354.771859-1-vadfed@meta.com>
 <20250729184529.149be2c3@kernel.org>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20250729184529.149be2c3@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1753867361;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rtrloE9sFpUz4h4rprIGtpQUhs6s4RahC3fvX1JZSkY=;
 b=OYO6I5Y2fAu0bstwMe43ByGLLWKHievWt+034SohhkqtNmRH2hqsj8WL126qhCJAAfaW4W
 L5ZUAaGYvyGAnNTo6k14Xmeo9Bcy9nCyKqY2OR8+dS+/G/oSrSJ/YTM8dg8yRsrnyYmrWv
 RFSFRyzu/0SCSpt6VRQTTSDe5bxC1GA=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=OYO6I5Y2
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

On 30/07/2025 02:45, Jakub Kicinski wrote:
> On Tue, 29 Jul 2025 03:23:54 -0700 Vadim Fedorenko wrote:
>> diff --git a/Documentation/netlink/specs/ethtool.yaml b/Documentation/netlink/specs/ethtool.yaml
>> index 1063d5d32fea2..3781ced722fee 100644
>> --- a/Documentation/netlink/specs/ethtool.yaml
>> +++ b/Documentation/netlink/specs/ethtool.yaml
>> @@ -1239,6 +1239,30 @@ attribute-sets:
>>           name: corr-bits
>>           type: binary
>>           sub-type: u64
>> +      -
>> +        name: hist
>> +        type: nest
>> +        multi-attr: True
>> +        nested-attributes: fec-hist
>> +      -
>> +        name: fec-hist-bin-low
>> +        type: s32
>> +      -
>> +        name: fec-hist-bin-high
>> +        type: s32
>> +      -
>> +        name: fec-hist-bin-val
>> +        type: u64
>> +  -
>> +    name: fec-hist
>> +    subset-of: fec-stat
> 
> no need to make this a subset, better to make it its own attr set

like a set for general histogram? or still fec-specific?

> 
>> +    attributes:
>> +      -
>> +        name: fec-hist-bin-low
>> +      -
>> +        name: fec-hist-bin-high
>> +      -
>> +        name: fec-hist-bin-val
>>     -
>>       name: fec
>>       attr-cnt-name: __ethtool-a-fec-cnt
> 
>> +static const struct ethtool_fec_hist_range netdevsim_fec_ranges[] = {
>> +	{  0,  0},
>> +	{  1,  3},
>> +	{  4,  7},
>> +	{ -1, -1}
>> +};
> 
> Let's add a define for the terminating element?

I believe it's about (-1, -1) case. If we end up using (0, 0) then there
is no need to define anything, right?

> 
>> +/**
>> + * struct ethtool_fec_hist_range - byte range for FEC bins histogram statistics
> 
> byte range? thought these are bit errors..
> 
>> + * sentinel value of { -1, -1 } is used as marker for end of bins array
>> + * @low: low bound of the bin (inclusive)
>> + * @high: high bound of the bin (inclusive)
>> + */
> 
>> +		len += nla_total_size_64bit(sizeof(u64) * ETHTOOL_FEC_HIST_MAX);
> 
> I don't think it's right, each attr is its own nla_total_size().
> Add a nla_total_size(8) to the calculation below

got it

> 
>> +		/* add FEC bins information */
>> +		len += (nla_total_size(0) +  /* _A_FEC_HIST */
>> +			nla_total_size(4) +  /* _A_FEC_HIST_BIN_LOW */
>> +			nla_total_size(4)) * /* _A_FEC_HIST_BIN_HI */
>> +			ETHTOOL_FEC_HIST_MAX;

