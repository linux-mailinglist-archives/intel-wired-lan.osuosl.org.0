Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sMxRGHvZAWrPlQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 15:28:27 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D7650EE5B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 15:28:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 27D4A41603;
	Mon, 11 May 2026 13:28:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M0sZjX_Qmkao; Mon, 11 May 2026 13:28:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 60547415FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778506101;
	bh=/GRm0aIBMKf8x3ZoULz3UdzZuwTV+TKY9E+l8ihn37k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5kp9KSdVSUvVSOpW0X/9ubsEUKEQDUYA2IkH+c6ipg6u7e+gNre/wPBLyzt477dv9
	 BgdL2C8beUCOYSlP464YCnL8pslY/8dvoFhGstLybpVtEttVV0pi/HZYAukfSAVVXe
	 5o9AqJFrOduvsXxFfnnHLGhZ6eQ0CrCC0MJhfKKl2PYlBGXBpcO5lqpbeiCdei7TFx
	 R/feZkedtycLOyQT/4xUryCWWGh6kycFroFvjCKwZJlVq3eGSvGxTenizIgSerEGcP
	 f6v0mnfiiGyRZwk0Nth5uHLn4sMNgjDe0aKULATfI0qm8YUtnxc361EQJXv5p4iZOb
	 MzzH38hHaqBog==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 60547415FD;
	Mon, 11 May 2026 13:28:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 86204272
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 13:28:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6BA4E40338
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 13:28:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rhFObzagFk9f for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 13:28:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 49997402CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 49997402CE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 49997402CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 13:28:17 +0000 (UTC)
X-CSE-ConnectionGUID: IZW/qwOtR4yTe36LNSSxSA==
X-CSE-MsgGUID: kEUtsru8TbK1C2ijyQy6dw==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="79112995"
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="79112995"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 06:28:17 -0700
X-CSE-ConnectionGUID: u9/elsXhRqyOyLHtfSWS5g==
X-CSE-MsgGUID: g1i04Jp5TEyKt9QeLnUg0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="260935474"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 06:28:16 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 06:28:16 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 06:28:16 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.55) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 06:28:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TBrs49kJ+eZrT0iKBFOmgpg82bngxdkTmSoI0YLqsfez+cY/5fwErcyieiWsEe4guuvop77QrIcIErfYKHKNu5cdN6p97WEaBsaYqOYtXT1eubKdzPKtPZNZBgOvnWLEIaDAf6WRvVpWsSOg2RqfVeM1y/5rD9b43jmUZtgC56H3sCwBdKyM0YJDY1ooF4rvwhJI+PbHMaYi9300/IexNwGwYdnAXy0lHPm7GVJ+lw5v6OX2kveUSB/2XwAOWGi2RXregkN30AwOs30fDCf/ESyFuQ/zhzsN5Gu12osYQR/en+MdzRtyN66IgS3kNzK6JdZeb325+JyTDpxx8v1ixg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/GRm0aIBMKf8x3ZoULz3UdzZuwTV+TKY9E+l8ihn37k=;
 b=N8h4CgSHFsu1fsJgE/RzRlILDYW+SlhVYehGwF9YLRGbqN8EGO7ssDesvk0ctX5GGHAXrtOymy2gn6wrkl2kJJgawqOZKG6TvtgbjxZbnhyZXbRY+qOQQNtRR+myLXkDez5L2qvA/o2KGK1kWN/uVGgsFBfk9GW9vATucERbNEa5sfouIerWB3fTcQ3R7YkR3Tf7YFoNqoXhbzqdoy49XEjAHRykmmlx4s7poh/MZGLM3+Jm7i/D+tlp5okHMD2J7OBMzIGBNmR/FEwhZb68UNdKHewX+XPVq4xg4njmeV9Slx3y46Uzp0QeFXR7Wo/vYVPEIHJJyPCBPcOIGM+suA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SAWPR11MB9569.namprd11.prod.outlook.com (2603:10b6:806:4e4::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.15; Mon, 11 May
 2026 13:28:05 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311%5]) with mapi id 15.20.9891.021; Mon, 11 May 2026
 13:28:05 +0000
