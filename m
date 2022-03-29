Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AF054EA854
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Mar 2022 09:10:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9772060B83;
	Tue, 29 Mar 2022 07:10:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4OawquavVxRQ; Tue, 29 Mar 2022 07:10:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C57B60B77;
	Tue, 29 Mar 2022 07:10:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4722D1BF30C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Mar 2022 07:10:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3445E60B77
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Mar 2022 07:10:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ac6fy0pchTco for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Mar 2022 07:10:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 05CC460B2A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Mar 2022 07:10:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648537848; x=1680073848;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0WLARRNhs3pJXp3nA/rhOgwa2EYhr3O07A3stU0d3Fg=;
 b=h+haTuqvJCJS9ltOtHTESp5LjrjJm6e8lFWlPA2RpfNQJ2JDSNvRZOz3
 zWUZTTpkqLuEECHRN2rtrXbsWyInhwxfEeXBt5k6kOzTC4Di383QDwj5S
 QU6BBpE1g7Ed3cb4VgTF412ac34CWWs/5JW71JaN4vlw89/Xma+THDrJH
 0nZ2xqDFMAcZrjWrC/pJg9wtY6C1Lg85BcPMe0kCuzGI5Gz3JUNKNczuX
 /PZnhLxQ/9q4xE0WA+Oriy4Ho7lPCZF1hFT7vUQH+qpFSKH9uT0LBe+dH
 7uLKPkmUOnPgop2qUCy5g1oUF/gTO62BFN+qjuq8i7AwdYptaGvTCcRYS g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="258009409"
X-IronPort-AV: E=Sophos;i="5.90,219,1643702400"; d="scan'208";a="258009409"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 00:10:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,219,1643702400"; d="scan'208";a="649344878"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 29 Mar 2022 00:10:46 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 29 Mar 2022 00:10:46 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 29 Mar 2022 00:10:46 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 29 Mar 2022 00:10:46 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Tue, 29 Mar 2022 00:10:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Kx85EvVp3t7uXpljcHKPQcSHbGnXncX4G/WGq+9ArpGhyIo03XETXrjRczsTY/1svadgT/BPwh1PJzKzbZe3ev85h+oA8orChpd5xeZKLoiX2Tzf5sr7bH5QyZwdFHnRGRFqPQn6oG4QGwhOPaPkKNw9zL81PBxaLOI2a4vPrx4tIw4ZFkPOWJYxeDyHWlcia2OMT5yJinhL3BGnygsQ7KOxPd8FEPDL5iQMFH+7FIyLmEsra8oQ2j4d16Ll4HOGz7wQ9p2/R7Try+B4+y9VK/NtW/PQ46Vod4aOOiz8fkrPBkVeepQb6xaxGxxdOptG2RB7QeRIs9/Ip5PnuIzFOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NV3IbtNsnLoEj2+1kNGbcJTYUrldujnV6+zrM5vulas=;
 b=eohbuX3xaw9g7SMGPpywlSDau5xyUZCstm+/iLIBtdQj8fuOQEpIqsa9DObaspM1ksWHbM1nrdYrfjfOLhyJJNPJ3sLm3N2KZ0Zit7lzydLGzwXeO7TsJ+lBCDBN4Eg6LqfQTeMxzuC5IlP/tov3ceh4N88PajCiUPXwuVz6+KFGOxViEeilG42oCkU495N6GaMXor9gt4Ktwrc3w7kaic6wwD/lWkM1Ny8PD3nHLvYYnsO/95Ga/tbBqujW2CNsQHSDex0AH/RE7ECuSf9AZBIo147YAOXdM22Ixu7n0tt2SKWTf2mb88CGhULDzhkEjqmfII/FNJC5DECv2QHVog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4787.namprd11.prod.outlook.com (2603:10b6:303:95::23)
 by MWHPR11MB1295.namprd11.prod.outlook.com (2603:10b6:300:2b::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.18; Tue, 29 Mar
 2022 07:10:44 +0000
Received: from CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::d171:52df:cf0f:c1b1]) by CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::d171:52df:cf0f:c1b1%6]) with mapi id 15.20.5102.023; Tue, 29 Mar 2022
 07:10:44 +0000
Message-ID: <dc7ebe8c-318e-651b-9b9d-b932336a09f6@intel.com>
Date: Tue, 29 Mar 2022 10:10:37 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.7.0
Content-Language: en-US
To: Thorsten Leemhuis <regressions@leemhuis.info>,
 <intel-wired-lan@lists.osuosl.org>, "Fuxbrumer, Devora"
 <devora.fuxbrumer@intel.com>
