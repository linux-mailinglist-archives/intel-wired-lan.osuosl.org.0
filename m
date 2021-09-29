Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 083C241CDF7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Sep 2021 23:23:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A601240266;
	Wed, 29 Sep 2021 21:23:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jsoM2gRvZwmy; Wed, 29 Sep 2021 21:23:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D75B40257;
	Wed, 29 Sep 2021 21:23:40 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 71E8D1BF3DC
 for <intel-wired-lan@osuosl.org>; Wed, 29 Sep 2021 21:22:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 56D4F83FB5
 for <intel-wired-lan@osuosl.org>; Wed, 29 Sep 2021 21:22:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=fail (1024-bit key) reason="fail (body has been altered)"
 header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yN4tFaL17u2u for <intel-wired-lan@osuosl.org>;
 Wed, 29 Sep 2021 21:22:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1864E83FB3
 for <intel-wired-lan@osuosl.org>; Wed, 29 Sep 2021 21:22:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="247576812"
X-IronPort-AV: E=Sophos;i="5.85,334,1624345200"; d="scan'208";a="247576812"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 14:22:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,334,1624345200"; d="scan'208";a="563612536"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga002.fm.intel.com with ESMTP; 29 Sep 2021 14:22:30 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 29 Sep 2021 14:22:30 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 29 Sep 2021 14:22:29 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 29 Sep 2021 14:22:29 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 29 Sep 2021 14:22:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MKDp8OPEm7VLrK9zAZbrluyE5NjT3/ZHqj+tD9NDmrgwFVv7wdEbtNvzZJ049v9h1YyKvBCYXzNvsv30grTuXW/W9dLZ8FLe84XW3ffy79GdVvFOJNEEmLnin/VnuOdoCjrEPihC7PN+7M5UMY7BkjglNLUKAG89WBw2EwB1zkgUXXNjVCc4D50KVcxYP4uBDJlZtOqU1vYHgo9+JEp9x+caHa8Gv5NPvyzl1U90OQD5s74oFTS6JvxMAiF67izhtYFFpQQyrIgSJg5SqpvQG26jIc24aSWwE3NRoVROwFDeqIWnU+zo3QSHhFMKMJRQ+tpBosiBgE9cIs7gUyVKBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=7KHsxRYGbnil2koiOnsdJ2kzU73x0lnL4Kwzx/y2Mrc=;
 b=VmR1cCxRe26Mlx0ROSdWs6n2MNprF71t3YEzgRPuS+RoGpC2XI2xg/ncmi87+/sXWuUmboKCERVdG2LkZFK2dAgRSMzRN8P0FNHnOHk3UPsNPCMcFCWLGh5iHAZGUI7JLcmmunKOWGaRxmbjCXOtSNjfSNwXtj7gxvDQSi0ryXTHS8vP6jgYEXtI5LywvBDmlkNBR0roGK67/aoXBhBh6ebc8w2d9lnNvmt27rlfWUOLf8PEtyvowS+wy0EkH49N86JZ+dNoacG4cYsXH3M2VHCvTyN0eRWKMx1yuT+9QcEQUnkLiT0Tdtr8+MGK6n7vbHyI/I2MU+nSM6GGL+lxHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7KHsxRYGbnil2koiOnsdJ2kzU73x0lnL4Kwzx/y2Mrc=;
 b=ta1wK7xPH0IA9Q2Yg3gNy8W1Ug3cEkcNA+/XjOg35dmkWzgSXrcje0MCRPzHK7ex5UtUOsjGzLOsjIJZFuE+amWrf+A1kas/VTAD4tq9ffjZvz6CEg+u8l/SbMusNFkK3KIK/PE2ArYjcS9PAOynOgNea4nMKQLAUFu0xsfYggg=
Received: from DM4PR11MB5389.namprd11.prod.outlook.com (2603:10b6:5:394::17)
 by DM5PR11MB1548.namprd11.prod.outlook.com (2603:10b6:4:c::10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4544.18; Wed, 29 Sep 2021 21:22:28 +0000
Received: from DM4PR11MB5389.namprd11.prod.outlook.com
 ([fe80::c9f6:2ddd:1210:99be]) by DM4PR11MB5389.namprd11.prod.outlook.com
 ([fe80::c9f6:2ddd:1210:99be%4]) with mapi id 15.20.4566.015; Wed, 29 Sep 2021
 21:22:28 +0000
From: "Jurkowski, Jerzy Wiktor" <jerzy.wiktor.jurkowski@intel.com>
To: "Creeley, Brett" <brett.creeley@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] ice: Fix failure to re-add LAN/RDMA Tx
 queues
