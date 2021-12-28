Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE7D480767
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Dec 2021 09:31:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E4B881C21;
	Tue, 28 Dec 2021 08:31:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EwijuCe3GY9x; Tue, 28 Dec 2021 08:31:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 788F18141F;
	Tue, 28 Dec 2021 08:31:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 55DF91BF28E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Dec 2021 08:31:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 502E140122
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Dec 2021 08:31:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Suf-laYD_xAi for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Dec 2021 08:31:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 89FDA400AF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Dec 2021 08:31:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640680272; x=1672216272;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=8Ssk9PkU1lCaW+X3QfKqSrqg8kbgcpFLOWTB2Ryx3Rk=;
 b=AVDJhQiDnQed0H13sM4PVb9nWVToFGd61SnWg4dYabaXTl2GXj46RUrc
 KalqfmNWENyK/IKxdFsGW2Q9y7e0PSirpUmz/KAkITjNhMbZ7Qe8fFTmR
 YE0Lily1uFuzkr61c/mPaPxu5pB5B1OopGF/NyywJxdk6IGg1ELhmV7E3
 BgaCNpmTi1A7h5dOk0mmAWrnkCDYm28jgFnGFQx7MJMMP83psBjnMawXi
 O5lqCyu/TxeT+zd2+cdEevgpvp+AogSXAqmx+UAEySNfGuGauqsgbHfL9
 7cWsQiXZf3TCQ+v8WcfRS/dExc/st1CTheWKNt5UcKd5ATm+4qOtQMMPX Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10210"; a="241135724"
X-IronPort-AV: E=Sophos;i="5.88,242,1635231600"; d="scan'208";a="241135724"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2021 00:31:11 -0800
X-IronPort-AV: E=Sophos;i="5.88,242,1635231600"; d="scan'208";a="510113012"
Received: from krausnex-mobl.ger.corp.intel.com (HELO [10.13.8.81])
 ([10.13.8.81])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2021 00:31:06 -0800
Message-ID: <b9fdc714-ce83-23fc-cde4-b53e02565ae3@linux.intel.com>
Date: Tue, 28 Dec 2021 10:31:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Content-Language: en-US
To: James McLaughlin <james.mclaughlin@qsc.com>, davem@davemloft.net,
 kuba@kernel.org, jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com
References: <20211217234933.740942-1-james.mclaughlin@qsc.com>
From: "Kraus, NechamaX" <nechamax.kraus@linux.intel.com>
In-Reply-To: <20211217234933.740942-1-james.mclaughlin@qsc.com>
Subject: Re: [Intel-wired-lan] [PATCH net v3] igc: Fix TX timestamp support
 for non-MSI-X platforms
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

On 12/18/2021 01:49, James McLaughlin wrote:
> Time synchronization was not properly enabled on non-MSI-X platforms.
> 
> Fixes: 2c344ae24501 ("igc: Add support for TX timestamping")
> 
> Signed-off-by: James McLaughlin <james.mclaughlin@qsc.com>
> Reviewed-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
> 
> Still same work email client issues.  Apologies, mis-titled it again.
> v2->v3 fixed title
> 
>   drivers/net/ethernet/intel/igc/igc_main.c | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
Tested-by: Nechama Kraus <nechamax.kraus@linux.intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
