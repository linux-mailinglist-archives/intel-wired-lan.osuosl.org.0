Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D2EB16365E0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Nov 2022 17:33:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 65E06419A4;
	Wed, 23 Nov 2022 16:33:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 65E06419A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669221191;
	bh=OYcR0IH3kknwslRRtt+NHK/KTHeBr14SFKSjLS6TR8Q=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oEkmzRrXITlJXRCND9Vp3/iPRveHqXJln7VnBbcyA1kb0vvBxoAuPvyocJnqlPKT1
	 4ByE/hwzom56XXg7LadTa3zsBTkFSVBFEVAXP825uIANpJ4btXkFNwm3ZCXmgBcv2+
	 zxokRZ+iOi2BX/IWaaJEh717mGGwctDUC7hFM4E6x5KuZ3FmJl8uK8hbgTstf/vxM6
	 8AGz8PlHCRy4gPANTseHoQY7iqlmeyqU/vmIyBjHbA+l8+qnXkO+rrfYGdtrL85w9F
	 y/NPTgkkq0yR0x1QMSHwHBp6wi6MjmSIkiMlCstUPQ5NjovUP2c0YN7KMrP2TOHZvE
	 TXUpYjm9dv4Nw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7JV7SALyPWzx; Wed, 23 Nov 2022 16:33:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1355241960;
	Wed, 23 Nov 2022 16:33:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1355241960
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9C6C01BF5AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Nov 2022 16:33:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 75D564055D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Nov 2022 16:33:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 75D564055D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xm_EDgK6WLc8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Nov 2022 16:33:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8EA2B4032E
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8EA2B4032E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Nov 2022 16:33:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="301667110"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="301667110"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 08:33:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="635968928"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="635968928"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 23 Nov 2022 08:33:02 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 23 Nov 2022 08:33:02 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 23 Nov 2022 08:33:02 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 23 Nov 2022 08:33:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z8yQcVHm0cRz8iEZY0AH4El06RgNzs+Bt+XtQKwmXS+DLfZA1VjyqJil1AIVsJRU65Z7wYBB3CnT373uxnMFvfgHDZkUEjFPF5U01llnat+ax5rECjjk0zghoGG0hixQ6QVRdL5LTZvyTWAZIAJfCE54f6DDFglHNKkIlnx/hKfVZLNJtp7MfvbEJpW3GnH9A1UUHy7mAU6XOK5lLBTIIYCwZGDuOdYNqiKqzV8YN1UmNnTwcSWPNY0vbjFZGjK/3WyPChr49wLQxLeZmsGbxJFbtCmbhQiCTPYDD4RMaDr7tKi04G5B/2zD7Rhl6Kg4Kk0gV//qGRzQ99eP6V05oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z6GxxlkBKrnqnGRCxahMZKOILxAHi3A4anNGFuDellc=;
 b=HvwA/Siknnf+cK25adpGNDr3N5ZtNyhyV9oyOwQkAzZjDP8VBS+QGgTukVGFhusuKJEK1hej5ctNR7+tVkH8kLLscfZz/f9KVfKVSdCPChbnS//RRZCHWK06ngOB+AJZs4hUubWqdZJ823tWreOOUZglEWFLcc9qjG2SIx1X1tZfPlJPC2crcLT+4qjkFxZYKh+p+pNu3ZUgoQ6A7Orc4+SsKdohthF1bhsDQ9U++JH39xbv/aMw1ibIQBGi/w+PC1giA+cAl4+VTKncrj3TBn936gIQOVa0jEcWkpXtR3R5ScaXX0cU8Y/PbQquGS+RDcsYSoI3rMLHHSOjBIvX9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by PH0PR11MB5879.namprd11.prod.outlook.com (2603:10b6:510:142::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Wed, 23 Nov
 2022 16:33:00 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%5]) with mapi id 15.20.5857.018; Wed, 23 Nov 2022
 16:33:00 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Gerasymenko, Anatolii" <anatolii.gerasymenko@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] ice: Create a separate kthread
 to handle ptp extts work
