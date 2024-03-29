Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D4838917F4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Mar 2024 12:39:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 05D2582252;
	Fri, 29 Mar 2024 11:39:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NqfZDliejklR; Fri, 29 Mar 2024 11:39:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5DF4C8212E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711712372;
	bh=FK8A23miDHbqPRxLibE/Tluxq4eEnO3hVEz87xBavLM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2yYbFH1SHBGh0NmjIFAD10hRN0PPunG4k8Bnylv9zQuyYx6hJvI9rTRJY1JxRRbJB
	 2Nli6BiwYPatTOfUJVVh5NlVdzXOamYxM3ZSsPzLsXaPnmhKRrQx3D9gsIIBwBPpJH
	 DkpqVdkGLU1bilbdBs6AnTikoejrCSeqjONOPNy+XJilicy0O462som3jRuveONjer
	 LctPM/E0eElV8KnUk6EtArUOXgaVAQCGReW+i/sTcaxYa1BMsOqUi3wkLyU4qFLNuN
	 it/QoJeYDXC1gYfPYQNfjCZLE8LJPACTIVuVxiomOg3jhsKXV1jJCx+MPuUv1J3uvN
	 VpLxRS1+0YZKw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5DF4C8212E;
	Fri, 29 Mar 2024 11:39:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3F8DD1BF298
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 11:39:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 388BE8214D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 11:39:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TYcpS2Xy-FRL for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Mar 2024 11:39:29 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 775338212E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 775338212E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 775338212E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 11:39:29 +0000 (UTC)
X-CSE-ConnectionGUID: 1mUuLSv0R+eu2WCXwJaORw==
X-CSE-MsgGUID: YLlfgSmSQN6RNfE6C9fYsA==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="9855563"
X-IronPort-AV: E=Sophos;i="6.07,164,1708416000"; 
   d="scan'208";a="9855563"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 04:39:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,164,1708416000"; d="scan'208";a="16988890"
Received: from mszycik-mobl1.ger.corp.intel.com (HELO [10.246.35.198])
 ([10.246.35.198])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 04:39:27 -0700
Message-ID: <7ded72b3-4c22-43d4-a5b5-191ef643c6c1@linux.intel.com>
Date: Fri, 29 Mar 2024 12:39:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: Simon Horman <horms@kernel.org>
References: <20240326164455.735739-1-marcin.szycik@linux.intel.com>
 <20240328173450.GH651713@kernel.org>
 <fbf9dae9-c023-4b15-b3d8-6b19240f59b0@linux.intel.com>
Content-Language: en-US
In-Reply-To: <fbf9dae9-c023-4b15-b3d8-6b19240f59b0@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711712370; x=1743248370;
 h=message-id:date:mime-version:subject:from:to:cc:
 references:in-reply-to:content-transfer-encoding;
 bh=hKYtQkSeZ5ltpeJ0N8ysOEzYzpezyP4+EXMnh1ySvx0=;
 b=jH/fciLYfi/zCNn/RZJtaUAZkhoweeiWZC6ufSY3tde02kGbzhUMM7j0
 QXdwcwBosxWurHmz3PAynrM9U0JxxJmHJ5qHNIqkFoGIRSl/wCYc/O17V
 O/wwnTtnGVFoRquOCYHsyL8WSeTtJ0Y+8j0Xq06rn95hE04vYD21NgnVL
 hw3bK8fwRoK+72y8VJFX/57y/Sq9QRwSX/eZSa63sRmQpg/wFLQY1kU2o
 kPoll0LANi9CpEDa0jilS9XI5JzW/T140maS9ta58LNYAV48T4t7b6CG6
 R76p9T0hOyK0pRmfG88lPg91BaObZx3igCCAeGQenvjqlQNnxjeMx5UO0
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jH/fciLY
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ice: Reset VF on Tx MDD
 event
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 pawel.chmielewski@intel.com, anthony.l.nguyen@intel.com,
 Liang-Min Wang <liang-min.wang@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 29.03.2024 12:31, Marcin Szycik wrote:
> 
> 
> On 28.03.2024 18:34, Simon Horman wrote:
>> On Tue, Mar 26, 2024 at 05:44:55PM +0100, Marcin Szycik wrote:
>>> In cases when VF sends malformed packets that are classified as malicious,
>>> sometimes it causes Tx queue to freeze. This frozen queue can be stuck
>>> for several minutes being unusable. This behavior can be reproduced with
>>> a faulty userspace app running on VF.
>>>
>>> When Malicious Driver Detection event occurs and the mdd-auto-reset-vf
>>> private flag is set, perform a graceful VF reset to quickly bring VF back
>>> to operational state. Add a log message to notify about the cause of
>>> the reset. Add a helper for this to be reused for both TX and RX events.
>>>
>>> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>>> Co-developed-by: Liang-Min Wang <liang-min.wang@intel.com>
>>> Signed-off-by: Liang-Min Wang <liang-min.wang@intel.com>
>>> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>>
>> Hi Marcin,
>>
>> If I read this correctly then a reset may be performed for several
>> different conditions - values of different registers - for a VF
>> as checked in a for loop.
>>
>> I am wondering if multiple resets could occur for the same VF within
>> an iteration of the for loop - because more than one of the conditions is
>> met. And, if so, is this ok?
> 
> Hi Simon,
> 
> Good point. Nothing too bad should happen, as ice_reset_vf() acquires mutex lock

Sorry, that mutex doesn't matter much here, as we'd call another ice_reset_vf()
after previous one is done anyway.

> (in fact two locks), so several resets would just happen in sequence. However,
> it doesn't make much sense to reset VF multiple times, so maybe instead of issuing
> reset on each condition, I'll set some flag, and after checking all registers I'll
> trigger reset if that flag is set. What do you think?
> 
> Thanks,
> Marcin
