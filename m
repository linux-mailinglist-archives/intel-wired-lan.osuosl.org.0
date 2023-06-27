Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F29973F61C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jun 2023 09:51:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B9DC882184;
	Tue, 27 Jun 2023 07:51:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B9DC882184
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687852278;
	bh=bndIK6PEyZmvroTBdgF0FSUlQUQCaawLPqoCpiNDhzU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xbHLOvIefkiWczW5+Q95Hii4r2gMT4y03jdvkMA5L60VxquitqVR02+XU/ELSQkbn
	 l+K8pb5wx8Gj8zRC+SMB9ZcPDLs571J0F7uh3Am49tXXTQeuH2rQknla0E0xdh/yHD
	 Df0mc63Hwy8Qi0Tm/J3oSFk5jM3B5TpBoOQR6qpRz9AO0d5LBV5SWamdDSxWzBILXS
	 bBoIVa1uOlcBx99axPtc+Y1jB53BjONwp50dHldIEzofW6G48QW4OnBTz9V2E5LxcD
	 Toch/iBYFCy0WvJcDQMG9URHncDyD9a57GtQdY+HS66GyI+Hig+0xQ1KzrzEn4FEuE
	 pZn4fu1jZjmUA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jjUglvOroE0V; Tue, 27 Jun 2023 07:51:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7DF4F8211A;
	Tue, 27 Jun 2023 07:51:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7DF4F8211A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A47131BF2B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 07:51:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 87458416C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 07:51:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 87458416C3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yCLgls5ngoO1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Jun 2023 07:51:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 599E9416FE
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 599E9416FE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 07:51:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="361545240"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="361545240"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 00:50:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="751572499"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="751572499"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 27 Jun 2023 00:50:43 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 27 Jun 2023 00:50:43 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 27 Jun 2023 00:50:43 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 27 Jun 2023 00:50:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mkw06/L6D8wVzbUoBKhYWaDm0J8VcNcLFJzz9/lPqww/8rrzpPMnAVk/hjYSKOxFX5U0OFbHSG4IW6irNFLHtBK+KjAb5/AUOPOsZtUkF/NKhPFIlB3vK9FVS8EnqbYx59hoxd9tfj1S5X/PXPWW/rbmnY/7cqLOuqdpz0WFlogROuvlASKKlF9/byWo12IjwlF21nRTKKU8kjjErnfZqtdyRK00vLM/Aca6/2llkK0ZmGnJLnhBOuHm0KBeFQFenQvcMWQsJcP+2b21oFC6t/4W8G5vsxpFPIOg4SkoKvpKA4pRaqoL8UYOCFMoZPKJJtdGuBebtcpmOT+Fydrb0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m/aUvIWlXSN96vidr/lW+fI+VHsOteMntNMb7dufnvQ=;
 b=h/U8Eb0I7Dpugzz1yOPiblux+Br11hxZTvOZjZmkhcv655RDhnG1lLwoIIh8UOLbem4rqaEbSoaeOIGhYqtU8UpWAUFRUMEEItdwondN/l3pZw/1WZ8hx5HQwRTmKg7hlntuuRlFM1hrOgrr6hubtROlENR0LuruhG2mIiEbs1RJIuTdAgEJPYH+nqTH50vIaicGDLT1VwNFmjgOA1YTc1irFLwL/Dny1uuN2fjxicsOet5iyNqC45AgP5L3w+bG8NQGVv7l/13FL3+hz1Ppv1ShCIIIHpQPv8wLIXVuXpTam0s5lsWvikeeI/Rhj/Lj8iEvpM+WVFcACZXKiswtnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS7PR11MB7836.namprd11.prod.outlook.com (2603:10b6:8:e3::10) by
 SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.24; Tue, 27 Jun
 2023 07:50:42 +0000
