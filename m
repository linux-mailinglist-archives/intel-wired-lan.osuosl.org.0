Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 42EE5854BEB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Feb 2024 15:54:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F299681F87;
	Wed, 14 Feb 2024 14:54:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1CpXE3YHmEf8; Wed, 14 Feb 2024 14:54:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 434D281E8B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707922482;
	bh=PvRTsns8F/LwarhSIsIhM1qn2mc10FjAfg0ZBNwLYJg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Q0gQldWI+upZoz/WbHGZr8p/PiZh4GG7aGZ+hlE2zLSEH1Qd1eCm28epNoL/rJzRA
	 xOMdJEjkyc8y3DxnobXesOilnWqBB4BtfZF3R+qhRkRs2A8MYaXf168VGKJiaqRxEW
	 wOyhuLjdGLPEPRbIr/O6FKdqjt2/9RfGBTwq74qSLBIl2zwUcnWaSWVP+h2pRZXOUr
	 dCSARmENFe0cssn/SMYhcBSZP15kdpH/C/Kk2KZwgVlQAhBD/Vq5lMnb4wxW9qYq5d
	 Ez6R2VrHfdV9ebf9F342LVfBvCHa6ZANNAhAJHcnzkSJIur0ii5/ztqgkE9vhm0xL8
	 bcyEFxgUd/kRw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 434D281E8B;
	Wed, 14 Feb 2024 14:54:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 362471BF304
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 14:54:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1F227405F5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 14:54:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gTwJ44vLAkBV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Feb 2024 14:54:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 11FE4405EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 11FE4405EB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 11FE4405EB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 14:54:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="19480187"
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; d="scan'208";a="19480187"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 06:54:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="3108731"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2024 06:54:38 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 06:54:37 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 06:54:37 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 14 Feb 2024 06:54:37 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 14 Feb 2024 06:54:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oeIsE3zobV4aW220F6dGMnG3nTFYSlRdyQZe5Oh6c6cRx8RJpC+jGxO3wyph7Zeq5oD92gorIhXvnc7r/GSKBI8NL26T830CSAgXZOHBdiKLd/07Qt7OaYDFBmtzTS4BV3mtJjHxSqluflVVopMImAoT2m38cpcVr2gHp2CvRJSN71o1TnfwGZckCIwhi1OF94cO0xvCQBdh58T3bBmmvMNcDk3e+B/GY5omhQy/kIP20QTDK2DePmmpY90+Y/w30o7MthlCoQHspGzdZSjY91kSkT9/WO0ebgcpKRVQq9mi1NLjcWUmmSTDueGWUIYuzNTNhfAIbyzpax1ePHcnkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PvRTsns8F/LwarhSIsIhM1qn2mc10FjAfg0ZBNwLYJg=;
 b=lZJyEDwzYY837ScebAXet5kdk91FFKC5qB3GfunwmqYPf/d2x+Aq/1xQgh1aa+DXByJb0c7mo0JJqdLWbz8nl6vsHUKyMwqHqcSHmLhFEXb2ntwigqjInJOEqCkH0ibfAuzp6VT21ENC27JdAaHk0yZpTY/iRaz6uq/wNo0zQ6ohPbdvce7u6c3yuq6MP9UAEPxdlPoU2W9vmgiYV2iJDAKb0gjlhhR4HqjPcffrAMwhEdD8dPIMKIn2uqM69kJ5FTCopRbXlarZCKPNCzs0zm86nykUjI77dBGc+vxqDPmuQ4cDRs7IgPPptxknkB+cfIKIVpT3C+Rjt+o57uCAsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SJ2PR11MB8324.namprd11.prod.outlook.com (2603:10b6:a03:538::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.38; Wed, 14 Feb
 2024 14:54:35 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::c806:4ac2:939:3f6]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::c806:4ac2:939:3f6%6]) with mapi id 15.20.7270.036; Wed, 14 Feb 2024
 14:54:35 +0000
Message-ID: <dd7247e8-8a1a-4033-9c1e-c52339426b34@intel.com>
Date: Wed, 14 Feb 2024 15:54:31 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: Alan Brady <alan.brady@intel.com>
References: <20240208004243.1762223-1-alan.brady@intel.com>
 <2e3001f8-a079-4d44-863f-979baca3b38c@intel.com>
