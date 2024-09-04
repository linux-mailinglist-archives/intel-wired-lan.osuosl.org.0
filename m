Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BAEE396BC8A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 14:37:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 702BF605AA;
	Wed,  4 Sep 2024 12:37:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RlaUIazfwM1g; Wed,  4 Sep 2024 12:37:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE95B6087F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725453457;
	bh=+aIno8yHc/S/3j0Zp9J9y5zWRlEcqg6RqVVKJkvPcb4=;
	h=Date:References:From:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=Z0H4Xr9Tqyerxq0iDBBa49z/AKqws8eM7Rc3evNuDYFL4lWesQwr6A8Dgy77Hho8j
	 kdkQk2EIX2MFnoCUGJho7g+jjarvz5a/eiJ76ZgxctiVoj/hrWEi9KJFgp2eRBbM46
	 zMZX4T8fKou9/VsFNnYUEoh47JgU1jCXE7w68RKACfE/HXv6zcH/4JgBcCvgPPgnMI
	 vq0r5yzhsefs9INmE7CLQ45Rc4NIMRqXxIDzQTylSxEIhsWBIC4jl9MzVOtafJe7l7
	 0qNvu0M9jcJl+F+7pv0sfYdToxIQz1dmBoFcf6cuzTio9SZ6LM4i96aDMNxBNCgJb2
	 RxhOeLA+RDbeg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE95B6087F;
	Wed,  4 Sep 2024 12:37:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 660891BF373
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 12:37:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4FBDE4025E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 12:37:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eXXv4z5VU_7K for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 12:37:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7F3DE40129
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F3DE40129
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7F3DE40129
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 12:37:33 +0000 (UTC)
X-CSE-ConnectionGUID: B1rahD1FQsSL7NHwV2B3aQ==
X-CSE-MsgGUID: RJmiYvg7Q62N0vltFFkfYw==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="23912915"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="23912915"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 05:37:31 -0700
X-CSE-ConnectionGUID: InHvZK5USTSEYHMvwmPiUA==
X-CSE-MsgGUID: gwoZRqVMS0+vU/8q+v8RQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="65098674"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2024 05:37:31 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 05:37:30 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 05:37:30 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Sep 2024 05:37:30 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Sep 2024 05:37:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=htIc0IBR0wUxj0PeaB74WrtNn0KW7hhKf4xnqIrwziQVibAD7CuWysal5NPvZfMXkq3qcyDM61MY5pff7q5wVfuGcclag7/RLHlbeg4/OWz5fYwj1FvBnc4cVc53r/i1eyrWCjZB5haqecs5rifBQoaMDJFNk75eG/PIPsO8qV2yB5bdCAXHUSzxqMmU2hcFkjEIiuCWS7UXD1L7sO+Dwv6uuAOM1G2VSXL8YykbiRNBG0P7rNMbYujIcM62ciblm+WiYh5ctB6ImT28O0uQXOXubpsE499TtOk9Uk4XKuErlMzEmfqpBnbqP1uJtIsOcSzyt99RRJRCVrvXV3BlJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+aIno8yHc/S/3j0Zp9J9y5zWRlEcqg6RqVVKJkvPcb4=;
 b=QDtujdK5cUbUcT5PfbyYJ5D1f3Jns54BJWy7wkrCNnuMh9Gya9f1ttDLQoYj37zhwFfzWulILrZ0tntgcK95jsH+VosAyupEwdkELML3PX1tcmy+L76jJtY8BFQRvYyIksybDX11fy8PV/wcTeoIjWGaikayLef0sv6e/8uCEMMLRPRwotii/nv/yNi+0E27g+N6lWTWrK1VDLKTIHB9hCN1Z9bwoMrNGvL/nMzwuTTxKNMDSvFLijzVj0p3fvCbg3CO7T++oJHvA0yF/kjvrrAKA6fFGkeGOjxCa3dzSx5E1brdfRLIYIjOKjPM2K4YEHZrmMIqsWmzTEHwYHCT3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by BY1PR11MB8055.namprd11.prod.outlook.com (2603:10b6:a03:530::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Wed, 4 Sep
 2024 12:37:27 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%5]) with mapi id 15.20.7918.024; Wed, 4 Sep 2024
 12:37:27 +0000
