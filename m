Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C8343339A62
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Mar 2021 01:18:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 59DEB4ED49;
	Sat, 13 Mar 2021 00:18:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b7a1DiklmtJU; Sat, 13 Mar 2021 00:18:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2ABB54ED1D;
	Sat, 13 Mar 2021 00:18:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 450CC1BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 00:18:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 32C1C4ED1D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 00:18:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X5YWahOaiwap for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 Mar 2021 00:18:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 46C704ED0F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 00:18:08 +0000 (UTC)
IronPort-SDR: 8QCxgFQhYIS+AkdXqlPzibLR4geEdPK9bfjg31mUvhfdsR8inNi5lAeZtYPQ/lV0bGSQIKt1fB
 ji2cad87ZErQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9921"; a="168179873"
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="168179873"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 16:18:07 -0800
IronPort-SDR: Se37L1sTk5FMUoi3WQJ+eEMtTM74E0/DM9taVkCLELedEY+PMxlWpDKPvawDwP0fAnBBPh4hdl
 MzCQDb9QXN0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="371046852"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 12 Mar 2021 16:18:07 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Mar 2021 16:18:06 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 12 Mar 2021 16:18:06 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 12 Mar 2021 16:18:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fSmKmj/rtcCptELZwXQxizoHvugUyL0mRZKbj4Ct64hTIwCw6GdUCP8GyAFZIEkfaZhksp8gziq2HkVcWr/wVzmxr8gHNfI16RWDVf58zDkeZNkZLlwzU3IRnui4yiRJaUNguyoVz1W+gwmD/jAXKMeSqT2fKKhODkRUwlNFyLz2NRtVEQDZj7jwroz6kkXCkHhwuaOwrpOBr6SL685iPEzgqDvgYTl9XN2m8VTTO9GtW9bEwOt+V678ozLLZx32P293Zkd64PJ+0vdh6Ts5fb/NLI7SjBgFy6oEm75R6FPQWmxhAi7C43fCZxdkna1sWLMzl+SnLuMh9/RQBwF9Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=awrrwQqmSBO6NvBl/+HqDlWSD7G8zmVwrJVF+W6shvk=;
 b=XRu3KcTBvWYepDW3Q1P/S7nBB9l1pHn91AuolQw4U/OyFhQrl+wHSI8rcTUmlQg7Qy6QEylCYShUPtPgAX59w328TOMbn0vYLHfI+BUApS1vqV7w6y0xIvvMlencgE9sMmfdx150tHnvCwqYk4QY9mpBMYte95k7FZ0LK4aYxHXaeSx3fX2o5zdqey5UzCa/rHV8L0tONmlaLf3xWJhOhemhCEu8qRY3JKk2DxL194ChNzdrMcMyPzHfqfz+3qFUfXbUAmf3rsEhkJVNwQO/Rg5nQEKv7+OW8JJLHkwPKCOVZGUsRrmkQGclqxwGyjfE6zOeX3zhkwMvbT7OIWXE3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=awrrwQqmSBO6NvBl/+HqDlWSD7G8zmVwrJVF+W6shvk=;
 b=IcWKnGg3hcVkK7Owa8+xxt/4XwjZ0DXEKN1dCgXgpZovggS8U2JatWT7+X/QVmpXjPM5zWimaZkUFjl+dADw/mKwEzN5Im0f+dew54Gmkz6184+cIBgounnDG1b7Ie62iXZ0OWB+lUpA59TJLfMccCZ0BcySV24hiuwFnEhEs7U=
Received: from SA2PR11MB5114.namprd11.prod.outlook.com (2603:10b6:806:114::19)
 by SA0PR11MB4733.namprd11.prod.outlook.com (2603:10b6:806:9a::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.31; Sat, 13 Mar
 2021 00:18:04 +0000
Received: from SA2PR11MB5114.namprd11.prod.outlook.com
 ([fe80::9f2:69c7:b467:184e]) by SA2PR11MB5114.namprd11.prod.outlook.com
 ([fe80::9f2:69c7:b467:184e%5]) with mapi id 15.20.3933.032; Sat, 13 Mar 2021
 00:18:04 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S56 13/13] ice: Fix prototype warnings
