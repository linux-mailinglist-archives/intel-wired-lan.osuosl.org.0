Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6997E60CF
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Nov 2023 00:01:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 09620402F4;
	Wed,  8 Nov 2023 23:01:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 09620402F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699484475;
	bh=RsYsyt81glx7toPyCg0L0ARmYnflJSJfvWOIllEuano=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bBmh4LbYo4vvG2y+7YagdP67sSliGa6xGAXHulDmPJP2RClwLQlrD0P2LrkBhCgKW
	 gAB6QRInCH3YOjMW2R+SjiI7Kz13orgw4XLMzrECjOysBuf907eN27fAOXDhF4w4Nj
	 +FDRXlSBasO6V6VdJ2cX+QXivvI3x8gdlLWXdh+Klb5jLlnGaxK9AnlQDDisEhXxdN
	 5Geszo0fCEdbgKXEHqyFqHXu+JV2JyQBUqQlElJ3K+zoIhmt1rv6czZrOo5hLY8BaN
	 /Bw5+EQ6jGW5ekWBZk/GEUS84/YBP7jObz0sWg0gFAxdlRTRateKYneDqPxaCQzlj3
	 NbCPgbCNivQ8w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id th0CdStm8VAz; Wed,  8 Nov 2023 23:01:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7E06F40114;
	Wed,  8 Nov 2023 23:01:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7E06F40114
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 167671BF40B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Nov 2023 23:01:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EE6CE81CDB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Nov 2023 23:01:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EE6CE81CDB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XgJxAiRHMayb for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Nov 2023 23:01:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2C56081C11
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Nov 2023 23:01:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2C56081C11
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="369210704"
X-IronPort-AV: E=Sophos;i="6.03,287,1694761200"; d="scan'208";a="369210704"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 15:01:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="713093990"
X-IronPort-AV: E=Sophos;i="6.03,287,1694761200"; d="scan'208";a="713093990"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Nov 2023 15:01:03 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 8 Nov 2023 15:01:03 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 8 Nov 2023 15:01:03 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 8 Nov 2023 15:01:03 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 8 Nov 2023 15:00:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jQhbKlxQXbUx2rn1GQrZNKkPs4xZwqQgLNsDaf+IK3QxnNWyXrpZmy0+chUCPY/i//qLnYfFQHoBBMel4m68iy7FypmfoBL6i8BT+fyoFDufFhz5/AQZZLO2q79M4B/T8IE3EZQeB/oWHPpjibGZTZ6vhkbE8CDAccbhC/64XoCM8iO7sjwIAxjWZ/b6u0BbNFDB8w7lq9dIVYOJkvgw7iMmGD9jMz64gWIJn077iIXxIv45ECS0eE3DRntAy3l1bMeXwezK5Z6JmiLUy3Sp5msEQ1WjDYCJUe25TmXSRwH6OhwMWsCQAqMOwMOxRsWH0kgMQA+JFlgA9tWkNqBr8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MCuRmYQ6XwgNPR8jUoRCdAP6PDIghJZ+jB3bVMx8LuU=;
 b=RBF8sO3fM9gauDb9l7NDEzjyLaY5nvbCCex8vcmKcWNZgEC/POclY3PbSEJLss6krZgpsrifquAfNAoizaZ0lo4bPc8P33coTadvkDhhQ8hCJkKF7BlZaa+UAGeq5qgGswOmZV0WeepcRMn7GYw2+7AfQfZ72IM2D1xE+PjFwmDJpRj31Vl5J2omt4SFrGJkdXl14ZwKCZATmMbrky7hvTBfKpRWK4rCqZoOe7ybo7X6QExkvqle+4TqWuplPnHoeMeUFptIKrnowXLO5IMs0tyrYsm9Zx2BdCFGtZQzRoaIY3zGLEzl3wdjUHv623KDKDl3U9ayQ8YaB3WrMX8Row==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SA2PR11MB4889.namprd11.prod.outlook.com (2603:10b6:806:110::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.28; Wed, 8 Nov
 2023 23:00:57 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::7911:8ae6:fc73:1097]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::7911:8ae6:fc73:1097%6]) with mapi id 15.20.6954.028; Wed, 8 Nov 2023
 23:00:57 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [linux-firmware 3/3] ice: update ice DDP
 wireless_edge package to 1.3.13.0
Thread-Index: AQHaCAw2lpmejMqfR0+83/yk1VY/F7BxHdkQ
Date: Wed, 8 Nov 2023 23:00:57 +0000
Message-ID: <BL0PR11MB312212940F7FD6B9B1E0C0E4BDA8A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231026125814.35826-1-przemyslaw.kitszel@intel.com>
 <20231026125814.35826-3-przemyslaw.kitszel@intel.com>
