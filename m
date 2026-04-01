Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +FHXJFzEzGkWWgYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Apr 2026 09:08:12 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B393758EA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Apr 2026 09:08:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B372B60FC0;
	Wed,  1 Apr 2026 07:08:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LvVjvSoT3uos; Wed,  1 Apr 2026 07:08:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4B6DB60FDF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775027286;
	bh=TPj6hHQWd7zT/gi9HBrooBTzT5O/7bkdWAsxgogXMhk=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tGZhsTYeWR94uxIZpt/qENnofaQnU2U1uXyDOEgatZ5W10kEwxlDj7uChAVNXP/GZ
	 OawJ8j7mdJ//bzA81w1rLFzjX7MXTpoiBWiU9/TG4/3V/yL9a7pIJfsjp+LKOHA2J5
	 IXr+GAASsvCzeVojsxOLkaW9XGu3HrPqQ4wnYaJYMm32aZP8N6kcF3megCPORzbhbL
	 RDusdmxbAng0szc/IBl7zv5S535u/6tK09pCUGV7nzFZLO/52sx39sHpTTqlsYiA05
	 sXG/U4oCGTFIhnE7ya9TAJHSxqTD3esR25A0zOjuPBOkd/r2GsugABOjMf2/lG//58
	 yWTlivxYHNIrg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4B6DB60FDF;
	Wed,  1 Apr 2026 07:08:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8F826E4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 07:08:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 81840813A6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 07:08:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id waDj6eArFyYC for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Apr 2026 07:08:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=dima.ruinskiy@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2F4B581398
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F4B581398
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2F4B581398
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 07:08:02 +0000 (UTC)
X-CSE-ConnectionGUID: lscwe79QQ6ygg3axmonOkQ==
X-CSE-MsgGUID: lFb2+2HUQcOsL14/pabbbA==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="76070471"
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="76070471"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 00:08:03 -0700
X-CSE-ConnectionGUID: B3Pn6QpzSUCEztmBuRUQzg==
X-CSE-MsgGUID: cEIkyx5hS+eLV2ytSN942A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="226836267"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 00:08:02 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 00:08:01 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 1 Apr 2026 00:08:01 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.63) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 00:08:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cAQpgyyiQYl6QXvEB69f910u7UUEpJNHcIwPHd2HiTSyvnl2fjNvlASWMUTfLmQZQC6mwGwzdKZ57sUt2E+CL8xF2p8b17S620CdmPU3Uzf/ffss1Eh6JodX6YCDH4vGg45ZhRGRnfjqEr5+v3MulFbvstUvwpJGNpxMKMgo8jkp3RvwE+r6NC29fGlOQtevAW+vFg3YnJSHyRh7ZfmshPzbGnXnjpm8BDQ2NT5esa+yQ6U0/+pUjSK8sHwfLanE+mQWCjqv1rfixM6Eu6O6EjFGDYTpF33aguCcb+eJDuJ1aXobqSvORS4tbKnXrQGuhmnCuK7HEYFl/41EQI8lDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TPj6hHQWd7zT/gi9HBrooBTzT5O/7bkdWAsxgogXMhk=;
 b=ZjaS2EBo1BYGtTMfWp2jY21DC4ink1xVOsq7iRGPB6fUpMjZqhhpkVjcrpwS/PhjNLkFud4Ute9NBk+Qd7M2XjsJOC8kj3dPBtwrvUCv21LPE1BN+v7CZN6CoeH6xJejPDyKXaBcv+3qHAx4FUU2NBI6YdOCkh+6DyUaT/7JUrWH+WtitBB5b3lNn8aD82YWxLZKwUeeqI8dqJwuA+go+8qeaudxJo3nqbn0rr9QHTjn4J7XyZxAtpugNTfN4lvrey5DAVrdgJ/eDMelhQcwDOZFXcLaOYa/2Ws1jNipxdjCErjA6GHTtgldryhRkSIZiMkABsFIUs0ePCwxJzHvVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS7PR11MB9498.namprd11.prod.outlook.com (2603:10b6:8:261::10)
 by SJ5PPF12B0A4A9B.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::811) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.10; Wed, 1 Apr
 2026 07:07:50 +0000
Received: from DS7PR11MB9498.namprd11.prod.outlook.com
 ([fe80::e3fc:2bca:409f:b925]) by DS7PR11MB9498.namprd11.prod.outlook.com
 ([fe80::e3fc:2bca:409f:b925%4]) with mapi id 15.20.9769.016; Wed, 1 Apr 2026
 07:07:50 +0000