References: <20220327171407.3657540-1-sasha.neftin@intel.com>
 <4ab2299e-0460-0366-f1e7-851a3ec94dc7@leemhuis.info>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <4ab2299e-0460-0366-f1e7-851a3ec94dc7@leemhuis.info>
X-ClientProxiedBy: AS8P250CA0027.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:20b:330::32) To CO1PR11MB4787.namprd11.prod.outlook.com
 (2603:10b6:303:95::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 68b6d5c9-96de-423f-9775-08da11533db6
X-MS-TrafficTypeDiagnostic: MWHPR11MB1295:EE_
X-Microsoft-Antispam-PRVS: <MWHPR11MB129565702833FFAFC05EA42B971E9@MWHPR11MB1295.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rIOKvXTsqj9laoboASUWiPKlJ59WYa2FQnHB9DS7LmuzL4OHTSxwpZCZXspODRlRXcEPtl8TVGVu1D1tvWugMqiMXGyFJdyTIdiMyTkR2942iMXb+GKMzmH3Simi/4Kax6ZNDO0jlM4P6y4qrfKChdENLHIq7Ze/bzh1HYB/cUiGvdwaTR+qiywTh1RvGwOKBKVYnGh+fNv1VlizDdiiELU5eS8f+0CGetjw8oO+oY2rxpTwKpK94xqkPGRJrv5XtDjQxz2KzIZGFl6Mn87rUtSc3UiyNqZZj2YuV9pHk93kjuMmEOnP5V/xStFfpjFQoGtTZepdRrdMBTIKwIQCtOwRgZqksb69HZLUAh5NXXCQwRoQ13Rnb9s2vC4e3/bFm2AKdyXRuVz8u/UiSEgLRYnV+Qc+40n+Fu8nQzxyjl/BEdNM0QEpsI3tXmXbgJNIlfT3AdcJnlER3NS5hhATZUG5JARn6xTOjnt4NdK3945ZA1PqVOJCtI8rrGHI3Adhl9aK4AYicBtyAUZ7suVFFdWwphpH2NDlhB9nhC/i1g0Ev+pmLqvWvBHz7/W/b+UvIWYlqVD+OubM+8MIIU+Pgkq6SFnHaSt7LjHMSE9NLCIwxvbfCsXLdEnd3WzLRDa9RHu76Qz0VILYhffAZiD8wNxBQige/jgrZzjgOpypvKMNwISkR3ck1BTz9hUCuXbyApGAm3/c2q1pSHaJldryv00eWI2BxZcyyvTC6aWbn8KKRixOgCW36IS9SY2Bp93V84239lHmiOc8oMikbzOf7wJHomLMO3og4ig6NsTWeJaMypHmRnnTkUmC8lJYnb/+2yvqHXMD+lZMZXC6Qqo0mXF2pmtv1LRXpEJLyd4eAQudtVrjMxnlmhZSvlX5WxTd
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4787.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(54906003)(6666004)(86362001)(316002)(6512007)(6636002)(186003)(110136005)(83380400001)(26005)(2616005)(31696002)(38100700002)(508600001)(66556008)(8936002)(4326008)(8676002)(966005)(31686004)(82960400001)(6486002)(66946007)(6506007)(66476007)(36756003)(53546011)(2906002)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MWE3eHgyWm1YSlUvY2daejMwYjhWYlo3S2tXVTZOb0o2TWthQzZ3RmFFYWJ6?=
 =?utf-8?B?RUhUVVFPdFNNWnhOQkYrM21vdElYU0lzWFRMbnUxY1g2cU8vaXRTZTFHbXpO?=
 =?utf-8?B?YjBMVWhkLytyMVZ1Y2hSeDc3cDVXMVFFN0diVExvb2lqK2ErWU4waFo1cjhD?=
 =?utf-8?B?RG84R002WS9CeXpuZ0hqbDd6UXgzdEZaS0E2N2VGdEMzQW9XWjFhOXBoRFUy?=
 =?utf-8?B?VC9MeXhzc1R5ay85R2NVVGFBcG9zaW5wN3lOVGMvUlFoaFY3d2JvNlhIWFkx?=
 =?utf-8?B?VE03Q2tRa3EvTDdtNjB3UzFFSU5pblpDaEdZT3FtNk9Eai9oblpjK2ZxZHVW?=
 =?utf-8?B?clBLRjlqNUlWK2xtSDRoS2paLzNMbDAxYWFsVFRmYjdTU0tKSnlkYkM1eHY3?=
 =?utf-8?B?bEZlNktqREVJcmcwdDRib0licmZOQlpxWTd0bHF5R3BLdURsMVVTU2Z4UWN5?=
 =?utf-8?B?dVFsSkJmWnd4blFsaGZpVnJFRDRkM2w3ODRSdHhlMWxoTElDb256dHhrYUdv?=
 =?utf-8?B?YThIMmVocHczWS9XUVFhcEowdU5ZN25nS2svWHF3R1RDaDRNV0JYcHZRbGRO?=
 =?utf-8?B?bm9yUDdnbm5zYWw3Kzg5RVdmdk1XWG9rNnY2OTF0SFBvdXpEcW80MlVGN0J0?=
 =?utf-8?B?bElsb1g3R0VEMDBFendDZy9ST2V3aW16RHc2K1doNDY0aXN0aUJ2cFIwSUhy?=
 =?utf-8?B?YUhVcUFGaTVoYmZYcTNPanBFM1V0M3FZeFNYTTgwUTlsTmV0RXk0Tnl4OWIv?=
 =?utf-8?B?ODlzVXFNNExrcmdZb1RIaFRQYTloSVpLaXZJM3JHUG5YMzNjK1pxYlBSYlhm?=
 =?utf-8?B?WExYSFlKRTFWMWxjbmYybUludWRtWDJNYUlLQlJuU2hlR1I3ekdiaThXY2Ns?=
 =?utf-8?B?RVBJdUpoUTF0SmlzNlpCODFtUTB4cUJnbUs2SWk0enB0SEZHRWQzL2lNdTVt?=
 =?utf-8?B?VElpc0NYOUlmMFFmM2FPeW5NSGZCcU8vSHR2cmFkNHJXVytMdUpPL2l0ejhH?=
 =?utf-8?B?RmxOWmlNNGtvOEtRakRXckNXeTJtSTB3bjNkS0NWS1NMd3VMWTNDaFBYZXlU?=
 =?utf-8?B?RXhLZXQ5cUUwNHpBOURKbXNnYlo0cnF0RFJnNnVXdDNEU2h1YU81MG91V1A4?=
 =?utf-8?B?a1BIMGVFV0NqTVNKanlRdm12ZVNQR2UzdkFqV0MzSk1oQzB5WVAva3R5ZUdZ?=
 =?utf-8?B?TG9iTVV5ODhkd012UW1TMXpjY1IyRTVTbm5qa0lqQVlWbjdrcDJDNHAzbFhv?=
 =?utf-8?B?dHJwQ3ZnU2tJaHplTVN5amxNZ090ZUlicTZLK1V5RXRJd0o0ZjZmQVZHOFpv?=
 =?utf-8?B?SGZ0OGhnUDcxekhNclowWmQ1Q05BUWQ4RXhaU1lhTjVmZy84bURzUVlKci9H?=
 =?utf-8?B?U1dOYmZTQTRFSFR2dkRCYjRveDVKTEgyZWdUOWd2YXgwSGJaSnVhZE84UEE0?=
 =?utf-8?B?VXJVOVRtK3JsRWVOSkdMZDdaNkNnN09VY0crVlVTdzN4R2QwM2FlcEVCSjhT?=
 =?utf-8?B?QXNZeXVUQnp0MFFjYzZCRi9WS08ya0h1eUtZSTNyeFlNU04zRXpNVWJ1R2Z3?=
 =?utf-8?B?OFhvZG9vQXNzM2tmRWIrLzRTc0JKMFZPQTkxVHUrOVpXMGYvRFlDQnM5UGJp?=
 =?utf-8?B?OTN3SzRFYzI4MHJUREk3azgwaEd0cHJSdmcyb056SjVWNklLV2tHRTdFVUFK?=
 =?utf-8?B?a3k1M3N4OVBCa1JCRmZURnZjdVo2YWozT2FKeUFzTWR3czEza2xuRE13WTlr?=
 =?utf-8?B?R3VsU2daVzZVdDFpMGFxY25rVnFWRlBWOWpraHRsL1UrY3M4MXZnVGpVMjFy?=
 =?utf-8?B?OFE0cnJMVktnd1RXQnBjaU52NDNBbHM0QWRSNGt1eXBEQWtwQUtqRnVXejlh?=
 =?utf-8?B?OWtwdHc0M2l1eU1HeDdnNVRZa1N5eGxHZTVZRlg2L0tNM3ZsWTkvd01jYkpN?=
 =?utf-8?B?cStpWXFUZnliYnE1WnppUE5KaDFaaWdQdlpBaTdpMFFzOWcxOW5VVHNDUjla?=
 =?utf-8?B?TVZJbGtpYUVmMHY5YjFUU3d0RXdNSWllMFAzSzdMSm43Ulp4b0l4Tmk1L3BD?=
 =?utf-8?B?YmdobnlZdmxXNDdOUitmczhFWmRYeFVyb1g4YnB5SG41RmFxbS9tWEd3S3BD?=
 =?utf-8?B?eC9Ga0ZaalAreHlod2lUMVAvclRpTndqRVZxUkExaStPOWRxTEhmd3lMd0x5?=
 =?utf-8?B?SEFTTkJwdUxhWjBKNEpjQkhmSVNIN0NYV3dpYnE4UmpqZ0NIOFhWK3I5ZWd0?=
 =?utf-8?B?V2szdm8zMWErcmVWTFNMWFNkQ1FaTmhheG1JdFdRVnoyZldzdXEzUlpaZmt6?=
 =?utf-8?B?dFl0WllRZzF0MkUvcllaSHZmdk1qVlM4VnpsOUREbFpLMCtxNTVJZW9xREQv?=
 =?utf-8?Q?1bVOc6SWZQc0KpwA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 68b6d5c9-96de-423f-9775-08da11533db6
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4787.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2022 07:10:44.6368 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x3rX5cANy0XE9A1vvwLm3Gn9Bad4oR00asnbG7/8eTbaBx37l+cSiNaM7tUl1elYtMx6Ykr83T+RpTSJdqsKyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1295
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] e1000e: Fix possible overflow
 in LTR decoding
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
Cc: Dima Ruinskiy <dima.ruinskiy@intel.com>,
 James Hutchinson <jahutchinson99@googlemail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/27/2022 20:24, Thorsten Leemhuis wrote:
