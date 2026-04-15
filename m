Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CMQnIBBJ32mFRQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 10:15:12 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B3F401CDF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 10:15:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E7FA60F33;
	Wed, 15 Apr 2026 08:15:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vzM8pznluL-5; Wed, 15 Apr 2026 08:15:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B875060B8D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776240909;
	bh=VBmGQxCVHfeTofnY0txuoniQezl7eOywQYKy2tLldRA=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JHPY8A7f25quI3A5QfKLNX1OykN1kyuhWB6xXfZhvX8jmrfFG+gkZ9kiOpktQcJp7
	 hFMIR+4K52KHA1cg4HBdIi6rfEesUPVS+KgbgYHu33ofeAP7FxNSqVgaLJ7A9gkyZC
	 J0P+Q1QT70Bt5uaiFzZyunsTKlf28eF4Wr56RNY3i2ynIDAqrbBGJTziQHtRs2/4+f
	 pyLmvNIesEOwwplFAphpwa5aOS6gB1qULdKiyurkzdEGRTEOVMYoEV/MFKwowGnEk/
	 5x+Cpq8NtmYFiLT3yJoqN7VBHcu2PLLQyW9TXwjKIfIw0hl8ORPgZP/D70V8r1hlbb
	 qCTDfgpKK0SUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B875060B8D;
	Wed, 15 Apr 2026 08:15:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id AEA6E237
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 08:15:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 92CF0806AE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 08:15:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nVz7FPpxyq35 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Apr 2026 08:15:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BBD7F80691
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BBD7F80691
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BBD7F80691
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 08:15:07 +0000 (UTC)
X-CSE-ConnectionGUID: WezrrENjTMOP/iAMWFQIyw==
X-CSE-MsgGUID: YyDbDOo9QJSNTyn+O0Ky7g==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="64754426"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="64754426"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 01:15:06 -0700
X-CSE-ConnectionGUID: UoBwjWrWTUGWpmxfQYVXWg==
X-CSE-MsgGUID: MD6a+qgsTpOGqaD77i9nmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="235300208"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 01:15:06 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 15 Apr 2026 01:15:06 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 15 Apr 2026 01:15:06 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.25) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 15 Apr 2026 01:15:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jdrRULCojzITccO/epWxlS/qjXrPBLcOQ8Ka9QUDNj8vBQmIp0sJrVlSRdN4IeEGOUwgrhBumuPEYLeXWGZxCeiKwNdYn5UujkRFP8PuS+xx3MKDu0ev6Os+6+2JfUgzw510FpK10PGJnGCbGKoNyXQaze1TLJXydjjKhfo2B/anoTt8KQCQRtFKBolGHbiJ2t9VniJawYm6jJcjO0G/qVEh+GMLi5+c5IDv7Mep0pXIQuptJUY1ARH2F7dV7A3Z1qG4kED/gFuZfdbHzkS4m7UkwA0PuiEjIl1y5QHb2Wz+McVsj0w0wf8eafFPDXCCl2OCD68ouagZzINlor75GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VBmGQxCVHfeTofnY0txuoniQezl7eOywQYKy2tLldRA=;
 b=QI7vdJ7sjqcZJo+eLWFC+YreqLDQrs2VBB3f7a8eJDOPKzlr7Mlw2R+BYtveCUg18/VOSh/JrTL7gR2Xov7Oy3Lm3vxgdDkZe1H48qb4wWmaN0RCewlT4Up21LH/9tKC2DHYCZkOflYo0DgaNx9fKVexMmpOtsZnKoXS4nbIMKWq685Ml6MjnCCnLN+/sANMNAFyxYp0zq5x4Qq91SN1UeznHxHXY/vA6bUNbx06T29LqghnAAcz0qPMFknIGwlgACg37UOHUri074SYd5XRpwrSQWJxOjWybkbLPM2DJ+vl4EamtpDutQ+ncmRtXunDZzVV6VkFeVlVD2zxAj2/Uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8013.namprd11.prod.outlook.com (2603:10b6:510:239::8)
 by SA1PR11MB6943.namprd11.prod.outlook.com (2603:10b6:806:2bc::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Wed, 15 Apr
 2026 08:14:57 +0000
Received: from PH8PR11MB8013.namprd11.prod.outlook.com
 ([fe80::26a5:58f7:7e5d:5572]) by PH8PR11MB8013.namprd11.prod.outlook.com
 ([fe80::26a5:58f7:7e5d:5572%6]) with mapi id 15.20.9818.017; Wed, 15 Apr 2026
 08:14:56 +0000
Message-ID: <dcdef685-6a8c-4365-868b-d448e05e4780@intel.com>
Date: Wed, 15 Apr 2026 11:14:45 +0300
User-Agent: Mozilla Thunderbird
To: Agalakov Daniil <ade@amicon.ru>, Tony Nguyen <anthony.l.nguyen@intel.com>
CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <lvc-project@linuxtesting.org>, Daniil Iskhakov <dish@amicon.ru>, Roman Razov
 <rrv@amicon.ru>
References: <20260325151615.1407182-1-ade@amicon.ru>
 <20260401120919.282668-1-ade@amicon.ru>
 <20260401120919.282668-3-ade@amicon.ru>
Content-Language: en-US
From: "Dahan, AvigailX" <avigailx.dahan@intel.com>
In-Reply-To: <20260401120919.282668-3-ade@amicon.ru>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0012.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::12) To PH8PR11MB8013.namprd11.prod.outlook.com
 (2603:10b6:510:239::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8013:EE_|SA1PR11MB6943:EE_
X-MS-Office365-Filtering-Correlation-Id: 93ad858c-a2cc-48a2-077c-08de9ac7147d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: AfNoe2stHpscCpIINUqb4kzO6P2fr0PihBJEWmZCzy3zOH1lINAC1sI7Q2l2EOQqbhytHCvD57AVkyr9FkHEDTNk1o6rXonScyK4znNWm8juIOTFShTkvVibXyGUzIeSCOIDNE3xnOXUUw06qNya33KyJOyVmRCTzFC9QYmwnXOfN4uiUUDV8OVwZK0zZ3xXRh2e65SYFB53gBObYGlI+AHXEsmM1I7TCqqE7M0zEGfp831U1wDjIWWMbM1lsYe/LPgF/FrbxTTNwm6LJUt1RZ2V/+WXSCvei45Ex+YoG5xsAPVrRTnt/4b5iAzf7C/Eij6QyqAywTlDBQyX0EfNvTKJLeEgIss6670sOxzyYyypMKhtJ3gzjER2yNzQ+NyRtNV0J33+kk0e2l7x3lYWrWgW5KgdOu+/vvdSnLpkEec4Pt1arwW114+lid05MNQ3JTQtJz/0Jjbb9NnDwg83wHLSw2kU+mev8KOfHPoOLODYSJGM3eSkFCpVTnvzO+wS0eqmqADTHFGxOFW9Tu3zIkbF0S9twC/RL+bmR+UrCtJ56OQIhRaYjf+LWJwF9CqLd4nCBwWmqLFsqH6crnqyDGMFOTAJeyWWTS+d/6RP8YbxADoXxgWQwg3k5U6QfHazPOegEIJfQ1hw6qrP0zu2N+nnIxmqaTFG5nbd737ylktTF0Ff2yjX7gFlWN6dCURpp0VvV+00pzByB8Tro+aJe/upoL1neLHHSDwSfc4BtOg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?KzhrU1h0TWNEb0VQZkJFd2MrUnVFOGtzc1ZJSzVuRHhQMS85MjBtcVM0Z0Fn?=
 =?utf-8?B?VFJhbmZyT3c0M2lnaDZaMTArRTVpOUpKMkhudWRJUW50NFI5bW1nRU9jbFlU?=
 =?utf-8?B?VFh4dFpBWkdVbkZDMUdSbkRHcWZMbk9iQXkzU0x4VXNSQ2ZHUkJhN2FaSytk?=
 =?utf-8?B?N0xGWEFBUFFWOWdTZVcvODhtay9zTmV5WEV5Qk9BeFdzUC9lMnQxbXdIOENI?=
 =?utf-8?B?R2lKd0FvbU15TGo3QnBIakhVd1Vid3U4UWFWMWtINWUwTHY3dGdCY29vME5t?=
 =?utf-8?B?cnV5L1lqNnZ0SWp3WS85L3ZEQ1RCS1E2MGdITmdhRW54b3ZhVGlOOVpYTENB?=
 =?utf-8?B?SHdIbGJwSElHcFJ2NFJURUlwdjZvV2EwNzlvRW9GdmVGeHo5N0hXcFB5dnBu?=
 =?utf-8?B?cmJTeXpNb0lKdlNhMy9PSWVUdGwwNWxIV1hINVYvRWU3dDh0S3V1M0xwZXls?=
 =?utf-8?B?cjJlTDkrUHd2SU93WHh1eUQ3QU9jYkY5QkFuRlZNWGhFcXdJVFdjbnB2eTQw?=
 =?utf-8?B?LzdUcHQvSWhpVER2dzRYekljd2hTTkdnYTRHZHliOG9LQ0ZpYW5DR0VCa0ll?=
 =?utf-8?B?RUlzOXRpL0UzeDJQcGI1V3R2TmpmMis5dmFoZmlVNkk0RUhrR25IV2RUMVha?=
 =?utf-8?B?dUhMN1pSY0dOSXdFdlVQZ09vKytyQ2tiOVl2V0VVSlczVkpIVE1OMGNXTWFl?=
 =?utf-8?B?NVpVUmN2THRGY0JSVWFuMGNNeERLdVZucENZU3RVUDNjSFU3Zi9vb040bHZi?=
 =?utf-8?B?dDhCR2lDUHo3N3hySjRiUUpIaUttdlF3U1NWNW04d21mTkpiUXNkdTUrUDdI?=
 =?utf-8?B?cUlzV3RBajI0UkZ4U01PbDdpTDlHT1lEQjNvWUp2Q212SHdYYmlOTDN6RzY5?=
 =?utf-8?B?bzAxSWVWUjBtTE1MbFpkQnl5K3ZYL3h5ajlRQ2ZwOGI0NHFZSHZ3Q3BucTgw?=
 =?utf-8?B?SXA1ZlNVbEdEb3pZY1JYeW9Fc3BodDM3M1o0UHplSnJlTFY2UmJ4SFo5U2JW?=
 =?utf-8?B?MDBqdGYvZytheGIvcC9scEJvNlJ3ZG5UQW50YmpNN3IxYXlQU2hTWU56a1lx?=
 =?utf-8?B?ak5qV3c4Q1NYV0tuSzdLc0pXMDhhREhwbHZBRUpLOG83b3RzdHBzWkF4VjRJ?=
 =?utf-8?B?N3d5eit1Q01iRzU4TXp0dkptMlVaNFNzcDFEL3B5RFg1d1RsM1hJMVAySFBM?=
 =?utf-8?B?SHBnVVFRT2tqSkVWTUlMZ1crN00vRDNJbU1qTndwYUJ6VloyMzFETXJoZ3Nx?=
 =?utf-8?B?TFgvTHlHUURkZ0N6V2JTUDhpWkdnQUo1N2w3b2poYnUzeGV5N09WdWpRNSta?=
 =?utf-8?B?WXNRa1hESEJxZHhMNDgzR0tEdWd0NWh3bXVBVTdFMTlpOElwM25haWtUWGt2?=
 =?utf-8?B?U2ZlZm9sTERscWhuNUVnRmRPd3RPVXN5QytnUVBjUWplWHRkU3NTcHJ3U1BM?=
 =?utf-8?B?SXEwU2FYVFF0dkQrMGlRWU1vVjVtTUpVazlBMVh3WWxxR0JnTFRjUDBsS2p6?=
 =?utf-8?B?ak9LZDVIcm9GWmFvdUhXNVg0OGl3ZXFjdUltaEFQRG5QdTY0RUdlemYxZkVR?=
 =?utf-8?B?S0pYTTBxNkp6b0dDVHh4dzVtRTFxRFRhZW8wRGxPMnB4Y1lrWGQvYnBIS2Jz?=
 =?utf-8?B?SUFPN0htZnVWMkpOYnR5MzFWZmE5eU1KNGdxTThJaWUxMEZ1K09WbzJLZ1pK?=
 =?utf-8?B?UVJTamFReW5GSlp4SUphcTlEaS9ybUNZNHUyK2pJemovWDdhem03Ty91dDgz?=
 =?utf-8?B?SGFmR0ViY0l5ZjJZaWM3ZlAvbkRFVjdZcEQvUXNuQlVmMlQydmFzOERKdldL?=
 =?utf-8?B?aGJhVGVleGlrM1FIZk9jYjVpaXdsU0lGRGZmcDBOZEtvelJibVVwcWRhT1BI?=
 =?utf-8?B?ckVBMXRRQlZKQThUdkpKMkE2eFVuQWd5MUFoWXhUcGNKOEM0TVl6aG5pS3FL?=
 =?utf-8?B?QkVYSTN6SHBLemhzVEF2Z1J0bkVHQ2hKZ0NPKzVZaUVSNFRNdkdvcnZhRDc2?=
 =?utf-8?B?eGJzcWlORkJtZFdralc1Sk1ZZDV2aEZ2aXdrNGwxNkFtNEE1YWk0Vm05VkZv?=
 =?utf-8?B?L0ZqSWl5MFkrQ05UdVZnY2lXMmFLaXdwWFRudFFVVnB1eDRoTDIzYlVyaWVS?=
 =?utf-8?B?Rk95bVBGTVpOS2wvcDAyeUxnRkFuVTNGY3o0RDRQckh0M0lEcm5sRmN3cEEr?=
 =?utf-8?B?QmNwekIvNUdVc3lIOUxjbmVoNG5EaFl1bHdKSUxoMWhkTm1wOHJOODV1b2lS?=
 =?utf-8?B?TlZHc2hoVkt0dU8xei9DOE1tTHhhei9ZMTJZMkZzc1dBMG85V3ZtSGVvUEFy?=
 =?utf-8?B?NWg0V0NwbjUyNExlRnlPeEprTlpKaTZxb0tCYk81YkF0M2tjUnRvMTVGODNC?=
 =?utf-8?Q?2XNciBlG8xv5/Nbo=3D?=
X-Exchange-RoutingPolicyChecked: tGaTCauuJe6d2YuSomjzap6Y1A48JA95RBA3w3cjQz5yZYE2EkLJT/COygXOZyiTYAM4IRLWya/toB5BRpSn6OFN5R79FfB3+ggP46XXqdOTB5TQKmNUM8D79Kk1Fuwt8UCeIAc4S/2F1HbDPtM+AAF1H+2QDoMBncSW20O1TcTj5nQdUl+bgfW9ki/PoZAGhT9C4Mw3MkdVSzCDsCFC1sba8F1Sx9clT3RP6smb8n3VXSlgRr/WKf0JD/gSQgvMnD4s5DHCgZCWBIeNfWTqrdmAZ9V3hxkmQdLtrz1TCWEHKcqn6gKOF8o+0hko2oxxO6dRrFX6T3qgRHBY1KxcDw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 93ad858c-a2cc-48a2-077c-08de9ac7147d
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 08:14:56.8907 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E10sCNCdbRihz3qo/jrKGiWmxtwzBFZCppaq+CCe5FfXKO7Vwz4goYLGpCh62AliIfed1yBzon5tP84IRIISwsGydCDLVqF/ZmB1Waa0B+U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6943
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776240907; x=1807776907;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mHfRt0OUa0FSw2gOWAv8/Pw9edW5sx9ZZK53uuGhcCU=;
 b=Z3o+gqqdMm7gvzv6QRI7yjh9GCFVOkpOJ80mGhDlxA8j/PcM6C/3cmxM
 t81fDDj/OOBz+5Q6Utj4wEwKEy8ZkM3cvQl8ZekaLINcsBcrTCQrmetv2
 BxDjFKsqQrdGUInkjmQsMbGE3J4DiS7s2RFvkMEJSmq/trAmW0fA919Xy
 b6HncYVSMATCTNJegAwRzUMMtVdosW6ofU3mWXOf31bBfXcs0T7oPSngZ
 1bQJ2tMQ8yzO6ONR0aGJ5R854k20sfvbqox7MSkRdRINxrVEqwfZ26nye
 jzu7PvkEgNW9UQukgOBjiTRzHYf7LOMQtXl7lfjI8A2393KC3Hgv/npO7
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Z3o+gqqd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/2] e1000e: limit
 endianness conversion to boundary words
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ade@amicon.ru,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:lvc-project@linuxtesting.org,m:dish@amicon.ru,m:rrv@amicon.ru,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid,intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,linuxtesting.org:url,amicon.ru:email]
X-Rspamd-Queue-Id: C4B3F401CDF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 01/04/2026 15:08, Agalakov Daniil wrote:
> [Why]
> In e1000_set_eeprom(), the eeprom_buff is allocated to hold a range of
> words. However, only the boundary words (the first and the last) are
> populated from the EEPROM if the write request is not word-aligned.
> The words in the middle of the buffer remain uninitialized because they
> are intended to be completely overwritten by the new data via memcpy().
> 
> The previous implementation had a loop that performed le16_to_cpus()
> on the entire buffer. This resulted in endianness conversion being
> performed on uninitialized memory for all interior words.
> 
> Fix this by converting the endianness only for the boundary words
> immediately after they are successfully read from the EEPROM.
> 
> Found by Linux Verification Center (linuxtesting.org) with SVACE.
> 
> Co-developed-by: Iskhakov Daniil <dish@amicon.ru>
> Signed-off-by: Iskhakov Daniil <dish@amicon.ru>
> Signed-off-by: Agalakov Daniil <ade@amicon.ru>
> ---
> v3:
>   - Reverted to v1's "check-then-convert" logic: the return value of
>     e1000_read_nvm() is now checked before performing le16_to_cpus().
>   - Removed the redundant full-buffer loops that caused double endianness
>     conversion in v2.
> 
> v2:
>   - Split from the original bugfix series and targeted at 'net-next'.
>   - Removed the Fixes: tag; limiting the conversion scope is an
>     improvement to avoid unnecessary processing of uninitialized memory.
>   - Improved commit description for clarity.
>   - Note on e1000e: this driver already contains the necessary return
>     value checks for EEPROM reads, so only the endianness conversion
>     cleanup is included for e1000e.
> 
>   drivers/net/ethernet/intel/e1000e/ethtool.c | 19 ++++++++++++-------
>   1 file changed, 12 insertions(+), 7 deletions(-)
> 

Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
