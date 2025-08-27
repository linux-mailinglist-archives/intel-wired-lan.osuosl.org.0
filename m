Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBFDB387AF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Aug 2025 18:22:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6163280E93;
	Wed, 27 Aug 2025 16:22:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GDR3lRUFrbzu; Wed, 27 Aug 2025 16:22:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4A48E80EA8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756311760;
	bh=VryZLZMah9cWrdyhCu8t4rigj+J7f4t/vyflNTqergg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hs8L4kPUzExjShfRXINQqnwmOf1UGnOthe60lFwpeCkbkLRjSCcsspDk40cFGwWaa
	 h6Sf0UG1C6IlYNg++ZkiqkEzRnZCF5Q4sN0cIoIpPGCppgt//tGThnUjycaxvK+fJM
	 oT8Iqay47xU02LfawG9k/4waS7VQOF1wAKQKx6BxlJ12vDB95LO8IQkPg/WIl2nDFh
	 Te6schRubfcHCZYYGHqk4WGfdjq/6593lHM6gYh6Iar/d+XWYpf83fvktyna0vBe4J
	 riw4Impo4nVx1bXkepTd3RxQ9OU0NCrsd2Y/bG4q2KkP8ebXqbv4gf5a21vae+hw1d
	 mLf+w8HdgSzGg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4A48E80EA8;
	Wed, 27 Aug 2025 16:22:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4575FB8C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 16:22:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2C424405A7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 16:22:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CUV29lB0bIEx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Aug 2025 16:22:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5923B4059E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5923B4059E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5923B4059E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 16:22:37 +0000 (UTC)
X-CSE-ConnectionGUID: HTlpSIK6S2O9fvs7yDaspg==
X-CSE-MsgGUID: p55/TTCyQeOl+/AnNJ9XSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="83974082"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; 
 d="asc'?scan'208";a="83974082"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 09:22:36 -0700
X-CSE-ConnectionGUID: o7DJ/ADGSb2hP653JBQqVA==
X-CSE-MsgGUID: mzo261jBQNOpm2VHRbv1kA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; 
 d="asc'?scan'208";a="200829757"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 09:22:36 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 27 Aug 2025 09:22:35 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 27 Aug 2025 09:22:35 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.52)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 27 Aug 2025 09:22:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MxRTiAqnlwGJmH1xO/IMi9gMTN+59W6OcnfMJ/D0H1h7Ujsyz5VN5IqKyQjZkjChzgINPHtmHM6FBK0Ktp6CQa1YduXMDvjIKw6LDeeYncOBCQWnHED0dDl1qaI6LJ4n/uZKONGRkTSi87aA0jvipLBXEyAbNL4M6q3be7idiaE3YywqC3QTkrP19+AkWxWATQraEoI6RqNUPlgXkl1PNgk5omtzguzEgY+0mILhcM6TR3Sb8xJBRaNZPswsJkAO8IDl7kE41Rx6STedtT4a0H6+fgop+aH9bJ67JVWB6oEcEKzcCz96frrRVePUBoUAo0CZo+tooK5C34ZAvscUtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VryZLZMah9cWrdyhCu8t4rigj+J7f4t/vyflNTqergg=;
 b=mgHDI8o/gYdPerbS+ASsGpyllnM8fAX2M2YvW9bnnb+xbT4utSltKLjVQSqiPvU6PNFH3PM+9UzF4k5+HHsYz8RcwEXWOvQgBxncph7jdntDGnWwa3zDyXFhU8tmSJyyyceXDTsJoV1iXcT47sFNeLj8aM+Lf4pFZCovU1YbE5boGgNtaDFixs7QlAdnH3DMimnmni3ABSfTMIiZnmdF1hFSRumMLLizlbHWMS6e8+TY5id6nbUoG+FrKo+KHvmVSIREItJSiM3biBlnq/kcPCo08a2e7fFtlk6kzoBaNKeKSASa2rDIOl8F7kwobD81vM+WW9AETNoWwjatr0Xm3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM3PPFE9989E69E.namprd11.prod.outlook.com (2603:10b6:f:fc00::f5a)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.16; Wed, 27 Aug
 2025 16:22:31 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.9052.019; Wed, 27 Aug 2025
 16:22:31 +0000
