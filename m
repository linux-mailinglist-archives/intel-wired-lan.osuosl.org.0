Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC3B762098
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jul 2023 19:52:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 09E8E610D0;
	Tue, 25 Jul 2023 17:52:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 09E8E610D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690307526;
	bh=SalgoNQ5Ao1N4lN3zf9SQz2HHpVzqTUFOfZLl5tkOeY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yknblrBlDd4qzSis/gUKuFV4XaD8oS7mc8AgEDhXHDJ843/u+orCRLisGRD42FD9K
	 pzYJsDs85F8GpZIPv65dUk+5KH5/JEUU9Feb1zXB5cRWjjxIpdF1dY9GEk5j76Qkji
	 mnm/eCclaBoBU0Q1Fz8xmeD0mwyC1zcbvmdAFQ8cWRrsvVV2F4CMIIwNA2oFG7rea2
	 4oavu0MRU/zCfvlDHcVq63p+I/zK/GnjCzb7/xeXqny498FyHwx+pTjB+8TPB0PnFt
	 rMvEvF3nCZdhB6DQH8k1RyLUhMMo3kPxobL3wIrmUWZBNh4dpDujwC8lI9KePabqOs
	 htUPLmuv1YSTw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k-rXVUp5dCrO; Tue, 25 Jul 2023 17:52:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DE29C60FB0;
	Tue, 25 Jul 2023 17:52:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DE29C60FB0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 600B61BF317
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 17:51:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4384F60F6F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 17:51:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4384F60F6F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8lQR8ZX6XLbP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jul 2023 17:51:57 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F00E160FB0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 17:51:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F00E160FB0
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="367831467"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="367831467"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 10:51:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="791481191"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="791481191"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 25 Jul 2023 10:51:55 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 25 Jul 2023 10:51:55 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 25 Jul 2023 10:51:54 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 25 Jul 2023 10:51:54 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 25 Jul 2023 10:51:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ayYpvK2aPadbmeJ1UM2uS9AByODc90SCCaCu+Nznp9c8ki+mbZGi/TE7MTX8eOA/2wCUxLIjoTpeIyo44jYjfkBhc6qI7AhIt1/NhAIGTwN+GdW5WvghINczftG273nCdZItC2J6gRsfAAGeEv7zSlNVjXsQPkBggPPoUVGWeFdFOKj5s6292Izmw/F1rLjlG6FfVp0x7OgjIAud4Cj9mM1v9HFljhexmVursgnMgvqDjy00P9DmoA2TgsxS1J200nUxnMip5sbxRCysqzxbYqCAft1mtKwjIZXU3ruNnaXgJVlKLjYdRujBqYPIGD6OguyqNePJX08uG1q4aLQl9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8beH1WzsTNT7xXVW51176rBS5kCONHQyFBgtr+R5Pyw=;
 b=UVDXhn3o7xudwGrfN5d+Ezd/zmMdivv7OCfIPnMRIxST9R16TpAdDMIYRLFVMXpKu83aTXkFw4CcIrIiHzm62eRS8lc5VUwQPicAVYXCXfR/i+hNqI+EgAibREpABZr2vkIgKDOLyYvs7/TuXsFE0dXn6GHjjU+8mAtJ5VBvzi6udPpsLsENzJcdWt/w6ineOavWz3yvgtflDkTRwKXrbSjlYbZdWVHVdUCw8fumWRXimnBNzEIrfmUml4rh9f2Jcweqc6lxiTXvNHo/K8zWCnC1XCdDNpwmFCzJvvA8F2WQbuIc2ZPPL9YruElO+IppPWIlB2833EPVvZ7la3d3ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by LV3PR11MB8728.namprd11.prod.outlook.com (2603:10b6:408:218::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.33; Tue, 25 Jul
 2023 17:51:49 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468%6]) with mapi id 15.20.6609.031; Tue, 25 Jul 2023
 17:51:49 +0000
