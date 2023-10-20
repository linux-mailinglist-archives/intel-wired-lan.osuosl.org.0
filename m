Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CC2077D1816
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Oct 2023 23:29:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 518AA80DF9;
	Fri, 20 Oct 2023 21:29:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 518AA80DF9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697837393;
	bh=Ngpl3b257htk7yeERdYBBgGVvPi25NglFNanl6WIVD4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VXp/YsKX8pTYUxZTzskhC/MIsNbrUIboMxYvSgi0ddkHLVEsftofPZhv8NE3D8GQ4
	 hPsR/fF1wDQThu+O31H8H7bce9X9QCkxozPRdMi6ttJ7/2uORM5gtXW6uY+8Dquasp
	 8NaxRZXWrvBBShQ4VvvL0Yl4XVD2tBQqBWirI0gk8MURuEcqR3jssmtpyXslPM96Ao
	 mCkiNRWXbm86PSUK42SLUhLMXCujyhhjPqVigBXg93/KSkN5/rvUZ/DEdwVAolpROv
	 439QN2mEyszD82bh9tnaxFAdEU0f1MbpEV+hVAESaWvhi5Q/ixTqhuuhJLczrIReRh
	 J3BDwRLuUGJtw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N8IcK4VX96Xn; Fri, 20 Oct 2023 21:29:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3A54380C81;
	Fri, 20 Oct 2023 21:29:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3A54380C81
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DCCEC1BF990
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 21:29:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B41CA60FD3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 21:29:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B41CA60FD3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ElPvvj5wYNkJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Oct 2023 21:29:47 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E3DC460F2B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 21:29:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E3DC460F2B
X-IronPort-AV: E=McAfee;i="6600,9927,10869"; a="366806878"
X-IronPort-AV: E=Sophos;i="6.03,239,1694761200"; d="scan'208";a="366806878"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2023 14:29:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10869"; a="874044516"
X-IronPort-AV: E=Sophos;i="6.03,239,1694761200"; d="scan'208";a="874044516"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Oct 2023 14:29:35 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 20 Oct 2023 14:29:34 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 20 Oct 2023 14:29:34 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 20 Oct 2023 14:29:34 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 20 Oct 2023 14:29:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EzPAtkClyUV+v2D6RELRpPNyrHk+faaszCxnDhqaRvayCYfk//WdXY/ZKdeKjSzJy8lQ+aehflalFWXAgGTOXYbjVJsB2HZlswvhHOGmhSLz/GyebqhvqThKT5BaYXbulwuVvFS8MSRo+OHV/0JKrZ4KEGUwPZNUSUkht5T9M3EdEd2jd971NMd/Q/mk17ll4hcpd7mAW/5VX2ijsqCyzN8slNmMTQSGt3DuiAH2kET9eGTT8roEEjY+fxlbISpD7OuwQmma6OUMJlcuSKcFvtIp2bcvPev1u5q1ZHOZ+IVZx0BvVmZoxSWtA+EYSazz0WpY/Vh/m8coe7Vk+u9krw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SzCzxkBG5zP1lr+FY7IZlThsYaxHTw4g618oq5b09/o=;
 b=cJVddG/7b7L1GM6CwR+yR0T0fc9zLyl3O8oKkEogJ74H3de2e7Js4vRHTuT1wl3GxES+V7drAMNlSuI4alxg6+XPaMtXh71UFjbmNEEek6jOLu1qMqyo2GvE+yVAu0J8D0KxdBlVT9hZiDm+eHCgbhiuUTvqoZuLC+7P9ifa+LIwLL0mNdvD7wCjZfMKGsDgDI2bpsyK9khkW95wdZ6PIsGh5zidg2RKry+9owGCEF4jxJ6oKe0me6LR24hukU4KG+o/cV2Bl2y+S+tFyrGiDY7ss0e6HU3WJrA5xNvEObnLibC0kbH8qdHgRUOY23wAd6GB3KdZoUhBdwOv+G+SgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MN6PR11MB8194.namprd11.prod.outlook.com (2603:10b6:208:477::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26; Fri, 20 Oct
 2023 21:29:30 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::34a7:52c3:3b8b:75f4]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::34a7:52c3:3b8b:75f4%4]) with mapi id 15.20.6907.025; Fri, 20 Oct 2023
 21:29:30 +0000