In-Reply-To: <2e3001f8-a079-4d44-863f-979baca3b38c@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR4P281CA0020.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:c9::18) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SJ2PR11MB8324:EE_
X-MS-Office365-Filtering-Correlation-Id: 43c4db77-fcc5-4b1b-6551-08dc2d6cdbe9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qa4vLgy3nPk/S+LGmc1MnNQh7X9n0hOtsjo1p8vz/Fv7zS90xqujnx20bSKhWTPiO5UztSmRwSXmP7r+gIanrTRUQQna/z0i4aPfVgwebVdcPHVPbfYIZtPEJn6ls9IgrBNtmj1UUXzmrpPGK86056/Zv8ELbe3Ox3vngzA7v/XpdoRIDSmeJV9cMXOSQQuGSpgmcSvRbwOufPJNEmQeIsXPSbIm3krImqhiM7krkBLb2ykIzjrQIsGzDwBQl0P98j65pY4C58gK4/rTiMn8bEEvJjaVBaUnR5FGD8TZUbOQHQQgjXyGkJtA8bE4fbLGqw1w/shw6GYhQWcr07beQIUjo9G23ecgBhBtwe4HU+LqsCUSAVO2fXPmv2BfRc492uMAryAxaHdT8X6i1A6zD6xOKQjeiZ2b3CHuGIGvZKcG8r36DKgsNPwBre6+1ymuNSfPo3k1ARD4zsQJwFB3zv9RQZ3HQq+FLxjG1IrRkJyYrSZlNcMkTY8jeDEYTZypL9UToglO0YD4mCNBfePkIJWZ/Ju9yimg/4lVh1xhp2VdjMIc+5gwkqm/TOeWfp1z
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(366004)(346002)(39860400002)(376002)(230922051799003)(451199024)(64100799003)(1800799012)(186009)(2906002)(4744005)(31686004)(478600001)(2616005)(66476007)(6486002)(66556008)(4326008)(6506007)(6636002)(6862004)(6512007)(41300700001)(8936002)(5660300002)(26005)(66946007)(8676002)(31696002)(54906003)(86362001)(37006003)(6666004)(316002)(36756003)(38100700002)(82960400001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M1hrWHJLalNsbkpIWlljUG5RaytTRG9Vb2sydThMUGN5dVRUUDVCY0cyVHFy?=
 =?utf-8?B?bngxUzQyQkRnVkFvZFBtQVJGTEFHNkNhYzhQMGVHRTRQVjJaR1JtcGxqbWc1?=
 =?utf-8?B?dVZqdi9ENjlBektDQ25kVy9iZ3ZOdm1DSk9oOEwzNVRMNlc1M2pMUXc3bzZK?=
 =?utf-8?B?UURGMURKQ3I2VWVkZXdZQjNXbFN6cEd2bmxGTVZBdkRybUM4NHArUW85R3B6?=
 =?utf-8?B?bWxTZmZ6akJpNWJoWVlqSnREYmFjS0NxK3R3eHAySEVXRTV1a3BkMVlnYm5m?=
 =?utf-8?B?Mm9xZDA2VmhxZTYyempBdjZ4ajZLNGVqT1dHalUwSko4Y3ltSndxQmk0Tzhi?=
 =?utf-8?B?MlhDWmhSZktnU3RsN1RPSlZVT0YwaTR3Umt1cmo2OGQyRGh6K3dWZk9BNHAw?=
 =?utf-8?B?STZwS0NIWXlkZWc1eTlkUi9nNGd0MjRvUkFiclNKZVU4ZFV0RThiYXhWaHJC?=
 =?utf-8?B?WS8rWHZNd0hncXR1ZUk1Y1UxYk01VTh4MjRQbzA1RFU0alhkNG9UL1ZOUyto?=
 =?utf-8?B?L3JkYktqOUJGM0FoemFWQ0JqelRCODhBc2cxNTJJelpvWUxZUHFKOSswTHlP?=
 =?utf-8?B?UisrTThyR3BFbCtCdk5wM2ZLTFBOOWYzODJYV01mYkRENGZwNjZZVG03WDQx?=
 =?utf-8?B?WXMyVTNaTFdqdE5qSDNuNnZHaHNYN3pMWGg0TGxIV0tyVVdLb2x0WTZYQUVD?=
 =?utf-8?B?TEtrSDZuTE5lcWM2WlBIQnZlaEZIUXBocXVDTlVURGkxeE9PeXE0QWUxY3ph?=
 =?utf-8?B?bHZkVUVlRm0rckEvUjByS1FBU1NJaDQ3L0pZZWZuMTJWV08rZThybGlIY0dQ?=
 =?utf-8?B?UElYdHF3cEJaQTdDYTMraXd2S2pwRW9hdHlZZDI3RDNsVDZuczdMeldEYVNK?=
 =?utf-8?B?VlVQdkx5WWF3ZFU1Wkd0d21KSU4ybjBtWlAvWnFhcG1sV1JQZmFXT2VNd0k0?=
 =?utf-8?B?bnppMHZLMlZTcmdsTzludXRpN0NtQUhlTHlpdFJmVU1Bb2VrSjRGd1RrOE85?=
 =?utf-8?B?L09mVSs2cDhjdC9LR0lHaE53amlaV0t5RzJYRmt4czFVcW1nL0sxdWZFVHMr?=
 =?utf-8?B?TkZ3emkrcjFnK3YvRE5rV3daWjV3YUlHNk9FZHdWbEg1TlJYVVNZMk1kSkhF?=
 =?utf-8?B?OVJYREF6eUNLNmtPNy9VQXNkUHBqNG5BcXRWMnN5U1ZwOVg5SEE4aWxnaCtJ?=
 =?utf-8?B?d1ZrZ3hxb1NiVUFsSVZKLzdXM245YkpZZU80ZTJaMXUxTllDVGNMRHBTWDNv?=
 =?utf-8?B?bFpuOSt5ak5FMTQ0RjR4SXlsWW94TzU0VGdaQ2JveUttNm9oRTJkaUZzTW8v?=
 =?utf-8?B?WmM3dWoycXhUcG5GQXhCU3BtZ0xZVUZxN1B1TTRSU0FjcitPY1hUbXZXVFBu?=
 =?utf-8?B?QnFvWWZQaDBWbm1IWm5GU0lLSE1Qb2pET1FiU004WGIwRm9rdEhyYXZlSzll?=
 =?utf-8?B?TFFJTmIwYStkY29xZnBac0tVb2x1d2ZrNGxkOFZHYTdwcDdROXhDU3dObDFj?=
 =?utf-8?B?ckc0WUhiTmwzazlCTUZNSGtpamtqYXRIVlMyNFB6R0dHZ0dqbllRTmUvQmRL?=
 =?utf-8?B?ZE9JV3NSZkQxQnhMNTAwdnFlUTl4TlRzSE9XUGY4M1pmSFlCRkQvcFFGL3hp?=
 =?utf-8?B?SlI1RXpjeDhwdWdDUmUzYUlTdk5RODNra1dIaUxpWllPQ3NVOXg2eVh3QU53?=
 =?utf-8?B?TGVEQXpnS05PQVhabmk5MTVqOXlJTE9CcE5SanpFWW9BaS95N3NKWlQ5U0hy?=
 =?utf-8?B?NEZkc2V2Y0tiZXc4VFJEWVVUaml1MG1LejRld1pESGlzU0U2dkJOQm5zNTFi?=
 =?utf-8?B?dlBmekZjWWdLRG1iVVl0RzQ3U0cyem5yT3pvL00rTzBQbUk4NlcvNGo1MGMy?=
 =?utf-8?B?Y2tqejNCM0VTOEtXTU1TbzBBL1Nudy9Yck5wamNNaUdEZVR4SytYd0JWY2Zr?=
 =?utf-8?B?RnpiNW1iRzBHZldjWjdhdlFCQ2JiOFR6TDZ1MDdjdWNtQkdiVm1qTlJiaGpi?=
 =?utf-8?B?RjhrajBKL0FMRndCWXpzdjhIRzZtbnJ1clJmSG53WURwTUI2M1hGTm8rK3ZZ?=
 =?utf-8?B?OWJxeHNMOUthNFNhdFVUaWwwQUdNSWV2R1lNYjhiVkUzcFFIYWxUOUNyMUZI?=
 =?utf-8?B?dXhzY2xZaW9GVVkrdWxEek54RVZncnlCQ1FEOUVjcW95TXVORmQwb0tFSEpV?=
 =?utf-8?B?cEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 43c4db77-fcc5-4b1b-6551-08dc2d6cdbe9
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2024 14:54:35.1598 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Tzd0wtYyXBCnHV3ZyNbxkb2edPN6KGxvC4AmhfqHTyBPT/1ZKdpVRD0DOmMUw1S1ucdfTWMVqxgPM8uJ6xgDSGncfr8Gg5mg4xxpVsy6Q3c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8324
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707922479; x=1739458479;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VIxHtMWsU75pK+zES8JQeMqtiLSEMvbKltFUKQcOFdM=;
 b=ffuUUx/smUZmI3Dzlz8mlZg4hfmBS/NPFLff5d+DDjrbD/76N9QgVOFu
 FzCBCA43txQJMsV3aKOl7/1ZeF5QYTPGXcrY4lweGUSv23gYmDAkCqX1Y
 iPG8EhNBJcUkfRk5Z/KgjBoBz6kp890JD1U3KttAnqkVoZw8RVHhGd/Ez
 2pX2yLCvev+zKpyWJKH58+tc641B4pffz1GLLegkPFaq7Wqq5/Krxd1bg
 A5jv70MieX8HsxRYlEipL1JB/yBmmO7zTYw5B9cnaylN4FuoyCzBG9cl8
 VE+X5expN1eYrqZ5DPi/H8W9rHTiNdjPdNZc6xCaqo+3fnTW5gKOtdf8T
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ffuUUx/s
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 1/1 iwl-net] idpf: disable local BH
 when scheduling napi for marker packets
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, Emil
 Tantilov <emil.s.tantilov@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Tue, 13 Feb 2024 14:16:47 +0100

> From: Alan Brady <alan.brady@intel.com>
> Date: Wed,  7 Feb 2024 16:42:43 -0800
> 
>> From: Emil Tantilov <emil.s.tantilov@intel.com>
>>
>> Fix softirq's not being handled during napi_schedule() call when
>> receiving marker packets for queue disable by disabling local bottom
>> half.
> 
> BTW, how exactly does this help?
> 
> __napi_schedule() already disables interrupts (local_irq_save()).
> napi_schedule_prep() only has READ_ONCE() and other atomic read/write
> helpers.
> 
> It's always been safe to call napi_schedule() with enabled BH, so I
> don't really understand how this works.

This also needs to be dropped from the fixes queue until investigated.
For now, it looks like a cheap hack (without the explanation how exactly
it does help), not a proper fix.

Thanks,
Olek
