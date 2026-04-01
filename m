Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KA96CBTVzGnnWwYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Apr 2026 10:19:32 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 007F3376A5A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Apr 2026 10:19:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 92CB840FB2;
	Wed,  1 Apr 2026 08:19:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xNOl2ckp8TBA; Wed,  1 Apr 2026 08:19:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F01B40FBE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775031568;
	bh=Yt1HSPpEIr1g6CvUB5RKSZvi96CcHBS41jyomwofl2E=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QpJTg2n7g3Q7u8cOhGfA6urMFSYyg4M/cRU9lDRjvaRRxn+4wsMa36/6XBwJ8d8Go
	 FD2PG8dCOVwieTpk0eEdAGha98hoL7EXHNLXBSYNQH7mKIhcL4/ZNM0hRvxF/J8EVG
	 ayOQp0GNNVmPBBbrrC7T0g6npSfoQ5T/jBZKpOP5QSDhj3I3/dnCpxpdo8hqovWKov
	 sepPdb6TTrWqI/GWvwUdlhP4FGkepKz22OayD9RQ20JuhqSfJ6jMUpiY+BJKwbOduw
	 30ReVVX8nRbAJUCtf50xRojUPGRBPAXDQkW0e+7iP/fa8nT26gg0aPbPhv+9kujAO0
	 xrdbsDVx0JvkQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F01B40FBE;
	Wed,  1 Apr 2026 08:19:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3DD12379
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 08:19:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1FF5E60F7B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 08:19:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kRv_em_eJQyZ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Apr 2026 08:19:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=dima.ruinskiy@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F4167607D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F4167607D1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F4167607D1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 08:19:24 +0000 (UTC)
X-CSE-ConnectionGUID: brT5XG9xS3yqP5dZIy9u/w==
X-CSE-MsgGUID: cPaksHvUQ+eidMXLe9qgYg==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="76076001"
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="76076001"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 01:19:24 -0700
X-CSE-ConnectionGUID: 3e1Zv7HDQpS25teLSFbtuw==
X-CSE-MsgGUID: TB64XD8tQ466J6MAzfVWSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="225602095"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 01:19:24 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 01:19:23 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 1 Apr 2026 01:19:23 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.26) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 01:19:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OMt2mxCGLxsLvVw2mjWnTy2beNOI93WOl2QzukfwNrtjGpkvpvNzm3p8GapwYQ4nlVCX7Wsg4LKsVt/pmCkB5tnbaENdEmbdrW6ZMO+oYazyPyGJ+9yVSOwWpF+oUUnzK1pq2s5+2F6HcWLTg7vTpUdE2tYy3CU8KDoAXP/5108HXq6r7rq38ATl4HKNbtS0iTpueVV9Y0wc/ldSpJSJcKq5pBAKQYvd0E/ICBrrMy85kHEW3YVmF+Ncm7ALozsflrtanYLRzcNYc5kZGj8JFBiffkTY7b3EUTcf9fcdcTphfrSqUAhBdfu/m5nteyrFB+v23GQTn37UFr4C/o9dJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Yt1HSPpEIr1g6CvUB5RKSZvi96CcHBS41jyomwofl2E=;
 b=AxJJblr/1X3xD/pnraI8+iB7pJJiF+wgDE9ipD8Z+ew0EVwr5H5Cac2JYaHDYcbf2SCouyJL1tyTOplcSNph6ZnsR/aeyX0/VLShGCS+aPV/NiqJ0KQNE+QAdMewmIfiDCH8dafZIJDWmkSWIu3T2O4Spv1ll3jXRTEiaWztUli90k7aXOn46IDyTpcsxtlZuvqkTU+Mczz4JWZEeNAUaDdzQMGTgpI8cHLA+uWtd2/Au1FfS/ptMzgLGpMcosrsCp2rOY44ui58izjE5n1AiVxcLaORYp8t4W+5gor3Jophb2Z0L5CZncZB3DN10ZXEi0SsMX7jNILg3Hk/ZzZ0ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV4PR11MB9514.namprd11.prod.outlook.com (2603:10b6:408:2e0::10)
 by DM4PR11MB6526.namprd11.prod.outlook.com (2603:10b6:8:8d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Wed, 1 Apr
 2026 08:19:19 +0000
Received: from LV4PR11MB9514.namprd11.prod.outlook.com
 ([fe80::79a5:106b:2126:a7fa]) by LV4PR11MB9514.namprd11.prod.outlook.com
 ([fe80::79a5:106b:2126:a7fa%3]) with mapi id 15.20.9769.016; Wed, 1 Apr 2026
 08:19:19 +0000
Message-ID: <a59d5d6f-cfd9-4c43-af92-ca8fab7e0df7@intel.com>
Date: Wed, 1 Apr 2026 11:19:13 +0300
User-Agent: Mozilla Thunderbird
To: Timo Teras <timo.teras@iki.fi>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "Brandt, Todd E" <todd.e.brandt@intel.com>, David Box
 <david.e.box@linux.intel.com>, Len Brown <lenb@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "marmarek@invisiblethingslab.com" <marmarek@invisiblethingslab.com>,
 "jeremie.wenger@edu.ge.ch" <jeremie.wenger@edu.ge.ch>
References: <20260202103257.1972097-1-vitaly.lifshits@intel.com>
 <20260210131158.1055ad48@onyx.my.domain>
 <745b1cd3-3e02-4d50-b1cb-0463ae6a9dd3@intel.com>
 <20260212111506.16bc402a@onyx.my.domain>
 <29b8a4b4-66d4-47e5-a316-b88a03b3882c@intel.com>
 <20260226143616.608ba411@onyx.my.domain>
 <35bc35d8-ff5d-4596-9f9f-6ab563c890b0@intel.com>
 <f39683ed-7397-40ec-ad0f-833664ea5c8b@intel.com>
 <20260401102556.64d226c8@onyx.my.domain>
Content-Language: en-US
From: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
In-Reply-To: <20260401102556.64d226c8@onyx.my.domain>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0021.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::15) To DS7PR11MB9498.namprd11.prod.outlook.com
 (2603:10b6:8:261::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV4PR11MB9514:EE_|DM4PR11MB6526:EE_
X-MS-Office365-Filtering-Correlation-Id: 718f82df-a973-4b79-94d0-08de8fc75f26
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: txRApTAYI9AFHG91UV0sSbe4P1wrfHuG8M11TkpbvnBpASHgW2WYyYhCglHTxuQbLP0q3ufa9Z4UvRdQvJo4jKqZEJCqnUQ3aPbyR05JDuSrK+k9Cg+pYWIUs+ii+cbMVCWBH/2qNo+GDIuJZtDDWjaPaOO1N8kiBShtKHIsjQ6cuJXohzTHUOIl8MFM5RZt1IrWux9+mWFUSk3Wjtt4kJOTh970RINAvYdYcA8mQ/OWa+M58mZ7fOydIHo7A15SXUm1xM8jmvYv66RyaWzRW4HXTixJOLH2XVtnBXP0GoYU7TWwe2FKQ6DnE2VYgaAgEB3GGbL3OggqhCwSyS4fak8LbvbDYzTH2vag/MRHHZiutHVlvzKzjGv7AJ7z5YZIxlszrDsmue+uxKQyL5TeuUqx+xaW1y4ngohbAt4O+mnQwe8tx83IpRwU3Ui8vCKdO8b1VRsxK+g/ng7rqpQDZJe52Y6v2kKlhbUW+uS5dpa/Fj9DgFTXtRTbt61opwhOshqJrr3hxoGbq46tiQLcZNAAqOrl9B6d9PTcb+N+Fm6Q0eY60SPFjXswiSxDg7O2Oa+RjxKg4GqOolhE9HvB8KrHYcUzL15cbvc7iQaWvrPnfPkuhpOMeW2r9H9uCYBMm1v3KailvUiFqiTuZlDinKqh9xyt8hljpmUFeljbOVtdFPCYc1psalmsNGvt2abu
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV4PR11MB9514.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dUNuRG81a2tNYmkxNCtXNWsvaFhtY2pFeUN2eHU2K3hzVTdzMW8zeGNzaUFw?=
 =?utf-8?B?Nng0NVR2eFNQZjN3cHhuRVB0ZHY3WjZCS0E5N1l1eEF1d2EwOWVSNVNoWDhk?=
 =?utf-8?B?N2pyZnAzL0FwYUVKWDFmYkhIUDFYZWJqVElNRyt1SHprb3pKVkQwQlozZWgy?=
 =?utf-8?B?eVFDNDlVT01rTS90b0drd1B5cHB6LzhqMnMzUjJDVys3Ny92dnI1blRteVEz?=
 =?utf-8?B?VGpEZ1F5RHhyUGZDTlovc1k0YU9RN1VoWDZXcmw5SmMwaCszYkhhbTJiZEgw?=
 =?utf-8?B?M1NnOWphRzRUTi9EWnFOa0hEU0FjSzZJY1p1eUF0Q2VTV09FY0ZwbWxsRHE1?=
 =?utf-8?B?Y3ZrdkJxQkVKMlhBL0gwdTF2K0xTcDRzZS96ZEhlUEREZUVWTUNHUHMwUzlv?=
 =?utf-8?B?aGl6eDNReWVpZytYVFYxSFlxNUJES2pLUkN0eFpKUytDR21LRlR3WGVsalha?=
 =?utf-8?B?YnhNSG5NMGxvWjFaQldMUnluT1pTUHBwdjVwZTdENHNRQmVrMEcyb1BPYzIy?=
 =?utf-8?B?dVRhNjRTL3JZSmcyZVZnZUtVbGc5c3d2WVB3QjhyakF1VU5DL0NVclFHOU9T?=
 =?utf-8?B?UUFJeHRhY1hGdTQvQVRldTUvaCtIQ0dXUjhIWU9BQWJiT0hJeWV0YmhCU0hj?=
 =?utf-8?B?VlF2K1VNQWhZRGMxWk81RG5NQmEzRmhOd0pibkp2MU12WmNTYlpNR05pcWR2?=
 =?utf-8?B?ejVobEpGQUFVZlpUT1A2R0pOZWo0aHZWLzgyV1hDRVZIeWMrSEdvNHZEcHJ2?=
 =?utf-8?B?Rk5YWldjd0R5WS9EM2Y3SUVRdmNzRE9BWXB6M3R4eFFnd2pLSlBRbGw3UlNQ?=
 =?utf-8?B?SExyTG51Y0U5ZkpadE5CTEdXc1U3dUVBK1BRQk9VYnlIR1FTMituOWN4d292?=
 =?utf-8?B?S05tZFh1L1VCUFRhNkF1aTZuMXd0SFF6d0xkY1R1QStydFpLRE40RTBQajk1?=
 =?utf-8?B?enBwNlh2U3ZJZ0c1Y0xpeUE0dlFEeFdmdjJyTEVqWUttemZqczBkMHFHcmNI?=
 =?utf-8?B?VjVudDR1aUwxeTFVNnYxWk9vaUFRU2djYkxwSUs5czNnN29PRzRrWkFFNGV3?=
 =?utf-8?B?MHNBN29qNXU2UUZIWHBSTmx3aklTQTk5MXo2enpRY016QjRlb1NVUWk3Z3Y2?=
 =?utf-8?B?UVY5NHNPU09YSnVFL0RLS1lhYmp5cHVOdmw1MHlFNEhoS0RhNUpZR0tScWND?=
 =?utf-8?B?VTBvdEQ4ejY5dGFOUHYxaVFFMGRSMFhQT0xWVDFUZlcvOVV3OE1JVUFGZXl5?=
 =?utf-8?B?T1dQT0czU0ZBUTFCc0lIc25IYmhwTXZiOG1KMys1YVpsTE8zZit2M3FaZVFr?=
 =?utf-8?B?cTk5eElPT0ZYeVluUFdyeTljRnFtU1Y3QkdWcXE1azdKTEhtSjIxUnQvVGwz?=
 =?utf-8?B?aWJyUmE4MnNVS1JVNlhpU0gvaytmNU5mdm1Hd2RLSmlwLzB4NUJUNmtvdzNn?=
 =?utf-8?B?SGVvWWo5cVJuenNnMmxFZi9hNHpoYkZKdXV0dDJtYnNkRnBqR3FDSjEycmNr?=
 =?utf-8?B?N00yNkwwc1VtZVpVb013UGNJVWtvRFo2KzlIcEI1ejBpNHV3eENMZDl0T0x2?=
 =?utf-8?B?N3VlRDJIZnBMWVovSkxhMVRKOFAydlR4MWYrbUdZY2crSHhQODdGbHZNWmd2?=
 =?utf-8?B?ZFZTWWJtRE5DbnlOUEpVdDlIdE96V3dhRFM0bjBBeWxXMW04YWVzSnQzdmdV?=
 =?utf-8?B?elRKNlUvS0RGdCtFVitrbXY5OHlxTkNBek9hMjQ2WEp6VUszOVlpL0RTMjM0?=
 =?utf-8?B?ZkgxcVF1SUJVTHdTZ0Zxa3Y0aVNWVEFVNzJlTndiUDlCYjVwM1lEREtXSXlD?=
 =?utf-8?B?ZHVQVFFNczZ5NG9qeTlDVDQ0RmNUZG9QSzZQT2Npc3BPUGRNL01uV3dsNGpF?=
 =?utf-8?B?ak1xU0VnRWJlb0Z0WUtKL1lJZW1oWW5ic3ZQMzhwNGhXQTBpRGhhUmFsSHN2?=
 =?utf-8?B?U2dZdXJ4ZzV0eDZNMExMNnNTNzlMTWVqVzhkTHV0NUl1eFRJYnkyeElDeTRr?=
 =?utf-8?B?cldKaS9HSlNOQzJTMzZISVZqSm9IRDNEMGFzRzZrWXdBRWdTSzRMMzlZa2FO?=
 =?utf-8?B?cnlUWE9qWStqY3lkMzVCRk5Lc3B5Q2k1OHJaK2hOYmpHRDF6ZUNpbjlTc1M4?=
 =?utf-8?B?b1ByWnhWdEhGUWR6dTY5WVJWTWNSZmlPQVF4dHhtcXo0RTBVL3FUMTRhOVdU?=
 =?utf-8?B?OFZGVzVGVHZRYTNYbG81TXFhVDVzbWRQZDRKdDlEWGFPdktqaUg5U1ZmaFJP?=
 =?utf-8?B?UXd3eDBEZ3hvVGJ0cm9OZkhnUXlMT1U5K1A0VTdUWGxnSUhuTXlGY3k0N1oz?=
 =?utf-8?B?aDRVUE1Sam5jSmhLd1FtTFhqWnJGdlhjcis3aDg0Yngxd3Q0eUc2ekl3Vm1k?=
 =?utf-8?Q?m9eke3dhNnBNF9WY=3D?=
X-Exchange-RoutingPolicyChecked: tptjNRc4NcGCeM2PxG4HwsFqBcjBnEIRQz/g2h2RA1JbYEnBf8dY4D4vpE3sM7Ig3hJfh8UMZebd9zygqG4o5pTDNVkKuU3j2Gog5bgRcl6rtYLVxTrTX7h7c02hY/n1hnPPYq2Ll1+63cyr8olJ0UZWucdhTffW5Yn2K32zQD5r/5EZETcDKa8fpsHo5AswosQ2+qzngxKva0uVNXzPZgRSq8806fmMETVxXSQnXq6spZ59gBENZzGRZ6kXnqwTcHrMCIzmC+aCrPbkNiterqlwUEPDilIUwsHaGI8li1Jx9q6JpiZcH04iy/LTD3O1BQBDxvaQTFFwUV6DE1MyTQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 718f82df-a973-4b79-94d0-08de8fc75f26
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB9498.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2026 08:19:19.7234 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T8Vu3+R6XHC3JXzY9fxY9PIQNe/L2nSsCF3f8TvNRe89VcIXSb032LfSaDmupMBxBODO+lIT1q8tLjjIpP2BSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6526
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775031565; x=1806567565;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eHGn5HxGFj52ulwu0oWIGH0hWIAc2+DIR4voUVgInXE=;
 b=UYpoFKkH+CRJzJ0+F/ZDedbAuT1r7lUfO9ZEMqPk10sn3W4YMCJ1UfvM
 7Fp7HuK5h1ZNe8sos+lsyuW3IKUX7CtEaWGq2W62d6kce1J0XiZ7IokuD
 WBTVNpzQInDMwEK8GSvDGZPoAa/GvrDf4M8YJtKFjczz8T/tUJ/24ik9R
 OmGrZ/hFYwG/alRqlNqXjcp79dKSULLOEJJZ9R9g9mVQrp/Y9fBDt9Mnp
 KVAj3lnsqs46Y/N4yE7RD18leYzt6JUUA9jNGGAiMsbJqW05VzW2qVchR
 j+/r396NkjsffHXlGgwj1rTIGGjMQzQBW7FozrKwvtWqdLAhXBgghdgnK
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UYpoFKkH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/1] e1000e: reconfigure
 PLL clock gate value and re-enable K1 on Meteor Lake
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
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:timo.teras@iki.fi,m:anthony.l.nguyen@intel.com,m:todd.e.brandt@intel.com,m:david.e.box@linux.intel.com,m:lenb@kernel.org,m:marmarek@invisiblethingslab.com,m:jeremie.wenger@edu.ge.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,osuosl.org:dkim,osuosl.org:url]
X-Rspamd-Queue-Id: 007F3376A5A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 01/04/2026 10:25, Timo Teras wrote:
> Hi
> 
> On Wed, 1 Apr 2026 10:07:45 +0300
> "Ruinskiy, Dima" <dima.ruinskiy@intel.com> wrote:
> 
>> On 25/03/2026 17:49, Ruinskiy, Dima wrote:
>>> On 26/02/2026 14:36, Timo Teras wrote:
>>>> Yes, generally maintaining a large quirk set is infeasible.
>>>>
>>>> But this is my point: if the affected set of machines with this issue
>>>> is so large that maintaining a quirk set becomes infeasible, then
>>>> the proposed change will make life very difficult for large enough
>>>> set of people that a better solution should be devised.
>>>>   
>>> At this point, with the current PLL change, it looks like the number of
>>> affected systems would be smaller than would be with the previous PLL
>>> value.
>>>
>>> So far we have not received additional reports of regressions caused by
>>> this patch, other than yours. So, perhaps, the it can be manageable with
>>> a DMI quirk approach. I went ahead and implemented the infrastructure,
>>> it's actually quite a small change, and does what I want (automatically
>>> alters the default value of the K1 disable flag).
> 
> I would not make quick judgement on not receiving any reports that there
> is not other hardware where this causes issues. I do hope this is
> the situation. But as it happened in the past the reports start typically
> with a delay after the commit makes it into an upstream release.
> 
> We had the patched kernel with the PLL change running for a bit longer
> time, and we observed that it also caused packet loss / very slow network
> issues in the Dell laptop. Especially with the later suggested value 0x226.
> 
>>> Could you share the DMI IDs of your system, where the issue is observed?
>>> Most likely the sys_vendor, product_family and product_name, located
>>> under /sys/class/dmi/id would be the most useful. I can add them as an
>>> initial DMI table entry for v3 of this patch (or a follow-up patch).
> 
> sys_vendor: Dell Inc.
> product_family: Dell Pro Laptops
> product_name: Dell Pro 16 Plus PB16250
> 
> See also the original report for a full dmesg at:
> https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20250623/048860.html
> 
>  From dmesg:
> 
> DMI: Dell Inc. Dell Pro 16 Plus PB16250/0W8RP8, BIOS 2.3.1 05/16/2025
> e1000e 0000:00:1f.6 eth0: MAC: 16, PHY: 12, PBA No: FFFFFF-0FF
> 
> I would not be surprised if other Dell models with same chipset are
> affected. But this is the only one I have available to test with.
> 
> Maybe its worth to check based on sys_vendor and/or product_family
> together with the MAC and/or PHY version? That is to exclude product_name?
> 
> Thanks!
> 
> Timo
Hi Timo,

You are correct that there will be higher coverage when the commit 
reaches upstream, however we have to start somewhere, and so far you 
have been the only one to report back specifically on the new version, 
thank you for this, by the way. :)

The value of 0x226 was computed as a theoretical upper bound, and as 
such am not totally surprised that it brings its own issues. I do not 
plan to use 0x226 in the patch.

I managed some testing with a Dell Pro Max from the same generation, 
which did not hit even the original issue. So I would not want to 
exclude too broad of a family until/unless I get more reports.

MAC type will be 16 or higher on all potentially affected systems, while 
PHY type is 12 on any I219 device. Currently it seems that the most 
accurate check would be MAC type + product name.

--Dima
