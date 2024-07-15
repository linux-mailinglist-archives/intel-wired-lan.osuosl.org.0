Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B34B931682
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jul 2024 16:17:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F194140734;
	Mon, 15 Jul 2024 14:17:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P3Gui_uSU5r7; Mon, 15 Jul 2024 14:17:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 39C184064E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721053053;
	bh=Usqr7Hld/5jtVmIv60WFzb7AP4gkmz81AR7Q4fy19mI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BSWCjoiIBX56Kk48yq/+0fgCeo02I5EiWiq06cfgEn0xPqbf1CWa/3n2hxjqiSbJt
	 0duaP9idpFaoY7DLm4MhYaEmX9snq9SExCorLjuzfiTJiYQl9XJsFe9+Qw7dNV+Ddf
	 vy9UbRjQ//UPMZJDy95P6XSNq+pVVgwV3nk1mWfbt/ogi/33toD1JiH13wM+pn/IZ6
	 lEUNVccjFRNi8QgIIAHcTFoWb+bA3ghF+QvZFCHzArC4QQbPU0vNGWMNfBLyyASP4H
	 WSWTkKYoeIgOL9pdKcSeZ7ehwaiuW9q7W3GvECqFSv5lltK5uDnKARABJIUVtPThJr
	 gB81CToWgsvkw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 39C184064E;
	Mon, 15 Jul 2024 14:17:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 89AE51BF3AD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2024 14:17:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 75E7E6079F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2024 14:17:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6uttvSq6BdAz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jul 2024 14:17:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4E21760640
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E21760640
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4E21760640
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2024 14:17:29 +0000 (UTC)
X-CSE-ConnectionGUID: byAEFuteSRyS4Wrvbr7GOw==
X-CSE-MsgGUID: csXWE4xnSDKTrYrSilqJUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11134"; a="35977701"
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="35977701"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 07:17:25 -0700
X-CSE-ConnectionGUID: SEsrdAB3TbiSG56lD6q2xg==
X-CSE-MsgGUID: qaianRoIRS6OUB61WrljHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="49494452"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Jul 2024 07:17:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 15 Jul 2024 07:17:24 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 15 Jul 2024 07:17:24 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 15 Jul 2024 07:17:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hSzX8GJoqy7lLU+mmTYVkglj+bkOx/ICbr0una6dLvjUh3KayepMjei01ON4GUAFRHinIm/jyX+uNW7/Aiuk0NgBURiRvpOkFGArntxZ0x0OHFWcWf2x2JjhUcOVpxRqGESzsqPgI3qAkmuwPhPrLQ8IqA9PaTKJOw3Vbx8cHnE39J/8ZIGEZVBn/vSB0GTifndDkwVQPIVC8er6tw1UZHqpswvrt7PFv0Mbb32s4xCWQUzOdYWadcVCgVyx9a775BCd3UQpqBpV13OSiWrRarEiUJusch/l489pJdmWwK/1LVTrh0ZiAvVaIWXKxXNk2IETsFvTySR5F7uW3hkyqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Usqr7Hld/5jtVmIv60WFzb7AP4gkmz81AR7Q4fy19mI=;
 b=u3ydWkNA1nY7n8F8fDqZ3l97CkpeVf1Dn6r+ypPx5nmnSm4bTNhO08S6fdLPzo/V/2C8uWTS8Us/BKWvxu3R0n5fe/S46sUgjI5xIWCbvkc5lzmFl2haSYpeDe/ggHoV6maUI3ceEw+V47Xx4c03DrTOYt2OlnsOTlVTjJDrheXjCDg3IfXdQfirPWg7jp+yzh+RD9qCFOelV+7NuoSFgHxpduunLgcxzXVjbxVW8lFipqp26zKz2NVnUiVZgBu+4TTdSsXEC/HXcqCop78FZ0CYLFSJ2c2t0gzgl2giSjtRFs+ng5YJ1vQtDe+sJy4brWM019grMZhiNlFfTd+FXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by SJ2PR11MB7546.namprd11.prod.outlook.com (2603:10b6:a03:4cc::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.28; Mon, 15 Jul
 2024 14:17:21 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f%5]) with mapi id 15.20.7762.027; Mon, 15 Jul 2024
 14:17:21 +0000
