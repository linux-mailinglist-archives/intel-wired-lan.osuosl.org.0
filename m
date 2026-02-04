Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oNdmISadg2nppwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 20:25:26 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 68864EC11C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 20:25:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 60F728146B;
	Wed,  4 Feb 2026 19:25:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u5gPjHzGfDkt; Wed,  4 Feb 2026 19:25:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 33D0381456
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770233122;
	bh=vfhN40PJpfZIr8uHX81YoqT9uct5egy+ERFqLl4nkYg=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0/lxycB5OyQdqFC7kj0dnsnm/WKnusfN0cSzhUH1KFh7oabgZtptvyNwtGlRoBw6E
	 6m6u5ASG++laEBxCK25b6NV3vBEOUXZloz0+dIAq/C+lXrj2kczk698w8C8hLYdlPz
	 K56Gtmk4exlPwz5VWUPpzEpPGD60Z/ecU3BAPH/7gUO2VUzdklRn1A7OHNNiQI3Gje
	 1NATFRVtWh4ywvZgj1AQ2JiEx7WqHSb8tYt2S4EQ/YLsTbmKj2m1kswE6j4MiqhiO2
	 ng+qmTqNu70hpZgcyVYT4Mz7gPdBHA8F1KIBiTXVegS1+C4/UCNt/3mzoxfrJ5cvbM
	 L8/Rpqdy9mOIA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 33D0381456;
	Wed,  4 Feb 2026 19:25:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8879C173
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 19:25:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 69F8640165
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 19:25:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pa7bfgusANX0 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Feb 2026 19:25:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 526B440012
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 526B440012
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 526B440012
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 19:25:18 +0000 (UTC)
X-CSE-ConnectionGUID: QUI9qxHHTXqwVJpW7oA5Kg==
X-CSE-MsgGUID: p4vowmXpRCWaRclbSAYK+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="75281391"
X-IronPort-AV: E=Sophos;i="6.21,273,1763452800"; d="scan'208";a="75281391"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 11:25:18 -0800
X-CSE-ConnectionGUID: BtCJ7sOqRUCATY0q61zhJg==
X-CSE-MsgGUID: +FwTZHd0TZWeZJAyzhlf3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,273,1763452800"; d="scan'208";a="240992442"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 11:25:18 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 11:25:17 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 4 Feb 2026 11:25:17 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.18) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 11:25:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P1IP6W575skGB+pxArVinaUy57eiVWKmiZ5bceCCMHYRRHKOS+ciHpW7B87hGFtzXv2dWbsx1zfkjUIm30i5RyBURx1irr9WapCaVj42aLC+IZZQ1bxRZLtAI4zfmNoV58yakivcLwJgQ0W0NiA7cM5bbq2OMUiIbQtzdlwjhhsPe470gamTzBRRBZ84yLKPp55+gKfMgwZMbaOnIZ8fown4p02vR4EdcwN9+g4h7DWuRgt2oKFLn3n+7nKPZk6INrG54Ef5zC25bQagZ/gFt5Ev4VEIIcMZOHBoURGFniYnL6l14fHVbbC7k1wilQ2P7PDeCo9aQtJVZUSXt410kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vfhN40PJpfZIr8uHX81YoqT9uct5egy+ERFqLl4nkYg=;
 b=S9ou7pNWWULFYqRgp6KYHiDTw6JUIFa6fNIfYxw+p3/P4G0408vSDcgC5YQTZha1kCZTSVKagWhIO53g3IkN0iYXB30ZEdzrFBhFuBnZ0ajPWVQi/pI5kft6+EEHsrjB5eeuSMo/g8XHk42QEJfYrx9dl90T4rz/ibBeJb93d60Q/p8kho4nuwvC1OJsu/g/W0U8dEMkLZqQ1Bt8mo9TDQfBLWT7l+rMW//nXYmVVWGRo0tnx/oT6WGtvq/syYLCUgmDyVUuf/7KfmyzQdimaFHbRZFdgMi7xyH3+dv9kHkVYa/Uhx7hD4MEL06qduV/DSzKIC92mkJUplNkByEyEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 SA2PR11MB5163.namprd11.prod.outlook.com (2603:10b6:806:113::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.13; Wed, 4 Feb
 2026 19:25:14 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9587.010; Wed, 4 Feb 2026
 19:25:14 +0000
