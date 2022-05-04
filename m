Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C8055199AF
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 May 2022 10:25:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A7FA860DC6;
	Wed,  4 May 2022 08:25:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Dm9rllVPsCxF; Wed,  4 May 2022 08:25:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B8AE660BC5;
	Wed,  4 May 2022 08:25:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2DABB1BF475
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 May 2022 08:25:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 184DA60BC5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 May 2022 08:25:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jg-hCGEXY47s for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 May 2022 08:25:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0F3BC60B20
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 May 2022 08:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651652719; x=1683188719;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=xjn1NgO2kB1JPtjl3xo79aDbx5M1/f8WB1o2XxKnWYw=;
 b=bT9dBh0mWl6zAKy7hK5RdhClVHyh/v/oNVuSYYGOBJtdSlpP9spvuWM6
 /h5HRsXpBTvA6dB9pwgWO5CXFUgG+lU+vTMa+7AYSVUK67ahkIweDIv/4
 95EWS3tJnVqzdaqtkcBrVznXBSVnzIb+mdKda3G5tLtuKIQfcBjKd8MAL
 IjDz7cVU8Fu7+R7+Tnyv+HB0qpfH2DUyglnuqVQ0IC1d2PvilOklO7LTB
 IPhzezA9pQ2DhZf1+S4Oi6GFz2FOLW4ZEPUJipL7Gw/DF7eZtHi+snQPE
 eyZzqAD9eQpr8m+j2r31+NkiWuwIWt0Q8K/1kdYBnWubZAnx34zcYTfYT w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="247609545"
X-IronPort-AV: E=Sophos;i="5.91,197,1647327600"; d="scan'208";a="247609545"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 01:25:18 -0700
X-IronPort-AV: E=Sophos;i="5.91,197,1647327600"; d="scan'208";a="536729653"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.214.232.114])
 ([10.214.232.114])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 01:25:17 -0700
Message-ID: <cb18dcef-08da-f932-bfed-72048babc396@linux.intel.com>
Date: Wed, 4 May 2022 11:25:14 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20220423165502.838143-1-sasha.neftin@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20220423165502.838143-1-sasha.neftin@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Change type of the
 'igc_check_downshift' method
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/23/2022 19:55, Sasha Neftin wrote:
> The 'igc_check_downshift' method always return 0 value. There is no point
> return value. Change the return type of this method to void.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_phy.c | 6 +-----
>   drivers/net/ethernet/intel/igc/igc_phy.h | 2 +-
>   2 files changed, 2 insertions(+), 6 deletions(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