> On 27.03.22 19:14, Sasha Neftin wrote:
>> When we decode the latency and the max_latency u16 value does not fill
>> the required size and could lead to the wrong LTR representation.
>> Replace the u16 type with the u32 type and allow corrected LTR
>> representation.
>>
>> Fixes: 44a13a5d99c7 ("e1000e: Fix the max snoop/no-snoop latency for 10M")
>> Reported-by: James Hutchinson <jahutchinson99@googlemail.com>
>> Reported-by: Thorsten Leemhuis <regressions@leemhuis.info>
> 
> Please drop me here (I merely forwarded the report) and instead please
> add a 'Link:' tag pointing to the original report for anyone wanting to
> look into the backstory in the future, as explained in
> 'Documentation/process/submitting-patches.rst' and
> 'Documentation/process/5.Posting.rst'? E.g. like this:
> 
> "Link: https://bugzilla.kernel.org/show_bug.cgi?id=215689"
ok. I will drop you in v2.
Some folks complain they have no access to Bugzilla. I will use your 
https://lore.kernel.org/regressions/6801d0ef-9620-0f61-c107-c2c5524952ef@leemhuis.info/
> 
> And if the patch is already good to go: could the maintainer please add
> it when applying the patch?
> 
> In anyone wonders why I care: there are internal and publicly used tools
> and scripts out there that reply on proper "Link" tags. I don't known
> how many, but there is at least one public tool I'm running that cares:
> regzbot, my regression tracking bot, which I use to track Linux kernel
> regressions and generate the regression reports sent to Linus. Proper
> "Link:" tags allow the bot to automatically connect regression reports
> with fixes being posted or applied to resolve the particular regression
> -- which makes regression tracking a whole lot easier and feasible for
> the Linux kernel. That's why it's a great help for me if people set
> proper "Link" tags.
> 
> While at it, let me tell regzbot about this thread:
> #regzbot ^backmonitor:
> https://lore.kernel.org/regressions/6801d0ef-9620-0f61-c107-c2c5524952ef@leemhuis.info/
> 
> Ciao, Thorsten (wearing his 'the Linux kernel's regression tracker' hat)
> 
> P.S.: As the Linux kernel's regression tracker I'm getting a lot of
> reports on my table. I can only look briefly into most of them and lack
> knowledge about most of the areas they concern. I thus unfortunately
> will sometimes get things wrong or miss something important. I hope
> that's not the case here; if you think it is, don't hesitate to tell me
> in a public reply, it's in everyone's interest to set the public record
> straight.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
