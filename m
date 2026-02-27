Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ABUuF2DPoWn3wQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Feb 2026 18:07:44 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FBC71BB348
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Feb 2026 18:07:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 09F18407E7;
	Fri, 27 Feb 2026 17:07:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 33HcURwlXWWG; Fri, 27 Feb 2026 17:07:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 61B7E4091B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772212060;
	bh=4LfTjtrx66pbAgFuQrfb7MDu1f9lWD6fp4GZu92fVxA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Tq5RRCpIF3V/l2jqaDcPEOvA2my71uwM0yuRHpDeWyOMQ8XlKt9NGFIdQcWOOQoPf
	 lJgLQRUhrPgdrx/hpCRSUJOXT74RmsdL/5a9izesk6cXMB+Jq+bU55QQ7xprLraVja
	 FwjK5sFHxeX3gkxEFdN2JNHzMCO+GlMoN/QqkPlA0IoUTXUPtrkKA8RzwELTyr1syV
	 aKqZlsozD1+jX6e1RIOwWuxaPslAKb9oJ5axqIM9qOwn75Npqvqj5zsYEhm1NGFuRX
	 cmh4ZjTUNf8a/f6Kwx57ZyvWLGfcPKlIkD19BaKsdxXbzBgzfLJEqqav/X0WhHK+8m
	 t7qEw3Da5G5Kw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 61B7E4091B;
	Fri, 27 Feb 2026 17:07:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A2BF01F3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 17:07:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 885C1407E7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 17:07:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5Go6HRqYvbdn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Feb 2026 17:07:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9E73E407E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9E73E407E6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9E73E407E6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 17:07:32 +0000 (UTC)
X-CSE-ConnectionGUID: Xm7ewceST7aVRTifM7xffQ==
X-CSE-MsgGUID: 6DGejvnAQ+6YBpBamuRRpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11714"; a="84384242"
X-IronPort-AV: E=Sophos;i="6.21,314,1763452800"; d="scan'208";a="84384242"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2026 09:07:32 -0800
X-CSE-ConnectionGUID: OJ1sgxCWTwmzMYTtbN1TZw==
X-CSE-MsgGUID: MMtsJdzwRICkAvmGXbOCCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,314,1763452800"; d="scan'208";a="216848026"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2026 09:07:31 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Feb 2026 09:07:30 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 27 Feb 2026 09:07:30 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.60) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Feb 2026 09:07:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nZq5fT+Cd+6RCHXXZqIXUXBh61pQaeXfXOPxZMOKQ7Ru7XmL84Tfnpa6NOGrlWa6atHCU3puyMYvrLWiqsniwFT6FGP6wC198cryLgmqp7U/Yl44N6Cl2Z3d4DFhPjFXFGhSw5yrErov+Ti+iaiJ5jHCgDxdnFhgNi9A96gBknJkj0KKy8RRazkFpEKKptKcTvISmRYyu8viYSxsRQ7fjDx+qlf3tuk4Wgr2ruenh1SjoQDwKEdMaRqEmEr5hZ7zRZbvnHcErla4g6jZ84J+5pPCYvuKHipiXlFF14btGiRpHem/1PTQ7TylOb+R0A09WP14Nd9djYTgc1oSQQ6KXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4LfTjtrx66pbAgFuQrfb7MDu1f9lWD6fp4GZu92fVxA=;
 b=jxKaqQBlwAqA8K8H9fe8lB5dKTwhu85fTVSSR85jB7RCZptsEfsf3dsB12s1NKeY6CQvNQ6w/YZ3P0WDA5Sdc690tIc0jC3P10VvX8jJIUmm48sr21zEZTp/U/1rqZX1zBy2DB/NZUR+2e8osFth+O3bJoTMYzRpFmeiJbMeE88wL0DgFPwfc3mPOsWAoljvcoqBKaOt2NfEBmJMCpoXozKghREEOm29Vc1+o2hgTRLTiKxHwAau2GZ60NTbMNRCEO+foqzq/zpejAkYlYjlsB3lvHpvooiRBVCPiTFTfrj39lmaIeyGlVgyGhCgJ8qa3w31jP8K1Zzwhf0tAMvzgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS4PPFEDAA4523C.namprd11.prod.outlook.com (2603:10b6:f:fc02::5f)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Fri, 27 Feb
 2026 17:07:28 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9632.010; Fri, 27 Feb 2026
 17:07:28 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Steve Rutherford <srutherford@google.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>
