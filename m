Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A884B0BD9A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jul 2025 09:25:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 99412613D0;
	Mon, 21 Jul 2025 07:25:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uGkx1PeiEejG; Mon, 21 Jul 2025 07:25:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 71395613E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753082740;
	bh=bcBQPruc94fJMgzBEwIqZGyeN29eJuIrOPRxC4r+DQY=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dRpTcAhoB1085vxTqgBmvYWGIoHjGbSNoBu1gSkJP/1T3A/yTjMWWu1qhN2WPpavd
	 oIvtVqX2f5Lhr/VgzJBDIswVbz2jI/YDMLeTdYSoPkYJ+2M0Xvoha2ryZDiX7s21Yo
	 T/AkO9Gk/UsnYwCq1bWmR2T5J93bQRfJQbROguFoA8efgRbeQV5XnR0DUDwaALi+zj
	 kzouF4TVzNbLd4mei0YxnZGnfq8oaLht3vma2CsuqKfFoVm3ONbjlzsbEfd9D3O/1Y
	 JcQlRp3er4mLoNnvvzCTiQAkCoaoBid2+Iz3RqEuq8yZu6zxBxxE/V+zt+7b92fLpS
	 Gu2eJn2Pa+ZVw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 71395613E8;
	Mon, 21 Jul 2025 07:25:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4D73B127
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 07:25:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3E2A5820E8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 07:25:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iE2UQHaebCGG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jul 2025 07:25:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 46E3A820D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 46E3A820D5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 46E3A820D5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 07:25:37 +0000 (UTC)
X-CSE-ConnectionGUID: J+S+QRGvSDe4TluOKlETfA==
X-CSE-MsgGUID: gqLUqBdiQGqpUIEbKvXI0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11498"; a="72746070"
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="72746070"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 00:25:37 -0700
X-CSE-ConnectionGUID: 9jcz++8zS7C4HiTdj5iyhg==
X-CSE-MsgGUID: U8NlXh9zT/yI6Rjz0vsOIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="158423166"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 00:25:37 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 21 Jul 2025 00:25:36 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 21 Jul 2025 00:25:36 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (40.107.100.42)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 21 Jul 2025 00:25:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JgnE79FmpaMaeHorxjIH6fHXRf3y7sgk3JwVB/4MZRtiuSk654ocqrcDdSRMGRk1JJKL3ZYoMtP8zKpco3WcTAj3+qhitiI3vN5X6cCJr0Z5z87tLLa9PSY0wADtbDUhZiEkdlmHFFvn6bV+5rp/FkG/m8l7tk3MkDNgRiM8ETO6YAWjEkSj8lmub6F6v/yK+zlmWQUbMZjuic9CEGfvdo8bBWEogznRXICkphLrLTmMMy11hNCB/kjfnDjjYDk2weAL26/WUIXkqbgeHI34XMXqduDTTZ91WXubm1i5xrVod/gqkTHBZ66AOy3LLJDUR3fWtoNb3UfeWK6PFYWwwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bcBQPruc94fJMgzBEwIqZGyeN29eJuIrOPRxC4r+DQY=;
 b=jEWK+T38Zl3uDS6wwfo73TpVUKyNo5uLswr4Mg7U9phu1zBc85JfsR3yDvO/DvZT8iRprX7xeBxFamor3HmqYTu2tS2OoU/DV8vPT0LM92t+d4iTEkHFR/gr0WGV5b/GKob5JXFIbYNyNXdH2nORRQkKPgAvsB9Z0HDy6Nyz9ut/FrFH5GAnkQgMdHXJs+3sr5XYxctNg0qqsaafxrnnHKD0PK7IKO1lypOL17z97f6dusui48m9P8VmsuoG+MgAE+7jNv67YgVo5UdGu8EqK4rfnveWtCjqaDz81upHJlB7GWNBQuPS8/RP6CqkdktwowtVKchOBjP/QXz7hOnW1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by SJ5PPFED9C9AC99.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::85d) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.39; Mon, 21 Jul
 2025 07:25:05 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29%4]) with mapi id 15.20.8943.029; Mon, 21 Jul 2025
 07:25:04 +0000
