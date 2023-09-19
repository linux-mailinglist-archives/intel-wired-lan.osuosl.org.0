Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 767607A67B4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Sep 2023 17:12:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0CF5C60FD1;
	Tue, 19 Sep 2023 15:12:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0CF5C60FD1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695136330;
	bh=nW0fC22gyZUpskkX5yQAmiUNJ34XPABIM2set8exXVU=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YPGnOk2PTwvPOFqnMOnU7ynqPKcwcgfBg6v5qOPR4Z58FdCKQHZs1pwYMDkEgs6zL
	 5EJTiDO4nEWJKJvpHUfzKiRHc5UMD25mZdjRtBsSHNglB+2X8xtiL5+N7aaDjdlgK1
	 VT9iMeX9/xyaH52LZZwk1nYWRSwg7jMTV0txHqHX2yicEtV+KxXaGqg0UVsKI0zlum
	 Rl75iiHjljgkdjNQysw5h42uuaVNLtGOadoJn5hdZILhIyQhbU+rPnBu3u4BGWiz86
	 GW9U4e0QDlGBe1UKyrMBKB49pJitczCGTwjEx+QJ7+IT8nFQZZKuWYzQ6H6PhTcsb4
	 Ziui8uOpg7b5w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qUuXCs-IBoKy; Tue, 19 Sep 2023 15:12:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D647961238;
	Tue, 19 Sep 2023 15:12:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D647961238
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BD7CB1BF3CB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 13:27:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8A6C18348C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 13:27:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A6C18348C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BhNbfM2PCVAN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Sep 2023 13:27:24 +0000 (UTC)
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com
 [185.176.79.56])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4FD7C83312
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 13:27:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4FD7C83312
Received: from lhrpeml500005.china.huawei.com (unknown [172.18.147.207])
 by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4Rqj9b5SvDz6K5nL;
 Tue, 19 Sep 2023 21:26:27 +0800 (CST)
Received: from localhost (10.202.227.76) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Tue, 19 Sep
 2023 14:27:19 +0100
Date: Tue, 19 Sep 2023 14:27:17 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Ilpo =?ISO-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>
Message-ID: <20230919142717.0000247c@Huawei.com>
In-Reply-To: <20230919125648.1920-9-ilpo.jarvinen@linux.intel.com>
References: <20230919125648.1920-1-ilpo.jarvinen@linux.intel.com>
 <20230919125648.1920-9-ilpo.jarvinen@linux.intel.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.227.76]
X-ClientProxiedBy: lhrpeml500005.china.huawei.com (7.191.163.240) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Tue, 19 Sep 2023 15:11:54 +0000
Subject: Re: [Intel-wired-lan] [PATCH v3 8/8] e1000e: Use
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
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Bjorn Helgaas <bhelgaas@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 19 Sep 2023 15:56:48 +0300
Ilpo J=E4rvinen <ilpo.jarvinen@linux.intel.com> wrote:

> Use pcie_capability_read_word() for reading LNKSTA and remove the
> custom define that matches to PCI_EXP_LNKSTA.
> =

> As only single user for cap_offset remains, replace it with a call to
> pci_pcie_cap(). Instead of e1000_adapter, make local variable out of
> pci_dev because both users are interested in it.
> =

> Signed-off-by: Ilpo J=E4rvinen <ilpo.jarvinen@linux.intel.com>
LGTM
Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>

> ---
>  drivers/net/ethernet/intel/e1000e/defines.h |  1 -
>  drivers/net/ethernet/intel/e1000e/mac.c     | 11 ++++-------
>  2 files changed, 4 insertions(+), 8 deletions(-)
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
> index 5340cf73778d..694a779e718d 100644
> --- a/drivers/net/ethernet/intel/e1000e/mac.c
> +++ b/drivers/net/ethernet/intel/e1000e/mac.c
> @@ -17,16 +17,13 @@ s32 e1000e_get_bus_info_pcie(struct e1000_hw *hw)
>  {
>  	struct e1000_mac_info *mac =3D &hw->mac;
>  	struct e1000_bus_info *bus =3D &hw->bus;
> -	struct e1000_adapter *adapter =3D hw->adapter;
> -	u16 pcie_link_status, cap_offset;
> +	struct pci_dev *pdev =3D hw->adapter->pdev;
> +	u16 pcie_link_status;
>  =

> -	cap_offset =3D adapter->pdev->pcie_cap;
> -	if (!cap_offset) {
> +	if (!pci_pcie_cap(pdev)) {
>  		bus->width =3D e1000_bus_width_unknown;
>  	} else {
> -		pci_read_config_word(adapter->pdev,
> -				     cap_offset + PCIE_LINK_STATUS,
> -				     &pcie_link_status);
> +		pcie_capability_read_word(pdev, PCI_EXP_LNKSTA, &pcie_link_status);
>  		bus->width =3D (enum e1000_bus_width)FIELD_GET(PCI_EXP_LNKSTA_NLW,
>  							     pcie_link_status);
>  	}

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
