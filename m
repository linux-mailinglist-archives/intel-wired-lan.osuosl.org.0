Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EACC98B1FAB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Apr 2024 12:52:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3ACB96128D;
	Thu, 25 Apr 2024 10:52:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tmhlt4-GwITN; Thu, 25 Apr 2024 10:52:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47A7861282
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714042350;
	bh=1Uch5cNqf1/IO08Oom5VKGF3IK9bPu4jw60xqSOKjpU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=S51LdL278zlCr9hedHfysetA/D8fvr8FzjuSVld1UADeGIgPlJPnrmxlK1FW0/e8Y
	 aDbiSV9ZDt8omChqtP8wAn7XQj0tO8a0FybACOIgrnxBlnIQZEwN4q064nQ/bd4VVm
	 lyWqtgeJh92il6YimIE7xj5C1kk2PrnP1acaJCLIXwJSssapUqaOW3giAPkFvptlzj
	 oAx2RLfc5iF6Spuhw50+aCylGB8lNF/txnpQKr/fDrrefpLeyXBwGy25sXAyaJUC2D
	 2QrH9gD9gQ8nx0oEpvEEO2p+wgVJf8A9IJXutM3t4kQFgya4CZL7lOXddjXu3/xBqD
	 Mtn6rUVPZ7NfA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 47A7861282;
	Thu, 25 Apr 2024 10:52:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6635F1BF3C6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Apr 2024 10:52:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4AAC5409FF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Apr 2024 10:52:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dcMMATYv0avf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Apr 2024 10:52:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D10DF409BC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D10DF409BC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D10DF409BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Apr 2024 10:52:26 +0000 (UTC)
X-CSE-ConnectionGUID: Nz/KBl5JRh2miKaMALtHMA==
X-CSE-MsgGUID: L4ANjJ9STca3H7KBHftdFA==
X-IronPort-AV: E=McAfee;i="6600,9927,11054"; a="32210193"
X-IronPort-AV: E=Sophos;i="6.07,229,1708416000"; d="scan'208";a="32210193"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2024 03:52:26 -0700
X-CSE-ConnectionGUID: PWvquleWQSCUDhAVIOQdzw==
X-CSE-MsgGUID: BYLeTD33QGOIeESdzbYByA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,229,1708416000"; d="scan'208";a="25019302"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Apr 2024 03:52:26 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 25 Apr 2024 03:52:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 25 Apr 2024 03:52:24 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 25 Apr 2024 03:52:24 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 25 Apr 2024 03:52:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CHKsn9/sIfuv/2MR3RlwMs1oDJoUIjqA8lrYBQZEuTBN2igZfV7A8EHRgkXPwP/EEi0kt5/nxu8lQ4kdheCQ52UEyPeUOZdJdzu4ki5RhG7iFf5TKJ3VemsezvvSpVBpBzPw2Tq6b0RposIQYVOHn0TlMtkTZ09GzZOYGWZlc7Kb6xCcfWiEYSbjUY/+FG5mHQ0q8i2eXwCeus55uvavbDaEmn1FbsWWy00Wjg6WBxHsFzQZkpuc+1eP3Zi+GvSrZjDhxXjHRzjB8jgBqGwUrEO54ATsVkK/SnkrBSWvseE4wznQS2BMoCIc324Jjva3RvoloMKBue8hVAxtK/bHlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1Uch5cNqf1/IO08Oom5VKGF3IK9bPu4jw60xqSOKjpU=;
 b=S3ueocJnnQCv9qoZs70qsG+FIkHiK6ahBXDK/BQ2290z44oWNvBlKHpgtSV7TfpcPdA076pD5tEe3vVtctVKw15x5wqV2OuRpDoeKqyFSuxzhcssP+5fkc84/fsVuow3u4gzoGJVsaDE4kFU/07m2Gpwvf89Qt2YxWD2NL3MHHKmDSCsxr2F3nNesSlEtA1WY1A92IlDG1L1NKFjh6fXNciT7o3e61Y8EvBdkDVXgfzL9GYKBGGAPc4BGR36fBOAqJhuME7FFTXA8haCKDCMFwalHK12eJLZ7hs8cOhQqYCu+OTBo0Jo7sH12r375iHFxOE78k0+FQmHobwpiH42sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB8086.namprd11.prod.outlook.com (2603:10b6:610:190::8)
 by IA1PR11MB7317.namprd11.prod.outlook.com (2603:10b6:208:427::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.46; Thu, 25 Apr
 2024 10:52:23 +0000
Received: from CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::984b:141d:2923:8ae3]) by CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::984b:141d:2923:8ae3%5]) with mapi id 15.20.7519.020; Thu, 25 Apr 2024
 10:52:22 +0000
