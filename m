Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E6574A53F56
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Mar 2025 01:47:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7194B605E4;
	Thu,  6 Mar 2025 00:47:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ia4bX4e8smnF; Thu,  6 Mar 2025 00:47:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3098260EFF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741222045;
	bh=7YmlTdV5ebgA4oS5HDiNUNwPLkW1qYyLpWmpH4os2A8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=N9+QxKtQnkz/SlvkgaInBHFuMczwNN7fWHOCqKmttGtpqOflePv+qwN9CFdqhf9Am
	 U/PV4gXyao672i7HVZNvNcDMLl/9y/L86m9235Ay5PCmOyUa0foBG0stmV0sUrm9QR
	 CEpxTuS4RSxGpgeJUii1sovjCDw+fkqMEoa8r0sUZPjLWEPMQICq6IFSMr0cd5Gv6u
	 ZUIsnzVB/0XDU7QNWmorgQNjHLlATz1kwiqucyPnanfKdKlrvu7fPtlWcEihfebqnn
	 PzKcq5Ni3GG4lcQVffPgXeXWsjvqBBI0gLUWHYitA7dRfBeGvEGbiviUhRzj7Ac/mC
	 jG1WqKYwEIJTg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3098260EFF;
	Thu,  6 Mar 2025 00:47:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0C3B8E2E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 00:47:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E487740C85
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 00:47:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o0SzfNmLIVWj for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Mar 2025 00:47:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6BF7140952
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6BF7140952
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6BF7140952
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 00:47:21 +0000 (UTC)
X-CSE-ConnectionGUID: 6dBVHECuS9+2FcENWU07Mw==
X-CSE-MsgGUID: YzCirsSwT2OKiSj/0FVVHQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="42101674"
X-IronPort-AV: E=Sophos;i="6.14,224,1736841600"; d="scan'208";a="42101674"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 16:47:21 -0800
X-CSE-ConnectionGUID: A/ZkgAivQkuM9o4qR/i64A==
X-CSE-MsgGUID: CKZFVd7mQt+eLMT+9wriYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,224,1736841600"; d="scan'208";a="123955207"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Mar 2025 16:47:20 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 5 Mar 2025 16:47:19 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 5 Mar 2025 16:47:19 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Mar 2025 16:47:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G30GQFwsqmJeL3+NCfRs+5TEAnYxUp3xfXbvAm5ARz2pfDlJkAP9Pxd1qy8iobwcg9OgQhKuwKKZ8kXJUkRJ7NywDRiMFFJu8g9cNSfEElnpk6QfUUNyl+q6cfg6gQzxEyy2AgTR60zlpiiTK1IjXRida1inQxe+bDheTHAM3gSknQurijVvciVxxbLXSfIAaO2ufEG+QaILby+sPSswMLo5JV9rPrD++uzn+ovlajW8+GlBY0DppOQqLVf9gn603KWA7lpqFS5iVDPBd5mnegub9GW8BkydwW42vggntcVdEPYHcET1WqLM/8xQOPH/7Puv8Z8FsSXM6HDqEtRVeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7YmlTdV5ebgA4oS5HDiNUNwPLkW1qYyLpWmpH4os2A8=;
 b=ulcAENg71Vto6w1m7gHSpTr3Ew9xT20CAKNk74ps07jrVYSp68Mk6/y6lE31kgJ8SWwcsLIvnasZIiG5WWZ0H1odn8DiwukenDH8UINR/3pIqcqkt2SA+AmYEP3xaZJJqF2hm//krCNx1XUmVYQ+aVkXtUSudoCMu+omvR4Wpma+I9LHO/W3lZrHG87Nstiajs4yCBUxtScwjdmfM0BEvRzOJnhts4ffenRD5Dpdi9cZDqxyYKYCRUnME/Z6zag6Xq0rvW+c4y8IaQYbd1vlD5x0fkZ6EXJlkfrjgjyP8PlnufiMvTYcyi2DQ0Szpaf/C+K4Sw4SneEA5vG5voz5BQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by CO1PR11MB5076.namprd11.prod.outlook.com (2603:10b6:303:90::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.25; Thu, 6 Mar
 2025 00:47:13 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%5]) with mapi id 15.20.8489.028; Thu, 6 Mar 2025
 00:47:13 +0000
