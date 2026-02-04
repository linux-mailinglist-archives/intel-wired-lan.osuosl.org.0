Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GMkKCgozg2kwjAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 12:52:42 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 058F4E5580
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 12:52:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D6F3960A6F;
	Wed,  4 Feb 2026 11:52:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s5WpvF0PAUoC; Wed,  4 Feb 2026 11:52:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D2EC560AAD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770205956;
	bh=1jn9atkZw3ICt08Rp4f21QIDIjhKjRQEvaiJ9Is0eRU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5ZHCf6Hgxi60x8I0AiO4MrEdR7vM+SlkeeZuUfG8WNamahr6GJiyNfIITlx20/MTt
	 puAO2MbXjT8IpEjtF4xRpF7ywR1BmLvwMhSPLeA1ua41u14bbrEFQRhitilAbiH8lD
	 PCA+MP/FCjl2T8xbPDJCzbmK1DdCXS/Xxo1qf4gAtoA1X2rnjTHkXp09S/1ZZzU74G
	 9SUfjBudzhlQZn09lJ6FHMV+d9EpBdBvToGdd4bmeJFX871bt/oipz8V4viCxuBnLM
	 0BUQnO+kOo8jCxD5LYz2GI/pKTT7b35l2GYENC+PQLvju9pr/A4GWohfqcL5YVDH9b
	 aOguDVwyndCyg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D2EC560AAD;
	Wed,  4 Feb 2026 11:52:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C0D5A173
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 11:52:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A20C340789
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 11:52:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c6B3wNHr27BR for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Feb 2026 11:52:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C7E4140725
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C7E4140725
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C7E4140725
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 11:52:33 +0000 (UTC)
X-CSE-ConnectionGUID: ypyfKUk1Q8GDPVNfDmnsrA==
X-CSE-MsgGUID: 4T4iSGUBRVyKGB0JjzGBug==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="70408735"
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="70408735"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 03:52:33 -0800
X-CSE-ConnectionGUID: xhKRp0WxT8mTSB+mc0bmkQ==
X-CSE-MsgGUID: AzNdkV4VSV2Rwbhni6hRtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="210193852"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 03:52:33 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 03:52:32 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 4 Feb 2026 03:52:32 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.22) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 03:52:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nEfp+5NXaAea4gVahpNUmuy90yIwTGU3cjw2b4jOsmXe7JjngCmi8T3BV2ms0siJD+DBV6L0Kn87bCD7kTEG0WFXHxES/LpeiUJJrQTxkSoy2Jx7ZBVdTTWllA67wN0x7F+K463/4L6Ttc8EaYUzB4YO8l2Or8FgS1CqYYj9xS71JTx1KI4Mc2U98UsuwgNhRm7zWHk4spWHHMj5oweo9iwEYN5gMw8OD5PtEyiSH5rIzuJATHPfRlJAeZYEni6dXflXy3FgzEC303gS7nBb2amRhRU83iWFLVGiu2Y8QaQ0C7uhO2t8Nb2kk2S9e1OFA3oJ/O0sXjrOSs5i0L+fNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1jn9atkZw3ICt08Rp4f21QIDIjhKjRQEvaiJ9Is0eRU=;
 b=K5WLo/yYrqQkXBDNcb0Ts+yIHv9ofcoTkpkYmBT3o+hrEoBVYkxZLR/sOUom02m+s7N4v5HiOAT3rPQkClcLX9Gp+IciGaVVK3AIxRqGB1Gt4pj2sRhBtinmwZ2nydviTFM6YFpz4fyjHKxu9vKCba8wOJLnIBgpoRKSxRQi3+xt8Zk5/TMB6f/DZ2qhpK1WqmR+JOo3rSlnU8z5brYR2iaLcKiroYQSqQagF037GcacKlvRni54Cg4QY91OpVB4BaCMsETt+CaeWSYtRYVF2D3NBMxLSYJ29N67v3h73cHkryZ7Uwj/y10d0mcoqx6QXOy+Q0vikwzfk9q6iemlug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by BL4PR11MB8822.namprd11.prod.outlook.com (2603:10b6:208:5aa::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Wed, 4 Feb
 2026 11:52:30 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c%4]) with mapi id 15.20.9587.013; Wed, 4 Feb 2026
 11:52:29 +0000
Message-ID: <cfa11f8e-7207-4bea-843c-d111038c63c0@intel.com>
Date: Wed, 4 Feb 2026 12:52:19 +0100
User-Agent: Mozilla Thunderbird
To: Kohei Enju <kohei@enjuk.jp>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, Jacob Keller <jacob.e.keller@intel.com>,
 <kohei.enju@gmail.com>
