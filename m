Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3BEB387A9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Aug 2025 18:21:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 570BA81754;
	Wed, 27 Aug 2025 16:21:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cMM3SDDr9ZPl; Wed, 27 Aug 2025 16:21:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E49A81761
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756311691;
	bh=BGQ8uJIwb2jnnsdym3WIuHDtFNva5DM63ldYsJxP2BY=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=g9UWejS56Go1e8KyXxhWDoitl4UCccu7Jms2UjF+UHSW7qoDARknYyCYs9QBjbyz3
	 8kq2nLCXT0Hti+n0w+pcm0XspwvX888KmFQEBAZ3mGQMhBJBQWbvQjmm1Fx4dHKTjl
	 Gsv+g0wGQlqUnTvF/CfrLOZy/WMIht11WqBdc4PvigUovLc8vmqJPfcx2q1ORunGF6
	 igSarW1kjWkm4ZASmT7drgb1mC+coNB/gi+sv5hX/srS5XkmhtxCzpLkdk//Z7o38R
	 mW5vPvzElWDVkNzmCVfHjVeMPxSWc3sNyVNhctCPg+q6+RPiN3QNaMaGefFh2YQoto
	 txrTyekJf/SSw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E49A81761;
	Wed, 27 Aug 2025 16:21:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B4BA4B8C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 16:21:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9AF0B4065C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 16:21:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wyQgqUG6oc47 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Aug 2025 16:21:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D9D1F4063A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D9D1F4063A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D9D1F4063A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 16:21:29 +0000 (UTC)
X-CSE-ConnectionGUID: psCgcve9SXWBRXhA8fnp4A==
X-CSE-MsgGUID: kj3jzJF4TEmAXQAF9LfRSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="58499796"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; 
 d="asc'?scan'208";a="58499796"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 09:21:29 -0700