Date: Mon, 21 Jul 2025 09:24:52 +0200
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Jason Xing <kerneljasonxing@gmail.com>
CC: Jakub Kicinski <kuba@kernel.org>, Stanislav Fomichev <sdf@fomichev.me>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, <intel-wired-lan@lists.osuosl.org>, netdev
 <netdev@vger.kernel.org>
Message-ID: <aH3rRHm8rQ35MqMd@soc-5CG4396X81.clients.intel.com>
References: <CAL+tcoCTHTptwmok9vhp7GEwQgMhNsBJxT3PStJDeVOLR_-Q3g@mail.gmail.com>
 <aHohbwWCF0ccpmtj@soc-5CG4396X81.clients.intel.com>
 <CAL+tcoCJ9ghWVQ1afD_WJmx-3n+80Th7jPw-N-k9Z6ZjJErSkw@mail.gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL+tcoCJ9ghWVQ1afD_WJmx-3n+80Th7jPw-N-k9Z6ZjJErSkw@mail.gmail.com>
X-ClientProxiedBy: WA0P291CA0010.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::12) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|SJ5PPFED9C9AC99:EE_
X-MS-Office365-Filtering-Correlation-Id: 8bdb44eb-eeb4-4930-8a7d-08ddc827b660
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QStRL2hZdDhsZFRDWHoyeEpZUlQ1RFN1ZlZZcklOWDhYL2d0SFJodDluUkRs?=
 =?utf-8?B?cklJaThnamVibUpGZE4xTFJyRGpKMFpVUXp0MGJ0ZlpHWmt0U1ZwN0JONTIz?=
 =?utf-8?B?ako0WlpGK2V3ekVpTHA1M3FLcDlBRmNVVUFXRlhwemhCYmhQWm05VG1OMkJy?=
 =?utf-8?B?YlNDYm04Q0tRU3VjVHYvbjdlUFBZb3VURWs1WHAyaHJ1NnJVdDN5WSt4cTZO?=
 =?utf-8?B?WE9TZW9CNjE0Tk1ibnRXNk91Wmx5WHFwUXlZYnNCTlA1N25wR2hYRm9kZkcz?=
 =?utf-8?B?QjRXaG0vRzQvWFNDVE9VMXVOTHAxK3MzWThFQWQ4SUNIMHl5bnVHZFB4YnBV?=
 =?utf-8?B?VXl4aEUrWjJBamhFa1VFR1MxbU01M0wrY0VHSnA5bUltZTZjRlZjelRkVXkr?=
 =?utf-8?B?bXg0LzBXWjJZWFIxVVFyT3Awb3FyNnpaWnVGc3Y0dW5OcElOZmJoZHB6ZU9s?=
 =?utf-8?B?SW5rUjZ0Uys3STZaTTJ0TmFsR1kwTUQyYWJLQ3I4Ti9VZWN5Nk1SSVdhems5?=
 =?utf-8?B?RWU5SnE0N1JwVHU0RTJUQW12djBJK1hwNlEvOFpURHJnajBNVi80OTdNM3A4?=
 =?utf-8?B?eUtYb3RkZWJSWWFrNTVqdHZYWkZVWFB0TDRnMXpDRkpFa0k0Q2RTN1MybzUr?=
 =?utf-8?B?MFRla3BBZjFGVm95R2VrdDdWV2IzWno5M1RtRk9vVzN5NmYwOUpUTHNHUVVi?=
 =?utf-8?B?Y1hmaUFRS1UzeUJaK0dHVk9uUnZnTHJJbUthWjYwZXJlQzVnZ3ltdFJ5UU9u?=
 =?utf-8?B?NGZObFVqaHZXUzZCcmtPR21GU3Q3NWIyWmZKREpLMUd1b0IxSHRpejUrWEtC?=
 =?utf-8?B?RjJTdUFyVDJyMXdkWE8vWlFZekkvOGsyMXBYMWVETTRnM1UxMys1bjB3NytO?=
 =?utf-8?B?VlNGQ09iK1l2dGp1aituaUtZMGp0S2YxbC9lK3dSMFFOVmpvR09yN2FCQlNP?=
 =?utf-8?B?UUlVVk50OXpVVVNXRnpMMnpvdG1ITDlnbGRkUnIrd3VnSGppSzg3MmIrY2Vx?=
 =?utf-8?B?NkhOK2VwOGs3bG5TVWIwTGJlT3E5YnJJbTQwRklRMVMwRmZaZFNHcE9GTk1h?=
 =?utf-8?B?UU9JekRONHpTdEhDNWVDTjNBWWlieWI5U081WHd2QllaV3MvVDJpaDRGcng4?=
 =?utf-8?B?a0xiRFFHYjUxQ2pyOWpvWkpORitGempNU0REQmU1NHRlY2xOWUEzYmQ2U3Q0?=
 =?utf-8?B?bi91eUczUzhBYzNPYjZiWDNKdXFNRE5Kam5XZmFGeU9hRGc3OWUvQnlKWFZo?=
 =?utf-8?B?WEE4dlRZYmd5OTJ1aFdUN1J2dXVZb01IU3hoNVJlMG5SNGwrYkxRK3dzeFZs?=
 =?utf-8?B?bzMwOVNOVmdQSDNNNXl5KzduNTVxQ0pHSFlBbzlGajh3TDZIYjBwWGJBaFNY?=
 =?utf-8?B?QU1IUHhTMlZsVmxRNXQvaU9UZDJIS1UvNWRiY3dnUVpLRDY2eUtpZ0RDS3li?=
 =?utf-8?B?bEcvSzRyWVhwVG5BMXVuMlJ6RVhiV0MzRm0zOFdUelR5YUpGTU14cU9lRUZP?=
 =?utf-8?B?VXVhWXF0THZnM3hDZEZHalJ4bVg2V20wYjlEcnRJWmZTYmdieTVqSnZSMmVS?=
 =?utf-8?B?aGZUK3RmL1g3UmVaMkJmS3hBdEIxa1ludnkxT3FLU2ZDcGdVK3BmZW5sRDVM?=
 =?utf-8?B?S3p2cXBUS3NMbWFZZDNoOXpJRjFpZWZINHhsSFlEK3BPZ1VZdmNvTElFYk9V?=
 =?utf-8?B?SEgwZElLNW5KQnIwNUgxdzFYRHZjQ01HWjQwa0kxQnl6UUVvM0taQ1ZhMlY5?=
 =?utf-8?B?N3F4VWhQb2hmVGRHVjg5K3RvK3AzeFZwbjYzNW5IMmp3Z3dDZWVHd2dCYzZs?=
 =?utf-8?B?UmJ4VXhOY0FrMHVSZG1tMDdXUVZJMkN4UktEYWNvZGFBVWNiVjNVM3gwaFpX?=
 =?utf-8?B?OERPK25jL05uTHFCdmd5ZFhYVEdtekYydVRKVHdWUndnMVJVUkxxcUN0Umpy?=
 =?utf-8?Q?WDizwMjdgzY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cTk1R1dzQkUxcW1meFp6R1VvY0gyOEFTay9DS0drelNCd1VUcFdxSHJsT21O?=
 =?utf-8?B?YWFYSVZia3pDaHNjYzQ3eXJES2RuNnVPWFliTFJCMktxNDRGQmhPSC9jTUhy?=
 =?utf-8?B?UzV5c2o5RGNZYlArbE1IUmFIWlFCZm9ObmZ4QXdxeWd3ZmZpTWlaWDAzQ0tG?=
 =?utf-8?B?MTNRQldJQUljU3pxWks1VFJRZmxYWitEaE5QVUJMaVJ6OUZkdkFCYk1aSkZQ?=
 =?utf-8?B?dFVWRjhGM2o0MkVpdEFwd0hHeVdyNzFCNEloZHArUy81RFBxOGIxa3ZxMUNV?=
 =?utf-8?B?VE96QUdkNUp2cWNWNGlCMGlKYXVsV3JwanBQRCt3elJaZGxVMXcvWjdZWGhH?=
 =?utf-8?B?YUpVM1RGTDhlNkdnV0lhSGZacjFSSDgrMFhlL25rNU1QMnliT29VNlVVMXJW?=
 =?utf-8?B?cTBpSHV1NzVMaGt1b1hwM0NjL2xieG9yMVNFWFZLT0lXajV0L3grQnliZFZp?=
 =?utf-8?B?L1pMd09RUVhGQWdxYnRpQ1lCalZoSFJwelI3TWExV09LMEJ5clNkek5nV2hR?=
 =?utf-8?B?SHVXcHRsVG9ET09Md29hYWZwcTJtVzNtWkpCQk5KaGZxQi9HM3FaZEpZVFhX?=
 =?utf-8?B?NUdEZk1uK2IxMFpVOWFJUTFaU243UjBsVWYxaGN2VGVQSlA0UytDVU5rY0lX?=
 =?utf-8?B?dXBRMjQ1c0UxMzRIeWFNaHhrcklNeTdFdWJEbUx4ZW02VzVPK3RudTdaRFJ5?=
 =?utf-8?B?ak9jWmRZSitqYXRqNk9BbTRxb2ZKblRjR3drb2pTRjJKMnJjTkpZQzJ2YWg2?=
 =?utf-8?B?emhEc1EvNnJ3c1JKNVMxbFJTVUZNSC9sRnJDNHJnQStyeVV5SnZtS0FGZklN?=
 =?utf-8?B?VVZoZEFNcVlBTTRmMEtaUHNZZ2hBZ1RxVjNYZHVTRjUxY20ramRIeTBWWFV0?=
 =?utf-8?B?RW5IWmpYYVVVd2JpbllDSjdCd0U0Ni9jcFFwRXRDTFpWUHVMUDBNWHhTbitS?=
 =?utf-8?B?STdaYUpveC9uVkEzMVRmdGxBRW5DZkUycXNpMDlSVmhROHNGYnlhWU5QcjRX?=
 =?utf-8?B?NnMza3dMQWNCc1I1SjJXNUNBUzlwamtCVWZITGkrbVg0bWpnd3BqVFpiclJi?=
 =?utf-8?B?RXErUVVPcHNsQW9rVkxGU2NmWDhoUC84Z0tWZE4rbTNzSkZRaGtsWEFsT09U?=
 =?utf-8?B?Um9idW9ObmRMMjJ6U2hOSnRIRWplR0Z4RHFZL0kyUlkvRVlKVEI0VUloWTc3?=
 =?utf-8?B?YmlqaDRUVm5TVktJNllWNjNvNzhySEtyMm9LYVJiQXFCRUV5cTFTeC9EQXJT?=
 =?utf-8?B?eFB0OFpiSjJWNDlGKzlZTlRDaHcvdlhBNlNIQ1NoOXZTQzhOa2JPSHlzSzZU?=
 =?utf-8?B?cVkxVGh1SDBBWEhMRTBXbFlqdm5tWVhkS0NPR2RYWTM3UGJSU0Urd3M5Nkxk?=
 =?utf-8?B?bi9GYzAwdDBjTHV5UHNRcEhBbFJ4OGxiR0FrUXF1QjQxa292aW5ZaHZrRE9D?=
 =?utf-8?B?UGdXYW9aT1llbUxhQThudlVDS291dXhFTEllOUJMY0pWbW1XT1BIT3RkbU04?=
 =?utf-8?B?Vk0yZmI0cm9uU0hMdkI0b3o3V09kQTFvRDEzVStGaU1GdWFDOUQ1ZVRSckdp?=
 =?utf-8?B?eG9TSVJKT2VMbkk4Z1FVaFk3SlE0Z3czc1ZoNm1HTnVyc29CVkVyRVYwYlgy?=
 =?utf-8?B?dWhNMXJsZkJtNUJwNm5kUjV1UmEyRlVPTXBOcFJUaDRoMjVPU3MveHI0SEhC?=
 =?utf-8?B?d1VoK2tKczF2YloydHdyM1QydmI5MVBxTnY5NXp6R0MrbmN5dmFjNGU1YmRi?=
 =?utf-8?B?b1hOZmYxMWQ3bDJQeldFWDhRNE5ZS20yV2tvMGRGRXBjdWRhV1NPaUg1SDA0?=
 =?utf-8?B?VER3MGxmUlBVRWVndFhoV2NyR2lKZnVTMkpTZmlWUHphWkNlZ2IwWnY0VmxZ?=
 =?utf-8?B?aDZ3bGMzVmZPaGlCWE1NVzRBMFBpdHYyaVFmbUlqZE4xU1JHdzJXWG4wYUxD?=
 =?utf-8?B?dVlTbmtHNTQ3VnJ6K0F2NFBDL0NGU3dhZXNOdXJhZ0R1TVFydnhsR1dGc2Vp?=
 =?utf-8?B?c0FjZExiWm43SGxIWkdxelJnbFlrMC9CbGJTN3RYNkdUdUo0eWRWbGxSeEtG?=
 =?utf-8?B?RFdKQm1qRDlVSFRmeXVuNUlteVh2Mm9vS2tiSXRURGh6dkZsQTFmM2ZYUFoy?=
 =?utf-8?B?VS9lQ01RS0I4QkM5N3VXU3JnbURPaEdkSm5WNmROcU12amhvSTlrV2lndU9E?=
 =?utf-8?B?Q1BzVU1Vck56OEEyVWI1Qlk1Vi9jWjc5WlN5US8ybXU1MUZTYWMzOTVVUTE0?=
 =?utf-8?B?a2RINW81ckFaUmw1WkhOZ29OcDB3PT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8bdb44eb-eeb4-4930-8a7d-08ddc827b660
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2025 07:25:04.7907 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2dY+0dVHkuaUttooD/SzzsNthN18mNUjhWUdEXa/wLf2U9QTrWwC1LddAtecbYVoEDBPBJcX06IRq6glMsXvSIa8waUgmCFsQMmAEMqanGo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFED9C9AC99
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753082738; x=1784618738;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=/ukR/B77iCTGZ0bTfcrkzK10eORAq+IAk6Ex5Y5hpdE=;
 b=KMM2HZS9VjWcwiYrvaFE0C0NTZfoMCXG5W9K9gRL8FPi7a5B00VpdJrI
 BbuEcQ57hrsV5gc50I8CzrTLBTsqSbJDVJI8tmNIIbIM/Chbk0OsdQx1i
 rCLoyzMRjJ+4eJtpwAmMjak4PV53AtX5KGxsOPhOY40fp39c0h3YaaUes
 fMgE48poJ5VwBbVrI0dbrHWSOTm9q660bZBWLJFln5/bxHwEqBa+xvphV
 1SOY9BhcOGJAZXBxq9auxUAKw5WwtcGRfS9rkffZ64UoVERRmJHUlJoaJ
 ZPvx7lt5+vmpu2U5vrgNs8aLId3RrzvOoyip04OFxcGMc4MAH6CJXVpL0
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KMM2HZS9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] ixgbe driver stops sending normal data when
 using xsk
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

