Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0359489BB3F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Apr 2024 11:10:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A43DD40B21;
	Mon,  8 Apr 2024 09:10:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UsyvUqb01eRd; Mon,  8 Apr 2024 09:10:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B65F740B11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712567415;
	bh=OOCOUe/ctQkUC6SDEy6wtAgjEDCTZ6qanlUB1nCqMik=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M51t59K1r8Df+tMMV0LJabrp77zphfMrXoWvOmpRT/NKLVp4pHi/uXNXVbjZ35pAA
	 WCER8+tJ4Y6sMVIDcv0b0P39LNv7v5tw33tWJSNgDbYxWcbzcy4aYgQrH+YIqsqjQf
	 /5bZ1Uh5yB+tFwKiYzaUtoPfb7UR+Zr7WakEfuxugqYfS7AD5JfHUGffQGsd+gBmXz
	 4L6CJM6xx0Wu1kqgxw/WihlrAJ5N0Xd+R+WSYM/omr46UtbOUb1wbJa/zsJYe7aZQA
	 DaKBJ+ZzRwZADsjhOjBZTSStFXhilPsGaUiOATKyhX/pruMy1C5Qq0+Wzjj5ThRZkb
	 M1468dGGUyjNQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B65F740B11;
	Mon,  8 Apr 2024 09:10:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AC7741BF3D2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 09:10:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 97D5E60AC2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 09:10:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J3zWnTWAIeKo for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Apr 2024 09:10:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3038260ACC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3038260ACC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3038260ACC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 09:10:12 +0000 (UTC)
X-CSE-ConnectionGUID: IPGcKHwbSNuGsd8vsnVIbw==
X-CSE-MsgGUID: jy8vCd5sQWu3kSzbaWBU8w==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="7700046"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; 
   d="scan'208";a="7700046"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 02:10:11 -0700
X-CSE-ConnectionGUID: 47CMEDcDQhSuDaBBKn8YfA==
X-CSE-MsgGUID: WezXSYlJQgadJVFeeTXEFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="19859472"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Apr 2024 02:10:09 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 8 Apr 2024 02:10:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 8 Apr 2024 02:10:08 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 8 Apr 2024 02:10:08 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 8 Apr 2024 02:10:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F3D7oFz4JKmSr6uchRhf3cAEbieJkfcpU0dDPUUe/+z5imuWsN+9AnVB4RLH+2cqRiupC3BeOL3tTr7jRfqDhYtWSPWJmCA+uGp4RckfpcCr8fPKQnlwrHjEMIHsdolT06xHR0x/NXWsnXdE/X67QD5s+rGr2DHa+ZNMBesyUyKX/3Faoz/r+0ObKLwPNpU3KQPESsHwObkTNn2Xouzi3vAarnxBsRtDRGRNsM8cQJ0PG1FEmERtgAMDjH13gaweP2xI95wZufgnaSXfZ/CLOo6e6C6Aj7NO1F5Gtc00fVu12xAo6il73pzH4JvQM8SNMwOETtCphcgugvwFndnnVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OOCOUe/ctQkUC6SDEy6wtAgjEDCTZ6qanlUB1nCqMik=;
 b=ZY2WGFhOFTVYcOwnnFk0xAVir6stvnkLreNg5C4KuvQ65RiH/2hGjbH49w2yfc1hPzN3pjMch4kUEc5+Aq42VNrXYeYD+1OV56VjW1q8eZP3a18OVl97jt3oW9xdQ70Jf8fGq8HReEx9UbY8oPdozHjLbqCVdu8ezSw3VB7jxqPlr98j7jCnN7Hbw0gAz9Q56FUyEK3I2cPi1KYhn0WsxFABbOSj6TT8PEXURxIs4jEIGJK3rprrPcCrtc/9TCPWsyUS52alplLaDSDwfAhArP2218KatFbtHPw3phKu1EC73xLb9XdPXXnLKAnigmFH56vFAI7RnH0fAKTONHjxwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by SN7PR11MB7707.namprd11.prod.outlook.com (2603:10b6:806:322::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Mon, 8 Apr
 2024 09:10:06 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9%2]) with mapi id 15.20.7452.019; Mon, 8 Apr 2024
 09:10:06 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Plachno, Lukasz" <lukasz.plachno@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v8 2/2] ice: Implement
 'flow-type ether' rules
