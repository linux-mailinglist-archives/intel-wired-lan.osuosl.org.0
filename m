Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DBAAA4DF88
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Mar 2025 14:44:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC7C1814A0;
	Tue,  4 Mar 2025 13:44:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rEio5IeaMgXc; Tue,  4 Mar 2025 13:44:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1697781497
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741095841;
	bh=9m4zF8pESDcs1bfvL4nK/hgq5RlY1fHczb0IpPK1GEg=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KksBQtZUU1cfGEm88pnqbCgkhoaScfpTUviyStxljd4ah6b2RAA3oJZnJfl37USGs
	 vyYIyaz8NV9nKdBXjsi3b7AJwbbbAjW1/etv1RfS247dfja+OKBdrkoY+R85HcuoKK
	 gZ3d/J+3XQt/2MyYBFQM8c9KokutnUOkLak2NwW74EFaquV+m4k2ZaZ0nv6NMcmtbU
	 Fx4Ib+niKUzo9+LybDr9+6G9wG/OeDlual9IH/D6c24C8UcbbUTocs3hk+NY7idr+2
	 On4A/KY2sQg6Cn2ekpvBXcDMK2hvky0sjJtayPR5k2yRfbancC9W3+yyoVjdpExvoF
	 Au8RfP6SJ3QLg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1697781497;
	Tue,  4 Mar 2025 13:44:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id EB93F944
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 13:43:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DB2C260686
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 13:43:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vPCCB0SEF7d7 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Mar 2025 13:43:58 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1F8A4605E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F8A4605E9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1F8A4605E9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 13:43:57 +0000 (UTC)
X-CSE-ConnectionGUID: pssRhinLTEu34pmdT4bk2Q==
X-CSE-MsgGUID: nBlLPTQ/RPa3qPcdfSn5OA==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="67381866"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="67381866"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 05:43:57 -0800
X-CSE-ConnectionGUID: CfxVbsHYRjW0yR9GOYg7LA==
X-CSE-MsgGUID: XN0cNXYxQe6Luv4E1FQgyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="149163549"
Received: from mszapar-mobl1.ger.corp.intel.com (HELO [10.245.99.188])
 ([10.245.99.188])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 05:43:54 -0800
Message-ID: <b5e34397-0b81-4132-86d0-498a111cc363@linux.intel.com>
Date: Tue, 4 Mar 2025 14:43:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20250226113409.446325-1-mateusz.polchlopek@intel.com>
 <20250303095405.GQ1615191@kernel.org>
Content-Language: en-US
From: "Szapar-Mudlaw, Martyna" <martyna.szapar-mudlaw@linux.intel.com>
In-Reply-To: <20250303095405.GQ1615191@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741095838; x=1772631838;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Z48O4Ncn2q7sweBP3Xxjj1MjYgx8ELkD/BGWzigQLYQ=;
 b=J+2clm/y8GxZh0fshVpZGBsD218ebUmIq9gXgt4HyIxi/nI2XXHRgNvh
 mOQ4pIeot5Yi9jdkpUUliLY91/bTHw/p2cUvk9kKnOgQvkwilQJ7goRg6
 D8TbFQBdNdK9WxeSLeOL7c5WotvRajj5oVw0QaBL8bv4Fh47wTWxhanq5
 5I2jx61/WIw8t3+y8oRSkqWzAwlR7TnKrcD18+Rz1gDQpXjBzYotHljGM
 yuJ/RyJ9RvGwdsbUSrPXQhxcITLkNJZj28yOZpVUbGGwK/vmPbareaqVw
 5Q+Z1p8S/OePlMPiV4wIBoB5wd/SHlFGEfpxi4omB59keF+1yu7l7z4LU
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J+2clm/y
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: refactor the Tx
 scheduler feature
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



On 3/3/2025 10:54 AM, Simon Horman wrote:
> On Wed, Feb 26, 2025 at 12:33:56PM +0100, Mateusz Polchlopek wrote:
>> Embed ice_get_tx_topo_user_sel() inside the only caller:
>> ice_devlink_tx_sched_layers_get().
>> Instead of jump from the wrapper to the function that does "get" operation
>> it does "get" itself.
>>
>> Remove unnecessary comment and make usage of str_enabled_disabled()
>> in ice_init_tx_topology().
> 
> Hi Mateusz,
> 
> These changes seem reasonable to me.
> But I wonder if they could be motivated in the commit message.
> 
> What I mean is, the commit message explains what has been done.
> But I think it should explain why it has been done.

Hi Simon,

I'm replying on behalf of Mateusz since he's on leave, and we didn't 
want to keep this issue waiting too long.
Would such extended commit message make sense and address your concerns?

"Simplify the code by eliminating an unnecessary wrapper function. 
Previously, ice_devlink_tx_sched_layers_get() acted as a thin wrapper 
around ice_get_tx_topo_user_sel(), adding no real value but increasing 
code complexity. Since both functions were only used once, the wrapper 
was redundant and contributed approximately 20 lines of unnecessary 
code. By directly calling ice_get_tx_topo_user_sel(), improve 
readability and reduce function jumps, without altering functionality.
Also remove unnecessary comment and make usage of str_enabled_disabled() 
in ice_init_tx_topology()."

Thank you,
Martyna

> 
>> Suggested-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> 
> ...
> 

