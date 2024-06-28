Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C439291BFBA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jun 2024 15:39:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 07796811AA;
	Fri, 28 Jun 2024 13:39:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aBzIB7R4nmo5; Fri, 28 Jun 2024 13:39:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 01B16811D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719581980;
	bh=J8iJ3WZEzE+XOtPFiXr+9ajAk05iUwZOxwWMH90pnmc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZSdaWnn+HN0EsX55eZH2QKouFYlIukNCh5VnFKXZFnp3Jsqv/xDxmuBaGemSUOVPk
	 7hiuOMUtkPg0lnyaN8v0aTJ81cHyo7fi80mR055Z0ppvKUukmbla+EMU35aS8C5ElS
	 CSNXj1SqFZ/k2lPoUFvRNhItbbdxgWbcrFiJECtSMI8MK9lUNCOT2KrWEuOb/2sOjf
	 2GkGqOTb5bRWY5KHy0pBOlAnqsGtx0El41u11LVnRQijHHUtwPpQXkEHExDsUiJvi7
	 GSSJ5QVt00byKfgNlZgGZlppvtPZz+bjTvnSmDlDVis47J+Hn3dTCE+Ll2YwIzOUf8
	 nxVv3SlYN8Z7w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 01B16811D8;
	Fri, 28 Jun 2024 13:39:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A79771BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2024 13:39:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9F69841C23
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2024 13:39:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IcDXxDmznkVX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jun 2024 13:39:36 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1D23A41C17
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1D23A41C17
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1D23A41C17
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2024 13:39:35 +0000 (UTC)
X-CSE-ConnectionGUID: UzaUAS4rSmWs4p2rx5LRiw==
X-CSE-MsgGUID: zwh0aObSReupJxdRI/J+IQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11117"; a="16503420"
X-IronPort-AV: E=Sophos;i="6.09,169,1716274800"; d="scan'208";a="16503420"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2024 06:39:35 -0700
X-CSE-ConnectionGUID: J+pl2M/eQFyiRAJKeWbYMQ==
X-CSE-MsgGUID: 5oCMnSywSvW5oGRBOKWoPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,169,1716274800"; d="scan'208";a="82293240"
Received: from mszycik-mobl1.ger.corp.intel.com (HELO [10.246.26.245])
 ([10.246.26.245])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2024 06:39:33 -0700
Message-ID: <96df3ad4-dd4b-409d-98ed-aa5c6173b579@linux.intel.com>
Date: Fri, 28 Jun 2024 15:39:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
References: <20240618141157.1881093-1-marcin.szycik@linux.intel.com>
 <20240618141157.1881093-6-marcin.szycik@linux.intel.com>
 <20240628124409.GD783093@kernel.org>
Content-Language: en-US
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <20240628124409.GD783093@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719581976; x=1751117976;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=faYMoe80vaKC3QXdB853GMfAvH8zjYHBxZAuLm8qo0o=;
 b=CBBhvc1/PVyTm6q9vuv/tuDxcN3w2NRcH+JrLetF27fXsUiNw80muxRb
 o9HXbeYz5wiNwKjY45CjKka70tZsU0u3TjBsT8HbDRbST04zkD4cZWojh
 Zgdw9hWgI9rqAsuRRlgFcfgMpFBY26qKklboOnKlhQf7yZJNCpE1MaaxL
 T+hqjGl6SRwQ7gWfj09TbK8pG2of/wVEADWIjhPlux7pbaSB2+WIN8qQI
 0KhfACe4Pj61uc4ZUmIl95eINSgAkALPrifZ4gz8fPnb0gK0zU8qrh/PF
 aVrYiQaix8eqcMSfMPTjHKY2bG03takfWurRyd3ujo4U3QNM6I7m/4xPY
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CBBhvc1/
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 5/6] ice: Optimize switch
 recipe creation
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
Cc: netdev@vger.kernel.org, michal.swiatkowski@linux.intel.com,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 28.06.2024 14:44, Simon Horman wrote:
> On Tue, Jun 18, 2024 at 04:11:56PM +0200, Marcin Szycik wrote:
>> Currently when creating switch recipes, switch ID is always added as the
>> first word in every recipe. There are only 5 words in a recipe, so one
>> word is always wasted. This is also true for the last recipe, which stores
>> result indexes (in case of chain recipes). Therefore the maximum usable
>> length of a chain recipe is 4 * 4 = 16 words. 4 words in a recipe, 4
>> recipes that can be chained (using a 5th one for result indexes).
>>
>> Current max size chained recipe:
>> 0: smmmm
>> 1: smmmm
>> 2: smmmm
>> 3: smmmm
>> 4: srrrr
>>
>> Where:
>> s - switch ID
>> m - regular match (e.g. ipv4 src addr, udp dst port, etc.)
>> r - result index
>>
>> Switch ID does not actually need to be present in every recipe, only in one
>> of them (in case of chained recipe). This frees up to 8 extra words:
>> 3 from recipes in the middle (because first recipe still needs to have
>> switch ID), and 5 from one extra recipe (because now the last recipe also
>> does not have switch ID, so it can chain 1 more recipe).
>>
>> Max size chained recipe after changes:
>> 0: smmmm
>> 1: Mmmmm
>> 2: Mmmmm
>> 3: Mmmmm
>> 4: MMMMM
>> 5: Rrrrr
>>
>> Extra usable words available after this change are highlighted with capital
>> letters.
>>
>> Changing how switch ID is added is not straightforward, because it's not a
>> regular lookup. Its FV index and mask can't be determined based on protocol
>> + offset pair read from package and instead need to be added manually.
>>
>> Additionally, change how result indexes are added. Currently they are
>> always inserted in a new recipe at the end. Example for 13 words, (with
>> above optimization, switch ID being one of the words):
>> 0: smmmm
>> 1: mmmmm
>> 2: mmmxx
>> 3: rrrxx
>>
>> Where:
>> x - unused word
>>
>> In this and some other cases, the result indexes can be moved just after
>> last matches because there are unused words, saving one recipe. Example
>> for 13 words after both optimizations:
>> 0: smmmm
>> 1: mmmmm
>> 2: mmmrr
>>
>> Note how one less result index is needed in this case, because the last
>> recipe does not need to "link" to itself.
>>
>> There are cases when adding an additional recipe for result indexes cannot
>> be avoided. In that cases result indexes are all put in the last recipe.
>> Example for 14 words after both optimizations:
>> 0: smmmm
>> 1: mmmmm
>> 2: mmmmx
>> 3: rrrxx
>>
>> With these two changes, recipes/rules are more space efficient, allowing
>> more to be created in total.
>>
>> Co-developed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> 
> I appreciate the detailed description above, it is very helpful.
> After a number of readings of this patch - it is complex -
> I was unable to find anything wrong. And I do like both the simplification
> and better hw utilisation that this patch (set) brings.
> 
> So from that perspective:
> 
> Reviewed-by: Simon Horman <horms@kernel.org>
> 
> I would say, however, that it might have been easier to review
> if somehow this patch was broken up into smaller pieces.
> I appreciate that, in a sense, that is what the other patches
> of this series do. But nonetheless... it is complex.

Yeah... it is a bit of a revolution, and unfortunately I don't think much of
if could be separated into other patches. Maybe functions like
fill_recipe_template() and bookkeep_recipe() would be good candidates.
If there will be another version, I'll try to separate some of it.

Thank you for reviewing!
Marcin

> 
> ...
