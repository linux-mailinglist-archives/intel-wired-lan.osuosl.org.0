Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB518A2F49
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Apr 2024 15:21:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E443607CF;
	Fri, 12 Apr 2024 13:21:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MfUfa8Qqe1dy; Fri, 12 Apr 2024 13:21:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7026F607D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712928102;
	bh=j3sBWvW4h3FuHEorWr7LkynEnWzQPgoXRD1KwKqQqxQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Jl+zyi0pJ6aLcSCMcFYEMKxeEQ2hlqyweSbK6TIgsFaiOcj//8V3nrMiSZ7csx+Ag
	 oWXTOWN7NaNjKT1cuGxxc+fi+0VQWzkKVyrmIAl9usahNWm1wKDlsNLRBNHEusUK0E
	 gV/ML02XzYFYrgMiDxCClYfKOe9V0C2Iyi6aDm71Pp12AdMLxzmWGZQfHxZEj6WlRS
	 3wUQtiRL5pnC6KwVsRu/pFTRikF2kzTVoltpL0a8S96DLx4hPQdCk+sPBQa8J5RgkO
	 7mGKwx2Azob4OjUVW1wXq8E/YWbKcf85u/dQ09JTnh994QyXcKfblbd1beC0jTBOID
	 pVTaX5tNa8HFQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7026F607D5;
	Fri, 12 Apr 2024 13:21:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 992711BF997
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 13:21:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7EA8B42064
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 13:21:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eEhXHHiUhDJr for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Apr 2024 13:21:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6237C41FC0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6237C41FC0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6237C41FC0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 13:21:39 +0000 (UTC)
X-CSE-ConnectionGUID: x6uzcOpNQ2+ZL0BR1W3E6Q==
X-CSE-MsgGUID: 254MGdBJRSOzUOq1JqVjNg==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="8227370"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; 
   d="scan'208";a="8227370"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 06:21:38 -0700
X-CSE-ConnectionGUID: ldKYwxUrSxWsgh0Wr8Kxlw==
X-CSE-MsgGUID: 9bp72nkzRI653pHM9r+akg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21655715"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Apr 2024 06:21:38 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 12 Apr 2024 06:21:37 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 12 Apr 2024 06:21:37 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 12 Apr 2024 06:21:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L33q64DiaknU4CKcuxehmBlyBHXqeqv2D4DrAuc54VFpPmzJosfePrQp0MDSDI5Pn+vhydNztjGpwLR/GDuMjb6NuTCnf6eOvIU4/LdSM9adWFUztzxwf45lqDBQKQ5f1yUxZ+qwA87RQDZE/BRcK80k0nxG4BzD8t2qxrBkSY0AR67h8DwqS8UwFXRVPnaRhEu9mSm5wREMe3s+wuiSlcpEbl5nZq1VOtHqYLzRgWnQmlVAGuMOGBO4hFyGzqfuMVCI8WxKp9tOEP6PZEvuBHuv8ygnuSLYPWHTaK3L5xwfHUjXuBIIQjywDCLc3W1W90uLVQ0eNi8okq7T0ZNzcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j3sBWvW4h3FuHEorWr7LkynEnWzQPgoXRD1KwKqQqxQ=;
 b=h1c3IueqGD2l5zngOdAmxrSMmbDRp03syBWeQnArVKt1vj8ez5AjuVcDbmrINGnVy2spWnFgiDSCO+5uVv8JQrhd4JUO7DegUg2EfdpJeq5CKXsn8yYlOdXz+ouYF6X6LC0hFU8W7zlEEYOsgKONFRnoyXtfT3Au80ZrwJ5nMBZlwzQYWTuTA2DQjktOaXq3cYMIpPLXhMKtnQl2qN9HNAAW2m/dgFI/7RuIRKsuBl+5+dSUsr5CPf8gZ/0hhBq3kPvNji09qSyDkdUMV3iKOgyxSZyFVlfE7aubJH6RopiYJzepCb/JOWzRsCvukRvz0ncJ44lrI9xcm6OSG2yMIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by CY8PR11MB7826.namprd11.prod.outlook.com (2603:10b6:930:76::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Fri, 12 Apr
 2024 13:21:30 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ac3:a242:4abe:a665]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ac3:a242:4abe:a665%4]) with mapi id 15.20.7452.019; Fri, 12 Apr 2024
 13:21:30 +0000
