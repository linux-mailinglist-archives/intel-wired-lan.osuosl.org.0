Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 40352A8A15B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Apr 2025 16:39:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F47A83EC1;
	Tue, 15 Apr 2025 14:39:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HTFBiuu-WldH; Tue, 15 Apr 2025 14:39:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7AAFC83163
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744727965;
	bh=Ceah23uTYw873GvIaEEW3GiOt+SEDDQZubpphesmKTI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PGzX6yXrARa80s+lH6HFDl0t3HFtJD9YHwSU30L8oqgBbRb5G8rQsZqL1wipI/D03
	 Jo9KsYi25xztzy9wRMadxuKLLyuSps6XDe/aNAB99JZ5A7yv1U24EwWAddlY2ePrId
	 thcys50Ulz9dHJYd7lPU4ViKrUNOnQwuEV7t0b8jNB66RXPA1FeVJs4CmLkMKOHKpq
	 xSlrvl7drOcDsrn4KkBTrWEPuomCnDWqDS3AIXkGQhl1HfpcDoGdG2VmRzIXo18Uyd
	 OX+KUFxq273wH0RvxZGL4W7VeedNWSpEzU3jut0usXUGf+hNw2PCeHcKKRgJVi9f6B
	 aTG5vYUyCLI+g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7AAFC83163;
	Tue, 15 Apr 2025 14:39:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B94C2109
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 14:39:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B618140318
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 14:39:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pX_ZQ9y0hZ8a for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Apr 2025 14:39:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7D1F4401AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7D1F4401AF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7D1F4401AF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 14:39:23 +0000 (UTC)
X-CSE-ConnectionGUID: AW6En+CKQ/Snhpbhytg4GA==
X-CSE-MsgGUID: gUt1NmAXSE+voEzeMnRcrw==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="46406456"
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="46406456"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 07:39:22 -0700
X-CSE-ConnectionGUID: ZFxpexCjSMai3QUZqfk6AA==
X-CSE-MsgGUID: SD7NPWJTRBeueJjPu8ck2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="130669247"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 07:39:22 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 15 Apr 2025 07:39:21 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 15 Apr 2025 07:39:21 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 15 Apr 2025 07:39:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Zwxug1ig5iOs1vMAnCkjE0dyDG5sT/sduVFyw5zfxaIr3qol8d6bXi61MuckugnXvkugg27BANnR6DKKQWd6H5a/AIk2m6a1xHAlPkZhE20ZQ830VOHXI+J7aj71tnHpOiSKqOHCeZLKlZIES3YTy/1YhTJzVepm4l1NEf9RfuVVqtFTx+WcyhGw/9+SwtVwgYALa6xZazLuWedOqYGrsHhABbmNLq2rlcSJTt5GSQ9OOleRaBd1oPSE9dwQ+u55el08eM1bsam3GZQGh5x67W7BLPsASysLDaas3HrupbYy1+ik+8zbvXcvffXzONdLu1tIlUkUv4RSu7/+zhfsZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ceah23uTYw873GvIaEEW3GiOt+SEDDQZubpphesmKTI=;
 b=X04+JF995fJrTUV+w/NLpnyjG9Jyu6wS64AEpYr5XVIUFS7zCttiCbWXfEZlq+vsPBliWWrvZ/lI1HcLE+lPVp215zMkrErr5eO4Yy4M2SmMm2Gi6R6nqxzKrICiSl/pGU0/DEuU4RX/PPQxdFrar5uNuNTaXZi02ikCZbL5tIDOXMSnLdR0anpbokcVgGDLIhHkb+dCHX8nxqO8wxVs5u7UIkhBp9+ZO1hKTVw1/EPMNAy30aaYMzXLsujClbUy8ldszIG4Iv4cHYenw5u1UcN+UwPROv61bhvF3O8f2OXgdkMHJu75/hHdj49lUqIp8wj5E0EbSsgOD8Z4pyICPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH0PR11MB4838.namprd11.prod.outlook.com (2603:10b6:510:40::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.35; Tue, 15 Apr
 2025 14:38:46 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%5]) with mapi id 15.20.8632.035; Tue, 15 Apr 2025
 14:38:46 +0000
