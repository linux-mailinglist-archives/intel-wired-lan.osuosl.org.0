Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE2BCA958A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Dec 2025 22:05:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9F518607E5;
	Fri,  5 Dec 2025 21:05:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CNBtn-8cXf7K; Fri,  5 Dec 2025 21:05:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D92066EAA1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764968748;
	bh=EJqeBmwANOUKhGK9hc3d1olf++A4KRreu3+hRceXyxM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vw1EKbXUlyNEl+A5rz+EfiD2wA6Nhc5ct0zvt7hoxINvj+5r5NqUUCo+d+eYXMZUx
	 uK0aP4MHu6BaaEREah2W/TvSje1SWuya0wiclSU4uAEpNe/wWKD+efouqlsnKmvTei
	 ua/JVIajMWDuw/WsrNKVB0VzOJHqYgtg3iJcZlymu1EHYqweWuNvMqExlK461KRqLv
	 9psQecNLB6jzL8zvC/qPElf/ZCahedhsqRKSAyE0bjbnFGaRc3MhFOLY5Jc3uoBPty
	 m+hnpnkjPx72sF5wcStVVU+bURd+KkuKPnga2W0Lv1VXaji5PYRUQyg0zfOa8VSsrk
	 Yu+r3QXiL9P2Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D92066EAA1;
	Fri,  5 Dec 2025 21:05:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6E842E7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 21:05:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 54BB94002A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 21:05:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UA6zU5DTPyw8 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Dec 2025 21:05:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2608B40010
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2608B40010
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2608B40010
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 21:05:45 +0000 (UTC)
X-CSE-ConnectionGUID: l9J+9WctS72nMgK5FLTgQA==
X-CSE-MsgGUID: gIV7xQMfQNefkV4EpmYAEA==
X-IronPort-AV: E=McAfee;i="6800,10657,11633"; a="84413370"
X-IronPort-AV: E=Sophos;i="6.20,252,1758610800"; 
 d="scan'208,217,223";a="84413370"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2025 13:05:44 -0800
