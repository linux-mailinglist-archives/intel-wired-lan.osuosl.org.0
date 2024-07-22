Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A426C938BFA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jul 2024 11:24:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5B7D940584;
	Mon, 22 Jul 2024 09:24:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uRylAjeQ3m0D; Mon, 22 Jul 2024 09:24:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1FB534058D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721640249;
	bh=2qpUHc+374lag7Ko7zmYyMu3WVN5V2iGmzsFZhQ7mRg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eyxoVt5Wfi33QgDq2w25i4gDjK2mAfGdn1ASWTncHYQYnLis8xIGskL8a2rDUQD2T
	 trRwE9EMnJg9N9kpmmW/ikZH2YeTezU/Lsr+mQl6k4sc6YOHQEmFJxUcH+GuFtKV/f
	 BOnn1mkEtr7YP79YTLMQCm0SgsCsdp8K1FPRqb9+qoqWrGTqXOMySQVUh6XkQ2PkkH
	 NXI8S6KHehq7e5FgUPrHsAS9mtPuPbeSr6FJaw3evqRRNjKABoJ1on6GEKoSiNonW7
	 3z1KKAKTLeKdk0chrvHXPHZvtyOt15ORIpcTH8hyW6t71ThPs9ZB5ux73L1IN43AnX
	 pPv1/t4CqGkrw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1FB534058D;
	Mon, 22 Jul 2024 09:24:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AC5521BF28E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 09:24:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 976044029B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 09:24:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pA9_igH7RGYi for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jul 2024 09:24:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 76DA940297
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 76DA940297
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 76DA940297
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 09:24:04 +0000 (UTC)
X-CSE-ConnectionGUID: sYKhn0TRS/yCzzdu8Ct29A==
X-CSE-MsgGUID: i22rDAT/QzGh7ZqhRVqzvQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11140"; a="29783621"
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="29783621"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 02:24:04 -0700
X-CSE-ConnectionGUID: FBljAZhdQLK4FE5SrOyI1w==
X-CSE-MsgGUID: 2zCUPAfbTlK588vImZSaJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="56670528"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Jul 2024 02:24:04 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 22 Jul 2024 02:24:03 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 22 Jul 2024 02:24:03 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 22 Jul 2024 02:24:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CzMGbWWGJYm53yH85ebPw3U6pr+S6Q1y5ChddAZngelG4jVb6QRZzB0RMFkHhl/7QCt5Qf7bNSgKV3YqNE60SklGTEWaWFl4vUuw3my3BIJPrB9InPh58YMk6SSO6ZwpT8s/Z05lV2wm4d3TI7ou9MFSpuCPk52a3SKtnHAhxBQ0NYHx1ssY86hG5qxuYeFdlitNNdAtN9k2p/VVmQDe5Tqm5Art/7tPVeIXW/h3yPhESAaDUuXQIr+lhwh6E9c8bUdW08WxMsEBW0mxhgZmwxhXw6YlbdKcU6CADJ3qyMTbaLSPMeYS7ktz0uga1LvrxSZt96Vy4Ojgk6/wpcyTww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2qpUHc+374lag7Ko7zmYyMu3WVN5V2iGmzsFZhQ7mRg=;
 b=LUKdENAQGHNLtWezPnQXdNYbePVYEXfCtnpdnnorbIIEsSJPrG1fE4yJJI9fqIy3UaHXXL0fbGGT48NN+6tQgG6Q2ltGSgsH93mN0iMXKfit+5eVBM29IJtbIipFPLFaa6wFqivOE4u1uFDlsmMBqoyrrC9O2wxYi+GFEnZcuyZ+vAL5Dj33PpSIuiIAJd9Fa7PRo5BK8Qn2Y+q/qLhn7OgMAvBS5VqdI0AdQqSotcC83Wx4gUcVHt3XMw9bJqfRZCc/lviKk/Qm4NYoecua1HMKjLe71n/aoIUBCQ81xE1sSXsFRWALpVkhxFBbrPvxMMry18ojemiBK65dfzZUVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12)
 by SA1PR11MB6565.namprd11.prod.outlook.com (2603:10b6:806:250::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.27; Mon, 22 Jul
 2024 09:24:00 +0000
Received: from BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b8f1:4502:e77d:e2dc]) by BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b8f1:4502:e77d:e2dc%7]) with mapi id 15.20.7784.016; Mon, 22 Jul 2024
 09:24:00 +0000
