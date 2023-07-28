Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCAEF76795C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 29 Jul 2023 02:05:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E26944050C;
	Sat, 29 Jul 2023 00:05:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E26944050C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690589151;
	bh=yw93YjYUQd2ixTvWtT8enCOoU0EG9LRNgAckjYCJaoM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AhbSUP6wmGo4sM8dWWzmh5STBD4IhDuVoPT4EDF/p/mZ/VerQ2LD9Gal8a49YQxxO
	 D9VkgWsCgk3h3jydW29X62r99w14TymIlV0KMExUQRLA4PMdh1CHvHjP1DGWfr6bKR
	 tptA8MsyqHjum9tSWv05Foq6GWCbaJl6CFfIGoYrtDVG7G99w9sOekWtCd7c7OxFKZ
	 EkL8JWWT9JZAZcCClSG4ZxJWSS/DRxQ6pBhhvhrUkrnzJbv+0zc+ZQ3Ye48p8r6G29
	 6qKz/SSFtzeW+zrjZiiGjFy7VGvvXxrBbBfj6C8OFMCYj7zgTDDEYnyuJmSFh/16nZ
	 cqewdMZ+X832Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nfbo7pzJQgRQ; Sat, 29 Jul 2023 00:05:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B045E40127;
	Sat, 29 Jul 2023 00:05:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B045E40127
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7E89D1BF215
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Jul 2023 00:05:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 54F398443D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Jul 2023 00:05:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 54F398443D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4eboTF5kqc71 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 29 Jul 2023 00:05:45 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 29 Jul 2023 00:05:45 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 07B6C8443C
Received: from mgamail.intel.com (unknown [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 07B6C8443C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Jul 2023 00:05:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10785"; a="367591129"
X-IronPort-AV: E=Sophos;i="6.01,238,1684825200"; d="scan'208";a="367591129"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2023 16:58:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10785"; a="704750163"
X-IronPort-AV: E=Sophos;i="6.01,238,1684825200"; d="scan'208";a="704750163"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 28 Jul 2023 16:58:37 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 28 Jul 2023 16:58:36 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 28 Jul 2023 16:58:36 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 28 Jul 2023 16:58:36 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 28 Jul 2023 16:58:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g3LL78MWffpUWMQNV8jL2LIQp/6bxY4VA7YX32o+gRVwQGaCz8P98dKOV2LC6UkfcpiV5e/ELqUbs+VZx2fLOEGVW4wu4WlIPqgXFLQDgtLKQGsFW2rHl3bz0DbRig57LOitHd3WDQU5EMGW9/zfWruGLM55v9sOWWszLo3yGefNR1g5XJgjr03Vi8J2YjlxsPEDLobnh1/pKEYnL6Sw1+cDk2BJl+OVIFEuSU1/X5Le0HNYhSTMVfAkyEsjIm1032ME1tXz7QAE91RzT0N1J1fpQasfF0VGZwbnH+jnQQeSCfhsBv9KZJUZYe/UwJJ0BfH5Z5Z3cVa3F9ZjjGFDyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HWugL7gSFrogR8mM+RyBhy0dlZFyvfj1HDmY1cvS1gk=;
 b=Z7IwRozEUX7WgKVOxPg1u/FTX/eS5kCYHk5P4QaURVOLOnlot6Ofsl6maAoCNtPVFYir1JpGOVR/W96rTBNSR0IrpLfX2kScjtokn9OIHtzDlYp5sONCpyeQFjl8nNGl2xe73bcyeQAMAdCoZoF2QFWy8oAeVZaLmX971vcddFiwG4w2oyjEmsT5nXNLyLez1mYGVGjrJgyczI7hFpVDyUZLHDEAewJvZI4Li8wiTMdA1616CepvNMIebNIw92701MqUElq7K06UYEI9Ykd8YXA3ABHhHivTWWNva2iWUwEFKApNLpBLLHcKbR5hiQl5ek7fcfdePgybtxgCzeXSzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by PH7PR11MB6906.namprd11.prod.outlook.com (2603:10b6:510:202::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Fri, 28 Jul
 2023 23:58:34 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::8102:1089:3284:3494]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::8102:1089:3284:3494%5]) with mapi id 15.20.6631.026; Fri, 28 Jul 2023
 23:58:34 +0000
