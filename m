Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C31268810C2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Mar 2024 12:19:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5518860BBA;
	Wed, 20 Mar 2024 11:19:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MMtCCc6DeXMV; Wed, 20 Mar 2024 11:19:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E5A760838
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710933567;
	bh=e8FnV8J7KllfTMg6fm4eDSuVMOHVcMbCc4p0SmPxkuE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PRsNTik1SsRe9ff8hxFZnO19MvGHbXYUAxKw5b5+6yoi1cQIR2un1E0w34v1+Jt4w
	 jfdifcT/U2h6QqxRJvRsfu5fdDuyyHdjDdFX12nTr9Mk26RQpMflJRfUnNzxrp8L0V
	 2/BSD3Z50M5Qf363oZ2VPJKJ9e/DUFUGXWUMbWDRZqDecprQyTlfIMhWC20NN/cKqw
	 zI6LuQDMHHJs+0cz12hRTA8Hl1cOl2G6ox8gxwzY23nmt5JXLJ4uZVwW3G9fvODh94
	 CQTkSdcs4J416hdOd0Nrsqdn8oSqkS6fRfRVyl1drvw3bAoRObSz/9PcVdT9Onj4uu
	 jLTHn2KvqCs0Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E5A760838;
	Wed, 20 Mar 2024 11:19:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 312411BF2F5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 11:19:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 29B7081F9C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 11:19:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s66VWJCXxpS1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Mar 2024 11:19:24 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=naamax.meir@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2919281F99
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2919281F99
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2919281F99
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 11:19:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="31287538"
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; d="scan'208";a="31287538"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 04:19:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; d="scan'208";a="37248776"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.245.176.78])
 ([10.245.176.78])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 04:19:19 -0700
Message-ID: <422a27dd-8d0a-45f9-a832-8ce7b21f4bd6@linux.intel.com>
Date: Wed, 20 Mar 2024 13:19:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Kurt Kanzenbach <kurt@linutronix.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
References: <20240313-igc_txts_comment-v1-1-4e8438739323@linutronix.de>
Content-Language: en-US
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20240313-igc_txts_comment-v1-1-4e8438739323@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710933564; x=1742469564;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Eu7nYVscXC39tfc6LJY++Jbgjhiajxn8v2rKaoxHAQY=;
 b=cKSIBpxJ3vUt/2Dr0u5lGqzvlIVSPrDA6Ay4s8EWBnr3uXVp7u8dtv7A
 xVH2scI70FRx6WbdUT+sNuFRCYMGZ9iD4jXk47sTIDuFyCo//SUQowk1j
 MnguuLTcrnHK//8fPAnd5y9k94UeHyBa66eG8tM5kVSfZ58Bt+FnteH3P
 PgNCav4SgIuTzi2yt9la9iSOOlMqvQcT/e5EfycSya75eYfgBZVRfBNoO
 JoQQqnwo6Tyqy18Vk9YxsjAkbtdf73Yd5MHva/BqI6GZ3/KxcDoU2ZwNQ
 RTVXmHOoF93TEf4Er4DI3rWavrZ5sI73P20xMYOtY4wp5+Rz9J2zSED3u
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cKSIBpxJ
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] igc: Remove stale comment
 about Tx timestamping
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
Cc: netdev@vger.kernel.org, Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/13/2024 15:03, Kurt Kanzenbach wrote:
> The initial igc Tx timestamping implementation used only one register for
> retrieving Tx timestamps. Commit 3ed247e78911 ("igc: Add support for
> multiple in-flight TX timestamps") added support for utilizing all four of
> them e.g., for multiple domain support. Remove the stale comment/FIXME.
> 
> Fixes: 3ed247e78911 ("igc: Add support for multiple in-flight TX timestamps")
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 4 ----
>   1 file changed, 4 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
