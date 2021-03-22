Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C346B34533C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Mar 2021 00:50:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 61B1260800;
	Mon, 22 Mar 2021 23:50:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JG6EZx2PPWgZ; Mon, 22 Mar 2021 23:50:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 52B48607FF;
	Mon, 22 Mar 2021 23:50:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5787A1BF372
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Mar 2021 23:50:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4D96C83A15
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Mar 2021 23:50:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hWIDYwVPrO9c for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Mar 2021 23:50:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7D6A4839BD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Mar 2021 23:50:45 +0000 (UTC)
IronPort-SDR: NY95MDsEzlLVuh98MCXeRZFvbMSoAerKzAy6L6aYDpXp1ENzcPDiTR5ubN0Xmz3iLRpMQaNiYE
 ccW5WMUPFMQA==
X-IronPort-AV: E=McAfee;i="6000,8403,9931"; a="254366539"
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="254366539"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 16:50:44 -0700
IronPort-SDR: G3mdLkvL8jLd6x7/ckBvyDtb6wpbTmyDdCtXnlWssY+kGQsuuTe9uB5VtQADj4nJd0xwtbcalR
 r934Ov7CDs2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="390666669"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga002.jf.intel.com with ESMTP; 22 Mar 2021 16:50:44 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 22 Mar 2021 16:50:43 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 22 Mar 2021 16:50:43 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 22 Mar 2021 16:50:43 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 22 Mar 2021 16:50:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dj1FAZzErCyRRPI4/Cko/tbTQCiLMqUShj/rlRilYrBV1kO+RM9OH8hBq4X5698tR9o2oCqILyl7IGelcKFWn8PDoEjB5zMQK5nHhgltGU5wh5zoVBh9MEgIdPfdMALW8p0Q6JWCmTIUteGSJ3ntdGWC6ee0nutL5Kyk/JLyEhbtfrS5E7IN6mX4Q8gTo0OyI+kz8q6RpLq0ktl5rDagO4suCu9yf4YHn2JjC3caLZz0xSxOrUJCrZ/lRPMspYqIsc9/LksIcZ8MZ0SjxmL9cofVoGMmX6s5TeteyW8IMpg9riF+vOTA3Hp9+3f6bOLhVVJjVfj7GHbZOEQYfyhRSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xkyJ7fOyuHH54ZjRqKPb3O0zgDb1Cc5RHZ5fBa9xCC0=;
 b=WUSglBXFrV/qvfkWAbCjsTs74Mv3dXAOn1KLoSIFiH7sYEWNfHc8CySijcEc70dcl1aBc2clKaWdmsetkS7d4BvvBCuiZIfvN3RG8IU8gb3bbc17JcP+rY/JxlCO9o4eTVLc82LInCrt6jhzu6t4tbnU6Vtxtt/LFBDhOy+hh3OE6mnng417etMvH9wouXtQ2z20mmrPRsVSbHkn1u6bTdHpANfHcno4vZf8AHmhiTHJjytrEPISY+hOCDExDGfdtd1EcO/8PLhP1k5iG6bOkMi9hxNv9WALTLdeCSXDQscYuaf3JdYRrVkPcskq5cj88c+naFszU3gx2d7ZfKIvUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xkyJ7fOyuHH54ZjRqKPb3O0zgDb1Cc5RHZ5fBa9xCC0=;
 b=DQPD2ksFpJBnkK/NVkAocJQ8l4M2WGtLpTa3e6kAdTYl475eMzhNHuxzRWrTFprhk9eyp7g5ozXC7dqOCoqhexjj1dnleIH7XOkxg2riioKBlfqvIyv9uJEHOuB+shjxSjOiJiXfFeFA18Jf7oFCy5LJ9J/z3SYsP2ZZ/yq1g8o=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by CO1PR11MB4929.namprd11.prod.outlook.com (2603:10b6:303:6d::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.18; Mon, 22 Mar
 2021 23:50:42 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3955.027; Mon, 22 Mar 2021
 23:50:42 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] i40e: Fix oops at i40e_rebuild()
