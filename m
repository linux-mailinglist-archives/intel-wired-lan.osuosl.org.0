Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D69B6AEE888
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Jun 2025 22:48:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3A83280B3B;
	Mon, 30 Jun 2025 20:48:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4f4OJDAqdpmg; Mon, 30 Jun 2025 20:47:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 787B280AC4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751316479;
	bh=DlqQxHvuDEidP7Kdux9Qfv4nDditvuiak5oZh0KJYOk=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=I6Vv/DJLwA5QK4NNFCNsBzsTJQPv67MFiGvmpHRoXWAV5f/wn52RfEW7it6mWmeAZ
	 /9SpVp28B7E+p9W6IOYnsx3PCvdebb+ENGlLVSEoRwLoCShHTIHcIyPLsFjUpgtzh7
	 uump6GC1bRtfxx/xth/Mu2bFd90h/PWl4TFpopP2sjrIqlZAYhyq/foOLqedWx5XoT
	 aXStbOblcwZaf8LgkVXj7w9zP34MICwITSVxQwitbB4/xcH8gGoYHhYWDHTMaN4rik
	 hA2vg1HyRBR2GVAKrPmkOkc15FkT31bjGzz3hy1UCnmXgorCo2gYEMJlu1B8fK8s/5
	 nfCpLMk4Edd6w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 787B280AC4;
	Mon, 30 Jun 2025 20:47:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 938A4223
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 20:47:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8A9C380ABE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 20:47:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JsRP5Lu0UaMj for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Jun 2025 20:47:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DAD2F80A9C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DAD2F80A9C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DAD2F80A9C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 20:47:56 +0000 (UTC)
X-CSE-ConnectionGUID: eoUb10d3SbiP9mRRSjQ6tA==
X-CSE-MsgGUID: o/Gd10tuSOm5jQ5XNttBFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11480"; a="64909734"
X-IronPort-AV: E=Sophos;i="6.16,278,1744095600"; 
 d="asc'?scan'208";a="64909734"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2025 13:47:56 -0700
X-CSE-ConnectionGUID: NPEqUv/HQnK07F1mHCuy1g==
X-CSE-MsgGUID: 2pzMjtN6RTSQge0fIVlbbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,278,1744095600"; 
 d="asc'?scan'208";a="184498831"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2025 13:47:56 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 30 Jun 2025 13:47:55 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 30 Jun 2025 13:47:55 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.80) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 30 Jun 2025 13:47:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tEXb8OABZ2d7e45giFDOmWzVwzbE8evopDTYtn7UYa7cJoYUBn3/aS5EvjLXb1OmT4NCrDy9vNiybH4pBENgFUVzYLIAJwIyK/R7ZmUA+HM0hYMA43zZGW7RoqBDwDZXNb7832N7GObxjkcJvOpZ1nF+SMDseN1JhnP+IfbFe+fHQy50+HTwZeWuOZA9iIkLnXQhGi73x0RktLTmHOWnmOC3nvvhxOdZnBks1mOdJN2tokQvB6S5DEr2xrIqksXOvoartMtpb+zR99OCzsvm6cjLXzOX34uxESmZLGW0mjxa3F3kCA3BWE2cgQIY/OqtNZt4voSyfq1fsip66f4jIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DlqQxHvuDEidP7Kdux9Qfv4nDditvuiak5oZh0KJYOk=;
 b=SV9ewQGZqVEUGph3hUAArtzwJjoQX0cPWTpDwwmXbCyLwaGrlWjop5smJmCOQaIN526d2ir/zDVNOdxunkDFX4JBGwWxDzP44GPAHXd6TqCdchMX7HFgJG69oksdgpJ01ZHZpYFvtIIgGsCGUZ+lseZaB7hi/Ek+a1wZ0A9ADpBaYYBsSAZdKvi/4HWlwUhGd2W8SDDZRkW6Vq12cQNiCEi+9l2lghy00Ug4FJFzPWnj4GeYTTxCWct0NVGwAu8G8It29jOyZ8fgmAjsxqfb+y0xOD2FA41KIv/51YhWXR1r2ovlj/9LQg5rTeElA2uuv9gMpw/sNMHpfMnewT/KlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ5PPFBD6B1667A.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::84f) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.28; Mon, 30 Jun
 2025 20:47:10 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%4]) with mapi id 15.20.8880.029; Mon, 30 Jun 2025
 20:47:10 +0000