Message-ID: <509af4ec-93b0-44b4-a10f-abcab029617d@intel.com>
Date: Wed, 27 Aug 2025 09:22:29 -0700
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>, Kurt Kanzenbach <kurt@linutronix.de>
References: <20250822-igb_irq_ts-v2-1-1ac37078a7a4@linutronix.de>
 <20250822075200.L8_GUnk_@linutronix.de> <87ldna7axr.fsf@jax.kurt.home>
 <02d40de4-5447-45bf-b839-f22a8f062388@intel.com>
 <20250826125912.q0OhVCZJ@linutronix.de>
 <e656a4ee-281c-4205-9183-bc3c7dbc9173@intel.com>
 <87ecswq5vj.fsf@jax.kurt.home>
 <aefa86a1-8959-4e5f-8203-78ce4c50b3bd@molgen.mpg.de>
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
In-Reply-To: <aefa86a1-8959-4e5f-8203-78ce4c50b3bd@molgen.mpg.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------YRRdAT5Zhl1Ugeg6L3HKZXDH"
X-ClientProxiedBy: MW4PR04CA0185.namprd04.prod.outlook.com
 (2603:10b6:303:86::10) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DM3PPFE9989E69E:EE_
X-MS-Office365-Filtering-Correlation-Id: 72d0cb69-4d76-44a5-6680-08dde585ec17
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WEQzRHpuMFNRTE9JSGlBclE3dERtN1ZYV1Y2dDRkR21ZSkYzbVlBVG1wOFBm?=
 =?utf-8?B?K0RhKzF2RnNKM1FzVnFKU3BjQmhodHZRbWFhcmdQaXBFbCtpdXRxYXhMSnJU?=
 =?utf-8?B?TDh4bFpKSGs5QzVlaFRuTmlKOHQyY2R2MjJFVnBQNElPNmtScXNwakgzK1ow?=
 =?utf-8?B?SEpNSE1jSy9VVzA0RjIvN0tCY3VOZ2VBTVFoaG14NkNicjBZSEc5Y2tVM0cx?=
 =?utf-8?B?UkQvRGZLY1Z0MXEwSXRHY2xZc3VYbzZPRlhRSGRyTUprWEM4U1haSDFJdkEv?=
 =?utf-8?B?c3ZEeXk2aGhpM2hCZExaLzg3b3dCTlkxMVMxZXkwTkhqQWVHdEhxZVI2eTE4?=
 =?utf-8?B?QTJDQ0tpTEFLQ29VWmdxQVVEeWUzQS9WRi90OXRGS0xzOEp0N0c5TC9iYVF0?=
 =?utf-8?B?Q0tGaHJldWNsSU1FYWUzbVpTTVVoeXFiWVlacEJXdWsxSmNuT0lXbHRoWktQ?=
 =?utf-8?B?b2Q1NWlVZnoreEozWHV5UnJyQnQwMVcxbUp5cHRrcGp5c0JhTFFLN0lmNVhW?=
 =?utf-8?B?bDU1YkVOZmxPOXBnaWRXRGpsNXNpckgvOWxNUlNhQmhwMm5nbmFnTnd4NWdw?=
 =?utf-8?B?dUpVNlNCdzJhMkxjM0RQcG5oV3V2TC9Sa3BYSEczYU9GdDhIYkJZUzMrT2M4?=
 =?utf-8?B?VzRPdll1aWduVUtqdGg4cGhiVHh3K2ZBYWVuaVA4VTFIdE5HN0hSZVZLQTlX?=
 =?utf-8?B?QmNqbllyVStTNll3cFllS1pxZWtOU09sZFlQWVByQ21YaFlnazBheGRGUC9u?=
 =?utf-8?B?aFNaV2R4OW5oU0twYy90d0tKY3ZXMitaVW5md0RZYlZ2b3JyYkdoSlJsNzNM?=
 =?utf-8?B?VG52MCtEeDBqRWRXdThwcmdxWHErVFY2ZXQwdUZLTHppbXB5ZXJETTFpTzVX?=
 =?utf-8?B?R1hQMC9hUzRsVTFxTWRYQmhtcEVwNkhaaWJLL2FJcDd0elBTeE1IbGVTcDJs?=
 =?utf-8?B?dnRVYkRsbW4remdpRGtTNlZYSERFUjlSWWRGcm83TzFTLzc0cExYbTdCODk2?=
 =?utf-8?B?a1Z6czNhR3J1bFd5cXlTcFdlS3lLSWlydE5wZTIwbWVjU09vUW1wZ09JdUdY?=
 =?utf-8?B?QXZ4WFVnRXFGWmZBc0FmeEJKNitFRnFBeW03N2NiTlg5cEhXM2xZRjVoWDFM?=
 =?utf-8?B?Tlo0SXlKcVkvcXo3YmN0WktZRXd5WUY5Y3EvNHdTYWtKMFFIYWxrUnIxTVEy?=
 =?utf-8?B?ODlENmhWMnZVbTZqOXVMU3owanI3Mm05RzhyUVdXMnlhVFlUUERUeHUyYWVD?=
 =?utf-8?B?ckNPZ29kUzZDMCtKaGI1RCtWcGhhVHY5TUhwSHBLTzJ4dm0ySjI0OWd2WFVK?=
 =?utf-8?B?ZExsekRnaWhWU2cyS1lxa3VrKzV0Vk5McUJzdThydDUrZDdsNnR2eTJPZDdz?=
 =?utf-8?B?eStxOEp3OFh0ZXRzVVphSmpYTUtoeWVxekQwRjZvTFJaU2JxRHZNWktSMVFP?=
 =?utf-8?B?enNQSUVhSzFoLzJENEtuRE5YWWxhWjBoWVBMNnJWeExIT3czNkh3WG1Ndkcw?=
 =?utf-8?B?NmVrMnBVSGhBRmJTSFRabVB5ek1SOFZ5SFhIcEp4RTNJRUpKYzhxMjdOWGxM?=
 =?utf-8?B?QVlIem9KbHFFWVc0NHQ4Ris2RHA0STBFZTVKR0ZMaGhjcVhhOFFrTXFVdSt5?=
 =?utf-8?B?b0luYzVNeFhCSWh5ajRXVVkvMlFFUUp2VGhNLzZWYVpNU3EzU2VOQ3ZrWmZi?=
 =?utf-8?B?MTM0V2ZuMWVrRktBZ085V2x5YVlralo3M2krTFdnR21TOEM1SGNwSkQ1aVQv?=
 =?utf-8?B?UUx2TFh6cEJOMnZzYjVHZ0FIbGJBSjFBSmtTSXNXbXBYd3VkZ0FUanUzOXJI?=
 =?utf-8?B?WHJXdFJKUDVBblJ1eWRQTFcrMW4rdEdZMlZRdkhud0hQMjJRb0lKQ2FiTVlF?=
 =?utf-8?B?WXExbnd2UjE4OUYrVFpHcXN0QmhNQm5nUmtFKzBrRTIza1d2R0txWllkSDlW?=
 =?utf-8?Q?8oxulyStF8Y=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bFhRTFdsWStlcDdpeEpWWmh4Z1lXcnRRUzlkbWVDOG5MMGpRaDVta1ZXaXpz?=
 =?utf-8?B?OUphNE5sMlo3TTA3MnRtQ05vOElHQkRkWk5Ock5Yb0hTb1VIdnV0c0w4bWJN?=
 =?utf-8?B?VEFYWkIwaG52c09RQUxlMmlUaUNBSyswK01Kc0kvUXlWeSsrbWoxQ1VPbVNS?=
 =?utf-8?B?OGFZUnR1bGFWM3pIVEp6UU10MDZkakFnTE96SC9YT0R1TStQOW5aeisvakVW?=
 =?utf-8?B?bVlBenRwc2dtUUt3T21xazNtNDZCcTJPTndpaXgwdnhOakMxMms2dkpQcVlG?=
 =?utf-8?B?RnhPZWttM3ZtbGRhUkM3c3JaZ0gzaXUzcG1qMmxXUnBXQXY5bU51ZHBLN3Yz?=
 =?utf-8?B?YUREWHlVRDdMVVRhR1hpTzZNUTR5MjFZSWdEVHFuRWtpaDh4bmRuQjN5R2Zs?=
 =?utf-8?B?bmF1Y2FEWUs2RTZNQWU0Mld0RnV3R0xhSFFNM2JtUlV1S2lnaUhnMEZTdDdS?=
 =?utf-8?B?ZVNweGpxcGVJZDN4VC9lR1B6cEY4TzhrRDZ2SkpSR29lM3NwNlk5QktOKzdS?=
 =?utf-8?B?UTd5Z1BGZFF4SmFmUnBDYVZxTlJoam02MmVUa2xmdGpoZVhSend0SEJHamY1?=
 =?utf-8?B?YzI4TEVWQkR0c2p4UW1aVlM2V1daOW1TSWRiY0FlTGNCWUVuZjVkK0I3OFFI?=
 =?utf-8?B?WmFmNTRRME5sWW9UV1R0VEF3SHdrc05kaE9yMmZvdzRocW5wMy91K1VEWlE4?=
 =?utf-8?B?RHRpcGordHF6Q0xLUDhWTzZyWDE2cHByRHpjNk1jM2VhSFZWY2NjYmtZNGlS?=
 =?utf-8?B?cC9HSVBSVUxrT2RZSmVVRFJ4ZW52N1dkTmdUdE9qU3VwUXNUSjNyY2tSVmhw?=
 =?utf-8?B?eWwrUlh1S2NUajdnbDNXS1UwSjk5N2xlYVlUNkdwM3BFY3A5MWFtelIwZEhE?=
 =?utf-8?B?WFhHVjlwL3NZUDZPbkx6bFZLMFZZcnMvYXM3Z0ZQcFFnOThPRVA0ZEcwbW0r?=
 =?utf-8?B?blZsMFJnWDArL1pCQ0ZGeHBodmplTW9qTnd5bjNiU2ZacDJNQnZLUElCTlpC?=
 =?utf-8?B?WTQyRmZPSThlb1VxVmJlYnh1V0VPWjZFRG1mTTFhNTk0N1ovTWc3NU9aNnR2?=
 =?utf-8?B?VVBOQWNpdTA5UVBBWCtsOVU4NzFldzkrcDcya0FVNXllS3FFdjRVSjdqa1or?=
 =?utf-8?B?Qm9TQVA4UUI1VG1rZzlGaVQrRjdSYjJ1OENMeVdyN2MwZXg3RGQrL0xEejBv?=
 =?utf-8?B?MTIvRERHYjBBNjA1cng1b1lURktnbkhEck1DUk9JU3ZJUWppTUtGMmtvNmJN?=
 =?utf-8?B?Znd2N1BuOGxacnB3UVZiRFlEMXMwa08xZkdjQkt6ZmQ4Q1lMRFF4SjhEUi81?=
 =?utf-8?B?eWhmdVd6K3ZOTER4cUQxbzN6ak4vcXJQVE5EbXFMYndTdU5oREZrem4vdXlT?=
 =?utf-8?B?REFuMjdYVFRVVVlzc1hmdE5lSGlSUGdVS0tHM3h1S1NIUjZYZDVZdFlzTE1j?=
 =?utf-8?B?ZzJ6Y0JDZmdUa1k3bDhvYjc1R2VOSjhUYzJ2cDltSUU2ZUEyZnVFNTBQMUJv?=
 =?utf-8?B?K09hK3A5RmExSnFydi9UeHZYRmhLaWZ3K3UxalE0N3I4V0JHSzVrOGxnbXdo?=
 =?utf-8?B?azhoVXBrNnljTW9TWHQ3ZmV1c0xjL1pUSjF1Nml2bXA0SEtsb21pTW52VTRM?=
 =?utf-8?B?T1RjdDQ4VjAxZWVBaCs4NFB2elVManFsUnVDUDZuUituY0N1RUJxM09WaU5D?=
 =?utf-8?B?VUFuejNqL0tTbXFCaDk5ZWdxV3JkUHNhYjhPZVV4Vk1UZHVxZVVkSUJ2dmhk?=
 =?utf-8?B?NnVMaFRqSWN4OFRMdU9CZWZuS291UUdJN3FlUStQUHpyNzFXNmUzUlQ2a0xa?=
 =?utf-8?B?azZKZkt0VklXQk4veWd6ZHBaTWZDSG1KRzQrSWk2SVFUc01KU2NmenhISjlK?=
 =?utf-8?B?Z2lXajFHM1N2Q2RiRExzL1d4VloyWUJyekVYeC8vSE9XZG5RVnZ5VEpGOU5D?=
 =?utf-8?B?Z0I5ZnR4Z2tJVnlHbjNFd1pnVzhWN2xPS3V5K1VkVW5TMDJMR29RSXA1SnBt?=
 =?utf-8?B?TXkxMzYwYzYzQkJwam4yUS9RWEFWakRvVCszREhDRFRxcGppZUQzcVhGNEJk?=
 =?utf-8?B?MTA4KzNkdUtFcWd0ZEJJSTBubEh1aVpiQlBVcjBPcGdwbkN1ZmpISFdQejFk?=
 =?utf-8?B?ZXNLSW1sK1VSWXRRT0w2bXIrK0FrQ2ZmVkY3bkJob1hwVVoxVDJqS3Z1Y0xw?=
 =?utf-8?B?QUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 72d0cb69-4d76-44a5-6680-08dde585ec17
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Aug 2025 16:22:31.2271 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iOdVuS0nY3rXZQmvk3hLf/TnoCWmXj9klhxXi1fNhcaJW61cMtX///sMOOg8UOeZ8FWtA8bAADvawaIhpT57nh0dK+GBUqRG+Lvajb4ZRWA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFE9989E69E
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756311757; x=1787847757;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=sgLy4efaQ8ZsbOztH1za57VTNjf5QZ5j4lY5H5ECF6U=;
 b=fiJcUJ6thqiLVK23Pq1KxXRNFNBzBIYqW2hKYIpNh5EbuUo+tUpVtB07
 XKBAjOD93UUkkIu0NwLVe2AfQd9+TOJ9sM71JTk+CfqebwodMS794c7jF
 dzjZpf/bZ3oVvwozMh4GlOKkfstV7288OTWuNOQ+hVYt3fOBt0GRkH8SK
 jSN+xoPkz217zclEKYwwnBsKZ4z7EYfAUsRuipz2mfHWR2czuBy3Mbqix
 f11HKUdM7xLhX/mNl/VQKNrFhA50TnbqkN9uxfmO8YAf5nAD+LXfLSmOA
 Vf+hMnTFq1pSfkThhlvZgZORaSM3nyRNjq9EyoRCJTjsJEuHwO5+xte3y
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fiJcUJ6t
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
Cc: Richard Cochran <richardcochran@gmail.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--------------YRRdAT5Zhl1Ugeg6L3HKZXDH
Content-Type: multipart/mixed; boundary="------------rr0q4I0WYZ00VNczP3ZZ88S3";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>, Kurt Kanzenbach <kurt@linutronix.de>
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Miroslav Lichvar <mlichvar@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Message-ID: <509af4ec-93b0-44b4-a10f-abcab029617d@intel.com>
Subject: Re: [PATCH iwl-next v2] igb: Convert Tx timestamping to PTP aux
 worker
