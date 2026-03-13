Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WDRiKqVOtGk4kAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Mar 2026 18:51:33 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4A2288551
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Mar 2026 18:51:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 97F9160D5F;
	Fri, 13 Mar 2026 17:51:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YN9iGZG_V3bF; Fri, 13 Mar 2026 17:51:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EAC0B60D65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773424289;
	bh=a+gTm0qQcYKQy5aZenWUtLBFb3190HmSpxbIo1z8Glc=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xW2S4EGnruVahPLxEiCOVrJk1cDtpoEZ4ZQbO4MMO8Q3umc/dAsHnBNC8/e2iMzBV
	 JNKAC7cA2FGaQYokUtCbSQZD/jzWr+Lw5RHtmFtJgtxC+J6a7brJNOObFjLAJmZ8SW
	 SICX2JPcjTlPee5PFOlJrhDPuhEgyK0IcaNjbKU5eCsP6HstMXNRaVgn5CKzKU57VO
	 IQ5S3FbUQtK6E9PO0jfl/7pykaAzHZR4lecieidVCnB7MtvvKm2BY5KV9GodiCTzr0
	 fp+jPKk7ZVy6/Og/gjG5MA/eKdKhw/2STNh3ZqKGAR9N93ov73K0xWdRJ9KMdJiqJS
	 vapWIgjZi2+tA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EAC0B60D65;
	Fri, 13 Mar 2026 17:51:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6C2811AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 17:51:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 49306816E1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 17:51:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HYIbe7cKGu_I for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Mar 2026 17:51:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0DCBA816DE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0DCBA816DE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0DCBA816DE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 17:51:24 +0000 (UTC)
X-CSE-ConnectionGUID: tb243oRqRHqG4eacUXpgOg==
X-CSE-MsgGUID: mLnnaf2MR2ii1rY+j2ftCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11728"; a="74417018"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="74417018"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 10:51:23 -0700
X-CSE-ConnectionGUID: JBjjroHhRyGaKJAttiE6Mg==
X-CSE-MsgGUID: CA+fI4G0T1+TepBev1lA+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="226220571"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 10:51:23 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 13 Mar 2026 10:51:22 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 13 Mar 2026 10:51:22 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.30) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 13 Mar 2026 10:51:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aLlNEMwoZSRSVaXzOwt6BT2JN4x4xaZpzfX9Uk+isAZegO0bOmToGLm68XaYnYUwpORSiY2I4jN2Vj5lk6u40b2L2ozO6mF6lGokCbd4OdQOIpqSXAwA2LAwcWonJxizopAFyhAqSzOoss9BpxbBY5PupyfZPd2iL4pxj6HjveQ4I3CBG5/gHL38uF7+YowMXGnZ/PUnnklHVBlKvxupcGyTLu2Lhlz4aQLBFlplkAkg9PrGEs4NJQeJkJ3euXqdqMjiB1aTfjSPg/kCNGQojF6+Ft4wuOP7rkjSsK2kwzhA1VIelvowpAZoZRQ8jTvL59WjsLOvHhR7njlH8N1bcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a+gTm0qQcYKQy5aZenWUtLBFb3190HmSpxbIo1z8Glc=;
 b=TVbF6Z0hMo2O8bE+tSiPBGkieB12LsL2I17E2qKzxJ4bGAW9tOS0bKzYDb1x/fjAuPPAAvd3GRShYPNyCxvku15TRv/wfjILRSZSHv++4JE5ITP/0iGy74e4g2CMer0qmTl90oJZKe5Qo3WGfUBGyrvRcdKHXdeaPvO52nDe2bKBWr2oH/CVUptAKWtpysn9STYQ/5nQInzZ82YQ3kKTrGh/iIDiX4M7pWflZY82nxWAHWneUyh40AOKxfAJnGO2XhoWeqmf5wM6Pem6CHZ+wwILZvC6f/91ehyrzSNnbSSWJIxiLXfPnBmYbEK2wXdOkgtAAJj4X0UzfHnX74JoWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8230.namprd11.prod.outlook.com (2603:10b6:8:158::21)
 by PH0PR11MB4887.namprd11.prod.outlook.com (2603:10b6:510:30::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.4; Fri, 13 Mar
 2026 17:51:20 +0000
Received: from DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40]) by DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40%4]) with mapi id 15.20.9723.008; Fri, 13 Mar 2026
 17:51:20 +0000