On Sat, Jul 19, 2025 at 01:26:18PM +0800, Jason Xing wrote:
> On Fri, Jul 18, 2025 at 6:27 PM Larysa Zaremba <larysa.zaremba@intel.com> wrote:
> >
> > On Wed, Jul 16, 2025 at 11:41:42AM +0800, Jason Xing wrote:
> > > Hi all,
> > >
> > > I'm currently faced with one tough issue caused by zero copy mode in
> > > xsk with ixgbe driver loaded. The case is that if we use xdpsock to
> > > send descs, nearly at the same time normal packets from other tx
> > > queues cannot be transmitted/completed at all.
> > >
> > > Here is how I try:
> > > 1. run iperf or ping to see if the transmission is successful.
> > > 2. then run "timeout 5 ./xdpsock -i enp2s0f0 -t  -z -s 64"
> > >
> > > You will obviously find the whole machine loses connection. It can
> > > only recover as soon as the xdpsock is stopped due to timeout.
> > >
> > > I tried a lot and then traced down to this line in ixgbe driver:
> > > ixgbe_clean_tx_irq()
> > >     -> if (!(eop_desc->wb.status & cpu_to_le32(IXGBE_TXD_STAT_DD)))
> > >             break;
> > > The above line always 'breaks' the sending process.
> > >
> > > I also managed to make the external ixgbe 6.15 work and it turned out
> > > to be the same issue as before.
> > >
> > > I have no idea on how to analyze further in this driver. Could someone
> > > point out a direction that I can take? Is it a known issue?
> > >
> > > Thanks,
> > > Jason
> > >
> >
> > I was able to reproduce the described behaviour, xdpsock does break the IP
> > communication. However, in my case this was not because of ixgbe not being able
> > to send, but because of queue 0 RX packets being dropped, which is the indended
> > outcome in xdpsock, even in Tx only mode.
> 
> Thanks for your feedback. It would be great if you could elaborate
> more on this. How did you spot that it's queue 0 that causes the
> problem?

