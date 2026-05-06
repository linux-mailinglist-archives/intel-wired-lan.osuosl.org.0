Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EENqM56y+2k8DgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 23:29:02 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B6CC64E0982
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 23:29:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EBD9441007;
	Wed,  6 May 2026 21:21:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8c2zUChYG7YI; Wed,  6 May 2026 21:21:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4ECBF41008
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778102502;
	bh=MkNxAkJW9vdyP6GOkxohqzL2pbReotyAYNOEvvCi+fE=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iYvv0svoOfVEfOVpSzSpy79XpGCLnxd2pzjgGksPm6wuKxxEawvvPmkMmISJ8pxl/
	 Qvwhk56Cssl24SU358fRqp22gakOey/D0UTIvbl+bkBr39FCzCQnGYXGD0jIC+Fv0E
	 I80m5zgCY1e5fuwZLFsBx3WrrjUeIa/pwcL0YlKkWWlC6wgw2T/WgLxwy4DQbY2UbL
	 v4qb0xAXmF8lXKMzVqTCg+RBFM1HO2gMGb61BFXeNkMa4+NCteEts88yz/RH3g3tod
	 VC7ZOr+CMgHfdqrqU1yQOJeAwgkEk5iFtmluMAp+XaUV/+WH5JeV1EfmuYtKvOpdhC
	 G3WgZ7JhmT2NQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4ECBF41008;
	Wed,  6 May 2026 21:21:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4331A317
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 21:21:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2934341006
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 21:21:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9-vAkqf7qvJ1 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 May 2026 21:21:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4D30941004
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4D30941004
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4D30941004
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 21:21:39 +0000 (UTC)
X-CSE-ConnectionGUID: RZg00NW2RAmGYVgqhN7r3g==
X-CSE-MsgGUID: FAxIIch2SRqxztrhLkb3rQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="89633735"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="89633735"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 14:21:38 -0700
X-CSE-ConnectionGUID: ZVuNuzBvR8ilf3Bcvo881A==
X-CSE-MsgGUID: ffWqEp8IQVWe2xKjOwvNbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="240252022"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 14:21:38 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 14:21:37 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 6 May 2026 14:21:37 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.52)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 14:21:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GtSoLpLIFcXYTpmtX7F+m/rUeF5n+IMhYAbcc3NLFVLod5YjNEkICmAvZOLmG/kzJ8bG0qnqIGinmVSB5atR8g2Kb3FNUvbESwRoziwNguQzv65xVjgME0/bORz9681o2QvoWXJzGvlNHb41DVMOwfMBOiFNvFNnvTpZF5Qg/LDHLc6J7ebeDhKSW2GxYd9Yv5WJ4LY/Nsd7gYBTitzloUwFAwfQNcQMvQyJRLifGTQgq93HFgjEB2RbJ19fMRpTEXJGcz09WYewGfyFh10/XDuuB784sYEkJ1jPNl9pb/s4Ako0l/f0fejjBWeLX1nmt5V+3U6LySwWh3b6c7EieQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MkNxAkJW9vdyP6GOkxohqzL2pbReotyAYNOEvvCi+fE=;
 b=MfSbbcN9xGHngycc0+lPmBMAQq1XXMkohnRKpBVebzshFcUY13oPgKMkmOcwXxmIC4c42XaJ/HXAA6Qaws2KlUkKhzxwXlyxuUYfz0QbJ7UAgt0/cbK1501Tc1Qe8J4XIaIozehqIL7S6R3uT8hcvBWj9pgKIVvt+qshNbrp74xjzxTSM9WJAv0wGOyenRN6SbcEnEotnNnD7qykX9YcywL0j5JfauLt+7QrOFkTCZ87YhY4z14QVK2bY5i511ViCYB1dmwtqFJMhfHuaWwvd23HnekMOT+nmdHsmTCJeWBY0MTSO3kQW+01JmkJaiovrQVm2fO0zpeIbMgtYBlVLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7592.namprd11.prod.outlook.com (2603:10b6:806:343::16)
 by IA1PR11MB7853.namprd11.prod.outlook.com (2603:10b6:208:3f7::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.15; Wed, 6 May
 2026 21:21:31 +0000
Received: from SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6]) by SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6%6]) with mapi id 15.20.9891.008; Wed, 6 May 2026
 21:21:31 +0000
