Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A81CB582FDD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Jul 2022 19:31:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3FB382861;
	Wed, 27 Jul 2022 17:31:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C3FB382861
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658943069;
	bh=MRonz0NrYlVk7zFNWrWMnfHp84dO+bqMHwsfr2R12yA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZZGT6X24CyrPL7/exXkDcZ5gCDjQF6PBej86BFdnL35slsaIV+OSbQHLk8nFX5X3j
	 LcxzlylLcCLtUGQz/eWGMlinGnjoH1aVuKSbaFUKjr/SugMSKKxevd0fjZhb6y8IU4
	 7PY5U9rr0LXbPQu1Hk6Zm5TWREi4E/N5AykLhIOxjBY/jbHhjezfNAA0cuzMnxEIlP
	 vycmoTag82Pu+VdZTOyCwEb1KZ5uMrHnh3sS3sIkOckz4BLucBSarObShY5Ozonc5K
	 FgK8E4/R1x02nW4UcMehMJeQ55sRaKtMX7JEXDoHjqLD+LviVM44SMokclbi4kxKps
	 OUN2r39V0YQxA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yzKHXtbnB8YH; Wed, 27 Jul 2022 17:31:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA747826AA;
	Wed, 27 Jul 2022 17:31:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA747826AA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5E1B41BF9B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 17:31:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 440E060B8C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 17:31:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 440E060B8C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 43AqTFBMWLHH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jul 2022 17:31:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F351860B30
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F351860B30
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 17:31:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="289067181"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="289067181"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 10:31:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="604222793"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 27 Jul 2022 10:31:00 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 27 Jul 2022 10:30:59 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 27 Jul 2022 10:30:59 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 27 Jul 2022 10:30:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LZ0LCB+bgpEtkvp5W8f/mOKRWz9CsDj4YLUsjOche+nkTSNIkQlFqXLQe7zmMuk2Ttbc3XvSTrRws7jmGllTw+3kg9r4+3Z5NVVYC7TN8dY2bna8IJ4RbwVCMWONKLpbRMzmyUPysw8DR2KUVwORB+prDXqqZXQGKS4hHDQhJpr1I0FbfrpEpXvTSwMi010fuFg1HFkQIM4GSK5bOYkwi5wJ/6ctsDylN6hcMc/foPKl6zQZqWV8ax5K3P81uRl7UHF/WB2LR8pxIihjp8VPEFjmSUUtfg0gSImdaRRV75dYM1kxI4diwQjmCMhRLS9nrh7zT4xIf34ewpNIxu7eKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JQL0Kuc6n7REgb9vl6E7ia1npF0/i6myCBv/avZOUAA=;
 b=O1WaciJkt7Lxn0Kb/J554r9rXyMX/xYyuCgwGv+RpLWUJxtQcoeNCQrY0XPjHPQ7qqWpNChbBPafgnssUNtU5i0UtiKJjV0EvjY0y8TZGyXCPMNAusDcEdHJiGAoQE4sHZWCHM6pxivW0Kxss7MOSWkVtTId7vYYCEzELNUCY6hPYZOYAyUWK2LXhJo9Q6/jH7Y4Ay0CK2PRmZ6DdhW3DW+6oVuQH7AQVos7v3Glln7R55v5QuDcynExxlLIy9nmggACYwndBoX4wTTt6mxRZhwca5UZfx0haatXXEYm/zMkT5uZHFWJqMkHjJIXBfqWhaMr6LE0jswGnJCeNjd9TA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MW5PR11MB5786.namprd11.prod.outlook.com (2603:10b6:303:191::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.25; Wed, 27 Jul
 2022 17:30:46 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb%7]) with mapi id 15.20.5458.025; Wed, 27 Jul 2022
 17:30:46 +0000
Message-ID: <956e4d5d-c71e-fd8d-bc1d-9ed431368fde@intel.com>
Date: Wed, 27 Jul 2022 10:30:43 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Jacob Keller <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
References: <20220726234357.50610-1-jacob.e.keller@intel.com>
 <20220726234357.50610-4-jacob.e.keller@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220726234357.50610-4-jacob.e.keller@intel.com>