Received: from DS7PR11MB7836.namprd11.prod.outlook.com
 ([fe80::d48c:5581:131e:93c7]) by DS7PR11MB7836.namprd11.prod.outlook.com
 ([fe80::d48c:5581:131e:93c7%7]) with mapi id 15.20.6521.024; Tue, 27 Jun 2023
 07:50:42 +0000
Message-ID: <9da1c8df-98b8-bd4a-1487-e11de82d6783@intel.com>
Date: Tue, 27 Jun 2023 15:50:32 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.11.0
To: Jason Gunthorpe <jgg@ziepe.ca>, Lingyu Liu <lingyu.liu@intel.com>
References: <20230621091112.44945-1-lingyu.liu@intel.com>
 <20230621091112.44945-5-lingyu.liu@intel.com> <ZJL8jCIrVwmJ1eDl@ziepe.ca>
Content-Language: en-US
From: "Cao, Yahui" <yahui.cao@intel.com>
In-Reply-To: <ZJL8jCIrVwmJ1eDl@ziepe.ca>
X-ClientProxiedBy: SI1PR02CA0031.apcprd02.prod.outlook.com
 (2603:1096:4:1f6::11) To DS7PR11MB7836.namprd11.prod.outlook.com
 (2603:10b6:8:e3::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7836:EE_|SJ1PR11MB6129:EE_
X-MS-Office365-Filtering-Correlation-Id: 90850e9d-25db-4286-e7c2-08db76e33443
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XkhkM5N8hu22PDOrf7Sh35BF0ihNcc3USbjxaYYqkbB3J/RtWAoRAo956sgS8E/aMMPIPqcoMFmLhghb4E1H3jQS/gq7TJDwSzFIgncL6vJsNn/NjHqYdwn5w0HQGMTwzAhhxBUoN5iJY4Iyfzl2HMZ5TpYBvnhnd9Wk0eaUztz6GjA4DTvt6XhdRGwwhKoiKDy+lOFm21c77Fu0ZcGTLH9PohPvQ9ptpXK353N9cNjBzLc+V8qWqbJAkaKX6kfKzOCnErqv6ubzKhYrbGQTFiQIoUWQmJKD4Nsq+r7oiACgXsbTXdxs9PwvxRzi4TlIMTMy7vIgYyRPHoMGtSmyM66UKuMKT8nNiBkEnCfM/HwxzdERn/987CfLgxvKg7uo4H4qDk36ijBb1A1l7lxzQFkkC85qrmNKqkcwWbsObGEFet2wm+O65WdL2Y84D2lmf8FwIxU7OGsv0n59H7G1Fi7uO7Xft6vZx5sX3fj1hORm5M2eRFxWofEsA+j9ZivfvbMAGkWMX7KXgPlirjUfCKodHIYuz3jkwqj9qgNvt96szrd8+kHVxbDhaAO2FmY8HxIk8PiUsMGln10ZNhPegzcNgMnZqlXHu2wK9BxuFUq5nsn91eq8mC7MktlFLc2mFpvynfMcd1O6dnNRe7jakg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7836.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(376002)(346002)(396003)(39860400002)(366004)(451199021)(2906002)(53546011)(6486002)(82960400001)(6666004)(107886003)(2616005)(83380400001)(38100700002)(186003)(6512007)(6506007)(26005)(110136005)(86362001)(41300700001)(31696002)(478600001)(36756003)(316002)(66946007)(66556008)(66476007)(4326008)(6636002)(31686004)(5660300002)(8676002)(8936002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WkJReTlTbVZ2OWhEelN1YUNwbzBmbG1lNlp3L1NMYUc5WnpwdFVHaG90M05a?=
 =?utf-8?B?UG85Q0JyVHQ0c1hSSEhyaXRoenBvd25pUmZvWXlLRVZWaFpEc3FmYVhZSjAy?=
 =?utf-8?B?OVZxcDFtL21YMDFHYm1oNDdvanNlZjUrM3RqVTdzdHVna2Nsc2RvdGl5RFVq?=
 =?utf-8?B?L0N5aFVoZU5UVWt4UThhNit0ZW5tZ1BCRHpDSVpua0RkQ0lwRjFkUW5mU0FV?=
 =?utf-8?B?NGJZUmZXaXp5RHVBbTBObzZPNVNMam0rNlQ3ZEJHNDAvOFVYRC9NRkxxRmxn?=
 =?utf-8?B?a3lRYThPYjFDQyt4VlBBS0N2TUl2QjZSVFZ4Y0FqT0FjdGdFZ0tYRjk5RmRo?=
 =?utf-8?B?UFlhenhodDZNa09ST2hXc1pTYzBsaTBIZ0dhR0tXWE1rTFRld21hL0VOM0VY?=
 =?utf-8?B?VXNuek5OcmJObUkyZEhKWWtQanI5MUQvck1KdlFoa0hZMFBtbnh5MUVDdUtG?=
 =?utf-8?B?N2d5TWJyQ1RBbmR3VmszdGFSb3QzUE1NeGYxeTM3eVJTdFJEQ0RlUlAya0hE?=
 =?utf-8?B?NzEzczAzVEx5WHViRkRad0FqUmd3WWQ2VEE2RUdWWEIydS9GYUF3Z1dNQktY?=
 =?utf-8?B?bklKcVErZnFNSnI5c0tsclJrODQ2NUFMYmxjd1Y4YXVNYnJVMFJsbmZvaWEr?=
 =?utf-8?B?aGpFamhsMXVncDd4ZDIrL1BwbHh2bERLRkIrQzFBcHkwRzhkWDNaWFhTOEdJ?=
 =?utf-8?B?L1Q2alMzZUNmMjNRUXB1MUxFc0NQcFpzbXV1STBxMmE4Sm9PTkhpQWlYa0Fw?=
 =?utf-8?B?VnJsclpZRmVYWW10S1k1MHBkaVVwNW5PK0Fpa2luVUlJaXAzcDlndnJSRVNr?=
 =?utf-8?B?aW45WE40YWZYRTNIc3ZsbWQzWFMwaDRIRi9TZFA5ZklydGFjVzZpMVJvUlJr?=
 =?utf-8?B?NEptRmI4Ynpib21BYVVkZ1JoMXoxei9OdVorekRRWEhwV3hVUUVrdnJ1THZy?=
 =?utf-8?B?UFZiT0diSklPZ1N2ditDeXFIbFNxWDVPUnhrTWpIYUxSTUlDN3VLTVNEMjRm?=
 =?utf-8?B?NXVVSVpuUTRQQk1PdmQyaU1hVHNvZitZU21jMU9jeGg3UnJod29Jck9OeFZO?=
 =?utf-8?B?K2dQemh4bjNCb2tqdHBtT2ROcW5XKzA0K1NqZnpOc0dWNjAvQjVJK1Bab0xM?=
 =?utf-8?B?ZUs3aERRdHBCbyttSTgxVk9INTVMR1huZy9saHNjNDVnZ0MybHhiRmlzRjdQ?=
 =?utf-8?B?VnZ4cy9CR0MrN0wyQWVUdWR1ZzhzRnFvcEZESmxrWkFLeDhEUmhXbVpXTEJK?=
 =?utf-8?B?dm96ZnQ5RGdrU1lua0pONUpaOXlHbGFMTEdzbldvUSttYVJBMms3ZGNadVBu?=
 =?utf-8?B?OHk1SGo1ckk0OXV2bmR4K0V6SzVCa0M5WUtTVTFmTUZtQ3dkZTY0YTJWZEtG?=
 =?utf-8?B?clZUMlh6SVZiVk9WUm1JV1RWa2JIc3hFKzFuMUVTdzVNL1JGR3lueEduOFlC?=
 =?utf-8?B?MlY4eW1ia2dnYUtmWUJuaHVpQTdMMUtXM2EvamFVN1N4QzRqQUJRWEhGNmtE?=
 =?utf-8?B?RTRPcUJ5SmhNYnlMaWY4akRNcGtMSFRmcXpLRXF2Y2NLTXhIUmRkLy9SWlFE?=
 =?utf-8?B?M3J6cHVwbmJHbjN4NFNmWWhqU2JjZmJOM1BBY29GUHpqMENFMFRxdVh1dHB3?=
 =?utf-8?B?K2ZScG45NWM2VDRwd3lFSUJhSzZsVUdYZTFlMXdnWkhYNkJ3S0xxSXJYU2FM?=
 =?utf-8?B?eDlZUXNHL2pMOHg5WFpTZWU2aVhjQXIzRkxmbVNwTk01WXFjLy8zdi9aWkts?=
 =?utf-8?B?eXpNa3dtZEd3NVo2Q29aNEJBemh0NUE5Q1NyUjUzajRUMkRmTXFHTzdLNDVL?=
 =?utf-8?B?Wk1sUXE4dEVlM2xMTEpGZ0hOaktOTVAycFZNdVdrYVp5aXZLVHQ4QnJFdDRF?=
 =?utf-8?B?cXBDTkdjTUxuRHh4dGdxZGU5Y3dDS3NYSnR0L24xVExvby9VZkc2YkpuRXNj?=
 =?utf-8?B?dlpBYlAyakwzeWhUWVIvenp0dDQ5QWJmT1hleDdiMjJpY2owTVlVbGxIRGs4?=
 =?utf-8?B?dUFiUTJMLzVNWEdMVXAxT05xQklsZXYrTEc2a01jTE1wN0c3R2hlSXVCNWwz?=
 =?utf-8?B?dWt0MFdWZE00UmlVTlg2T3B0bVFrc0c3bW9OM0hYT0NHM3ZNblYvTStJQUxi?=
 =?utf-8?Q?ggQjvOFbCB76lZ5MsK1oAYSh5?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 90850e9d-25db-4286-e7c2-08db76e33443
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7836.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2023 07:50:41.4318 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ftlHTGgB/c0NqLYPA6+Y8Kn+kWqwRo385a3AHqgP4yZhUN09tivGE8O3yFZoZz+UGGq6jXE69kmfPmGq6M798Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6129
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687852271; x=1719388271;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YMcQnJJgMxiML2KOfla72KGRrvm6USZ3nO/EEsjW7VM=;
 b=fSrZz0qKC0Sm/0Wazxfuwu6QxZXAJuhm/8rfPR18Ir8hk0qJ7dI4JtYZ
 5Gz0HrrX519uAenCc97Y29eSeafnkahBf0cBs/wgUpA6987iNG/V5EV44
 jc5P/ClvZbsq8GLPCsbthdBES2bTPnVepHf80zhF0KkH9B9bzDKNQpO3L
 YW/NKRbMAKHZ8trDbf5X0d1RcyVjkylS/GvuaPnJ17HIAj3m2pwjZ7+l6
 GKXR7n6xgIlNg1WdKVppe6neErAMEcfCZR6eS0eMOQ+RfOVoeIpnt8vyp
 qfZ+CUKHoymnel5FLDlI5eUevHZwUI4HL2E773dwxeSqvHRd7ECR6a1Fw
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fSrZz0qK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next V2 04/15] ice: add migration
 init field and helper functions
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
Cc: kevin.tian@intel.com, yi.l.liu@intel.com, intel-wired-lan@lists.osuosl.org,
 phani.r.burra@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 6/21/2023 9:35 PM, Jason Gunthorpe wrote:
> On Wed, Jun 21, 2023 at 09:11:01AM +0000, Lingyu Liu wrote:
>> Adds a function to get ice VF device from pci device.
>> Adds a field in VF structure to indicate migration init state,
>> and functions to init and uninit migration.
>>
>> This will be used by ice_vfio_pci driver introduced in coming patches
>> from this series.
>>
>> Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
>> Signed-off-by: Yahui Cao <yahui.cao@intel.com>
>> ---
>>   drivers/net/ethernet/intel/ice/Makefile       |  1 +
>>   drivers/net/ethernet/intel/ice/ice.h          |  1 +
>>   .../net/ethernet/intel/ice/ice_migration.c    | 68 +++++++++++++++++++
>>   drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  7 ++
>>   drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  1 +
>>   include/linux/net/intel/ice_migration.h       | 26 +++++++
>>   6 files changed, 104 insertions(+)
>>   create mode 100644 drivers/net/ethernet/intel/ice/ice_migration.c
>>   create mode 100644 include/linux/net/intel/ice_migration.h
>>
>> diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
>> index 960277d78e09..915b70588f79 100644
>> --- a/drivers/net/ethernet/intel/ice/Makefile
>> +++ b/drivers/net/ethernet/intel/ice/Makefile
>> @@ -49,3 +49,4 @@ ice-$(CONFIG_RFS_ACCEL) += ice_arfs.o
>>   ice-$(CONFIG_XDP_SOCKETS) += ice_xsk.o
>>   ice-$(CONFIG_ICE_SWITCHDEV) += ice_eswitch.o ice_eswitch_br.o
>>   ice-$(CONFIG_GNSS) += ice_gnss.o
>> +ice-$(CONFIG_ICE_VFIO_PCI) += ice_migration.o
>> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
>> index 9109006336f0..ec7f27d93924 100644
>> --- a/drivers/net/ethernet/intel/ice/ice.h
>> +++ b/drivers/net/ethernet/intel/ice/ice.h
>> @@ -55,6 +55,7 @@
>>   #include <net/vxlan.h>
>>   #include <net/gtp.h>
>>   #include <linux/ppp_defs.h>
>> +#include <linux/net/intel/ice_migration.h>
>>   #include "ice_devids.h"
>>   #include "ice_type.h"
>>   #include "ice_txrx.h"
>> diff --git a/drivers/net/ethernet/intel/ice/ice_migration.c b/drivers/net/ethernet/intel/ice/ice_migration.c
>> new file mode 100644
>> index 000000000000..1aadb8577a41
>> --- /dev/null
>> +++ b/drivers/net/ethernet/intel/ice/ice_migration.c
>> @@ -0,0 +1,68 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/* Copyright (C) 2018-2023 Intel Corporation */
>> +
>> +#include "ice.h"
>> +
>> +/**
>> + * ice_migration_get_vf - Get ice VF structure pointer by pdev
>> + * @vf_pdev: pointer to ice vfio pci VF pdev structure
>> + *
>> + * Return nonzero for success, NULL for failure.
>> + *
>> + * ice_put_vf() should be called after finishing accessing VF
>> + */
>> +void *ice_migration_get_vf(struct pci_dev *vf_pdev)
>> +{
>> +	struct pci_dev *pf_pdev = vf_pdev->physfn;
>> +	int vf_id = pci_iov_vf_id(vf_pdev);
>> +	struct ice_pf *pf;
>> +
>> +	if (!pf_pdev || vf_id < 0)
>> +		return NULL;
>> +
>> +	pf = pci_get_drvdata(pf_pdev);
>> +	return ice_get_vf_by_id(pf, vf_id);
>> +}
>> +EXPORT_SYMBOL(ice_migration_get_vf);
> This doesn't look right, you shouldn't need functions like this.
>
> The VF knows itself, and it goes back to the PF safely from the VFIO
> code. You should not be doing things like 'vf_pdev->physfn'
>
> Loook at how the other drivers are structured.
>
> Jason

I'll change the way to go back to the PF, following how other drivers do.

Thanks.
Yahui.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