Message-ID: <152e0a33-af26-4c42-be8e-96f91fcfce56@intel.com>
Date: Wed, 6 May 2026 14:21:26 -0700
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, Arkadiusz Kubalewski
 <arkadiusz.kubalewski@intel.com>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, Joshua Hay <joshua.a.hay@intel.com>, "Madhu
 Chittim" <madhu.chittim@intel.com>, Willem de Bruijn <willemb@google.com>,
 Dave Ertman <david.m.ertman@intel.com>, Ivan Vecera <ivecera@redhat.com>,
 Grzegorz Nitka <grzegorz.nitka@intel.com>
CC: <netdev@vger.kernel.org>, <stable@vger.kernel.org>, Matt Vollrath
 <tactii@gmail.com>, Sunitha Mekala <sunithax.d.mekala@intel.com>, Kohei Enju
 <kohei@enjuk.jp>, Paul Menzel <pmenzel@molgen.mpg.de>, Simon Horman
 <horms@kernel.org>, Emil Tantilov <emil.s.tantilov@intel.com>, Samuel Salin
 <Samuel.salin@intel.com>, Patryk Holda <patryk.holda@intel.com>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, <stable@kernel.org>, Marcin Szycik
 <marcin.szycik@linux.intel.com>, Bart Van Assche <bvanassche@acm.org>,
 <intel-wired-lan@lists.osuosl.org>, Arpana Arland <arpanax.arland@intel.com>, 
 Rinitha S <sx.rinitha@intel.com>