In-Reply-To: <20231026125814.35826-3-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SA2PR11MB4889:EE_
x-ms-office365-filtering-correlation-id: 0863bd69-1ce9-4379-a530-08dbe0ae9173
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nunKh0pGHi8c7IH2aRQwcH08mmFS+FfXPiPDqg/a4U0/PqstIsIVKiCjtBWQCoYX1FugJ4NTonClDO59j5IQNvg8w+jPc8rHBpC1up3sNxJ91D1Swxbzq2VKf/env8P/h0YuJmP1eKzxTg7BUehmk74Vcc5JF3SbQGQdZB41E+oZjPjx+gJcfxaU0YWNQhBCf5J6+iFjhCZ5c8DT3kKFixoB0iuHXP1UEutWtJTm3AyZ3Ohi1pct/Em5YiBSxPDidiHhPGNh0LCDQHNyob7VaiGU4DgKkrK+CMChVCvKMRUGMOpRF98VLmqwGe5aHC+9tG2B2D53DNXld7rfOKz/VJvOhSpumXf1La57uaCreSjCLES5iqt9A3oc29V8PbL1OL9FTsKt/1oLzZw4N/8jtv1ZFc1O6oj3uao8Zxu9f/djS0sasBiQ0OaOpLIRDGkdqfmQBqhWX48zuZpDkmSqbj18/OSozaIvrc0NBzVbC1LoIWxXwgZX0RP32eKTgw6mf4CcEfLBsvfe6q9l/PpKxRVlKy+bUFgeSzlOLT+4P+AcXZewyeDixtp2ksyDFIbiWuF9QjEWZ4sS63UURmuMZfWC7UXk5B1C9zWbY56UWAzCFmPLd0Ab+o6zmZ8yzz4y
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(136003)(366004)(346002)(39860400002)(230922051799003)(64100799003)(451199024)(1800799009)(186009)(55016003)(83380400001)(38100700002)(82960400001)(4326008)(33656002)(8936002)(52536014)(8676002)(15650500001)(86362001)(41300700001)(2906002)(38070700009)(6506007)(7696005)(66476007)(71200400001)(110136005)(478600001)(122000001)(53546011)(316002)(5660300002)(64756008)(66946007)(66446008)(76116006)(107886003)(54906003)(9686003)(26005)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DjMDOoZouf7iq1cxf7kUWcifJTf2Gq6h9mu0v6PSNs0HoQ+G4Y/zsut+DftU?=
 =?us-ascii?Q?zNkHVPxjlGv3lfJmuBw+MuSie3A68RC0sv52u2nGgw2yCWgbEeBLdZTFnGlu?=
 =?us-ascii?Q?6i9dWlNaTAe1FAAh84YQxf0uwYkgfa3Eh+Pf0uX6DvYLFBZPbFxkWFHd80dd?=
 =?us-ascii?Q?le8p1rBXI4AG+svRWg0CYvBrjq4UVKnnQe0qSL5+wWZPEvLehzZsG9WjCpcv?=
 =?us-ascii?Q?PWPc1Nk09+cxuD0kKm0uZ6zJMEylqHubkBUuz0HtTLENPh6ka778hP/8Fa+I?=
 =?us-ascii?Q?IkEYxL97VyF5bOEUn4HWo6TpyHfevVqZsUtjJpISUK+JnkI6clR8ZgAyCb6W?=
 =?us-ascii?Q?oLS9afJo7RJimaQJdU5aeBXAH210jdeFDosWY3GL18Fr0jN8VrCMRg9EoxIW?=
 =?us-ascii?Q?t+2iyupLjbIq4v18NCntvmXdqPh0w3MF/s9bn6hYc8bTgOk/ItYCpAVWVb4D?=
 =?us-ascii?Q?G+gUI+i/QDgY3BHK0FVyOZZfA5nbKt+oY9BqyKK7yru9hXu5hSsUfr3g65x7?=
 =?us-ascii?Q?HZgTuRwv4AV2WqakM8XEo5Cl6PR0O/KdJIZmgbK7sYpAJdOslXhcnucv5cJb?=
 =?us-ascii?Q?AyU9XLdeeaehWR7Wmshg38YCPwVBIIf8nF+F5/E7AGx0XslpMI8WBDWdNDhP?=
 =?us-ascii?Q?3bvcBvAZkUAMOenoeyYG2s+MoA7AWPnS7TGcFzwa+tsHtQU2Ojq9IKFQIyvZ?=
 =?us-ascii?Q?LqMFI+cwwKfda0+ILKj+qBX79R//OyekGVycp6p7j58/mufq+9FthlMZlH+i?=
 =?us-ascii?Q?TOm1dP6lWWq/4/Z7c9XVjLRmQNIxrehMvUj75pEge+oTf8S1XsR0yWdSmUpw?=
 =?us-ascii?Q?JxasI3PtY/hdipwg8UNbwlg8dbvReooESTT5WV4CwPtBKjsJnQbnLqzSht+5?=
 =?us-ascii?Q?gU0NKTDEvpnt7OKXBhMiWY4riv8QMeac58nPGY2lg+P2oTAxMl9fyJFq0Wgh?=
 =?us-ascii?Q?QgTlbWNm/J/zTQRTVy+YaiSDVutTKl5EueC/9xn8VR2WkLYf0kt9vHQT3yfT?=
 =?us-ascii?Q?pIzMbsZTwRdjs5qGqO+2+PO+xytxcv0Ma21n/d9Wfb/+49S4P0YF7RDKIVdo?=
 =?us-ascii?Q?1+UMSQIBBIbWRNDAwQL19LcPXdmKG0EIwkPPyOpqzyErw2AvPDWRYB2cirtZ?=
 =?us-ascii?Q?imYsqqLy9lxAU58X/mUT8cKwzIx6Y/ueMAIuX4Vo8MqLb+pajf1ynnONURf6?=
 =?us-ascii?Q?OktOGIdscjizh+CtHUYgXzSXs1EdUYXa7cDLqaQoI4Z0gyeu8JY06JC8d4fy?=
 =?us-ascii?Q?ukXPvcBH5PBRZ1Nj/0NPbAbWtygUmqmvZy+5khtfTQNrRuzb8oH5kt33mg7Z?=
 =?us-ascii?Q?264fNZXbbsFTOPh2LmqMn92LLuIqUMH2NS3SUkGRjYGMCSl7nDLp1H6o41/+?=
 =?us-ascii?Q?bOMhbVCxsnvneBcaNYbIbDB5FnfLFK46gAcZdy2hTsEIc1obiyh+Wjr9qIEA?=
 =?us-ascii?Q?gBegdvwu6o0Hpvw03rGne9DO/G0xLtIvyX+L+YxYHEadwdmlbSSTdkwAy+HG?=
 =?us-ascii?Q?ZW5JHE+IhdQd0dJyM4RCjM6Fb/ptWs/1x07BcgFCcz9H/q7pzkUyL9FgQp+A?=
 =?us-ascii?Q?ubBl3jd+FuEOQh8sYRfBeZd53gHVzWLEhSNdfmlQfBPplf4y+Nu4hZuZ/SxD?=
 =?us-ascii?Q?dw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0863bd69-1ce9-4379-a530-08dbe0ae9173
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Nov 2023 23:00:57.2238 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DeduJyqoAzP6R2T28+rZ2uVRMBBCmo1ckkjktTCtZkly+cSnyyt3tiHcM3dCnj5jzBPV6OHLfSKchY2yhO8nB8KpWWSOh2mGQWz6PXKQiXY+NuYeF/BuWOVRdDvbYHdV
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4889
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699484466; x=1731020466;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nUbZrBGMHbK3hCF2Ueg0ZixmnAV9qUWD7I4xaOdAdmg=;
 b=O/1vOSgd/eniE8G+trTvBSTn0UuJcDs+Mumn14IBqUnWqcvX9YSGk63d
 4v8rr2UQMEpXL3TiGL5ItzrJckaGSe2sDPV0T0ssI7pUJFnSHpVW5Ihe+
 ts40GO4Z+MDxSDDcwDiKRbdk+MA6RPgF5uECzxNa4ABU6iyfyh57Mfevn
 mYF1Z33i/bbb2q8qHcDPUOLd4uksuaaPwrtocY9pZnViN3jzQ81RKpcfl
 zjMNf9M/mZ1xGGI8Xk5rPwp5i51j2axHFrbEDaKi+BAW3jvTVbeZPOoAt
 ZIWLf9/kYm7oujMtOsVft4I6QP8S6+d/HdoGVPMVjlSSrWnPOHwzUZCZJ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=O/1vOSgd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [linux-firmware 3/3] ice: update ice DDP
 wireless_edge package to 1.3.13.0
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Czapnik,
 Lukasz" <lukasz.czapnik@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Limaye,
 Priya" <priya.limaye@intel.com>, "Deb, Shekhar" <shekhar.deb@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Przemek Kitszel
> Sent: Thursday, October 26, 2023 6:28 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Czapnik, Lukasz <lukasz.czapnik@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Limaye, Priya <priya.limaye@intel.com>; Deb, Shekhar <shekhar.deb@intel.com>
> Subject: [Intel-wired-lan] [linux-firmware 3/3] ice: update ice DDP wireless_edge package to 1.3.13.0
>
> Changelog since 1.3.10.0:
> - Fixed an issue in which all packets with SCTP header were not being
>   received;
> - Flexi MD4 and Flexi MD5 in RXDID22 of Flex descriptor is being used to
>   describe rule id matched in the Switch;
> - Parser is updated to set abort flag for malicious SCTP packets;
> - Updated the Protocol IDs that are being set when receiving MAC_IPV6 type
>   packets that have a VLAN or MPLS header present;
> - more bugfixes.
>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  WHENCE                                        |   2 +-
>  ...0.0.pkg => ice_wireless_edge-1.3.13.0.pkg} | Bin 725428 -> 737832 bytes
>  2 files changed, 1 insertion(+), 1 deletion(-)
>  rename intel/ice/ddp-wireless_edge/{ice_wireless_edge-1.3.10.0.pkg => ice_wireless_edge-1.3.13.0.pkg} (88%)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
