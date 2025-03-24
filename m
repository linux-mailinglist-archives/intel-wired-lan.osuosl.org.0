Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A59BA6D647
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Mar 2025 09:36:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0F19060B8E;
	Mon, 24 Mar 2025 08:36:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AwRRwhm7j1jM; Mon, 24 Mar 2025 08:36:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3111160B93
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742805382;
	bh=i1usbLJe8WKz67gUBm24RpERMdq9JAA7LwYH8UzQD7c=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2lkbeR/QmUoz0qyPufj/5dGgQyGTu7Nj8mptUtvw/IoNSugUC4DWoCMCANJQdQ2u/
	 1CirBPgBssL19hGJuPITe40KYj86OjIZHImuL8dcMULUy3jHinDb9Ep8LBmDPf1xAa
	 g559ZtiWB4EZTssK8UZDI2DSKAWPAEdUzpstasJb/v6rYANlsymzf7i3OrykjSHbCS
	 ooIpgkdHJHvMDWnh0ulC1Ud6Ojq4RiqzDtLxMcNmGAWWQyrBO8foqpee4K4cBR2XNY
	 EfwUNBezO0UZJOdxmBmSmmVW9AS2HUc2x2zwb3RCZdEaZOAIe2UxXab+9XJS/kbsqV
	 miAJ3Doq3fZow==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3111160B93;
	Mon, 24 Mar 2025 08:36:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id F2E13C0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Mar 2025 08:36:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D804340BFF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Mar 2025 08:36:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MhTXcbccqwiL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Mar 2025 08:36:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B0318400E2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B0318400E2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B0318400E2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Mar 2025 08:36:18 +0000 (UTC)
