Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +MCeINtQemnk5AEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 19:09:31 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C7659A7809
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 19:09:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 48359607E7;
	Wed, 28 Jan 2026 18:09:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bMGZYmqDbNLy; Wed, 28 Jan 2026 18:09:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F1FA6080E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769623767;
	bh=DLZDvvcwFss5V2bscl19XTCtTLpDWusabvu8+KhXidg=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CmbavFx0TpwNdsJEdzjgmm0jVKUdJ3Hx3w/1Hshj20vS/QQHpw3KxtrR5UlzoEU55
	 L0nJpC3esuPzfeuZ0ip33fks2Vao7/ZGwH15MFp6spFIScTWoip72m4EINRdSeJ1gY
	 tEHARL0iWfRAycCNwDl3HXBbce/lVzzo+IQqx+VuXEO3f6werqNvkE2D49eU030v/H
	 h93BT3VPm2fFthzgz4sE0/XmblVFz6B/z0RjIz5V0wZPuGDXdGTurc86SRUlheAzOq
	 oRJyy2hOZODI/ZjknizWOuRUgRZmelq4whtIg4m6QaGPR66LT4We9gJBzyZBg+4JVp
	 mZ3d83yh4R8vA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9F1FA6080E;
	Wed, 28 Jan 2026 18:09:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8FCA4160
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 18:09:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 74B4F4031C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 18:09:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MJiT9vPYOYpJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 18:09:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8CAB1400CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8CAB1400CE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8CAB1400CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 18:09:24 +0000 (UTC)
X-CSE-ConnectionGUID: 6v2HBX7FQJSemKg6UifM7w==
X-CSE-MsgGUID: NL/fR3X/RmOs64/eJELCjQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="81162881"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="81162881"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 10:09:24 -0800
X-CSE-ConnectionGUID: MoUxQXlYSjOLqfpODMwcjA==
X-CSE-MsgGUID: l9M9oyErRV2GFyojhOTXwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="207572821"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 10:09:23 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 10:09:22 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 10:09:22 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.2) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 10:09:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bTzCCObcreVhqf1OApRRBF1rNlaeRoZyfiqN96jKZK/0uXZv5dUPwf4qmQWf7hTXc7lLlnVGDsWO4aGM10lIJQm/JXOEg6MA1qHYvX0Cs1MxOXSp6mU+JPVPqGEeeB8cC0j5rFeimmomisp/4FabCvc5auBmHVsE0SbIuLnGTg+EHBRsa0Q7ufXlbcIG7jvbiMKuH2QGmzMV+oGETPV++sNRA9GmOTcigNrUF8TejPuHTa8+eGlUZTSViX0IbHz8SOQL5uWxbVLJzp0z2+HThkATFOWVILL3BdFCZhZNURr/ZtClATfRjQtY+psEKGSwlACVin2mQ3lbQ7OwGNdYqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DLZDvvcwFss5V2bscl19XTCtTLpDWusabvu8+KhXidg=;
 b=b6FvERCv3ueu5crMX9whcaOSdPjZzkRCE2+J1/kFj2/Bw4+AbhbE0/kNFYFLpyCoXvQB60r1D1xW0k1tU8vIx7wXnUsMpojTNa0QfmoEaVKUqNMpNJ7fUN33jDISMjVU3/MAhBPsyXsz+fDm2URsRcRpDOwXEYME4uEY0E0vbLhy2HF5HWDJ2pHjy247pSJo506cY3X2UyPxFHKor15p3AjGinEPeaEYwK14dyxfT6Jtv9Wl+JOgRzg8g0cJGsSZWa6GgYhVuE9uD8SlCmH4FT+hYs+R4j5Nh2q5L5+ZG5fbPaQzmd6FPZbYdBQQvQRKtSI9l9Zv2+e74wFZyYsshA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ0PR11MB5039.namprd11.prod.outlook.com (2603:10b6:a03:2da::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.4; Wed, 28 Jan
 2026 18:09:19 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9542.010; Wed, 28 Jan 2026
 18:09:19 +0000
Message-ID: <5b8fe4ae-25a2-4967-bb83-a52dd5907951@intel.com>
Date: Wed, 28 Jan 2026 10:09:18 -0800
User-Agent: Mozilla Thunderbird
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>, "Mauro
 Carvalho Chehab" <mchehab@kernel.org>
CC: <bpf@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>, Peter Zijlstra
 <peterz@infradead.org>, Randy Dunlap <rdunlap@infradead.org>, Shuah Khan
 <skhan@linuxfoundation.org>, Stephen Rothwell <sfr@canb.auug.org.au>
References: <cover.1769617841.git.mchehab+huawei@kernel.org>
 <f370f2a0dfcaa679c9969488c908eaac82026031.1769617841.git.mchehab+huawei@kernel.org>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <f370f2a0dfcaa679c9969488c908eaac82026031.1769617841.git.mchehab+huawei@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0236.namprd03.prod.outlook.com
 (2603:10b6:303:b9::31) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ0PR11MB5039:EE_
X-MS-Office365-Filtering-Correlation-Id: cf2a4396-37f1-4b63-3265-08de5e985b6f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|1800799024|376014|366016|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M1pEWnFZZTdtWC9WZDJwRVNib0dibmhqdlk1OWUzaUQ0SnBuZmpQNW02a0pD?=
 =?utf-8?B?OUZld3A0ckl1Z2lONUFybUtmK3Z0QnNHUEZaMFFpU2hvNUVzR3N1MXA3OFlz?=
 =?utf-8?B?WWtJcTBDUVZZOHA4UlJWT3ZqMkNsZ0x6dzMwRDFsUklJOUVaS0lzbWtLdXd4?=
 =?utf-8?B?Nkx6RGlVNE1kWTJTM0U5eEljOG5zaUM2VEsyZXRTTHBvMm0xeHIyRlZhNmNW?=
 =?utf-8?B?S291RndFcVRaMnJDR3lwNUFzV3Y1bnlZaS8zMzZ0aHh4YzVUSDlQUzNWanZT?=
 =?utf-8?B?alZmZ2NPZHBCODV4bW1yTjIyR1R2WjhSc3lvdzA4YmZpSk9ibUhtenZmamZW?=
 =?utf-8?B?N3FrcHl3Rzd5UmlwaTQ3V2ppbkh0Q2pDTWNBbTNpQXpib1AyWXYwNjBzWGlx?=
 =?utf-8?B?VTVKblB1dU9GV09ORnluTC9ZMkJOWWtCUkpxL210UDZQK2lvNy9ubERQaGR5?=
 =?utf-8?B?bVdPSEpaVkhaWkR2bTZmSjlPQVR0eHZ5cmdxTEVtYlNtYlM1c01vSy8zYzdk?=
 =?utf-8?B?Z3NaT3FPWk15RVZxRURHS0IxaFh2bXFSTGxONk9ZQkJpM3VGZ3dtM3RMeEhP?=
 =?utf-8?B?QnVNazRYWFk2R01OQkF3amlpNnRxU3B3SiszQUh4WGQ2WENWZE1ud0hrTnox?=
 =?utf-8?B?NjBzZnArOXFTQjNwSmFKU0RSZ2ErZldRU29iYmRKQmt5MEQvOXZTVGFQdll0?=
 =?utf-8?B?UWM1U3FyNTZJUXl4SjNtWW1LYnFBQjd6Ly9YVEVjemNOYUozK0VyZWwwZlRh?=
 =?utf-8?B?K1dnT01sTVBOM21GRlJoSzFaMzdFbG5qK21saEEybERUQzNkN01jRE9uN3JY?=
 =?utf-8?B?SkplWDFrS2FVYnhMS1JXOFRFbEtUb3BNZkFrd09OYjVNRWpZbHQ5QUp6SW9h?=
 =?utf-8?B?b0VFUmZ3V0pZWXJnT2N1TTF3cWZIZTNERXRic21iWVRSN3Q5OXZmQTIzcys0?=
 =?utf-8?B?bDN2dmtKSllKYlZDWmVnTlNKMTJCNlp5VU9OMTBzcXhYOTdWZ05iNGNLTXBm?=
 =?utf-8?B?dWhjbVdpekdEVVdrVDREenU4QkxIYW5HczRidG9jT3hsS3N1WWRkUmRKeGVK?=
 =?utf-8?B?TnFrejVidUZnajlsaldlRVk3ZEFBb3VQZGxvTHRDYm9HdVpMV1h6MzB6UXEx?=
 =?utf-8?B?NFR6VkEwOHVndDNMVzE5MWJTY2djTGNDdk5pQ1JTZnRrZWxWS0V1ekxsUko4?=
 =?utf-8?B?NGFJcVlRU3VsMDFNTklPbXlGNFhuNlo1ZFJ6K3NRVEU3RUFPR2dXZjVFRG04?=
 =?utf-8?B?TmV1LzJFdVFKMlU2Q3RhcHZ2dHRaUGFHcmVvamEwZEJYQnJ6RUZJNG9ISFlB?=
 =?utf-8?B?bFk4MzVOOFl0UmRIR2QzVjN3ZXMwY1BlZjBrc2Jaa0xQY1I5Rk1TSUdscWhV?=
 =?utf-8?B?VHZ1NEpqcEtWbHhRS0x0U1lqTG5pc0swUHc1V1VMNjlzblNKZWRXZTVqWkR1?=
 =?utf-8?B?R0xFSHFOZzRhL2RDenhtRXB2UEZkdzUrRWdFcHAwVVd3ZWJVVVd1T1kzMEpi?=
 =?utf-8?B?MkRVNHhVMS9leldaTDdyZGh6UG1XendVZHRGdFo1c29kU2xHd1dzMTh3cEps?=
 =?utf-8?B?YkdTUGFycHMxd0g0NzFmbUZzMkgyenBYMVBiaGFMZExaQ2Z4NDQvdmkrblJp?=
 =?utf-8?B?UmZzM1VmUTFrUUVlcFA0Y0VKbzRVZ3JnaGk4MVgxcnRRZ2Vvd0ZnaWJBeGhV?=
 =?utf-8?B?YUJPbUJxWjhWSVdkNnVvb2xGWm42UEdDMUdFeEY1MVYxdjVsWnlnWGR2cVVU?=
 =?utf-8?B?VE51bC9VVnRORlJFSUY1K3VDaUdJcEJxY05ZV0lZT2hsWlFwVWdsUWRIdC9J?=
 =?utf-8?B?OTBKQzJodGU3K1h6ajF6QXlScjNiczc3NjY2a3RDbUZ3R2lVM05ZOHdGYURm?=
 =?utf-8?B?ZFZHZHNhb3dOcHI2eVl0RVZjSjRaRlFPNzFGbGNqUUhqSVNwcUtiaU9GcmYw?=
 =?utf-8?B?WGgwOFFwZGJsdUNHZEUrb1pJS1MrVmRaYWNmS0pjYTlCaWJ1RWVhUGREUFI3?=
 =?utf-8?B?dEowSGIrTytOV2FFRXBrVGEyR2JIK21yME9MaWEydXRNeEE0cFJ4Y3B1K20v?=
 =?utf-8?B?Y0VGYzFvSlo5S0Rxdnhld0pyaHZZYlpxK3lXNU5XWmpUWGxWNkhUZjQ2MVNh?=
 =?utf-8?Q?K6ZY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(1800799024)(376014)(366016)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TnY1OW9Wam1nYXduSitZeVQrd3pXSzhSSDRBS2c4WFRlR0RoNE1WVWdMdkky?=
 =?utf-8?B?aTVaM05MWkZkMTBKR3habmZaeTNJeHZYa2ZmVjN4VWh4eDh5eTJ3TlZaNGt2?=
 =?utf-8?B?SnYxYkdDVmtZL0sxY0hFWkZNcm90RU9sbmF2djBwWFBvZFkvbmdIUUZjSkxN?=
 =?utf-8?B?RUJTcXJxVkszR3VsWVRqV2dCb2JFb1NMNUp4aWFBUlJxMDJ1dDN3M2pzWEFj?=
 =?utf-8?B?Nm5HbERLUTMyT1hraVY1TTRGT2V6UnVBNDJLeENGeEtuaml4MTkxVk1TSmdo?=
 =?utf-8?B?T2FaelFkK05QbmwxQzlhVCtLUXl2VjF3NXNPa3ZLdmJ4YUNGU0tJdEhkVjZn?=
 =?utf-8?B?M0FMT0Z2c2F3TjlYRHMweHV6TFh3SUhsK21RR2pnQzBwM3ZiR1BLUFVEMnMx?=
 =?utf-8?B?V2h3ZnRmSEVJNWhUY2w0dmdkMndlNW5PR0RMYlQxeFJNMFR5TExmb0pXeU4y?=
 =?utf-8?B?MnN2Z01RWDR3NExpNWJ4QmsyajBDNzQvZjlMclVZbGZscm5TczcvKzdwcy9y?=
 =?utf-8?B?c1hHZktnYWlCdlZCc3g0Yi9rVUV5U1cza1pyRUxhcjFOTVhoMExuVmxiNmFS?=
 =?utf-8?B?OE9Kcm1nZUhZTUVUU3FJOSswU1UweUExdHhOWTBiblptakdQYk9BTkVxdkky?=
 =?utf-8?B?MS94VnZHSUJxQU5zSDIwdlI1cUZJRExRMUlEYmxKZ1l6WGJuYmNyVmFNRWFz?=
 =?utf-8?B?VFZZNHZJNGkveXY3bEQxR3gvMjg2azJpU0FoRUlaL3ZRNEhQR1JIM3NJa3ov?=
 =?utf-8?B?eEgrM3p4TUJVb1lmLzdTcVBlL29BazNOWW9xeVFEUjZlelBKN0JaWnRyQmt5?=
 =?utf-8?B?QzJoVjRMd0tWUW14bnFSRmxPU0krQ0EvZmp2REtJUzVPeDRyV3A0SXd0bytO?=
 =?utf-8?B?QWVVUmg3SE44a3JPcWFNRnpHUTQrYnRyVW5XK29WZHpOVm04RnlIMkoxZytX?=
 =?utf-8?B?U0w5QmlIN3pMUDN5TEJkLy9kVmNVdWw2WjdTU3hodFlrRGw1d01QbDBVNGFZ?=
 =?utf-8?B?cjlFQnpTWkNSeURoREFzYTJHUEJtSGpxbWd5b1djUXcvSlNqMnFvVzB6VFdT?=
 =?utf-8?B?bHFmcHJzWjRQcWNVVEpTMjRIM3BPZFBtVUhPMkg2UTBqemtzYXcva1I1T1ZY?=
 =?utf-8?B?MnhSRHBMbHVEeXRwZUdHZWppQXlKYm9vcnZiNlF1cXh4ZkZyczhVVGlqellx?=
 =?utf-8?B?bkZhbmw3a1JWYXhuUktmMDhVUXFMa3ZnWEtjUXZ4ZHlHY0ZtYzNyMDdORGJ6?=
 =?utf-8?B?d01GaDA3bi85SC9jSVpDU2JQY0pHeGpTeW1wb3MrYXRwQ25JVUJsb1BlZXo3?=
 =?utf-8?B?V0NzTkV0UmpWdHhnaHVVYWF4aXFFN2pYeDA2K2V3WmRiWUVJVXhOWWFwakN1?=
 =?utf-8?B?TjdlYTVOc0drZ2hFSGlVQkZqdUtWVUhLdXpVaFdTRUJDVlI1dVpvM0ZucnIw?=
 =?utf-8?B?dWZ2U0xmQnBhTHdxdWFBK2xzOXJaZmE2QVUvcFkxRjRoWVlMU1RmaHowWDl1?=
 =?utf-8?B?K0tCdGxveU11MVdva0tzQmRTa28zWmYxdzVROUlmU1QyZFZxZ2ZEbnpMcGd1?=
 =?utf-8?B?R2RFWVVlV1A4VzJBMktsdmJ5eEJNQm9LRHk2VlhNNVlmWk4xaSs4ekUvdjFr?=
 =?utf-8?B?NDBEZUU2TE4vQzZpY1FkWnVzbTB2UG5VRTErKzgzNkFHakkwa3dHU1RjTnZM?=
 =?utf-8?B?Y0ZhYmMzNDhqaUoxQXNBaDM4cjU4Vzh6VkpHa2JpcGtnS0llUWxKMXZXRG93?=
 =?utf-8?B?c1V2aXBRcWVFWnVIYXZJU1k1Y3JaeFRRQnI4QWxSb1hlejdFUXRzMFhYd0c5?=
 =?utf-8?B?NTltcFBmamM1M2pQS3B3Nm1oTk1YV3FuUmFXTjNYKzdWUUlOVVYxU1Nzazlp?=
 =?utf-8?B?cS9yWXdpa1p2eHEyS2tJQ2VaRFVNM3JKWGVzTVdJSUxJL2Q2cW5EMGdhdUxG?=
 =?utf-8?B?MTFwbVpjMnR2a1VQYnRXcGJjbk9HaGIrK08rY1pzN1JGdWw3NEY4N2hVZ3Zs?=
 =?utf-8?B?QllKRXgzTmZHaEpmUTRVMzd1b2VyR0NTL05PKzJrMzFheS9VZ0tNZVcwZDV6?=
 =?utf-8?B?c0QvdjdPZ0JZU3MyUmhPdDVZWi90Sk5GbXFHc2dwLzlzeTZHM1NlbFRmbjdk?=
 =?utf-8?B?c2dnRWVzdVhIdFByU2t3Sk1NdVc2ZjNOZjdrR1h0T01PKzZzSnBxekpjN2l4?=
 =?utf-8?B?aG9CanBoY3kyN2M1TUFYYlp4V1dMNkROZW1hT215M1BlUHB2bHdhZlowakRZ?=
 =?utf-8?B?dkI1ZUtNKzZndHZpY1Zsei9tR1B3TzVtaW5NTWhEL01USWtEbHFCNTZBaGhE?=
 =?utf-8?B?cTlJVUhucTNIU0lnOEFxaWlKdjNFQmtMMTdKYjgrOWo3SkttZDlINFdYYlE3?=
 =?utf-8?Q?kqZthGa1ee9qlFH8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cf2a4396-37f1-4b63-3265-08de5e985b6f
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2026 18:09:19.7768 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RtlYfe9ehkxWqWnIl4Fe84Uus7w/3qDUBs1FRrspL0cL0/HK25Wg8Wa9hVbgTYMsEMiMRNBBbLTLUt9+MmoOCdQAF9fREqMNm9ANE6GQM14=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5039
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769623765; x=1801159765;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mKSix3Bj1TpfC0CYg0LTD2eRs4bKPQMxTj7UNg/qnz8=;
 b=JSJ04H/8qq+ULnnri15JC879tBMXJDw4QQyiFMge/RJ8DkpA0wNAYWCV
 XFuz4RRO1ba/kNKpVWfVtQfZOnHU41I6iP4CAewT2dFI7H3kEq+NEJias
 CDq+BUYTlVMbnDCZdcDHIphYssRNK7g78IhthcTxhg1RagYFFQy1vzTxU
 9NTwFfJ4T1D3OhkBOODJTRCCTr34N8faFEvvg946ilwS4Cpqj8KbmZ5K0
 Ks26QHiIjY8kPgfHmTvLFcmC5+7m6Bu4G3emm9xZ+t4wwZZb3JI6Cw9+f
 vjutlAo5dG6V9MD0mrnSKnERfRIME7nIBwN/OIAyNoyazA5zo5b98ySGR
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JSJ04H/8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 23/25]
 tools/lib/python/unittest_helper.py
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:mchehab@kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:peterz@infradead.org,m:rdunlap@infradead.org,m:skhan@linuxfoundation.org,m:sfr@canb.auug.org.au,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: C7659A7809
X-Rspamd-Action: no action



