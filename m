Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C028B2CFDB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Aug 2025 01:24:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B72C140F7E;
	Tue, 19 Aug 2025 23:24:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pGBukuevFe4M; Tue, 19 Aug 2025 23:24:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 071E540F85
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755645861;
	bh=TYFWVpATi5gLA8VtURzhBIvdWscOy2mpBW9qzbCoPzA=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1563M8CIXTOSKVtTEi3FPoNBRCcSDuK1eouxFkjxwA6S3sBvsUoAPmhu9iUdxd3LT
	 tW3VQ51vf/5HQT5y5UKeX4LcMYuy77skHHknmNbLd14hO8paIgejllzycAbFnkmsdt
	 EVFLUFq9c7RHuXzm4Y3HbnBg8wOdVSJPVvj5N2VMPKIHm3wZNGsRI8hMUbU5kawr9x
	 mWw9GKyJ3eUeG9XQL9Sdl2Nx0S09hH4Mq4PJa7VOui+d1XFjTAvUC6uxN/SFPRft9d
	 9Fa9pVV5UhRZ9P0tDlEhSKR3x5/45N05oO2Q3irOsv4ONnSaKrUilgid4H57G4MFt1
	 HlGKzQ3ckZSVw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 071E540F85;
	Tue, 19 Aug 2025 23:24:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3761BE0A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Aug 2025 23:24:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 14E0681E79
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Aug 2025 23:24:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uwbL2B7yGPP6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Aug 2025 23:24:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1AE2381E7B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1AE2381E7B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1AE2381E7B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Aug 2025 23:24:17 +0000 (UTC)
X-CSE-ConnectionGUID: ro+AkUFqT2i1O0XVOOhp9w==
X-CSE-MsgGUID: PPKqLSwHR4KLyyoYCzJbMA==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="56931815"
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; 
 d="asc'?scan'208";a="56931815"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 16:24:17 -0700