Message-ID: <e5422704-4457-e7fd-aa21-83fee6e39d22@intel.com>
Date: Tue, 25 Jul 2023 10:51:45 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Michal Michalik <michal.michalik@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230721154424.11834-1-michal.michalik@intel.com>
 <20230721154424.11834-2-michal.michalik@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230721154424.11834-2-michal.michalik@intel.com>
X-ClientProxiedBy: MW4PR03CA0102.namprd03.prod.outlook.com
 (2603:10b6:303:b7::17) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|LV3PR11MB8728:EE_
X-MS-Office365-Filtering-Correlation-Id: faf03d0b-ff53-4812-22b2-08db8d37d20a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rHafYGlQh+5trjvfIdFo8z96dR8vrKycrAz3rHC53XO6JRsYugMfbDyI2vZA83+524tlDN93kSAaC5uB9GY8wcQMT3ytv/NOYTFW/xbDnoZI0AR2GSXTNCSWPaAR6z/wfkcreoj6zv0QQjbXXdo/PqAq6TmRzbddVva5S1j62kfLnFc8c00iC+l5++tKNrsacbI4HwmxCLY4vjHlmPGkrd5zXTPDn0Vs3JDTIpYiawHC4QJ4fPWwoQ70RY2BH/8/1PNyAyoj42E+dtwlsWYg09KZz27aqgQLjCWeGzK8ezVwyv5gqAl22HBDD3dP40Q6yErD2cwVkR+hpEv8MD2IPHdkQ/FN9eo7YupgnlbjwgT2enqz/Mx1aF4rWTXbp2nP/111dJJiJjjwaqZEY9B2srzXIzMiAvDMOrVfZAFTuZtfD35khW9PNA0BAgR3AavNDnHV5eCfsMGK0+TK+vbdWHEoiRNTvxyqz1VNI22746UWBMaT0ijQr6Q30KupTYyAsBxNYU3vGAC8UVZQY5MZGr+DYYWksz/hFDRUaj9eZr5i/DRNTBGX/EXq7vOjyxdag/OmGhc48zCjYDsaiIxv2aaurrsyhuhdcOqtHwR71rKuH/4tieNNiE6d1FBTUOxlizCybXTcWx/vKWEFGn+Pdw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(136003)(366004)(376002)(346002)(451199021)(5660300002)(66476007)(8936002)(8676002)(66946007)(4326008)(66556008)(316002)(41300700001)(30864003)(2906002)(6486002)(6666004)(6512007)(53546011)(186003)(6506007)(26005)(478600001)(83380400001)(2616005)(107886003)(38100700002)(82960400001)(31696002)(86362001)(36756003)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UDVYM0NweEhOTHB6cG5vdGxENVZ5RnB3MTBGMmowNDF2ODkwWnY5MGlXa2c5?=
 =?utf-8?B?dmY2cy9LeVE1dm5JaENQTzluYzBmQk1vSElDMlo3K3ZTckRTSHh6akZoL0pI?=
 =?utf-8?B?bE9OWi91cDRyNVZYa1IzK1NRcms0MEgycGJIQ0dsbmxEUG9LMVBVRGVDOEM2?=
 =?utf-8?B?Q1prRWFydWEwK0xyUlFqTzRpYi9tK3I1a211TCt5WlQrWmFSVU9rdlU4SEY1?=
 =?utf-8?B?RWhCV3c0YXllcmlzM2wzL0tGL3NiNHFHblJyQm1xWnN6RjV4NWIwcCtiWkF3?=
 =?utf-8?B?VHdXTndOdytWSis4cENuaDNZeStZK3dzRDlYc1lCQS9Rek4vL1FqQ2JkKzZ5?=
 =?utf-8?B?LzYwQnJScVo3Q3p2clMrMTB6ZkxJaG9OTWNiYVRXR1lBTG9sSDJoa3paN2tK?=
 =?utf-8?B?a0NTK2Y4ZWg3RnVFaWx2eUJSNHN0c3MrMjEvdk9JOURYTUNVbklWSFpOTEZT?=
 =?utf-8?B?TVcvbGx1cnZkSXpuajJJbkpwQnJLV2RNaXgvSDk0aUd2bk5HUW1ZUTBla2tR?=
 =?utf-8?B?M1hlY0JaYzJVVUJRYUQzclBuR0poSXphUlZPN2RQall0djV6RkxONEpwdHYw?=
 =?utf-8?B?cmRRajlLMDJaZStLSzdGNEQzZHlNWXhNSnBDNGZBT3hYbTA5VlJLb2JQQ2xh?=
 =?utf-8?B?UnU2TEIwSVE2ZmQ3Tm1TdFV0dkZhdnh6bkl6Yk5uUGlHMjNHYmFiNmlHbnhR?=
 =?utf-8?B?TzVqRGV3Z1lsWEFKazlZZkt4cU4rRCtOOElLbzNUZE9qWmVxd2lmdmFwdnNn?=
 =?utf-8?B?ckFiNWtzbExOQlFSUS9GTXRjRnd0SWVBbWtpSXF4R2RadGlPMTNHdFI0akdm?=
 =?utf-8?B?M2dlYjVxTEJxakNXYnpPQ213OE44Nm9VdFVCbExiaVNCc0xUbmtMRk4wTzVB?=
 =?utf-8?B?bVllQnhIMHIvZ1V4aVZWZTk1ODRETytERzNLMHE3NWJLNkhFSGxXZEVFZFcv?=
 =?utf-8?B?Z1poUVdqMFozZU5zL2ZET0dFOHRRMGRUbGJOSk0xaUNQaFhCbkFYSTlWV0xw?=
 =?utf-8?B?L2FENnZ2NWhTaVBYWkRkY0NINGxSZjRKUGFZMTV1OWFHNHRjQ3Y1eDBQOEVk?=
 =?utf-8?B?MisrQ09YN1JEajlDRSs1dXlUbjNpYk5QVTNZM0lEbXNwdzVNT3ZJL0I5M040?=
 =?utf-8?B?Y0dQNDJFT1JMZmtyUS9DZFdvbUw3NzlTQnRDbGJXVjNJc2IydjdJd0JkMVR4?=
 =?utf-8?B?UStqYTVHd3dXeGdYMFc0UHR4Q2R1SnZIcXpFampnQ0MwZGQxVDRxU0tJeVEz?=
 =?utf-8?B?SDBucmE1d3NSY05kdWVkOUlXcHRHT1Y4bW93MUN4M3Z2b0l6eG9tY28wcWxt?=
 =?utf-8?B?UHliYy9nSk1lV3hLYnlzTjlHMmlLS0w3SVhuSm91OHlwYlp2R1dycUJvVDNS?=
 =?utf-8?B?aEZmaG9LaEZNWFU0R2RlK3ozcTAyNVRnb1pRQXpLRFZ1VUxMNmhSb09FdDBh?=
 =?utf-8?B?SWVZS2hYMzE5VjJXQ1V0MEhZay8rcFZTalB1MG1XczhGczFUZW54VTJqbmFi?=
 =?utf-8?B?aEhWcEt2V3lsemczNlpmdEl5ZzVjdXY1bk4zNGZ1bGdMeXlTNEVmdmJPUWxr?=
 =?utf-8?B?TlhoOUVDanpnT1FSbCs2OURGZEtPVmVuSHYyWjJsckx1aWZ6aWxLa1NEejdl?=
 =?utf-8?B?aFB4b3loVGJkcVo4TDlvRFpNelpoSVJMR0w1djdsQUREQjdYSkF2VmxwSDRH?=
 =?utf-8?B?RXA3OVpsWkVkZWJ2bXVxNzM1Z1JQZHk0VWorbnBoMGg0dEVuNjNpMGpzZmV5?=
 =?utf-8?B?a29iR0pMMXVYbDdXS3o2YTFyVFByYTh6S1F5NUJtLy81eTRoQlJ0TlhuWWtH?=
 =?utf-8?B?WFRnRWhta1Z6TStxVTY4a0w3VFdJdng3R2YxanNyaURsTWczZGZnMURUZ0lk?=
 =?utf-8?B?bi9uc2JRbXJ3bnA1bnc0QlBiL3V2cEF3UVJTTEtPZWwyOTY2RHA3K1B2WCtr?=
 =?utf-8?B?M09VL1Vud2lFWi96amlObHZZTlBoRFpUczAycWRDazNHdWt1eUYxS25BV1BF?=
 =?utf-8?B?azZPYzB3MWlGOGY0YStQQUlrRlNnZFRaUmtrSk83elErK1FDVEcwbExOekxa?=
 =?utf-8?B?Nyt3U2NUMHUvdG5CSHZvY2ppaDJPcDJ4NnFGZDZZamc3ek4xYmNZZDRGclJa?=
 =?utf-8?B?OUZmY0djQzFuSDhsU3o3UUMrajRSYlFQQU5QTFVLVGxHSEw0WTk3K1dZZVZz?=
 =?utf-8?B?c3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: faf03d0b-ff53-4812-22b2-08db8d37d20a
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2023 17:51:49.2063 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xkUi92ZvatZJcYeRhNgAV+qudbY7qkaI3OB43So4xrEWh7HEyF35TFr2wohygMe7e8qxMSV3382/yhNsioC77CuJmK7ewZqkuwOphRFIzo4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8728
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690307517; x=1721843517;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BLANVGNcYVA5FXRfyM4QMoYGdPk63rAfKBES5k4d3MU=;
 b=ky4ixnWYcNvBN2JZuZA47qlR1ltINrisFVdhaUmo/XICtoFTfEs1Pp4j
 QLqfB8wqJNo+ZxuoWJNpzWy5bcmNf/Ubafm3LPUKo6TnY0y5T56oNYTpv
 E0BJYtUpTpIE4Vbe7SOMo4tA49HiJ0e6+C39ixFYs4h3LdUVFCag8p7Qr
 1FPXfrzPP9z+jYNDpYh8H7sPfgOp0qxK/mshx31aGKq4lYNHrDOtjOcgD
 O1THI9IaRZj+Fn8z/uiJVU3GXf4s2P0pipntA/EdYNimksMRTvj4TL058
 lrdxopp2I4yZqWnk4gfNT/EHV/B0nsfh0UkFUfHsnE54alHL8Gi9O3935
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ky4ixnWY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/3] ice: Auxbus devices &
 driver for E822 TS
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
Cc: karol.kolacinski@intel.com, jesse.brandeburg@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/21/2023 8:44 AM, Michal Michalik wrote:
> There is a problem in HW in E822-based devices leading to race
> condition.
> It might happen that, in order:
> - PF0 (which owns the PHC) requests few timestamps,
> - PF1 requests a timestamp,
> - interrupt is being triggered and both PF0 and PF1 threads are woken
> up,
> - PF0 got one timestamp, still waiting for others so not going to sleep,
> - PF1 gets it's timestamp, process it and go to sleep,
> - PF1 requests a timestamp again,
> - just before PF0 goes to sleep timestamp of PF1 appear,
> - PF0 finishes all it's timestamps and go to sleep (PF1 also sleeping).
> That leaves PF1 timestamp memory not read, which lead to blocking the
> next interrupt from arriving.
> 
> Fix it by adding auxiliary devices and only one driver to handle all the
> timestamps for all PF's by PHC owner. In the past each PF requested it's
> own timestamps and process it from the start till the end which causes
> problem described above. Currently each PF requests the timestamps as
> before, but the actual reading of the completed timestamps is being done
> by the PTP auxilary driver, which is registered by the PF which owns PHC.