Thread-Index: AQHXtXavoHRA+7fe30GzpXUeffA/yqu7hEaw
Date: Wed, 29 Sep 2021 21:22:28 +0000
Message-ID: <DM4PR11MB5389FAFB237B50BF9FC8F2F2C2A99@DM4PR11MB5389.namprd11.prod.outlook.com>
References: <20210628175345.50764-1-brett.creeley@intel.com>
In-Reply-To: <20210628175345.50764-1-brett.creeley@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 901cd79d-b3d5-4ec3-40af-08d9838f3d50
x-ms-traffictypediagnostic: DM5PR11MB1548:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1548DA668E8FD48216EFBD62C2A99@DM5PR11MB1548.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qp+jtUUYzVb2Kx6OXbjXDReXzX7agJkmN3LwWQ9RWXcNuiI3TuD0EfhxQR6BAI1vzBXd6tZ9oI+KzYEsGJBzmbG86/n1MbqB0epeiI0Iu8il1zwBpyisRdfB8VGCmsBwETIt+/D5WMC43D0kdnPqGJjSRA7a/1U5l4YBk4qshfa6OtlrYBRgwBdPlsn1GT7bNw8kVvK077vuilgyeRGoikJJYHAHmMwPgqoiUNNjyOpZuPUG+1N81lDkmvsSs4yl0VQBzYJZKs5heeGUevM2PHBhXoaGdj2VuF+Xd1PB1V80xDGzkmhyk1H8pxncWc1u7+1sAR+nGhcVmKPVF1xEgt2xu9a13emdvOQquvmZXlh117w6sEckh8383Fm9ntG2q7IByBY/gy1X3RT+mrdHtGEuJ8fIMWAFWOEx+6M24fWEFPu1NmCBoBdU583pbe40r71AiyZBh448jsLyEb+HC37HFcc06AFj0aW638sBTQcM4vSEHxJMtQ1oqjrScv9xlpIM95OOmHecgDQim0RW0MDHctZo6qFp94x/0ju0IrFWM5EGlLWa59refL8RbF4yzpwFO9Nj/fe3ttIWTIjQxrnbOxVr8V4sNOSnmz1a+56CaDCYd9NCDGojXta6Ss1X3QKISOpu80hXYW+/WjuTC324DjCKdYerdpZ3QjVbVM0MFk+tKzc0jgs6fXYko6sFyVuN/di8IkrMBm4NsNPTEad5vDAOO/Z+snbJ58QbmWdO6EbiZyLVWi2DV5tAQh74oFB14Qcz2vuGxzgDdN9HcMVa2gE3rtf+AqbCBZynDVA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5389.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(71200400001)(86362001)(26005)(55016002)(186003)(38070700005)(9686003)(83380400001)(38100700002)(2906002)(33656002)(122000001)(8936002)(6506007)(53546011)(110136005)(66476007)(8676002)(7696005)(66946007)(66446008)(316002)(5660300002)(508600001)(64756008)(52536014)(966005)(76116006)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WWx1UTNIbEc1WVRPUGRRc0hSd1pCT201UFF3TXN3VFV2cVB6M3BNaXpjZUJj?=
 =?utf-8?B?YjdYcWN6d1Q3eHRnOEFSenlKZWE5cWdhMnZwY1JZQUF3QmdCL2J2UmNXTjZ4?=
 =?utf-8?B?ZW16RGdaNjJQbm8wSmNuNXdETDUxdzlycXNjRHRKTTJ1d0dkc3o1M0JveTcx?=
 =?utf-8?B?ZDdLNU1MZWZoeG5mV1lKdTZkNkxoTmZud2V0R3c3SWlOcHhiUTJPaHB5NkhR?=
 =?utf-8?B?ZFpqU3hZSWRhazM5dUxDWmQzaTZ3Q3lBK1B1Z05wMElER3BjOEhsc2NrU1lw?=
 =?utf-8?B?Zm1ZcHlNY1NrWnNLMDdPT1M2MkxmNTZRZUNndXpzUUFOSEd6eDQwQUgvNHNJ?=
 =?utf-8?B?MzI5aXhoK1VCVXFCMk9zTWJsY0VTK0dOY3N3U0xoYVRtV0NEN2pKZnBrbDVx?=
 =?utf-8?B?YjNwRG1ZaDVzWjFGQ3R4MlBwWGk1RlNGQVdLc3pLSTRSdUEwUDE4UlRwWERo?=
 =?utf-8?B?djZyZ05meDNYTGV4MlZoRy9mVXNHRlVtR3M2RUdPMEZxa0FVRlVOVDdwSkpu?=
 =?utf-8?B?TmlMamlsOUtSeFJIVTRhMDNxVDFscEVOTTZvb0s0b29wR3ZnZ3pSd2tLWFFw?=
 =?utf-8?B?R3preWNwZjIvR2xNYzRLVmtmYmM4bmdnd3V2TlNyQmRDbzB1OHpMaTNFcURU?=
 =?utf-8?B?RGJsczBjU3lBejhGSTZZT1JoRzExb041Nk5HaXBDVGJEZG1jWUJjZDRCM1Y5?=
 =?utf-8?B?bU9lZ1RnZXlNaDVzdWU1akV5SDNqTzNLbmlNUmVuYmFDOWJ4Y2xjUmZadVRU?=
 =?utf-8?B?ZnF6K0V1VnpnRndNMnRwN2dzUFpWcUVHaTFjUXU1OHA0UU1vdzVQSVFNNzN1?=
 =?utf-8?B?bWlmNStyV0k1NVZnSGFaU1VoQUdobC96M1JwVjRGQUhBcUtSNkU3VE85WVVE?=
 =?utf-8?B?MnV0N2laOHpZaGNhdTNjajV4NXVIYUN1VmRLYUkvNkFYLzMrYS9MakJXeG4r?=
 =?utf-8?B?WjloTk9wR3pxRFdBZ1FIWjJUOUtVY2Nja1RWQWw1ckFMQkxTN20wTnRZNGFH?=
 =?utf-8?B?Vmp3N0JVYTNPOUpTSUQwbnZzVVArMVgyNG9xOHhaU3h5S1VIQks2WG0xRWdu?=
 =?utf-8?B?NDBVNEZEaklVUWphYmQ1NDloT3R6cW9xVEVLb3grN1VneWRCNUloUGo1VlpL?=
 =?utf-8?B?TC8xL0FUUXZxZkhxYzV2eHRZOEJrU2JxOVNxUjV5RkMyY0taR1I2ZklRRDZN?=
 =?utf-8?B?RndmcGUwcSt0ZTEwRVhtYnhzYzZhRGtkQ2tjVE44N0oxYXRUdFQ2dTc3Mit6?=
 =?utf-8?B?MnVjQTZiV28rUHlLVVl5ei9wVnNwM3RpVG83bTJ3T0VaZmpBVjdQRThuMXBa?=
 =?utf-8?B?SjYvWU53NVNuNWY4b3Q3L1F3N1FiNDJIak9ZT29LTm1DOFFoQURtZVVVbThM?=
 =?utf-8?B?MllXVVFPbWtEOEZFSVpwWmVnc1RQODR4N0xvNTVUVVI5NzVUZ1NMOCtXYktp?=
 =?utf-8?B?RWpWOHdlVk03Mkl3NmNja0gxNkllSVM2aEJHdDlwUU9FV3B4YnYvamVkK3ZJ?=
 =?utf-8?B?bHZLTzJBdXRhMVMwSXpqWEI0dkhIQWpmMFBqMk1RWjE3c3dYa1RXaFFvdmFT?=
 =?utf-8?B?eTd6VmpoVnFpQ3dUazV5cnRBUFpYcWlEdmhTSzdicHd3RW1ucDloNTBUbWFU?=
 =?utf-8?B?NndUSE5CbUcwY2VVSnZabWhoNXMvbW9RdkI0ZHN1SE5Oalh1YllJY3k0dFpQ?=
 =?utf-8?B?bFBCNHJkZEc2RmNGMm1VYW8yN2F3b05YNzNUTTZLRkpXaXlyRkVFVExKMUZ6?=
 =?utf-8?Q?ZQbC9pieo4SCmYMrspTNSNsJ6o9eVYkBedt6uKQ?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5389.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 901cd79d-b3d5-4ec3-40af-08d9838f3d50
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Sep 2021 21:22:28.0493 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G4bHNp+QdrMK8etf0CJBy+pFi98PS3tHVmWBWWFcb+6svxtl+WAhs3iG6pd+aV2HUT2IPNRLe+aOZZBbWx64yWROpObIPH9OqHw+rg2uOnVE30U5KCVgngeFMLMJ1wX/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1548
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Wed, 29 Sep 2021 21:23:37 +0000
Subject: Re: [Intel-wired-lan] [PATCH] ice: Fix failure to re-add LAN/RDMA
 Tx queues
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
> Creeley, Brett
> Sent: Monday, June 28, 2021 7:54 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH] ice: Fix failure to re-add LAN/RDMA Tx
> queues
> 
> Currently if the VSI is rebuilt/removed and the RDMA PF driver is active the
> RDMA Tx queue scheduler node configuration will not be cleaned up.
> This will cause the rebuild/re-add of the VSI to fail due to the software
> structures not being correctly cleaned up for the VSI index.
> Fix this by always calling ice_rm_vsi_rdma_cfg() for all VSI. If there are no
> RDMA scheduler nodes created, then there is no harm in calling
> ice_rm_vsi_rdma_cfg(). This change applies to all VSI types, so if RDMA
> support is added for other VSI types they will also get this change.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c   |  9 +++++++++
>  drivers/net/ethernet/intel/ice/ice_sched.c | 13 +++++++++++++
> drivers/net/ethernet/intel/ice/ice_sched.h |  1 +
>  3 files changed, 23 insertions(+)
> 
Tested-by: Jerzy Wiktor Jurkowski <jerzy.wiktor.jurkowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydzial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-316 | Kapital zakladowy 200.000 PLN.
Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wiadomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiekolwiek przegladanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