Thread-Index: AQHY7pIaqvXlDQlPv0icZxcFGLvv1K5M1TXA
Date: Wed, 23 Nov 2022 16:33:00 +0000
Message-ID: <BYAPR11MB3367471ECCDB800BB663F6DBFC0C9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221102080610.38265-1-anatolii.gerasymenko@intel.com>
In-Reply-To: <20221102080610.38265-1-anatolii.gerasymenko@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|PH0PR11MB5879:EE_
x-ms-office365-filtering-correlation-id: c142127c-8a96-4869-fc1b-08dacd7062b9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GPXzyvYgpo1sMlWw+BqFgtM80LMxQ6fZDFiME5/4rBAElTfqiuzOYxuBi7QvnIRsrxTOTSJLvOvUd9Qe1CeKGIfdliU3R8096bNEn5whRyz2q8wSBmPHNgKv6zWpIG0qlCqotlJD9VRmqrREfT1bJLEnB7DfH56AAuD+cfIUE/9wmrupWQKnyY3VNouA+OF0kaHk0CUGdWy0ozR1/soEwUgDrlVyoezhAGyGvapDz3cHWxGtrxvOvsIfWmQ/tC7TygCMjqhSKqPAdAE0esTFW5JLKUHuM18desZ2uRWRZb/qJ1J+NVp8R5qTpDeTYK43wIcGfDpadjyuS1e9MQOSOtFme2r7WjkrQ7rjb0mF0vCIOtb1y0qH86H1ybRmVrPjO9lfddcutNoUT92DIY4DiA74QgLP8s1so+vD8y4r30h742fb5XF5rw+0dyCBJX30WIxRcavkCxWMfpqiK3W9MoJRh7v2lvidBgVQyn/HuV9XM3WVsBsOhBfcKTzxR74DlvJTDLZytnWajAMuTO97dOVEc7ze/rU0c+KNjctHpRywyziZ5XX91esn838J97GIW6CMhAe2owDbTCF5x92PVnbEZwkiDYrbBHBEDA73F1pZFCzONkdlmFudvQG8xUejD6fCi1m3YIBq7o2l/15iP8nkUfk1p+Km7l90ezA5naMsO3Ulb+lvEAsgRwH4jIVDZtZBI5v97mxn4ob5uscWYA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(366004)(39860400002)(396003)(136003)(451199015)(8936002)(52536014)(76116006)(66556008)(66946007)(26005)(9686003)(66476007)(38070700005)(66446008)(8676002)(4326008)(64756008)(186003)(316002)(41300700001)(55016003)(33656002)(122000001)(83380400001)(2906002)(5660300002)(38100700002)(86362001)(82960400001)(71200400001)(478600001)(107886003)(6506007)(7696005)(53546011)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cdTWE8sEVKUImcFN9pN7+q4sXSYUgrQKjTMa3ZYd7annVcuyrfSrVWk6i6O+?=
 =?us-ascii?Q?3bTNXUlrdVc/82vGRRsCDPCkhNZCgEeumgyqBLGU7yEKHgLkbo7NBKfymR/A?=
 =?us-ascii?Q?rAXEV4Nh+nlUSJpoeCwOxQWrik56tp0k21bsNtp8HHbCHgMsC6z8o8MHJGxC?=
 =?us-ascii?Q?KgvTfoK1X5rQI4YGfFT5QRmg/EdlRmojFIe1CRI8icZZdtBCydi+9DiSWAmc?=
 =?us-ascii?Q?Sknn72e4QpkpXmZEpU3PybHCXiLTjZq0Q22lYQO1v7uRM9GEdFMsoLEHUnoJ?=
 =?us-ascii?Q?7n2n75arZfMuh05NwNOmBWPs4KbeO5H5ebHB6+Py65jDTXCXysyumgaV19qd?=
 =?us-ascii?Q?vr0iu3LSD1OQJXzv3xbVzumjzoYLRkogCOV9IpaNhpg4FTzvX8CWflEVfksp?=
 =?us-ascii?Q?UTE1zfWUtT90hZ0dZHOoLojVuGOZ+jLMcfL1Ny9F2NGMa7lHRUEt33BL8Xjn?=
 =?us-ascii?Q?oRMvC/k7FUBWbzEHdDew/hKns2VAfWmtZGVTGes4hhqHNizpDMdHY9dOor/c?=
 =?us-ascii?Q?aCObFscob5XzV8bacHAOqOblBFz4RuZDxvYF99pLqoYPO4p0HjoWN1RMzbj+?=
 =?us-ascii?Q?GXgbQwTr0DPGS753V/uS7T08tqMfgrTaqQyFycmbfhVXtKTdgM0uw6IdXWyl?=
 =?us-ascii?Q?THUa+XfUwglxiyZzvyV5VXZ0zyVZbLFOjA/ygTSmhi0/+PO0waCbdx34jpCG?=
 =?us-ascii?Q?YVmmXffykqmjV3x1Rmvtt3csOn1lk/HbHLBzAFkUBk6ccPsfAQyTHoXPmso4?=
 =?us-ascii?Q?sRDsQMKGN8e60oikQWCF+9xBeT/atdN/ubhqxNb+z0bu+3wkufNSFrsAj6k3?=
 =?us-ascii?Q?WDlIN+UbCwqyyRSTJHOQqG0oSEMuo2U+7mi1o7VbmKUZ+gHCaWVF4Muk+KIK?=
 =?us-ascii?Q?0B8gpu7oESOQkFdwu+BhVNFbHsItYGwnsibOjk9Yii2/GXj/CgWOxeC/6FUr?=
 =?us-ascii?Q?juYXdy325i42bA/I0vwR/Pst6wZlKcPsTXK0LCThsqxA2STg6wPabpidNhM+?=
 =?us-ascii?Q?cxyl5ah+FOTKDSo1UrB+rvy47knxob6LOQE6yDZrrro5Xb5FjuUcIhVyBdPc?=
 =?us-ascii?Q?5TVBOie3I5aA6ZsXGGZnZHghwb6LZ+CY8iIFBvxEzU9cTVTAlRdZ5+aMTuEM?=
 =?us-ascii?Q?2wIJx/PSGrZ4mhzfMioyOtwfHfBEYbZq6pHNvIyXPPAkutV2l4mMrT40K/ew?=
 =?us-ascii?Q?fHIBg94px4oHyrGH7VMd5EBcQlDo+jiIVtptgyzqxSaEcy5sFh0qymVOq6Ay?=
 =?us-ascii?Q?hMlagynVGNk207rbeR6hpuyw9xeJVnqh8ZizYzskuQKTVLwSiEMe7croDEJx?=
 =?us-ascii?Q?0312h3l39UP1LMkoIk53285sobZyXs4SdP+9A6DYKXRZfDEmk9Zj7+miURFT?=
 =?us-ascii?Q?Nw2KADPHI1NDuq0Xa8LX5IM+s5fqShNdaHVUr3kp+k37Ngwy/iZgQklL2HMQ?=
 =?us-ascii?Q?0Y+GDOyYuhGcZLO67ZrV8Zu4T4w8Xv0y9LZDG+F/JPFZpnHdlDdfrbFvvlLR?=
 =?us-ascii?Q?Osriel0mS1QFwa+OAQt4sUIQePBrKx8G5nquKXN72VfK5TPFiHlb2OnmliVD?=
 =?us-ascii?Q?aP8rxZS3HW0gCXZjWAiKnjd6W2b01nVCy4H8Iagq?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c142127c-8a96-4869-fc1b-08dacd7062b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2022 16:33:00.2264 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RsqDn1s5RXqBrwHIU1Hf03zpS3dnpT/tDgPgDU7LNDjQ1hltu51J4RwZ4nnOgaP5PJX8uSBqgYtM7dkxfjK0dw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5879
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669221183; x=1700757183;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ikHwlOVt9bHyS79X75qAoFmWQcNVAf9IjkZpb51P0qY=;
 b=S5jGqHFjsj58Y4Xgph6g/JRFnOQVidrjnR0NKWYA8pA+lexqDRAoAfcL
 t7dmJFD2gkM8jK9RQBDZmSqxdtOYXOfTEqU+/dDgqFVZUeI8Jb0oAQVOE
 vz9msg9nSx3//AkRFDMKxkgip8gDYZDr9tHU/cGOzvRHMMHKiDNx5eLsM
 miClLkZSSIONNXby0YAd8QccAvCVxq7kiJGeIT5/ikT0wfCZSuQRHiEex
 dGvxqvnp2bD/NXAoZF88f1Rt9TCI3hSB63+oxgLFOGqleE+PhTpOriXiO
 ntEd9/m1MgNOkypArcQIHsiyw883auvFF+CvXXAE4jrK92gn9AsRR3d1s
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=S5jGqHFj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Create a separate kthread
 to handle ptp extts work
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
Cc: "Gerasymenko, Anatolii" <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Anatolii Gerasymenko
> Sent: Wednesday, November 2, 2022 1:36 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Gerasymenko, Anatolii <anatolii.gerasymenko@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2] ice: Create a separate kthread to
> handle ptp extts work
> 
> ice_ptp_extts_work() and ice_ptp_periodic_work() are both scheduled on
> the same kthread_worker pf.ptp.kworker. But, ice_ptp_periodic_work()
> sends messages to AQ and waits for responses. This causes
> ice_ptp_extts_work() to be blocked while waiting to be scheduled. This
> causes problems with the reading of the incoming signal timestamps, which
> disrupts a 100 Hz signal.
> 
> Create an additional kthread_worker pf.ptp.kworker_extts to service only
> ice_ptp_extts_work() as soon as possible.
> 
> Fixes: 77a781155a65 ("ice: enable receive hardware timestamping")
> Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> ---
> v2: Correct acronym for Admin Queue: ADQ --> AQ.
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c |  5 ++++-
> drivers/net/ethernet/intel/ice/ice_ptp.c  | 15 ++++++++++++++-
> drivers/net/ethernet/intel/ice/ice_ptp.h  |  2 ++
>  3 files changed, 20 insertions(+), 2 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
