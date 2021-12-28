Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 430E948070D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Dec 2021 08:47:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C2E6560AAA;
	Tue, 28 Dec 2021 07:47:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cug5a5J7yBiZ; Tue, 28 Dec 2021 07:47:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D09F960A97;
	Tue, 28 Dec 2021 07:47:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 89AE41BF2A3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Dec 2021 07:47:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 71E2D813CF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Dec 2021 07:47:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fdJL30DlsrhN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Dec 2021 07:47:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3937B813C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Dec 2021 07:47:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640677645; x=1672213645;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=VyO5iu68EBwzTW6R2FWft5RvC5TKuO++AyyVXExQUa8=;
 b=aIkegwlN0Y6hesllzHm1OzN5Y3zGVPOk6M0OlqLA4O6LIvU6Wmtpgf5O
 yyUok1yGR9SXOjiRchwzeVtOvyBO0anE1ryco1r7dVsKtbsejMmDjRyPE
 y3Mgs+CdfvX4dEEX9txG+cn/MESXgQTrMBdlAJkKCJjsDmi398pXC9Smh
 YbeXtX/8Rnwf2acXwwl5Ch5Dne7E+AAWkN+fs7J1jOIikXoWFxf7PyZi4
 KXPxVppZtjY9ZZEGNese4Vtk1lNKcGvkDDy4UK7dpS9Rg1lSDV/4FhAXI
 3BBHo4Aio7nYXsdpnCGXFcsZrsoS8U4GkPAkwDID2lThs00zPVzj6YuaF A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10210"; a="240111675"
X-IronPort-AV: E=Sophos;i="5.88,241,1635231600"; d="scan'208";a="240111675"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Dec 2021 23:47:24 -0800
X-IronPort-AV: E=Sophos;i="5.88,241,1635231600"; d="scan'208";a="510103421"
Received: from krausnex-mobl.ger.corp.intel.com (HELO [10.13.8.81])
 ([10.13.8.81])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Dec 2021 23:47:22 -0800
Message-ID: <d7d50687-2bee-c540-a7c1-46a6952c0d32@linux.intel.com>
Date: Tue, 28 Dec 2021 09:47:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Content-Language: en-US
To: James McLaughlin <james.mclaughlin@qsc.com>, davem@davemloft.net,
 kuba@kernel.org, jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com
References: <20211217205209.723782-1-james.mclaughlin@qsc.com>
From: "Kraus, NechamaX" <nechamax.kraus@linux.intel.com>
In-Reply-To: <20211217205209.723782-1-james.mclaughlin@qsc.com>
Subject: Re: [Intel-wired-lan] [PATCH] igc: updated TX timestamp support for
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

On 12/17/2021 22:52, James McLaughlin wrote:
> Time synchronization was not properly enabled on non-MSI-X platforms.
> 
> Signed-off-by: James McLaughlin <james.mclaughlin@qsc.com>
> Reviewed-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
Tested-by: Nechama Kraus <nechamax.kraus@linux.intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
