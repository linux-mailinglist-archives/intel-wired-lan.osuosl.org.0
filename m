Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B1835173A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Apr 2021 19:36:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 94987405A9;
	Thu,  1 Apr 2021 17:36:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OYFwtkmAYc6w; Thu,  1 Apr 2021 17:36:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6E8E04019B;
	Thu,  1 Apr 2021 17:36:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B63651BF844
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Apr 2021 17:36:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A4A1160659
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Apr 2021 17:36:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oCm4LmtG37Y0 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Apr 2021 17:35:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C4D336061B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Apr 2021 17:35:59 +0000 (UTC)
IronPort-SDR: 2trs4Ib6ruK9pwL+qtKlH9CYiKLvO8QfhgtgGNSxp1Xrr+wqgSO6IDDAvaMdhfzTa6UhouSNBk
 vm9ANXjSmKrQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9941"; a="179429668"
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="179429668"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 10:35:58 -0700
IronPort-SDR: cwl6MwVO4geiYCevNvKQG8bUG3P1zbBSphorWR7Wy6FoB0aH8ghgNVTmEIK20J4PWsc9A1tozY
 koanSYSct1bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="416753723"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga007.jf.intel.com with ESMTP; 01 Apr 2021 10:35:57 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 1 Apr 2021 10:35:57 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 1 Apr 2021 10:35:57 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 1 Apr 2021 10:35:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eMUpe+xB9mJRKIC4inWQE4zPhywHlmxVZNxU0APgJYp7UCIPy8dvMDXKjcbx0kIiQgiiTmmoWC3XG7rQ/QJS9csjARMfN6KlfoMKwg7GbBFKoXEQBGHN50PIX2Ae/DIboPxGc8nZNwcavDRaJrqGp0+58GUilx3mQklbApVUlymEJdajjoBHpLOODfH65o33J32ANy4Iz1ZvCzpaxI4n1l3tR/1ZJ+CfPx+x716LxjvRj4wZ5L7bxIr5nlABLa8gZkZfA3RTZx683mHv69GscJttXNWLZzofaK1T5wpnbIGZymB7rOR4V/b+b3hy/nMD6+k1Ug1mMfSOCOx/ksiUug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oqYiUxCCDZHdubmOlUDK6HiZixNlwBTfFM7DEnPUsCI=;
 b=YOBQbES3oJJLrGi69raV8dum0ietWt/vTTWAjNNFLRrAu6OKa/Fpw09RrxPL1Qw9nPGrvsjHtASYREXKj03vWlOt/cUNh9qRGuajtfeNKYLFSdIIV/WpvcbHS7MObeRHsi41VsoeYK9b/AoI2neVWFnrzMVz+L3HBownm2x0/sOV0BnM+ZSaQ6WrxTuW8qfM7o/hYcdj19EwQZ2drWuK1oWiqFuhFd+oXmQ0MA47bUdKD082qdltOc4MIiPz4j40aQ7LAcAi0yKS21nZbqcpnuNcyK58yE4hYPHWMpB5QMdyCOmh6K6Uy5qZuUwUiRrOlmO1WSf+dGDhC/A300WLog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oqYiUxCCDZHdubmOlUDK6HiZixNlwBTfFM7DEnPUsCI=;
 b=Rk9F7/fCw/G6XzDQcooKqgdglhkRhiMZquKLGMSJ0hmwbQMMb1yEECv9u71wWr+RODDBoNhUGHkrRVr4VpvQ/pzz7E+0LnVMaZvBVmRbJIld63GFlmzizpMFXD3RAS0StK2/xLErdSQZq1CWet7xXQi8WnjMqXogLGI9qOGCFm0=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB5051.namprd11.prod.outlook.com (2603:10b6:806:11f::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.26; Thu, 1 Apr
 2021 17:35:56 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::85b7:921c:ff53:696e]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::85b7:921c:ff53:696e%6]) with mapi id 15.20.3977.033; Thu, 1 Apr 2021
 17:35:56 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] i40e: Fix PHY type identifiers
 for 2.5G and 5G adapters
