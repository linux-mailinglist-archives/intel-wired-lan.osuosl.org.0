Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A938B2E697
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Aug 2025 22:29:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 03A508164A;
	Wed, 20 Aug 2025 20:29:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DUuY62sZ8tJw; Wed, 20 Aug 2025 20:29:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 560FA816DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755721779;
	bh=W6WWP3c+zSFgDSDqhXrUhtQnNtac7b19fScaxkhfl8I=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QUQ3gfrlH8NFROMOYtyu82zFcPDvoBRgbye1mdp+GuNb0vTPwYd/+QwrovmfuTY2f
	 N3SahhaWiAykpRsytJdKv9Hc30FO6yQUOyUapzQUv+pT7EV0Jd0RcOr4DT9RWLdeQt
	 OdhbHyJNhXXT2JCr40B/kKwNVJgR700K/0YNfKoC4860hngA1Pj74jDCpVUhO3RPrt
	 8AyxOsCPmRwEcH2GRnAx6isIma7j7ooGic2VJdMxQxju6Qon1Rx6YrzoHeHTIBrkDD
	 IAo4bFT+3W1W/dLDLVErr4d3rL/WKqJmDEAXHyL1QaNKMDZQAqySaWevxzvu4wY3Qb
	 gsMpjqrAgUDMQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 560FA816DA;
	Wed, 20 Aug 2025 20:29:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9D5DBE0A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 20:29:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8390D814B1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 20:29:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j99Tc-w9WjNI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Aug 2025 20:29:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AE1A98149B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE1A98149B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AE1A98149B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 20:29:35 +0000 (UTC)
X-CSE-ConnectionGUID: CPipZLyvSMa5ZFZ+jzqIcg==
X-CSE-MsgGUID: hxnZpIgtRc2aRvIjGDweWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="68706488"
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; 
 d="asc'?scan'208";a="68706488"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 13:29:35 -0700
X-CSE-ConnectionGUID: Cr2Cr0dyR3mz3QgYTYuF8w==
X-CSE-MsgGUID: S5E9H6+JT06XvYenP8Zo+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; 
 d="asc'?scan'208";a="172440798"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 13:29:35 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 20 Aug 2025 13:29:34 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 20 Aug 2025 13:29:34 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.49) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 20 Aug 2025 13:29:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZqGG9rIyJHqE2S0OqbueDB3o/keKSAfL0okPFNLXrJTdznTK2z7HniD4ZmDGNvMq9OY3v8kOZhJLsZB83HOc4g0tfdsnxV56bkeWSpY0xLi3vrr7GvWZdCUSpC82tsUKXyzMINWvP2noCwa0B0A2zarOoSF9uiRGZS7QDS8hrkDJegFH5UsUdEcIHF4dtTCY/R6/HRpY4U3p1Ll69zGIUMsn9wJQ2NKDImVHrZG4w1Xj8oZADXz7wlIrSzXmcyauvYxDEDYCCi5BxgYuqBa0jbCtsR2Hlj27hhOcTzLgszq7fz/n6NSFPwWLfj3VNGAFHQFMQgdZsZqJUhrEXrVbng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W6WWP3c+zSFgDSDqhXrUhtQnNtac7b19fScaxkhfl8I=;
 b=tzh1Tl6kiKgsHkmHpHmjqILMmLNuFnY7yiO9+W02y/FksYOcLtpIOC7XokAd/6Qyc9sKqPQltQ3BVNf8kv7NqBhVpm8wNvKwLeJ8cxuQtaxv/MYyUOv4JmxANkE4T9SFz4eljzFg62UIA5E3qeHEN9QGRdTliWgB76BfgzzQBb6XuQZTlbZLk9Pihiinwg0fmgt9W8Clq+QUmT2xbL1KeJFJd70S0K1nHzDdGhdj9LVeLzEzoGX6tMk/uqcFwyo0CyOSWqMgAAr2STkCYUkTNw7Rc+YFLGB19FeLICz6JX612jb5iqt++CqD4msIzeqb4jYwg3PR54o125XJnlpVaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM3PPFB266726CF.namprd11.prod.outlook.com (2603:10b6:f:fc00::f46)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.13; Wed, 20 Aug
 2025 20:29:33 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.9052.013; Wed, 20 Aug 2025
 20:29:32 +0000
