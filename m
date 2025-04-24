Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A55B7A9B44E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Apr 2025 18:40:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 40A2780B85;
	Thu, 24 Apr 2025 16:40:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LKW9AsqmHM2C; Thu, 24 Apr 2025 16:40:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1D27181EC9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745512802;
	bh=lYL1KqkuEEDoAF8/ZWGIkxtvm5Xvw6dSZvwX/o7rPBk=;
	h=To:CC:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fuKlpwG1CBG9Q1se0Chc8Cx+Yuomh74DQM1/0HqeLt+gGP5zh2xdLvPKOGjgb7xA3
	 JzPw2mIEJS2/WVyFSBbH7ao1qJ3L7W3EYD3/WQWXaQcfcTxxfzkN1dSJT3QEZS1pZg
	 3RuuZ9GDHeFwJdI/Bs3LQ4UYt7CfNsPN0flwHvddQXMDnmj2ZCyUmJekC61t7N1ye9
	 54jPGlx8l/i88vbU6HCN/EeRL3KgZCjInJT0HS7KiU3ThrHq1DAnZRnZaYnFqPWGhi
	 NBPz9uDEk9xTyyXWrLXuWuPYYkarQFiVJ/1u5lClLND6dylTU5fnDcXI3fSnCpcvah
	 1hK+ukaSbjX3g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1D27181EC9;
	Thu, 24 Apr 2025 16:40:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 55D4F28C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 16:40:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 429AC80B85
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 16:40:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CPZRsYop9BTI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Apr 2025 16:39:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 53EE581E54
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 53EE581E54
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 53EE581E54
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 16:39:55 +0000 (UTC)
X-CSE-ConnectionGUID: KCy4aqGeTYSEeigd3Rw+6Q==
X-CSE-MsgGUID: KMel61uKQmuI5NHdzB912Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11413"; a="50979731"
X-IronPort-AV: E=Sophos;i="6.15,236,1739865600"; d="scan'208";a="50979731"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 09:39:53 -0700
X-CSE-ConnectionGUID: S+bUi0f8R06OCXZxIu7ccQ==
X-CSE-MsgGUID: fpyPbjmWRCqLWbrz4c0b8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,236,1739865600"; d="scan'208";a="137757029"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 09:39:52 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 24 Apr 2025 09:39:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 24 Apr 2025 09:39:51 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 24 Apr 2025 09:39:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ELQhFOK89iAYtluhDZZqkKeflm5peDaTlntvFWGGWnaBfvCLvi6PAwsT7gl9niNoP5fEGs0Vk7h2FxS74VSOt/bHJhPpn8TDh0kqSKdHWAV3GefZ6UB912NWpA7fkyN4FebMBCJULHCA8KBfeGmURp7yyePXfToQryNEvt0VXlbJZepV8Zj0qWZlUT5INrFbfvSYgwlbwIduEJOPrOgT41tIyVbtMLDvkZ89/UVHD3ECqJmU/Q4WOnO7BitgHAEZifUXTW5qRrTq/26JNMNnw+hUUij+46W0M8sZHtMTcx7zZGQzV3LEn3uWUmDXUa3EetZHDg9vcA0/us/r5H+yug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lYL1KqkuEEDoAF8/ZWGIkxtvm5Xvw6dSZvwX/o7rPBk=;
 b=JTNWbgcNVJWSWl9a8sQvKdrM/2ephE/CjHRFEtE4tnbZMshfwj0PHhx5xerAX+WE0ZgxLxofduLp+1Pku2zRolqJVUnxf+5sCI0jWmSfjGPvAGgCz6nYMVd/HcIxmLWn9jikUVbXmR6OZIRttWNF1q2zRicgDTtwf92IxWNSxMVvJyXyFYL0312ba2o8cKPpzONq7wqkn7TGDWE2TToxRTi7Y1QBPnx97OKw/tSG8bPJuGqI0AKBhKaId2uLz5GGH5iN8glCNFV0+r0sIVduf5CwAPt+JglpKA/6jTH3xqIr+FNYzEqc3NUmCCH+hVZBWCbG3TsshBwpNtN/D+t9/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by CH0PR11MB5266.namprd11.prod.outlook.com (2603:10b6:610:e1::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.26; Thu, 24 Apr
 2025 16:39:48 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%6]) with mapi id 15.20.8678.021; Thu, 24 Apr 2025
 16:39:48 +0000
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Jacob Keller
 <jacob.e.keller@intel.com>