Message-ID: <23d19bb3-041c-4b30-8344-6188be3d13db@intel.com>
Date: Mon, 11 May 2026 15:26:34 +0200
User-Agent: Mozilla Thunderbird
To: Jiri Pirko <jiri@resnulli.us>
References: <20260508124208.11622-1-przemyslaw.kitszel@intel.com>
 <20260508124208.11622-2-przemyslaw.kitszel@intel.com>
 <agG-09NEyj4r_INc@FV6GYCPJ69>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <agG-09NEyj4r_INc@FV6GYCPJ69>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VIYP296CA0002.AUTP296.PROD.OUTLOOK.COM
 (2603:10a6:800:29d::7) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SAWPR11MB9569:EE_
X-MS-Office365-Filtering-Correlation-Id: dc88303c-01b8-4a52-f38e-08deaf6121f0
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|11063799003|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: IZIQPbOeMeNSQphKJTeGQFrnhjiZuC0VmM0LZ0GkYacLCVFyv/xbjk6v9jzUPgLABin7LdUP3hbb6yZjU5Jam/A5Xsr3pLznBDbasvDHoRXmxpKTtRuaFyXh/vGY82txnzK6nwdzR+vBTRzmEO5xlHrvHZA4grk4vBsqGeo7kHshaWDPh/DN1vcZnZ0DRU6gbCh6sgpvndg8jdCl7K2sdSLYFeExcG5DAqTpWIJzPeZra4L0+FhWnI+bRn+DvQni5vFnf+369j8fqrDtAfos4Ui4+b7TcDUvYLVccIoLiGRyR3rDM0oHJSfilTuiSkA6CQXTffyeOs8fyIc4UIk6A5dR3uNPH4IgW2fX8DQQJsc9c6R/usDF8YItnP96CyBhMzTWxQkSulX7uAXclyB6ztbBuW18uaFZwma4JASGQqZvRUy6bLbdKcthoX/KWuyUxhN4azm/SEQqV0EqV9GOCSJ89p7CeEtukdPwRHebNmIZ8437qYjpOd96Mkll5bPnOrwtlgqRsImZUUQYMjHA0IuWyaWNV+KxpzkvzzpmOVF3ppak+ghD7KQB6dT7dLNPgx6Itw3z920pxnxVOcJzDPk+5QHj9ef96PWgWELn7e4lLAKeRqGf0n8qJZ2EZEvwVMafWedmia2iorYxBwUiUBi/YpTQbc5CupLpS4FyETjdl/QT4Lwi0+OpputJh/9I
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(11063799003)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WEthb3FsR0hDOXdtdU52bUhVN2xyamdLVXJUM2RoYS94SEp1RzVFWHYwaTZQ?=
 =?utf-8?B?ZFZBd1JUM2RzcFplMjZ0RjE2NUFUWUZndXNvRFpZVHRDd1lkOGZGRnVQWkEz?=
 =?utf-8?B?cWZ6RlMrcXVMV2tmb0drWjZGVTc3RGdVMnd4UGJiSGFlUGNsVEZNQlZDcysz?=
 =?utf-8?B?czlQQTliUlhzYW5tSXhxY0JKaEVidjlvamFtRllDMVpONkh4a0oraTRScUk5?=
 =?utf-8?B?SXIyVlBpekV0Tk5vMmQ4c1ZVdDUrZEw2enpXV1dBTThoVEFyNjNhWUlIK2w5?=
 =?utf-8?B?aXdpK0tiQWJDcXJQSHhrLzczanc2KzlVd1pNaEowWkh4d3BMUmpmdDkxYUU1?=
 =?utf-8?B?U2tYUVdZUEZteUxTMjJSZjdpWVF6U3owVzBkNVU4MWEwckI2SWZKaVlyVmJG?=
 =?utf-8?B?QmlrQm0vNnJrMVptQTVrZ2lxWms4V1Nza1BmYzg3UjF5cDRzeE9UYmxWUEJU?=
 =?utf-8?B?TmtnVkp5dVI0bUgwTlpOZ0lCdmF1R0M2U2pMTUNYanB3TkNYSUpWRktqWVJP?=
 =?utf-8?B?UnRJNFNFWTRmTW1ucFRNbzFRNnNJcU5KNW9Ed2RpNldiWm5jNzVJOHJIMEk1?=
 =?utf-8?B?bi80Z3RZcUlYNTFtcURXSW8zdGpaMlA2NXIram13YjVUdXh3WXZLVjN4ZE5a?=
 =?utf-8?B?Mi9TVmNLVHZGTGxNaHZpNnVYNVJIWUQ2ampKSTJnMjZNMlVLNGxHbXphNE55?=
 =?utf-8?B?Zk9NSUc5bUNDN2hMRWVUVlh5NTI1SUo1YnNnRDZ4akNiQzBuZmVEZU96MThX?=
 =?utf-8?B?dmRJSnNoemRaaGJuSCtHK3lFZUl0TTlrRXN4bWJvL1FyMGFPeWxFNWQyVVcz?=
 =?utf-8?B?N0RPR1YzVkNvUEJjd0JBVE8wQW45QzJhUjRHSmwvSTROUHcvc0EyeXh3bWVR?=
 =?utf-8?B?T09weUNUbndXbG42UW1Pek1RV0RKWVAyZ1JHSTVJRURMRjh4VmVOS1hrMkV6?=
 =?utf-8?B?K01QUjAxclhycHdpcEYyQ3RoQWdyUXhNNTNNY2d2K3ZxSUZYcEFyMjFRV1Er?=
 =?utf-8?B?UURHbEtPWUZMRHE5MnNhbm1BcU4vTmVocHI4WiswS2tUTFNjSGt4eEFCUDFu?=
 =?utf-8?B?amZLU3J2SFI0ekt5WllwcVU4UEE2TUpMdVB0WlVGNmpOOTZ5ZndtazhTN0hm?=
 =?utf-8?B?bERaemVkY05uT2xpMi90V3kveFRnWmJtTzd3aFc1Zk5qM2FBcTFtMjlZbHdF?=
 =?utf-8?B?czdCeThaSHdKcUlLejkrUEN0UFYzeGJjbFl4NlRrT29TWTJXbnc3VFJuSTBO?=
 =?utf-8?B?c0pIM2hKY2lJMHQ1MHZyRitiMlFLMllZM1pKZmVibkJGQ09yY0g4c2dzeHpW?=
 =?utf-8?B?a0VTRzlxMmZscHFKUk5NUnJob0pEcjhZUXNYMW13WXE4S3hzaXNNWDR1dEUr?=
 =?utf-8?B?ei9ORTdvR3ZuS2pDU01qeEp3WExRRDY1M2ovSXJ1OVZKb0hPSXQzUWZMenBK?=
 =?utf-8?B?d2MybE8vZnROL3paQW15a0RYSHBkZTB0d0hYSlg4azlrQXZPcE1MdWFRV3RG?=
 =?utf-8?B?YmtGQWV5N1FEVC9LcXpFWnBFZHFyWUQ1K1QwTWk2cGtKb2tnMmJ4c1JITmZE?=
 =?utf-8?B?VXVkUWpkTUs2Sm0rck5yaXo3cGx2Ynptb3hJWGY2eTVIYXQ5NFNCQndFUm1G?=
 =?utf-8?B?RExEcDNCem9QZjk0am5ka3c1alNWRlgxQ01yWlNCS2FvR0g5Zi9FT2JFSVVI?=
 =?utf-8?B?YnJWeDh2VmxkZjJMbUJybW5lK3ZIald2eEZ1eHAxNythMUE0cnZuaG5vd1Uw?=
 =?utf-8?B?Q3AvL2NJcE82R3VNZXZDSTVKQVdvcTMvVHFsT1JTR09qVWRFWmR6WVU5dlFQ?=
 =?utf-8?B?WnhCQXVUaVBpOWpSSGJJdndIRUhVSmhkTWZiZnBLbUhoSE9BTWRCMnFoR1hK?=
 =?utf-8?B?Q3gwclEzc09oeWZ3NWRaT3Z4dzFWaldzNkxRMzV3RUdjMDB4UUNFVDBjNDR2?=
 =?utf-8?B?WkFQSXYzZkhhN3NQZUdEcUpTc1loRmhOV0l1YndyTkhZUFFnTHovZ3dVZmFC?=
 =?utf-8?B?K095Yk5SWVpFYzh1ZjBzWWszakNsRzZsT1VRUUM5dlN0NFNhSWhrQ3FLbTQ3?=
 =?utf-8?B?Z0pDNzlKUGY5Y1pJMlRvV3RRRTc5cjcvMnphaGVsZ1VoeEJzY0E2aDFHTFdW?=
 =?utf-8?B?emJlRlpzM2I3Ukp5T1hLaDdkWVg2bnNyNkFZN1BZVUwzNlJoek54WndKbnpR?=
 =?utf-8?B?dUx4eDczOUlMbFhFR0l4OVVMTHFlNitHdDlQYVIrbTdQT0lsbVJrcXhVTXVt?=
 =?utf-8?B?MW05cEw4SUkyaTdYeFZ2RDdsTTlpMnhmdGdqbUZFM21WUXVtTVJmZHhjd1RN?=
 =?utf-8?B?NlV6aDh4andjYzlvSEt5alJ3dzZaTVJ3RmRNcW5yS2U5eXlpK2E1bVRSVkJL?=
 =?utf-8?Q?Y9kI66FruoWB0Dfo=3D?=
