Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F32A35C59
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Feb 2025 12:20:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3228B83B22;
	Fri, 14 Feb 2025 11:20:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7NWMEoIp2bSc; Fri, 14 Feb 2025 11:20:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B1D483AF4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739532024;
	bh=9l3d5h97w8JyBfnaFKOZUCgbofNi5r9Nz0RaWVnwioM=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DsolqgHRq49S/DBczb61DCduMs6w4rZpzemk43iqtLYhPjAo7aX//THFfkuHxprD5
	 aNkb5IYsd2R0Lfv+28EWDsG/9xi+M8A3JDLhZT4tYwnZFMXwKZGc1h5ze2V4UkEn+e
	 LYjOTFdRSY1mr7BEqz8TxSCYhRA0O+NEmHcG0dlLprLtAXhzPMBZSZ5oG+bNnYK5+B
	 9jrDjzHfCZNF+2TYflseD4YoAss0E5y7l71fSHZg9JZ/FdlJIbiLGhBFo0Ix4Vwssi
	 I09zi+r4CiwCakpkuAnas8NR3PkOCE/5p3s2g1NTd3dPHwKzDYgU8GA7S7xJu3pKRE
	 6GCgyyub6vNig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4B1D483AF4;
	Fri, 14 Feb 2025 11:20:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6D510C2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 11:20:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 501D783AD4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 11:20:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fi9eNor2Lu38 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Feb 2025 11:20:20 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E166283981
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E166283981
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E166283981
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 11:20:19 +0000 (UTC)
X-CSE-ConnectionGUID: gDHrNqbRRuiJBCvaWEltdg==
X-CSE-MsgGUID: ShYgltDqS9ybJxnqTiWMPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="50921228"
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="50921228"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 03:20:19 -0800
X-CSE-ConnectionGUID: y7/+bKRnQVCJqHfK1+vedw==
X-CSE-MsgGUID: e3HzIYJQSCC/jYLkKMQc/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="113624859"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.89.75])
 ([10.247.89.75])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 03:20:11 -0800
Message-ID: <afa50e3a-914b-46b6-8401-0589b6099f68@linux.intel.com>
Date: Fri, 14 Feb 2025 19:20:08 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Kurt Kanzenbach <kurt@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Simon Horman <horms@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Furong Xu <0x1207@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Serge Semin <fancer.lancer@gmail.com>,
 Xiaolei Wang <xiaolei.wang@windriver.com>,
 Suraj Jaiswal <quic_jsuraj@quicinc.com>,
 Kory Maincent <kory.maincent@bootlin.com>, Gal Pressman <gal@nvidia.com>,
 Jesper Nilsson <jesper.nilsson@axis.com>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
References: <87cyfmnjdh.fsf@kurt.kurt.home>
 <5902cc28-a649-4ae9-a5ba-83aa265abaf8@linux.intel.com>
 <20250213130003.nxt2ev47a6ppqzrq@skbuf>
 <1c981aa1-e796-4c53-9853-3eae517f2f6d@linux.intel.com>
 <877c5undbg.fsf@kurt.kurt.home> <20250213184613.cqc2zhj2wkaf5hn7@skbuf>
 <87v7td3bi1.fsf@kurt.kurt.home>
 <b7740709-6b4a-4f44-b4d7-e265bb823aca@linux.intel.com>
 <874j0wrjk2.fsf@kurt.kurt.home>
 <641ab972-e110-4af2-ad9b-6688cee56562@linux.intel.com>
 <20250214102206.25dqgut5tbak2rkz@skbuf>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <20250214102206.25dqgut5tbak2rkz@skbuf>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739532020; x=1771068020;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=bsMoByqwV8q04F4BIn7mVkZvxnRBIcre3Xld+Gy6r0M=;
 b=VEAcjJIvFJxUj3JHJa8hqqc3ETNBTRupaiK4U0zddaSVQ8F9OPBOCeST
 xp01eH9jJ73k88Z+8zXxdF2acGkXFV9X5DnemhmY7VIVbUYEPYY90to/a
 5d2gYHkU0koLcsoaSbGqujD7Kd23tfpZX9/iOD/lg9mPs2axMT3iHgZGW
 HRHkvajlEFIdBIjcf5EFVOE2CQtxKG12b7icK/r5918KlDLZodLnVygpk
 EEbTym7h+cpBVfRlTzzf1S2YbyDSWmKrn+3iXzRmMSQ+qX46FY32khrA4
 dl3vwgxY9Z9/ucb/SEibZjVbUi0dVfd109rPBosJQrFFP+M6+Vg4Y9W77
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VEAcjJIv
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/9] igc: Add support for
 Frame Preemption feature in IGC
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



