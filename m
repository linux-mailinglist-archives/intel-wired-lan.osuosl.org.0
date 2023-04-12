Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BF8166DFC09
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 18:59:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 36019409E4;
	Wed, 12 Apr 2023 16:59:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 36019409E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681318743;
	bh=YkmnJfHxK/1QSr2s/OAzcwfJrI9WYO1xv3PNFPaM6Ic=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DwJqp/zVYJLAwn2dvgmx58P0Cla/gQKF1wonR0ZvaH1DJ+1b4lljEF3t0V7d9Kz9s
	 ZutzqGcKpMv/GDcuB5kf82Pqs+QvtW/8kjsPDlWMS7LlgGilRBkhBBkiqGM/N8iX7/
	 RVHc9UwrbTs9CPVsasiSPn4qBvgcFoTG8z4OzyOQTs4Eo1T+JSjTOpXMdxNru5NFcC
	 x9F/01cW2qKS4cWEhBhLLHoFgLxm7+wLKTw3csf1a0r7ViOFDErxfUVYTyyVgncCRI
	 Z0s5YQgJSreEc4I8Fu3xHZho89YXXbku4p3D1w1J1eVUot8a672oUYLQw1IzTD3SOu
	 MBHlaiyUi/cNw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5YBn3Se9rfg3; Wed, 12 Apr 2023 16:59:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7AA144094F;
	Wed, 12 Apr 2023 16:59:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7AA144094F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A3A071C3D30
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 16:58:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7AC5460BA2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 16:58:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7AC5460BA2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DtAUKlJGEN_T for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Apr 2023 16:58:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8AE9F60B7C
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8AE9F60B7C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 16:58:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="430246615"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="430246615"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 09:58:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="682540105"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="682540105"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 12 Apr 2023 09:58:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 12 Apr 2023 09:58:54 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 12 Apr 2023 09:58:54 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 12 Apr 2023 09:58:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MofDebheh9Qq9Ntw5I1IR2b57dSUUmyfN4CEEvxD4VY66FftjwjSJxjUCKyi9JrDJygY5T3RQY6hSxVE6LkISlDsoKt5FwU/8Y1bgZoHOLujx53U2MYg5IoazYftvK/6kQk6Sz+7HgktHicW05vFtaOa+uS9KLWqBGPTThotgn5IX068IjAWEbTgZvE+u9Kn5BRTUktYxLT+XS/BD4WYbCv1aIG/1bl4U/NX8jufgw+29boshTKHfyasnVDHZzcVHy/BCbzkudwHL6nASrCiTy3iHcI1m6QKKvG887h2+SR5gXWRYT5kUV+efFYK8XrmbfORMOFtFNflTmw36UKtlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fZM6B2FUMT6oUWdL7zdt1bDCSWPcb26ksb+Nh0kD49U=;
 b=DwE0jnIQDsR88MivkQ0A9inglN7qgTYzxn+hWwAvV4GHg729iyctFpvofarCv/rAeDDtuTao4bgZnyltM9Cy1CKroTpxbhmoYn6tn9IupvyJ1msAjUrzzSW1PPFtR9yEciwzuPPsiee804FaXTy2/MYxknM6dcoUzEUwEw/uRIManldYGg2a91Z/KQRoX5u2iv073abbHRsnoM4/EqZARpi55y3A17T4axOKcrhvJ6mFrObPpJP/A9PrPxYtL2Se11W9NdcQe8NUoEqIHlFZRdjAb76mULVYZgMDnvdsl0TG+jMapkGUxCGx10R6QxqDWwmjywl2Ttfd/NbDAN6CBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4538.namprd11.prod.outlook.com (2603:10b6:303:57::12)
 by SA2PR11MB5116.namprd11.prod.outlook.com (2603:10b6:806:fa::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.36; Wed, 12 Apr
 2023 16:58:52 +0000
Received: from MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::8733:7fd2:45d1:e0d6]) by MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::8733:7fd2:45d1:e0d6%6]) with mapi id 15.20.6277.038; Wed, 12 Apr 2023
 16:58:52 +0000
