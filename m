Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F993688D8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Apr 2021 00:06:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8A6428432C;
	Thu, 22 Apr 2021 22:06:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Aa6yp4TJ_Mwp; Thu, 22 Apr 2021 22:06:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 80BB683CDC;
	Thu, 22 Apr 2021 22:06:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 08B121BF3F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Apr 2021 22:06:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EAC7660885
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Apr 2021 22:06:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TZ0S9oYuhNdg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Apr 2021 22:06:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8132360825
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Apr 2021 22:06:10 +0000 (UTC)
IronPort-SDR: ytQFYAO1SXPS1shipuGiUh3LKVEF05hY/JskuLaJeFKe9dU7zBr7h6Q8WKkN1/bWp6fdzXI616
 Z1jEeGce004g==
X-IronPort-AV: E=McAfee;i="6200,9189,9962"; a="195536902"
X-IronPort-AV: E=Sophos;i="5.82,243,1613462400"; d="scan'208";a="195536902"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2021 15:06:08 -0700
IronPort-SDR: IDxNo+nA8GvxqSaj7BOfUWpmMRoqXrk/BzFGPvB57UxJ2TJjtcVd9elFzfuVBbIiaw78EewIQR
 Y+k5D5vT9NAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,243,1613462400"; d="scan'208";a="428135726"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 22 Apr 2021 15:06:07 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 22 Apr 2021 15:06:05 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 22 Apr 2021 15:06:05 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 22 Apr 2021 15:06:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H+80JxjE72wuJAqex8doPMuh3Lx8m+hr8/mU9jNvXAQRzYmKp/dRl3AsHDyDVshr6PiDUxVDrhzQCFbiBPoMgOd/EP4lmnHLL3HcZOBfRB0b0Fg4GVIK+53mNZH5D1d+57A2DIcj4vZibnN5JJL89+39utj1IJT0j3McHL1de8c2y831FfKhv3Suj/0QNY07ynmRPFmatFiPYg01bR3P+Effc+0/4BYvw9jTJZ9qGlOdJDcIGqzczUuD36ErevDNK+ZVvmHFq+yIQs6Xhnn1eCyc0dXP+TTVUkssZzmmJygEdXiZEwDir1/rGFonND0Q31ppPPYWrtVPXybop/QdlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=87Yp5nNRpLPSxyXg/y1BJlUEJnZx+sHSIRE9z6+QJ2E=;
 b=JMKuyOOaFGnC+dHXDXz0XhI9m6P7iVXOgkilbnZnbDNCke0fe/0H5AqrcEScvUGGSWzHG+gw3/l7lQpWk3b7SU2C/Yo30+IdW1T3wbokOg1VnpVFJPa1hgxRUBZHNqCGvjx5ERhV1McDFD4thuaMI/iPHNYAqbX/togBxc8UT7ypwElKLW8q5Jr+zF3J7IO1/drIxk9wiW0j1Jts+9+gz64TvhAZG/eaFONplCiGAMf0bn4TThH0PxzORHOvYyk3bONaJsQslOQqslkdsjiTKwXV3t0AXzm90Esed24EMFqPEIaQYALKwidmV2Kf8c8A7Kd4s/GXEnnbirc/ix5Z4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=87Yp5nNRpLPSxyXg/y1BJlUEJnZx+sHSIRE9z6+QJ2E=;
 b=QpKCxDnu3JMCggE2pTQIur0p/wM86T6zWZNf1s8JBJGdk8EdSR6Bb/fXnmQpPhLX/OPC3sIbMPuZDnlwxR3S7wEOk1zNCHE1AwPSaeeNT3lsN6uCZZqZruoiY7NQnKKKXytsx/7r/oliBzC/zDvDcyPKXOI24mNt1YJyPOTs9Jw=
Received: from MW3PR11MB4748.namprd11.prod.outlook.com (2603:10b6:303:2e::9)
 by MWHPR11MB1711.namprd11.prod.outlook.com (2603:10b6:300:27::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.21; Thu, 22 Apr
 2021 22:06:01 +0000
Received: from MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212]) by MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212%5]) with mapi id 15.20.4042.024; Thu, 22 Apr 2021
 22:06:01 +0000
From: "Switzer, David" <david.switzer@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 04/11] igb/igc: use
 strongly typed pointer