Message-ID: <4a061a51-8a6c-42b8-9957-66073b4bc65f@intel.com>
Date: Tue, 15 Apr 2025 16:38:40 +0200
User-Agent: Mozilla Thunderbird
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
CC: <jdamato@fastly.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>, "Igor
 Raits" <igor@gooddata.com>, Daniel Secik <daniel.secik@gooddata.com>, "Zdenek
 Pesek" <zdenek.pesek@gooddata.com>, Jakub Kicinski <kuba@kernel.org>, "Eric
 Dumazet" <edumazet@google.com>, Martin Karsten <mkarsten@uwaterloo.ca>,
 "Ahmed Zaki" <ahmed.zaki@intel.com>, "Czapnik, Lukasz"
 <lukasz.czapnik@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: WA1P291CA0009.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::20) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH0PR11MB4838:EE_
X-MS-Office365-Filtering-Correlation-Id: 5fcb8f0d-487b-4591-a601-08dd7c2b3a7e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cEFuUE1ubjBmUk5jblB5Um00U3ZSQmN6N2svUGpEYTFXWHZDYXhBWlhGYzZT?=
 =?utf-8?B?Z3ZzVEtJN1VkL0hNdHZwNFlMYzR2R3dEcDJFMCtzd2tZVXErVUo0U2Nod3I3?=
 =?utf-8?B?czNTM2R1Vkx5MEFpTTZ4RGxSQlhoQkQrRWVOSmlVd0krT0oxQWlHRnlhNVV0?=
 =?utf-8?B?YWN2cVdqRlNlQWhORjFhSHluNWt6emhXR2k1bEEwZUJqZnEvZ0JwVTRKWlFD?=
 =?utf-8?B?NitMVXNzMldhclhkNW9MaTlkTEJWR3lySmhsT3RUdUtDNWNaQk5yMVdUZU56?=
 =?utf-8?B?VWVPY04wMEhvekd0eXBtczdwM0FmVHY3cEJGeDdlMkJuZjVZNXROY2ZZbHgw?=
 =?utf-8?B?SDlsWSsvMXNrVUVqVjZSblM3TDdZdWtKb2xpM0Y4bXVQNElXYTBxK3lKWG1o?=
 =?utf-8?B?czNmM0V6UHdWMFJNbTRqVnlVMEpBQ2J3S2tXYU1JWUx6a0tuSG9RUHhYV2hv?=
 =?utf-8?B?N2w5bXU1NWJ1djhTbjc5Tzg1ZGRwNExPQUNqM1VtdERNcEl6dExUbXhpeitj?=
 =?utf-8?B?bUlORzhxa0V5U2ttWWxUTkRzSUc3ZElWOUt4djgyZ3dURldGQWQxNis2NjhT?=
 =?utf-8?B?bFFnRDYyZlhFK0dReXdGa3VLUnF6NkJValhHYjhYU2ZSWmp4Wlo1aHhoMWwy?=
 =?utf-8?B?WDlCK2R2WUo2ZkY4MzFEQ1hmMStoeVNxQzl0eUpyL0dicFVPLzRManI2TGNB?=
 =?utf-8?B?UHU0VjBUMXNxZjdzaXlaS1p1MVNHd3greklYWU84QUtUaVVMTHluZ2ZBQ3px?=
 =?utf-8?B?TnFSMjhIdG5xQmFrNHhsSGR4bjNDWWFMVlN6QmxEVGJ5UFNGSmYzMzVFSGtp?=
 =?utf-8?B?UVduNDQyRGp2aGk4cWIzNm85VlRmcitmTlVNL1ZudThhYW1XTkJjUjN1TjhW?=
 =?utf-8?B?cHdxV1RXekpwNm5GT1Yydm5qQlpWMVE3UkY4VHV0cmJyazdLSHJsdjF6aDN6?=
 =?utf-8?B?UitiOGU0ekJ4ZFltbENLRnY2MGZKT3NKQ3V6ZmNZck96S1VjWnZSRlBGQm10?=
 =?utf-8?B?VlpMeEcwWC9OK0NyWDUxOG11KzRodVFndk1xOGdqRGt1S0JyVFhxRlhGcS9n?=
 =?utf-8?B?TDVYbUY2YW1RdEJTblZXMjJoWk8rM0s1QmhsYW5pL3pMRXVmM1c4OE1odkFy?=
 =?utf-8?B?dGhZQ2IzT21TbkRtaEE3QU5XeWd3RzlYVWRlNThvYUl0SXZxWEVVcGt0Q3Yr?=
 =?utf-8?B?dGZJb2F2UC9CWmg0UzZDWTFuZFgzVTJ2WitSdDZOS2R1cmdqWGtxcDE5U3RR?=
 =?utf-8?B?cm5yTEhmN2x1QmVza1dTZEhsVHJzM0JWS0pDSm5QczhRODF1cERTVWcwMThu?=
 =?utf-8?B?eDFsOWZuTTA1aGlMdEtDbWJWbHJVbDNEdmErTCtQTE5SRFBBaFJGTFlpeVV5?=
 =?utf-8?B?azNoZi8zc3FVUENsdWhLT0gxMW85VW84TmNHdWdWQWpFb0RZdW1abXBPK3N5?=
 =?utf-8?B?NUhsL21saEIwclU3R2RhVHlHS05WUlIrdVRPUFl1QmxiUXZZakNBNkJURi96?=
 =?utf-8?B?RTR0MFlUdW1TWGR1dWdGZE1PV0Rla0szdktFbnIwT1lqTW1aZmpsa3dtemUr?=
 =?utf-8?B?UVVHVEJLUnhHaUIyaFdqOUJtR05CNzlwZUJQOUhSSjBWWFg1Y1pUNGo2SEds?=
 =?utf-8?B?dWtvNHQvSkU2Y3l1REluMGhEZmh2Tyszd2NYSTI3TURjWXpqSTNkOXZFUmE3?=
 =?utf-8?B?Q1N2bkVRV3VlSkhYNmVKZGxHaXFpSHhsb294TDB3dHIrcXN0SU9pNmZ6TUsx?=
 =?utf-8?B?UER2SGJ0UGUwSWYwRDVJcGs4RDgvVWxKM1ZFZGNmQit6bUxCWmdhYmJPdG9I?=
 =?utf-8?B?djZ6REpabENzbTFWelNWRWdraEd4QXBETU14SlRLd1k0Ui9tU1d5dWFRcEZO?=
 =?utf-8?B?QXZ0RVl4Q1pDQjBydG0wY09PWUdrTTZUZmxxQnJjMkhxblMrUHhLRlljZTB3?=
 =?utf-8?Q?0HzrK0MdYvI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eXoyZzJ4WFVrM2ZxaVl3VUwyU1RZbGxTdjMybjNKSWFmaHc3dHZvUUhFenVC?=
 =?utf-8?B?ZnBaYTFNU20vc1VYRGdzMitTbjhGdkFEcDJwSmFibHR0RmtKUWJwbDhDSWJV?=
 =?utf-8?B?S3drUmY1QmVpSk9yRzdub2NVTTVtYjZ3am5LMWNnYU1iZUNtVnlob1htTzAx?=
 =?utf-8?B?ejBKc1hDTWJVWTNkckwrd0p6REpVc1JqNlRDK0piVnU0djBDZHllUGVIVWVB?=
 =?utf-8?B?S3EzVTBCTysyV29wS2Npem5XcEdUQVFDTm5ITU5TaG4xV2pOMXZsSER0QlN1?=
 =?utf-8?B?UjBvMUhobVB3RnlSdDZBRkJ5VTEwZ3ZRRkMwRkJwOWVIS1U0eERoVkllTmNs?=
 =?utf-8?B?dXZadm9xaTNlN1VrNU1Db3kyVC9PNGhZQ3BwMWNLQkhDOEd2SENCdExER1Rm?=
 =?utf-8?B?TGpvR0lTU1o1cUJhaVluNWd0YTVoaGNJL3BLQyt6WmZYQXYzU0dQUkVaeVZp?=
 =?utf-8?B?ZTJpUlpzcU14S3duSGtBTUlaKzdvMUZvcitDalZ3a3ZUR1VmZFJJNVlyRjds?=
 =?utf-8?B?cHNXU1ltVlpKNi9aNWtLMlJaSHNxRWNyZ1gyNEcyYU9VckZFb1QwUmR5QjFM?=
 =?utf-8?B?MDRLMGtObUhWVng1MkxqL0wveExQUmI3NHJ5ZTJmN1U0UjhHSmpRUmtqRjZi?=
 =?utf-8?B?ZStHM1k4WmIwSEt5Q2M0UFBldXlHQnBlcWdOczVQN2NvR1lPZ0ZaTE1PbCsx?=
 =?utf-8?B?SUJ2OE5XK1prV2dlR2RkNXV0MFJZbk1WemozamloS0FPVFB6NDdrcXV2SFh1?=
 =?utf-8?B?NjE4VmlPbURlOHRTSXdIckJpVDlxcjFjQjE4VmhMODZsRUJ4Z01OeFdkTGFN?=
 =?utf-8?B?Y2JwWTI4QnpWOVZ0aEVIOGphc1ZsRXdXc1loRVVNRWtmOVZSR0EzdkNKRjlh?=
 =?utf-8?B?TFVYdkk5Ly9oR2RobjRpVStPbWhQUTIxeGJ0WHAyMUU4aDBtZ3E2R09qYmtl?=
 =?utf-8?B?cUZRUzNSMXVBeVBLZWp6OE4vcWZDRVRJWkt3ZFNRT2xnYlA5V1lhcmR4YTQz?=
 =?utf-8?B?MUZwNUVzcU0xVldxTjdwMGgyemgwOGcwSmFHUXhBS29OUzdNSWJtbkZVV0dn?=
 =?utf-8?B?ai9VVEFLYndvWWxUdTZRVnJkWnIwMEI5MFRuaktxcVhZeUpJYlo0TStNczVY?=
 =?utf-8?B?cGJoMUdKeC9CREMwNngzMXNLN2JnNlN6R2g0QUVYL3Z5cXViRWw2N2dmMjNp?=
 =?utf-8?B?WkgwQkk5ZWJEdkpFWDJTL0VMWlg1M0tBOTBuL3kxNy9lak9YZVlETjRCUDNQ?=
 =?utf-8?B?ek8xdUtHdERpcGttUE5EdUk0VFAxNXEyZ2RFZTJDcEZncXZuZkNYN08yclor?=
 =?utf-8?B?WVkva3p1YVFPVysxRXJPSUpwclBPeU5YR1UrYVJBS1EzVXdTOHFiRXhUZWY5?=
 =?utf-8?B?V1RZYm5SOGhNUWZDTXViakRPWUlkUXR4WGZGZUFoZkpHOFVtUjQ4bG03UDVS?=
 =?utf-8?B?a0JDazk5dUNpbFNIMXRvQXN2Rk93elJUVDMrUGhKS3hVU1czNVFmbTcwbDZX?=
 =?utf-8?B?UWl0Y3hBT0pWNDZ6a2hQbTF1UCtPa1FHZVdGNG9Qclc0Ty94UVNUSFhGY1lh?=
 =?utf-8?B?K0Nuc25LSW50ZklSOW85aEJqWm9COTBDRThRUnczTFZGcHJUVGZkK0J2NE1K?=
 =?utf-8?B?b1BLL0xYR29QWjdUWFJ3RFJLYm80YzZ5bkNBRmRHam9oMURZSUpxTU1DbXFY?=
 =?utf-8?B?Ny9BRFdQb3ZoMEYwcmlndzNjcGVMYXNuSHp1MGREWHFXa0k0S1hsaFlJY2d6?=
 =?utf-8?B?V25MRG5wbG0yWHNTeHY2dVFjSzVVWnhUOVJLRjVUOHRQNm5CR0FNdFk5ZGpi?=
 =?utf-8?B?bVMwc2hZTmJsd0YwbWhaRGhieW5nemhQQjlOZ1R1TzIzWStFYVM4bGdZTHBQ?=
 =?utf-8?B?ZFB3TDFDWXVzZ0RHaEQ1RVBpSkoxL0wyck5qQTgrVWpFMndGVnllSFhCZUQ0?=
 =?utf-8?B?b3MrWGxCdThFdWtVeTVHb2k0Ny9FU0lmUC8xdmFXdVZvM29zNzh0cjNjaVVk?=
 =?utf-8?B?d0FWOS9iOWhVRmhhTmdqaEQ5cUZ6N21oSTFkdVhDMzVaS09IU1JnS0VSNklT?=
 =?utf-8?B?VnBWS2hwRTA2am5qOXBod2ZiOE9UQTJyYktMd01Ra2ZMOFcva3Y4Ukk3bHFp?=
 =?utf-8?B?NG1xdHVkZk0wb2JEd1FlTERid2E0MXRGS3grbzl5MUpGVWY3dHJ3VkN6QzJk?=
 =?utf-8?B?ZFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fcb8f0d-487b-4591-a601-08dd7c2b3a7e
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2025 14:38:46.5763 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cMlWxlC0B/SJvTfvbykTVqoOlrAgO/l18iXc5ulg0EAqCHaynVSWMNlOyQYFItVpwY1dMdTvRfrTEdXQuwhKyiYfFEPL9WHo0dcXdj3qLaU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4838
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744727963; x=1776263963;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JDlEpGTjplQcbXRrzDUInb4BbEctbNloO1busHY6x2g=;
 b=nVhxa57C6iKokERKU9/+aiBt9ycG1Bc3OklgPSTUKu8Hsov6FkRlgkwU
 t3JMArRsdrUa7908AHXqNN5sogvpyr3KlJLzNpoWdtbQLnoREjl/O2Mvv
 CNYF6NrQVzg8E3FAtkq0DjKSMwlV7wUtCF1knYWeimv6zAbQdK3ypJ1N2
 BrIvut4l0gbq62DIcsHUX9a0tdHTmUiPYfRyvH/8hbcWn6XKx+TKq0G1c
 BRqmnS+eL8kJiWbnOwHIqWa290Y7se4+S21mxMMgoWmN5ZaMaGKwaURZN
 hvE4/ZL3XVBxIo77oWbHy1xye1xsDxdvz9gVpq2jqQbTOAQR2SjUChYae
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nVhxa57C
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
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

