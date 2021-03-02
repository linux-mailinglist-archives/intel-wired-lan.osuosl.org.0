Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9927E3296B6
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Mar 2021 08:55:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1FC154F06C;
	Tue,  2 Mar 2021 07:55:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2e2Zissx6zO8; Tue,  2 Mar 2021 07:55:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D3A14F027;
	Tue,  2 Mar 2021 07:55:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EB4641BF350
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 07:55:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D89416F63B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 07:55:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BCKW4A64SwLa for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Mar 2021 07:55:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 44A566F60E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 07:55:31 +0000 (UTC)
IronPort-SDR: Fgc/q8yRIbY2GB1P7ZdDAny9mwDjGGZg8sUDcOsarlLPCpbKCz2WFrXM1gk055OBqcWn3dghAe
 cxPdO+idBntw==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="166600542"
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="166600542"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 23:55:30 -0800
IronPort-SDR: u1riAQjEWpeiMCENb62vSylPeEXER4CnjOv3IZUf4AfrVnxuoICCkuyyNe+axElIwj9ASC2fxU
 19GdDSE9oTqg==
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="444641353"
Received: from dfuxbrux-desk.ger.corp.intel.com (HELO [10.12.48.255])
 ([10.12.48.255])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 23:55:27 -0800
To: Tom Seewald <tseewald@gmail.com>, netdev@vger.kernel.org
References: <20210222040005.20126-1-tseewald@gmail.com>
From: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <fedcd02f-d3d3-763f-0032-dc68ca166a3c@linux.intel.com>
Date: Tue, 2 Mar 2021 09:55:14 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210222040005.20126-1-tseewald@gmail.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net 1/2] e1000e: Fix duplicate include
 guard
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
Cc: Jakub Kicinski <kuba@kernel.org>, Auke Kok <auke-jan.h.kok@intel.com>,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>,
 Jeff Garzik <jeff@garzik.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 22/02/2021 06:00, Tom Seewald wrote:
> The include guard "_E1000_HW_H_" is used by header files in three
> different drivers (e1000/e1000_hw.h, e1000e/hw.h, and igb/e1000_hw.h).
> Using the same include guard macro in more than one header file may
> cause unexpected behavior from the compiler. Fix the duplicate include
> guard in the e1000e driver by renaming it.
> 
> Fixes: bc7f75fa9788 ("[E1000E]: New pci-express e1000 driver (currently for ICH9 devices only)")
> Signed-off-by: Tom Seewald <tseewald@gmail.com>
> ---
>   drivers/net/ethernet/intel/e1000e/hw.h | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/hw.h b/drivers/net/ethernet/intel/e1000e/hw.h
> index 69a2329ea463..db79c4e6413e 100644
> --- a/drivers/net/ethernet/intel/e1000e/hw.h
> +++ b/drivers/net/ethernet/intel/e1000e/hw.h
> @@ -1,8 +1,8 @@
>   /* SPDX-License-Identifier: GPL-2.0 */
>   /* Copyright(c) 1999 - 2018 Intel Corporation. */
>   
> -#ifndef _E1000_HW_H_
> -#define _E1000_HW_H_
> +#ifndef _E1000E_HW_H_
> +#define _E1000E_HW_H_
>   
>   #include "regs.h"
>   #include "defines.h"
> @@ -714,4 +714,4 @@ struct e1000_hw {
>   #include "80003es2lan.h"
>   #include "ich8lan.h"
>   
> -#endif
> +#endif /* _E1000E_HW_H_ */
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
