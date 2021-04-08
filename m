Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 107DD358F44
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Apr 2021 23:35:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EAFB840158;
	Thu,  8 Apr 2021 21:35:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JnAXTcAlIrTN; Thu,  8 Apr 2021 21:35:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D6DE840144;
	Thu,  8 Apr 2021 21:35:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9937B1BF860
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 21:35:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 91E77600BB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 21:35:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kHuU7v5Zo8j4 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Apr 2021 21:35:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CF7476005E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 21:35:32 +0000 (UTC)
IronPort-SDR: VbM/L6g94qFnzcHQjXbnDOaA3dj4PpcHpz5AxCpV/FhS8YTwU8l9AOYF9dJF0ugOFf5kTu5Cvn
 ZXavLasyGB4w==
X-IronPort-AV: E=McAfee;i="6000,8403,9948"; a="191484629"
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="191484629"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 14:35:32 -0700
IronPort-SDR: 49+wv+u+S0vy2Kq9GLB+tm6DWgdtK1VlyjXY3qh2PLk3fGIhiIE536ApUtZVZdwH8ahPV3aVHb
 RsR+gB0qw1yQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="441907186"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 08 Apr 2021 14:35:32 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 8 Apr 2021 14:35:31 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 8 Apr 2021 14:35:31 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 8 Apr 2021 14:35:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UpD84gk5I/7pTRWZzQio2S9Kn2UBRnR4iLwd7Lym9iRlv0d1fOVGpKt9X+e8a9zk8T2twTDiAlxaFOqC/ZMdgEqyX3nLl8B1+WOH9BHtZdqAMof1RzP4h5wsvEz8xvWWU1MIYffhwXRgZmroex+sxKJ4ON1e52AR3byzLCA//oG3vtpcdc3z5twfB7uRiy2wKFUjj7sdArNeZuaPJwAYXeg6eA6kTVXtP/W1bWmxqjy4JySxD/GdGXW0UYRgXc6uM9gUzOoo2LsVshWf3hwKA4+m0I5w29fImS/YNb3V+2uw2WIzkeoDlEJ1wXgcvNTC+1wttqcgWKOtXUNzmgGEOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ki1YKpZuAA+s2dKOSumcMxlrSLOlNR+Wieloxq8cKw4=;
 b=bLfmcQCDJswr2BAicPSLVuO2zk13TnS17/nRv6dMXh4b2e04LF9xuDurTgFAh5ncYbkGz0L9ABZ6jp5t+86ukfMoZpIMLjvrN9uVoEu1e+YqtaPUxTxj2gmzRmjZqXgM6T6VT0hL7oKpgVM4/QIrgRGKUBwvoiqSRLkJu8EG88myoT7R0s7jtWELhXiVtfZ16Cp4y9ui0PctHjMGDoo6SrDTGMq7LGKO6VcKvXq2BnRUE2j+VMDMidBs4eny0oaWj8UO7kWeyjNT1PQnCt9juseM4ySJJBbrN1lydmUW0C9Cw/5gaBd/XYODo4B0Nz0BO7oZ9SElnBOFuYLNqSHyCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ki1YKpZuAA+s2dKOSumcMxlrSLOlNR+Wieloxq8cKw4=;
 b=UWcr/5DBslmpF5n2tpmp+QEsMs4QP97MNvUaD+cC4qo/TrA/45o8e0tAIwIZQWZLogrnwSlRlX4Ml1km3RYloifkuu8M5OQEQ47AROgfScjB2aULRu+CLnAza0MndNbkw3rcSns4wh00Pew57YblFqsfs4dVmueJGCSzBb6cdFs=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB1567.namprd11.prod.outlook.com (2603:10b6:301:d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.20; Thu, 8 Apr
 2021 21:35:30 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.4020.016; Thu, 8 Apr 2021
 21:35:30 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S58 06/13] ice: print name in
 /proc/iomem
