Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AKa6DaK6tmkyGwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 15 Mar 2026 14:56:50 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0269E290D40
	for <lists+intel-wired-lan@lfdr.de>; Sun, 15 Mar 2026 14:56:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 00B4E4106B;
	Sun, 15 Mar 2026 13:56:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hBO5mlxhD-hr; Sun, 15 Mar 2026 13:56:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5ACF741110
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773583003;
	bh=P1IhabHyG5aTPHRyDnr78eZi2dqCdK8mxLc/pUYd6Cg=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NfuE3igWpr7TmlDutNM/W6WzVsy1ShB5AWK2PNKPXq1WHe7mIExJpKgsP2ZXlNq9F
	 82GaLS1mbarfubk1TeaC9yrYKe1mVm6fDE3S6OfW0kYbmof3pro2wva23rDt5PP24o
	 wBJW0NNajLPiMjRUG9D91XHjScWDUm2SjmHHmobwXnqzHShxZeb8J2DB/5o9iL0aW0
	 olhj6OcGE3SKWx43TF0LOwd3uf62wPbeM2Hp1qQvJ4jt2EbB+5MdqK/TswHiJl6CJo
	 mtlI/8RWsJyWjB4N9+K50Je9AFvp/F13OG84ywliaq4nkKFWANGZvoBpz7HouADG+l
	 vjj36qGxsemNA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5ACF741110;
	Sun, 15 Mar 2026 13:56:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 53709201
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Mar 2026 13:56:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 38D2F40151
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Mar 2026 13:56:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dBrujB1glYSg for <intel-wired-lan@lists.osuosl.org>;
 Sun, 15 Mar 2026 13:56:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=dima.ruinskiy@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CF19040139
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CF19040139
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CF19040139
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Mar 2026 13:56:39 +0000 (UTC)
X-CSE-ConnectionGUID: 7lD/OH3DTdSeq+1tBLcqNQ==
X-CSE-MsgGUID: qIgaG6m1R4W74qnl6EOGBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11730"; a="78465210"
X-IronPort-AV: E=Sophos;i="6.23,122,1770624000"; d="scan'208";a="78465210"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2026 06:56:38 -0700
X-CSE-ConnectionGUID: 3UpYE9C8SnSyb+u5Op2fsQ==
X-CSE-MsgGUID: Nld/up3mSoysGZOxh8szzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,122,1770624000"; d="scan'208";a="223929958"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2026 06:56:36 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 15 Mar 2026 06:56:36 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 15 Mar 2026 06:56:36 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.38) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 15 Mar 2026 06:56:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UJC+76vX77qNk91AG0JcvBukmF8Jsi3DWA9Y6YDX5TlKZzdjNqzmegOsvStmofnJuZLIaHFz+C/Ra7v7UBdCBk4eIVEZPIWwWh53hl2jLVIjxgb9eMxnhxtb1x6rOWVDyOfN2FZGYoAXzuvyB9v/MfZwOKcrUKgxKSs+nXbO/u7EmxGSVx3aZZNQ3U3rWZgT9YC1GPCpr3PhP4w8GpqA2zZoXO2PvWxICaoDV5ABTzGO8+QXlmURGKu4Zwk1gDUpoKWwSe44DHRSxsAuuTZlgxVCWSH6gf8Qas98slU2pT9Vza4Bsfwp6m/k2sRO7qcf39ETuAkoIsVz1zYRbolCKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P1IhabHyG5aTPHRyDnr78eZi2dqCdK8mxLc/pUYd6Cg=;
 b=jv6Rih2N6/m2JNLTf/75tLTCZsbT6JAFBKJJpAqakoUwFIk/0WT3ye6wvnckpZ8T0188CMPl8xgpajpc/A0jcvw63WxgvHWxAv/qmNUXm8/MFVITICSMo41XfTXMMNyDXKQFCCxgummB3XqCba8jm09C1DtYY9YptLVLea1Of+juZD41JJgC7tx60VropPNCK5ErIavw5OcMz09v3dKBhEnGZpuz3bhP819hVvSreh7OHM+1kW9bJuDjNyR8mmjmleT5wJf1TA8cVyChhj/bV/rXKdh8ata0WqSiU7fY4RyHxtW5LuJc/0q08prKwqFnlOAwDFAoHoLAv4P0Swn2Tw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS7PR11MB9498.namprd11.prod.outlook.com (2603:10b6:8:261::10)
 by DM6PR11MB4609.namprd11.prod.outlook.com (2603:10b6:5:28f::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.14; Sun, 15 Mar
 2026 13:56:34 +0000
Received: from DS7PR11MB9498.namprd11.prod.outlook.com
 ([fe80::e3fc:2bca:409f:b925]) by DS7PR11MB9498.namprd11.prod.outlook.com
 ([fe80::e3fc:2bca:409f:b925%4]) with mapi id 15.20.9723.006; Sun, 15 Mar 2026
 13:56:34 +0000
Message-ID: <25df2a93-07c8-477e-9717-fb4a815cff2c@intel.com>
Date: Sun, 15 Mar 2026 15:56:28 +0200
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, Kohei Enju
 <kohei@enjuk.jp>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "kohei.enju@gmail.com" <kohei.enju@gmail.com>
References: <20260307182808.155027-1-kohei@enjuk.jp>
 <20260307182808.155027-2-kohei@enjuk.jp>
 <IA3PR11MB89862987ED725ABA6AFC2199E546A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
In-Reply-To: <IA3PR11MB89862987ED725ABA6AFC2199E546A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0005.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::16) To DS7PR11MB9498.namprd11.prod.outlook.com
 (2603:10b6:8:261::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB9498:EE_|DM6PR11MB4609:EE_
X-MS-Office365-Filtering-Correlation-Id: 828e044e-ed03-4a86-6b24-08de829aab06
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|18002099003|56012099003|22082099003|7053199007;
X-Microsoft-Antispam-Message-Info: g0pkvddQQWoH9hMm2Tl6ecscUnYWQOu7vjby4uWRW+hEyUC57Rtz48p66+wQBLScrUfo55cfl8BtT7IAWby9WbZYArX1FkGxzof0DoDvSyQeARy32aCquXcaf4l74vb4ubN2f3zLaI41vcGX2LunahmGj4S+g8p/98kQ+yqWDAV0c1UrUYs7KB9nLe8zdKWtEKt5ex18Yp5KDnD7kp3KPzZHxPfPZl1o7c3OCnm4YEhg2RYObhUO1azeneJAGESpC3IzQv3rVt77coJBvcxO2PS+uC4dLOX1tRuPwoh5LIL/3fDH8gpmYtfaIjgtZEzINbzELisb88ZxfmUjioiRKwYlpcisR55dtHCoVaJcINfZhxadzkeZyQq/Vom7PUmngkeakh31kPhacG5SswEnkt9uqtoxhpNs4fe4K/9SpL58qyT/7H0l9GHAwuSyinMRlIlvKeDx2wRVc3nRuhcwsuVu688FiO4ZWle5BD8m+vOBoMMpMkY7N1TwZEJccdbBwtycKdzxZ2qcmfG0u1T2TdJ5v821OVu3XKY8DZ5xClSz3nvrgx1S5cgMIXw4ZtX2tBzq5C6lhdmEdV+/IIDj1sm148813HyKkKd23ApdhM64SxdjF4jOfJ2jOXgLCVwYSbsUtJl0iWo0ufT+jFo14gl43H4uuiqILEiBY1B/UCOBJtTg9OhXFmkVthKN1eYM0ZYz59ds5dDCh3VwRBJ9Q0sGONb+4ExUKeqnp6pe0nc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB9498.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(18002099003)(56012099003)(22082099003)(7053199007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K0JsUGVYb01IWkFqbzRJeTRHRGIrUUNsaGNPOW4yU2lORE9iWUJBTnFPVW5V?=
 =?utf-8?B?VVFQeDZmaVFzSm94WXpKeVV2dUtJRFNnRkEvRU5xbnFWQkp2SW03Z3MvbUxk?=
 =?utf-8?B?bW1EMzlybDlhR3dGZ0VtQS9TRTNEWm5ONUFrTFluYUEzZnYzdzV5Q1g0V2lt?=
 =?utf-8?B?LzlFNVNFQko2QkU5SEIxSVYwdUtNYzRVUEZRNUo3SmpvbTZZTmIybnBRb3NY?=
 =?utf-8?B?bWtTYlc0Sy9xVkNQQVlaWXQ3UGdyYzNNVy9ka004OWg1M0s3U1d2cmdicVlD?=
 =?utf-8?B?WEpZK0RDNGl6dXVYbDY5ODVqTWN0SzRUZTJ1d3p0N2hxczQ2OE03MzZpREZy?=
 =?utf-8?B?enk0bUgwa21jcWQvVHdFcE1tdGYwT2RsWi9jL0RPSVRhUUlObmovZ1RDeUFy?=
 =?utf-8?B?R2lVclkyY2F1WUpFaDBvY0Uvdm9BaVFlZFZLaTJpMkk2bHJ5RlNrbkFQalJI?=
 =?utf-8?B?dXdBb29vaFdSVHhJdEc5emJNNHFWUERWdlNXK1JZb2N2Z0hoRTJHUEN5dEYr?=
 =?utf-8?B?ZGNwYk1aYWQwMWZUM2F0anZJUXluMm9VdXBHdmtWQnhqMUtyU1crdzFUekRx?=
 =?utf-8?B?T2x1S0FwdzlKczIxdXhvUHRHaFZucmxNbHZzSU5BVktGWDJ4Qk5pcS80OHFt?=
 =?utf-8?B?dzJZdVFaUXE3QXNCV2Q5eGpKK1RCaDdpbzAyMXU5QWJmeFUwMmNVRnUzcEMw?=
 =?utf-8?B?Z0tIcE55N3M3WHNodkRjYkJBVktDWGpGV0NGOTNwbWpUWXIzWFo5OUV3VEQr?=
 =?utf-8?B?WWRNbjNITWxibTJwbk9iNDMrN3JlYTdUUG9SUER0MERGNVZlbDd4cmhmaVp5?=
 =?utf-8?B?TVVrazZFODUxL1FaZE01Rkl5Y1RVUEhmNXZZTWU0WER5ZTV0ZXBmbmRIUlhQ?=
 =?utf-8?B?QldxaExJMjFnUlg2L09MQXhKc0ZhVjF3RzVWQlpZTGhCSVRJQjZGTUt3VW5q?=
 =?utf-8?B?T0d4VWFXWkhrMjB0bzRsU1ZlRnJHbmRmYklXRElHTG1GdjB6QlpxbHdjRHJD?=
 =?utf-8?B?TzRlVlZqb3krdEZzNkMyN3VhSG82cldteU9rK08wazFnMmMvMU1iUGFHTEJN?=
 =?utf-8?B?cDBoWUhvZmNsVkY3K3Y1Si83cEtwTG44MDNDU3pJTHhTbFN0VWlycU4yYmdF?=
 =?utf-8?B?ekhYWG9DT2Z3STQ1RU50aThlQVVXZER6ZWZuOUE4UzY0R0dZWURIUUxvckZD?=
 =?utf-8?B?a1Z1eVkxcDdCL3pRdytGd2Z1eC8xcTFLei94YTBUMGxzclZ1TWtuaHNoWDJI?=
 =?utf-8?B?UUYxelVxNUk2dmdqYlZZZU8waitsRU5vQmZCeW1mWGNqbkZCQnY2Y01tVmdM?=
 =?utf-8?B?VVlDbDhGcXpsdENRTUJYcTVWaXAwYVU5SU9YOWxJZ1h0M0NKejhwNURSZHN6?=
 =?utf-8?B?dDd1a0lIM1VuL05tUVltamVlZDhkZDF3R1pFKzhvOTlCMDVtQ1lISUlubW1S?=
 =?utf-8?B?Nk1WT0ZQSVdreXV1c2xjd3NhR3Rpd05RYnRHQVJlOStKUHJqbUx0akVxVGZE?=
 =?utf-8?B?VUcxdWRPdzNEL0E5OUJiQkhoREh6VXBjNW9DS2RHZU45dUZQOGgrcy8wR29O?=
 =?utf-8?B?Ry80TFBTMUdMUkZMTHJCTk9yZnJ4c1RIeUcxZnRGdks2a0hNTUhlKzVnS1BJ?=
 =?utf-8?B?aDUzb3BTaHZhR3QxSnZ5aU9tVlk4ZmZ5dW1IdWlOVHdBTjNsakcrNWs2WDNZ?=
 =?utf-8?B?M3RpODZIdjJpQ0hMMlBqS1hRZkRNbDMwd0FwRFM0RGp3N2N5eWM0VEVwQVFN?=
 =?utf-8?B?VjNYU3dlNHpNYURXWkRuUFgxZm12U01JSi8wNkhxS1o5aWFwTmVvVkUwbUFH?=
 =?utf-8?B?WldDaTQvVEp5YThBSUlwb2JadjZxcXN3VlkvZHJTazVoV3FKRm1yVzBSdWtG?=
 =?utf-8?B?eVRvUGlMMDR2OXVIWGoxOFNWU1ZOdWtkU2VhNk1CWG1tKzEvYmxPVTM1OFRt?=
 =?utf-8?B?bUNIdlhMTVVJbjlhWFlDUy8yQUxaa0w5cUJDWE5xSFFhd2ViOGV5bWJXUSt5?=
 =?utf-8?B?ZzhGMjEvdHQ5QUdKSS9IQmFOYnVTWG1ZUjFzK09ja00yVGNhVXM5N3piZTRo?=
 =?utf-8?B?bFNxRE0yY3g3TnErUjdvZ0U4SUowbzhUQ3ltUW5uZDZ6YjVCSzh2anJGejRh?=
 =?utf-8?B?TDc5R2tGN2NhNGhOK3A1N1QvR1hoTkl3c3VPU0hMUlplMllRQW5hVmtmU1Fw?=
 =?utf-8?B?Qm5jN0tJVGhJV0ZqR2M0b3BWRiswWGJsMEt4SFAwNThPeks0V2FzOW9pd2tC?=
 =?utf-8?B?STJPaytibTdvL2VieGF0NmNjN0lKSFNoNVNUOFpaK3lWRUdROEhPdTlVSEpp?=
 =?utf-8?B?dTZQMzNESzRMRGRld1ZTTno3Rkw4V2dOUmRHalNVUGdlYS8zZmxnQXd6TEp1?=
 =?utf-8?Q?JMATqmn7arvRSWks=3D?=
X-Exchange-RoutingPolicyChecked: H/n2g+w3OGuRdcz/U7xeu0TlLbyhVQXgzxGJfNVtcWj8pYE8iEGf32bfn58UW+0tcaR8Z/2lB25hp8VHTvFdniFl5T7XBVixXc1haK2YlRo96Q7bR3VX2xCwAEMVxCU+dDpr3R0YJHZPALnXtFqCDOiA2/Yi5Jcs5rX3e76XauEdeIV/Y3sTR9NBGQY2MfhaQvm0cIUpL1futXAXlRIfwueUyqTfEKp/Gwexqgb1bHhXokcCiArGpCuO9ye1FnihovBOarWHtayRsAN266E8OIrYPekEz4dwKzyoFAUsB4QCE23l+pk5izoBmgEx7/MiMEB6XQ4xsN6bfXVqWofNsw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 828e044e-ed03-4a86-6b24-08de829aab06
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB9498.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Mar 2026 13:56:34.1239 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lKkzgJb4An4W9N5T3qsGEKurIwVqdSFfzIJhclqDGS26ul75B7XO1ukEsmRteb43GtDDbDFIBqNq2UQ3YKxS0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4609
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773583000; x=1805119000;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mv842J4FnRZ9pyJ9ueJW0vpAk3q+fCFOtECPWVMmfM4=;
 b=ZmnUbeLDcNOlRbBXU5sINMMbgdcClbrdc7JitByRN/da7gLDFTcDjsvf
 UA8yyZynk2RNwkdVYfWvR0AsZo3vvPQW+4bxSY5Q+bI10XyFnYQNyVM2n
 /gTYBaactQkmaLe1TGFMHyloyxZSG54wQg32Kx8kByXUgEkjzHc8ilL9z
 e4xUPowSbskb/+nc6YR1khWb4JYxrQ+2KHzes0pXgTuU5UsLw/wANg07Y
 I/Qn01kH2P0ljYeJ3StV5AI/sSlSP7E3SoY0O/euF29oJ5AOdI2Kj1JKC
 VO567Da1yiPwEUXxTi1rEI7ia92E0eE3aiZEIU29Y8yOYconttQcCCGp6
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZmnUbeLD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/2] igc: set RX hardware
 timestamps in igc_build_skb()
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:kohei.enju@gmail.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 0269E290D40
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 10/03/2026 9:43, Loktionov, Aleksandr wrote:
> 
> 
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
>> Of Kohei Enju
>> Sent: Saturday, March 7, 2026 7:28 PM
>> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
>> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
>> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
>> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
>> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
>> Abeni <pabeni@redhat.com>; kohei.enju@gmail.com; Kohei Enju
>> <kohei@enjuk.jp>
>> Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/2] igc: set RX
>> hardware timestamps in igc_build_skb()
>>
>> igc_construct_skb() sets RX hardware timestamps, but igc_build_skb()
>> does not. This has not been observable so far since igc currently does
>> not enable the build_skb RX path.
>>
>> Set RX hardware timestamps in igc_build_skb() as well so that both skb
>> construction paths provide the same behavior.
Thank you for this patch, it is nice to have consistent behavior in both 
paths. :)