Message-ID: <81c1a391-3193-41c6-8ab7-c50c58684a22@intel.com>
Date: Wed, 20 Aug 2025 13:29:31 -0700
User-Agent: Mozilla Thunderbird
To: Miroslav Lichvar <mlichvar@redhat.com>
CC: Kurt Kanzenbach <kurt@linutronix.de>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>
References: <20250815-igb_irq_ts-v1-1-8c6fc0353422@linutronix.de>
 <aKMbekefL4mJ23kW@localhost> <c3250413-873f-4517-a55d-80c36d3602ee@intel.com>
 <aKV_rEjYD_BDgG1A@localhost>
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
In-Reply-To: <aKV_rEjYD_BDgG1A@localhost>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------sCqNIkIq5RKPQIw0U3pHwRmm"
X-ClientProxiedBy: MW2PR16CA0050.namprd16.prod.outlook.com
 (2603:10b6:907:1::27) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DM3PPFB266726CF:EE_
X-MS-Office365-Filtering-Correlation-Id: dc5cdba9-a4a5-44a3-44ec-08dde028457e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MnA4eS9xK0Rnczd0c3lYRWovaDNMWXFycThpQW40S2x5ZjQ0SW5PYnlweGVw?=
 =?utf-8?B?eXBCcmtmR0xMYUphbWcrWllHb2hJd2ZDZWlKQ0NLKzBGdmUzd1FXbW5OMDVV?=
 =?utf-8?B?U2szcmpPTlF5MUdWVjMwYlNtZGo4NlVlcmdsbUZ2d3BOc2NId010aWJnbmJN?=
 =?utf-8?B?dzR1d1p0NWErbGpSNEpyWVFGSDhFMk1MejJBckdkT2RtK3RpRC9YUmFoM1JH?=
 =?utf-8?B?amVMUnV5M0VXOXp0NTExeEpjQ3dqSmpmNThQeGpOaC92NGNtSGxRejZLNUFq?=
 =?utf-8?B?WHQwb3BDK0hldGdULzlERWwxa3BzVjdOdXBmeEdPNU5hUnpPZFhuYkJEak91?=
 =?utf-8?B?S0V6d0lXR2ZLTUpqdGxuL2lpaDNJU2p6UG5HNjB0RlpJdmJ2ZGtvYml2eGZq?=
 =?utf-8?B?RFIySVpVZmdpbzBsY3lCeGNja1RtVUxoNDF1ckN5Q0w5RzhZQTc2M2ZPeEZh?=
 =?utf-8?B?aU04d2QyY0ZJWGVOdFZzbXlKZkhySGtFQlR5OVoycmxmcWx2WXlDVGM4Q3Jr?=
 =?utf-8?B?YUFpM1VqVWhEM3F0NkYwN2hMbXVqZWg3Ty8vTTlTMVZGaVhqMUpUd3ZmTDBj?=
 =?utf-8?B?Y045Wjc5K2VmY2J5MHR6aTY3dUhOeW51YUM0djVpL2VySlpLUjdBTkthMlhz?=
 =?utf-8?B?eTBIZ2EwMDZLLzNRM210K2dqL0lZS3IzT3FpVXFBRjJ0Z0M2ek9VVUZDbFFn?=
 =?utf-8?B?N0YwaHNzdzRIMnc0aXc5QjlhQk0wTlJzbmYxNjMyOVcvTExPeWhWWnoxeXRH?=
 =?utf-8?B?RklQNVY3T2JuNlR1UmJNT1RjMU9nb2YzU1BtZDI2UkpDK01NcThCQ3JzZWNo?=
 =?utf-8?B?ZHRzeEN4c01ESVROM2lrNkhnSnJMWCtraFFya0R0dXVkcGppbG9Oa0x3ZHE0?=
 =?utf-8?B?UFdCT1ZSQlRVbmlhK3pRNkJudStyNjN4VEhzd1FVMGduczRlVC83WHRkQnZS?=
 =?utf-8?B?bGZ1M3ZTWkNla3FwNHhGOVA3NnRubURtSGdwazdEb3VFaFZJYm9xSWZIMEpv?=
 =?utf-8?B?ZkFCc28rOHQ3aUl3NzM0S2k0aHJaYlpIUnBGSG5JVCtqSHF4RkNWOENLRHoz?=
 =?utf-8?B?bDlrZDBBNVY0bEYzTEM1TE43WE5TdnI0bUJVUWFhN21KNGRGMElUcTFiTWFv?=
 =?utf-8?B?YUhvTmNBWkswYW4xbmdVQzBMZWNMeEVXRENsazNMckNuTHJ0KzRQRklpc3ky?=
 =?utf-8?B?dDVSOHFuRmJKeTRzbjV0UG9vVGcycDJHN3FyaGNFRDluQWdyRVNWRkM2cnJI?=
 =?utf-8?B?YXFuSCtCd0hNUmdVVGhTaHVTTUswT2lqNHl3L3VlUk5lZ2h4RzVha0Zpd21S?=
 =?utf-8?B?ZWZvQnF4WDFIZ2JUanFSRmttZW5hRDQyYWdtUXFpZEtoR2sxVGMvUzR2Vmg4?=
 =?utf-8?B?alJoV3IzeTZVTmszQThTemhEZjEzMEtHQW1LdjZMblVIR1p3Z1c0VW50K3R3?=
 =?utf-8?B?VnBQSUVyamNMMFdNVHd0R2lEZjkrbGtab0pIVFVWdjFob0MzRXBOM0xUK01z?=
 =?utf-8?B?ZXJ5SzlhWVlQVlJBVk5XTGFZMzBCai9BWjNUUGNxK0pkSVhXR0JYb1VJM21r?=
 =?utf-8?B?ZkFKWGoxNFpvMnRFclJHc0ZiTUhQN3hFazFRbTIzWlRLQ3RWeDFzVHBGN2hQ?=
 =?utf-8?B?amJtUTg2REJJQ2FydTkrZjNjdmQ4V3ZuUExnWDFSZGZIbFgwemNwUjJVQzRh?=
 =?utf-8?B?K21pamlmVEpZUWo5blJ3WDg0N3JsNXo2eGZGNTdCVUs1alU5R3BqaXlVekpJ?=
 =?utf-8?B?K1o5ejhTMWNjbWdOTWs1Q0lDN0NTREwzTWFmRnNvMHRqcHlxUjdMYnhFbDJK?=
 =?utf-8?B?RmwwdnA3R2ZsWHhCdkVGRjFSNFVRRllNaXZpbXg1WVF2UjBKWkJpSjZjWXUv?=
 =?utf-8?B?WUpWWkgrQ0NhZlRuUjYzN1QwME1CQW56OVVxN3pzRE84Sm9rbE5rUTIreERm?=
 =?utf-8?Q?H0LtMIdGn2w=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aE5VRFJURzhZM04wSWpaLzc1ZnF3OUQvNDBhanhtZEpWbGdkZW5mbVBSZzlN?=
 =?utf-8?B?TUdpZjE3ZWpadkVNZjNMUHAwcGNZenRmSGRoZENSeklFN2FlSkpVNlk5Q3Bi?=
 =?utf-8?B?Q05HSEpGVzhkSnJRdzBRODhBM1IvVCt3WEN0YjFiUW1sU3JsWU56UmI5QXl2?=
 =?utf-8?B?ZmNHWjEzenM2M2FoZG9PR21BVHg5L2RHMjBheWFzS2VNcjhTa0J0Y1JsMERN?=
 =?utf-8?B?Z2dGbkFTQzNQRlR4TUg3UEpqbndsMFRaZWZraFNzdGdQRUZRMk96VmFVcmF6?=
 =?utf-8?B?NFBRY0pST1c5cThGLzZDdnl3dXpCUndYUFJmZFkwR281WTBHLzNZakVpb3NT?=
 =?utf-8?B?dG9yeHJBYUdsOUQ1UWFyckJJdnM2ejc5WGI0b05VeHd2UG1HcGxsand1NFk0?=
 =?utf-8?B?SHl0NnV2VWt5Z2FWdzlGblNLNGpsbTV2TGl3SFZ6ZnVNK1JXRHJhV0I2Wmtu?=
 =?utf-8?B?OG4wNUg4bzVqM2JFc0VYVGJaVDdmZWpEUE52MmUzOHpOSmNEN2dNczlaRkdC?=
 =?utf-8?B?V2FHaEJRY1QvY1RiRTlnY2VXK0locEpOcDRyZDlIR3NkWFhPRnhoU1ZJcWlk?=
 =?utf-8?B?Nnh5YjNBREwrM3JNTGh2SXlRM2FHbjYvZUgrMk9WRnNsYTI4QVc0Qm9YdzhD?=
 =?utf-8?B?d0FGMENBZm9QN3h1Qmk3MjNudDAvdHdlVmxESnR1KzF6Qk9VdUdHempqdFhm?=
 =?utf-8?B?aXpCdnNyT215d3RGL3VpcG9RbmNyMU1KMW1yYURwclU2WDdoTkxGYS91aktX?=
 =?utf-8?B?ZmsrSWNKdVhFaVl6NFhUNzJRZE51Y0FWYWhFZ0dzOFF3VllJUjMwcnZEVnJX?=
 =?utf-8?B?ZkpiVEZxN2FpeXRnR3N6RENCZVhMUnVnUFM5Z1E0U0ZsakxiZUZhMWlnQjNu?=
 =?utf-8?B?NHNndnU1ZG9OWTZEd1o1TEJuMlRqM2FZSEwwaHZaMURWUUJicGFlQVhhT1I1?=
 =?utf-8?B?dmlnUVRsNGczZFFIM2hYVDYrcXI3K240QmI1ZHZiVVVxcmtMWFFZVzVQVWgw?=
 =?utf-8?B?N3pQMFZoWkIxdzJTWnptSVpRRDRjTjNEaWt6cDVkSzRMOWxKS2Yxd0FpWldD?=
 =?utf-8?B?T3c1K1FxeDY2NkRWVjI3NHc4VUpLRkUwb2pMRXBNek45VEFxb1hjVHg5cnVv?=
 =?utf-8?B?ZGxOb0pId3J0WVZpYjBnN2ozQ1BTQkYya3lKSmJaV3IraWdmbGI3VUQ2Ymh6?=
 =?utf-8?B?NHFHRmJ3QVQvN2p0bXBsa2NoencxUUJYZlNxcnAyNStHSnQ5aUtGZmVwdjla?=
 =?utf-8?B?alJSNFQ3QlJUckUxSmN3RDRZU3h2OGFpSVdVdXJXZi9MeXNpVnoyR3lqZXRK?=
 =?utf-8?B?SlY0WmhtWURBd0FhZmJ4dGJjVG9KaVZrbi9xdjh5ekxMa2lkMjh4czdHWUJF?=
 =?utf-8?B?MWtqa1E3Q1FjYzlGVmNGZzdxMjllRVBzYkc4R0ZEOUNuR2hrSXZZTC9kcnRM?=
 =?utf-8?B?Q0pVTXVDY0Z4eFZ6cDJMMjZYMkJSQUk2YktkcFdxejdWcXZzcFp1RWxuNEtV?=
 =?utf-8?B?WCt6Vnk0b1pyV0srbGFZTzJYU29QZVEyT3JRMzlaMnZpRDFCM2tSWDV5am9u?=
 =?utf-8?B?SWR6T2M5SEJkdndlK3F6bkpReUwyNFlmUGNxYmNyakVFdVkzZHFoeUFSMGww?=
 =?utf-8?B?c3NJM3Q3NW1aVldkOGEyc0kyd20zREVXWlVyQkQxSUpXSjFGS0FYdThJTHVI?=
 =?utf-8?B?WGQ3T3dLbUdiNVFaZmF2cURPcVhYM1B6V2hTbjYvTW1xVEQ4RkhBNUVNdUtL?=
 =?utf-8?B?ZUVJb2ljcHFERDVtcXVNdXBURFE3YVFsQXQyYkhoU20rNWdJZU4yeVc5bFdN?=
 =?utf-8?B?dDFUbXJ1TXhxVksvVms3YjlVeW5nM0NIMEp4eXY2dExmV1BpN0dYUGVIK3or?=
 =?utf-8?B?OGJDZ3pWZjh5OE1Ib0hHUUVzbkJMTUhzS3E4dkVvZnpCUE1aTjJoNTNOSVNu?=
 =?utf-8?B?L0RBczBvYmJyT09ROUkvb0hqWHR4N2hpMVFMckN5Uk50Z1dXSUxEd09PdzhD?=
 =?utf-8?B?SUVYMDk5VldkcWprZ2I5aW9PV1FoYmMzdG0zK0lUOEJyWjRGWGMzQ2o5NXNH?=
 =?utf-8?B?ODZZTG1kMzZublJHNHRnaWF1R2NNYktUVTJmeUs1N3I3UVppM0VZcm45NzNt?=
 =?utf-8?B?em52S2hBRWpsbWowZWx3UDcybFkyd1d6QUp1a3ZsQW9OdTV4UlZqUjhBRDJL?=
 =?utf-8?B?cFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dc5cdba9-a4a5-44a3-44ec-08dde028457e
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Aug 2025 20:29:32.8919 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /OiydwHENfo/L8f3wZ3DWXlKAwHMIz2Dd7onnuztjZWOReDp+VOhcEfCYsa/D/kXqp0u6wjiiJDIpbsa6TgWLI6ETPWcBvLKmm0j+RUPjc8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFB266726CF
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755721776; x=1787257776;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=ktSGe08t5zAhm9OAeFlPl+gDicZmLuaE9KaESh4Mmmk=;
 b=WXs03a9F4FLnGjj7NjzTShMnPvMV4ou/cjEMlTtVrrDXro4y+GfWoj/g
 V2s+Zuv28+9yUWm7Itau+M5h+Dd73g8F6XdR5Z7Ia/w1U7VmIvkWw9vMb
 fbPJPd8toedGYIKH+B+O0KvmIBlEezakyjl5TEs452rQ8BbAkgghJDI1q
 QVTvVnizAp+cpJBAk4Bf+c+nRqqAHIKUvkXXdoV3OQ8MhAT3NyoZJcwIk
 YYwZC8oFtRr3wuyu/8Q5HuaBzHA7hzefnHP5F8TRNSsfx81FNBIc23bd2
 c1xYZQe6CJw9OenKMMzH77916IBXRC98inRJhIzdVynygolWxBvzVWQ3g
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WXs03a9F
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] igb: Retrieve Tx timestamp
 directly from interrupt
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