References: <20260504-jk-iwl-net-2026-05-04-v1-0-a222a88bd962@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260504-jk-iwl-net-2026-05-04-v1-0-a222a88bd962@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0128.namprd04.prod.outlook.com
 (2603:10b6:303:84::13) To SN7PR11MB7592.namprd11.prod.outlook.com
 (2603:10b6:806:343::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7592:EE_|IA1PR11MB7853:EE_
X-MS-Office365-Filtering-Correlation-Id: 3abbc0ef-8be2-4862-2241-08deabb57117
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|1800799024|376014|366016|921020|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: zfKxDAvN4r5hl5RUyXRJgYL7LukXn/sNwNcSMgYILtrm8v1L/7a+96p7YCOiJr03gLE1e9i177OnyARvANNNBUTXxGvYfYzh+6WNhgLUhsLj1yJr9NYJ6YEy3lA/QKvODgyqYySZvAn188rvqHOoPiDuO2qhPvm6l9FILH3ApPu/mEa4YdiIHk34SUfWXXiJX3ybKjWlvVN1Jk1NaoqmZWoVySLVv0FY78Sf7HY45GOiDTYlDDTCTpbRsIyOJmvGArBl6dxoTAHUQm4YdUDeOZfO3NiZ7OrTcitjBhvP8Z+2NcImSEHvqHEB3EYFCjDhVLoOwDgaa/E2o4tzJalzXeuS2n6IK3OZ+w2/ShUig564Hgaqg7DFxwQDNv7hqd4ScaFDSI0oP7z0PJZxIl42OfYAbWCb+lzpqql7y7USX4+VCZe6+H9J2op8b+XRx7NdUaErJqgM2tfKml+SmkQjiJpl3HUxpGdLhmITqoSmfS4wzPOyoJw7JsW66KheHtKzjWfncMRhK+vPRuiNtFj+2Whe/8DUX130vxWUNKpoUzsaEJculhoEYhC2WXeuiH4lSpvQC4w1lICOipx+Z3z8kFBjEB/dTiaOwuEjTjCgZUPWoEGH4It4bp4LapkhFk+U/VFoEC7vny7VVv8aEYkfyUsEfT/O6+s+yASF+1olABhpTZ+9xyJwifoCzFDYzOFSsTeH2BVpKFFY2xOClpj85+WAs+Zoedh00+lna2/gE7A=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7592.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(1800799024)(376014)(366016)(921020)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MkpMY056WXBMWkgzNkFoc3lQVDhUQ2o1MFVud3RoV01FWm5LSkNlbCtldmli?=
 =?utf-8?B?T0RhNUtzRHJXZ3Z2Y1p2dnpFS3RKWkFvRnpRZ1lSdVhXSXl5KzFqdVNwZEFR?=
 =?utf-8?B?dkR0dWpYK1JFcm9XNDNJZTNNRkZUcWR3dnYzamtNOFpZQlk2czNaVnU5K0FP?=
 =?utf-8?B?S0Zma3UyZHY2elcwVXhkRndBNndzRmpiWEZEZEYzemJIR1dHeVoxMkJIZS81?=
 =?utf-8?B?UFh2YUcxbnBJMFZuQ0JZbmsza3Q2V0pmd0o2Mnhuais3enlRNGNqSXlmNWJ4?=
 =?utf-8?B?ZXhkblM3OFpsd1JXQjhySHpQWHU5M0MwQjczQjk3a3BLdGpvOFVwa0NoQlQr?=
 =?utf-8?B?MFg4eDdOLzZ5NzNUZVlYR29FMDA1WnhlQmoxdmNlTi92ZFFwdEUyTkQyai9n?=
 =?utf-8?B?cGNNUHo5cWFHVEc3bXptclpTNmtHUlpvcC9LZ1FWT2NTY0s1OWJkRTNBanpW?=
 =?utf-8?B?ZW5RR3NUaHNiZ3hTZUFrZFRJdUdycVlCMmtmdlVhRkRCVVlIQVdVVlN5Z29B?=
 =?utf-8?B?anlxdXVEcmJaOHk0VDdDWHQ3RlZ3ZDNIQnc1SFI0MnQrUTJyc2FLbjRCaFZs?=
 =?utf-8?B?b0J5YmQ3U1Awa0JKU01OcjBEZzJ6cVpLUjN3Q212KzFCNEF2V2JCcnBpR1pX?=
 =?utf-8?B?Tm1HWmlTcnRmKzFxV29zYVYwKzJTaVc4aWowUXVrQ2NTd0tkWE5HL1AwUzJm?=
 =?utf-8?B?UjB1M1dEVk1xaGp1cUZUdVcwN1kwRTdHVDY0ZHdsdnVjbzVaS1Uya0Nnc1Y3?=
 =?utf-8?B?THl3cE5WVEpHVHhUVENmbVBCNlVrVjBTR1BwWjl0aFFkZVpoamRGbkhMZTJS?=
 =?utf-8?B?aFk0dGRPQ2dkMm05Y3BNeHRtWldLRVFrWTl6ekMycTFnYU5tZUdvVkNpSE1m?=
 =?utf-8?B?UGFsbFB3S283VFJnUElwaDlQa2hqMGR1QnZiWUhGR2EyaUQ1c0IyR25pVmdS?=
 =?utf-8?B?aEE3RUNsSzQ3TlgwazFFK1ZZRW0zenlZVE1pdFM1eEgzaWlvOHdRcWw2QzF4?=
 =?utf-8?B?bkxSZHIxbWkzVVhVMmg4dXdLL2dJajlLOUlFLzNBU25aNnNGZXRTSW9VUDBu?=
 =?utf-8?B?Q2Q1YW1JWEVDTEhRbVB4dmJ5aTRXWE85aGhJVFJ1b3VkdWQxdmI3Wnplemlq?=
 =?utf-8?B?YmF0elJ6S3VGVWFIa3pZSnhDRXh0YVNUMUY2a1hxeXl6MzJ5MGNMMlZmbXJJ?=
 =?utf-8?B?aEhjYnFwc2JqRDk1aTRXcE1xTSt3NGFlTzVGbXRCblU1cU1VTkx2d2NSRk43?=
 =?utf-8?B?b2JBZGdhdDI4UFVUQlJkOE5OWjhqc2tQRmlxbHNGTGRNUVI0MUMxcnlGQ3F1?=
 =?utf-8?B?U1BHc290YzRsYWNlNW81WWo5TEpOSVJmTS8rZzRPcmVBRTFwYVVsVzB4Vit1?=
 =?utf-8?B?a3V4T2oxLzZqNThBaldFcllZWXRMd0pCL2JURDdLVG4ycDJGcmI4bGl3V1U1?=
 =?utf-8?B?SW4zZndwRFFkYTNwdDJPRFlvbXoycUtKVXYxbjhjRExSOEhrTUxjK0Nac2N2?=
 =?utf-8?B?eERCNzI5WGFzOFFNTWJuMkFOZnF6N0IycGZpcWNSOVhpUHNuNis4UVFrTGpt?=
 =?utf-8?B?TDlNUU9NTWhFUERpeWlYVFA1cmUvM1dOYlYvQzZsQTNWVGlySG9LcDZwVm1D?=
 =?utf-8?B?WndhYUpyV1JvWTZyWEF5NC8ybmVSdDVOMlREVUtJZjZCeDBRSm5yUUc4eXVo?=
 =?utf-8?B?akpxUlB1NmZsTHo2VjJDdnBnOHUrZWtFVUM5RkFJRDJidmxPclE4SVFNb0lj?=
 =?utf-8?B?UGFmYlQyVlNrWmhid1pBS0JjSXdzMnJaL001eVBYUFFBeHRKaGtzWVhMV0VT?=
 =?utf-8?B?cHprb2FaSkorS2RVbXFpcXZ6SkVxQ28raWNRNTF2Ukc4MmY2dHJuc2ExT1F5?=
 =?utf-8?B?QXZqN0NWZDM1cHkwdE1RMm02U1dPZ0R3UjZia1hKRkVXTUI3Zjg0aTBTR05P?=
 =?utf-8?B?VTNOVEdsVW51UjVUcjdlU3lqdXdLWDMxY09kQTBPQnFDTWhPdDE4RjhuMm94?=
 =?utf-8?B?TTVxRGhRbVhkZzlpWWZRMm5WRlRhNjI1a01BOEg3L3VyN2lmOHJDa0tRbEZQ?=
 =?utf-8?B?VXNsT3grMVdydTI5L1VyR1Rhb05SY1FPUW9WNzdPSTN1c2dQN3NSeHJZaDRS?=
 =?utf-8?B?VENFZTh2Qmo1U3hyeW9jUEJDayt4MHpybjVWSlg2T2Y0MHpUMFF4RVNYRTU2?=
 =?utf-8?B?bk4ycUtPWWlkakdnYTBWeE43QjVzNmdpU3FQbTM2TmlTN2IybEgrN2prcnRF?=
 =?utf-8?B?V0FPZ2lubGEwMlNiclc3YURaWVdVNjg1RHZCYVo3d2VseHN0UG11bFo0S0dr?=
 =?utf-8?B?dTlRQ2tMcCtjeHhlTGVwM2FjblJwZDJMSkZtTTdmUVB5YTRVQVNwUU1ncmFD?=
 =?utf-8?Q?MVH06hF8uCifwN7Q=3D?=
X-Exchange-RoutingPolicyChecked: iHUHRZ+HAJDXh8mRJJOkxIoxI9Oe4y1mTqeyCZTtEdmLO7ytlHrG1yUQ2J/bm8ambm0UwQOjjF+DDIP8sUXu2Vsd6iUxuv5JLt9901mwTNRtXcTZkjMi/JKvH37VnceYUuW6K/isiPBE6C5J9DWlRx0AzYdEsuXFqQT+r+83fZyEzHrQsS+fc7wW4cn5wweNsfdKL6i+ridU4BVb/awYS09nbdHY0/Ed1S2DldGMny4EUR2ad/JiWmKmfFDuNxLTBNPH4vB2IvKxQ6Tff8i3k6iT5FyW+0GZLLWNqQLTrZ36vzJjHLuoENi0jiq1N/3XbFk8mApgg0Tj48OPcdJYNQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 3abbc0ef-8be2-4862-2241-08deabb57117
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7592.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2026 21:21:31.0648 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WuBSwl8Ea8MJeJu9DIDe/I8TXRBddI+bBwLLFktiX6F1NmJxJwohtYpfxRxOFW8xW0teS03DpInv0QzeRu0qMmOpEU3Q/UoVbBoITA1zmlw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7853
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778102499; x=1809638499;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sMJLjmps/XEhxFy4sIXlR4ufdvS9iPlNFo2P4hrnSns=;
 b=Xl9WHbPyEsseoNpMfWI0cvyYlP/yKgf9iPFJ/V5gax5fTVj4+kXxepsF
 T2D3fb/M4CnMRqYWNIqguvKHpNApDkGatxTbcZtptCITTas62D04RYn1X
 PoWGkH7c51CHFjw+r8Q+y8+79Gjcn3WJ6V09Q37iCNwR0vVnSjRZWqnsU
 cd6OnsJogJwQCkUds2eh2qrL7TxtItzz9y/gC5djqRKe6e0QkHUEmNTTk
 HEoWi7wrKepro4hqfPl5nBerBN5E9/ujhc/k4MwWCFjfWhm6L3vSsk89o
 5+KVXJ3eW+2Dv6aIrFgPQHig03V9Oq2KjKFsaarGTWmJ8ZKYXc/lS7WlV
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Xl9WHbPy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net 00/13] Intel Wired LAN Driver
 Updates 2026-05-04 (i40e, ice, idpf)
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
X-Rspamd-Queue-Id: B6CC64E0982
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:piotr.kwapulinski@intel.com,m:aleksandr.loktionov@intel.com,m:arkadiusz.kubalewski@intel.com,m:maciej.fijalkowski@intel.com,m:joshua.a.hay@intel.com,m:madhu.chittim@intel.com,m:willemb@google.com,m:david.m.ertman@intel.com,m:ivecera@redhat.com,m:grzegorz.nitka@intel.com,m:netdev@vger.kernel.org,m:stable@vger.kernel.org,m:tactii@gmail.com,m:sunithax.d.mekala@intel.com,m:kohei@enjuk.jp,m:pmenzel@molgen.mpg.de,m:horms@kernel.org,m:emil.s.tantilov@intel.com,m:Samuel.salin@intel.com,m:patryk.holda@intel.com,m:gregkh@linuxfoundation.org,m:anthony.l.nguyen@intel.com,m:stable@kernel.org,m:marcin.szycik@linux.intel.com,m:bvanassche@acm.org,m:arpanax.arland@intel.com,m:sx.rinitha@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:email,intel.com:mid];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[140.211.166.137:from];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[34];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,intel.com,enjuk.jp,molgen.mpg.de,kernel.org,linuxfoundation.org,linux.intel.com,acm.org,lists.osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DNSWL_BLOCKED(0.00)[10.22.229.24:received,10.64.159.143:received,192.198.163.11:received,2603:10b6:806:343::16:received,40.93.195.52:received,10.7.248.11:received,140.211.166.137:from,140.211.166.142:received,2605:bc80:3010::137:received];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[osuosl.org:dkim];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[40.93.195.52:received,2603:10b6:806:343::16:received,10.7.248.11:received,10.22.229.24:received,2605:bc80:3010::137:received,192.198.163.11:received,10.64.159.143:received];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[140.211.166.137:from]
X-Rspamd-Action: no action

