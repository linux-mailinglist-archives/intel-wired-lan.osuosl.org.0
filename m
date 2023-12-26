Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 546BF81E897
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Dec 2023 18:02:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D590F60E70;
	Tue, 26 Dec 2023 17:02:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D590F60E70
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703610129;
	bh=K7k2jU+ADHd8hYMHLFs+7ZElY/03e4ukNG9Fl7FDBrA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gswNjzXmW9v8ALQNhsqGNIDRHf+rbYszV+fRGFRTf6Y4/B4uTJeTaQo+JhAcGlBJo
	 BZVkkm2Plv+9ibVBVN8huA90DZ6NEzDqa1mMxvwFSkY4N2zorwTMU6InGsY2WhFyHT
	 GJwxzHltkpCnt6vKgxeNyJtwr4NtpoEN33onK4uOKnmuGv37YGtdWa0QvVkanr2UD6
	 4VEe58JvH60h6PkTea5Pvtt2gJKLtIvhgdo9upkvdHLf6FW95jpQsa5mnTEU5VaCxS
	 iaPniIGGFJFznZuF85ePycWiV8BcMj+ADhO3sfKRvE5ISjPjn50fwkBTQSDRFlYXII
	 n193wl2LgLH4g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0Rf4F70qv0-n; Tue, 26 Dec 2023 17:02:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BB92860D5F;
	Tue, 26 Dec 2023 17:02:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BB92860D5F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 729D41BF228
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Dec 2023 17:02:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 568BC40894
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Dec 2023 17:02:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 568BC40894
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6SckBYBEOwXx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Dec 2023 17:02:02 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6218E4088C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Dec 2023 17:02:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6218E4088C
X-IronPort-AV: E=McAfee;i="6600,9927,10935"; a="375857449"
X-IronPort-AV: E=Sophos;i="6.04,306,1695711600"; d="scan'208";a="375857449"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Dec 2023 09:02:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,306,1695711600"; d="scan'208";a="12481701"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.245.129.131])
 ([10.245.129.131])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Dec 2023 09:01:58 -0800
Message-ID: <c01c2d39-0196-477e-b7cd-110a0d0862de@linux.intel.com>
Date: Tue, 26 Dec 2023 19:01:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Kurt Kanzenbach <kurt@linutronix.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
References: <20231206140718.57433-1-kurt@linutronix.de>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20231206140718.57433-1-kurt@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703610122; x=1735146122;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=zJ7CtVcCDygQofHMrkLBKx6IYn9hgp47oohYPYfHX9Q=;
 b=md5eqe3XUQQNxDcCyMX0fvasnaV+Wq0o37owGdn8t1bYZPUna50dwl2u
 yifLCxPtNgwFoueddvodp8zXb2RgzMBvjBfFkIlG4Ega0Y0YiUy2ScH3U
 jtsXVl/oEnVwOhPHwngymKS5jKfoLr112C+B3gBr4kzbgGfc048/3JtCs
 W6r726MinEOaZpJkzsmDBJqPGahfm3isxfEiq8MK4zKzwlOAB76UYZ5Uw
 i3sAGEIf2BGvNJUDQFnU7IAgAAVv9ezi5oSNoq7dZfx4FbsrrYQ85asJL
 5+dLBSyOjxK8HtO1iz0yf0QCZ3MA2hEGp5/vSNjs5/TZVnBBKQx6pC9W2
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=md5eqe3X
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] igc: Check VLAN EtherType mask
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
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Suman Ghosh <sumang@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/6/2023 16:07, Kurt Kanzenbach wrote:
> Currently the driver accepts VLAN EtherType steering rules regardless of
> the configured mask. And things might fail silently or with confusing error
> messages to the user. The VLAN EtherType can only be matched by full
> mask. Therefore, add a check for that.
> 
> For instance the following rule is invalid, but the driver accepts it and
> ignores the user specified mask:
> |root@host:~# ethtool -N enp3s0 flow-type ether vlan-etype 0x8100 \
> |             m 0x00ff action 0
> |Added rule with ID 63
> |root@host:~# ethtool --show-ntuple enp3s0
> |4 RX rings available
> |Total 1 rules
> |
> |Filter: 63
> |        Flow Type: Raw Ethernet
> |        Src MAC addr: 00:00:00:00:00:00 mask: FF:FF:FF:FF:FF:FF
> |        Dest MAC addr: 00:00:00:00:00:00 mask: FF:FF:FF:FF:FF:FF
> |        Ethertype: 0x0 mask: 0xFFFF
> |        VLAN EtherType: 0x8100 mask: 0x0
> |        VLAN: 0x0 mask: 0xffff
> |        User-defined: 0x0 mask: 0xffffffffffffffff
> |        Action: Direct to queue 0
> 
> After:
> |root@host:~# ethtool -N enp3s0 flow-type ether vlan-etype 0x8100 \
> |             m 0x00ff action 0
> |rmgr: Cannot insert RX class rule: Operation not supported
> 
> Fixes: 2b477d057e33 ("igc: Integrate flex filter into ethtool ops")
> Suggested-by: Suman Ghosh <sumang@marvell.com>
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
> 
> Note: This is a follow up of
> 
>   https://lore.kernel.org/netdev/20231201075043.7822-1-kurt@linutronix.de/
> 
> and should apply to net-queue tree.
> 
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 8 ++++++++
>   1 file changed, 8 insertions(+)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
