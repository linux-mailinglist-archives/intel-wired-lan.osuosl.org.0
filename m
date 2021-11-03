Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFC3944491F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Nov 2021 20:42:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 47F34401EF;
	Wed,  3 Nov 2021 19:42:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V72nB7DkUAHs; Wed,  3 Nov 2021 19:41:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1434C40146;
	Wed,  3 Nov 2021 19:41:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ED3091BF3D1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Nov 2021 19:41:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DB2596063D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Nov 2021 19:41:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wFOBPUys7pgP for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Nov 2021 19:41:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 15A0A60634
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Nov 2021 19:41:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="231425511"
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="231425511"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 12:41:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="667646378"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga005.jf.intel.com with ESMTP; 03 Nov 2021 12:41:52 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 3 Nov 2021 12:41:51 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 3 Nov 2021 12:41:51 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 3 Nov 2021 12:41:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cwKKLntJYmwIXIMGJQDebTdz2sdff5li79Yu+gNaDXSSiCyJWasBDoqXFqV7exv6n8Z4EtGRunI07K/hTrmW+3t+9CHC+z5ZouGs9FU+H0bGS2MY4OdBn4xbVUjAZhFYXR/aEdTbddfDrEauND20l2Pi9NqFku4cavZ78QdfyL3fLa+xP0SG2R3nEl6vxUlsbk21ehP/aI4a1K679fTPX64jGzh0w3ezyeq/LFJ+We42W4iV4KfbSRgc+DMvi4qzrwOdO0AyD2Q2e+mFsbrg3hZzcf7fnfj3P/Zd1cQVy3Hg/BpRxDlpzFSzjWUa0ER/h7NQAv3DvGHjdR954+dOag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ck90fwWsuciZVAWVsxHdSMkvopP+WhkVl678UIk4e7c=;
 b=Amb2njWNpoekkMtaKwLRv77CgAhHMAVmjTLKovTwnZQ7wRy/89Bck0zb1f2JOrhr1rmWtSe+4l8qJkLDmo19SLo/b80tUYovUSGg54OxGQsY/KUNoczV+7KD2XerrU2lFvpgwSaFRS5XYtCimxl4npe+r1ZRSzdwWHXixwZjZtRDbrL8PsPukmddUV3bZIH2MYcEJJqDSK7BlhYiKkcdvQESHN3Lj3lfUMTY6il7h0bVa1YC43h3Bi4FPuhmnAD4ueiKFJd+h/CxbmwBXDWS2rZ+7GzunZFNn5NUvF9M6/89R1uwf6xH7A1KaDvVHJveffI6caB/d9PRClhh+/qeJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ck90fwWsuciZVAWVsxHdSMkvopP+WhkVl678UIk4e7c=;
 b=wp7ze3+liEQypE7Zr9dZBlTSGyIQuG7XUazeAC812+m5j7JoILflNVoz1JhEGIo7o15t79LmIz364cT2HWJh8MGpoqZQgbihSRgzyvvmtmg3hH60KRCflYXc0jdqf30dUNO8OMEGs4RQ3KfXMfs0SmQavUo2mm0zWO+kkYdWKmE=
Received: from PH0PR11MB5144.namprd11.prod.outlook.com (2603:10b6:510:3e::20)
 by PH0PR11MB4838.namprd11.prod.outlook.com (2603:10b6:510:40::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.13; Wed, 3 Nov
 2021 19:41:44 +0000
Received: from PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::f5e6:293:84ac:6f0f]) by PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::f5e6:293:84ac:6f0f%7]) with mapi id 15.20.4649.019; Wed, 3 Nov 2021
 19:41:44 +0000
From: "Kuruvinakunnel, George" <george.kuruvinakunnel@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 08/15] iavf: restore MSI state
 on reset
Thread-Index: AQHXWWPvCAqAg3hehU+xV2tOEYvSr6vzIuCw
Date: Wed, 3 Nov 2021 19:41:44 +0000
Message-ID: <PH0PR11MB5144A3D78C8E6CD5EF69BAF9E28C9@PH0PR11MB5144.namprd11.prod.outlook.com>
References: <20210604165335.33329-1-anthony.l.nguyen@intel.com>
 <20210604165335.33329-8-anthony.l.nguyen@intel.com>
