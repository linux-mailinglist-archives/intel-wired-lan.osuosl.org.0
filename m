Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 809CF8D46F2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 May 2024 10:23:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0799F61045;
	Thu, 30 May 2024 08:23:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6iZekS6HgJa4; Thu, 30 May 2024 08:23:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 42EBD61029
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717057382;
	bh=kR/8T6Jh7P2v4KkC5S0vyMqreQKUSFogmoFviIvlD1E=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jMBmEi5w/w6nekTleqRQke45/Bl0roVWKrMncSNbDvXRMU9D0Uf+FqdqErjRYAQ7Z
	 NqgZCT+bi8Qz8xXm7HhTogTdmdBqjz4Hb5vSS1TcKULeoUFUAYSWrvnqptCp+zM0Z7
	 nukmZibGeR6tellAKrfLNu44SseNEZhAhf3DgpgyLdaVdETFAyrkxOrtBmOMjx1fki
	 34O/8rIDPpI/atT2UwNvIpllTIOn1EL121fJwQq/XxK4ca9M2441QBfNAx7n4CVaQK
	 YdV3Wz4yadXkDSWHHpJqaa2JV93LFUxXJO6P53Cc8XTcFYRA9kAcmVpZfg+X6Wj07u
	 hRlOtydu0a3UQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 42EBD61029;
	Thu, 30 May 2024 08:23:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0ABC51D4455
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 08:23:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E93FB40929
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 08:23:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cLdrX8wbwf9k for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 May 2024 08:23:00 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=naamax.meir@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CE974408E7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE974408E7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CE974408E7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 08:22:59 +0000 (UTC)
X-CSE-ConnectionGUID: xVoyBDXkTPuwpGj0fD9nsA==
X-CSE-MsgGUID: 0GNSqnC7TCaA3CXMDFxf5A==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="38908188"
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="38908188"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2024 01:22:59 -0700
X-CSE-ConnectionGUID: O/PqrUPrSlqf5YyUUVnrOQ==
X-CSE-MsgGUID: vkrYUsweQqOUdBZqcjt5Yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="35785690"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.245.197.220])
 ([10.245.197.220])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2024 01:22:58 -0700
Message-ID: <5b7ade7f-7948-4cb7-94f1-3fe5ce044fd1@linux.intel.com>
Date: Thu, 30 May 2024 11:22:55 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20240522072352.2618613-1-sasha.neftin@intel.com>
Content-Language: en-US
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20240522072352.2618613-1-sasha.neftin@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717057380; x=1748593380;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=zN40VgAwmaM6R0P/tActNi/lsUyY3JHXz7GKr8vAIv4=;
 b=Wi+Hk+XlaXB1i9ETVSPOQ/BmMUAvC/V/lbHmQmvZOEK4QxRV/yPCUuw+
 p1SmnWMVixwNhipD3YPYOm23iVzSDwyo1MOjOpJUfxBFn+Rs1DMNTV5gr
 f1uDj0w/NiRTGH7y+8o1VSKi/8thZs05Q2pKPVGPQL3HU4RkH78TZ8DkG
 qyjdQS/CJT+COZRhpQO2+3U3guvGEIMWtyZ9Yb222Ap+FpKN8qYNiVw+C
 hDf+wH1xDePOHEYzZdoLwYRGrOYaWBhlFKOjtq8iG2oSXRHi6PsPRaYz5
 AQsi9yDvLRKlWptdn6RLIpqXYH5teV54w/gw3Mt8e9bR8cE/OqnG1Z5dT
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Wi+Hk+Xl
Subject: Re: [Intel-wired-lan] [iwl-net v1 1/1] igc: Fix Energy Efficient
 Ethernet support declaration
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/22/2024 10:23, Sasha Neftin wrote:
> The commit 01cf893bf0f4 ("net: intel: i40e/igc: Remove setting Autoneg in
> EEE capabilities") removed SUPPORTED_Autoneg field but left inappropriate
> ethtool_keee structure initialization. When "ethtool --show <device>"
> (get_eee) invoke, the 'ethtool_keee' structure was accidentally overridden.
> Remove the 'ethtool_keee' overriding and add EEE declaration as per IEEE
> specification that allows reporting Energy Efficient Ethernet capabilities.
> 
> Examples:
> Before fix:
> ethtool --show-eee enp174s0
> EEE settings for enp174s0:
> 	EEE status: not supported
> 
> After fix:
> EEE settings for enp174s0:
> 	EEE status: disabled
> 	Tx LPI: disabled
> 	Supported EEE link modes:  100baseT/Full
> 	                           1000baseT/Full
> 	                           2500baseT/Full
> 
> Fixes: 01cf893bf0f4 ("net: intel: i40e/igc: Remove setting Autoneg in EEE capabilities")
> Suggested-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 9 +++++++--
>   drivers/net/ethernet/intel/igc/igc_main.c    | 4 ++++
>   2 files changed, 11 insertions(+), 2 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