Thread-Index: AQHXJhyneZFXt9xwrU2hs+mPihBDMKqf7raA
Date: Thu, 1 Apr 2021 17:35:56 +0000
Message-ID: <e179078357fc93bfa0bd9c3de6a4f47a6a8fc379.camel@intel.com>
References: <20210331105701.2112-1-mateusz.palczewski@intel.com>
In-Reply-To: <20210331105701.2112-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1a24f62e-e4be-4e29-1c7e-08d8f5349b55
x-ms-traffictypediagnostic: SA2PR11MB5051:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB50511BAE2035EE54F19026A1C67B9@SA2PR11MB5051.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: omam4LKu4GPOcY6RWjmmDN8f9JcvcNzYT0owA+NJebFagtXT6x+nwzr+4xC7XZckNR2E1l7ogBYTknw/7jBSHlokJzpXe85CTkKHelDQeWlL/AG7jnwSjKkxr1yaTLnZMcsDXGPNqbAtUPKIRIbpEFdHGBMUqFp/gfegBjzEGLECdm7ugRtibM3xjh0S5a+PecmKPo8BFIaetmztu6vslTU3Oc/PdwH2fDr6HxTb389UA0MGjsVGW8x1OYO3Vf0lHZKUw/ynG9K8FIfdd+3HddZtNhStX4DMr2g8amMZSAy43uOCJwtFYrQkEj/XI6axOjcsou0tr4Zfj2xpsZjZ/lJv0dniHDHoeys0QeCIbKQxM8gxvtRZMdmzxWEDNOtx483i7tEVpHSWfB+vS/AiWjs8KxSPI/ekRc+ah31T3C4Y6tFCUVShjfiuOCNCMZdrWLYvytClIxiX757366Ia+1ld1yOcSGkEYTJszg9cAXSFJKycZeGum1GRy6JuQJCEsOFr2p8gyLqRQUaM/LkAfyhSCZPl1IVfCNB+xlW29N2wMk9YPibn0fE/0UZ3ygYnfhD9j4DAOvLRw67kwGYlgaVlt2tgzrnpLxbMjD7GpHxVGKAycG5mkHWpN6B+OzitJFa7fBLw8k02/BaMxDYGSA40IDFY/YzCbDtX3qgjAXN/5DGrdxNW++/OmYD77GdY
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(136003)(376002)(346002)(396003)(366004)(316002)(76116006)(2616005)(110136005)(6506007)(8936002)(6512007)(8676002)(83380400001)(71200400001)(4326008)(186003)(26005)(86362001)(91956017)(66556008)(66946007)(478600001)(64756008)(66446008)(66476007)(5660300002)(38100700001)(36756003)(2906002)(6486002)(6636002)(107886003)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?dlJ3a2prOWFnaitocVZBdVhpdzd5ekgrQXd4QStJYjcwMUQ1T3dNang1aVM4?=
 =?utf-8?B?eEhLZkdlNGF5R3VtZzJzWUNhaWtpdzVGbFNlN0F0VnBBMDdhQW1OYkxrOHhK?=
 =?utf-8?B?RmFPVTdZOUFJZHBmaUxPd1ZSMUFUSC81V2l1VEZzNzdIS0xwUFVRV2thZWM0?=
 =?utf-8?B?eXVFMlRlM2N1NWpqMjU5dVVmWEduY0hsc3pKTlNNM3dWYXZDM1BsbThvbzIw?=
 =?utf-8?B?aXZGWFlwUTZpZTh5SXlPSHVOc1hXZ0YrZndpc3RZZ3lnOUpMd1ZOajFMdndM?=
 =?utf-8?B?cmliNjdEYjE4cWV3a0xyb2dIZDV1eVd6bFJkWmsxNTNhd0pEZk9FR0lKQThm?=
 =?utf-8?B?Z09BMHFYYnRXMnVDcXVWa0hFQzdrTWVxellzSkk3U3FMMWZlalFKRlUyTlVI?=
 =?utf-8?B?ZlplREZrOFZTZ25Cb09UK3RjZVowU29BRXZ1amJVaGZUY0dqUG1INklqTmdF?=
 =?utf-8?B?OHdDbnpOeHlINDN2cVh4a0VadWVhTmRRZ1MwZDF6eGVsTHVLVnZ3dXhVbjJX?=
 =?utf-8?B?czU1bHFOWVNTUzJjVURaQThOdnowMzVYMTY0UEIxRXJ5SldRVmxCajQ2d1pv?=
 =?utf-8?B?bzM5ZGdYZ2pMRXFhWVUwbjVXRVdYQ3RCMWIrc0J4RkNESzE0Mkk5SU1BWFBQ?=
 =?utf-8?B?UU1wWkhiVzdKcVdUUlNZTnQ2QS9zQzU4WUxpUkc5K0hKT1l5bkhwVzQzVGJC?=
 =?utf-8?B?K0VVV3V2WjBYN3ljbmRWNzgxaDZwempZQ1VTWDVTOWo5cFo1M2Y1ejVxVkM5?=
 =?utf-8?B?eHFmNTBsMDIrYTNqblk5S3R1MHZPdU5lT2YybHVUMkdlOEtKNGR5elN4QTZD?=
 =?utf-8?B?bHdDNGROejVTUFJ3OWJaMmp4amZuYlVLb0lHZTVSQVV5bjJnWFpXa3g3OVBz?=
 =?utf-8?B?My9CYVBjZmk2WWZ3U0c3dTNNUkszWnJER3JCaVV0Uy9QT1VyTHVaS3Zrdmcr?=
 =?utf-8?B?VU1FTWRUTXZ1ajFMU25ibjhwRU9FZ01zVHNPajIvSXVvMTNEdEdsMEZndk9P?=
 =?utf-8?B?TTlORTJXYjJvR0xpazJjQm5hY2tuVHBTZjlBUTlaVldTUXhuQ2dqUXVQa0t4?=
 =?utf-8?B?OWFCN3hrKzFTL2VLaTZwZzkxbHhSQlVrallxbjRtdkQ3M2FyY2x2a3dtZU1h?=
 =?utf-8?B?TFg1MWNDSFEwd1dlMllta0FycXpEWEZYLzhPcm5qbWF6dnBLNGdLMFlXY3Y0?=
 =?utf-8?B?SzBlaDIvQmsycW4zdmwyc2lPT21iZXFTWmlQcVpzNDZCTWdBTXZ5N0YwSkZW?=
 =?utf-8?B?ZmhaRGU4WkVoQjEwSUJvMTkrUy8zU1FUcVRCTEd4RzYvTXZEUzZLQWYwdE9S?=
 =?utf-8?B?T3g0UExLVG5CUU1ndmRQSXVRZGl0cGkxd2FEeHY4V1FlRmYvbGxEQ0VNRlJ3?=
 =?utf-8?B?NVVuNmVUc2h6aW9DWXBPNElQWUt3OUNIeVVzVy9OQk0ydWNGOHk0WGNLbWh1?=
 =?utf-8?B?dktReWNyb0cxcEQzdGFybVlrYTJJdlV2dXlxRDNJWUExend2dGwrUGQ1U0xS?=
 =?utf-8?B?UitoWDFnUkVxVnFJN0JBUGpWZ1hGbEpEaXlQeHprTkhha3lxRS85cjhiSUJR?=
 =?utf-8?B?LzJzZ1YwMzRBc2RkMXg2YkE2UTdnTFRKQ3VNZndrWVg1Q1JXRDNhY0xHR2hq?=
 =?utf-8?B?TXd6ZGNiVm9DUWREN1hlWDJvaGdoSm5FeVhuamtCQVNQc2ROTThUbzBvYUQ0?=
 =?utf-8?B?dlRlUU5ManArbHRyVHR6WlV2U3kyTmZMMlVJRzN5Qm13S3VIMHlYSG5rU1Jk?=
 =?utf-8?Q?kzWBoteV/RhHaTDbaBwmaNaovli40NpH1JCxEAd?=
