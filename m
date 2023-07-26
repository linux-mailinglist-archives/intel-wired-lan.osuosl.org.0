Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC6A762DFB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jul 2023 09:39:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8F65D41730;
	Wed, 26 Jul 2023 07:39:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8F65D41730
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690357158;
	bh=kGJE1jWOy5DbeLLmiDD4sc6/mhhRwK2Tl6eRWJEuZTc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bCP6YyUKcmxFbIDwWw/FrSYk5YUEkL9sHw5XFPGQbmgmxA3YsKOS/gPYKmOLtS6od
	 a1AYYPLISehS1HllNAxLZ9yjSESBSuO7yHifEDme9YvJN48e48GtBL3nd5ee+THWy4
	 sZ7nIwKsQLi5Msk+uqUuQuMj6+zfvkqvVNWTHy8fr86lIUqkrqiJTOmCseInsNtJec
	 BiW3eBnVkc00/0169duYu4KMe08mHiUNjXDL6QlaJOyvJe0EaUdBRZxB51Dfyuz2yl
	 HmE12XPm5vtgVuPoxPKqzD48XDcKd9sgmpmHe3u27jxWIcQH4qo3fJs6VW4wQAUKSi
	 vNvJwMcm2baGg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p-PPYWNxt4Jy; Wed, 26 Jul 2023 07:39:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6A2B440017;
	Wed, 26 Jul 2023 07:39:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6A2B440017
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AC6D61BF592
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 07:39:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8D32360AC6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 07:39:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D32360AC6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uK11UPKFI_gE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jul 2023 07:39:10 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 26 Jul 2023 07:39:10 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BAA1F60807
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BAA1F60807
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 07:39:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="454319171"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="454319171"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 00:32:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="720355603"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="720355603"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 26 Jul 2023 00:32:02 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 26 Jul 2023 00:32:01 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 26 Jul 2023 00:32:01 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 26 Jul 2023 00:32:01 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 26 Jul 2023 00:32:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X9r6iNLAV2T6RxPkx7L6OCfi76yj2l5HB8CrrgynTksXU/TOk0H/+C8r1ICnTxVA+qiF4dAm4wpwdbJGUr9EVQr5FU1KZc+LmHO0LN3kvcrbJaki5W1mve0DnVp1gAi6cv+QaxHQMF5CijFDnr9QyOSMlRxVVlY/c1a8x7Pk1pUy0T+GxaPEupdUz9OniZsjLv9dGey3TGdVhW7dD4sxhrROqhklVHt+2CRTKso16anc3oglZvoYIeg7L1YbS0U7sFXBnXqVDJJYFsP0l9XSzBtX+pk7MoIYIEYvrLJoXmBsBmnKb1f5Cv85WtWEL1pYrVlINOUr+X588imjie7GFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OGVi6OyC38YoXLx87wmdK0fqA9rH4gdZkPpgsZ/KmwI=;
 b=AZnYVD9M2QP3W3m/U/Xh0UBlkvlAGGmcaByTy1vqr637zuosE0lqtzA8ZjS3rIpFD9fsL1xOeCl3RNFntNuVgLnzzgtLIkP2r8qO0DkKWudcfCDcuTAAtDK33kbId60xHNVjkkYIV4irOODFaRLoYhhQ0wax6InV+PmUgHotkOtBlmfykt3HTNuWhNYhENWg5Zdo7JGQ9m1WQZo5XjTZYYLHZzIPiiCQVZ7BkXul7rrJJZepTU9kE88GCVjkRYewjU6e1K9tdFCYFES9jvfVUpN/qPUmFEauBQ0xE5KyGZiZuJK15ji70QbKe6ZrkzKK2Rs6cBX6+UHGQq3GCmHizg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by PH7PR11MB6606.namprd11.prod.outlook.com (2603:10b6:510:1b1::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.32; Wed, 26 Jul
 2023 07:31:59 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::f04:5042:e271:9eec]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::f04:5042:e271:9eec%7]) with mapi id 15.20.6609.032; Wed, 26 Jul 2023
 07:31:59 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Sokolowski, Jan" <jan.sokolowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 1/2] ice: Add get C827 PHY
 index function