Message-ID: <3187ca51-d1cf-d175-5740-341ab9bc46d4@intel.com>
Date: Fri, 28 Jul 2023 16:58:32 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.13.0
Content-Language: en-US
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230727084335.63856-1-jedrzej.jagielski@intel.com>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <20230727084335.63856-1-jedrzej.jagielski@intel.com>
X-ClientProxiedBy: MW4PR03CA0069.namprd03.prod.outlook.com
 (2603:10b6:303:b6::14) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|PH7PR11MB6906:EE_
X-MS-Office365-Filtering-Correlation-Id: 67b81033-d32a-456c-89a9-08db8fc68d4f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nTh+41+zaspTjJNvCfzwkoLVEX6pvAGimKsP3jKLcp9ZNN4Qjj7Fgh42LXAiClanjvi92yoQhtxjXgV6myDq5TZfMMWPVkZQsWzfgMsK/VXOKE0ikjWyUqUnV2999dxaVC5s7c98huOC9HTt/LNtY2aYeK7KbxTQlWMsx10Mr4j+h9bYaYW2qtHR4L2I4xMUN9ysSXnHx6SPPGNBHGnjuwcA0W+aeXvDzBKoGEnGrZihfKBzYMlwzTTGbNp1c1i59Z3WXh9WWy7iDR7jj8Dbgfk9x0pCf4XNywlrIZFGJfn3bEKzN8618QxSAx6XTWuSp948tUttGsoKjJ5aabfagBoqPSyALuj+eL+Hk+3M1Z3Wkw7SQJEw3/83d6IhhwpXPXGEzMr4RCduiUHZ4tk9j7k9BrF0FEM5L35Xf0rZO2YRA3xiYk+Roqkbag++B8aXAW+ab85H7ZT1uuIWAx0BRNOhJiwoR677Kcu0iMIjfNmLvkImUc4ry0bCojmumUTRgEXxWTfOzXDqj5REcDSkFHYStrrcZ/D+AYbVtsjxJPwMRE4bzIMTEknSNaK7DhzbhjrMItteC9Yrp75TT1t8kKcXZQSKEbjFGdKPdplfezlcaNLXn21Ai0xSELEcbPLb4YH3BM6JjskZ45X2/s+BwA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(346002)(366004)(136003)(376002)(451199021)(5660300002)(31686004)(41300700001)(26005)(53546011)(38100700002)(86362001)(6512007)(478600001)(36756003)(4326008)(8676002)(8936002)(31696002)(66946007)(66556008)(316002)(186003)(66476007)(6506007)(107886003)(2906002)(2616005)(44832011)(83380400001)(82960400001)(6486002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VUJ6WTVmdnJXcW9qa1lNWUlCUzFKblJFbHA0b1BZL2s0eTJXYTdEanJ0UlMw?=
 =?utf-8?B?emtodmlzL1ZVeUQyUVV2WEJwT2Z5Rlg1eUx5bHo1dllSdmZUOXF0S1lhNVJN?=
 =?utf-8?B?a1NyTjhNaS9YM2NQdkJrVERLZysreDhoM0JEeStuTWsvZ2JjK28vL0NJM0U5?=
 =?utf-8?B?SFArbFlWMlp1bFlPTFpvbVVTb3hxSVg2QTBnSkZZRHZoNUM4U0RhZENZZW1I?=
 =?utf-8?B?SnlUSTBBOVdBb1p2MHl4YVZBSDVTMEY0S2NGbEEzRy93eGJvQlZZcEhGNS94?=
 =?utf-8?B?eFk0R2ZyakFEZEJLR1p1L0ExWVF2YjR4MGxUaWVSZmNZQ0I2N1dheVNCMHV1?=
 =?utf-8?B?OUtUayszNkMxV1BCQ29XZmZqcU5uN3JjQnd2bVk1LzdmOEtRbittQytkRmha?=
 =?utf-8?B?ai9RaFYycmxocW9CUFpvV3F1b2NGdGJtVGRCcVBXK2ExbExLK2xWMUc1Z3dQ?=
 =?utf-8?B?RCttUFpNY3luL3pCTTRSK3ZaQytOQTVtN2pDclc1TlJselY1SG5JVU9waEc3?=
 =?utf-8?B?dHE1ckdCbmplTndqMXBqb2tsVXdnQkduZHRYU29tdVdSQTgramtxdWh1Qkp6?=
 =?utf-8?B?RFMvSWs2WTNNNmN6MnpCRXJKaU4yVnFEZDhzdjlLNVIwQ0xjN3pnUEYyTldw?=
 =?utf-8?B?dXBXcnhBc3Nqc0FMbFhGRW1Sb21VVlBBWnNCRnJqSmtELzlwTGFoRHdBWFFx?=
 =?utf-8?B?T0FFbkxUTjNlZkJOendWYUR6RjlHajNaR3RjdUdFc0N4cm5CejBwU1JSYWpD?=
 =?utf-8?B?MHllZG11N0M4U2lqVGhKaTdtaUkyUmNMQlo0SHZyQ3JSZjloeDh2YVV5Z1FO?=
 =?utf-8?B?MUEreE1zdUtwS3JjS3Y1Q085LzRWOVQzTWVmaTdYanRPYm41UVVxbDFoWHY5?=
 =?utf-8?B?MTV5Q3VHdXNldHJOS2gxc1FJdk9xQlJZczNDUERnd29tNTkybVlBRUdWUDRU?=
 =?utf-8?B?UHZ5cVhDKzM5Z1pnUEdib2RxWTRTZll3ZkhRbmN3eC9pU095enNocHpFYkx4?=
 =?utf-8?B?YjJtalU3RU8vMTBtS292RUkrcGtWT3g4S0kyMGlFbDE0MnhQdnhkc3JyNitr?=
 =?utf-8?B?NVdFcUgxbFZ0SmozTkVWZ3VlS1p0UUxPcXNDMlcrTjl2ampmT2orVFpQaDlp?=
 =?utf-8?B?ZkN1YkdVSk9nQTNBaWF6TGluTDVpRzBFSkI0dFViVGtaZmVtZHFCMHdIQnox?=
 =?utf-8?B?a21MOUlvcnRkRklES0w4bHlRYldHY3psYk1OODd1eUJYQVduQ0d2ZlUzbzlW?=
 =?utf-8?B?QmgzU3JYUE5tZlliZVRDcTlld2dNNmVnMlY5eHZvWmN1Z3YzVmhCTy9Ma0tQ?=
 =?utf-8?B?VlhSNmU1LzJKcGMwbDFKUkZjSXJQcTR1aGFyTENJcURZYlZlWnJ6TUE2U1lp?=
 =?utf-8?B?bEt1UTlWUWRJWFRoYlFBdWc0TmRMUTgxK1g0K1V3OWRKNFJJdFlDa3B2UVNW?=
 =?utf-8?B?cW9yMXdRL2ZVcjRIRUYvT1huRlMwNXpTQlIyanFVOG1qYzdDbkdURTI1UXZ3?=
 =?utf-8?B?Q2dxL0hLQ3RZSmd5a3ZmM1RUdy8vTk5WVHEvbTIxYnpPQS9ma2FFTk9uRHlw?=
 =?utf-8?B?VE1ZSDN0MCsrMUVldHVnTEpnMlgvL043eDhEMm5MMFpMOHJ4T0lKK3VDZHFP?=
 =?utf-8?B?NjBiVmttLzlFT0pabmV2dFRaU1BGUXgvY1pWWDJ5NFEvMElPMUFDUFhMQXNY?=
 =?utf-8?B?OEJGbXZRNGR1b0MyR2p4dVBMNEh4WTNBLzR6cWZzV1ZtN0lHcm53Z05zVEZa?=
 =?utf-8?B?N05Db1hPeithc0xYcGNHaTRYdDNCVGZWeWVoTW9jNW15c0theFlmZVR2N3po?=
 =?utf-8?B?TnhEM05ZSEhwajljM1RXM2QwQ0xUSzUxaCtaSUdNUDdVTUlscVhtMG9IbFdj?=
 =?utf-8?B?RjBCZ2tub1dNNUYrNkNEZ3A5SXAyZC9TWmJURm5lUlQwcGRERENGbVZYQ1Rr?=
 =?utf-8?B?MXM4Z2VJMnZ4V0RMZXN3RUN1bnh2RUJsZVdSZDR1VEx2NzBUcURJUjJ5QUpT?=
 =?utf-8?B?QmN3ai9PWTd2NmlpM3JJZGhoOTJXUXN3UzY1L3Q1WXI3WVFVcG5SN1UxQTJs?=
 =?utf-8?B?L29lVTl5a3k3OW1IM0h6SDRWSWhKdG9zWjZ0bEllTGFmZEdSbkd1VzJWMW9T?=
 =?utf-8?B?ekw4dG1yZHAxdytqY25SZ2x4L3ZnSkx5Z1FCMHY1UC9nd3VqUlo5MWtyWUZV?=
 =?utf-8?B?THc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 67b81033-d32a-456c-89a9-08db8fc68d4f
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2023 23:58:34.1669 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0lg4wOQoTQp4t9S8+VN0CAxY4/7GdCWB7K0h1+XkLVex81aFOEOxuxijobW/S3XO6BNmH6JMl3dOdfhI/LxvIOI3H10gybARkN7u9zmbbH8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6906
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690589145; x=1722125145;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BZ86zRInLjXpKeWek27tCFgWnPHFTbj8E08By/n4jxI=;
 b=MvQR/+OsSVYnJK5n7UKRWvb0XggTZ4CbXoTfzfHc/aAQubNGjQEDgCZ4
 OgcFNJgQ3s9Ikt/5jEbknQ8EdVeQ+E7uJNfhuqhVT22r08gTIy2Y4tsii
 GJH5OUBucSGMoA+HIy3qXn0VymsIxu5N2M4qKkY3UqMegaINJnzxOUkS2
 UUJhfsOGrRNZ+tgYF+OVwfvza/J79U4q0EiUONIKirIHX/dQ/GWCiFc3U
 ul7d63+gIOHX8IA2RoqlOdqS9X9/GsinexgxOTKrZodI+kwk1FSpbv5CO
 NjF3VGS1x7fpS5enyoX+ppceDByzbLyIcNm9iq67hmx6I3mQxlFPESfET
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MvQR/+Os
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] i40e: Clear stats after
 deleting tc
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
Cc: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/27/2023 1:43 AM, Jedrzej Jagielski wrote:
> From: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> 
> There was an issue with ethtool stats that
> have not been cleared after tc had been deleted.
> Stats printed by ethtool -S remained the same despite
> qdick had been removed, what is an unexpected behavior.