Message-ID: <6cff08a5-1bee-4cd2-b8e8-aef6a8f4d498@intel.com>
Date: Fri, 13 Mar 2026 10:51:18 -0700
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Korba,
 Przemyslaw" <przemyslaw.korba@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
References: <20260310110700.345904-1-przemyslaw.korba@intel.com>
 <IA3PR11MB89862BC3078293849BE46C35E546A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <IA3PR11MB89862BC3078293849BE46C35E546A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0167.namprd04.prod.outlook.com
 (2603:10b6:303:85::22) To DS0PR11MB8230.namprd11.prod.outlook.com
 (2603:10b6:8:158::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8230:EE_|PH0PR11MB4887:EE_
X-MS-Office365-Filtering-Correlation-Id: de7da1de-c0c8-48a1-795b-08de81292246
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: gkboXSF6H6AZo2yfq2PUSDihrysgtK1nhUSh+NQ5FNhP/pTiefpm3D2rgB7r2TJBjl0F7uVXRAQW4730jw2FfSRqnPjb132cCLixomQgOVj5YKNW4PqIU/h8XFzXHsU4CW2JjWYicL3vygZZ7+qasoA7OBhGVpIwe0zVAAbk55RYxKcz28zn4dFCtpG5ClRiR2jBpKVdydO6Hz9tYskc0+nHPK47P0VHnADcUHFngGiuqQEjRfIBYQFeSR03PvHsfO2pmOToHlUonJSh2boRv2p8fiFVLlHg7YqxnjMf7MOPQ+RydErXvylp8uQiK1k6C3VS/RjrmyTQKkx+Uhfm8g1w4pmugRkwcFO1gqp+/ooydLSITEYrPIe69O9vXK8WZ2CILMcGO9PWnIlPQEJTH29bK6lFiw+kcfwl2ckPJn5vu+UEWdGF8JO8sCbVp6JWIgmFm58TqDtd48dZd3bqGS+2SXFVFG8DP93M37hTKUNAxucs9g8ZlEGh3/7+MUQPf4jwC7ijTdPllQNeU9szkv0ZXsk9dN/gy24XCCO9MzKWWovR3VYHWP7SPHRhJaJWrJnJEZGPm/o4vP0mrAfKHxjFj27cevvlGZscB0DCFKhTAai2+LdSlaLLG1gXft717WXnH//3n6GjhBPYJX88HaU39S3QTlkYGMVwrP4XPwiHSbwpbcOhfrICHlVfmlj81pSz/yIRv/1GK7LNJ9s/H98fyF85/PKpM3tI0Tm3ljw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8230.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dTV3aWtxaUxrMko5VDJQbkJGcFJnTmRQVy9pNmk4NkVCbTZQc1M2WGordTY0?=
 =?utf-8?B?RTBzYVNtd00ybHgvRVVmakk0bnNpTUZ1bzFyZWNGeHJQOHNRUEcxSDBILzY2?=
 =?utf-8?B?NjdaM3NGQkV3NGp5cGNuR2k0MVdwRG1BZ1htTHpCYVVqeTNyZ3YzRmFNaHB1?=
 =?utf-8?B?RE9PcjBXVjd6ME55c1lOR2VEUFlaamxtOThabndVQURickVRZmtRTTZ1Wks5?=
 =?utf-8?B?TnFxSkE3cnlGQ1FxVHdkbDRHYm4vN2Z5WmdNd0ZFZjFQUmxCbmxLV1dac1pt?=
 =?utf-8?B?bFNVRDU4dTIwd2xWTWsrekZhejlEZ0FaWWZMeEg5VG5mY0VMNC9tS3J2bFZu?=
 =?utf-8?B?aG94dmJ5clNNK21WZmlZamJrSzVGaW1kNiswczFzT1ZETm55WjZRbFI3RFFj?=
 =?utf-8?B?VXNMV05BUjJhVHRqMHNldWtoczE1aWQ0WFgxU1BiS2JobUswSUExU1REUXh1?=
 =?utf-8?B?WmdsZHBqL1VmLzk0YmlXblpPdmVIdHZ1a1JQakpUZjNjdnFIZ0VGTEU0dDg3?=
 =?utf-8?B?eEZBNjBFMi9qSllsc0RlZW9OVW1iSzZLUnh2eEk0dFZHQndVd2ZOTUlHYnRq?=
 =?utf-8?B?YjRGTCtPRXFtRUkyck12eENOMmlMSVU1S0NwZWljSnp3L3g1bFRETytnOGsx?=
 =?utf-8?B?SjF6ZFgxOEdnL0lNSTVvbERVbGhtUGpZNFBaZW5YRE1Hb25CS2Y5TCsyTEVu?=
 =?utf-8?B?N0tEdkNVc1hjNkJkQmNKVkkway8vQzUwTHFmRU10RThKbkl5VDFRci9MTHVy?=
 =?utf-8?B?eHJOZjVIU2JzbENtUEo0bHMvODlHQ0ZGRU5BalowNmpRSmRjTU5tYUJBQVg3?=
 =?utf-8?B?VXpDaDYyRC81UkpmOVdwS2RhNkYvUmhpZklmSUJTT3N2TzI1RXRaRTExUkVH?=
 =?utf-8?B?bXNya2JpYzUyWkF1SWpoSkRDNHQ4eFNNSVBIY2hWN0luT1d1RkxtWGZhSnVS?=
 =?utf-8?B?ZGJRTnJqcy9EdmlwL21HVzVTRXdPYjJMZG5UaGs2N2xjdFhsd2phaDhlWkhv?=
 =?utf-8?B?S1BkNm96OEFPYUlBRlJ5b0lMb25CSkp1Ui90cUFiRmlhZVo1TDF0b1c3WTR3?=
 =?utf-8?B?V293RnBrL1hLWnVDQ2FIMHBISlpaaE1Vd3MwWG80MVIxT3RNbmVERnMvZUdy?=
 =?utf-8?B?dzhVeXg1TWpScjl6Mk5ZdkxRV1RabVJqRVZZZjdCWUlmelIwNjBzemtLeFVD?=
 =?utf-8?B?NEZRUFlmTElvOFN0OXNHazFrVjd3Tm5oa1h0UVNZR3VweEd4ZldTMnk4TUo5?=
 =?utf-8?B?VkJhMXZDc2pPK01KUmtmcmxPdjFvSml6RnRFcTZVbzlMVHkxS3ZvZUZSbjgr?=
 =?utf-8?B?SHRIREh0TEVxVEtNSWhHaEZuMSt5cHlBRUxvelNaY0dJcm9sckFRODRlV3dw?=
 =?utf-8?B?Q2IxYy9NTE9oTUZrMDByMzdJa0xQcHZJZTNsYWg1RENSOHZDU29DQ0RIQVlr?=
 =?utf-8?B?cTZJTTkwM0JVQ2dKN2RhVUZpOHZyWTFtNjZRS2pxM2daQ2xBRU15L25hK0Ny?=
 =?utf-8?B?b3c1bCtiVTFlMGttelJCSjJ6SDFKNDJOWkc0ZmxDRGNLdWtIZ2h6YlhFcEs2?=
 =?utf-8?B?VURRS1B2YVpEZ1kyTldxazlwRXF3dUwrd09QRkdMTU5sL2tQMTMvaVFLTDEz?=
 =?utf-8?B?YlpqWjJweDZEK1pXbFFOQ3ZUb1lDQXlrWWNLK3hBUmFZNUJJSkNGRnMvY05Y?=
 =?utf-8?B?cHVya3dkYlRZb0M0UDhBQ1NzbjBlQldZSnJCNjRnaXowSEdOcjRYNlNOT0Vy?=
 =?utf-8?B?QzBVVDg3QnNjeHRXbW9aZlJtbFJKYUpLWnFNeFlLWXQ1eU9yU2QvM1hWckU1?=
 =?utf-8?B?c2VPcmV2V2xySTZLdWRIaU96Ly9WSmI2SklqMlpGeW90cnZmUU1GVjZTMGw4?=
 =?utf-8?B?MFpwQ2plOUZyQkFxa1I3OGxuVTE4aEFhbTJmMlBZektWQWNsMVgyOSt0a1hs?=
 =?utf-8?B?cVdvUVhOcHpiUEtpcFBKb2pSYkJFSWFVWWV0eEZaTEtvTWRzZjlzODk3bVNL?=
 =?utf-8?B?MzNacWpNdFMvMmZ6eEpXRDEwMnBKbzg5KzBza3ZuMHN0OHhWRmJRSytyYTJu?=
 =?utf-8?B?TS80eDQzKy9KRGNTelBFWDZQVWdmWlJZc3EycnBDdUhjWjRrT0RCRlRpdXo1?=
 =?utf-8?B?Yi84ditwQ0N0Y3IxVVcrSVViSVlwMVVSdkVGQ2dtNWxpVXNKOTF2b3Q2QXVo?=
 =?utf-8?B?M2l3d1VQMHlRSWJVSjZQMmlZTkRDRndaYk5kNXV5TGhqa3ZNL1dQcnNTYU1r?=
 =?utf-8?B?V3pvQWoxR1JaYjd1dm1BdUFqS0Nzc0EySG0wdGlvR1liRUVmZmdXWGc4aUZR?=
 =?utf-8?B?d3V1WjRFUnNyYlJXeVpqUTFkNmRGYnpjTFJkU0Q0dk41SXBrSUhrbUZxb0hF?=
 =?utf-8?Q?rauZlkMjx440PO8Y=3D?=
X-Exchange-RoutingPolicyChecked: e9IZGaR1lCNoFX2E7cKuhLlBCFWz6zdZVHFi7PG3Pq2xD1/WVr7V6U2CaqVtbI1BLLBYrWmG70t5cZdmV90WwsmhKeQC1qhniM5zAHSmzrHvKBOJxqkMI9MAv8oo+uh6DU6x5BAGVCQME8DglpUA1lt8+2nazHu/GlIVVPyJeYAWCE1XnjTySYu1mjLzdV7x0suWNW1q8lObWioA+fB2NPv5G80+YJEAPFQCtm+yHS14h7eJJrvfU4rrZj35VLgG5jBTnoQkgSuhSbDzRkIrjDnS29vs6HXr7VQ0JJIyY+uSJ9gLdmuLU5HFE5+D6o0i3ltIWwjHN+/TJQ6sA8//hQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: de7da1de-c0c8-48a1-795b-08de81292246
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8230.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2026 17:51:20.3775 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rmEsBPjqtZZvCRpwkuCGVsQO5Sjcxs6nfznZ3t7nYSCFbfeIec2VunAHuitQO9UHCiQIwyeIZimFHc8/be74sFFWHlTii9DSJMfC2In3UyQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4887
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773424286; x=1804960286;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+TnUyjuuttpFm7d2dOkhLrqZkLifQKTHX4B+5FUwosk=;
 b=VOw+eWeUnBz8kaEUdmmgFAsvNe67go1qtsb8JycPoPmibCR5b/uolDCe
 4JMAeUXPJ0CUBuMYDL09a4MiifyJmTN/aUxKngdy/U4uTNAhrvkpb3O5O
 FMPPkA+/v/6/AwGMU/+gBX4wmK+UqnfjTSTXivSzxNb0tPzQ3L/TkA6S+
 HbLe5VXU6rl8zF8ChNAf2K6PHQDBx263GC8SR+o/H6WyJVUX72ipw9yHl
 PT5tAERDXUVcCWrj9wvj/Ekj6y93YId7H2D4qWOu0mqXYpW/PmjY803XC
 fCub4GWdEgLEPwabhZH/euMbo9VtwLOmKUg9VX5lguvcoY6i2XtCH4lZO
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VOw+eWeU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix posted write support
 for sideband queue operations
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:przemyslaw.korba@intel.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,osuosl.org:dkim,osuosl.org:email,msg.data:url]
X-Rspamd-Queue-Id: 7A4A2288551
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/10/2026 4:17 AM, Loktionov, Aleksandr wrote:
> 
> 
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
>> Of Przemyslaw Korba
>> Sent: Tuesday, March 10, 2026 12:07 PM
>> To: intel-wired-lan@lists.osuosl.org
>> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
>> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
>> <przemyslaw.kitszel@intel.com>; Korba, Przemyslaw
>> <przemyslaw.korba@intel.com>
>> Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix posted write
>> support for sideband queue operations
>>
>> On E830, PTP time adjustment commands sent via SBQ don't generate
>> completion responses, causing the driver to timeout waiting and return
>> -EIO, when trying:
>>
>> phc_ctl eth8 get adj 2 get
>> dmesg: ice 0000:1a:00.0: PTP failed to adjust time, err -5
>>
>> Add support for posted mode not to wait for completion response.
>>
>> Fixes: 8f5ee3c477a8 ("ice: add support for sideband messages")
>> Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
>> ---
>>   drivers/net/ethernet/intel/ice/ice_common.c   | 7 ++++++-
>>   drivers/net/ethernet/intel/ice/ice_controlq.c | 4 ++++
>> drivers/net/ethernet/intel/ice/ice_controlq.h | 1 +
>>   3 files changed, 11 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c
>> b/drivers/net/ethernet/intel/ice/ice_common.c
>> index 8866902efb91..df9e5422b981 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_common.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
>> @@ -1765,6 +1765,7 @@ int ice_sbq_rw_reg(struct ice_hw *hw, struct
>> ice_sbq_msg_input *in, u16 flags)  {
>>   	struct ice_sbq_cmd_desc desc = {0};
>>   	struct ice_sbq_msg_req msg = {0};
>> +	struct ice_sq_cd cd = {0};

Please init without the 0 i.e. {}

>>   	u16 msg_len;
>>   	int status;
>>
>> @@ -1785,10 +1786,14 @@ int ice_sbq_rw_reg(struct ice_hw *hw, struct
>> ice_sbq_msg_input *in, u16 flags)
>>   		 */
>>   		msg_len -= sizeof(msg.data);
>>
>> +	if (in->opcode == ice_sbq_msg_wr)
>> +		cd.postpone = 1;
>> +
>>   	desc.flags = cpu_to_le16(flags);
>>   	desc.opcode = cpu_to_le16(ice_sbq_opc_neigh_dev_req);
>>   	desc.param0.cmd_len = cpu_to_le16(msg_len);
>> -	status = ice_sbq_send_cmd(hw, &desc, &msg, msg_len, NULL);
>> +	status = ice_sbq_send_cmd(hw, &desc, &msg, msg_len, &cd);
>> +
>>   	if (!status && !in->opcode)
>>   		in->data = le32_to_cpu
>>   			(((struct ice_sbq_msg_cmpl *)&msg)->data); diff -
>> -git a/drivers/net/ethernet/intel/ice/ice_controlq.c
>> b/drivers/net/ethernet/intel/ice/ice_controlq.c
>> index dcb837cadd18..5fb3a8441beb 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_controlq.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_controlq.c
>> @@ -1086,6 +1086,10 @@ ice_sq_send_cmd(struct ice_hw *hw, struct
>> ice_ctl_q_info *cq,
>>   	wr32(hw, cq->sq.tail, cq->sq.next_to_use);
>>   	ice_flush(hw);
>>
>> +	/* If the message is posted, don't wait for completion. */
>> +	if (cd && cd->postpone)
>> +		goto sq_send_command_error;
>> +
>>   	/* Wait for the command to complete. If it finishes within the
>>   	 * timeout, copy the descriptor back to temp.
>>   	 */
>> diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.h
>> b/drivers/net/ethernet/intel/ice/ice_controlq.h
>> index 788040dd662e..7c98d3a0314e 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_controlq.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_controlq.h
>> @@ -77,6 +77,7 @@ struct ice_ctl_q_ring {
>>   /* sq transaction details */
>>   struct ice_sq_cd {
>>   	struct libie_aq_desc *wb_desc;
>> +	u8 postpone : 1;
> I'd recommend to rename postpone -> posted to match terminology /* posted write */.

I think the name is a bit misleading. To not wait, we need to set 
'postpone'? I would think postpone means we want to wait. If we want to 
represent functionality, maybe something like 'skip_wait' or if we 
wanted to match the documentation, perhaps 'posted' as Alex suggested.

Thanks,
Tony

> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> 
>>   };
>>
>>   /* rq event information */
>>
>> base-commit: acd2abc52dea91c3bc3d1b6dd8a92b9631d48bbf
>> --
>> 2.43.0
> 