If you do not specify -q parameter, xdpsock loads on the queue pair 0.

> Why is xdpsock breaking IP communication intended?

Because when a packet arrives on the AF_XDP-managed queue (0 in this case), the 
default xdpsock XDP program provided by libxdp returns XDP_REDIRECT even in 
tx-only mode, XDP_PASS for all other queues (1-39). XDP_REDIRECT results in a 
packet leaving the kernel network stack, it is now managed by the AF_XDP 
userspace program. I think it is possible to modify libxdp to return XDP_PASS 
when the socket is tx-only.

> 
> When you try i40e, you will find the connection behaves normally. Ping
> can work as usual. As I depicted before, with ixgbe driver, ping even
> doesn't work at all.

I think this is due to RSS configuration, ping packets on i40e go to another 
queue.

> 
> iperf is the one that I should not list... Because I find iperf always
> doesn't work with either of them loaded.
> 
> >
> > When I run `tcpdump -nn -e -p -i <ifname>` on the link partner, I see that the
> > ixgbe host spams ARP packets just fine.
> 
> Interesting. I managed to see the same phenomenon.
> 
> I debugged the ixgbe and saw the following code breaks the whole
> sending process:
> ixgbe_clean_tx_irq()
>      -> if (!(eop_desc->wb.status & cpu_to_le32(IXGBE_TXD_STAT_DD)))
>              break;
> 
> Do you have any idea why?
>

