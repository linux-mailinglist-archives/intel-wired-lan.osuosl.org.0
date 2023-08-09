Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D5DBC77678E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Aug 2023 20:43:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6AA5541930;
	Wed,  9 Aug 2023 18:43:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6AA5541930
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691606622;
	bh=N0zfrdv9UG2hXhpmSdURg9gznI7Zjf1Wmi5dQwgs+WM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8EEbqHbiJ0o872Fgr1UdL3jr7B1Yp+5zHz5hHrmG5XcikO3M2MuLU7sXh/TkdQf/v
	 ri21Y0/cJ0gAejlCl+oem01TG7/icjFhq7ILJ1SeLWnZvgq6JfDadRgqp89dRP9hux
	 wOjsur8vnlVNkp4hj33EGNrPOlaRYfyklVYREd6ph0ciLAJh2qJPIUTO4PjG/vF83p
	 WtKpXdfDfl38HakeygTfTZFK+N0LcriRwX2aqWP36gtBbBZz5qrhCZ5/L2U+uk8tvC
	 3tORIT8RS39Ow2ljDogrNsr407lEmPy5yhHPVCRD1g2hjLZExwZLTQ3iNhQDO4BFTN
	 Z2SKFleMEFQ2A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oTaRDYSPtvOF; Wed,  9 Aug 2023 18:43:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0F67D418E5;
	Wed,  9 Aug 2023 18:43:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F67D418E5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 947FF1BF331
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 18:43:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6B2C360C04
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 18:43:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6B2C360C04
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 53jS2AzHLty8 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Aug 2023 18:43:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2167160BC2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 18:43:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2167160BC2
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="437561962"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="437561962"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2023 11:43:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="766952666"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="766952666"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 09 Aug 2023 11:43:20 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 9 Aug 2023 11:43:20 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 9 Aug 2023 11:43:19 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 9 Aug 2023 11:43:19 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 9 Aug 2023 11:43:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hpBH7KVySYNsv/iBWdv1NqKJR+3SCUB26I1qbt/TyHEV/AFZ/B74D96n+OneHruwJfInbAA97XG6ZnCtF/aCrjNQDePsUdw1ui3g3rp65RK77f+QS5uQK4V2qNY95/nFUZDyOr8ogyn6h2UF7HS0wvOCE5+W46y5lVxhMzb90L1B+9oZFromDcSRuf7l7CFOLv+rY6yWFZAnqqFe8brOTGpJO+xExNiL+lsI3ACAS6gIFR0hVHlC9ujzNG8ThTu/dzLbAVPwFzrLg/pYppbE2fefc2xe2bX00xDevISgMRoAL1TabxikPxk/CHUn3rtQht22RDP6CEDjo5DChagGLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IvU3e/uEq+0da9/eDC2wLXDmig8d96TPQ77FrrQFPzI=;
 b=H8YulijGXmmW2gI2dfWertmQVRtceRuYkkCnprJ2Fdi/csEDjNs6xaHpigS8Yl6TDLn+OEckd/Pq0UygnS9HPzGR5oRdsBWx4a8b5J89xMCvczlW4yZQ6x3VrQf28W9VLm00/jz5/zRX8rRMXCuHcxItWQlRCA8Y+HIHnVrINL1DaLSqrkI63zgceo35k5XwV/0AplnTUlSjEmZ1Bs794GSM6F5+jDs86MfulSMy+MwrwrVJ3vrJOOQn6Sf24wb9cp/VnKKJCK3oE6fIjnb7Ld24EiLWZuX0G6FM7+p5gpCT93NSkMutQNWw6zed3USqWioe0/eXX/HWgWFY9T3opg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3175.namprd11.prod.outlook.com (2603:10b6:a03:7c::23)
 by PH7PR11MB6930.namprd11.prod.outlook.com (2603:10b6:510:205::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.47; Wed, 9 Aug
 2023 18:43:17 +0000
Received: from BYAPR11MB3175.namprd11.prod.outlook.com
 ([fe80::f212:bf09:e307:9b9c]) by BYAPR11MB3175.namprd11.prod.outlook.com
 ([fe80::f212:bf09:e307:9b9c%4]) with mapi id 15.20.6652.026; Wed, 9 Aug 2023
 18:43:17 +0000
Message-ID: <6743f608-e38a-9ac4-37eb-f0bd36b78b30@intel.com>
Date: Wed, 9 Aug 2023 11:43:15 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.14.0
Content-Language: en-US
To: Simon Horman <horms@kernel.org>, Wenjun Wu <wenjun1.wu@intel.com>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230808015734.1060525-1-wenjun1.wu@intel.com>
 <20230808015734.1060525-5-wenjun1.wu@intel.com>
 <ZNKqYlC86siUsRzd@vergenet.net>
From: "Zhang, Xuejun" <xuejun.zhang@intel.com>
In-Reply-To: <ZNKqYlC86siUsRzd@vergenet.net>
X-ClientProxiedBy: BY3PR10CA0008.namprd10.prod.outlook.com
 (2603:10b6:a03:255::13) To BYAPR11MB3175.namprd11.prod.outlook.com
 (2603:10b6:a03:7c::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3175:EE_|PH7PR11MB6930:EE_
X-MS-Office365-Filtering-Correlation-Id: 593ddabf-f8c4-4756-e53b-08db99087f2c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9VnbqDh5rzet17c8f3IuqSoE6x5nGpMeUNQdaZPO8dQQoaskAgIw/F5AO6F6Vh8DApval91e5KE0u5n2/9Tn1lUFOP8E+e0FxNIpqmHGXHA8hGiyO9uIco7S2XJ0lyrrsvemwbNzVykN2K2Z8HKJQOANW5wAS6YIt9ug/xZhJrd0suJYz9cnP+R4cz4BPL63fUhB4rBkO8sISL0QS3FYadNo6MQsgZrhxDnKoWzrnx9GQR7eIVgS9WZPTmAonlLyY1bnucO2HASJHe2xd2QJDQGybLhya9ANRqU9VdF5GOoDPBsLs/JDf8rTsFN9I1T+gt+/93mwUG2CN6u4gsRxDbuMM/OUnRgz/lTUZTrLJIFCIsGHMDS6SWIa8xrG41l4rX1gahQBKPmnrh6UnWHZ8ds7DeVHmokqu/dNt/GeTYNoSUHVOb7JslLqmwmeXv0Sx6Yk5FtM3LM60S/2x9MjrTjH+nHwnXp4fPrFF+U6INVWal6N/zcLt4WqHzlMBFCISVaHOkds9K1CS1O4ye8la9fXmRkH5Fj3gL3vgPrGTMZuPQUTHDPvZsNYr26Catg2npgoX26V8Xz+Lt1Kczke5krbzNxbfhXcIUdxXMsmNLBRRMH1FLoWOtjd/gB2HkCHnxtEjyuoIupOvxobjK600w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3175.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(366004)(39860400002)(346002)(136003)(396003)(1800799006)(186006)(451199021)(66556008)(316002)(66476007)(41300700001)(66946007)(6636002)(4326008)(478600001)(110136005)(6506007)(53546011)(2906002)(31686004)(107886003)(26005)(8676002)(8936002)(5660300002)(6512007)(6486002)(2616005)(83380400001)(36756003)(31696002)(86362001)(38100700002)(82960400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OEd1d2VCQWEvelFNSDdRdXVLRUJrS2ZVai9EQVFRSmtuUC9OMDc2Q2gyZElx?=
 =?utf-8?B?T2ZHa2RLMG9aUVI4dytqWnVNVkZEN1EwQkE3SVhTTEVPVmdwUldhL2oxT3Rz?=
 =?utf-8?B?MjlVbFJqS1ZTcUxSRVpock1WOEI2eTJXZUh4dDFmenVkaGk0d1VMVWZJN0sw?=
 =?utf-8?B?SStxR2dNa0c3cTJLR3dlUlZxYWFNd2lLTHBJTzFFcGxlWFJ4dytIbmhZa25a?=
 =?utf-8?B?QW1UKzJuVjJvRmNnU1FkMWtMQ294QkN3WG9FOEl2akpTQnBCS0MvaFZxU0NX?=
 =?utf-8?B?c2kzNnRyalpSNVdJN2lFbWVHb3JUajdMa0FGZCtCZHkvUjVTREs1VDdaaWxE?=
 =?utf-8?B?cFhGcldZUWRZMFJoUHRxQTRPZ25OS0RnWHBXd1NrTXpHQ1pTOVZ5VkVtczhE?=
 =?utf-8?B?c1ZNcWovR09qNXVyQW9XNkRWVU1RamZielJsTlRPdmEwNU1DSG5oelFRM2o5?=
 =?utf-8?B?YVZCdk5ESGUyODAwMVFTZlpobkpUYnYwcjRkdTMrdTYycFQyMm03RTlrWXFx?=
 =?utf-8?B?WXdyUnJQTTNrSDRKOURTanhNZkNpbUdjd1BOQTc0T3B2RXU3eTROclZOMkZm?=
 =?utf-8?B?OWJUYzFWWklPbzRVUnNmL2FoeStUTlZnL1E1S2tPTDlXUEQ1UllQK1NWdVlS?=
 =?utf-8?B?dUltMHFucXFzMnR2TmE0NE94UlhkVXNvREg5b1ErUEs2OWRBMjFWVjlHV0Rm?=
 =?utf-8?B?QUJESkRSYmkvd2o5K2hranBnSFllNERZVHdpd3ZLcVpTSUd6cDJFYzc5UkU0?=
 =?utf-8?B?cGFHZUxaVExVZlVtTWFOdVluTFlzaklYMjc3emVhREdWRWZIZE80eXVhYzRz?=
 =?utf-8?B?a1d4NVBQUzR4QjgvbUNoWHoySHpjZkJxUDVpOHhYb0d6VWJqN1JRamRqRTdv?=
 =?utf-8?B?cjd1eGJ5YlY2d3BBMkVKUzFoK3VVam5hd2t0eU8zQmY4cTdzYUdVenBTNWdv?=
 =?utf-8?B?QkpwSnJOc0g5Q1o0VEVFM0tieHB2SVRZN0tTTVozWm9XUjE3dEFmTFN0VFU3?=
 =?utf-8?B?R1c4VFJEVkUzK28yMlFSNkFnbzF1eVdTUGZicmhiK1QxS3dDOFFIUndXOXZW?=
 =?utf-8?B?RGhRR2dlbnkwNjV6RGh4UmlwQVhDUWIrbThmVjI4MXUrTFFNUENvelJnNmls?=
 =?utf-8?B?TU92dno4ck9DL0JHemFtbGRhWmxONjloSmxFZXo4UnQ4MmdydGJic1Qra2Fn?=
 =?utf-8?B?T0h3a08rYzk0eFkyUktJcThQV0I1bVFLWncwZzVsb3FLZjk2cUlMTmRwb1ZI?=
 =?utf-8?B?d0xvZU9sckpCL2NISmczU2RhZTErSnVuanVVWVJTL0grMGt1VU9lSnREY1kw?=
 =?utf-8?B?Vmc1SGxML2djOHo3NjJXb2Z2WGhSc0VKemZlaC9Ca0pBRmZRdWtLdGV1ZUxG?=
 =?utf-8?B?ZGpqRm9Fdm96VW5jaDNNZDBadTlFR3M5NE5ybkw4R2h0SEJPSFFrRjY5NlVD?=
 =?utf-8?B?N1pQdzAyRXc1VlYxbzVLL21wVXMwN1p4eEkrNnBUeVZ1ZzRXdE0vTkQ1UlNK?=
 =?utf-8?B?QXBxNHhQZTVkMWcydWJSdCtuNWR3SitYVkJhN0wrTytQYnRyeUlRUEhmZy83?=
 =?utf-8?B?ZkVHU2FDTUhOak5sU2xPVTV4U2pZc1Y4dWU5R3BmMCsyajNXWjdPYUR6U2xX?=
 =?utf-8?B?STlVbFlYSlNZSmtGMVFkR2JucVRMcS8zMFFRYjN4cU5YMTdoR0JUS0FiTk8x?=
 =?utf-8?B?cXJkdzBJUTlrM0VuZWNsU1ErMEx6NmJKN2FBKzllU01sUW5VVlNDaW1ic3Nu?=
 =?utf-8?B?N1VWTm5KV3ExZEFxbWpnUnB1OU1UY0JhUFlQaE42NFQ3aFVxTFo1VjFOL2pi?=
 =?utf-8?B?MlJZTlArZEVaWkJOdkIzSHZqRVlGc3pBOWRreSs5YXJFZXdIM1ZhVXVCV201?=
 =?utf-8?B?RHg4dXdsN1pYZkZndjJjbWNWeWwvNlpOc2s5WFR6RHRwdFNJN29WcUE5MXo0?=
 =?utf-8?B?anRYQ05sMFRUeUhKUlVoS3B1Q2s2eGxpQ2lpVm9RdXZlRkpIV2o1aEN0R3ZR?=
 =?utf-8?B?R1lTSy9YUU9ESksydEJBMW5ZMlMrbWxNdWVUVThiWjdDK096VjJZRkptZVc5?=
 =?utf-8?B?UStubnptSlBXVHJwdWdJWVVRY0d4aFpJM1NJUjhJMC95TVk4US9CUVhJcy9r?=
 =?utf-8?Q?6PUi6AVDFmcO+duetzCqnntxi?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 593ddabf-f8c4-4756-e53b-08db99087f2c
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3175.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Aug 2023 18:43:17.6736 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 12gzbN562sNef0vrhjvWUa1yIOuz/BxdzS4E28D680y/bA5UyJxlJJsXkWLFz1nj9xPNOTqQ3VJI0CDBHCSm0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6930
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691606615; x=1723142615;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HGV7+ht+zNOF5iZ2tZxZEfzQfRxrb/TAia00O7HlSik=;
 b=BBXH6XGPSknzjl8V3KTIGrS2R3zkNUc5NXT5V29kSHnYX+Qg323tlC2X
 zrwcvml9f0AnXULz2jp9UGwwHBVYETV5PQUSVqOcc9Lak9VssKyMeoLUD
 iTuPgOf1KvF2dX7KEBXRKRRZn/a9j6HwVcOHX1ZFGIdSjCSOef9DG/zfl
 XNEbFPuwf1BrRYsKDwLWHwF3SapzPXFlbyFhc1Cfjfv+CjI6g12UGA9Zl
 wgDc4tFk7wcewZPE37ZDoDft9f1zhH9LY4FdXVQVSv1kRFhsNnBg66mNJ
 t4rKXggeF2yqd0oxuWutJMW0NxEsx99rhcnt+qpiBw+wRY1bAaid7+ljf
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BBXH6XGP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 4/5] iavf: Add devlink
 port function rate API support
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, qi.z.zhang@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 8/8/2023 1:49 PM, Simon Horman wrote:
> On Tue, Aug 08, 2023 at 09:57:33AM +0800, Wenjun Wu wrote:
>> From: Jun Zhang <xuejun.zhang@intel.com>
>>
>> To allow user to configure queue based parameters, devlink port function
>> rate api functions are added for setting node tx_max and tx_share
>> parameters.
>>
>> iavf rate tree with root node and  queue nodes is created and registered
>> with devlink rate when iavf adapter is configured.
>>
>> Signed-off-by: Jun Zhang <xuejun.zhang@intel.com>
> ...
>
>> +/**
>> + * iavf_update_queue_tx_max - sets tx max parameter
>> + * @adapter: iavf adapter struct instance
>> + * @node: iavf rate node struct instance
>> + * @bw: bandwidth in bytes per second
>> + * @extack: extended netdev ack structure
>> + *
>> + * This function sets max BW limit.
>> + */
>> +static int iavf_update_queue_tx_max(struct iavf_adapter *adapter,
>> +				    struct iavf_dev_rate_node *node,
>> +				    u64 bw, struct netlink_ext_ack *extack)
>> +{
>> +	/* Keep in kbps */
>> +	node->tx_max_temp = div_u64(bw, IAVF_RATE_DIV_FACTOR);
>> +	if (ADV_LINK_SUPPORT(adapter)) {
>> +		if (node->tx_max_temp / 1000 > adapter->link_speed_mbps)
>> +			return -EINVAL;
>> +	}
>> +
>> +	node->tx_update_flag |= IAVF_FLAG_TX_MAX_UPDATED;
>> +
>> +	return iavf_check_update_config(adapter, node);
>> +}
>> +
>> +/**
>> + * iavf_devlink_rate_node_tx_max_set - devlink_rate API for setting tx max
>> + * @rate_node: devlink rate struct instance
> Hi Jun Zhang,
>
> Please describe all the parameters of iavf_devlink_rate_node_tx_max_set
> in it's kernel doc.
>
> ./scripts/kernel-doc -none is your friend here.

Thanks.

As this function is an implementation of Kernel API. To be in sync w/ 
kernel api definition documentation, will omit the function description 
here.

>> + *
>> + * This function implements rate_node_tx_max_set function of devlink_ops
>> + */
>> +static int iavf_devlink_rate_node_tx_max_set(struct devlink_rate *rate_node,
>> +					     void *priv, u64 tx_max,
>> +					     struct netlink_ext_ack *extack)
> ...
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