Message-ID: <fd06e5b3-c4cb-4725-a04d-dbc4839e88ea@intel.com>
Date: Wed, 4 Feb 2026 11:25:14 -0800
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Petr Oros
 <poros@redhat.com>, Jakub Kicinski <kuba@kernel.org>
CC: <ivecera@redhat.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, "Eric
 Dumazet" <edumazet@google.com>, Stanislav Fomichev <sdf@fomichev.me>, "Tony
 Nguyen" <anthony.l.nguyen@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
References: <20260202084820.260033-1-poros@redhat.com>
 <20260202155813.3f8fbc27@kernel.org>
 <b064ca33-1d94-4c7e-b0d0-78430d8cd0ac@intel.com>
 <14cb0b22-ec39-43e4-a35b-22ad558b2e34@redhat.com>
 <7907d42e-4805-48bc-aaf6-16cbe46eb1d2@intel.com>
 <db1723e3-294d-46b7-aa4c-11a21b0da82f@redhat.com>
 <79960c2a-26ea-4472-bebb-4657fcca2255@intel.com>
 <0e17cadc-5cab-44f2-8998-67ecde033a06@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <0e17cadc-5cab-44f2-8998-67ecde033a06@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4P221CA0023.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::28) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|SA2PR11MB5163:EE_
