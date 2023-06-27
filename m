Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C5873F804
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jun 2023 11:01:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9476D41713;
	Tue, 27 Jun 2023 09:01:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9476D41713
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687856485;
	bh=bzmNYQSlL/k6ntObSfciOaMRUxwhYLKZMK6jGNxIxnA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bILbRqHaV0B1awFG9MxQO+19h1dE572v4vw6tIw1gwQCDOHwy6//HB0A4WNleGcqy
	 b8vQ8ErDRQHu3J4n9i64oetcOUjCkTZQizH+jPmnyV8nXRfhhXYE3eDsNmsV7v5r4b
	 IiLHfhHZeGopYJWkPncwX0vlgf3R3BIhmOaJvTNwrJ7EbhIf3DV8KqKrbxRC1NhPHM
	 Ru97ormZdhjFZbMNSXIQ1FQyLEdFG6s/Daekl4r3AKOnjVYKcFVCuPNmwIa2R5RoEk
	 fatr7T8LTOhIzj3FeQxg7Ykkp8FoiEJgFh6s4swa2qFAoopN4OYiSb13+ZMoSe1ei9
	 s7u2E83nNv+Kg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5yx_Prfn_i9p; Tue, 27 Jun 2023 09:01:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B47F2416C9;
	Tue, 27 Jun 2023 09:01:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B47F2416C9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 71B0F1BF2B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 09:01:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 486CE416C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 09:01:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 486CE416C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TIwfuGjt2PR1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Jun 2023 09:01:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7677D4021C
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7677D4021C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 09:01:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="361559698"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="361559698"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 02:01:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="751596955"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="751596955"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 27 Jun 2023 02:00:59 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 27 Jun 2023 02:00:59 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 27 Jun 2023 02:00:59 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 27 Jun 2023 02:00:59 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 27 Jun 2023 02:00:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EjU8l3RuSm0ezLLyAyieeADYew1O2+vEr+yyCGS9xsAfseaDnLjPxOk+S0s5N4/a6BbB5MNyC4cqIbhIOvkWC2NPTsGHdmD9fa0Pjn0qd/sKv7FXctRdEtQtKVTOO/heokrLJ56CIG/GffKMMCPZLuKDWdC92NleeYgjXMgvFYEj1PEq1br5YDm5zVBN15xOZA8A2cJdDGyaaam75pEbCTm7W0lH1/WWwVU+iaRfFsjNz690FdAjTkDF/rFwKWCpGzrhSs85LsQWHFmkqnCjHy1/fU1Q09r2KvCe0xBtvolCj6ycPaYWFejtgh7bwogQN7gjDD03cZZSWR8xLxZk+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lMT2Gn6NGnVvszHobpNF3Ge6AdZNoEvIj8QuRiy/Kx8=;
 b=BNWqR454DTuqn6D/gJAu3bBDj/IsTpk1htXdX5Q9J9ljEtm9+DUR+yyOnVTCF8bpSPQ+50hVcmL/NCPJJaLffrhf4oVAj56kgF/tNquUSQG5LzdyfRbW7pzQ3fhu6+ZxvN2WqQP/7P8oPTTXhv6LFoHf+ujVct1Hd1WAi4VB51l/W8XxZ4x5EQiAxAMYPUnODco+pxjMJ1x5bOpoV13ldkDoQl/xxGpCj7PaYo10pJ/tpzxm7SjSQwIhd1pQuNiwmHHI1hPDE56X3wHDbGqznC2OCUS8vRKeMbzcW7lh6N1IRarcq171AB+SKwZoI3707wfS+zTTHrZEf3kJv4J+VA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3047.namprd11.prod.outlook.com (2603:10b6:a03:8b::32)
 by IA1PR11MB6394.namprd11.prod.outlook.com (2603:10b6:208:3ad::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.23; Tue, 27 Jun
 2023 09:00:54 +0000
Received: from BYAPR11MB3047.namprd11.prod.outlook.com
 ([fe80::66e8:b847:cd10:10ec]) by BYAPR11MB3047.namprd11.prod.outlook.com
 ([fe80::66e8:b847:cd10:10ec%7]) with mapi id 15.20.6521.024; Tue, 27 Jun 2023
 09:00:53 +0000
Message-ID: <0edbb841-1b85-be4b-1bb4-3f297d5eef0f@intel.com>
Date: Tue, 27 Jun 2023 17:00:46 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.12.0
To: Jason Gunthorpe <jgg@ziepe.ca>
References: <20230621091112.44945-1-lingyu.liu@intel.com>
 <20230621091112.44945-14-lingyu.liu@intel.com> <ZJMH3DF7nJ+OG9BJ@ziepe.ca>
Content-Language: en-US
From: "Liu, Lingyu" <lingyu.liu@intel.com>
In-Reply-To: <ZJMH3DF7nJ+OG9BJ@ziepe.ca>
X-ClientProxiedBy: SI2PR01CA0030.apcprd01.prod.exchangelabs.com
 (2603:1096:4:192::15) To BYAPR11MB3047.namprd11.prod.outlook.com
 (2603:10b6:a03:8b::32)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3047:EE_|IA1PR11MB6394:EE_
X-MS-Office365-Filtering-Correlation-Id: df53802a-23c3-45e5-a774-08db76ed0305
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5tWQOe+ZEGyTFscsjZ1GNzO84c2VmZZYd17pzCcBFKNK35CIQ2d7jwWx7FDyCyJI4p0MOQOar0s/n/ffhXG7FI17VokpxIgmuCz62DMzPu9BPJfr9xbGzQrxItQ0IuGUsWI5PcjwCM3mCZO7PuhIz9AXwHA8NzaVB1DhBI/DirG4kg1L7QwcNJ5Dd6RDfcT2lNzuA9uv/eaFELrhvoT78ut8yDqtMXlYRa8pPToHOMJrYYg2j8tGxNY6lvZbZgwjHyCpfkuwlp288IUyZzJlhbcHCKrpxtMXD1WWzfU18wIIB6H3joBqjEDwVe6gapnLgDSMFRTgeg9oXHguKu8CprpEXcom+dcR3i/Xde3xoMJ9Mp79bfxBd6DXz7x8CV91TKV7hdhvvk8vAmuM47UPSIo3qTrV37A0GSoGdvNpjlM0ufl8n1AlUWkpRzv3cpqMiPKyitYz8jCZgmm7d7WGlDZU1mp0ELs0VgWSDMp2OJMi7YcaJChiP8hIzyfCHJgZRIdGa8jubz+7E08k0n7fEKV2R7Q+chSWMalaFfPDg6u7Q0AxrghOs8q3pXbmbnsIs/wy2bpURubtV11N0iN5tiWWTWNzJ6cujPI5khMpLojpaOOztDZf5Uq/cuXU0s84FMRfM4n3+zngu8DZfwzogw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3047.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(346002)(366004)(39860400002)(396003)(451199021)(478600001)(6486002)(107886003)(26005)(2616005)(83380400001)(6666004)(6512007)(2906002)(186003)(6506007)(53546011)(41300700001)(86362001)(36756003)(38100700002)(5660300002)(66946007)(31696002)(66556008)(316002)(82960400001)(4326008)(8936002)(66476007)(6916009)(8676002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?azJSZ3pIeWhoNzNsaFdBdUhsWVJBaTBpNzlhTk12cXJWdkdBT1NhbENWMkZW?=
 =?utf-8?B?Lzk3bE5yRCthVFQxYWFJU0V0SlEvNW1WS1FmK0pwMFd5eEpDUGRaRlFqM29X?=
 =?utf-8?B?MjlNaGIrSzlWSXcyR0Z1MFMvM0JyUmtOMTJLY3N6QUtlclNrODFFVEFLVnpZ?=
 =?utf-8?B?a2htSzM5aFNzOW9aYzVNcHBrM2NFTktaT21JdHNyVUt4eE5yQUFWazdLTW5L?=
 =?utf-8?B?RC9RS05XenV4WHUvTnlSOVlXMmhicmlReEpaeU9QVEFoWjkyV1pFSHAyNHky?=
 =?utf-8?B?SVV2TFREcjF3T0w2bldISjlsVUxRY2FxdEdrVXZjOFh0cERIVHJyZTU3VmhK?=
 =?utf-8?B?NGtIYW9zd25Sb0lwTGhsang4SDBDVVIzeU1JZEVZdzlaemhRWlFVbXk0aFl0?=
 =?utf-8?B?MGJNU0tlUVdzUW5WS0VlTHZ2TitQNmxlVGl5TkVVbzNNWmpmdnB6WlVVMHcr?=
 =?utf-8?B?eHlSRWtlNmRScDRmeUNUZHhJQzAydnduSDhGWkVoQnJURzd4K1Y3c2NQU2di?=
 =?utf-8?B?VDNhcENZS2paaU0zblBMeVIxS1dIWFBpNUpsWVdQS01iMHI3Tk9BSXJUQWlO?=
 =?utf-8?B?aGUrVDhjdG9MdzErNFZxNDZWUDBQY09wL3BQR1dTWkJiTlllQ2ZHdDlOLzdV?=
 =?utf-8?B?eHIvZmo0Tjg0SS9UUzhWYnkwNGVTd0hyazA0dHNWSDVldXExOGZ1YmZSNlFR?=
 =?utf-8?B?MmpVV1JPSWJwMXNjZnpiem1lYlV0MzVYcnc4akF1Vm1rb2tQZ25Oa0greGhU?=
 =?utf-8?B?bTZJWkNrZ1Y1a09oR3RwaXZHWW1pVWtHc3FQYllzRXBrVitzZEJtYXZaVzBa?=
 =?utf-8?B?SmdvV2FRR0Z5SXAvalpLVTVraUxWN3MxVndLRHI4azFsV2YvcEY5a29VU2RK?=
 =?utf-8?B?S1N6NGZXUHJZYzEzYzkyT0FvbmRwTVhrZE5EUlprc29QZ2NXWWFvMWtGRjJo?=
 =?utf-8?B?ZE5oTmhzeXhjYmtRZHlDUjNmcFVXa2FmY2Q5NGsvcUZYMTJDUkw2U2tUYzE3?=
 =?utf-8?B?WUFkckJEMkRWZlVYMmp2L3NVenAyTzdUSnVDVnhNVUM3enloMnJXMnVURTFR?=
 =?utf-8?B?a29zNzVwNnBTU1d4b0JjWURtK2Z1cG9LU2FLVjBQTWpKSVF5dTF5cDJIWmJt?=
 =?utf-8?B?dDFmRUl3clhHM3NCNUFSb0lEL1pwVUprSTJvZE9RYk90WTJRYjBCYUNhWGEr?=
 =?utf-8?B?aUNBTlFXc0NUdGdzb0hIUkZYU3lmTGFqV3Y4VjNsdXJBZnZFZmdIcXpSSWkx?=
 =?utf-8?B?UHRZVDJMaTcyWVBvbEE4YTNVN08vemIzQXNqUDdSck0vUUtPOS8xZVp5TC9S?=
 =?utf-8?B?MzhiT0d6ejgwT1ZqTFdnaGtXL2N3a0k2bFlqR2tST2lqdjBHOFJRSGVMTjJV?=
 =?utf-8?B?ME5qam5BRmp6dW4vZWVRSHJDTkQyaUhJeCtLcTZRWDNxcHFIS1BFN1YzalBa?=
 =?utf-8?B?SS8zZXVDRlk1UGprUkZ5RFBKcXpBcU1UNVRKZUxKUzluVlBNelRYOHppK0lX?=
 =?utf-8?B?dnpleDZreTlsSXZvMzVZazUvdHF3a3BrU1NzMFpwWVNjdjR4YlQrcTR4eElX?=
 =?utf-8?B?aXo5NjlaS05pSFA2dlVPSno5b3JsK0JRdllpUXROK3ZuVFNSTVNOV1ZKWitt?=
 =?utf-8?B?OWtNb2ZFYldVTUJaQlBWUVlSUEtzWlhYYi9UVnJwTkIvNTNWTFN4WTR0RXVC?=
 =?utf-8?B?MDhkUU8xU200d21mVU5lMkI0WkRZQXZmaUdBcGpNV2xLSktLcFowZVgrLzVP?=
 =?utf-8?B?RlBuZVNWZ1RuSWpOZWk0ZGJ3VCthSFU1ODFLUXZBdFJqeFEwQXUybmRuNU5Z?=
 =?utf-8?B?Tk9RMWNHdnByNGM0K1VaTkZEYnZVcDdlcERIaU9DK1E4UmR0OWg4RHZYRmhC?=
 =?utf-8?B?NWxTS3dWZXcvL200dSt3d0xMbFRCeTVJWE1vdGM5Vm1kUmpxUXZRdFArTmpm?=
 =?utf-8?B?KzdqenFLUkdLZVVKMkt1Y291OVZEV3RIWWJoUXFQQlRhTkU0cDZvUUZNZ2ti?=
 =?utf-8?B?WXNEUU9WTnphWGk5T0JhRjVJZXVCVko1NDdnTFQ3OGFWbHc1WVF4dndnaGRF?=
 =?utf-8?B?NDBQTFhLNVN0amJ3S2tZbHU2am9nRm02b2RmOU8zZXlMV3p2dW5QWTNWVU1C?=
 =?utf-8?Q?k2wZi4mMF8uXwMSBgiybPxJfK?=
X-MS-Exchange-CrossTenant-Network-Message-Id: df53802a-23c3-45e5-a774-08db76ed0305
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3047.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2023 09:00:53.7170 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iIwV85XllOn/ZQOTjv1Nl4SJt/XLUxXZCgk+gFYjwv5+WlOsh8tk+d2g8FncESZCAQc9+j/xd/NI9zKiPUB28g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6394
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687856477; x=1719392477;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bIU//yyT5P6JZd38gCqWNz0Ty5VqicwBw9swbrrdET0=;
 b=SBiFPk2OG75myqT1mKKGIR2LBB3uZt4/kvYDxAaHcDTYED00fZrwiCCi
 0ySXIWQQGEaRRCRV6HbjuuUIEsYrW6VRoBrhXKquNcjm2ChNGqoa8jXlb
 v5Wc1/kC5xlkVWQ2RsXNCYxZYDoWbdGrSE01cUdI6uA/iXPac+ZYT7QLg
 oddJ2Zt8KT3s1/cSK1R/x8aevi3BpbazX05Uxmg7EXhxE2aXFGFx1z+SG
 nUOG2p4XxCnnAWUJRdqQWTYfu35DWzafWoEigge8vaUXCT7dhaXc3lZME
 GrvDx+HmxtAQzpQZpxaTOuYM9minL1HJVTLSB9xb6SzFYeSKBc9o6zyK/
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SBiFPk2O
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next V2 13/15] vfio/ice: implement
 vfio_pci driver for E800 devices
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


On 6/21/2023 10:23 PM, Jason Gunthorpe wrote:
> On Wed, Jun 21, 2023 at 09:11:10AM +0000, Lingyu Liu wrote:
>
>> +static struct file *
>> +ice_vfio_pci_step_device_state_locked(struct ice_vfio_pci_core_device *ice_vdev,
>> +				      u32 new, u32 final)
>> +{
>> +	struct device *dev = &ice_vdev->core_device.pdev->dev;
>> +	u32 cur = ice_vdev->mig_state;
>> +	int ret;
>> +
>> +	if (final == VFIO_DEVICE_STATE_RESUMING)
>> +		ice_vdev->is_dst = true;
>> +	else if (final == VFIO_DEVICE_STATE_STOP)
>> +		ice_vdev->is_dst = false;
> Definately not. The kernel should not be guessing which end is which,
> the protocol already makes it clear.

Hi Jason, thanks for your review. This will be changed in next revision.

>> +
>> +	if (cur == VFIO_DEVICE_STATE_RUNNING && new == VFIO_DEVICE_STATE_STOP) {
>> +		if (!ice_vdev->is_dst)
>> +			dev_info(dev, "Live migration begins\n");
>> +		ice_migration_suspend_vf(ice_vdev->vf_handle, ice_vdev->is_dst);
>> +		return NULL;
>> +	}
>> +
>> +	if (cur == VFIO_DEVICE_STATE_STOP && new == VFIO_DEVICE_STATE_STOP_COPY) {
>> +		struct ice_vfio_pci_migration_file *migf;
>> +
>> +		migf = ice_vfio_pci_stop_copy(ice_vdev);
>> +		if (IS_ERR(migf))
>> +			return ERR_CAST(migf);
>> +		get_file(migf->filp);
>> +		ice_vdev->saving_migf = migf;
>> +		return migf->filp;
>> +	}
>> +
>> +	if (cur == VFIO_DEVICE_STATE_STOP_COPY && new == VFIO_DEVICE_STATE_STOP) {
>> +		ice_vfio_pci_disable_fds(ice_vdev);
>> +		dev_info(dev, "Live migration ends\n");
>> +		return NULL;
>> +	}
>> +
>> +	if (cur == VFIO_DEVICE_STATE_STOP && new == VFIO_DEVICE_STATE_RESUMING) {
>> +		struct ice_vfio_pci_migration_file *migf;
>> +
>> +		migf = ice_vfio_pci_resume(ice_vdev);
>> +		if (IS_ERR(migf))
>> +			return ERR_CAST(migf);
>> +		get_file(migf->filp);
>> +		ice_vdev->resuming_migf = migf;
>> +		return migf->filp;
>> +	}
>> +
>> +	if (cur == VFIO_DEVICE_STATE_RESUMING && new == VFIO_DEVICE_STATE_STOP) {
>> +		ret = ice_vfio_pci_load_state(ice_vdev);
>> +		if (ret)
>> +			return ERR_PTR(ret);
>> +		ice_vfio_pci_disable_fds(ice_vdev);
>> +		return NULL;
>> +	}
>> +
>> +	if (cur == VFIO_DEVICE_STATE_STOP && new == VFIO_DEVICE_STATE_RUNNING)
>> +		return NULL;
> Lack of P2P is going to be a problem too

Will add P2P support in next revision. Thanks.

>
> Jason
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