Thread-Index: AQHahbEtaeENT7Fi5kGB3aX9v7AXMbFeHR5A
Date: Mon, 8 Apr 2024 09:10:06 +0000
Message-ID: <CYYPR11MB8429492BCA718AFB2402218FBD002@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240403102402.20144-1-lukasz.plachno@intel.com>
 <20240403102402.20144-3-lukasz.plachno@intel.com>
In-Reply-To: <20240403102402.20144-3-lukasz.plachno@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|SN7PR11MB7707:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MQoPd8j1VS4yJN7v5VFBCpd/eR7/+BhSLaGn9EJO+JPMT5Kv8DUbNXfNN4o8uERlrVFOdj8ErJOQqac6Z8gNTCkSUPGyra724Izk7FP6FrCclKpXHnngRpPb+s67eNtsy3eJ3TEKPRn39Hn1jCwbb9OjqQglZBIUzHVNA0XzsKMoTwSoswgMwDf6qn14JyoNcgxiDQGjHIfybWwbXWcoRSwTmjidRhjBCJiYsrCsCL2fgNwQ0CfnAAP5XMKZxzCuLI7GegLMYF2OhZnEm3ZcAUmbeOmrMv9MH7kmQosI3FKJggljtlwkGmE9i3rB88BNY5ZHWy05oF9T/d7mfs+mw9FK5Ao+o6PT8QLSoO/6jo9kq200PcEu3Wu76edBwLrRezhmo1wboKGArJYDJ2yV5AMXtIlvcyeI2Y6xHJEmyXmAghn8DPNnGXPWyZ5iNQbF1xZ12JiZWZeMCZefpgiYvawswjHh3MuORlRYtt7/J2FHkDxN++9XRHkPeFC4V/wKJaRrD4RjKa9GjPPD9ATHG/wtGL66d5V7bX61mgzXA6XoJDFkOA7EAIwfzzSHt4YsRVSDUMf+8tYinStkrfZFJBvDXMoLKTYCwtFEQX75+elk3zDjeJ2qGcRnRxRNsKbIR6XOqHzvMC+POp0TtXoF87vtUcJ1M1GYyXcEgj83NP0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JiRtRJGLhIzsvB4LhKieDgguZvu+Jvkcy0Sz5dZcUY2oANPFlkZOOiLpWuFq?=
 =?us-ascii?Q?UkC4IbIu9ZnU0Y4waDezNxOuQYhBFiRwPvVUs0eEMx0TycfHe+oEmc4hLe29?=
 =?us-ascii?Q?Ucpba4eBdOMZvQ5gDFSH5vc0r8CO2edig++PoEKfndOutDtTbpMEBme9mnTY?=
 =?us-ascii?Q?5ZWZhw/P5o7kW9LCNuhcht/EYZytLBTMLFq+x7KbxZhi93MHhYKXlNqOMGTG?=
 =?us-ascii?Q?TVOeQmP8qt6ps+rePLw4Rz9/FdOWXyqQL47GzOatuof0PfhzwdOvJsYARp5G?=
 =?us-ascii?Q?vpRzG6/gFFiGyQcorJP2xCg47N4LpHCDn9/v+RGwQLJBlEmKR+sTOpUjIYXg?=
 =?us-ascii?Q?ceOqWxPmWwe+7bURvPkWNpimOo0ygHF9+CF7zLhAhIBU4zlG4riGKdfxFrjA?=
 =?us-ascii?Q?hSSwgbDaXz4Lo8WZLvKDQIkSIkvcRWQVYyd6XzzrQkb0mNabxodq0+KzQEzE?=
 =?us-ascii?Q?doe/kZeO/Wk9QOcJqPtFrwkcMrCDQIzZ174Fj5P0cHXYuCIFIW5oWJPeXw33?=
 =?us-ascii?Q?cHGIs8tUIva/FW9YYivnGkIXawRiMTwyh7UqElO+FGYgCRCLH0u6j6cCNtyS?=
 =?us-ascii?Q?EYDiJ39hShv8itzZwRwo7xYZBDUCvWBEcwXZf4hxHu3PTKAkU9s2EvSPxILY?=
 =?us-ascii?Q?Vljwz3zGrQG1ZBPtYQrsipVdXMtPFnuecgu4PobLUaaX5O1OhYwzOqc503ZE?=
 =?us-ascii?Q?qmT4KfeMNEKFla51xnV9v1PuE/jXnYmMERnilGrSgmj4VgGFvFYx3YqM1ddO?=
 =?us-ascii?Q?rjo54x3X6dChC9zznqidR926gKnYRd1sNHC3hq3/DiL8S/yXEAcK0I9lCdrg?=
 =?us-ascii?Q?bKZtxtJeIoSq4S21NBaq+sL64B7RyzLOQrOlgWmGhsNFsscEVPvYX7AGZPH/?=
 =?us-ascii?Q?IwP3t1A7KMUZqgppTAeD9Rxv0eZAlFqoAFU/9tkByoYh4hui9IDgun5taMFY?=
 =?us-ascii?Q?cEM7tdzlaCbtAlRFNpz+K11ci4EtWTbbQ8NgCeywuLCSAu6hThzbZ9Dzg84C?=
 =?us-ascii?Q?5aBIb/4qVovks8savdm64vqCWYAcnt7HkIyo3CwQlZKSDTHzNKRFcgPaC6ps?=
 =?us-ascii?Q?Y0qHcWYHQjs+L2I9Hd6S1lcIl8QrKW6Y5bZQDfmXMvqSpbWtfn0jBV02Q2ox?=
 =?us-ascii?Q?TjbkqZrkUFPNQO9PYI1BdYjEvjW9m3sHnc4I9CRm/07PDXLp8X4Y/4STrtne?=
 =?us-ascii?Q?LcmbSw5XYHFDJ54QOAuXikLSWnqnqyYpFJa6nd5hH5j+uHiitHNpV4QBFWtg?=
 =?us-ascii?Q?6BJSxX7sjmIjx80JAqvFa8rH9ikBpP0M95nyqir3FI2rErsa2jDoTidW+oph?=
 =?us-ascii?Q?hD+hEFHmoWe8uRCUieJ4M6xuKe9iqb2VkCJlyTQUPKpDztUUIxmv+s4LtCz/?=
 =?us-ascii?Q?2pxLMo4Ym5YmjE0qRN9iwPpDnaT68HmGdQS0+kNs5GvcoaZ4GFqHxksykcg0?=
 =?us-ascii?Q?LyIpxie9ww126eTa2lOeIDmSWPDCSD3mDHKa96xNTmwwPVMFJn+awcmOg0Lo?=
 =?us-ascii?Q?Zvxua0KHXnlogvOGe2+Mqaf4u8mU0aIjHz9JvZMnQmHPWGEt+nMMydaHx0wU?=
 =?us-ascii?Q?totQyiACU32mvEWSc8vzU9fOy5dUVLk3Yzh2ZilqGGP7/pC1z6vQSmP7e7Ro?=
 =?us-ascii?Q?8Y/v6TW/U0CBQsqQLCeLYvk=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82066ba7-e8d4-4cac-b89b-08dc57abaeeb
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2024 09:10:06.4961 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HPW+3ZCglLrRQTOG8+58bLTdnEfas/pDXvrI52ChmPZdJpAUr9J2rwo5d+q6RqDZtCv38z+ydz65QliynFX6LYA7DIVd4xek1PQrM5vEyx3rqhG0amWjc04wAXV12wuW
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7707
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712567413; x=1744103413;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EGUxWlNWxxyMXVFRck+1GEHG3N+t/DBkXKwdaDgrCXw=;
 b=AnJOiTlbaX0Az8DovnpB7LBzAfK3X0kZfBJmRHCQg6MJpS6ssT7D9eAR
 6IUw7m5BLa0z9PeCjS44nA/L1ZdT5fD8GNcjy2nBCuvWlRVP1NSYaeuiW
 Vpix1LwrrcxmmurjYc3eKC67kzpCgjcc3igfhTgdfNuZhn+A6oeX3kX3g
 86fcg6BR8oGYJSCVYrZ98RwQ3HlbefHGK5lqJhElX0LvBzL0faBXbfWIF
 MNb5kRPclx6/S8iyMCMIb466dW7KR7Jy3lVOP6D13l5C0QriLv9buwXih
 8vDgEzMPlKZbxJkkAmr+J51PhAah2jHxDKBVN7piHaO7KJlVVr6FIhT/n
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AnJOiTlb
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 2/2] ice: Implement
 'flow-type ether' rules
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "brett.creeley@amd.com" <brett.creeley@amd.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Buchocki,
 JakubX" <jakubx.buchocki@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Plachno,
 Lukasz" <lukasz.plachno@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "Pacuszka, MateuszX" <mateuszx.pacuszka@intel.com>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of L=