Message-ID: <fb1a53ea-d5cd-45a1-9073-450f6a753f87@intel.com>
Date: Fri, 12 Apr 2024 15:21:24 +0200
User-Agent: Mozilla Thunderbird
To: Andrew Lunn <andrew@lunn.ch>
References: <20240329092321.16843-1-wojciech.drewek@intel.com>
 <38d874e3-f25b-4af2-8c1c-946ab74c1925@lunn.ch>
 <a3fd2b83-93af-4a59-a651-1ffe0dbddbe4@intel.com>
 <dc601a7c-7bb7-4857-8991-43357b15ed5a@lunn.ch>
 <ad026426-f6a4-4581-b090-31ab65fb4782@intel.com>
 <61a89488-e79a-4175-8868-3de36af7f62d@lunn.ch>
 <206686dc-c39b-4b52-a35c-914b93fe3f36@intel.com>
 <e4224da7-0a09-41b7-b652-bf651cfea0d0@lunn.ch>
 <cf30ce2e-ab70-4bbe-82ab-d687c2ea2efc@intel.com>
 <c6258afd-2631-4e5d-ab25-6b2b7e2f4df4@lunn.ch>
Content-Language: en-US
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <c6258afd-2631-4e5d-ab25-6b2b7e2f4df4@lunn.ch>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0002.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::22) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|CY8PR11MB7826:EE_
X-MS-Office365-Filtering-Correlation-Id: 0df41ba4-5e09-4420-0fb7-08dc5af376bd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sNiHP46Sv3Rte1pBUOFO/EBEZY95381En+VQVHf6AHzUZk2c2ARiqT1p5uNyNKK3L2pkgIV0sXhIuov2sfJXpQDUu05s/0hVf1sgjohENq9w+Xh7PlKkOiNAJ3ZUBJYHwqlCFh6PhAsIgMPLmjJfM5U416gZDsdxxXjUsKGn4cBA4LR4ISZLY2a3ZTiwa0j4JvuDcohqCTn+xVoNqcj9Adb81dy3HIICx+vkzB8C+O6+8dS17wVHOz5J0oChJHJC5HzMiQ5fVa49C7+jSW9LXIOAZcpL0EdytnsqfU+LEloLxJdjDN4sb5MZAdSH/aXcDC7K1kx0h2pw/GoABYMsnuxFfK8YxlD1LHpH8i7bNwlgg3vII/jr3ZKtcrToK9ysJjzTbHr7cG5aidSaMNNx7zGp5VYqAGwn5JLAUWgwS7GfkpDpTjLwbP7boXagybu8zDHnbhwnOOWMkBjLqrH3U4QgTAYYAGH37DNeUwS3kUzNnQGkFkPt8tTHgJeN4IjTNlV2+oHYh9O2OMjZI8uvwZDIb2f04g8KFGiDbTSIv8EaBoxJzKCEJRulzZWoikjg4azsghYpVGGBPrYv/cz3ezf4yXvj7Xjt1ZNsPztEeb5f5gTFBcrlNs4jC/Z4DA2Soa5yDK+dR4fKYPmkhO7z0Yd9atfN02IFi0K7jHsKNnw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UkhYdUliK0RKaEJmN2VmVVpqSmlSOGd4NFhBRUhJZEN6c3lnSjd2UFowTWZp?=
 =?utf-8?B?MklMZE9ueXNrZ3A4MGdYbUxGa2N2c0syaCs5eVgxNkdRcExxamd2ZmR3VGVW?=
 =?utf-8?B?TVRKUStpNUlMUTN6RW4xMGhETC85RDdrbVN5TXAvNVhDVEdzUDlKVnR2WlZh?=
 =?utf-8?B?WjdGQU90KzQ3aXJaOFBKbTNsY2c4bVNsalpiOVk2QkxJWnFxMDE0YWZXUHpP?=
 =?utf-8?B?RWxTcCsrVjRvc3J1VEhLQklCY0oyVG1JRVF5Sldic2NJSWZsVGowWGcycEVJ?=
 =?utf-8?B?MU1ZTnVoeVFLRDR6aS9hT2dOK1dyT0s1bkhkTGRsdkxFL1hPWndvdUNCVFR4?=
 =?utf-8?B?Y2JXWXZGR3Y4d1NPNk9QaDdVMElaL2hoS0V4N01yRlNmS284dmUzc0tFVTBs?=
 =?utf-8?B?ZmtWUnFOODgxallWaTc3RDFJVjJXNVlDWEoraFZQQ1RKd2FUeGpiSmZKMXlJ?=
 =?utf-8?B?RUJrM1Rad0MwUFVkUmpGUUpic21kdStvU3BaajhtS01hTWVuSzRwcFN0b3hW?=
 =?utf-8?B?cnpuOHNKNGtoNzBNMjRSSlhwZzVGZ2pNQVdBQTZyWGprZlVaWnlFYWp2eld3?=
 =?utf-8?B?MXJMTTRuRVJVeERRVk9RMkcxdExNL0o1aE9KM3lEVEUxYVQ5cW9kWXFTNnFO?=
 =?utf-8?B?TlNJN3RVME1ZR2lQeXh6WmF4RUZZM01XZ0xDaGFQSCtaeFdGdVhIRkkvUU9a?=
 =?utf-8?B?L3JuWnhsZk9ZZzBoREZ1RjFLc2dpN1g2cytpamdQa1Q2TmFmcUNKb3JUUzFB?=
 =?utf-8?B?dkYva3JEZjBrY0xtTCttS2t1TURWVmtXeGswcHlWNnNxNmxaS3llMERtRHBr?=
 =?utf-8?B?MG4yVHExZkl5a0dHamUrZ2NicVN5QXV0N2I1dWFUejBPSzhVZUo5Vy9MZ0cw?=
 =?utf-8?B?ZzFlK3N6Um1OMzFoUENKRTlkeG4wVUtONVQvU0Nrci9zZCtVTGo0Nk8rc0dY?=
 =?utf-8?B?RXNaV3o2c0RybE5UdEtaaHFnYUtMT2xFWE9DYU1wQ2d1MDNoUS90WHdEdk9O?=
 =?utf-8?B?TGJhd1ZpZ2l6UmQvTDRndldkc1NxSkJUMkxRbzdZQnhRRE5EVWRoMjEya2tt?=
 =?utf-8?B?Ni9Xam1RbFdOUEJKbW5wM2xub0JBQWFYOGlZVGY3cm5RamQzcjhkVHYwUG1R?=
 =?utf-8?B?VDJmWG5CL1pqQTlJclRUMlIvL3gxa2FVdXVvWHgzOHlqOGQrVDF1UmhLaFJl?=
 =?utf-8?B?d2MrZER6NjNOR3NsTnZPMXVWd3UrNXNzaG5hUWp6Mzh6dVdwQXlYME9VR1dX?=
 =?utf-8?B?NVlEK01PRStxV28wdms0YnE2TmJ1YWlhckFmOVI4N0pCeGFYRmhUMVZDQ1Vy?=
 =?utf-8?B?UmhiUDdrN2tMSXErUVBiV29Xa2dPNnVhcElBQnp3WmJBZmI5TDBPWGxXTThI?=
 =?utf-8?B?MEViaDJkYm1IblFva2lDUzBlZ05VbWFFZGg2ZkNCRGZjejNjd0NhQUh5cS9r?=
 =?utf-8?B?MFJodzU2YWcycW1QM0RZWU0zemQzVnlBOEdnSHlKUXZ3a3NwT2trWU1PY1RZ?=
 =?utf-8?B?WklIMlRCZWFyM0JIbGtvdVBoaFR0RGdkNWx0OU1HaEVUQ24xMGRCeHppM0VM?=
 =?utf-8?B?ZWpucFBDc0IzOVJ2S29Eam1Ed1BnVHZ0dmJZZk1xQlgxRVJZZDE5VTJRa01U?=
 =?utf-8?B?S1lNQktPNytPVlg2Vy8vZTAvRDNsMXBmai9QY3M5dmw2bEhCSkdKWGMwKzlZ?=
 =?utf-8?B?TU8xMGE4ZWRJR3ZJa0lIRTNiakZHcUt6RG1Hc0g3a01aN2F3bnVLOVJKdjJT?=
 =?utf-8?B?NEljekVWamhJZkU4RHozUnhXQ1ovRW5ZdkY5c0NuRjBEa0tkQkNXZWNHZ2sr?=
 =?utf-8?B?WHhWWjdYNGFrM092eER2RTRNbzVYZkZzVzkzT0pmY1YzeU1rcHRVZHZxcDc1?=
 =?utf-8?B?L3lHVEVTc0VZNjNoS2xZY0Q3MWF0UkovQ1MzN2JldzQvYkRWT2pjaGt6UE1l?=
 =?utf-8?B?azhPN3pwTEFDVGFBZzNhQlZiT2t1aVR3S0F0emV3NUZGTHBLR0FLMmpMVDN1?=
 =?utf-8?B?amR6V0V2bkJDek9YSkdodDJPMUxwa3V4c1JlUU1SV09NcER4Uks3OFBFL045?=
 =?utf-8?B?TmlXVnUyc0g0U0FyWW4zaGlmbzNzVFdUVFoyOFd6dHJKR1ZJR0swWDlTaFpq?=
 =?utf-8?B?RHlsenN0bktsbjdTV2lQQXV4MXJyV3NuWGtjNTFlNkZ1TDI0M0FkL0pkYUk4?=
 =?utf-8?B?cXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0df41ba4-5e09-4420-0fb7-08dc5af376bd
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2024 13:21:29.9361 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xIxoNasMlu9BfedwxA5TFsi3u1hg6AKRUxCYgopQOpGqgYy87DqsvK4uzxmltK8zZlJ8p9jDZkt5js4Pm+aNlHEJc7n9KPwzENsL51cDkgA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7826
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712928099; x=1744464099;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Hij4Pk55raLZBRX3v5XRaSu41Pp4ZX527h5uFkRxRJg=;
 b=kcKXy8PxJ+5V4VNsCEr40wrLzbyIpuPyRojq9Rc59BfBo8ysT4Irbe6P
 T5SCT3rD5U6YHj/t40B+HAsCFicSQv6V6gSaUknB9hf8kNRXuxKUrb/9N
 hfXpyZl5rbgzGdWt2DLSGdMdq3ocbcLYflqPXPSzs/aU7z9HyCCzlbrx0
 T58bj7rYuF4whlte5u5RomuK8nrLXNbu9qv26EwbgGxenk6lbCxv6xNtv
 nyL40kHxhtu7OJP5xjVhHmfXR/XKX70wyw6byKPM9htvHyRRWyJvORGuC
 lb4eaCqb7GunLp0ZGYMHUMSSxnJhWPEgqBPlDLL0EmBR+DRNYhSiN4adE
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kcKXy8Px
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/3] ethtool: Max power
 support
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
Cc: netdev@vger.kernel.org, edumazet@google.com, marcin.szycik@linux.intel.com,
 anthony.l.nguyen@intel.com, idosch@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, przemyslaw.kitszel@intel.com,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 09.04.2024 15:39, Andrew Lunn wrote:
>> This is something my current design supports I think. Using
>> ETHTOOL_A_MODULE_MAX_POWER_SET user can get what cage supports
>> and change it.
>  
>> This could be done using ethtool_module_power_mode_policy I think.
> 
> All these 'I think' don't give me a warm fuzzy feeling this is a well
> thought out and designed uAPI.
> 
> I assume you have ethtool patches for your new netlink attributes. So
> show us the real usage. Start with an SFP in its default lower power
> mode. Show us the commands to display the current status. Allocate it
> more power, tell the module it can use more power, and then show us
> the status after the change has been made.

Ok, but do we really need an API to switch the module between high/low power mode?
I'd assume this is done automatically e.g. when we lower max power in the cage below
module's high power mode than it should imply that the module should go to low power mode.
Same with the high power mode, if enough power is assigned to the cage than module
should go to the high power mode.

Regarding the current status and what module supports, there is -m option:
$ ethtool -m ens801f0np0
        Identifier                                : 0x0d (QSFP+)
        Extended identifier                       : 0x00
        Extended identifier description           : 1.5W max. Power consumption
        Extended identifier description           : No CDR in TX, No CDR in RX
        Extended identifier description           : High Power Class (> 3.5 W) not enabled

> 
> Then lower the power to that cage and assign the power to a different
> cage.
> 
> This is something you can later reuse in the 0/X patch describing the
> big picture of what the patchset does, and it will guide others who
> want to implement the same API in the Linux SFP driver, or other MAC
> drivers.
> 
> 	Andrew