Message-ID: <a9d50186-bffa-4b3c-9d97-831269a84fbe@intel.com>
Date: Mon, 30 Jun 2025 13:47:07 -0700
User-Agent: Mozilla Thunderbird
From: Jacob Keller <jacob.e.keller@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>,
 <intel-wired-lan@lists.osuosl.org>, Tony Nguyen <anthony.l.nguyen@intel.com>
CC: <netdev@vger.kernel.org>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Vinicius Costa Gomes <vinicius.gomes@intel.com>, Vadim Fedorenko
 <vadim.fedorenko@linux.dev>, Richard Cochran <richardcochran@gmail.com>
References: <20250513101132.328235-1-vladimir.oltean@nxp.com>
 <20250513101132.328235-5-vladimir.oltean@nxp.com>
 <7d330d84-42ab-43aa-94f1-5240b67c49dc@intel.com>
Content-Language: en-US
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <7d330d84-42ab-43aa-94f1-5240b67c49dc@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------DuZSDPVGkBlljkQMVjvAUxoc"
X-ClientProxiedBy: MW4PR04CA0205.namprd04.prod.outlook.com
 (2603:10b6:303:86::30) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ5PPFBD6B1667A:EE_
X-MS-Office365-Filtering-Correlation-Id: cd03db0f-ca88-48c6-4d5d-08ddb8174876
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?V29mZk1BNDVncnQ3NTZoWVMwbmhRQTNrZnhyRUhza2R6T0d5KzJpTnVEUnJr?=
 =?utf-8?B?SGo1MkhaSVZQRHRhb29Fa0NmQ3VhYXVRZWFpblpVdmlLUEk0dU9wM3lPVHNp?=
 =?utf-8?B?d2ZjK1dXN3JEZkkrU055VGxwdWM3UTlGM1pmdTFEUmgvYmtQNjVQRjI3SzR6?=
 =?utf-8?B?N2VTeHdBVjdFZFpCWlN5dHdRdUZlakZ3cjBzSTY4My8zYXFiQytJSC9QUlEr?=
 =?utf-8?B?NXRmbS9UdndNaXQ2M2RHS0ZXa3RzWVhnZ29wcjJoZjVJaXRlOEROZ0Joa0Vu?=
 =?utf-8?B?cS80ditZRXIzTGxxZ1N5dm1hd21HRkgyOEowQkhDVDY0dHVsZ1NWRVM1bkdT?=
 =?utf-8?B?bXA1eEpZU2VNbWJjdVJ2ZmVSR0cxQmltZ3N6THdPS2F3NG5qci9adzVHM2Vp?=
 =?utf-8?B?Wjh3UnY4WmcxdnRqbGRHNmNZZTRaNTVSdkNKdysyRmlyUEdHUURsTVkvczdv?=
 =?utf-8?B?Z1YrODBqSkllZTRWbnBQUTlreFI2WVAwQTUzTEgyNjZGUHA5VjNQRWpWUlNN?=
 =?utf-8?B?bWsrK1JxNGxEMERKU2NmVDJoeGhZNExoN1RXTDhpZFNhQkY5ZFAxYWlpMTRP?=
 =?utf-8?B?bVUrY2RUSFlSMU5TRjR4VUsvWU84bzhSVDhKYjdLV3pzZ0g0YnJpT0lkN1Nl?=
 =?utf-8?B?RGI2ZnpveFhURUxrUFdmbWcwSmVQSE9ZUWR0ckJSNjVqdTNjZFFBcktvS2I1?=
 =?utf-8?B?bCs2aFdYc0xPVzloTU8vR0lZbzJ6NEZtbGJCcU9lSEFXdFZyQ1ZaQmZXZWZ4?=
 =?utf-8?B?Y2xSTGxxajhCMEU2WXFYbU03aVB1V0xyd0JsQUw1VU9DSWswOWNSK1A1WlZD?=
 =?utf-8?B?U1lRVDlhWHg4OHRoU1JHMm1pQlc2TC8yZDJCZ0tOa3QvNzVCWEt6N0xoVExl?=
 =?utf-8?B?WmUxK1dhKzFjdVNDdERhSEJ2SWpXalBSK0Q4bGd5U2ppWlNnNVNHbXlOZWww?=
 =?utf-8?B?bDRaaVMxZTRjenpjYkNOMXlkNVNPZlFlWWo0cy80OGJZdmhBdG9qdTZVR1o1?=
 =?utf-8?B?S200dHNySFA1SGROWHlLeUpzK3h5V0hTMGFVU1R1eGFqYlo3OE9keEFJb21m?=
 =?utf-8?B?S1FvNWdIMlJkVDdVTGg5UmRzTkJQTzNCeVRRRWxRUHdTSVBEQXlCWEpJWXl2?=
 =?utf-8?B?SEFJM2wrRERxbjVnLytHbWszZkNodEY4UWtWTnhxekwzMFUrYmJJV1NKbXRL?=
 =?utf-8?B?bGNaSFY0bEpjWE5uNmZpY2djci9nckwvcllaSWhpbWVPeFYyNmh5TkMzNmlu?=
 =?utf-8?B?SUFKUm1KaHR5bU5tYzI1SVhsaGlXK3JKQkpmbE1wK2ZjY2hCWkZVTTF5VGFn?=
 =?utf-8?B?VXVmZEp3TVAzWHB6Wlh3Wml4YWhtcndHTnVwUXhPMFc4OWhSWjZQbmtUdGlY?=
 =?utf-8?B?cWw3aEdIM2NPVVFZWEVpazRwL2RwOHZNTUdFWUZVWWg0bXU2MUp6OUdSUnhM?=
 =?utf-8?B?d3pvTGZ6anhISUxIR2poc05CVVFjRE0zUDVBa1BQR0piaWZGZTd5TjVleTVo?=
 =?utf-8?B?TCtFNktqK0E0Zm4xSjN6VUp6N2E5SjF0a21ob3BMaGtiODZ0a3BPd3REM1Ft?=
 =?utf-8?B?NVhybkNnSU9UMm05Q2h3aVJ1QmVzcjZEd1MyZllaUVFyckRvWWJaR2Ivbnpt?=
 =?utf-8?B?VjJJVmxsN1JSRVFYK0F5SHVpdGFmTkZleGF5a3J6UUIzR3VDd3R1eEtXMXVm?=
 =?utf-8?B?MlBFZEdXZklmaGxpdmJ1V2pJSDV2Mzd4MmJPYjZ3cWxPNDZtS0tZekZQSVhs?=
 =?utf-8?B?R1dxRFBtbHB1SmVNenl1dTd4M3FnRVV6a1pPS3ZldXordjZlaWRiQk9KYnhK?=
 =?utf-8?B?M3pHSkZBaksyU2tPNE1vSzVFdWNzc2J0eVQ0V0RCK1kvczU5K0hrdTVpR2Ex?=
 =?utf-8?B?djBTNEQ4RUplZ3prRFFJK1c0L2JSSGp2Sm1UQXM5OVdnT2ZHdDVUNi9WcWw3?=
 =?utf-8?Q?lpuPqpTyvqU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NUFYTFZmUEwrVmE1SzluZzh5Vks3REJoY0FwU2wvTTRYRERWelBnZUVLdlZr?=
 =?utf-8?B?Nno3WEV3bW1vekRuOWdYdE5CWXRtTVBCUlB6NmI4eHgyVWdWWmhlVVMrbHNj?=
 =?utf-8?B?SlRxQXFSOWxCUnJIc2c1cEhISVZXRFFPRW5VNTZRMDBTUXNmaFBoZjY4Nmo3?=
 =?utf-8?B?d1lQems0U2RUam9hUjJYa0t2Z2lHbXJtVFdZR2RWeHRjbjJUcHcwWFpTY0Nz?=
 =?utf-8?B?NExmanNMTzEya1dFdVBwQytYSWNyOHNBUXNOdGRaVnNYQXN2aXFqY1Vsb3Vl?=
 =?utf-8?B?d3B4cHBjNXJxVXpuNFhsZERXQkFKT2Zhc1ArcTN4aCtzQ0F3SUk0VXBhYXoz?=
 =?utf-8?B?WEErZ0lJUG9xMytpRE1FeHlwcEd6Z2dmZ0VPaVUyQXQwQnZnUFQrcWI0RzFG?=
 =?utf-8?B?YzdYc0FOWXZDU3BPMkNTcUM5TjN0Z1YzM3FJNEZKSktLQ0FrbHY0NEVUNFJp?=
 =?utf-8?B?dWgvVUZYU25Bc1Q3TnFpeis1KzlLVjlaRTM0Ukp0dkRnKzl4YVdsV0VvaGJG?=
 =?utf-8?B?TUpTeFBpaGd5UUtSbDdlUTNYOTF5T3JqRERUMTZUalo3V240Q0ZtYzhYUElU?=
 =?utf-8?B?N2V0UVRlcnVscEMyS0xzd3ZIYUZKQXp2Sldhb0ZYdXkzNjlkTUtIdGkrTXBy?=
 =?utf-8?B?RjQ4RzJxTU1pL0FSWUhLZmJVdHJKUERTdUZxRzUxTXBEZjBtZ1pOR29sNEF4?=
 =?utf-8?B?Y0FCN0xKOWU2OVlqSUVJdjZ5cVd6d2xERGpGdFpVc3YvK3hhR0I4aHlsTjAw?=
 =?utf-8?B?QWt6QkpSYXU3MTlXV0dIMFdPTDJ3VWZOQ1l0MUo3RTRSUGY2TkxkTEhFVGta?=
 =?utf-8?B?RlR2NjRQOXhubXNuZnMvZkF1bUIxOTV6enFFcmdIcEcwK2ZEZnZQTFdzMEUx?=
 =?utf-8?B?SHVTY3RvOWxjTUc5YzhNMXJMcm5HcVc1ZmlGckRETVkvVjN3cmtsTTRhdUlH?=
 =?utf-8?B?dDZXSy9YMzNoWWRRRnkrcSsvVWVXTU9yb1J1RXhZQUlOYjBWQmRjeWs1bW5l?=
 =?utf-8?B?aFJTSmhPbXJONm16TlI4Sm91SlljeitGVk95c3oyclB5TUY2eUVUVlVGaU5M?=
 =?utf-8?B?U1E4QWpGbkZjeUpWNEYxbEJDSGFmZjZQelY1cWZFY0FIdzBIeXNpeXJRdkJI?=
 =?utf-8?B?Nlhud05NNkh5S2I5bU5SZWlaWDhiWVZnZE5lMHEvanN0ZzdMWmJGbEdSZXlk?=
 =?utf-8?B?dzhFK3pkYVJGVU1MMEFjaEFNQUlzeDVkWFp2MEdrcmxuV3g4VkpHTlNSdjFy?=
 =?utf-8?B?SHAzTklqSUNGQUhveTViYmZTbWpWdzBpRGNJK0J1THR6WmphUEgxZmRjbDcv?=
 =?utf-8?B?RDhKMTcwVVV2YTdaaGd0YXYrR2kzN3YwZ3JnQXVIRkVZUTFMUVpJNHlTVTVE?=
 =?utf-8?B?N3RqSlJzc0lFTXVaci9SR0hSWG45TThMVVR5dW9oS3lMdXRhVy9Wd0dMRzlE?=
 =?utf-8?B?b3FsWXgxTVluemdmSWVRLzJoQXdYcVBxclpaRVh0aXZKVEtGc3BZcTVOczEx?=
 =?utf-8?B?dndpOTVGU05lM3BMMjJOZWpHdnJUVm9JWTdZMXgrM0pNbjB5VDJoVFVoN3V1?=
 =?utf-8?B?elJRVW5rRHMybTBNejN2WDhTeTFRZEJ2RFI1ZzB1WGRBVEltMU53ek1oLzRw?=
 =?utf-8?B?WTJ4V2dmN0J4UGVKcWxRTTEwSnMwMjdnMFVOYmovMHdJemRkc1FCUXNxRDNK?=
 =?utf-8?B?TDh6RFl2V21KU1dGLzNGMk94a0NUUCtxYTdNZHVxQkkwUDNWNnhWOExsYUYx?=
 =?utf-8?B?akFUYWFya3NhNGlSNitZekQydW02WTU1TEdhci9nUGg3ZjF2cFdvYW5qQXhl?=
 =?utf-8?B?Q1dUYWVLdTZiUStmd2U1V2NGeitlL3VCTFlvVWlaZXJtaW94SjFZejVaWVhJ?=
 =?utf-8?B?Q2dOQnVhL3NOWCs0K08zb2E5S0F6UWtDdUpucEpBdjZ5VjZTQXZHdG9jYmtu?=
 =?utf-8?B?aWM2Ulh2Ky9hK0dFclErSUJaTlpKNGVkQjZlV1k4SnZQbTdkbktKWVdmUU9x?=
 =?utf-8?B?N3JxSWJMQUdlNThHZE15TW4zMFZMQTU2a3pMMlZyaHFwODZXWER0MlJMYmc2?=
 =?utf-8?B?bllUUEtIUThYRUZQamxpck9Tazk2UzdKZ3pTU1hZMTJzS0htTUlLV1p1eUFj?=
 =?utf-8?B?aFBzdGpMaFN5eTh0VGVHQlhhTENTa1VuWnNObWlVVlQyTmtmSGtRRXY5b2dN?=
 =?utf-8?B?TGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cd03db0f-ca88-48c6-4d5d-08ddb8174876
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2025 20:47:10.0325 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iPc5/L3qTDmGEolsoOJDL2RRZn7gHX99kmo3yuRyoihHpIgoA9SvaHiMxUYD08bANfOwazdkrT4vUp859Z5K2nGKl04J8IO+KqRS98Hl1xQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFBD6B1667A
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751316477; x=1782852477;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:mime-version;
 bh=ra8O6F/8kDwjNV4yD+50SFT9fn6S9x+pcaImPis5FIQ=;
 b=SmBT+oHAYxrylCag7VuUd1ggxMtvRfK2hVPrHJJtrAmHDvkBWRvQWiOl
 3DOpdudwHiRR2FNHvJWa1bCcd4JLF7pKQWpVlmBYW7sHSPztloOn5HsEo
 i4mWvBG3o+drZAKBDKx/LrzMJ7JKc3iwp05hukTulJrLIi0JLuit9CNve
 cMdoGiqGPoxuxOdl2vXgVIGuQ3cVJPifV4rM5gFs6uNlAaRiPv9A1fMiM
 poW8NdpnRHYX6Gm/aOYD58ethKnbev2nq47/eO8wePtjE5V4cX5o9VOUy
 zftlf2j2HVRDKQO1FQWZFIC0fGSg4+w7NhksTXCbDvoT9ELRGS/fbslsi
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SmBT+oHA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 4/5] ixgbe: convert to
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