This line checks if HW has already sent the packet, so the driver can reclaim 
resources. If the packet has not yet been sent, there is nothing for driver to 
do but wait.

> >
> > When debugging low-level stuff such as XDP, I advise you to send packets at the
> > lower level, e.g. with scapy's sendp().
> >
> > In case you have a different problem, please provide lspci card description and
> > some truncated output of the commands that you are running and the resulting
> > dmesg.
> 
> I'm not that sure if they are the same.
> 
> One of ixgbe machines that I manipulate looks like this:
> # lspci -vv | grep -i ether
> 02:00.0 Ethernet controller: Intel Corporation Ethernet Controller
> 10-Gigabit X540-AT2 (rev 01)
> 02:00.1 Ethernet controller: Intel Corporation Ethernet Controller
> 10-Gigabit X540-AT2 (rev 01)
>

Some device-specific quirks on older cards sometimes result in bad XDP 
behaviour, but are usually visible in dmesg.

> # dmesg -T|grep -i ixgbe
> [Fri Jul 18 16:20:29 2025] ixgbe: Intel(R) 10 Gigabit PCI Express Network Driver
> [Fri Jul 18 16:20:29 2025] ixgbe: Copyright (c) 1999-2016 Intel Corporation.
> [Fri Jul 18 16:20:29 2025] ixgbe 0000:02:00.0: Multiqueue Enabled: Rx
> Queue count = 48, Tx Queue count = 48 XDP Queue count = 0
> [Fri Jul 18 16:20:29 2025] ixgbe 0000:02:00.0: 32.000 Gb/s available
> PCIe bandwidth (5.0 GT/s PCIe x8 link)
> [Fri Jul 18 16:20:29 2025] ixgbe 0000:02:00.0: MAC: 3, PHY: 0, PBA No:
> 000000-000
> [Fri Jul 18 16:20:29 2025] ixgbe 0000:02:00.0: f0:98:38:1a:5d:4e
> [Fri Jul 18 16:20:29 2025] ixgbe 0000:02:00.0: Intel(R) 10 Gigabit
> Network Connection
> [Fri Jul 18 16:20:30 2025] ixgbe 0000:02:00.1: Multiqueue Enabled: Rx
> Queue count = 48, Tx Queue count = 48 XDP Queue count = 0
> [Fri Jul 18 16:20:30 2025] ixgbe 0000:02:00.1: 32.000 Gb/s available
> PCIe bandwidth (5.0 GT/s PCIe x8 link)
> [Fri Jul 18 16:20:30 2025] ixgbe 0000:02:00.1: MAC: 3, PHY: 0, PBA No:
> 000000-000
> [Fri Jul 18 16:20:30 2025] ixgbe 0000:02:00.1: f0:98:38:1a:5d:4f
> [Fri Jul 18 16:20:30 2025] ixgbe 0000:02:00.1: Intel(R) 10 Gigabit
> Network Connection
> [Fri Jul 18 16:20:30 2025] ixgbe 0000:02:00.0 enp2s0f0np0: renamed from eth0
> [Fri Jul 18 16:20:30 2025] ixgbe 0000:02:00.1 enp2s0f1np1: renamed from eth1
> [Fri Jul 18 16:20:38 2025] ixgbe 0000:02:00.0: registered PHC device
> on enp2s0f0np0
> [Fri Jul 18 16:20:38 2025] ixgbe 0000:02:00.0 enp2s0f0np0: NIC Link is
> Up 1 Gbps, Flow Control: None
> [Fri Jul 18 16:20:38 2025] ixgbe 0000:02:00.1: registered PHC device
> on enp2s0f1np1
> [Sat Jul 19 13:11:30 2025] ixgbe 0000:02:00.0: removed PHC on enp2s0f0np0
> [Sat Jul 19 13:11:31 2025] ixgbe 0000:02:00.0: Multiqueue Enabled: Rx
> Queue count = 48, Tx Queue count = 48 XDP Queue count = 48
> [Sat Jul 19 13:11:31 2025] ixgbe 0000:02:00.0: registered PHC device
> on enp2s0f0np0
> [Sat Jul 19 13:11:31 2025] ixgbe 0000:02:00.0 enp2s0f0np0: NIC Link is
> Up 1 Gbps, Flow Control: None
> [Sat Jul 19 13:11:34 2025] ixgbe 0000:02:00.0: removed PHC on enp2s0f0np0
> [Sat Jul 19 13:11:34 2025] ixgbe 0000:02:00.0: Multiqueue Enabled: Rx
> Queue count = 48, Tx Queue count = 48 XDP Queue count = 0
> [Sat Jul 19 13:11:35 2025] ixgbe 0000:02:00.0: registered PHC device
> on enp2s0f0np0
> [Sat Jul 19 13:11:35 2025] ixgbe 0000:02:00.0 enp2s0f0np0: NIC Link is
> Up 1 Gbps, Flow Control: None
> 
> reproduce process:
> 1. timeout 3 ./xdpsock -i enp2s0f0np0 -t  -z -s 64
> 2. ping <another IP address>
> 
> Thanks,
> Jason