Message-ID: <3bc5824f-41c3-41c4-bcfc-9cb7d6c37937@intel.com>
Date: Mon, 22 Jul 2024 11:23:54 +0200
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
References: <20240712093251.18683-1-mateusz.polchlopek@intel.com>
 <20240712093251.18683-7-mateusz.polchlopek@intel.com>
 <20240714073048.77cd4b3f@kernel.org>
Content-Language: pl
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Organization: Intel
In-Reply-To: <20240714073048.77cd4b3f@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MI1P293CA0023.ITAP293.PROD.OUTLOOK.COM (2603:10a6:290:3::9)
 To BL1PR11MB5399.namprd11.prod.outlook.com
 (2603:10b6:208:318::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB5399:EE_|SA1PR11MB6565:EE_
X-MS-Office365-Filtering-Correlation-Id: 48886336-7ba2-4235-3163-08dcaa30056d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TjNjejVaaDR6dE41WFlYWGF6VlRlNzVpZmQvcEdZcStqVTJRNW5BQ2ZYeVk0?=
 =?utf-8?B?bk9nemFGa2h4R3hhTnpRNjhyTTNSNTk3RkUrNDN6T2xLUDJ6Z0xXOXBIRjg0?=
 =?utf-8?B?bFBPZnFObXRUUEs0NEltSGg5UW90c0RqSjk1UkxQN0VUUGxJV3EzdEplOUtj?=
 =?utf-8?B?TkFNMnRmWXZ6N01nY2NRTG5tcEQwdUxhbGZsV2E5NWYvb0xzSEtXZndFaGNC?=
 =?utf-8?B?b3RUek1xSkxMZjlMSUZFb3BDMnAwdC9GOEtPQWkySVptM0N4Y0o4MXJ5U2tC?=
 =?utf-8?B?bHpCZUxndW51c3VTWGxIVEh4d21Sd0ZYRGhXeW5EblNPNkI3UGswVTRUQUJN?=
 =?utf-8?B?cXp3cUZuc2pJMS85OE15S1RVc1NrcjNaUjliMkdlUnJrUEtna2ZDWEVZQWY0?=
 =?utf-8?B?d1BnN3BuTVhzZkIySzEvTnRYT2ZmQW5qQmZkK0NEckxkaFdzS2ZmSjBUaGV4?=
 =?utf-8?B?MEw2NHVzVjZXcUxKRG1QY1dUeVo3TnQrUnR5WE9TNlFBT25rMU5keDBTK05O?=
 =?utf-8?B?eFpxUEJPMVo2dkRwcEdYS01iekY3Z0h2WiswSkVBcHIzSk53M1YvZmhFZTRP?=
 =?utf-8?B?RlllVHJWSkVRc2NSOXlMVXNQV3NvR2RIdjVMaFRkdkRDQ04wZVhYeFd4bjBL?=
 =?utf-8?B?T0ZpV1VkeHViSGhnZklFVDF6UVlncDdldnJlWGhNT29hZkppaXdkVmQrWE5L?=
 =?utf-8?B?QXlnbGJXdnowTXJhT0QrcUl3R0Jrc0pLcXgzWUlEZUltL2V3ZzBTN2sybjBO?=
 =?utf-8?B?UXdXTzZRelF3OTZHLzRsa3NZMWZ2ZUZJMVZhcm04UldnNkE3NlB4VTEzc0lR?=
 =?utf-8?B?aDJhOVRmb0pYM1ZMQnhUUWRQWXgxM2dKYldhZDQ1SHdsWnczN3F6SGVnaldO?=
 =?utf-8?B?KzhoQjI2WGJmVitsZUJRVnZGTkFFQmxLVG8zMm1LdDJ3VEV2a2RzUVhnS3Rn?=
 =?utf-8?B?bG5weDZmcENBQW5kdG03NFpTOUxFU1F5QlNsNVNOY0wvMkdWZEZZZENFTnQ5?=
 =?utf-8?B?K280ak9rOGN5WFJpQm11QnJIZjE4TERrQTg1Z05UMStpb2duMUx4cXpoWVVi?=
 =?utf-8?B?UkZZUVRmY1dsTzM0R1FoSTYvUjBmVHI5WDkzMXhNK2xMTFN3eGFMMFpPcTdy?=
 =?utf-8?B?M2tmR1R0cmYzQWdSWERVQVZUcGtJVFZMUEhFclQvVlVYNnU5ZWdXZmMrYjhI?=
 =?utf-8?B?MnQ0UVd4MUp6Q3F5MDgwOUhCeERoRnZvUXQ4VVo2Qk1KSjJRSnA4NUhPRTRR?=
 =?utf-8?B?SjNIeUpxdVBSdUV4VCtiWU5VQ1NCWHNoY01LRFgyTkhaZFRNZWVaUHhrZUF2?=
 =?utf-8?B?UnRGL2oydFdYR3lsTm1LM3VoWUR1SkxJdnc5WVlCUHBPNHQ1Qk1ycFowZmcx?=
 =?utf-8?B?QThCdTZnd3VOQzVxTUNnOCsvcWxBeTFkVnJpcnVDZ2FqU0ZDaVhrL0c5b3VC?=
 =?utf-8?B?bjAwOEdTWjhaWk5hYUVXclkxY1JUYUZJYUphbTRDVGRzN3Jlc1VaWkwvUnZ3?=
 =?utf-8?B?bDJIeitjZ1QwcVQ3NlJHTi84eGU3dCtYTjVJd29YRklsNXR5RWVRSmRCNkJu?=
 =?utf-8?B?aU93OVdzbFZNZXZYa0JxT3lSVnNsSEkzL1dDc01Wanc0QzkzU052RHcvTm15?=
 =?utf-8?B?emt4ejN3N3dsNndZMlRwNzdtOGdZd21iWlB0dnBlL21NQTVRZHZ3UVBCL1JY?=
 =?utf-8?B?Q2YyZkZrZ2ZTVmhmK3ZjR2ZMM3FSZlJuOWpvb0d3NVovdnBkdmxIVm5LRkFJ?=
 =?utf-8?B?MDBDcCtSRWZRcm93RlprbzJYMlZ4MHc5S1RJbWRYcEtDNE9mNHd1bklqY1VV?=
 =?utf-8?B?QUVmV0RlNXpEbytaNmMxZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5399.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Zk1EWEhtdWg2STVsemovR0tRNjBCdjcxT21MTGswMnQ3bmZuanRicVgyUkcx?=
 =?utf-8?B?U1owZ0syVzRrd1hrZ255TjlhcmdsSWwyVVN0a0dXeVlUbFg0MlR1RVlaVVZQ?=
 =?utf-8?B?dUpOdVUzRU5HUVFPT1g4anVsZEJBa0psL01LV3pnSjVlaS9ZWWtLME04V1R2?=
 =?utf-8?B?alRVNkJxNzkxWStacmJvdWpCQW9wRFZGekQ2eGN6R0JTdHJ2VlFxeUtsMHN1?=
 =?utf-8?B?Z2NSMTBjNlhJT1VzUzRPWE02TGtUSEpiWDNNVUR4dVJEMW1zMDlackcrcW5R?=
 =?utf-8?B?cW16bm83N3BxcSswbUFxQ2RseTZYSnBsZElWQmVmYzZ1Slo2MXpGT21ITWcy?=
 =?utf-8?B?N3E5Yko0ckZhK1AveGpNMVRia0owTkEydkVVTHBmZExFU0hkd3RmdzZqUXYy?=
 =?utf-8?B?WnRJdWpoRmVDUmdoVGMwaGg3SmVIVS9zQkd1SDF6ODZUaXJMT2ZjSWNZU3g3?=
 =?utf-8?B?R0hNVTBxYTNvZTFTZjAyTTNkVlV0cVh0bnV1dE1yb3VBUWR1MHVzQTJ0ek5C?=
 =?utf-8?B?NThpVkR6c2diNG5pTEJuK3RoTjNJS1ozU1BSbkNtVS9mTm05Y09WOHBjMExD?=
 =?utf-8?B?M2EzazhyWXJDb1o5bm5Nb1F4cGJiNG0rYUw3anhEaDE2ZmIzc3YxRzRsNjZ1?=
 =?utf-8?B?MEwxQWtQVkFYKytSWU1pd3RVcDhBc210WklhMUpKalA1TVdmdzc0bTdLMHZm?=
 =?utf-8?B?WE9PYWJwLzQyT2dWK0dtcnFiclFLTm1USkgrRVlLMkpNZUFKSkdpaDR1blFO?=
 =?utf-8?B?N1ZoQWx1MjRFcVpGQk9DU1d5R1RtSlFYKytmSEJPQTVkV3RDTlhiZ25wQmd0?=
 =?utf-8?B?OWJGMDZ4a2plbFo3VndseWJ1N0ZUV2hLczI2akk1NmtJNDBJaE9iM3pvQUFu?=
 =?utf-8?B?Y1FQWHhIYkduNG1IM3dJdUFnRTJHTnE3WWVpa2tyZTRSN3dIVE15azlWYzBU?=
 =?utf-8?B?TThnSmVMNUlrZkpBcStFZkdXVjFaVXJNVy9KeW56Nmp2YUNXdmFGbVh1U1Vl?=
 =?utf-8?B?S0g3aUZtbEJiRk9ucFZHUmE5bWVtaW5ROGV2N0N4RCtaQ250SkJobG16aWFR?=
 =?utf-8?B?SnY5bXNWak5IS2d4YTNrcnlOSGVqYk92MTFXa0FTTEdOMnBSLzVQMVJTVkZN?=
 =?utf-8?B?L1VqRytMbEZVYWQ0bW5Bb29DVXRpQW9ma3JLbEZOREFKUzVEOE50Ukp4SlZK?=
 =?utf-8?B?bWV5OFZGM1V6ejFNU1ZwUzZUdUQyWTJIdWI1K1ROZlZBRVRyd1NrcW0vLzBG?=
 =?utf-8?B?ekNBMERBOFAvdzA5OHY5NDZiU0ZLcVM0VFp0YnNrWXVQbkNnWG5NbG5tQmZP?=
 =?utf-8?B?TGRUN2d0dVBuRGdHa21PdjdmbHNZUEx6dndTL1VlcVZPWnZQNmtaTXprbjNa?=
 =?utf-8?B?TWpmdVRHRVY3c3krZ2NDOUZLZlc1STY0ZVBZWE81TzN4U2JTT0VWN2hlZldy?=
 =?utf-8?B?ekdxM3pDTHVmdWU0V1VIK3J2cmJ3TXBxL2RBQ3NvWXBHZzR0enBnWUJzTEtV?=
 =?utf-8?B?bkE5U1FISUdDMWhyb1RtaVlYV01Uc2tPOWF6VklwVzVVZlZLY3E4ckRWSGYw?=
 =?utf-8?B?SjJRamo3cTNOWEVVZnlBY0NoVzhxN2pZMEJlRUxqRTZVNkJMbkFNNDZsdmlO?=
 =?utf-8?B?WndTSCtraWg3d1g0d0FiNzQ4cXh4MDA4K1JwL1Z5SGhVKzVJVm81SFNWK2pa?=
 =?utf-8?B?WGpzcXltNUtlSkFnUzBrS2xQcVdVZVdFUFoyZlNBWkRwR1FpR0lqNXdPc1ZZ?=
 =?utf-8?B?NDVTOGE4TmZTTC93NVR2Ky9PYUFYdjNjbHpGY0FVMXhKbWg5bjcrbUNiRThr?=
 =?utf-8?B?ZVNHZkJRUzc4bm42OVdLUEVVaFY4aTIwbFpJZ2JyWlVnWFVsQVVjSDh4ZjhD?=
 =?utf-8?B?Wjh0WHVFUjZmNWJQSkVhVmlMSWxYcFVTZENNTk5jaHVMeWkzSVdJM0ZkZmtI?=
 =?utf-8?B?TCtSNXcwNUk3bHVGS3JnZFFzNHpPRnd4b21uN1dKcWdnb2diL3dOMzRkY1Nv?=
 =?utf-8?B?UnExRHV3NkUwa0hqamUxeTNPRTNuWHdnZmdRdGR5NWFwdFM4ajR5MUNBU0gz?=
 =?utf-8?B?WFdzWDdhQVUrY3EyN0Z0OFMxRGFFSHlXQitUdFFEWTZJSElGQS9lM09zd253?=
 =?utf-8?B?Z2kvVkV0b2J1UDRxbWtpWWluNWYvWXBqRFZ1OG5WMHBnUnhObmlWZnBHa296?=
 =?utf-8?B?cGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 48886336-7ba2-4235-3163-08dcaa30056d
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5399.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jul 2024 09:24:00.7431 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u3hVulPWvNz3ym9CGSaEenzbeC+hfF49zkbMJVsD/6xfSzpQLBPFoBiQ7XVjWuja0aIvWHUfOG6ojK2mwarqEid9XodzckDPuA+RdQ5Z8mg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6565
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721640246; x=1753176246;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Pm/FL54RMWNw8Vc1mItDKqbcEo+m6BQkfPMzQeZLJOc=;
 b=JJV9MG7taeVuLztXzsam6S4cDfiHQAG7L6xVVbDGOBV0NlUOP7vtmXQC
 8rsKuy7Pxk9STN6JPuJzjh18M+C5PH5a848+ac0BOyMj8ax1vanVLKZsO
 AC12aMCh7q7mNQi3KEWR1J3lzdEyvy/hdPK98OthtJAezfG4ZYAkuR8nv
 7kvsDZEWlckLXemPYPKz0uUXIqqUP7pmS350lqyVmuaj75N07Neq1KZN/
 j9WvmihEnxhelB9bvVnOhcZ94lA5bzn+yfgixzzT4wmaa18ELFOu4VJxR
 ampTNj9vsISM/jJ3Cf8x0lE+wEh/pbarrIi6l6U9/1kFElaW2Ui4eeDo4
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JJV9MG7t
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 6/6] ice: devlink health:
 dump also skb on Tx hang
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
Cc: willemb@google.com, Wojciech Drewek <wojciech.drewek@intel.com>,
 dwaipayanray1@gmail.com, linux-kernel@vger.kernel.org, joe@perches.com,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 Simon Horman <horms@kernel.org>, netdev@vger.kernel.org, apw@canonical.com,
 lukas.bulwahn@gmail.com, akpm@linux-foundation.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/14/2024 4:30 PM, Jakub Kicinski wrote:
> On Fri, 12 Jul 2024 05:32:51 -0400 Mateusz Polchlopek wrote:
>> +	buf_pos = ice_emit_to_buf(buf, buf_size, buf_pos,
>> +		"skb len=%u headroom=%u headlen=%u tailroom=%u\n"
>> +		"mac=(%d,%d) net=(%d,%d) trans=%d\n"
>> +		"shinfo(txflags=%u nr_frags=%u gso(size=%hu type=%u segs=%hu))\n"
>> +		"csum(0x%x ip_summed=%u complete_sw=%u valid=%u level=%u)\n"
>> +		"hash(0x%x sw=%u l4=%u) proto=0x%04x pkttype=%u iif=%d\n",
>> +		skb->len, headroom, skb_headlen(skb), tailroom,
>> +		has_mac ? skb->mac_header : -1,
>> +		has_mac ? skb_mac_header_len(skb) : -1,
>> +		skb->network_header,
>> +		has_trans ? skb_network_header_len(skb) : -1,
>> +		has_trans ? skb->transport_header : -1,
>> +		sh->tx_flags, sh->nr_frags,
>> +		sh->gso_size, sh->gso_type, sh->gso_segs,
>> +		skb->csum, skb->ip_summed, skb->csum_complete_sw,
>> +		skb->csum_valid, skb->csum_level,
>> +		skb->hash, skb->sw_hash, skb->l4_hash,
>> +		ntohs(skb->protocol), skb->pkt_type, skb->skb_iif);
> 
> Make it a generic helper in devlink?

