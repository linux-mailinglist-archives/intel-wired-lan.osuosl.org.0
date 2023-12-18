Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B22A6816A70
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Dec 2023 11:04:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 38B644170C;
	Mon, 18 Dec 2023 10:04:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 38B644170C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702893862;
	bh=3taff1Qd/KBHKdlLux9D50d7KN9rPVWifZUYbdBzpiw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1ambWAJ8WJQQL5IHAse9MKxCvhsF9COzf07oz9acS1Oetz4usGaiP6XRIyTq+6D3F
	 TUNYdmIhNwyNNXUNyoUob1D+FN5ztkBL7SeUq2jJobKHsN7abeG8UqcHolFk7vMqOk
	 SEYakCDLPLYstt4zaglc7CCyFC6R/bbiojLAw61qwKD6FRfyvqQK4Fu7YaxqzlX40t
	 iTffzHdKoyVQO1zENiv9tr6kboc5Dhvz9a7niF4do1KTlCQa7RVa1cZq+yhy2WWBjA
	 fO/9q0oz8PJeRf6bkdDLZ7uOazTQTOW2jHjpJP1kcKMX/FuGofjslk6YPIy4VUdUHl
	 fu1vTUbAtCCzQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6-yc6QYr9qhO; Mon, 18 Dec 2023 10:04:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 39ECA41715;
	Mon, 18 Dec 2023 10:04:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 39ECA41715
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0C0291BF36A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 10:04:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E37DC6103A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 10:04:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E37DC6103A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pcF6cUBjtuiy for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Dec 2023 10:04:13 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F283F60FAD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 10:04:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F283F60FAD
X-IronPort-AV: E=McAfee;i="6600,9927,10927"; a="2690675"
X-IronPort-AV: E=Sophos;i="6.04,285,1695711600"; 
   d="scan'208";a="2690675"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 02:04:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,285,1695711600"; d="scan'208";a="17121598"
Received: from mszycik-mobl1.ger.corp.intel.com (HELO [10.249.146.117])
 ([10.249.146.117])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 02:04:09 -0800
Message-ID: <ff8cfb1e-8a03-4a82-a651-3424bf9787a6@linux.intel.com>
Date: Mon, 18 Dec 2023 11:04:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20231207164911.14330-1-marcin.szycik@linux.intel.com>
 <b3e5ec09-d01b-0cea-69ea-c7406ea3f8b5@intel.com>
 <13f7d3b4-214c-4987-9adc-1c14ae686946@intel.com>
 <aeb76f91-ab1d-b951-f895-d618622b137b@intel.com>
 <539ae7a3-c769-4cf6-b82f-74e05b01f619@linux.intel.com>
 <67e287f5-b126-4049-9f3b-f05bf216c8b9@intel.com>
 <20231215084924.40b47a7e@kernel.org>
Content-Language: en-US
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <20231215084924.40b47a7e@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702893853; x=1734429853;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Xau6FfY6cJYcx74QeZNFilfaqFW7Wb7Ey39DkVPnAUs=;
 b=MJEimdCAW51V/bJvtgY9h2rrGSvM8DLJdYbxG1dwXvNhqffqWbtswf9D
 yrgnihiNuNY7/4fIXxF3ZPOoH/mrBipQ5Yosf56rrClYwx6xOyY3az5MB
 lW9+A82+nL1E5aYWCorjP2nOkqwKEd19XNKIqRtAb8NM2aotipSTfRWTK
 tzi5nV4nRS+m41qTvjAEWVKGsThpci7HinZQHEYbHFfO14ZCbVvhLtB6k
 noxRhu+BEwf53cS1tQnu0AoLcmA+dGdu3GN+YfpRBnKUEzzJrDTp71VXg
 DrB/OEI/5czy77UGUwSF02Em4RypS7FdHsjX53uStM/VNfkR8ydOGPuxg
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MJEimdCA
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/7] Add PFCP filter
 support
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
Cc: jiri@resnulli.us, wojciech.drewek@intel.com, idosch@nvidia.com,
 jesse.brandeburg@intel.com, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, michal.swiatkowski@linux.intel.com,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 15.12.2023 17:49, Jakub Kicinski wrote:
> On Fri, 15 Dec 2023 11:11:23 +0100 Alexander Lobakin wrote:
>> Ping? :s
>> Or should we resubmit?
> 
> Can you wait for next merge window instead?
> We're getting flooded with patches as everyone seemingly tries to get
> their own (i.e. the most important!) work merged before the end of 
> the year. The set of PRs from the bitmap tree which Linus decided
> not to pull is not empty. So we'd have to go figure out what's exactly
> is in that branch we're supposed to pull, and whether it's fine.
> It probably is, but you see, this is a problem which can be solved by
> waiting, and letting Linus pull it himself. While the 150 patches we're
> getting a day now have to be looked at.

Let's wait to the next window then.

Thanks,
Marcin
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