On 1/28/2026 8:50 AM, Mauro Carvalho Chehab wrote:
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---

What is this patch trying to do? the title is not descriptive, and its 
contents don't make sense.

>   tools/lib/python/unittest_helper.py | 16 +---------------
>   1 file changed, 1 insertion(+), 15 deletions(-)
> 
> diff --git a/tools/lib/python/unittest_helper.py b/tools/lib/python/unittest_helper.py
> index e438472fa704..3cf1075b1de4 100755
> --- a/tools/lib/python/unittest_helper.py
> +++ b/tools/lib/python/unittest_helper.py
> @@ -8,21 +8,7 @@
>   Helper class to better display unittest results.
>   
>   Those help functions provide a nice colored output summary of each
> -executed test and, when a test fails, it shows the different in diff
> -format when running in verbose mode, like::
> -
> -    $ tools/unittests/nested_match.py -v
> -    ...
> -    Traceback (most recent call last):
> -    File "/new_devel/docs/tools/unittests/nested_match.py", line 69, in test_count_limit
> -        self.assertEqual(replaced, "bar(a); bar(b); foo(c)")
> -        ~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> -    AssertionError: 'bar(a) foo(b); foo(c)' != 'bar(a); bar(b); foo(c)'
> -    - bar(a) foo(b); foo(c)
> -    ?       ^^^^
> -    + bar(a); bar(b); foo(c)
> -    ?       ^^^^^
> -    ...
> +executed test.
>   

You delete a bunch of the output here, but don't explain why. If this 
part of the doc is no longer valid this should be squashed into whatever 
patch made it invalid. I suspect this is the result of the new wrapper 
you added?

Thanks,
Jake

>   It also allows filtering what tests will be executed via ``-k`` parameter.
>   

