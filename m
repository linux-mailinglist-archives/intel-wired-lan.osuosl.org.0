Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B5579EC34
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Sep 2023 17:10:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6B4A8416A9;
	Wed, 13 Sep 2023 15:10:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6B4A8416A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694617835;
	bh=u4h8yUNkZIZjyceOiiZ+dAZ/AObezA4XNaiqOSzy6T8=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6vlb3YnB5jHdKhxZOtwnGqozEyZ4EHybwHRb85wZCQKR7fDx4TLEUpYs8l3xT3eul
	 VZ9hfKTo+/Pli8h92DEz8H1+il0Q845+IEiRPfqNJ4egC5no/ibld+MpqEoZY3jZxL
	 TmkAaa/MyYSgjc1gDf929AhyL+5RgjU1YBZ6yVLgasH8GwJmJ9HZwdyp1ybXwmLLb/
	 1dARXz1Db3H3n+l0pFTis9FdM5A4tMKZ7kKnRdbUm2U7V//JsS/HXxOU3VQA+xRu/N
	 CguPRX8qJJyz7fX43w2+O8HaGnCrt0KWakQKFAIGUDMUpJD4RrbQpR77tPf4TicuJR
	 R1o4fuS2u4WAw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n-E6rysJTqhD; Wed, 13 Sep 2023 15:10:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4C9FC40635;
	Wed, 13 Sep 2023 15:10:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4C9FC40635
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 20F021BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Sep 2023 13:17:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 03AF360BB5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Sep 2023 13:17:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 03AF360BB5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MnE6TjI8R6GS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Sep 2023 13:17:09 +0000 (UTC)
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com
 [185.176.79.56])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5DC8960B46
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Sep 2023 13:17:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5DC8960B46
Received: from lhrpeml500005.china.huawei.com (unknown [172.18.147.207])
 by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4Rm1894wBgz6D9BZ;
 Wed, 13 Sep 2023 21:12:25 +0800 (CST)
Received: from localhost (10.202.227.76) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Wed, 13 Sep
 2023 14:17:04 +0100
Date: Wed, 13 Sep 2023 14:17:03 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Ilpo =?ISO-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>
Message-ID: <20230913141703.000078e2@Huawei.com>
In-Reply-To: <20230913122748.29530-10-ilpo.jarvinen@linux.intel.com>
References: <20230913122748.29530-1-ilpo.jarvinen@linux.intel.com>
 <20230913122748.29530-10-ilpo.jarvinen@linux.intel.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.227.76]
X-ClientProxiedBy: lhrpeml500005.china.huawei.com (7.191.163.240) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Wed, 13 Sep 2023 15:10:27 +0000
Subject: Re: [Intel-wired-lan] [PATCH v2 09/10] e1000e: Use
 PCI_EXP_LNKSTA_NLW & FIELD_GET() instead of custom defines/code
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
Cc: linux-pci@vger.kernel.org, Jesse
 Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org, Eric
 Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Bjorn Helgaas <helgaas@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 13 Sep 2023 15:27:47 +0300
Ilpo J=E4rvinen <ilpo.jarvinen@linux.intel.com> wrote:

> e1000e has own copy of PCI Negotiated Link Width field defines. Use the
> one from include/uapi/linux/pci_regs.h instead of the custom ones and
> remove the custom ones. Also convert to use FIELD_GET().
> =

> Suggested-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> Signed-off-by: Ilpo J=E4rvinen <ilpo.jarvinen@linux.intel.com>
Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>

> ---
>  drivers/net/ethernet/intel/e1000e/defines.h | 2 --
>  drivers/net/ethernet/intel/e1000e/mac.c     | 7 ++++---
>  2 files changed, 4 insertions(+), 5 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/e1000e/defines.h b/drivers/net/et=
hernet/intel/e1000e/defines.h
> index 63c3c79380a1..a4d29c9e03a6 100644
> --- a/drivers/net/ethernet/intel/e1000e/defines.h
> +++ b/drivers/net/ethernet/intel/e1000e/defines.h
> @@ -681,8 +681,6 @@
>  #define PCIE_LINK_STATUS             0x12
>  =

>  #define PCI_HEADER_TYPE_MULTIFUNC    0x80
> -#define PCIE_LINK_WIDTH_MASK         0x3F0
> -#define PCIE_LINK_WIDTH_SHIFT        4
>  =

>  #define PHY_REVISION_MASK      0xFFFFFFF0
>  #define MAX_PHY_REG_ADDRESS    0x1F  /* 5 bit address bus (0-0x1F) */
> diff --git a/drivers/net/ethernet/intel/e1000e/mac.c b/drivers/net/ethern=
et/intel/e1000e/mac.c
> index 5df7ad93f3d7..5340cf73778d 100644
> --- a/drivers/net/ethernet/intel/e1000e/mac.c
> +++ b/drivers/net/ethernet/intel/e1000e/mac.c
> @@ -1,6 +1,8 @@
>  // SPDX-License-Identifier: GPL-2.0
>  /* Copyright(c) 1999 - 2018 Intel Corporation. */
>  =

> +#include <linux/bitfield.h>
> +
>  #include "e1000.h"
>  =

>  /**
> @@ -25,9 +27,8 @@ s32 e1000e_get_bus_info_pcie(struct e1000_hw *hw)
>  		pci_read_config_word(adapter->pdev,
>  				     cap_offset + PCIE_LINK_STATUS,
>  				     &pcie_link_status);
> -		bus->width =3D (enum e1000_bus_width)((pcie_link_status &
> -						     PCIE_LINK_WIDTH_MASK) >>
> -						    PCIE_LINK_WIDTH_SHIFT);
> +		bus->width =3D (enum e1000_bus_width)FIELD_GET(PCI_EXP_LNKSTA_NLW,
> +							     pcie_link_status);
>  	}
>  =

>  	mac->ops.set_lan_id(hw);

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
