Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +Il2AvRmCWr0YQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 17 May 2026 08:57:56 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D696F55F937
	for <lists+intel-wired-lan@lfdr.de>; Sun, 17 May 2026 08:57:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1FBD061B56;
	Sun, 17 May 2026 06:57:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tj_jC20Z83mZ; Sun, 17 May 2026 06:57:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77A6D61B5D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779001071;
	bh=oABOkHQwJuhpUd7qvkJK5ZfaOXS3W5EOZi5VxqMKk5w=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WVLhfwRI6Xg0FLhh0U24iLePQRDrUtDntfW7oNyskKzfwfZabkd4UxdUN60ghj+H2
	 wXdnKbBfF72jbXi7/u837e8al8TxaBBK34ePp7kS424bJhGITFLK87LCxChysRdcAd
	 q4q16YBETP6sZ40Rbmx3yYZ442o0Yrq+QX1mDLsBJSzz4HeiGJLj+QsgUgA1VcuSDi
	 e3/2dR+QcD6LG3Q0ZRKwvr2sSg0if4yefJV3dFQ2dYvRJ+wpSCcT+Vu7WYKXhYQQks
	 tE3OEFoKyytvoBc9tOZtVZ660MIN6fTiYRG/zlrnIg1JTiHkHeARFvjSOns4YvuDh1
	 YsFlrUiGZtYVw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 77A6D61B5D;
	Sun, 17 May 2026 06:57:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B8B74282
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 May 2026 06:57:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9E8B661717
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 May 2026 06:57:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LbsfaEZRmhRX for <intel-wired-lan@lists.osuosl.org>;
 Sun, 17 May 2026 06:57:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=michalx.cohen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 55B7C61652
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 55B7C61652
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 55B7C61652
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 May 2026 06:57:47 +0000 (UTC)
X-CSE-ConnectionGUID: elWT8ThlSyuHKnhpFZg/vA==
X-CSE-MsgGUID: G/wD/z6WSXyyVmBAm5tcww==
X-IronPort-AV: E=McAfee;i="6800,10657,11788"; a="79859228"
X-IronPort-AV: E=Sophos;i="6.23,239,1770624000"; d="scan'208";a="79859228"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2026 23:57:47 -0700
X-CSE-ConnectionGUID: HyCpC6uvTNqHlJxcEE3obw==
X-CSE-MsgGUID: oA8ZOBFlSNGcbT85Bk3EJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,239,1770624000"; d="scan'208";a="232726703"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2026 23:57:47 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sat, 16 May 2026 23:57:46 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sat, 16 May 2026 23:57:46 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.48) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sat, 16 May 2026 23:57:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ij/qJSq37mLLUOz1CUW+/GJofI6VYvcfR4HkwNrQEBVfjzuTvheijhKYUqN/b7ityoueAH1Ap3uwu2JeupY6euSWdptUsSfT+J/EHOQZnu/Wh/wKlE6Wb1E7Uc1eAwFX3ABfgKnrDSzVLlKcYS39W6n2bOEP1jWQeApKvCP9oXWQjNgVosGZb3ihDU4+tG4Q2XUKuW2e5uT7knkOecwkfSRY+FB8qJMVQIglkjgyoXL3j8UpAkGvHjpzwzBxbEYqtO+evj7/WZJ6hXeil+R3SUrzSceuFlYYkQPEePnMencEFcPCOakQtneEuWMnagI0n7+M/Ak7lWAuy3QoKXA6wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oABOkHQwJuhpUd7qvkJK5ZfaOXS3W5EOZi5VxqMKk5w=;
 b=SD0zCZHLcCVFsItxrp5CJW452Kzv14W50ZtkJ94uF6rmWx4iORvQ1FtheaTkwz2UAZlhj93dgIZ0zLNAe/qEkJO8jLx6seDvWU8DOdl5NBhb2MwORejimfnU64vCkDtS724x0tt6T/69HTo92f/tIMdIOIH+0uqeWfWhPMvolRpYSaGb8fWYoKAbf59qFqnImTe5J0nmpdEFj8aFgBt/Oc/lQ4wqcsykLCyFebbXmax2L5kF26TpZIj0ns1FhZXVDpQncMpVbpOCzCevpvbKmxcq0FNs1E9FU56V5bH64mmuIZW51zgRoI01oIBSbJFXZmPK+HLBYCZzcB8BFfhp8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5520.namprd11.prod.outlook.com (2603:10b6:5:39f::20)
 by PH3PPFBC2C58BB4.namprd11.prod.outlook.com (2603:10b6:518:1::d47) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.22; Sun, 17 May
 2026 06:57:43 +0000
