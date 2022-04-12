Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE0F4FE681
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Apr 2022 19:04:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 42C59409E6;
	Tue, 12 Apr 2022 17:04:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T08DIt5r7isP; Tue, 12 Apr 2022 17:04:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2293409A2;
	Tue, 12 Apr 2022 17:04:34 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A2C931BF3C6
 for <intel-wired-lan@osuosl.org>; Tue, 12 Apr 2022 17:04:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9DAE3610A2
 for <intel-wired-lan@osuosl.org>; Tue, 12 Apr 2022 17:04:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nuzmyZkFbOuD for <intel-wired-lan@osuosl.org>;
 Tue, 12 Apr 2022 17:04:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7C7A960F2D
 for <intel-wired-lan@osuosl.org>; Tue, 12 Apr 2022 17:04:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649783068; x=1681319068;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=J9POljykNcxjhcO3tRlfC7oXuu5idO/6eZWge7EdnGs=;
 b=afvQnlFbkBzv1TaOc8S4pR8tDwct4gdMxGg913CFn6JqmrfM+HWTI362
 fGT6Z3ooaLBoDKhY89T5c59yhUwCcpEaFQWfQZsbMJgK4YCrjV2+K0gZ/
 hNgq2KE0Zj8lt/wYVJ3DLlEV53zd06KBqPmUhIAXH9N78Lj2Nq/arILu7
 RvuhfZbtzaxG/gZsrfltNI6sRa9NxkmZ/DxQX/eZfvmqeSXhj07vX2ikN
 rLToMn7VCMiN8iZ5OC87PMkh8QV2iX+hqySevXjfWRd4Yoxl1wsomoqan
 kulOSR7SsMUU19ocdj/SIPgRQOYSsjYdtWyuFqyStspcAkfZ88bi5DqEP A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10315"; a="244326106"
X-IronPort-AV: E=Sophos;i="5.90,254,1643702400"; d="scan'208";a="244326106"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2022 10:04:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,254,1643702400"; d="scan'208";a="507631633"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 12 Apr 2022 10:04:27 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 12 Apr 2022 10:04:26 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 12 Apr 2022 10:04:26 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 12 Apr 2022 10:04:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BOLtVOhfkBfdJq+i75ElXco0qlSSRsh4eSJEJKZhf2YMBHRY2WYJ33C/tQHwyVWWzJHFc5KvQvDxDj7KeHaX+ySUCRDAWJuAxH4EHBg1u9fSwpxSpu43SZ+46cc9hLTFXKNOqlLzHhHL3QAVTM2qiEBOOUmGQ31qUd28GUFct5h3L8B7uJx7Y+grS+0mF48SL13mWCmbG5MtIE/DrCfJf42VYPuihbwMVeHA5vN7BseFnawevyGaBQnXZTIHYl0JW7oDyMlsAF4mvvRp/VJZwbGu8vy++eTjz2CB7LdpN4SYtP6fWkjrZwWtvvxYMTuPI4AIIktogP2olM6x8/bbuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7cGR0uq1JuY2sfdJFZK5T7EXJhvcu0g40Y8Kz1LO+8U=;
 b=esFVnzy2H1GSt8eMDqJDpB84mpBLBo0xqeWFznDFKgrl0XGw3L7V0gXXqfGLfxWvyk6RyuCdfPNga6RxqUtpTjNu/4bZ2R0VhUs/tarfYwKNOkkw975EC7CLSPgzq/b+oHIAg21bxjYVK8F+VugHMJqY2duwRZDF810RPJp8Hsu6hIjzSPFNY0tZElllaS7dow5iTixFyoAnh9yNZrQNL0MydNElfLYb9GAlmP0RyADnXOnrTO4fuANz397RX+13stdLI3M385P6nffbp/40jvKuN14YkyTBNsX0nPC0Znjg8srSH+We/S0jvfIKFuVBy0D8MjaFXsUyPEcd8hYJvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by BN6PR11MB1460.namprd11.prod.outlook.com (2603:10b6:405:b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.29; Tue, 12 Apr
 2022 17:04:24 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::815d:8ff7:538c:b10e]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::815d:8ff7:538c:b10e%9]) with mapi id 15.20.5144.030; Tue, 12 Apr 2022
 17:04:23 +0000