Thread-Index: AQHXBkHngquvd/SvLE6YaqI4SlwbLqqQ32jw
Date: Mon, 22 Mar 2021 23:50:42 +0000
Message-ID: <CO1PR11MB51051A93C99852BF71889D38FA659@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210218215535.277482-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20210218215535.277482-1-arkadiusz.kubalewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6a8d8727-ba67-42ed-a7a1-08d8ed8d4e07
x-ms-traffictypediagnostic: CO1PR11MB4929:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB492910C82CDC6F7A3CF8A21CFA659@CO1PR11MB4929.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: l7zfP1/Cffx55oQWojBfbQeIiYhBMyfs2b60AqHHHGUfhQ8K90iU6AkWEzkP6TRnwlSQUGKnEUPHutlFKDJyo/Qf+jppRkEhELAA81TN77brF5tB+SeKZCRl2hokq/onlZodlKRxzXa9y8bZYOUgT/MjkirtCsNgUZIHnOQwt3IBXTzOMXpzruvFyrWzI3lThqWDMmGIRpLAR7UKYjXUST2zK+StSr/sU3bfYdiwRnNKGjsPPJSTW5GHl/ngFtrESEuzF9Fd0zPdThsZqNKVJhkhCWl9j2yMd+pePBMH7Ik03yOtKzDzHdd3fxXK5kZETSNHPTvwhIDUEUMk58SniEf4yJxsyszQfK2m5/KQ+bK9cjxphyFPJtq6IumZs3tDxIlDw3XiuWqkWc4yVrzQLvMe+WMaDrgUFleq0vzCzXoAtjpIEYTQofYCYb//lbpYm6Glg/+ZO5NX7sqrt2dr45M9T192eT5dN2ZU+3+UsNWivCwbsHmQP9FyuNmaeJbBxWjy40MiBdEk6R7BOu6zisFlsL04CjSI/yyIhKXb7TWW7MrFCROxc8InbE2cF86SckIpQwEi1z8oefQKPhoH3X2DjnXr6fXHz7j0xDWutKdQwShn1QwovDHUmtWhMKhetm2QNArbDa6eaLp+VLgw3W/DYyfwUNGGPjhd3rei4Bg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(376002)(136003)(346002)(39860400002)(366004)(66556008)(64756008)(66946007)(66476007)(76116006)(66446008)(83380400001)(478600001)(33656002)(2906002)(52536014)(5660300002)(38100700001)(9686003)(86362001)(4326008)(6506007)(53546011)(316002)(8676002)(110136005)(8936002)(107886003)(7696005)(71200400001)(26005)(186003)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?U3wxSF1stbkR9lBAPmGD6ex1GTgpbjem+I7iboNPIP87APvcjhvtAbZDfW8X?=
 =?us-ascii?Q?kmvSxS1GXGksoALWxN18MANduVs0wmcApPDd69tVOwIM9HR7l17hXTBfJrHZ?=
 =?us-ascii?Q?80QMliYcb8k4l8qlUL25Gzda0TZtD0BLi/PC+pbmKSQ/lxyoAxSBSnHCqfnE?=
 =?us-ascii?Q?GUyE5CuTpAdmxfLlJbc6acKen2cG9oEimryBJHBDRxeu00XFcxiJ5FUNkgLr?=
 =?us-ascii?Q?p+hZL5JRKnHx6/xN1AasKLgTH/xaDpIM6E5G/CLuRNmnhG0UklVw0EG9sbu+?=
 =?us-ascii?Q?43Z1A6lQouofj+0Y078UiLhcwB0ssyGZl7EG6+aCrqu3PSVIg3aCwt0qmllZ?=
 =?us-ascii?Q?/Dw+zRmT4wCKtMl2ubn8okfe+0qZiRfNE6tUVIumMNaSqoFuquKh6kUZkCBh?=
 =?us-ascii?Q?vsx6b+RDMXpApjRboWacKVRnWYsECJ8ETPkzBZGopPmsmZd5FdN9eHn0cvgi?=
 =?us-ascii?Q?1wOTHahiQkkRBlhnxZuxbsM4jJfnb3K3Rg/HhSl5BmDxscZL1oZDvWnbWQIQ?=
 =?us-ascii?Q?I8jpWLGShPxWcYe03ItQzOYK9pfyuqa9rBUc4FQHhQsXevnpSpV30evJvoNq?=
 =?us-ascii?Q?ypQ6xcXNaZ1dY7sr62MCBAxflrz/0moKSsQyQagKBQavGt3W3yOa1DWK7m2J?=
 =?us-ascii?Q?G7/+wUlRsBk+aQhshM74NfTBqdjfVc+16KfdxjITJMVo4XWiBoF085sLH1Qg?=
 =?us-ascii?Q?P0aHPKX2+UvOIGLb6AatZyRGgGhluPB7UBxQDTFA2raTpqzbwSLq6kZbRJec?=
 =?us-ascii?Q?X6T7oVuuf3N+xbO30dbz61ur2qjQi/UN3PC8PizeQYeuZa90E5rgUb+cpiiT?=
 =?us-ascii?Q?dl66INbBy8ChJnZzkiBuNM1rgRDK0ojO4V8mJq2JPdQY9x5xZ6vIBvZFlmS3?=
 =?us-ascii?Q?uW9VYIrmUvIFo6O8ifCQ30yzB5pQtiRRom/tmsZbb4cA1OVtNLSPCB2/hLdX?=
 =?us-ascii?Q?jjIVXYEihc0Gx3a4RBsLnyVjDxgfAWnDpxb5bxpAh+/Tjnp4p+MFrqqNEM2B?=
 =?us-ascii?Q?J2mQG0Ap/yapeewpbY+Tvkj/DI3tE7ZWowRReqvyFrRB+SypfI5+s560XteZ?=
 =?us-ascii?Q?u7CV7U8SoWWRkUyaufFgvPIINTM3dtxhyDqlhTzpMHcyiyG7SJnFXtRmXsc9?=
 =?us-ascii?Q?gc+QdOwjDJTD3oenw3Y3CludX4I1SqG4yWXiw/Mvv/bbuHlkrWRLZVWrpocw?=
 =?us-ascii?Q?53CIZNw+RTC5fCJlZXQHrhPnkhxGvik7oI1XtkXtlQ5Q9jPdPFk6JN84Na7M?=
 =?us-ascii?Q?KRxolE/QY6XyAU4f2nRlv3O8fzrck1tu8KYvtVlBBbUeJS5Z1+Qf8gCYq2Zk?=
 =?us-ascii?Q?8VX+ZvXxbuzIZHtxTJlk3ZAv?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a8d8727-ba67-42ed-a7a1-08d8ed8d4e07
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Mar 2021 23:50:42.6648 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OsSqVaQPiWCocV4ZE5UXHkigrOsdL0MqAxSJLxYDmroQbpW6rY+cFE2L5X6XHoEZ20hpN6cuMvhoYwkAS6itqQhMid1je+vmZm884Zqwb5Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4929
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Fix oops at i40e_rebuild()
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Arkadiusz Kubalewski
> Sent: Thursday, February 18, 2021 1:56 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH net] i40e: Fix oops at i40e_rebuild()
> 
> Setup TC before the i40e_setup_pf_switch() call.
> Memory must be inititalized for all the queues before using its resources.
> 
> Previously it could be possible that a call:
> xdp_rxq_info_reg(&rx_ring->xdp_rxq, rx_ring->netdev, rx_ring-
> >queue_index, rx_ring->q_vector->napi.napi_id); was made with q_vector
> being null.
> 
> Oops could show up with the following sequence:
> - no driver loaded
> - FW LLDP agent is on (flag disable-fw-lldp:off)
> - link is up
> - DCB configured with number of Traffic Classes that will not divide
>   completely the default number of queues (usually cpu cores)
> - driver load
> - set private flag: disable-fw-lldp:on
> 
> Fixes: 4b208eaa8078 ("i40e: Add init and default config of software based
> DCB")
> Fixes: b02e5a0ebb17 ("xsk: Propagate napi_id to XDP socket Rx path")
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
