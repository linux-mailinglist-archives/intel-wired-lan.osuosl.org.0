Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A254F2801
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Apr 2022 10:18:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 923944056D;
	Tue,  5 Apr 2022 08:18:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gGDEDPmcRLCt; Tue,  5 Apr 2022 08:18:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A06DF40575;
	Tue,  5 Apr 2022 08:18:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DA5FA1BF336
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Apr 2022 08:18:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C922F825C6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Apr 2022 08:18:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rk3JPFX4xXfs for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Apr 2022 08:18:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B98DD81D47
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Apr 2022 08:18:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649146683; x=1680682683;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=iIe0jwbo/nwblKiDceJ2wEp8FvY93UAMDlwQVFiSZwc=;
 b=gZYdv/bB/D8iD7rAmro7SN09ftYhT3b0KU5w0IVni15HEyQry8Xmhe04
 /QWmTcJ8JfWqZsrI4/sYqyfUV/QHhd6wyGl3yIgUk2pAREm4rJ7v37Flm
 ZKK1sy4Zdy7rU9ghUtWLPIbb3w9Y7LmDg/IkoACM0SmRa0btbi65s3o94
 DdcJWXC+0Do6YH6OaVc+I0aSxbhR2Qde3EK7fcxiYdL98+xwPhQnxRemJ
 OlShxY/8xGTPAXq1f9peLl+kMJs5vUfD5s2bt43p0mgUmTGE4LTYe0Gsa
 EJBODmyzzx0fC4tR+ixXuO7YBiwjDY7zIknQHpIaUBHBIBrMtGhzDch6S w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10307"; a="241279709"
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="241279709"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 01:18:02 -0700
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="721961089"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.11.253])
 ([10.13.11.253])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 01:18:00 -0700
Message-ID: <d5806c62-5bf4-49ea-9c83-6d9c49c11b05@linux.intel.com>
Date: Tue, 5 Apr 2022 11:17:52 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20220321060510.1862932-1-sasha.neftin@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20220321060510.1862932-1-sasha.neftin@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove igc_set_spd_dplx
 method
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
Cc: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/21/2022 08:05, Sasha Neftin wrote:
> igc_set_spd_dplx method not in use. This patch comes to tidy up
> the driver code.
> 
> Reported-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h      |  1 -
>   drivers/net/ethernet/intel/igc/igc_main.c | 50 -----------------------
>   2 files changed, 51 deletions(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
