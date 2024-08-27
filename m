Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB25A961609
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Aug 2024 19:54:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A44E140A22;
	Tue, 27 Aug 2024 17:54:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a8iEUYS263tQ; Tue, 27 Aug 2024 17:54:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7143040A24
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724781290;
	bh=ngtykXbhHaiyq5ZNci57JKS9eOwcBN0SZgH5cpV81WI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gU5D4oTxiHzPtd9LzHydef6iHcUcPKWQu7QNQmxlyCd98EB7efPFxYUUV0xGqXWOt
	 pCqI0WTAQhLAucUrZWXsVF1Pp1ohWlBI4lXO9eYNuVsbGXYK+umZ6AwOGkSbCDy3XN
	 yeSk4PXZcyK9ixDN1x4BaYoqOPG+IvDYkACvW6/6xSRGbPOEyejpS5YCxovpzjepT8
	 tif5sY7C+KMYlxhSj6szXNBXvSE1c7UOkWzWMhHNirzKVOtOfHXua00qcJh2b00WV+
	 KxQQ58qKuPlziACxIUpoHJLrMz+Dk+OVViOo06voj01z+hDe7LpQr6kuDxIOMhr7Ir
	 eNzrdT+DqTNfg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7143040A24;
	Tue, 27 Aug 2024 17:54:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4AB3C1BF21A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 17:54:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 44B4B8056E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 17:54:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l7tm3D3w6JhW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2024 17:54:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=krzysztof.galazka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4CDE88056D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4CDE88056D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4CDE88056D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 17:54:47 +0000 (UTC)
