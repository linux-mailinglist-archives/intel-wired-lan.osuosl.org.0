Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A598A91A3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 05:44:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D8DB14157A;
	Thu, 18 Apr 2024 03:44:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ofoWSXKv0PXR; Thu, 18 Apr 2024 03:44:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C033241566
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713411888;
	bh=N9zWGSY3PGdLBSUDs53EKlsYwfFULC8cc9015mTwAKg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EUJsoDKy3yMRAMJRJY2OcLSMBqMkW9FX9oQrih18UeMI1ktTlb41qT/vSQIkNt8rn
	 f+nEr+jUz7NZAK0x+YXlOUH3IXL8xNhu0UrQQjCtL4feBGA7BXKOB5yyUOtCnN7uMd
	 g3AAU4FtYxdBSVAwiVYQDch6EsBEG7+s3n7v9ajSMhlaF2CHCaaZJUA/8/sDctCx9K
	 0s972HBU//gtk8IqBK5x2iR+2BtJWxbkXC69IIapUjiSIA8qeNnM7lL7UOXkGBsDFH
	 XJX8WK4HzPdxGW3IyBax827+oPn7TESqSdnUmJPFY2Kuik9qAj4UB7et2y7g/J9pHO
	 IYOcs/iE/DaWg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C033241566;
	Thu, 18 Apr 2024 03:44:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AB2A51BF410
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 03:44:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8EC72812E9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 03:44:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JVkvBUQia00A for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 03:44:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=sasha.neftin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0DD7C81289
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0DD7C81289
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0DD7C81289
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 03:44:44 +0000 (UTC)
X-CSE-ConnectionGUID: PKX/VsweTeSF5vVOsyuBaQ==
X-CSE-MsgGUID: qnpX1f+WQhyzbyKgf+HDmg==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="19495079"
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; d="scan'208";a="19495079"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 20:44:43 -0700
X-CSE-ConnectionGUID: eYYJxri6QCiG1XCKr67HJQ==
X-CSE-MsgGUID: hHrIn20oTpa3cI3WJT5neg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; d="scan'208";a="22717227"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Apr 2024 20:44:43 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 17 Apr 2024 20:44:42 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 17 Apr 2024 20:44:42 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 17 Apr 2024 20:44:42 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 17 Apr 2024 20:44:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W/ehggqOlpYvq3bxsDriWb64YvmzHQAIsI9q8jylPfsBICEGe7iuBtLUaXnkEBZE7Q7AZBGNBKhaCznkRwPbRyrITherGmIwxlgLoMDkRerh60UKNv0+mWJnNy4NMVK9NuP3F5punXTCgTN2vKoGhvnf4DlkiiqxEQ9pG0X5W3+lUZCe+kaN5VDxB7oo6/xbsyyxis4h88OXcFOUEYUTnusNpG1lFeiyxcDvZFJLM3w9pYDIW1QtPUMXc9DsS8doi3TUbC3ZInR1BzPXuXiRMq4p3GaQbCGSpBC9jq9/TXEggpTT+8S96ZovrYjwqAoHhJYs3B/ZoucTZqgljxTkbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N9zWGSY3PGdLBSUDs53EKlsYwfFULC8cc9015mTwAKg=;
 b=fsm7zyxzcYl4tmjBtOpaP/AdsE7Ir5KUUfXbnf432Dz+3vUwqXXs+lurmuS+51HDFdQmgfADj7N7Rd9hvy7ZtlElcM/8uCPIMBXFFLTZgmPUE1EcYuTHnubPxT72bF5sftT7H81KGCxnzjrGJ2T0a+5s/TfrMAZS9tV0lun+F+9daCZTDnkmYoR8Ol7d9fZA3vM1n1GyjA71EFVXZTh4n3jcOHkaM9/zZEVE3W9oIWyEY4m4OgjOANwa192MIs3FM/tAlNql70TDH5GU32YaaOlxQhF3dZIP9nzkSlpmn00n3PYdjEP3QgTZA0p8gnM0Hvw0YMgN7QVAfNTrapCtqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by DS0PR11MB7560.namprd11.prod.outlook.com (2603:10b6:8:14b::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.29; Thu, 18 Apr
 2024 03:44:35 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::416d:2690:e006:8f50]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::416d:2690:e006:8f50%4]) with mapi id 15.20.7519.010; Thu, 18 Apr 2024
 03:44:35 +0000
