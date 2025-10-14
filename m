Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A29EBDBD1C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Oct 2025 01:37:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2C3B3611D9;
	Tue, 14 Oct 2025 23:37:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZFxaesSd0lED; Tue, 14 Oct 2025 23:37:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 903CD611DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760485029;
	bh=yyParA9F9izFSxoHVAPWRFI/oshwR6LXJp7onSCSqjE=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bWoz/okXU/uII+Fv+VJxPFiBYWm0969GG/Gz2u0eBJ2NFPPX0J/crCqgNwXNiklRk
	 pK1Z/1XmOKB0/bGSgbeY6FdzDB5HfaaKYzbCPsxDclTznbZTx12v23k6ymg8D2XEj8
	 SoFB8dISofYYFNOBLMAb6Ufd3Ny/SBwEAlZ1og/fozONffu5WMGwQNC6B1DYPTLJEV
	 HpCVl+OOz8R7MjzcQhPd5Madcj2hgyn1aT+fZuFaixS2rmmz6ZrRQp0YQCyD9T1FU+
	 jE4NB4KLarVE/URwoNWeuieYqailBdn73glC1/KRCX1JMd8tGoJ6nGvews2tmok+B/
	 ZBNirKIR4HN2g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 903CD611DF;
	Tue, 14 Oct 2025 23:37:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6816CBC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 23:37:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4E4DB83C49
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 23:37:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VU4bqqA07pjK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Oct 2025 23:37:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6C86683C4B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C86683C4B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6C86683C4B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 23:37:06 +0000 (UTC)
X-CSE-ConnectionGUID: 7bBXl6zcSzS3ztL9GosrVA==
X-CSE-MsgGUID: U/HAM+gHT1ufyOEW1fGfvw==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="62548538"
X-IronPort-AV: E=Sophos;i="6.19,229,1754982000"; 
 d="asc'?scan'208";a="62548538"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 16:37:05 -0700
X-CSE-ConnectionGUID: SEaB1H0XS62F/AHn5RxePQ==
X-CSE-MsgGUID: FHXjYFm4ST+IWO2PO4EZWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,229,1754982000"; 
 d="asc'?scan'208";a="182489031"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 16:37:04 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 14 Oct 2025 16:37:03 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 14 Oct 2025 16:37:03 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.0) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 14 Oct 2025 16:37:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A07Xbu58FjEJuDPkQ9mn/Vhnl4FMT5iwe8pla2UU13kG+V4zpw1HAktoh1DR2OnteVPIJPSTeIPcQazO5QGhs0/S3vY7pGyZLljisZK2+Xy/9I6D4oTwHz/hxlPYZEKvYwIl9/CNJ46O7F2c5EnBsr2QsTDdSq49vvGGFpAz0zoTpyEKdmwK2RRosQO49xsKXLf3k7mzeoC3shU+ZS/oAS1yYwX2r4tu1gdzSshU34WQd9QLVhvZRgVuc6HvgEoBFMR0/S19YpLoCy5BF7a8z1g5qPkUBjlQ6PyYY0hg9zi6hjSqcpPqBNPedIyCf4TCu1175VfPYd8isF3m+Bn0zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yyParA9F9izFSxoHVAPWRFI/oshwR6LXJp7onSCSqjE=;
 b=EMr4juTTXZ/ol2TDcsOduOY9CDVjAkskkic6eipbx+gj84QXktwArJbA78byTUiZ3hF3rpnx0/KUBx+2GdNM7wt7uLpY9G37DBC3dPjs9ML5AFd8XBEwDeLQkVtAH7UysipxovBm2+5Utd3GbBrFJi4LL6zDZQ2wR7/XA3mMYzIODIxmOT16MWD8++kV/mdNXOZqmV+0cT7bEbty7q7k8m5ckOJ2cBhoyodA7XlYF41HPJXLjUce1h6HSyuzucMDIZ3ww+S+bTtJnC4sTgLpKfYJNZc8KUiAY+kDZcYD+hnXXGdsvBAea4S24mpVy6t3Ccg405DyeLUvKZpKnupCGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SN7PR11MB7666.namprd11.prod.outlook.com (2603:10b6:806:34b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.13; Tue, 14 Oct
 2025 23:37:01 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%4]) with mapi id 15.20.9203.009; Tue, 14 Oct 2025
 23:37:01 +0000
