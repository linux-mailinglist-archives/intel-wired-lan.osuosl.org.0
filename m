Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 251392041E4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2020 22:23:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 20A6B88801;
	Mon, 22 Jun 2020 20:23:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FbjmSJue26VW; Mon, 22 Jun 2020 20:23:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2E2848820F;
	Mon, 22 Jun 2020 20:23:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 932F11BF3CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 20:23:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8B5602042C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 20:23:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7KKJ8BsEV0vU for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2020 20:23:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id 3D5B72041E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 20:23:12 +0000 (UTC)
IronPort-SDR: P6T0Fn6S1ur/Qemlsf8q2Bt/Mfrw/lLkaOZ9kXI0287sbTcWILSvtrq8L1/w0dLJeCOroQ7Ylf
 xVEK0lVPbo0A==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="124140826"
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="124140826"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 13:23:11 -0700
IronPort-SDR: U+6NM1TVT/JBOh9yH7l/2NInKimE0JJKDaqlGj7kO+scaQs2dICn01LZDO8v6HNYL18V1KfuHP
 zUurPDKoUQGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="311043488"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga002.fm.intel.com with ESMTP; 22 Jun 2020 13:23:11 -0700
Received: from FMSMSX109.amr.corp.intel.com (10.18.116.9) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 22 Jun 2020 13:23:11 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx109.amr.corp.intel.com (10.18.116.9) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 22 Jun 2020 13:23:10 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Mon, 22 Jun 2020 13:23:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MLujEQQpqOqmpjEZs9lPcwO/+1s254hbdhFlyAyN66AGvcNDZVj/+UcFjVoS1u7eBIfs+YjW917KwVQu3Bu2Ep70aIQaqfdwWJD3dyfC/0J8TWWEDfnX0gXErWGgafggP5BdZy1a0URXpNX7WITFMZzxMMRKBNCJ/LiXYgaWL++qWtXoc3nN0/QQdp5THQS0sgY2xH40L+NrmoXZOXt3dJ5EjXZ5d7qekf4QaeDd1aeGctsoC7T4+z2k0/bcHc39rqApr7Z3w+yCFdMj+aLM4655INjq6T2+qMelcANBw9oSmSA7LsRT2MvpxmBRMf1kNQ29iO6wfTV9mUrC6PAHCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=79SpSPefEj3tCITmOUZpjw/bMvXyb+G/uliS1SDy4+g=;
 b=hTO4bpSwQ0wkFA5LgZlgU5jtrWm3y/G8Ha86dSbRjwvUcfwUlnUhBY7OjwQhlGARE5k26N6L9ZXVhZrzUAsuZi1CZgZ/HFtYPX+K3oEM3HoLYU7YL187D2JDpQv0/MMzQ7tX9vkOH+UGDTadSRpJ/5HgI1UQf75V6ZZ5+9WO9aF4AHERx9PEktyzlhgXUA/BwUXG5gVGnEBPtHGxo8pDHUjYSXKGmhPKH009uw73cMzcb9cPWqtdOl+VskqQYhgyFNwHgHSUXNdzFwDAOPwvDtRmJXbi2tcqrMxpONnWpexAD1yPNCuCtUXs71I/AmX0VqSCL51N+ljGoqFkaGGFEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=79SpSPefEj3tCITmOUZpjw/bMvXyb+G/uliS1SDy4+g=;
 b=bYqUQ0VzcYEH2wWcG4qTAO4a7mQsq+1msS/JtqaCDCRX1splitZUbXcRTKKWoIpNST8sdHoEGDQUvkrwsegnnzl9yxzGJwCEvN1sPi1Y0GgHAKaShgymymD955BxnO79sqFJl6vFFQ8TX3di8ybvY6/Kx8mrrzIu9EVLlpYuRMw=
Received: from BYAPR11MB2742.namprd11.prod.outlook.com (2603:10b6:a02:c1::32)
 by BYAPR11MB3702.namprd11.prod.outlook.com (2603:10b6:a03:f7::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Mon, 22 Jun
 2020 20:23:05 +0000
Received: from BYAPR11MB2742.namprd11.prod.outlook.com
 ([fe80::6c8d:518e:bfca:ff36]) by BYAPR11MB2742.namprd11.prod.outlook.com
 ([fe80::6c8d:518e:bfca:ff36%5]) with mapi id 15.20.3109.027; Mon, 22 Jun 2020
 20:23:05 +0000
From: "Allan, Bruce W" <bruce.w.allan@intel.com>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>, "Kirsher, Jeffrey T"
 <jeffrey.t.kirsher@intel.com>, "David S. Miller" <davem@davemloft.net>,
 "Jakub Kicinski" <kuba@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH][next] ice: Use struct_size() helper