References: <20260202161826.114393-1-kohei@enjuk.jp>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20260202161826.114393-1-kohei@enjuk.jp>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0001.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:3c3::10) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|BL4PR11MB8822:EE_
X-MS-Office365-Filtering-Correlation-Id: 39c5925a-b009-4d5c-a269-08de63e3dfcb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7142099003|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VjJqK25KS3RXS3ZQU1VpWG15OVBtaUJFMkl3M1d3dVRQYUhCSWxjQVV1U3BX?=
 =?utf-8?B?WHlxYVNqOStPYldPaEh6QUszYmJtQ2xPTm81KzlQaU9zMTVMb3lhZ21YUUxM?=
 =?utf-8?B?TUkzbXlscmNGdEZ5dFhsK1AzS3BDaVdNTElMaFB2ZmV0SGx3bjd0UitVVlZJ?=
 =?utf-8?B?SE93cUVsTjhVdTlvUTdrSkNWTVNmQ2dwR1c0eGNhMXd0OTFJaGNab1ZpK0hJ?=
 =?utf-8?B?NU5sb1UweEMyWHdQUzZrWDYrZG9UMWw5TmpzL1B5OTJ0amVuVWZLQjBYbE1q?=
 =?utf-8?B?bzhSZWtENlRnaVRTSm50bGw3NW10UERhRW1zQ3JHblVyOHBYS0NvZHVpd1ZM?=
 =?utf-8?B?ei91TnVCT0xuUTBmV2lDS3A0RVFRa2ZsUDk1N2lsV2FSV0hxR2hFTGRvMW9Y?=
 =?utf-8?B?T3B0OTdyWXdvbzNLRHVXTWxJMVhiejNJVlA0V0t0SHBaZmR3VzUxNkhWc1Zt?=
 =?utf-8?B?UEw1WFBoZ1VBeTF2aXZVeGk2VHhYbGFQWE45VWVXR1ZPWVpLUCtUNTZoeVRx?=
 =?utf-8?B?OXJnOTV6cTRqWjE3RHBYZlN0cFFUWnVJaUwzRWs2T1RRT1M5RmllSzNsMlAv?=
 =?utf-8?B?YmdEYXlXZWVMalN2UUdqMVR3anl0UjVvL2dmdHBXN2srTTE5MTBVVGR6L2Zl?=
 =?utf-8?B?QzFrUzZsd00vQkhMdlpGcVN0MXNjNm1SUlBKK1JlRFB0bUsvc2YvWnljOHhh?=
 =?utf-8?B?Z3NEY3h1dnBUYWhFcHVUekd0cXA1dUEzWG5iRHROWHptcW56b2FGRzB2d2U5?=
 =?utf-8?B?TE9iY0ZDMGdrNGM5OE9FWWwrMUVWSlMvZGVFa3E3UEJ2WkFhN3IvT2lvZXhm?=
 =?utf-8?B?SStpNytrdElvUzZRcFpPTlk0SmN0MkR3U3h0STlEd0puOVdvSVllU3V2NVph?=
 =?utf-8?B?cFA5ZzVFZzVOSTZYYWpGZ2VENk1Hd3VCcVVJeFRxRlB5WW1HcjBodG8yYjBq?=
 =?utf-8?B?MzYybzd3ZlpnMnF3T2J2a3lrYUNPN0c1NzQrNFdSMnptaHJrWm50VkorVnc3?=
 =?utf-8?B?c1Z1STQ5akFqNnJnWWhlUE41ZXV3b1JSZnY4dnpwQXlEZTZKYWt4VzF6dllV?=
 =?utf-8?B?L0JJT09rVGtIOXNaakhmNzJTY3dKN3Y5Vld5TlNQcEhXTTZJMFdFNEFRdWlR?=
 =?utf-8?B?SWQ2aGNzZExhQi95UnJaWHg3Z2F5TVA2UkI1bkljaDF4WENqcnhUa2s3MDc0?=
 =?utf-8?B?bkwweVJ0L2UxdmtjZXlrTUpuQkI3ZUdrWDJ2T3phZCtUU3ZCc1FHbjBpcnJu?=
 =?utf-8?B?MWI4U2RETXh5UnRTSlNzNXY5SGlaenRxU1F2dFhWRElwK01NVVhQbzU1QWZt?=
 =?utf-8?B?U05Oc0x1U0RuZVpzQTF1VXBkQVMrVWtxT05xVEtxb1lYRTFzTUtEZ2g5b2E5?=
 =?utf-8?B?L08rK0JrVlJKY3lhamQrTTdKVGZTc1Y2YmpPRGxoTU1GY1hTRkFwTzhrWmZR?=
 =?utf-8?B?MkR5Y0lsU2pqTCtpN3U2ZmxkNWRlSmM4SmQ4TFV5ckp6dXFGaCtBTGdEM3hK?=
 =?utf-8?B?NmswTkdGQ1hWQTF0NHJYRFlseURkSzI1TC9jRDRDTGw3NTYzb0tCa241RUp0?=
 =?utf-8?B?eWpKS2VkN2I0RFlhU2c3QlF3UFI5WkhINnhOV05jSGlJTlpPMzhsQkFYMy94?=
 =?utf-8?B?UFYzUENNenBWa29nbEFhdklPazlIWkZGTk5rcXJ1cVBadk9OTVRmYU5QWDZU?=
 =?utf-8?B?bUlMam9xSDFmKzdlMnhnUnpOMnpvZ1NTb0lQeGdGWllIa0V5bFFUL21pZlFQ?=
 =?utf-8?B?UzcvblNBM1VOaGFTclFCeW9JREZLSDZQc2ZmOVd3c0ZHQmhCMXRBMW1iZm41?=
 =?utf-8?B?U3BTVUdHbWpvN2s3RUNySmFINlV1Ymlsak9VWktHQ0R1NEFNejArelJNM0FG?=
 =?utf-8?B?bzdCMnJxcDRHWnd4YVNIWGhsTnhWSUk1MjVEMU93dHEzQ1Avd25iMm1WK1kr?=
 =?utf-8?B?N3M1a2dnRExtajhxYmZ6ZXA4R2tYQWZiZlVpQ2JhUkhOR3VuRkNNNEhuck16?=
 =?utf-8?B?SU5LQmlVUTA0WW45Wm5kRW51Q09aUi9yazJaSzd0bG1DT0pVVEJOK0xqdzFa?=
 =?utf-8?B?Nm9QNi9ONUFqS2ZQWjdPcnRzRVZWZWVpeVM3UDhCa3NFakVta1hEYkh1MjdN?=
 =?utf-8?Q?1gpo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7142099003)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bFo3ZHJMUDRvS3FZeTdzRXdnaGpxa2xyNDhrMmF2dXdEK3ZtT0k1ZCt1RkFt?=
 =?utf-8?B?NG1rbk5Bakt3Vm9RdVI3S1JDTnlXalBKUnRLK3ZhZEM3QTJrVkd1dGVYZTV5?=
 =?utf-8?B?VnNPc084OFpBSXpubWx4N0dvR3E0MnVYdTlqaG1DUnZXOVN4cVphWU5hTW9m?=
 =?utf-8?B?aDFwYlc5ME5CUkxBZHNBZkZ0cHBpRG9KYm0rM0JzcnB0dG80b0NxWGhQTXVj?=
 =?utf-8?B?MElpb3J2MHZEVGxpbHEzdjhBYisvQ2VVNVRtMFplRnNTS1padlFzbngrTHM2?=
 =?utf-8?B?YSsrUmVEUkpNTjVZSmdNTHNaOS9OekZKNmJJKzNJeDUva3ZQWS9NUkg1N0tt?=
 =?utf-8?B?SGdrVU9rbENuSFRsa3lRc3lLSlg2S09OVU1WYkU1dDNONy8ybzRrU1p5Tlkw?=
 =?utf-8?B?RGtWYlpGekd2TWNTWlVqTzZJMnFJc1R0ZGlVeTg1V2tISWZzNmpsK2wvUWNU?=
 =?utf-8?B?YUJ5RlI4dXJrSDMwSE0walVHU212UExNNFo0WTduZlJaaTJ0QkF1RkdOUmM1?=
 =?utf-8?B?YVNCWmZZNUxBK0ZRSzI5SjhBQVJISVN0ZCtmSUZBNyt4b0E4bHJHM0ZqWWd3?=
 =?utf-8?B?RkU4WlZwUkphVXRPWVM5L3lsdDJ0aDZRVWFzSFhsVkYrVlZGM2NOTHdhM1Rw?=
 =?utf-8?B?Y0NuSHN5aC9NaXhFYTk5Vmx0VlVzTkR2WmdRRXk4KzJseU8yVDJtbWlxN0hX?=
 =?utf-8?B?MW5JaU1sZEN5cWRIcjN1YUVFRkg5QmFRblVUdXBJZ0IzaGRlV2Y5ZWs1aUVJ?=
 =?utf-8?B?bGkzckVya21qUXYwZjNpdm9XcXlTSVczNzk4SnlYeVlVZ1B1YWlBN3kzM0pm?=
 =?utf-8?B?cmQzMWd0dCtUckhUNDE5Rmx5b1JDQ2gwRVA2TTdEUTBqTUxTZnNUN2dob0VX?=
 =?utf-8?B?MzV2NEYxNkZxMEx2ck15TU1KVUYway9RN1g3d3JWR2pQUGpjUjBWVVBqMWsz?=
 =?utf-8?B?aEl4VzcwN2xkRlBvZlpGVUFmSElpM0t0UlhVazF2Y0pXWmllNTlxOXFyNGRw?=
 =?utf-8?B?S1RxUXRnbHpyMFRKUFV1VzVrZ3FsdTRyMlFjM01xM1R6ZHpNMHFubVlrYjN6?=
 =?utf-8?B?bitod29aRU5qd3FvRlZ6a2gvV3RzS2YxMU5iazQ1TGE0byt0cnM0ZVZOaU9B?=
 =?utf-8?B?TVVyNzJETWhsVVFmbXFBRE5keVUxSmZDdXNNNGM4d0tpWXlzUGEyS0EvZEZK?=
 =?utf-8?B?eWRRUkpuS3V6LzA0VkdqS1ZNSGt5WVRlbkQ1SzVMM2NsbDFITlE5TjVudDNH?=
 =?utf-8?B?ckRITDRxYnhFN3FUNnk4SldMZExkN3JtcDZ0NHpVMnVKZXVEc0ZVdzRIbmQ5?=
 =?utf-8?B?WmIzSFd6L3hTelFFWTJIanJiTXF3TVcrbmlvanloSVFFS1BiaXdsRzhUeWhy?=
 =?utf-8?B?VHB2dnZmei96aEtWcmJ5L3NuTmxQeGR1QWFWeDB3WGhUaVc2aFVDTFV4SGZm?=
 =?utf-8?B?S1lGcjdJWldFVmoreE9Va1VOTkdiT1FCakptWExUd1BZVWZLMDA0K29jTHkw?=
 =?utf-8?B?M2gxLzVNak0xTk9LV29iWHdzSDdBeTdUQy9QVGRyb3lNa2ZLN29yRWJhQmFD?=
 =?utf-8?B?Ym8zRVFFYVZ3OWdBaXE2Z2VYT01PNHdUQWI3cWRLTXpWVEhhUlZuV2dqbURL?=
 =?utf-8?B?SjdSYnJkZ0syVkdxQmZXbW1yd1VGL0NpR2NqcXZjWXVKYVpmZnpWWWU1U1ho?=
 =?utf-8?B?L2c0WDNDN3ppYmlTQS92UmZmZ21jTCtjdFdNa2RtMExvNEtlZlU2NE5BTTZr?=
 =?utf-8?B?RG9CbXZnZzYvSlhxQzFnMDRYUms0NXFMbmJQMWRtSjFobXBQTE1YOW1KblNa?=
 =?utf-8?B?Y0FlRnJ1a1JPa01teDlqQ09adnJjVEFRU0p5S20rYzdRcnhxL2xMTHJ0aThJ?=
 =?utf-8?B?QU9DSjRRSUlvQ0w1NGlFbStFZHF6MExRT0g0akIzRUVKcEQvRGNmM2svUmpX?=
 =?utf-8?B?VWZjYUcxYy9CQ04xZG9pRTRJbm8yUVVxcDh5eXRhRWVVcGs5ajBJekhiNk5z?=
 =?utf-8?B?WmUwRUZUZVByS2dOb2hwZEFOVThLQ1VpN1ZDTEpBL01HMTBRT1lRd0l3ejJK?=
 =?utf-8?B?V0ZXRlNPS3owVFNCUURuYXJ2cEhNL1lCVFA0STVad2d1c0JTYjB5dmFBUnE0?=
 =?utf-8?B?bUc1RDFVMys3MXZzemJZTlgzMTVIckpLTS9lVkNNZHcyWFRBT092K3kyaisx?=
 =?utf-8?B?Vm94bmtsTk44WnpjVXppUy9tM2l3a2IxTTlUaHV6bXUwdHMvY0FjdWFpc0tK?=
 =?utf-8?B?NEVwSURIRVJuR3hSUGVDMDdZUnpDcE1ZcG5SN0xrSGJCd2RYVnZRU2duNHg2?=
 =?utf-8?B?UnA2N3AxUWNPOENGTDdkUVhiS21VV2xuYlNaS0FHSFdlV1BLVnVVZkpGYmtZ?=
 =?utf-8?Q?mettGFvfzOdELe/8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 39c5925a-b009-4d5c-a269-08de63e3dfcb
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2026 11:52:29.8400 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZNTGqL/YNhVjFqPGH9MLgj/uV1koIHNKj7A3xOkw/0o/6yLjXIB5plzRCIlJHLX3hYemNCNnTlPYgZvcsBhUeYV/QTiLhwGMJaLkPwmBxo8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL4PR11MB8822
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770205954; x=1801741954;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TEW8H3ThynSl+W7+/5Cy3/KmI8j3Epfzh3FiX380IEo=;
 b=GIfpqzM3Kl+QZ3pi5JS9C+txa19JCYHER97ImIXRisRhOPByQoh7Yxyp
 XfAbaCZBTAKcZG1YJJusA4o3tiLagwL1FdeilfDpWEwVViThfUGwqe5j6
 aI7PrfFeSgyAt9pznDlmEN4lmQRPcYayA4ocidNn0O2e0SytQ3A+8C+9P
 PIsULGM9pKYOUgzjIvEXpYXOgcUvNFvGxFh79qlcBL0Uem73y/GA27i4M
 33n3cF/cVcP0Ocqkj1FRIMnoCiuPN/EBB3ma409yJA3mUG0coo03QilrD
 Pg3Q28VaBr7NbuC346e83FEx02GiXtHqUCXGUdXa2gEZpUNe+15i2r570
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GIfpqzM3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-next] ice: fix NULL pointer
 dereference when changing RX queue length
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:kohei.enju@gmail.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[lists.osuosl.org,vger.kernel.org,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[enjuk.jp:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 058F4E5580
X-Rspamd-Action: no action

From: Kohei Enju <kohei@enjuk.jp>
Date: Mon,  2 Feb 2026 16:17:14 +0000

> When changing RX queue length via 'ethtool -G $DEV rx $NUM', a WARNING
> indicates the driver missed unregistering xdp_rxq_info [1], and then
> NULL pointer dereference panics the kernel. [2]
> 
> The following sequence in ice_set_ringparam() triggers this bug.
> 1. Allocate new rx_rings
> 2. rx_rings[i] = *vsi->rx_rings[i];
> 3. ice_down() unregisters vsi->rx_rings[i]->xdp_rxq
> 4. ice_up() registers rx_ring[i]->xdp_rxq
>    a. __xdp_rxq_info_reg() sees the copied state REG_STATE_REGISTERED
>       and calls xdp_rxq_info_unreg() to fix it [1]
>    b. xdp_unreg_mem_model() looks up the stale mem.id in rhashtable,
>       which was already removed in step 3, causing NULL dereference [2]
> 
> The root cause is that struct copying includes xdp_rxq_info which
> contains registration state that should not be duplicated.
> 
> Fix by clearing xdp_rxq_info after copying the ring so it starts with
> REG_STATE_NEW instead of the stale REG_STATE_REGISTERED.
> 
> [1]
>  Missing unregister, handled but fix driver
>  WARNING: net/core/xdp.c:182 at __xdp_rxq_info_reg+0x89/0x150, CPU#4: ethtool/1105
>  [...]
>  RIP: 0010:__xdp_rxq_info_reg+0x89/0x150
>  [...]
>  Call Trace:
>   <TASK>
>   ice_queue_mem_alloc+0x159/0x240
>   ice_vsi_cfg_rxq+0xc3/0x160
>   ice_vsi_cfg_rxqs+0x4f/0x70
>   ice_up+0xd/0x20
>   ice_set_ringparam+0x34f/0x4e0
> 
> [2]
>  BUG: kernel NULL pointer dereference, address: 0000000000000008
>  [...]
>  RIP: 0010:xdp_unreg_mem_model+0x113/0x340
>  [...]
>  Call Trace:
>   <TASK>
>   __xdp_rxq_info_reg+0xfd/0x150
>   ice_queue_mem_alloc+0x159/0x240
>   ice_vsi_cfg_rxq+0xc3/0x160
>   ice_vsi_cfg_rxqs+0x4f/0x70
>   ice_up+0xd/0x20
>   ice_set_ringparam+0x34f/0x4e0
> 
> Fixes: 111a8e2be488 ("ice: implement Rx queue management ops")
> Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> ---
> I see the Fixes: commit exists in only tnguy/next-queue.git, so I'm
> sending this patch to iwl-next, not iwl-net.
> 
> Also IIUC dev-queue in tnguy/next-queue.git is rebased continuously, so
> the commit hash will be stale soon, and I don't know how to handle this.
> 
> I'd appreciate it if iwl-folks know the way to handle it. Thanks!
I either way need to respin the series once the window opens, I'll take
your fix into the series with the appropriate credits. Thanks!

Olek