X-Exchange-RoutingPolicyChecked: eoKvlljuQdfN1MVKBSTvSxcc2br3P+lyt+FqX83WqAbWj0mhImbolUxOGzwXgownhyPd5b2tR0skAVysRAX0ZY7Kq279F9CgGHl6Zg8rOKhHZATrM1sdC3PqRjfqn2uzypfv0xy8qY7ByGs8t8AEIWirxN9tE/bc6CMN+WqAalUwGQNnT1Nk6rHG52SAUp46MgJHIPmh31IJ12pEPQoMvQKD41iq70wSU0vCXpcvClaCr0daXJ6/Mthk3mGBJOZzS+4mNirSXscJW1JHeQM00Tm0+va0T0cDEpkniHNhiqMb41Qn0gKU52kgkb67VqrbrJtyPOkf3vGFiVic6aYkPw==
X-MS-Exchange-CrossTenant-Network-Message-Id: dc88303c-01b8-4a52-f38e-08deaf6121f0
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2026 13:28:05.3313 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QFt/x3weX4RS5itMgQobaWE1vv/O9IGaDla5eaZHhI9Oh4bpx81FDb9r95KATfYROI5gmU5NzxCnj+ebRSD0GsUE6p93b1MZikNij/62c1Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SAWPR11MB9569
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778506098; x=1810042098;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uXuDfcPqfFcTaZKYmsBx2Bqv86rAb6CtFjxPmUFutQQ=;
 b=kz80H2dUZTn3vv2WDzVtz5zwGnjTS/rCVySK1/PjRSSqwaOc6FksriiN
 ZQYxrF44drtqeuqeY4a8LfVZUjEcdKYjwvF5aZHyMw95PmKiA8a+NE3o/
 K5glNRRu8Yz2gKNoPxb9Fqil407WgHBnJSKM2704t8OkpV2KJMhXkKxfg
 3tv1ivQJXqOY0OrG5QmU7rtwEtHUs46zYWSWq7AeDfycLgR6o6dyPd0J+
 mJtqkw29/qfKCmb7H4F3g88KPaboJUKvYs9zYGosaTBjfxCy7+8DcjrgK
 tVVuHAdl4RTBU3KrbKzybQEw/zGJViGUZJgTmGiROUWySwGtzd0XK6So3
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kz80H2dU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 01/15] devlink,
 mlx5: add init/fini ops for shared devlink
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Cc: Eric
 Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 ananth.s@intel.com, Leon Romanovsky <leon@kernel.org>,
 Vladimir Medvedkin <vladimir.medvedkin@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org, timothy.miskell@intel.com,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, bruce.richardson@intel.com,
 Lukasz Czapnik <lukasz.czapnik@intel.com>, padraig.j.connolly@intel.com,
 netdev@vger.kernel.org, Mark Bloch <mbloch@nvidia.com>,
 Tariq Toukan <tariqt@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Simon Horman <horms@kernel.org>, Michal
 Swiatkowski <michal.swiatkowski@linux.intel.com>, Saeed
 Mahameed <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 17D7650EE5B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jiri@resnulli.us,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:ananth.s@intel.com,m:leon@kernel.org,m:vladimir.medvedkin@intel.com,m:aleksandr.loktionov@intel.com,m:timothy.miskell@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:bruce.richardson@intel.com,m:lukasz.czapnik@intel.com,m:padraig.j.connolly@intel.com,m:netdev@vger.kernel.org,m:mbloch@nvidia.com,m:tariqt@nvidia.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:michal.swiatkowski@linux.intel.com,m:saeedm@nvidia.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid]