X-MS-Office365-Filtering-Correlation-Id: aabe0bf9-2fa8-4e90-679b-08de64231f68
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?L01YS3ROZEZEWTVoazFHcFJSTEs0V0psWmxDTERaNnl1QWhvZlBzQ044WG15?=
 =?utf-8?B?OEJCUDduMXV4TjZ3ZlI4Rks0UmxEWkZ2clYxZFNtT0JHb3RKMGZBZVpFVGhj?=
 =?utf-8?B?d3pNYjVQc3NJbUFHeWZVeEZjZmV4YkVmSG5rZ3R4ZWlMWDNQRnZOTWRmYWJQ?=
 =?utf-8?B?RG1tdUx5QldqZ1llUkxiVHBmMjc1a3Uxb21vZFBIbWJlc29mSmx6dGM5Qm1Z?=
 =?utf-8?B?UkpEbG9TdzNSSW51T1IrREc1R1lZQzAvNUl1UytJalJpOGdSNTNsblNoZVNV?=
 =?utf-8?B?cjdXK1VsNlp3aFYvdUVZeUpOcWQ1dTZ3V0VKTGx6SnFGeGE5TEI5ZlVnUU82?=
 =?utf-8?B?ekdubVI5R0JmbXBUMXFXQm1OWG84M2hyMVJYMEZvMTRKQ0ZZRkExZFoyZlNN?=
 =?utf-8?B?MXBPamE1eUY2MVZlWDg0blBwQTAwVi95bmFFTUI3L0JjeFEzR1hiRWhGN2Rj?=
 =?utf-8?B?SHlteWV4TC9JdlFzMXJLM252bnBLQjBtczV0azUwRGUveDJJbzFKbUZCRWlE?=
 =?utf-8?B?cHV3UUdLdmttd1JzcFh5R0xOYlp3L0VZQ3AzM01la2Q1VjF0c0dMZWhNNDUy?=
 =?utf-8?B?SDVXa25ZeEJUTEVKalVEc1lqQ1d1TVY3V1AzN3ZxTmpzNWpxa3VQVm1LS2w4?=
 =?utf-8?B?N1pvR3laK1ZQeW1QOVhXaFZYV2ZMSkpEZzAvVlhKSndROHZxanJDWFk2RmtX?=
 =?utf-8?B?bzRxNUJDc0p6RXdhajd6clJ3UnNJdjhNOFlzbUZ0eWtjdnVNV1JYcXl2RXN0?=
 =?utf-8?B?RWxtWVFqWkRuUThZSHRkaHJKelUzaXkzUHh3ckJ6TnlZNFBhdUdnd29INFd4?=
 =?utf-8?B?WmdCem9PRElKRUlMaGQyeEY3VEVKSnNMMDJkOGRmM1p3TzJ0R2htcHMwem9E?=
 =?utf-8?B?T0Nid0duRWlna25pajVhcjJPY3JQSityaWo3VCtCeVN2OStYdzIzVmE5ZE1k?=
 =?utf-8?B?OFJHaWlSVE81SFE2TzF1Mk1xMHhYSVFzK0ozK2lEZWd4TSt4N3E4Y1IrNnFO?=
 =?utf-8?B?dkY2WW9YdzFMZ3I1VFdFUWZUVHJYbDdyTnE0STJtMThQcTByazhoY2Q0dzJa?=
 =?utf-8?B?dDVxcGNyUC9lTHVNNUk5Y004UkZ6aVo1TW0rbjRjWmZlRmMxS1h6VmhhdXVM?=
 =?utf-8?B?V3Q3NjFHSFl3WUw2ZU5ZTVVmbVVnbFJOc0N6b2VXYjZFT2J0M3EyZHNxVHFw?=
 =?utf-8?B?UjI3bTQraDIwKytadWZDYWJhY2VIMTdmSDJoS0g2aWhJL1ZtS0pqUVVVR3cz?=
 =?utf-8?B?YkRzbERVcCsrOEk5WmpuTDZWMktWTEhuYVd3ZElQVkdNOU9acy9TbmJ4dlJD?=
 =?utf-8?B?cjhTZXNxOTlQeHpLRGY4TW1OSlNYbFQzZ000aDQxT2JUUVRxOG9iRmhwRCsx?=
 =?utf-8?B?aklIemJFK0Ixb0xZaTZUTldsYXNYRW1aMWM3SUNYTnBLU09nZklZL2EveW12?=
 =?utf-8?B?Y2pTbFpURjNPaHg5dUZpUUdLQUZEVkV3UkVtZWMzckFKTStrRHZuRS9oKzhG?=
 =?utf-8?B?czZXcUlCckJaK3FPVnhyTWUwUkJGSGxhVGhaQkV2MUtPL1RlOGNLT0JHbUVi?=
 =?utf-8?B?MjRnVWlsNXFuUG1jNnA4c2Yrc2tGTk8xcWsvdlBNdktrRnI5Y1Rybm8rbkZk?=
 =?utf-8?B?UjBQemxSVkdYNE1OMks5cmxzY2JUNVVIY1ZpbGZ1S0FpS2hqK2hraDA1N1FV?=
 =?utf-8?B?enpKVmtXWnFVNTZGYU5GcG51ZE9PM0pNOEFDRDM5OVJsUVZvWC9FL2N5dWlY?=
 =?utf-8?B?YUREOWh4TXF0dEdhdWJrMVB4NXJTSVJiNytTdWZaZzYwYlRRRVl0cjErU1Mr?=
 =?utf-8?B?UzBJeE9tZnZhNTNySmV4ditMckF3TkhINTBwZ0tFRHpQNzUyR210Z0JCNkIx?=
 =?utf-8?B?emgzeGFUaS9OZ1JlR1UxV1hMUTF2Vmc4WTQ0MmRxRjN4dFRBckl3RldNc3BE?=
 =?utf-8?B?dTZZMGp4cGhvMTRiMzNDS0FiSzZYdVNleVJtckd6ZU9GV0ZPSzB5aFBkQ0lw?=
 =?utf-8?B?Tks2U2xsTC9UV1dKTXFhUXVNS0RLUG1iODJPYjRxd2Y5MXd3TkV3RGFoY3hw?=
 =?utf-8?B?WVJ1a2NMajJnUStvUUgrZmVxMVF3VTBGenhkd3d0NiswaFd3OWdvWXR5N0h5?=
 =?utf-8?Q?eBDM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bEM4WFBsVlgrTHgvTDB1cnlvL2ZFSXZFK3JrQlBla0JyWU5lc3pqdmxWMEJo?=
 =?utf-8?B?SmVpNlZGK3ZVVERhSTBOdHJpRTdaVGlJNXlXRWZSbXk4THNmdENRTWxUV3kw?=
 =?utf-8?B?bXFMQVFJNnJuQW9kNXVlWkxrVHpHdnpwdEFTM2FIdjFTeGkxSDkxbHNBQmZl?=
 =?utf-8?B?T012YXpLaURpaU1QcUhSRTRvUFdFKzhjTUlMZHE5aHR1aFY4Z0I0OVNKWmdI?=
 =?utf-8?B?ZWxoMWxtNVNjNHllUHBDd2dBVE9kOTNpOGhiM0JQMDM1WmQvbEJvdFM2QWlI?=
 =?utf-8?B?WUM4UkNkSWhoSEZsL1Bid25zc25hT0p3RWd3b2xrWmxPQ2EzcGF6Zjk3QVRt?=
 =?utf-8?B?dk5vTU5Sb1NpNmwvQ1FHUHFhSFhlY2Y3bXZhMDBvdlpTaUFXWHZaQWg4UXox?=
 =?utf-8?B?ZzVIbFVmVE5WelRqanN6c2hHYThXOGdtYWRoYWNBQWd5TWhjTUxzM29MeGpG?=
 =?utf-8?B?OFF5ME00NWFwNlZrVDRHbkYxaURWT1ZoRlMrYXl0RXIwQWNDeGV0a2J0Y1hF?=
 =?utf-8?B?ZkM0TkY3VDFFcWxxZXVtQ0FWMHZPR2VWdG5BZkxXbjhBa25vQkUzQ0J2THR5?=
 =?utf-8?B?REQzMkgzNzVCNC91ZzhBU2l3cUdpdlRkeWtWYmFTSGFjL2o4ajh1YlFEajk5?=
 =?utf-8?B?MmJjTm5GVDhmWDFKU0JJZ09JY09jRWlXeFF6cENOeXp0aDI5T3VHL3ROcWhL?=
 =?utf-8?B?dU12ditrYS8yWmd0ZXdxeHFIVytaL0NFQS82UnhzamJHdW9JMnVNZ3k3YmRl?=
 =?utf-8?B?WlJQelM1dDJIQnp6MFF5aVZzcWdNYTYxVC9VdCtFd0UvOVMxQithOUVkbllm?=
 =?utf-8?B?ancwNWozMnh1bHdyV2tPQWlkcVdZOVIzUVpUaTk4T0FyWEx3eVlTZzJEaFBj?=
 =?utf-8?B?TlFDSlp1QXhLak9YU1F6NFdRa1phNTB4SjU4SW43K1g2c0NGd003NFJHT1VS?=
 =?utf-8?B?bmozUXFWNXBXMHExOHg0QTZMZEdwbDNJMVFNeHIxS1FYUExpUDlDY05NdVM4?=
 =?utf-8?B?T2NYSFdpUG5SNjEreHZ4SGYwaXhoSkprWEF5MmduWWI5ZW5VL1NibTlzSGZp?=
 =?utf-8?B?L1o5dVpnNHlGRXk5UEd3bXNiNnNFOHc4TVdqK05JellDeFFsVXhybWhQNUtD?=
 =?utf-8?B?cGRYUWpRU1RnQU42MEtISFhSRDlyMGZpSml6TS9ESTFmUTRLMjdYMFFZbXZx?=
 =?utf-8?B?dmZxNkFaRWwrVjFMTDNMNlVHcXJ6V1Mwc3l0NkRma2lXVy9TcVh4bEsxUUNY?=
 =?utf-8?B?aXRIc003ajdBdUhVZC94c09NQUJ6R3ZPbUhLRXA0MTJGaVFuRkRkVE0zQlBj?=
 =?utf-8?B?ZlpsMHVVcDNvQkUvd2JtM01rdEpQZVN4UGVISDRKbTJvemZpVWVkVlIxUEpt?=
 =?utf-8?B?QjcvQlRNWVNYcFpYaXdHd3NQL2wrOEV0ekRad0pyYm9OeWs2MHhZMm5MTUNB?=
 =?utf-8?B?VzM1VU1iNDNMbWJOWHI3NmtmdXU3cXIzZ3ZDNjZpandZeFRDTW1PY3VnV3JT?=
 =?utf-8?B?akpBdGtxdW9jWHM1Nlc3UVJTYnl6SG5HSGxNaU1NZ3hyNVBXWlFxaFJpdzdw?=
 =?utf-8?B?cThZSEN4TTNLVFNmREh3YkRTNVo1Y1FZMTZrRyswWkNWaG5vekM0ODZqczA5?=
 =?utf-8?B?b0RVTjNzZ0tGMUpEYngxdWhLc0V4eEJjMEYrd2VpRlBTRnRsZ2pUN1greGdx?=
 =?utf-8?B?bWw2YTJXMnJ2ZU1FOE90N2lZU0lPTFhLWTJma0tCQy9HZm9ZY0wzdUR3RzdU?=
 =?utf-8?B?UktDL3hqcjBOYzJoZnlIZU54UHZhVGZNODhiRkcrTUlWZTV0cE1zTitTZTFR?=
 =?utf-8?B?ZHdHdmc3bTBkdWphT2RjbTcwOXNrdWZuYTZ6c1NDZ21tQWloNThYRlNiNzFQ?=
 =?utf-8?B?cTl4RVV6VUY0MUdGRHdxNmYxejRWZ3Vsby80NTdNMFdhYm9DSm5IZjhvdGZv?=
 =?utf-8?B?MFFKNmFROHNIR3NZcFFJbWFqa0txOVF1OWd2eTdhUmZWVWRrYVFPOUg0WCsv?=
 =?utf-8?B?Ny94bTkwNExmcEplbldSaUY2NTEvT1FJQlk2UGRON2NuQ1pieFgrU3pPM21w?=
 =?utf-8?B?QXJrblZldWpWakxRNlQrWU9md1R0cE1JZU9sWVdFcnNLQ1NuRmJqdXFBVDBD?=
 =?utf-8?B?RE9yUzh2U1U3dmNEeUd4ZW03MVNDL1loNVhFTHRvVWpZTm5CZTQ2bVNBd1Bv?=
 =?utf-8?B?bks4T0Q4NjdqSGJEWEE3NkxVT05Na1RaVG1ub0VHVjBnMkQ2K1oyWnhYL0J0?=
 =?utf-8?B?dld6ZXhCbWZONFkyRDFETWZGYUVzZnl4cHk0MUFWbFJIcXhmS0RSai9Tb056?=
 =?utf-8?B?elB2YVFXQmo2TXVwY00rcmJYTnd2WU82dE5BdHpDSktRRW55VSt2QT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aabe0bf9-2fa8-4e90-679b-08de64231f68
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2026 19:25:14.8432 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PSN7rb9U3CkxBDXuMnaFsd4LPL1W7gLDDfKsADk0mAPhymIUjDoKtCzApsLOO90mm+WlBBxGCgqhRG2iS/8Xm9vtA0dhMBpn3vC3+Cii0Mw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5163
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770233119; x=1801769119;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EQw/pwCG8KsYua7Qp1C/n246nQdKt69CEWZC2nmpnKg=;
 b=ajLXcqUdEYB/IhXGyZZwlU9W5kIjQDucB0O1W5t+uMr/JSfUHTcN0iR3
 xSHCiLh7M0J0AiLTzyUt6vGW6r3L+Zzt4EuuX+BVKikU356zhUTlwxKMM
 Yw3Gm6mToSCLnTv3zDV3ouSHaDelJj5Vr+9meKnQbNJ+VxUEC5Y0sIg+D
 emvVOMwTtxez3OFXKEuhcgiv8LDtLdkmwuQzCL+J6BrtKQ2HMIEHpj9cL
 nOSzPW4a/lJRQOChyTKdbJRi8I5WLhy7jHOIhTHM8jODi+BdLAcLPkGWl
 QwFHZJMiWgVYx0pJ+y5CMNRLXDLvy1iYq5+fpiOTzgUe8xWObfL4L4CDy
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ajLXcqUd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: fix deadlock in reset
 handling
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:poros@redhat.com,m:kuba@kernel.org,m:ivecera@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:sdf@fomichev.me,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 68864EC11C
X-Rspamd-Action: no action



