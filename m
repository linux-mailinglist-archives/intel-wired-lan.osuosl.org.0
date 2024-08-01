Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 935F5944574
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Aug 2024 09:33:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B90E84051E;
	Thu,  1 Aug 2024 07:33:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fMvCjDEytNBB; Thu,  1 Aug 2024 07:33:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A7DEA405E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722497582;
	bh=1WVeqKKzvC+//o8xIw5qQgu034NkuBSaJN7WUjaZyNY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JuK22lfOka136GNGJWGjnqcS7D5GYUzVcGmnVq9bKkKzo2VItzlWzNBa4TwRkmQ1q
	 x8a2t2e1SGQ7lyQuwbyGH+fNJwZMA8WSA+TQMPnhgL/vSZl74kClmCHJEgbWpr0Yci
	 PzZshamw7rxPP7vJjgqDwKdIfzJEjwDYR5V/+oDr2+1NA+3B18sZMcbrslvYiEyMBj
	 x8ZQxarXu3HqV3PTJOsT8vSmt5fGbkfqk9DbjLJuhIio8/osBmN8zohuqnKW4pmjjG
	 kOxnvE2uNWt3p4xoajhGilwMoyh5hr3ES6ySYpZSJr1GVeziQi1xt10omBSbh10N8/
	 BsoqRvaXNbJFQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A7DEA405E1;
	Thu,  1 Aug 2024 07:33:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CB3711BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 07:33:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C3FBE406C1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 07:33:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4iWz_-C8kC6Q for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Aug 2024 07:32:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A1B90406B0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A1B90406B0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A1B90406B0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 07:32:59 +0000 (UTC)
