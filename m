Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B0E79953EB4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Aug 2024 03:07:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1914F40CF3;
	Fri, 16 Aug 2024 01:07:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b-Bz6lvs1urY; Fri, 16 Aug 2024 01:07:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F03C540CFF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723770466;
	bh=WQ/DDiBYHTF5ZU+meoP39IYQMfeWroGjZb5Y7/6jBs0=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WgTd6uOUIJDflvX+jUBBmcLH4xxCEwbI96Jt07ubKS9LxBA/QO1IUnD9QvHl0URS3
	 IjO2TNdxv86ad1X2a3kaS2l6BrQkGin1kCOfpKpG7NEBplzbbfJvEWc9trgnikhPgd
	 +zC8tH6DwhCxLIElefNRxmnQ1RQiRzThSTU7NBdRc3Hk3lfnkbLm2+N78rLWsXxH4O
	 BfAMb3Rz5hJUoLvL5CQ1Fs4qYNH4yr/JPVqTg+MjBH6pA4UziFlD1zcHz6Uh1ah8MM
	 jqBapjq5XM+LwXAd7wwRsxvIt+rYgvBOOQAQV2/utVX6GqkD8PfNQKWmvl9LiX2tX5
	 rL4jRAfX4z1oQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F03C540CFF;
	Fri, 16 Aug 2024 01:07:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7D8B81BF33B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 01:07:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6915781AF6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 01:07:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 33coYVU_QYXb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Aug 2024 01:07:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7099D81302
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7099D81302
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7099D81302
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 01:07:42 +0000 (UTC)
X-CSE-ConnectionGUID: 2YEzZIS2S16f4tF6MAzdIA==
X-CSE-MsgGUID: mw1TNX4YRxu3mKF07Jxbhg==
X-IronPort-AV: E=McAfee;i="6700,10204,11165"; a="39511094"
X-IronPort-AV: E=Sophos;i="6.10,150,1719903600"; d="scan'208";a="39511094"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2024 18:07:41 -0700
X-CSE-ConnectionGUID: XWUxB4GKTp2vqsOKXfD2pw==
X-CSE-MsgGUID: XESAWVLEQU62V5HQcLJTvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,150,1719903600"; d="scan'208";a="59162704"
Received: from unknown (HELO vcostago-mobl3) ([10.241.225.92])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2024 18:07:40 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Daiwei Li <daiweili@google.com>, intel-wired-lan@lists.osuosl.org
In-Reply-To: <20240814045553.947331-1-daiweili@google.com>
References: <20240814045553.947331-1-daiweili@google.com>
Date: Thu, 15 Aug 2024 18:07:40 -0700
Message-ID: <8734n5uvfn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723770464; x=1755306464;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Gn/O3CNgEf1uDlPVDLWuU09BObBv32ZSZwlxzBncF3M=;
 b=Jycvj4ErYvqe7lU5rls66VO1PCkg933jtWip9gLUs6nNUN55vqMmzzo7
 udA97JGhbcVRrx5cgrteVdQWic3wTyD9fXfEBGWq3VxSElozx/EhO6Wss
 /WIih/1yDuI5/hsjR3At0GCxe8maqISXnvLUkqiMjKTmPwJm8XBBK0kek
 w5M9gYzMqkdrRC734OoNcfQenXm4EMD3o09eVMrZ41cXOQHliWMRAGBmu
 vXdveQV0qBjmtMwqTWjzljJWpmrSVtg59XKqHK2r33k/O52zGNxufP0XG
 sTQpj4ooD/Ag2VbHEAd1GhrW0NgNNlJxHKIVywtiIFN2I3zE0syegStqt
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Jycvj4Er
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] igb: Fix not clearing
 TimeSync interrupts for 82580
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
Cc: Daiwei Li <daiweili@google.com>, sasha.neftin@intel.com,
 netdev@vger.kernel.org, richardcochran@gmail.com, kurt@linutronix.de,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Daiwei Li <daiweili@google.com> writes:

> 82580 NICs have a hardware bug that makes it
> necessary to write into the TSICR (TimeSync Interrupt Cause) register
> to clear it:
> https://lore.kernel.org/all/CDCB8BE0.1EC2C%25matthew.vick@intel.com/
>
> Add a conditional so only for 82580 we write into the TSICR register,
> so we don't risk losing events for other models.
>
> Without this change, when running ptp4l with an Intel 82580 card,
> I get the following output:
>
>> timed out while polling for tx timestamp increasing tx_timestamp_timeout or
>> increasing kworker priority may correct this issue, but a driver bug likely
>> causes it
>
> This goes away with this change.
>
> This (partially) reverts commit ee14cc9ea19b ("igb: Fix missing time sync events").
>
> Fixes: ee14cc9ea19b ("igb: Fix missing time sync events")
> Closes: https://lore.kernel.org/intel-wired-lan/CAN0jFd1kO0MMtOh8N2Ztxn6f7vvDKp2h507sMryobkBKe=xk=w@mail.gmail.com/
> Tested-by: Daiwei Li <daiweili@google.com>
> Suggested-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Signed-off-by: Daiwei Li <daiweili@google.com>

Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>


Cheers,
-- 
Vinicius