Message-ID: <61d14c4e-f59f-4e84-851a-917406510aaf@intel.com>
Date: Wed, 5 Mar 2025 16:47:10 -0800
User-Agent: Mozilla Thunderbird
To: Yue Zhao <yue.zhao@shopee.com>, <przemyslaw.kitszel@intel.com>,
 <andrew+netdev@lunn.ch>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: <chunguang.xu@shopee.com>, <haifeng.xu@shopee.com>
References: <20241227035459.90602-1-yue.zhao@shopee.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20241227035459.90602-1-yue.zhao@shopee.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0176.namprd04.prod.outlook.com
 (2603:10b6:303:85::31) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|CO1PR11MB5076:EE_
X-MS-Office365-Filtering-Correlation-Id: 628ec1a8-bf29-4d1c-48f0-08dd5c486f6c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Rk4yaDNRWWlvU2JOTVF5N242d0xiQzVBZFJibExsa29pb1J0Z1VMb2NJcjVr?=
 =?utf-8?B?OHdsQkZKalM0Tk5JOEhvYm95ZVhkYkRGWkdjMVFwQ2ltN2FMVXhpN2pnblVw?=
 =?utf-8?B?MVlQeFZsM0NYT2xNZklOK1dFU0s3aFpyRGdMdU1peTAzeEhueTRLU3RranBw?=
 =?utf-8?B?UkZMT0l1M1BqeG1sS2EveTEvSXdmWEY0amN1OTNxRnNESStLTVJGWmwwV0pE?=
 =?utf-8?B?ckxjeVhQZENmblFLcUlGbWNFZ0lBbk1JZVV1VDljaUxyNVhsTTF3UzJLM2E4?=
 =?utf-8?B?dkdvZ09OR3NJSUlmMHZwVWFDWmhEbkxFK3JBWW5ub2NZWitVekpBdGtQcXI0?=
 =?utf-8?B?KzJTaEdlMnBFWkdHenNraXl1bTM5VzFmS2hGUHV0U0JWUFJ1REN5dForbjBY?=
 =?utf-8?B?c2IxcytoazUyRWViNVBsaGVKU0lWVXRmdHAxTDRtY3VMRStXZXdxUGU0ZWs5?=
 =?utf-8?B?YTE4ZlpEb0ZHK3RybHdwclQ3WGZEM1NxTGI3SEt6bUc1VVZHSk5BVFFYUi9Y?=
 =?utf-8?B?cGIwVkRITFVtamF6dFJ6R25kZkV6Vm5Ydmp4NG9WdFNrdGYxRTJpQ2NYRzdt?=
 =?utf-8?B?cnVDTEhjUE4wbTExZERPRzFBZGthbVMwRUt4N0xleWdjRk91K0JteHliemtz?=
 =?utf-8?B?dkJzNk4xekNvOWhxUk5WNXRlMzlOQzVkS0N5MGZad1llMjU5cG1SdTdpOWw5?=
 =?utf-8?B?aFB1cG4wVXJQLzR1VHNXb3ErTlgvT1NIL2dmSHk1WDFIWTl2L1ZjYVpXSGsy?=
 =?utf-8?B?QUZ1SmIzeGhNbjF1WUFRY2gwUEwyYVdiWThWUTQ3YjJUc0pFTEZqRUk3QjYv?=
 =?utf-8?B?Z0F4blJNOW5TUWswVTAydUc1Q1FwakJMdlpHSy9tTGtBS2M1eis4clN2cFpT?=
 =?utf-8?B?QlVoYmJBbFBaT2JMSkM4TksrdVQ2a2Z0N0VaSzA3dDA3RVdLTUwwQk9uejJv?=
 =?utf-8?B?OHAxVGZWUXpCWFp6QUNQcVV4TjRuRXhiM3BMYXhtZUplaTlkRHBydGFkNFl4?=
 =?utf-8?B?WWFtM1JCV0ZMYTJzTG8xZDM1NktxZFVJQmhuWWRGNWl4NEpra1JONVR0RjN2?=
 =?utf-8?B?dTNVWHB2YW11UXM1M2VRMUFoZTViWnBPSjB6dzRYZ3cyVTlHdVN6eTN1SGVB?=
 =?utf-8?B?OHBvKzBMbzFHSkR4YUQzY1hHOVdYaFdHd3UxbzJjeTNoODBtM1h4STg1RmNV?=
 =?utf-8?B?ZmNMbjJFWGU3ck0yU0FaWmZldjZ3ckhINlJsWndYOVhQUXdRWlpVbXlYK21K?=
 =?utf-8?B?bHFwUi9pWlZyT01KVGRVWkpZQk5xS3dmRVZpdlR6N2krQ2NTQXBLSkFYQVJN?=
 =?utf-8?B?OUJySm9oRzkzYVIzUGlCbjFUb1AyRExiM2NpS1RqZG1kQXIzVkwvR2lVQTJF?=
 =?utf-8?B?eUpoUzJzRCtXb0duRTNNQjYxVCtXQTAvZjBFaFZDRVNlM3drWFIrMmlSWjNP?=
 =?utf-8?B?MnpGbHhta1ZRbTgvakZscCtDRG5uYzlkUVY0VXhqSGRCdHFFTDdUNVp6Nk5C?=
 =?utf-8?B?c3FsRkhaSWgrYkFsdmlpQng2blFUcnpYYmhnTHJNSVJ5NyszbjZBMGludjdh?=
 =?utf-8?B?OHY5bzF6N2k1M1NRL0FJc1RFeWtmT3dkUTRKMEc1WHBFWGtrS2xqZEVPVWsv?=
 =?utf-8?B?WHFldGg3UjVwc0NOTXB1eWk4dHZrMmpaTENQRG85TElxMkx4VENFaEFSNDdE?=
 =?utf-8?B?TTViTkNPVGQ0OG9FK05qNTVZVGxzVTdIVUl6SStyS1hlUk9HS3M2T3F0V0F2?=
 =?utf-8?B?RmcwRWNFRGNrTDZpbFpaOVdORC85TXpSeEg3MWhxSHkvL01HM3lhUERZUCtn?=
 =?utf-8?B?Rk0zNnNGajRMay9naWd0QT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NldLN2tZVlorMGNNbnF4bUp2RC9QVDhLYk9kTU0vR1dKZy8wVzRISUFZajZr?=
 =?utf-8?B?NDVicmRMazI3QlQ4SWU4WE5OQXdkNEFLdHEwdEpzMEpiSC81clVRSnVHbkR6?=
 =?utf-8?B?NGxQZzd2b2p0MFpWQVpNVmE3ZllGVDVCdjRnNm9rSHJuc29MV09LNVRlMlBQ?=
 =?utf-8?B?TnpqVFVQdjdCbkVZVnBFc0d4UENteGpFNkxrUjN6Ukx3UGpmaWJ6U1F2Qmdn?=
 =?utf-8?B?dHViYzJjVjlLTHJXd2RDclVNTWRQa2RNdWk3YjFMTENHZ2R0Nnkrck1MbUdD?=
 =?utf-8?B?T2lZWEF5SUtiV3prdGMyS1ZDclhSelRzTjd3RXFXTHVRYkI1VXZqY2N2UGtm?=
 =?utf-8?B?b2dSc2Y2MVAxU3V3eFhOTWx3ZzhoWTJadkFqY0Roa0tLT1Y3ckNsalVUbXk5?=
 =?utf-8?B?VmlkREFQL1dja1NSTUJUUDdKZm9jSGJmS2d2bjZveHJLT2U2QzlOQ0VBcFF1?=
 =?utf-8?B?UUw2R054YnpER2RjTGtkK3N2UEhVYWJTQ3BHVndaeU0yZjBjekRqYnNjRmN4?=
 =?utf-8?B?Y1hKUVkvcVRsWlV4eUJFWUR5VVpHMklBd2Voc0ZMQVp2SWVsdEZIYkZkY21a?=
 =?utf-8?B?WmlneFp2RmVTcy9OTUpYYU5xY0ZxbmNHUWxiL2pTVGZieXpnVDBKYW9GbGp0?=
 =?utf-8?B?V292OGViTWhOV28yNXNuRGhGZGovNGV1SkhQc2dkOWlkOGJYZHZyVisvZ0t0?=
 =?utf-8?B?M2V1b1FUYTlxZ25pZllob1NoTzRISGZMWXVTcDVQUDVLczc3S3dWeEI3RkNU?=
 =?utf-8?B?SDA1cnAxam1FeWFYc0Y2aUp2VjFVT3pXMzVHTUw0NmpDb1JrNzhWeVJ3K3Nk?=
 =?utf-8?B?VXVvbzhtOFBkOEwyeU5PYWxlQkdSUG9KZjlELzRtSVhhd0JteWFWMkpMOGVr?=
 =?utf-8?B?eThFMXlwN0tLWXNHU2twK3Urd0I0RXE1enVTY0MrWndBSVFaNmszdDBQSndl?=
 =?utf-8?B?SVp1RG5ibFhmTE5xNEZoWGdwTjFHMmZ1aGhucHNOekQ5NXVzSzZwVHZpaEZO?=
 =?utf-8?B?WUJvZXZMeTE5dlBwUHNZeGRITUxaOW1UdWVGTU9wbjF0dzRxakxmamR0cC9B?=
 =?utf-8?B?ZE40bmtMVmZWaGovOER1UkV6VkI2SloySFBYWDBZTWVKSXczL0k5UklManlP?=
 =?utf-8?B?KzlmREM5QndmUzNrZ0g2aXBQdzRHcFVkenJKaG91d0gwZ2ZNVDZYUUU5Tml6?=
 =?utf-8?B?ZUtFM1dvRmNMSlJ1VlZWTnYzVGlNcUxaRGpUckQreVQxbVFzZklONktjeG4r?=
 =?utf-8?B?WVVZTkx2eWdBTnZ6dnRtS1kyams3K2ZWY25saGdkU2VWMjJiRm1mNjlIL3Az?=
 =?utf-8?B?T05ON3hMNUJ4MjdHZGNnT1c4MzRRQ3ZoNTVOVkZhd29NQXBvN1BXZE5TdHJx?=
 =?utf-8?B?OWNLWXI1WUgwNS94UnFKOThZRTdHWVdMajdXZ1lNenMzMDU1bXpKYXNoWStU?=
 =?utf-8?B?T1BUS29NVnJzK2RoVi9Ca1NqTFVzVDMzdXBUVnJ4TXZsOFJETDJuVnJoM01H?=
 =?utf-8?B?V2pRc2JndkxuWTBNSEJwS0NaVTZHRWNKUlVVWVVVNUppSEtZZ09VM0doMERz?=
 =?utf-8?B?blUvVjh6ZVRxNHkySFVJQmdwSHBYWEd1OVpabmVMTFRDWkFQb1oxM20yRnky?=
 =?utf-8?B?YWFtVGdnbHNCU3kwMThKUlp2azRvWGViMG1YekRCSTl0cmxwR3hGbFVRZ2tF?=
 =?utf-8?B?UzBrUUljdStWYi9OMGtnbCtXYVVWdkZhdFUwYWEzSFRVajBZS0daenBWNGhr?=
 =?utf-8?B?YmV4UCsycFAxdnQ5S2hTZWYxWG83SUZHdStJVUVVN0YwSTBJeXNLUzNYZkZL?=
 =?utf-8?B?YThDRWVyVmMvcVd5cGQzZnBhZ0lRYnlLdEROSHNKdHg2VFFGdU9kOEtjRk9y?=
 =?utf-8?B?UDF1WUF2N0VzVnJUYjZZWS81L3duYzlQZXNGUmtFSDZpY3VOMG5rYTQvVnZs?=
 =?utf-8?B?SFFWQllURmRUK2k4MTFrVkQwbUJSK0pQU2V2RytmT3RpM01HZ0FkUVdTb1gy?=
 =?utf-8?B?dUdncW5pUU1uRnlrTXdsczZGU2t5K29YWjVWUkNoSE0xZDF3RVB3cnNmWVJP?=
 =?utf-8?B?TlA3eGpVbHFyWno1cWFwdnlJT0xpNi8xWVJJYWIxT2p1NHNwNzZDUmdXWkl4?=
 =?utf-8?B?cGxaRXRRV2VoQUVFeDFjbllDdzFHS2diS2ltRUlGUVpTRDZOWjJoV1h3VG83?=
 =?utf-8?B?Mmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 628ec1a8-bf29-4d1c-48f0-08dd5c486f6c
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2025 00:47:13.5072 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +DhOJuktXfrGz+xxklXFKLn4SSaqWUYj5+yQU5ELUp79cZg/xbRV74UbIiTEKZbjPqeFxhJGyYwUGb3QVKGlElhh+k72YU8IvwPeA2/J8Qc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5076
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741222042; x=1772758042;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7HCE+7W2ZnJ20qbSvUrUfIx+kdC24PqsJdquCmrR/DY=;
 b=BLKng0XMqKplpNetXI+NjOPBL2v3Mf+1xkpzJpCP1W6O4Fgj9XTDcK0o
 oNREDSG2LUpc9kHOVeXCJPGxZQBA8qzCCYlT20ds2ZKf6cF6pMzbFERTL
 RqT89xh/2ChFi/Eh+XEH5I6+d+vsYHsM1lpL1ldPAzoXLVR7hKi0Hnm1u
 lfzwwDQ+PxAQWvxTO4Z38B/W7NjoZMv6tI+SNUI8uaxejhr6p1yZOv3lS
 ZsMw+Zd24mHmvcKNZJZQP/jbsRVRs7XnLo22fslJaWVM1VoF0x5z5GLFM
 UTYW/DZ6fLlLl/1xl5Pgxp83QkU7s+QVDld4GTGgEsULrnhDKw6Qp+B9M
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BLKng0XM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Disable i40e PCIe AER on system
 reboot
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