X-CSE-ConnectionGUID: IdK3octRQD2rFgNb6kIQpg==
X-CSE-MsgGUID: +JzXmawhSrWpq8fyU03lNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,252,1758610800"; 
 d="scan'208,217,223";a="199821972"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2025 13:05:44 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 5 Dec 2025 13:05:43 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 5 Dec 2025 13:05:43 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.48) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 5 Dec 2025 13:05:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IR3yemw+TKI7pq6Kzr08Bwa/edqSZty1QtOVYjjAy0yYoDoTViiya5wf6FdcKtTVE8ySm3KFO+opi78jvmPk6j6sciWWhsGqgtdSK7aLg4h3/DikvjPKzOYI1RsoghE9s/9xiTmn9T/oWMl2bkXsBjo4vfpD5FANHC5Rchl03en3HVAPSyiwS6HCywpm9/z5aWiPLbOs75vcrOLNXeXcoghR3e09/yiORnGNQ7HI+dmDxPcfLukaTNuPnBm7gYQI4Vj1hOTQ8nKuxAa7dBOyxOMtHRm1OmhVANkiknvDYBrqj5O0YvTYEtLnnPB1jv8fmkcU9FtfscvFZheea2Peqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EJqeBmwANOUKhGK9hc3d1olf++A4KRreu3+hRceXyxM=;
 b=bV9GWX1M7F2PfVdibJqTdptvVVzdxu/WgMlhqXevajq2KwiEIMw6tIc97hcx7R8th3ZcbkSvktdSPete92R/8T1puX6071lo0P8dkWMPHs6JB7ZUHj9+jykxSkXUNW+6eyXYAKXJD4w8e1VqV5tR7VYbnmxXxaKeN1hfR/00aBRMu7d4tSgU2lP/qeURNGWKX7zh/iUCrRi2NIaLPrgQF3vxwLbIZXnngMD/rTMGu74zWX7hDT9DY2x7iF4INzGcdQ9pKEyVKtmanmFcxLzus8zFxPEg74Khk8H8F7fiFBUqwwdEcq+RAF7/AkZ+l6CSG/fd8/8h4BgHK+/3TqujOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SN7PR11MB7668.namprd11.prod.outlook.com (2603:10b6:806:341::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.12; Fri, 5 Dec
 2025 21:05:39 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9388.011; Fri, 5 Dec 2025
 21:05:38 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Behera, Vivek" <vivek.behera@siemens.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "\"David
 S. Miller\"" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Behera,
 Vivek" <vivek.behera@siemens.com>
Thread-Topic: [PATCH] igc: Fix trigger of incorrect irq in igc_xsk_wakeup
 function
Thread-Index: Adxl4xN/bKAnSLoOQiOSWfX7JfGLpgAR2dow
Date: Fri, 5 Dec 2025 21:05:38 +0000
Message-ID: <IA3PR11MB8986860C6B817F4130A4E0DBE5A7A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <AS1PR10MB5392B7268416DB8A1624FDB88FA7A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <AS1PR10MB5392B7268416DB8A1624FDB88FA7A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=feb46790-5d5e-41b9-916e-56dde80d5ae3;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-12-05T12:16:38Z; 
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SN7PR11MB7668:EE_
x-ms-office365-filtering-correlation-id: 9fcaa07b-3302-48e5-29bc-08de34420ae9
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|921020|8096899003|7053199007|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?jiUxXAQ5EZxc/eGgXDzDjuoI7A0tBxpiEABJqMzx4Kow7zSQ3jFA4GPQbL6Y?=
 =?us-ascii?Q?u0kUzhr0t+21AYrRbt/uR340TRHoVRR0ZtvbueirBqeDPyGsZ7DrXuvkBwWa?=
 =?us-ascii?Q?SChnMUyigj64KrljOrrQ7UTQmXzsFuH5OJGryfSg2R232JGaAQdEW40njVwb?=
 =?us-ascii?Q?rVRby0G9mvDane1gVQVPAEg5qrwLPtKjl2nABbmebwuXP4HQdPneFASEFaHX?=
 =?us-ascii?Q?w/tOG1QF0lexZgpuvFW/b6jVX0VsMUGOka9Dh4Ye4gTB4SEUZa2P2CUjgvqY?=
 =?us-ascii?Q?zdcIpjhqyK+qq+D8pWvmJXXqBSQ/nM4QoukpdwH5mqwWzk2PRkdxsslhWBQ1?=
 =?us-ascii?Q?Y4mpaa9su8zOj/mHcvM39cgqC637qAsQ+PPXJePbMGRwZHVt82YvtIR2s3o6?=
 =?us-ascii?Q?agLvlw0ugQ5RzxRq9Fh6es0++C10eFL1WKbrvJ9s2COy8BvuhDkzSmrMXJ5k?=
 =?us-ascii?Q?+Vqw2CfwDKyMiJ9y3qE0r4kuhIi6o8dNK+a2d8rOzn0S3RTWL1TXaasd552t?=
 =?us-ascii?Q?jfZHEPkj99BKkJzLWZ0cy38Ivqc1pRCjxjMm9g8rBQJZg+eMXCpfDTLkVC2V?=
 =?us-ascii?Q?OoCOZCzUM6h+UzmgS4uGNov3xpR4bGsaZTpbv2SYKoL+UI5ssU07rErcjkTt?=
 =?us-ascii?Q?k+1KSgc5Iqwc/bgpH7XjM+JLGDmRujSIpUzFuWHoUwRIGC+TUAHaYXQ4CrRQ?=
 =?us-ascii?Q?z0Dg0v8KS06A0Xx2vBe5dkI3SRqWU3uVCE9BcpuJ8f0ZFFGfoMuF6O7LO87O?=
 =?us-ascii?Q?NUCUck555NujcTkkON+LJ8qcWzOf1RicQ1re3QusHkpRjUyjzFjAPuYGh0A0?=
 =?us-ascii?Q?O53LOiTsPv0L/OJWy+fAe8M6s3KEc6pzc1tmzwoPQQbR9mBpLfP76+Ch9d+H?=
 =?us-ascii?Q?0OHcgzoBdCcRi7Jf59oH67vwoFNQv7lcxaJ9tJz+k9Gt/6aZepBqVFD9EaFg?=
 =?us-ascii?Q?tLfMMpZoXbZzFXD12spug4IDsS6NCk5Lj1PjkwfR7lDaHYkLw1syqgK1qgw9?=
 =?us-ascii?Q?5vS1x9AuOKEapeZiqq15bvc+XsHEIOmeUEZDasTuj9+j+hYKDCUHVGJiNB2x?=
 =?us-ascii?Q?igzuGglNNoZMgpZGtbobNHFK/RxlMy8Dre21SR1QSbCRGleK9ngojPYFTD9K?=
 =?us-ascii?Q?WmMOpmtWU/yrC6e9llYyIP1IOPjYu1tehgmqmZF2qO3MGkvWNtFZd/D+eeOZ?=
 =?us-ascii?Q?TzTyCsO66xczAqjcKsycdpDFN6x6vtg86izFJdwyhXH503+J/Yy0l9Cqz04L?=
 =?us-ascii?Q?XwAnYwjwNywS9ngEuZJXEWlnM9a+7h5NjuCchJoibBODcHPdigYyu++1T9Ff?=
 =?us-ascii?Q?XiXL2aQj6zVhpzKKswsA5kR1SNtlyfLQzWOr7UlU1lpR1ARrW+SOY/zbqgjX?=
 =?us-ascii?Q?zDzseR+rVIUNx4YpHfKMofyr2CMQT1HjzWMkLocZEF35SgJVZGZ310QuVMs5?=
 =?us-ascii?Q?InvPVoha/VVt7aDayEF2AJFnZ5O/0Qo2jOc8DCBvKRb9P/iC36rtvqPi9hac?=
 =?us-ascii?Q?k8htqlCATJr5YpGWlydva7o2x/2oskqarFNowMerI2VxC8r9yfQDY9+tDA?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(921020)(8096899003)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DTNHDxw5DkQdfUdURssdB3S7DcQ2czNKRDKN+8nEVB1+lgfxv35/CkZZB9i3?=
 =?us-ascii?Q?J6iUELpBQTYP8yKrWtXA/o+2dIuDLCqg/4yERrXos6/ORACC6n/m+vcWp+do?=
 =?us-ascii?Q?RlfoWC1Glwh76+FPFqH441b4+GrfTRO43m9+K8k5K5hLybdCRRPyIZjCJ9cG?=
 =?us-ascii?Q?pDCIwT4ZxXgVbgsOrzFysz4bi9Khh3JDyYoUmBcSsTLpKzfAwn9oa5PvdA+y?=
 =?us-ascii?Q?Ry0IcIn/072EVbpPIIOprRnxWDLcIVPY0+Qdfej8hD83qMCjjJmXWrUAoRYU?=
 =?us-ascii?Q?lK08QIs77rxaQkpSbB4iB1mLTEb8VazMGG5bGkGqUbwrvA0UyfXtUKRMkXCc?=
 =?us-ascii?Q?Wjkicd/b7QM2Xn/7y74PV2bUVdquzBpVM9858Gey1I8OLRhPuCp5LafaNtEt?=
 =?us-ascii?Q?vqiA80QAo/N1kb1Hn0+uNjBDaMHJwSwhh3nf22Gcep3AOB+5979+SJdp+9qf?=
 =?us-ascii?Q?P/h0AGSmwg2tuVzM4TemvjhDSdJenkzBhqqZ96ZUMWU8GcupZ0WlI4SKz5ej?=
 =?us-ascii?Q?o9iUaZ5fo7v7Xt6vFuFECIacZTJR8g5HdToKvIjVAValmhFkSfRYUHDtZCHE?=
 =?us-ascii?Q?1KvEBo2gKRIVHRxD+qaiWKqjT0MrtLCuw2aN3TZcDaVt1rAl3fUY6ZPOKYSD?=
 =?us-ascii?Q?J/d/3fgS4QAzRpEobtWCOwGdHUTAB3hS5qayDxpHLPvvaPMIn9vVHw0iXLHn?=
 =?us-ascii?Q?blCa4BZ9sxPIXEsFGdpfSMNvE+etvQ3h5/492DDTaiCVb/K9cQ5yI2gUGjXD?=
 =?us-ascii?Q?7wDtjzHLXhHPLqwOS9WGxOEAUWh7V+2G5wbm2VtXBakFf+y5Y3wwdzt1bQLS?=
 =?us-ascii?Q?SfKbuisxawhDS0KP61OlS9BFvtQoy8vUCZzzPsU9ZN9gdcLEN1DD4wwIv8Yt?=
 =?us-ascii?Q?XJmSreiudkoFyJrzGfta12shauDIF8+Jyapvirr7qkvasjDDibh68Ty9obdJ?=
 =?us-ascii?Q?Qtm9NqnhR8lAmT0QF7NJ6TAW6ArVLz5wDdh8AN86lVkm4H5ff9xYIURthoqL?=
 =?us-ascii?Q?cVrlK5UWT2u5JsKgbuCgg9ee1NTsRQiod9M9gq2tX4cn5uK0yOuzwPETZfms?=
 =?us-ascii?Q?L+SV1kFhDonp4ghzbCQU4DNdBq5x+8tRym75k5dNeAdORPOqRwDrHeZ68K21?=
 =?us-ascii?Q?eN8L+7RoStfZ1CsYEm4kXfFAFzh+vGTBZTS0R8+uzrf4bWZl50zEU5ZHWf6h?=
 =?us-ascii?Q?1FgTegqukyY5e3rEGyEsx40kELkIQ6tQxR92lbbIHapZ6dkzt1TRekXKIUmn?=
 =?us-ascii?Q?sIXtT/OZughWEDHXv+FPIpsimrk7smH3r28F2NfP1ZoPEULfavmnqjSZVAVD?=
 =?us-ascii?Q?G8FL6Q9mIn+gyTh263LIjR1J6Zg/TzRtCnDtX0hj9ABYv370tjxe/CDuD5xf?=
 =?us-ascii?Q?Xgxhkz96I+r2NQ0AhXa6wdX0vtiddW+R7yNcrY0S3obty+pxEzVAV2Ldasim?=
 =?us-ascii?Q?Rhq3kPC96s1kXrSD3KgXpA4LIatccwxc3BO/fWwR5PKySADPA9Mvlw+/5k8P?=
 =?us-ascii?Q?/AQc7s0FdLI1BTReENOCq9XDnXG0JKAHLr9Z0IpPFyWzfcksJPhbr3EbQZ9H?=
 =?us-ascii?Q?ADwY9HYyQYNTr/j9KhHJx26lRAWEhWgWuhgmxaP+m3/Z6zO4MZXodbh6lo4p?=
 =?us-ascii?Q?0w=3D=3D?=
Content-Type: multipart/alternative;
 boundary="_000_IA3PR11MB8986860C6B817F4130A4E0DBE5A7AIA3PR11MB8986namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fcaa07b-3302-48e5-29bc-08de34420ae9
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2025 21:05:38.8546 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aDSZhFhDj88TYtmrCqlRjUqBN/zUlBTBrNff2wHLQ8Tcg7OtiVrVmUli3cW3bWNS09NDFjgYZ1oNW0896MroSAbTzqJ6vQaIL1iKXILkd28=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7668
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764968746; x=1796504746;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version;
 bh=YsHvUuMwBVwltwcvujRxiBIa3RJTjlkorWKlF9qmxYI=;
 b=lERXbhhcS6BZn3LAG5yYqh++fmdhQaCBL3QDzwH7shS1wMu1tsooHxIR
 s4n+Y1XvhZhS7EU5H0BtVB7bPw/3V8i9ckurbInE2DqM3+Ok651AsaVgu
 Dcf5mrBOmwui+Qm9VgKFp+R8kv2PYUXVXDI64CqTkp+tBPBuip+hswi8S
 pa4OvqSzFbBhbK9GDMb0hIQZ12y/UKJoGTuH6h0wdwsb0dW1PyiUysB5T
 Xw2epZurQP5JpGXs6mihV03wvhGNyeICge7OsXMt+eOzDApyg2Kxd6uvW
 AGkMFkXmrYrS0Orb7NAns2SplHCIoQIN35dnVa82k677PGcuma0rz7nJX
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lERXbhhc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] igc: Fix trigger of incorrect irq in
 igc_xsk_wakeup function
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--_000_IA3PR11MB8986860C6B817F4130A4E0DBE5A7AIA3PR11MB8986namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Beh=
era, VIVEK
Sent: Friday, December 5, 2025 1:40 PM
To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <pr=
zemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>; "David S.=
 Miller" <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub K=
icinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-kernel@=
vger.kernel.org; Behera, Vivek <vivek.behera@siemens.com>
Subject: [Intel-wired-lan] [PATCH] igc: Fix trigger of incorrect irq in igc=
_xsk_wakeup function

From 4e3ebdc0af6baa83ccfc17c61c1eb61408095ffd Mon Sep 17 00:00:00 2001
From: Vivek Behera <vivek.behera@siemens.com<mailto:vivek.behera@siemens.co=
m>>
Date: Fri, 5 Dec 2025 10:26:05 +0100
Subject: [PATCH] igc: Fix trigger of incorrect irq in igc_xsk_wakeup functi=
on

When the i226 is configured to use only 2 combined queues using ethtool
or in an environment with only 2 active CPU cores the 4 irq lines
are used in a split configuration with one irq
assigned to each of the two rx and tx queues
(see console output below)


...

Signed-off-by: Vivek Behera <vivek.behera@siemens.com<mailto:vivek.behera@s=
iemens.com>>
---
drivers/net/ethernet/intel/igc/igc_main.c | 31 +++++++++++++++++++----
1 file changed, 26 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethern=
et/intel/igc/igc_main.c
index 7aafa60ba0c8..0cfcd20a2536 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6930,21 +6930,42 @@ int igc_xsk_wakeup(struct net_device *dev, u32 queu=
e_id, u32 flags)
           if (!igc_xdp_is_enabled(adapter))
                       return -ENXIO;