Message-ID: <f39683ed-7397-40ec-ad0f-833664ea5c8b@intel.com>
Date: Wed, 1 Apr 2026 10:07:45 +0300
User-Agent: Mozilla Thunderbird
From: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
To: Timo Teras <timo.teras@iki.fi>
CC: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>, "Brandt, Todd E"
 <todd.e.brandt@intel.com>, David Box <david.e.box@linux.intel.com>, Len Brown
 <lenb@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "marmarek@invisiblethingslab.com"
 <marmarek@invisiblethingslab.com>, "jeremie.wenger@edu.ge.ch"
 <jeremie.wenger@edu.ge.ch>
References: <20260202103257.1972097-1-vitaly.lifshits@intel.com>
 <20260210131158.1055ad48@onyx.my.domain>
 <745b1cd3-3e02-4d50-b1cb-0463ae6a9dd3@intel.com>
 <20260212111506.16bc402a@onyx.my.domain>
 <29b8a4b4-66d4-47e5-a316-b88a03b3882c@intel.com>
 <20260226143616.608ba411@onyx.my.domain>
 <35bc35d8-ff5d-4596-9f9f-6ab563c890b0@intel.com>
Content-Language: en-US
In-Reply-To: <35bc35d8-ff5d-4596-9f9f-6ab563c890b0@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0030.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::16) To DS7PR11MB9498.namprd11.prod.outlook.com
 (2603:10b6:8:261::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB9498:EE_|SJ5PPF12B0A4A9B:EE_
X-MS-Office365-Filtering-Correlation-Id: 49227ca7-9825-4904-284d-08de8fbd62bb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: yLNQmTrA9rloex2IprOukoZut6qaIPrjDpnO1S+u+73MfpQPNNOPIxrZHczAA3xjBhviDtUMwEYrc1Ysl2zyiocKAosF9IVx2ID3zCyLML5JKIyrimfGNugA9wnkx5IRjYi1sp5eNCB8ZZA8JU8yL0X5vnmeJTUrF8dmKy1GE+XbrKYkLOc/UrS7zeK0Jdz562EuKm1SflToQBqthiN/g38r1LkRcqt+ubkPiST4z8C8mH+mJRlQLc7SiMvjvA+uBU/EjiP5FFCAezJB408nncggE1W4c26qqIvKq/eELvq/XS/URv0Ci4EMTG4nYgwnwFJ96xK/iTh5ou9gOiXIJqBfXN0vX1s7huBD5zwhZeTeLBtPYIcsAG/H8jymhJe0PQHCnSktcdlXibQI6RqxUu5z+3iN+A/uS/2bGAIh9VHHz3CFrmgpsVk78tjn2nlS6cqqTVfEVDLP4/0Wx6BK5C9Fdrl6dZDb4ra7q8d4c5pF4ddOtLAu45a7Kccmc01s44K52pNKM3+WuErS49sXHIkUnXo1lmMv6RyO7QpBdObtgeCy8YSWpQu4H2EmqiIC0DRe0alHievIUvmxJJuj+iqA2I3+TN/6dO7oEslqwEQx+Fyx9PiIgh1j5nn5QcIPn0l3o5O9hBeBt05RYhBryaZzKSIxsViwOV8+71cWAUfyXVcY5rNZURE6WOuYxF1EORqtxnsGrNXywE09D+bqJlhBAdqzHfWPeN3nHQbZL9s=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB9498.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?LzRNOWEyck5McU1lUXVGNCtlb3NTMnpSVzlQMDUxWlk3T015ai81dkVNbzlI?=
 =?utf-8?B?cVVpSW40VUp0Tk0xeWhYVDF1WVo5b1QyQVZ3VzVnYnNCUEpBQkE1L29zOEJB?=
 =?utf-8?B?cDlXVXZoOEk0dFMxaVdDdS8xa2hVVFIyV2RKUk0wSGkxUytiNlpBVWg3N1BZ?=
 =?utf-8?B?MHpJRERJV3NTTWxpZzhzaU14eVhoQm5oNjVzektGbDJhWWFKOFI4Q3ZoNHVs?=
 =?utf-8?B?RTBhZjJITHNwUlF4N1BKVUJwUmJwZlRxM2dMK2pXTm40TGtYZGRsejRsdkJz?=
 =?utf-8?B?U2ZXaTZabXVRa3J1QzhVRW50dWhNNEpBRk54Y1k0U011ZWd4YysveHVwbjBV?=
 =?utf-8?B?djBEcnczZUFIR2RZSW5uMWcrM0prUWJIc3pVRitUelJBZlFCdlZ0Ujl6UE95?=
 =?utf-8?B?cmliNjVpRkgvU3J2emoyZmRsVlFyUVp5MUNiSWdYck9BNzJPS3pmSUk4aWc2?=
 =?utf-8?B?L1VrQkZ0MkdTaUpFcEpHV1FIUFF5SU9uZkh1V0lSVmpLOFQrYVh6UE83TWs2?=
 =?utf-8?B?RloxWW9HUHRQUGp5dFBqeHl1Rllmci92cFhXRFhjMmtYK096aEd2MzF3OUEw?=
 =?utf-8?B?QTNsemxxVERYMTROQitJV1lPR2p2Wkw1TDNTVWZNRG9lczlLVVA2UnBXRC9E?=
 =?utf-8?B?bzdaOGdNUzJEL2lUUXlRUEw4eU9LalZncFNVakpRZlhTVXE2ci9RYW9nREw0?=
 =?utf-8?B?UmpBSitxR1VFbm5tSGFBMk8xOUpYN2RRSWsrM3Y0ZzJEeWRoTFBRU1l5UG8r?=
 =?utf-8?B?L2FxeVlRZTVuVVFnL25WZzkzYW9pTUsxbVhBeHZReno3eXVxNm1kUEJoTWRp?=
 =?utf-8?B?ZE9lc0hZV0tKYkhHK1Q2UTAwOEpuUEpKYlpKS3BIZXdnOGZXRUNDb1YrcEVD?=
 =?utf-8?B?ZDVlaTJZdms2VHV3UHk4TWoybmQxR0RZYjV4cmU2amtpMzFIaktjdzJsd2o3?=
 =?utf-8?B?YkpZOXQwb0lmYk9vVDdmWGp5Z1pLNDRkSFNPdFNiYWhDTDJNY3dEM3dvZWZY?=
 =?utf-8?B?MDBsR0kyK3I5RFRTNng4dEpxODk1aUMvN0loM05sVXBteVdFOVJKRzBrcGln?=
 =?utf-8?B?QmtwbXFuU1NZTUl2VjM3enY0QTJKa0Z0ODF3aEJ2amMvNXBJdndVM2NYdkZV?=
 =?utf-8?B?WktVS2pZVVRISTZVMTRxaFFuYm1acFZ5bXg2a1RCbW05OHZxN0FsYWpJMzVS?=
 =?utf-8?B?STVFUHhFUldjcEd0aVY1SkpEYzNmcnJsR1ZhWWp3My8xZU1FbklUUzBZMGY3?=
 =?utf-8?B?UUdPZ1hMRllMZlQ0SXhFeHlUVi95ZVd0UE9jRkhqT2Y4REpuNnF2dW9CcnVG?=
 =?utf-8?B?b2NxR0lBd2hnazlsaWg2SjNNVmNkSG8yVUxRd09CdzBVWFppUVE5ZkdkN05x?=
 =?utf-8?B?OEcxWHVlQVlYL0pPWlZ6d3hoNlIvVXVnKzVGN3gwK29IUFFaLzhLa2hQaEFl?=
 =?utf-8?B?NlRHblN4U0pSR3FFRXVNeUxXeUpNbGcwblhnd3kxMlNSUEF2bDJvR3BCK1dU?=
 =?utf-8?B?V21qUVJ2TVlleFlROEtLOEpINEhNUldNWVVYWWNHUGhYRjlRSzFuS3JkOVE2?=
 =?utf-8?B?bVFTRnRqZFpRSWp2TXRWbDUwc2E5Z1psOGtnb0hYRzhwTGQrQzhOWXpQNU9F?=
 =?utf-8?B?WDFiMGtIZTlYVG9DcDJRSTg1YlNpZGxxMkhPaDNPM0JrNWJlSDlHMEJ4TzVy?=
 =?utf-8?B?UGFyVDFmVnZ4dERHNFc5emdqd0RlQ29BOWo1RnZRbVNCRXhzd0dnVWoxOXN2?=
 =?utf-8?B?ZDBwNnRoK1ZyTk1pTW1xZDJxQldFcE9ISUNua3FEcldQcTN3YnZDWVdZVG9E?=
 =?utf-8?B?OHJYSm1XTFVoa2NXd2dVelFFNjdxYnlnalBnanBaeTRYbEFONjAyQUFmU29t?=
 =?utf-8?B?YlpuZzczbk80UTNzRys3LzY1K1FiSHEwT2I0YXkyZVZ2Y3NzRnhYR2hlZm9h?=
 =?utf-8?B?dllFbjY1NTBtL1gvRmdYakRvL0JHdDdrN0RvQ1FCamdNYkxTZDY1N1NHcm53?=
 =?utf-8?B?UGFJSFllSTJTUEl3Q29kbXZKLy9LcHp6d2pEdENjd0Vic0srOVF4SGtaRDZl?=
 =?utf-8?B?cGErM1NCdzZNNDJSZHNZZlBaaGJ6cmVGMm9QR3EwMkNtVTF6VWQxZzB3Q1BQ?=
 =?utf-8?B?OHh3eUl6ZUpxN1Q2U0NWKzh6M0tZNXcyVVNNTXhzQkZ5L2hzNXJqNFNRby9s?=
 =?utf-8?B?TmQ5QTI4NzZobFJzd3ZPVmZUS05MM2xrQXZQVm9ZOWIrQlZYVGNUczVLRUZQ?=
 =?utf-8?B?ZDhkSUN2SndyN1BiOGQ1SnB0dWE0cXhWOENEc0JVL2ZRMC9rWUdoTkl4WVdL?=
 =?utf-8?B?Mk1tN0ZoK3Q1bGdqYXc0aXhuU0dJTlhOcDR0L1dTTUY5em0vSHhCUEN0cWd3?=
 =?utf-8?Q?TDY7ELUge4pA5ChI=3D?=
X-Exchange-RoutingPolicyChecked: aIq1gJuybK7ovMp7wNM/8ecw4nmwc6D3QffZn0K/b3rKFvtgyO11Fo1LELV6FUBuRkoix8JS2c3m86GIyyH7gwQXFiVaic4zDsLQQLUXtRMZTgXn0VAIXnAUV5Wiu+RlGPd5CMKOO+Vd4ZxTZTIJbdEu9ZaOZqQZzlDf0narT6iW3Aq90t8YqZWVxF0BM4q3UDd20jW3L/ofCt85jl0i1z+SnvNIymhK694yfJLCeAjzOvu/T/3Fb09Gg/QLMcVKKoF4U6HyeZ1HsidJTzR1gg7V4jg9rtxRZgpl40pdcjUyT33nVObT/nPv5qps17eXIZiKnBL6OnbgR+9BNOFbHw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 49227ca7-9825-4904-284d-08de8fbd62bb
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB9498.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2026 07:07:50.3867 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N8yM9P/L8a5DsWCXIAxsQdsYNkvZOFCJwREfrqVERF5MRWT622/0Y+hIe/oCb7EZjMDWRn9tRlnNrrrCYUq6Bw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF12B0A4A9B
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775027283; x=1806563283;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XEkhz5HfM/XfjdcVqMCya0x/SPPex+4ySFHYolkgE3M=;
 b=IBLUxj5chZPtWQ7pHn54+R06LduARpbD2gFVFbMMJpBwEPclEq3eydPT
 DhQQL8PtD4Ors/NQ+1y6PK4kG1eQ/HtCYR5/RI8mhppoBmVsjA7Grp//L
 dN/22w5TYNX84hVEYJB6XA3Gn3VvH4U2pllyZBqz+DJLljVyNMfn7wpl6
 rm0KxseJGG9GrnLZN84c0gXrpa/g8ZPWVbOnmG/7m353niKhMZLbU1OCL
 5HqNZG9+544seWAYfToJskkhomHxb0aNWjNQXW3+wwQigk/ekU3D5O9PQ
 tTB8KAI5IIBBACmsEgDxosDHkbhLzkNHjS4XmI+0rJTmtOYjuq4DouNn8
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IBLUxj5c
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/1] e1000e: reconfigure
 PLL clock gate value and re-enable K1 on Meteor Lake
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:timo.teras@iki.fi,m:vitaly.lifshits@intel.com,m:todd.e.brandt@intel.com,m:david.e.box@linux.intel.com,m:lenb@kernel.org,m:marmarek@invisiblethingslab.com,m:jeremie.wenger@edu.ge.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim]
X-Rspamd-Queue-Id: 41B393758EA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 25/03/2026 17:49, Ruinskiy, Dima wrote:
> On 26/02/2026 14:36, Timo Teras wrote:
>> Yes, generally maintaining a large quirk set is infeasible.
>>
>> But this is my point: if the affected set of machines with this issue
>> is so large that maintaining a quirk set becomes infeasible, then
>> the proposed change will make life very difficult for large enough
>> set of people that a better solution should be devised.
>>
>> Timo
>>
>>
> At this point, with the current PLL change, it looks like the number of 
> affected systems would be smaller than would be with the previous PLL 
> value.
> 
> So far we have not received additional reports of regressions caused by 
> this patch, other than yours. So, perhaps, the it can be manageable with 
> a DMI quirk approach. I went ahead and implemented the infrastructure, 
> it's actually quite a small change, and does what I want (automatically 
> alters the default value of the K1 disable flag).
> 
> Could you share the DMI IDs of your system, where the issue is observed? 
> Most likely the sys_vendor, product_family and product_name, located 
> under /sys/class/dmi/id would be the most useful. I can add them as an 
> initial DMI table entry for v3 of this patch (or a follow-up patch).
> 
> Thanks!
> --Dima
Hi Timo,

Just double-checking as a follow-up to my email last week.

We plan to send this patch upstream shortly, since the current situation 
where the upstream kernel is unable to pass Energy Star certification 
with the default settings is not acceptable.

If you want to share the DMI IDs of the problematic system I will go 
ahead and add those in v3 or in a follow-up patch, so that K1 is 
automatically disabled on that class of systems.

Thanks!
--Dima