On 5/4/2026 10:14 PM, Jacob Keller wrote:
> Matt Volrath fixes two issues with the i40e driver probe routine, ensuring
> that PTP is properly cleaned up if the probe fails.
> 
> Maciej fixes the i40e driver logic to keep the q_vectors array in sync with
> changes to the channel count via ethtool.
> 
> Emil corrects the initialization of the read_dev_clk_lock spinlock in
> idpf_ptp_init, ensuring it is initialized prior to when the
> ptp_schedule_worker() is called.
> 
> Josh fixes the idpf driver to prevent enabling XDP if the queue based
> scheduling is not supported by the firmware.
> 
> Josh fixes the idpf skb data path for handling queue based scheduling.
> 
> Josh fixes an XDP crash in the soft reset error path, restoring the
> original configuration if idpf_xdp_setup_prog() fails.
> 
> Greg KH fixes a double free and use-after free in the idpf auxiliary device
> error paths.
> 
> Marcin fixes ice_set_rss_hfunc() to use the correct q_opt_flags field,
> correcting the assignment and preventing submission of invalid data to the
> firmware.
> 
> Bart corrects the locking in ice_dcb_rebuild(), ensuring that the tc_mutex
> is held over the entire operation.
> 
> Grzegorz fixes the ordering of ice_ptp_link_change() in ice_up_complete()
> ensuring that the PTP timestamps will not be enabled before the PTP timer
> is actually re-initialized.
> 
> Ivan fixes the rclk pin state get for E810 devices, ensuring the index is
> properly offset by the base_rclk_idx value. This ensures that the correct
> pin index is used to look up recovered clock state. He additionally adds
> bounds checking to prevent attempting to access pins outside of the pin
> state array.
> 
> Ivan also moves the CGU register macros to the top of ice_dpll.h, inside
> the header guard to avoid duplicate macro definitions should the ice_dpll.h
> header is included multiple times.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---

