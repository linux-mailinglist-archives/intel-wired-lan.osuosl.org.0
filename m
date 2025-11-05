Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D47C37D1D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 05 Nov 2025 22:03:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5668884572;
	Wed,  5 Nov 2025 21:03:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aTuAmzjohwW7; Wed,  5 Nov 2025 21:03:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3DF0A84590
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762376582;
	bh=+xHUnNhFlbSDDrh9N4eW6ubyWENUcYFskYZLxZc4O4k=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=G0inXrIqzAYJp0Q3uSmUTYutlag2MmMCNB9RgltrMzMt63N+lF31Sz45N8hTCgtED
	 MiDwH66TKGLIRp8M9zYhP3W60B6E15GtckZq66YjBxge0l0Wuy+Xi8EEJ7U/0NSsxn
	 QvUwS7akoCYVgCyiwO44Vjm2s4B1ZPGrh1W0dIeK0g6JHDSkehL3+uRvVwfHbiAG5B
	 bK0tx5rRaD20JOlfQ2jWI/0SOd4U/Yi3ebQ7ajbJOo9mhqzw5umQwI8i2ItyGkzIw4
	 Q98zvV7UeRgwwr8eNWOnIgvCo88yotJANiZHE+rAwBMpUzSJh/KrDxDICFdKyfC7JR
	 WObqPtYj3CW5A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3DF0A84590;
	Wed,  5 Nov 2025 21:03:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id E7681462
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 21:03:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CD38F411FC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 21:03:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EnyuZooiAnGt for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Nov 2025 21:03:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BDC0A4118E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BDC0A4118E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BDC0A4118E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 21:02:59 +0000 (UTC)
X-CSE-ConnectionGUID: kaKllVunS/2YxLyj2ta3HQ==
X-CSE-MsgGUID: piRuBQ0KTCSFIq5Gh1RYVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="64386068"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; 
 d="asc'?scan'208";a="64386068"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 13:02:58 -0800