--------------sCqNIkIq5RKPQIw0U3pHwRmm
Content-Type: multipart/mixed; boundary="------------XqR9oFVG8vzSjuDAeArUTFYY";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Miroslav Lichvar <mlichvar@redhat.com>
Cc: Kurt Kanzenbach <kurt@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <81c1a391-3193-41c6-8ab7-c50c58684a22@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] igb: Retrieve Tx timestamp
 directly from interrupt
References: <20250815-igb_irq_ts-v1-1-8c6fc0353422@linutronix.de>
 <aKMbekefL4mJ23kW@localhost> <c3250413-873f-4517-a55d-80c36d3602ee@intel.com>
 <aKV_rEjYD_BDgG1A@localhost>
In-Reply-To: <aKV_rEjYD_BDgG1A@localhost>

--------------XqR9oFVG8vzSjuDAeArUTFYY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 8/20/2025 12:56 AM, Miroslav Lichvar wrote:
> On Tue, Aug 19, 2025 at 04:31:49PM -0700, Jacob Keller wrote:
>> I'm having trouble interpreting what exactly this data shows, as its
>> quite a lot of data and numbers. I guess that it is showing when it
>> switches over to software timestamps.. It would be nice if ntpperf
>> showed number of events which were software vs hardware timestamping, =
as
>> thats likely the culprit. igb hardare only has a single outstanding Tx=