Content-ID: <281E832F7CD5434CACD52E49379D7C56@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a24f62e-e4be-4e29-1c7e-08d8f5349b55
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2021 17:35:56.4966 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X6ByCyLunjTrvj0rEE2T7lzXI6OKe7Z2Cr9cWUe762oWBClVRBQKjjiIVFIjPuGl4ljEdSrVt1QFe1440ddoDpkAzUtAxipApnlTf10fGv4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5051
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix PHY type identifiers
 for 2.5G and 5G adapters
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
Cc: "Lukwinski, Dawid" <dawid.lukwinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 2021-03-31 at 10:57 +0000, Mateusz Palczewski wrote:
> Unlike other supported adapters, 2.5G and 5G use different
> PHY type identifiers for reading/writing PHY settings
> and for reading link status. Introduce separate PHY
> identifiers for these two operation types.
> 
> Fixes: 2e45d3f4677a("i40e: Add support for X710 B/P & SFP+ cards")

The Fixes formatting was correct on v1, but is wrong here.  

> Signed-off-by: Dawid Lukwinski <dawid.lukwinski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Michal Maloszewski <michal.maloszewski@intel.com>
> Reviewed-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> ---
>  v2: Added missing changes in i40e_ethtool.c file
> ---
>  drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h | 2 ++
>  drivers/net/ethernet/intel/i40e/i40e_ethtool.c    | 4 ++--
>  2 files changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
> b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
> index ce626ea..78ba6b0 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
> @@ -1568,6 +1568,8 @@ enum i40e_aq_phy_type {
>  	I40E_PHY_TYPE_25GBASE_ACC		= 0x24,
>  	I40E_PHY_TYPE_2_5GBASE_T		= 0x30,
>  	I40E_PHY_TYPE_5GBASE_T			= 0x31,
> +	I40E_PHY_TYPE_2_5GBASE_T_LINK_STATUS	= 0x30,
> +	I40E_PHY_TYPE_5GBASE_T_LINK_STATUS	= 0x31,
>  	I40E_PHY_TYPE_MAX,
>  	I40E_PHY_TYPE_NOT_SUPPORTED_HIGH_TEMP	= 0xFD,
>  	I40E_PHY_TYPE_EMPTY			= 0xFE,
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> index 96d5202..fe5befa 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> @@ -841,8 +841,8 @@ static void i40e_get_settings_link_up(struct
> i40e_hw *hw,
>  							     10000baseT
> _Full);
>  		break;
>  	case I40E_PHY_TYPE_10GBASE_T:
> -	case I40E_PHY_TYPE_5GBASE_T:
> -	case I40E_PHY_TYPE_2_5GBASE_T:
> +	case I40E_PHY_TYPE_5GBASE_T_LINK_STATUS:
> +	case I40E_PHY_TYPE_2_5GBASE_T_LINK_STATUS:

There's nothing changing here. You've added new PHY types, but their
values match the old ones. The net effect is no change.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