Message-ID: <0db6777d-1f2e-438c-b56c-9af16787dd27@intel.com>
Date: Tue, 14 Oct 2025 16:36:58 -0700
User-Agent: Mozilla Thunderbird
To: Birger Koblitz <mail@birger-koblitz.de>, Paul Menzel
 <pmenzel@molgen.mpg.de>, Andrew Lunn <andrew@lunn.ch>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20251014-10gbx-v2-1-980c524111e7@birger-koblitz.de>
 <0c753725-fd6f-4f85-9371-f7342f86acff@lunn.ch>
 <77cfe8ef-57d4-4dee-b89d-3f5504653413@molgen.mpg.de>
 <4fcabfb2-9793-49be-bf60-bb8ac36f9e34@birger-koblitz.de>
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
In-Reply-To: <4fcabfb2-9793-49be-bf60-bb8ac36f9e34@birger-koblitz.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------gRuMHerzq0OYX0YgIZgAL2UX"
X-ClientProxiedBy: MW4PR03CA0098.namprd03.prod.outlook.com
 (2603:10b6:303:b7::13) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SN7PR11MB7666:EE_
X-MS-Office365-Filtering-Correlation-Id: a6da54aa-9e20-4dd0-f637-08de0b7a924c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VVFUUnRVZ3dFM3dpdlpFRWFmT2cwWEFDSmpaUzRMU1FyTXVGWmFDM1dOb2xz?=
 =?utf-8?B?RlNuK0YrS3BTQ2piRmM0WHlZOVRZVFF4NVJLTWJubmZjQXc4Vk52U1NoTXhw?=
 =?utf-8?B?ZTRRZWRsUFZDeDQrSTVybGhOakNZTVNsdXRGMnJJckJuenlKNHJjRG8xdXgw?=
 =?utf-8?B?UVc3RnpORmRGZEVVaFA4TjlyeTlJa09PWElPMXB4U0ZYcUpHV0kzbWtDd21E?=
 =?utf-8?B?RUx6WHNza3ZzYzZ6UXEweXJJSFZlZnc2ZmtCRnVOMUxUdWx3SVEvWkJVRXFI?=
 =?utf-8?B?dU5MVEsvK2Z2aUxKaHJ4LzRwV2hMaElWbDlxSU44YVZPVFJSZjcwMFdaYkhv?=
 =?utf-8?B?VVhMU1g3RHp3MUpxYXRKUFBSMUJoS21IaTdJRU5qTTUvMnBYOE03Y2tMOGFK?=
 =?utf-8?B?NTRNNTBla0dtdzdiWlBaamJCSWVWQW9JNGJ2U3o0MHV0Z2ZxNnNwL0tWQk1N?=
 =?utf-8?B?OWtkQVNSMENlQ1pHUzNiZ1Y5TXBLSG9BUU5lS3JaVmpXM2s1SDNCMnF5NXV0?=
 =?utf-8?B?RlFTbkFHbUgvakdsWDk5SCt5WW9qUlQ4UWR4WTFhVTN2dmhnL0FSUmkvRDl1?=
 =?utf-8?B?ZUJyWjdpaFBjTXMzUjl4WlhabzhwZFJEQkZYM1lRWGdPTXFPQnU0VG1uODFT?=
 =?utf-8?B?cmQ5Q1B1K0F6eTlEeDM0RzZoeVZ3c25iQUMyWEptV0pBenQ5NWpqM05XSjcw?=
 =?utf-8?B?Z2pZRkpCRHY3MnpZSERFQTc5WTJvTGFDck1Gb2xLKzZiTkNEZFhMN1B6N1F0?=
 =?utf-8?B?TnJnczNlWVN6TlZrWEQzRmgzbEhrMHFXUTFCbU9IVm56bEl4dDZRM25HVmpi?=
 =?utf-8?B?cnhxMU9qOEIvTmxsZ0hBUm1pSFJPMlZHT1k5cUFiZjM0TzRvbW9IWjhscjdu?=
 =?utf-8?B?c1hpWWFTekhid1dWb3BsakZlSTVqT094RmM4Vmd0Y0VDeVRFaThpdlk2QjdM?=
 =?utf-8?B?TzFxd1RoTXRvc280ZmFGSG9oZGVGRFlvdkxwNkFMbHhZRmVyOFVmVXZmeWRN?=
 =?utf-8?B?dllDdXc5UUZ3dmp0NVBsVGp1RHU1NjhzbTkwaU5kd0ZFVlUrNDVXaFJIYTJD?=
 =?utf-8?B?QW1saEQrUlRWaGtma2xLVExxaVQ3ZmN4QmlWYWVGbUZPaURwRGt3eXFtOXFG?=
 =?utf-8?B?WHVqOFZYRFRyMUxrU2M3VWlBYnZVK1pRQ2hYVHRQNER1dVYrSi8xbzdDTDQ0?=
 =?utf-8?B?R2gvR1lCd3MxeHlSVXdTNFVkWHR3Nm1PYkF0VUppblJLbDhYb1orSUdPUDQ3?=
 =?utf-8?B?LzJEYUs1V1UyenRhbFlnRi9aRmorSDdnUGM2VFB2L0FMM1hGc0xnT0FaWTVo?=
 =?utf-8?B?anZoYXVvMGY5YUZyVldQa25WU1RBZ1AwVkVBSHZ5RTlpYVJ3M1poY2JNOG4x?=
 =?utf-8?B?SG5HemtrSXdBR21JWlBnVUdVeS9wQzRoaUV2N1FCTmlCL2k5aUU5ZC9OcWFZ?=
 =?utf-8?B?N1JpcjZnTkh2dk5LOWhMdUpSYlVvY0s0UFVHWEhaSTBERE85LzNYSWNZaWhQ?=
 =?utf-8?B?dGtQcFg3QUUwRXMwWTNIQ25KMENYbjVXdkpEQm9UZzJiaXFwa0lRMGxsRklG?=
 =?utf-8?B?R2dvSEsrYmVQbTgyYmlNRFBJTGN2NEdpTEtQdUJBQ2NDMHMwSUt4bG0yckNh?=
 =?utf-8?B?eVdoNXVGYkN0aXZlN3dFaXczTmNYTWlqaktKYUhJUmwzWExNZHIwcnpBVVJQ?=
 =?utf-8?B?NEk5RFdhY2pTT04wb3piakd0aEJBblNGVHNubm9ib1liNWtpTjRWSkYrcjJI?=
 =?utf-8?B?QXd3aGN0b3h6VGpPalNGOEdyaldGQ0lsSHRkcUp6eUJYU3V3dzJZaUw3U0RF?=
 =?utf-8?B?Z1lPc0pONkVHckloK0pkSEZtRmh6QUJORjhMMkdJdkNKOVB2dWZNZG1YdHV6?=
 =?utf-8?B?cGp3Q1Ezc1BiYlV2NmVHY0J2YWZtOW83ZnhPcFljbWtkaENndkNNNUNrcmpF?=
 =?utf-8?Q?KfSE142UPxA5/MRMLQPrzJJu8uLDJo+O?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RlpseFpNQ1dOckttTkd3d2dpRk9MTTBMRUV2Q3F0d1pONUpFbDVIeVFoTzNW?=
 =?utf-8?B?QmVKTGd6Unc0WXNnYmlpVk5BVUJ4Q0F2dVpwc09NKzNaMkx6TWQ4VStkejgv?=
 =?utf-8?B?Y2JOWkZjcHZQTnpYYitVcE4yUXhSeU5aenErem10d1Y5WXUzeWVueXBGY0VL?=
 =?utf-8?B?ajVZWUpiNGZrZENNbnFIRzV4T0RqenNtdVI1SWxNNG1FVERNaGJYZnRyQU5S?=
 =?utf-8?B?Y1g0NHBMT0dOY0FyMlBEVm1Ucm4zL2dWaGl1T3o3RnE5eVRoY3hIeUVPZlJP?=
 =?utf-8?B?Y2pBWUtza1lsbThLM2NvSDVXaDBVTXM5dlRVcnpXZ0lvajMrS3YwZDQ3UitS?=
 =?utf-8?B?K3BsaWkvTkFONGlCYjVORENMWDY0L1BNemQ5QyttajI0eFB5ZGQzUXNXbGRN?=
 =?utf-8?B?Unk1NGJXSGxneFZOSHNGZnVQUXVzb0IzNHM5eWpRT2ZQVjA4U2dBZWFLVmsr?=
 =?utf-8?B?UTJCc0MwNWt6MHNvbCt0U05TMVhnS0l2NkdXbU11SnA3cDhhSDQ2ZHVWSkZY?=
 =?utf-8?B?ZGpQaXpUMGhoMHN2VE9YZUtnYjY4cWNwWkpBK3NiQkgrd0wzSkc3MnFiZ25R?=
 =?utf-8?B?Vi9PTmV0eVoyRWk3L3F3MlljYnEvdUVha2dPbVZXcGFTc3hleDRoeW9CUGxn?=
 =?utf-8?B?czkxRkxPeWp5c2hWeDEwVWR6SVFweXRQMWZ0RXNGb216RzVXQ2d2N3JneFJF?=
 =?utf-8?B?Mk9GV1NubGZ6ZVAwSXltSGdtRU5WNVc3RU80TnVtUTBRd2lrU1FLRFRJNXB3?=
 =?utf-8?B?TVlqVWg0dCtEZm1HcHJNY2N3N3dyNUZmWVZ0dENqN09KSFQ0aXZnUTVzY3pz?=
 =?utf-8?B?dVRNQ2xoZjZzMFBSRGs4bkpCU2tzSnMyRHBheFBobThvcEtPbDZNV1R4cDJw?=
 =?utf-8?B?Y1BER1NnSjUxdkhsVlZoc1FyU3FNbHZGUkpQTUMrV2xWU0tDWG9WQXlrd1Z0?=
 =?utf-8?B?OGxaK3ppUWFzeWtWdzZId1JGY01TQkVoekpEWXpyTDZMNHNNU3lMM250cTlj?=
 =?utf-8?B?cTJFUWV2YnFHK240VDN1UFdmdURnMG0yMC9JWTA0YlgvY2YxcytQamZoM2c1?=
 =?utf-8?B?eThBZEFHT0IzUHZjSkxrbUZWTktCUTRjdDdTWWE5dVVKemc2RHorM0NCZkJq?=
 =?utf-8?B?ZmNTWnd2anBYRlZqOEEwUC9jS2RISlMrOS9yemMvcUtHUGxQdTVzSmxiSWlJ?=
 =?utf-8?B?SjczQURCMk1ka05XZHdTTHVMRWxlTzdaMExta084QjVMYWhEWlB1VGg3WHpG?=
 =?utf-8?B?cWRTcFJWK2RCM2E0TTJURkJBMDFjNm1XS1h5TjZtMWhlbVYxV2xNQlZWSDFC?=
 =?utf-8?B?OHdoTEEzR1Q5MUMwVTh1L2ZEaVIra0VDai9KbFdMOW55cWk4UkJNRUxoWFpm?=
 =?utf-8?B?aFFlMUVwdGV0b3RyRXRKc1JCTjlPVUMrTjNVbHZseEhEbzBqMU5YRlJMMmc4?=
 =?utf-8?B?ZDVpaUQ2d1I0QklWNWJNOHJJQXdWTEM4YU51cE80RVNNNm85aTh3VXJwTUlh?=
 =?utf-8?B?YUczdTRoRFRobDJnY2xKQ0pmOFluWlEvUnJKb1BRMFFZZUE3YlBVQmRrK1VI?=
 =?utf-8?B?SmY1Z2lCUmFjV0hKOGZvbXBvalVlREMvUmlCRzYybWY0eTN3SjBkd3Z5bHFZ?=
 =?utf-8?B?TnA4dnNKYUFEeE4yNlpXMDZKSGhHeXhJRUJWRTAwN25nT3p6OFdveE5SOVBL?=
 =?utf-8?B?UXVXNHBER2NkVE5uR0NUcEhWZHd2aklzRkVQQ3RWdkR5RmtYa0MvMXlZelN3?=
 =?utf-8?B?Z2RlVHBGbDdxV0RrcmkwQXVwU0UwcVhxem1oYlhOWGVRNUNvOW5zVDVtK2s0?=
 =?utf-8?B?OG5GNWo5TVpzczlUcnJBWTdoc0E1VVhvVFN0YUVEK1hVa2FHMzNNcFFjY3M2?=
 =?utf-8?B?S2U2ZFg0WHo1WlBvYWtzSVUzSzNXWmNuNTZMZ09zTmdISWlhOWY3a3FLOS9J?=
 =?utf-8?B?WUFTUFFIMVY1VmRldkJwSFd2MHZNNFpGc1JTdDFVL2t2V2trZXFBWTVERi9n?=
 =?utf-8?B?b2Q5bi9DcDFBdUJsMEtnaTVHMGdSWHZ4MllVdEIzR3hDalphRW5FR1ZuSWtt?=
 =?utf-8?B?VlBTajA1ajdiR3lqanJqZXg0TzhST2ZJdEFQalNqWjlwSlY5TDhOV054bHJD?=
 =?utf-8?B?Mm8zRWVmQmFBdnBXa1VtbnpkUFRLVGdQVlJmWk53REFub0hxanVCeG0xeFQ0?=
 =?utf-8?B?QlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a6da54aa-9e20-4dd0-f637-08de0b7a924c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2025 23:37:01.1148 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hSqR8oxwpq28rZKp0J7efeZaxhHP3LlkoM5BFIitlj0Z9vOTt/iRgajVvOi3ED/gLccRH96orjgtyKL02IMum2OZk1jmzDx0voPBgl/sS00=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7666
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760485026; x=1792021026;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=yyParA9F9izFSxoHVAPWRFI/oshwR6LXJp7onSCSqjE=;
 b=inwbq2/Ju0oQBptnxDxS0lFABu/K9h+C3vrRstpNVe2+W1GzHdzBS2wy
 kSP0jbvXTvF6mPEQql9Bu73H5NBY6MgVNvqM0Q/Vc1ZF51uaZ81CdR4Uq
 xZTKzHeagAxiFFsD/7kKz5aPn6U9sSE76wvNilI06a6J9VB0rhaNGDPUR
 RQAmLTrWLXu9NIypgdOIjuTtpHcqN/idi3kcnWQAQyPmuMmtGJcbzTXpf
 XLpBKzHI9vkO/9hl1D1Yy7G45qM88n90ZJ2LtvCSTedzM45m5f1sliO2O
 5YU3kvN2O+3Kzfu4BZa9KQyOPmCLzSotxciXrfc7ZBPTvp7a58Dd6paFT
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=inwbq2/J
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ixgbe: Add 10G-BX support
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

