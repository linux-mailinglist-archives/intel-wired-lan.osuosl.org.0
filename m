Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A99679EC35
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Sep 2023 17:10:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8EF0C416AD;
	Wed, 13 Sep 2023 15:10:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8EF0C416AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694617839;
	bh=wG8SVRjP7d3uFymrFGatFR2sif1QaBwRrKfcVU/ckXw=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZV9UCxJZ4VPtqvJ4awcOi2G0INwrOaITTD5o6vCzvLSdLLkWy6UjjJtCUoQv3Z15R
	 OJa6rz3N3MJfztFqusTyXGJ2noTTXK2asQyvQXIadxZlC21sWosPPvXx1yrl7SjI5C
	 AMsQzYUk5HI84G1SLgo6lcc+P59bzEFEdmbk2XyLPL0EeLGaM5Ixq2R21c6D/xRr33
	 8FFTZotlDld+c0FW3fgUFPP1pXGBzZ43xUdrNETRc7MBppb81pyBBzHFuIPfWX2xRN
	 Vree9SZ7ufmQavsBNit/7MDODL9PnIbDPmsNRg4uuRGr5AxJMLX980UaBbui1g3Gwj
	 rtdmwuAtOp7Bw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wpscd3gscnWq; Wed, 13 Sep 2023 15:10:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6DDB54152B;
	Wed, 13 Sep 2023 15:10:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6DDB54152B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6DCBF1BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Sep 2023 13:22:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 437BC8232A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Sep 2023 13:22:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 437BC8232A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gH2D-01aATwu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Sep 2023 13:22:19 +0000 (UTC)
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com
 [185.176.79.56])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 87A438231E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Sep 2023 13:22:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 87A438231E
Received: from lhrpeml500005.china.huawei.com (unknown [172.18.147.206])
 by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4Rm1KY17rFz6HJfY;
 Wed, 13 Sep 2023 21:20:33 +0800 (CST)
Received: from localhost (10.202.227.76) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Wed, 13 Sep
 2023 14:22:15 +0100
Date: Wed, 13 Sep 2023 14:22:14 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Ilpo =?ISO-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>
Message-ID: <20230913142214.000019ca@Huawei.com>
In-Reply-To: <20230913122748.29530-11-ilpo.jarvinen@linux.intel.com>
References: <20230913122748.29530-1-ilpo.jarvinen@linux.intel.com>
 <20230913122748.29530-11-ilpo.jarvinen@linux.intel.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.227.76]
X-ClientProxiedBy: lhrpeml500005.china.huawei.com (7.191.163.240) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Wed, 13 Sep 2023 15:10:27 +0000
Subject: Re: [Intel-wired-lan] [PATCH v2 10/10] e1000e: Use
 pcie_capability_read_word() for reading LNKSTA
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

On Wed, 13 Sep 2023 15:27:48 +0300
Ilpo J=E4rvinen <ilpo.jarvinen@linux.intel.com> wrote:

> Use pcie_capability_read_word() for reading LNKSTA and remove the
> custom define that matches to PCI_EXP_LNKSTA.
> =

> As only single user for cap_offset remains, remove it too and use
> adapter->pdev->pcie_cap directly in the if condition.
> =

> Signed-off-by: Ilpo J=E4rvinen <ilpo.jarvinen@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/e1000e/defines.h |  1 -
>  drivers/net/ethernet/intel/e1000e/mac.c     | 10 ++++------
>  2 files changed, 4 insertions(+), 7 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/e1000e/defines.h b/drivers/net/et=
hernet/intel/e1000e/defines.h
> index a4d29c9e03a6..23a58cada43a 100644
> --- a/drivers/net/ethernet/intel/e1000e/defines.h
> +++ b/drivers/net/ethernet/intel/e1000e/defines.h
> @@ -678,7 +678,6 @@
>  =

>  /* PCI/PCI-X/PCI-EX Config space */
>  #define PCI_HEADER_TYPE_REGISTER     0x0E
> -#define PCIE_LINK_STATUS             0x12
>  =

>  #define PCI_HEADER_TYPE_MULTIFUNC    0x80
>  =

> diff --git a/drivers/net/ethernet/intel/e1000e/mac.c b/drivers/net/ethern=
et/intel/e1000e/mac.c
> index 5340cf73778d..e86652a30069 100644
> --- a/drivers/net/ethernet/intel/e1000e/mac.c
> +++ b/drivers/net/ethernet/intel/e1000e/mac.c
> @@ -18,15 +18,13 @@ s32 e1000e_get_bus_info_pcie(struct e1000_hw *hw)
>  	struct e1000_mac_info *mac =3D &hw->mac;
>  	struct e1000_bus_info *bus =3D &hw->bus;
>  	struct e1000_adapter *adapter =3D hw->adapter;
> -	u16 pcie_link_status, cap_offset;
> +	u16 pcie_link_status;
>  =

> -	cap_offset =3D adapter->pdev->pcie_cap;
> -	if (!cap_offset) {
> +	if (!adapter->pdev->pcie_cap) {

Could use pci_pcie_cap() though it'll end up longer, so not sure if it is
a good idea.
Given number of accesses to adapter->pdev, perhaps a local variable pdev, w=
ould help.

>  		bus->width =3D e1000_bus_width_unknown;
>  	} else {
> -		pci_read_config_word(adapter->pdev,
> -				     cap_offset + PCIE_LINK_STATUS,
> -				     &pcie_link_status);
> +		pcie_capability_read_word(adapter->pdev, PCI_EXP_LNKSTA,
> +					  &pcie_link_status);
>  		bus->width =3D (enum e1000_bus_width)FIELD_GET(PCI_EXP_LNKSTA_NLW,
>  							     pcie_link_status);
>  	}

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