Thread-Index: AQHXJnSq3v93u++gtUiasORBqyF2tqqrMRkA
Date: Thu, 8 Apr 2021 21:35:30 +0000
Message-ID: <CO1PR11MB510590E43BF7518178FEEED6FA749@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210331211708.55205-1-anthony.l.nguyen@intel.com>
 <20210331211708.55205-6-anthony.l.nguyen@intel.com>
In-Reply-To: <20210331211708.55205-6-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.214]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 39c9f32a-5da1-4d83-7231-08d8fad63bf9
x-ms-traffictypediagnostic: MWHPR11MB1567:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB15678AC3C0B67F1BBE1BF260FA749@MWHPR11MB1567.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CsbbfXqKwwfTIneH2R3QrSWS2fV+6DV6dmtDr4CWbBU/DXFJROaDK0VaX6+PmEgBU/F6DYRi6fwYxNbYPLWxsfMT3TeJFpbIftwFc4n7awzbktgButOn61f8F2GegEYgJL/YU4CD2eei+Macz4zHDzZuA/F70CBU0YN3tcvDA4pOo21y+yYX2XTUDPxfvQWtnJtTcEWGy5qhLtdd68o7/jy0hFLJYv9YPgPew+r2HqPQikruwFiEXMgFJAXRu4X0my4quFXHkhl2/VrmN7LjgFTzMc+Otx80XvIuQHSNm9B0j723zkRwIb4d+5emFBOvtwuIHP4gfLUaSATRJt+aI8BiexklIOTWMpFgxJS4K+5tkqeOWLsGbpNzC+1lXu7TsyDzo7PdJjtBCuN6od95AHQN5YLGpBHAo7aMOc/AfNyFw6j8OY8OHyuiLjk7FyPnkD6joCXQ08qzIMHPmmSup+SOOxrY/yYL7hnIC+a51pMCfuQIYR8ny5h3lvfr/eYi+6bGaNiHummH3eHOf5sxFN7Xyszv+285jr3zxfZglm8qsGb75xeFYnDGM4vRFaBIN3+tq3mbkTZ0gMVDaQl6+JQAdrW6hfQeK++6WUyTY+7rZecWjTNB65hhJTK4rG9/mu40G3QOxCFVmycpt7iep12Vtm/Afi+vxk8MkuFsQEs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(39860400002)(366004)(136003)(376002)(346002)(8676002)(9686003)(71200400001)(55016002)(86362001)(53546011)(38100700001)(33656002)(316002)(6506007)(478600001)(8936002)(66446008)(66556008)(66476007)(76116006)(7696005)(64756008)(83380400001)(66946007)(5660300002)(186003)(52536014)(26005)(2906002)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?7lk8AyY9YNf+EG9/u15nVAzazE2YoxG0M5FgXwJxU3TpqmJUeudZcpLrIHvY?=
 =?us-ascii?Q?/0Y2T5U4+m81Y/s4Q5xlIII7ir6xG6qX7Ctk2IomYVkdIxSkazA5tFPGiHA5?=
 =?us-ascii?Q?TEQGYxejg0JbDEW6Ujyuk5NvWYpj1k35d+u4cXLzEJQpKYHh4Ky3usFLF8Bv?=
 =?us-ascii?Q?2MZAECwvkq+qdXWmDPH79fTkoH3zio8+F8uXSBlKJWc2kjO5dmYwFPRjYUbp?=
 =?us-ascii?Q?RjyA6snRXe8oD7Xhga67zViq2sUNLt9Kz/4qil+wNmTgFYiPGsieHOFE3h9k?=
 =?us-ascii?Q?AoLupL7zRGaZVh8lYuFoM2Wea0uCf9tSI1nW8+b8xaJv/Czw2XOtJTvHqWov?=
 =?us-ascii?Q?/Se2S88Hh6d3MvywPU87tAHtvcqhqpoT27DbJCg3dTz9o1mmxgstMW2VCefI?=
 =?us-ascii?Q?vWXu2PJmI1i1H9bglzmyy6LOYoWU4yz6ZMa1TupsYjVeoSMsdQ2oxwIbINDK?=
 =?us-ascii?Q?hWWnzZnIVaDyIxCWReN5kUZdZGPf1LX2Cm912h6hTC8gClc/0WL+tR1gbxt7?=
 =?us-ascii?Q?VpQs/3WC/3YpER1XwdCbt2PY0Ya29U1JR81hWNudcuj/Sj0f8oVaSb7w/srV?=
 =?us-ascii?Q?Ei2SksBNpZk3ELkb6KqDSrHVu7D73/92smhKWWPKmrJEiNEdRctcAxoG7LnS?=
 =?us-ascii?Q?lq+vsI5UFwQlUXmZ4817pzSiQwAvbMEyX7vq1FObl8JVFBqk4C5yBqDdToDd?=
 =?us-ascii?Q?emcYXjj/+UZmFvclefGiN257acyXT7XZCtRJm6Zez6TBt/rYiufDCIiSNUzb?=
 =?us-ascii?Q?7L3iB0532xO2OTS+hB5TLKiadv4TmDo1ToyTVi3czG5aFWXOUDJkO3qrHgoC?=
 =?us-ascii?Q?ZpvDEqsK/Ewp5vWEH0EXGjwEhqhTfKwdij/+ypaXYxQesQjY14h5KqhiAkjU?=
 =?us-ascii?Q?JYGMk0x+vBZCDQNM60Vb9p9O06Wx7mHFm5BACPjVA5xt4FD2aVhB1mxKHSJM?=
 =?us-ascii?Q?qChyyx2iOQBF4l0WvCxLi9RINy7SbfOJw15YaZITPj9/SdqRVCTTUJ2a/JMg?=
 =?us-ascii?Q?sGlrU0iZNS+mWj8naoAdcSSQv9KFEz4dFQywH6R7mgO13vFhTB3m9jekzTDY?=
 =?us-ascii?Q?8l22UH3t2j18Kdq7bCq8NbjyTMLWYfJXriKFt+agTxatq0Bydw4w5kSa6+Yl?=
 =?us-ascii?Q?UeDGjfepT9gIitYS/DQs0BGA7mdnbzwXf863tGwvhO4gFrzQRXsDuCEk6pV+?=
 =?us-ascii?Q?F+tEhuT+VAk5M4myT2lQM5fMugyJZC/bbh+2NygEgPLKNhbR4NYBbLmytCId?=
 =?us-ascii?Q?3L0adWyNX/ueXyqkiGNfZ0E6E3mKlGZDz1Rbcty013fFmUAlMCdwlBgZkFyX?=
 =?us-ascii?Q?5IyB8zb602+zqTUltnhlmflJ?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39c9f32a-5da1-4d83-7231-08d8fad63bf9
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2021 21:35:30.8197 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YXFZ8ZHqwk4GDEkak7YVwPgxt0ihbZ2t6DiVEoM2KCFrNFBdHQi4dC7OE0C7H7h02Jb6lZX7xqA6CQB1wL5wmvZqp1rRPdsx8PpczHFD9gw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1567
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S58 06/13] ice: print name in
 /proc/iomem
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Wednesday, March 31, 2021 2:17 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S58 06/13] ice: print name in /proc/iomem
> 
> From: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> The driver previously printed it's PCI address in the name field for the pci
> resource, which when displayed via /proc/iomem, would print the same
> thing twice.
> 
> It's more useful for debugging to see the driver name, as most other
> modules do.
> 
> Here's a diff of before and after this change:
>      99100000-991fffff : 0000:3b:00.1
>    9a000000-a04fffff : PCI Bus 0000:3b
>      9a000000-9bffffff : 0000:3b:00.1
> -      9a000000-9bffffff : 0000:3b:00.1
> +      9a000000-9bffffff : ice
>      9c000000-9dffffff : 0000:3b:00.0
> -      9c000000-9dffffff : 0000:3b:00.0
> +      9c000000-9dffffff : ice
>      9e000000-9effffff : 0000:3b:00.1
>      9f000000-9fffffff : 0000:3b:00.0
>      a0000000-a000ffff : 0000:3b:00.1
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
