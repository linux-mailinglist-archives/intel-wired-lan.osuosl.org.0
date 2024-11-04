Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D06F39BAF4C
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2024 10:12:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 773CB60682;
	Mon,  4 Nov 2024 09:12:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uDfSpm79bu32; Mon,  4 Nov 2024 09:12:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 986FD606A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730711561;
	bh=XU/Mn1YhAucZVdDUQrzg+CRJEBWZ4/IrOxnNM8X3+wk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8sPKSfp4AfvauIJ7gk+Sh0H9QLcA/irWIp17xQeV/Hdfp8euU6bw+CiJJhJOLFMWL
	 /oPEgNqw5WV/Ng/eT2x/dswmgBwjR8TVVpsbLv/No/06Tu1SQ+Lv/TJ4KG5yf4ROb3
	 Qa3wCpEf7G9WToRvoE459E+C1QX0o4HJUQlHa1E9u0YKvPM+97S40N6XYozrySe0cj
	 wUZtJl7FWK1E3/iFiRiCMVz57uN6zuBKU0WODfebpVv8uQTbq1OfJAoojCvY2NCmxi
	 HHaaBbBUv8ah0FJCKCi6g2mJpveipgilv3X7JohYP6cOiER3WI3wC7cUHaeyRk8NeG
	 CcwNb2tYH2Mkw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 986FD606A7;
	Mon,  4 Nov 2024 09:12:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 26E48723
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 09:12:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0763B80E52
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 09:12:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s82S3FxIgvSy for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2024 09:12:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DD59380E53
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DD59380E53
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DD59380E53
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 09:12:36 +0000 (UTC)
Received: from [192.168.0.53] (unknown [95.90.234.35])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 145BC61BF4882;
 Mon, 04 Nov 2024 10:12:15 +0100 (CET)
Message-ID: <478248d8-559b-4324-a566-8ce691993018@molgen.mpg.de>
Date: Mon, 4 Nov 2024 10:12:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Paul Menzel <pmenzel@molgen.mpg.de>
To: David Laight <David.Laight@ACULAB.COM>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com,
 netdev@vger.kernel.org, konrad.knitter@intel.com,
 pawel.chmielewski@intel.com, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com, jiri@resnulli.us,
 przemyslaw.kitszel@intel.com
References: <20241028100341.16631-1-michal.swiatkowski@linux.intel.com>
 <20241028100341.16631-3-michal.swiatkowski@linux.intel.com>
 <CADEbmW0=G8u7Y8L2fFTzan8S+Uz04nAMC+-dkj-rQb_izK88pg@mail.gmail.com>
 <ZyhxmxnxPcLk2ZcX@mev-dev.igk.intel.com>
 <ad5bf0e312d44737a18c076ab2990924@AcuMS.aculab.com>
 <840b32a0-9346-4576-97ba-17af12eb4db4@molgen.mpg.de>
Content-Language: en-US
In-Reply-To: <840b32a0-9346-4576-97ba-17af12eb4db4@molgen.mpg.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] Small Integers: Big Penalty
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

[Cc: -nex.sw.ncis.nat.hpm.dev@intel.com (550 #5.1.0 Address rejected.)]

Am 04.11.24 um 10:09 schrieb Paul Menzel:
> Dear David, dear Michal,
> 
> 
> Am 04.11.24 um 09:51 schrieb David Laight:
>> From: Michal Swiatkowski
>>> Sent: 04 November 2024 07:03
>> ...
>>>> The type of the devlink parameters msix_vec_per_pf_{min,max} is
>>>> specified as u32, so you must use value.vu32 everywhere you work with
>>>> them, not vu16.
>>>>
>>>
>>> I will change it.
>>
>> You also need a pretty good reason to use u16 anywhere at all.
>> Just because the domain of the value is small doesn't mean the
>> best type isn't [unsigned] int.
>>
>> Any arithmetic (particularly on non x86) is likely to increase
>> the code size above any perceived data saving.
> 
> In 2012 Scott Duplichan wrote *Small Integers: Big Penalty* [1]. Of 
> course you always should measure yourself.
> 
> 
> Kind regards,
> 
> Paul
> 
> 
> [1]: https://notabs.org/coding/smallIntsBigPenalty.htm