X-ClientProxiedBy: BY5PR20CA0030.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::43) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a3dbcad7-f754-413f-a2da-08da6ff5bd52
X-MS-TrafficTypeDiagnostic: MW5PR11MB5786:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 68voNk0CNYygVKHX0tGRAdBzw9tpMBxxxiA0pSSoc63/FavKXEo9oUvEmZC77PhiO1OyS1mWD2IZOIDG4+fT6spr9H0x1tjrY0eeqnZCPKdIzvtnUUK9pnB3GlixbE63Nlli1ZEuaFaneTdPjNggI7IGqfhjgX/A/WrFrdyZ1XrMQZLuhh4y/1SCqxBJl29qFCZEScUH4or9xl983JaSS+bbFvOhdRIaEMEeWXdqaqxkQfT2nSFBc3kkLxLaHntxyFcOPuPBpNE2/snrdl4Ms+xr9+YiukCc0CmeO6r2mPV4Le/kB0V4hy6LmM9b8Da9brOZ2EiBcg7im4aA+LYiiCocQQILkMxFj/qbQyBEynK4EhjZEUZ/CacTCDS7yvhdbmyjuWealsG+rCy4A8HX7oeeId4+9Q9psz4jbxxc8UP2IQqZLiv/lGgiCHwEWQc0F17rBYvL017mOMNWRQXdgabgrhb/QeaBvkaYCT+vvh6uSgcKd9X5IKlC3Ux9GcKSNa20KWlfNC6js0SGtNeNX7e37TIShUKuNj2eXteHnmOWbz4f/pIlYga95t74QWRxaq2a8XRE0KVvPFjzmThunDzrgoyP6uXClMDseJdpMN9B6jdEiQOpbMQloDzHIi1rCwKBzsY2PCIYrie30nMhSAKcKFrrrXvUHqmLEwXNZgA0MYa0zi8He330m9Vin0rqpAwjULZMK4z5B1qMWPZ8NOXIChEvysJFlIYyAZJ6BmqsikN5ArVRTu0xwqzaXV3elbOqsTjDf5iTR3vSoZ03OQroH0TTm/jYnvEDXeWaZCcRIYP2ONKHTo9Mpq1BTleQWs07v7TUvsiPMi5Mu/sUVA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(136003)(39860400002)(396003)(366004)(376002)(8676002)(6486002)(38100700002)(66556008)(66476007)(8936002)(478600001)(66946007)(26005)(186003)(5660300002)(6506007)(82960400001)(6512007)(83380400001)(6666004)(31696002)(36756003)(2616005)(53546011)(2906002)(41300700001)(110136005)(31686004)(316002)(86362001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bkxCZXJ0UFpucVRaQ25qYVdTcFBEbmlDSDhFRnlGelFucHZ5SEpNT0M1WUVR?=
 =?utf-8?B?TDlUM1BQSkZ4M0taK3ZuTHBFMVpzMTVvbU1mK2UzSFZ0UWdxNmxnd2krRnBq?=
 =?utf-8?B?NGU5b0lES2xNakppRGkxRHdFYUU4MERIeEp5aXNoWHNBVS9DdXVpSWRaNVR3?=
 =?utf-8?B?T3I1ZllsSUc1SzROWjJEQmJXOWdvSjJlSUxDOTFLMmtBWjF3bUdHTlY0cFlL?=
 =?utf-8?B?QnVGcGJEWWdEZm5TeFJnSmVqeko4OHJRMU10TkFCZFZjVGpsaURVbjMvRHNB?=
 =?utf-8?B?bTBQTkZ1TmEvYTRmemFqbXNzMFZuallNcm9CQ1lXYmpQaUpRbytzNUFTWlFS?=
 =?utf-8?B?aVNMNmlUZ0QrUjdJNEpDOVB3NVVMZHg2SitQZnBxWmpxc1ZIVHp5MTJ6YWF0?=
 =?utf-8?B?Y3loWlZWTmhORXhHYmpRc0xSRGNueXJWN1kyaG53V1VYbmVFRVB5RS9PNHpW?=
 =?utf-8?B?OGdadEQ5Zzd4RHdDQkNpcTl0LytkcTduaWZ1ZlVEUDAxc0JReXZUZjhJY1ow?=
 =?utf-8?B?cEVqaEhGM3VUV2lwSlltUDh2U0JHazJBaE5ZK1BCcTYzaldreHFGYXhLNncx?=
 =?utf-8?B?VGwxTHYvZEx1YU0yRFZUVDFRZzdHODQ1QUloTy9xZmJiRFVQQld5cUV4S0ly?=
 =?utf-8?B?ZEhLeHRZQ3FUckJlZUpHZUZCUlZXZWRWcnBmazBHbzRRbmUvUHlWbXlOTkZz?=
 =?utf-8?B?TEVUUjQ5Z0pvREFmeGlMam84TEMyNitOOUhJOWZnVmRyZFFCdGJwYmRNZFFI?=
 =?utf-8?B?S2htTTVwVEswWTZ4R3JtSFErRzFyMXpCa0RmdTVrZDFMNW85MEVUQkhFUmFH?=
 =?utf-8?B?WjR5RFVBQ3k0cWF5K0xXWXQ1amJYNWRUK3dRRG1jcjJUM0V4cXFDZmNvdUZV?=
 =?utf-8?B?elBxeGZCaXhFMW4walBxZ0xmcUxJRzJUazhiZm01bEZZZVJKaGs2TGhoNURC?=
 =?utf-8?B?Nit5Nnp6ZGtSTjllYmRKdnhQWEVnUGwxTStScDFER2x4QzhtT3lNTytBMFhM?=
 =?utf-8?B?UlFaMVI4K0ZDQndOMlpCOHE4UUZ3NHdyQllVZ2ZOMFoyS2JYbXEwUGNzbWUy?=
 =?utf-8?B?eHc4d2owM1JHc0o1a1RyMFhzNDhBMnZvTWI2c1JkRzRDS3VFeWhVZ1FXOExV?=
 =?utf-8?B?ZHQ3dHpFSnRRKzRqTytmejBiTHI2R1dVV2FWeWhHaTlDSzBrdWJ6S3ZmQUdG?=
 =?utf-8?B?dnB0ZlV0MmFJbCtZU0NNSm9laFVKS2FEYVF3QU9pNk8wNmluS0JUMjlyT01B?=
 =?utf-8?B?UHVJWXp3c0QwVThKcG5TZGovOCtDNzl1Q05YL2VFMStVOTdLc3l4WHVFRGNi?=
 =?utf-8?B?VXlCem5TV2Y5LzlYcXhodmF4Nk4ybUlLQ1hwMGY1aWlLOGpyVnAxb3dNcmxE?=
 =?utf-8?B?eHJiRHBMTm9tNy9Md1VTYkFCL2t0RTNBNG5tR2ZjMDdLOVY5NllnZjl4OUFT?=
 =?utf-8?B?SUxOWWVnSW9Qc2pvTWFiOU91UFJzMmozbE50ZlBWSjc0eWFEc1dQUUthbkpF?=
 =?utf-8?B?UzJrM1FhanVSUWttWmpzbU0wN0k1WWNYaW54VWRuQmhqWE1uTzFXWTYwSU5a?=
 =?utf-8?B?Z3RNSUhRZlNwemtKNnluS042WFdWUld6M1Yrdys0cW04REtLVW50aWxadkZt?=
 =?utf-8?B?Tmx5NFpGNm4xbXM0VHlyQWtURmNwWjdDK2tSekxNeE5HbVM2NDd6RXVNc0w5?=
 =?utf-8?B?YUVRWnJ0c25uM0tnT3E1ZEphRS85dWRUYy9CcitPcE8ydlRTVytQMStkS2lE?=
 =?utf-8?B?MnF3eXp6c1I1MER5YUo3eWJnQTJBWHJrbjNoTWQ5eVQ2Ky9IQlNJdEsvc3lx?=
 =?utf-8?B?ZWxGbkx0WSthVTdCVlNFV0RmeVRmNkRzQjlTdlpNSXdzb2c0YWlXRG5zSnZS?=
 =?utf-8?B?TzN3R3UrT1RaRHRXZ2U3WmR1eEdiMTlMUWs2aXJvbTVtS29FdVRlQUE0L05L?=
 =?utf-8?B?M2U1YVI0bi9NdnBrMENoak5pYnNtRmcrYmE2VTRUUU9LTUlFcUkrWDhldlFs?=
 =?utf-8?B?eFNXMW9QTGlQdlpQZCtjdzJzZDRPeHRFVUxNT092d3BVckZvS3kzM2ZySTA2?=
 =?utf-8?B?YjlkaWlOditvNEF2OHFXN2xpNXJzcVBCbU5tajI0N09wTkkxbUw2ejZvTkpy?=
 =?utf-8?B?SU9nUG1TUmJiY2ZPdTVTWFhjS3h5blBab21MbVp0S3ZPRjZubWR6ak0vT01v?=
 =?utf-8?B?RFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a3dbcad7-f754-413f-a2da-08da6ff5bd52
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jul 2022 17:30:46.2045 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9xtsSTe+NNkku+XXwHx/0sLOIuYnDcu99zmGzHzHIwSgotEAzPGK/aTyjQfaNbM6zWP3P670UyxUbN29dr3t/enHq2ernr2GeTXiccCt0Ro=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5786
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658943062; x=1690479062;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=15LsTSy4KbL77HkL90jL+TRE9hPKeR804fI38AywcE0=;
 b=craNotbDbfboCF5iF70TLYhqvU2XzR7yxHxLP8the7viBcS8W4j9ttjr
 T9be4PTlbG9EEh/EQn059l8s4+PTMAOwhXyCSVdxBn7W4QmdEWLWhZ0Uk
 JWUzs/tOFe5HMLcOgByHHnXnXkBMosDiAFxGBMF4n64fVyQfy2r0gVcL7
 DGa98PdP9k19m73Z+z9+f+3XQ+31PimprQlL9/ucvh0f5GNkjtdvm6RKv
 a03kAUMKdYjK443kFR9NyH394wQRzoIWPkpiKSIDej9GQ3snqqojWgcno
 SbW9u+2HH/zMJVYCFa7qJOswKWhwDyGouAjuUZXYSIC1zSEC4F9m/ETVP
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=craNotbD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next 3/6] ice: track Tx timestamp stats
 similar to other Intel drivers
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/26/2022 4:43 PM, Jacob Keller wrote:

<snip>

> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
> index 10e396abf130..2cabdecbb23f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
> @@ -171,6 +171,8 @@ struct ice_ptp_port {
>    * @clock: pointer to registered PTP clock device
>    * @tstamp_config: hardware timestamping configuration
>    * @reset_time: kernel time after clock stop on reset
> + * @tx_hwtstamp_skipped: number of Tx time stamp requests skipped
> + * @tx_hwtstamp_timeouts: number of Tx skbs discarded with no time stamp

Missed one:
drivers/net/ethernet/intel/ice/ice_ptp.h:194: warning: Function 
parameter or member 'tx_hwtstamp_flushed' not described in 'ice_ptp'

>    */
>   struct ice_ptp {
>   	struct ice_ptp_port port;
> @@ -185,6 +187,9 @@ struct ice_ptp {
>   	struct ptp_clock *clock;
>   	struct hwtstamp_config tstamp_config;
>   	u64 reset_time;
> +	u32 tx_hwtstamp_skipped;
> +	u32 tx_hwtstamp_timeouts;
> +	u32 tx_hwtstamp_flushed;
>   };
>   
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