On 12/26/2024 7:54 PM, Yue Zhao wrote:
> Disable PCIe AER on the i40e device on system reboot on a limited
> list of Dell PowerEdge systems. This prevents a fatal PCIe AER event
> on the i40e device during the ACPI _PTS (prepare to sleep) method for
> S5 on those systems. The _PTS is invoked by acpi_enter_sleep_state_prep()
> as part of the kernel's reboot sequence as a result of commit
> 38f34dba806a ("PM: ACPI: reboot: Reinstate S5 for reboot").

Hi Yue,

We've contacted Dell to try to root cause the issue and find the proper 
fix. It would help if we could provide more information about the 
problem and circumstances. Have you reported the issue to Dell? If so, 
could you provide that to me (here or privately) so that we can pass 
that along to help the investigation?

Thank you,
Tony

> We first noticed this abnormal reboot issue in tg3 device, and there
> is a similar patch about disable PCIe AER to fix hardware error during
> reboot. The hardware error in tg3 device has gone after we apply this
> patch below.
> 
> https://lore.kernel.org/lkml/20241129203640.54492-1-lszubowi@redhat.com/T/
> 
> So we try to disable PCIe AER on the i40e device in the similar way.
> 
> hardware crash dmesg log:
> 
> ACPI: PM: Preparing to enter system sleep state S5
> {1}[Hardware Error]: Hardware error from APEI Generic Hardware Error Source: 5
> {1}[Hardware Error]: event severity: fatal
> {1}[Hardware Error]:  Error 0, type: fatal
> {1}[Hardware Error]:   section_type: PCIe error
> {1}[Hardware Error]:   port_type: 0, PCIe end point
> {1}[Hardware Error]:   version: 3.0
> {1}[Hardware Error]:   command: 0x0006, status: 0x0010
> {1}[Hardware Error]:   device_id: 0000:05:00.1
> {1}[Hardware Error]:   slot: 0
> {1}[Hardware Error]:   secondary_bus: 0x00
> {1}[Hardware Error]:   vendor_id: 0x8086, device_id: 0x1572
> {1}[Hardware Error]:   class_code: 020000
> {1}[Hardware Error]:   aer_uncor_status: 0x00100000, aer_uncor_mask: 0x00018000
> {1}[Hardware Error]:   aer_uncor_severity: 0x000ef030
> {1}[Hardware Error]:   TLP Header: 40000001 0000000f 90028090 00000000
> Kernel panic - not syncing: Fatal hardware error!
> Hardware name: Dell Inc. PowerEdge C4140/08Y2GR, BIOS 2.21.1 12/12/2023
> Call Trace:
>   <NMI>
>   dump_stack_lvl+0x48/0x70
>   dump_stack+0x10/0x20
>   panic+0x1b4/0x3a0
>   __ghes_panic+0x6c/0x70
>   ghes_in_nmi_queue_one_entry.constprop.0+0x1ee/0x2c0
>   ghes_notify_nmi+0x5e/0xe0
>   nmi_handle+0x62/0x160
>   default_do_nmi+0x4c/0x150
>   exc_nmi+0x140/0x1f0
>   end_repeat_nmi+0x16/0x67
> RIP: 0010:intel_idle_irq+0x70/0xf0
>   </NMI>
>   <TASK>
>   cpuidle_enter_state+0x91/0x6f0
>   cpuidle_enter+0x2e/0x50
>   call_cpuidle+0x23/0x60
>   cpuidle_idle_call+0x11d/0x190
>   do_idle+0x82/0xf0
>   cpu_startup_entry+0x2a/0x30
>   rest_init+0xc2/0xf0
>   arch_call_rest_init+0xe/0x30
>   start_kernel+0x34f/0x440
>   x86_64_start_reservations+0x18/0x30
>   x86_64_start_kernel+0xbf/0x110
>   secondary_startup_64_no_verify+0x18f/0x19b
>   </TASK>
> 
> Fixes: 38f34dba806a ("PM: ACPI: reboot: Reinstate S5 for reboot")
> Signed-off-by: Yue Zhao <yue.zhao@shopee.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_main.c | 64 +++++++++++++++++++++
>   1 file changed, 64 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 0e1d9e2fbf38..80e66e4e90f7 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -8,6 +8,7 @@
>   #include <linux/module.h>
>   #include <net/pkt_cls.h>
>   #include <net/xdp_sock_drv.h>
> +#include <linux/dmi.h>
>   
>   /* Local includes */
>   #include "i40e.h"
> @@ -16608,6 +16609,56 @@ static void i40e_pci_error_resume(struct pci_dev *pdev)
>   	i40e_io_resume(pf);
>   }
>   
> +/* Systems where ACPI _PTS (Prepare To Sleep) S5 will result in a fatal
> + * PCIe AER event on the i40e device if the i40e device is not, or cannot
> + * be, powered down.
> + */
> +static const struct dmi_system_id i40e_restart_aer_quirk_table[] = {
> +	{
> +		.matches = {
> +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> +			DMI_MATCH(DMI_PRODUCT_NAME, "PowerEdge C4140"),
> +		},
> +	},
> +	{
> +		.matches = {
> +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> +			DMI_MATCH(DMI_PRODUCT_NAME, "PowerEdge R440"),
> +		},
> +	},
> +	{
> +		.matches = {
> +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> +			DMI_MATCH(DMI_PRODUCT_NAME, "PowerEdge R540"),
> +		},
> +	},
> +	{
> +		.matches = {
> +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> +			DMI_MATCH(DMI_PRODUCT_NAME, "PowerEdge R640"),
> +		},
> +	},
> +	{
> +		.matches = {
> +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> +			DMI_MATCH(DMI_PRODUCT_NAME, "PowerEdge R650"),
> +		},
> +	},
> +	{
> +		.matches = {
> +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> +			DMI_MATCH(DMI_PRODUCT_NAME, "PowerEdge R740"),
> +		},
> +	},
> +	{
> +		.matches = {
> +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> +			DMI_MATCH(DMI_PRODUCT_NAME, "PowerEdge R750"),
> +		},
> +	},
> +	{}
> +};
> +
>   /**
>    * i40e_shutdown - PCI callback for shutting down
>    * @pdev: PCI device information struct
> @@ -16654,6 +16705,19 @@ static void i40e_shutdown(struct pci_dev *pdev)
>   	i40e_clear_interrupt_scheme(pf);
>   	rtnl_unlock();
>   
> +	if (system_state == SYSTEM_RESTART &&
> +		dmi_first_match(i40e_restart_aer_quirk_table) &&
> +		pdev->current_state <= PCI_D3hot) {
> +		/* Disable PCIe AER on the i40e to avoid a fatal
> +		 * error during this system restart.
> +		 */
> +		pcie_capability_clear_word(pdev, PCI_EXP_DEVCTL,
> +					   PCI_EXP_DEVCTL_CERE |
> +					   PCI_EXP_DEVCTL_NFERE |
> +					   PCI_EXP_DEVCTL_FERE |
> +					   PCI_EXP_DEVCTL_URRE);
> +	}
> +
>   	if (system_state == SYSTEM_POWER_OFF) {
>   		pci_wake_from_d3(pdev, pf->wol_en);
>   		pci_set_power_state(pdev, PCI_D3hot);