X-CSE-ConnectionGUID: vPfH8Al6T1qXN5vQGHX7QA==
X-CSE-MsgGUID: WmNY7i8cRzW10FkabDPiVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; 
 d="asc'?scan'208";a="211034596"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 13:02:58 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 5 Nov 2025 13:02:58 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 5 Nov 2025 13:02:58 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.53) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 5 Nov 2025 13:02:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xsiuf3RIDPwVZWFIOD9izsPTMVc5IqOtPNKDG4SZ7pHSlGG9g+BxmydTE4FctDsZVV8dntAB2wuK5ui8oPBUvSQFPYv7oEt2hUvVzPQc6pA/Is94DKP6rq59zgYeYD5Fk53lxlc2ev1ZxXidiCblWLMm9lGI5vYP03u51alihC2dWH1/30Ygjq/l2P4OBWOJ9PYs1LOIqqg6vlkV9pgXXXCvN/Ze3Y03FXmEndEUJaAvox3XWO6DrI8IeThua4/n6PheLVz1Fivc+R3TE+B06fGEyw+BvmauCzUpMJ8XeMwf0N//km30XOaB3xSWi+ZUciXtJxuE2yX8DB5fRo3q/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+xHUnNhFlbSDDrh9N4eW6ubyWENUcYFskYZLxZc4O4k=;
 b=s+0uaszdxmwrahSNvAEpTMmlpj9kmOAxfpMPhSHrTmtrZdjPIhKOKI3V69v6/wiRfKEAB3DfzG2XS949r6AkZxl7DwjBZofdeHFZEazOMLviZXu2Qh0wcpBVcEZ6Q6rEug27fnaG9mSXStI1c1CCvp5Am/uirnvFAs/7lzkDwhatHafzORgFJxKMHzoNLGTZdjZNsrogH3FUy+BjIcp2fLBQILnrV43ofEd2yoZElzYUjnl9N6hhGMT1TYUC4Z2annavyLDum9vE5MGXmFVES9+ttrY6Yikf0VGj6hbBUrn45hzwmVOjN4Mg85gmyRTWHRf0kbf0b+HtMojDahJHMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM4PR11MB7328.namprd11.prod.outlook.com (2603:10b6:8:104::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.7; Wed, 5 Nov
 2025 21:02:52 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9275.015; Wed, 5 Nov 2025
 21:02:52 +0000
Message-ID: <075eca67-e99d-4aa6-bb04-e5146e019913@intel.com>
Date: Wed, 5 Nov 2025 13:02:50 -0800
User-Agent: Mozilla Thunderbird
To: Natalia Wochtman <natalia.wochtman@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <maciej.fijalkowski@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>
References: <20251105122147.12159-1-natalia.wochtman@intel.com>
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
In-Reply-To: <20251105122147.12159-1-natalia.wochtman@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------fPIFmAfT7Q4A4WpSmTySNgUv"
X-ClientProxiedBy: MW4PR04CA0104.namprd04.prod.outlook.com
 (2603:10b6:303:83::19) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DM4PR11MB7328:EE_
X-MS-Office365-Filtering-Correlation-Id: 0c68cebc-c8bf-4d09-853e-08de1caeaef3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ekxRRVRGTUZybm9CY1RjTS8ydzJzbXFMbzlsNTVmazZTNDNkUk5kUUhmaTFu?=
 =?utf-8?B?NlpkWmtlZGlBR0ljR1VySE5lY2krUldCbDBaUXlaZE1EZDlodWEvZW9wY3Bl?=
 =?utf-8?B?ZHBuTS9zTXNpME10cmJhOEJKb2ZUOTBLR0lVcGVqbEcrWGFidDVQaFFzQllq?=
 =?utf-8?B?M0tIb2J5MUV6L08za3Y1TE93QkdNeUl6MTB4cjdmS1drUlcrVXdhVzM4RThJ?=
 =?utf-8?B?Wkpvb0taSmx2WVdEMjJkT2RLTFY1R0cveVBGTExFQXZLRjRpMndxUXFLdVhq?=
 =?utf-8?B?Uld3T0JDYUk3bEw3NFMrTzRKN0lld2swYnVmcmNSSy9EMlBrd2pOMFg1Q1Jr?=
 =?utf-8?B?ZU1aNWZadGwzK2lVSFVHcGpXK0l6akJrNndnQUFneFUvSUM0dmUvTC9KU3dK?=
 =?utf-8?B?WnF1dit2ZTVMRCtNdzlCeWg0MUdrM3VLanQ0KzBpWmJYOU1wTnJsS0FxTXFu?=
 =?utf-8?B?ZjYvcTd5MXZHeWVZQVNDVmQvdHp2bzdUMU9VSTh3U01MV0E0LzNJOEJ0M3RL?=
 =?utf-8?B?TVhIZURTaVcrenhIdVFhNFI4bFJnMW9URTVMMVk0YUx2RlNPQXdPSGdXMlFV?=
 =?utf-8?B?YWE3ZFVBM294STB5WTlXVU9JVGpnQlZBMU52Sk9ldGEwaTRWWVJnUE1VTVFm?=
 =?utf-8?B?VDFwSWtSMUdNVDBuUjZhejFYOTl0VHh1S2NLUDBVS25sWExYUnlFWmxyVFI4?=
 =?utf-8?B?YnpjanZHbDRzN2tDNG16S3FOQ3I3bUtXQmVQclNaKzY0NDhac3dvRnJKVDJU?=
 =?utf-8?B?dGN3dW9IOXJNbUxOTnNuMkdoelJMK3VzM1A3bU95UTdGZDdSN01IZWppaHFJ?=
 =?utf-8?B?WWZhMDlhdTRPWWdpV05nUnhoWlE2S0FuWWVGK3BPUTROZ3puMmVUU2JXOTIz?=
 =?utf-8?B?ZTVUUHpLanIvY2IxWGpteldHUFlmSkQrdXp5QUE1bmtOUVdhR0pEQXZoRTBY?=
 =?utf-8?B?S1M3SklsOW9XK2UzOCtZS3lsSHBEekdsdkdkQlRUTjg1L2xqOCtrV0FUdXZm?=
 =?utf-8?B?QzNyYy9IK0VJTGQvNUgrNHgvWk9VZVM3eVFCOFQwMk9YRnJmRmhFT1E1amps?=
 =?utf-8?B?YWdzTlN0YlVVdG5DWE82WEZFcy8yTUNrYXlnTWdwWDJmUTF3R3cySHpyY0FV?=
 =?utf-8?B?Q3BkcnpOVm1QMDh6ZHBHK1FidytGVWdSUUNQeThqbTJ6emRXMkpMMXloZXg3?=
 =?utf-8?B?S3MrdzVjRFQ2eEZURGdSMy9HMjBZZVI4UzBIY3pFbHEzNE5TSDBpT29GVGY1?=
 =?utf-8?B?OTRBOHBxY2hkSVdGZHVIVTJsT1ZTekF0MXlMeGx2STI3NWI0SVhjdVJVSFY2?=
 =?utf-8?B?WXovTFVJaE1sZkY4VzhtcVRaelZuNkozcWFlMjdwMk5NS1lmL09jOWVDNXJ3?=
 =?utf-8?B?L3l2NDBnK3U0YTQrWko3MVNuRjNDdDVpbWEwaGhRRkJzQklEZkhTWWRHcEFz?=
 =?utf-8?B?OUtOMWRXY1RCeDFJakJ1WFJUZENlL2FsOWlrd3o4NmVnK3lnTUZ4bTU1eVFk?=
 =?utf-8?B?QlRhQ3EreXMvUmt2bHVlcXpNV0R1V0FoTFBYMzZLWVpLSW1YazZxTm56WWlW?=
 =?utf-8?B?VWdkOWxOaXJMRjFUS3FXZXVxSUJydDVtYlA5Tm5GOFNOaldtS0VyUTNsNFVl?=
 =?utf-8?B?ZHFmY0l4SlFRVk9QeGE0VGtxMzVQK1QrNS94TzZ0TzdUSE43MFlCYzZ5a04r?=
 =?utf-8?B?aEVBNEp5TXFNNkNrZVNGNVFLUGUzanAraHg3dkVvM3hZREpGeTFEbEdoZDVI?=
 =?utf-8?B?QU1rTmhKam9SWk4zbHFGd0tDQSttMGdLRGtGeFdiTStHVUluOGh4YXZpeEJS?=
 =?utf-8?B?SjJLZHBLWnFSZW1aZlM1TW1xWmFEMGJjdXR0YUNxU2JlTEFSeVNyRkYvdC9q?=
 =?utf-8?B?UU40d2ZJdDlPVzVLYmR4d2xLT2FlMytjaWE2R1ZBSTFtbzhtZG0wOFBYMHMw?=
 =?utf-8?Q?D6fQV7hKN/V/MHIVZPs9Hf+w4+g11PVX?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TmpnL05GNGtKMXh4eU15dmxtYklHcHVNcGVqakwxMU9ZelpWdjhCYlBXSFBR?=
 =?utf-8?B?Mm0wcTF6L2g1TlBQYUJFTkJmU3hwT2NpNWtUSWVZQjlEZUJLVHhnVTlxYU5U?=
 =?utf-8?B?Q2xDVVdHbjhsYnNoUnF1RDlYRVNLV2luWVQ1dWZYUW83c09JRDJ3allhM1d1?=
 =?utf-8?B?U21qR3ZGRmxodEszeWhDWGREekM2TmJ2TEZsSVdIS2MzcDRoczFKZ2dJZzJn?=
 =?utf-8?B?NXY3MkpJQWlMREZ6MWZYeW8yNHA3a2ZudFZ6THkyd1drNHpHd2oyZ1pqSWlx?=
 =?utf-8?B?VWNSdGg4NjcwYXpMWEpKZDJKaGRQL3diMDdBV3A2bS9rbGdlWkgyNWYvdnNT?=
 =?utf-8?B?K0YzdVBWOW9FRDVodmkvSkM1T28xLytUMHRlbnNDZTBNQm55NHM3MjMraHlG?=
 =?utf-8?B?b1pIdWhpREVIUlhiYUphQytmOEd2cGt0V0w3djd5K3BBWGdmdzFZd2JWVVVE?=
 =?utf-8?B?VThwMTEyTEVvdHBFM0VFMTJUSGo3eXZocEQ3bEVWbDIzanQzc1pkM0xqWDFV?=
 =?utf-8?B?ZDg0VUtyektFdm9FVG5temtka0JUb2s0Q2N2ckJxRzlsOVB6ZmNsMENLS3dr?=
 =?utf-8?B?cTFGKzRkV0tubXNVQitWcm01RHlXN00wODduSElNM1lVUFduUG9lRVVnN1cr?=
 =?utf-8?B?SGpGSGx1ZDlpQXhQYXY3M2VWOWc4WWp0aVIzMlJSV2J1aXAwLzVDUytUMkpF?=
 =?utf-8?B?MS9SWHB2dUpkbWxNYnRNZVBOZ2RjZEdUWE1FUktxb0R2MFFrdnlOUFZ3dHdH?=
 =?utf-8?B?WmNOY09xOVd0RHM4VnNsak82RytaQUJUN1RteXBiejM5Nm1xZk5FeVd5NWpx?=
 =?utf-8?B?ZVF3cUpTVWU4aTlHaEtIWnJOZUJwKzV1RDM3OW5zQTRxK25ldDZJNktmeGdC?=
 =?utf-8?B?M1dKYXpCTzRtN3VvM21GZHg5MHU5OWgwL2JPb01KblNPRVFZWW9qY052N1Qz?=
 =?utf-8?B?VXd0QndTWWwrZWRzQVhZUUY0SU9LVHkwU09OOHFWWm5BQjRvbEl5bjdVTFhF?=
 =?utf-8?B?UWtKc0tGTkpERE5OUS9vc2VTZEp1eUwxNWJvTDZvQ00xd20wSFlxdTdzZHRp?=
 =?utf-8?B?RzU1TFBCd1JUMUFEcWxQNjRkWnRIM3l4M1dSdVNLWE5lRm1WTHBUWk1qcDUx?=
 =?utf-8?B?bzRsUWZMbDYvWi9Ba2dCYVhXTG1MRUJwakFKblB2Y2xtVW01YUpLR3pCUytk?=
 =?utf-8?B?K3RHU0MvYmsxMkFkVEhFNGFLVVc1VXBZU0puQkhTY3UyYjRuZFNUMzhucTcz?=
 =?utf-8?B?Ry9DVkxieERXYkhKdTNJMHVzZjN1NkU4bnFzeUhzNUZPNjRpVTJ5b1Fnbi9W?=
 =?utf-8?B?N2FUTkwzYU15bDhBamtjeGxhVDBMR2VJMEh6TFo3OGJJWW1IRXJJVFB0VGYv?=
 =?utf-8?B?WGFJRGZqM2lERmVObEI4Q0MwN0ZvN2o2VHBLc3pQVS95aUl4cVhmWjJLaklr?=
 =?utf-8?B?dnkzM0dPT1pmcVhwTWdzaXFrM01VdG5HNXJMQVhxSnFOSGJsbWdiY1pBSEZs?=
 =?utf-8?B?WVJhVmlaekFka0NVMCtWdE1Zb0FGWHBaa0dCQXBuOHlzM0FVdkIvT0hZSlEv?=
 =?utf-8?B?WkNOU2FoVXB6ZEVQamx2RTJXSW8weHorYTJsR2YzNi9Ca1cxVVl2NDh1TXo4?=
 =?utf-8?B?eXdnYTQ0WEMwaklWRzBibEpHK2c5UnF3YjZPK1BqRFY4YW5nRlJibzEzdjli?=
 =?utf-8?B?cTFGY1oxR2JEZ3dGcG13OVdybUc1QkFDSExEbjNaZ3BqMFUzd1lhQzRPSlpN?=
 =?utf-8?B?WXA4ekhMRlZNa2ptK2FjV3QzLzZLbXUzSjQ2bVQzRW1jTmlHVUIrODBtK1JU?=
 =?utf-8?B?eXhIbDBYakZ6ZnlGUWI3SVNFRVVHSVBtS0k5SEx0RWpkamdlUWg2ZjR2cFQ4?=
 =?utf-8?B?MnVPQTU1cE43U0c5dVlJS0RjUFpwM2ZBV2phMVNEQzFudWVmWU1OR2pLWS93?=
 =?utf-8?B?ZEtRNDlGWndZKzdZaVI5YVRzNHVIajB4Y3hzekFoUTdWd3lEb09VSjN0MmtI?=
 =?utf-8?B?a3k4b1ZnWDRXMWprQ2tMNmJucStCNjhEcS9LemVhc2ZFbWFMcWxRZnl0OW5p?=
 =?utf-8?B?Yk1aS1Zua1E3TEpsVXdWbkFLdGJ1SW9nTlE2U1dJMXo4VitDR0FhQzdNdDdB?=
 =?utf-8?B?amN0a3pvaHREbWdVM0IwREEyY293TERNMFlibVc5UmROR2E0eGU4Y1VsMzVr?=
 =?utf-8?B?ZHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c68cebc-c8bf-4d09-853e-08de1caeaef3
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 21:02:52.0476 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CU1k7OzWP3ksgYfeYxxR4DcQyi4PYPvelFCChWjUPHq4ERjCFjWtKqFMsP8HPmfKS8r+MzONlD3quw00dVFhNUia6GfW29CjUBIOPMXFjm0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7328
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762376580; x=1793912580;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=zWy2zK6Fa0J0jt3JUUeBGH6YCmvawN/4Boe/lxMHEfo=;
 b=iq7s8a31lhjCTOO9hT+tw6YddoQACYKawNLSwqFG7hHEsSfMpaYTuwdI
 ovt93XBwImGR3GsjpFbcNuWQWrIVHoqUM73CAlJ0vyBM3H84IwcXdTDiy
 j8CnuZT3tbz085QSkg6UDDSb9PIQwf1YdlbCxhb7jFMF8O/nA7cfjFlNY
 6JoOzyZyAn2VdV+Xml8W+WhLa0tpG2Y/jsYFy+TcX3BJd/PHPHXefqX2U
 Z2znlg6AsJpQRjxZbAv7DYL/IH+/93d40VWT5AGgBjvsMBZJCB6rzrc6C
 XXgnPvPMkM/RV6JGGBJRhyl+gIVWr79mG6IECA5unsoIXIhK+rGP/nFVQ
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iq7s8a31
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ixgbevf: ixgbevf_q_vector
 clean up
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

--------------fPIFmAfT7Q4A4WpSmTySNgUv
Content-Type: multipart/mixed; boundary="------------W3M1s1CLTsjQxm4vP5vHQOyz";
 protected-headers="v1"
Message-ID: <075eca67-e99d-4aa6-bb04-e5146e019913@intel.com>
Date: Wed, 5 Nov 2025 13:02:50 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH iwl-next v1] ixgbevf: ixgbevf_q_vector clean up
To: Natalia Wochtman <natalia.wochtman@intel.com>,
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, maciej.fijalkowski@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20251105122147.12159-1-natalia.wochtman@intel.com>
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
In-Reply-To: <20251105122147.12159-1-natalia.wochtman@intel.com>