--------------DuZSDPVGkBlljkQMVjvAUxoc
Content-Type: multipart/mixed; boundary="------------lL9PUQvVgcOxRAS0J5pCF03p";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>,
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Richard Cochran <richardcochran@gmail.com>
Message-ID: <a9d50186-bffa-4b3c-9d97-831269a84fbe@intel.com>
Subject: Re: [PATCH iwl-next 4/5] ixgbe: convert to ndo_hwtstamp_get() and
 ndo_hwtstamp_set()
References: <20250513101132.328235-1-vladimir.oltean@nxp.com>
 <20250513101132.328235-5-vladimir.oltean@nxp.com>
 <7d330d84-42ab-43aa-94f1-5240b67c49dc@intel.com>
In-Reply-To: <7d330d84-42ab-43aa-94f1-5240b67c49dc@intel.com>

--------------lL9PUQvVgcOxRAS0J5pCF03p
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 6/30/2025 11:56 AM, Jacob Keller wrote:
>=20
>=20
> On 5/13/2025 3:11 AM, Vladimir Oltean wrote:
>> New timestamping API was introduced in commit 66f7223039c0 ("net: add
>> NDOs for configuring hardware timestamping") from kernel v6.6.
>>
>> It is time to convert the Intel ixgbe driver to the new API, so that
>> timestamping configuration can be removed from the ndo_eth_ioctl() pat=
h
>> completely.
>>
>> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
>> ---
>=20
> Ugh. Apologies for the late reply here, but this took for ever to track=

> down what was wrong in our testing.
>=20
> The ixgbe patch has a somewhat subtle bug which lead to failed timestam=
p
> configuration and likely other forms of memory corruption.
>=20
>>  drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  9 ++--
>>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  6 +--
>>  drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c  | 42 +++++++++---------=
-
>>  3 files changed, 29 insertions(+), 28 deletions(-)
>>
>=20
>> =20
>>  /**
>> - * ixgbe_ptp_get_ts_config - get current hardware timestamping config=
uration
>> - * @adapter: pointer to adapter structure
>> - * @ifr: ioctl data
>> + * ixgbe_ptp_hwtstamp_get - get current hardware timestamping configu=
ration
>> + * @netdev: pointer to net device structure
>> + * @config: timestamping configuration structure
>>   *
>>   * This function returns the current timestamping settings. Rather th=
an
>>   * attempt to deconstruct registers to fill in the values, simply kee=
p a copy
>>   * of the old settings around, and return a copy when requested.
>>   */
>> -int ixgbe_ptp_get_ts_config(struct ixgbe_adapter *adapter, struct ifr=
eq *ifr)
>> +int ixgbe_ptp_hwtstamp_get(struct net_device *netdev,
>> +			   struct kernel_hwtstamp_config *config)
>>  {
>> -	struct hwtstamp_config *config =3D &adapter->tstamp_config;
>> +	struct ixgbe_adapter *adapter =3D netdev_priv(netdev);
>> =20
>=20
> ixgbe doesn't directly assign the adapter to netdev_priv and this needs=

> to be ixgbe_from_netdev, since there is a wrapper ixgbe_netdev_priv
> structure. I didn't dig into why, but both get and set are wrong here,
> and are misinterpreting the ixgbe_netdev_priv structure as
> ixgbe_adapter, which is obviously wrong.
>=20
> See its definition quoted here:
>> static inline struct ixgbe_adapter *ixgbe_from_netdev(struct net_devic=
e *netdev)
>> {
>>         struct ixgbe_netdevice_priv *priv =3D netdev_priv(netdev);
>>
>>         return priv->adapter;
>> }
>>
>=20
> Whats odd is that the netdev priv structure is just a wrapper around a
> pointer to the adapter:
>=20
>> struct ixgbe_netdevice_priv {
>>         struct ixgbe_adapter *adapter;
>> };
>=20
>=20
>> -	return copy_to_user(ifr->ifr_data, config,
>> -			    sizeof(*config)) ? -EFAULT : 0;
>> +	*config =3D adapter->tstamp_config;
>> +
>> +	return 0;
>>  }
>=20
> Because we're completely pointing to the wrong memory, this overwrites
> who knows what since the ixgbe_netdev_priv is just the pointer address.=

>=20
This is an artifact of the work to refactor ixgbe to support devlink:

Both netdev and devlink want a private structure allocated as a flexible
array member of their parent structure. They cannot both directly be
ice_adapter, so we chose to have devlink be ice_adapter, and netdev gets
the wrapper structure. I suspect the patches you wrote were based on a
tree before this refactor, and/or you just did not spot the refactor
happened.

a0285236ab93 ("ixgbe: add initial devlink support") is where the change
took place, which merged relatively recently.

@Tony, I think this is a pretty trivial fixup on your tree if you want
to handle it instead of forcing Vladimir to make a v2?

its really just switching netdev_priv to ixgbe_from_netdev in these two
functions.

--------------lL9PUQvVgcOxRAS0J5pCF03p--

--------------DuZSDPVGkBlljkQMVjvAUxoc
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaGL3zAUDAAAAAAAKCRBqll0+bw8o6Kbt
AP43oUI1jZBeFY3nAZZxYPWJ9Xkv3aPubM7IQcuAKAA4CAEA4PCK5QXvEy6xoKzMVXLuiSB8yHcG
PJfO9T8MLps8DAo=
=w6kX
-----END PGP SIGNATURE-----

--------------DuZSDPVGkBlljkQMVjvAUxoc--