In-Reply-To: <20210604165335.33329-8-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c8ef362d-3ff7-4a62-594f-08d99f01f76a
x-ms-traffictypediagnostic: PH0PR11MB4838:
x-microsoft-antispam-prvs: <PH0PR11MB48381EB2DD9091EF82FC2784E28C9@PH0PR11MB4838.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Hh4ESOxpehMQJ1rhj1mIyhrXkVsTmo+RBFQI7n4are2RYE2DobcKH87h1l9D9nky3aGk33e8q5otU0jFgJcghyZsWJil/sG+KHZ5WbSvglfYHr6osZYhDSBH+3MMbiDQE1vnyf0Chx3j6dNAxjz12XnKBl1PesYXm35P/Drzo5JjxD0sPzgUSuO6xMl6rvF1M8JyBLcmCs3+tV8FuVp8PWMBsrr/tm10DiLv8i+Zk8EDID2jWFf5fdFKLdB4+QrYDBVWLHuS8L0ZddwqHGtDhQAItPV1nPMH0dDO05+3iuHX0jf+2hsrZIZ/+czlN5EtZM5/Ntum0Hm3MbWqSnlSSWNfvK+zYqjdhp6RagYRVdxiZ1KxkJk1KdUw1uF5BQAKI1jocRgbAIVpJ0jHo2kVswSOI0Sgt6whq+5fgSAgENnWVB6RB8MCoQ3WL/dAseqkod9aIvT9cPzZ1cveVcHFmThgzyqWfgUze7fZd2kzUnIMKVy+TiWQ3QfbqXBk5Fe1K4r82jKwVgUtM9kVn/o+F7A2wDV8/p1cTiKABjzht33Z6uGzpo87oESiKuZI0UTYlPIDs2HydmEsy1kyaWWfXC6j3EKyqeIXNnZ9jKR8d3JKex4jWiqNCGbtw+25Lm4+fE6Rs7iLe6h3WrxKZ6A8KJawvQsm9tfsWVy4yQFUHRtTm27TtXzy+w2yJq629DhvXsZIOq1lB+iXzKmEpyVICg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5144.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(26005)(4744005)(38100700002)(66446008)(7696005)(33656002)(55016002)(6506007)(76116006)(2906002)(5660300002)(83380400001)(53546011)(186003)(508600001)(8936002)(66946007)(110136005)(9686003)(4326008)(82960400001)(52536014)(122000001)(107886003)(71200400001)(8676002)(66556008)(316002)(86362001)(66476007)(38070700005)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?u9NNYiDFgM31Yrd0I8xL6kggNEZ3LLAoUtL3jcrbAuX7Ce42N3basMuXkBnO?=
 =?us-ascii?Q?/uxVknn9/3Rd/hvV9bPaR8lImAQC93y0OrqnLVMlEavvHjO/1lAqT+YE1pyJ?=
 =?us-ascii?Q?3uHQoLQ4Onu/rvd2/rou3oIJ9NcGB+1oUY7M0y+sj5UyP4wTWz7OgJzIpQlT?=
 =?us-ascii?Q?5HWpToFgxwtZTtz/mrQCVP5hayjHjBamjOqkOEAm7ld9bk3lJF7z9jhIZHRD?=
 =?us-ascii?Q?guFCbRxWjjYeG1799dG/dEyOS8Np/EPvChS47QZ0bWWu1wEQ7BWsNCt+ACNh?=
 =?us-ascii?Q?QvrKPB+B3DIw/jURbku0KBoeXNjqGualOmo1JTQgoG24yrbT8KoGv56T3p0U?=
 =?us-ascii?Q?TnUIm9GUG4lqOXHS4UsT/hYo59larZ3F246iGsyw8aR5IoHarSeaWHFF/UyO?=
 =?us-ascii?Q?q8ceWrLFiW1GA6UBQ8qF7FwOcaWJXC9cPI+j0UTjk03jsySudQ7R5g+tXexg?=
 =?us-ascii?Q?MDkSE00Qw8x4kjkZmTIh2nYcyneV9HvNR34D0ExfSZ9BdjxUmXGhkBbLx65E?=
 =?us-ascii?Q?UmRNqIP6ESAGQvEnk6wslmoWNoS0Y1X1/AtVt2/hQGqdUKFJCV0jTOIgbTrn?=
 =?us-ascii?Q?BZBGNlxpnkZsrFzyzhGqg3adiuBg/FC0SUhKY4jbpOV+THHUSMCriBFNNycJ?=
 =?us-ascii?Q?tk/mfBWvPWWC03LSppDdVYmDx82qOWdEO2FtYs3ADXFPR39JIpZ4rP10uuZb?=
 =?us-ascii?Q?cYSLI2BX1/bec0VSGQq63qov+SbxM9gWpR6jZXagVGy8EqwwdUmKcrE8YdI2?=
 =?us-ascii?Q?Ba+zIs3S73ggt0hVBsmYjwD23H0HI/diFXlndFGYl8ns7pkNDUGvZvDmZyhx?=
 =?us-ascii?Q?IRWGAjtI581lL+xyvfencG0ADUB+hC7QgufHCNelmUY4Vtp+u/fnqYOxmQLg?=
 =?us-ascii?Q?BhBNDcGI7tGS/PqFjEZz7nJRSYQN9x5RjG026jD1iQ5c5012TPHR0h8PF/dp?=
 =?us-ascii?Q?GxvSjsYevoOgbQHJvnJ0BG+vA9cnWOX/6s5o3rVoEkfkxh4TLt+Eo+kGGs1a?=
 =?us-ascii?Q?gmzKhEIRGlSjwzlyXwhpCY0oEfV7znV5bxli+lTaEl68RS4lN4yJR+KjOhn+?=
 =?us-ascii?Q?RvkQ4GyzrDeP8y73MnfMKGZ4rlSd9wqV9T/wJvAs3AktcURzZHqqdG8U9v8C?=
 =?us-ascii?Q?guWhk4tMbDFzs5xVT+2tVtFz5WdyZPnwWLvDMSqlz6x3GcQh5pNtZjtrw4bR?=
 =?us-ascii?Q?0+8GnPC2b5z4ae5zlu+ESRfP0TlfPHb5s8TYmk55a6J9HORJR/tQWiaxGxgv?=
 =?us-ascii?Q?/znuQJz0p/30PGPvHeMUpK1p8wMmqlLww1/beysqU8f49o17iVxwLPewSqKC?=
 =?us-ascii?Q?P6FRWqnagAJf3ma2xq7ajLXAPoVFpvL5XiOz9XgK1Vxa60weICCjnk04UF3s?=
 =?us-ascii?Q?g/QEpvDQW9xvjdn2UMG3dZWHolZlKkiHDY58J7wk6m+lnH3mA6QB2WhlPVA4?=
 =?us-ascii?Q?k629vTn0s+xJbwu4ukKDW8ChZ+uiLXVzlWQ95Kr1Ro2Dn6ASGJoxLKhScUB9?=
 =?us-ascii?Q?G9U+KSV77UPxpDA9Evg1pDIJ9IpJA17MBJiHJiXsBaeezBy+PnREt155q9pO?=
 =?us-ascii?Q?LW7kO5g1MVdHiMrN6c0eQ4Dm80n654K9SpEVR6BFtShuny9WctoKN3du8tbn?=
 =?us-ascii?Q?kX2FHSR/zEezXqmsneDvTtcwuhS3ovnWv9dHl5/62gx+bYwIOSBR9amSqqMu?=
 =?us-ascii?Q?lVHS4Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5144.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8ef362d-3ff7-4a62-594f-08d99f01f76a
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2021 19:41:44.3913 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KhhKj3VIvVibRGZ24laEQfwWm0UAtkLeFGD9BLRCnv++jf5KyIWNTeRQqL4C95TzgCXp8Kw+I9uJqvgjnjtG/yViSNbHvgbaHC5W9Vz6s5I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4838
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 08/15] iavf: restore MSI
 state on reset
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
> Nguyen, Anthony L
> Sent: Friday, June 4, 2021 9:53 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next 08/15] iavf: restore MSI state on reset
> 
> From: Mitch Williams <mitch.a.williams@intel.com>
> 
> If the PF experiences an FLR, the VF's MSI and MSI-X configuration will be
> conveniently and silently removed in the process. When this happens, reset
> recovery will appear to complete normally but no traffic will pass. The netdev
> watchdog will helpfully notify everyone of this issue.
> 
> To prevent such public embarrassment, restore MSI configuration at every reset.
> For normal resets, this will do no harm, but for VF resets resulting from a PF FLR,
> this will keep the VF working.
> 
> Signed-off-by: Mitch Williams <mitch.a.williams@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 1 +
>  1 file changed, 1 insertion(+)
> 

Tested-by: George Kuruvinakunnel <george.kuruvinakunnel@intel.com>  
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