On 4/14/25 18:29, Jaroslav Pulchart wrote:
> Hello,

+CC to co-devs and reviewers of initial napi_config introduction
+CC Ahmed, who leverages napi_config for more stuff in 6.15

> 
> While investigating increased memory usage after upgrading our
> host/hypervisor servers from Linux kernel 6.12.y to 6.13.y, I observed
> a regression in available memory per NUMA node. Our servers allocate
> 60GB of each NUMA node’s 64GB of RAM to HugePages for VMs, leaving 4GB
> for the host OS.
> 
> After the upgrade, we noticed approximately 500MB less free RAM on
> NUMA nodes 0 and 2 compared to 6.12.y, even with no VMs running (just
> the host OS after reboot). These nodes host Intel 810-XXV NICs. Here's
> a snapshot of the NUMA stats on vanilla 6.13.y:
> 
>       NUMA nodes:  0     1     2     3     4     5     6     7     8
>   9    10    11    12    13    14    15
>       HPFreeGiB:   60    60    60    60    60    60    60    60    60
>   60   60    60    60    60    60    60
>       MemTotal:    64989 65470 65470 65470 65470 65470 65470 65453
> 65470 65470 65470 65470 65470 65470 65470 65462
>       MemFree:     2793  3559  3150  3438  3616  3722  3520  3547  3547
>   3536  3506  3452  3440  3489  3607  3729
> 
> We traced the issue to commit 492a044508ad13a490a24c66f311339bf891cb5f
> "ice: Add support for persistent NAPI config".