Message-ID: <a3802100-21b0-4a8d-9b4a-d557996e7c2d@intel.com>
Date: Thu, 25 Apr 2024 12:52:17 +0200
User-Agent: Mozilla Thunderbird
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>, Rahul Rameshbabu <rrameshbabu@nvidia.com>
References: <20240418052500.50678-1-mateusz.polchlopek@intel.com>
 <20240418052500.50678-9-mateusz.polchlopek@intel.com>
 <87jzkue99b.fsf@nvidia.com> <9d8e656f-1b04-4fc5-a5b4-c04df7d34fdc@intel.com>
 <CO1PR11MB5089E8856F06AC88C2B76F6AD6102@CO1PR11MB5089.namprd11.prod.outlook.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <CO1PR11MB5089E8856F06AC88C2B76F6AD6102@CO1PR11MB5089.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0048.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::10) To CH0PR11MB8086.namprd11.prod.outlook.com
 (2603:10b6:610:190::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB8086:EE_|IA1PR11MB7317:EE_
X-MS-Office365-Filtering-Correlation-Id: e8cb78c7-295c-4c68-f176-08dc6515c8fd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YXIwNnR0NjJONjNLc0JPM2NMZVpnNlpNdWxzbkRVamRvdmg4MXdVZjJKZlNW?=
 =?utf-8?B?akMxS0czbXM2Qys5eUxsWlBNR1VVR1h0SkVCbkVodytsanlWQ25qZUN4Tytm?=
 =?utf-8?B?aWt5SDFVQVNlditTUDZYNXd1Z1FQaE5qcGIxOEU3TW56eWUweEZORm9lL3FG?=
 =?utf-8?B?Y0tBZk9XN0h5TlNwdERYc3J1SU1LK1Y0K21sRWFFMXl0eTlyMWloWEs0bjVj?=
 =?utf-8?B?eXBTTm5sL3ZmeXBnUmZwNnhiWklCd1VYYTFIcFRzRHJidFJJNzZ1NWlUa0F3?=
 =?utf-8?B?Z1hGRWZQUDRjWlFFbjdCbjFMYXQ0WG1veWFrbWhqWnFEMTY1Tk9DSGZWdEVZ?=
 =?utf-8?B?N2VKVUZldDdYdmEzK21vT1JrcWVJdXlOeTBHMXlzcVUzaWRMK01CVU5Qb2JH?=
 =?utf-8?B?TVk1a2FkUm9LNnBzUW5IU3BsMXZpUklGcnBHV3JZN1RkVFkyN0lwejJKWXRE?=
 =?utf-8?B?T1U0WGNIRHJTZ0wwQ2NYWmIvRUY5TEdpd3VmYytwOG5memdRT3dYQjVTVTdI?=
 =?utf-8?B?L0YrUGoyekR5UG5KWlFXQnNBb0tmSHBnbFRvZUl6L2JxTDQ4YWRFM2d2TEFo?=
 =?utf-8?B?ejNUNnZuS1N1NXlMUU5Ea0E3SlRkdkZmRC93UHBabTNMTDM1N2dnK2ltREN0?=
 =?utf-8?B?cW1mQXgrQmhpS0JPZWVvZlBVR3kxakdzb244UGVrc3Y5ZmxoVWRHS2xwSzd5?=
 =?utf-8?B?bzVCUS9LMDVXOXI0MGVDeENsVGd0aGlWV1cwellhNnZvODhqV2FRTTFBU24w?=
 =?utf-8?B?VDFEbTJ0NE1ubVZJcHUwNTBVZzVDb3c3K1IzWFRJQ0h3OHpCNlN3RGxCaFI4?=
 =?utf-8?B?NDhPcy9HenBEbmMrTXlNS3hRTnI4dG9pWlQvZ00weExzcFFMQkZaZURZNEt3?=
 =?utf-8?B?MFQ0c1NOTHZqb1ZGVE1xcnVtMEZpM2crVWtNRDZlVC9MRFZPUThDNmRUWHlu?=
 =?utf-8?B?V3BvNVo5ZXdIMWw4bThSeDB6dGJGdmg3S25mUWhBcTFvYURkamNYWnVkc3Br?=
 =?utf-8?B?TFVNcnRyRmxNaC8raUZLQ0hhWHNsN1Q0RHZjYXhYbVpMVlZLQkw1QzlYeldM?=
 =?utf-8?B?eVNMZHdPRGFVNlV2REtlcW12WVExcUlFOXlXY015YVlCZHJJV280bFk4d05G?=
 =?utf-8?B?QkI5MFhNY2NPYjJRblV3b1Zid0pCYUdNYUNxa2FWM3FDMVNwSlB6SGduT2p3?=
 =?utf-8?B?cGVDb1BaZUtnQytOcDJhcTNKcmpPK3BmamFQS3Q1cWdRcFN3OUh1c1dmenlR?=
 =?utf-8?B?T2lJWnVpeGJvdlhYVTdQQVkzQkJvM25mUS9DTW1XZzBQaldiYVRRTk5XcE1a?=
 =?utf-8?B?M0l0NUtkOWFVN1VVVkx2aXZLb3hLZVNueXdtdFdhUFFhSEFqUXU4eFBYeWpr?=
 =?utf-8?B?ZWNib1I2SEdvVExlbm5YUi9NdG1uMEhlbWwzcFl1WTlwSmttT1BoZExiWjFD?=
 =?utf-8?B?aUVrY0IrZzhvbWFObjBKMk5UUXNPZTI4ZGxpZDQwQWxFY29kUkdwMlpESmFO?=
 =?utf-8?B?S2lpeTZ2Z3RFVmlrRjRZUmlmUUlyZW1VNkovcW5lRFF6RGNjSEZTTVM4MWtJ?=
 =?utf-8?B?TGcrWHIwSXZTdnhkcWFmeFNwbjlVMnpJeXhpWG9RRGs0b0xGZk9Yb2IzSitp?=
 =?utf-8?B?YzBaNVYyV1JLb2djUElKSlNPQnBBS3BXallyaGtyM2JSbTFhRzc3eEh6eExE?=
 =?utf-8?B?WXZ0UWVrYkxCcU42MzlCUGJEZGxqc3RqNXAwVENPekdSZ1RhMVJqcW1nPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB8086.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TnFSQWdnbEE0YnBveFZoNjl0MXplTW5uTXA1Ym9ubTZYYzJBam5FZ2ZOTXN0?=
 =?utf-8?B?d1I4VmJNbTdkWlZCQ1hzMmo0QlpJWW1oeVNtZXB1WFFXamhjSTZMWUFCNnE5?=
 =?utf-8?B?dnd3N1lYaDg1a0FmeUVPa1hFVTdnN3Vma3pialFiWUFmUncvUmQrQys3bW1x?=
 =?utf-8?B?WnF4ejhQVFdBcHFMcHBHRjFTcmw4YnN0TkhQcmIzVUQ0SVp2Rmt4N3VnT1k3?=
 =?utf-8?B?SDNkVjc2WUNyY1FFUkRpSHk0OU5yZC8yenNsb3psVWhnZW5aTmw4dURSM2VK?=
 =?utf-8?B?TlpZN0pwV05NTFFWTUxNdnNHaEJHWVV2TUVqbkhKbTBkWXhhNFRKektOQzdl?=
 =?utf-8?B?QnZXRUtXWW0rcWVDOFEzSXlqZWEza0N0REk5YlkvdDUvS0dZZjVrclJBU1Ez?=
 =?utf-8?B?VzFWM2Y0OTVwSkY3ZXh6SkFiQ2lGMExDNEJqMGpUWWExT1U2Rk5tN0gwT3kw?=
 =?utf-8?B?Wjd6bndxcFlqaHVMT2RqWkpuKzlXeDFvQ0tkSmp0V1VYOVBoVG5CQ1Buc0ov?=
 =?utf-8?B?M2dOVnhVL2hZZm5UdDBoMFlacE5hYktmUjROTnk0UFFSZU9XMnFXdVFhdFJq?=
 =?utf-8?B?bldsaXVxUHFpVkU3elFRd3Y2K0gvQ2xIaWRsLzF5M0pnci9ma2lLZW9LWFZR?=
 =?utf-8?B?dkdzKzBLNWhlRjRidG5pRVh2WXhDSmFhNjNXSm5zb3pYTnIzV3diRG1PNkdl?=
 =?utf-8?B?RzdkS1B6c2U0VEJ1bWpDNHJRVEZic3BZUW1KY2x3aFhRNzN3MHdVWmo2RXRj?=
 =?utf-8?B?QlFBYkllejRHVlZLY053Zm1RTUc5RzJNTVIyeWozT1BzenRRM3pzZUxnbGV4?=
 =?utf-8?B?K2dLTXJ1SUlzbWNjaW9OTTh4UjdOZU50a0E1c3FRZWJoZHdYcHpRaGxlcG9u?=
 =?utf-8?B?RUdSOHhkMEUyN2J5MkViSXZ1bkhJckhJMWdxNGRSYkZiUjdiOVFlRUY5enZx?=
 =?utf-8?B?Y0FVaFk0SFRTbkFnd2h4YkVyUmVTdTBaSHlJSTgzWitrTDFqUmZ6UE1sdUpZ?=
 =?utf-8?B?ckFvOGcyTWt3L3BwZHNlemlOaVNwVmM4b09VbjdzQmZCSHBrcGJZekx4eWhJ?=
 =?utf-8?B?aFp6T3JBTHJ4OHQvQWhqd1JlWHl5SVAzUERpZGgza0c3WTQwc2Q4aUZzbWth?=
 =?utf-8?B?bzEvd3VNSXZwRVlkbDE4OUZzdjQyb1Nxa0taUHd6eDduQWF3c0lPMTFibXdl?=
 =?utf-8?B?Y2MxQjBwOHFpWlNDYVkwTldsbDBUZHp4NGxCTmRjNjhKWlFXU1VPVGVRdnl6?=
 =?utf-8?B?VEZUY1BxSjYyczFzWVlpSm5DY3dGWmYzS2NpakdxcUNFcTU0RURWN215WWRX?=
 =?utf-8?B?VS9MWEpLaTRqeWg5U0NqN1dwSnN6UTdVWWRSM1U5eUVXTy85bDQ3djZxVGNw?=
 =?utf-8?B?MWQ1ODFOMnlSK2RQVEJXZXlGb25aTGtlUlM3WGJWdUF4NkQrS1k0cExjSUZL?=
 =?utf-8?B?ckdhMlVDSzdydHhvS1dRbVdHZ1ZnL0JYekVlVkljemhuTW1sMjJwVmNEUjVZ?=
 =?utf-8?B?dUVJRXRrVm1TN0trNVlEK0ppVXNzMGJ0NEJxUzBmRHFSVkFTeUxkRFBjeDNX?=
 =?utf-8?B?a01rUXFkS0hIVnlDdTZjaXpPdk5paXZlK1VRdk43NnZVczhUU21HdXRtcjFn?=
 =?utf-8?B?MTFlUzhDVHhYVGxtcFdINmlJZVFDR1o5TG1adUQ0QmNoRFdJdVZLZXdDN1ZE?=
 =?utf-8?B?d3RldG1qdVVid0JDTHRIaXh1Q3ROOVdIQmtaV0Fac1lqZkdITGFaMlJoYXNG?=
 =?utf-8?B?eW02VFhPTytlWmZsZEEzTjl2MkZaNHpsUWNvUU1LNjkrdTN6c0gzeEtpdkhY?=
 =?utf-8?B?WFdUWW1XNDdSVHpmR29QNXE1bDZLZFVvaE8wSnJkRWhlMmp6YlNnc2lJWS9n?=
 =?utf-8?B?N3Z2c1E5ODg3K0pGZEhPUy9tQmlWYXdRcXB6dkZ2WFhpalVnb3JERGc1T2lP?=
 =?utf-8?B?UTlNdnJ4WDV1Qlk2WG5acERua0tBNEVTL0s4bTNQTURZdTcwbkp6ZWtpcUN0?=
 =?utf-8?B?NmFqei9ZWVRpNTY2OE5DbkxkN2F6bUZseVUzelEvU3RTaENOOE8xcUlyVlN2?=
 =?utf-8?B?cUJXRnVzUUw1SEJxbnA1OHU1VDFtbEdiM0tuUi81cGpFUEhET0FzUVhoVk9Y?=
 =?utf-8?B?Mk9nMndTZlBpVWlrTlBJdzg5QUR2QVErUk4zT3hFUFBRdm4rNkJJOGcvbHBN?=
 =?utf-8?B?bHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e8cb78c7-295c-4c68-f176-08dc6515c8fd
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB8086.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2024 10:52:22.1868 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VIL/Y0E/+jCw6IjGNcBVwMrIycbmFb2CLStVfQJHv6ZmmBSIXAIlTDX7YZFPqb9AHQfRKi3oTeY60kik0enTsk9ydTPEXVtn0Cn5tQMPdQc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7317
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714042347; x=1745578347;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EVxMchTNuwVF9ecrv3CerzjUlOXxzYmdO/wIqVDqd54=;
 b=SGIprsX09ZjbuaMnbWN0+GgBZokA0euZ2zuRb3Z8hibiBRekRytz9nxM
 gfZr2h6iGcIInXZkkTrL2MKJKAccaaVaSFS5WNka839zzw20+1uBHnCW6
 vGdEGbNaG6jbQ+aOYig9TQphIFeHS71xUJWg2ut2vt8rrZ6NAsqnG/TNW
 kSzAqzq5v2Cai45en4oO/0BQhP/R5Hd098+uT+Nj+SkH5gn0D4XbT5gx6
 tmPXl+htAS17EsIMD80UFpQDY1yrd94LPgVuu/nwcme07/63kh5wg3UMh
 MLv4eQ78xcDoBPMzXS/YGI5sWrouQAN5A++3zuHMwPks4LOtQy2rTL9W5
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SGIprsX0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 08/12] iavf: periodically
 cache PHC time
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/25/24 00:03, Keller, Jacob E wrote:
> 
> 
>> -----Original Message-----
>> From: Polchlopek, Mateusz <mateusz.polchlopek@intel.com>
>> Sent: Monday, April 22, 2024 2:23 AM
>> To: Rahul Rameshbabu <rrameshbabu@nvidia.com>
>> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; horms@kernel.org;
>> Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Keller, Jacob E
>> <jacob.e.keller@intel.com>; Drewek, Wojciech <wojciech.drewek@intel.com>
>> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 08/12] iavf: periodically cache
>> PHC time
>>
>>
>>
>> On 4/18/2024 9:51 PM, Rahul Rameshbabu wrote:
>>> On Thu, 18 Apr, 2024 01:24:56 -0400 Mateusz Polchlopek
>> <mateusz.polchlopek@intel.com> wrote:
>>>> From: Jacob Keller <jacob.e.keller@intel.com>
>>>>
>>>> The Rx timestamps reported by hardware may only have 32 bits of storage
>>>> for nanosecond time. These timestamps cannot be directly reported to the
>>>> Linux stack, as it expects 64bits of time.
>>>>
>>>> To handle this, the timestamps must be extended using an algorithm that
>>>> calculates the corrected 64bit timestamp by comparison between the PHC
>>>> time and the timestamp. This algorithm requires the PHC time to be
>>>> captured within ~2 seconds of when the timestamp was captured.
>>>>
>>>> Instead of trying to read the PHC time in the Rx hotpath, the algorithm
>>>> relies on a cached value that is periodically updated.
>>>>
>>>> Keep this cached time up to date by using the PTP .do_aux_work kthread
>>>> function.
>>>
>>> Seems reasonable.
>>>
>>>>
>>>> The iavf_ptp_do_aux_work will reschedule itself about twice a second,
>>>> and will check whether or not the cached PTP time needs to be updated.
>>>> If so, it issues a VIRTCHNL_OP_1588_PTP_GET_TIME to request the time
>>>> from the PF. The jitter and latency involved with this command aren't
>>>> important, because the cached time just needs to be kept up to date
>>>> within about ~2 seconds.
>>>>
>>>> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>>>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>>>> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>>>> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>>>> ---
>>>>    drivers/net/ethernet/intel/iavf/iavf_ptp.c | 52 ++++++++++++++++++++++
>>>>    drivers/net/ethernet/intel/iavf/iavf_ptp.h |  1 +
>>>>    2 files changed, 53 insertions(+)
>>>>
>>>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.c
>> b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
>>> <snip>
>>>> +/**
>>>> + * iavf_ptp_do_aux_work - Perform periodic work required for PTP support
>>>> + * @ptp: PTP clock info structure
>>>> + *
>>>> + * Handler to take care of periodic work required for PTP operation. This
>>>> + * includes the following tasks:
>>>> + *
>>>> + *   1) updating cached_phc_time
>>>> + *
>>>> + *      cached_phc_time is used by the Tx and Rx timestamp flows in order to
>>>> + *      perform timestamp extension, by carefully comparing the timestamp
>>>> + *      32bit nanosecond timestamps and determining the corrected 64bit
>>>> + *      timestamp value to report to userspace. This algorithm only works if
>>>> + *      the cached_phc_time is within ~1 second of the Tx or Rx timestamp
>>>> + *      event. This task periodically reads the PHC time and stores it, to
>>>> + *      ensure that timestamp extension operates correctly.
>>>> + *
>>>> + * Returns: time in jiffies until the periodic task should be re-scheduled.
>>>> + */
>>>> +long iavf_ptp_do_aux_work(struct ptp_clock_info *ptp)
>>>> +{
>>>> +	struct iavf_adapter *adapter = clock_to_adapter(ptp);
>>>> +
>>>> +	iavf_ptp_cache_phc_time(adapter);
>>>> +
>>>> +	/* Check work about twice a second */
>>>> +	return msecs_to_jiffies(500);
>>>
>>> HZ / 2 might be more intuitive?
>>>
> 
> I've always found it more intuitive to think in terms of msecs myself, but HZ / 2 is ok if other folks agree.

HZ/2 or HZ/3 as a timer period could be understood without thinking, but
the same stands for 400ms. Problems starts when one thinks about it ;)

For me HZ, which could be both literally and colloquially understood as
"per second" should not mean 1000ms (just evaluate to).
2Hz is a frequency with half second period, but 2*HZ evaluates to 2000ms
which is 4 times more :/


> 
> Thanks,
> Jake
> 

