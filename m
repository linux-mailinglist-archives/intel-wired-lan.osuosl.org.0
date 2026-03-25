Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cEIZDIRxxGlJzQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 00:36:36 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 560D432D665
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 00:36:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B10FA6084A;
	Wed, 25 Mar 2026 23:36:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wbAoLy3S7Cgd; Wed, 25 Mar 2026 23:36:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C88AE60855
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774481792;
	bh=Zg4b6JwAecei+8gXk0oPD47xRW4pcgo21r+kheCuXy0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cSC3tb6vg62YBU+iEkr9c1/55Xxb9ivJXTyF9HU+bYQ8shstF8H7bbAK3vPd32S+q
	 zhDzqHQ7WBNfaEyyQIEV3gKuz+FNCxpbOtI4kjMgXE3Dxrk5qKZ2z0xqH5RzwzwAOH
	 AmyHJ/8uFrOIAHZb2fjbYUBKxROLHMw3aGQdxIq35LmyE84vpciiz7Leq87fZ7OYdr
	 hMZRMiXP/hfH2/TPs4jnRcyqFfvbX6bn+wtiKLkK7mmSU7Ns2oMrpjhWYaTiHUhBKE
	 mYv6f1dfipYX9pjKVYSH53L/DiJg1sDLnsDUtb3HaSW4akzbehG2LmklbjduyRsWN7
	 ZdV7D9W0Pb1Cg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C88AE60855;
	Wed, 25 Mar 2026 23:36:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4B571353
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 23:36:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 30B3C40A9D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 23:36:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9Fut50wkWg-f for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2026 23:36:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3C80140A8F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C80140A8F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3C80140A8F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 23:36:28 +0000 (UTC)
X-CSE-ConnectionGUID: BoPVb7aBR+qqWm1/jwBrNw==
X-CSE-MsgGUID: W2f5CA3uTcaGJyrKWh83sA==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="86150317"
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="86150317"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 16:36:28 -0700
X-CSE-ConnectionGUID: 2/gxjuHjTrWWsPQkVGn0DA==
X-CSE-MsgGUID: FlhR2kNkQ1m0QBj4T4O+dQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="229604021"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 16:36:28 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 16:36:27 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Mar 2026 16:36:27 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.2) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 16:36:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ARu+Srb5K/47wNTLJwnoVMuWWsGoSHF4C4+aWPPWogDp7EIhlJErPdIWy2wR6C22U/07QEK/YqyTVsjGWPhwJoAliUnla2keRXWiVkvQJ7MuenhrOZuEgl0XNS+ChPZR8BZ9AKr0ryAjqEJYciSCcpll3hynEoTtGn/KtuPbaIqtzjyhrAyLOxiJ48524MXxhpjabN8sXKARk9j+jWllJF4XpTHYQQJ/rjAfcF58dGyQOJjkW5dwduQshOJdFErDML3GMcrstkw8XhJAUzIL4cLOnrJxQ7bKysZQx84XtBLBuoD4WnVs2C5PIlrXlnzLPKSj3r6edWgLlilWweN8Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zg4b6JwAecei+8gXk0oPD47xRW4pcgo21r+kheCuXy0=;
 b=SCviMpG3Iz3kqjFWl89YJBkWeYSEkW48yQhrEHB9J6XL+isGcPsnIBAAuiClxbV3Bn4OPZ4e8O8eSQCWJTs428ScdfyMzL/cdpeidF8eNbi0ZB0v+nO4C6f9ELnrU+/16QhTbIxFBMfOhp6aPfEMCDGuOcRiPHoEEGqZekqHp78sDFmZY0R6Eh5eRS+0woyAwSb6lC8eX+yjsKagRCL+3kDE/F55ODQ1nAwpIxEdOx0vMBC0jEdAxCY7n4OForGIJK3s07+9aGKxHip+5zWL15l5iz796wN/M+su9QHwddWUZ/f52FAVVt2j5fdpji9XtPZvTM8UNEi0rUoZaY9Tag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 BL3PR11MB6433.namprd11.prod.outlook.com (2603:10b6:208:3b9::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.14; Wed, 25 Mar
 2026 23:36:23 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9769.004; Wed, 25 Mar 2026
 23:36:23 +0000
Message-ID: <fe8ba892-e8c2-49f1-b7ef-06f4acdcc946@intel.com>
Date: Wed, 25 Mar 2026 16:36:21 -0700
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, Jiri Pirko <jiri@resnulli.us>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Jakub Kicinski
 <kuba@kernel.org>
CC: "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
References: <20260325063143.261806-1-przemyslaw.kitszel@intel.com>
 <20260325063143.261806-2-przemyslaw.kitszel@intel.com>
 <IA3PR11MB8986E7BC738215D7C5069556E549A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <IA3PR11MB8986E7BC738215D7C5069556E549A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0257.namprd04.prod.outlook.com
 (2603:10b6:303:88::22) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|BL3PR11MB6433:EE_
X-MS-Office365-Filtering-Correlation-Id: e9c79077-5e60-4446-3a27-08de8ac75369
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: SXIWP41kxU1dXnJN0xAb0SyIXZUq8cdIct8cQrv0tSZ+1sp4A3xZlWockFMNbLKg3WnODVeg6qDjnd1JyCuyrKPXPWhZKrSe8hBluTiRBwTGZ2fvSZQV7c7t9OZl454q8z3007OqoerByyvLue3fJ/6wHxtj+bVD0E13gbpV/XwtS/dMNGqpZVr0DcOingPQxJXgEmGu5p8ElJHqaLo6E1y0ngisM80sMTyAwq2DiMYa6K+9TtoeaHufeo0pf28p4DewJ91RawiQPL1J6ly8YWcmmcmgSg4Vk6hDz8qA6yLXhph6Gcgua+NtKfh+hrCG4f2Ot5iKIr6p8EMmr2GXZvc91+vFvSrG7k7Fp1O/zkI5Hq7xgtChBN0iJgZhD2A2dARNw2cxtnYBliyPtVXrqk/DdVn2cii4LJW76tgFSiWxS1neEVIMzys9wkgwM7hfKb/z6iPcQEzK93Qgy9qd0WUVL63XQx/5Dy3R/If4ZP6nIgtDtasXRf9tKlPl0bml+sa07rCYHyf5fvZEGCar3v0jchvLOqbnYBr/OyCcVTXfk9C/esMv7ifbD2sfPCMXgDlGzy1hw6FreNlZxnZ/4+pY/3F38evNyRXoiWKdMlds/ua04KBsrSJ7QQnu1IQM9zvbx2h931e1J2mKJU8oKcSzP6HaFwYrpydbYbbtpupnOOmoNqUp+ogmL6uXXV0WyC2sJFSBzbXKnmP3c8Y27GyP7bXoxe/WXcfubnEVjZoA9W6UZXCnruMXwTISf0Mi
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RG8wUW9oRGFqdDBVbUNQK0FJTXBPbDRTWGFyY1dScklwT29wVWhIeGM4cWhM?=
 =?utf-8?B?Ui8xSEhXM1VFZWZVV0NuMU9IT0lxZ3c3eEVLNWt1NXBHR3ZENnFMU0pmYnYr?=
 =?utf-8?B?SWlOUVRvVURnUWt5Q1UrUjNrZldLZFJsVVNtL29MOGpNY2cxUk9GWHJpY1p2?=
 =?utf-8?B?N2VvNHNlY2VoU1RNeENicXdmNldNVkhuSGJVRTFMak9BS3VWNzkwNDZnVXZn?=
 =?utf-8?B?SlN3SGhZc0pvK0QzczFEWENpY1pLYWFWTEdQbnRwZFl0Q2tLdDBNSS9tUjZJ?=
 =?utf-8?B?N3JsNzIwa0RPUlpHajU2aTA5TVc0V3dtS3VrczdZVEIwVkNhN1hOMkNNbURJ?=
 =?utf-8?B?dVBKckh6SHlQeWNLQzE5eERsYnllTFBqYTQ0dU03dHg5ZE9NVTJxbWVORWEz?=
 =?utf-8?B?aU5lYVRWWnNRVzQxbnhob0k0T2t4UmVJdzJhd0FVN0JLTVlnR0tVcmRyZTQ0?=
 =?utf-8?B?SzFRV2dTZXdBanVBVzFZeGphN0VzQkYvbUJhRFBiUmVhclZZR0ZnMnh6c2Rl?=
 =?utf-8?B?Mmg0dnR4dkI0SVVMbXlWenp6T2dGMmdoRkcwVmlIS0Rjc0EzSWxvamZrVGYz?=
 =?utf-8?B?WlptVDRBeXhXM0FPZ2tGNHVFRWx1bUZ2T251SFpFVVlCQi8xZFJJUERxcDNx?=
 =?utf-8?B?TG03dHRWRXV0S2VGWGtXQ3BIZm1yVDR0cUdWaWNpcHBCbTI4bVFZV3VWSC9P?=
 =?utf-8?B?cUt6SDJyZEVkYmVWUUwyZmxOSFU0YkJHNnk4d1JQT0RnT1ljMkhCVmk4TzJE?=
 =?utf-8?B?YTgraDNxcmdzd2JjUmQ4SW1nMGphVWxhQ1ZobTl6aDYwSzBaclZmUjBBeFlk?=
 =?utf-8?B?UGo4Y2VRTTN6MlE3eU1rTlJJU2EwMjc5OUVSVEtpUGEvcnZLRVpoRXU2TnI0?=
 =?utf-8?B?L2o2ZVZ0a1FudlAvQ2tEZThxMURRNS81cEpMRHlmMEFOUDVKMGhwTTNPY29Y?=
 =?utf-8?B?cW1sbWVlREFUeVJhZDB5Tk9uWlZHdjlnejBSQ0ljOUtXaHVFeTgwS0R1QkYz?=
 =?utf-8?B?NjZxOFl1WWdqRys2Yjd2bkJJSWxRQmdlSXluVVhiaTdMdHFmTEYvV29SOG1y?=
 =?utf-8?B?YXl3bVg4TkRvdHhLcE9nVGZzcm5ZbXA1dWJ2K0E5Tk41Yi9GV0prbzZXYUc0?=
 =?utf-8?B?TFBjaEtQcHV2N0V0Q0poWEhuTUQrRlRwbEN4MnRUUzBTZkFTSDJBZDZHaXcr?=
 =?utf-8?B?RStoNHdUUHBPZ2YxWjBjczRyMkU5NkJPS0ZkTWx1WTNreEF6RzdCZ2NXRmxM?=
 =?utf-8?B?azIySzBnTjZpdmVqRWR5WmhnLzV0KzQ0WjJnenFwL3NiVnN3NzArU0RGRy9z?=
 =?utf-8?B?VjZzOEl3dDV0VEQ4ZFIySmVLVlBOaDRyVFJKQjdPMVpETVpzS0NvWjBHNTNI?=
 =?utf-8?B?UnEyR3prNlRDMDNvVnRHRVNHa1AvQ0N1UERzTVBNSmhNTGIxNmhzazJiVzRs?=
 =?utf-8?B?RFJjMnJKZ1JSbTYwZTYyWEJXcSt3c09BbmdRckV3V04xSVkzT0c1cmtBSC9m?=
 =?utf-8?B?b1Q2WitXeXVScnZqMmU3OG9POFNVMk1oeU03TjdsdW40cHluM1ZvV1EvRHFZ?=
 =?utf-8?B?a1dqTjZTVTlNSzQrZFA5c0V0UjdOampRMk9sL3N4aW44TEFhZWVCVU5lSmhU?=
 =?utf-8?B?YzdJOEQ2T251N20reDJKRHcxM05rTkZVeE1FTXJ3T290c1BnTXRFODNUYkVp?=
 =?utf-8?B?ekRlY0ExOFU5d2hmcEUwNDhVWU9UTXlTY0xXQ2pvMlF4a0VEaWlXUjRiZEJY?=
 =?utf-8?B?cW9ZNHRiUHdjaW9KckRkczVnMmR4RmdHWGdUb1FXdWlqdTBybHA1NnllclA3?=
 =?utf-8?B?OWVhU0VhRHZEM1ZNM3dZczNZN1pDOVZYVklESkRSVi9ub0JrYUhNVWs3UU43?=
 =?utf-8?B?ZHU0WkZMcjNTemduRHp2eW8rUkthUW5yK3lQNk44aGVnbVo2Z09aY1ZYT2Ns?=
 =?utf-8?B?OS9Eb2VTRmR5TVV4VkVHeVZyQTFDckhJQU9YcFdUOWEzNDMxSGRoVjF3UnBa?=
 =?utf-8?B?Rk5KL1FHM0xBUnpQMVptL1lFMWlqUzlNbFJhL043blFlaU5aTlJtc1FsTVJG?=
 =?utf-8?B?Q1MyVmhzYzloTFZXUG43cnFRYTFJbjlrcXN1TTZoRTFvTnJ6cDV2d0Nsaklp?=
 =?utf-8?B?Qm85cURZdlRDcWZ6RUx5QnA3eVUyOVg5WTJCM0ZSdWhsTDFxU0JKaEtYRnFO?=
 =?utf-8?B?VThXSWNhcGM5OEQvbVhVT2c2ckFJdnJUUkRZZ0lSVkttQ2Urb25GR00xNEFO?=
 =?utf-8?B?TFVTR01RZGJtRHNjNjZqYWdXblZ0aXZ5RmxjazArOVBZTmYwTnZzK1JMRGpE?=
 =?utf-8?B?Wmd2bkEvaUJVdTg3V01tM29ML2dyZDFBZC9rSU5lL3FLajQ0cDJRS0JwZThx?=
 =?utf-8?Q?2+7cQT8ORYBWshEg=3D?=
X-Exchange-RoutingPolicyChecked: QDuX7yIWPLJYTvw1ZPpQTWdDXvpy4t0XJ4AvANTRZIkjUZ/VeiQtkWxLLU5BSYh5Fo1ge3piEtE+j5AmYgdkzfYs02xF59e/ceqzdBKAMyHVECq+r2algHnuFZZWEE2Rx+aMPAJRzA/RNr2efx9KRKNHr/Qq3nmBeBNqVhB0ebz1lrOTmEe23Lo+12Kjr3aRVGX8Qa3OtxnJ+rIvJd3fCJNGd1gMJNkK6+HKgK9F6nFztAzNh4uoC/PQFwCSFDDH9rOirE7qrm6CwLhqFf81NkpLG/W5/xcjUeaB1+4ezNxecITWGTinqoJDIuJQufZbhAA8fhEZfex+BPLIDNSE8A==
X-MS-Exchange-CrossTenant-Network-Message-Id: e9c79077-5e60-4446-3a27-08de8ac75369
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2026 23:36:23.7136 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GnKYhv3frRWjYDO4ST2snTvxqTRX33EyR+vUPRbZQo6V8pxwc5u2Rw9bHIGvFnxAzv4c2upcHONf5cxYrtlz5ARi41k/VP01yOGbvpHUjKs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6433
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774481789; x=1806017789;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=m5Z/iDnahWvrhkoaQD99edVtLnpNzy+o7aj69RRh1rM=;
 b=SP3UPnsmlOLH/1uHV6e5xAGwwZ4Hnzm7LQySpMRt4EAgg96gg3SPKFUz
 QMtvmCbod7bGPabYXQ9BwDHoysBh5sQFea8drQkl1qRk8pSfvIysHfYx4
 1GZLk+NHP6+ZdmTkM0uPPyZcniUXLdvebTDA1jHr4yD/vkWCQqEIKB9mx
 in3WdjE54MroHjH3Ge7Ko4d7ffljKUnUHCzl3L1Pag9fIa4zENiNujobb
 /C+9MrnOOdGFMM2JsmNzdZlKyMCQDG6UwxNfS3XF2k0AQrvLGRnzFjolN
 4eoX/ipXEp37xnQAfo18ETOryAD74joC0SSix0WEYTTsUnJRQU8dLqjXa
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SP3UPnsm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] devlink: unify
 devlink_shd_get_priv() into devlink_priv()
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
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:przemyslaw.kitszel@intel.com,m:jiri@resnulli.us,m:netdev@vger.kernel.org,m:kuba@kernel.org,m:edumazet@google.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 560D432D665
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/25/2026 12:46 AM, Loktionov, Aleksandr wrote:
> 
> 
>> -----Original Message-----
>> From: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
>> Sent: Wednesday, March 25, 2026 7:27 AM
>> To: Jiri Pirko <jiri@resnulli.us>; netdev@vger.kernel.org; Jakub
>> Kicinski <kuba@kernel.org>
>> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; intel-wired-
>> lan@lists.osuosl.org; Loktionov, Aleksandr
>> <aleksandr.loktionov@intel.com>; edumazet@google.com;
>> horms@kernel.org; pabeni@redhat.com; davem@davemloft.net; Schmidt,
>> Michal <mschmidt@redhat.com>; Kitszel, Przemyslaw
>> <przemyslaw.kitszel@intel.com>
>> Subject: [PATCH net-next 1/2] devlink: unify devlink_shd_get_priv()
>> into devlink_priv()
>>
>> Unify access API to shared devlink priv data with normal devlink.
>>
>> Thanks to Jiri Pirko, we now have ability to create shared devlink
>> instances [1]. Introduction series have added usage of those for mlx,
>> but without priv data attached to the shared devlink.
>>
>> Current API makes it possible to access shared devlink instance's priv
>> data:
>>
>> 	void *devlink_shd_get_priv(struct devlink *devlink);
>>
>> but it is easy to forget (especially during rebase from "before shared
>> devlinks" era) and call:
>>
>> 	void *devlink_priv(struct devlink *devlink);
>>
>> which even has the same signature, so it's hard to catch the error.
>>
>> New proposed API unifies both calls into one, without any increase in
>> the observed struct size. (Alternative could be to store additional
>> pointer, set during devlink_alloc).
>>
>> Unexport the less convenient API call.
>>
>> [1] commit 411ad0605875 ("Merge branch 'devlink-introduce-shared-
>> devlink-instance-for-pfs-on-same-chip'")
>> [1] https://lore.kernel.org/all/20260312100407.551173-1-
>> jiri@resnulli.us
>>
>> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> ---
>> v1:
>> https://lore.kernel.org/netdev/20260323132136.13191-1-
>> przemyslaw.kitszel@intel.com
>>
>> v2:
>> - fix typos (Alex, Jiri)
>> - fix infinite recurrence (Alex)
>> - add __devlink_priv(), which is more general than v1's
>> devlink_to_shd()
>>   (Jiri)
>> ---
>>  net/devlink/devl_internal.h |  7 +++++++
>>  net/devlink/core.c          | 10 +++++++++-
>>  net/devlink/sh_dev.c        |  8 ++++----
>>  3 files changed, 20 insertions(+), 5 deletions(-)
>>
>> diff --git a/net/devlink/devl_internal.h b/net/devlink/devl_internal.h
>> index 7dfb7cdd2d23..0a57318d92f8 100644
>> --- a/net/devlink/devl_internal.h
>> +++ b/net/devlink/devl_internal.h
>> @@ -58,6 +58,7 @@ struct devlink {
>>  	struct mutex lock;
>>  	struct lock_class_key lock_key;
>>  	u8 reload_failed:1;
>> +	u8 is_shd:1;
>>  	refcount_t refcount;
>>  	struct rcu_work rwork;
>>  	struct devlink_rel *rel;
>> @@ -72,6 +73,12 @@ struct devlink *__devlink_alloc(const struct
>> devlink_ops *ops, size_t priv_size,
>>  				struct net *net, struct device *dev,
>>  				const struct device_driver *dev_driver);
>>
>> +/* Get priv allocated for struct devlink */ void
>> *__devlink_priv(struct
>> +devlink *devlink);
>> +
>> +/* Get private data from shared devlink instance */ void
>> +*devlink_shd_get_priv(struct devlink *devlink);
>> +
>>  #define devl_warn(devlink, format, args...)				\
>>  	do {								\
>>  		if ((devlink)->dev)					\
>> diff --git a/net/devlink/core.c b/net/devlink/core.c index
>> eeb6a71f5f56..a242be203fe8 100644
>> --- a/net/devlink/core.c
>> +++ b/net/devlink/core.c
>> @@ -230,10 +230,18 @@ int devlink_rel_devlink_handle_put(struct
>> sk_buff *msg, struct devlink *devlink,
>>  	return err;
>>  }
>>
>> -void *devlink_priv(struct devlink *devlink)
>> +void *__devlink_priv(struct devlink *devlink)
>>  {
>>  	return &devlink->priv;
>>  }
>> +
>> +void *devlink_priv(struct devlink *devlink) {
>> +	if (devlink->is_shd)
>> +		return devlink_shd_get_priv(devlink);
>> +
>> +	return __devlink_priv(devlink);
>> +}
>>  EXPORT_SYMBOL_GPL(devlink_priv);
>>
>>  struct devlink *priv_to_devlink(void *priv) diff --git
> I'm worried about priv_to_devlink(), if someone passes the result of devlink_priv(shared_dl) as priv,
> container_of computes garbage - because the pointer came from shd->priv, NOT from &devlink->priv.
> 

There's no good way to detect that inside the priv_to_devlink either,
since it can't know which private pointer it is looking at. Hmm.