Thread-Index: AQHXD5GYNnZ6MuXk+UaU14SD7ufcdKqBHXSg
Date: Sat, 13 Mar 2021 00:18:04 +0000
Message-ID: <SA2PR11MB51140E8938718BB565DC898EFA6E9@SA2PR11MB5114.namprd11.prod.outlook.com>
References: <20210302181545.51822-1-anthony.l.nguyen@intel.com>
 <20210302181545.51822-13-anthony.l.nguyen@intel.com>
In-Reply-To: <20210302181545.51822-13-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.213]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 92cdd34d-fb88-4659-30a4-08d8e5b578aa
x-ms-traffictypediagnostic: SA0PR11MB4733:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA0PR11MB4733F67F6727388EA73EED09FA6E9@SA0PR11MB4733.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:451;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: O8YDNcwJjrJ2e2IvfCUuLmZZzhyfb6B0kD1RMVC5vx36axLLyd7DEnUUOupL5tcUzA5egHEZAzY/l3oeg/Fj0U/lIjwYI0AbWjAvHn7cAgDDf6AbA3JAqWRnr4x5b4Oo8XKPOUS4Vxgax+J8ZozyfemnWiVJXlpjb+EhMcCLNWJChEa62K9gBPw9Y5TE49PvwzysWRQgQ1iXsNkzotou/7lquB075SxgMGtOFyaSFxFVhdqkKyuokFiDkwF/nxb7vJXKU0akwHqOtl7VGoUiZKkLUtTKuMU3m6OGTu6RU7gi8zjhUho5Fg4XHGGDFL/I0x+SceAn5apM+xsxFJr3BLZV3NuOYX/CrMvqHmmqf8MQ1aYENZasauM7DDZGygq6mXHZFm0QoBAALuUE8tgB7vDFxAzSTtM1hqnKkLOKZXpymaL4FyLL7YCfhIilkypR/D02Py+pi/lGVNzhRhSGxoolph3Sjnfm47ALUvWIy19C2YOe462cvLFRTfksGLVSQ5OkXdbWe93N3tlaLM/PoYbh4cSk7BmuQrs5pl7yTo6pN/EpiQMU1ebxc/G5nvLT
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR11MB5114.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(366004)(396003)(39860400002)(136003)(346002)(66556008)(66446008)(316002)(26005)(186003)(8936002)(6506007)(76116006)(478600001)(5660300002)(110136005)(8676002)(64756008)(4744005)(66946007)(53546011)(55016002)(9686003)(71200400001)(66476007)(2906002)(52536014)(7696005)(33656002)(83380400001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?SNSTuv/brB85T63ZRzwIVkox8dni311kR1N8Ssyv9sqzJl5cgioBf+SJ+cey?=
 =?us-ascii?Q?qoi9uW0ZLvGXoUHAQwsHML6ryvTUqHQsByWETCpdvDQenmIU+61C6WiP+ltw?=
 =?us-ascii?Q?n2LRKqIcGJnJkHxyPuJ5iCzA4W07kHPFyCXipSjKdk4Uj3tLUCdEY0ageJE8?=
 =?us-ascii?Q?bgwOUXKtY7g1M+yAZ7B3Q2FZRoH4C0LHg/s+LpZ14/CLe38F/BB0qALr05Yh?=
 =?us-ascii?Q?Im426H3hkP5M9bjfifBe004JGC/bSEXP0NeFr0CFQlJO1WBAcsPjfAhULYru?=
 =?us-ascii?Q?y9bPsnWTOISz1ZGJ1vs5oyfM+BIMHm+woYkWjVz3EZP837ojy8pw1yQ5BsBB?=
 =?us-ascii?Q?G1IA8j/9qKqpvYpk+cPuoB3sxK2weCag09PariPE8mUDK9YY+XF/aeWsBHNI?=
 =?us-ascii?Q?BCB0F+e9KaDMCdlZeY/prqhlZkwvcsH2wFilJ73Elk30AcO8epff1e2yBkgy?=
 =?us-ascii?Q?r3e597H69vxOEUwwDtCoZGy7241s7udhRkYhjrLShMAooFCLG8/6McsUhHdQ?=
 =?us-ascii?Q?hRAQsZ4c59apakJW4CsGxfCszFuRrFXJ0YTrWlnqaM37t4dVNEbgmTvo6S4F?=
 =?us-ascii?Q?AX6LWjxRQknPFlnOgcrcXBvuuDhjjCDbYk0HiYKjz8he/gNq//3SYrk9ZlAj?=
 =?us-ascii?Q?4f94aQX7Yhp8We2DJQ1l1qK4hIXU1lnPhNEzlRkrrC9irdhZy0rz3yvViMx4?=
 =?us-ascii?Q?zsKFI03b12c3D13eqFJmDUWd46yWyFiNP9AgPVLqIdIzmdNL4p9Pmd4Pzncu?=
 =?us-ascii?Q?R9HtyDMwtq4hGqGYX3/YMsom9nl+5QqZItYD37SRytEG29vBQ5xxQ74H/BKc?=
 =?us-ascii?Q?eCH7rJ8hFCr53ngzh/spU7TnKnXSqdHrQD56Meh/w/XjWjb5845G++UXwIxN?=
 =?us-ascii?Q?PmrMDcWnyQUX9gnWlax72FUsEzBpZJr0s2TPzy9gSXDxv7k7CZbX4W5Ps4m4?=
 =?us-ascii?Q?OAjv37jXU+gcVfZjtyzaYuWWad6uHd1Pk7VcPEC2jrnL+J0njkarD5hMoHza?=
 =?us-ascii?Q?UjQyBZXo4NgzrjAOG0Dm8QTu17xBIyhTOr1a6TucUaG4ft7Z9kW0LeaUCRqK?=
 =?us-ascii?Q?t5CqGZJTzjjixf9CNcUcpx1B+H853IJHiSWchKIT9Xts59pwl3pvryRLXfUr?=
 =?us-ascii?Q?LPCJKWmmpe/IvKDq7C0dP4ETm40h9ZgD0ABCkGJ3WxlD9M6bKxeDv05kMb3n?=
 =?us-ascii?Q?szkjJ2iLEZiI0mbrIaNEj7I596qn4Z3LnvNtEB92wL8F+ImKCcn3LD7dM1+B?=
 =?us-ascii?Q?anBhQI07ssTAx8rbxu1QDYEe+u0csvUn5b0PJ7/4aF9EJ1R80+DThCR78Jgl?=
 =?us-ascii?Q?rIm1UTouM64Icrg+P9jVAlLt?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA2PR11MB5114.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92cdd34d-fb88-4659-30a4-08d8e5b578aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2021 00:18:04.8518 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: djbD3ea188koM2K0dNe4KUTSXeRKpoc1RARs2GOxKHT1rP06rLB78X+LcxamEXNezFvxXZcs8J8DyIPR5sNDz5b5sH/Js8FreI+kZ/lP7zI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4733
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S56 13/13] ice: Fix prototype warnings
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
> Sent: Tuesday, March 2, 2021 10:16 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S56 13/13] ice: Fix prototype warnings
> 
> Correct reported warnings for "warning: expecting prototype for ...
> Prototype was for ... instead"
> 
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c      | 2 +-
>  drivers/net/ethernet/intel/ice/ice_dcb.c         | 2 +-
>  drivers/net/ethernet/intel/ice/ice_fdir.c        | 2 +-
>  drivers/net/ethernet/intel/ice/ice_main.c        | 4 ++--
>  drivers/net/ethernet/intel/ice/ice_sched.c       | 2 +-
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 4 ++--
>  6 files changed, 8 insertions(+), 8 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