Message-ID: <ffd66203-4349-0986-2130-f8b156f1923a@intel.com>
Date: Wed, 12 Apr 2023 09:58:49 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.9.1
Content-Language: en-US
To: Shannon Nelson <shannon.nelson@amd.com>, "Linga, Pavan Kumar"
 <pavan.kumar.linga@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230329140404.1647925-1-pavan.kumar.linga@intel.com>
 <20230329140404.1647925-2-pavan.kumar.linga@intel.com>
 <49947b6b-a59d-1db1-f405-0ab4e6e3356e@amd.com>
 <a5b7f1e4-8f14-d5fb-8f88-458d7070825d@intel.com>
 <f7c7c691-d173-73ab-c24a-79c22e6ef3b0@amd.com>
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <f7c7c691-d173-73ab-c24a-79c22e6ef3b0@amd.com>
X-ClientProxiedBy: BYAPR06CA0005.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::18) To MW3PR11MB4538.namprd11.prod.outlook.com
 (2603:10b6:303:57::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4538:EE_|SA2PR11MB5116:EE_
X-MS-Office365-Filtering-Correlation-Id: cdf15c28-fb7e-40bb-8bb2-08db3b773161
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RWYfeDmFdJOM1RYYpmhxeQKUTPaVYCAWabN6iiAIbiVVlL5BS+GNOsByYlsgjmw5saqS0V32tOl3YAQgSh/b/Dg/huEiXRj4wwHiIKid8xlFCBsAuuw6GsoTVkeSmS4gZBZFeEhimeGIG40hFJrKmlHdKEiHPxAdCBtoslM3Rx7qR295QQDbvdJKdwUvtJFxMpngmHsF4D2VbImiHAjVjCvO/qLRNi67fUGiAeJSYROiOL+FqTGG7VyMRr0jlH72+6jmaII7UBaHjiiuw2SU4O5dgBuTtZ/o2KBRz6NVZHGRilo/YYoWJKUvLAzUmS8n3IYxgThmYm0sS6qDjJm/9Hhzk8yIzl6YOfWjyBa5xTh+NBNABQPsJLZPkMEZ8uv4NO1fr8kvxbjNy1FpLOLVxFXl9XveWHjEhZQE610EnFlkq1O5PBbDv9+tjVM1pS6H3gEh5OZEL5GwBZghk9rbpkNTut16lsPbulaCycFEsO6Azs1zbKN9mvwFZh8Cv6sFy+/m5SSp6b00LMRcnwZGH3VKsThr9+yTYKYeaojIcwrYLIA+o0LUeH0Goi+lPeL2qjv+4i4l4ai0D1IavCYcZfoi3zTmtGNS17Rn3DdIGeXCnBhC3a0UCksevdw+prwkPrRPilc2a482mrDENXHrwA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4538.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(136003)(39860400002)(346002)(376002)(451199021)(478600001)(53546011)(6512007)(66476007)(26005)(186003)(316002)(6506007)(110136005)(2906002)(4326008)(66946007)(54906003)(6666004)(41300700001)(6486002)(8936002)(66556008)(5660300002)(8676002)(107886003)(82960400001)(38100700002)(31696002)(86362001)(83380400001)(36756003)(2616005)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?elJHNE5PMVJmekZPVzZTY3FNT1RGM0VYSWFRcDlma1MvSjQwSWFINWJaRWNU?=
 =?utf-8?B?dE5rYy8wUGk2VXZJeWYyT05TMTA5V08yZGhXZDBqNGdFTFdlNG5ReUVCTndZ?=
 =?utf-8?B?QWh2bWZTYmNLZ2NTNi9zczFNZURxa3BsaWphdmNvNzhDSkhYdHZoSjNEV2hH?=
 =?utf-8?B?QXQrWmcxTDFpdVV1d3M5Um9XQ1NBZWxBNDJvbDc4SmVvOTBjbVJaV01DbGpM?=
 =?utf-8?B?eTByaE9QVjV5OE9rT1pheUlocllQbGE4S2ZxQ05hV0E1YXhVaVB6ZjhSQnhl?=
 =?utf-8?B?dlFpeUtiMm9TQTBlWnhsWFpmV2U1SUdwMWV6WlFzcmhaVFluZ0QwUW1yd3o2?=
 =?utf-8?B?b3VpSkhBN1hvRWFvSkRJR0NvaUpXMzRNT1FDTXdxaHMwdUQ3L3FEckVoSk9x?=
 =?utf-8?B?cjNEYUNmU0Y0VkIxOGdiS0lkNnZYQXBZQ2w3NHdxM0xHRG9RUktlTTJSZXVO?=
 =?utf-8?B?Yktzd1gyVk1nL0l0ZGMzTXloU1c1clFzeGhWbnRQS3dNRm03UktlZ1Q4aWow?=
 =?utf-8?B?eThzb0hrT3NkYkhuQUI0SkR1cENQOVUrRXRGbnFLS0psZ3NucGlBSTdhT0N1?=
 =?utf-8?B?ZFhHQmdOK0xGM25Gbm1Pamw0Q1RWWm5CWWhJWWNpdCsrVEFhb1YzM3BVTm04?=
 =?utf-8?B?QWhqWStkeUV5b01UMS9CdWpITy80RTZnbXREM0pOMmJXcGJCV2VEdittd0o1?=
 =?utf-8?B?MXdLdmI0am9jSDFnQjFsSDVCY1dVU3RPWHpUVkhKdDEvQmorcnRzd3BKUXZw?=
 =?utf-8?B?cEU4N0tkNkpTSE1LTVQzbG9aMlkwOXU5YUJKNXRsMDhDVjA0WVR6QVBkdUFr?=
 =?utf-8?B?Umt4OG9Dc3cxWERxNzhkVHlrWmpuZi9VKzIxQW9hQlRyaUJ1KzN0T2pYeWFq?=
 =?utf-8?B?c2tpMXFhQ2Q0SG11L04xVFVsWHdWYlBMOEZnVXNyK1YvZzRxTE9QVUtuWFB5?=
 =?utf-8?B?OHRxTnc0QU9RTCtRaGpqb3c3T3pvSjhFZURMSndZN1hxbGI4c0dkL0RpeFBh?=
 =?utf-8?B?aXVMZm9BVDYvNzBvSW5kUnhZTys1TVNPWUFLOUdTbU5rU0hPWkROMDVBUGc1?=
 =?utf-8?B?NjBjVGtkaHFybTFPK3dNU01DVTZGL3VzT1JPOGhYZ3Ewd0FHTkdydDdESTFy?=
 =?utf-8?B?YkhrYi95bHQ1c0xMNDJTV1UxNW5RdlFOaTQwYzB3N2N6eE5UdWFiL3BDYmtw?=
 =?utf-8?B?Q3h3VGk0N0JQRkFMK0FsNjRjbVdlQmcxeFJzcFptVWJRcWxVV01YSlBRVzg4?=
 =?utf-8?B?UDlmUGt5TzNFeHJLQXBXR1BOaG1TRkpiRDJjbndTRU5peXd0M3JVQ21LSE9L?=
 =?utf-8?B?YmtZZnQ1TGRaRlREZGVnVWtHdDhiNDBLZ0dOa3owU2lqYlVQT2l1M0JNVlpW?=
 =?utf-8?B?QTVwYWRzejUvSEtSNkZYRi96MVBBbGpZZGtjNFB2Z21PWERxNS9PNGFPd1VF?=
 =?utf-8?B?RFZ4NVQ2L1g0SWdRMnIrVXBaSzVUU1h3R2NDdkJ2Z1lFOW1pdTkwZGRWMk9m?=
 =?utf-8?B?bkgzYmJOak5XS0RteWdsS0lRbVZpYXZLZER1eDNFTHYyQVRxV1ZTaUx1a2Fw?=
 =?utf-8?B?NU9Sd2JLdkUxSVMza0VMYVFQWjVIYVhSRkVNTXN5OWZQVjJvYWMxNW8zQTMr?=
 =?utf-8?B?UTdUdXlYbC9GQlhqYS8wL25ic3hKT251TnVmYUxmL3dGYS9xamRKOUZZOUtt?=
 =?utf-8?B?MkNvZGxwSFdjdjczU0xmNG0zVWk4eU5JNVRDUVNzYW54K24xYk9jRGlPRGZB?=
 =?utf-8?B?V2YySnZ6ZGRKU1h4ZnNGQS9PK3dyVVJuY2hpV3VhaEp2YXQ2WUZ3VjZpcmp0?=
 =?utf-8?B?M3VMZEJaOHpZKzhFdlJHcWlPcTNqYkMyTE13OWdLbWYzRmZJN3pXTVFVcGVy?=
 =?utf-8?B?TFVrWTc1Nnp1RFRPSFZ2TElCcW1qVTcvblg2Rk9xVi85WituZ09iakw4WWt3?=
 =?utf-8?B?SEQyTmxQYlVTSHprTTBONnNaTWhvcmVNVTh6LzZaYkNGR2d4SXVHQjVBemZz?=
 =?utf-8?B?amN5Z1Nud2FHSUlXUnZEWllSNXpyNzBidStEd2x2bFhKcXJJamxkZ2RPN3VT?=
 =?utf-8?B?M2NyYjBCY29EVXgzRjk0bzhoZkN3aFNva1I0N09BRWhYanArUkQ4QXowc3Qz?=
 =?utf-8?B?a3AyWFZMOEZjUjg0MzRkZmpyZEswVW1NOEdlTkx0ZG9mejFXWk8yNzNLZHJm?=
 =?utf-8?B?aWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cdf15c28-fb7e-40bb-8bb2-08db3b773161
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2023 16:58:52.1142 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P1dFQAlwwHEkvyOD7kzYhlnEqFjDh5AXN4FWxbXVix0iNX8Sgdv4Cx3cfNVQfctfJyBjEX4kTpsshOLiFzb3bygoVR9jxJ0RpeaCXGBIa8U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5116
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681318735; x=1712854735;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aMExAfNvVdOkOIRp2BycFiyf6Vjwk0P8hwVsEYdvbBY=;
 b=enP2ybvJ07rJRcfwjQEYSrd9vA2Gcnn8458qOh7N3SFJjQ8Ks7BYP2zC
 8AyKIAKdiMXcu6dXSE2cj3KUCoy9unf0usAIxDUX/BdZ3fC/WXl1f5PKB
 6F6QHHBb/x6gzfupPrauya6hgejN8tRbRSpyCFB8Dbsp9xsQH4/ozm2bT
 EkYaMRybVkIZhQvmNfTAZ+JQ0ORDIHwmfunIqK3/R4/yaNm9XeNmDhRo4
 1pcfDyg9jqMqH7hXe3EE6veVVcLI3MwwV2b6cQVPpBnrmQq+Ld8iIYEaR
 nlw8rrhzQa4EEn1cZy/r8aAfcsABYmRlmwGF/QE9XG51Eh2fozLQHbZrV
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=enP2ybvJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 01/15] virtchnl: add virtchnl
 version 2 ops
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
Cc: willemb@google.com, netdev@vger.kernel.org,
 Phani Burra <phani.r.burra@intel.com>, decot@google.com,
 shiraz.saleem@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiA0LzEwLzIwMjMgMzoxMiBQTSwgU2hhbm5vbiBOZWxzb24gd3JvdGU6Cj4gT24gNC8xMC8y
