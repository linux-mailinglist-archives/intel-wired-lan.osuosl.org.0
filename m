Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C0870B33674
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Aug 2025 08:28:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2F75C61C13;
	Mon, 25 Aug 2025 06:28:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ziUzXehi8h3n; Mon, 25 Aug 2025 06:28:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A28AB6110B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756103324;
	bh=1/z0KuemCmuV6RWjjZJrA5c2hZbQAqUOP5ofPdnWJEA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ia/xHGym0mKy8s9VmDWpps5xqVhmLfpSLrA33EBS2tdo28KQzmHfBi6de4+sWzEDA
	 uPRU7NfVvRK7kqynodLJ+vGwHyDnMt1mM1iw/pSwyqruBByXblYzhsbc7B2KLvNNw+
	 vedXLyRdSeYYnfkq2rXbHk3U4DqhGbyXi89MeSRgossFRN20IJuHXUX0pPxdjE31Cb
	 f3Ilh48gmF2d/F4VhbF2q86Y+TiopTzPTYG4mpcJ9OjSWdYHxYWbaGQT/4oi8Tdvea
	 SNu7+Sf1fNkQks2d0YXxubpv6isYrDYuKps7t3j+YWvBCD56lGVyZKqG9vrx/FBebo
	 6HrS4xG8duOvQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A28AB6110B;
	Mon, 25 Aug 2025 06:28:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 168BB114
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Aug 2025 06:28:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F0F0560888
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Aug 2025 06:28:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dN_XN_ACsuWz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Aug 2025 06:28:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4C75F60DE5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C75F60DE5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4C75F60DE5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Aug 2025 06:28:42 +0000 (UTC)
X-CSE-ConnectionGUID: hlsI1SFlQxaFVWkvpHNuAw==
X-CSE-MsgGUID: LOcdwvXWTpCzSavxN8OogA==
X-IronPort-AV: E=McAfee;i="6800,10657,11532"; a="58165985"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="58165985"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2025 23:28:37 -0700
X-CSE-ConnectionGUID: BTKJfgjxRuKgB506tfnlPg==
X-CSE-MsgGUID: UgMjk2LERJydQu/utUkneg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="169587641"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2025 23:28:37 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 24 Aug 2025 23:28:36 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Sun, 24 Aug 2025 23:28:36 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.82) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 24 Aug 2025 23:28:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Yv3FHnF7UmHsM4YP3LzHeBJNv9qmTOpKZnIFL2/85/0VFxwPrMOyecnbF1Hy7zaPeoc+r7zJHjd8z/vFvL7gynN4+8t+vCk2uIof99av2Lg5pkyRSwYGgCVXsQ6bL6J5PxSdhDUObz3rx7E7CGX3zA7VC3+1+CHmMwSxCKxGXoev98Za0nvwA6sPPKyMppQoop21pgyUNf/hqFRoS+qpBuDSfi4NqawKuw2fbZY5Wy2IPYSVxbRjl2rzrEZNIWFWbqGqNmVRAuKGWOGZlf24ftzFBl9fWA0sSycocKpXbwV2zyaewN6IMPBWyeuSUTA+1ayZdWpbF710GXlwHPFNYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1/z0KuemCmuV6RWjjZJrA5c2hZbQAqUOP5ofPdnWJEA=;
 b=LLdgUNVFFMEpoju9SXaxyTFP6wBF4XctPDWTsm5WFAOu1xmOqK7fhand5pQ0WUarywOT6YJa+pQ/CPp+amkPS+SutoV/1bpHPqb6+jFDT/Q4b+fogftH6i+RKtKnWCDWCprVtxx4uUVYYU36t6lUN35Wo6plKV0XERKlB3KbBSnmuQTfTOSgO1vUhrB4Tks/DnSEGOnZGToAUgxujqbMICPEtYpnTHmvcMbQngUBFjuJrtOqtagX/sfS3jfJXj3Si7Zx/Pob4Ve2JiaLSVPFQIciCJ2r3g2e74qnZWFJBccyna2ik3VVy/Un/FhU0N9okpL2JdM23rx5/3e/J3sIvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SJ5PPFE5BD61D44.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::85a) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.17; Mon, 25 Aug
 2025 06:28:31 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9052.019; Mon, 25 Aug 2025
 06:28:29 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>, 
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] ixgbe: fix
 ixgbe_orom_civd_info struct layout