On 2/3/2026 10:12 PM, Przemek Kitszel wrote:
> 
> [...]
> 
>>> If dropping the lock is a no-go, the only viable path forward is to 
>>> split the
>>> reset_task so that the waiting portion is decoupled from the netdev_lock
>>> critical section.
>>>
>> We used to do this back before the netdev shaper ops. We didn't 
>> acquire either netdev lock or RTNL during reset.
>>
>> I thought we had some code in the past that would handle netdev stuff 
>> outside of reset.. but I don't really know and git blame is not making 
>> it easy to find this information.
> 
> IIRC it was iavf_config_task that is used to complete stuff requested
> under RTNL but later
> 
>>
>> Perhaps we don't actually need to hold the netdev lock over the reset 
>> task.. except Przemek's refactor to remove the critical lock now makes 
>> us fully dependent on the netdev lock in this case for reset :(
>>
>>> The fact remains that MTU configuration and ring parameter changes are
>>> currently broken in iavf. Changing the MTU on a Virtual Function is a
>>> fundamental configuration not an obscure edge case that can remain 
>>> non- functional.
>>>
>>
>> Agreed. This needs a resolution. It is just very tricky to figure out 
>> what the solution should be.
>>
>> We need to hold the netdev lock during reset, and we need to have our 
>> handlers wait for reset to complete in order to be certain their task 
>> is done... but reset is a separate thread so we can't really 
>> communicate to it that we're holding the lock, and attempts to do that 
>> would be a huge problem.
>>
>> We don't want to go back to the critical lock and all of its horrible 
>> problems either. The commit that removed it is here: 120f28a6f314 
>> ("iavf: get rid of the crit lock")
>>
>>> I would appreciate any further guidance on how you would prefer...
>>>
>>
>> I wish I had some better ideas..
>>
>> Bad ideas I've thought about so far:
>>
>> 1) this patch with its drop lock and wait, which we discussed as 
>> problematic before. It creates a lot of issues since it means the 
>> operations are no longer atomic and we could potentially get stuck 
>> with some other operation in the event of another thread starting some 
>> core netdev task. No good.
>>
>> 2) not holding netdev_lock in reset, which is now a nogo since we 
>> removed the crit_lock, and apparently we held netdev_lock prior to 
>> that too anyways...
>>
>> 3) we could maybe do some sort of ref counting dance where we take 
>> some reference in threads that queue a reset, and the reset task would 
>> know if that reference was non-zero then another driver thread is 
>> holding netdev_lock so its safe to go into reset without locking... 
>> but this feels extremely ugly and error prone to me...
>>
>> 4) convert reset handling to a separate function that depends on the 
>> netdev_lock, and call that directly from within the threads that 
>> currently "wait for reset" while holding the netdev lock. Thus, we 
>> basically move this entire call chain into the thread already holding 
>> the lock, and call it from the context of the function like the MTU 
>> change, etc. 
> 
> reset_thread() {
>      while (!stopped) {
>          netdev_lock();
>          reset_step();
>          netdev_unlock();
>      }
> }
> 
> looks cool, IIRC I did something similar with the "after crit lock
> removal refactor continuation", but I've put it on hold
> https://github.com/pkitszel/linux/commits/undeadlock/
> The linked code went even further and merged all of our admin-worker 
> threads into one and the whole was protected by the netdev_lock :)
> 