>> timestamp at a time.
>=20
> The server doesn't have a way to tell the client (ntpperf) which
> timestamps are HW or SW, we can only guess from the measured offset as
> HW timestamps should be more accurate, but on the server side the
> number of SW and HW TX timestamps provided to the client can be
> monitored with the "chronyc serverstats" command. The server requests
> both SW and HW TX timestamps and uses the better one it gets from the
> kernel, if it can actually get one before it receives the next
> request from the same client (ntpperf simulates up to 16384 concurrent
> clients).
>=20
> When I run ntpperf at a fixed rate of 140000 requests per second
> for 10 seconds (-r 140000 -t 10), I get the following numbers.
>=20
> Without the patch:
> NTP daemon TX timestamps   : 28056
> NTP kernel TX timestamps   : 1012864
> NTP hardware TX timestamps : 387239
>=20
> With the patch:
> NTP daemon TX timestamps   : 28047
> NTP kernel TX timestamps   : 707674
> NTP hardware TX timestamps : 692326
>=20
> The number of HW timestamps is significantly higher with the patch, so
> that looks good.
>=20
> But when I increase the rate to 200000, I get this:
>=20
> Without the patch:
> NTP daemon TX timestamps   : 35835
> NTP kernel TX timestamps   : 1410956
> NTP hardware TX timestamps : 581575           =20
>=20
> With the patch:
> NTP daemon TX timestamps   : 476908
> NTP kernel TX timestamps   : 646146
> NTP hardware TX timestamps : 412095
>=20