Thread-Index: AQHXIdh4YlKmop088UiiocRY+D+pCqrBQ4Dg
Date: Thu, 22 Apr 2021 22:06:00 +0000
Message-ID: <MW3PR11MB4748FADF450118F512C8019AEB469@MW3PR11MB4748.namprd11.prod.outlook.com>
References: <20210326003834.3886241-1-jesse.brandeburg@intel.com>
 <20210326003834.3886241-5-jesse.brandeburg@intel.com>
In-Reply-To: <20210326003834.3886241-5-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [50.38.40.205]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2912b143-043b-4478-2307-08d905dad0a1
x-ms-traffictypediagnostic: MWHPR11MB1711:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB17111DA023B2AD3721632CA9EB469@MWHPR11MB1711.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:242;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6mCWlN2zpiKLTXTF4Ti5Lq7GS9hmgPZHaWEYHXdlxGL35fz0TpsAhAg4o6KmgWLdEgNy9/PuodH4nIN7i2cZWSw/KH2HoqaqGaOwJ0ln/MFpc5uMb7CFu6Ootqksv38K8yetCyKBLHM6Tv+Hwl7UV4yWmTnESpy1rv51fw3lHyTIEn9VGyREmXRzQvmpLtKY7z8Zzn522leZui1gMKx/nIRA72ExhIElG4NzDivbsQ768aRm5r4GiWXv6CUSczAB4ET5O+p6866zZ/5SMO84A/48WlCD53022WSq4o5bF8//tGItfSIgMCSyNNPNewrs5MmkEEtrn4ofrXy/mgjYVJy87G5DvAdukZZXDuWsEn8YxTOfSBGd7m9GYVrr+bGPkgDCksBsdyaGvPQhteF8e7jlkFa1rptuZ2nR37z+oAv8cZRZxOv2cRcfaYr2j3DUoKam7gmTuUu0XoStr1wZslJ26qqiYBU01JB3MP2U2Br07NJhjY0HKvO6vdoUdriFOBAed9AYDul1faqYGEIMX0l2ryFV7X8H2GUMebbMBvRWDLT7ZEMW5TW0WbVdA25D5T2KkVNNurmuHvzrAFbLbk6jJ3ZgosHH4f7nI9lDIZM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4748.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(366004)(346002)(376002)(136003)(396003)(186003)(33656002)(66556008)(38100700002)(2906002)(83380400001)(478600001)(8936002)(71200400001)(9686003)(66946007)(64756008)(55016002)(26005)(66476007)(316002)(66446008)(8676002)(76116006)(6506007)(122000001)(86362001)(110136005)(5660300002)(52536014)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?vV01fL4hxs3slG2oCpTVzIBABzjGAorXGBdxG9ziZ9SZ2+mRd9Me6nyW2649?=
 =?us-ascii?Q?MvulkAV4Zfch2/VbLkFVzSk6jbyOQLrPg3ADtAcNopcsq2J8THFHFK1EP3AH?=
 =?us-ascii?Q?0qPXtLOKXooeJWxShBsaq6pQ20Al05NRV/XzPJVJ9BjctOPUTQSmMTgbWDkF?=
 =?us-ascii?Q?ACQGRthUYobiZSwKdfPHy2NbpQcgkMFWd++c87/YqGNTRBdKKRUktTp61CQ1?=
 =?us-ascii?Q?x8YSRlPmUUlwhCZTViCrhKJ3qI3L8QBhIof0Fs6u/IxP5pyKb1zghID+0m63?=
 =?us-ascii?Q?qRAQUVjXB7Yxc7nQ33OqiXwPLivh5RuCxx83T3a6RkDAJqaxJ9dDpRjtAXpu?=
 =?us-ascii?Q?lq74nN2Lm9C63hTj+3ISBGx3djpAMzgtM2rcu95OrJ0jgAJNJKw2R4cbOo5q?=
 =?us-ascii?Q?zL2L4uufkenP9iTDg+oZPWKlgo/a/hm6aBjQTc6g/i3IDN0tQstryYFzDIz9?=
 =?us-ascii?Q?X3P+2gJWyTWn7TZM9qhlY6TacbGMSir8IHBmOkA2Hr3+nZT19f3pucOqEow/?=
 =?us-ascii?Q?2McwING6reoG2oLukKmDUQgZcLbUC/3qUOleKx1FNHYGFH5OKuji6aJEjaRt?=
 =?us-ascii?Q?rCk7N0jiXr3SXKxGh4/aNzMJJJibiDTaqUZaDlhMugTVhCY89GbOpoT7iAqV?=
 =?us-ascii?Q?10E8bVNF0M8ANbpGN1RbCbzmcwAtOnTGTYU+I0RMmA1dlbbBsi2fxv3riXps?=
 =?us-ascii?Q?IC4WzPmULZQeIHvTgVHcIP0p0zm55SRTcx7MmzqI7Keg8ImxGpQ77vPhXfmE?=
 =?us-ascii?Q?D2Ynh8FDPfOSWI2tIkSIuHAgtjozNFBDRHs9BeOJ43wLM08Lzuiz+3oPvcff?=
 =?us-ascii?Q?raviY/XHvLaZojZR10iCLgusO/A9h8crjQRt5NiqiO2O7AInhvrB6XtAzI/C?=
 =?us-ascii?Q?jhY2XmJPuZQQvwbNmShApldBWZreRWr2phQV+1qoFMKbUro/ySB0VJSuBoOI?=
 =?us-ascii?Q?ZO0X7myl3vIrG8kxuaFe6GAlCiqR00uw/8NqToLBU5NBw4CKSCTMR+0Az7n+?=
 =?us-ascii?Q?emFzcrOeC8r+ScvHXD7PsC9KjnFNFqVY71MnbXoyAqx/mWJyv+9cgbfW/76X?=
 =?us-ascii?Q?HbZczHD05X1WiD1nQf1jl2g4v5RkD3AZIrbJqXRtnjZy/Hirl8NdPFxoTOub?=
 =?us-ascii?Q?tJY6E7OA7lfcgsbU272O2PBPraTTkqQ+XGyjAjsLJ/OrSnYy7LvYTT+K928S?=
 =?us-ascii?Q?0VGaMn3Y58zEs3+q9MqCI7KS+l9Ze742Ldu0+aXF8/I/AGf+Cy36LV2NLja5?=
 =?us-ascii?Q?R0hSjVK27Q0437/s6oKNR+dhMKZhGQ2Yk9xYAiRsGR2mlJV5KRittlWNJkHA?=
 =?us-ascii?Q?2JU=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4748.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2912b143-043b-4478-2307-08d905dad0a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2021 22:06:01.0179 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4mthlJEVr9AI5DMk5183F8lkqCJnqMwZtodqdn6WtSZRhXU9VQcqxnNHxwlFJ28GgvqW401lTypl5F1j2wcLsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1711
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 04/11] igb/igc: use
 strongly typed pointer
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