X-CSE-ConnectionGUID: oa2J41cvQd62ds1DDAO+AQ==
X-CSE-MsgGUID: 51dcb2spQamHQjYonbTGFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; 
 d="asc'?scan'208";a="172220276"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 16:24:17 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 19 Aug 2025 16:24:16 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 19 Aug 2025 16:24:16 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (40.107.101.55)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 19 Aug 2025 16:24:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CNAm4ICcRSNqUVlLSr/3zHBu/LJYZut+rYj7wkVbg6c43AH1dSxx7dFWJHmxbc6OYm0tzYsWncsmIZVsY+1zmmfye3tQcK439+oi0Gh8EIJsCYIEJivbWAhE8gQJ5UcRNcj4m6GEpgkqk7BjDxtwzlxHEvn/SusZY610zTyyeVFA89Ud1B0jDciIogvwTPTyAO19zZ04YT2NxWMcgZeyrrdXbMsdHWshEShLibhoTLikUFzoSHKT39CmiRwYFWkgBaLE6Ggq1SUWA69r8HL2JiRTiBA2U5Wf0NadoNGf8E+OiLSJXajks5xTgZenDe/xiHaNxmpEJSXfbETVT7Gczg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TYFWVpATi5gLA8VtURzhBIvdWscOy2mpBW9qzbCoPzA=;
 b=fvc+iAUEXQtw8T+RTinzfL9QkAHYujgRrlact6QLX+eHmL/7xS7mHV2fq/Gb48liy7trBD2BDMB7vsTwrzZR5/guha+TcSPzW4u1mUb9Jj3D/JpJLWhy58evSKp30FmBXdVbyiwzEHSkfxk6L0JrvatMR0JRZ2pwL4JnDD2wvWbKy2krgJxmJhDsOaz82KX+QnmC6yXY2zY3NLDn8V91IYKCL37ibVF6bXFp7vb+VbpPyBLUMSTYJczIENzdNoHspx0h3F8cLM188ect/bqKvihfguXid+OfCScGsmV9U1C66qNWgoj7St3c5PR5vnzd1b1CK63YX/8SdIN87GnXxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA1PR11MB8349.namprd11.prod.outlook.com (2603:10b6:806:383::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.25; Tue, 19 Aug
 2025 23:24:08 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.9031.023; Tue, 19 Aug 2025
 23:24:08 +0000
Message-ID: <cc538c62-87cd-472f-bcfa-7b92dbd90a25@intel.com>
Date: Tue, 19 Aug 2025 16:24:05 -0700
User-Agent: Mozilla Thunderbird
To: Kurt Kanzenbach <kurt@linutronix.de>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Richard Cochran
 <richardcochran@gmail.com>, Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
References: <20250815-igb_irq_ts-v1-1-8c6fc0353422@linutronix.de>
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
In-Reply-To: <20250815-igb_irq_ts-v1-1-8c6fc0353422@linutronix.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------rU6CTv5U5bMLK5RxpQVvRe1Y"
X-ClientProxiedBy: MW4PR03CA0335.namprd03.prod.outlook.com
 (2603:10b6:303:dc::10) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA1PR11MB8349:EE_
X-MS-Office365-Filtering-Correlation-Id: 3ccc7682-8410-4336-d3a1-08dddf777ed0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dlZIVUR3ZTJUbGRYM2h1TEJqTWZGSFp2cWtNS0h3YTN6L3EwR3BqS2JNSjRS?=
 =?utf-8?B?eXFqeU9NR3dXN3ZCMWpiaXJ1L2J2ekM4czlDRExOeWROcVA4VFVUOHVaZWJY?=
 =?utf-8?B?N2VhVTVFMEVUVmt4Ty9Makk3Z0k2UkYrbkE1R1RxaGUvOXVPcjNjQlkvZkFl?=
 =?utf-8?B?WVBrcjNKTGVIMi9waURuQkNRSXRyT05mSWJtZll3Z1cwRjY0Y1FkTHVpSzF0?=
 =?utf-8?B?cERyeXRCRDE3THB1M2NsTEVhZVZiQ29jMnpWUlJHWmkvR0NBd1I1cDYyL1RG?=
 =?utf-8?B?bWU4UncwMnJmRW5wSzZPRnRSd0J1UXlwSmFWRkhSK3FQU0ZCYjZJaGF4cTg3?=
 =?utf-8?B?NVFnNGQwTVNHdlYzU3NCZXc5VzZJb3NOWkc5NTNtSG1hQmF4ZTVnVjYrVTRW?=
 =?utf-8?B?SXhhTS9WdmcyVHJ0NHQrTnRqUk51VnlTelhabVl2d3l0clVGMi9EYlhaL0lh?=
 =?utf-8?B?S1MyZnBzYm43elhoNzNZOGxkaUxoRHJKQlVrVG02K1NyRnhsTDdNL2pMTHVr?=
 =?utf-8?B?WlMyN0dYRnVHRmZiVVdTZUppZ2ljbHYzaVUxa1hJYzkzSVR5MzIyZnNKTEJZ?=
 =?utf-8?B?dWoyZFlpR0FNUzJCRkU4NERSb0JkSWlsLzJoQ1NsYWEvSUlzUFFlc2NPQis1?=
 =?utf-8?B?TTFJRllUb0tMcmZ0NjJtRk5MQmtZZXV1Sk11VXlRNmdCTlYxbDVqQ2ZJR201?=
 =?utf-8?B?OVlQc3dka3dSb004Z1hzVnlvaWdPUUlxNVFkcEtTdHRrUVF4RmxJM2QxZFd2?=
 =?utf-8?B?QjhZZ0RualJCcXNGeWZiYkxIZTFxLzU0MlpLM3lha1hNRjkwd1RMbnhmWTNF?=
 =?utf-8?B?a3JQdjFQSWhZcStMUHBVQ3l6eUQxdVBMVTA1dTN4ZERxN2E3Q3VseldPZDZW?=
 =?utf-8?B?SVJmZFFHQStXU1lyYy9sR0oyWGNnMkM0RXZXZGJVc3orQ3ZJZTlodlBiUjNp?=
 =?utf-8?B?R2d4emMxbkNMVUJUQitWeWpleDhUS04vNDRzRmdHSDEzaUFIK0NnRjlXeG9j?=
 =?utf-8?B?WnMyVmZXcllyR2JnRmx6M3lzMjNMV3Z1Yjd6eDY5QW9hYUlka2s5WUdYdGVW?=
 =?utf-8?B?VTRYci9ZeVNDOWdhcjVaZy8zR1QrTkk1ZXl6WWNJNDJBY1M1T2xLeEREVDVU?=
 =?utf-8?B?LzBxV29iRE5aRmlFRXhOVGZBcHpPL2lUWjd0ZHhDZVhFbW0rcHJzOTZ5Z2hX?=
 =?utf-8?B?WWpJMVJWNFlKSy9iRFJiKzVRT2dhMnN5S1ZCOEJSSDF5dEp0T3EzL0RjSnNR?=
 =?utf-8?B?d0I0MUF2b2wrRzdmMDNSbWV4STNCS2JzblgrQkdWRlk4bWI3V09HNkZEd1o4?=
 =?utf-8?B?blJyaFp0UTlJOWFYUG82RmFMQjQvbnlJbUdwc2Y3b0lCeTZ4eXUwbFk0YUZI?=
 =?utf-8?B?UHByVjdqZnQxcWc2VmpheGVIcEJ4NDB0ajBLZUpHclB6Sm5VdXZkZmg1RmJX?=
 =?utf-8?B?eE9LYk9SSWRmUUV3bUZvdytLcXVManltY2ZYL0FTaXR3Sk5sYWlqTEgyYm9v?=
 =?utf-8?B?c3l3U2xMSTl5MldOWjNnK0hraTY4QzJuVXdIYlMwKzN2WkJka2NiemxVbHVm?=
 =?utf-8?B?ZmhidEhqcDlPcUtRaFgxSzhsaW4rYVJEdDl5QitwYVBUQmhRWldYSEEveHNx?=
 =?utf-8?B?b213VGFaWGJiaTI4TXJsUVdIQzUzam1VVjVLRTc2UitTaWxYSUw4UnFrWTZ5?=
 =?utf-8?B?Tm1MUVYrSUN4clUzK05SM0FkdTJBRS82SlpuTTZWZUwzWU5NRjN1ei9xdmN2?=
 =?utf-8?B?UU1JSXRQZElYRW1NU28ySHBBVzlXLzVxOVNWbmRLbExQL1JCRDZvVCt6SEFy?=
 =?utf-8?B?Q2VoWnhacWZnTktyQ3FtTUJLTjZrWDRlWDBiemZsNGlJZkJkL09zOE01UG5v?=
 =?utf-8?B?NTlobkdHQnlad2RzZ0tGVnZyY0h5dFc1cVVXZjZTSU5HdmQxWDkvZXozUFBW?=
 =?utf-8?Q?cpD7/Dby8sY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NlFTamV0R25QL1JNZzlONmc0c1FzYjJUWGpLQ2RXTU5BQlZ4bU1LTWJnSHpZ?=
 =?utf-8?B?OFNNd21CM21mQ0NyaEFmNDB5K0cva3JaazJTbFJEdjdKTzlUM1gzeWU0dEgz?=
 =?utf-8?B?cmlpalV1dnVML0pNNi9XZ1hKdWRCRnU0T3RnaUhlRUVlTjhXdGk4VUtQSlVw?=
 =?utf-8?B?K3daZ0QwVzR5cm5BWG9tc2lCWDMvR3ZrVTE1VUxhZURQbWpFZmRoQVpoUGEy?=
 =?utf-8?B?c1ZIaHdoNnE2QXh1ZjBmYzI5NGFPV0I5WTNSQUhaOTkyZjNxKzRRcFhRVWR2?=
 =?utf-8?B?bmJPUEJtVlhTb2taZlVHT1NlM2hEaDlhWkY1clRic1VKM1YybzVaR3ZyaTRW?=
 =?utf-8?B?blVZbnNrMi9lMWRGdGNPYzIyQnBZa2RCTWpYbGZrM1k0dVV0NHdPaXovc21l?=
 =?utf-8?B?eGUvNStsUmlMdTFmTGFudmJ0eDRVUXljMUQ2RnJTWFYrR3cwWDQ5VnFvMTFr?=
 =?utf-8?B?bmFyUjc4UER5VExVMkVzTmlnNFlUNFhNV3RxcnVRd0dYdkVCK2szNGZibUxK?=
 =?utf-8?B?U2NBcWdScm9raFZHZEtoNnh1b2VwMXk2RDk0bTRKMG9SMDlWQlU5WmljNVNp?=
 =?utf-8?B?ZW8zeEwvQzh4Rkx2d3RZWWttelFhS0pYYTRRZFZMaTNBeHJwNWtZa2tMbDJm?=
 =?utf-8?B?dDBrZkJKMFN0cmRrL2MzTnNlcnZHVVR4ZnhqVUYyOStoWVR4M21vdDdycGFz?=
 =?utf-8?B?czBKY1h3Nmo1d3dLVHorV3dtbEI3MDc3R1l1WGpZME1pdHBLYVpJY0k5b0VU?=
 =?utf-8?B?eGxQMDlkaGM5K2pTYkg3UEZvam1VeVl1OVNWZk8vMFBTSjdEd0V1WHBkT3Fn?=
 =?utf-8?B?OUcxNlozdStuUTdNMTZPM1B4N043aWxDU2JoQmdPQ1ZBSStPY045QUE2M2Yv?=
 =?utf-8?B?eTZsemc1Nm42NTZRdXgwZklidWdjMzVacmdBaWZuY3FjMWtzRkR3K3BGT0xX?=
 =?utf-8?B?eXMzN01YR25xZEtjcVd0TjZVTFp6S2FVSmt2alY4YzAzNUVoSENUcVFsTEJp?=
 =?utf-8?B?TjZlT1RabDNHelhGUEFsSkpTeFpxM1RZdWRzR3dqWGRweHJma0Q0NHJOQ3c1?=
 =?utf-8?B?ZGlNMmdzeTRObkwzZXJkTkpXYmc0MlRvSGdmUzI5R0lhaXJtbVh3N0tMdWJ6?=
 =?utf-8?B?emFMVzFJN2h2YUd0eThLekNZaXBsUlVRZjJkVkY3MC9PbUFNdWx4aTE5V0Nz?=
 =?utf-8?B?RHVoT25ZRkllSzFYeEkzMVBETWF4bEdvSnJnTGs3aVFyTm8wRFhQYnB2MjVR?=
 =?utf-8?B?ZzJrZ2RUZzFuaG9iaWVFZ3dDVnFUbXRtUjlEVE1jdk1yczZkNlduN05Bemx2?=
 =?utf-8?B?SDJCbW9KdEpSOWg1L3NJY1hXSWdiUXpPMnc0a2lUeWJ1SkdDYzZCNlVCeVc3?=
 =?utf-8?B?SVNPNVpxRUl3SHhtdGduWTdHQVpDNFU0bkI5R1RKQ2ZJUFlydnlZN1E1ajBD?=
 =?utf-8?B?dCtUWXZKcXorUkJ3L3Vra29PdWFvNGpLbDMxM2lFdVZyd3RaSjBFbWhKTUVQ?=
 =?utf-8?B?RDVQZDlyblJDb1g1SjdSZ2I1bTZwc2dBNVJYOHlKaWNVMHBnRmpITThNNlo2?=
 =?utf-8?B?eGxpek1xVEZwN2ZlektwVkQwRUtRN2dtaUpmcVJyNVlrR0E1YmIxaklnVU5G?=
 =?utf-8?B?TUdKVEd5VGk0UU1ZajVKay9UdHpMRS9LbTY1TkFRTWpkYlFqS0tIVVBlRzhy?=
 =?utf-8?B?eGFmaU9LNXI3eXpSZ1dwZktqWXdrRi9tWDE3WDg0WjVIa3lTOFRJbzZrdWMx?=
 =?utf-8?B?UnFpQ0l6WDVHK01yTUl6K2hZNkJnWW15Qmh0ZHFXV0tZOUMreDB3OUpjQUMy?=
 =?utf-8?B?aVdiNzh2RlFvLzhmbVh2c1RqcUVDUllySFNOQUdwc1JCUUNGYXgzMXJscURr?=
 =?utf-8?B?VzcrUDNHTTZMeGF3cEhQU2lZcVJqbmtRRFJKd3gzRkhRRUhDalM5MDFRVjVD?=
 =?utf-8?B?K3p6djEwQ3VtcGwxaCsxL25MdnIvL0pROW42NUFOK29oS21LazJZZXZ4OUFM?=
 =?utf-8?B?NUtVNlB1NjJaMEgrUXpxZ3IvdVdlVnQvU0pFaVczeTZPRjRHVy9ZTUJ0UUxW?=
 =?utf-8?B?eUNNbitiYWlSYnpYallndW4wT1Zmc3BJTVIvb1FBOVhYQ21GdDZka1JsSlJj?=
 =?utf-8?B?RDNFYkFaUUJSRXMzc1lzbmxpSEltcXVwcjI1L2h1RzBwYkNRdCtlNFdXejBa?=
 =?utf-8?B?NHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ccc7682-8410-4336-d3a1-08dddf777ed0
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2025 23:24:07.9918 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vMkQHNyF2GmZ24GsNGAzUtlEn3BVt3wTGo0kOG2w4pA+VkDvjDXTtbQ0PLneTDP208lIKUfW3MYa/vG2LBmPw06D18usweNzU7VP66ok2J0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8349
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755645858; x=1787181858;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=TYFWVpATi5gLA8VtURzhBIvdWscOy2mpBW9qzbCoPzA=;
 b=c8UyEfCbb6J7j/MQ4pSI0wcVR01OBZPjslDQhkpZntkv+kcL/PSX1NkB
 znZR5nyNKuf1Lh9OyazicWTsOO2GKkuxVbGDFhOlyLq5v23LfAN9Ga/Hy
 PSYvc1yCfzqAmeSgn193MaZs3NWFCUdz957pVNemLLR2nCpizuREidk0M
 Ls4VOI+sB4vdP9HLnCTbcVGfL8xl/POPOxznNrqetx8I+/J5i0ciQU3eC
 uUFa2lRAV/4I3J4Vps38BNnHytEfGAazF1UEUXsw+Ntji1kOayBD+cYx/
 HM9f2PZaHgxyBPE5fkFgPEPdQ9UWs2D2Hs+km7+pEHATcdWodxve0uve8
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=c8UyEfCb
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

--------------rU6CTv5U5bMLK5RxpQVvRe1Y
Content-Type: multipart/mixed; boundary="------------DIuw9BX53rC0UdHfRBvwt2yA";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <cc538c62-87cd-472f-bcfa-7b92dbd90a25@intel.com>
Subject: Re: [PATCH iwl-next] igb: Retrieve Tx timestamp directly from
 interrupt
References: <20250815-igb_irq_ts-v1-1-8c6fc0353422@linutronix.de>
In-Reply-To: <20250815-igb_irq_ts-v1-1-8c6fc0353422@linutronix.de>

--------------DIuw9BX53rC0UdHfRBvwt2yA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 8/14/2025 11:50 PM, Kurt Kanzenbach wrote:
> Retrieve Tx timestamp directly from interrupt handler.
>=20
> The current implementation uses schedule_work() which is executed by th=
e
> system work queue to retrieve Tx timestamps. This increases latency and=
 can
> lead to timeouts in case of heavy system load.
>=20
> Therefore, fetch the timestamp directly from the interrupt handler.
>=20
> The work queue code stays for the Intel 82576. Tested on Intel i210.
>=20

The change makes sense to me. All we really have to do in the interrupt
is read the timestamp register, and then report it to stack. Its much
better to do that work immediately if we don't need any locking or other
CPU intensive tasks here.

I can confirm that 82576 does not have the interrupt, it was introduced
in later hardware.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

--------------DIuw9BX53rC0UdHfRBvwt2yA--

--------------rU6CTv5U5bMLK5RxpQVvRe1Y
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaKUHlgUDAAAAAAAKCRBqll0+bw8o6Dfq
APoCGRlDlXEX0y4G48u5qzuK/pZzi/1Kok/l0Y6W/IPNygD7BKTVkrGj2WRiO3BqNUixH4tzCVuL
4wNPY9vQUttArAk=
=jlpR
-----END PGP SIGNATURE-----

--------------rU6CTv5U5bMLK5RxpQVvRe1Y--