--------------W3M1s1CLTsjQxm4vP5vHQOyz
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 11/5/2025 4:21 AM, Natalia Wochtman wrote:
> Flex array should be at the end of the structure and use [] syntax
>=20
> Remove unused fields of ixgbevf_q_vector.
> They aren't used since busy poll was moved to core code in commit
> 508aac6dee02 ("ixgbevf: get rid of custom busy polling code").
>=20
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Natalia Wochtman <natalia.wochtman@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbevf/ixgbevf.h | 18 +-----------------
>  1 file changed, 1 insertion(+), 17 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h b/drivers/net=
/ethernet/intel/ixgbevf/ixgbevf.h
> index 039187607e98..516a6fdd23d0 100644
> --- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
> +++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
> @@ -241,23 +241,7 @@ struct ixgbevf_q_vector {
>  	char name[IFNAMSIZ + 9];
> =20
>  	/* for dynamic allocation of rings associated with this q_vector */
> -	struct ixgbevf_ring ring[0] ____cacheline_internodealigned_in_smp;
> -#ifdef CONFIG_NET_RX_BUSY_POLL
> -	unsigned int state;
> -#define IXGBEVF_QV_STATE_IDLE		0
> -#define IXGBEVF_QV_STATE_NAPI		1    /* NAPI owns this QV */
> -#define IXGBEVF_QV_STATE_POLL		2    /* poll owns this QV */
> -#define IXGBEVF_QV_STATE_DISABLED	4    /* QV is disabled */
> -#define IXGBEVF_QV_OWNED	(IXGBEVF_QV_STATE_NAPI | IXGBEVF_QV_STATE_POL=
L)
> -#define IXGBEVF_QV_LOCKED	(IXGBEVF_QV_OWNED | IXGBEVF_QV_STATE_DISABLE=
D)
> -#define IXGBEVF_QV_STATE_NAPI_YIELD	8    /* NAPI yielded this QV */
> -#define IXGBEVF_QV_STATE_POLL_YIELD	16   /* poll yielded this QV */
> -#define IXGBEVF_QV_YIELD	(IXGBEVF_QV_STATE_NAPI_YIELD | \
> -				 IXGBEVF_QV_STATE_POLL_YIELD)
> -#define IXGBEVF_QV_USER_PEND	(IXGBEVF_QV_STATE_POLL | \
> -				 IXGBEVF_QV_STATE_POLL_YIELD)
> -	spinlock_t lock;
> -#endif /* CONFIG_NET_RX_BUSY_POLL */
> +	struct ixgbevf_ring ring[] ____cacheline_internodealigned_in_smp;
>  };