Thread-Index: AQHcAhtkKi8AT96XVkaahJhcUCP7j7RzDVug
Date: Mon, 25 Aug 2025 06:28:29 +0000
Message-ID: <IA1PR11MB6241B7CCCFAC319D622B5F5D8B3EA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250731124533.1683307-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20250731124533.1683307-1-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SJ5PPFE5BD61D44:EE_
x-ms-office365-filtering-correlation-id: 21ce5b73-e87f-4ef8-9a37-08dde3a09b4d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Z5IUq9Fn/9UmIsJ/HApk6PBC/ODvQc0kN+r/xToQ0ZtXakf4ciI6A4W2TJUH?=
 =?us-ascii?Q?ftfFQnZwkZiC5tRfIGEzJwnEgIKjbur3A9DHkj4T6cYyb7wY7nAwmlwKwIhi?=
 =?us-ascii?Q?m9UiPsNc2lORuU2ndbqBQg/LDj8pdL6sYgHnTFbu1rOa5XAkt4h4caQd3oZU?=
 =?us-ascii?Q?sz+FT0TJEHZuobZYywRgWEo2JkKy8B+NfABVlvDkqp831kHDAOnsArcdQ79k?=
 =?us-ascii?Q?H+fqWGUOsQvMriyIItmst8Rrc3S4j2TjZqF400JtWpRDraPscDYS6UaQx5LB?=
 =?us-ascii?Q?GXmjXnI9YyBUAaB7dhDtOxQy4BJJHs7Jfok6pbIMA+jcXNg5cDvZh+V7NDcM?=
 =?us-ascii?Q?WHEEVEODvkRPOiDla/RL+hAJPtrqLe9rDligdHvfR0e77/yQPTyqG2NTA63f?=
 =?us-ascii?Q?7l5o7aMdQz6eGzcakqJthjc2Rt2c+clkIIVVN3x9fSwBLVCwfxhbDAMSyZGW?=
 =?us-ascii?Q?HIf0BPthJaz3z1mNyj5kEA6j5LBNUVPrBVx5By2/xPzSHKSEwdm1IyHzkK/S?=
 =?us-ascii?Q?/m/eZpKUq6EatYhr3nHHsMdoSpldeIV9305b3J1L2//Rwvn7wQa7CZUr09Hp?=
 =?us-ascii?Q?WvKtNW8wHD86CUtuoRwdly+vNCZDsKOSeOL7ksVDd7m6Ld6RJ+yEKnmSFXSj?=
 =?us-ascii?Q?4LMAWdGmHqTKNToBQbh+F4MvVkW2pr3/Geh8d9CuHXTLn+GYKu3ByrHMRS6N?=
 =?us-ascii?Q?5qQ8LgL0hqzM6q+oZfx6g3ydvejmi522P/nNp+MHIckf1NNDt+JWuvHR8lFi?=
 =?us-ascii?Q?9qEcg8wKa0Bto9TMe0bFR7u0AnttavThrPfIC44Z0ykwVkP5oRxy0zG1BF/I?=
 =?us-ascii?Q?0zNyauX2y7VWe9VW8dO9NBALmR/IMQ7oVmlPb8COrNOj7NSC0RnP7r0sjXkV?=
 =?us-ascii?Q?2KcIv6IY9X0SzwDMcWrHFLYEkwXjkINdG/OHd8J4yh+JaJxiFgm0iDND8Xmy?=
 =?us-ascii?Q?cIaZ8lfkbkPP8b0a4V3YrBJZbX5IhdAcM6QtZFfKYXY+qGbj1xLCM3GnuoVq?=
 =?us-ascii?Q?Uk3oXG4z0WFGe8NdhwpsSIs3+NTO1ikrVw68J3BCyYzf8IyG2Ak2BeVzYkOV?=
 =?us-ascii?Q?mV4Qoq0nzi+vOQPvpbPVj0UCrDgfTv46Yz6weP99g0TpDOlByN/NZ3bybY4X?=
 =?us-ascii?Q?/G9dnOahc50mXpcE8FKw7rP329ERAFrDrPw9LuXgN9ihhnjH0+PE1/YFlHGD?=
 =?us-ascii?Q?85tEkZzeLD6DQuZYfEZ2e6fmSVPX9AmeaG/7uyexEMHBJ0m3vIz/oNFztJO+?=
 =?us-ascii?Q?g4MtffVpDpHZcDnDr9WEM/0hjMD24GgGsLrCc7B6M1CXUb+gJgqZ+1FxAHLw?=
 =?us-ascii?Q?xFJ4cNMFGrTKWrALzv6dfYLKel8220xA03ApGmB+5oywW/ECvV+sS0LSj2ue?=
 =?us-ascii?Q?tVNp8Xspb5OG9+lRUs6ZuoeQN7onlKHCwyumSY3COulvIvxDvID+7OnfnASM?=
 =?us-ascii?Q?fooZIgDy7DTHWYxDfMwFHmymdNAXXt+RbBgYTiWcZRQVDGDby1KUyD/CbyZY?=
 =?us-ascii?Q?rEFqlC9KDfRKu1Q=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ma26EcE8WRFCi60NPhQHWvSixmMjSokEJiqpD3+eeb/vvVnu6SH0saBA9NoL?=
 =?us-ascii?Q?9z2YgnsjGdiisJp2LKNe2pa7HZxRAFE9QpdlJMHFSBWaSy8/AAN7idqoHZyt?=
 =?us-ascii?Q?Mky3ginAeVM81fzH6YqElXdU1VwlFSsbCxqpsT/dW6OMDKGi7JLToEMlPRnv?=
 =?us-ascii?Q?tFXaiWfvOut2Sg1IHAUNcJtu8EGGLV3kqnKsjjBMFo7oJV2bWtI/Mvlinekf?=
 =?us-ascii?Q?/qnwlScbQEGBNtj1petWOdlAc3OrgqcCnldSloauuhALh4glTc4q3DeSHEjl?=
 =?us-ascii?Q?g39MFScAbkYItw/d+bBV08ukWUniPIFnEcFSfCHhIrMjA+QdetTFyfIwZZ6v?=
 =?us-ascii?Q?XF/i9rfex0hqxNkiLKhTcbiObq4cG8Eio6PyCOjvdbigSQpNu1mi2r+amAUl?=
 =?us-ascii?Q?FfiNWcee0dW6Lc1dlV4FykU/u1W4kNkQVjCr5Oy8q5XJOYv/wQ7JPdD3o5I0?=
 =?us-ascii?Q?7x75Ex5A2ktKv996tiFn397Y/K3cPcgyDTA1FRstHtu278NJ3dtZvGsnbuMa?=
 =?us-ascii?Q?TTdL8BjAiFRJwL2IQtyVF6TohHdrXxt+Q+qydXXH13Cd8SMA2bwhW7ukFgsR?=
 =?us-ascii?Q?zpMut+Twga14JHruzwhb9VoY6/jdwOtu0JQvcT5dVIxDYglZoCZ0Jf4pRE5C?=
 =?us-ascii?Q?AnweupWclE6rU9cKAc7qgwfFUoGSoqVCwPqnrv56/uKbWnZ0gsnQtuFMDRir?=
 =?us-ascii?Q?NDtP2ggc05/Ycl6JCHij/r5TjIQ09pDwAKuRQHeRfUzNc5cTfmcDJDq2U7FS?=
 =?us-ascii?Q?zzRBeMRHT4RxA7TyHyhwn7VII2EjnnIVfYF6zbJIZb6ZISuDOsfZlREOPmS7?=
 =?us-ascii?Q?jZBP/73tDf1Hva19+cpGNO7uHwmy3K00wVwb5iCLl7vpEClX7qba30Q1X+oT?=
 =?us-ascii?Q?nmYO10YWyij4K+nzsQ7GbR2hAWZJ7uePkMy8BaWgVo2lE4Z7TKuq6piBjFBx?=
 =?us-ascii?Q?YFTfxcd7XDj7285vI7XugewLLYwg4DujwgWFtfeX48Z6KTceVZ2Wr2Ropm3V?=
 =?us-ascii?Q?hZ8//q3pl0QMQ4b8IqgrXGIgg5iU3/qcAZoII8+8E38LXnZopLW1p6X5mMf9?=
 =?us-ascii?Q?93yJG+zwlQeiIxoO7nDPGH+VXCDqX7WqjbH6cDcbznBgw/Zx2ygILXPQqB/J?=
 =?us-ascii?Q?xyACeIHlAjGFmrq23yKYNJn5OoqfK6SOnSrqII0R/eMSYhPW9pA+46gU9id7?=
 =?us-ascii?Q?nzEGl5vFa3VkuKNNunVpOq3gBt2HFbIy8qvPmKrXPHdLtst2/c7qWt7Igy7Q?=
 =?us-ascii?Q?z7fDFDaAQI+2beT/BcSc51dwJRgdKydZmCmTMr+XBSYgPL3261czq7kPSq67?=
 =?us-ascii?Q?vtLrihKShcFrD85fEOLUJ4Nm44cci9qZ0Z8TpsZhLoJJOT5hbpgzpB3OSC+2?=
 =?us-ascii?Q?gbe0c+JsPFiw9yNISKa1Os1aGY9ZV9IkbxX8TPgJ9uuBNlUfljyLqrCAzs7Z?=
 =?us-ascii?Q?xieYWqMwRUEsfzcYi+V93WG7Id1Z7kh0cnTqntjx7IhF9VXO35egJgK2jc8K?=
 =?us-ascii?Q?B/BbM6RRxxq3Qv5mTrENMFjtIWDHmu7n/0YXzToJb3dKm7+OErCWnBvI/Huw?=
 =?us-ascii?Q?kTvNqhqhqR28paWqc/h+xGVuJn7bcf1v8jcdHS8b?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21ce5b73-e87f-4ef8-9a37-08dde3a09b4d
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Aug 2025 06:28:29.5775 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bKit8DibG1czzZp5hB+908seeVqLCJdJDiP5iNAtg7mythg5K6Yn/kqnoQ9qj+QGZaM4qqBW7xtZ/lXueHtc5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFE5BD61D44
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756103323; x=1787639323;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MoECBey9NCILz5jXFqyS2LH5LapxJtHszuuUzkwatRE=;
 b=kDc7/vzfBj5wiXEmMH2HbNykBsop8/NQRZOa8xMAglvuPmhYhpsAMa6Y
 MD881pvoYTeOApQko15vxp6jBz/KjZyKZB41VekHFdHoTD1xjcegiMnKw
 VW1O+PkJkykHfsDoclqiRj2DRWiuS9PwWsI0/bqa+dJTu55Jm6WY0xUCc
 ijzkxKbJiqR+aIQeKcnIdc7zcLAzFwzz+gfIPqMnsgkA49yP//M80EaBJ
 SWccbt7scojjEfEpyB8gkjmd+7QqOsDVHhu7YYHvLcx05Iw0UIUcgBtxI
 ChlbPPQ8o/CEijVFjxZ6+HR9jF1e9E6oc5KVuZVVnuNaheqXrotTMN0Qd
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kDc7/vzf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ixgbe: fix
 ixgbe_orom_civd_info struct layout
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

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of J=
edrzej Jagielski
> Sent: 31 July 2025 18:16
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; netdev@vger.kernel.or=
g; Jagielski, Jedrzej <jedrzej.jagielski@intel.com>; Loktionov, Aleksandr <=
aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2] ixgbe: fix ixgbe_orom_civd_=
info struct layout
>
> The current layout of struct ixgbe_orom_civd_info causes incorrect data s=
torage due to compiler-inserted padding. This results in issues when writin=
g OROM data into the structure.
>
> Add the __packed attribute to ensure the structure layout matches the exp=
ected binary format without padding.
>
> Fixes: 70db0788a262 ("ixgbe: read the OROM version information")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v2: use get_unaligned_le32() per Simon's suggestion
> ---
> drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c      | 2 +-
> drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h | 2 +-
> 2 files changed, 2 insertions(+), 2 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