X-CSE-ConnectionGUID: eLtxB4yCRTODOvlcaXLP4w==
X-CSE-MsgGUID: uztO4aKFTGWjNjYSAsuy+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; 
 d="asc'?scan'208";a="175144591"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 09:21:28 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 27 Aug 2025 09:21:27 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 27 Aug 2025 09:21:27 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.52) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 27 Aug 2025 09:21:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q5uDrI2FzugSv8O9Uzt+pmVPIkWb1CMBebn+WTTljua7JXsuus5Wa8fgKn0FNqnsgpXaw4gy+kbV5KeL//W4vijokUvwQv87qFUUyIJOnre3/ItaZ9QPJhytbBX7fP8VdBjsVjrT9wu0LBKXcra8O/i/EqrAtnxFMnNownD4SbQSGeJFidKH008vyzxjb4oDSvI+1IgRuUkCJWd0uWtvxWq6hBj+jkkClL+mYBcAZ+vWZvgu9dbUp5lw/RrgMDDYqkvozeytP8SWViGpeovhDp8NbTj+7SID/yXCNGve4Sf2KcmJaPs5UQQ20Y4Ce0trhKfdA+yLtad9MvQ/89CEpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BGQ8uJIwb2jnnsdym3WIuHDtFNva5DM63ldYsJxP2BY=;
 b=MTmVAQCKQlXUXjBoX8stWnUUw/utztqiNrTmWBk/1nvI9bK5QCy3QMSiZ+5ZhjI2Vpl70aM06wQWlo3nWMite2xp6rez1p7nd8K8llKOfzuyKnVMnWjZWj0xNkpMkxuV7G81+FgxHUNW/p4QxTbYxZkT5KoejBTLrnsVQPA3/YOmq5BojpZSRsZClt/Rqpzxi9Bq3coVR9R/x2Tn8IO3nG5Qho28EVeeEElhyALHPPlAT1mxocHSxl8JPErzEcfK2UgzXah8awPQ0PeKYop4fDf+ZrimkSNAc8h08IVutjeZ9sxAz0CAZGWPQYQLYlY5pdTyXjAxFpe2NqPOLrWfAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MW3PR11MB4667.namprd11.prod.outlook.com (2603:10b6:303:53::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.20; Wed, 27 Aug
 2025 16:21:23 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.9052.019; Wed, 27 Aug 2025
 16:21:23 +0000
Message-ID: <c933ffe8-c3da-494b-8704-a0fbb1939a7c@intel.com>
Date: Wed, 27 Aug 2025 09:21:20 -0700
User-Agent: Mozilla Thunderbird
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>, Miroslav Lichvar
 <mlichvar@redhat.com>
CC: Kurt Kanzenbach <kurt@linutronix.de>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>, Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
References: <20250822-igb_irq_ts-v2-1-1ac37078a7a4@linutronix.de>
 <20250822075200.L8_GUnk_@linutronix.de> <87ldna7axr.fsf@jax.kurt.home>
 <02d40de4-5447-45bf-b839-f22a8f062388@intel.com>
 <20250826125912.q0OhVCZJ@linutronix.de> <aK8OrXDsZclpSQzF@localhost>
 <20250827141047.H_n5FMzY@linutronix.de> <aK8ZBWokfWSNBW70@localhost>
 <20250827145235.6ph_Wzn8@linutronix.de>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <20250827145235.6ph_Wzn8@linutronix.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------cW3FJZ2GMUthglS4100DoB7G"
X-ClientProxiedBy: MW4P220CA0011.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::16) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MW3PR11MB4667:EE_
X-MS-Office365-Filtering-Correlation-Id: 1bc2388f-ea57-45b9-f205-08dde585c37d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UXBianVlM2NXclA5NmMyR00yRGlrVU1sWVkvMVMyOHJCWkFqQlZVTWZkYVdB?=
 =?utf-8?B?SitOV25rSjVLODh0SDJWdmpQUStvenNQSjI2a3c0dkVuR1FEa3dxam5BS1Fp?=
 =?utf-8?B?ZzMxNVRrNG5LNEFsZldIWk5lWmFVWVVlTVA4MUJSa2x0VXhudUF3NVNlMDVU?=
 =?utf-8?B?UnhkVXk1aXpXV2tLT01PWGxIeUJ2TnpVaVdwL3BKMTN3ZnBUeVJyR3EzUXNq?=
 =?utf-8?B?TU5HNFVYRUpqOWZCMHc4UFJQRkhEcENnb3pSa0ZsZWJuK2s3MkppdWhncm05?=
 =?utf-8?B?MHJUSDRVZEs0ZjJsa1ppU2dmSURkcVljQTZxT0czUTFHeDVlVlhkVExYM2xw?=
 =?utf-8?B?TFV2ZzhxclBOeFN5d3Bia3M4T2l1bjdnNlFMMHJJWGRCREdXSHBRZkI1SXNh?=
 =?utf-8?B?VzNmTzRWcTdFUHkwN0dsRHZLd3dWT3E1L2xaNnRLSmV5M2xkN1JBZ1NySUlp?=
 =?utf-8?B?YjhmYTE0WDVRL244M3FtZlJpdGZzSmtBMnhJRmZyeVBLUGtNMFZpd2thQ2o3?=
 =?utf-8?B?MVF0WW01V0thSzNIR1k2SThKZXJJYTVmQm0rZ1NlTGJUWFFNVDVtUlBjdWEw?=
 =?utf-8?B?VDhhbWdyZnFCcGRQM3M3VC9nNk4za0lFM3RORzgrK2JaS0FKalhLWmVwWUpr?=
 =?utf-8?B?KzJ1Y09oMlJpWDZXOGFLd1QwSlhyN1FNWjF2b0QwRThncnErdHJuMjY5WmJG?=
 =?utf-8?B?dTlhTjA3QWduK3ZYWk4rVnN3bU1IclhLMDJ0ZmtqcEczNjZjdHFQMyszbzRo?=
 =?utf-8?B?RHRGYS84aTIyYlNrYjhFcHFzbEZ5TTM4UG83WkRucldiNGdWeTh1clpNeHFi?=
 =?utf-8?B?ZTZBYkdnalQrZnFEZzl4SVllVkU1Q3RHQ3Y1ZFpHVnpiTExOYUF2RCtSZVBj?=
 =?utf-8?B?Wm11T0FmS0hYenhQM2M4U2JIQW1EYWgzbk1kcWhhY2ZpdTVSd3p0azU4WHdL?=
 =?utf-8?B?Uy9kUjFoUE9FMzJ3Zjk0UzRPV3JON1Y4MFhOdnNJTDZkWGtGTzRMTXFVcmtV?=
 =?utf-8?B?a1R6MXUrVk5ObUYyOXJ6QmVVREk5NTY3eEtVOXAzYjRzTlVDaS81WmRFVGhl?=
 =?utf-8?B?VVNnZkl5STkyMzFIc0FMaWZIdGtoKzlIek1SNE5aNGFHdkY2endMVkpidU01?=
 =?utf-8?B?QWZwUXhFTjNLQ3o2ckZxdFowa3RzbkYzWjRtSUUxeFBUMzZvR3VEQ2dock1q?=
 =?utf-8?B?OHV3T2J6S2VQcFFzV1NoaU1heG1FTlBSWmtCU3lBOTA5RmZxMTFUVVAzM1dj?=
 =?utf-8?B?SVRQWjhXcmE3YU5UNzBJRzNZR1Vxb2FmSmRzZm4xdHhMM3dRREpGSDFGM3BL?=
 =?utf-8?B?aERwcWlTVWp0bUsxQWkzZ1V2cVd5ZGJ6N3k2Zm5jcUtaR3dQQndLdGszZWNB?=
 =?utf-8?B?TzMyR2FFbWl1RjV0bUJPcy9aQ3BNY0lBWFY4SS9tVFh3ZHQ1emdkVHkvUVpW?=
 =?utf-8?B?SEhDZXRGa052dUllamd2RWorVDZCVGRxQXhaRnU5SFlBd2tLVG0rVDR1akFh?=
 =?utf-8?B?QkJiWTRKSGZmWEoybWg3cmlZLzk1YzBzbmVsRU9GeHBTY0hraG1nNi9vcytL?=
 =?utf-8?B?SmkvWVBld3AweTN1NklqcWQxZmEwNDh3Y2VtdDYybUFZbktLWHlBbDhhWmhP?=
 =?utf-8?B?a2hoWklkNTB0VFkwdnczTHFDcitSeTkxOENSS3FwSWt6Tmtwbk1lUjByMEJj?=
 =?utf-8?B?eVVqcTc3c01vK1RPTGhQSGQvdkYyanRqdElodE45THRrUy9qTnduWVR5Q3B5?=
 =?utf-8?B?Z2wwS0J0TGZRb3Y2Yk0xb1FQS3lTTk16N2QyOEQxa3lWemt1aW1pNXZsY0dk?=
 =?utf-8?B?UG50ZGIrZVlneEpIZzVQVjloY1o2ODAxTEFuaTNjak5RalQxdmEwby84K0dK?=
 =?utf-8?B?VUh6V0k0RjE0bnRMYlFTTzcrRjNSd3hvVXNjZ2N0eVQyMzVBekwrNlBGb2dN?=
 =?utf-8?Q?UCDNRwQEA8M=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aVMrZUgvelNscFhYK28xWmw1WHBPRkhCYzNVcVRYVm8yRjdBcUZYMHAvaHpG?=
 =?utf-8?B?azByby9RTFdqRVNSTzhDc2RMNXpIUWVlMmpjV3FPMXpoU3lXY3Y1SUtRREJO?=
 =?utf-8?B?Ykg1Z2dWczQxWFU1aFJWSHMyaVNtbldlQVdXN0x2S1RNNVB1T3VjeDRTUktz?=
 =?utf-8?B?a3o5WHpsWUVjYXBMRWZMR2JiSlFweU5SZGFzK0wrcmdPaXRMUFVSMVpYVTVw?=
 =?utf-8?B?WjJIdWl5bnNyU2IvN3JxQzlBUUQ3dEJLL21ZbzNLL1VRUm83ektQUWZCOVBJ?=
 =?utf-8?B?TU1ZanZHTE9Rd1NHelJ5dllEVVk4Z042SmRhYlR4MUduVGxIUDlObmtWamNX?=
 =?utf-8?B?VnFacE45TURYcnlFN2JZcFdzaXBzMkFTMklwK0szWjZQYVc2WlV0NEcvcHh5?=
 =?utf-8?B?YzJLeFI3WXlqQUVCTWZjMUVCd242aVFiTFN5OWZUMTdYM2VxdVJDOHdBRExp?=
 =?utf-8?B?ZHZWTWM4VjZER0NtWGwzQ0dYSkZSMWl4TFUvQjJzb0s0MDVqR0p5eDVDQlMw?=
 =?utf-8?B?emwzeVJVQ0FQWFdPcmVETG5iTFdqcmN4RS9aLzNzdERsR3BLNVFrb1NDYUMv?=
 =?utf-8?B?WS95dzZNTlFLYU5Sc2pwd3VPMi9TYlk3L0xsdHBHWmhyZG4rMkJWcjRaYWJn?=
 =?utf-8?B?bmJIbnlkdjRUMkJ0bFk4Vi9hQ05Yb2lPQmR1dEhnZzhYVSthT3RlMzBtSVUw?=
 =?utf-8?B?Tm03TS9vZU5tbG5Fd3dGVTVVZ3l4TEIrZjRsbHNzbTRFODNxVWdqdEk2NmpF?=
 =?utf-8?B?eUxJWTMydkdrVGwzcXhscThPK1NsNldWTnNmYnBnTFhROXNtOTJ5ZU1FSkFt?=
 =?utf-8?B?aGlnZnpraFJGOFNjY0kwUmt2MkpjZ05UYU53RG4xeXdjNmJYVXQ1S0pjOFZM?=
 =?utf-8?B?a1dtd0l2WVJLUlZxTWU2cVI3b2ZnRHRSQTdZcWlYdmhpWDNEVTFUNURSZDNw?=
 =?utf-8?B?b1NkWEdpbS9iOHZRbUFnanJZYVVCZ0JHMm1vVlI4WFpaNUY0eEc5OTVYdnJq?=
 =?utf-8?B?cG5WalUza0NjTVQ1VFIySERNRFB3aUwxV3NHUTF0NlBCd0RVMlJxejdZOXRM?=
 =?utf-8?B?amczdE95bHZ0OGVkQ3p0Tm5HdXhWUXpWN2ZUaVRoODlKUjNzdnRMR1JIcHFU?=
 =?utf-8?B?bDZaNWpHZW1McmVrMGJqVjB0R2EycGdBSXU3YnJrREQwenU2RWFtNzFtbWMz?=
 =?utf-8?B?S0F5S1YwZnM0UHB2WFBuTWo1MVhRUGY5UHQ5TmJkMXBIWjA2TFdvazFQZjZv?=
 =?utf-8?B?RVl6RkJhMTduNkZkdDM5SG42UVZuZy8wbGJ0NnJQWjZLMVUxeDZOOHMzdkNN?=
 =?utf-8?B?UU52SC9OUHNtNEpicUMra243M3VyWDJTZngrUkxFck9WWTRQZ0Z5TG1PRW1K?=
 =?utf-8?B?NGMrQ2J5RWw3bUVIMThJeW54cXZRc0pWNnZVaFBrVm4yRlN4Smk2RXorNjZ4?=
 =?utf-8?B?UzV4VXZ3R1FhNWRUK2h3Ynhzd2hhTDk3Z1BRNnZqNWdDbFRKWEN3ck4vcS9O?=
 =?utf-8?B?YzJoM3FkT3dIMmY1Yk1RaFFwRFlNZWY3RkdsL2dQUjZKUkx1b05lNE96Nktl?=
 =?utf-8?B?MUpCbmlLVGU5bUxNWjE0SURVRHhROUUxQTJDQ3pkV0FUVEgwU2UrT1R4VFNM?=
 =?utf-8?B?ek1lRzFjV1RZRzdLeE9MQ08ya2FLWkZ6MjlBUS9PSUdTVDVaT2hQNDFBVEsz?=
 =?utf-8?B?QzdFcnZ1bFRtN1pFQWVEdTNySFMvajlJelhXeCtSMkppMW9GakRvSW14UXJx?=
 =?utf-8?B?Q2d1dzN4QnFLV0pnY215Nm81ZEdLVEk3ak8yUTRRUDIvMkpmZk9BWTVxMXBl?=
 =?utf-8?B?RCszUGhtMEtRVFJYemp4V1VnNHdOSDVFcTVkcVdhcVovNG10K0JLckMvZ2Z0?=
 =?utf-8?B?ZzdsVVJpZlN0YUY4WGtmUnFDNFRjT1hKb0ZJSDYveDR2c2JFcmFuVHlUMGFQ?=
 =?utf-8?B?aWFHait3V2kvRi9UcnRNR1pEOGhGQW1CcjNYQnh6OGhSaXo5THFLeGhxK1k4?=
 =?utf-8?B?aEZkNmo4Vk9ndy8yVzhaQVdXcFRhOEVBMjU5M0dSK0NzL1U3YTdaTEozcFk5?=
 =?utf-8?B?MGlNN21IMzN3bklkM2J3aGlvTSt3Z2lLeEhuQ3FKZ00zNUw0UTFBdFVMSFMw?=
 =?utf-8?B?cGl1M2Y3dVhza0taUjUxYm9EcC9SejM4a0xmdjNETGRiOTYzVlJKQXBURWx5?=
 =?utf-8?B?SlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1bc2388f-ea57-45b9-f205-08dde585c37d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Aug 2025 16:21:23.1070 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bHVAQFB25NqMQIiRMc064yfnkd0dMdNo8UV4/cCo2RRkpx72QK0AynvRpeDSlD63yXVz3dB05YrMYB9Nd3xVp2KJpcN0cS7QvC/pI7ovmNQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4667
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756311690; x=1787847690;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=BGQ8uJIwb2jnnsdym3WIuHDtFNva5DM63ldYsJxP2BY=;
 b=jeI9QuXakCdFX3eKXw29dTQ+fxO4uZNlEGkh5V/b2UuZccLjAcAGZ/A/
 DQQSgMztB10EWLbXwT3E7ZU0ZkYmJhj1mfwmGD/n/QiWM4l3Qi1EalEoP
 H08M6eg3Yp6fJqspVrByLFlTm+CV9xGl+A40EILYVqSYfGh/waqtyU7L/
 xd/Lk5wrUbKWSwbSIu1n+6Zf6TRdTjbEaAZSL1oUpJhw51yWkFWlyyo1I
 gv1KPZn9fOuPClRXoxT40MSccTwCuMougQPbvWKPoYnxIcSynH6utRNgc
 U1Td2FQOCktFXWqnOhopIW7cRVrGbvTbKXWXXrvylZ7EOTGnmWbyF8jmW
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jeI9QuXa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] igb: Convert Tx
 timestamping to PTP aux worker
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

