Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 998492E3C8C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Dec 2020 15:04:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A6717203B5;
	Mon, 28 Dec 2020 14:04:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZMEoMbyon9Pe; Mon, 28 Dec 2020 14:04:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CA083226E9;
	Mon, 28 Dec 2020 14:04:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E25A91BF232
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Dec 2020 14:04:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D6FAA870B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Dec 2020 14:04:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wD0w0mU+KQR2 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Dec 2020 14:04:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A62DF870B1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Dec 2020 14:04:00 +0000 (UTC)
IronPort-SDR: Kx710kZ6bs65yhKQW3PEaDwXTE8fRwNNFxevMf3tsgSHAxhQ/gY+4bZnu/9eGV5WiiTbpKbF7d
 KY8LaOOROuzw==
X-IronPort-AV: E=McAfee;i="6000,8403,9847"; a="176538847"
X-IronPort-AV: E=Sophos;i="5.78,455,1599548400"; d="scan'208";a="176538847"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2020 06:03:59 -0800
IronPort-SDR: n+y+cntrqdvKWkv0dSNVBaHq0ovYTu1c6dfHbIBpRw+ca5FLOWproCLoVrGiPbU0mhxfboFZqV
 m05hB+5Yjugw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,455,1599548400"; d="scan'208";a="562835761"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 28 Dec 2020 06:03:59 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 28 Dec 2020 06:03:59 -0800
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 28 Dec 2020 06:03:58 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 28 Dec 2020 06:03:58 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 28 Dec 2020 06:03:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EvqjYQYdMf4hH4dNIMGWkLmtBnXtXMRTFim9IYmEJYMZmIVBr9Nr/XV90sq3Zd6BgjpLq76KZbVv0hfkIrDqJm+l4xewAqLewRbyRW9H7czKfwHNlkVvKOh0o7JnkbrKizm80pPuvGxIc79sCfsnJiBbo8c3Iuz6ZbLRUt/hLVR7UbDHiWr1aiKEXT//QRrfDklxmvC+miysSzev0svWcakD/kN+X7dULfd/mzwDb+Cg0GQI7FKsNnNod91cjJExka08gKq0eN08CtF2ltBIquO/kXUADf9XZMAnI4Qawf6bQveHdjNk2l1D10dnV1OJ4KTWTF6Js2ThLbbKTQqAqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bD8n/xfehvCd99MNjbyFCZteWeFvTaRtYhq81yE0JxE=;
 b=SqgnvQhgxqMC+EaF54oeSjv++JHn0Eu/F6TqDGzH0Cs6Tbc5aHew3+CQuDj0pkPx+RIfC6MOIEGWemAXNGUHNSVWwJSAYK4xvO+P3ArdCOTjd8JAFJXWd5eT5B3qtw6YlgBVmKuGFnOIaCKI0S7MDHVxlIbeRuYLJnaHMlLJHHabqRFAF9Fcx79D+18Kzrz4PBy6Fg87dkHNb+tclgiB+OgWJ1Y07MD+xzMbhnONYw6+I0QpwLmqe8U/USj2WmtSqvqNyByUxFjGrLKV98YuBxvThS0bzFToqNtRstj0MIrXn3An57Cm5CXJMNx/IC65FP+NXVG/354sX7m/VJ2wNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bD8n/xfehvCd99MNjbyFCZteWeFvTaRtYhq81yE0JxE=;
 b=nCkLFg4Piij8ajXJsG0v/CqQjIrvny3b/8GKCXdyQ5AOWRMwDR9UzANdA8Sv7CT/8CEDgBmdY4mroEt5xW/sliAOKnvBgbzq9GMzNWekdOeutpmGuC1YHH2Du4un02pwYCw8ZPqT1g/9SWW4zIFQ/dL3e0xxiZ1DsHv0LMbuq3U=
Received: from SN6PR11MB3008.namprd11.prod.outlook.com (2603:10b6:805:cf::18)
 by SN6PR11MB2749.namprd11.prod.outlook.com (2603:10b6:805:5f::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3700.27; Mon, 28 Dec
 2020 14:03:36 +0000
Received: from SN6PR11MB3008.namprd11.prod.outlook.com
 ([fe80::c5d6:3d99:8c49:6d9f]) by SN6PR11MB3008.namprd11.prod.outlook.com
 ([fe80::c5d6:3d99:8c49:6d9f%5]) with mapi id 15.20.3700.031; Mon, 28 Dec 2020
 14:03:36 +0000
From: "Kuruvinakunnel, George" <george.kuruvinakunnel@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] i40e: Add info trace at loading xdp
 program