Message-ID: <8bfff810-2484-40cc-aee1-7827201aceee@intel.com>
Date: Mon, 15 Jul 2024 08:16:49 -0600
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>, Junfeng Guo <junfeng.guo@intel.com>
References: <20240710204015.124233-1-ahmed.zaki@intel.com>
 <20240710204015.124233-3-ahmed.zaki@intel.com>
 <ff7bb882-5285-49c7-bba7-0630be1abf22@molgen.mpg.de>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <ff7bb882-5285-49c7-bba7-0630be1abf22@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: ZR2P278CA0013.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:50::17) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|SJ2PR11MB7546:EE_
X-MS-Office365-Filtering-Correlation-Id: 3291b3a9-4666-4b8e-a0de-08dca4d8d723
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SkkrTWk0VE5Oc20zZkVVdFNZYVBVeXpOb3ZzeEpjblRqZ3QzYklrckhhbW9M?=
 =?utf-8?B?RUo4MFh2S2tIS24yVVFKbDc3d1VjcTRiMEdqa0NacEtmbmNvY1FVa0JXVGNk?=
 =?utf-8?B?YnEzcTVPU05nN1RwS3FGLzdDVmpVUU9vc3RMYVhtNUZ5K0xVMU1OSWp5Wnlh?=
 =?utf-8?B?WTZ2MUFjbERySEZ5VTNMTmhzYitlWnVmaW9DYUN2TlpYZzRFeWdYait4MTA4?=
 =?utf-8?B?M1AwQ1Z4blZ3MkN2dGl0YUtQUXJuWGZsdCtwclhaNzk4bGgraFluSWVTNFBp?=
 =?utf-8?B?LzV0ZEZoZTVGTFl6emhmM2l0SWhEQUg3SzlGbjdERzNvcWkvQU13YXlNeGhY?=
 =?utf-8?B?TGl1VjE5TlBhcjZjelZlaWVrS2ZwckM5cWJQbU1LUUU1RjNUQVNkTEw5TWJQ?=
 =?utf-8?B?dDRBeSt0dVRMNmNWaWQrbmJqc0hsNC8yUTdpL2FSSlNvcDZGc1R3UzFWK09S?=
 =?utf-8?B?TFNndytTWHV0SWQrb0k1MndNMG9EVXFveDRCcHFxYzFFd2ZSa0hLSFc5b2Zp?=
 =?utf-8?B?RkpKc1pWUnVhOCtsTkc3N0tyaDZsbDhBVTFPaWZDMGhELzN1WFJ4Y1VoSTJL?=
 =?utf-8?B?cER5dnZ6OU02Q1ZRbVorNDFicWRZeGdZWmR5K2dhcGJ4Q3BVRUlKUUd4OFRY?=
 =?utf-8?B?VXR2Y1JkSWRyVFJpZmp5Q2MxVXRJRHVKT3dzY2R6a1ZKdlJNRzdPVmVlNURT?=
 =?utf-8?B?Z2pJRFEzNlhLdVFuVUwvbTVDSEFyRzJoV2FPOC9nTXlieXR3VjU2ZUJZZzZ6?=
 =?utf-8?B?VVZQTkp4dHhLZlZCL1FGVFZIWHRkcTlxdjJ6cGdGYXBsMEJQeUhXVmk3V3ZZ?=
 =?utf-8?B?Mm5Sd0Q0SUQxcE5Kd2VTZDJ1ZXNNU3VhUHQreWVYdksyOVNRc2dqaGs5a0dW?=
 =?utf-8?B?RmpMWWpWUDlGcHBHdDhyMHJseVllRlU4bkRyN3l5YllOeHZrdDRCUFZiOXA3?=
 =?utf-8?B?UHI2SC9mUWFkVXIvb3hoOC9kNjhoNisvaHcwRFlvZWJ3RXRCUncySU5NUFpa?=
 =?utf-8?B?dkMrd2R4OFQrYy90UnJkeWJmdkZ4dmVkZWlWQlRQU21PRGN5Y1k5SmZVeng0?=
 =?utf-8?B?MFM5RCtCdzdFWi92VVZGWDQ2Wm1lVVJvQ2E5STYxSm15VkJYL2dtNnIrblVG?=
 =?utf-8?B?QnRkY1V2R3UwVDFhVU40Q2kwbjlkaG5aYUtNeHIvaFh6UENvZVRab292K0JR?=
 =?utf-8?B?Z1dVYTdETjZwSjJ2ZWIrN0dBc21LTXR6d3pHZlFldGVSZ3hkN2VuT1M2QU1J?=
 =?utf-8?B?bnBzSGdFbHlpUko0aUo4bHhlbEdRZjVYTFlha1ZYWDdrUmVUYndLM01xSmYr?=
 =?utf-8?B?MWNkUTEzL1oxM0ZrODFOZUJ5U2w0MjVnekV1K0FvUktGMzYzV3lrM0dhVTdC?=
 =?utf-8?B?WFBRdXIzZVR2bi9BbnFLdncvWWUzWEVCWktqZ2xYYU1UQ3A4S0t2U0hERTNk?=
 =?utf-8?B?cTJHOUkycm53TXBwckFhSDhZUGE4OW01UTNyTUFnZStCUUU5cHA4UTBRaURw?=
 =?utf-8?B?RDN3dGdEczBEbFRrRjBGaXhxNjEyR2NyZzk5a2dtKzArSUVGQjdDRndhMVVn?=
 =?utf-8?B?QUE2ZThmUUFqRktVN0ZYVTJJcUpFMEVDWGlGUnFyWU90N0kybUM3MGxzUFU2?=
 =?utf-8?B?R0hrcWFrMkhIdFpWb0U1QVRMUVBiOG1FQ3JBaUNUZmNxOCsyT1ZYWDJGZ25Q?=
 =?utf-8?B?K3IyU1krY1lOcTNvdGE1Rmh5Wk5Jb01yVVY0b2d3NTFhNWJXbWpzYmFudG5V?=
 =?utf-8?B?RW9lY1lxNzZRN1RpWklhRHNkQjY4OEVNYnlWNm5XdjlVQy9kTHhWY1pNRytS?=
 =?utf-8?B?R25xQ25YbDJhNmQ4eG54Zz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TWNuMTA5VFphWjl6emVob3c5TEc5VDhhVW1qTE1BRlE3Uk1ha28yWG5lL1JF?=
 =?utf-8?B?bUN6ZjdJY1k1QkdPSGVmWEFTWm0xY3FKMUlRakUzdnhIWE04eExZZnp1NUlS?=
 =?utf-8?B?RDRWNFQxY3R0Vkg5Y1BOVU5GQ3phRkR0RCtWdFV6V1JlM0E3WFpidHhsWTJp?=
 =?utf-8?B?dWVvUmJYbFczRHVhZ2liRTh3YzNuMC9rL0RwQWRLeUdLQ25XM2dWeDJXQjZr?=
 =?utf-8?B?WklOVjdZQWltbGl4elgwM2RUekl6RDA4d3Q2NEtTNlQ5ZWZsaUsycU96eEZ0?=
 =?utf-8?B?aSszYzIybFFkZkpxS2hiRml2N3dxek85cFpvUGZKcEU1RkFQT3pNSk5QbkZJ?=
 =?utf-8?B?MlhKNXBpbStaQ1U5c1YrUWMydnl1ZngveC96YkQyei9tbTg3ODUrVjg0S0Nw?=
 =?utf-8?B?ZzNSMXhvRDBXK29ZUkRlUHRYU2UyZ2xtajFqQlMzeThISW9RR3BMZGRIdkZN?=
 =?utf-8?B?QnNkTHZzVkVvbkpRMmNKb2JHd2hPeUt6bk5uZ2R1MUhNNkdCZFhjT0Q3VFhX?=
 =?utf-8?B?MFdWU1hkSmFFSkFobW8vRFVQbk81eWVaajhVSis4M0JTdElTZ3JGbVZqaGFh?=
 =?utf-8?B?d2hPWE0vOTk5N1BCWVVINnlMd0V0Y0dHQ21nZytZSmhVUXBNZ3EyaHIwRUY0?=
 =?utf-8?B?bFNmZUFGbkxrZW9VaFBBTXNJdEhIZENpWFNUZ3R0TzVjNkx1Qmh4bFNRTHBC?=
 =?utf-8?B?MjBIL1dOOWZsNkEwQXhGN05wVkdGQ1NLMk5oNEtpUlBuajlOeFA3bVU1UTRV?=
 =?utf-8?B?ODNKa1c0R25YSDE4c1BSdG9sRU0vb3Uxd2pKUm4xRkZkT2xocEpBNnIwdFNy?=
 =?utf-8?B?RDVZRVVIT2ZwQ1p3dUNyZS9uQ0NPU3k1QWF0WWhYQnNhaGFxcHhpZ1paZGxy?=
 =?utf-8?B?ckhxaC9OdVdBU2xVVnYvZEZpVWF4OUFpbUErSXQzOW43czhGTUsxQ0JNTFBu?=
 =?utf-8?B?NmorN1cyRnI5cEYxNFlyY2FRQkVkU0NUNzUzU01QTVhiNXduU0VZbkF3QVBK?=
 =?utf-8?B?NlBKeUdwUHptQXFPS2x0SWQyZ0J0MGQ1Rkttb3ZtYVZ6cC9QNm5lNk05RVhW?=
 =?utf-8?B?dXBlMkVvN01VN1NLSHZUV0pEcy9oN3htUWF6V0kzQUIvTjAyWXEyN3FuczE2?=
 =?utf-8?B?L0tEVWlYdjREdkxCVEwzUHZiRXVTZkFtWVdqb21Kck5YSE1lMkRiSi94bnE4?=
 =?utf-8?B?dEYzUDNDbnNKY0ZneVRSSHFESUFNK3BJTUpXOHRWNVh4Tmx3cWRDY1lFT2VG?=
 =?utf-8?B?ZG93TTEyOWZ5ZXZWVzF2bi9RMkdxdUR0endpK2h0OGJHcnNSTmRKeGJtSUNJ?=
 =?utf-8?B?Z2lEMy9PMXpicGJqVG1Gc0JNbTlUeVVaZ0JzTWE0Vm9qMVpoeHFNdkpvbkl4?=
 =?utf-8?B?OXZsdU9MdENBdncvbVNHcnAwSWMxWUVJTlh2NDkzaUs4SER4TzVJc1dwTUJK?=
 =?utf-8?B?NEtrRE0zTGhRRlIvYWkzcndPL2RUaFVBQ01kdXRiY1BCSWdHTGpYS2NWWHJT?=
 =?utf-8?B?U0JEN00vOVB3enV5OWxFcGd5V3hNZG0xWGNNdnJHUDdUWEJVV01FZytkZ0Fn?=
 =?utf-8?B?MDEvK2ZwNEVaMVV1TVFTSVM3QzVobjVxYTFUaFVDWmxpOVJsTExOd0hzMU40?=
 =?utf-8?B?VnNQOXhUUlpkTXlTbkREOS9KOUczZHUvZHNJWEhuZWRGOWFwRTJPWkpjZ2Rh?=
 =?utf-8?B?d0ZoakhmRHpWRlNSSDRHNzJYQW9oT0Nsc29jQWhtVUJkYlRTY0lCTUZLU3lX?=
 =?utf-8?B?V29hVzAwdmJ6N3k4KzUwdTVwMTJCMVg5VVJCSm9ZWXROL2Rob3llWkYrQjd4?=
 =?utf-8?B?QUJJUDZKQUhrYklpd0haZ3RQa1B0T1BxOXB4anBnZEUwaFk4YytsZ0tvOEwy?=
 =?utf-8?B?Rm5SNlRNZWdQNWtPeUhFWHlMTlR6aTE0WDUyUUJWYnprODQ4d0NydURQM3FX?=
 =?utf-8?B?REk4SmhrSm81VmxvVkROV1VicDVYRXQvREhzcTdUb1NUdTQvWUxnSUU3aXZq?=
 =?utf-8?B?dXAyeGZVcEdVYzR4TUFOYnBIZzBIVGYzWUZWaXdoOWN0cnBqUmhNSVRXSktO?=
 =?utf-8?B?dmladk1CeS9TM2p4TVBnUlJocFFxTWFVMFBmMUZVWXhJSmhYa2lmK0tNU1RZ?=
 =?utf-8?Q?3mnjRVBfv45GbJ6ilwwXzVuPs?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3291b3a9-4666-4b8e-a0de-08dca4d8d723
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2024 14:17:21.2049 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HlXngJP+L0/P3ml9XratVpUzOyx7RyQ3z8xcieWSDboslT+/OZWafIamPqV9s4IhzATYxMq0wyGINdwo93Xyiw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7546
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721053050; x=1752589050;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Dbl/PiC+ZdvqXWGVLusKwJNjbMTGU8jnSGVaNrBNVBg=;
 b=FDyfKF3FnBDD928aXvnkRWZNsVNKK+yTxbNiqB4+VMO0N6r2z3GkkKMQ
 yca/fiLUS08yXrFM89d2FmXid5sRCYoCtW5ISDCwgfG7/9fJmDCsSyXaq
 MfY0X2FEwYVVtE/8B3ZxyUpFv3vmAHhomYJAAZwW/ihk/YHxd692qepl2
 ojNOZnnFUNZhinyxIpflDWmg1uSC5VIrnG2hNk32v8maByOJ2VH2GGpKE
 TPr1USG+W+uZ00gq5UpQ5v4N2xiVo87dzQ1jqnzXsmogM9NPRcN4qtYxS
 DhTsyZltpZaE+lTZp30kuOOD70nA56h3RkSIevcnbXObbZ1MI+dIERcmS
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FDyfKF3F
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 02/13] ice: parse and init
 various DDP parser sections
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com, Marcin
 Szycik <marcin.szycik@linux.intel.com>, intel-wired-lan@lists.osuosl.org,
 horms@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2024-07-10 11:28 p.m., Paul Menzel wrote:
> Dear Ahmed, dear Junfeng,
> 
> 
> Thank you for this patch.
> 
> 
> Am 10.07.24 um 22:40 schrieb Ahmed Zaki:
>> From: Junfeng Guo <junfeng.guo@intel.com>
>>
>> Parse the following DDP sections:
>>   - ICE_SID_RXPARSER_IMEM into an array of struct ice_imem_item
>>   - ICE_SID_RXPARSER_METADATA_INIT into an array of struct 
>> ice_metainit_item
>>   - ICE_SID_RXPARSER_CAM or ICE_SID_RXPARSER_PG_SPILL into an array of
>>     struct ice_pg_cam_item
>>   - ICE_SID_RXPARSER_NOMATCH_CAM or ICE_SID_RXPARSER_NOMATCH_SPILL 
>> into an
>>     array of struct ice_pg_nm_cam_item
>>   - ICE_SID_RXPARSER_CAM into an array of ice_bst_tcam_item
>>   - ICE_SID_LBL_RXPARSER_TMEM into an array of ice_lbl_item
>>   - ICE_SID_RXPARSER_MARKER_PTYPE into an array of ice_ptype_mk_tcam_item
>>   - ICE_SID_RXPARSER_MARKER_GRP into an array of ice_mk_grp_item
>>   - ICE_SID_RXPARSER_PROTO_GRP into an array of ice_proto_grp_item
>>   - ICE_SID_RXPARSER_FLAG_REDIR into an array of ice_flg_rd_item
>>   - ICE_SID_XLT_KEY_BUILDER_SW, ICE_SID_XLT_KEY_BUILDER_ACL,
>>     ICE_SID_XLT_KEY_BUILDER_FD and ICE_SID_XLT_KEY_BUILDER_RSS into
>>     struct ice_xlt_kb
> 
> Did you write this from hand, or do you have some scripts to convert it 
> from some datasheet into code?

