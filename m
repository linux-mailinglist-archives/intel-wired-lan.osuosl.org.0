Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A291701D18
	for <lists+intel-wired-lan@lfdr.de>; Sun, 14 May 2023 13:31:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DFAC84207B;
	Sun, 14 May 2023 11:31:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DFAC84207B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684063878;
	bh=Tz5x0vIWcDSmeewpdrgD/rM9NosOMOdUA2eo8pRk/RQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lJAUjjJjjfzoXeTqfYZ4vm80kzO3GXhLdEA+TH+U9zK3XcnJjT2t5TRJ1XzLpHZN5
	 o0LKEwh+U/9aNELSbFZ0jS5GDtoDWjJD9R8I4RiXgc7QtqrI3mhZ/HAbhztoUXVlas
	 EJyJxaE1Hh4bE6dNTirunYbw9ZNTfsGfOniTgm77MmbWcpnXQ90zFWnpMgrwaemf1q
	 DkGeJMMVZ2yaH9jTw2Mq83DM4dxqn5B4FHa72MELfCbWQwUVpuRQEn3HkMETb2JM5F
	 DZDYScb8F2kh969PNRcrpCObOQCWBnnGcK+2fIxNiBeWq3yieuiMK1r7soeUS4xNOE
	 QcQTmIfp3oUtA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lBXXReBlxUZi; Sun, 14 May 2023 11:31:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6B77542077;
	Sun, 14 May 2023 11:31:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B77542077
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BFE031BF5A5
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 May 2023 11:31:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9640540527
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 May 2023 11:31:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9640540527
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3aPMQS2VtnH0 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 14 May 2023 11:31:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1FA7A4010C
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1FA7A4010C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 May 2023 11:31:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10709"; a="348528525"
X-IronPort-AV: E=Sophos;i="5.99,274,1677571200"; d="scan'208";a="348528525"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2023 04:31:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10709"; a="947123252"
X-IronPort-AV: E=Sophos;i="5.99,274,1677571200"; d="scan'208";a="947123252"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 14 May 2023 04:31:07 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 14 May 2023 04:31:07 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 14 May 2023 04:31:07 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Sun, 14 May 2023 04:31:06 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Sun, 14 May 2023 04:31:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I+f6xLR1LHtKUEnNDeiNQUidIs97EQ9TpcOTFgmnZ96hrC0T4bL6UQnHluwcGmf0w25D7ddUu7OuBQllYopqctcal49haK4PFqVeOQ/6io7v2AzE7u+MxN2Hv4QfVh0ZhMdbXw3pORVwKsY+RrfaKXrSul/Z10jtQem75FAcBCX4XfVD4rXLuaRnhyFNcNMvg0NjZrlEVaDEkKCTKr6sbNeqHm0Oqbb1niM2BxrpcOTHxweW21u4bWNK6/f0OvLE27LZFjJ98u9KLqqAQkDeQRid9vaK5LvSp9i17hDAPEvPYor+0BZXcxSINTFhCIYgm/zqS1v4lsd1rrneg7bQBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tzlqAX40o6bnLJTjrSZ0iLlS851oWlqyAmxuzupGxgY=;
 b=OhC3uE3qMUPM78De5f65KhJKNuIniyVr9H0gwALpm9KfJ9VIuNCp2oK5H8huOm/WlWyRIwtF1dM3fx5ByC035FBPT+lBTuZ+3IYlg3nzlqONLBzCLvrT7iVL5XbpXo45RSkjiJFHaYfrZY1O0dsLg4KhK42NxtbCd2ry36xdz/pOMkcowDJztbIAdvEaeKVk8zNEvrUhF17u0tBZb36n6ul+usBV2th3jeSPlSBz4HhE2mVd/qoeLh82riAmyW0LzweAucYY7uvW8frK3q0AGIkoCJ784qox+iYGwig+/PKczuzMhSiP88SSLshANT4W9hzoFJpYph8V/EIXrb+4vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by PH8PR11MB6950.namprd11.prod.outlook.com (2603:10b6:510:226::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.29; Sun, 14 May
 2023 11:30:59 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::df65:1e83:71ec:e026]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::df65:1e83:71ec:e026%5]) with mapi id 15.20.6387.029; Sun, 14 May 2023
 11:30:58 +0000