X-CSE-ConnectionGUID: Pt7Fv+e0Tl+FvJY1Ho/JVQ==
X-CSE-MsgGUID: QrjSCpy3SreEyGsXYOZclg==
X-IronPort-AV: E=McAfee;i="6700,10204,11382"; a="44121158"
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="44121158"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 01:36:13 -0700
X-CSE-ConnectionGUID: oj/O/lhCQLiymJpEFq5O7g==
X-CSE-MsgGUID: x0eJK1YUR8eG+UfOf7qFig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="124433357"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 01:36:12 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 24 Mar 2025 01:36:12 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 24 Mar 2025 01:36:12 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Mar 2025 01:36:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FFqZx3XEDrjJgWZ0FZy5WD6JAgWNxLfZhBy5ed8W9OxcJ0MT583wWazjuBsk4RMqianpZu1Kc760Yq6wn0u90OQogA/DGqmUublTyorGFVRvCZU6Zzf2TVEfngiiYAMUaWcGhZg3QNGVjw3dyYubq0/GLUjap936M6h0IFepb8P0rDYcDjsdEqWxWF1/LhbqtJBGGzy4ab1i/eqGPvejUzSF8VNWLHk872VZcqRXrOEM6rGleb8QQlSEjB/CigauMV9ZHxGz6dJHnRyUIoZ0xFxKC/Sq2XFaNM1vbE5wD7cZwrubxhw98CmHEOOYFRXovWqEBZXyMrpSPw09ZpxrVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i1usbLJe8WKz67gUBm24RpERMdq9JAA7LwYH8UzQD7c=;
 b=JS7RonFW3VtJWl0IRk85rYugYzGnHNDqqyY0PVv9xWJeIxZFJDNRVujE0JuoyNVEghdVOK+tehdtlqJ7mmYzFhf9ejdaEBfHCimZfUqCTNR3wime2fETQpQKenvJ0UNaMKRGHJrfQsOl9oVzZHWV36rUBRTqYMUbY7rheApf3p5od6mFQx0BOT8+SqJ344YaXCHp0Ys8TaKNgN6yUd8Eu8LzSV+TUm65P4TVH0vu+mHl42BQMgJ6A6FayRwdCWTfMHfEaDs5Qtt65Pm/Yu2fh/E2UHQsfxF+gVFgCAXXhPYXW5i8ck24B4Q4++/KYNFdcskOtBcyM/BA87T5SsKtVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BY5PR11MB4194.namprd11.prod.outlook.com (2603:10b6:a03:1c0::13)
 by CY8PR11MB6985.namprd11.prod.outlook.com (2603:10b6:930:57::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Mon, 24 Mar
 2025 08:36:04 +0000
Received: from BY5PR11MB4194.namprd11.prod.outlook.com
 ([fe80::9d17:67a6:4f83:ef61]) by BY5PR11MB4194.namprd11.prod.outlook.com
 ([fe80::9d17:67a6:4f83:ef61%7]) with mapi id 15.20.8534.040; Mon, 24 Mar 2025
 08:36:04 +0000
Message-ID: <a04a6a77-a00a-b274-972d-51b8ab5b1fe6@intel.com>
Date: Mon, 24 Mar 2025 10:35:56 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Piotr Wejman <wejmanpm@gmail.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: Vadim Fedorenko <vadim.fedorenko@linux.dev>, Simon Horman
 <horms@kernel.org>, Vitaly Lifshits <vitaly.lifshits@intel.com>
References: <20250222124629.35797-1-wejmanpm@gmail.com>
From: Avigail Dahan <Avigailx.dahan@intel.com>
In-Reply-To: <20250222124629.35797-1-wejmanpm@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0006.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:2::6)
 To BY5PR11MB4194.namprd11.prod.outlook.com
 (2603:10b6:a03:1c0::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4194:EE_|CY8PR11MB6985:EE_
X-MS-Office365-Filtering-Correlation-Id: d0ce23cd-8f6c-47a8-4be9-08dd6aaeea01
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|366016|1800799024|376014|7053199007|921020; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SkFmUFFTYmVTLy9JQkd2eWhlVE5UNEJueEdFU3dpalNrWDFYV25KRlRVQjVI?=
 =?utf-8?B?dm1HakduQjV1Y0ZCcks0ZEtaYUd4eTk2WE5rME9nTHhnRG9QbjV3ZmdYZENI?=
 =?utf-8?B?UWlkZWVPVUc5MEY5OE96clFyTExGQzJNV3JoOWNzM0FmTUxJTUtmZmdtR2FP?=
 =?utf-8?B?R3RwNHEzUHdQdVN5d296TytCdlFSdElZUWJPL0NZT3RlRWU4b2NRbUtIV3Ro?=
 =?utf-8?B?ZXNia1oraVpabGdnRmlkcCtOdWFzVlhGaXJ6Y0FsQ1NMUWN5Q28xd0ZlWUtH?=
 =?utf-8?B?WGxNNUlGUFRLLzBsOU8vbGo0VjMvNWw2STdsL0l2RFZHY3lkUFpNVjhJbmtF?=
 =?utf-8?B?VTdEMXN0UlBOSEw3SlppUk5TTjVHcnV4VmlBbVhXd0hhOWQ4VjlWQmRyM29F?=
 =?utf-8?B?UG5UbUpNa2FaMEZtVklwQ2VNcG5MOW12RXN4TGpKNDNoaDErSzg2cXNqbk8w?=
 =?utf-8?B?T25wSDlEa2tXMEhvWC9zNnBDaUZwdnFka3lGRlJaSTFqVnRocFE1UXZPUkdC?=
 =?utf-8?B?QnIyRWUrczBKczY0bHlSTStuT0hwZ3pUTmJ1b2hkeWN1K2tHbnJJZ0E3NDgx?=
 =?utf-8?B?UExZWXVpdVlneXgwMzlYY0pXRTcrY0VqZ09Gd09xdkZ6OFlScFlWWHlwcGIr?=
 =?utf-8?B?Vm5OTmtHT1dnWnBOVXZlRUxFTDVkS05uTitlWXQ1dkZ2Y0wwNW5vcmhwS2s2?=
 =?utf-8?B?OTQrTFB3UTI4ZGFBUWtHQ0pHMVlwK3BLOVRiVjF2a0ZWbHowYXJuenZjc3lK?=
 =?utf-8?B?a01aZzFnVWhoYkUyVVNGVnByUklieFRzcCtnT010VWJWL3c0elY1bHdsdThT?=
 =?utf-8?B?Uy9lTHRyN3VHNEdiWjRVVEpaNkxHOUN5WTJmOTQ5Si9GeGZ6ck1wd1ZvTUpH?=
 =?utf-8?B?dDZRK0M5cVlhUjB0WVdzOUFyREJJOE55L041eWg2KzZDQVBweXl4K29mejdm?=
 =?utf-8?B?a21XU1p6MlNaSlJjZ2hET0VlZFNqa0RucWZzREpLaGl4ckpYVEhOTDI5cTNO?=
 =?utf-8?B?VUJnblI2RTUyMmJ6U2lwRlI1YmJaelN3d0p5dUY4QjRzdXRoKzNaQ2V2alhX?=
 =?utf-8?B?bWVUQ2tPK2FXeTZqV0MzalA0ekg5WmFOdm1tTVppbHl4S0JSbnRYZmpDejVz?=
 =?utf-8?B?cVpvZlFaREtLQ2sxZkpDSTRaajVWNHRVbjRQTnZoTkFFMnNmazdKckF3YU9n?=
 =?utf-8?B?a1VPbTI0MmExZlo5eVI2VVM5U09Xd29CVnpWZXF6dG5SMzVSVkJramtiWmZM?=
 =?utf-8?B?YmFQYVVrWnBydlA2dkc0TzFLOFJaU2lPYjJTTUJKbGNiTFJPbU14NlZlaG1T?=
 =?utf-8?B?RkVzKzRuZkkrdDd2NXEvTVFBSVBNT0twK3lSNHFtdVU0b1FEcFlKdHgrSjdp?=
 =?utf-8?B?czhLMWd4dXRURnFQVHF1dWNmdDZTV0F4REx2MGM1S0hGeG03M1c2MUl1VjZC?=
 =?utf-8?B?Y0xyRnQxZ0lJTlN0eERMZDhDWlhlb0owOURCNGVnQ2NTR00yc1NHNjIyR2hS?=
 =?utf-8?B?U3VraGlraWZHYWVvWjFVVXpmWFhaNW0vRXd5akozR1g0RGVINDJhZ255Zlpy?=
 =?utf-8?B?QjNOeU9LTS9FWDVMUUxyVms4ZmdmTExOcGlmSnVlQkdTN1hIcGlsTFp6N01V?=
 =?utf-8?B?cUNONHpEMExoVWoxbDc4OXlmdzI4bi8xYVBkZWNHaFRBZC9VOE1yYWNkdFdy?=
 =?utf-8?B?bEwzbHBjRnJRK09Va0RNaVVaZXpaMklXWVgyY3AybEgrRnV4bVZRdkRjaGhR?=
 =?utf-8?B?NUJ6dGMzeVRPbHhwc3lMbkNGdHJhMFQzRXducERYZDdabVlTWGErb2NOdHhG?=
 =?utf-8?B?Mm4zU0M1QlM4YjAxWDlTdVpKTkovSzRuTHgrcnN1MjlvRWlmY0kxTEdrTXJm?=
 =?utf-8?B?UGJNeHozb0NsdmhFc0Jvd0I5MlcwWU9zQVVwWHo4eUVndVJzQ1JkWUpiOGwv?=
 =?utf-8?Q?1o4DMri/XZL4+mmS7fnDZ4CBcSHTZQeV?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4194.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(366016)(1800799024)(376014)(7053199007)(921020);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dCtZMUswWmZRTGZhTlVhQTFSeTB6UkdjelBabXBvd0lSeWlwSDBXUjF1UTFl?=
 =?utf-8?B?R3EvODk3Y1hHRUdQRG1tcmN2dGdTL2lpZWFQTXEzcnZpbjYxUUJlenZsb2tq?=
 =?utf-8?B?UFRoTGx5TzZGRjQrTWNQK3BuU1lJY1IzSWR5Ym03RU9qc0JWTklPVkRiWkhx?=
 =?utf-8?B?S0RoSSs5eWJSakZNSGY0dVQ3SEs0Qk4yVnZ2dlROWTdEclo0YTQrd2tOeHZH?=
 =?utf-8?B?c0RJRkJEZ1dqUTNYV1U2KzBHUjNWRXRxVUpCR1c0OFM5QnE3b01OSGFoeGRt?=
 =?utf-8?B?QTRDdmUwc0F0RFdyR2ZsKzVCWnVEdWJUalozdkJwM1dvTUgwdVVNaHpnSHNS?=
 =?utf-8?B?MEplK0ZOV1JCYjVMSXlaWktBTVV1WjgySVJ2bllONkQ4em10TVhCM2hiQXBo?=
 =?utf-8?B?clNmWENSQ2kzUUVaekRzanozQ1d0cnlJU3lIeGlYNk44Z2ZEYVVZOUNrQXd3?=
 =?utf-8?B?UGtWM3BGRzNQaVc2TFhJSm1PWENCWU5CRXZnTVNNV3hHQXlXY3ErTFl1NUxW?=
 =?utf-8?B?OHAyT3c0c1lpZ2ViZVIxQTB6QkpyZjJrbTBkMHQvenJEOGZHR0E1Z09BejlE?=
 =?utf-8?B?TlVMR0ltSUJKWUVzaHpmMWJ6QTYrRjkySlloeE1KVXlRWVlaNFc4ek5JQlJS?=
 =?utf-8?B?V1Y3VXI2Y1ZMdm92ajloWVREU1Y0REVvNUord1BiV3VqMUhRVU1BU1RTbDFG?=
 =?utf-8?B?bm9YYmRzVFN1WVdtTzAyQW1DQ0VIMllqVUdXeUdPSXVFaXJ5WXhvTzdyMmZh?=
 =?utf-8?B?TzhCWDNQb3NjcG5hWW5jbEx1bm9kQ2htVXVEdzQ3RmMyaVZJQVh2TUlyMVFr?=
 =?utf-8?B?WDVXNkhxZzkzRWxwUW9ZTW5Uek8xRmZINElvZnRwRUdETk92SlVvbUJMUFpF?=
 =?utf-8?B?MnFkWkFYMENzbEtyWHhPNno2amxVLytoM0paUWJoUTBWc2Fqa3NHb0xJQ0xO?=
 =?utf-8?B?MzlaWDZ5dTRRejU3cmR1RDc4WGZBdldyZFBKaVZtdGQrRnFML2wyZ0pNLzZv?=
 =?utf-8?B?ZXI0TVYzNnJqejh3VzFFeUtTNTNlL0ZySWN6NjJZa3pMYWp0Zk9kNUNnSWdw?=
 =?utf-8?B?YkhYcjEycEY4WEIzK0RtYm9DZ3l2d2Y0Y2Rmd3RxbEs1VGYzMXdKa3B1OFFu?=
 =?utf-8?B?dCtsN2lnOUhFSWRGb05RWmVicEtkUW1CeCtHQ3ZXQnppa2RIWCtsMDVwWW00?=
 =?utf-8?B?dm8vMThNMzZvelIvOENJOUZ0TlM3eVBUa2VLLzlCYUpUeXIveWtSalhnaXJr?=
 =?utf-8?B?T0RDYWpwdytTRVZXSGRqbTBoTGYxbkFKNmhEd3Q2aTFxTHZZd3JkUGdaTUJP?=
 =?utf-8?B?M3M1YjhRRWMxMXhSa0xPMVJPczNPTnF5L3BoVFlTVFVkNDhjbWN4c2xKbzMy?=
 =?utf-8?B?UTUrNnZVSVl3a1hCd3lEUkwvVEtXM3Z1SEpUVUh3U1JSeFJSQTl3aVNzOE5N?=
 =?utf-8?B?TnZiVHNPTWNMd3A0TW0vUEZNdmJtaThPUU9aTE1QN0wvMk9zNjNtRjFtc1Jn?=
 =?utf-8?B?RHZWRTBWUzFtZ3lqRGlmZ3pNeXhSeWp6cG1PUDA4SS8yUHkrVDBsck5EYUNI?=
 =?utf-8?B?dkk5L0NOUU5weHhkNkRManJ0SWZKQmVDUzE5UmtiNHVHMGJFMGl3Tk1PMndE?=
 =?utf-8?B?L0x1cnBOMlh0cDBvKzM1QkQrK1B1ZmdBTzV6YUJDM2FMc0VORUd5UjE5MXp5?=
 =?utf-8?B?Yk9zajVYWXI3cnN2R3NJNkNtV3BNZStyRzk2UW1yYWREZG1GeEtQT1BSQk0y?=
 =?utf-8?B?RUNHeW5VeTNFYTd5dFBRWXA2ekpTdytzalVSUXNyYkZlYkFVTHhZalBUbnh6?=
 =?utf-8?B?V2pUVFdvUkhMemxHZ0Q0R0hxK2VVZDNUSGpnU3JDdG5abjR6d2I3NTAvRHVt?=
 =?utf-8?B?UVJ5MWRwZ28rbFJxdTFISVNacElFNkdwZi9zZGVSQWhuRGVGZkpwQjZDSmFw?=
 =?utf-8?B?T2lLb01yNUNsZnNxMnQ3Y1B1VDFOb3FPbEVMZ2NxcGlKcVNSRE5hQkJKc05s?=
 =?utf-8?B?V29QcDFYcGpndlN1OFhUWHlYNlNvU0VGNTNQaExGQ1lrNURYand1ZFUzOWlr?=
 =?utf-8?B?MHpjaGlseVlGV0ltU0doczg2cHNwb0plTElLNWNMeXJoK0M5cXJTTmhZQ1A4?=
 =?utf-8?B?OUNsbW42QVdQS3RJWktqMlloQTdod3lTMkdjM0prMTlhbHZZaXl3aFpaWUZX?=
 =?utf-8?B?S2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d0ce23cd-8f6c-47a8-4be9-08dd6aaeea01
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4194.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2025 08:36:04.3445 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VTqmVFqpEgjSuV1uRDuffMoJ5bCeYACD19+GOxJmXHMUCs+2/XyuQR+FPYvSb11+6Kr3r1cMgRAEY0MmDtbdVQ+rnGdtniEfi141NiqYU70=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6985
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742805378; x=1774341378;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3I3xZNySxaVIoOa4Z9SEoZTB/jCWf8d7pQvU2AXrvd8=;
 b=VsHcL7weU+ML1dU3+6YE/bqd++NHG7jgTOcO3HYlXjKCaRmUVq3ddxce
 1QnJXo6UOwaVXLUXJLyK/R+6zOwFblUwGM6E7p18fvDghx3PtdcRYNUBj
 dQs5K51jGGieW5Ac2MwyURQ0Mz2F9zLQ+2LTJdOLY6ogbQASFfv43frUx
 TOkTuikHseLxg6LM1XvPuKNOoU/plbm8L9qJonZfoxOsCDxSp37CyR96S
 ia4PnvXfJxDMHCJl57WWqgrMMepyHrYVWCIuJhdVgKcnAmuC2sr28EPQV
 Y3/sZHOP+fhBwuuSpBD9wtXr+MKtssNba4BixeQfIjJJiMCDaTpIwrjVJ
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VsHcL7we
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4] net: e1000e: convert to
 ndo_hwtstamp_get() and ndo_hwtstamp_set()
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



