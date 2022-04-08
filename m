Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DCF64F9A0C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Apr 2022 18:01:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8020541CCC;
	Fri,  8 Apr 2022 16:01:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rge6LVEHk7sM; Fri,  8 Apr 2022 16:01:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 12E8441C5F;
	Fri,  8 Apr 2022 16:01:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F210A1BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Apr 2022 16:01:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EEAB18441A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Apr 2022 16:01:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SOFemb5F_S8Z for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Apr 2022 16:01:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2C25484415
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Apr 2022 16:01:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649433702; x=1680969702;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6yBTH8g97L6CnDYaf/zdVV8BMAHkKDXOJLfc/X7TaC4=;
 b=NsWdjTixzH3+vEmITzxtjG0eQNFkmeAAdxneu0fze+e6epAh/d2s/S56
 bNsURf6FK2yfhCm7KObsVt7nSKGKBLgk4NdWxCI5CD94UB+ZLM0r3Zejc
 xeOL0++3H+qUHIO4wNxvfyOgIpLTyY4ywAScsUsvlm3Nn1px4epgmC/r/
 OlJnBMnvHG/0CzbkrxAc5D3eFMOWvmu2zazGY4f1XxxZIpw+MSwncjcbH
 j4EgBuO3LKBB6EalCFfMDiSHXpOvZE+c4+uoA9cdMGW4lKvYifWsZdUg9
 8WKgc4x7NN16LKeOUNwQKXBl62W/tFP8q4fISX0zTOjxINMSNR0NI+f/V A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="242220505"
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="242220505"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 09:01:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="571533618"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 08 Apr 2022 09:01:40 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 8 Apr 2022 09:01:39 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 8 Apr 2022 09:01:39 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 8 Apr 2022 09:01:39 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 8 Apr 2022 09:01:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k1f/CO3AdjFYrGeWDhbr/iSmovoOGHzlAtbzq4h+GXvX9v4UqGDlX0Qt8u6UbQQe23HZ6SLevh5F1q7D1WlxELDevF3BO5mNX7Gh5NjH5BtdTLpY2lTheHvyz60QZt48Ldngar+/DaR2FWOsKXxYvclkfbE7ZlL5zkcVZxX3HYuULm+ufLNVnWISjUUOgFqDzL0K36m+/w62oVFirxdBqSQYc8AYj1QnpYKsjXCdtJwIIUf/VHpi337sR6CLX9ZiVsl+Yb7XVYujft5VRk2NybmCNRdwHuK2sydsr6gtVCzxlShw7+pOrZaRhggDkt6qegl4xG0Aj+Xyyx/9fpWkhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r8VRtTvddekNqm+dcWQ7FrjMDv8y/0zAMYvcr97r5l4=;
 b=jmfUL9MCYcqsEoGCY+FKEd3Y0wZYT1Uo9m0hhJRibSXJYfazpWKz74EpW7+zmPb0Yu2GKAM351O9/DoLQwjSoya/pu9xnNx6rtQTwfPWa9i7iEufB/6ZAU10s5hBRfFEoHpaH+rLArrAZtkyM93/gO1eUEVQWuoMb+itPqjlQzniSiUrGPdnJG7Ut7d7ws+8bdzn6gS9TU3ykCLU64Fp1ADETXV5ROh44o+WLF/HePB4BU0iNfUTd4m6Rbbx99Q/FjDNVE25jHkPELq11eoJSLHnJtwOddV0L6XHnQIPR5L0rNQWPcOIAITRMt+xrW4vByZosemeC7bGdSQxYz1LOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CH0PR11MB5348.namprd11.prod.outlook.com (2603:10b6:610:bb::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.22; Fri, 8 Apr
 2022 16:01:36 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::c560:8006:3235:7aa7]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::c560:8006:3235:7aa7%7]) with mapi id 15.20.5144.022; Fri, 8 Apr 2022
 16:01:36 +0000
Message-ID: <97c58b06-11b5-182b-eed2-e5a74824241c@intel.com>
Date: Fri, 8 Apr 2022 09:01:05 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Alexander Lobakin <alexandr.lobakin@intel.com>
References: <20220401104052.1711721-1-ivecera@redhat.com>
 <20220408134714.1834349-1-alexandr.lobakin@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220408134714.1834349-1-alexandr.lobakin@intel.com>