X-CSE-ConnectionGUID: qjnf2YUKR96wXHVCggxsqw==
X-CSE-MsgGUID: eDPGh0TfQxiuokMXuVXdww==
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="23144545"
X-IronPort-AV: E=Sophos;i="6.10,181,1719903600"; d="scan'208";a="23144545"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 10:54:46 -0700
X-CSE-ConnectionGUID: pKutPVOcTWG9XnDI7XumkA==
X-CSE-MsgGUID: VH+lfjRhR8OA9x8REN9SVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,181,1719903600"; d="scan'208";a="62781169"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Aug 2024 10:54:47 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 27 Aug 2024 10:54:45 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 27 Aug 2024 10:54:45 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 27 Aug 2024 10:54:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eYdOnxA06TZxTvIPNmvzGZRiZDLDlcy4hcC5NmR17P4hJGGv0XIp65dV3P7lBohfvqQ9/I0+rzcrWlTGzEjWQ0sZlBPuoycg7yld3MyVK5pw6xkoe8M0EhqnEqZGc02W2SyRms+5FpsszIvwUbG2JDRb1SE2DnPCdR/MYFDPHKo8/hCeX/hd8QNBz4yos+oqp3RZahcCJM2Tycg57F2r6SyDMD3e4Y0r8kS3qD7CK8XVuIsWQYdlwBEyAKEOg9dwQJ2zE5lMR9qPfOZqTYcHHCe7oplsnvv9cXMubCNrWCA/PqEjvf5FdireLeP85MEUuDJ2GgGbOHfzX5RjHWnpxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ngtykXbhHaiyq5ZNci57JKS9eOwcBN0SZgH5cpV81WI=;
 b=ogsLahqcbmVOP3A8//wMk6ISzRSsxaJelKLoKbx1WV7b+wqzwj6vvCTp9T3Bd8cqZtIZ7eNOZYmBiA1/AKjpMBolHgpGkTshz9JN+KZ0qBDZCpk/4dz/qCKWG4LA+xVIyMUON62v16mSL0iSVpmvRuVwt+JpTKgm4BPUkgqCN9biFFrlwihIVogfXUj+NlaqHBXHAeG/C8E7iNyALgPyvWE1xfpx3UV69qz0Y1h74SXaGZFH9LhmAFUxZefuVmNKlbf6szzdRT2XnRpLrIBQSlDzCR0WWvpKCCt6OdgItbnBBV2zyRXHYACMGytUCYReScwoenShQtsR2sbvip/8zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB8268.namprd11.prod.outlook.com (2603:10b6:303:1ef::5)
 by MW4PR11MB5935.namprd11.prod.outlook.com (2603:10b6:303:18a::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.25; Tue, 27 Aug
 2024 17:54:43 +0000
Received: from MW4PR11MB8268.namprd11.prod.outlook.com
 ([fe80::b5a5:ed80:386b:aa]) by MW4PR11MB8268.namprd11.prod.outlook.com
 ([fe80::b5a5:ed80:386b:aa%7]) with mapi id 15.20.7897.021; Tue, 27 Aug 2024
 17:54:42 +0000
Message-ID: <0c0f51d5-8ff1-44f5-8607-cee88479aa62@intel.com>
Date: Tue, 27 Aug 2024 19:54:37 +0200
User-Agent: Mozilla Thunderbird
To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
References: <20240821142409.958668-1-krzysztof.galazka@intel.com>
 <66c5fa663e274_dc0c22942f@willemb.c.googlers.com.notmuch>
Content-Language: en-US
From: "Galazka, Krzysztof" <krzysztof.galazka@intel.com>
In-Reply-To: <66c5fa663e274_dc0c22942f@willemb.c.googlers.com.notmuch>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR0902CA0054.eurprd09.prod.outlook.com
 (2603:10a6:802:1::43) To MW4PR11MB8268.namprd11.prod.outlook.com
 (2603:10b6:303:1ef::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB8268:EE_|MW4PR11MB5935:EE_
X-MS-Office365-Filtering-Correlation-Id: aace988b-cae3-432b-88c3-08dcc6c1545b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OUJFbFdiUFpUWE5MbHQ2c05XVHEyOUsxb1FuYm9qemxlblVPS01ZeVRTTndE?=
 =?utf-8?B?TXdiMmFoOUdOejlHbVZwMHBwWUNOSXJibmRRMVdmTkdLR2hWUXlaM2FMVzZx?=
 =?utf-8?B?OEtHSjh2TG1yYTJCWU55TUw5R2RhQUUrN0J3WlhEYlFiVll5NmlEc3VZRWtE?=
 =?utf-8?B?dmhwbGYxUmRYRXNySmhZVmdPdStkTnRkWmppZUhTZFZUbVNQQXZhRUlnREtB?=
 =?utf-8?B?b3FYckFydmdBcVEya2hUNUZlS3R5b1V0UmxRbjBjRVdYMWlVaWtGS2E1cFlo?=
 =?utf-8?B?NGk2Y2sxVXpOR21zVzM1VkdkQkE1aHJTeFVlaDQ4Zkl1REZDNnpaZXBmbC92?=
 =?utf-8?B?Z2llZFMvamdxbzNsTDR5cjVrZXkxb1FrRXdZcm0wSGZoL0RQZURmWHkxTTJh?=
 =?utf-8?B?Sm5jckJpbFRYZmRGSFdRSXRMY1JrRmRsdCtlZjRvZEgxNEY0Mkx0U1l2YkJF?=
 =?utf-8?B?eWJhdVUxQUxXbDdBazc5dmxSMEtSdTVSWE82aGZkY1djS0JhNkoxdEErSVdP?=
 =?utf-8?B?S2J6TVNxMzJsdjVYSWJJL212ZW81LzBwSGwzYk53eGxYdU44NVBnMzZXeWlW?=
 =?utf-8?B?Sm5XaVlVRG50RzVrQ3pDZ2pOSitrZDRxY3d6Z29GaWtGVVpFSDV5c1ZpU0hS?=
 =?utf-8?B?QmJlc09ORUU4Yk56Wkx6VE55VW02enhXYW1jOWZzcEQyeW5TNURrZGUvUExi?=
 =?utf-8?B?VEJiMmdMSW9HcE04dlVFOE16emVwRnlNZXJ5aHJFRHZGVnQxSnhFaWpWWGp1?=
 =?utf-8?B?S3IwR2tDSDNlLys3YlREUUsxN21Db0JlMDcrUUxtTmJRV1haOTRWdU5kQ1g2?=
 =?utf-8?B?blpQc3lSL3ZDVXZBbnlwZXdPN0RBdy91UDVwVE11bzJEVlhwUGYxMnUxN0w1?=
 =?utf-8?B?UVF6QVozNUNMV2RqWFZRUWhiMmlZMXo5UFhoM0xSN2tQSmpuRXBUQlZxUnVu?=
 =?utf-8?B?SDJuWE8rdmR2MUZ6WUMwRlV5dXJFWXpRbktkNldSczdEMGt6Y1Bwem55bzVC?=
 =?utf-8?B?Sm1hekNQZk9tVWFKdTQyaVZWUXphS3dCR0t0T0UxakJ3aTdRcXM1eUM1d3VW?=
 =?utf-8?B?VlBLYmErUHE5cWYyUFFFUURveUVlaDQxQU0yS3BwSmI1Z2hEcnpDelBFTzFo?=
 =?utf-8?B?NURwN3o2eVgycG10T2ZYTXlqMjVmeXdPVHF6dHBXSFg5dzJIZGVBNWtEeWh2?=
 =?utf-8?B?Y1pFWTFaNlJESk8veUl6NU1wSnVtNVpQK21uNmxwUE5obFZmYktZWDZQc2p2?=
 =?utf-8?B?MTYwT1hDRzdkbDJXWDEvckdkSmJxUkg5a0F4SXQwU3JjSFRVM0RPZndJbkI3?=
 =?utf-8?B?S1ZzalNLdjU1bFNZdXhPWG95a3VoeUlheDdFOUF0SWtQdE5PMEhCMVNaRU1V?=
 =?utf-8?B?aHFGRkhxMzFJa0JtSm5DMmE5dytrK2J5WERVWjVhakJqb2ZVNGp2N1BUYkJD?=
 =?utf-8?B?OWtPWWRMNFlqU1JjN1R0aHBxZlMxTC8rYjhJU0N2a2lIYWpQSG1rZ3BXVnF6?=
 =?utf-8?B?TWM2RzhsWjZJUXdrNTJSZ2xBaTFWWXMrV3VOeVZiUldCVmRiMENOUEtxVmV6?=
 =?utf-8?B?ZmRBYXJPTmxObXdwSXVwemtwN1dJeXpIQzdSL242dXEzT3Y2Y1ZKMVgwUk9m?=
 =?utf-8?B?SkdaOU56eUJXYU8xclZtVDdJZXlKQ3Ewa2NxSDEvNXdJc2VybjF5SFRhL1U2?=
 =?utf-8?B?djZET1g2UzFFdlBCcURUWWtEblRNTEgwRHhQdWxsMXE2Q1ltTU0xNVhCWXRz?=
 =?utf-8?B?ZWV4VnZuQ2J2S0RkazllNWJWS3A4TkdWT3ozTUd5MTdQOFBMeDloVjQzZEgx?=
 =?utf-8?B?Q0E4aHlPQTVRYUkyVEtFUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB8268.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VWd6UFdvSUttc3pWTU1tK0dOQThEQ2pKZEFXWHZJb1BkWTBqZjB2TGZsa3k4?=
 =?utf-8?B?TnZIaE5GT0orU0NZdHlUZmhzMW9Db0JTeFFFeGN3elgrNGZjMS82cHR0SEQ3?=
 =?utf-8?B?c3NKRWlOQ2d5THFVM2xRTGNtbzczNjdOYUNZZlNSMEdMRUIyNjdBTmZmS1dD?=
 =?utf-8?B?R0VmMmlySzdYQ3o1MVZ6VWJDSldvOEhqU1ZpSnVuQ0Y4c1c4L2pjSC9BZWhU?=
 =?utf-8?B?b3Z5Z2l4bU5ETkJnWEgvL2dVVE1adG9jeDRlZlVYZnFtUmRxZkFOWmdCUWtp?=
 =?utf-8?B?cVorUG5QeklIK3JkU0ZRM1kxS29JYXk4WTBGeURONGxJcFkzMnlEa3Nxd0pM?=
 =?utf-8?B?cTk2ek1RWi8wU1d3RFBDZHBQUnM4ZDd4dlBGL2J4aXFRUUM2OXNGdkV3elp1?=
 =?utf-8?B?U1Y3bDVKMjhCQXJVcDZGUy9HV0cyR1BWU1ZSQnkwZldXdE1zcXZSWk1HMG4x?=
 =?utf-8?B?RCtTYUhQUU1hd01QdVNuWmdpKzdWb1BPZTcyYjZUWjAwVzd1aTRNWDBJUWMr?=
 =?utf-8?B?azl0NmlUQU1kQ09MNnk3QUV3cWxuaUhvcWNyaTZLVmxXMER6TnZQSDJWUjZH?=
 =?utf-8?B?akxFTnYyb0RhY2k5T2V3cUpnWW5TTUhhbTFoZWpjSEtFd0NOZ1RzVDlIVTVW?=
 =?utf-8?B?YTViL243Ynh1RFVyK3Vmb0Y1cURqNWhBN3d4U1JyU1hjZFVyY0JSU2ZXNmIr?=
 =?utf-8?B?cnlVNHdtK0NNM3BDeStGZXlkbVVEaFFxNzVXQWVsaWpwVlkwNjVkMEIwdWps?=
 =?utf-8?B?Z2hSdGJyY016elRmeS9YcHN5NXJObTU1MFZxRCswU1ZDQ0xwUU9ORU1PRHlG?=
 =?utf-8?B?dmNFSHd4ZlFBY3dzcnk2SExjR1JSTVdGNGlBT3VWdktEZHE0enVTczAycVlZ?=
 =?utf-8?B?d1hCd0tIUkV5NEptWEJIaWNsTGFuSmh6bWVaSjZhWFhqSEFBa1orcEF1TEEz?=
 =?utf-8?B?R2xncTVoZUE4STR1SEEycWRxZ2NpSExQeTNWVVJKYmp6ZWRRa2dUUlF3R0pn?=
 =?utf-8?B?ZGk5b2NnbExidE1hTm1KZkh4MEU0ME9mN3pwem1iMHBrb0FzOTZPWlNjVkxz?=
 =?utf-8?B?UG9NRWlBQ24yeGI2b3JyVE1zR2xwaFBoYThGdGJqdnRwVllpSW5iWjZ2eC9p?=
 =?utf-8?B?OGE3ek9yZmlHck9ET2VCRlBrQUFobWp2SUE4eXV3a083WEhwSGFieG82ZFpm?=
 =?utf-8?B?RGhucVVzcEo5eFJFQW9UblUyR0gxMmowOE1TaEpiWnVRYmlSRTRwY25HNUs1?=
 =?utf-8?B?dDJjaGxGT1NFdGNCUGI5NHM2c2dxa09heHA1T0JXT0VVQld0THBLTGlWZFFJ?=
 =?utf-8?B?bnEzZEU3UUhvNlFzQ21vT2hiaHNNSDRJSmZIeVM5d1JSclVwL1FKUld4SlRJ?=
 =?utf-8?B?YnhRZ0lvWXdWeEI1ODhDMkc2N0xJdDBTYURDYnJPT1FlTmVuVWFHSVgvOHcr?=
 =?utf-8?B?anB3c2h4SVNObFFjTFlpV0xPQy9pMkRJcUJieUxNYkVzSkJvdVZzUjFKSUdC?=
 =?utf-8?B?QjkyZzEzVGtXYkFtSWE1VkdiQ1lkdHVpaGhKYUcvT2FXd0cwakRTcVdzOGVU?=
 =?utf-8?B?Rko4UmpnejQ2K2RpQXliRG5CZXNZakJscVVycVY4UGo5ck8zbmk1d0FkRnV2?=
 =?utf-8?B?L0QzRDB6N1MxaHBKT29LZklQSnNSSjNET1V4NngwY2Ixc08zakVzcjhJdUNW?=
 =?utf-8?B?dnlqMHMzZ1ZxK2RyaGRveWJUb1ErUmZrbU9MdXMwU2xydEo3NlNIejR4QkVN?=
 =?utf-8?B?bHlFWkVnSTVkOE16ZWxpNFJKVlFYbXBCSkt5SFRiTTNGMngwTFdtMUZ5Vng5?=
 =?utf-8?B?M1RKd2p0a1lsQXFRcDdhRWo4a1pWMmhRSmkyaWZQeXpuWHFiemJkdkxKOVNJ?=
 =?utf-8?B?eC92OUw4dis0NWJ3ZWU4MkNpbW0rK20yRmM5eGhrVllTczZPTHpCQWJkUjRV?=
 =?utf-8?B?TklGRHcwQnQ4SVpvdlhaTjh2SFRJa0R2b2pFU2pRZW9OdFB2K09OelpRRGF0?=
 =?utf-8?B?WnJWUTZ3bDdRNTMyNTJhNTBVYzBJanRydmliSDJsYVJIYTB3Qm1pRGlqdXpm?=
 =?utf-8?B?YnBBem9CcWkzYi9JRktFSTlHdGNlTWxWRE1Rb3lJWmE2UTVmcEIxakRpZE8y?=
 =?utf-8?B?empvRjhFQkJZK3VYUloydStnVDBqRGVYcjB5TkRkWlNqMmdrcGFmMEcvbTA4?=
 =?utf-8?B?bUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aace988b-cae3-432b-88c3-08dcc6c1545b
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB8268.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Aug 2024 17:54:42.8932 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eUHMmldZRnI9o6yb6VsVTg8Z/1VUIx3ej0nO+H56rb3J4R7Li//tc8FTpmP/0fspKCynYFBP10p2+YusprBR02pZSwg1HReBcg3B3xFAT84=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5935
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724781287; x=1756317287;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yiu6WnwypRhLUwxpNr88OO1I4Z4B3AIc9EpH5lyBoFQ=;
 b=R9r1rVuhrfnaB3p53iptFOUbAdbPnF/IZVTMjckSkmRykXjJSwx55wU7
 CsRw5MIaPbUYdgadbDDtaLnfdrEpsT8ofr19mX5rnbWuBqXR34Yh4m9tz
 VIWrHUVTsfnjtWk7U9h6gJEU+dQ+u9lB9wkefi/PHwVzRCVYlzvOpBUR0
 yhkXKA+FW+IVijvS79bwy/7c5UUzgjBfp+Vf1e+laWoFehcfhtqcCWTcm
 ei8kKhbJf4X2f32J6PoNsa2clPUp0tyfiHb4C+l/qvATpnN/Cag+gtcZB
 vKOkNndjBDxmOKfwm/7fNy9XU+LQRNPnJR7a2cXWRSY+tkMxuL5N7RurC
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=R9r1rVuh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] selftests/net: Fix csum test
 for short packets
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2024-08-21 16:32, Willem de Bruijn wrote:
> Krzysztof Galazka wrote:
>> For IPv4 and IPv6 packets shorter than minimum Ethernet
>> frame payload, recvmsg returns lenght including padding.
> 
> nit: length
> 
>> Use length from header for checksum verification to avoid
>> csum test failing on correct packets.
>>
>> Fixes: 1d0dc857b5d8 (selftests: drv-net: add checksum tests)
>> Signed-off-by: Krzysztof Galazka <krzysztof.galazka@intel.com>
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 
> This is not Intel driver specific, so can be sent straight to net
> 
>> ---
>>   tools/testing/selftests/net/lib/csum.c | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/tools/testing/selftests/net/lib/csum.c b/tools/testing/selftests/net/lib/csum.c
>> index b9f3fc3c3426..3dbaf2ecd59e 100644
>> --- a/tools/testing/selftests/net/lib/csum.c
>> +++ b/tools/testing/selftests/net/lib/csum.c
>> @@ -658,6 +658,9 @@ static int recv_verify_packet_ipv4(void *nh, int len)
>>   	if (len < sizeof(*iph) || iph->protocol != proto)
>>   		return -1;
>>   
>> +	/* For short packets recvmsg returns length with padding, fix that */
>> +	len = ntohs(iph->tot_len);
>> +
> 
> Are you running into this while running the standard testsuite in
> csum.py, or a specific custom invocation?

It was with standard testsuite in csum.py. Not on every run but quite often.

> 
> Since the checksum is an L3 feature, trusting the L3 length field for
> this makes sense (as long as the packet wasn't truncated).

Ah, I haven't thought about truncated packets. I'll add condition to 
update length returned by recvmsg only if it's greater then expected.


Thanks,
Krzysiek