>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jesse
>Brandeburg
>Sent: Thursday, March 25, 2021 5:38 PM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next v2 04/11] igb/igc: use strongly typed
>pointer
>
>The igb and igc driver both use a trick of creating a local type pointer on the stack
>to ease dealing with a receive descriptor in
>64 bit chunks for printing.  Sparse however was not taken into account and
>receive descriptors are always in little endian order, so just make the unions use
>__le64 instead of u64.
>
>No functional change.
>
>Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
>---
>Warning Detail:
>  CHECK   .../igb/igb_main.c
>.../igb/igb_main.c:442:25: warning: cast to restricted __le64
>.../igb/igb_main.c:442:25: warning: cast to restricted __le64
>.../igb/igb_main.c:522:33: warning: cast to restricted __le64
>.../igb/igb_main.c:522:33: warning: cast to restricted __le64
>.../igb/igb_main.c:528:33: warning: cast to restricted __le64
>.../igb/igb_main.c:528:33: warning: cast to restricted __le64
>  CHECK   .../igc/igc_dump.c
>.../igc/igc_dump.c:192:40: warning: cast to restricted __le64
>.../igc/igc_dump.c:193:37: warning: cast to restricted __le64
>.../igc/igc_dump.c:275:45: warning: cast to restricted __le64
>.../igc/igc_dump.c:276:45: warning: cast to restricted __le64
>.../igc/igc_dump.c:281:45: warning: cast to restricted __le64
>.../igc/igc_dump.c:282:45: warning: cast to restricted __le64
>---
> drivers/net/ethernet/intel/igb/igb_main.c | 2 +-
>drivers/net/ethernet/intel/igc/igc_dump.c | 2 +-
> 2 files changed, 2 insertions(+), 2 deletions(-)
> 
Tested-by: Dave Switer <david.swtizer@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