Message-ID: <d0f5a242-6f11-4a8d-57e7-92bba7a9365a@intel.com>
Date: Sun, 14 May 2023 14:30:48 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.0
Content-Language: en-US
To: <kovalev@altlinux.org>, <jesse.brandeburg@intel.com>,
 <anthony.l.nguyen@intel.com>, <davem@davemloft.net>, <kuba@kernel.org>,
 <jeffrey.t.kirsher@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>, "Ruinskiy, Dima"
 <dima.ruinskiy@intel.com>, "Neftin, Sasha" <sasha.neftin@intel.com>,
 "Fuxbrumer, Devora" <devora.fuxbrumer@intel.com>, naamax.meir
 <naamax.meir@linux.intel.com>, "Avivi, Amir" <amir.avivi@intel.com>
References: <20230514093428.113471-1-kovalev@altlinux.org>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <20230514093428.113471-1-kovalev@altlinux.org>
X-ClientProxiedBy: ZR0P278CA0116.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:20::13) To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|PH8PR11MB6950:EE_
X-MS-Office365-Filtering-Correlation-Id: 3a9855ef-3552-4d0f-bd60-08db546eafc9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BrkoJNX38Si77lN7WpJ4po597ZchQyMHL/dgMI1vx8XcgDo00ufFfXQo2XstgPVDAmJEbry1+up1mbH2Ya5dB+vnsz9N1RFFDN0OD80jK6gld/+X4OMK0EVcijHQd5VvyC7JDIqAhsbwSLViD8nrZxSqBbWFEhSUOpF3i5uFIWNSjGSb4ROUHgquID95Xvkfiy33K5iTrrK+C8TFu3J1h3HA+IwaykB7sE0I+ON2gWUMHQat9gKInkWoQRwmv3HRUGqN4PJVeB+5ZPGXs2fhw3xxvVIldpSprPdWhED3F8peCK4o0Bo157/747MvSwwBoMscCgretFXzyEfrXJvm7VfmxAxexgcJ/Ns9RoZ/6uUAephD7LJD/AitKAqXtf7y1XPMfj6oxSsUJvX4i33gtLbeQEuPTGFwDOFsB5MLH3WKqLuS4AIxDqElB7d6u/YBhTJybmuI9K0LHUDxYQP46jQwCfIJqX6EIs5SAwvI63wnVZDG30EKpiuuyqd39CJVTaMClbrtRoaCI195iSaOyLLDujH/JkdA3a57ZAjvx4MhbmRURjfRMWXMmtOjh/YaMvXcZxsOjBewsAmS6drdNZ7T321hmNibBhhnC+lAowGidLksuQRE2gtL3HXT/IkQeXIUbw65CLTnvEyueyXYWjkOMA+86jbucBJaQ7sNOLNR0nD6uf0DiR9h/5y8V9ev
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(376002)(366004)(346002)(136003)(451199021)(36756003)(86362001)(110136005)(316002)(66946007)(66476007)(6636002)(66556008)(966005)(6486002)(478600001)(5660300002)(8676002)(6666004)(2906002)(8936002)(31696002)(921005)(82960400001)(41300700001)(38100700002)(2616005)(26005)(186003)(6506007)(53546011)(6512007)(83380400001)(31686004)(226253002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MHFCUGwwUUswbFNXYXlJbU5TTStkdERDTGxaR0IySmNSVldVajhzTStuTUlr?=
 =?utf-8?B?aW9HU1g0Uk9lMGF2MERoRXBSSlhzZjB1WitVMDlyNUxaTXNmY0svMlh0ZWEw?=
 =?utf-8?B?Yy9XbTlaOHFSbGxwMmhCa1dzL1ZDdWo1VHJnNGFKNFM0T20xOUVLTlFrN0Nx?=
 =?utf-8?B?MW82Rk94L1pid2d6cnh2aS9zaGlIdVIza3NiT3lLa2pHQzB4dmx4NExyVFNq?=
 =?utf-8?B?bGVZWXJqVjB2ell0aXh1TW53eUhTQkEzVE8rYVpYWkNaS2FOYWRuSXlVRlZU?=
 =?utf-8?B?MUFNZVdhTjlaSndmVUVtK0toL2lqVk1TR2lCT1Zia1g2OXNnM2d2a1NyNGRF?=
 =?utf-8?B?R2lEZysxRTNZT1huU2lnU29NeTdEclN2a01NWTIxVHA0OHJORnZyMXVXWktm?=
 =?utf-8?B?YXEyeUtZK3N5YjFPc2E0cXlDdUJTNDFPZFZ3aTduMHJjNlErUXZKS2VZQko2?=
 =?utf-8?B?SENCbVEwSU9ReWJmWW44eElOdmk5Q0hEaXl3V0hNaTlvVEhRL1U2RmVDQkpG?=
 =?utf-8?B?MWtzMmlwdUU1V0Q5NnRRZkx3Nzl2VnhabUlRcE9IQmZ0ZUlZeW9XZU1PTW9l?=
 =?utf-8?B?UWswVjkzVXlxbGUrTXNnMEFsSHdjRTl1MnNtSTJkL0IxbzU0dm1wWjlwVmRN?=
 =?utf-8?B?Yk5HMGRKbFdPWC9VRVdBRnN6VHBLVk04UUEydEdaL3VFTFRiQWp6Zm80cWF4?=
 =?utf-8?B?YzAraFYxQmgxYUdSWDNveWYyY3hPSTNnRUtUd05wdE5RSnFraUkyUlJZazJ2?=
 =?utf-8?B?cTkxamVTS1VFclFkbVJPa2VFY01Vd1JhNGhPRVVMaGc4QlFNVkZ3bHdxOHU0?=
 =?utf-8?B?TTR1RGIwU09NQzE1a2JPQlcxVSs2TVR0a1hhZzFQRmcvenRLVk1SdXNRSGpO?=
 =?utf-8?B?QkxEV01VZEVlL0NHUTN1am1MaUEzTkk4bkZjVUx1VWo1ZGs3ZkgwNUtqUVJB?=
 =?utf-8?B?Y0ZIZnBkT2ppaUxvc0tqbUs4dDFGZTg1VnVodStyUHg2UVBUYkN5YVBYaEFI?=
 =?utf-8?B?MU1SeEdxRFlIOXFnREpZeVBhbzdDbFdoWFUzYUFWNVdNaXU3RnRGNHRPNlQx?=
 =?utf-8?B?UmowYi9TRGVwL0E2eGQvNGFiYXZwc3JQWWNoS2dhSTlZRUw5NDFtQVR5YU54?=
 =?utf-8?B?Z1QxLzlzeGZiL0V4VTJ5ejJ4MkpnZ1JuTmtkQnY1emFMcDVpc0RrQnZremxK?=
 =?utf-8?B?eGJ0cVVlTS9sWHhpS1FhQmxoVUVmU05wZE1ycTFIQnl5NU1VODI2SU1RVEcv?=
 =?utf-8?B?ZlpxVEZmcGVQNkdOWGlld3AwNC9VY1dZNnJIMWtSYXVHcWZLYU5nWFpudEVQ?=
 =?utf-8?B?cEpqOFNCaE5MNE8yaDAvTXZDaFJ4Q1VERXBEV1BEa2xOeUM5QnJ2clRhRzRv?=
 =?utf-8?B?Yk9qcG5wam00QUo0Q25jUGtWN0pWMjVSV2UzLzVpeW1BZG9lVEdEbWVtY29x?=
 =?utf-8?B?TDBQVmNUMXBudXpTWnpjakExaEl5ZXo3QWw5MlVzbFNjSjRXeUpQb1ducC9K?=
 =?utf-8?B?Slc4LzN1eGV4VlhSMVhXQWhzekcrRHl0V3l2aUV5ZUQwQ3VmdUhhQ3hocmRY?=
 =?utf-8?B?S2lLNGFNVU9Xd05taDd1OEFLNy9meVdWTWRaTjFVeHErNElNMlc0UENNc3F3?=
 =?utf-8?B?c0hlUzRXZU1ZODRrWDhRanpKUzRvNjRub3NRZnU5NzUrZmJSd0UvSzBhTUdr?=
 =?utf-8?B?T0lkaFlZM3JtaFB1aHZxRjQyRXNCbytybXYxdFhvUGNHZ01vMC9POVBrRWFr?=
 =?utf-8?B?ZDZ6dC9Xa2cwY3YyOHUrRmhKWGoySExSNStXaU1CakQydnE0cWs0R0RiZTFT?=
 =?utf-8?B?ZHYwZzk4TWZRYXFGRmh5bEgrMjBYS3F5dXZ0eXk3S2IxcGptb3ZoTXlsNmdI?=
 =?utf-8?B?YWp3WWFiYTZWL3Z6OXI5anJvN3dkd0lidWpES3FKQkpJSFRYb0JQT0VjOEFt?=
 =?utf-8?B?ejdkQXpLeVpZVWFablNaRGpMd2V1RjBMR2FkRW1PczJSRnlOdkIvTjBOQVFh?=
 =?utf-8?B?Vm5oamhQbVNmYUpzNitlUHRxTDlKeGZaMitaSUM5bVYxMTBaOXdOSGFoZUJC?=
 =?utf-8?B?NW1USlVUSjE0NHhpalEwUjR0a1lZRGV0VE95MjVIVFJpSXBJdXlLbjdIblV6?=
 =?utf-8?Q?bDZrG9vdtq790PMNTqnQbIEHd?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a9855ef-3552-4d0f-bd60-08db546eafc9
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2023 11:30:57.9886 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wQVd72+czOS9gv3fleG8+HXqx/eWrXNCZwbXra8MqWSrYw/E8NaQEC+74Bb0njf8r47EfhI6K0HtRzTtAYlD8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6950
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684063869; x=1715599869;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=lLkupFJdT3lxDOrE1YoFfhwmSFpcuzfA/4dClizoORE=;
 b=lWeo3VQ1aJq6DayFldVgxLOvjJn2R9JxVdQHVC4xhXEqCscHD5k3q9Y1
 8ELkcCIVKONXx32EtWp9ht5gVODXkKD+6900K8sTU9R7cvBmdmtPgNMSC
 mxlBlxyEQLiFLvoUshzgmTO7w/YbQioptd8dvYcQmUvOagj7maWvWaRJO
 q/lzc+THZCc+Wlk423Z6V7rnWo9y86CjxSkd9xsQ3hpeZDdCc6+BVYDRZ
 PsXRG+nAZfCJuEjRrMqgE4ioJAYEWFYWCAsfiHZJiBNoqCsQDWE5yE+rK
 bo7RGM3vc60bHz3T3t1TZw3kompa6FA+/nxauDOC+vKVlHnoGgYK/HAqU
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lWeo3VQ1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Add "cnp" PCH boards to the
 packet loss fixing workaround
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

On 5/14/2023 12:34, kovalev@altlinux.org wrote:
> From: Vasiliy Kovalev <kovalev@altlinux.org>
> 
> Add CannonLake and some Comet Lake Client Platform into the range
> of workaround for packet loss issue.
> 
> Bugzilla: https://bugzilla.kernel.org/show_bug.cgi?id=217436
> Fixes: 639e298f432fb0 ("e1000e: Fix packet loss on Tiger Lake and later")
> Signed-off-by: Vasiliy Kovalev <kovalev@altlinux.org>
> ---
>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> index 9466f65a6da77..e233a0b93bcf1 100644
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> @@ -4875,7 +4875,7 @@ static s32 e1000_init_hw_ich8lan(struct e1000_hw *hw)
>   	/* Enable workaround for packet loss issue on TGP PCH
%s/TGP/CMP - In case we go in this direction.
>   	 * Do not gate DMA clock from the modPHY block
>   	 */
> -	if (mac->type >= e1000_pch_tgp) {
> +	if (mac->type >= e1000_pch_cnp) {
>   		fflt_dbg = er32(FFLT_DBG);
>   		fflt_dbg |= E1000_FFLT_DBG_DONT_GATE_WAKE_DMA_CLK;
>   		ew32(FFLT_DBG, fflt_dbg);
It is a bit better. Let's clarify a few points before continuing.
1. I realized all components on your board are ADL-P. (lspci_npk.txt). I 
now aware (I will ask around) about combination of ADL and old 1Gbe 
controller.
Where did you get this board? My concern is that the wrong BIOS/IFWI is 
in use for this platform. 1Gbe controller may come up with corrupted 
initial HW values. (NVM of controller is corrupted, in this case, we 
will face a much worst platform behavior)

2. Need confirmation that writing to the 'FFLT_DBG' register is harmless 
for the CML platform.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