How would this have ever worked?? Any access to the state or lock fields
would break the ring structure, so any build with
CONFIG_NET_RX_BUSY_POLL the structure layout should break...

Hmm. It looks like the ring value is placed in 21c046e44861 ("ixgbevf:
allocate the rings as part of q_vector")... But the refactor to allocate
the ring as part of the queue vector was done after busy polling...
which was implemented by commit... c777cdfa4e69 ("ixgbevf: implement
CONFIG_NET_RX_BUSY_POLL") which apparently I wrote.. In the words of
Gandalf "I've no memory of this..." Wow. It turns out that all accesses
to state and lock were removed before this refactor.

So the sequence goes like this:

1) implement busy polling in 2013
2) remove custom busy polling in 2017
3) combine q_vector and ring allocation in 2018

Looking at the structure layout I see:

>         /* --- cacheline 10 boundary (640 bytes) --- */
>         struct ixgbevf_ring        ring[0] __attribute__((__aligned__(6=
4))); /*   640     0 */
>         unsigned int               state;                /*   640     4=
 */
>=20
>         /* XXX 4 bytes hole, try to pack */
>=20
>         spinlock_t                 lock;                 /*   648    24=
 */
>=20
>         /* size: 704, cachelines: 11, members: 11 */
>         /* sum members: 625, holes: 3, sum holes: 47 */
>         /* padding: 32 */
>         /* member types with holes: 1, total: 1 */
>         /* paddings: 2, sum paddings: 12 */
>         /* forced alignments: 3, forced holes: 2, sum forced holes: 43 =
*/

