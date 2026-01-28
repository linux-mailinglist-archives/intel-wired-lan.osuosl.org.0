Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mNCHD+5Kemkp5AEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:44:14 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C07A712A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:44:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B708C607A8;
	Wed, 28 Jan 2026 17:44:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wb8ZZ_vhWZ_v; Wed, 28 Jan 2026 17:44:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2CDF9607B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769622251;
	bh=C33VC2AB8RZuxv5QtwQWqtEajJAfDxd3r60mJGUiWzk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0jEEueMetwDCG4TF7/X9lHRCVTFcamhTkI/m7AsjFmvWJsekaHUIHEls3DUqUvaq7
	 GLH4A2PQDRtlKgxe5JeGmx/m+UsUzKJqjixwABBKXUxHQMjqiAZk50wbPjJDpCi4VI
	 z2oah7Fdt2/LT203CMXwlIZup10ShLiwmxZwoGlh+Xe/mmJ4PF2iYw5T+Mu/tgrN7l
	 1RM/5/z/SagDmYNyX7GSadA5Ic8KGKGQuQYC0MumehDyZrXzg6SD6b/JL3s/nzGkk/
	 sn2u3NrhgXSft5BelLsxAp2g0QsLBJG6aE2IdqyK+pQMY/A8yN9a3gwfxFlz+mfrVj
	 tUfiz9rg285cg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2CDF9607B1;
	Wed, 28 Jan 2026 17:44:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1A0801AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:44:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 002A460784
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:44:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x9ow8_VkTKnH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 17:44:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 399B660793
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 399B660793
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 399B660793
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:44:08 +0000 (UTC)
X-CSE-ConnectionGUID: uOm0CU+GRAeJyCc05LWOjg==
X-CSE-MsgGUID: 7AMLv+PaRI+5NF0B+0oQWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="88262536"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="88262536"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:44:07 -0800
X-CSE-ConnectionGUID: t3ADL1z9Q0SJlGzs5kygtw==
X-CSE-MsgGUID: Pmk1tdijT7KkfRsfPPrgmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="208702304"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:44:07 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:44:06 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 09:44:06 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.12) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:44:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JBE/5q3Op07cwjdtybh7QJBlC+jt8y40XZ4+pqzb4ka4vCAmP1Ve5Dhtxhhz0qn72fAJ3hfWVXQII9rJbFLzFd55IIiycf77Ghyjg/m3oTwSPbX4b/vufBC8+q9MhB4RIeNsIi60rPGc/NXKqzMUDVIM5Oh+Dyk1r033gfuzXOI0n5yrgj8fRY8+28NDx1LuhJY2+9uUzpNolABiL3nBBXKolRf6Pbogf99dc6jGhaSmWcNH0vEIlgz/TgfT8Gwyy5tXOP97whRCOZttRg0X6KRdNutTfv1eziVaintn6Fnp/rrzTP+ni9FkbMltMdfgZZcPNAiu2Byi1vFc8AEd9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C33VC2AB8RZuxv5QtwQWqtEajJAfDxd3r60mJGUiWzk=;
 b=fMOvNaCA6MKC5M8dcL13UX+qFTQyFXzr/Nb1NxgqrWQ7w1EraIlLCT5jD4dhfGnwP3n2pvLqVst9f45ryNq7wxO3khnwoWTLdJT3tOk6wyGwMQ9J9ZP5YlniG2sWpgG40Iu5iGJyMMZsqyO++DZS4lvFR3abNN5ZS4VSk97yzaOUCkIury0+5P9naGDsX/iFB+tR20fA29NR5aNSSszv4mjJURO7tlEmxaNMSRtTrWBI/M98DBKDPVUbe16728Uj1jLsLu2/nvIkZ1drbRABykGXpb8Xrl1KFIEvbHLJgV5XmAVwOhRpWUVT0nm/9N63lAlT72XKEnZu6pLSj+PQmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH0PR11MB7561.namprd11.prod.outlook.com (2603:10b6:510:282::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Wed, 28 Jan
 2026 17:44:04 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Wed, 28 Jan 2026
 17:44:03 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Peter Zijlstra
 <peterz@infradead.org>, Randy Dunlap <rdunlap@infradead.org>, "Stephen
 Rothwell" <sfr@canb.auug.org.au>
Thread-Topic: [Intel-wired-lan] [PATCH v2 01/25] docs: kdoc_re: add support
 for groups()
Thread-Index: AQHckHZI7e3v/tvArUqz5F2Mgd83BrVn2mvg
Date: Wed, 28 Jan 2026 17:44:03 +0000
Message-ID: <IA3PR11MB8986B181C29D2794A264A7FEE591A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769617841.git.mchehab+huawei@kernel.org>
 <e1ba55866b3a8ce7fe95535981fa3c22bdaf9785.1769617841.git.mchehab+huawei@kernel.org>
In-Reply-To: <e1ba55866b3a8ce7fe95535981fa3c22bdaf9785.1769617841.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH0PR11MB7561:EE_
x-ms-office365-filtering-correlation-id: 907cece4-c03a-4d23-2fde-08de5e94d3ec
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?dXFJc3YvOXRyVHJZR1MwZ2VmUWlwVVNWV2J6TFhlenlvOE45cHpmZi9oenpl?=
 =?utf-8?B?T3FxTjY5Q1dBNXpSb2RJL052UWZOV3FUVWlseE4yNjZsc2s0WXFwSlk0cGk4?=
 =?utf-8?B?Tng3SG9xWEpESGFZVlE4RDNrbTlQTU9seDRQaTYreTVZRW9LZWY1WEZMTkl5?=
 =?utf-8?B?dWtXVVVRc1NwSnNMdmM4bEU1V0ZpUjVMNEM2TXZJeGR2YVUzbmpGaEkvL1FC?=
 =?utf-8?B?RFRKblAxSUhIRVNXZ2lNUmx2REYxUVhPVkwyUFI2RHFzclRjbjROSnc3MXFZ?=
 =?utf-8?B?ZWRjOGo3WGkrdytmQklJeWpWWC9wWi9pbkltVEJWcisvOGtDOVE1OVhvMUJO?=
 =?utf-8?B?M3dmNFM5czVwMkpzZHI0Sk5WbzVlWEEzQjBjVWgxaW9jRjhBeDA1c00yTlBU?=
 =?utf-8?B?U2NGcGxaMjZyblF5dlBUTlJRNEk4TVI3QWljZmpseG8rYmNQN2tPYzZtQnhy?=
 =?utf-8?B?aGpPUmRCQlhtOWEzYndLSmVMVHJvL3VGQ1VCdmcxMjQzaWJCeVpheERweDk4?=
 =?utf-8?B?d0U1aFUySTloSUowdnROQnV1WEhzRHI0NFpPVEJiMWdlU3hMU2I3Q1ozMGZq?=
 =?utf-8?B?MEFPYWcxVFpLdFY1WW15NExiZTZqTCtYMm94SGh6YzREWHMvSzFlN2RIcnBs?=
 =?utf-8?B?TEx4VUZJM1hTWXFGaDNNb0xoUzZIRGxlT2pYbWVOOWR6OXo0eXZCeFRYRTNy?=
 =?utf-8?B?OHZuSGZVM1B4TnM0ZHFJbmhiRWRneGJSOEFMSnA0V2NBQ2JnZ1VCTnU4dk1N?=
 =?utf-8?B?Z0t0NjVXb2p6Y2MwTEh3S08zWkdWMGhBbFpIblBQWmJwanVyZHRlenpjMEkx?=
 =?utf-8?B?RTk5TkVIVTc0cjFoWm5zQi9vK1pIUjQrb3M3NTBnOFFyRnRLaFI5YTMzcU02?=
 =?utf-8?B?VWR6aVZ2bHlVZXU1OFJKckgwYlI2RytHRmMwWkdnYk1vUHA2RnJKa0dkMFI5?=
 =?utf-8?B?bTdMTjc1bXU0WVpPeDRncElvaGRJQUNuK21sYnU4aVc5SHd6bWQ3OWxhSE5w?=
 =?utf-8?B?My9oMWJKV2JwcW80ZkpBZlNwRmN6WW5WYkU2RlFsVWRkWGhqSGVEWE9LVVli?=
 =?utf-8?B?UkU4NmpQRllvUlk5cVQ1R1RFV09uWitBazFwUkxBYnhPSWcyblhkSG1uL09P?=
 =?utf-8?B?S3ZvMUppWVNETk9xdXFJeXVVdTRUZHVrY2VSeUtXYlFiZnd1KzZxaU1iK3Jz?=
 =?utf-8?B?L01OM3NVRXoxSHNlYjdPelZwTUZteHRSNWh2QzNZcmtSOXlqMEtPdXBiVU9n?=
 =?utf-8?B?eWVBU3dCMStoM2hta1FoaTVYUVRsOVRQcGhLWmV2OWt2dTZOWjY0VlI3UVdK?=
 =?utf-8?B?YVJGdXIxWDM1emd3a29QVlFseFc5djJLV0xob1d6QjkvSmRhaDBpdVlCYUFt?=
 =?utf-8?B?UVpvcnJka0JjQXRDcEROL2NISEt3cHBIdGtQQmNjbkwrK3U0a3hscVkzWWdT?=
 =?utf-8?B?R2NzRkp6QTZEanZBM2gyTmhhbW5WN0M1Zkk0ODg2L0ZyT3JnUnd2Skliekpv?=
 =?utf-8?B?LytjTFJnYkJMbUJlSittL3VIQk9SQytRajZYbWRpR0FJTVNodk5DSVdZZzhB?=
 =?utf-8?B?bHY1a2kxYWdxdFFid1VNb2FSWFh3M0Nkam5wSWdWTnhDSnhpb0llNC95eUlO?=
 =?utf-8?B?TGo1cXFQNkVUR3lveFc4a1VIZW1RejZxZ1ZrbHFLTEtpVXZUSGpQR0NlS0Vi?=
 =?utf-8?B?aHd2RmpHek9SZjQyaEZzWC9nZmtyRWdIOFRlR0RUeWVkMjIzbHI5bElsZkg1?=
 =?utf-8?B?NzNRSDRBbk5ydVhOR25ZemkzYlNHQTlwcDZ1SERkM0c5dTM2REMyZzVBdXh5?=
 =?utf-8?B?cEprbmNIMDNVYUdDaklkekZPNDZPSmtmSTlOTmVXc0F5M3IrTlRWRUU4OCtJ?=
 =?utf-8?B?OTRmbEprVmpySExjUkNqZUdWWWlkTXBtTVFoc2g4VDlGaER3THVpS1ZjVTBx?=
 =?utf-8?B?Zk0xTjVKUHlyQzVCK0k0cndvc0tZYWtVODl4T2ZlUE84SGJ4SW44aWtWSmNk?=
 =?utf-8?B?UnhMSWNRQ0JLTWdlcG1yNytucmNKTUxnUUFKYkNUUjhuNzVmVXNndnBDazZm?=
 =?utf-8?B?cUdYa3A2dzI5bmY0RWpId2RHcUlCd3ZWYm1aYkg3eW9WaUhrMkJtZ3VPNXNp?=
 =?utf-8?B?TW40YTd5Y1VPZS94am9nbzVhVlB4alYrR1ZlczlaUndIYkZIWTZWckhWOWNT?=
 =?utf-8?Q?rsjSUUtLnxOz0dKbiiZ8G4A=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZXV4QWl0S3FUTkM4K1ZEZmYzZnhET2lyM3NPQlFLQWpCSmtWN2JwMXZFMjBP?=
 =?utf-8?B?MzJIdnhoc3d3RnBVZFZJcEFOb3huWU1qd0tjekl3UEdROU45WEtHYXhhTDFk?=
 =?utf-8?B?UUEraXd4RFdnOHBROGpFMTJ6Y3d0NlVvdWFMZzM2YXYvcVMzY1RIUitEbnF4?=
 =?utf-8?B?Rk1kM3V5MU5wMU9WWFRnRmlCRnBBenNYRFdXaFdtbmIrd0plN0h6V3htQ3NF?=
 =?utf-8?B?Q0R5bTRybWRQam9QL3JsM2kvUTJsS29NSGRvcWIxbnVkV2s1eG01ZjVOVHl0?=
 =?utf-8?B?aytjNjh5SHNMdjhjQkI5cG1yZjZNNGpESXRkUEgrWHBwWEFiK2VOUS9yNXR3?=
 =?utf-8?B?Njc1MmdlcXJrUmtpaTNWMkU3c2JlV0loMm1ram9MMGFsdkVuUlVKUlVLcVZG?=
 =?utf-8?B?UHRQSVh1bjF1NUZ2OUM5MlZ6b3lrNWJoZjZRSmQwRmJJK09jL3RUakJVb3dw?=
 =?utf-8?B?RGQ0QVY5WU55MXZDQjU2OFVLY2VpUEVDTm93dHRLMTkyK1k3R3daVlRiVE93?=
 =?utf-8?B?M3pUTTFDamRva29qazNnOFhnRFRCM3ZCbDNXVEExLzBxOWEvK3hRL2Z4cnBp?=
 =?utf-8?B?WTR0djRsVWVLTUhFTHVRTjMxd2ZkNWsxYjM1ai9kZFNlVFdkZXI2V2FWZ0VG?=
 =?utf-8?B?bUVlWWZmVEZhNEtXcks2eUVkNkFpSnBwWTVKNXVhRXIrdGNGRCtwT0V6WEs2?=
 =?utf-8?B?Z1RacUlnSUlvNG5oYUNlSXlKQmw1YTg3SVYwa3Y2ejByS2RRVFVuYUJ2SUta?=
 =?utf-8?B?dlNrdHBlT21FL1FQcDBHcHN0WlM0bHJ5cFpoV1hrZC80Q0FiYUx5NGl3UVli?=
 =?utf-8?B?WGNNYVFETjJpWGhmeUE0SkJxOXUwbGN5bHpQU1VoM2NkdWdmQVA1dmlmVWRK?=
 =?utf-8?B?bGpDUjVrL0xxTVZmTDdOdW9DZjB6dDF2SlllSEpua05SanpGNXZwQnVSQ3Vm?=
 =?utf-8?B?ODE2SVk2NmpNNW1ETU5uZmYzd2kvVHY5eHNzQ0R2QmtEbTcxMGorWWF0U2JX?=
 =?utf-8?B?dWltVjExRjIzUDltR25pRkdIVFY0MEtuV0FlMUhvNzIwSC9IUlhwdWVFdjl4?=
 =?utf-8?B?UWdqNHJ1TlZ0dnE5NkZMZzY1MUpxSWxKTnFBUXhRN3VLeko1WFVZbkp4alFL?=
 =?utf-8?B?RVJYWXNKQi93VFJoVUFVNEVhWjQ1c3dSejZvVklOd0hDdSt0cWV3OTNTUnZM?=
 =?utf-8?B?aDZ6VXhTaDU1MzNSaTMycUQ4MXBFaC9CLzJtdmZxdzBpR2c3SWdzQ0FVL3RF?=
 =?utf-8?B?Y0Y2ZmlqSmdxcXZoTTJvVGdKUnh5VHJ1UURiSy85WWo4MFBQbDk4TDgxOU1J?=
 =?utf-8?B?NzZrQUZwUU5ZbnlBWmsxWlJmMHAvcWg0UlFyd2w4L1VEclI0dHlyUDBUVWFH?=
 =?utf-8?B?aExGeC9nZ1dFNTI3enZiVGltelEybURIVFNUQ0ZDd3c5RXpibkhORFhoa053?=
 =?utf-8?B?Nm5EemlHb2dtSzgvMFBaWE5tTmt0Q29pK29lS20xQlY5bGxJckJCUnM2K0s2?=
 =?utf-8?B?K3JBb0JJa3FZM3JZTkl2eFpWLzI4WmRiREJNQTl2ekE5c1pvN2xpT1RVVGJT?=
 =?utf-8?B?SjlrMkwwTWMrKzJmN25qcWJjM2dBaCt6VnZyRWk3VS9nemVSQk1nYVY3eG1n?=
 =?utf-8?B?RWtGWXk3eVJyVHJFRG1aQWhJK1AvZ2RyaXJ2NjZPQWR4NlVhNVJ2VlVyWmgz?=
 =?utf-8?B?MmNWM0dQUG5mWHNTNUdFcGVDK0hmTnFOa0d6OGdOWDRPZ2F0d0ZWemhNNzMy?=
 =?utf-8?B?V0VVK1YwY3dmZXZIUGd1QUQwQzIzY0Q5TndRcS84NG9ibW90S3hIc2hLY090?=
 =?utf-8?B?Umw3MFBVM3dDK3pxK2xSRDRTL1h6cUNKL2U3QUUyY0pQRkFyTFVRTTRlY1BE?=
 =?utf-8?B?b1VFVDk0NjY1M1lwcmtUS25tVFZGS1U0dkFHa0NBTEFCMXZKb3UrUnZGaHNJ?=
 =?utf-8?B?MUhYT1BVM3BRaHhiT3NlSVN0M0tDRHFCWlJPM040b2RIUHZKNER2b2Zqc25N?=
 =?utf-8?B?Z0IvMjl5N3Nud1ZtblJYTFVaOGkyeFk4dURNMVlWTGdVS3oxME9RL0tLRVgx?=
 =?utf-8?B?UjBKbWppZnExYnZuK1l0VmdZeUx0aDJXcW9oaEdaL1c0SGp5Q0V5c2c4aXpk?=
 =?utf-8?B?VDFZVi9aN2UwV0Z5OGV1TFhIQ0ZXSkZqbTYrYmQ2U0FNWWpycTF4dmJ2MWZU?=
 =?utf-8?B?ME8xYlIxUlg1NEdkL3VsSEE3dlNCVFhGdElsV2NOMTlKR0RDS1JlODRIT2R3?=
 =?utf-8?B?YUsybVBhTFdZbTV1NFhQbTJGbWN1QXk0ZmZueHYvN1g2YXBkV1RuckxGNG5q?=
 =?utf-8?B?bWFXWTI2c0JIMXUvK3Qzd2U2Yi9IYWlxVHV0alhVRFdhTkJKb2d0dz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 907cece4-c03a-4d23-2fde-08de5e94d3ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2026 17:44:03.6773 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Kz8ytiMxvwRIbVkYBjr/f9Inj63pOU1k5ytkewZG+Tyst+h8P9n21KfFxr6YyGDgEQxaIS3IDE1ob+iz46uCEXuecEmJI0RIPWZadbAHAB4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7561
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769622248; x=1801158248;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=C33VC2AB8RZuxv5QtwQWqtEajJAfDxd3r60mJGUiWzk=;
 b=ZPXilaU+2zuUT7nZlX5HqtbtHgPtE4aRn8hhCcBqX5HunjOJAfdnm/3B
 l2mlBYtswDHVv85TUSPVb7d/E/pMtZJlGhGA20+7wx5KgqzwS/Z1jDWgr
 SJZPq++Uk9nj4/kJbmX8YayPpq0jxE5lARp+TqDIYBWpX3dnQDbr3rT0O
 yVlq3bmAj1QwffaDjw4ZDmtKkmi8HWUlpGsomNe+ZZzX0Ii+BqhZW6ciR
 c87jsi1W6ztMfgarA8tHUEl2yzZkZw41dFNh/BEMElKgZXW8uwd1raTJS
 loe4ovoeo7/V1IA+op4J/1rO8WQcoTtx1ELA6Rdyl8EuO4WJa/oRuDMQC
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZPXilaU+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 01/25] docs: kdoc_re: add support
 for groups()
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
X-Spamd-Result: default: False [2.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:peterz@infradead.org,m:rdunlap@infradead.org,m:sfr@canb.auug.org.au,m:mchehab@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lwn.net:email,infradead.org:email,osuosl.org:email,osuosl.org:dkim,IA3PR11MB8986.namprd11.prod.outlook.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,auug.org.au:email]
X-Rspamd-Queue-Id: 89C07A712A
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWF1
cm8gQ2FydmFsaG8gQ2hlaGFiDQo+IFNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAyOCwgMjAyNiA1
OjUwIFBNDQo+IFRvOiBKb25hdGhhbiBDb3JiZXQgPGNvcmJldEBsd24ubmV0PjsgTGludXggRG9j
IE1haWxpbmcgTGlzdCA8bGludXgtDQo+IGRvY0B2Z2VyLmtlcm5lbC5vcmc+DQo+IENjOiBNYXVy
byBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5vcmc+Ow0KPiBicGZAdmdl
ci5rZXJuZWwub3JnOyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbGludXgtDQo+
IGtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IFBldGVyIFpp
amxzdHJhDQo+IDxwZXRlcnpAaW5mcmFkZWFkLm9yZz47IFJhbmR5IER1bmxhcCA8cmR1bmxhcEBp
bmZyYWRlYWQub3JnPjsgU3RlcGhlbg0KPiBSb3Rod2VsbCA8c2ZyQGNhbmIuYXV1Zy5vcmcuYXU+
DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCB2MiAwMS8yNV0gZG9jczoga2Rv
Y19yZTogYWRkIHN1cHBvcnQNCj4gZm9yIGdyb3VwcygpDQo+IA0KPiBBZGQgYW4gZXF1aXZhbGVu
dCB0byByZSBncm91cHMoKSBtZXRob2QuDQo+IFRoaXMgaXMgdXNlZnVsIG9uIGRlYnVnIG1lc3Nh
Z2VzLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFi
K2h1YXdlaUBrZXJuZWwub3JnPg0KPiBBY2tlZC1ieTogUmFuZHkgRHVubGFwIDxyZHVubGFwQGlu
ZnJhZGVhZC5vcmc+DQo+IFRlc3RlZC1ieTogUmFuZHkgRHVubGFwIDxyZHVubGFwQGluZnJhZGVh
ZC5vcmc+DQo+IC0tLQ0KPiAgdG9vbHMvbGliL3B5dGhvbi9rZG9jL2tkb2NfcmUucHkgfCA3ICsr
KysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1n
aXQgYS90b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19yZS5weQ0KPiBiL3Rvb2xzL2xpYi9weXRo
b24va2RvYy9rZG9jX3JlLnB5DQo+IGluZGV4IDI4MTZiZDlmOTBmOC4uMTllNzc3ZTJjOTdlIDEw
MDY0NA0KPiAtLS0gYS90b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19yZS5weQ0KPiArKysgYi90
b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19yZS5weQ0KPiBAQCAtMTA2LDYgKzEwNiwxMyBAQCBj
bGFzcyBLZXJuUmU6DQo+IA0KPiAgICAgICAgICByZXR1cm4gc2VsZi5sYXN0X21hdGNoLmdyb3Vw
KG51bSkNCj4gDQo+ICsgICAgZGVmIGdyb3VwcyhzZWxmKToNCj4gKyAgICAgICAgIiIiDQo+ICsg
ICAgICAgIFJldHVybnMgdGhlIGdyb3VwIHJlc3VsdHMgb2YgdGhlIGxhc3QgbWF0Y2gNCj4gKyAg
ICAgICAgIiIiDQo+ICsNCj4gKyAgICAgICAgcmV0dXJuIHNlbGYubGFzdF9tYXRjaC5ncm91cHMo
KQ0KPiArDQo+IA0KPiAgY2xhc3MgTmVzdGVkTWF0Y2g6DQo+ICAgICAgIiIiDQo+IC0tDQo+IDIu
NTIuMA0KUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9u
b3ZAaW50ZWwuY29tPg0K
