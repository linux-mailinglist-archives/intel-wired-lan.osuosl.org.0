Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F02247F7306
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Nov 2023 12:46:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 93E8082170;
	Fri, 24 Nov 2023 11:46:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 93E8082170
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700826415;
	bh=/baBO+jCNSEO9NPKqAYWFJb0eFaon+bExcWQGdD8Tfw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=B0TbeGNMoPXpoZfG/JJbeKe/zPNwdfAJUnnd9T7wLNrz7AWEcY5dbkzzK6qDw/OpA
	 crWT7Y9ZLZUBzxUFTKVOFHHPX413X1RkxHfY7nmWLFfAUZ2Jw1IcO4CCf29sgwh5W0
	 Zbgxvbuj+mVJgPMCxXminut41Dyi07P1OEI9PGKXhGSFzeXHff6/gXv6dWt/H4YXlE
	 B+gVL2+hmaKkb+bBea/5FXPbS4++7KmX41y0ZxDELvoQLHrJlyNXJ+v82/eVIWbAIC
	 i6ZqCbtk3VLF2s/m+MWJ5xNlsBJhUBpsqiV+/Fl3gJS1jrUxo0O5YA5V6/W9YZOEye
	 +liAejNXa4mfw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qwwpZpTXFlgT; Fri, 24 Nov 2023 11:46:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 746408214E;
	Fri, 24 Nov 2023 11:46:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 746408214E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3537D1BF995
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:46:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0D71261537
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:46:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0D71261537
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ou7o9XlBIDnt for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Nov 2023 11:46:44 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7102F61536
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:46:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7102F61536
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="423547632"
X-IronPort-AV: E=Sophos;i="6.04,223,1695711600"; d="scan'208";a="423547632"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2023 03:46:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,223,1695711600"; 
   d="scan'208";a="9116118"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Nov 2023 03:46:44 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 24 Nov 2023 03:46:43 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 24 Nov 2023 03:46:43 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 24 Nov 2023 03:46:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=guFYjgIUpsTH4KKjKWuhbPJ3QZbj0IODJoHwJkNa/5z7R8H70mS7+WuuKScXj1o/hT4rEqPjydILvx1kH8MupKg3Ausxshwf1s1oyB8BCMwsAfMHt7onhCeaaiydZW3qkL9+VM1NTlXf1ZWK6hlSKUhg/TIS0ni3SVhHne9DzSpR/JzSYH59+acv8A+AHFCyMACyxnRqN7AU7LByPmYgkLHZH0ob1ARhOHGGBwi8/0C19/KGNW7HgphBnhc/ohT88Q6ahMb0a1mRcqHXEDl++Gi0D23YSnKMrqWRtLlgFNMZP8u+hkPSmRD/FhO3JctfOSitJKp7e8zNUy1wcYAcUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qalmy9De/UBMqVfXYxtiFtC/3YJRyA3jmm0rydIQUa0=;
 b=e1Df1o2W2axBxnSJZYT2Ds0FCk00v3p6Rw1/hZthAWFP2yS+4aCXNPL/R8GAOVWsxgwE10cHZDamnt2UyA2jVcxogWHX6KWj+2Dn3s+bQ7Yh6PZ0NRRY5mJ+P2Ed6YhW3T4ONXKtX6QI2Ae7gHDqPoePF2RXeuuYf1kA3WYgMLUb95wZ4ykgSdi9F236dNyYApV+4zcB7iekQpNaN6BqbAjrPgep3s98nO013QyA51tvukXWrVSLj6gYSzAou2oeAR0Fa1Od9sIrHzzg6hWc1sXq6LWmtzm0GKbfopIfCfpMtasZZRtuBV6REumAfzgQuq6GRUI+QxFpL7BtV1LhNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by PH0PR11MB5080.namprd11.prod.outlook.com (2603:10b6:510:3f::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.21; Fri, 24 Nov
 2023 11:46:41 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7%5]) with mapi id 15.20.7025.021; Fri, 24 Nov 2023
 11:46:41 +0000