Message-ID: <0f61f5ab-2358-4d1c-ab3c-78c345335bda@intel.com>
Date: Wed, 4 Sep 2024 14:37:23 +0200
User-Agent: Mozilla Thunderbird
References: <20240904093135.8795-2-przemyslaw.kitszel@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20240904093135.8795-2-przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BE1P281CA0491.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:7e::24) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|BY1PR11MB8055:EE_
X-MS-Office365-Filtering-Correlation-Id: 02ad374c-b805-4232-f35f-08dcccde55ac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YTJNMHhCZXkvYU9hUHdJenhxM0tNajFUYmhoNjNmbnJHUWk2bE5kbVlFY2Vk?=
 =?utf-8?B?ZWNMNHBRWW5scWFLWElLam9iY2RMUWw4SXpRQ29jYlVNVHNzMWQzZkZ5YkRW?=
 =?utf-8?B?b09PbVpVNmZGWTJzZ2tGNlgybTROVHlYTXhTVmI5M3lMcHF1cHRic2J4Y0N6?=
 =?utf-8?B?UWE3Q0JSc0JGamxaSG9KdHJxLzJ4UEpWOUM5MFlaek1KZEI5YmlxdWZSZ0VE?=
 =?utf-8?B?Ylh4RmQra3dwK0Vxb3RkZW95aFV6ZE5kWTN0N2JoWUh2WWh3Ym1OR3pBRXNx?=
 =?utf-8?B?WDR6N2FqNlZKQVpYTXZNeGdzcDBuajloK3ZHdE9WMUc1NzRZRkJHSDdBL2Ix?=
 =?utf-8?B?cXptUS9pY2d1d0ZKL0VOT2J4VXA2ajFIZzVPREwwSk02bjZiNUhVRTBKeDhx?=
 =?utf-8?B?TFZzR3RQMEhlVDB0ZSsrVGV0QUlCaEluVUZseC9vbFFQTWF3eWtJeU5nQ1h1?=
 =?utf-8?B?QjNJYTRaalVyUXRxMEdQaW9LTHNSbGxTemM0aUV0Y3oyN1RNalZMSTlKbHVN?=
 =?utf-8?B?UldCckZiQkhFSzBrTFk1Y0NXc2kxYnIyZGJvTGhpSDNXZGNJRjhQRHI3Njlx?=
 =?utf-8?B?d3JzRitFRWVDKzd2LzJrOFFrKzl1UHpxSUc0d2ZHTFBvN1VyQU9KZEhJbUhQ?=
 =?utf-8?B?eDNqVzh3bGJocWJ2L3lkSzgyTzR6WkIyZ21oV1V4RmlvMGF3TU1CLzVyeTN3?=
 =?utf-8?B?QXFFZlp4b2d6Q1FJQUZOUTRVajhveHJPaWZDbWY4elVQQ3ptVVNBeU9LWG13?=
 =?utf-8?B?RHVmQ3k1QUxhNGlIZVU0U3BkVE1jdGxTTTFwTmU4N3E0NTZPajkyRXlGMnJL?=
 =?utf-8?B?Z2NUbVRPbXRUTWRQMGFkMFpPYzZMK1N6ZUhHYnBQYjEvT2VON3ViQTBnY2FM?=
 =?utf-8?B?UTJjL3F0OHBjdGxRbDArcEZNMDNLcmxJNHl0RXdnQ2EzZ2ZCbzcrdmxSaUhL?=
 =?utf-8?B?djFPNXJFOHUxUS9GYVlOQUR3MTJ5WWoyM0dWUzNMYmNJbnhlamVsSC80WWhB?=
 =?utf-8?B?eGVrY1ljS3lGNVlua3JhODkxUCtHS1hyTC9BOTczSlZRSmppVzVZZkM5Y2Ry?=
 =?utf-8?B?ZlYvdlJ6MXVRaUFPTWhFdTkwU3IrSGhLNGwycVdiVVlzckNickFCaVdxSHA3?=
 =?utf-8?B?aitYaXVzODJJUWJZSS95RlVvMTkrRHkwTmRvWG1XQUNaSTJNNDl4dWFvVExp?=
 =?utf-8?B?S3lUZ0ZkdmFhaTBiWG1jRXJ6ekRxVkQ1eGc5VXJQNkNBazl5cTFpMm9aLzRP?=
 =?utf-8?B?N3Ezanc4U3hkSnRISmRqajFMc1h1Y2tjNFpwRjJKRStMSWdKZGhoQzlxc1ZX?=
 =?utf-8?B?c0RHNC9Dby9NTXRZVUY0TVJscnBYVnhldGQrRC9Uc0d4dzdhZkt2ZkprRHJQ?=
 =?utf-8?B?Y015dWhiUFJOVmcxVUE4and0QmlmaGd4VVF6RThlb1ZYa3Z3MmFoYzZ0Mmhw?=
 =?utf-8?B?TU8zWXpFcjlnVVduakFha2NCS0pKdzVRVWVLczRERnN1aDl5RnBJOTdJZitt?=
 =?utf-8?B?YTdmQmlVY1FiN0drYzY3dlJBdUZ3RzYrbWRhYmRlRGYvc0s5T25HVVVCMXlU?=
 =?utf-8?B?UFhFQ01MK2lTZXJuRWkyYS92UlhvSHZZRFFVWFNRKy9YZEVJOExkOHpTbUJw?=
 =?utf-8?B?eFB5SFNMVFAwdmpiUFVmVG5LQzlDdWZScE1DWWUrOUhDdlVMVVZ6OWl5djJN?=
 =?utf-8?B?ME5nR0RmM0dzZGVIL0JUcmsvdFBMVTEzUitGbExQamJpQXdUOUJsbUk5SkYv?=
 =?utf-8?B?TEtNenRERzlVamxadVYzTzNVYk4xMC9aL281NmZQU05MOG9oSWZzOHp5QnR5?=
 =?utf-8?B?aS8rVHNDZEVEWTRoTlpqZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aEExRFRMai9WTkV3ZnB2bFVLRW8yd2VqRFZxZXBWVHJtaGNXT1NXdWV5VVRM?=
 =?utf-8?B?UEwwZVZrRVVvMFdtbE00ZTZYL1lSOC9BNXNib3dnZU55OEt1enFUcThNaEQ4?=
 =?utf-8?B?cENmSWl3cHZRNFJLcVEzSmRvbUJ5WnpOcEhuSmp1c2xMOEhZMnFQM3BuSmdn?=
 =?utf-8?B?a0dCcGFXa1AzUHVaTlN6YmZHS0U4RG1UMnV2a3oxZWs4YVVaREkwVSt2YkMz?=
 =?utf-8?B?SFRGRkt5UWRlTWJsOEpYUWZkREp5bVZ1eHNYUnJyVllSbHI2N1dMajhYbDZ3?=
 =?utf-8?B?Um02N213d0NNTW5DQ09LVnhBTXNMbnFubDdtMmwvSTZnT3c3bE5Scy9MNkN5?=
 =?utf-8?B?bHkwZFVBbzlzeVB5YnhFUGhVdU4zTXRKMGwwTlBtVUV1NE9EYjlrN2ZwU1p4?=
 =?utf-8?B?YmpWLzhXaVkwbXRub3VQVVRqaXRSbVlpSnpab0xVYmNrRktjcE04ZFArWVE2?=
 =?utf-8?B?aXpJV001M05oT1orWmswck14RTQyQXU2aDJTMTZJMmxySnBLYWNqZnpYcVMx?=
 =?utf-8?B?WEF5Q1YzeWxYdkN6dFBYTGt0VzlJaG9KM0Q2YkZKWkJQb3Y0b1hjdXVOUGJk?=
 =?utf-8?B?SGN6eUJyRGdHWXh1OVpBMzhYbHVqRC9GbHViZ1ZQL1cxbU5INUQ1bXFtY1gv?=
 =?utf-8?B?SzRuejJEMlpCUEhxSkhHWmtiZVcwUWlOcVJXUGVpZk1Sak9uSHJ2aVFjZGxr?=
 =?utf-8?B?UW1ZZWFIektYNXEyTlhDcVlPMmtheWFLNGZ4cFk1a3FMbUN0Vm15dlp1ZC9B?=
 =?utf-8?B?alg1QUVXOVRLT2FnR1ZaZkpvYThHaUJhR1ROQ0dEY2lmenFBWGJQRmhKMEg5?=
 =?utf-8?B?LzJaTGlPL0ZwMitYeVg0ZlBLcWZiLzJHNnRuQ3BiL0RidFpZVnZoY3hLY1Jm?=
 =?utf-8?B?UU5tQlhoN0oxcTlNU0d6SDA5dHFGUHFtZG1NbEo3VHR3akNRaXJCbnJ5TGRp?=
 =?utf-8?B?Q0NONmhqeWtIM2YzRDhqYlkwWWwyTEQvZ1J4UGk2UmV4OWwySU5CaTRNVGdj?=
 =?utf-8?B?UERFRjN0NGllY3pqNmZCY1RyRWsyS3p1YTA3K1M1MElQc1AzazlxcWlWcWZ2?=
 =?utf-8?B?dXhBQ2RlNmt6c2pqM0dmTmc4ZTc2cDdRZlhKQmtzTzRteFE5bjV5RTVoSVRK?=
 =?utf-8?B?d1lSWHBFY3QxSkY3NEUxTU1GTTE0MVVxRWRKdGZ3aTFNUno1UFd2R2lFYmND?=
 =?utf-8?B?QmpmdVBpOE13bkFJZGVrUTBZczJqRDBBUkxjSlF4bW55NzR1bEl5d3BMeWVu?=
 =?utf-8?B?eDVTOHVWZVRqMVZJVVp2NHNnaW5hKzRiQVFyRHM2VWtycjFLdlpHU3lsVkdx?=
 =?utf-8?B?WkVRMGN3dkJycVp5ZFdDSjNSOS8xLzdXakdhbHJWNWNrVzFpc1lpbVU3RVdE?=
 =?utf-8?B?d0w0ajdQT2FqTzlUTGVHelcwOHNiaFgzcUl6K1FYMnlVMG9DaGRZRzZaL1dk?=
 =?utf-8?B?MTNCUDh2NW5PMHA4aWNXQk40Qy9HTWJYSGJkNTBPeVkreEczOFhLRTRRS214?=
 =?utf-8?B?dWZaalY2ZnpIYllHdWVrZ1B1cXVxRFZoMkRHeVV3VXMwdnJiZ2wvdkIwMElr?=
 =?utf-8?B?RWdtQ2Vjb3BoSXB4cEdyendPWUpodmpvNHBaYitsSDNveGVGTTc1bWUxb0Ft?=
 =?utf-8?B?VTUvVXo1ZjU1MEdXckZ6aHYrdGV4b0QyS1pTVHlwNmpLUXFRcFAvVTV3R3U4?=
 =?utf-8?B?UlBjNXBsZ2RPRWFhakp3dkRmQVlFY1diRExHN1UzRkhjVkdzcHRmTlU1cVAz?=
 =?utf-8?B?Y08wUzVZTUwrRlp1OWFVcDZiQlkyTFd0QWttNGxDQXVqWUVwTk41V05aNFQx?=
 =?utf-8?B?eS9pR1VwSXJVUWRHLy9LMHRSU0RTUEQ4VGgvWHZuTTNtbXZTSHR2WlJrY2cx?=
 =?utf-8?B?MnBZMU90ZzM3eU1tcUNsVWViWGNCSllFS1hBV29CeitFTFRLSHJvZUpPQys0?=
 =?utf-8?B?SXp5RU9GV2FCL3piL29sb1pXN2NxSEZlVDBDdG1FK1k2cmVWb21qQTJISkJM?=
 =?utf-8?B?YkJCR09MaTNUZlVOc0ZaR25abXVDbTRJeGpkWXEzVkNjOGwyY01DVElGYzVJ?=
 =?utf-8?B?d0hhZXR2aGFMakUycmV0N01yOWRZK09EQVIxODZaalNDQWVXdFhXa1pGL2ZP?=
 =?utf-8?B?eElBVjJHc0VrdjM3b1JWSm1ycS9Tc3V1UndTSDRGbG96YWZJdW84UnJKOUJQ?=
 =?utf-8?B?cFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 02ad374c-b805-4232-f35f-08dcccde55ac
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2024 12:37:27.6653 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3WGyRL8hDpuEVqkK43xvijWiG6UqKqF4w1dBPGxuLMZyBTVCqERDDC/SJlWFyfW0l1YLMzxd4uL38z7EAJjRUu97cOKPPhITOT7WN7zgMuc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8055
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725453453; x=1756989453;
 h=message-id:date:subject:cc:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=CZQ5jyFmQ0XfWKv4NPMde+j2x1iAWQEetLXQju3V4o0=;
 b=lscTrhokvcyK3rT6lbMDkJEmwyPCu17FXx2WiRj1ALAAC5gGPVxXFjJg
 7FM+6xU0ZfuhYOWzLfycthSVuzMrpgAFCS/V2Uy/FJk3AgCpNSXuoXRiA
 H+r6jaT5kdZoBoAxMV3tsI/N+G9GmQdw9iDssiGbmcn2FdD+onCYnmJbo
 fGYO2VLVR1APWrs9wsyH017ulU3x5VW5I0B1N7fUlPqoxLq/AYM5ZGz5G
 /GJidBIf573bNwu4icjgjDtcQRv9RE2EoZvMKVFDRvj6GLOYxY54dFL9I
 +n+L8A4xv7HX/3Sua2u4PtdIZgwMer74wO3Ply6nF+1XCFNBvGt+ZcQsx
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lscTrhok
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: make ice_cfg_tx_topo()
 almost const-correct
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Larysa Zaremba <larysa.zaremba@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/4/24 11:31, Przemek Kitszel wrote:
> Constify ice_cfg_tx_topo() @buf parameter.
> This cascades further down to few more functions.
> 
> I set the boundary on ice_get_set_tx_topo(), which could not be easily
> constified as it is get-or-set, but it's set variant does not change
> provided data, the same holds for ice_aqc_opc_set_tx_topo() in particular.
> That's why there is (u8 *) cast to loose const prior to entering into AQ
> world of const-obliviousness.
> 
> Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