I believe this was all manually done.

> 
> As the parser is new infrastructure, are you planing on adding some 
> tests for the parser?

I am not aware of any plans to add testing for the parser stage.

In any case, what kind of tests do you have in mind? if you mean kerenl 
self-tests, I don't see any other ice tests in 
tools/testing/selftests/drivers/net/ for the rest of the already 
supported h/w stages (ACL, FDIR, RSS, ..etc) that I can use as examples.


> 
> Could you also go into more detail on how to debug possible problems, 
> that means, how to make sure, that the parser works correctly and how to 
> debug it in case one suspects the parser has a problem.

The next patch in the set adds ice_debug() for almost all operations. 
That includes dumping all DDP related sections and CAM entries.

> 
>> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
>> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
>> Co-developed-by: Ahmed Zaki <ahmed.zaki@intel.com>
>> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
>> ---
>>   drivers/net/ethernet/intel/ice/ice_ddp.c    |   10 +-
>>   drivers/net/ethernet/intel/ice/ice_ddp.h    |   13 +
>>   drivers/net/ethernet/intel/ice/ice_parser.c | 1396 +++++++++++++++++++
>>   drivers/net/ethernet/intel/ice/ice_parser.h |  357 +++++
>>   drivers/net/ethernet/intel/ice/ice_type.h   |    1 +
>>   5 files changed, 1772 insertions(+), 5 deletions(-)
>>