qdisc

> Stats should be reseted once qdick is removed.

please reflow to 75 chars, please restate also as
Stats should be reset once the qdisc is removed.

> 
> Fix this by resetting stats after deleting tc
> by calling i40e_vsi_reset_stats() function after
> distroying qdisc.

destroying

> 
> Steps to reproduce:
> 
> 1) Add ingress rule
> tc qdisc add dev <ethX> ingress
> 
> 2) Create qdisc and filter
> tc qdisc add dev <ethX> root mqprio num_tc 4 map 0 0 0 0 1 2 2 3 queues 2@0 2@2 1@4 1@5 hw 1 mode channel
> tc filter add dev <ethX> protocol ip parent ffff: prio 3 flower dst_ip <ip> ip_proto tcp dst_port 8300 skip_sw hw_tc 2
> 
> 3) Run iperf between client and SUT
> iperf3 -s -p 8300
> iperf3 -c <ip> -p 8300
> 
> 4) Check the ethtool stats
> ethtool -S <ethX> | grep packets | column
> 
> 5) Delete filter and qdisc
> tc filter del dev <ethX> parent ffff:
> tc qdisc del dev <ethX> root
> 
> 6) Check the ethtool stats and see that they didn't change
> ethtool -S <ethX> | grep packets | column
> 
> Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v2: Make the commit msg more detailed
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 29ad1797adce..e8e03ede1672 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -5885,6 +5885,11 @@ static int i40e_vsi_config_tc(struct i40e_vsi *vsi, u8 enabled_tc)
>  
>  	/* Update the netdev TC setup */
>  	i40e_vsi_config_netdev_tc(vsi, enabled_tc);
> +
> +	/* After destroying qdisc reset all stats of the vsi */
> +	if (!vsi->mqprio_qopt.qopt.hw)
> +		i40e_vsi_reset_stats(vsi);
> +
>  out:
>  	return ret;
>  }

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
