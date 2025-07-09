Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C39AFF3C6
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Jul 2025 23:15:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD05F4085F;
	Wed,  9 Jul 2025 21:15:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QGjPgRyAZ0A8; Wed,  9 Jul 2025 21:15:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8905440576
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752095745;
	bh=dkXxKD96bBJNUop7Zw8HXPcnL5bw8NlrHxecMRSg4/g=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pzLa//6hRuo46wZu/1zcpaEyM/F+M8yKnFRitUS/LEZjFjYcMv+8d982g08lpXmZD
	 j1WR6VRGhUN26SjvAwZigKwBCCrPsjabZtlWOXe6IiJqd8QhY3K3Ct4QITInZ/ExwE
	 m2iv6JPZm5LEufmjEk0I8flbJNix3VJ+EqhuRsQiVZypzRi34qRqYe8Xtj9qO/aeaA
	 6RPH4Fh742pQ1iCL1a5EUZtJPhG7HpoBMR9RFeiXNNWo6Pjt1PuZy3e/6xw2OR/vxb
	 vG4a61c0XHqNTnI25tu3Awa/Q200p0SSEyiarCfuy+R2JQT8pl+PgPmfpKHO2CktXB
	 W9gS4SuTIMqlw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8905440576;
	Wed,  9 Jul 2025 21:15:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2BD0712E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 21:15:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1D62B404A5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 21:15:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nNN4BMSWuw9c for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Jul 2025 21:15:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1053B404A4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1053B404A4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1053B404A4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 21:15:41 +0000 (UTC)
X-CSE-ConnectionGUID: gcsN1P0kT3S3aR1+Rp4Gbg==
X-CSE-MsgGUID: KdBFAgRSQn+tHOOk8Ohu0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11489"; a="71816113"
X-IronPort-AV: E=Sophos;i="6.16,299,1744095600"; 
 d="asc'?scan'208";a="71816113"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 14:15:41 -0700