Message-ID: <4e78e68f-139c-4a30-ae7b-60eadab9f13c@intel.com>
Date: Fri, 20 Oct 2023 14:29:29 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Ivan Vecera <ivecera@redhat.com>, <netdev@vger.kernel.org>
References: <20231020193746.2274379-1-ivecera@redhat.com>
 <20231020193746.2274379-4-ivecera@redhat.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20231020193746.2274379-4-ivecera@redhat.com>
X-ClientProxiedBy: MW4PR04CA0364.namprd04.prod.outlook.com
 (2603:10b6:303:81::9) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MN6PR11MB8194:EE_
X-MS-Office365-Filtering-Correlation-Id: 851c1257-4d4f-4bb7-7787-08dbd1b3a506
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: z5+DIYAobKJwneqylMiH/9xRqqeHE3rfuaBlnSXviizQWWTkwv055ZsB+eLlrnrDHHCIsDAWIzNwqgeDjg3+0Ut187C8xsv2LTW7ydFGVxXrpRxjWmuKkk2DsNcinYfa30ioUdBpnJKLN0jjQimxLXC8XgXKRJnRZEp86tcALrDH6hI/QPx4IA9/Jo/jLOROh/yOEpC7OGE7JHo6mMTqm3+5msW4SE86bOySOh2MKJOrj5oY8mgalEw4Hmc4aqtCuVEcgL97Tpyc6vr9bO2Yl4T54s2GFL3tYQrnKggFjMu6gWLknkQw/Gr0vC57/T032IWhOlRjm7Nejzi6bUQt0Lm6lhw8wb7gqE+Q53r6fDw6rqq4EwSYB8QGSzhON4uxkoWFT8y6b/oawsDcmsS/x83L8PrV7R9kyCx1NwSDmfspJPX6Qr+LjIB8J0CBEcCdjt212HKvZEum05QABZbL7sHkhBACwrMIG6Ygpu86Vc4r+ViISZEIuCasJ9VXbC/D85QZ9ocX+9JIqUYBSRE06DjPXOKgs9BvcOTV0brfmapBp7bta2NCdh/hcfr1yIVcaxxLaOfhI+Kvj0TKSzrWu9zChsD+GygYXAc8HIT4eHhS1QKEi0HZ99/r6e1/4FO+UzFlJmfZXMynjoCsa4pJAg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(346002)(39860400002)(376002)(366004)(230922051799003)(1800799009)(451199024)(186009)(64100799003)(31686004)(66946007)(54906003)(66556008)(316002)(66476007)(83380400001)(26005)(2616005)(53546011)(6512007)(6506007)(478600001)(8676002)(4326008)(8936002)(36756003)(38100700002)(5660300002)(82960400001)(7416002)(31696002)(41300700001)(86362001)(2906002)(4744005)(6486002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dUlPM1R1QzFDVm8zaldMS0FmSDB2LzZ4eUd1KzRDaXcvcm9MZXh6MzdibzBv?=
 =?utf-8?B?TU9qUWdFNTc0NEdsaVlCUzF5RDk5S0RoUENRV2ZLbVRxREpVYnZDbmhlVXhk?=
 =?utf-8?B?STlNRldFd3ovS0lUeXQ4Rk9MeEppajI1TnhScWVmNGVCbWRBTXd3Q1ZnS3VX?=
 =?utf-8?B?Qk9uY0d2R2dZTGxweERVcHZ6ajk3dGZGYk5weTAyM3dTVG1mS2lFRVluMWNh?=
 =?utf-8?B?TFhJV0c3cGxlZXY4WmZnbmFjOUxVWVdnL3RBTHMxY3JMYVlWdUt4QWdWZTNM?=
 =?utf-8?B?Z2pOOXpNT1h0STl2SlVQek9WWENHc1RaU1MwT3hlZUgzK1dTa1JBUVNwUTly?=
 =?utf-8?B?SUZ1UCtaVDFnSUUvRjlRdlVyRTI5YkpEZlRNRi94SzljbzVXemhLendBWGNa?=
 =?utf-8?B?aVg4eVRmN0lwZDdNQ0xXRWEvMktmZEtyM0lZQ0FlZGc0RktPa2lKNVFsaFY5?=
 =?utf-8?B?ZGZLQllSSGdYL0E1ekNMMm52Zjl6eDN2R0pTRktVNXY1QUxkOUlKSkV5ZGVu?=
 =?utf-8?B?SzJXOHk5Nk5vOFVoS1UwMmwybUtoS1hDK0gyaHNHeUFBMUVIU28yNk9Xd0dZ?=
 =?utf-8?B?TlI5NmY2b1NpRkQyNHJQQTdJSkpRVEpyZmJLMnloR2xRelB1NG5GSTdZTEd3?=
 =?utf-8?B?eHV5TEVBbTMrNUtDRmxQU2pLSkViVnVPa2dmQ294NldXUmZ4eVpydTB3K3dm?=
 =?utf-8?B?VzBOczBWY0w1cytlVjc4REF3Q0JSZStiNFlUcjNmMS9hOWp5N284N1A3RkRX?=
 =?utf-8?B?UFlTd3ZlWWxCdmVMVWJBOFhKNlk1ODQyK0d3ZUJXZUg4aHN6V1ltMGJ6U0xM?=
 =?utf-8?B?aTZGUHlJaVF4ZTQ1eUY5S0MrM3JheGpUK0VRVDU0aitsZnRqWGZ3VGdGRHF4?=
 =?utf-8?B?SmxybjRyRUMyTjFQWHRNWFcrMlBIZGR1SytsZEV2Wmh1THh1RkhRemlCenJ2?=
 =?utf-8?B?aWtmUExEMjRKTlh0Q2Q4YUJ3RVYxdjltZTJtUGdSZ1RTZVpnUmhhL2hKSytn?=
 =?utf-8?B?bVdHWWZTVEFUaGk2dnErT2xobkxCaU9jZ0RHN2ppOVZUd0xQNDNTNEJqOGJT?=
 =?utf-8?B?UUZHMlBaRXJrMHF2c3VRN245WmlSRW9GbW5GS3JrQmk3QTRZTDFCSlh5R2Mx?=
 =?utf-8?B?bkJSTFhWQnFxcjZZaU1iTDRIMDNuQnNsTWxOQ1BxVE1QNlZCdjVKYVRzenFs?=
 =?utf-8?B?MmloMHFuQi9NVHIwUlN3QkJPWnJlNGRyUTV5VjAyem56N2FSTnNoUnBhV3Fo?=
 =?utf-8?B?UHluQ0M0U00wK09nUE9keXBsZ09HMGFrcVJQcFVDV2UvZGxaYXpZdWY4TE5m?=
 =?utf-8?B?Wk1UbWNvUjlNLzBreVJjckd6MGl2TUVYWjcyUm51dy9ZZUdXbW9nTndCSzR3?=
 =?utf-8?B?Umx2SjhBZmpEQ1JUSzVqVE5aQTBwV2lTYXc0UEl5Yi9RMUhhV0M4MHRCK1JO?=
 =?utf-8?B?Z09HUEJ3eURQMC9pWnUxSmtDcXhDOGJ2ck1mTDNjQ0crYlpPdC9mN1ZkSkxY?=
 =?utf-8?B?eGpNZitPSFF1MTYzQVBEN2IvZEFqakwyRmxJcHlGOTIvdUY2R1RSLytmZG1s?=
 =?utf-8?B?SlFxYzNyMzVmdUxRRjlNN3U5Uyt6ZHkyR0NYQ1VIRFdpeFJZZ1M3UUVxWG5H?=
 =?utf-8?B?QXhjelcxWTJua3k4MUZ3YmF0WlNrV0s3aFNUMSswaG5LQ1VVUENsdU1kSm1U?=
 =?utf-8?B?K2N5MUo3Q0VmRWNoUkFrS0g3YWNzNlJLRTJEMFVwSUxXSUhlR0RhQWVWcGNG?=
 =?utf-8?B?VHNzaktSRG1GdC96RmRFQU45OGZLS0ZZaGhLNmR6WVNCN0pDTVVReUdsQmdq?=
 =?utf-8?B?RGFsQXJmeVJyazlUYjZFUGJwY01uK05Jenk4bW1WeUNwc1RQV3RTRGNqREFm?=
 =?utf-8?B?SVBPcHRMZXp4RjNsZHpOVlJjS29JSG04dGEydEY4ODBkNDNCbjBnSkFWOXJV?=
 =?utf-8?B?bVlPKzZ2RVFnck9qQm0yaWJnclJHWWZWT2VlWVA3WldoTDMrNTVnQW9HQW16?=
 =?utf-8?B?aFU2a3FsMTljTE1NY3FzeHRnSWxJQjBOYkZEWkFpSGl4dGYzUWcvZHRuS1NW?=
 =?utf-8?B?Sk95ZjdjM3RCRUNYc0h0N0xkRVk1NUpkNmFqdHJMYWN5TXdDakZVcWZxQTJH?=
 =?utf-8?B?NnpFSThmM256cUJGMlUvSmVDanhNWFlucjJoZkVWaUVoMjNpYlN2YjFIZDFJ?=
 =?utf-8?B?Nmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 851c1257-4d4f-4bb7-7787-08dbd1b3a506
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2023 21:29:30.2151 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x7BucpHNFrDKzPpjFYVXfwUlPnbX/OTIkUZZLWJoFxp6Zo0dCCwfdXh1aJtmWkj8fZBoW0Oy6+JMzbnAhMHXFOyGEsBTEwMYmPbE7ZCUyxw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8194
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697837387; x=1729373387;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gRlWsjye81G4mh6QKNqEfATGpGDG1Rr3ZsP+aZPHnkY=;
 b=aXrLRFe4UcMzMorGCPyIPovYhHX7odMeoapKtcoUK55xl3c8KGl9LI9W
 aTyk2OvMakXVw8HjohIX+v3wO3O01jj0e8TGPntqJ7oaemuCK8Z1wsS4d
 SfYD2mfiJm6EFVdRLIcjfN5qTnhbatiCLtKOHYPqtT8I21eT4wv1yisdk
 8QWGl1R1wf0OSsACrwOuihhUWOVw4sstheB4eEK7VeuHK52wJS8DU2iLN
 B22olVL1+/bHU7EiLZBjNBbsnieNweJyRrPgwqCYByViK5Z2h9+uSLReE
 9PnRIJZzdEpioEdac12OUFXiuIWcyeBzKzDi4DakPc8yWez00RgetgzoD
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aXrLRFe4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 4/6] i40e: Use DECLARE_BITMAP
 for flags field in i40e_hw
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
Cc: Eric Dumazet <edumazet@google.com>, dacampbe@redhat.com, Jesse
 Brandeburg <jesse.brandeburg@intel.com>,
 open list <linux-kernel@vger.kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/20/2023 12:37 PM, Ivan Vecera wrote:
> Convert flags field in i40e_hw from u64 to bitmap and its usage
> to use bit access functions and rename the field to 'caps' as
> this field describes capabilities that are set once on init and
> read many times later.
> 
> Changes:
> - Convert "hw_ptr->flags & FLAG" to "test_bit(FLAG, ...)"
> - Convert "hw_ptr->flags |= FLAG" to "set_bit(FLAG, ...)"
> - Convert "hw_ptr->flags &= ~FLAG" to "clear_bit(FLAG, ...)"
> - Rename i40e_hw.flags to i40e_hw.caps
> - Rename i40e_set_hw_flags() to i40e_set_hw_caps()
> - Adjust caps names so they are prefixed by I40E_HW_CAP_ and existing
>   _CAPABLE suffixes are stripped
> 
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
