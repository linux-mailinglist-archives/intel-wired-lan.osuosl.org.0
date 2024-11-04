Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 06EC49BAF2D
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2024 10:10:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3CF6960667;
	Mon,  4 Nov 2024 09:10:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bDyTFpLgtZHd; Mon,  4 Nov 2024 09:10:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 40D2060682
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730711425;
	bh=LW8DGPfEs7HnHAYYmLN2R9mC4VbYzskoc6TF8bDoAnw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sdfym7hIrfySpWilFdP6W6cDjICiTuNP5C0pK8mf7RMmJe9/28lSPFfRjsp125Mi2
	 89ssjjHIhQOaQAHRx9zQm3HFI4G5grZTruwwOOVnI23k/cJlzaLrKHa2HrAIoHRJlX
	 hLDZol8+Z9XpfCr1Xa7+AOjVnVt2CGIkF7AMm+4Rpse5TNcEG5h4NPECErRBS1sXGp
	 5Uukli5/aIIaKh7/0UOx99lY4REN6X0C3gKS+UeL8y17KvcyztH2fnoKEj5/UbxjTZ
	 TLMGrhOak1RdUCNJ6afU2klS0A4Pd3deTyzXKUE447KOWqEmmhzc0alTJitjfZ1Bpw
	 4PLM2uee6XrXA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 40D2060682;
	Mon,  4 Nov 2024 09:10:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 75DEF723
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 09:10:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 56B1B605C4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 09:10:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cDNkYl3hOrBs for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2024 09:10:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0B125605A9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0B125605A9
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0B125605A9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 09:10:20 +0000 (UTC)
Received: from [192.168.0.53] (unknown [95.90.234.35])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 45DB261E5FE05;
 Mon, 04 Nov 2024 10:09:31 +0100 (CET)
Message-ID: <840b32a0-9346-4576-97ba-17af12eb4db4@molgen.mpg.de>
Date: Mon, 4 Nov 2024 10:09:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: David Laight <David.Laight@ACULAB.COM>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
References: <20241028100341.16631-1-michal.swiatkowski@linux.intel.com>
 <20241028100341.16631-3-michal.swiatkowski@linux.intel.com>
 <CADEbmW0=G8u7Y8L2fFTzan8S+Uz04nAMC+-dkj-rQb_izK88pg@mail.gmail.com>
 <ZyhxmxnxPcLk2ZcX@mev-dev.igk.intel.com>
 <ad5bf0e312d44737a18c076ab2990924@AcuMS.aculab.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <ad5bf0e312d44737a18c076ab2990924@AcuMS.aculab.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: [Intel-wired-lan] Small Integers: Big Penalty (was: [iwl-next v6
 2/9] ice: devlink PF MSI-X max and min parameter)
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com, netdev@vger.kernel.org,
 konrad.knitter@intel.com, pawel.chmielewski@intel.com, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, nex.sw.ncis.nat.hpm.dev@intel.com,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 jiri@resnulli.us, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear David, dear Michal,


Am 04.11.24 um 09:51 schrieb David Laight:
> From: Michal Swiatkowski
>> Sent: 04 November 2024 07:03
> ...
>>> The type of the devlink parameters msix_vec_per_pf_{min,max} is
>>> specified as u32, so you must use value.vu32 everywhere you work with
>>> them, not vu16.
>>>
>>
>> I will change it.
> 
> You also need a pretty good reason to use u16 anywhere at all.
> Just because the domain of the value is small doesn't mean the
> best type isn't [unsigned] int.
> 
> Any arithmetic (particularly on non x86) is likely to increase
> the code size above any perceived data saving.

In 2012 Scott Duplichan wrote *Small Integers: Big Penalty* [1]. Of 
course you always should measure yourself.


Kind regards,

Paul


[1]: https://notabs.org/coding/smallIntsBigPenalty.htm