MyAxOjI3IFBNLCBMaW5nYSwgUGF2YW4gS3VtYXIgd3JvdGU6Cj4+Cj4+IE9uIDQvNC8yMDIzIDM6
MzEgQU0sIFNoYW5ub24gTmVsc29uIHdyb3RlOgo+Pj4gT24gMy8yOS8yMyA3OjAzIEFNLCBQYXZh
biBLdW1hciBMaW5nYSB3cm90ZToKPj4+Pgo+Pj4+IFZpcnRjaG5sIHZlcnNpb24gMSBpcyBhbiBp
bnRlcmZhY2UgdXNlZCBieSB0aGUgY3VycmVudCBnZW5lcmF0aW9uIG9mCj4+Pj4gZm91bmRhdGlv
bmFsIE5JQ3MgdG8gbmVnb3RpYXRlIHRoZSBjYXBhYmlsaXRpZXMgYW5kIGNvbmZpZ3VyZSB0aGUK
Pj4+PiBIVyByZXNvdXJjZXMgc3VjaCBhcyBxdWV1ZXMsIHZlY3RvcnMsIFJTUyBMVVQsIGV0YyBi
ZXR3ZWVuIHRoZSBQRgo+Pj4+IGFuZCBWRiBkcml2ZXJzLiBJdCBpcyBub3QgZXh0ZW5zaWJsZSB0
byBlbmFibGUgbmV3IGZlYXR1cmVzIHN1cHBvcnRlZAo+Pj4+IGluIHRoZSBuZXh0IGdlbmVyYXRp
b24gb2YgTklDcy9JUFVzIGFuZCB0byBuZWdvdGlhdGUgZGVzY3JpcHRvciB0eXBlcywKPj4+PiBw
YWNrZXQgdHlwZXMgYW5kIHJlZ2lzdGVyIG9mZnNldHMuCj4+Pj4KPiAKPiBbLi4uXQo+IAo+Pj4+
ICsKPj4+PiArI2luY2x1ZGUgInZpcnRjaG5sMl9sYW5fZGVzYy5oIgo+Pj4+ICsKPj4+PiArLyog
VklSVENITkwyX0VSUk9SX0NPREVTICovCj4+Pj4gKy8qIFN1Y2Nlc3MgKi8KPj4+PiArI2RlZmlu
ZSBWSVJUQ0hOTDJfU1RBVFVTX1NVQ0NFU1PCoMKgwqDCoMKgwqAgMAo+Pj4KPj4+IFNob3VsZG4n
dCB0aGVzZSBiZSBlbnVtIGFuZCBub3QgI2RlZmluZT8KPj4+Cj4+Cj4+IFRoaXMgaGVhZGVyIGZp
bGUgaXMgZGVzY3JpYmluZyBjb21tdW5pY2F0aW9uIHByb3RvY29sIHdpdGggb3Bjb2RlcywKPj4g
ZXJyb3IgY29kZXMsIGNhcGFiaWxpdGllcyBldGMuIHRoYXQgYXJlIGV4Y2hhbmdlZCBiZXR3ZWVu
IElEUEYgYW5kCj4+IGRldmljZSBDb250cm9sIFBsYW5lLiBDb21waWxlciBjaG9vc2VzIHRoZSBz
aXplIG9mIHRoZSBlbnVtIGJhc2VkIG9uIHRoZQo+PiBlbnVtZXJhdGlvbiBjb25zdGFudHMgdGhh
dCBhcmUgcHJlc2VudCB3aGljaCBpcyBub3QgYSBjb25zdGFudCBzaXplLiBCdXQKPj4gZm9yIHZp
cnRjaG5sIHByb3RvY29sLCB3ZSB3YW50IHRvIGhhdmUgZml4ZWQgc2l6ZSBubyBtYXR0ZXIgd2hh
dC4gVG8KPj4gYXZvaWQgc3VjaCBjYXNlcywgd2UgYXJlIHVzaW5nIGRlZmluZXMgd2hlcmVldmVy
IG5lY2Vzc2FyeS4KPiAKPiBUaGUgZmllbGQgc2l6ZSBsaW1pdGF0aW9ucyBpbiBhbiBBUEkgYXJl
IG9uZSB0aGluZywgYW5kIHRoYXQgY2FuIGJlIAo+IG1hbmFnZWQgYnkgdXNpbmcgYSB1OC91MTYv
dTMyIG9yIHdoYXRldmVyIGFzIG5lY2Vzc2FyeS7CoCBCdXQgdGhhdCAKPiBkb2Vzbid0IG1lYW4g
dGhhdCB5b3UgY2FuJ3QgZGVmaW5lIHZhbHVlcyB0byBiZSBhc3NpZ25lZCBpbiB0aG9zZSBmaWVs
ZHMgCj4gYXMgZW51bXMsIHdoaWNoIGFyZSBwcmVmZXJyZWQgd2hlbiBkZWZpbmluZyBzZXZlcmFs
IHJlbGF0ZWQgY29uc3RhbnRzLgo+IApXZSBjYW4gY2VydGFpbmx5IGxvb2sgaW50byBpdCwgYnV0
IGZvciB0aGUgcHVycG9zZSBvZiB0aGlzIHNlcmllcyBpdCAKZG9lc24ndCBzZWVtIGxpa2UgYSBt
ZWFuaW5nZnVsIGNoYW5nZSBpZiBpdCBvbmx5IGhlbHBzIHdpdGggdGhlIGdyb3VwaW5nIApzaW5j
ZSB0aGUgZGVmaW5lIG5hbWVzIGFscmVhZHkgZm9sbG93IGEgY2VydGFpbiBwYXR0ZXJuIHRvIGlu
ZGljYXRlIHRoYXQgCnRoZXkgYXJlIHJlbGF0ZWQuCgo+IAo+IFsuLi5dCj4gCj4+Cj4+Pj4gKwo+
Pj4+ICsvKiBWSVJUQ0hOTDJfT1BfR0VUX0VEVF9DQVBTCj4+Pj4gKyAqIEdldCBFRFQgZ3JhbnVs
YXJpdHkgYW5kIHRpbWUgaG9yaXpvbgo+Pj4+ICsgKi8KPj4+PiArc3RydWN0IHZpcnRjaG5sMl9l
ZHRfY2FwcyB7Cj4+Pj4gK8KgwqDCoMKgwqDCoCAvKiBUaW1lc3RhbXAgZ3JhbnVsYXJpdHkgaW4g
bmFub3NlY29uZHMgKi8KPj4+PiArwqDCoMKgwqDCoMKgIF9fbGU2NCB0c3RhbXBfZ3JhbnVsYXJp
dHlfbnM7Cj4+Pj4gK8KgwqDCoMKgwqDCoCAvKiBUb3RhbCB0aW1lIHdpbmRvdyBpbiBuYW5vc2Vj
b25kcyAqLwo+Pj4+ICvCoMKgwqDCoMKgwqAgX19sZTY0IHRpbWVfaG9yaXpvbl9uczsKPj4+PiAr
fTsKPj4+PiArCj4+Pj4gK1ZJUlRDSE5MMl9DSEVDS19TVFJVQ1RfTEVOKDE2LCB2aXJ0Y2hubDJf
ZWR0X2NhcHMpOwo+Pj4KPj4+IERvbid0IHB1dCBhIHNwYWNlIGJldHdlZW4gdGhlIHN0cnVjdCBh
bmQgdGhlIGNoZWNrLgo+Pj4KPj4KPj4gQ2hlY2twYXRjaCByZXBvcnRzIGEgd2FybmluZyAoYWN0
dWFsbHkgYSAnQ2hlY2snKSB3aGVuIHRoZSBuZXdsaW5lIGlzCj4+IHJlbW92ZWQuIEZvbGxvd2lu
ZyBpcyB0aGUgY2hlY2twYXRjaCBvdXRwdXQgd2hlbiB0aGUgbmV3bGluZSBpcyByZW1vdmVkOgo+
Pgo+PiAiQ0hFQ0s6IFBsZWFzZSB1c2UgYSBibGFuayBsaW5lIGFmdGVyIGZ1bmN0aW9uL3N0cnVj
dC91bmlvbi9lbnVtCj4+IGRlY2xhcmF0aW9ucyIKPiAKPiBTaW5jZSBpdCBoYXMgdG8gZG8gZGly
ZWN0bHkgd2l0aCB0aGUgZmluaXNoZWQgZGVmaW5pdGlvbiwgb25lIHdvdWxkIAo+IHRoaW5rIGl0
IGNvdWxkIGZvbGxvdyB0aGUgc2FtZSBydWxlIGFzIEVYUE9SVC4uLiBkb2VzLsKgIEl0IG1pZ2h0
IG5vdCBiZSAKPiBhIGJhZCBpZGVhIGF0IHNvbWUgcG9pbnQgZm9yIHN0YXRpY19hc3NlcnQoKSB0
byBiZSBhZGRlZCB0byB0aGF0IGFsbG93ZWQgCj4gbGlzdC7CoCBGb3Igbm93LCB0aG91Z2gsIHNp
bmNlIGl0IGlzIG9ubHkgYSBDSEVDSyBhbmQgbm90IFdBUk4gb3IgRVJST1IsIAo+IHlvdSBtaWdo
dCBiZSBhYmxlIHRvIGlnbm9yZSBpdC7CoCBJdCBtaWdodCBiZSBlYXNpZXIgdG8gaWdub3JlIGlm
IHlvdSAKPiBqdXN0IHVzZWQgdGhlIGV4aXN0aW5nIHN0YXRpY19hc3NlcnQoKSByYXRoZXIgdGhh
biBkZWZpbmlnaW4geW91ciBvd24gCj4gc3lub255bS4KCk9LLCB3ZSdsbCByZW1vdmUgaXQuCgo+
IAo+IAo+IFsuLi5dCj4gCj4+Pj4gKy8qIFF1ZXVlIHRvIHZlY3RvciBtYXBwaW5nICovCj4+Pj4g
K3N0cnVjdCB2aXJ0Y2hubDJfcXVldWVfdmVjdG9yIHsKPj4+PiArwqDCoMKgwqDCoMKgIF9fbGUz
MiBxdWV1ZV9pZDsKPj4+PiArwqDCoMKgwqDCoMKgIF9fbGUxNiB2ZWN0b3JfaWQ7Cj4+Pj4gK8Kg
wqDCoMKgwqDCoCB1OCBwYWRbMl07Cj4+Pj4gKwo+Pj4+ICvCoMKgwqDCoMKgwqAgLyogU2VlIFZJ
UlRDSE5MMl9JVFJfSURYIGRlZmluaXRpb25zICovCj4+Pj4gK8KgwqDCoMKgwqDCoCBfX2xlMzIg
aXRyX2lkeDsKPj4+PiArCj4+Pj4gK8KgwqDCoMKgwqDCoCAvKiBTZWUgVklSVENITkwyX1FVRVVF
X1RZUEUgZGVmaW5pdGlvbnMgKi8KPj4+PiArwqDCoMKgwqDCoMKgIF9fbGUzMiBxdWV1ZV90eXBl
Owo+Pj4+ICvCoMKgwqDCoMKgwqAgdTggcGFkMVs4XTsKPj4+PiArfTsKPj4+Cj4+PiBXaHkgdGhl
IGVuZCBwYWRkaW5nP8KgIFdoYXQncyB3cm9uZyB3aXRoIHRoZSAxNi1ieXRlIHNpemU/Cj4+Pgo+
Pgo+PiBUaGUgZW5kIHBhZGRpbmcgaXMgYWRkZWQgZm9yIGFueSBwb3NzaWJsZSBmdXR1cmUgYWRk
aXRpb25zIG9mIHRoZSBmaWVsZHMKPj4gdG8gdGhpcyBzdHJ1Y3R1cmUuIERpZG4ndCBnZXQgdGhl
IGFzayBmb3IgMTYtYnl0ZSBzaXplLCBjYW4geW91IHBsZWFzZQo+PiBlbGFib3JhdGU/Cj4gCj4g
V2l0aG91dCB0aGUgcGFkMVs4XSwgdGhpcyBzdHJ1Y3QgaXMgYW4gZXZlbiAxNiBieXRlcywgc2Vl
bXMgbGlrZSBhIAo+IGxvZ2ljYWwgcGxhY2UgdG8gc3RvcC7CoCAyNCBieXRlcyBzZWVtcyBvZGQs
IGlmIHlvdSdyZSBnb2luZyB0byBwYWQgZm9yIAo+IHRoZSBmdXR1cmUgaXQgbWFrZXMgc29tZSBz
ZW5zZSB0byBkbyBpdCB0byBhbiBldmVuIDMyIGJ5dGVzIAo+IChwb3dlci1vZi0yKS7CoCBBbmQg
cGxlYXNlIGFkZCBhIGNvbW1lbnQgZm9yIHRoaXMgZnV0dXJlIHRoaW5raW5nLgoKV2UgY2FuIGNo
YW5nZSB0aGUgbmFtZSB0byByZXNlcnZlZCB0byBtYWtlIGl0IGNsZWFyZXIsIGJ1dCB0aGUgc2l6
ZSAKY2Fubm90IGJlIGNoYW5nZWQgYmVjYXVzZSBpdCdzIGFuIEFCSSBhbHJlYWR5LgoKVGhhbmtz
LApFbWlsCgo+IAo+IHNsbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vv
c2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdp
cmVkLWxhbgo=