X-Rspamd-Action: no action

On 5/11/26 13:36, Jiri Pirko wrote:
> Fri, May 08, 2026 at 02:41:54PM +0200, przemyslaw.kitszel@intel.com wrote:
>> Add .shd_init() and .shd_fini() ops, that will be called for the first
>> devlink_shd_get() (to initialize driver' priv data) and on the last
>> devlink_shd_put() (to allow for the cleanup). Both ops are optional.
>>
>> .shd_init() could return an error, which will stop creation of shd
>> instance. The initializer also gets an additional, optional param,
>> that driver could use for any needs.
>>
>> If any of the callbacks will need to get devlink instance, it could
>> be accessed by shd_priv_to_devlink().
>>
>> Both callbacks are called with devl_lock held and devlink registered.
>>
>> Next commit will make use of the callbacks, another one will make use also
>> of the non-null additional param (outside of this series).
>>
>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> ---
>> (v0) first discussed at:
>> https://lore.kernel.org/netdev/20260325063143.261806-3-przemyslaw.kitszel@intel.com
>>
>> v1: remove redundant added blank line (Jiri)
>> ---
>> include/net/devlink.h                         | 26 +++++++++++++
>> .../ethernet/mellanox/mlx5/core/sh_devlink.c  |  2 +-
>> net/devlink/sh_dev.c                          | 38 ++++++++++++++++++-
>> 3 files changed, 63 insertions(+), 3 deletions(-)
>>
>> diff --git a/include/net/devlink.h b/include/net/devlink.h
>> index bcd31de1f890..5d3a1337bfa1 100644
>> --- a/include/net/devlink.h
>> +++ b/include/net/devlink.h
>> @@ -1586,6 +1586,30 @@ struct devlink_ops {
>> 				    struct devlink_rate *parent,
>> 				    void *priv_child, void *priv_parent,
>> 				    struct netlink_ext_ack *extack);
>> +
>> +	/**
>> +	 * shd_init: Shared devlink instance initializer
>> +	 * @priv: shd_devlink' priv
>> +	 * @init_param: additional param to pass to driver callback
> 
> The "param" word still pokes me to the eye. Could we figure out some
> different name? "init_ctx" perhaps?

I like init_ctx,
will wait a bit before v2

> 
> [...]