On 14/2/2025 6:22 pm, Vladimir Oltean wrote:
> Faizal,
> 
> On Fri, Feb 14, 2025 at 05:43:19PM +0800, Abdul Rahim, Faizal wrote:
>>>> Hi Kurt & Vladimir,
>>>>
>>>> After reading Vladimir's reply on tc, hw queue, and socket priority mapping
>>>> for both taprio and mqprio, I agree they should follow the same priority
>>>> scheme for consistency—both in code and command usage (i.e., taprio,
>>>> mqprio, and fpe in both configurations). Since igc_tsn_tx_arb() ensures a
>>>> standard mapping of tc, socket priority, and hardware queue priority, I'll
>>>> enable taprio to use igc_tsn_tx_arb() in a separate patch submission.
>>>
>>> There's one point to consider here: igc_tsn_tx_arb() changes the mapping
>>> between priorities and Tx queues. I have no idea how many people rely on
>>> the fact that queue 0 has always the highest priority. For example, it
>>> will change the Tx behavior for schedules which open multiple traffic
>>> classes at the same time. Users may notice.
>>
>> Yeah, I was considering the impact on existing users too. I hadn’t given it
>> much thought initially and figured they’d just need to adapt to the changes,
>> but now that I think about it, properly communicating this would be tough.
>> taprio on igc (i225, i226) has been around for a while, so a lot of users
>> would be affected.
>>
>>> OTOH changing mqprio to the broken_mqprio model is easy, because AFAIK
>>> there's only one customer using this.
>>>
>>
>> Hmmmm, now I’m leaning toward keeping taprio as is (hw queue 0 highest
>> priority) and having mqprio follow the default priority scheme (aka
>> broken_mqprio). Even though it’s not the norm, the impact doesn’t seem worth
>> the gain. Open to hearing others' thoughts.
> 
> Kurt is right, you need to think about your users, but it isn't only that.
> Intel puts out a lot of user-facing TSN technical documentation for Linux,
> and currently, they have a hard time adapting it to other vendors, because
> of Intel specific peculiarities such as this one. I would argue that for
> being one of the most visible vendors from the Linux TSN space, you also
> have a duty to the rest of the community of not pushing users away from
> established conventions.
> 
> It's unfair that a past design mistake would stifle further evolution of
> the driver in the correct direction, so I don't think we should let that
> happen. I was thinking the igc driver should have a driver-specific
> opt-in flag which users explicitly have to set in order to get the
> conventional TX scheduling behavior in taprio (the one from mqprio).
> Public Intel documentation would be updated to present the differences
> between the old and the new mode, and to recommend opting into the new
> mode. By default, the current behavior is maintained, thus not breaking
> any user.  Something like an ethtool priv flag seems adequate for this.
> 
> Understandably, many network maintainers will initially dislike this,
> but you will have to be persistent and explain the ways in which having
> this priv flag is better than not having it. Normally they will respect
> those reasons more than they dislike driver-specific priv flags, which,
> let's be honest, are way too often abused for adding custom behavior.
> Here the situation is different, the custom behavior already exists, it
> just doesn't have a name and there's no way of turning it off.

Okay. I can look into this in a separate patch submission, but just an 
FYI—this adds another dependency to the second part of the igc fpe 
submission (preemptible tc on taprio + mqprio). This new patch 
(driver-specific priv flag to control 2 different priority scheme) would 
need to be accepted first before the second part of igc fpe can be submitted.