Message-ID: <c24d537a-01fc-183f-b3b4-e2d3d750a6ec@intel.com>
Date: Tue, 12 Apr 2022 10:04:21 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20220412102753.670867-1-poros@redhat.com>
 <20220412160856.1027597-1-alexandr.lobakin@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20220412160856.1027597-1-alexandr.lobakin@intel.com>
X-ClientProxiedBy: BYAPR06CA0004.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::17) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3b3c061a-1e7c-4588-981a-08da1ca67e62
X-MS-TrafficTypeDiagnostic: BN6PR11MB1460:EE_
X-Microsoft-Antispam-PRVS: <BN6PR11MB146053D79D86D582038A4017D6ED9@BN6PR11MB1460.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bRqhwrHLBxR4d9Zbz5WiAfUIW8XB9RnC9iSutl+y6xEB2foQSVEmJXeYvFHUxecydREyxcDiO6/fVHHoTrU5CMtCK4EDkvUNctjVW29HzvRmv9RclR70iTyDh24yCNbytGJUsjpTOEfsHLKTQ5uTammDSsDscBH4FvRM6EcZsrrRokOeIWzmJysxrEVmlThtxTUw4QKpIITlQMkVjRojvcYSg+4sag+6axUVFztsCDLK/zMEmImlZEGiS/yIXEg+iXeLFJiDWHpcAnNs/0Oy5NH9LXVjfuFPgfTWsyf2Qbp97EIz5qwAZcTJDGfVm1sp51WTz7ivmXH4gmj3V7MM5EISbECyTRkZmO0u+PhRro73+0cC8uGDdKxJe3Bq5ILzBsLAw6UVuALY55viCDkUjHMlaxhDIeAyNQcuz62fSEtsXkL9WTDmEhKAUbqDB90UHwCgk+rD+85eLkEEWyk8YizGDuEmM5VRiuNqYXRMibQCd4/TqmkWBBqJ6JZGokLmP5CIvGmKTUyfJ4nE4yEgRgYXGRy8t2fws/BO/1a+fa5y5n4Md3J/GNh2wLaIH9rinx6H6S8DaSuIpp1XS9N0TDuvYr/zWY2PkMl5QVYVxnfYcKxd0asotG/2mMHDtuPCz9v2bqGjN9NhHxwzENHYSK+wfro3PTi03VpON+wtmALaQQT+sHfuMGDh3RhjOmPJxSHwsHijRwkZbJK1saqotSqmxDRsVV1QhIyvN4Y3Qr4BcNnh0UCfiTuNta113zPsed76IwQwcI97sbNYxpOirzHE25Vef6yrwGBUHU8/1T8QYzEknOPq1KvDDhMyuWbQex8Z9ap5q07bcsWUpz57NQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(2906002)(83380400001)(966005)(53546011)(316002)(508600001)(38100700002)(6916009)(6512007)(2616005)(66946007)(6506007)(66556008)(186003)(66476007)(26005)(8676002)(36756003)(31686004)(31696002)(86362001)(5660300002)(8936002)(82960400001)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RldqYmxoK24vTnY2MTBTV0pqL0R1cnRNdldsOXRESGZLUmgwVk84eFdnZ0pT?=
 =?utf-8?B?U1ZMbER6VEw2QmVsVUp5MnR3VnV3blVTdytLVzlXUjJUa1d4alZDa3hnNFdk?=
 =?utf-8?B?VDQyejJMN2hUUVZHbXlrM0ZUN0tEQktjSXJuYUlXd2w2VVdDUlppVHJmM3Fx?=
 =?utf-8?B?bHUrSHdWbHlISzZiMHhWYmJhS3FxMnJQYldvVmk0U3NQWTRhOEVjV2ZSSzBC?=
 =?utf-8?B?cC92bFkyUEV0emN2ZEU3U2gzTStLK0h3NGtPMnJRZ2FUK0hZMWo0QWE4M0ZQ?=
 =?utf-8?B?eU5VeDdHRmhxS1VCN0pIVlZGdU1qSjZOZTdVQnBvM1B5UFNabWQxdzlrd0dM?=
 =?utf-8?B?K3l3VTA1am1UTDBGTkl6ZFd3dXNwSGpRenNVeUJyU0c2eGRXV0NRaXc5c3hK?=
 =?utf-8?B?NFVoWVU4WXVINUlpN1o3Ukh5eXIyNCtPKy95d3RiaVJERnlNMndPM1lFT1hu?=
 =?utf-8?B?aUg4bGpwSE5OVEdZMGhjVVgrNTBrRkRiMXRLVVM1K25YZlBpYnJqNHo4NHBN?=
 =?utf-8?B?UTBjYTdBTlJhb3FnOWJOc3dSS3J2ZzZvQTd6YythYVNNSWl0eURtZEdhamRS?=
 =?utf-8?B?azgyWDhHTE5Xb3JObDExbFpONXVabjNYR0N4V2FKUkZiOEJ0TmtSSWIzcFdo?=
 =?utf-8?B?MTI3NUlFUGlUYjNVVWhMTGxMajVQbGNTaHVlQ2IrN3d6MXpmQjdjc0FBcXpM?=
 =?utf-8?B?MHczWVRQUmhFd0tkcEhYWnJkdjBlMmZkVGwwSXFLSmFvcFRaUG9FVksvRzhG?=
 =?utf-8?B?M05yUVdJYU5MOTg4N1JvU2wwQzcrek1hQkwwVVFJTmJHN2dnb1RFeTJZWFJt?=
 =?utf-8?B?aVJ0UXU1L1VrOEhyVEhxUWJCQUNvQXBHUXg2Rzg3SDYxY0hHdnBCaDRKRzhl?=
 =?utf-8?B?UHpJM2lFdWsrblY3MEtVV1V1RFErMTBmUStUTmtWQnNsdGhrMFUrMEYzMWJU?=
 =?utf-8?B?U0QyRWRoTTJOTjZpczFHMjlobnpjT2ZMRFVEWEtrcjZ4RHpEY293V1pIMXhl?=
 =?utf-8?B?bG9iQ043eldITjNBZk5wMTVrQ09SR2h0OURaeTZpcUFiQnFjaW8wYkhqbTNs?=
 =?utf-8?B?elVSbkxOakdwMjFaT3FSOTR3WUdqSmRlUVpzNDdQeFRkOWFLbWs4R2xTWjlm?=
 =?utf-8?B?Nnh6eU11bXFuYXp1VWJ3MDZhQjhBMUlSZHpxU1dUU3l2Rk5MSWg0Y0xhMnhk?=
 =?utf-8?B?cm1NYkhFV2VXa2FEMG9CK3dpKzJ3VVI1SjB6Q1R1clU5MzFMaTVnNUo1dXZQ?=
 =?utf-8?B?WUZ0SW1ldklvSjhwL1hyUUJiWmxGb0RRTTNDTDBUSEpSUDNxUW5lWVB6RDZj?=
 =?utf-8?B?Rmp2MUUreGR4YjZYYzhWSWRMZG0wdVNBVnE3d3c5Mm1zOE12RVZPMGJLRDRU?=
 =?utf-8?B?UHRTemxDQ21oSVFKaGQxQnM2WFREbitJTFkwa2pnWlNhSkhKRktDVUFEZUxU?=
 =?utf-8?B?dFBGYXdKOEFuVks0MlRqZERaV3FaZVdkK3drMDh5RThrdDFoQTVEOHRab0xs?=
 =?utf-8?B?RWlnUzdpZHdMUEgvOWwzWW02T2x4YWFvWko5SW9EUXVBNGtnZ2piWjhOSTV1?=
 =?utf-8?B?MGlaMmRzNTc1RWh4U2cwTkJZYldZb29ES0dPN29BMkNZRTBEY1h0VmFFTkN5?=
 =?utf-8?B?MThPWkNEbTFGN1lDQkViQ1lhbDdYVlQyZ3lzV2FoTm5JUmprNFQ2M3BGdEF5?=
 =?utf-8?B?MzlyV3dKd1N2Z216UDFXSjhaRlQvQXJJYkg5TnR4YWhOcHpYSkRVYjJWT0dT?=
 =?utf-8?B?YVhmNkM2d1RPSWFudW90WG5pYUFYazBUQnNpRDFXYkZIK2RackdWOUdxYzRr?=
 =?utf-8?B?Q29tT1UvRzNIcjVvZ1JnZElQUHdUbjZCS3Mxemc0cXN3N3hTRVFOL2w3c1c0?=
 =?utf-8?B?NUxwUUg3OFVoK0VncFNwbTRVTlpEandhVUxNdGpTbDZVWlp0Ui9jcW1ic1F4?=
 =?utf-8?B?Q1JtZmp2Q1U3TGVmVnBjMy9rMFozN1pnS1hZSm4zUzFNeEJ2YlpFTkZaSFZJ?=
 =?utf-8?B?bGpnOTRZTU8xZW56eHpvR3NzVWQxMlk2NnF6SWpFZGtKd1I1UzBDeTVRYjUv?=
 =?utf-8?B?b3ZPL3VpdVIyalJzQUFNd2lOVXBQSzBjSWFMYUNoMmliZ0d1eVJ6cGRyeEho?=
 =?utf-8?B?MjlpZ2VPTENQWnlFS2ZISThGVkxYNGo4ZHphYkZid3N0S2NPT3l3ZmtDWTMr?=
 =?utf-8?B?aFd4R1FWTGMxZklEbkNkMEdRaFZUcmFINUc2NUhBVmpXOXVGWHVxam1URC9E?=
 =?utf-8?B?Y0txeGZYekZxd1JiNDRHUStmK2dsaVVIWDhLVDIxZCtUYlJSRHlOdnRMWUE1?=
 =?utf-8?B?SFVqZW9wVTVwOEQ4T053eVE3NHVoT2Q1MFpyNXF2eTZjdUtUeHVRWFJQQnZY?=
 =?utf-8?Q?Kem7G9MC05/5v7Ds=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b3c061a-1e7c-4588-981a-08da1ca67e62
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2022 17:04:23.8916 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f42xpbtdHfECS8JZsyrwxFKk5Yg6XXAKtT/aETsCEXsCfJqoRbdKSCS8vDKOwgfcWBHh3mRSDJRsMYRaq4nvdy7S/nnzFmqk379wwzT7dvo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1460
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] ice: wait for EMP reset after
 firmware flash
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 4/12/2022 9:08 AM, Alexander Lobakin wrote:
> From: Petr Oros <poros@redhat.com>
> Date: Tue, 12 Apr 2022 12:27:53 +0200
> 
>> We need to wait for EMP reset after firmware flash.
>> Code was extracted from OOT driver and without this wait fw_activate let
>> card in inconsistent state recoverable only by second flash/activate
>>
>> Reproducer:
>> [root@host ~]# devlink dev flash pci/0000:ca:00.0 file E810_XXVDA4_FH_O_SEC_FW_1p6p1p9_NVM_3p10_PLDMoMCTP_0.11_8000AD7B.bin
>> Preparing to flash
>> [fw.mgmt] Erasing
>> [fw.mgmt] Erasing done
>> [fw.mgmt] Flashing 100%
>> [fw.mgmt] Flashing done 100%
>> [fw.undi] Erasing
>> [fw.undi] Erasing done
>> [fw.undi] Flashing 100%
>> [fw.undi] Flashing done 100%
>> [fw.netlist] Erasing
>> [fw.netlist] Erasing done
>> [fw.netlist] Flashing 100%
>> [fw.netlist] Flashing done 100%
>> Activate new firmware by devlink reload
>> [root@host ~]# devlink dev reload pci/0000:ca:00.0 action fw_activate
>> reload_actions_performed:
>>     fw_activate
>> [root@host ~]# ip link show ens7f0
>> 71: ens7f0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc mq state DOWN mode DEFAULT group default qlen 1000
>>     link/ether b4:96:91:dc:72:e0 brd ff:ff:ff:ff:ff:ff
>>     altname enp202s0f0
>>
>> dmesg after flash:
>> [   55.120788] ice: Copyright (c) 2018, Intel Corporation.
>> [   55.274734] ice 0000:ca:00.0: Get PHY capabilities failed status = -5, continuing anyway
>> [   55.569797] ice 0000:ca:00.0: The DDP package was successfully loaded: ICE OS Default Package version 1.3.28.0
>> [   55.603629] ice 0000:ca:00.0: Get PHY capability failed.
>> [   55.608951] ice 0000:ca:00.0: ice_init_nvm_phy_type failed: -5
>> [   55.647348] ice 0000:ca:00.0: PTP init successful
>> [   55.675536] ice 0000:ca:00.0: DCB is enabled in the hardware, max number of TCs supported on this port are 8
>> [   55.685365] ice 0000:ca:00.0: FW LLDP is disabled, DCBx/LLDP in SW mode.
>> [   55.692179] ice 0000:ca:00.0: Commit DCB Configuration to the hardware
>> [   55.701382] ice 0000:ca:00.0: 126.024 Gb/s available PCIe bandwidth, limited by 16.0 GT/s PCIe x8 link at 0000:c9:02.0 (capable of 252.048 Gb/s with 16.0 GT/s PCIe x16 link)
>> Reboot don't help, only second flash/activate with OOT or patched driver put card back in consistent state
>>
>> After patch:
>> [root@host ~]# devlink dev flash pci/0000:ca:00.0 file E810_XXVDA4_FH_O_SEC_FW_1p6p1p9_NVM_3p10_PLDMoMCTP_0.11_8000AD7B.bin
>> Preparing to flash
>> [fw.mgmt] Erasing
>> [fw.mgmt] Erasing done
>> [fw.mgmt] Flashing 100%
>> [fw.mgmt] Flashing done 100%
>> [fw.undi] Erasing
>> [fw.undi] Erasing done
>> [fw.undi] Flashing 100%
>> [fw.undi] Flashing done 100%
>> [fw.netlist] Erasing
>> [fw.netlist] Erasing done
>> [fw.netlist] Flashing 100%
>> [fw.netlist] Flashing done 100%
>> Activate new firmware by devlink reload
>> [root@host ~]# devlink dev reload pci/0000:ca:00.0 action fw_activate
>> reload_actions_performed:
>>     fw_activate
>> [root@host ~]# ip link show ens7f0
>> 19: ens7f0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP mode DEFAULT group default qlen 1000
>>     link/ether b4:96:91:dc:72:e0 brd ff:ff:ff:ff:ff:ff
>>     altname enp202s0f0
>>
>> Fixes: 399e27dbbd9e94 ("ice: support immediate firmware activation via devlink reload")
>> Signed-off-by: Petr Oros <poros@redhat.com>
>> ---
>>  drivers/net/ethernet/intel/ice/ice_main.c | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
>> index d768925785ca79..90ea2203cdc763 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>> @@ -6931,12 +6931,15 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
>>  
>>  	dev_dbg(dev, "rebuilding PF after reset_type=%d\n", reset_type);
>>  
>> +#define ICE_EMP_RESET_SLEEP 5000
> 
> Ooof, 5 sec is a lot! Is there any way to poll the device readiness?
> Does it really need the whole 5 sec?
> 

This came from a workaround we shipped with our sourceforge out-of-tree
release. So far, I don't think we have any data on precisely how long we
need to wait, or how to automatically detect this situation.

The issue appears to be caused by collisions with firmware finishing its
own internal recovery of EMP.

>>  	if (reset_type == ICE_RESET_EMPR) {
>>  		/* If an EMP reset has occurred, any previously pending flash
>>  		 * update will have completed. We no longer know whether or
>>  		 * not the NVM update EMP reset is restricted.
>>  		 */
>>  		pf->fw_emp_reset_disabled = false;
>> +
>> +		msleep(ICE_EMP_RESET_SLEEP);
>>  	}
>>  
>>  	err = ice_init_all_ctrlq(hw);
>> -- 
>> 2.35.1
> 
> Thanks,
> Al
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
