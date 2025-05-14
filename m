Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3BFAB6D09
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 May 2025 15:45:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9881A83626;
	Wed, 14 May 2025 13:45:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QuKaIuDcLriy; Wed, 14 May 2025 13:45:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 171408128E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747230301;
	bh=us2NDnC8EGo6LRuq4gwQnMCUwjQQeh4zaC+Jjn6j97U=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BDL+1BTlK2Bm5jPWyMsD43AWuXr1IPwxzCN0r0WI1XNwvQOwLmnldi0XnwQYfd9QM
	 cPjCHXUVm61TAyszlHPHpwTB+nMJAkRUTbz9IR0fNL1QC6UzDCvorWIYRdXe8mElWn
	 e8ZIWXAPbA2IqadrhfuV+1BKqSc/04L530GzDSOGQhJw8j7X7FAL9oDvC43wkZ90s3
	 oaDpTXyca/VhQKhgUvszpt4KqVIp3yua5Xs6rXLzVkZmT6T6uI7ewvP2ZfHgJ3Wt4B
	 Z2OsL1jHnZhv4yz5SNIJY+O2PvBzoJ6iloAYTuBjXjozobzQjq29UUZ+BF67W2j6aE
	 FNeyFDeqNkgIw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 171408128E;
	Wed, 14 May 2025 13:45:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 905C2150
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 13:44:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8191940BFF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 13:44:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XjXYdmLg3Q0m for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 May 2025 13:44:59 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C460C404EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C460C404EC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C460C404EC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 13:44:58 +0000 (UTC)
X-CSE-ConnectionGUID: gxK+X2jAQYqML0M9+BUzhQ==
X-CSE-MsgGUID: ytTgBH9oS9qSftHMw0/OBA==
X-IronPort-AV: E=McAfee;i="6700,10204,11433"; a="48378619"
X-IronPort-AV: E=Sophos;i="6.15,288,1739865600"; d="scan'208";a="48378619"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 06:44:58 -0700
X-CSE-ConnectionGUID: 2mSMoDaIT+CGh30NYb9tNQ==
X-CSE-MsgGUID: Wwxeo7EXSNe8aRKtYnpRNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,288,1739865600"; d="scan'208";a="142080497"
Received: from mszapar-mobl1.ger.corp.intel.com (HELO [10.245.96.13])
 ([10.245.96.13])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 06:44:57 -0700
Message-ID: <3b333c97-4bdd-4238-bfab-b0f137e5b869@linux.intel.com>
Date: Wed, 14 May 2025 15:44:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20250512090515.1244601-2-martyna.szapar-mudlaw@linux.intel.com>
 <20250512172146.2f06e09f@kernel.org>
Content-Language: en-US
From: "Szapar-Mudlaw, Martyna" <martyna.szapar-mudlaw@linux.intel.com>
In-Reply-To: <20250512172146.2f06e09f@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747230299; x=1778766299;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=AwRvi0PqxuA5vDvS9U5a3gjbcYXj216Ynmr6dL4SXtE=;
 b=WGdFEI17HuFpR5XAqqGf4pSTqBqDpZ8c3Te5Aw7irCvY5TflrEkdEz4v
 785nZ9BfBykEcCuinn4GNkzPqARInNstHp7xEikIjRdy+uWBAuOZVw7Dm
 MYRxcBuOoOTXoRBD9H1ZmCUlB7fC4xuJ5E+0CcyDM5SH/s1UZmVxW+8D3
 yw3WcMo0/zycfhInNfCeV7Fge97PHK0S0WXJqv8kmO8UwKzTdEAHGoQCR
 SW0YqeTvkeEX4NpOFcHOIz4J4as0+xqQmg1sFXIlzHZ2xYrmxMs6zwfFc
 vpL5PhaXK9swrTJ7KOsNlBsi0g4iYc7sdILHZE/p2zjDg/dKesZqoDhZX
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WGdFEI17
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 0/2] Add link_down_events
 counters to ixgbe and ice drivers
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

Hi Jakub,

The link-down events counter increments upon actual physical link-down 
events, doesn't increment when user performs a simple down/up of the 
interface. However there is indeed link down event from firmware - as 
part of interface reinitialization eg. when attaching XDP program, 
reconfiguring channels and setting interface priv-flags. In those cases, 
the interface is stopped and then brought back up.

I will add more these details in the cover letter.

Thank you!
Martyna

On 5/13/2025 2:21 AM, Jakub Kicinski wrote:
> On Mon, 12 May 2025 11:05:14 +0200 Martyna Szapar-Mudlaw wrote:
>> This series introduces link_down_events counters to the ixgbe and ice drivers.
>> The counters are incremented each time the link transitions from up to down,
>> allowing better diagnosis of link stability issues such as port flapping or
>> unexpected link drops.
> 
> To confirm, will the counter increment:
>   - when link is held up by BMC / NC-SI or some other agent
>     and user does down/up on the host?
>   - when user reconfigures channels, attaches XDP etc?
> 
> Would be good to document that in the cover letter.
> 

