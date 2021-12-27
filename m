Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8614248049C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Dec 2021 21:38:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 27D34402F7;
	Mon, 27 Dec 2021 20:38:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id boGZjIZqIod1; Mon, 27 Dec 2021 20:38:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 307D2402E8;
	Mon, 27 Dec 2021 20:38:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0E4251BF3C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Dec 2021 20:38:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E06FD40191
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Dec 2021 20:38:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yj2e6CrDsMmF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Dec 2021 20:38:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2AB6D4018A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Dec 2021 20:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640637523; x=1672173523;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=+s36H9N9lS5geSmQnAeo3ibbRrDHDIjsI845MawbcsU=;
 b=QNUW7UqcYpeqoTwwY3PqF4/6bviV9+d3yrpFebgo3YDoAjvw3jW5eNd9
 hNu3Aq8SkRoPqnUaskrf0SpG4iGNpAJVUWAt4AoVo1dHJfdFnYBELvszE
 y//bETyq5ucFH6dUIRW6fNtuJqrzUmk4/k1+JmJ1viouKkEl7oE95IS1D
 8EuoCuw9wenR4NmOllmPVdCR9vZk5fcPAb7k4wQFFdc4OXTFFc/nmmTBs
 WeO4kAjly4PlXytYz3Jc6IP4582TeTfVBsU0wqFHbDREv8e92bR0eVuV4
 G+m48WJRkYwp4x9gALUllJgd65nukgo/633NFDwtbWgl8IP9TzPn8Wd4r w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10210"; a="221938128"
X-IronPort-AV: E=Sophos;i="5.88,240,1635231600"; d="scan'208";a="221938128"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Dec 2021 12:38:42 -0800
X-IronPort-AV: E=Sophos;i="5.88,240,1635231600"; d="scan'208";a="523406864"
Received: from krausnex-mobl.ger.corp.intel.com (HELO [10.255.195.237])
 ([10.255.195.237])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Dec 2021 12:38:40 -0800
Message-ID: <1d2b0af5-540c-df14-2f78-9698f7055e5a@linux.intel.com>
Date: Mon, 27 Dec 2021 22:38:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: James McLaughlin <james.mclaughlin@qsc.com>, davem@davemloft.net,
 kuba@kernel.org, jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com
References: <20211217234310.740255-1-james.mclaughlin@qsc.com>
From: "Kraus, NechamaX" <nechamax.kraus@linux.intel.com>
In-Reply-To: <20211217234310.740255-1-james.mclaughlin@qsc.com>
Subject: Re: [Intel-wired-lan] [PATCH v2] igc: Fix TX timestamp support for
 non-MSI-X platforms
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/18/2021 01:43, James McLaughlin wrote:
> Time synchronization was not properly enabled on non-MSI-X platforms.
> 
> Fixes: 2c344ae24501 ("igc: Add support for TX timestamping")
> 
> Signed-off-by: James McLaughlin <james.mclaughlin@qsc.com>
> Reviewed-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
> 
> Having trouble with work email client, understand and agree with comments from Vinicius.
> v1->v2 updated commit message, email subject, and reference original commit this is fixing.
> 
>   drivers/net/ethernet/intel/igc/igc_main.c | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
Tested-by: Nechama Kraus <nechamax.kraus@linux.intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