<..>

> 
>> + * @length: number of items in the table to create
>> + * @parse_item: the function to parse the item
>> + * @no_offset: ignore header offset, calculate index from 0
>> + *
>> + * Return: a pointer to the allocated table or ERR_PTR.
>> + */
>> +static
>> +void *ice_parser_create_table(struct ice_hw *hw, u32 sect_type,
>> +                  u32 item_size, u32 length,
>> +                  void (*parse_item)(struct ice_hw *hw, u16 idx,
>> +                         void *item, void *data,
>> +                         int size),
>> +                  bool no_offset)
>> +{
>> +    struct ice_pkg_enum state = {};
>> +    struct ice_seg *seg = hw->seg;
>> +    void *table, *data, *item;
>> +    u16 idx = U16_MAX;
>> +
>> +    if (!seg)
>> +        return ERR_PTR(-EINVAL);
>> +
>> +    table = kzalloc(item_size * length, GFP_KERNEL);
>> +    if (!table)
>> +        return ERR_PTR(-ENOMEM);
>> +
>> +    do {
>> +        data = ice_pkg_enum_entry(seg, &state, sect_type, NULL,
>> +                      ice_parser_sect_item_get);
>> +        seg = NULL;
>> +        if (data) {
>> +            struct ice_pkg_sect_hdr *hdr =
>> +                (struct ice_pkg_sect_hdr *)state.sect;
>> +
>> +            if (no_offset)
>> +                idx++;
> 
> Can’t `idx` initialized with `U16_MAX` now overflow?

Good catch, looking at the code, that seems to be intentionl so that 
first call to parse_item() would start at 0.

> 
>> +            else
>> +                idx = le16_to_cpu(hdr->offset) +
>> +                    state.entry_idx;
>> +
>> +            item = (void *)((uintptr_t)table + idx * item_size);
>> +            parse_item(hw, idx, item, data, item_size);


I will change that to

u16 idx = 0;
..
parse_item(hw, idx, item, data, item_size);
if (no_offset)
	 idx++;


better readability.

>> +        }
>> +    } while (data);
>> +
>> +    return table;
>> +}
>> +
>> +/*** ICE_SID_RXPARSER_IMEM section ***/
>> +#define ICE_IM_BM_ALU0        BIT(0)
>> +#define ICE_IM_BM_ALU1        BIT(1)
>> +#define ICE_IM_BM_ALU2        BIT(2)
>> +#define ICE_IM_BM_PG        BIT(3)
>> +
>> +/**
>> + * ice_imem_bm_init - parse 4 bits of Boost Main
>> + * @bm: pointer to the Boost Main structure
>> + * @data: Boost Main data to be parsed
> 
> Excuse my ignorance, as you use `data` in `FIELD_GET()` is `data` the 
> right name? The `FIELD_GET()` example in `include/linux/bitfield.h` uses 
> `reg`. How do I know the valid values of `data`?

This and the following funcs parse the DDP sections. so 'data' is not 
always register values.


> 
>> + */
>> +static void ice_imem_bm_init(struct ice_bst_main *bm, u8 data)
>> +{
>> +    bm->alu0    = FIELD_GET(ICE_IM_BM_ALU0, data);
>> +    bm->alu1    = FIELD_GET(ICE_IM_BM_ALU1, data);
>> +    bm->alu2    = FIELD_GET(ICE_IM_BM_ALU2, data);
>> +    bm->pg        = FIELD_GET(ICE_IM_BM_PG, data);
>> +}
>> +
>> +#define ICE_IM_BKB_PRIO        GENMASK(7, 0)
>> +#define ICE_IM_BKB_TSR_CTRL    BIT(8)
>