When does the NTP daemon decide to go with timestamping within the
daemon vs timestamping in the kernel? It seems odd that we don't achieve
100% kernel timestamps...

> With the patch, the server is now dropping requests and can provide
> a smaller number of HW timestamps and also a smaller number of SW
> timestamps, i.e. less work is done overall.
>=20
> Could the explanation be that a single CPU core now needs to do more
> work, while it was better distributed before?
>=20

Hm. The interrupt vector may be fired on the same CPU maybe? The work
items can go into the general pool which spreads to all CPUs, and I
guess the amount of work to submit the timestamp is high enough that we
do end up costing too much?

Hmm.

We could experiment with using a kthread via the ptp_aux_work setup and
tuning to ensure that thread has good prioritization? I don't know what
the best compromise is since its clear the interrupt is best if the
timestamp volume isn't too high.

--------------XqR9oFVG8vzSjuDAeArUTFYY--

--------------sCqNIkIq5RKPQIw0U3pHwRmm
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaKYwKwUDAAAAAAAKCRBqll0+bw8o6GkL
APoCmOpmt/7leIyVzz6A8bNd9z5mNJHy7laW9hSSGPCjnQD8CtgaH4SAdqvw18VHcTmkcpBkCiVX
UsLzW6Iw0cjKrAM=
=ECEP
-----END PGP SIGNATURE-----

--------------sCqNIkIq5RKPQIw0U3pHwRmm--