-           if (queue_id >=3D adapter->num_rx_queues)
+          if ((flags & XDP_WAKEUP_RX) && (flags & XDP_WAKEUP_TX)) {
+                      /* If both TX and RX need to be woken up queue pair =
per IRQ is needed */
+                      if (!(adapter->flags & IGC_FLAG_QUEUE_PAIRS))
+                                  return -EINVAL; /* igc queue pairs are n=
ot activated.
+                                                          * Can't trigger =
irq
+                                                          */
It looks like not a malformed input, but as unsupported operation for the c=
urrent device/IRQ configuration. In net drivers, -EOPNOTSUPP is the expecte=
d errno for "the device cannot perform this requested operation in this con=
figuration," while -EINVAL signals a bad argument.
Am I right?


+                      /* Just get the ring params from Rx */
+                      if (queue_id >=3D adapter->num_rx_queues)
+                                  return -EINVAL;
+                      ring =3D adapter->rx_ring[queue_id];
+          } else if (flags & XDP_WAKEUP_TX) {
+                      if (queue_id >=3D adapter->num_tx_queues)
+                                  return -EINVAL;
+                      /* Get the ring params from Tx */
+                      ring =3D adapter->tx_ring[queue_id];
+          } else if (flags & XDP_WAKEUP_RX) {
+                      if (queue_id >=3D adapter->num_rx_queues)
+                                  return -EINVAL;
+                      /* Get the ring params from Rx */
+                      ring =3D adapter->rx_ring[queue_id];
+          } else {
+                      /* Invalid Flags */
                       return -EINVAL;


...

--
2.34.1

--_000_IA3PR11MB8986860C6B817F4130A4E0DBE5A7AIA3PR11MB8986namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Aptos;}
@font-face
	{font-family:"Terminus \(TTF\)";
	panose-1:2 0 6 9 0 0 0 0 0 0;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#467886;
	text-decoration:underline;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Terminus \(TTF\)";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Te=
rminus \(TTF\)&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Te=
rminus \(TTF\)&quot;"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif;mso-ligatures:none">From:</span></b><span style=
=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;mso-ligatur=
es:none"> Intel-wired-lan &lt;intel-wired-lan-bounces@osuosl.org&gt;
<b>On Behalf Of </b>Behera, VIVEK<br>
<b>Sent:</b> Friday, December 5, 2025 1:40 PM<br>
<b>To:</b> Nguyen, Anthony L &lt;anthony.l.nguyen@intel.com&gt;; Kitszel, P=
rzemyslaw &lt;przemyslaw.kitszel@intel.com&gt;; Andrew Lunn &lt;andrew+netd=
ev@lunn.ch&gt;; &quot;David S. Miller&quot; &lt;davem@davemloft.net&gt;; Er=
ic Dumazet &lt;edumazet@google.com&gt;; Jakub Kicinski &lt;kuba@kernel.org&=
gt;;
 Paolo Abeni &lt;pabeni@redhat.com&gt;<br>
<b>Cc:</b> intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-=
kernel@vger.kernel.org; Behera, Vivek &lt;vivek.behera@siemens.com&gt;<br>
<b>Subject:</b> [Intel-wired-lan] [PATCH] igc: Fix trigger of incorrect irq=
 in igc_xsk_wakeup function<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">From 4e3ebdc0af6baa83ccfc17c61c1eb61408095ffd Mon Sep=
 17 00:00:00 2001<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">From: Vivek Behera &lt;<a href=3D"mailto:vivek.behera=
@siemens.com">vivek.behera@siemens.com</a>&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Date: Fri, 5 Dec 2025 10:26:05 +0100<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Subject: [PATCH] igc: Fix trigger of incorrect irq in=
 igc_xsk_wakeup function<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">When the i226 is configured to use only 2 combined qu=
eues using ethtool<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">or in an environment with only 2 active CPU cores the=
 4 irq lines<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">are used in a split configuration with one irq<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">assigned to each of the two rx and tx queues<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">(see console output below)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Te=
rminus \(TTF\)&quot;">&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Te=
rminus \(TTF\)&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Signed-off-by: Vivek Behera &lt;<a href=3D"mailto:viv=
ek.behera@siemens.com">vivek.behera@siemens.com</a>&gt;<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">---<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">drivers/net/ethernet/intel/igc/igc_main.c | 31 ++++++=
+++++++++++++----<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">1 file changed, 26 insertions(+), 5 deletions(-)<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">diff --git a/drivers/net/ethernet/intel/igc/igc_main.=
c b/drivers/net/ethernet/intel/igc/igc_main.c<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">index 7aafa60ba0c8..0cfcd20a2536 100644<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">--- a/drivers/net/ethernet/intel/igc/igc_main.c<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+++ b/drivers/net/ethernet/intel/igc/igc_main.c<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">@@ -6930,21 +6930,42 @@ int igc_xsk_wakeup(struct net=
_device *dev, u32 queue_id, u32 flags)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; if (!igc_xdp_is_enabled(adapter))<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; return -ENXIO;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; if (queue_id &gt;=3D adapter-&gt;num_rx_queues)<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; if ((flags &amp; XDP_WAKEUP_RX) &amp;&amp; (flags &amp; XDP_WAKEUP_TX)) =
{<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/* If both TX and RX need to be woken up queue pair per IRQ is needed */<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if (!(adapter-&gt;flags &amp; IGC_FLAG_QUEUE_PAIRS))<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret=
urn -EINVAL; /* igc queue pairs are not activated.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Can't t=
rigger irq<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Te=
rminus \(TTF\)&quot;">It looks like
<b>not a malformed input</b>, but as <b>unsupported operation</b> for the c=
urrent device/IRQ configuration. In net drivers,
<b>-EOPNOTSUPP</b> is the expected errno for &#8220;the device cannot perfo=
rm this requested operation in this configuration,&#8221; while
<b>-EINVAL</b> signals a bad argument.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Te=
rminus \(TTF\)&quot;">Am I right?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Te=
rminus \(TTF\)&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Te=
rminus \(TTF\)&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/* Just get the ring params from Rx */<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if (queue_id &gt;=3D adapter-&gt;num_rx_queues)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret=
urn -EINVAL;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
ring =3D adapter-&gt;rx_ring[queue_id];<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; } else if (flags &amp; XDP_WAKEUP_TX) {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if (queue_id &gt;=3D adapter-&gt;num_tx_queues)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret=
urn -EINVAL;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/* Get the ring params from Tx */<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
ring =3D adapter-&gt;tx_ring[queue_id];<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; } else if (flags &amp; XDP_WAKEUP_RX) {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if (queue_id &gt;=3D adapter-&gt;num_rx_queues)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret=
urn -EINVAL;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/* Get the ring params from Rx */<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
ring =3D adapter-&gt;rx_ring[queue_id];<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; } else {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/* Invalid Flags */<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; return -EINVAL;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Te=
rminus \(TTF\)&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Te=
rminus \(TTF\)&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Te=
rminus \(TTF\)&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">--
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">2.34.1<o:p></o:p></span></p>
</div>
</div>
</body>
</html>

--_000_IA3PR11MB8986860C6B817F4130A4E0DBE5A7AIA3PR11MB8986namp_--