<..>

>> diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h 
>> b/drivers/net/ethernet/intel/ice/ice_parser.h
>> index 09ed380eee32..26468b16202c 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_parser.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_parser.h
>> @@ -4,8 +4,365 @@
>>   #ifndef _ICE_PARSER_H_
>>   #define _ICE_PARSER_H_
>> +#define ICE_SEC_DATA_OFFSET                4
>> +#define ICE_SID_RXPARSER_IMEM_ENTRY_SIZE        48
>> +#define ICE_SID_RXPARSER_METADATA_INIT_ENTRY_SIZE    24
>> +#define ICE_SID_RXPARSER_CAM_ENTRY_SIZE            16
>> +#define ICE_SID_RXPARSER_PG_SPILL_ENTRY_SIZE        17
>> +#define ICE_SID_RXPARSER_NOMATCH_CAM_ENTRY_SIZE        12
>> +#define ICE_SID_RXPARSER_NOMATCH_SPILL_ENTRY_SIZE    13
>> +#define ICE_SID_RXPARSER_BOOST_TCAM_ENTRY_SIZE        88
>> +#define ICE_SID_RXPARSER_MARKER_TYPE_ENTRY_SIZE        24
>> +#define ICE_SID_RXPARSER_MARKER_GRP_ENTRY_SIZE        8
>> +#define ICE_SID_RXPARSER_PROTO_GRP_ENTRY_SIZE        24
>> +#define ICE_SID_RXPARSER_FLAG_REDIR_ENTRY_SIZE        1
>> +
>> +#define ICE_SEC_LBL_DATA_OFFSET                2
>> +#define ICE_SID_LBL_ENTRY_SIZE                66
>> +
>> +/*** ICE_SID_RXPARSER_IMEM section ***/
>> +#define ICE_IMEM_TABLE_SIZE        192
>> +
>> +/* TCAM boost Master; if bit is set, and TCAM hit, TCAM output 
>> overrides iMEM
>> + * output.
>> + */
>> +struct ice_bst_main {
>> +    bool alu0;
>> +    bool alu1;
>> +    bool alu2;
>> +    bool pg;
>> +};
>> +
>> +struct ice_bst_keybuilder {
>> +    u8 prio;
> 
> Add a comment, what `prio` is and what values are allowed?

Will do.

thanks.