CC: "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [RFC PATCH 1/1] Fix header clobber in IDPF
 with SWIOTLB enabled
Thread-Index: AQHcqAnKIuK/e7L28UykSn3iqmULK7WWxnAw
Date: Fri, 27 Feb 2026 17:07:28 +0000
Message-ID: <IA3PR11MB89869444021DB688904EBD0FE573A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260227025950.174755-1-srutherford@google.com>
 <20260227025950.174755-2-srutherford@google.com>
In-Reply-To: <20260227025950.174755-2-srutherford@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS4PPFEDAA4523C:EE_
x-ms-office365-filtering-correlation-id: 63ed2c1b-7601-4651-1d8b-08de7622aff4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: PJkN8Zn2ZNx8zMr0QR+IskD0SKLNIf294GTbkHMcmHXC+r0tBdgROLjaIDccE2C8siQ+NhcUnXXl+qgaP6SDPUh+KX9ima32GudWoAxhLf4f7YwhlC2cnXWTyiyW4KL9uma/x71vOkSMk2/oldVynULjPLvTTMgXfXkDAZ9s5JQw8NxrhNZ4Mxq8PH4Akq01Ezg2IEvxghnA7u3Tvhf+ESDC/5hYuFJBaCkP+H8fqPF+yjkGhVyiVLeipc/x+jYJqT/kbQNXhuK4XmF65mM3gF95tGsnGzdx9e4nGWr5PbvDHMTUKrgOWvNIaZShZbFvots7ScW5zzLtpM8k/fIIM8RQur3HbNJ6WVfSD31jw+TeFJrOzEq/Ewgz1NR6KduKBOc+7pC7xvTsw9n+4hIEFGp/5AWm0dzKUnvDHfG3bMVyPiJv01Az6x3ebVPkBbg9Y/hPW1Wz7E0er9TmRrP0HF+IAOhv8xZCsQ3gRDlREJkVtXdfzy0R4hbImYLTnNaghNrgqrM5NwHU39L9XcX6aG6Fmw/azJDE6/Ydfymw1P9eqvOL6sdnh7U3T6byjv4wen3+Xik4hYIOXexEmYMBuwpSdNrEWAiqvFwInTIBSrIZeZFEUP00UMSDHGSTVFdsJ9dmGE9/VIxwUeCPKZe8+KPtJdgeaV68AYzTQOB0EuHEqlEDXMNYMat1DtUYgHTArjtCZCGtLmjU6VFsN1EHL6bFi58K+d1ct0GLnXLkqb3QswkmbeKoVxxBfN3i+d53gNk+Vim7Bkk4c3vSX+LkuDQgLlS9hG9u2S7YFY03O5Q=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?am1XSWVhem1mazltOE42TW5KNGJnelV3QnhyN3JWa1l5d1hFUHhvTkJtVStr?=
 =?utf-8?B?Tk9IOTExUXJacnZSZkhwNUdKNW56UUpHVW1mWEVDLzFSc1VKeWh3VTJkN3Bn?=
 =?utf-8?B?YTBMZ2RhYjJINGNOQWgvdFcwVWw3V2l1RHkra2RDbDgvbVpXL0QwZmVyVmM1?=
 =?utf-8?B?eFIwVUd1TFRGUVZZOXdma0tNcVhGM2dvT0Y0dERkYUdQZUhITFRrZkxqZlRB?=
 =?utf-8?B?R1pzbnZlWTRxbmVMYTVPUTFMUk5Dd1hFZ2UxVHZ6Y21vYWFPR3pvUGFRRDAv?=
 =?utf-8?B?VVZrYlZvcWZWZjIvdGpqUUt1NVI2KytWZ3N1WGUxTVpHalVabC9PWlpjcVJk?=
 =?utf-8?B?NlFWTkFnSVl2QVV3UUYzMklZTXhRdUNJMTM5SDNldFJQT3Q0WkxNbHZWN1dV?=
 =?utf-8?B?NUM4SStjajdnYXVDalUzNzcrV1MrckszN2cvWlFmelBwODFXdGRlZ2Y1TnpJ?=
 =?utf-8?B?Qy9HbnY1TktsczdiMzFncGVWekp0RVkwT1ZlU1JMNnNPK1dtYlNlOGRrQ0JY?=
 =?utf-8?B?YUNQQkpJaFVjdHFyaVlNcWJYWW5CbTNkM3N0U04xUmRsWU5nMUpzREVGN0U1?=
 =?utf-8?B?V2VtdWI1K1VWU3pFa1ozbk5UU0ZNNnZLQ2FhT1NMcW5mUkp0bDlNOU9lVFo0?=
 =?utf-8?B?L1ZIYVhBY2dvUmFoQWZ2T3VuMmt5V0R2YUQyc0lqb213WVlJZzJ5WWtkVmxM?=
 =?utf-8?B?clJUVnZvejVEdS80TW5iSU15dklIMGZaMVJ3QUdQSkdRUXBaVGdBT0Mra2h2?=
 =?utf-8?B?aVpiTWlaQ2dBcGo0VmFOUkQ2bjJVNzNQOHg1VFdvdHVnbW44TXN6NUNveUd1?=
 =?utf-8?B?MmRPSXFFbkd6MUU0bWRtYlppWWFHRitEZ3FYdC80amUreUFQMUJtSytocXZi?=
 =?utf-8?B?bHZKYjEzQmI4RXZLNU1uaWlldjB0eWNXekpqcnprWStZNjN4UllRMm9Sc29q?=
 =?utf-8?B?My9EVnZYMTJZMktmOUNOREYvazVrMlZlM3hDRUp5bS93SjN1UmhWTFQvaGt2?=
 =?utf-8?B?aGZicjV0N0IzOG1zNjFkb25xR3ZhRGNWNUlMWFR1V0lqeTVQVzlpbzJrbFJK?=
 =?utf-8?B?cC8vZVk1aXhJWjlBak9QSUdsWEdycEtKNlVsb1dSWjNveExVTk5UeGxWdC90?=
 =?utf-8?B?bHlSVHVuSW03QkVkdHhYOFdYdCtZekJ1anZjUzhCbDRLa1lvUzdGVWhHaTNa?=
 =?utf-8?B?ZmRlc3Zsd0xwQkhCRXBPWGJUeklqUHRqbENwTXlTelBVRUZNUVBwVUF4Mmtk?=
 =?utf-8?B?WG1wcytzYXNyaVRYbXRkU1dDTCsvOHlmUXZBMlhPemM0OEhrV0ZjY29lUFRu?=
 =?utf-8?B?a29vR3VzNWV5Y1g5S3hwWEZ4cmhCWngyNm5WUVNBbVFaMFNvdkRlL0NmVXJq?=
 =?utf-8?B?OGdqekNsRTVhci83OVhQVzQ0cXRsekRiSGJEbHpoV1U0bTFCelZyS2hzMito?=
 =?utf-8?B?bi9pcXdMK0RQNVQwL2lXZ2hHTTVXcTNOaTFKVktmQVE0Z1JRWGVrUE1Sb2dE?=
 =?utf-8?B?Tit5QVVHSUNYV2l3cS9vWGcxeDVUcmM1bTJxUTJwQjNHMDdxc3lWdTZFNTdE?=
 =?utf-8?B?TlBMRVJZemRrVHl1M3FmN051OU00MmNRK3VqMkxLbFVBZHZqb1hORytTTmg3?=
 =?utf-8?B?U0FFRS85OG02Q3JqV3UyZSt2dnJjczQrZnVWSmFoeFg4R3htanZvR3o4WXZM?=
 =?utf-8?B?cDI1MzdXQmlJZTZzZWZCamlpQTZOU0dvaElXa204bEhkV1RsaSthOEFwdkxF?=
 =?utf-8?B?MDNTZjBabS9qNHl5WGwvb3JmdS9nejBHNUk4MHhUZ1ZiVWxjRk1uckFRWTlq?=
 =?utf-8?B?b3VESWdpUk1QVGViSTh2MkhYdWp1YUYvZDVzUU1aVHZjdkFya0FaMStRdWFN?=
 =?utf-8?B?a3ovS3RlOUF5eUFCOTBpbmpUSi9HSG1YZmg1VUM5TERhSkt4UHFGend3VWtr?=
 =?utf-8?B?RXZNZ3ViRll2aVJRZW1zS3pLZmREY20rdTU5Nnd6TmhIbEZ5cHZrZGN3Zkxj?=
 =?utf-8?B?aDFvdXlSSHFmUUNKYWR1YUNSTXhOb0pWUXBpaG1ERm1oQ2JORGpocEpYdHV6?=
 =?utf-8?B?d05TVFQzM0FURkFiZVB3aFlnSkY0QUtQcGpucDRTbUJQNUpZajhPVzk2VUlC?=
 =?utf-8?B?TkQ4dFRNOVVDYmlRL1g0eDgyTU9yRC9nSGRqV08wMEluM1VlSTg4eVY4T2Nn?=
 =?utf-8?B?UzBMSjd6emZwSC9yVkNyUDBqYUtEY2VoalJvaUdnaDRYQkRMZ1M0WG1VZXd0?=
 =?utf-8?B?am01VWU3emFUTTNLR2FiUzlPSjhLbWhUK29ISUQ0Z0NyRjR6UVBJUHlMUWx3?=
 =?utf-8?B?amczcCtkOEdqV2NQT1QyMm9qZGVXdXpzM0x1ZHRFcEdSUUduVnV4M1NJYXZJ?=
 =?utf-8?Q?vtunSaCzGtrQle74=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63ed2c1b-7601-4651-1d8b-08de7622aff4
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2026 17:07:28.5852 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yUUFKMa+gRIPz57AM67JJnDIg9wGtHIrXI9oD+X6JT4g+03PR4zBiAM6O5MunOSNg8CoA9KGNhCQP08zCMQUQoKDNyqGow+tjb+gpCFo63Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFEDAA4523C
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772212056; x=1803748056;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4LfTjtrx66pbAgFuQrfb7MDu1f9lWD6fp4GZu92fVxA=;
 b=X+RPkCFEyPf+8oPqGVnbzW1pFXnVMXf6rLlm9330NHVIM6hntH1d2c4f
 Pd3qhKdn/LKb6KzFlPDJpWiD6zLgmdmoOSv7tXFDkmIcIpCCAx0PQaj3s
 MLL4vWqGeerXkq4fjR/WJslqlFRTOBFKVkmXvuv9aXwyU+iX9+6qsahw3
 O3JBxqR4DVeEXdUG2LQscWHgcwBEIDVsZ7/pYVt3uupdTWg8mYQwW16zp
 gvmWprZmpLZiF0bCcIPNcjYDmsPNY8wo5sTowpnoDx9VxCcSgWe90QPQC
 SBM3q2Wpvwq82cl82Qm99nFpvU5DzFGjbE6sNwDPD8m31L9ElyTBRCbaz
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=X+RPkCFE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH 1/1] Fix header clobber in IDPF
 with SWIOTLB enabled
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
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:srutherford@google.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksander.lobakin@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 9FBC71BB348
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgU3Rl
dmUgUnV0aGVyZm9yZCB2aWEgSW50ZWwtd2lyZWQtbGFuDQo+IFNlbnQ6IEZyaWRheSwgRmVicnVh
cnkgMjcsIDIwMjYgNDowMCBBTQ0KPiBUbzogTmd1eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5u
Z3V5ZW5AaW50ZWwuY29tPjsgS2l0c3plbCwNCj4gUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRz
emVsQGludGVsLmNvbT47IExvYmFraW4sIEFsZWtzYW5kZXINCj4gPGFsZWtzYW5kZXIubG9iYWtp
bkBpbnRlbC5jb20+DQo+IENjOiBhbmRyZXcrbmV0ZGV2QGx1bm4uY2g7IGRhdmVtQGRhdmVtbG9m
dC5uZXQ7IGVkdW1hemV0QGdvb2dsZS5jb207DQo+IGt1YmFAa2VybmVsLm9yZzsgcGFiZW5pQHJl
ZGhhdC5jb207IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOw0KPiBuZXRkZXZAdmdl
ci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBTdGV2ZSBSdXRoZXJm
b3JkDQo+IDxzcnV0aGVyZm9yZEBnb29nbGUuY29tPg0KPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQt
bGFuXSBbUkZDIFBBVENIIDEvMV0gRml4IGhlYWRlciBjbG9iYmVyIGluIElEUEYNCj4gd2l0aCBT
V0lPVExCIGVuYWJsZWQNCj4gDQo+IFdoZW4gU1dJT1RMQiBhbmQgaGVhZGVyIHNwbGl0IGFyZSBl
bmFibGVkLCBJRFBGIHNlZXMgZW1wdHkgcGFja2V0cyBpbg0KPiB0aGUgcnggcXVldWUuDQo+IA0K
PiBUaGlzIGlzIGNhdXNlZCBieSBsaWJldGhfcnhfc3luY19mb3JfY3B1IGNsb2JiZXJpbmcgdGhl
IHN5bnRoZXNpemVkDQo+IGhlYWRlciBpbiB0aGUgd29ya2Fyb3VuZCAoaS5lLiBvdmVyZmxvdykg
cGF0aC4gQWZ0ZXIgdGhlIGhlYWRlciBpcw0KPiBzeW50aGVzaXplZCBieSBpZHBmX3J4X2hzcGxp
dF93YSwgdGhlIHN5bmMgY2FsbCBwdWxscyBmcm9tIHRoZSBlbXB0eQ0KPiBTV0lPVExCIGJ1ZmZl
ciwgZWZmZWN0aXZlbHkgemVyb2luZyBvdXQgdGhlIGJ1ZmZlci4NCj4gDQo+IFRoaXMgc2tpcHMg
dGhlIGV4dHJhIHN5bmMgaW4gdGhlIHdvcmthcm91bmQgcGF0aCBpbiBtb3N0IGNhc2VzLiBUaGUN
Cj4gb25lIGV4Y2VwdGlvbiBpcyB0aGF0IGl0IGNhbGxzIHN5bmMgdG8gdHJpZ2dlciBhIHJlY3lj
bGUgZm9yIHRoZQ0KPiBoZWFkZXIgYnVmZmVyIHdoZW4gaXQgZmFpbHMgdG8gZmluZCBhIGhlYWRl
ciBpbiB0aGUgcGF5bG9hZC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFN0ZXZlIFJ1dGhlcmZvcmQg
PHNydXRoZXJmb3JkQGdvb2dsZS5jb20+DQoNCg0KSXQgbG9va3MgbGlrZSBzdWJzeXN0ZW0gcHJl
Zml4IGlkcGY6IGlzIG1pc3NlZCBpbiBzdWJqLCBhbmQgRml4ZXMgdGFnIGluIGNvbW1pdCBtZXNz
YWdlLg0KDQoNCj4gLS0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZf
dHhyeC5jIHwgOSArKysrKysrLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWRwZi9pZHBmX3R4cnguYw0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lk
cGYvaWRwZl90eHJ4LmMNCj4gaW5kZXggM2RkZjdiMWU4NWVmLi5iMDIxOTVmYTI4MTMgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl90eHJ4LmMNCj4g
KysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX3R4cnguYw0KPiBAQCAt
MzAwNyw5ICszMDA3LDE0IEBAIHN0YXRpYyBpbnQgaWRwZl9yeF9zcGxpdHFfY2xlYW4oc3RydWN0
DQo+IGlkcGZfcnhfcXVldWUgKnJ4cSwgaW50IGJ1ZGdldCkNCj4gIAkJCXU2NF9zdGF0c191cGRh
dGVfYmVnaW4oJnJ4cS0+c3RhdHNfc3luYyk7DQo+ICAJCQl1NjRfc3RhdHNfaW5jKCZyeHEtPnFf
c3RhdHMuaHNwbGl0X2J1Zl9vdmYpOw0KPiAgCQkJdTY0X3N0YXRzX3VwZGF0ZV9lbmQoJnJ4cS0+
c3RhdHNfc3luYyk7DQo+IC0JCX0NCj4gDQo+IC0JCWlmIChsaWJldGhfcnhfc3luY19mb3JfY3B1
KGhkciwgaGRyX2xlbikpIHsNCj4gKwkJCS8qIFJlY3ljbGUgdGhlIGhkciBidWZmZXIgaWYgdW51
c2VkICovDQo+ICsJCQlpZiAoIWhkcl9sZW4pDQo+ICsJCQkJbGliZXRoX3J4X3N5bmNfZm9yX2Nw
dShoZHIsIDApOw0KPiArCQl9IGVsc2UgaWYgKCFsaWJldGhfcnhfc3luY19mb3JfY3B1KGhkciwg
aGRyX2xlbikpDQo+ICsJCQloZHJfbGVuID0gMDsNCj4gKw0KPiArCQlpZiAoaGRyX2xlbikgew0K
PiAgCQkJc2tiID0gaWRwZl9yeF9idWlsZF9za2IoaGRyLCBoZHJfbGVuKTsNCj4gIAkJCWlmICgh
c2tiKQ0KPiAgCQkJCWJyZWFrOw0KPiAtLQ0KPiAyLjUzLjAuNDczLmc0YTc5NThjYTE0LWdvb2cN
Cg0K