Received: from DM4PR11MB5520.namprd11.prod.outlook.com
 ([fe80::75b2:c8b1:10eb:2ed1]) by DM4PR11MB5520.namprd11.prod.outlook.com
 ([fe80::75b2:c8b1:10eb:2ed1%5]) with mapi id 15.20.9913.009; Sun, 17 May 2026
 06:57:42 +0000
Message-ID: <53c24947-b2ae-4c7f-af3b-006433e35ad1@intel.com>
Date: Sun, 17 May 2026 09:57:38 +0300
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, Matt Vollrath
 <tactii@gmail.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
References: <20260408221633.73854-1-tactii@gmail.com>
 <IA3PR11MB8986E397C069ED13BDBCE263E5582@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Cohen, MichalX" <michalx.cohen@intel.com>
Organization: Intel Corporation
In-Reply-To: <IA3PR11MB8986E397C069ED13BDBCE263E5582@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0027.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::11) To DM4PR11MB5520.namprd11.prod.outlook.com
 (2603:10b6:5:39f::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5520:EE_|PH3PPFBC2C58BB4:EE_
X-MS-Office365-Filtering-Correlation-Id: ed86aba2-5b0f-4db5-bf35-08deb3e19771
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|22082099003|18002099003|11063799003|4143699003|56012099003;
X-Microsoft-Antispam-Message-Info: bWnHTr2Wr74o4qyxubVnj4XPB9vv3dBQJpUVKTriXunPbua+XBIBZMeD+39iFsUGK/pgZ4A9Rs7q+7c0wHyGKUKt3jYAjV4msceJEKJZqABzg54nWPl7+zwM+IVM4ZEs7E6G2knSeNpcOGBB8Wi0Qv6V3g4uDcH2lAiCiSMFuL2GvOTYA4SZ5iuUNSqRbRAnsih/eNkKvCGIyg5dAXFhl+E2gHOF4VfCwe44K9bqm4sNeAOI5ccMchMpMazffU6cyWILJ25d7ydLaDc7zgKcl7uY6ihpw8GP83eXWnuYxnAtkTMZYW1hKniZzvszdcJcAQKD1WeXW5AaIzwOEzqhD3ouZgKltmbr+YMqHAwlrSbH9fiIi8RccojoceSaeVfn458wuKB7HXWFaEpyrvg1995O3E8uG+YssOlEp/N9lBtUWWigsCeTE2a8ts+8NIE4Lf/e1MdzE7ncQSKQu14yD22SNl6qxlAEaYsP+4uMMJwGhgD3DjFrRmuSsd8vxLNQljwrmEVmQGDlFkShuKeMhzyu1hWhLSXDJM6qg41LPh7JepW7iG4SI8NmRnwhSYESs2/5SuosqUhPK2CXDni+G2jZKLCTnV6Z6L4WavA5ddV3AZZEi5T50dFMHCAzkKsNI3PkSE852BjhNv17FG0FxMWZFkM5y5U5bIhFxHsPGst/RD76uyRNtjJJYv4Ug9s3
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5520.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(22082099003)(18002099003)(11063799003)(4143699003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Sy9VeGRRVUVUNXpmUXZpY3diMGVsWFlZT2g4NndhTmRxdVlJbU85SEtjb1BP?=
 =?utf-8?B?YVRpdGtJd1ByMzBwQldoTzkxWmpSTjQ2VE5TakdyYTcrMGx5YitIcVZvdktC?=
 =?utf-8?B?T1RiSG1KYmRsYThXMzlEYWFXK1RBSVdLMkh5b0cvVHBBRjk1SjFCL1pDMXJa?=
 =?utf-8?B?OWFhSWFCeTRwSHZrQktQdnNLbUNDVHBRRlhkTUhsZ3BxNkFDS29aNnZGZTNR?=
 =?utf-8?B?L2N3MGgxdjlpUlNEK214WEY5Y2wxNWZyR2FIY2ZvSkFScTdFVHJQQmNrYy9N?=
 =?utf-8?B?WUJsb0NVNlVkN1RZdzhiaERZYUgzQURRUTVUWnl3RE5TNWd3S3o5Y2tFeDdC?=
 =?utf-8?B?UW5DdGl6Y0RLRTVab3o0cGlGUmRwOWNsa0o4b3ZKeUptQ3FuODVhTWZLY1Zq?=
 =?utf-8?B?L29YVGhUWm1zcSsvOEtXZHhZdUM0MzF6U0piK2tjSnlvNkxiRUhJQkx4NjRY?=
 =?utf-8?B?L2pWYVZOdDJIc3M0THVMdlkwazRHSndFMTI2OVpLYUhwalVvb0x3RnZrVnBE?=
 =?utf-8?B?clhMRjdWSytYRllHdEhqUDUrNldIajB0ZkpZM3JXb2xIeXVsRlRnUmxzVTNi?=
 =?utf-8?B?bVFIajVOSUtQL01wSzNLUTBNM2pGMDhuMVYyU1pvTys1c2ZBWWl0anhmNDcw?=
 =?utf-8?B?US8zZnFBWHFZZVZYck8vbFlTSU5GQmJtaHN0SGFGeXVvVWM2dGdVOTE5Mm5r?=
 =?utf-8?B?WGdGbGVGN2M4MVRhYis5elo1aGN3N014M0NMMmRQb3huakszOVNGV05KdjJR?=
 =?utf-8?B?TVF6UERoVDBZTy9Vb2JhSnVpR3pwZ045SXNZZ3FuYmpGVmUydXYrWHZYQzNu?=
 =?utf-8?B?SldDZStTQkwreStOK2xNWE1IZGd3MDE1b1hleUFjWjFKcGdUNk9nNEYrelZt?=
 =?utf-8?B?VnBkR3oyY2Uxek9yL2p4UUd1cWlCZkZhSmVZd1ZlRWYxL2FXLzZQRmt2YVJy?=
 =?utf-8?B?YWpyaWhnMGoybUFTTjRxMlRDWkdMT3Q0QWZBbVBWK0RqUFp2T2NrUzYvM28z?=
 =?utf-8?B?M3BPbTVsdTFVaTI3QVZGdWd0ZEFYNUNSb0hLNjNrSDBnUVVQRFZBalJMYlVj?=
 =?utf-8?B?OEszMHUreS94OEY3VjRSUXBhNDZoTHVGaDhMTkc3ejcwdGFTcWFSeVNHOUlw?=
 =?utf-8?B?allrUTVZTWNnbjUyb2hjb1QwQzBYUnFRVjkvZWV3UHlZaFVpci93VFlyL0Vr?=
 =?utf-8?B?eXU1ZTZURXFtVmc0VXdrTVpmaUd4cFlPclNSS2NpTHJSdjZPTDJWN1lFZDF6?=
 =?utf-8?B?aGtIanl4NS9CUlRzblZ5T3ZyWVcyRDVUTEdMWnpLYzdSZTd0NkZYM0tNRUZU?=
 =?utf-8?B?bWx5QU9FcS9ONkQxUVYwTmRNUEJLMnk0V3F3RmNKcjVSaWkrb3hDMS96NTRy?=
 =?utf-8?B?cStralJmNW9HeEZKYTlwMk5XbzRpRHdSOVdSakNQUXJud0E5UFJDUWp2cndU?=
 =?utf-8?B?TmQyUUhkeHcvVEhpa2RVdU1uR1NnQ2dWLzV4b2NQV1BVYnBNaytJSlZ0Y3dn?=
 =?utf-8?B?dE9BK3BEM3ZUZzFmaU5jYyt2ZVVRT3hnNVZTTFU4NmMvay91cEs4N1J6dldF?=
 =?utf-8?B?YmNxNUw4VmdjUUVDZjAwKzlwWHduU0dXSWJVcVRxUWdHRnYvYmVaTStXM2NM?=
 =?utf-8?B?WXpYNEFQT1Q4ZHg5aWYzQUxqVUlTVC8xeVF4SVptb3RucWRsNnhkVWdsT0dU?=
 =?utf-8?B?dHNrNzVrVHRpcDk5OEQ2VC9zUTd0YnFYdkh6akgyUmc3enJzMTVKYWJaOGMw?=
 =?utf-8?B?aFRDYmZZNm42WWZEVytTdE15a3hoZU0wZy8rQmR5WVZhUCtjOGRiL2ZXb1pT?=
 =?utf-8?B?MTF6U25HRFB4OVRKSkJwb042UzRkMmIxMGxxTFUvUVZETEhzcXJ5Vyt1RFQ3?=
 =?utf-8?B?VGxsRVczTlA3dGFpYkpuRzVwYzFiWjBjZG5CdHhlNkJFQ0tTOThOTjU0NkdR?=
 =?utf-8?B?L0dGa0t1TUlhMGNnRlJMZEZmeXMxU3R6MEVNWEVKcGZNTDQ2OCtQd1V0eGNN?=
 =?utf-8?B?aEs4bzBnNzBJRFRjY0tZVE1tRUszS2ZuS0Q4RWNIdWdwaVc2dW0reVRlUFVt?=
 =?utf-8?B?RUg3WmF1K1ZuL3o3b1c1VWJVT3NJL2c5dTdETC80QmwrTWJMMS9ldXFiYk5q?=
 =?utf-8?B?M3h1aXNsSW5iUllxRkhGNU10ZXVqVW16eW1CUkI5aEJVbkJZZU1PWFRldU9V?=
 =?utf-8?B?VUVRcWNXSEs1MG9pT0tld3RjVG81ZEJySG42WkMzYjUzVDVwdHFVYVVHbFAz?=
 =?utf-8?B?SUp3NlNndzU0NGM5Y3dSZk9rWk5TSEFyaVpmdFdXS1M0UzBrTzRRRGxDNVph?=
 =?utf-8?B?cUw2eWFaaXdWUUp5UzhqUkZ6MTdPcklWU2VWeWpqOVhSeDJxYS9iZz09?=
X-Exchange-RoutingPolicyChecked: DzXJr8N7zRIo7A68PwQbySJU7pli3H9c1jn6u36iMrjMfX2E1Pz7FDPFjp2v06pxf7S2WKErBw25CXBKde8pBZ7PsIiP9aKgepNF/Zwa2DIVBE1WsGcDoGLuEkwI/TRwuu7FKeEWmQPBnCxfJ4yogX1Mdc1oJkDEjEINrlFcjtrMK1NipKTZIswsmcCd1IXWOGpzYS1yVNWnkMVnIpiBnKJiW7+7WSC151iX3Xwd15TfyJWR3kfqTftDjNYmO7xXrQo4vTaTWKIjfSEH8TVjPWPoJERE1H+DYNuCnRzsYtH29bzzWgTNWl6Kp37MlXQF49CnBabuZBOVQbKZYP0Pxw==
X-MS-Exchange-CrossTenant-Network-Message-Id: ed86aba2-5b0f-4db5-bf35-08deb3e19771
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5520.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 May 2026 06:57:42.7974 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MzjkgkVlK8WXcrg4MBbb+A6RBuS15BIipJlNYjDh1TqVRRCWrfavt7JyBRcVfv1l/qWgtZMhlCOI4NjjQ92ngQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFBC2C58BB4
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779001068; x=1810537068;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=7x59kgJOGBLlR+HPZAPzIJ8Sz1vNk76/Uo1rTTP7EGk=;
 b=AXsn1y0zaCbT+lIUlBpaCTWWMCsZ2l4/GpcD26maFq9sIyYSE699tFXR
 Ho43HcoLtdyf0b3wNWHj7VreUVM2yVWjKPFK3alyzHMkLb8a55NOqxuNQ
 xYD0JX32zhSy07/wvfycqT7hDGGtdL9HOplxEc66A5INn2T1o6/3T6aK+
 3DMz/MlXXXT7mIGMbEp90ZTM/1pTzYn7MejWL1TWkV6swTFSsAMTZjdr2
 a3oPG4+0NpFItnA4WqXvbdBd9NHD/7B4tdaneL+SLoofWkbNZHrZMEb8U
 nyleTt/q201PT1rIqQQcfsT52lCV4gYAWX+a+U+ur89Gsujby64NOy6y0
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AXsn1y0z
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] e1000e: Use
 __napi_schedule_irqoff()
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
X-Rspamd-Queue-Id: D696F55F937
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:tactii@gmail.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[intel.com,gmail.com,lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[michalx.cohen@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michalx.cohen@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.988];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	HAS_ORG_HEADER(0.00)[]
X-Rspamd-Action: no action



On 09/04/2026 11:43, Loktionov, Aleksandr wrote:
> 
> 
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
>> Of Matt Vollrath
>> Sent: Thursday, April 9, 2026 12:17 AM
>> To: intel-wired-lan@lists.osuosl.org
>> Cc: Matt Vollrath <tactii@gmail.com>
>> Subject: [Intel-wired-lan] [PATCH iwl-next] e1000e: Use
>> __napi_schedule_irqoff()
>>
>> The __napi_schedule_irqoff() macro is intended to bypass saving and
>> restoring IRQ state when scheduling is requested from an IRQ handler,
>> where hard interrupts are already disabled. Use this macro in all
>> three interrupt handlers.
>>
>> This was tested on a system with an I218-V and MSI interrupts. Because
>> this is an optimization, I was interested in measuring the impact, so
>> I added ktime_get() time measurement to e1000_intr_msi and a print of
>> the last sample in the watchdog task. For each test case I ran a bi-
>> directional iperf3 to saturate the line. With some help from awk, here
>> are the statistics.
>>
>> 49 samples each, all units ns
>> previous: min 678 max 1265 mean 879.429 median 806 stddev 137.188
>> noirq:    min 707 max 1165 mean 811.857 median 790 stddev  89.486
>>
>> According to this informal comparison, the mean time to handle an
>> interrupt from start to finish is improved by about 8% under load.
>>
>> Signed-off-by: Matt Vollrath <tactii@gmail.com>
>> ---
>>   drivers/net/ethernet/intel/e1000e/netdev.c | 6 +++---
>>   1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c
>> b/drivers/net/ethernet/intel/e1000e/netdev.c
>> index 9befdacd6730..3ba108bc3036 100644
>> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
>> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
>> @@ -1803,7 +1803,7 @@ static irqreturn_t e1000_intr_msi(int
>> __always_unused irq, void *data)
>>                adapter->total_tx_packets = 0;
>>                adapter->total_rx_bytes = 0;
>>                adapter->total_rx_packets = 0;
>> -             __napi_schedule(&adapter->napi);
>> +             __napi_schedule_irqoff(&adapter->napi);
>>        }
>>
>>        return IRQ_HANDLED;
>> @@ -1882,7 +1882,7 @@ static irqreturn_t e1000_intr(int
>> __always_unused irq, void *data)
>>                adapter->total_tx_packets = 0;
>>                adapter->total_rx_bytes = 0;
>>                adapter->total_rx_packets = 0;
>> -             __napi_schedule(&adapter->napi);
>> +             __napi_schedule_irqoff(&adapter->napi);
>>        }
>>
>>        return IRQ_HANDLED;
>> @@ -1951,7 +1951,7 @@ static irqreturn_t e1000_intr_msix_rx(int
>> __always_unused irq, void *data)
>>        if (napi_schedule_prep(&adapter->napi)) {
>>                adapter->total_rx_bytes = 0;
>>                adapter->total_rx_packets = 0;
>> -             __napi_schedule(&adapter->napi);
>> +             __napi_schedule_irqoff(&adapter->napi);
>>        }
>>        return IRQ_HANDLED;
>>   }
>> --
>> 2.43.0
> 
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Tested-By: Michal Cohen <michalx.cohen@intel.com>