I've forgot to CC netdev, sorry :F
I think there is no need to repost though.
Original URL (content is quoted entriely here) if it is more helpful
https://lore.kernel.org/intel-wired-lan/20240904093135.8795-2-przemyslaw.kitszel@intel.com/

I will make an alias for my git-sent-email invocations ;)

> ---
>   drivers/net/ethernet/intel/ice/ice_ddp.h |  4 +-
>   drivers/net/ethernet/intel/ice/ice_ddp.c | 48 ++++++++++++------------
>   2 files changed, 26 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.h b/drivers/net/ethernet/intel/ice/ice_ddp.h
> index 97f272317475..79551da2a4b0 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ddp.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ddp.h
> @@ -438,7 +438,7 @@ struct ice_pkg_enum {
>   	u32 buf_idx;
>   
>   	u32 type;
> -	struct ice_buf_hdr *buf;
> +	const struct ice_buf_hdr *buf;
>   	u32 sect_idx;
>   	void *sect;
>   	u32 sect_type;
> @@ -467,6 +467,6 @@ ice_pkg_enum_entry(struct ice_seg *ice_seg, struct ice_pkg_enum *state,
>   void *ice_pkg_enum_section(struct ice_seg *ice_seg, struct ice_pkg_enum *state,
>   			   u32 sect_type);
>   
> -int ice_cfg_tx_topo(struct ice_hw *hw, u8 *buf, u32 len);
> +int ice_cfg_tx_topo(struct ice_hw *hw, const void *buf, u32 len);
>   
>   #endif
> diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
> index 953262b88a58..f2ac1d265510 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ddp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
> @@ -31,7 +31,7 @@ static const struct ice_tunnel_type_scan tnls[] = {
>    * Verifies various attributes of the package file, including length, format
>    * version, and the requirement of at least one segment.
>    */
> -static enum ice_ddp_state ice_verify_pkg(struct ice_pkg_hdr *pkg, u32 len)
> +static enum ice_ddp_state ice_verify_pkg(const struct ice_pkg_hdr *pkg, u32 len)
>   {
>   	u32 seg_count;
>   	u32 i;
> @@ -57,13 +57,13 @@ static enum ice_ddp_state ice_verify_pkg(struct ice_pkg_hdr *pkg, u32 len)
>   	/* all segments must fit within length */
>   	for (i = 0; i < seg_count; i++) {
>   		u32 off = le32_to_cpu(pkg->seg_offset[i]);
> -		struct ice_generic_seg_hdr *seg;
> +		const struct ice_generic_seg_hdr *seg;
>   
>   		/* segment header must fit */
>   		if (len < off + sizeof(*seg))
>   			return ICE_DDP_PKG_INVALID_FILE;
>   
> -		seg = (struct ice_generic_seg_hdr *)((u8 *)pkg + off);
> +		seg = (void *)pkg + off;
>   
>   		/* segment body must fit */
>   		if (len < off + le32_to_cpu(seg->seg_size))
> @@ -119,13 +119,13 @@ static enum ice_ddp_state ice_chk_pkg_version(struct ice_pkg_ver *pkg_ver)
>    *
>    * This helper function validates a buffer's header.
>    */
> -static struct ice_buf_hdr *ice_pkg_val_buf(struct ice_buf *buf)
> +static const struct ice_buf_hdr *ice_pkg_val_buf(const struct ice_buf *buf)
>   {
> -	struct ice_buf_hdr *hdr;
> +	const struct ice_buf_hdr *hdr;
>   	u16 section_count;
>   	u16 data_end;
>   
> -	hdr = (struct ice_buf_hdr *)buf->buf;
> +	hdr = (const struct ice_buf_hdr *)buf->buf;
>   	/* verify data */
>   	section_count = le16_to_cpu(hdr->section_count);
>   	if (section_count < ICE_MIN_S_COUNT || section_count > ICE_MAX_S_COUNT)
> @@ -165,8 +165,8 @@ static struct ice_buf_table *ice_find_buf_table(struct ice_seg *ice_seg)
>    * unexpected value has been detected (for example an invalid section count or
>    * an invalid buffer end value).
>    */
> -static struct ice_buf_hdr *ice_pkg_enum_buf(struct ice_seg *ice_seg,
> -					    struct ice_pkg_enum *state)
> +static const struct ice_buf_hdr *ice_pkg_enum_buf(struct ice_seg *ice_seg,
> +						  struct ice_pkg_enum *state)
>   {
>   	if (ice_seg) {
>   		state->buf_table = ice_find_buf_table(ice_seg);
> @@ -1800,9 +1800,9 @@ int ice_update_pkg(struct ice_hw *hw, struct ice_buf *bufs, u32 count)
>    * success it returns a pointer to the segment header, otherwise it will
>    * return NULL.
>    */
> -static struct ice_generic_seg_hdr *
> +static const struct ice_generic_seg_hdr *
>   ice_find_seg_in_pkg(struct ice_hw *hw, u32 seg_type,
> -		    struct ice_pkg_hdr *pkg_hdr)
> +		    const struct ice_pkg_hdr *pkg_hdr)
>   {
>   	u32 i;
>   
> @@ -1813,11 +1813,9 @@ ice_find_seg_in_pkg(struct ice_hw *hw, u32 seg_type,
>   
>   	/* Search all package segments for the requested segment type */
>   	for (i = 0; i < le32_to_cpu(pkg_hdr->seg_count); i++) {
> -		struct ice_generic_seg_hdr *seg;
> +		const struct ice_generic_seg_hdr *seg;
>   
> -		seg = (struct ice_generic_seg_hdr
> -			       *)((u8 *)pkg_hdr +
> -				  le32_to_cpu(pkg_hdr->seg_offset[i]));
> +		seg = (void *)pkg_hdr + le32_to_cpu(pkg_hdr->seg_offset[i]);
>   
>   		if (le32_to_cpu(seg->seg_type) == seg_type)
>   			return seg;
> @@ -2354,14 +2352,15 @@ ice_get_set_tx_topo(struct ice_hw *hw, u8 *buf, u16 buf_size,
>    *
>    * Return: zero when update was successful, negative values otherwise.
>    */
> -int ice_cfg_tx_topo(struct ice_hw *hw, u8 *buf, u32 len)
> +int ice_cfg_tx_topo(struct ice_hw *hw, const void *buf, u32 len)
>   {
> -	u8 *current_topo, *new_topo = NULL;
> -	struct ice_run_time_cfg_seg *seg;
> -	struct ice_buf_hdr *section;
> -	struct ice_pkg_hdr *pkg_hdr;
> +	const struct ice_run_time_cfg_seg *seg;
> +	const struct ice_buf_hdr *section;
> +	const struct ice_pkg_hdr *pkg_hdr;
> +	const u8 *new_topo = NULL;
>   	enum ice_ddp_state state;
>   	u16 offset, size = 0;
> +	u8 *current_topo;
>   	u32 reg = 0;
>   	int status;
>   	u8 flags;
> @@ -2379,7 +2378,7 @@ int ice_cfg_tx_topo(struct ice_hw *hw, u8 *buf, u32 len)
>   	if (!current_topo)
>   		return -ENOMEM;
>   
> -	/* Get the current Tx topology */
> +	/* Get the current Tx topology flags */
>   	status = ice_get_set_tx_topo(hw, current_topo, ICE_AQ_MAX_BUF_LEN, NULL,
>   				     &flags, false);
>   
> @@ -2419,16 +2418,16 @@ int ice_cfg_tx_topo(struct ice_hw *hw, u8 *buf, u32 len)
>   		goto update_topo;
>   	}
>   
> -	pkg_hdr = (struct ice_pkg_hdr *)buf;
> +	pkg_hdr = (const struct ice_pkg_hdr *)buf;
>   	state = ice_verify_pkg(pkg_hdr, len);
>   	if (state) {
>   		ice_debug(hw, ICE_DBG_INIT, "Failed to verify pkg (err: %d)\n",
>   			  state);
>   		return -EIO;
>   	}
>   
>   	/* Find runtime configuration segment */
> -	seg = (struct ice_run_time_cfg_seg *)
> +	seg = (const struct ice_run_time_cfg_seg *)
>   	      ice_find_seg_in_pkg(hw, SEGMENT_TYPE_ICE_RUN_TIME_CFG, pkg_hdr);
>   	if (!seg) {
>   		ice_debug(hw, ICE_DBG_INIT, "5 layer topology segment is missing\n");
> @@ -2462,7 +2461,7 @@ int ice_cfg_tx_topo(struct ice_hw *hw, u8 *buf, u32 len)
>   	}
>   
>   	/* Get the new topology buffer */
> -	new_topo = ((u8 *)section) + offset;
> +	new_topo = (const u8 *)section + offset;
>   
>   update_topo:
>   	/* Acquire global lock to make sure that set topology issued
> @@ -2485,7 +2484,8 @@ int ice_cfg_tx_topo(struct ice_hw *hw, u8 *buf, u32 len)
>   	}
>   
>   	/* Set new topology */
> -	status = ice_get_set_tx_topo(hw, new_topo, size, NULL, NULL, true);
> +	status = ice_get_set_tx_topo(hw, (u8 *)new_topo, size, NULL, NULL,
> +				     true);
>   	if (status) {
>   		ice_debug(hw, ICE_DBG_INIT, "Failed setting Tx topology\n");
>   		return status;
> 
> base-commit: d6f75d86aa786740ef7a7607685e9e1039e30aab