References: <20250822-igb_irq_ts-v2-1-1ac37078a7a4@linutronix.de>
 <20250822075200.L8_GUnk_@linutronix.de> <87ldna7axr.fsf@jax.kurt.home>
 <02d40de4-5447-45bf-b839-f22a8f062388@intel.com>
 <20250826125912.q0OhVCZJ@linutronix.de>
 <e656a4ee-281c-4205-9183-bc3c7dbc9173@intel.com>
 <87ecswq5vj.fsf@jax.kurt.home>
 <aefa86a1-8959-4e5f-8203-78ce4c50b3bd@molgen.mpg.de>
In-Reply-To: <aefa86a1-8959-4e5f-8203-78ce4c50b3bd@molgen.mpg.de>

--------------rr0q4I0WYZ00VNczP3ZZ88S3
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 8/27/2025 6:39 AM, Paul Menzel wrote:
> Dear Linux folks,
>=20
>=20
> A very interesting issue.
>=20
> Am 27.08.25 um 14:57 schrieb Kurt Kanzenbach:
>> On Tue Aug 26 2025, Jacob Keller wrote:
>>> On 8/26/2025 5:59 AM, Sebastian Andrzej Siewior wrote:
>>>> On 2025-08-25 16:28:38 [-0700], Jacob Keller wrote:
>>>>> Ya, I don't think we fully understand either. Miroslav said he test=
ed on
>>>>> I350 which is a different MAC from the I210, so it could be somethi=
ng
>>>>> there. Theoretically we could handle just I210 directly in the inte=
rrupt
>>>>> and leave the other variants to the kworker.. but I don't know how =
much
>>>>> benefit we get from that. The data sheet for the I350 appears to ha=
ve
>>>>> more or less the same logic for Tx timestamps. It is significantly
>>>>> different for Rx timestamps though.
>>>>
>>>> From logical point of view it makes sense to retrieve the HW timesta=
mp
>>>> immediately when it becomes available and feed it to the stack. I ca=
n't
>>>> imagine how delaying it to yet another thread improves the situation=
=2E
>>>> The benchmark is about > 1k packets/ second while in reality you hav=
e
>>>> less than 20 packets a second. With multiple applications you usuall=
y
>>>> need a "second timestamp register" or you may lose packets.
>>>>
>>>> Delaying it to the AUX worker makes sense for hardware which can't f=
ire
>>>> an interrupt and polling is the only option left. This is sane in th=
is
>>>> case but I don't like this solution as some kind compromise for
>>>> everyone. Simply because it adds overhead and requires additional
>>>> configuration.
>>>
>>> I agree. Its just frustrating that doing so appears to cause a
>>> regression in at least one test setup on hardware which uses this met=
hod.
>>>
>>>>>> Also I couldn't really see a performance degradation with ntpperf.=
 In my