We do have a bunch of extra bytes at the end since the struct size is
704 instead of 640, which causes a small amount of over allocation when
allocating the q vectors.

We allocate the q_vector in ixgbevf_alloc_q_vector(), but we don't use
struct_size. IMO this fix should also update the logic to use the
appropriate helper macros. Unfortunately, we don't store the actual ring
count in the q_vector struct so I don't think we can benefit from
__counted_by().

Thanks for fixing this mess.

I would mark this as Fixes: 21c046e44861 ("ixgbevf: allocate the rings
as part of q_vector"). But since we do not touch state or lock, there is
no user-visible bug at present, so I guess a net fix isn't warranted.

Either way:

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

> =20
>  /* microsecond values for various ITR rates shifted by 2 to fit itr re=
gister


--------------W3M1s1CLTsjQxm4vP5vHQOyz--

--------------fPIFmAfT7Q4A4WpSmTySNgUv
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaQu7egUDAAAAAAAKCRBqll0+bw8o6AgW
AQCmIipkZHrTH/wdVy0I7/hACAVmtBTxAuFhtMvZiPi80gD/UYtR3AwZLeN17DyZD86VnRCiRGPB
C+e3DZ+6zxsOFQ0=
=V6VL
-----END PGP SIGNATURE-----

--------------fPIFmAfT7Q4A4WpSmTySNgUv--
