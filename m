Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E556AA4604
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Apr 2025 10:55:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA16140B88;
	Wed, 30 Apr 2025 08:55:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EkgZiwpqxUbv; Wed, 30 Apr 2025 08:55:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 686E440B4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746003336;
	bh=i5n/QBBCIbFs4WoqsOrE9BwODhXGV1zqidoqKOH0uxk=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9ujlC6HnuhF13QXpNCkvZ0QYRTf2uqb69mhEkb/uLWSG3q0WltYQJfl/uWAlQ4nPv
	 9//D9QZILd0coMRWzBE2+5/uHOmufoXHZE6KNPKy/lBiiV3IZfvoLPQ1slUJcFQbXX
	 FWV89CJ/xlK9uonTN6IVV686OXyNCUtN6z3N8fJ+d27TPcJETs2DDZwDDdpTYTjf+b
	 iTix5JMR0o/m2QO1VhWkbXdCX9QnujbsVhc+QfpxDKIOQZjJpQIUZ94i6WaAPFP/dd
	 TA9M4MommMruqlCyPmfVMXxXcQ8TGvLJNE+dTfVVHsqwQuA/ltNtjfqPbXr+cotVVQ
	 3m2wTqGtLv3vg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 686E440B4C;
	Wed, 30 Apr 2025 08:55:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 82219943
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 08:55:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 747F380FA4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 08:55:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I74A4glJXlCm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Apr 2025 08:55:34 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 88EB080F47
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 88EB080F47
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 88EB080F47
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 08:55:33 +0000 (UTC)
X-CSE-ConnectionGUID: kVYpZFLBTtmm38Sjal5cfg==
X-CSE-MsgGUID: ywwtfQppRhSxqvoofwksuQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11418"; a="51473557"
X-IronPort-AV: E=Sophos;i="6.15,251,1739865600"; d="scan'208";a="51473557"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 01:55:32 -0700
X-CSE-ConnectionGUID: 9zYzTEY/S9OmEGRlOgoJjw==
X-CSE-MsgGUID: s009mo7cQjSj0j7CF7wssg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,251,1739865600"; d="scan'208";a="133961827"
Received: from gomezolx-mobl.ger.corp.intel.com (HELO [10.245.87.99])
 ([10.245.87.99])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 01:55:30 -0700
Message-ID: <d1485d62-a746-4660-82d2-35965a349a34@linux.intel.com>
Date: Wed, 30 Apr 2025 10:55:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 magnus.karlsson@intel.com, michal.kubiak@intel.com,
 =?UTF-8?Q?Tobias_B=C3=B6hm?= <tobias.boehm@hetzner-cloud.de>,
 Marcus Wichelmann <marcus.wichelmann@hetzner-cloud.de>
References: <20250429155205.1444438-1-maciej.fijalkowski@intel.com>
Content-Language: pl, en-US
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
In-Reply-To: <20250429155205.1444438-1-maciej.fijalkowski@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746003334; x=1777539334;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=MAtLAD56QOPPSbm74mSzW0LRN2+jjBX+qq4vmsqEOYI=;
 b=TmhOtZBLljei4TnlJtRjgBo/bL3ppAGieSHYm356kCCqwsjN8RGjv9yU
 DXWhu1KgmhHfzoYDMjj4MnAEqyEe3MJvExas9wyzFBBXErxLP5EG/cEi3
 YHzesapSmYb0foqo/9EuZu0OTh/mOe7vsmsYEN/DjvHSgFOgKCgQasOAT
 vALwmF0fsY8+yBcPuGHobouTIIoNgYv1m5X7vcXAt7Me3tKyvHx/n4XGT
 UV0esiwEd6wTJTtrTBqnt/P3UY5+vlQA70Z7KGYErCUFbKj5YHIPu+tkT
 GwDuxWlo5sbAqvkKurHJHGan3lZ4Bex5mJUfmyzlJDqRdjY0cHCrOZc/o
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TmhOtZBL
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ixgbe: fix ndo_xdp_xmit()
 workloads
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

On 2025-04-29 5:52 PM, Maciej Fijalkowski wrote:
> Currently ixgbe driver checks periodically in its watchdog subtask if
> there is anything to be transmitted (consdidering both Tx and XDP rings)

typo: s/consdidering/considering

> under state of carrier not being 'ok'. Such event is interpreted as Tx
> hang and therefore results in interface reset.
> 
> This is currently problematic for ndo_xdp_xmit() as it is allowed to
> produce descriptors when interface is going through reset or its carrier
> is turned off.
> 
> Furthermore, XDP rings should not really be objects of Tx hang
> detection. This mechanism is rather a matter of ndo_tx_timeout() being
> called from dev_watchdog against Tx rings exposed to networking stack.
> 
> Taking into account issues described above, let us have a two fold fix -
> do not respect XDP rings in local ixgbe watchdog and do not produce Tx
> descriptors in ndo_xdp_xmit callback when there is some problem with
> carrier currently. For now, keep the Tx hang checks in clean Tx irq
> routine, but adjust it to not execute it for XDP rings.

suggestion: s/adjust it to not execute it/adjust it to not execute

Best regards,
Dawid
