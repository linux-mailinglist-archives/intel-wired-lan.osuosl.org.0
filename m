Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SXOpIcB3MWpgkAUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jun 2026 18:20:16 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9936D691F4F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jun 2026 18:20:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=8Z+jbe7C;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 77C5142A7F;
	Tue, 16 Jun 2026 16:20:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u_wVcwN92T6e; Tue, 16 Jun 2026 16:20:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D588F42A83
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781626812;
	bh=YkYvh8GHhG+pZcSMIpxWJko73mdpCYk9IBy4CwbgU5c=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8Z+jbe7CHNmTnsCPQ+cPX/kd/0Y/Xslfs+88mKLLJim/Oe5cEj9Rsc8I2EWuoQ8n+
	 IGKvpFfJD6tCMcEeRkHZXHcc0w/pNoI1S3+ViBdbpsCVo8ocHdxjgJ2PDwCAH31Bwn
	 hp1hvx43l8WSUw1qkbqhl+uRRwiZ10wFJOMAXsPAf8N6zP1AAfEsIzXCL70Kn+/Huh
	 s9ZWZxBbNdeWD27BaE/5eCr6FdGUG7kj6o5bIdZ0KtR5F2Iq1PPpiZSySSylwM+JCN
	 WqaFx5G7DxewrmAnLayWPUt4OZVRHtzA+cbSrpshHZbv2I+7zW1K+LQPWu5rFdk9ig
	 3OjRRWzm7iCBQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D588F42A83;
	Tue, 16 Jun 2026 16:20:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 86FD4169
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 16:20:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 77B3C850FB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 16:20:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 24yvx4xmCldY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jun 2026 16:20:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=dima.ruinskiy@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C1F28850F8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C1F28850F8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C1F28850F8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 16:20:10 +0000 (UTC)
X-CSE-ConnectionGUID: r+tmmnS8QveGGmqX+Rre1w==
X-CSE-MsgGUID: 8v06felyTZycmxwKiSedyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="82504026"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="82504026"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 09:20:09 -0700
X-CSE-ConnectionGUID: Yq226KjWQPm0W3XZVB0Lrg==
X-CSE-MsgGUID: oHNSQaw8SumdXOUGwovg6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="252120692"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 09:20:09 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 09:20:08 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 09:20:08 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.69) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 09:20:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sh2MSmD7sZJ7KluYWRoYD3cj7tPwIQagYT2qWXjpu//2+Ixh9c81VGqr2OVdN/EBzEHgMjgOrbhQGbsu9zvZebGAfK9QljaUpJlTePSu1b1vyZPUFNFV4w9qOs56XdXsH3ogvIMWWrfOrHvOyEkOEMj9dkFJI7JBoeFJyNrERIK2gCIXcurXo6oKSTaWexPYtxN3hH5HpvR/6+izf4ofqH6aWM2N6BjsizvBaZ8C8NLItgnSAJAgSPfuH2QJIj7ggAe9EPprjpfjL67G9x+YuEYgdoe6DVPj5jTkqhm4lKAE1Vdy/f9HS+dS2UKFT4Ry+qajAfw4LoJCP68Dzrl/vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YkYvh8GHhG+pZcSMIpxWJko73mdpCYk9IBy4CwbgU5c=;
 b=EtbK9G2APiUfgIPBtI2aJqejZZRBCrg02V/Txbcoe+W4xw46Z/10Nx1xM7cgSDP00BI58Wr+xX/2b9Q2an2iB/MCNxakaBM2efncmI/hMUPxYhehTCYhv0O7KM3IVsDyvuVJ5MKzc4CjcsEJ4m2mdaTd/885rwk5HspRYBQQsxjaV774vrNIMD3ogF8ELM3213Nv+Ud2DuG8CH7KfECUlD95I8OT2jDdIlBuU/ciWA+JARTpsXM2Fb9bJ6y6dUvNvV6uclUnygSs+X0KzPr1sLwZy5aKdmxBLiqLCjKsFGLfMSz+ante2HcuUXxTuCVCRlAe7O9JbzzkZNejZqlIpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS7PR11MB9498.namprd11.prod.outlook.com (2603:10b6:8:261::10)
 by DS7PR11MB6080.namprd11.prod.outlook.com (2603:10b6:8:84::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.113.18; Tue, 16 Jun 2026 16:20:06 +0000
Received: from DS7PR11MB9498.namprd11.prod.outlook.com
 ([fe80::e3fc:2bca:409f:b925]) by DS7PR11MB9498.namprd11.prod.outlook.com
 ([fe80::e3fc:2bca:409f:b925%5]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 16:20:06 +0000
Message-ID: <51828156-e859-44db-9926-c076796d0f75@intel.com>
Date: Tue, 16 Jun 2026 19:20:00 +0300
User-Agent: Mozilla Thunderbird
To: Helge Deller <deller@gmx.de>, Andrew Lunn <andrew@lunn.ch>, Helge Deller
 <deller@kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>
References: <ai8hmGQmXQu64Ld3@carbonx1>
 <e78576e0-9b55-446f-9d10-da3b7aec9b31@lunn.ch>
 <9d80ed59-5483-4c33-9d27-52fdf24aac6e@gmx.de>
Content-Language: en-US
From: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
In-Reply-To: <9d80ed59-5483-4c33-9d27-52fdf24aac6e@gmx.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0015.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::18) To DS7PR11MB9498.namprd11.prod.outlook.com
 (2603:10b6:8:261::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB9498:EE_|DS7PR11MB6080:EE_
X-MS-Office365-Filtering-Correlation-Id: 237e7bbe-c902-4beb-0019-08decbc32037
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|23010399003|366016|1800799024|56012099006|11063799006|4143699003|6133799003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: tCI2Z2dl/IX3sj1JOUCG1ZNKEonZ7jZjXdGt7nU9lPHDcKbH1wsRY9gV24Qr/YOKpxY/hvupvohtPp6NkozLpfI+LIyV+QEnp6d+tJ1fpq/J28ZEM5U1OoelpxG0B/OiTu0P1IDwxm5l6iFl7Uq2e6ISD8vNcCk+gGGa9XzoMW8FMNrzwUgVG0T2rniJX81E9IzNKy6xJ0Dptm8wn/WCB/H7Qisl+xGli/nMwGq8LGao1mXWsORtDEViifVpQEu7wWQw1z/XVYNFnLj1+BP7mqLVpqxg0sXxErPo5LccP9UrtYluDoaeVfn3UxzT2Tq6Be7FiM2a11i6UJXhV7+j6Khvd6vPcSsDD+YUTircVQo8Qnum77WMWoEWjBUxZHrjvzbOy7x8Kqfzp+/rESvQ5jt60xsadX/5ovSh9dHe6DgXRndKl3Q60EDzcsXBu5hmza8FiJji2w9XA4Ti/kbo9YSNw2o6526Xdx1cc1fvHK/6NQyWZU8OMjJfkYZsxsaOcLVrHjGuX0b2c7BAdWM0WsoErTG0u+i2AVxDd5aqoVK8get7tnJsZdUJD/LVjAtGpcoKbFNminT4kMz8lCFG77qTCfRcXMM1SDjmZAdDJWiymL0JibgzFTugOaybME06mMVwQbtjs3faYrsWuEU8HRKuS10NjYhqtVbXoyft2CEPXSqaeEtdibSeT/whqXmg
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB9498.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(366016)(1800799024)(56012099006)(11063799006)(4143699003)(6133799003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?azRBdW1ZNlM2RDZtZ21MSUU0MjR5UW1CSlhmY2svbXo4NWZuMldoOGlkRWhT?=
 =?utf-8?B?VUhuTmwvbFgxSW9uUTBpSC8vL1pSYUdTdU1aNElUUHc1QjlFWFRYREFjS3Mx?=
 =?utf-8?B?UGwrOTEzQStGc0YxQjlaQXEwQnBkN3hlTTUyVy91SzdhUHoxb3pNSjAxQlNU?=
 =?utf-8?B?VUdvM3RQVi90L3U0NjVlSytQeDA2ckNIQ2ZMK2MvblBjaEhFUFFqZk9mRWFE?=
 =?utf-8?B?UmF6bHJDdmd1L2toaHZrWUZjbUdCOVJWOWYreWk4ajFtTldidkVuWWdqQWxl?=
 =?utf-8?B?U3RIZFZOZmt2YWMvTUNGQ001S080WnJNbDBZOXczR2FuQm5BbE8zNjNFVk9p?=
 =?utf-8?B?WVNTd2dyc0dKSlpnYll0M3laWVhuUzVWUThQM0lYaWF2WFZtZnFSbWVVL0I3?=
 =?utf-8?B?bGFYcVMzalo4WTM0NXRtcWZQcS9EZGpFN0ltUlNWZVZsSDVWL2tFRXNSZnNP?=
 =?utf-8?B?TXlIaXF6blRmUUwrNHRuU3o2U1ZwYTMrWHIwVXE3V1ZjTklZdDFYRTBENGxn?=
 =?utf-8?B?TXpxVVVTcTVGWTJmMjBPanQwV2Z6bXkzbEZsSXduRW9qeXc3UElaVnlLRHlW?=
 =?utf-8?B?aFJjaW9XOGlrTGw1RDlXamh1NTRDcjZSQTdPTjJXeWJHZkgrRGJWUHlXRGNU?=
 =?utf-8?B?UzkycmJoc3kzNTBudXN4M0FhWjdwQjdvSDIwZ0ZsV3AyZTZlalgrQVVTT0FX?=
 =?utf-8?B?Y1BoTG9QUGllakdIbzI1bE53UG9QUmxWalIrcitxSzhzVXViYXJUbk10a2Vr?=
 =?utf-8?B?VW82bUxnRFVZUWdiRUR4bVlJaGk2emFRMXlNREVzSVdsNFU3VTYrM1ZHbzRj?=
 =?utf-8?B?N2pXR0N2QVBQM3R6bDUyeEtaanJBVEtCZmlFd0NpMjdMWEZIejhmcjRRSnJv?=
 =?utf-8?B?Uk01cjRsd2MrT1JadXUwMVNIV3hJUHZNbnV0eG9ramdVL1g5NXFIeXRuZWRx?=
 =?utf-8?B?cUhWd0NzOTllU3ZZYzBkQ0ZVM3F4dlpTTU4rN29WdTNveU5MaW5SQzRsZFMy?=
 =?utf-8?B?NEtSRG5pYVM3Y1Fib3I1TzRvTjRyeDBRWFpRcTY1dlRGVURiTjAvWXpXUnpX?=
 =?utf-8?B?b3JWQW1vUVE2QnFnUXBFVld3UFFjT1FZWHg2YnFNZ0tLMzdtZDhvaXlVdGpS?=
 =?utf-8?B?bDR1QVMwNmlkYWszNlRKckZUaldPSGRCTkQzdzBTNjNrZ2dMc1kzem1pM1hw?=
 =?utf-8?B?VFNkYm4zTURkN3dJczU0bVh6TGo2eVJZYmRseCt6cHBhWTRPcHNjRFMwVVRi?=
 =?utf-8?B?dndocHlneGJpcHgramYzM2ZtZnllNm5kKy9WTExoMUowSFJrTFNEa2VoNFlQ?=
 =?utf-8?B?aTFodU1MOHZjd2Fnd2Rmd2VTUDNLK3VEYzVYREZDRUtPVTRlazUvRko2cEwv?=
 =?utf-8?B?MWZOVzFlZm1mVkFBeC9pMUY2QVZVN0ViSWw1ZTFMOXRoTjhhNCtPWENZWXlm?=
 =?utf-8?B?Q2pXZEZCQlF4MEpRMFIybGVLcmVLTUZYNGZVUnlNNzRHN0tMQlgzYVozRHNa?=
 =?utf-8?B?R1BQY2V4VXJ6eTBKS282UFhwWkJpVnhnNFBGNkZ4NCs1S3ZUU1NDWTZaUHcv?=
 =?utf-8?B?RGkxTlRhTnJxbWtHZGdoZ2FpWS9YOHJkVHpPUGFQTjdBVUF3UTZJVUxQMmFH?=
 =?utf-8?B?M2gwSEJ4OWRLSUVZOWZpTFE1YWtZQWxOakZJOEpUejVTOWptVnNNeW9xaUpI?=
 =?utf-8?B?b2UyZjVjTTQwTUVUcDVNMHk5eHY1UERGd3dSYTdTWlN2akhibzQzL0NSbWRC?=
 =?utf-8?B?ajlpNnJscU8zMGp2VFFpMFEzeGh4bndGKzNDRTc3N21VbHgvZXgveGdVUkRB?=
 =?utf-8?B?UlZ3bGdSZStpR3ByOG1tT3Z3TXlsT29XMVpmV0tuVEdyMDhnWnZycmZtNzkv?=
 =?utf-8?B?b0dOVG9yOUtOU2lyb1dLRERFQ29ld2hEVWFCYXdWdlNsdGNOWVBtUTFIY2NE?=
 =?utf-8?B?VFJnUWxqWjVQQVRFZkF4eXBQRXZpSlJvR1lkZ2taejNxenp3NTFZWTd1a2xp?=
 =?utf-8?B?OWNDRjlnSjhFNnhEZWpJWkFITVRhL3A3MHN6ei8zU2NxQ1ZwemlHeXZobWcw?=
 =?utf-8?B?ZVRUa0xpOEFlZ0pENzFxbUdaUWdRMkcyTk1NNjV2ZjBsbnlIZkIzaGFSazBG?=
 =?utf-8?B?TjFSUnJWbVcrYkN2U0pDSGR1QTJDUFoxVHgzSXJlcFVQKzJtRzRZcHptTkxz?=
 =?utf-8?B?a29QZHJpU2ZEVlllYUtzdGRtS1doS3k4blBNY1dreW54eEdmdmdDNW9UZzFl?=
 =?utf-8?B?c2E3aUJFZysySU1jbzNMWE1WNjkwczIrM0p1MEJ4WWNNMFRIbkZ6anNXWm83?=
 =?utf-8?B?SFhJUWg1bDNTTmgyMGxzWU5WTWpaeWFYcWRhWDdGTVpYT1dyMXQ4L3R1NkRm?=
 =?utf-8?Q?Wa6WqsSXl27ZZjwY=3D?=
X-Exchange-RoutingPolicyChecked: GbSDQTC3z/5KalwagEvGch6B6FbdErR/kuiSw262D03iXaIsSSSC1s1DqDSCA1jyJD+YusPIj0zTzUCUDczOZrkainKOK8iCpHkGk5Ram36RIGhsyHJ+d3TBIdYKHjKntSFmxINvFSXCwgYoBD+nrQFT5kJtgXskpDqvaiMqsFvlY1J1LFx5F04yCYzEXMisymWvrN8pRo2PBUx2ZUZnE8jkRsUCf5+3AIXHFOAS2A/4HGFSG1O6KBGowWyhoxkYRmPeUv3WomgQOwvahRxPA0nzm5OwbMYzRL2Lby/dKHqoYfihYNQv8jXw7qAtGmVQTmP4BzprccctIjoIW5vsvg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 237e7bbe-c902-4beb-0019-08decbc32037
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB9498.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 16:20:05.9476 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vE40mfRslDoWwzTRgjA3KvXdcjcYj3btOtB3upQSO0Pk5aokiHzZC3ZnFbSpDJy5Gxhb+3+73cKeWsDRX8zCUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6080
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781626810; x=1813162810;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ly1OYFNc0Lx+W7vMvzW8bcus6oTs7FA001nUgZdDPw0=;
 b=ajvhS1DYkktJlt1LZFHXtnK27THR3RJbviULkqk5n8vkiO49xrovFRLf
 WfqQV0+lIuPwQnDS5d53JzrjejJsr49gzoBE2DO9ttNmDCNuvc2WMIANX
 /zu/vuf2HXuUTV0Kkegy1ZL08S4VmmzLUCNMBMoVCBKP+cfJL7LHVDRkc
 kEVZl6cAu/gyA4D5DL1RnMPWkhuWpCgmkJVhUhCU86jXWev2JuupJ3Uco
 Gzy3YVv5B7eziM/Q0y+ZlDeEOoYkSitlgPzha4E5YrdFO7KWQN10ZE6A/
 bT6QOVUf0/ogILAvjduDL/0BB9/dYlPENfwk1tA9LOD7Q+JXh55uxV44u
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ajvhS1DY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] e1000e: Report link down after "Detected
 Hardware Unit Hang" ?
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.39 / 15.00];
	SUBJECT_ENDS_QUESTION(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:deller@gmx.de,m:andrew@lunn.ch,m:deller@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmx.de,lunn.ch,kernel.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9936D691F4F

On 15/06/2026 23:36, Helge Deller wrote:
> On 6/15/26 18:41, Andrew Lunn wrote:
>> On Sun, Jun 14, 2026 at 11:48:08PM +0200, Helge Deller wrote:
>>> I'm regularily facing the known "eno1: Detected Hardware Unit Hang:"
>>> with my on-board intel e1000e NIC hardware.
>>> Since none of he various tips on the internet helped, I had the idea
>>> to setup a master/slave bond networking to fail over to another NIC when
>>> the Intel chip hangs.
>>>
>>> Sadly this doesn't work as intended, because the link of the intel NIC
>>> isn't reported "down", so the failover never happens, unless I manually
>>> start "ifconfig eno1 down".
>>>
>>> My question: Shouldn't the intel NIC ideally report Link Down if we know
>>> it hangs? That way a fail-over should at least happen, right?
>>>
>>> Below is a completely untested patch.
>>> Does it make sense that I try to test and/or develop such a patch, or
>>> are there things I miss?
>>
>> If the interface is dead, then setting the carrier down makes a lot of
>> sense. 
> 
> That's what I think as well. Thanks for confirming.
> 
>> One question i have is, what do you need to do to recover the
>> hardware? Will it correctly set the carrier up when you do the
>> recovery?
> 
> The only way I could recover was to plug the network cable and re-insert 
> it.
> I have not tested bringing the NIC down.
> But in both cases the driver will need to re-detect the media & link
> 
>> Also, just looking at your proposed change, it is not clear to me why
>> such an assignment will result in carrier down. It would be good to
>> explain it in the commit message.
> 
> Sure. The patch I attached was completely untested and just based on
> the analysis of the flow and how to make the Link possibly report to be 
> down.
> Maybe someone knowledgeable of the driver has a better suggestion how to
> report the link down situation in a clean way?
> 
> Helge
This does not seem like the right direction to me.

The "Detected Hardware Unit Hang" print does not indicate that the 
interface is dead, but that the transmitter is stalled.

This can be due to an unusually high load, or a HW fault / race 
condition with another component, etc.

When a hang is detected, the transmitter is stopped with 
netif_stop_queue() and eventually ndo_tx_timeout triggers a full reset 
to the device, which in many cases recovers it from the hang.

If the hang is persistent, we try to understand the cause and debug it. 
Permanently marking the device as 'down' because it hung once is not 
going to be the optimal solution.