--------------cW3FJZ2GMUthglS4100DoB7G
Content-Type: multipart/mixed; boundary="------------DqXB7vjU2giz6ZxZ5pcUPt0T";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Miroslav Lichvar <mlichvar@redhat.com>
Cc: Kurt Kanzenbach <kurt@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <c933ffe8-c3da-494b-8704-a0fbb1939a7c@intel.com>
Subject: Re: [PATCH iwl-next v2] igb: Convert Tx timestamping to PTP aux
 worker
References: <20250822-igb_irq_ts-v2-1-1ac37078a7a4@linutronix.de>
 <20250822075200.L8_GUnk_@linutronix.de> <87ldna7axr.fsf@jax.kurt.home>
 <02d40de4-5447-45bf-b839-f22a8f062388@intel.com>
 <20250826125912.q0OhVCZJ@linutronix.de> <aK8OrXDsZclpSQzF@localhost>
 <20250827141047.H_n5FMzY@linutronix.de> <aK8ZBWokfWSNBW70@localhost>
 <20250827145235.6ph_Wzn8@linutronix.de>
In-Reply-To: <20250827145235.6ph_Wzn8@linutronix.de>

--------------DqXB7vjU2giz6ZxZ5pcUPt0T
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 8/27/2025 7:52 AM, Sebastian Andrzej Siewior wrote:
> On 2025-08-27 16:41:09 [+0200], Miroslav Lichvar wrote:
>> From the results I posted before, the machine (CPU Intel E3-1220) with=

>> the I350 NIC can provide about 59k HW TX timestamps per second without=

>> any of the patches, about 41k with the original patch, and about 52k
>> with this patch and pinned aux worker.
>=20
> I might have similar hardware with a i350 to give it a try.
> The old worker approach and the pinned AUX worker are identical from
> software design (or: I am not aware of any significant differences wort=
h
> to mention here). Therefore I don't understand why the one had 59k and
> the other 52k.
>=20
> Sebastian

Right. If we can get further reproduction of this setup that would be goo=
d.

Thanks,
Jake

--------------DqXB7vjU2giz6ZxZ5pcUPt0T--

--------------cW3FJZ2GMUthglS4100DoB7G
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaK8wgQUDAAAAAAAKCRBqll0+bw8o6Dvj
AP904WkfIPjhL02PiQh/rYcBCksmtQVDSwY0PGYGjsvi9AD6AvOSD1thtkpSfb0g1I8vg8g7sv9b
YsZmxVQOIFzX8wE=
=npQO
-----END PGP SIGNATURE-----

--------------cW3FJZ2GMUthglS4100DoB7G--