WARNING: 'auxilary' may be misspelled - perhaps 'auxiliary'?

...

> +/**
> + * ice_ptp_auxbus_create_id_table - Create auxiliary device ID table
> + * @pf: Board private structure
> + * @name: auxiliary bus driver name
> + */
> +static struct auxiliary_device_id *
> +ice_ptp_auxbus_create_id_table(struct ice_pf *pf, const char *name)
> +{
> +	struct auxiliary_device_id *ids;
> +
> +	/* Second id left empty to terminate the array */
> +	ids = (struct auxiliary_device_id *)
> +	       devm_kcalloc(ice_pf_to_dev(pf), 2,
> +			    sizeof(struct auxiliary_device_id), GFP_KERNEL);

This casting is no needed. Also, some void* casts below that aren't 
needed either.

> +	if (!ids)
> +		return NULL;
> +
> +	snprintf(ids[0].name, sizeof(ids[0].name), "ice.%s", name);
> +
> +	return ids;
> +}
> +
> +/**
> + * ice_ptp_register_auxbus_driver - Register PTP auxiliary bus driver
> + * @pf: Board private structure
> + */
> +static int ice_ptp_register_auxbus_driver(struct ice_pf *pf)
> +{
> +	struct auxiliary_driver *aux_driver;
> +	struct ice_ptp *ptp;
> +	struct device *dev;
> +	char *name;
> +	int err;
> +
> +	ptp = &pf->ptp;
> +	dev = ice_pf_to_dev(pf);
> +	aux_driver = &ptp->ports_owner.aux_driver;
> +	INIT_LIST_HEAD(&ptp->ports_owner.ports);
> +	mutex_init(&ptp->ports_owner.lock);
> +	name = devm_kasprintf(dev, GFP_KERNEL, "ptp_aux_dev_%u_%u_clk%u",
> +			      pf->pdev->bus->number, PCI_SLOT(pf->pdev->devfn),
> +			      ice_get_ptp_src_clock_index(&pf->hw));
> +
> +	aux_driver->name = name;
> +	aux_driver->shutdown = ice_ptp_auxbus_shutdown;
> +	aux_driver->suspend = ice_ptp_auxbus_suspend;
> +	aux_driver->remove = ice_ptp_auxbus_remove;
> +	aux_driver->resume = ice_ptp_auxbus_resume;
> +	aux_driver->probe = ice_ptp_auxbus_probe;
> +	aux_driver->id_table = ice_ptp_auxbus_create_id_table(pf, name);
> +	if (!aux_driver->id_table)
> +		return -ENOMEM;
> +
> +	err = auxiliary_driver_register(aux_driver);
> +	if (err) {
> +		devm_kfree(dev, (void *)aux_driver->id_table);
> +		dev_err(dev, "Failed registering aux_driver, name <%s>\n",
> +			name);
> +	}
> +
> +	return err;
> +}
> +
> +/**
> + * ice_ptp_unregister_auxbus_driver - Unregister PTP auxiliary bus driver
> + * @pf: Board private structure
> + */
> +static void ice_ptp_unregister_auxbus_driver(struct ice_pf *pf)
> +{
> +	struct auxiliary_driver *aux_driver = &pf->ptp.ports_owner.aux_driver;
> +
> +	auxiliary_driver_unregister(aux_driver);
> +	devm_kfree(ice_pf_to_dev(pf), (void *)aux_driver->id_table);
> +
> +	mutex_destroy(&pf->ptp.ports_owner.lock);
> +}
> +
> +/**
>    * ice_ptp_prepare_for_reset - Prepare PTP for reset
>    * @pf: Board private structure
>    */
> @@ -2652,7 +2890,15 @@ static int ice_ptp_init_owner(struct ice_pf *pf)
>   	/* Release the global hardware lock */
>   	ice_ptp_unlock(hw);
>   
> -	if (!ice_is_e810(hw)) {
> +	if (pf->ptp.tx_interrupt_mode == ICE_PTP_TX_INTERRUPT_ALL) {
> +		/* The clock owner for this device type handles the timestamp
> +		 * interrupt for all ports.
> +		 */
> +		ice_ptp_configure_tx_tstamp(pf, true);
> +
> +		/* React on all quads interrupts for E82x */
> +		wr32(hw, PFINT_TSYN_MSK + (0x4 * hw->pf_id), (u32)0x1f);
> +
>   		/* Enable quad interrupts */
>   		err = ice_ptp_tx_ena_intr(pf, true, itr);
>   		if (err)
> @@ -2667,8 +2913,16 @@ static int ice_ptp_init_owner(struct ice_pf *pf)
>   	/* Store the PTP clock index for other PFs */
>   	ice_set_ptp_clock_index(pf);
>   
> -	return 0;
> +	err = ice_ptp_register_auxbus_driver(pf);
> +	if (err) {
> +		dev_err(ice_pf_to_dev(pf), "Failed to register PTP auxbus driver");
> +		goto err_aux;
> +	}
>   
> +	return 0;
> +err_aux:
> +	ice_clear_ptp_clock_index(pf);
> +	ptp_clock_unregister(pf->ptp.clock);
>   err_clk:
>   	pf->ptp.clock = NULL;
>   err_exit:
> @@ -2718,8 +2972,15 @@ static int ice_ptp_init_port(struct ice_pf *pf, struct ice_ptp_port *ptp_port)
>   	case ICE_PHY_E810:
>   		return ice_ptp_init_tx_e810(pf, &ptp_port->tx);
>   	case ICE_PHY_E822:
> +		/* Non-owner PFs don't react to any interrupts on E82x,
> +		 * neither on own quad nor on others
> +		 */
> +		if (!ice_ptp_pf_handles_tx_interrupt(pf)) {
> +			ice_ptp_configure_tx_tstamp(pf, false);
> +			wr32(hw, PFINT_TSYN_MSK + (0x4 * hw->pf_id), (u32)0x0);
> +		}
>   		kthread_init_delayed_work(&ptp_port->ov_work,
> -					  ice_ptp_wait_for_offsets);
> +				ice_ptp_wait_for_offsets);

I believe the original alignment is correct/no need for this change.

>   
>   		return ice_ptp_init_tx_e822(pf, &ptp_port->tx,
>   					    ptp_port->port_num);
> @@ -2729,6 +2990,102 @@ static int ice_ptp_init_port(struct ice_pf *pf, struct ice_ptp_port *ptp_port)
>   }
>   
>   /**
> + * ice_ptp_release_auxbus_device
> + * @dev: device that utilizes the auxbus
> + */
> +static void ice_ptp_release_auxbus_device(struct device *dev)
> +{
> +	/* Doing nothing here, but handle to auxbux device must be satisfied */
> +}
> +
> +/**
> + * ice_ptp_create_auxbus_device - Create PTP auxiliary bus device
> + * @pf: Board private structure
> + */
> +static int ice_ptp_create_auxbus_device(struct ice_pf *pf)
> +{
> +	struct auxiliary_device *aux_dev;
> +	struct ice_ptp *ptp;
> +	struct device *dev;
> +	char *name;
> +	int err;
> +	u32 id;
> +
> +	ptp = &pf->ptp;
> +	id = ptp->port.port_num;
> +	dev = ice_pf_to_dev(pf);
> +
> +	aux_dev = &ptp->port.aux_dev;
> +
> +	name = devm_kasprintf(dev, GFP_KERNEL, "ptp_aux_dev_%u_%u_clk%u",
> +			      pf->pdev->bus->number, PCI_SLOT(pf->pdev->devfn),
> +			      ice_get_ptp_src_clock_index(&pf->hw));
> +
> +	aux_dev->name = name;
> +	aux_dev->id = id;
> +	aux_dev->dev.release = ice_ptp_release_auxbus_device;
> +	aux_dev->dev.parent = ice_pf_to_dev(pf);

You already have dev as a local var.

> +
> +	err = auxiliary_device_init(aux_dev);
> +	if (err)
> +		goto aux_err;
> +
> +	err = auxiliary_device_add(aux_dev);
> +	if (err) {
> +		auxiliary_device_uninit(aux_dev);
> +		goto aux_err;
> +	}
> +
> +	return 0;
> +aux_err:
> +	dev_err(ice_pf_to_dev(pf), "Failed to create PTP auxiliary bus device <%s>\n",
> +		name);

Same here.

> +	devm_kfree(dev, name);
> +	return err;
> +}
> +
> +/**
> + * ice_ptp_remove_auxbus_device - Remove PTP auxiliary bus device
> + * @pf: Board private structure
> + */
> +static void ice_ptp_remove_auxbus_device(struct ice_pf *pf)
> +{
> +	struct auxiliary_device *aux_dev = &pf->ptp.port.aux_dev;
> +
> +	auxiliary_device_delete(aux_dev);
> +	auxiliary_device_uninit(aux_dev);
> +
> +	memset(aux_dev, 0, sizeof(*aux_dev));
> +}
> +
> +/**
> + * ice_ptp_init_tx_interrupt_mode - Initialize device Tx interrupt mode
> + * @pf: Board private structure
> + *
> + * Initialize the Tx timestamp interrupt mode for this device. For most device
> + * types, each PF processes the interrupt and manages its own timestamps. For
> + * E822-based devices, only the clock owner processes the timestamps. Other
> + * PFs disable the interrupt and do not process their own timestamps.
> + */
> +static void ice_ptp_init_tx_interrupt_mode(struct ice_pf *pf)
> +{
> +	switch (pf->hw.phy_model) {
> +	case ICE_PHY_E822:
> +		/* E822 based PHY has the clock owner process the interrupt
> +		 * for all ports.
> +		 */
> +		if (ice_pf_src_tmr_owned(pf))
> +			pf->ptp.tx_interrupt_mode = ICE_PTP_TX_INTERRUPT_ALL;
> +		else
> +			pf->ptp.tx_interrupt_mode = ICE_PTP_TX_INTERRUPT_NONE;
> +		break;
> +	default:
> +		/* other PHY types handle their own Tx interrupt */
> +		pf->ptp.tx_interrupt_mode = ICE_PTP_TX_INTERRUPT_SELF;
> +	}
> +}
> +
> +/**
>    * ice_ptp_init - Initialize PTP hardware clock support
>    * @pf: Board private structure
>    *
> @@ -2748,10 +3105,12 @@ void ice_ptp_init(struct ice_pf *pf)
>   
>   	ice_ptp_init_phy_model(hw);
>   
> +	ice_ptp_init_tx_interrupt_mode(pf);
> +
>   	/* If this function owns the clock hardware, it must allocate and
>   	 * configure the PTP clock device to represent it.
>   	 */
> -	if (hw->func_caps.ts_func_info.src_tmr_owned) {
> +	if (ice_pf_src_tmr_owned(pf)) {
>   		err = ice_ptp_init_owner(pf);
>   		if (err)
>   			goto err;
> @@ -2770,6 +3129,10 @@ void ice_ptp_init(struct ice_pf *pf)
>   	if (err)
>   		goto err;
>   
> +	err = ice_ptp_create_auxbus_device(pf);
> +	if (err)
> +		goto err;
> +
>   	dev_info(ice_pf_to_dev(pf), "PTP init successful\n");
>   	return;
>   
> @@ -2798,6 +3161,8 @@ void ice_ptp_release(struct ice_pf *pf)
>   	/* Disable timestamping for both Tx and Rx */
>   	ice_ptp_cfg_timestamp(pf, false);
>   
> +	ice_ptp_remove_auxbus_device(pf);
> +
>   	ice_ptp_release_tx_tracker(pf, &pf->ptp.port.tx);
>   
>   	clear_bit(ICE_FLAG_PTP, pf->flags);
> @@ -2821,5 +3186,7 @@ void ice_ptp_release(struct ice_pf *pf)
>   	ptp_clock_unregister(pf->ptp.clock);
>   	pf->ptp.clock = NULL;
>   
> +	ice_ptp_unregister_auxbus_driver(pf);
> +
>   	dev_info(ice_pf_to_dev(pf), "Removed PTP clock\n");
>   }
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
> index 995a570..d94c223 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
> @@ -157,7 +157,9 @@ struct ice_ptp_tx {
>    * ready for PTP functionality. It is used to track the port initialization
>    * and determine when the port's PHY offset is valid.
>    *
> + * @list_member: list member structure of auxiliary device
>    * @tx: Tx timestamp tracking for this port
> + * @aux_dev: auxiliary device associated with this port
>    * @ov_work: delayed work task for tracking when PHY offset is valid
>    * @ps_lock: mutex used to protect the overall PTP PHY start procedure
>    * @link_up: indicates whether the link is up
> @@ -165,7 +167,9 @@ struct ice_ptp_tx {
>    * @port_num: the port number this structure represents
>    */
>   struct ice_ptp_port {
> +	struct list_head list_member;
>   	struct ice_ptp_tx tx;
> +	struct auxiliary_device aux_dev;
>   	struct kthread_delayed_work ov_work;
>   	struct mutex ps_lock; /* protects overall PTP PHY start procedure */
>   	bool link_up;
> @@ -173,11 +177,35 @@ struct ice_ptp_port {
>   	u8 port_num;
>   };
>   
> +enum ice_ptp_tx_interrupt {
> +	ICE_PTP_TX_INTERRUPT_NONE = 0,
> +	ICE_PTP_TX_INTERRUPT_SELF,
> +	ICE_PTP_TX_INTERRUPT_ALL,
> +};
> +
> +/**
> + * struct ice_ptp_port_owner - data used to handle the PTP clock owner info
> + *
> + * This structure contains data necessary for the PTP clock owner to correctly
> + * handle the timestamping feature for all attached ports.
> + *
> + * @aux_driver: the structure carring the auxiliary driver information
> + * @ports: list of porst handled by this port owner
> + * @lock: protect access to ports list
> + */
> +struct ice_ptp_port_owner {
> +	struct auxiliary_driver aux_driver;
> +	struct list_head ports;
> +	struct mutex lock;
> +};
> +
>   #define GLTSYN_TGT_H_IDX_MAX		4
>   
>   /**
>    * struct ice_ptp - data used for integrating with CONFIG_PTP_1588_CLOCK
> + * @tx_interrupt_mode: the TX interrupt mode for the PTP clock
>    * @port: data for the PHY port initialization procedure
> + * @ports_owner: data for the auxiliary driver owner
>    * @work: delayed work function for periodic tasks
>    * @cached_phc_time: a cached copy of the PHC time for timestamp extension
>    * @cached_phc_jiffies: jiffies when cached_phc_time was last updated
> @@ -197,7 +225,9 @@ struct ice_ptp_port {
>    * @late_cached_phc_updates: number of times cached PHC update is late
>    */
>   struct ice_ptp {
> +	enum ice_ptp_tx_interrupt tx_interrupt_mode;
>   	struct ice_ptp_port port;
> +	struct ice_ptp_port_owner ports_owner;
>   	struct kthread_delayed_work work;
>   	u64 cached_phc_time;
>   	unsigned long cached_phc_jiffies;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