>>
>> Signed-off-by: Kohei Enju <kohei@enjuk.jp>
>> ---
>>   drivers/net/ethernet/intel/igc/igc_main.c | 18 +++++++++++++-----
>>   1 file changed, 13 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
>> b/drivers/net/ethernet/intel/igc/igc_main.c
>> index ebd831a4ff53..3a4c1ebe4faa 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -1964,13 +1964,16 @@ static void igc_add_rx_frag(struct igc_ring
>> *rx_ring,
>>
>>   static struct sk_buff *igc_build_skb(struct igc_ring *rx_ring,
>>   				     struct igc_rx_buffer *rx_buffer,
>> -				     struct xdp_buff *xdp)
>> +				     struct igc_xdp_buff *ctx)
>>   {
>> -	unsigned int size = xdp->data_end - xdp->data;
>> -	unsigned int truesize = igc_get_rx_frame_truesize(rx_ring,
>> size);
>> -	unsigned int metasize = xdp->data - xdp->data_meta;
>> +	unsigned int size, truesize, metasize;
>> +	struct xdp_buff *xdp = &ctx->xdp;
>>   	struct sk_buff *skb;
>>
>> +	size = xdp->data_end - xdp->data;
>> +	truesize = igc_get_rx_frame_truesize(rx_ring, size);
>> +	metasize = xdp->data - xdp->data_meta;
>> +
In the spirit of consistency, would it be possible to restructure the 
variable initialization to match that of igc_construct_skb()? Initialize 
xdp first, and then all the size variable inits can stay as they are. It 
would make the net change smaller.

>>   	/* prefetch first cache line of first page */
>>   	net_prefetch(xdp->data_meta);
>>
>> @@ -1979,6 +1982,11 @@ static struct sk_buff *igc_build_skb(struct
>> igc_ring *rx_ring,
>>   	if (unlikely(!skb))
>>   		return NULL;
>>
>> +	if (ctx->rx_ts) {
>> +		skb_shinfo(skb)->tx_flags |= SKBTX_HW_TSTAMP_NETDEV;
>> +		skb_hwtstamps(skb)->netdev_data = ctx->rx_ts;
>> +	}
>> +
>>   	/* update pointers within the skb to store the data */
>>   	skb_reserve(skb, xdp->data - xdp->data_hard_start);
>>   	__skb_put(skb, size);
>> @@ -2681,7 +2689,7 @@ static int igc_clean_rx_irq(struct igc_q_vector
>> *q_vector, const int budget)
>>   		} else if (skb)
>>   			igc_add_rx_frag(rx_ring, rx_buffer, skb, size);
>>   		else if (ring_uses_build_skb(rx_ring))
>> -			skb = igc_build_skb(rx_ring, rx_buffer,
>> &ctx.xdp);
>> +			skb = igc_build_skb(rx_ring, rx_buffer, &ctx);
>>   		else
>>   			skb = igc_construct_skb(rx_ring, rx_buffer,
>> &ctx);
>>
>> --
>> 2.51.0
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