X-ClientProxiedBy: SJ0PR03CA0285.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::20) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 942f7e3f-3c8b-47e2-6231-08da19790eda
X-MS-TrafficTypeDiagnostic: CH0PR11MB5348:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <CH0PR11MB53486C7231E4363A35BFE3D3C6E99@CH0PR11MB5348.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8w/zOdd96Q8DphKEcbEYKVCaJiXehXpSGFdxMg2L8+X6P3L3s8LljLJBFaNi/ZMdOaQ2dnbA9eLc/JnZZe0419GqFxSWCePX1QA+900K1ScnxMYAY7i/Th2w7arSkKqYbGbk32vW/v4KS4SFb2GB2MCF2R2qsEDnA1HCksLhSlOYH7MNI5xKjZ2nD6vm4f94GkurLDb1wDw3QXEYT7kefDlOv9xWYEIMvJt6cUItp3JbK99NmSRltvfLtlU/tji4dLCdOWQzzhH3F/Kz9lUR/iaKdEOfVWL+yFfa8UQBbI/vwodASickK0EB62Aej7J9Xjabat+Ltx+QymAdU4rxgJoVIKMZYQaE+JPTVXjwctwAfKCXFyPpqvc9wCL2RZlw263kFKT/8fru8V/0OrANIXk3mwIpWWbTBIhajSVyp1DjrL9iTXJ10Yt8i+NSTIWKh7YK0eRSBI8zasSrgI0vg4Uxv1YaXz9M1z7X2tSeYa0/Dn3mHJ4njgzAcygDcrHh8/ex4xmfKvTDUwZKC0hpnAz7Kuj8kWfuDifh+m6y9D9ueYZYXMSNkuFoJQoa/Zn+JjX0nG6p9GYNB0NHSXjwFMSnODQMTVgF73Xmk6ZO4el7sBg/tb33jAN+qf/9khQUDiJH3LthN6rHfBqWkb451anGucczaNW6YvPhpUEMmx0oMQ//1231hvYQlpxx1tnYNpWHKGw/4lnhO97zI1UjWpDGqNu/5F4+dnpZLS6yu38LTUKJmviBFbvP6tda9CeT
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6862004)(8676002)(4326008)(316002)(38100700002)(5660300002)(54906003)(66946007)(66476007)(66556008)(31696002)(86362001)(83380400001)(53546011)(6506007)(6512007)(82960400001)(6636002)(37006003)(186003)(36756003)(508600001)(7416002)(6486002)(31686004)(2906002)(2616005)(6666004)(8936002)(26005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SURZTEZsZnFvUHlmME0wVEErK2RVdXA2TC94ellVL0h6ejhUQ3paQi9CcXFP?=
 =?utf-8?B?L1BSaVF2TFZEZnptcTNVUnA1RlZHQ2E3RXcyWHVSVWdHT0VWbWFOQXY0czQ0?=
 =?utf-8?B?ZGZaaGxoOUxXTGZjbTVWTnFlZThtWkNncGNCSXFtZHB4OG5WZUlsbHcvY0RU?=
 =?utf-8?B?QXdZRTIyclloTXFJRTg4dVI1YmpicWhFTm8wTVY3RytBZ0t5WW1zaGdwcmdT?=
 =?utf-8?B?ZEtrcFB2UlpYYkZ4TDlwZzdjQTBncHErN3p3ZDFiN1FEOU9yRm5ianZndHpx?=
 =?utf-8?B?cEhablQwSHFaaFNLT3c0V3ZJdklXNUY1Ynl1N29rdFJtUkM2V0lGUUc3QkdL?=
 =?utf-8?B?djJaRWtNa0xvbHA0QkJHRlI5UjVFY3dXb1hFZ2wrdVczbkcraXNnTW9CTXA2?=
 =?utf-8?B?eEFadkYyTmtzenVpRU9aZXcvV2I2Nk5pVzc5U0RhMFlxYnA1THhELy9NOXRE?=
 =?utf-8?B?T0JNbmpsLzdaT3daclBPMUhPdkM1YmliYkZ6elQybVNES0k5cHRpbDhjSWtJ?=
 =?utf-8?B?di9BWnJWWXVzc0lCditaczE5Z243bXJiM1BFV3o3UmtUQTk5TkNkWGtrbkF2?=
 =?utf-8?B?M3RQUllZYWUyWTVjb1Q1bmJxN2dIdE92d3BUall5WkFMOVFMR2lvWXJzOHVE?=
 =?utf-8?B?eG5zYkhNQ2RxT1lvL21yUkE3Z2dSNWZIdENSdWRrNTRic2lJTVlXc1dub0Rt?=
 =?utf-8?B?NjMwYXYzeS9NYVlyWFBab2xGSzFnTWtLSkJ5eWZaSEpmandUTFl1ZEJoUVEy?=
 =?utf-8?B?VVluWGlvWkxFR2ZiYUtmZU1HRmNSWnlwU08yZVVPVlFHNmdVUDFLbmpUY1Fv?=
 =?utf-8?B?cnRndUpJL2VpQ241OUovWEFwRnNaYmNoZDNVWGdxS0ZFZmhOcFZnbjRSZm16?=
 =?utf-8?B?THB4RmNzOGFWMXQwRDdSQTVrcVBUMW1rNFBlR21ZU09mZTRTWGU0NEVzamdW?=
 =?utf-8?B?a09uUDV5U2RvVCtEU2hIYlVtUTd5WGdFUHVyaklZWXd0UVRORXFQM3l1ZG5Y?=
 =?utf-8?B?K2JneFRHMzlDN3BXNzNGY1JaK2NRZEFja3B3aVhwWFhPR09wQ2dXMFRZdmRn?=
 =?utf-8?B?RkhPUC9LZWlqNDVIRWdHM3gwSW91QnFqVTQvMnBIaDZIVVhUU1BaUnh3NGRT?=
 =?utf-8?B?Z294K0x3YVJLckhTb25kT0JvWkdlMWROUHNId29RTjExZ3ZmaXFvQXh3Mnpw?=
 =?utf-8?B?Y0NzTkhSVTJkeFp1RWxySiszcDB0RDZMRHdCTHp5TEtRYzNvWkJJb1VUN2J5?=
 =?utf-8?B?OWJHQzhOV2lOeWNMT0UvNDR5Qi9FSGpzVGNSLzYrcjBPYXRpVmh1MWZCeU1r?=
 =?utf-8?B?UjZCc0xXeGhteXN3S2p5SEZnZXdYbjJ3cHdNdGcrR2tIQnhwQlFjekFSOWRy?=
 =?utf-8?B?RG12RWpkNXZaeGZOdTFrZEJXR1JXY1BpS0o0VHpzVHV5c2FyUDRNcTdrL2th?=
 =?utf-8?B?VGpsYVZXWEd6R1JUdTAyS0l6RW4zQURVUzlRVVFFS2xGSlpodnRaeTRWeEIy?=
 =?utf-8?B?MGJrRitBRHYya3ZRQUx4UVp5THgzTGxEVUkvbnorU1BscERKbVY0T3ZDNUFa?=
 =?utf-8?B?WmRTSnZYbDl5UWE5MDZvWHJkc0drMDNtNjZZYS8vYk5VUTM1SjJBU1hrM0pR?=
 =?utf-8?B?WTZid08zVU9BWEpBRTllbmFFVWNlRDlabHpaWWNvdlpFTzlGNFRMblh5SWxH?=
 =?utf-8?B?R1Z5Ymc0alRKSWc1WnpQYitLOGJza3JnUWQzcmdKUTRhWGd1NnRKY2M0akh6?=
 =?utf-8?B?MDRJM0g4R3pxSHAwc3NPTmZ1dENBcUF2akt3aUQvVXo5OEpSZk9ibWNSYmoz?=
 =?utf-8?B?YkttU0UvTFVrYnhzUFhjNW9nZzZaV1ArWUFFdXRYaFJoaitmMG5PVDdtaHEr?=
 =?utf-8?B?aUI3ZGNRb3RhZXFZRHh3OVhSUHFKZmpJd2JFSGFmVUtZelZnQ0JqZ01UQ2Vt?=
 =?utf-8?B?ZjRlRTVud1VKSDA4bzZXb1pGUE5jcjkxbUpYMS8zSk5vWFl2UURuRWpVUVVW?=
 =?utf-8?B?enNCOUN5ak52YnZUTklaTy9vbEltMXhWb3pNZDk3bnA1MDVRUGhGdE5pdHVl?=
 =?utf-8?B?QzgyaERqZUZ4cHdENGFUS1l5NE1SVWJsdmIraytNVkt0R2l3ZWI3UTlRYkcz?=
 =?utf-8?B?SmRyM3dNV0FUdHdhK1RmcGNVWXdENjFuUkdFN1plbFo1OVBRYXVoYVZmYlRy?=
 =?utf-8?B?TXE3SmJ0Szd1K2lOSXcyUEY0TmtoUCs0NmgyZ2dMNkFCSDhzMGNEa3kxUnYz?=
 =?utf-8?B?dzRPeFBUNFVuSjgyZmI3V2ZWVEJDWFd3TWljQUlNOUZIS2xBNnlzNW9OOEh4?=
 =?utf-8?B?STFZOWRPOHY5SWp4YmxycmFZOUp4NDJ0QTBud3NCZ05xVmZRekIwVlgxbUd2?=
 =?utf-8?Q?FKHigSnXz1sQRDRo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 942f7e3f-3c8b-47e2-6231-08da19790eda
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2022 16:01:35.8995 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Rj5tBWNlvCsNkK4jmoFufwu6GdUhbvDBAf7h4W4jjJBt/kDeu1B424R8J0L+tCxP49iU2nghAwZKvz2oBLN8c1y81ID7W8Rz8j27X9kOFUs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5348
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Fix incorrect locking in
 ice_vc_process_vf_msg()
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
Cc: Ivan Vecera <ivecera@redhat.com>, netdev@vger.kernel.org,
 mschmidt@redhat.com, Brett Creeley <brett@pensando.io>,
 open list <linux-kernel@vger.kernel.org>, poros@redhat.com,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 4/8/2022 6:47 AM, Alexander Lobakin wrote:
> From: Ivan Vecera <ivecera@redhat.com>
> Date: Fri,  1 Apr 2022 12:40:52 +0200
>
>> Usage of mutex_trylock() in ice_vc_process_vf_msg() is incorrect
>> because message sent from VF is ignored and never processed.
>>
>> Use mutex_lock() instead to fix the issue. It is safe because this
>> mutex is used to prevent races between VF related NDOs and
>> handlers processing request messages from VF and these handlers
>> are running in ice_service_task() context. Additionally move this
>> mutex lock prior ice_vc_is_opcode_allowed() call to avoid potential
>> races during allowlist acccess.
>>
>> Fixes: e6ba5273d4ed ("ice: Fix race conditions between virtchnl handling and VF ndo ops")
>> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> Hey Tony,
>
> I guess you missed this one due to being on a vacation previously.
> It's been previously reviewed IIRC, could you take it into
> net-queue?

I remember applying this but I don't see it on the tree so I must be 
mistaken. :( I'll get it applied, thanks for catching.

-Tony

>> ---
>>   drivers/net/ethernet/intel/ice/ice_virtchnl.c | 21 +++++++------------
>>   1 file changed, 7 insertions(+), 14 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
>> index 3f1a63815bac..a465f3743ffc 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
>> @@ -3642,14 +3642,6 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event)
>>   			err = -EINVAL;
>>   	}
>>   
>> -	if (!ice_vc_is_opcode_allowed(vf, v_opcode)) {
>> -		ice_vc_send_msg_to_vf(vf, v_opcode,
>> -				      VIRTCHNL_STATUS_ERR_NOT_SUPPORTED, NULL,
>> -				      0);
>> -		ice_put_vf(vf);
>> -		return;
>> -	}
>> -
>>   error_handler:
>>   	if (err) {
>>   		ice_vc_send_msg_to_vf(vf, v_opcode, VIRTCHNL_STATUS_ERR_PARAM,
>> @@ -3660,12 +3652,13 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event)
>>   		return;
>>   	}
>>   
>> -	/* VF is being configured in another context that triggers a VFR, so no
>> -	 * need to process this message
>> -	 */
>> -	if (!mutex_trylock(&vf->cfg_lock)) {
>> -		dev_info(dev, "VF %u is being configured in another context that will trigger a VFR, so there is no need to handle this message\n",
>> -			 vf->vf_id);
>> +	mutex_lock(&vf->cfg_lock);
>> +
>> +	if (!ice_vc_is_opcode_allowed(vf, v_opcode)) {
>> +		ice_vc_send_msg_to_vf(vf, v_opcode,
>> +				      VIRTCHNL_STATUS_ERR_NOT_SUPPORTED, NULL,
>> +				      0);
>> +		mutex_unlock(&vf->cfg_lock);
>>   		ice_put_vf(vf);
>>   		return;
>>   	}
>> -- 
>> 2.35.1
> Thanks,
> Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