Makes sense for me but need to consult with an author

> 
>> +	if (dev)
>> +		buf_pos = ice_emit_to_buf(buf, buf_size, buf_pos,
>> +					  "dev name=%s feat=%pNF\n", dev->name,
>> +					  &dev->features);
>> +	if (sk)
>> +		buf_pos = ice_emit_to_buf(buf, buf_size, buf_pos,
>> +					  "sk family=%hu type=%u proto=%u\n",
>> +					  sk->sk_family, sk->sk_type,
>> +					  sk->sk_protocol);
>> +
>> +	if (headroom)
>> +		buf_pos = ice_emit_hex_to_buf(buf, buf_size, buf_pos,
>> +					      "skb headroom: ", skb->head,
>> +					      headroom);
>> +
>> +	seg_len = min_t(int, skb_headlen(skb), len);
>> +	if (seg_len)
>> +		buf_pos = ice_emit_hex_to_buf(buf, buf_size, buf_pos,
>> +					      "skb linear:   ", skb->data,
>> +					      seg_len);
>> +	len -= seg_len;
>> +
>> +	if (tailroom)
>> +		buf_pos = ice_emit_hex_to_buf(buf, buf_size, buf_pos,
>> +					      "skb tailroom: ",
>> +					      skb_tail_pointer(skb), tailroom);
> 
> The printing on tailroom, headroom and frag data seems a bit much.
> I guess you're only printing the head SKB so it may be fine. But
> I don't think it's useful. The device will probably only care about
> the contents of the headers, for other parts only the metadata matters.
> No strong preference tho.
> 
>> +	for (i = 0; len && i < skb_shinfo(skb)->nr_frags; i++) {
>> +		skb_frag_t *frag = &skb_shinfo(skb)->frags[i];
>> +		u32 p_off, p_len, copied;
>> +		struct page *p;
>> +		u8 *vaddr;
>> +
>> +		skb_frag_foreach_page(frag, skb_frag_off(frag),
>> +				      skb_frag_size(frag), p, p_off, p_len,
>> +				      copied) {
>> +			seg_len = min_t(int, p_len, len);
>> +			vaddr = kmap_local_page(p);
>> +			buf_pos = ice_emit_hex_to_buf(buf, buf_size, buf_pos,
>> +						      "skb frag:     ",
>> +						      vaddr + p_off, seg_len);
>> +			kunmap_local(vaddr);
>> +			len -= seg_len;
>> +
>> +			if (!len || buf_pos == buf_size)
>> +				break;
>> +		}
>> +	}
>> +
>> +	if (skb_has_frag_list(skb)) {
>> +		buf_pos = ice_emit_to_buf(buf, buf_size, buf_pos,
>> +					  "skb fraglist:\n");
>> +		skb_walk_frags(skb, list_skb) {
>> +			buf_pos = ice_skb_dump_buf(buf, buf_size, buf_pos,
>> +						   list_skb);
>> +
>> +			if (buf_pos == buf_size)
>> +				break;
>> +		}
>> +	}
> 
> You support transmitting skbs with fraglist? 🤨️
