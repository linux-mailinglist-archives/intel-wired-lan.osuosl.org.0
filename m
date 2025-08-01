Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F80B1881D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Aug 2025 22:28:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD014608EF;
	Fri,  1 Aug 2025 20:28:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cMw8ePDOYV7g; Fri,  1 Aug 2025 20:28:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 570BE611B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754080107;
	bh=9HGI5G6xJ5gNX1PxU74iWvEIs3HCLmfr9kJA+OqtV40=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nM33g5Y5FBYjmJbWHrnIEgPGi+vNGXOKdCFvhQQXvgeAo0EDgPYS80foqDUM4rhyE
	 KLXUHaRFjD+SW2zwI8xYBjgzkPv8i9xTYReObTL8468C26C1VXq8RbLJIuh5kKZ6oY
	 WB1uvvUAjUJDW3LX9818+5UgYwe03L94Dtf/bw0e5u5I1xHFNy52uJmo+RcMXVPl50
	 r6UNAlvgVBOFNJglZu0rCRTgeQcDlfF++jtFxFvOgAob3Nj0tg3Ou+sQfhXYHe1xsK
	 5PXB4usdenvzebrl59EqzUkxONlUS08vT8PYGTItGGpe13iJD6HBDdFyUwokLP9Q9m
	 epkXgtigHzyZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 570BE611B5;
	Fri,  1 Aug 2025 20:28:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id EC03813D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 20:28:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D20C340ABD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 20:28:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cUzVLPs3XYUr for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Aug 2025 20:28:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:1004:224b::b6; helo=out-182.mta0.migadu.com;
 envelope-from=vadim.fedorenko@linux.dev; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 063F440A7C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 063F440A7C
Received: from out-182.mta0.migadu.com (out-182.mta0.migadu.com
 [IPv6:2001:41d0:1004:224b::b6])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 063F440A7C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 20:28:23 +0000 (UTC)
Message-ID: <7e995c4d-8245-4e47-88fb-6a735dbc0dda@linux.dev>
Date: Fri, 1 Aug 2025 21:28:17 +0100
MIME-Version: 1.0
To: Jakub Kicinski <kuba@kernel.org>
Cc: Andrew Lunn <andrew@lunn.ch>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 Donald Hunter <donald.hunter@gmail.com>, Carolina Jubran
 <cjubran@nvidia.com>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, netdev@vger.kernel.org
References: <20250731231019.1809172-1-vadfed@meta.com>
 <20250801130648.341995ba@kernel.org>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20250801130648.341995ba@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1754080100;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9HGI5G6xJ5gNX1PxU74iWvEIs3HCLmfr9kJA+OqtV40=;
 b=AD7/PbQs7GfdEHxJLn0x2lH4HKdmbtOyabwBdhMLWEyeBLlx66GYyQeUv9sengG0PMOrjm
 EJnQQoMM/lgTEHwwECiKyQY3lsW0sQlVl4mowjvb6bwwWZzYGY3WyXlYIBaMMLv58Bh73M
 eHTOjVfq9lw8E+zxgsGjZtPs8tJDu0o=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=AD7/PbQs
Subject: Re: [Intel-wired-lan] [RFC PATCH v2] ethtool: add FEC bins
 histogramm report
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

On 01/08/2025 21:06, Jakub Kicinski wrote:
> On Thu, 31 Jul 2025 16:10:19 -0700 Vadim Fedorenko wrote:
>> - remove sentinel (-1, -1) and use (0, 0) as common array break.
>>    bin (0, 0) is still possible but only as a first element of
>>    ranges array
> 
> I don't see this change in the diff? It's still -1,-1
> 
> Also, not seeing per-lane support here.

My bad, didn't commit after testing :(
I'll wait 24h and submit v3...


>> diff --git a/Documentation/netlink/specs/ethtool.yaml b/Documentation/netlink/specs/ethtool.yaml
>> index 1063d5d32fea2..69779b51f1dfd 100644
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
>> +        type: uint
>> +      -
>> +        name: fec-hist-bin-high
>> +        type: uint
> 
> The bounds can be u32, TBH. The value really is a u16 but we don't want
> to waste space on padding in Netlink. Still, no need to go all the way
> to uint.

Got it

>> +        name: fec-hist-bin-val
>> +        type: uint