thank you for the report and bisection,
this commit is ice's opt-in into using persistent napi_config

I have checked the code, and there is nothing obvious to inflate memory
consumption in the driver/core in the touched parts. I have not yet
looked into how much memory is eaten by the hash array of now-kept
configs.

> 
> We limit the number of channels on the NICs to match local NUMA cores
> or less if unused interface (from ridiculous 96 default), for example:

We will experiment with other defaults, looks like number of total CPUs,
instead of local NUMA cores, might be better here. And even if that
would resolve the issue, I would like to have a more direct fix for this

>     ethtool -L em1 combined 6       # active port; from 96
>     ethtool -L p3p2 combined 2      # unused port; from 96
> 
> This typically aligns memory use with local CPUs and keeps NUMA-local
> memory usage within expected limits. However, starting with kernel
> 6.13.y and this commit, the high memory usage by the ICE driver
> persists regardless of reduced channel configuration.

As a workaround, you could try to do devlink reload (action 
driver_reinit), that should flush all napi instances.

We will try to reproduce the issue locally and work on a fix.

> 
> Reverting the commit restores expected memory availability on nodes 0
> and 2. Below are stats from 6.13.y with the commit reverted:
>      NUMA nodes:  0     1     2     3     4     5     6     7     8
> 9    10    11    12    13    14    15
>      HPFreeGiB:   60    60    60    60    60    60    60    60    60
> 60   60    60    60    60    60    60
>      MemTotal:    64989 65470 65470 65470 65470 65470 65470 65453 65470
> 65470 65470 65470 65470 65470 65470 65462
>      MemFree:     3208  3765  3668  3507  3811  3727  3812  3546  3676  3596 ...
> 
> This brings nodes 0 and 2 back to ~3.5GB free RAM, similar to kernel
> 6.12.y, and avoids swap pressure and memory exhaustion when running
> services and VMs.
> 
> I also do not see any practical benefit in persisting the channel
> memory allocation. After a fresh server reboot, channels are not
> explicitly configured, and the system will not automatically resize
> them back to a higher count unless manually set again. Therefore,
> retaining the previous memory footprint appears unnecessary and
> potentially harmful in memory-constrained environments

in this particular case there is indeed no benefit, it was designed
for keeping the config/stats for queues that were meaningfully used
it is rather clunky anyway

> 
> Best regards,
> Jaroslav Pulchart