Thread-Index: AQHZtYyOeZoNhFI9MkOARFTfLlUpAq/Luung
Date: Wed, 26 Jul 2023 07:31:58 +0000
Message-ID: <BL0PR11MB3122BA642A9277587137F0B0BD00A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230713132124.1514647-1-jan.sokolowski@intel.com>
In-Reply-To: <20230713132124.1514647-1-jan.sokolowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|PH7PR11MB6606:EE_
x-ms-office365-filtering-correlation-id: 58c002ad-1f07-430d-686c-08db8daa6549
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RwCtT8n8s1b+V2fCqgcTGPx9UZWjXfybKXkt2Se2DRsM0HUfZr0tzadKTUYSJMFy92+cWW2MBYkQe0CO2jtxgzfOaxwgRKSo1Vk8Rl7ohSr+pWkJtjiTrM1qwO2IIg/T8mfSpJMJ2Ne46WNooXZs8f45ytjoT+hZe/1Oyy3/Rboe3qbt3ddldhFvbDZcRv/9jZinQcyf0Oi/PPtPRV136wokcJmSvh7/73YoYH010ZMb8iJ+qSDdmY2jZJgdWvSpCqiPHoo1bI6NiE5G16GG8wtpiNLQVTsHoU+DKGdiOX4BRBcG5CKYn55E1dGJ6UvlnaYN9ZjM/sQI2osa45DWMKkdtunIa/oBsDRxUadoNSZy11QHWgnkpOrqdnL7Fsu5I81GbOoRN2Kcg37yNj3sqi9CY+5W3CuIGuJ4JtOX64Qv4SFCDja31TNpaQX1ieGmAPqPymfVHlvjnwa7LABhKuClncly3j11KsBP7iu+x7czTtfBvM7K3IbHw1e00dYk6mqbO/GZKXEHbPky1h51Yk9NS8Fpe/f5SNiLwkwgwWyrMhEWWhOB4AFAB6L4HhC96BBoF8iFXusO/H+AFBF/UdmC38PjC1XA4oHLcwmggqRR/GMTQRGwjmB4KVEbA8se
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(366004)(39860400002)(136003)(346002)(451199021)(41300700001)(316002)(4326008)(66446008)(64756008)(38070700005)(186003)(55016003)(82960400001)(66476007)(76116006)(66946007)(66556008)(53546011)(6506007)(71200400001)(2906002)(26005)(107886003)(86362001)(9686003)(83380400001)(38100700002)(7696005)(122000001)(33656002)(478600001)(8676002)(110136005)(8936002)(52536014)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lcjL0lFFkFd0ZxzvARYD/z2QSAZ2PmlLx1PHEm/Vlw48SismkUpci8d2wKyN?=
 =?us-ascii?Q?qMlrcsy30Ycq8TclN/N+MsdPmTbXPCHvPkzNUQOxencHgkHfzEO1hVxb8huh?=
 =?us-ascii?Q?RPJT6XPZihqQltPinVTzmv9W+e07cC+u/c4t/Ye4n7WQsaICZFIYxX0jdkI9?=
 =?us-ascii?Q?ZaIxl5GPDh1HMoTbRvH27ZhzH6rWxb6+A+MhaeyWPruz8l3uTWL3goVFuQrK?=
 =?us-ascii?Q?L6v+LpySHchj6Ohw61lqKlaJdU8LydPd/pSmd9H8zaq7klvzr8fDkR5aE4xw?=
 =?us-ascii?Q?mzFF0B3LnnQu2vy5ncPxmcQ82vac9OXJBlGe2pVtSVDw5+8C0dUOOFEnImew?=
 =?us-ascii?Q?NIltpkd9aadDIYh+f7JZkL4tD9Wkm4NTVeJD2K1OUOca9Bcif7DtSB9fvd4y?=
 =?us-ascii?Q?3JG8vSRK+H9MOT7TtFOleYdg2C2+bcor4F7bURTl8ncxWjlJI80i/h0+QBOB?=
 =?us-ascii?Q?PhvF5qyHrdw/fwMg/zaGjkKne8tjIOHHdP4M1Uq/zLXxLD1MkdWv9mMfThFv?=
 =?us-ascii?Q?Ry2h7TvEfyy6mL3tonxSL62W1MlBu7EW7M6E5dNXApS78rMw28zDC+xV52gh?=
 =?us-ascii?Q?EWSZKGNLFTi6oJYUllsS413faVUHHv4p6i3xgursgGiVL/WgTkmXpyvwvCmo?=
 =?us-ascii?Q?PSAtDtDG5xuSi2W34L0khao8CVD51ttvEPAVR6xoBzIq9yTCHkKAggd0sjUW?=
 =?us-ascii?Q?HS9a6fKWatvkQz1BYpXUH93sNaeurRUEPCEeBjPW6GEEJgO2UN9tDTD3TApN?=
 =?us-ascii?Q?Utw5UMRXTGiR4KGsn33eMQpIo+FBmn/0w/YGRzNxlqlhEDdOf9oD75B3AUW8?=
 =?us-ascii?Q?NxhWKAE8Mc5oOuS1+Agio8FouZXuwnaocznMtYCzPOwrQBN9IOq/GhdCMDGZ?=
 =?us-ascii?Q?ngiC8mDcZ3pyqHlMcUypLxTWnCWpAiG3T1op72NZIVS+dm2iXJy20us5rM71?=
 =?us-ascii?Q?JD74pmPQyprbkn4cfBrEzTxdQdsfGlLsKVTotDu6Yaw5GymmA1ovyXg8QVkV?=
 =?us-ascii?Q?KkRV7WboQ/TJFQoZWoq5EhVMPxhUTBb74CSfvzy0/3fGTBN818sUPEB2iz7r?=
 =?us-ascii?Q?aE/eaImY9+tWCMAMojomO/3tQ2mWRvqxROFNsDueWCyMHynL29AXb+Ls3cpe?=
 =?us-ascii?Q?kB1JJiL4V+QCLNlW900xH3bZ43TZCgbO4xMpHOf7w2I5hKUoe2/5xyTjiH0D?=
 =?us-ascii?Q?0AdeyEJfNt9rT55m49xntiy/C6izUxI6guP42gxm75GW5LANDtPv2SUsS/3v?=
 =?us-ascii?Q?DRH3GhJq86memOesZfIeBRwQLQsWiV+CcL9vpqU2EE56+lDV4Rg6SznVuF8h?=
 =?us-ascii?Q?7jpoPBS9bhfkLM1e8+Vq+JprUVkryLCdfkfhZsdEMXTGH4gdJiJVKNY7VEQu?=
 =?us-ascii?Q?A1L9zjHAD4aLbtCDP4NTgj9WlYMjnt+5sN2sgxMyjtWiecjSISQEnuywuQVk?=
 =?us-ascii?Q?ZorkOGMB5dHsign7S6wFsY71afNnFp2Bj6KyyX1Fd9OS8YiY355T6Vmw+qg2?=
 =?us-ascii?Q?7NY6QLvwUN9DV3PKnkYmA7P4ojGQyjqyq6G7fuPvpNLXge8ebeKgXV6hh/lS?=
 =?us-ascii?Q?nzgbYiLn0vTjByEEY5wS79fwlL6AEgaShp7Y5xwV13GzERaWnFX34z2Wr1GN?=
 =?us-ascii?Q?2w=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58c002ad-1f07-430d-686c-08db8daa6549
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2023 07:31:58.5747 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tZ39GoYFLZIHmsr7kwEC1i4clxWFSkaDV8ZEN4X7sd6nVNOi7FTCGYmn4dQ+C9ytr70phunvNIuBuvofLiHb3S6Nvr3Lbr+7KQQfyeqq/mFfbN3O1PbPRRxPNRXDW9qt
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6606
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690357150; x=1721893150;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ofoNavZWiAW4o/87vn7wIZEEqbghElPTPjf5wT5DJLQ=;
 b=gVOV5xnMDL8VJMxatrVN4Le26zCjgqb0ldZK8FnnGyRRDTslV6cj7EwM
 9iOITcPgK6FILHHi1mLMJIn7cDte8tUpsxAaVJ98MEtQ+zKr2g5f5uCuV
 SWqzyiQjPOBsok08+UfmRxKjjpoaT43zuUAztVjBZ1Hu3nMdKIdSqwex1
 H8TC3Aq1Atbuqv5bPCB2TFoj8ve1alRbdKrvXsOEksjm01vD3tkv9fQB9
 Bcgu7fUil/uTF22EbYplhkTO2EpjfZFdI4ZpgdfVA4ruB77OXocXH+R2X
 Ol82vlph6U76Bk1hwMVts14npqNGDRgQWm7y/IQPfJBKCxnyAeFEniNhh
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gVOV5xnM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/2] ice: Add get C827 PHY
 index function
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jan Sokolowski
> Sent: Thursday, July 13, 2023 6:51 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kolacinski, Karol <karol.kolacinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/2] ice: Add get C827 PHY index function
>
> From: Karol Kolacinski <karol.kolacinski@intel.com>
>
> Add a function to find the C827 PHY node handle and return C827 PHY index for the E810 products.
>
> In order to bring this function to full functionality, some helpers for this were written by Michal Michalik.
>
> Co-developed-by: Michal Michalik <michal.michalik@intel.com>
> Signed-off-by: Michal Michalik <michal.michalik@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> ---
> v2: Fixed warnings when building under certain configurations
> ---
> .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  1 +
>  drivers/net/ethernet/intel/ice/ice_common.c   | 62 +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_common.h   |  5 ++
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  3 +
>  4 files changed, 71 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
