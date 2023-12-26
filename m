Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD7581E6F8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Dec 2023 11:49:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0050E81391;
	Tue, 26 Dec 2023 10:49:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0050E81391
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703587761;
	bh=8/VGP4Kppl4AzHEASDtt99yCfkvKv9VuU1tSLvgBtdA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3j/nIpEhfzRs6ToSILjPYU15A1yPcok9N1plnMqLrVzFSViAABgcES44q/eZSgtic
	 CrV3YdwIWoGFlrtgy3siToAgSAt3Emf8frBR3jh7VNg8B4XOnPhvqyLHyxptVYHmWm
	 /hhcghYq1/7X2jAnoRzIi7uY+THNWW0hpJ6qFpz+6+3iLimIKd6Dzu8Qeg0eEDtIiB
	 deh03U095gpGxTIrfm0Xs/ELEYKfOUEQeR0c9Uwczh3fIWDm+O3f6KRLklPG1t/NYM
	 H7LKHR+X/kZhi1FFvnWAduo7za/pkn9bu+TEo2U3uZhLUEhlsFtVGNJX0Nv7vKYasp
	 ygY5aHV9/C1qw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0XZzNDXxlHRV; Tue, 26 Dec 2023 10:49:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CEA5481321;
	Tue, 26 Dec 2023 10:49:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CEA5481321
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6C7DF1BF489
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Dec 2023 10:49:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 42DBD40544
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Dec 2023 10:49:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 42DBD40544
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eaCySzcC9plh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Dec 2023 10:49:14 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 728714053D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Dec 2023 10:49:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 728714053D
X-IronPort-AV: E=McAfee;i="6600,9927,10934"; a="376481340"
X-IronPort-AV: E=Sophos;i="6.04,306,1695711600"; d="scan'208";a="376481340"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Dec 2023 02:49:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10934"; a="771144233"
X-IronPort-AV: E=Sophos;i="6.04,306,1695711600"; d="scan'208";a="771144233"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.245.129.131])
 ([10.245.129.131])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Dec 2023 02:49:08 -0800
Message-ID: <96e4933c-a2aa-4401-a440-c11f1e95b891@linux.intel.com>
Date: Tue, 26 Dec 2023 12:49:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Kurt Kanzenbach <kurt@linutronix.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
References: <20231201075043.7822-1-kurt@linutronix.de>
 <20231201075043.7822-3-kurt@linutronix.de>
Content-Language: en-US
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20231201075043.7822-3-kurt@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703587754; x=1735123754;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=633pHdQbE69gzbvLRHJH9ISmMg75na5iFxxZDuaNerI=;
 b=kYonIKyBvM+njfUfY+jSKxJGyfx2DC+wPPwRRSESJsK9WHT3w99YM5d2
 NQseuNamPj2iaZFiCz8CY/nu294PmX+rk2PfpAbS15OPidEoYsc2+dR8q
 VriRwQqBe8aQGEZ50uVUR2H7enrGCfzguPAYqzWI3lZ2tzZCSq9YMuh2V
 1oDQyCDFGLiXrytB0DDYLRmg+EIKDiYmdZLSWF8s0Re3jd8J2737NDD24
 Uf1il6rUdSILutphEmpnQ2HT9pWTa/jMwmeSb4OpGDXSHW1LJF7YaGj6o
 6iHRCnWI8uTVYsB+oJrmTXg/jiK484lBvSxPZ/ZZ5wgtiBfGrOGBn8psw
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kYonIKyB
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/2] igc: Check VLAN TCI
 mask
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
Cc: netdev@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/1/2023 09:50, Kurt Kanzenbach wrote:
> Currently the driver accepts VLAN TCI steering rules regardless of the
> configured mask. And things might fail silently or with confusing error
> messages to the user.
> 
> There are two ways to handle the VLAN TCI mask:
> 
>   1. Match on the PCP field using a VLAN prio filter
>   2. Match on complete TCI field using a flex filter
> 
> Therefore, add checks and code for that.
> 
> For instance the following rule is invalid and will be converted into a
> VLAN prio rule which is not correct:
> |root@host:~# ethtool -N enp3s0 flow-type ether vlan 0x0001 m 0xf000 \
> |             action 1
> |Added rule with ID 61
> |root@host:~# ethtool --show-ntuple enp3s0
> |4 RX rings available
> |Total 1 rules
> |
> |Filter: 61
> |        Flow Type: Raw Ethernet
> |        Src MAC addr: 00:00:00:00:00:00 mask: FF:FF:FF:FF:FF:FF
> |        Dest MAC addr: 00:00:00:00:00:00 mask: FF:FF:FF:FF:FF:FF
> |        Ethertype: 0x0 mask: 0xFFFF
> |        VLAN EtherType: 0x0 mask: 0xffff
> |        VLAN: 0x1 mask: 0x1fff
> |        User-defined: 0x0 mask: 0xffffffffffffffff
> |        Action: Direct to queue 1
> 
> After:
> |root@host:~# ethtool -N enp3s0 flow-type ether vlan 0x0001 m 0xf000 \
> |             action 1
> |rmgr: Cannot insert RX class rule: Operation not supported
> 
> Fixes: 7991487ecb2d ("igc: Allow for Flex Filters to be installed")
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h         |  1 +
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 28 +++++++++++++++++---
>   2 files changed, 26 insertions(+), 3 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