--------------gRuMHerzq0OYX0YgIZgAL2UX
Content-Type: multipart/mixed; boundary="------------Bw2O0jjDKN7hOqWCjRsuu1hs";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Birger Koblitz <mail@birger-koblitz.de>,
 Paul Menzel <pmenzel@molgen.mpg.de>, Andrew Lunn <andrew@lunn.ch>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <0db6777d-1f2e-438c-b56c-9af16787dd27@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ixgbe: Add 10G-BX support
References: <20251014-10gbx-v2-1-980c524111e7@birger-koblitz.de>
 <0c753725-fd6f-4f85-9371-f7342f86acff@lunn.ch>
 <77cfe8ef-57d4-4dee-b89d-3f5504653413@molgen.mpg.de>
 <4fcabfb2-9793-49be-bf60-bb8ac36f9e34@birger-koblitz.de>
In-Reply-To: <4fcabfb2-9793-49be-bf60-bb8ac36f9e34@birger-koblitz.de>

--------------Bw2O0jjDKN7hOqWCjRsuu1hs
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 10/14/2025 6:22 AM, Birger Koblitz wrote:
>=20
>=20
> On 14/10/2025 15:07, Paul Menzel wrote:
>> Unfortunately I do not see the original patch on the mailing list *int=
el-wired-lan*, and lore.kernel.org also does not have it [1].
>>
> I have several emails from intel-wired-lan stating that "Your message t=
o Intel-wired-lan awaits moderator approval" as I am not myself on that l=
ist.
>=20
> Birger
>=20

I approved the messages. They should make it through to the list and
archives soon.

Thanks,
Jake

--------------Bw2O0jjDKN7hOqWCjRsuu1hs--

--------------gRuMHerzq0OYX0YgIZgAL2UX
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaO7emgUDAAAAAAAKCRBqll0+bw8o6Bbc
AQDPxNYdax6XQRRxISvUSCaP/iWXgP1LBOj2d6qszbz6WwEA1yj4oqWR898EALkFbfB2Em6vhQMe
TWnzLdPbJZ7w0gY=
=4Ie6
-----END PGP SIGNATURE-----

--------------gRuMHerzq0OYX0YgIZgAL2UX--