Message-ID: <6a45ca42-c23f-21f0-ccbf-7ea6bb5bd408@intel.com>
Date: Fri, 24 Nov 2023 12:46:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20231124114155.251360-1-karol.kolacinski@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20231124114155.251360-1-karol.kolacinski@intel.com>
X-ClientProxiedBy: FR2P281CA0135.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9e::19) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|PH0PR11MB5080:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c937630-0e28-4aab-e4a6-08dbece30608
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SEH9NIVnlGAVIORvW76iYQe2UOKZdN3vA6y2sbCs+UHp0YYY6Qcvuu4E24Ya12VyT7CbuzOFqsUL4SQRnO8bv50z8xTMhs4wedUpGT+QMJKIm3cm9WTD1Sww+ntzDlXMKXX4AJSsP3gB7fFtfULhloqmXMJ8I5y6aowCQ+qBi7ABpN83N8pABIUCBzGH4iv64GLjVD78TNT1NZFeBH7oEQrk5ptueISGHN0ekwj+Othj1nCFhTFnNTq6NLVfVpwyQ/W4tXK5rZmlMm0S7hldN4EDaQf3J9hucZ/CVioPHX8Lc35TUKIKWhWQGGMnNRHxAZhKQetrXRqBCGBkJmNR9UZ2gR4ltPY261bZckvxe7/JkebJ3GX330ey84aQVUb5M/TwHHYZML/46wFbOYphx6wipy0iuNQslQlTwlQThvoKn5tJnN3AEpXRAARgmTZcgXMv5vUzsGC8jN9RZrSruwu09VoapFZm5EI7U3camhl/n4eeP7+DIJHje4CbLw9IX2zFKE6Y5237ujJgERyUW+pgS6ZRnDiRABvbQa+lx/2N0cHTwJoOE9PltLykcDTIhRGWCCUDWQ/7Vsm1JlYPm8vfH+eKOwPcSKk5f6gZlNj0oW8CN4dam0NLA1jZi2isHq2bMdxbowZrtqlTJFBjwA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(136003)(39860400002)(396003)(376002)(230922051799003)(186009)(1800799012)(64100799003)(451199024)(316002)(66476007)(66946007)(66556008)(478600001)(6486002)(6666004)(5660300002)(41300700001)(36756003)(2906002)(4744005)(8936002)(8676002)(86362001)(4326008)(31696002)(2616005)(82960400001)(26005)(107886003)(83380400001)(53546011)(6506007)(38100700002)(6512007)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OFoxSmZtdlNiS1FJZ09HNFpyK3FPZnFnLzFmZVRyUmVWc0hYOTVBKzRLc1Iw?=
 =?utf-8?B?eHdITnNaV0phTERYZjUxVmpBMkRUak9BNWdseDFjQUZnT3ZrVERwQStoSjV1?=
 =?utf-8?B?WWs2MmdDNHUzelZKM2thU0tIUDV4R3JyL1UvVzNXMllqTFFDQzRUNC9OYkxW?=
 =?utf-8?B?WDNLRklTdG15ZXJxR3d1MDZnbmhJT2p1c0swdmg4cXVCTUVHVWVvQjlHeUhp?=
 =?utf-8?B?NWhvUjNFbGQ4MGtMRW9RUmIvU1h4UTVVdkpvdjdWVEdlWGplcW5mZDYxYU9N?=
 =?utf-8?B?TGtmWVoyaHZRTWJYZTJ4VDdpbUZJbXYwL2RFM0pmQ2h6REJHSTlMSUptWlFt?=
 =?utf-8?B?R2R2TkJoWGJwbHlGUFczZThvS1dNV2djKzJFWTNMME10WEZTcG5tSGR5L0Rh?=
 =?utf-8?B?MldaeVI0Uk9LRTBnZlpwaVMrY3VRZUYxM2R6aElBU3E2M05aOXhLanlsMTJy?=
 =?utf-8?B?ZGg2WlZZZVhYM0VsdExDREY1UVFqa2tmU3Jkd1FWNkY0dlFLemFqRXNiYlhx?=
 =?utf-8?B?eXQ5cEh6dG83TkpHeldJK1hYcE5GU2laTDdVQzNHanN0Tyt3NVprMUd5WGhy?=
 =?utf-8?B?dktwd3pCNUdSNEI1cTJmSlk4QzhxYWh5LzFvK2FHZW05bVJmYnllOWo2b3Z3?=
 =?utf-8?B?TWdUY0xDcHBLNy8rZDFmbG1XY216S1NDV1ZBRWNSOXByUlByOFI5b1FWd3h4?=
 =?utf-8?B?dHgwMitaMnMrQWpzSE5INDZvN3lkLzhxWEZPcE5MVFZTUE9mbU1WQTBQZEVa?=
 =?utf-8?B?SHBCTjlKWHNIQVhRNTVxR29LWmU0MkRaYlFPN3ppdXZCV3NGZG40d2RKQjBv?=
 =?utf-8?B?bGpwSXkrWUV5Tmt3cFNHUS9YYlA5RXdhQW93dzZ6MHdzT2hxT21GRmZPM3Bp?=
 =?utf-8?B?NmozU2lyNDZ4MkFuNmJsOVNINWM5dGtSdTRrbjJsQjNGenFZWm4zTmlKZitL?=
 =?utf-8?B?b2U5YndIVk9pQmJ1d09OWlA4V2ttWC94VjA0N0lWMzV5R0g4ZFdRUTlJSEpO?=
 =?utf-8?B?TXpJN0cwYnNaRjJSeFlEcU0yRzdLQ2hMN2lnQjgrTGVsblFVNU1CVUtsV3Ji?=
 =?utf-8?B?TlVZU3FiUVJUT3luV0k2R3FHSndMWi9aZjR6RXNpZ1E3cDlXcVJjZkU2Z1B1?=
 =?utf-8?B?TjRRditmRjE3b2tmVENoRGJoZVA4ZUtyVFZXa3J0QW1qbjg1ZzI4QnFTbnEv?=
 =?utf-8?B?RUZjK09rK1lBaVR3VlBzTlUyYlJ4ZXlwWFA1aGJHcEU0YUlDOHMzUzM1OE1N?=
 =?utf-8?B?RlRHcHZCNjNLZzYwQjdtamx4SDREZC9GZXQ3V2lMcTdKYUEzdmIranRtbHBh?=
 =?utf-8?B?Q2R1REdIVzlCU09sSy9VSDNVT1FjUWgrcDhlUFcyazkveDEwUjFXQ3VyUWFS?=
 =?utf-8?B?RmxCZnd1Q2Exa1VHeTl4U3hKRHZiZ1RLMG5TQkJJN1BYM2F0RVRpSldtc0NK?=
 =?utf-8?B?VE9GWU05Q0R2Q1BWTWJUS2lKWTdiMytCdElpWTN4bFJzZ3E3UmRWR3lOcWNH?=
 =?utf-8?B?bGlQaC84aE1mODViaEJQMHBKYlZvVmR1VFdJa0Y4K2VpeHFlSE1kQng1NjBu?=
 =?utf-8?B?dDViejZZWDZ2em1HeVZWOVVzTEJwUFdFMTFnMERpTCthbEVjdGF6bkpCTGd1?=
 =?utf-8?B?WFFXZk5wTnI1STNnR2VVUmhjY1cyYzFCN09vUzV0Y0lGbkhpZzhKSUhFWTJn?=
 =?utf-8?B?RFF3Q0VCMEVRbFRXMFRmMHZLT0Y5d2VkMnVWakl2V3puaGxzVGlmY2R4d1lB?=
 =?utf-8?B?U0dEV3orNjB4bWVWaVdnVUQxUHlyMEkvTjIvNFpObzRrSytZQ1c4VDViTWlz?=
 =?utf-8?B?Q0tFZG1kOEpzeDJlT2w1V3IvczR4TnZ1eXRwNlNoekJESm5tNzFJL1RjRTdI?=
 =?utf-8?B?cG45bWdsYkVMVEhPckZpaG1PQ291MlMwQzhjUWdETmZrSXJ5NjlzWE11dFZm?=
 =?utf-8?B?Q0p4VW5aS1ZCaGRjQWtlZlBTZFI0OW9WN2N6Q3h3NUxDalJVRFFlVGZIZ3hF?=
 =?utf-8?B?VWZYbERsT0pRSUNLN3hVYXVqRGZGdFl0THlpSjhyRlpwV0Y0QWR3MlBncjNp?=
 =?utf-8?B?UnpjcEZ0aERIWlc2UjVnU0ppK2piQW1RRUh6bUU0L3RTZTdMbUdWNTJPNEti?=
 =?utf-8?B?aWhwTmFUZU9ldUphUDhIeDNGZ2dZbzVJV2R0RWlvblY4dkVodjAzbit1Y2VH?=
 =?utf-8?Q?auPlz5J8OJwUaDrkHzBp8ec=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c937630-0e28-4aab-e4a6-08dbece30608
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Nov 2023 11:46:40.8194 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0PjgX7sXktPOXUhua2FqXVd6R9vlpKw0/lrmE8RDmL+TonRFeT1KcGwcNJR6RQbNfavaEIGgg4t7lc/NbILFva/1g/OudgZS47gfoMTFNNw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5080
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700826404; x=1732362404;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dR2GH3J67yFRpECRAVtJ9IGcYqnnlxsqKz1LuSh3PPI=;
 b=TOoR3ih9TN9fLhuiLiYu5YQfvRtRaelvxCI3cFJwizJdKESF1q1rRZzZ
 k2Sm2DklXlEJADy4Plh1BY25Su30wd2C/QKhzyZbCCfSgjkKMRAWQXee4
 Hws/mkrVB51YVBcQjmGK1OmCZkRkfG95aWrcAOvVhA3SblyCCmzUm37B3
 cJSDe7kBXktaXiQwiM0LVkbdnxlyZDcJiqq4Ai1Y8wiDykn0IboA4PBFb
 nU6DiPiLCYvSvIz7a83Womb59EvWSmrRZi2l9bQiJQ8yjRZQUAor1AkBf
 vabUdK02zxU0CVSQP9ytcHU3qe7mjf1vrQ7bDOi9QRpS28G5IwSU5xCA/
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TOoR3ih9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] ice: Schedule service
 task in IRQ top half
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
 jesse.brandeburg@intel.com, Michal Michalik <michal.michalik@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/24/23 12:41, Karol Kolacinski wrote:
> Schedule service task and EXTTS in the top half to avoid bottom half
> scheduling if possible, which significantly reduces timestamping delay.
> 
> Co-developed-by: Michal Michalik <michal.michalik@intel.com>
> Signed-off-by: Michal Michalik <michal.michalik@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice.h      |  1 -
>   drivers/net/ethernet/intel/ice/ice_main.c | 18 ++++++++++--------
>   2 files changed, 10 insertions(+), 9 deletions(-)
> 

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