That is a lot of patches and doesn't feel like a minimal fix.

> This feels like its also a huge issue, and could
>> potentially lead to some sort of issue where we need to still block 
>> the reset thread from going if we reset at the end of the netdev_lock 
>> thread..
> 
> that should queue on the "do later stuff queue", which we don't have
> right now (and keep some of such stuff in the state machine), but would
> be useful for many other actions too (like virtchnl messages, for which
> we have queue-of-1 right now
> 

I think we need to lay out what we need and maybe that will help figure 
out a solution.


1) several NDO operations need to perform tasks that require AVF 
hardware to reset, and which need to be certain that happens before they 
return.

2) reset is handled by a separate workqueue task

3) reset also requires the netdev lock


We can't make the ndo operations avoid the netdev lock

We pretty much can't make reset not require the netdev lock, especially 
since we are now using it as effectively the main driver lock now.

I am not certain we can move all of the reset code to work from the ndo 
thread context, as we still also have to wait for hardware notification 
that reset happened, which seems like a pretty massive refactor to get 
right.

We can't drop the waiting in the ndo operation because we need to be 
sure that the operation applied properly, otherwise we get errors elsewhere.

So that leaves me without any solution so far, certainly not one that 
can be completed quickly... which means we're stuck with a guaranteed 
deadlock anytime the MTU is changed?

>>
>> I don't really like any of these solutions, even if (3) and (4) aren't 
>> fully ruled out as completely broken... they probably have all kinds 
>> of issues...