Message-ID: <dff8729b-3ab6-4b54-a3b0-60fabf031d62@intel.com>
Date: Thu, 18 Apr 2024 06:44:25 +0300
User-Agent: Mozilla Thunderbird
To: =?UTF-8?B?SsOpcsO0bWUgQ2FycmV0ZXJv?= <cJ@zougloub.eu>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, PaoloAbeni <pabeni@redhat.com>, "Thomas
 Gleixner" <tglx@linutronix.de>, John Stultz <jstultz@google.com>, StephenBoyd
 <sboyd@kernel.org>, "lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "Ruinskiy, Dima" <dima.ruinskiy@intel.com>, Hui Wang <hui.wang@canonical.com>
References: <a7eb665c74b5efb5140e6979759ed243072cb24a.camel@zougloub.eu>
Content-Language: en-US
From: Sasha Neftin <sasha.neftin@intel.com>
In-Reply-To: <a7eb665c74b5efb5140e6979759ed243072cb24a.camel@zougloub.eu>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL0P290CA0006.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:5::9)
 To SN7PR11MB6725.namprd11.prod.outlook.com
 (2603:10b6:806:267::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|DS0PR11MB7560:EE_
X-MS-Office365-Filtering-Correlation-Id: f287d7bd-eee5-4f83-970c-08dc5f59dc3b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JA+nu86jermLba9lRg3twPgiwYWjKMkhp4DLlLIOt6KruzQiic7BK57pxAT/Bb8FXJEaLjnRDxZ3diFfZF4UrXr2Wt+fTyevYo6kxuQRXcMEAgqsMQrHlTcacmm1c03jgBD6wrVyc0ayCe3cyR/iKs/Rpy/Oa7SR/za0bf7NNll5Dci6QZozZp4/EjGQdsFFoMFNCerBMiW1HMyEgC5HxS69lxbXbE2pV0WqiNonQvS3da9egt07CQLTP3bmDPFQaDPnLT/5jUjU7/RWPEiq7dHpK0nnvxbqDbALluqyG3s2WKDkEU7Dzsi1Azfx8/IloebZShWMrWHgPri+Wv9PoU0Mq2i/ShVlhlV4hqo+i3J1KX19zmiXYwJEfygfszv6HhqNpt+NtmCBxNWGdKlcUmmDyDW6uXBdbbwYmyC/UaDJ+MpsLiwm81uQpjVXgFckb9oTDNR21A0bcA2Tq+/XwridMwVDPYWpvezyQoAvNwcJfYNsW8DwuQgBUtS6v8cAgGB4rfRZsjIft3ULIUbitHaZkDOLnLdqzhqQFnpRf75DY0tiqBnh8wCuIz9bq6aZSP5FKKtTao9Gz50CTD9wVV84stIehnS2aKUIeQrQGC93hIo2cgsu0ddXD20dAPBEJzQAVQvToQal3vq/5yj1L6tRLMAWAE65Bu+9TTKqZUOEHckSO6IdQI3u8obRsL/y8yOW+NKHZf+I07UaajYPxQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(7416005)(1800799015)(366007)(921011); DIR:OUT; SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YVpCVCtZemY3LzRBK0RQOG9wVUhPUkhxbnhNN2I5QzVPVlRIY3Y0V0tMZ1Mz?=
 =?utf-8?B?Wm1GKzFQYkNMRGRTbmlyMnB2QVQzUUswN0RsUHpYTkhieWhKN3VEcDdkRkJZ?=
 =?utf-8?B?Q0FtSGdibEJSVERKUHpVZEI5TElCVVBoLzZHREY1djZxQndTNU1oTjdjNmpj?=
 =?utf-8?B?SW90SHo0MHY0eWN3VHR2aUZGUlp2S0gybkduVG9pNFhlb2dQSTYrdmVpRGMr?=
 =?utf-8?B?dVVZVkhUYWdPa2ZtcWk0SVc5NzRZUEtYR21YazZwSzdLYWlQUFJobUxTS1I1?=
 =?utf-8?B?VHVST1JIdkdQczUwMTRXY0s1aHFlem1LTElZZFhxU1JKUU5WTVo0WWplWUxi?=
 =?utf-8?B?Q1UxbTBCMWd2SnBSdTkrcE9LengwTVRQNHpRWjdqZjdqaERBdTRuSFRiVnZx?=
 =?utf-8?B?MHUrZUFiS2hxbVBLbGt1N2pUaUU1S1JWYzlEdE1OSXA2YWQrNFJsM3oxRlha?=
 =?utf-8?B?a01OV3ppQmdXeEE1VGpBbHA3bmNzdHRhVmY0V3VyT0dDVTg5blFDMk8xV0gz?=
 =?utf-8?B?OHBSRlJCbVdpWHdKMGdkV3R6M2I0RGpKWm0rNmZvL2N5ME0ycG9yb0lSaWli?=
 =?utf-8?B?dWR2SlVzeE9GSTJidEhyaWlPaVFXQzdzUFZJOUIvTEsvREhUbE9QWW9Hbmln?=
 =?utf-8?B?OTdxSW0yNC9SL0FyTDUrV2xENFdXRWVVZFAvY29UUzQvM093aG1ESGJhd05J?=
 =?utf-8?B?OG5TSHVQQktvREQvOEtFYnVMK04vUEpjQStwQWcrUGVTR1ZXWEN4blZCRi9M?=
 =?utf-8?B?dTJVdlNjeUdFdkJlQkZ1WVVGOE1HVnZhdWRabUpVOFF0VnN4bUh1aFVPZFdv?=
 =?utf-8?B?aE04d2RkSzJPeGlrZVpRREQ5amI2RndueXN4cFpEaWEzalRXblVFaUdLQU9G?=
 =?utf-8?B?RlFCYmM1MlpGTnRqeGxkUk02a28zcDRHUk95TmpIS0ZjbjNxOEFZaVJRb1dI?=
 =?utf-8?B?MEcvWWtjNUZ1cUZIU0wvWkNVYU9rTWN1aFMwZ0VoRVhMYjB6TkU3b2lhS0tP?=
 =?utf-8?B?KzJzbWFQelFKNzV2K05qNFMxM0FRcGJhdk9nWUM2T1Z4ZTh2ZkxadXROekk5?=
 =?utf-8?B?N0RVdHNNM2VqZkdaWFhVd284c01iQjh2NkJOd095alptV1M0TWhGZE51UE1I?=
 =?utf-8?B?MTBhWXJtNmQvMXdWWUdkWkVwSWdCNDFCN3czeFNoK0NSWFFuNDI3akdrczRs?=
 =?utf-8?B?WjdSbUlKZ2c1ekl6Rk5ENVlCYmJmbGNmL2VqRzlERXJ3cDV0ZW1nem9nbVJZ?=
 =?utf-8?B?a0tVR2tJM3g0VnRUeFBNYTl6eklrbFJnMDNZYjVPWmVzUE1GQ1lPKzA4Nksr?=
 =?utf-8?B?WENPaFh6YXpCdFhUMDBmVU1Tc0NkNUgydkgvYytLb3ErOUNva1p4U3h4c3NM?=
 =?utf-8?B?dWxYWlB0a3oydVJiaWo3MkFBOTQwK2FPakNQeFNhSTc1VFp4ZXJGL2duL00y?=
 =?utf-8?B?WktBRnU4dnlyTTdybjJkWWxsZ01HVVZWckEvRlFrS01SQ1EyZENaNVNYOHR2?=
 =?utf-8?B?c3NiN25DaUhabS9BZmFhSXQ2UGVlTlpYS21OMHFpcTJCRGRMRWpxMm1aNnRU?=
 =?utf-8?B?bUpaaU9tNytPcGN1dUJxd2xzekt0b1dLaEFjZ3NBV25zUjFiM1o0OGc2cGJW?=
 =?utf-8?B?NkZlS3UvUTJLb2pGYm9HemZSWUJmSnBEdHVNTWJMRVA2SDdYd1VmeFRuRTVt?=
 =?utf-8?B?aDEycjdZeDJYZTFxcnNFamJNV1pHQk9IMFJvY0J5NVJNV2JkOHhZR2RxdUlm?=
 =?utf-8?B?NlFrODNHYUlwZmlnQzFTcjZkSEEzUDA3VnE2UVJiTEF4MWVxWjY4ZDFYRDZD?=
 =?utf-8?B?M0hoRzdVMnlyVFRES3FCWWpWQ2FTekdjMmFzZ0ZwYWdHUjdNa3VkT1MrSzFs?=
 =?utf-8?B?TEZ0TWpzM2NtQkM4eHo3b0Q2MlJUQUlqWnZkYnA5MFNsSCszUGUyZ2ppWXZo?=
 =?utf-8?B?RVF2MUl6d2g0TjZldjlCRUtLNW91UFZkYWJEdW51bFcvb2lpRXc5Z2wvL05X?=
 =?utf-8?B?L3oyWWdiVWoxQXBONlVSbHNrT1hzTkI0dVlaSUpESkR3LzdvUE4ralgxZG1v?=
 =?utf-8?B?b0FxK0lidnpZbWdzcnY4NlFmN2pzc3VXNzB6QlAxUWtjVm5TNlNKTGE1dXFX?=
 =?utf-8?B?RkNLeU1VVUJVdGJyZTM4cTJQSUFOcWxUa2R5UVRkOWNNa3NrQk1xcmd5LzhR?=
 =?utf-8?B?UEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f287d7bd-eee5-4f83-970c-08dc5f59dc3b
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6725.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2024 03:44:35.0005 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CQ6TecR5lUdTpjm2BUUcrQeX+SxlIwhwwaAM4EyzQCrExf2GZ5z2O26ejNRbUEoQQ8t5PnQLj+b0GBQRcXAy0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7560
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713411885; x=1744947885;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TVhCRlgFEnJuDpkuK5sY8Y9dUUD+u+GwDfSIyrECGzQ=;
 b=W8Sg33AXt6/BeVZuxcx/LGH0N0d9AHNtbwGZkWYRVFJYPI+xtOKsURV6
 lmJXuxbgUNp2zfyKZbFKVJjrp3EU8k0lB69Yr4o9/+c/ds8RxpYlYcPPM
 Ep2cn1/WSS3cikDDFdJreOlMMxJ0VW5ObgRQbCNwe2SCuFLDks2rrjz8C
 hguWiDofuVCmVTEbZLzZDBVlRNpV6NNPaZplOWSzsK9g2AG7Lw2LURNe9
 8F8zQELMTGQ2N7aLCOln+tg7mlIITaXfHAr5XOTB8ta7CWAbY/tHmtyzE
 kG6LVKaQ2UrPpDkhGIdcu26qJZBRAXm0zkJxIIc7+U/6pw0jtBFB1W0zn
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=W8Sg33AX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [BUG] e1000e, scheduling while atomic
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
 linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 17/04/2024 21:46, Jérôme Carretero wrote:
> Hi,
> 
> 
> I opened https://bugzilla.kernel.org/show_bug.cgi?id=218740 because I'm
> not quite sure the culprit is e1000e or some timer stuff.

Hello Jérôme,

You hit on regression introduced by 6dbdd4de0362 (used the wrong timer 
during code running in atomic contexts)
Please, incorporate 
https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20240417190320.3159360-1-vitaly.lifshits@intel.com/ 
in your latest kernel.

Thanks,
sasha

> 
> I just verified that this happens on the latest master.
> 
> 
> Let me know if I can (quickly) help,
> 
> 