Sashiko pointed out a few issues with some of the patches. I replied to
all the patches with possible issues, and I think some really do need
more work.

In particular, patch 3 needs to resolve a definite use-after-free issue,
patch 5 needs to address an issue with the extack pointer use, patch 6
and 7 need some investigation from the author to confirm, and patch 11
needs some confirmation from Grzegorz on whether there is still any gap.

Sashiko did have some concerns on patch 1, 2, 8, and 10. I replied to
the patches, and I think those are issues which need separate follow up
work and shouldn't block these fixes.

I'm going to submit a v2 which drops the patches that need rework.

Thanks,
Jake
> Bart Van Assche (1):
>       ice: fix locking in ice_dcb_rebuild()
> 
> Emil Tantilov (2):
>       idpf: fix read_dev_clk_lock spinlock init in idpf_ptp_init()
>       idpf: fix xdp crash in soft reset error path
> 
> Greg Kroah-Hartman (1):
>       idpf: fix double free and use-after-free in aux device error paths
> 
> Grzegorz Nitka (1):
>       ice: fix PTP hang for E825C devices
> 
> Ivan Vecera (2):
>       ice: dpll: fix rclk pin state get for E810
>       ice: dpll: fix misplaced header macros
> 
> Joshua Hay (2):
>       idpf: do not enable XDP if queue based scheduling is not supported
>       idpf: fix skb datapath queue based scheduling crashes and timeouts
> 
> Maciej Fijalkowski (1):
>       i40e: keep q_vectors array in sync with channel count changes
> 
> Marcin Szycik (1):
>       ice: fix setting RSS VSI hash for E830
> 
> Matt Vollrath (2):
>       i40e: Cleanup PTP registration on probe failure
>       i40e: Cleanup PTP pins on probe failure
> 
>  drivers/net/ethernet/intel/i40e/i40e.h          |  1 +
>  drivers/net/ethernet/intel/ice/ice_dpll.h       | 32 ++++++-------
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h     | 12 +++--
>  drivers/net/ethernet/intel/idpf/idpf_virtchnl.h |  4 +-
>  drivers/net/ethernet/intel/i40e/i40e_main.c     | 36 ++++++++++++---
>  drivers/net/ethernet/intel/i40e/i40e_ptp.c      |  3 +-
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c    |  4 +-
>  drivers/net/ethernet/intel/ice/ice_dpll.c       |  5 ++
>  drivers/net/ethernet/intel/ice/ice_main.c       |  6 +--
>  drivers/net/ethernet/intel/idpf/idpf_idc.c      |  6 +++
>  drivers/net/ethernet/intel/idpf/idpf_lib.c      |  4 +-
>  drivers/net/ethernet/intel/idpf/idpf_ptp.c      |  4 +-
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c     | 61 ++++++++++++++-----------
>  drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 19 ++------
>  drivers/net/ethernet/intel/idpf/xdp.c           | 15 ++++--
>  drivers/net/ethernet/intel/idpf/xsk.c           |  4 +-
>  16 files changed, 132 insertions(+), 84 deletions(-)
> ---
> base-commit: bd3a4795d5744f59a1f485379f1303e5e606f377
> change-id: 20260504-jk-iwl-net-2026-05-04-f9526823577f
> 
> Best regards,
> --  
> Jacob Keller <jacob.e.keller@intel.com>
> 