CC: Dan Carpenter <dan.carpenter@linaro.org>, <christopher.s.hall@intel.com>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
References: <20250422210309.1474002-1-jacob.e.keller@intel.com>
 <e424e81e-569c-4d35-9ff3-3286f5b14f62@intel.com>
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Message-ID: <30c90c7f-c06c-b4e6-c3d4-2a9af88d0c5c@intel.com>
Date: Thu, 24 Apr 2025 19:39:42 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <e424e81e-569c-4d35-9ff3-3286f5b14f62@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-ClientProxiedBy: MW4PR03CA0048.namprd03.prod.outlook.com
 (2603:10b6:303:8e::23) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|CH0PR11MB5266:EE_
X-MS-Office365-Filtering-Correlation-Id: cac275a8-d204-40d6-0fde-08dd834ea094
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?N016ZVNRM2lHeDNDR1hJR0VOdm1EQU5nV3AyamV0cWJ1U2V3QXlzVFpqa1lt?=
 =?utf-8?B?eS9xWkYzbGZ2d2Nxa0dmdnZkWEhQWEE2UUVRaDVEeE9KRVovUGxORjYxcWQx?=
 =?utf-8?B?SFZyWnpiMm9sSWZBU3dIU3laLzRJMDdVUnZlUFBwbFhkZWc4Wnl3Y1Z4UFB3?=
 =?utf-8?B?TC9Wd3JHbC85K1JZcEZtL2xPK2M1aGs2a2RGTTNLQVZtQVhjZVh3OFdqc25T?=
 =?utf-8?B?YldscnBMcHQ2Zys5RW14SXRhREc4TGNWU1hhOXh4OGNyVSt0T2JqR000bllB?=
 =?utf-8?B?MEhOOFREOHQxdjhWeFR0RXowV0JCeWVTbkVCQ0NVdTNrRjFXRXk1elVyRVVt?=
 =?utf-8?B?c0ZSQTNmZ0ZPS1RBVXh0clVOSmJ3cUNoVmJOMzMwemZvWGFGSWhITHRHeEFE?=
 =?utf-8?B?cUN4TUJLY3JLMFpybXc4NDlmQlZpb2Fhd2ZoaE5FRjB5MVAwNDRFZ3g3bnpQ?=
 =?utf-8?B?ako5ZFhQWnkybGhlUlY0Q0FUVHZROW5kSmdXaFFRbUlvM2tvUUhuUXFWWE1m?=
 =?utf-8?B?WVBxVnQ0UktmeUlGZkUrbGY5V2E0ZnNzSldKaTZRSUJLRWZNUkZmWGs5T3lu?=
 =?utf-8?B?OUczbjVrM0tyMzVQeEVlRk1BNkpkK1ZTTXk0dmpYVE9pSStyZHdnUVFaMStX?=
 =?utf-8?B?cXlWTDhJOTVoRk9IeVBvczNCNlArS2hDd2V6eTR0QW9KMTJ3SW8xbGh6VWtZ?=
 =?utf-8?B?TW1JKzl4TmxRdkFMYkJsN0ZpbHFzQmFQR0Zmb2E3VDF5bEgzTEZDcTR4RlMz?=
 =?utf-8?B?N2NmRWVIM1MwUVA4a2tFUlR0REN4ZE9acEdMQXZSZUpOY0dtREE3Yy9iOU5u?=
 =?utf-8?B?R2VwUC9uTEh3bDM3RVkwM1I2cTk0UXVwa2kzVGdRNFVRNTB6MENJUHpScCtU?=
 =?utf-8?B?Kzc1UkpjSWFDK09pRVlLR3B2RlpMcHhpVU9rbEVUc2JuTEo3dTFxMlhudU9R?=
 =?utf-8?B?RTBuWUk3YXZtdzJIZEZGanhFZjBDb3VhNzEyK21JdTAyZU9kZzVUakRPZjkw?=
 =?utf-8?B?NkJ4cjM4MHFXbDRzd1hoeXZDek1xSEM0YmZDdTVJY3I1RGpTRVJla1ZWdHdq?=
 =?utf-8?B?QmlPdUtJZU5hZ3VSWjFvMkhmZUtCdHdCVlNXZ25GdFNDTFRZdHhKS2hsblFV?=
 =?utf-8?B?K01FalYzeVphN25vd1VPY3lLWXpVNFY2NHdFb2JUQWNzRzZ2WDJFNXAvYlg4?=
 =?utf-8?B?dSs4VzdXOU82OUZJTG1yRjVtMGdpQzVXc1dGNVVyUTRJL0puZXMxcFR6MXQv?=
 =?utf-8?B?TFZMV3NtWkMvTmZUSkYvb2xMSWp3eFA5bTVCUStLQ2tKM3dJL2N5eTk2dTg0?=
 =?utf-8?B?Unp5SVNkeEgrUjdQZ1dnOXpHcHNNY3IxSFpvR09qWnpRU2lMd1hYZE0vYjBQ?=
 =?utf-8?B?Yjh3dERQOTEvS1ZocmVjem1RUXBiV3lYc1lwc1Q0SWRRbnpxd1M3MDZMSlkx?=
 =?utf-8?B?dk14VWVQcTFjdXhsMXZXT2kxUm5mN3lMK2VnYkpwRTh4aHdRUnhJc2t0R1JM?=
 =?utf-8?B?dk5pSVlzL0NtelJVdWluUE9xTXE3MGFFUkwxOC9ZYkJiK2orUlRMcXhjSDE5?=
 =?utf-8?B?bXdhcStqKzliZThIMDNLUW9CMjRVTWx4S3NGNmh1MHR5OTlON2JORmFRS3ls?=
 =?utf-8?B?dm5XVkQzVmJPV25ObkNWYVB1ZitGblFsUUxVTGE1OUZWdDVneTZaeWlSUEFF?=
 =?utf-8?B?SDU0U0Qwc2xFOUxLNTFnZEZEVzZGVENMY2tPNm5lUG00cDMxYUFrM0swM3BY?=
 =?utf-8?B?Q01Hbm1xOUlDNVBuUTB4SkxKQkg2SEkyL1BDK3hBVHlyMWZQWnYvWVNKZ0pV?=
 =?utf-8?B?bWs2UHJjM21SampZb3FGK3lCT3E2Y2F5aytBeFhnSGpXOElXWjF4SzgvNEZl?=
 =?utf-8?Q?mjEDC28EvGeLt?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K3lhK1BOWXFrVHRoMzNhcStseStTa2w0SkV5am9jSUxsalg3ZDhDMTh6SjQx?=
 =?utf-8?B?Vk54QlFTQWFaZ2JweXhZbmZ1RlhGZ0J4NEFiYWRja2Y3ZlJkbmxya200K0o3?=
 =?utf-8?B?N3psZy9VUU5jWjNuc3QvTlRpMk4ycTBzbW4xckZtSy92dnpkdHh2bFVoT3lh?=
 =?utf-8?B?K2kwT3U2WlJlWlFNNXNOSDg2RFRhb0ZSVTM1K1gwdFRWUXpiYkRYNFRkbHpS?=
 =?utf-8?B?UTB3RVlRSTVOY3k1ano0WDVlbzhpajU2OUF3R2h1YzA1K0NEckFRUXFwL25G?=
 =?utf-8?B?dzg2ejU0YkVwQmgvb2hId2RhZEJDLzJLb2FoRU5lUmJHZkJVZUtldjFZMlZL?=
 =?utf-8?B?SU1FN2t2Q3Vla2hPZXRwUHErMUdvS3FjTk1ja1FoSzd4U0QrWGRQWDBlYVpD?=
 =?utf-8?B?d09ZMnAzZ2ZOVFF1Y09wV1huU1JqdXdEcnM3a1VnZVhST01GUFNZRGd4QVRk?=
 =?utf-8?B?N01CaEtTYk1GNkZNUUtzVFU4cDUxSDNpVnZpeUNaR3ZoQ1paWTRpd1h6MXNk?=
 =?utf-8?B?YmFsd2d3TVdQTEtzMFptV3ZYYklCbnNROStFbkcyK0NGZklKQjNrSnBwYlJs?=
 =?utf-8?B?YUsvU0tobk5GeXoxYWJxOXhVTTZpZWtlYmJieXROUFNJSHY2N1piMU93MHdE?=
 =?utf-8?B?NHVUWkJscnZCTlN3dGpSNW1HcnYzQzYvMUp5WUdRV3dLMDY3S3RvVWZqZ1A2?=
 =?utf-8?B?cnU0T0V5eWIzQkRlS2xEclpheVE1SzJjUzYxUWxFekpGaEhUeW45M3N4c2py?=
 =?utf-8?B?UWtmZkMzWFpuK3hHMnhQN3l0WFNBR3VCRGxDMm56cUpCdGRwUzk5bllTMUNC?=
 =?utf-8?B?ZWRNU2l2VGRyWGpDdDY2NklBNjYyc3hmRU9nTjJydEJWYnFkeXVRTzlOZjRJ?=
 =?utf-8?B?akpRVUFURUVtR3R6SjdRRHpqcFlBUlFkRXZaS3V2TVp0cjRqRkY3OUcwWW5E?=
 =?utf-8?B?a3hpemhOcThLYi9VcUh0N3RQNTVmeHdYYmtFTCt5SmpLSkZWZDd1VUZyNnRz?=
 =?utf-8?B?V2ZkTVZiMTVSRGs1d3dhUFY3eU9nZXRaNEFJZ2RicVNzVEt6ZVJTOGVLNDlG?=
 =?utf-8?B?MGw5YXd6dnF2M2tKb1k2VlgwK3pCTEJyZ29xdlN2eUltSC9JMDRrSm1mdTdM?=
 =?utf-8?B?clNtTzhOTzdmVHVNY3BocDZpOVE1RWNYeHpVVytGT3hYMnZqdG5aemhGQVFz?=
 =?utf-8?B?RkQvQWErckpwTVZKTFkrR1JVaGlXbEhZSjZ4QTdWT0NVUGhhVjhKSk9RNHcy?=
 =?utf-8?B?MUl0Snp3cVFQN01kTllqbUxTQy93L1dmY0tLckJvaXBVNi9FR1BhNGpRSVJn?=
 =?utf-8?B?SDVEajJJVVdmNVBXNFdFd2h0bUluVHFSbVlmUm9ndVdLSkE2R0tXdDVEeHF0?=
 =?utf-8?B?ZkFpeTRtVlU0RFZLVXN3dkc2ckw5emk2NjZacUlKSmRIQjJyZUQvM0tyeHAx?=
 =?utf-8?B?VERHNVZrNVdhb1RvbTI3SnVRbGwwZFV5N2hXUHUrZDk2TzUwTTM5RXNPdE51?=
 =?utf-8?B?TnVrREFsbi9KanpkR3JMVWpOa214aXI2VjhlSEdHVlF0QjVzQ0pFN1JsYVBy?=
 =?utf-8?B?Sml1VlF0NFYvY0lwamV6OTVVSEtOUnZvUXpENUh2R3ZJaGllT1lkRTd0eThO?=
 =?utf-8?B?QUppWExpRVV5TXZxa1BVV3FYaHdwVEsrQ2F4V241MHY5V0tMcnZzNklZSmJi?=
 =?utf-8?B?a1BCMy8wSXdnM3pqMGFGV25YaXAwR0tvSlIrY3h6MlI0RHVySk5hTEFHeTJT?=
 =?utf-8?B?OXhEMnMzM3dWLzlJK29CdFNUV00yRDZOK0txWXBTSUZGcXZzT0JBM1VQTEVB?=
 =?utf-8?B?QkJiL2ViZy9qRDlpYVpreDVYUkUveWNUcVhDeVlacWpXNjk4ME1nN1FUdURp?=
 =?utf-8?B?Nm95QmV4dkJLTkVUMUlzd1lqeW9SQ1YzZHBLWXg3SnVDSXdxYWtrV1RrNFhs?=
 =?utf-8?B?cElMYkFlUVFHcE9oOVVnaTN5NStCaFl0RVhKZjV0bFRwNFNtSGJvbGE2OXhB?=
 =?utf-8?B?cmdxaTlqTjRuVWk3RHl6LzRISEtCSlZZN1ZrcHBDSGgxOXVPaGhYT01ZcU5l?=
 =?utf-8?B?Q3dPS3NPbXowN0RXcFZLeGoyM0xSS1NPMEo4Vkd4NlFCQjhYREV5ak1KcG1K?=
 =?utf-8?B?eE0wazlOaFVVZHVyOWRzWVdSSzBJRjRIVmx0cXV5TEozZHo3SVVsQkhGRXBm?=
 =?utf-8?B?SkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cac275a8-d204-40d6-0fde-08dd834ea094
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2025 16:39:48.2960 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Caueug2Dy4KJICOmW8s/iHSsRdSqEYKrlhcHfnfFE6AlFEFztWvcMyHTuowklZUxLcjmGARO++A1nT4vzN+Nbf5iJdChWbOdXxMUyD1w8Os=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5266
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745512799; x=1777048799;
 h=subject:to:cc:references:from:message-id:date:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=f5qpVzXwHDc7tZsAyu5D1N/Je74O9kSnKiAyDRMqwrQ=;
 b=LTpKLl5VkYMJGE8QnZU0walRbVCatvmCAy2NV8lXEftlw+9NPW2zuqSK
 xnlwyv/AmG+VYh0qebwv7mJnMXQikGhBbfRrdRzc+B7efn/QXWhoy+eRs
 /BV/gTlm060UxuC/gHEvzuwJf0iUrhex+PvsCsGINlWdvDUhySAYddStu
 mB6Qf+pM6lM+CWuiYcodjELEkUUonfrQ21Y9iusX024w5uWVAjkNkul8e
 mNMOgKgEtgqunIXh2Nb0IzIqK6qCRMreBlWGX0Oeit+hSivZ1TGTsG4mh
 RpGFDEMv8TwAsEp9GfK6558uSel6hjNy1KzNh1gYdxWy9QkAJJRGYlD8P
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LTpKLl5V
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-net] igc: fix lock order in igc_ptp_reset
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 4/23/2025 7:18 AM, Przemek Kitszel wrote:
> On 4/22/25 23:03, Jacob Keller wrote:
>> Commit 1a931c4f5e68 ("igc: add lock preventing multiple simultaneous PTM
>> transactions") added a new mutex to protect concurrent PTM transactions.
>> This lock is acquired in igc_ptp_reset() in order to ensure the PTM
>> registers are properly disabled after a device reset.
>>
>> The flow where the lock is acquired already holds a spinlock, so 
>> acquiring
>> a mutex leads to a sleep-while-locking bug, reported both by smatch,
>> and the kernel test robot.
>>
>> The critical section in igc_ptp_reset() does correctly use the
>> readx_poll_timeout_atomic variants, but the standard PTM flow uses 
>> regular
>> sleeping variants. This makes converting the mutex to a spinlock a bit
>> tricky.
>>
>> Instead, re-order the locking in igc_ptp_reset. Acquire the mutex first,
>> and then the tmreg_lock spinlock. This is safe because there is no other
>> ordering dependency on these locks, as this is the only place where both
>> locks were acquired simultaneously. Indeed, any other flow acquiring 
>> locks
>> in that order would be wrong regardless.
>>
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>> Fixes: 1a931c4f5e68 ("igc: add lock preventing multiple simultaneous 
>> PTM transactions")
>
> Thank you!
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>


Thanks!

Reviewed-by: Vitaly Lifshits <vitaly.lifshits@intel.com>

>
>> Link: 
>> https://lore.kernel.org/intel-wired-lan/Z_-P-Hc1yxcw0lTB@stanley.mountain/
>> Link: 
>> https://lore.kernel.org/intel-wired-lan/202504211511.f7738f5d-lkp@intel.com/T/#u
>> ---
>>   drivers/net/ethernet/intel/igc/igc_ptp.c | 6 ++++--
>>   1 file changed, 4 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c 
>> b/drivers/net/ethernet/intel/igc/igc_ptp.c
>> index 612ed26a29c5..efc7b30e4211 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
>> @@ -1290,6 +1290,8 @@ void igc_ptp_reset(struct igc_adapter *adapter)
>>       /* reset the tstamp_config */
>>       igc_ptp_set_timestamp_mode(adapter, &adapter->tstamp_config);
>>   +    mutex_lock(&adapter->ptm_lock);
>> +
>>       spin_lock_irqsave(&adapter->tmreg_lock, flags);
>>         switch (adapter->hw.mac.type) {
>> @@ -1308,7 +1310,6 @@ void igc_ptp_reset(struct igc_adapter *adapter)
>>           if (!igc_is_crosststamp_supported(adapter))
>>               break;
>>   -        mutex_lock(&adapter->ptm_lock);
>>           wr32(IGC_PCIE_DIG_DELAY, IGC_PCIE_DIG_DELAY_DEFAULT);
>>           wr32(IGC_PCIE_PHY_DELAY, IGC_PCIE_PHY_DELAY_DEFAULT);
>>   @@ -1332,7 +1333,6 @@ void igc_ptp_reset(struct igc_adapter *adapter)
>>               netdev_err(adapter->netdev, "Timeout reading 
>> IGC_PTM_STAT register\n");
>>             igc_ptm_reset(hw);
>> -        mutex_unlock(&adapter->ptm_lock);
>>           break;
>>       default:
>>           /* No work to do. */
>> @@ -1349,5 +1349,7 @@ void igc_ptp_reset(struct igc_adapter *adapter)
>>   out:
>>       spin_unlock_irqrestore(&adapter->tmreg_lock, flags);
>>   +    mutex_unlock(&adapter->ptm_lock);
>> +
>>       wrfl();
>>   }
>