Thread-Index: AQHWRmIzcKfnt6Gt3Uee+46ZItnIpqjlF5ig
Date: Mon, 22 Jun 2020 20:23:05 +0000
Message-ID: <BYAPR11MB27429F471B0D17894F6900E4B5970@BYAPR11MB2742.namprd11.prod.outlook.com>
References: <20200619175611.GA27719@embeddedor>
In-Reply-To: <20200619175611.GA27719@embeddedor>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.201]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b366454f-03d7-4c8f-7252-08d816ea1243
x-ms-traffictypediagnostic: BYAPR11MB3702:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB3702C9E952A078FD56E25A2EB5970@BYAPR11MB3702.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-forefront-prvs: 0442E569BC
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jhwb6D54fftTcxLmE1XPMm0vVnKxMmesU5vqWjRXvcMqI/7nxo8UaoXPq4ym0wGrjxwZ4XUYnPcfWEKb5wN7dwJLw0Q4TELE1AWE3BbvcEs6WK/o+ZCoEbG+F/QZKTZd9Sq5JGHENO0MNYDhb8oIhNEjDYxLffSV10aucyeHPqFywMhOvSoSSzG08KuCDYfl3qJYi6Pky6z4FzFBogZ6PvyfsOrlCHzXz8meR+HjE5lWzFBMiSvTy0MIoBYaDUspRjE/YHYSTI97lM8gsuKzKuVWPkvbevdQDlnLifhYLOeWHR57IQsGqYh0G8g+BLjqm0e6yoCff+4WdYcJOKMMDz0sVK8EBgR9DjPikBPzUfjzrKYt4I8HRGpjWJT/gT+2G+SVXLl2fMLbBvWgTfPI1w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2742.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(366004)(136003)(396003)(376002)(346002)(52536014)(33656002)(7696005)(478600001)(55016002)(64756008)(6506007)(53546011)(2906002)(66476007)(66946007)(66556008)(76116006)(66446008)(5660300002)(9686003)(4326008)(186003)(86362001)(110136005)(54906003)(26005)(8936002)(8676002)(83380400001)(71200400001)(316002)(966005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: VC/YiG8dOfa0UCce9ejtJxLd3gyzdYUYA8Mp0NrWq8zw+pX+rK7IyB7l/3AnXKEeCyPOwJbI6EGRMBwCDlh45yP2b1DP37U5iuQhXodTRD8pvJ2Sj7vBrK+dzYNwJL2KTkdfCvRzrivT1zgUbyhz0sLEM/q5qSJnt+N8cUJYp44bFVmZD0ZoeIkCgDV1FiKecR1Zruj0VPUvIxdajIJo/GxAYxsfE2gfsi6UeGPQHS7Ismw71kIPTYBHut4K/jSjgOIRuFQyXjSkAPO9qpmw+l3Kg5of9GnkR+7NmTco6AiNJ3fvENKcHYbFnWlXiZdEhnuKu3wxT4ZZf484dhtRDl9vFZaC4Br8x5l4rK4D94l+bwbMwQh90KI0VICaUU5KcvAM1H5U8+rQMAhf0bZtbQONKrV9lAs7/0Bi9fbKjNH8XWoOALvgZA/3YMhC1Z8F25+ras0FcNhJ8Q49ppTR/0urV+Sz1ecGRrmYEGGWBRV7+IZQWNJgn1n4v19Q2lh8
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b366454f-03d7-4c8f-7252-08d816ea1243
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2020 20:23:05.6484 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2QQlJ5FfkF2C6WclSPN0XcxrymoQqy88nnZob7zSIt21aqTqcukdZSHeZYQCKhS8t/NHsf3TG0WYvbEOjsf0lw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3702
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH][next] ice: Use struct_size() helper
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Gustavo A. R. Silva
> Sent: Friday, June 19, 2020 10:56 AM
> To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>; David S. Miller
> <davem@davemloft.net>; Jakub Kicinski <kuba@kernel.org>
> Cc: netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org; linux-
> kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH][next] ice: Use struct_size() helper
> 
> Make use of the struct_size() helper instead of an open-coded version
> in order to avoid any potential type mistakes.
> 
> This code was detected with the help of Coccinelle and, audited and
> fixed manually.
> 
> Addresses-KSPP-ID: https://github.com/KSPP/linux/issues/83
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> ---
>  drivers/net/ethernet/intel/ice/ice_flex_pipe.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

This is already fixed in an in-process patch-set that converts one-element arrays to flexible-arrays
that Jeff Kirsher has mentioned before and should be pushed shortly.

> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
> b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
> index 4420fc02f7e7..d92c4d70dbcd 100644
> --- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
> +++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
> @@ -1121,8 +1121,7 @@ static enum ice_status ice_get_pkg_info(struct
> ice_hw *hw)
>  	u16 size;
>  	u32 i;
> 
> -	size = sizeof(*pkg_info) + (sizeof(pkg_info->pkg_info[0]) *
> -				    (ICE_PKG_CNT - 1));
> +	size = struct_size(pkg_info, pkg_info, ICE_PKG_CNT - 1);
>  	pkg_info = kzalloc(size, GFP_KERNEL);
>  	if (!pkg_info)
>  		return ICE_ERR_NO_MEMORY;
> --
> 2.27.0
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