>>>>>> tests the IRQ variant reached an equal or higher rate. But sometim=
es I
>>>>>> get 'Could not send requests at rate X'. No idea what that means.
>>>>>>
>>>>>> Anyway, this patch is basically a compromise. It works for Mirosla=
v and
>>>>>> my use case.
>>>>>>
>>>>>>> This is also what the igc does and the performance improved
>>>>>>> 	afa141583d827 ("igc: Retrieve TX timestamp during interrupt hand=
ling")
>>>>>
>>>>> igc supports several hardware variations which are all a lot simila=
r to
>>>>> i210 than i350 is to i210 in igb. I could see this working fine for=
 i210
>>>>> if it works fine in igb.. I honestly am at a loss currently why i35=
0 is
>>>>> much worse.
>>>>>
>>>>>>> and here it causes the opposite?
>>>>>>
>>>>>> As said above, I'm out of ideas here.
>>>>>
>>>>> Same. It may be one of those things where the effort to dig up prec=
isely
>>>>> what has gone wrong is so large that it becomes not feasible relati=
ve to
>>>>> the gain :(
>>>>
>>>> Could we please use the direct retrieval/ submission for HW which
>>>> supports it and fallback to the AUX worker (instead of the kworker) =
for
>>>> HW which does not have an interrupt for it?
>>>
>>> I have no objection. Perhaps we could assume the high end of the ntpp=
erf
>>> benchmark is not reflective of normal use case? We *are* limited to o=
nly
>>> one timestamp register, which the igb driver does protect by bitlock.=

>>
>> Does that mean we're going back to v1 + the AUX worker for 82576? Let =
me
>> prepare v3 then.
>=20
> Good question. Personally, I=E2=80=99d interpret Linux=E2=80=99 no-regr=
ession-policy=20
> that, if a possible regression is known, even for a synthetic benchmark=
,=20
> it must not be introduced unrelated how upsetting this is. So the=20
> current approach needs to be taken.
>=20
>=20
> Kind regards,
>=20
> Paul

Another option is a v3 with AUX worker for 82575 and i350, but direct
in-interrupt for i210 since so far that doesn't seem to have a regression=
=2E

Or perhaps Sebastian can figure out something further about the
reproduction.

--------------rr0q4I0WYZ00VNczP3ZZ88S3--

--------------YRRdAT5Zhl1Ugeg6L3HKZXDH
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaK8wxgUDAAAAAAAKCRBqll0+bw8o6BRr
AQC+Y3wCuPbkpe2Y5/vTYXusF0cMWQNhJ80xNSq3iXAx6AEA8FJqQ7v8DjzrRkzkJHtn4OFtRZDq
zq0Vj0z19YkE9wM=
=ZCYM
-----END PGP SIGNATURE-----

--------------YRRdAT5Zhl1Ugeg6L3HKZXDH--