ukasz Plachno
> Sent: Wednesday, April 3, 2024 3:54 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: pmenzel@molgen.mpg.de; brett.creeley@amd.com; netdev@vger.kernel.org;=
 Buchocki, JakubX <jakubx.buchocki@intel.com>; Lobakin, Aleksander <aleksan=
der.lobakin@intel.com>; Plachno, Lukasz <lukasz.plachno@intel.com>; horms@k=
ernel.org; Pacuszka, MateuszX <mateuszx.pacuszka@intel.com>; Keller, Jacob =
E <jacob.e.keller@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel=
.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v8 2/2] ice: Implement 'flow-t=
ype ether' rules
>
> From: Jakub Buchocki <jakubx.buchocki@intel.com>
>
> Add support for 'flow-type ether' Flow Director rules via ethtool.
>
> Create packet segment info for filter configuration based on ethtool comm=
and parameters. Reuse infrastructure already created for
> ipv4 and ipv6 flows to convert packet segment into extraction sequence, w=
hich is later used to program the filter inside Flow Director block of the =
Rx pipeline.
>=20
> Rules not containing masks are processed by the Flow Director, and suppor=
t the following set of input parameters in all combinations:
> src, dst, proto, vlan-etype, vlan, action.
>
> It is possible to specify address mask in ethtool parameters but only
> 00:00:00:00:00 and FF:FF:FF:FF:FF are valid.
> The same applies to proto, vlan-etype and vlan masks:
> only 0x0000 and 0xffff masks are valid.
>
> Testing:
>   (DUT) iperf3 -s
>   (DUT) ethtool -U ens785f0np0 flow-type ether dst <ens785f0np0 mac> \
>         action 10
>   (DUT) watch 'ethtool -S ens785f0np0 | grep rx_queue'
>   (LP)  iperf3 -c ${DUT_IP}
>
>   Counters increase only for:
>     'rx_queue_10_packets'
>     'rx_queue_10_bytes'
>
> Signed-off-by: Jakub Buchocki <jakubx.buchocki@intel.com>
> Co-developed-by: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
> Signed-off-by: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Lukasz Plachno <lukasz.plachno@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 138 +++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_fdir.c     |  26 ++++
>  drivers/net/ethernet/intel/ice/ice_fdir.h     |   5 +
>  drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>  4 files changed, 169 insertions(+), 1 deletion(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