Thread-Index: AQHWjdbghwBx90zW0k6ZCJ1tt03ffaoNKC6g
Date: Mon, 28 Dec 2020 14:03:36 +0000
Message-ID: <SN6PR11MB300833ADECF9F90681344630E2D90@SN6PR11MB3008.namprd11.prod.outlook.com>
References: <20200918160927.11265-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20200918160927.11265-1-arkadiusz.kubalewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [106.200.8.33]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e723f8d0-e7e6-469d-255b-08d8ab395eea
x-ms-traffictypediagnostic: SN6PR11MB2749:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB274929F7B6639D1F785F38CAE2D90@SN6PR11MB2749.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OAG3WvwNezuoYva1OXzKLd+DRAuUFi7DYstKunSjNxqHa2yLQFrs8Ma54KBLXtzJXP8TOfLaXNrp/qcxKHGjSLK+g1ke+ZwU0K8i2cxNSvxcxeJGwiG3R3tqeWXyaEjZXfNBgyAUwIMWnRGw90C1vj//dopOqosYVErrEQ0rzeyYyYcnzmD5vAqYBPjFWxgYDFQp2Vw7KYMWIcqTdH2DXsHZyKDOEFUXFh4IYCdswOFdFP5DieA/VJ5pFlf+Yxdjv/Q/28Ak3sH3IDn9jHQk7VLSLbd19CNifw86/wg+US9ONBjZuwRyM7HVhMZLbkjcV4HAHZOEXJiHsB+B28OyrXXuYl5BrsObpKRLkcc2zQxhBmFuNUKx/+K+jR3i4ndHowxv39VjIj968Ys10s6wmQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3008.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(376002)(366004)(346002)(39860400002)(396003)(52536014)(7696005)(64756008)(66476007)(9686003)(4326008)(55016002)(26005)(4744005)(66446008)(8936002)(66946007)(83380400001)(66556008)(33656002)(53546011)(2906002)(76116006)(316002)(86362001)(6506007)(186003)(110136005)(107886003)(71200400001)(5660300002)(478600001)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?HYcuh89bzhNtC6oZTrq2m72rtg8EppM6O9MThQbj/xEgyOaRcOjPKYcYvpFp?=
 =?us-ascii?Q?X45YKxbm0bnWk87RhDe/6lF253bsr5JqCIAwsGtxY7PaHWNJiV5ferRvh55E?=
 =?us-ascii?Q?jXDKRnUq+XKDEeY7n0zcZUkuNCiYO34M+/Wro9dkQNIkYqIAQkva+GlsxcPT?=
 =?us-ascii?Q?OOB0MHMQFK9LWuKRSQJR0eASjk/VbHEYycmFkLG1FDKYPAlT5WCs9Yg2pzpW?=
 =?us-ascii?Q?92nMVjXgLO9h+fm+WvCLP2YZe+MmSJSbqkkw4ouqcN7puZyDHiE8wBcesWo7?=
 =?us-ascii?Q?f7d0TrZGMHm32ITwd4W9n54+aNQbf9ckuO2CZ3Oir9Yy0hM+PG41LySatwbV?=
 =?us-ascii?Q?95n/u8HlPUli3LDSx3H6bG96eUZQ28MmFm4NjClyzys8d8cD1a6tdQQRWjZN?=
 =?us-ascii?Q?t8AABHdVvm7eOa0DIZi8GmY+FmdGhMFhCBZYJZ2A0tI3BxPhRW5DvfcGYq06?=
 =?us-ascii?Q?i3Tr4J75/BMYLEko4/41/JY7ePcXaUt7608/eYPRCPMu2+et2lPeHcsFaIWB?=
 =?us-ascii?Q?GmdztAoKn16ZMartiZ6lPVn4+6cztORbWYnquCoCrDJ9VGCRMVSfiz6Islqs?=
 =?us-ascii?Q?y1R/ZA3NJNHqrtPxugw7izZebFD0yB2K4eVfQ9EKDGZRDJq5mqwtceuwaQ9P?=
 =?us-ascii?Q?z8ERptWOQ24Nds5lGr9O4nEEpMGaa6I6BCw0EXwpBdRDa1JxCcEUrJWuiDIl?=
 =?us-ascii?Q?RRqFra/JEMznJWLAzTzH8b6POWF2jG9uTbKRj8KBYItPHNMYnkArSvucXhsL?=
 =?us-ascii?Q?t8Bg9o+w74+67d05coQRQL60X9YcBAPl/UX78X58dtKPp8W7z3YQcdf5V+Kv?=
 =?us-ascii?Q?usU5m1789VSJhRl5VI3S54rAZaWetn2OTyYNfwWtTq9LlaZ3nVlylHD4c5rR?=
 =?us-ascii?Q?EXOiBf6MdKR/XhrUqh3zpqwSDTP1jZOyMDFEmAGpqQBoichlEJlwfmU4bzxd?=
 =?us-ascii?Q?0O42MW/R2kvt6iNlucg1hOnQ+sXwNao7q1zP6B8ud+o=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3008.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e723f8d0-e7e6-469d-255b-08d8ab395eea
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Dec 2020 14:03:36.5924 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CWy/VNMLDqqNPDCpePXJLwoTn0I/ziLHRl6t2chosuA+EveKyFQB1IdnCBXxSIFYkALvVZI2HIbMHq+9fFM5g7Gh/5rQmkonfl6sB+oWr08=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2749
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Add info trace at loading xdp
 program
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Arkadiusz Kubalewski
> Sent: Friday, September 18, 2020 9:39 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH] i40e: Add info trace at loading xdp program
> 
> New trace indicates that the XDP program was loaded.
> The trace has a note that in case of using XDP_REDIRECT, number of queues on
> both interfaces shall be the same.
> This is required for optimal performance of XDP_REDIRECT, if interface used for
> TX has lower number of queues than a RX interface, the packets may be dropped
> (depending on RSS queue assignment).
> 
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 

Tested-by: George Kuruvinakunnel <george.kuruvinakunnel@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