X-CSE-ConnectionGUID: CjoOrwe4Semum/3e6iISrA==
X-CSE-MsgGUID: 7jG+JCi5TUSkDxltqG0Xtg==
X-IronPort-AV: E=McAfee;i="6700,10204,11150"; a="45844387"
X-IronPort-AV: E=Sophos;i="6.09,253,1716274800"; d="scan'208";a="45844387"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 00:32:59 -0700
X-CSE-ConnectionGUID: HK5n4vhQTBG0EH/4UkIsQg==
X-CSE-MsgGUID: jzYAfpatSyqmLUj8dBtk9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,253,1716274800"; d="scan'208";a="59071763"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Aug 2024 00:32:58 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 1 Aug 2024 00:32:58 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 1 Aug 2024 00:32:58 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 1 Aug 2024 00:32:58 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 1 Aug 2024 00:32:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ufzlrgjxFs3qATzqPgE8vFQYbosFk4clALP+S/afAoAjvo4/jDlsMp2s9swdgm7OzmoK1GGKksC5oSxcDXNzcYc+FYizBW4jFZQFn2NRmSxkR180EEkoRycxYzcZY8E2kaHJbpF46rNDlsCZ5r++K6QuzlCTRnQR59Tz+ig7LMjJyEg7NKZ7KEHXGUICo+rLAtVGZE6bf0ruPWqxvhH4kFzgLi0EAYZZBwJ2goA3I2n2o6JleYCaapbmqaT1oZtWKVTyNS2dfHbDO3lQsG+qxocrvCJgAk4bdsF+QXLu8aIqxZCA2P4HSPhaO/0Pe4jb9f/0d/7o1/RVopmVj3OYZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1WVeqKKzvC+//o8xIw5qQgu034NkuBSaJN7WUjaZyNY=;
 b=Nsw5a9gbBuMdus4guqein4X6IN7HCi/3Bi8lCtcfgfmP8t5qo+vUHz6OnTc5igyTBpKNS9zfskbO2UlbRuGsKu3IPXn5mrGiSmoTtUnmP+vkoXGDep5W4HmKInMR8SLrvQPeWKMWjKDlJr9Tcxv4UUQdBWQWVpfJhi3Q7lRCzSQQu1wAzdFYrhxCo7v7OcWByMrTENim791hfLwPMo/sJMXsMK8phHwh1WXP2RFoo5rfsKDqCTnpTmQrgO6J0yhpI8y3njwiivCYBlVE4EcGd0pL2hHQHy/Qc9M2iJmisjergMlVLgulbw04vy37CAFYiyu2IQd0w3rc6Le7NO2HDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA1PR11MB5803.namprd11.prod.outlook.com (2603:10b6:806:23e::8)
 by LV8PR11MB8700.namprd11.prod.outlook.com (2603:10b6:408:201::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.22; Thu, 1 Aug
 2024 07:32:50 +0000
Received: from SA1PR11MB5803.namprd11.prod.outlook.com
 ([fe80::e976:5d63:d66e:7f9a]) by SA1PR11MB5803.namprd11.prod.outlook.com
 ([fe80::e976:5d63:d66e:7f9a%4]) with mapi id 15.20.7828.016; Thu, 1 Aug 2024
 07:32:50 +0000
Message-ID: <00161b3e-44cf-4335-af66-85ffecd673ae@intel.com>
Date: Thu, 1 Aug 2024 10:32:42 +0300
User-Agent: Mozilla Thunderbird
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>, Simon Horman
 <horms@kernel.org>, Richard Cochran <richardcochran@gmail.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>, Sasha Neftin <sasha.neftin@intel.com>
References: <20240707125318.3425097-1-faizal.abdul.rahim@linux.intel.com>
 <20240707125318.3425097-2-faizal.abdul.rahim@linux.intel.com>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20240707125318.3425097-2-faizal.abdul.rahim@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0026.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::13) To SA1PR11MB5803.namprd11.prod.outlook.com
 (2603:10b6:806:23e::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB5803:EE_|LV8PR11MB8700:EE_
X-MS-Office365-Filtering-Correlation-Id: 5d31c405-8fad-49b2-7973-08dcb1fc25e0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|921020; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bkhPa0dQd3YxclQ3cmtuTFNFYXBySFpWT2dWOUhIUmkxVmtqcExZUEJWVm5B?=
 =?utf-8?B?NnJEajJLZTlybEJvUkNCTXBIVDJHQ2lUdlV2Q24vQURTM05oeVo1dzhhTGxl?=
 =?utf-8?B?T1JhTG10WVNIcmlnaHVGMTVSNDgwTnE1T2NpV1lvdVJvMWR2aFIrNEtCbmky?=
 =?utf-8?B?MGtqM0ZMZ0hUSGhxNHMwclZSUW1qYU1tTHlaTmdEaEMzYzZvc0wrdlBkaWJj?=
 =?utf-8?B?dkRIT1ZjL0NMcjVCeXNiR1N3ZkROZjNkSm4vNGc2b0VOUlhxMFlJaEZUTFhO?=
 =?utf-8?B?QVdRQlB4NTRyWmN1S0k0VzI1ZEphOERrVnplQUJJc1RwejVVbXJNUUZMNU1Z?=
 =?utf-8?B?dnVURlZZdkR5T3ZRc1duTlh1dG9jWXJyNWJ4d0l3SU1FeUgzRmtjTDc1SVFI?=
 =?utf-8?B?dVZSbXQ1MEpuZ1lWdDY4WHIwVXc1RDljTlNidndKL05hUThPTW82NGMvSVQv?=
 =?utf-8?B?bE9jcWNRZHY3eVZXT3pJbGhVVHRINVd6QUxkZVg2WVlTNUM1NjNJUkFpcWF3?=
 =?utf-8?B?U2k0L2xqdVlaclRNeExRRWxNQ1VNa2N3Y2VkYUhjbElBM0hwa0tUMFdMOUc0?=
 =?utf-8?B?MmszMnhORFlsdlBTd2R2RzFhbDBCdTBOTkVBZGRTTTRCZnhZZENmcWJBYTE2?=
 =?utf-8?B?UEt0SWJHRTJ1cmcrSDMxalk3dDViZzF2bE8rd1RlajBSVDBDbWQzaFFPNVhH?=
 =?utf-8?B?ZVFPM0lvRVp1VDZaTHdzOHZnS2FSTE9IQi9YeXRxNlE1UUJFdEY3VjJ0Y0NL?=
 =?utf-8?B?VmhkUGtKR2RsRDF1SUZaeEN4Q2lkT3J4OFNmeE40bThZWEhNK3FoeU9mOGZX?=
 =?utf-8?B?UmJIRzZoNTRTekp3Y2dpRFQ4MGN3K3kwMGU5OEdQSTR1NzBlYUtiVXZ4bHlT?=
 =?utf-8?B?UlBLQmpyNzRsRzIxWHI0U0F0Z2NuQzMwOSt1UElPRWV4eWQwR1pUYkliOFNI?=
 =?utf-8?B?OHhvdGxtejhxaitMc0sxRDRldmhVOUpoN0NnOVVFTFJ3WnpHRGY2R2w0UDJB?=
 =?utf-8?B?dk15ZitJRlFhYllaQVVpOFZXdlBxM0gzd0Y0b0p3cWxCVFFpeEl6aHVnekUr?=
 =?utf-8?B?a0dNMFFPWXN6a0dpT0MyeGhkaE1ZWXJjajV3TTgwRDFxQThFWDB3ZVVJQ0Jh?=
 =?utf-8?B?R0d4Y2RrY1BmVlIvckFWNTdRRGFGVjY0YmpRaFlPR1p3RVo4WWw2VVhMQXlE?=
 =?utf-8?B?T2Nqc2dxY2N2ME1rT1BlT0kyUXdkUzdPeWt5WXVwM0tOVFRDbG9FMVE1c0cx?=
 =?utf-8?B?dnRTT0lVQjE0a29DQ3FndTdLUTduNFlzNVVPblJtaFErb2xtK01CMThrNlE3?=
 =?utf-8?B?WFBwdXYvWVV2b2VBNXJ2ekQwOFM5MXB2eW5lSGtsK1RabFlUWDRIYXZ4MlZ4?=
 =?utf-8?B?SnZzYWxxWC9DM1d2YUM4b3hlYVllNkpuSjhTUTdFSlJCV1V3V1hjN2JMbUd4?=
 =?utf-8?B?RWR5WVlkcUpDbVIyOHVWd1NDaERPajJkWW5ZV1VCWEVtSHpYeS92WTdwTmNx?=
 =?utf-8?B?Q3lOLzc1MmF5bktMSFllUGdTRlB5MUgwdGY3K1FnZmJoM0xkV2JMSXp0Nkx5?=
 =?utf-8?B?eC80cXVad05CSzFBUCs4ak5jZ3hmTXhsd2dkcDZRL1V0UzFWejdUTm5VWTBM?=
 =?utf-8?B?L2xpV0RCNUozWVhoTXlWQk9WVzNqQWhxMUNtSTFKZGZSUFdBd1RyRnFYMzV2?=
 =?utf-8?B?b1VFdWdXODJPTlY0WVc2ZE5Db3hiSG5waXlDdWlpcDM2KzVmYVN1Rk5ISTlP?=
 =?utf-8?B?MFY3bnlGK0c0NHdkcmF0MGFKQ2toditlN0tiYzg0RzJYT1JxQVB0ZzVjTXRr?=
 =?utf-8?B?NlVmYmFqUzdtYzg3aDRZbjFXYmxwWTE4ZERoazVwc21uL3QvSjk2UHlnczJP?=
 =?utf-8?Q?Fu/SVICb1QBPN?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB5803.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(921020); DIR:OUT; SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QTEzQVI1ZHl3ZGowcUY4eEhWWTRjVkd2M1N1YVFPeityVzI2WnJ6NGMzY3Jm?=
 =?utf-8?B?RnJRRUU2UGdzdWlwMjNGUHJJSkN6NVFNazhodmpjcGlNelVIZXc1SENUb3hp?=
 =?utf-8?B?QURjaUZmeG1KbEJDNEw1YlRVMnJKSGtDUmtLMTMrb0F6UlpKMG5vWkdDbS9K?=
 =?utf-8?B?RVRYNTdqRCtHYXVSVk5nNEk2R1N6TWpta0F5aSthZTdjNHdEbHlkS0V2eWFy?=
 =?utf-8?B?R3haalB6bXBsL1AvUmNqWGVMbklrWm9sa0E0ckkyRmZFa1hvK0Y1Tm1mK2Qv?=
 =?utf-8?B?Q1VpdStCS2QwVmFZb0xILzAySW16TnBJcVZDa3VpQkFGdkJHVWRROVRqbjU1?=
 =?utf-8?B?dGxZZGxmbk8zSExick9ZSW5HZUdKbWE0VFQxZjVEK0lnYjE0MzdKWjlHcFk1?=
 =?utf-8?B?OWZWbUhUUzE3ZFZNOWlSSU04Rmk0Qjl5MXRsY0JVYUJMbFB1NDRkRjFQY1pZ?=
 =?utf-8?B?ZU1QdGZwSWJUUGNZQVlCdTdMenFEaWpwUFhScjdrcjVRU0hMV2FDQ0E0M09Q?=
 =?utf-8?B?UGJ2b1Q1MjQyY3cvZSt2elI1QWV2djh0RktqSnQwblo2S1VVNG1jSlM3eUpX?=
 =?utf-8?B?TlhnQXFZQWQ4cHY0Q2x4ZDh0L3VzQ1g5Vmc5SURSOE5kbkZQNUN2U2dCM2FM?=
 =?utf-8?B?eno0S3BuYVFLa3ZnOGM2YVpoR2JKNk9SK2E2U1pEcEJJYnlSVTZ3cTZ0T2ho?=
 =?utf-8?B?Tjg3ekFZNE0xZ2tsM3FsN3FqUjg1a0pQbnRXQU5ONUlDSk5xVWp0RUZ6elZi?=
 =?utf-8?B?dWR4bWhDMDBCSEdNVWZHRHluaHhMY2NFbllrUGRUeFlDZWNiaDkxQnJqckdJ?=
 =?utf-8?B?T0xxRTZZd1Jic0RhNUJCZml2YXNvME9qaW5jck5ZSnZtSzlzNlB4VzRvL0Ju?=
 =?utf-8?B?TFNVS3JaSmFJaml3R1pnLy82djVnUXRjSDlFYitxamhtRnFtWDRmbW80cmJQ?=
 =?utf-8?B?ZFRLbzB5TkhhdGpnZEFpbkF1Nk5xN01NR1RhQ1dGS3JjSDBVenhzVDV2YVF2?=
 =?utf-8?B?L1RtTmpiRjVyUjE4ZXFSVHBYZEJ6QUhubit3SzFRMmI5U3pEanlORVA3RUtT?=
 =?utf-8?B?WHBZN0ZYWEFibGUwU1p4ZXZtaUluTVBWeER0bW9wdUMwUVJpMXF4T0dNcUZS?=
 =?utf-8?B?clR1UjRMT2hlbWpBbVROWkU5T1pYQ0FxZ3NIYldCTHQ3OWt0UlBpcDYvcTNX?=
 =?utf-8?B?akZBbnhnMFZHNCtQcEg0TWdUR0dtYjNBTEpYN0RNbElsaVJucUV6VW1CTnA4?=
 =?utf-8?B?QUxKRzl4OVhXa0UycEtheDArSnFHVnFFOHBUVUgzSGdWR3VFSDUzWmwyZlhO?=
 =?utf-8?B?Z28rZ01kV2t4amllVWM0WE5NR2Z1MU9PaEw0V0tsaXJIOWJvbWhwak5TSWJ5?=
 =?utf-8?B?RmM0MVZjRjBZYm9rakU3bXlhLzhCVmtOd1Q3Yk9BbWZyQ2taVVlqYi9HV0di?=
 =?utf-8?B?aHpJRmF2L3dBU2RFWm1Rdys0ZHBxVHNBNU9HTE83R2JKc1RYMWZoK0t4YjN2?=
 =?utf-8?B?OWEyM2FXbGR1UEpmRVY2MERFRVJ1QVZRV2FHQkFxQ09RUDIrZ0ZYdStvNkNB?=
 =?utf-8?B?SnNQeGJ6ejZldFZ1MVAwVlBwT0ozc1dDWUZEMExRQUM5OGJBdEFSdUNzUURP?=
 =?utf-8?B?QUxnTVA2NUhRbDBRcUtUUGp3Vi9QOXVwQWQ0TzZrekprZ3VJVVVHb2lsNkx4?=
 =?utf-8?B?eldnNEEvUjN3aFpWWTM3SmlLUEZQSlBpSG56K0k5Yi9ocGNIa1MvRWwzU1I5?=
 =?utf-8?B?ZVZXU0pXSUxGb0JlU2VCbjhwK2ppYm1xQno0OEVvcW55RURyTGhYOExiMGJ2?=
 =?utf-8?B?Z0hvVkZWNE1RQVQrNHZoOGhlMDNPZnVLWmtja01oRUVJWm1aTGYxcWkrM3dT?=
 =?utf-8?B?eW5Bd202dFI4TXFJUEsyVXdKTGR2TTB1eEk3Nk85UTBZVlJTZkZUQmhDaTFB?=
 =?utf-8?B?VGdxQzFwSytJVEJyNUdlMVZTWXF1MGsyV1VwNWpmQWJxcnFzZ2FUSDVTMUZ5?=
 =?utf-8?B?clhMQzhZakhHQ1BaRCtBcFZyWmMrVy9OQkYvaGx6ZVcybnFPS2t2SUt6R3Iv?=
 =?utf-8?B?ZG1EczdndjhkYWY0QWx5S0diVmtIK0N5cjJHMSt5MkJhSzJOTDlSQ2NIUXYw?=
 =?utf-8?B?Q3FSazYwZ2VrZVRRdVZaS1BaenlFNEl3WXhUcmF6a20vWm5ZMlVidW9ibnJX?=
 =?utf-8?B?bmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d31c405-8fad-49b2-7973-08dcb1fc25e0
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB5803.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2024 07:32:50.7645 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PjoRyBV3pqrfRMeBgjUU//J/W7TaUBWH84CvnDMFkb2HUeupTDyVLOYWhHt+jhGMpCXBkyRk9vPij8Qr+kaoSIEsNXkrhB8JAWWXuYGb/Ok=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8700
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722497580; x=1754033580;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AAJb5rGkZ4Id6r2LSgF+hISkmcgg6mOeHnM6qposvzQ=;
 b=GNhkClL8BfLXfGioJDPQfrx7p6lZkCHQpMvh2h2aC8yhZ9RimrQ+AGcR
 ilc6Ms1PB3JJfST763ukcx1sQhr1+khGA4F5ykHF7/IQvw1/26Cg38Nkg
 6iKjuzjJK2bEX6V1bisyUWfOu4cStIXXVD5KmbngnYhKbyZmpYQeYvNOk
 KtzJRfMWCthZutgl6Zj9pcaw7lBKlOxVeIn26ppcq4JZggdNbk18NmpWe
 YvaR3jBXhkLFbHArlTc2nba6L5k+NJg7+v6ywFGeYPwBxlC3lWq2JVCWY
 Vhnf0kkv3848qBZcCgse9rfg7k8gcSzufumuuRim4yqGpoibNHTmEU0oW
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GNhkClL8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/3] igc: Fix
 qbv_config_change_errors logics
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 07/07/2024 15:53, Faizal Rahim wrote:
> When user issues these cmds:
> 1. Either a) or b)
>     a) mqprio with hardware offload disabled
>     b) taprio with txtime-assist feature enabled
> 2. etf
> 3. tc qdisc delete
> 4. taprio with base time in the past
> 
> At step 4, qbv_config_change_errors wrongly increased by 1.
> 
> Excerpt from IEEE 802.1Q-2018 8.6.9.3.1:
> "If AdminBaseTime specifies a time in the past, and the current schedule
> is running, then: Increment ConfigChangeError counter"
> 
> qbv_config_change_errors should only increase if base time is in the past
> and no taprio is active. In user perspective, taprio was not active when
> first triggered at step 4. However, i225/6 reuses qbv for etf, so qbv is
> enabled with a dummy schedule at step 2 where it enters
> igc_tsn_enable_offload() and qbv_count got incremented to 1. At step 4, it
> enters igc_tsn_enable_offload() again, qbv_count is incremented to 2.
> Because taprio is running, tc_setup_type is TC_SETUP_QDISC_ETF and
> qbv_count > 1, qbv_config_change_errors value got incremented.
> 
> This issue happens due to reliance on qbv_count field where a non-zero
> value indicates that taprio is running. But qbv_count increases
> regardless if taprio is triggered by user or by other tsn feature. It does
> not align with qbv_config_change_errors expectation where it is only
> concerned with taprio triggered by user.
> 
> Fixing this by relocating the qbv_config_change_errors logic to
> igc_save_qbv_schedule(), eliminating reliance on qbv_count and its
> inaccuracies from i225/6's multiple uses of qbv feature for other TSN
> features.
> 
> The new function created: igc_tsn_is_taprio_activated_by_user() uses
> taprio_offload_enable field to indicate that the current running taprio
> was triggered by user, instead of triggered by non-qbv feature like etf.
> 
> Fixes: ae4fe4698300 ("igc: Add qbv_config_change_errors counter")
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c |  8 ++++++--
>   drivers/net/ethernet/intel/igc/igc_tsn.c  | 16 ++++++++--------
>   drivers/net/ethernet/intel/igc/igc_tsn.h  |  1 +
>   3 files changed, 15 insertions(+), 10 deletions(-)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
