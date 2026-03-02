Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CJOdJqg5pWnt5wUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 08:18:00 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DB6E81D3C78
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 08:17:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB88F8378A;
	Mon,  2 Mar 2026 07:17:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lW7uRPrVFKGP; Mon,  2 Mar 2026 07:17:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5664583638
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772435877;
	bh=4th3GuKk7kjlA8rT7b4DG9dCANhtzdGt+PuGDr5voNA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NcXCd0TnMk+IN0QRhB+DlkWXlUFdG62GkNF3TtjVn5m8wfy89WXWOdQ+BCi9No1hB
	 w/uhwE985yt48f9QqunZN72gdB3vTN4yi/EeC/OFEByrbyEHlm43AExOwYXBgWztHi
	 dTfl8CUrLLCpEaXvHXsDQYLz4kvCMiWde1hPF7i6mikcVUNbbKOE1GPSGd3/LcJffZ
	 yqGdv8ygEnTb86zOLnSJHGirif+HRwPbNaKcE4CeG3Lw2uLgkdJlSrkGVMAcu740/D
	 3G9z45J63/6MMgkqxmBNrA6sfWer8T0TgDKS5Djq3zFcbZtpBBxbxUtyW57zbwkUj0
	 EVKTmwTiYnoIA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5664583638;
	Mon,  2 Mar 2026 07:17:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3E0C3231
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 07:17:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 38176608A0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 07:17:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r-YplZO-RnI0 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Mar 2026 07:17:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 39ABE60E5F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 39ABE60E5F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 39ABE60E5F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 07:17:53 +0000 (UTC)
X-CSE-ConnectionGUID: g3XZKLSOQN6TtQhtrnTH+g==
X-CSE-MsgGUID: UUCEuXszR2KO2wI74fa61A==
X-IronPort-AV: E=McAfee;i="6800,10657,11716"; a="91011406"
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="91011406"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2026 23:17:54 -0800
X-CSE-ConnectionGUID: MXGtsdlkTR6bwuVGByRx7w==
X-CSE-MsgGUID: DLal+HVyQrmUq9uWbUptAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="215584268"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2026 23:17:53 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 1 Mar 2026 23:17:52 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 1 Mar 2026 23:17:52 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.20) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 1 Mar 2026 23:17:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PwcIBZH9ervRt28eN8pdtXx7L4T3DbpTENSIzX2OjlbYpNqlZmOHezXdz3/PHA4T71UDIBYUQsussy9yxTnyH4v0v6dynR4XqYTfm+p1mpZVIdBP1F2B7oI2sSxdP/ngbL0gcfJeZN8uMMnwUQAnN/39Y4IX8VEjCS5Cf1jzNwwGYcmoY96ouSiUvwT6enT3qfWtxys9APuGE+IYDL9sJPeXgTjeuaVfZfN8saTDOHe3LYwRiqTIyXIb80htl+9PCIkL1IyqbY1Kp4UzjhTLIONgVuhsvxA77XQfCM/lRqt0LbgKhL6ZK3vNemEs5OJdYuaCgwpXFpbpCzRruX7wbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4th3GuKk7kjlA8rT7b4DG9dCANhtzdGt+PuGDr5voNA=;
 b=Cn2OdCTzB6ZJTqksrCXvquiGUx/FJLrvULAzVG4dXsB2j9SBisILZB2wSzlNiseZsn29FMrUXUQmxdzR9BXJIwcIsLJ6urz7CNHk0u50PURZu/Twtd9O3rpRPqkYHq5N+A9yzSCVtq2TCJ44lW8B/AM6EhLg9LrksCu8kyjqrNhR6RhLBhvWe9slG57fwN6zw3tyeKY2VlYMEuaPUyAJnEqy06YYJJmsFiAEVgG9l+s5ytrvIh4RkvIBGO9uAemaQAKb1RPADlUkMc4lhost7vItRuWTRxjt7274C+WjHLa4FAYH2ZfhsKdzLWtPhr1EtPJDkyjgjw8kVVKSJo7Wlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by LV3PR11MB8532.namprd11.prod.outlook.com (2603:10b6:408:1ae::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.20; Mon, 2 Mar
 2026 07:17:50 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9632.010; Mon, 2 Mar 2026
 07:17:49 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Steve Rutherford <srutherford@google.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "David
 Decotigny" <decot@google.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, Brian Vazquez
 <brianvv@google.com>, Li Li <boolli@google.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>
Thread-Topic: [Intel-wired-lan] [RFC PATCHv2 1/1] idpf: Fix header clobber in
 IDPF with SWIOTLB enabled
Thread-Index: AQHcqCivcQ/hnHQJ30egg9InuCxBebWa2Nmw
Date: Mon, 2 Mar 2026 07:17:49 +0000
Message-ID: <IA3PR11MB8986ECFAF06C39B257FD8E51E57EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260227203457.558196-1-srutherford@google.com>
 <20260227203457.558196-2-srutherford@google.com>
In-Reply-To: <20260227203457.558196-2-srutherford@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|LV3PR11MB8532:EE_
x-ms-office365-filtering-correlation-id: de0e1a65-4c3f-44b6-46e5-08de782bcfd7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7416014|38070700021|921020; 
x-microsoft-antispam-message-info: MS/IEZWGuHJeat4FphDItUR5u4o/KIOd2D5RUKEPb1w5KyXR2x3M+9k/3yS0zxZhP9hcJ55KxCKyUnjZIU6wZ1BT6iTYgpD+dNYcR64KL72iqD3tjqxe7+tLL9Ozvs1PsjGCwA0LTA5JNB0FH+i/d0i6wFHYePubN68WAhRFABaHxidFgviTYwNrzBzfF3jc8Ht8cGZ2kN/vj8cpB9LPy/dfBKm6YuM+XnM6Nwg19OxLsUgWnUkpnBLS69zejtclApog46YKWZwYv7gAzkrXo575dG1xEpCC9Gb12GD6G63IbynLWhM/vF13rOcsrG4pVHFah9dalMm5iKqYEKlSGtYQDAIUUnoonsFYY5b88w6RS/MCFfSo04yvhdDORHiNCwltgfimkzphBsmSNKI/mTlDOg+g5mzvaSnAUewve29MsFSD6PloOafvvj0kc5Yh4u6X70LhVJV01wTNabMNHAZUt63QToqZGku1IzYhCp91yVXvcKS0KHhsI7i+cAaB6m3+3OVxPeC5Tm/qBIV65jqfkvNkZZjyTrPKVWM6S0E/bKAdNOGxSXrIXSeJtxeLWAlQGPEU1ofeqWKh1wi1+6nTyes1m/Epblu6yvIUAEY3cEWmHGhnH79pdM/uYkf8GNRFB7VV6/qQTVcqS6p9C6YEGuvioF/ZegVCgJROgGnO08FKdSrFXQl4UfMXH0dYBohEpLU9JL48SJJm2tLCZu8TOK5yLeXyrYjL8YMZjszgnNPongKBKN4wbWPe5yVa7qYytSNqp+n0qYEeQeBA7R/rMlPJHQc0OlWJnHMbcBBkcjE1lDaJNc5DiB6Wr6j6
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7416014)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TUNuN3dpQ0gxNTJ6NkNhYzd2WG1pNy9RWFp2bnQ5YVl3RDFITG9QT24vZitz?=
 =?utf-8?B?WGpDMGxhbXg3UHlBZCsvbjM5ZStFU2gzWElWRmIyUlRXLzE3T2JJOUt6cmRo?=
 =?utf-8?B?c3FpdG83Wmd6ajFWT0xHQkI4ajBhUlJVRnZUZElkalRzT1VuMk9XSzA5ZFVI?=
 =?utf-8?B?S215YW5Jdy9SVmU4Rm5uU0toZFhDT3RNTzBvczE4aU1NZ2xmeEluRmt5aWVK?=
 =?utf-8?B?UlNCVVBneWZSc3Z2YnQwanVrZDBJL1FxdVUrbFNrMElOYXFjcm1oQlRlS0Vw?=
 =?utf-8?B?b1Rzb0YyUFN4L3AxMi9lYjVGR2owMG1TZGFjNkM0TytWNVBncjd2ZGZwVVlz?=
 =?utf-8?B?bTNTNWpidWVhbWdQR2syQzYxcWU1K1BmQkN0UXhvZXJ3YnVGa2FiVnBNS0Zi?=
 =?utf-8?B?TXdRbUxydkdHUW9FZVJLMzM0eUd0S3RKbjk0L3ZGSytxeTlFdkhBYVkveGdo?=
 =?utf-8?B?djBvZFNkTXNRSElpc0pUUWZIZDRLUjRUUkc1aUo1VVhlOHowQm1ZQjZEWllx?=
 =?utf-8?B?RDZYVjF2N0N3Z2F5ZTgyTW92SG8wL2JxVUdpVXhZUWVkT242Nkd4Y2dMcDQx?=
 =?utf-8?B?R1R1Z09LZ05Nc3ptSEZVLzFFZkpEN3ltY2xwSk1LYTZWUUxhRFBnYnFuY0tB?=
 =?utf-8?B?ZkNiU2N1SGpWeW5wK0VnM3kyc3dxMmxPeEJaaUJ1ejJ3dDJkREVmc1J1UjNw?=
 =?utf-8?B?UnRHVUM1YlF2R0N0N3pYT1p3QW1CNXN5c2Y3WW84cjUxZW1PQWZFUmhoR1hn?=
 =?utf-8?B?TXJPSXVNNEtvMDhsZ3p6NUtNUWd4OHJhd1V2ODNFeXF2U2RtUFoxbG9pTWlI?=
 =?utf-8?B?dE1TRmRyNTlBZjlzTTR5aUY0QS9zOTdWeTNHUkJFSnBsNmdqemROQUh4dmMv?=
 =?utf-8?B?WGJRQlFUdlp2KzZsQXl2QkFHRXJQbldPSVNWV0IvQzQ0RmxSamZzVEszakFY?=
 =?utf-8?B?SCtIOW13UmZEMWVFbmNxZHJhVHJkY2NMdzM2WFp4VElWYVpaNUF1b2dnaEtW?=
 =?utf-8?B?cllWSy9tYWtLRW42ODNaTkRRUkFrOXJjb1BmS2trNjJGSG9VTlZMaGJ0Zk5L?=
 =?utf-8?B?Qm1KQkVmcEFOZC83cVd1UFZzWnNDTVVWS2h2WW11MElPM3pFL2p3bHUxZ0Vk?=
 =?utf-8?B?VnN0Qk02SmdoQkx6OHV1aEFZblM2VGw1YzJtUmhlRW5RNmR2VEwrODR0QVBP?=
 =?utf-8?B?ZmdxVERqM1VieUVVQnh6SklUMVBUaEIxZ0t4R3JOZElNV3dYR3lTa0VXTGlr?=
 =?utf-8?B?bytYTWcrVGJBY3NTQldMRHRWd29icFRPOTIxWWtKMWI3a29iTUVMZUIvMTc3?=
 =?utf-8?B?MisvWmU2eEdtMWcycHRJSHVYZ3FNbEtwVWtHVHpnNUhHUnJSVm5TVlM4ZU5x?=
 =?utf-8?B?Zlh4TUZIUkhUWUY5Vm9xa0M5Njlyd1ZmdjJLZnJwcEJyL21pNlNwYXNkZzZs?=
 =?utf-8?B?K0d6b0dqNlRuM2hSbisweWRNaUpOekdpbVg0YjR0aUxFRlhPSExBWDg1ckw4?=
 =?utf-8?B?SVVQUnBIclZGSC9CRC83WkJJdXpyZGx3L2xPZmdBOGhieFphMG01OUg0b1hn?=
 =?utf-8?B?bXdjRUYxM0hkdEFiZEpzQkNodjVYNmI5OWRBZDQwYmpSbGVkMXNoanRwWW9Y?=
 =?utf-8?B?NDg3dkd6TVJFZWNFa3hzYk1EdDB1NVRLZ1hwV0ZILzNORDF2S1FrOU5YdUdS?=
 =?utf-8?B?YURtSjdreVZjMlR1L2dKSERjU0hyVnJhVkpkT3pqcE5WdkhwVWllRk16Um1Q?=
 =?utf-8?B?R21LV2V3V3VqMHhjM3hya2xsOW0vNlZjU0pSNVJ4bml2UkhtTk1wdytmdjh3?=
 =?utf-8?B?Q0pDWEZjbm9HQ1h1R2JaQ1F0Smo1ZHBmVE1WTmwzRXIyUEd2L2w3OWJQTWMx?=
 =?utf-8?B?UnZGL0U3YVlDTldQTlJBamVkL0NXVytxYW1WSGpuWlZ3ZmYvTm5XZEEyOWx4?=
 =?utf-8?B?S0t2STNtUW1vME9oMTFrWjZEd3RwMlF5aEVoYjk5dloxSTIwU2VzaTdGV1R6?=
 =?utf-8?B?OGltOFFoS2NSWmFMMnNWLzg3NnpRdTV6T3RRRThhTy9BT2J2Z1BPakJ6RmI1?=
 =?utf-8?B?ODhQc1h2cUgxblV5K2ZiSnlJYTRXelpGNTBhWE1leUtpemNkVW9Wb25JSFEr?=
 =?utf-8?B?WjNHZi9oVXZPbEE1SFd2amlsWW5tK1pxeSs5ZnJEOUh2RGdhWjdxT01kNTRK?=
 =?utf-8?B?ZmQxaGJSSXdrenVtSUthZjlkNEk4N0dNZVVseUhSeS8yRUV0S1hrSVRGZEQw?=
 =?utf-8?B?ZER5YmswWndUTmJUZFNYZWlVbm43dDV2YzRVakhGaER0cUd6V2dabEZ6ZTBy?=
 =?utf-8?B?dUZxczBWVEEyNkxwd2pjRGFPSUpHVEIrSDFEQTVTancxTldQTi9vdmFrKzlz?=
 =?utf-8?Q?KUu9fu20A8rNAIOk=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de0e1a65-4c3f-44b6-46e5-08de782bcfd7
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2026 07:17:49.8698 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1KRJmtQoW90bCKiKX8Pa/hbbXn8rMsgmvyQmtRz8+vvjRP4mA7bwxfqsr1N8OWU1m0NwsSgcad1dOeBjYz20APcb0uLUrGV8P/ei8M1383o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8532
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772435874; x=1803971874;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4th3GuKk7kjlA8rT7b4DG9dCANhtzdGt+PuGDr5voNA=;
 b=G+URqcrIQcDv/1aEyn8mENbiE0b2D0GtEELozwqlHmvgPH6C+gr0iscB
 +UDb4PCfOSZzctajo2yglg42nVMUe9oBkK2wRs1DGsQ9Ntjn6scRSMk1B
 k0qv7vTuD9D1n59gXetTzNf3lYuQ5A4Ag2+Dsw5V3i+B+B/NgKIBNtsTt
 vcFaC5NCtnU69QqQhe5BCUtgNwLvOTmH48pBIFqWsH5BK+z6eJ+QsAgXO
 wKaZClQG9lD9pcrzb7Rp+moLmjsAY7B0fE7M96Barrxr4yoHLgwUZr0w0
 Ew9HCtaRnM3TDPwl5f2zJEpA2jEQrLEK9Yn6KSH2N00Rapn11hYCIqdy6
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G+URqcrI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCHv2 1/1] idpf: Fix header clobber in
 IDPF with SWIOTLB enabled
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
X-Spamd-Result: default: False [1.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:srutherford@google.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksander.lobakin@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:boolli@google.com,m:emil.s.tantilov@intel.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
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
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: DB6E81D3C78
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgU3Rl
dmUgUnV0aGVyZm9yZA0KPiBTZW50OiBGcmlkYXksIEZlYnJ1YXJ5IDI3LCAyMDI2IDk6MzUgUE0N
Cj4gVG86IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IEtp
dHN6ZWwsDQo+IFByemVteXNsYXcgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBMb2Jh
a2luLCBBbGVrc2FuZGVyDQo+IDxhbGVrc2FuZGVyLmxvYmFraW5AaW50ZWwuY29tPjsgRGF2aWQg
Uy4gTWlsbGVyIDxkYXZlbUBkYXZlbWxvZnQubmV0PjsNCj4gSmFrdWIgS2ljaW5za2kgPGt1YmFA
a2VybmVsLm9yZz47IEVyaWMgRHVtYXpldCA8ZWR1bWF6ZXRAZ29vZ2xlLmNvbT47DQo+IGludGVs
LXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+IENjOiBuZXRkZXZAdmdlci5rZXJuZWwub3Jn
OyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBEYXZpZA0KPiBEZWNvdGlnbnkgPGRlY290
QGdvb2dsZS5jb20+OyBTaW5naGFpLCBBbmphbGkNCj4gPGFuamFsaS5zaW5naGFpQGludGVsLmNv
bT47IFNhbXVkcmFsYSwgU3JpZGhhcg0KPiA8c3JpZGhhci5zYW11ZHJhbGFAaW50ZWwuY29tPjsg
QnJpYW4gVmF6cXVleiA8YnJpYW52dkBnb29nbGUuY29tPjsgTGkNCj4gTGkgPGJvb2xsaUBnb29n
bGUuY29tPjsgVGFudGlsb3YsIEVtaWwgUyA8ZW1pbC5zLnRhbnRpbG92QGludGVsLmNvbT47DQo+
IFN0ZXZlIFJ1dGhlcmZvcmQgPHNydXRoZXJmb3JkQGdvb2dsZS5jb20+DQo+IFN1YmplY3Q6IFtJ
bnRlbC13aXJlZC1sYW5dIFtSRkMgUEFUQ0h2MiAxLzFdIGlkcGY6IEZpeCBoZWFkZXIgY2xvYmJl
cg0KPiBpbiBJRFBGIHdpdGggU1dJT1RMQiBlbmFibGVkDQo+IA0KPiBXaGVuIFNXSU9UTEIgYW5k
IGhlYWRlciBzcGxpdCBhcmUgZW5hYmxlZCwgSURQRiBzZWVzIGVtcHR5IHBhY2tldHMgaW4NCj4g
dGhlIHJ4IHF1ZXVlLg0KPiANCj4gVGhpcyBpcyBjYXVzZWQgYnkgbGliZXRoX3J4X3N5bmNfZm9y
X2NwdSBjbG9iYmVyaW5nIHRoZSBzeW50aGVzaXplZA0KPiBoZWFkZXIgaW4gdGhlIHdvcmthcm91
bmQgKGkuZS4gb3ZlcmZsb3cpIHBhdGguIEFmdGVyIHRoZSBoZWFkZXIgaXMNCj4gc3ludGhlc2l6
ZWQgYnkgaWRwZl9yeF9oc3BsaXRfd2EsIHRoZSBzeW5jIGNhbGwgcHVsbHMgZnJvbSB0aGUgZW1w
dHkNCj4gU1dJT1RMQiBidWZmZXIsIGVmZmVjdGl2ZWx5IHplcm9pbmcgb3V0IHRoZSBidWZmZXIu
DQo+IA0KPiBUaGlzIHNraXBzIHRoZSBleHRyYSBzeW5jIGluIHRoZSB3b3JrYXJvdW5kIHBhdGgg
aW4gbW9zdCBjYXNlcy4gVGhlDQo+IG9uZSBleGNlcHRpb24gaXMgdGhhdCBpdCBjYWxscyBzeW5j
IHRvIHRyaWdnZXIgYSByZWN5Y2xlIHRoZSBoZWFkZXINCj4gYnVmZmVyIHdoZW4gaXQgZmFpbHMg
dG8gZmluZCBhIGhlYWRlciBpbiB0aGUgcGF5bG9hZC4NCj4gDQo+IEZpeGVzOiA5MDkxMmY5ZjRm
MmQxICgiaWRwZjogY29udmVydCBoZWFkZXIgc3BsaXQgbW9kZSB0byBsaWJldGggKw0KPiBuYXBp
X2J1aWxkX3NrYigpIikNCj4gU2lnbmVkLW9mZi1ieTogU3RldmUgUnV0aGVyZm9yZCA8c3J1dGhl
cmZvcmRAZ29vZ2xlLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
ZHBmL2lkcGZfdHhyeC5jIHwgOSArKysrKysrLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2Vy
dGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX3R4cnguYw0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2lkcGYvaWRwZl90eHJ4LmMNCj4gaW5kZXggM2RkZjdiMWU4NWVmLi45NDYyMDNhNmJk
ODYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl90
eHJ4LmMNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX3R4cngu
Yw0KPiBAQCAtMzAwNyw5ICszMDA3LDE0IEBAIHN0YXRpYyBpbnQgaWRwZl9yeF9zcGxpdHFfY2xl
YW4oc3RydWN0DQo+IGlkcGZfcnhfcXVldWUgKnJ4cSwgaW50IGJ1ZGdldCkNCj4gIAkJCXU2NF9z
dGF0c191cGRhdGVfYmVnaW4oJnJ4cS0+c3RhdHNfc3luYyk7DQo+ICAJCQl1NjRfc3RhdHNfaW5j
KCZyeHEtPnFfc3RhdHMuaHNwbGl0X2J1Zl9vdmYpOw0KPiAgCQkJdTY0X3N0YXRzX3VwZGF0ZV9l
bmQoJnJ4cS0+c3RhdHNfc3luYyk7DQo+IC0JCX0NCj4gDQo+IC0JCWlmIChsaWJldGhfcnhfc3lu
Y19mb3JfY3B1KGhkciwgaGRyX2xlbikpIHsNCj4gKwkJCS8qIFJlY3ljbGUgdGhlIGhkciBidWZm
ZXIgaWYgdW51c2VkLiovDQpKdXN0IGEgbml0IC0gcGxlYXNlIGFkZCBzcGFjZSBiZWZvcmUgKi8N
Cg0KUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZA
aW50ZWwuY29tPg0KDQo+ICsJCQlpZiAoIWhkcl9sZW4pDQo+ICsJCQkJbGliZXRoX3J4X3N5bmNf
Zm9yX2NwdShoZHIsIDApOw0KPiArCQl9IGVsc2UgaWYgKCFsaWJldGhfcnhfc3luY19mb3JfY3B1
KGhkciwgaGRyX2xlbikpDQo+ICsJCQloZHJfbGVuID0gMDsNCj4gKw0KPiArCQlpZiAoaGRyX2xl
bikgew0KPiAgCQkJc2tiID0gaWRwZl9yeF9idWlsZF9za2IoaGRyLCBoZHJfbGVuKTsNCj4gIAkJ
CWlmICghc2tiKQ0KPiAgCQkJCWJyZWFrOw0KPiAtLQ0KPiAyLjUzLjAuNDczLmc0YTc5NThjYTE0
LWdvb2cNCg0K