On 22/02/2025 14:46, Piotr Wejman wrote:
> Update the driver to use the new hardware timestamping API added in commit
> 66f7223039c0 ("net: add NDOs for configuring hardware timestamping").
> Use Netlink extack for error reporting in e1000e_config_hwtstamp.
> Align the indentation of net_device_ops.
> 
> Reviewed-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Reviewed-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> Signed-off-by: Piotr Wejman <wejmanpm@gmail.com>
> ---
> Changes in v4:
>    - fix line wrappnig
>    - Linke to v3: https://lore.kernel.org/netdev/20250216155729.63862-1-wejmanpm@gmail.com/
> 
> Changes in v3:
>    - remove new lines at the end of the extack
>    - add error print in e1000e_systim_reset
>    - Link to v2: https://lore.kernel.org/netdev/20250208154350.75316-1-wejmanpm@gmail.com/
> 
> Changes in v2:
>    - amend commit message
>    - use extack for error reporting
>    - rename e1000_mii_ioctl to e1000_ioctl
>    - Link to v1: https://lore.kernel.org/netdev/20250202170839.47375-1-piotrwejman90@gmail.com/
> 
>   drivers/net/ethernet/intel/e1000e/e1000.h  |  2 +-
>   drivers/net/ethernet/intel/e1000e/netdev.c | 75 +++++++++++-----------
>   2 files changed, 38 insertions(+), 39 deletions(-)
> 
Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
