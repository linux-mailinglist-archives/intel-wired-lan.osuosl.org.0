Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 731A279D468
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Sep 2023 17:08:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 15191404F4;
	Tue, 12 Sep 2023 15:08:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 15191404F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694531283;
	bh=sfTUSzNf5QwWZqe9Z1YyUttaMxjtpePGc1U1wXAsq3Y=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=u7ct7qvNrPYHmUHQRTuesYPo94xzZuG7Pvp45pi4LDMGvKB9A+3lsjqTH0PiOdKSD
	 O0W68dt9y5btWGMZkfTE+23iA5HuEd/ez4/drjwbuGVL+emvHAhN8FR3qHoGXHfNgn
	 +hCmCtyqhfwsWXhX6+HbIBxrwYunGu4HqvckYpmzNXyy/ol/eqmRfRNXu0jj100gEQ
	 LhFLDj2b5BCghhG98ZA+w393TpdLHPrmtT07N5pmxz7taiMyDiqS+uBbsqEra3zzEL
	 NJrOZf2agw1mRUokajPjYWiNPVXHiAqsjM3CPBzCCrzMdW2Oqen2CNKXCemg7LNDit
	 jSLOGilmJOdkQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lk2VCB79KsKd; Tue, 12 Sep 2023 15:08:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 024A54017B;
	Tue, 12 Sep 2023 15:08:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 024A54017B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8E83E1BF27E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 10:50:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 668ED82062
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 10:50:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 668ED82062
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Uw2eaSznS2XP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Sep 2023 10:50:45 +0000 (UTC)
X-Greylist: delayed 997 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 12 Sep 2023 10:50:45 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 52E8782052
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com
 [185.176.79.56])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 52E8782052
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 10:50:45 +0000 (UTC)
Received: from lhrpeml500005.china.huawei.com (unknown [172.18.147.226])
 by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4RlKZZ4gLPz6J7jc;
 Tue, 12 Sep 2023 18:29:26 +0800 (CST)
Received: from localhost (10.202.227.76) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Tue, 12 Sep
 2023 11:34:04 +0100
Date: Tue, 12 Sep 2023 11:34:03 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Ilpo =?ISO-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>
Message-ID: <20230912113403.00006c39@Huawei.com>
In-Reply-To: <20230911121501.21910-4-ilpo.jarvinen@linux.intel.com>
References: <20230911121501.21910-1-ilpo.jarvinen@linux.intel.com>
 <20230911121501.21910-4-ilpo.jarvinen@linux.intel.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.227.76]
X-ClientProxiedBy: lhrpeml100003.china.huawei.com (7.191.160.210) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Tue, 12 Sep 2023 15:07:56 +0000
Subject: Re: [Intel-wired-lan] [PATCH 3/8] igb: Use FIELD_GET() to extract
 Link Width
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

On Mon, 11 Sep 2023 15:14:56 +0300
Ilpo J=E4rvinen <ilpo.jarvinen@linux.intel.com> wrote:

> Use FIELD_GET() to extract PCIe Negotiated Link Width field instead of
> custom masking and shifting.
> =

> Signed-off-by: Ilpo J=E4rvinen <ilpo.jarvinen@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/igb/e1000_mac.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/igb/e1000_mac.c b/drivers/net/eth=
ernet/intel/igb/e1000_mac.c
> index caf91c6f52b4..5a23b9cfec6c 100644
> --- a/drivers/net/ethernet/intel/igb/e1000_mac.c
> +++ b/drivers/net/ethernet/intel/igb/e1000_mac.c
> @@ -1,6 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0
>  /* Copyright(c) 2007 - 2018 Intel Corporation. */
>  =

> +#include <linux/bitfield.h>
>  #include <linux/if_ether.h>
>  #include <linux/delay.h>
>  #include <linux/pci.h>
> @@ -50,9 +51,8 @@ s32 igb_get_bus_info_pcie(struct e1000_hw *hw)
>  			break;
>  		}
>  =

> -		bus->width =3D (enum e1000_bus_width)((pcie_link_status &
> -						     PCI_EXP_LNKSTA_NLW) >>
> -						     PCI_EXP_LNKSTA_NLW_SHIFT);
> +		bus->width =3D (enum e1000_bus_width)FIELD_GET(PCI_EXP_LNKSTA_NLW,
> +							     pcie_link_status);

This cast is a bit ugly given it takes the values 0, 1, 2, 3 and
we extra a field that the spec says contains 1, 2, 4, 8 etc
Hence it only works because only 1 and 2 are used I think...  Not nice.


Also, whilst looking at this I note that e1000e has it's own defines
for PCIE_LINK_WIDTH_MASK and PCIE_LINK_WIDTH_SHIFT =


Looks like those should be changed to use the standard defines.

For extra giggles there are two e1000_bus_width enum definitions in differe=
nt
headers.

Actual patch is good - just 'interesting' stuff noticed whilst looking at i=
t :)

Jonathan


>  	}
>  =

>  	reg =3D rd32(E1000_STATUS);

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