X-CSE-ConnectionGUID: VHWr9ztnRNqVxsCD45Gk/A==
X-CSE-MsgGUID: tINIkzPtQ/eDAV+RYyI/6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,299,1744095600"; 
 d="asc'?scan'208";a="160425961"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 14:15:41 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 9 Jul 2025 14:15:40 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 9 Jul 2025 14:15:40 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.57)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 9 Jul 2025 14:15:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Kp3l4A0NGf4noxMtVZvrAzvailicYguUyf1aIOH0LBWOrd1Ksj5GnWjNR7GjeY5nHdpiE7jhpyh82ilMkNwKYZtaU/IGAjEHKu1DAo/65STB4VvZ0N13f/Y1CUNQ82/36tXA0bEx1x2y05/+RvlvhItyQC8pnCtf3ejcWh1NHFplfN++tSVV+HheicT48MrQjsqsOc923e43wJ1EFuhBgA+gPTKHGlo7Pr7tK2vk9SjTcTgZbeLR+YNa1XlMRnBy31ra3Dr/O2zAgGZ6xf6L+ZIVIOcc1L+mDaRZwKgtG7ZvCpQML/epof7HrCSbx+cJxu7Ti3ErAwshH39gIVSX8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dkXxKD96bBJNUop7Zw8HXPcnL5bw8NlrHxecMRSg4/g=;
 b=Vy1JhY56NazftAkjU7ZIvm63U+y5dtn40Ebns1OzZtPVHqyN1sWFJJItrTpTLJ2kg1OAofpCSZIA6I89Ai33tBuaugNKvGaS9oEXnhxABApwSPRnxzm1S7PBTyQTYBO/jdGe9lloddVkxg6vBH3C9eSbjt0ls4Fnu0McnxyNlaXzFlXTMyv32Iej3fsEx0LFYAfzMtL1GkWHPeYLgNU4c3Uxql5YnXulOe60zVP+dseeWkpduDCnLcxo+y8ez/UHy7fnMekZn5WbB+AOyxEF6cjv+294nNRRLrtIPAnaaLfm763WcCAoQRw58Ou9E4+z2Fpe2mD97UAKl7gopWg3IA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM4PR11MB7277.namprd11.prod.outlook.com (2603:10b6:8:10b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.25; Wed, 9 Jul
 2025 21:15:11 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.8901.024; Wed, 9 Jul 2025
 21:15:11 +0000
Message-ID: <7518e246-40ff-4399-9aae-57a5158061c3@intel.com>
Date: Wed, 9 Jul 2025 14:15:09 -0700
User-Agent: Mozilla Thunderbird
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
CC: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, Jakub Kicinski
 <kuba@kernel.org>, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Damato, Joe" <jdamato@fastly.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Czapnik, Lukasz"
 <lukasz.czapnik@intel.com>, "Dumazet, Eric" <edumazet@google.com>, "Zaki,
 Ahmed" <ahmed.zaki@intel.com>, Martin Karsten <mkarsten@uwaterloo.ca>, "Igor
 Raits" <igor@gooddata.com>, Daniel Secik <daniel.secik@gooddata.com>, "Zdenek
 Pesek" <zdenek.pesek@gooddata.com>
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <CAK8fFZ4bRJz2WnhoYdG8PVYi6=EKYTXBE5tu8pR4=CQoifqUuA@mail.gmail.com>
 <f2e43212-dc49-4f87-9bbc-53a77f3523e5@intel.com>
 <CAK8fFZ6FU1+1__FndEoFQgHqSXN+330qvNTWMvMfiXc2DpN8NQ@mail.gmail.com>
 <08fae312-2e3e-4622-94ab-7960accc8008@intel.com>
 <366dbe9f-af4d-48ec-879e-1ac54cd5f3b6@intel.com>
 <CAK8fFZ6PPw1nshtSp+QZ_2VVWVrsCKZDdsxdPF9Tjc0=_gi=Wg@mail.gmail.com>
 <bdab5970-0701-4ba7-abd2-2009a92c130a@intel.com>
 <CAK8fFZ5XPQ-mW5z9qJNJhqFukdtYGJawYTYuhHYDTCvcD37oFw@mail.gmail.com>
 <d3c4f2f0-4c22-449b-9f8d-677c4671ee17@intel.com>
 <CAK8fFZ4L=bJtkDcj3Vi2G0Y4jpki3qtEf8F0bxgG3x9ZHWrOUA@mail.gmail.com>
 <aff93c23-4f46-4d52-bdaa-9ed365e87782@intel.com>
 <252667f3-47b2-4d1f-86d6-c34ba43a6d47@intel.com>
 <ee05284e-3ab1-482f-a727-981b9fd4e9ee@intel.com>
 <a4b27e11-a3fd-4df0-8dd4-60d1a4aec5a8@intel.com>
 <04f3dc70-fd31-4b26-9647-c2f4ed012d8e@intel.com>
 <CAK8fFZ5MOiT0inGVwO0RjsiSiFNvsrTgikeCokOOhZNXHiaK4Q@mail.gmail.com>
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
In-Reply-To: <CAK8fFZ5MOiT0inGVwO0RjsiSiFNvsrTgikeCokOOhZNXHiaK4Q@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------n2BPfARFVyrhRzcCPLIUHc1g"
X-ClientProxiedBy: MW4PR03CA0236.namprd03.prod.outlook.com
 (2603:10b6:303:b9::31) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DM4PR11MB7277:EE_
X-MS-Office365-Filtering-Correlation-Id: 66a036d7-1ab2-400c-33ff-08ddbf2db046
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?U3V6T0EvVUZLUU5DLzlVeEZPKzVSUXJsa044ZGgyL1VKTElJZ200T25JZjVk?=
 =?utf-8?B?andJUXZRN1JmdGF1L09IcU9aQVdQOURtc2RTWDVjSlBVYzI0dWN6MXJnRGF2?=
 =?utf-8?B?L1FNNUloWHd2UTY2KzlCTE1qQWhGYmVtRmYyOWlscFJ1Tm9aRTFEajFmUG05?=
 =?utf-8?B?YkIzTEYwem9BYjZ3dFZWc1kwYkUvOGNmR3k4QkVSbWM3Ri84Sjkxc0VOUDFC?=
 =?utf-8?B?Qjk3OFpBK1hzSWFxTEQwZHc5YkVYYUwwLytmelJnVG5mMGRpa2xRZHFwQS9y?=
 =?utf-8?B?S0J6cGNqRGpnQkdIRHluclFsMm9xYy9PVzYyR1cxb1NjWHNOdEt3bEhEdVU2?=
 =?utf-8?B?Y3ltQTFpZXNqTTF0SU1YL2ljSGxqblVCYkdFdFl0dFRVNENKVGkyUDVWTVp2?=
 =?utf-8?B?aXNjOWw4Q3c2SGtPUUVZMmVmcjNEdVFnVGhJNzlPOE81TFY4VUM3S2cyNFB0?=
 =?utf-8?B?TXM0U2xvUGhTV0FXZWhXa0ZUSEppTFcvVWhqa1RYbGtsUHNkRTZ2Zk9pclln?=
 =?utf-8?B?L3p4eks4cU9UaHFlTTUrSlJyVWVDUXRtY25lNCtqVk1RamhEQVZocXp5aFdC?=
 =?utf-8?B?Q3cvTnpMdDNRMU9vQVczcEE0WUJhbHJvOWVPNVl4Z0pPdGc1eUlkS2ZMcnBX?=
 =?utf-8?B?VC85a0JGaFNFNk45TUU3NU5XQklOVWRmTnVjUVpGTTdZYTdzRHZOdzAvYndN?=
 =?utf-8?B?aDd5MXlpTXY1bzlQa3MxUmNXb2JkbGNiamd0Mmo2OVhoYUVPdlNydWw4WjdQ?=
 =?utf-8?B?andTalc5UHY4Mzd3QVd5LzN0b0Q3anFhU0M3QTh1amJHa1FJdVdZcXZaMDd4?=
 =?utf-8?B?V1dBVCtZT0NiV0Jxa2V2cmRQcm4zaFVMWkVmNmVZY3N3M1luTFF2bmx4OTk3?=
 =?utf-8?B?MUc5UmJ4UFAzMEpHR0NVam9oRlJkMlhOUXJQVzY1WElPa2R0eWxEUFpockgw?=
 =?utf-8?B?YVh1TjkrTEl4SlpkdG5wbm00R3ZuUlNUZndBTFBzdmkvZ3NTYmoyYjM4VDBl?=
 =?utf-8?B?REU2b0kyUldnWnFYWUY3SzNPSCtRb29IUzl0QUU0dHpkTkV3ZW9lcGxOMnp4?=
 =?utf-8?B?VFFFcCt0WTBKNlNtdk91d1h1dGZ5Q0tRU0g2SlRZNzhGNWhMR0xJSGZDQlps?=
 =?utf-8?B?U2l3QzlLdUhKMTg4blpMOEJQZzg5akNCQjhSNndXTVBrRmlKVUM5OFJNa053?=
 =?utf-8?B?dm9OUnczZmpSKzA5bmFKWW85QktlejdYQ0dvKzNqbldYZmluOVBxS28zZWNM?=
 =?utf-8?B?a0xwdGtHR3NnR3puYk16SDZDZ2s4UkMzWjJ2c2dYd055K2o1UDJ2VXJNUnJa?=
 =?utf-8?B?NURpandubFBNWVRpaUNiclhvdnFCb0FZSlpENkovQjM0aHA3M1gyZEJjZ3FR?=
 =?utf-8?B?VFc2eWdscURCVE5WWXNuUkRQRmNEUWRhYmp0cjZUQkNoSUJ1UDZOK2VkMGdG?=
 =?utf-8?B?RmU5WGVybFZpSEZ0L3RtSytNQzgvWWY4OTU2bjJCNFlKV0V0S2xqWEdQUHlK?=
 =?utf-8?B?K21UT0M4a3JPWndGczBnd3RhL2o4U0syYmtKQW4yNWVORmJyd3Q4TFFXam1r?=
 =?utf-8?B?SnBGUWd5aVpqTVl0dEhWM2JYY3NjNXJKTWxBUFhyS1gzNmpTcEF3cWFWcStm?=
 =?utf-8?B?ZEVWSWxlYnFhZkROdkFDWlY2eHJ2cUZLVUhmeHZPenBFUXVaMnEyNHZDU3M2?=
 =?utf-8?B?czMvODFsSnA5VjRMTTdWRDNrUFRWcGhmVDFOV1ZHeHNuekhoMkRIWWpPSmc0?=
 =?utf-8?B?cTNtaDFtdzI5RjZhN1RTUFJ3Zlh4ZU91OTJzN2lCbGNnTC9hTWhIeGlsb20w?=
 =?utf-8?B?dXQ4QjNDejdHNnUzMWFna0RIbngvdFB4cHdQS054UWtmS3V3QVY1czJ1Znli?=
 =?utf-8?Q?38sLdEnE08Z51?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aWdUeUJtT0hxbVU2K0cvbnVLcEVGTmw2NUF2LzhpUVU1WDVVL0loSmVkczVG?=
 =?utf-8?B?c2FqRjNwc2NMZk1tQnNlTVFEMUNQUE1ES2tKVzBDSExSU2VMOXI1TWl6bEJB?=
 =?utf-8?B?ZGs4ZCtlWS9HMDR1UWxvMDArT2FEdis3VlYrV3Vic25naXlWK0JXa2k4RkV4?=
 =?utf-8?B?aGR5Q1Q0eU5vRHR1RGJmQlhzN1o3UWQvZzIrQVF2WHQwdGtuVG9uU3l5aVJG?=
 =?utf-8?B?UlJRRVJja1Jlakx0WkF2d3R6QWZCckpmYjU2RVRHVkFaRGl5bVRKOXZWSVFa?=
 =?utf-8?B?Ym16aGo5SGdJYU5lWDYyNG1GSVA1dzNpaTIwa25odTF0SGxNYmpYdEJ3c1E3?=
 =?utf-8?B?YkNzWVoxaVlzUXUyQmw3UmJTN2M0aFpyNS9DenlOYk5rc3dDd0pXVWR5am1o?=
 =?utf-8?B?Tmdkc1Y3eTRRWGJxTkw2VEpuUnhrMmpodFRMTXZEN0lEM1ZLQ1dMQVhFdHFI?=
 =?utf-8?B?S2tkTkJTd2lBZUlsVjh3L3lvTitJeDhvbjZEK3pzRnVkS3MraUNLbDlQSlBZ?=
 =?utf-8?B?aTU2WUZiQVBJbGlUalVmOEtXai9rcUJOZE5hV2ZvdVF0RUc3TUw0N1RBTHg0?=
 =?utf-8?B?OFpsVFBtbVhLc1FYd0dkMXArTmVoeEMvWjgzZE9GRXVhVEU5VW1FRytVRlVN?=
 =?utf-8?B?ZkdMSHdqR0YzU2Z3L0N5cHAyMnZpUmU1SmQwRnJReXNKeHh4OE1JZTRSQ3VE?=
 =?utf-8?B?Q2F0Z0M4Q3h2K3QySS81WmFqVStya2pJek9vVDdyRlk3OUhCQzhrUUhXcFU4?=
 =?utf-8?B?TnI2TzA3MlJJUmtXeXlyaXc4U0I4ZTdwODFXdzRzeUdYbnFMNXlwTUp4N1la?=
 =?utf-8?B?S2F4QmpYQUx0S0lqNndZVHcrL1dCYWNVNUZpSEJUaFJ3WDlIV2FrOTZnSnVF?=
 =?utf-8?B?YUJYMFNVK3JDMGk2TzY5eW9wTDRXWjZFTUlPQ3NVQXFTRXlGcGN2Rm9Bbjdo?=
 =?utf-8?B?RTI4TStlRjBFa0Y5K1dveHJhMnJsTWJTYWMvNWxXazJEbENuMTA1MVJmSjVZ?=
 =?utf-8?B?bXF3cCtuYlltTzNZM0g4bldWbGpkaGU0Uy9vM3QzU2lKdUJ2YlN0S2ZOUXNo?=
 =?utf-8?B?TVE1eUFzdWVhWEF6a1hLd2kwMzNjRk84NnVERE9GTkFXQ0hJU2F3Qkd3Q1lv?=
 =?utf-8?B?OUxkSVhEMDhuZU0reXY5TnhmU1o1UlFFQW41eWJmSHBrNjBQSnBYZzBvNFRh?=
 =?utf-8?B?MVBRTW5JZjRZOENWY2Q3TXZvZjlsVUtzYnJkMS92VjJYcnQ2TTVFQ29oOElu?=
 =?utf-8?B?WTljTG1qQjZDb2VHYkRUakdJeWNTaHNtZHYrdTFkWThrY2U2VGQ1SVBCQTNS?=
 =?utf-8?B?UGdZbHd6M1BEcWJoWWtMYng0eGtjNCtkdERZc216ZXhjTHF1V2hsaVZRS1Bw?=
 =?utf-8?B?VWdObEFWYy9SMU9qT2xtcmliTkJKY2dZa3ROZUVtd01DbmdjdlVaajd6YVl0?=
 =?utf-8?B?b0cwVDRaRWgwb0JveHZnaVlKNDJ6NE94R09wMG5MekVRWitpZlN5bDZFK2k5?=
 =?utf-8?B?Q2NBNjhpNlczVlpncEdJWmZ0ejdvYUhBaWR1MWxpTVlJNmIvdi91TzVwcWhM?=
 =?utf-8?B?dXRwMEpMa0ZNQnFicG5TSVlJT2QxL1dYY24ybWZuaWdpRkxyczdWbFRuazdx?=
 =?utf-8?B?UW5lWUZuTWRwRGRBTWF2SFl6akRRTWhiUDNZaXd6ZmpXdUF6bFdkYTJIcVRI?=
 =?utf-8?B?Z3RQcHV1TGU2emozM2NtKzF3d1o0aVE0TkpJQWlDQVRGbHB4S09lVi9LNk5I?=
 =?utf-8?B?ODQvWHJob1E1UUZJekJsZU5Nb21OQmZCeG9TSldHUllBM0UycXB0a1c5cjBX?=
 =?utf-8?B?R0RMeTBVR3BPZ01IYzMvb0d1aTZLQzF5eW9jZW9qY1RhejgwU3BIZ3Q5d1RQ?=
 =?utf-8?B?eVYvdWx5VFhRNWp2Q3RlUnJMc3VQdzBCZ29pQVVjb1VFK1ZmSGtTR2dlS1cr?=
 =?utf-8?B?NCtNWmg5a29Pb3d1dWRsdWp2SzB4STFYNkF2N2lCMmp3cDdGWXRobjJoamNZ?=
 =?utf-8?B?ZG0vVXBpUnd6OXlZMjZSbEREZ0FyVXRiOExvR0dhWVVMeDMxcHhCdkp2NTNM?=
 =?utf-8?B?ZTE4RGphaHgzN1BoQmxWdEJvVGhUT1Z3b2tsNTlkUUlDeWtuTFdKTmFlVUVo?=
 =?utf-8?B?ajFJTHd1VmJuZGJETnVILzc2a2VrNEpWYTBUbm11TlhIOGpIY0s1WFY5MENY?=
 =?utf-8?B?L1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 66a036d7-1ab2-400c-33ff-08ddbf2db046
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jul 2025 21:15:11.1256 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7hEg2gM3Lv/8lVrrg1RUX1PFT94+cMJ+iJig5MKdoR9GrV3UiHY+ld913TWWuEEicGvwdCFN7j7fX7IFR/hmMcGs/xxrhbpZsOtczYo4hfE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7277
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752095742; x=1783631742;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=dkXxKD96bBJNUop7Zw8HXPcnL5bw8NlrHxecMRSg4/g=;
 b=QBuCM4rs0UXvmacad2rtvjiask2ZAt8Xow7ocUDMXZsern1ylHrjxYJl
 kNl3f1hKbX6dOAP5aU3rcxL4s/GSRfarls2y2ZKSWzK8dvOZaRdKEiXjn
 DPi+1EbSzz2w+bHnw4UfN2khbFn08LkExKye+zQEPbAFu8JGTDrwuZhUd
 1tgxTRDfE84bSIUk9iQzPnNhMfKt0yVBXWScjE4WbP+LenmjFLh2ZiwPI
 jL2q8ZDs2PLKb2Gji1sDOZM22tGjcL+pIOyERcyfdH+t3h479UfwesI09
 3hSDhcyXTOV3vwhokq+aGOCZhXbcZxEXyXl00NTRqWZ4jBXibMR6Stefq
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QBuCM4rs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
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

--------------n2BPfARFVyrhRzcCPLIUHc1g
Content-Type: multipart/mixed; boundary="------------hD3vzktDaOcPS9FpnYf5aVli";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jakub Kicinski <kuba@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Damato, Joe" <jdamato@fastly.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "Czapnik, Lukasz" <lukasz.czapnik@intel.com>,
 "Dumazet, Eric" <edumazet@google.com>, "Zaki, Ahmed" <ahmed.zaki@intel.com>,
 Martin Karsten <mkarsten@uwaterloo.ca>, Igor Raits <igor@gooddata.com>,
 Daniel Secik <daniel.secik@gooddata.com>,
 Zdenek Pesek <zdenek.pesek@gooddata.com>
Message-ID: <7518e246-40ff-4399-9aae-57a5158061c3@intel.com>
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <CAK8fFZ5rS8Xg11LvyQHzFh3aVHbKdRHpuhrpV_Wc7oYRcMZFRA@mail.gmail.com>
 <c764ad97-9c6a-46f5-a03b-cfa812cdb8e1@intel.com>
 <CAK8fFZ4bRJz2WnhoYdG8PVYi6=EKYTXBE5tu8pR4=CQoifqUuA@mail.gmail.com>
 <f2e43212-dc49-4f87-9bbc-53a77f3523e5@intel.com>
 <CAK8fFZ6FU1+1__FndEoFQgHqSXN+330qvNTWMvMfiXc2DpN8NQ@mail.gmail.com>
 <08fae312-2e3e-4622-94ab-7960accc8008@intel.com>
 <366dbe9f-af4d-48ec-879e-1ac54cd5f3b6@intel.com>
 <CAK8fFZ6PPw1nshtSp+QZ_2VVWVrsCKZDdsxdPF9Tjc0=_gi=Wg@mail.gmail.com>
 <bdab5970-0701-4ba7-abd2-2009a92c130a@intel.com>
 <CAK8fFZ5XPQ-mW5z9qJNJhqFukdtYGJawYTYuhHYDTCvcD37oFw@mail.gmail.com>
 <d3c4f2f0-4c22-449b-9f8d-677c4671ee17@intel.com>
 <CAK8fFZ4L=bJtkDcj3Vi2G0Y4jpki3qtEf8F0bxgG3x9ZHWrOUA@mail.gmail.com>
 <aff93c23-4f46-4d52-bdaa-9ed365e87782@intel.com>
 <252667f3-47b2-4d1f-86d6-c34ba43a6d47@intel.com>
 <ee05284e-3ab1-482f-a727-981b9fd4e9ee@intel.com>
 <a4b27e11-a3fd-4df0-8dd4-60d1a4aec5a8@intel.com>
 <04f3dc70-fd31-4b26-9647-c2f4ed012d8e@intel.com>
 <CAK8fFZ5MOiT0inGVwO0RjsiSiFNvsrTgikeCokOOhZNXHiaK4Q@mail.gmail.com>
In-Reply-To: <CAK8fFZ5MOiT0inGVwO0RjsiSiFNvsrTgikeCokOOhZNXHiaK4Q@mail.gmail.com>

--------------hD3vzktDaOcPS9FpnYf5aVli
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 7/9/2025 2:04 PM, Jaroslav Pulchart wrote:
>>
>>
>> On 7/8/2025 5:50 PM, Jacob Keller wrote:
>>>
>>>
>>> On 7/7/2025 3:03 PM, Jacob Keller wrote:
>>>> Bad news: my hypothesis was incorrect.
>>>>
>>>> Good news: I can immediately see the problem if I set MTU to 9K and
>>>> start an iperf3 session and just watch the count of allocations from=

>>>> ice_alloc_mapped_pages(). It goes up consistently, so I can quickly =
tell
>>>> if a change is helping.
>>>>
>>>> I ported the stats from i40e for tracking the page allocations, and =
I
>>>> can see that we're allocating new pages despite not actually perform=
ing
>>>> releases.
>>>>
>>>> I don't yet have a good understanding of what causes this, and the l=
ogic
>>>> in ice is pretty hard to track...
>>>>
>>>> I'm going to try the page pool patches myself to see if this test be=
d
>>>> triggers the same problems. Unfortunately I think I need someone els=
e
>>>> with more experience with the hotpath code to help figure out whats
>>>> going wrong here...
>>>
>>> I believe I have isolated this and figured out the issue: With 9K MTU=
,
>>> sometimes the hardware posts a multi-buffer frame with an extra
>>> descriptor that has a size of 0 bytes with no data in it. When this
>>> happens, our logic for tracking buffers fails to free this buffer. We=

>>> then later overwrite the page because we failed to either free or re-=
use
>>> the page, and our overwriting logic doesn't verify this.
>>>
>>> I will have a fix with a more detailed description posted tomorrow.
>>
>> @Jaroslav, I've posted a fix which I believe should resolve your issue=
:
>>
>> https://lore.kernel.org/intel-wired-lan/20250709-jk-ice-fix-rx-mem-lea=
k-v1-1-cfdd7eeea905@intel.com/T/#u
>>
>> I am reasonably confident it should resolve the issue you reported. If=

>> possible, it would be appreciated if you could test it and report back=

>> to confirm.
>=20
> @Jacob that=E2=80=99s excellent news!
>=20
> I=E2=80=99ve built and installed 6.15.5 with your patch on one of our s=
ervers
> (strange that I had to disable CONFIG_MEM_ALLOC_PROFILING with this
> patch or the kernel wouldn=E2=80=99t boot) and started a VM running our=

> production traffic. I=E2=80=99ll let it run for a day-two, observe the =
memory
> utilization per NUMA node and report back.

Great! A bit odd you had to disable CONFIG_MEM_ALLOC_PROFILING. I didn't
have trouble on my kernel with it enabled.

--------------hD3vzktDaOcPS9FpnYf5aVli--

--------------n2BPfARFVyrhRzcCPLIUHc1g
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaG7b3QUDAAAAAAAKCRBqll0+bw8o6IM7
AQCx4j0Tak8iR2NwvtEw1+pQ0HII0Mn+CwqrlasS0iXnlQD5AY2PA954k3tiIb8MCyHZoZzUJdZK
l3/RT+fKBWPksQc=
=7l2p
-----END PGP SIGNATURE-----

--------------n2BPfARFVyrhRzcCPLIUHc1g--
