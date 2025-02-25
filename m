Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 77808A4449F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Feb 2025 16:41:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC4BD81DA3;
	Tue, 25 Feb 2025 15:41:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WOKxhIpVVO15; Tue, 25 Feb 2025 15:41:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6FF9A81CA3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740498110;
	bh=w7XY4wYwkj8j4f8O13n1HoXLLVmKHFIV091QkniTaK0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vEu6jTQgxorF3867TlZkmGBFNiJVKkaPoQfR0y9e1YgzZv4BywO0sBatbe00jLr4H
	 IFEEDpyai3rmYSVnRDnhbHBOvSXMMpP6ief1VZ3r7IsKRSS6YGUekDUtOd/SCSg7Sv
	 GO5zPbJYfFxcuU95bRvkFMLe2et+qTx54fS6/Zslvpc/LfoHyohOeEJxH1Ak7MJ/jQ
	 cP0xLkkk8jrywu3/PnA7a7HtadDCgdzHqwzrX3YaL/CFNWId5uAwPRKLcG8LFrbRML
	 EItDagzorq4AjSfNwgNWpCZgzeyNjcYbT4nESRiYTU8KoZSBYFsFLRbduT25BDAeKx
	 SA5AYYK2t+8nA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6FF9A81CA3;
	Tue, 25 Feb 2025 15:41:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 225982292
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 15:41:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 106DB409A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 15:41:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yP57gcWUoJ1L for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Feb 2025 15:41:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2A34D404FD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A34D404FD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2A34D404FD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 15:41:45 +0000 (UTC)
X-CSE-ConnectionGUID: gFZcrublSxK4VSM4NWsHzQ==
X-CSE-MsgGUID: 7RNNaBqQQva6Q0+xXtYx/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="52708889"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="52708889"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 07:41:45 -0800
X-CSE-ConnectionGUID: QFuueZMOSo+coypE7+cPQg==
X-CSE-MsgGUID: 6MrtxCQPQfiieIhCoIwYAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="120536434"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 07:41:44 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 25 Feb 2025 07:41:44 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 25 Feb 2025 07:41:44 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 25 Feb 2025 07:41:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tpgSIYSG5SYV2ji5Dm50BhuBJQzkOrz+eqhZnIMUHuyOjQstMGTAmeWIlNs1TGz9subn7VInlKGkvNgzS9J2QFTHbVg+DONIbGuyB44RSPWrACZ54Udv8bzswBmTaf+oG0tmK2y1NmUjgSjt3RmSU7V6PQgDTWSJTdiw9XcLzP/yBbLnCjW3AV1E5kpIdy0TxXG71PPfOkada8u+7nu6glUu0lBa+NWD6L2Bkv36BC1MGiTuA5EesxwPoXeP8P8CuvkVBZT0/XZ3NC2BPy2p13zk4pJm718l3vc+sm2bWgwyTPlJy/vnN1n2k7g5RnES6txBkFb5NVm8ApK1azGCZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w7XY4wYwkj8j4f8O13n1HoXLLVmKHFIV091QkniTaK0=;
 b=QgsRYwBVbK65V/+ALxJ5Wq5B2qm+zvUjFT9AcAWO9FQmzPHsq+aFWsFAH2OEWUZtyd45cydQt96QHAKgjHmz2r9/+6Uf32qSxKjrg6rxv7uiRQEtYcuiXXfldecDKzRDS6FkqgBOW7SHzSQxmQpnwMMrKlxxfMa5f5YvQjrk2Mw69AQGObw0o8RvBJDrxXzrmGQ0zciW48OY+Xgs4jy2icEGIe43T/+y9Hk9oARwzYyTXdPXDR/+w58CXDHzgn3YWFpOrbA6rWYWDHvRRl32OW5DEAk7x/0sHeI2Tmuvo3QdGWMg+H9uKpyIghurLIFwy5dDYvEUQg2oMb+H1R1a5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by DS0PR11MB7829.namprd11.prod.outlook.com (2603:10b6:8:f1::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Tue, 25 Feb
 2025 15:40:55 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.8466.016; Tue, 25 Feb 2025
 15:40:55 +0000
Message-ID: <e027f9e5-ff3a-4bc1-8297-9400a4ff62a6@intel.com>
Date: Tue, 25 Feb 2025 16:40:49 +0100
User-Agent: Mozilla Thunderbird
To: Jiri Pirko <jiri@resnulli.us>
CC: <intel-wired-lan@lists.osuosl.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>, Cosmin Ratiu
 <cratiu@nvidia.com>, Tariq Toukan <tariqt@nvidia.com>,
 <netdev@vger.kernel.org>, Konrad Knitter <konrad.knitter@intel.com>, "Jacob
 Keller" <jacob.e.keller@intel.com>, <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn
 <andrew@lunn.ch>, <linux-kernel@vger.kernel.org>, ITP Upstream
 <nxne.cnse.osdt.itp.upstreaming@intel.com>, Carolina Jubran
 <cjubran@nvidia.com>
References: <20250219164410.35665-1-przemyslaw.kitszel@intel.com>
 <20250219164410.35665-2-przemyslaw.kitszel@intel.com>
 <ybrtz77i3hbxdwau4k55xn5brsnrtyomg6u65eyqm4fh7nsnob@arqyloer2l5z>
 <87855c66-0ab4-4b40-81fa-b37149c17dca@intel.com>
 <zzyls3te4he2l5spf4wzfb53imuoemopwl774dzq5t5s22sg7l@37fk7fvgvnrr>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <zzyls3te4he2l5spf4wzfb53imuoemopwl774dzq5t5s22sg7l@37fk7fvgvnrr>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0141.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:40::20) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|DS0PR11MB7829:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d5c7cba-07a3-4c0e-8a3a-08dd55b2cadd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?d3dqYWhkNEw4MVZBdTIxWDIrQm4yTHIxRVFUSkZqZVJsTXQrVTJhZmRVUDhG?=
 =?utf-8?B?SWwyN2hsaFNkczBPbDZOQ29ENHRma1hpWVJRNjI4UjJUdnFtMjQ2MDBSeHdt?=
 =?utf-8?B?NWU2NjQ2dTNtMmxyZFhEZzZHait1ZVRpY3NRS0s4Q1JKS3YvdHptSWowblow?=
 =?utf-8?B?Y0tNK09Jc20rdy9ndVlzcmgyRHN0NmVteG5xdmdHcHA5NmRJVXpaRENOQ0Yr?=
 =?utf-8?B?cHpPemY2MmlEU0IzVVJsNk1XcFRxUlhRMlZ4ZUtZUUkrQlpJL0doNmM1K0hL?=
 =?utf-8?B?NldKSkZMRkNiZnlkZDNGNS8xYnlYenNWM3k4YXUwWHNlZzA3NXAyS043NFll?=
 =?utf-8?B?WnI0blBpQ1JTZm1KNXc5OFNERGZ6dVVSdFpHZnprSVA1YllORmk1TGk5STFY?=
 =?utf-8?B?SVp2bnBBd1FSc3gyTXo2dkh4T2ZsOTVOYlVMd2ZsMjdyZ3BtWG5JZTRZaXRU?=
 =?utf-8?B?dmFLQkt6aTNKTldjcGkvZzhLTWMvR1c2eU1QWWxnQnQrQ3NPNkJhYmNTMXhW?=
 =?utf-8?B?anJ0emRLcmx5aVViZFRrN21tSHQyTTFHRFVJclYzUmdIR1lBdTNNNnpHZnRY?=
 =?utf-8?B?MVJsdlZ1QS9xcWZGRWg4VWMxMFV1MGhjTGJGY0htTnpCNjVDNStyVzRxc3Q4?=
 =?utf-8?B?SkVid21zK0RTc1ViaWFrV2ZXcWIvN0NYcExXb2xjNTRZT2dpQitrQmlhL3RH?=
 =?utf-8?B?V3lEVWFPN05qWGRjRTFZdFVSdHpUY2VXQWI2T01hQXdVM2h1UnBsSE9vcFMv?=
 =?utf-8?B?bVg2TisxYW1xTkMvb3h5cnlXallKd01uT0ZvOFZVU1J0b3hQVkJtZGdWT1FK?=
 =?utf-8?B?YVZDbmExNktIYVlDUkNNYjV2RWF3NHhlVG10cnR2cEVZSmdrb2paVzN4OEtL?=
 =?utf-8?B?R1l2MHI5eFdzTzBHKzYzZ1NRU3dNRnhFMDBYSGRCeEx2QzlEOUFudjBaUHpv?=
 =?utf-8?B?cC9SV2p6UnVEbXBNa0wrU2FUTW4vVmJDQU1DSklWaWtiVkxBczZPeHlXakJB?=
 =?utf-8?B?L01JRFZsOXcvY3k3Z3dobXhhNisxSmgyQ05yenJHWVU5bElWdVlyMUhBTTVU?=
 =?utf-8?B?VWlUU0VWakRtQzVHNG5WK1RvdGxJRXNzSFJKeE9lc09LY1ZjWGt4ZVlsbS9h?=
 =?utf-8?B?M0JMMHBYSXR5YUdiaUxyZjk3M1hZVlAybzZ6K21lRGl3WG5XKzBBVkpYaFdS?=
 =?utf-8?B?czNsNDdod0VTeHBDenJQWHBlOVdEZTFDNHNqcTBsL2pWTS9DcVlTL2YzMktR?=
 =?utf-8?B?bU1md3Y0SGJsclZyOUI2T0RMSFJXV0U4NXZPMHpqaU5EWTcwSEl5L2dScFor?=
 =?utf-8?B?alB1OGNsZXVBSThwa0REWVl6UENvUWwwTzMxYXlmQVl4OExmOGdjc3J6Wld4?=
 =?utf-8?B?L0JSbFNDT1JKbG1hOW1MaFpOclZPajNvTDFZV3BMVHErU3pCbFhmYmM0UEh1?=
 =?utf-8?B?RlI1TTl5R3RVZmt5SUdMVXRWVzlvc3REdnBLcE9iQ3VmZk5JQTVZOEJMcTJV?=
 =?utf-8?B?VWhyR2xSVlVCbW5laXJZNDE2eGlKaU1LR3N3YlhEeUlIeDJja1FVTERjb2Zm?=
 =?utf-8?B?cC9ueVBwSk5FeVRCcXFuck9sSklCSHhnUzJrQkl0TXNyRHphYUovVVNUajdv?=
 =?utf-8?B?ckNlazRObnZxL2tDUHAyUlhvMnFWT3p6d2hZWWN6L2FQaFpISDlDaWRwUWtv?=
 =?utf-8?B?UitDNmhRNXpENXY1UDVIeFZnb3JJTUh0VUNZd2s0cWZ6UGFjTmJ6dTl5OEd5?=
 =?utf-8?B?OFQyRWJ2UTlJZzdpa1d1SjFXTm0yRXo3V1VtUWlnVFZYaDV0aGZDaFlVbFNz?=
 =?utf-8?B?clE5K3pzaE1MWEVHYVZqeVhzZXFuNmNVYWUyR2M4MUFRM01vOHVqTjRYL1c4?=
 =?utf-8?Q?pUwCXYk1BYdec?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M1AxeDRObGtRYjNHUWxINVR4Uk00RGpEQTZLYk9LYUxwQnI5ZmdFVHpITGky?=
 =?utf-8?B?MUZsSnNmRmxCd2UzVkhFeXpRRW9vemhibnJrWUVQYnI5eHZHVUJGUktpY05B?=
 =?utf-8?B?M0dOaGNDNjJDMFRPdHE1c21vMng2Z1VMaURwNHZ2djBxbXd4dE1sL082NWRU?=
 =?utf-8?B?ZmNvRGI3NThCSmlLbklWeklqSjEyK3ROREFQbytDaGx0bEdGU0Q0RWFDKzRx?=
 =?utf-8?B?TEplMWVFTGFCdisycm03Q05yVXVUTFJ5ZnVTUHlqVGZTb2JjVFl2eTFPejM0?=
 =?utf-8?B?WkNvNjhRL0VFZEM4Y3k2RjIyWWJLRmVSa1VBbVBGaTZOZXpBTS9wanVUZ1Mx?=
 =?utf-8?B?V2xzR1c4VG1IblFlVWRmaW1KaFdrcTlia1c5a3VoaTFKOS9DcmRjWVR2dmYw?=
 =?utf-8?B?Z1lBVXFxMFBrcDJRM3hCcVlXbVJUb3dyMG94MjlGbFF6Y29qMjlWeERNUmVT?=
 =?utf-8?B?RnNHK2tMeTlBelgvcnY2VU1Oc3REU0xINTVRWnlldTA2UmtaaXI0Y1lxLzhC?=
 =?utf-8?B?Z1RUNklxUHdXN0ZYZ2dtOEw1VjNiUDZ3RmpYYVZSR3VBQUR5dzBlV2F3NGhw?=
 =?utf-8?B?UitocVZpV0JaYlovUjQrdUFMakszbGkrTXNTMW1vOC9jVmtFYkhYaWo2Vmlm?=
 =?utf-8?B?Z0hWVGpndEprRGJpOS9EZkdiWGRYWnpGelh1UTVZUG00bGFTQmM3TllUSndn?=
 =?utf-8?B?RDV1SHVGZVVPb000WlorREV5dG5rRjdjMmZsUis0dVFZeno2cU9UcUFLaHdR?=
 =?utf-8?B?S09Ua3hGNW40eGtDNmovbjFzakU3UmVkWWVOaGdKOVFWNG4wS3l5NnFPVWtn?=
 =?utf-8?B?cVM3ZVF2SmR0Rm5EMjdxenV0aytWSTJVRFRtakwwV0JDcklkc2dTMm54TmpI?=
 =?utf-8?B?Q2JOdFpISHIwaTBSMXNMdTRCb0dnNnE3RVRrNjljbWhGWkFrR3oyZ3c0R0R5?=
 =?utf-8?B?bGpheGMxY28vZ0h6M1czaEJ0RENKd2VrSGUwc0EyaDlkcTVDalZvYzkzbkV5?=
 =?utf-8?B?NDZHaDFRYWViR0FYNzJJLzV6UmRYNnVjcXNNQURMY1huNmtGdUlJd2JVbWxj?=
 =?utf-8?B?blVUYVRYd28ycEpKeS95d0JyVUtnVU1oMjQxNGxsb1NkdUtwMEYxbmlGc1pr?=
 =?utf-8?B?am1HeTM5Y3NOMDRJRGJXaVB5enJPSXIzSEdYTVdBRXNZT1FVc1g5QWc0c2dD?=
 =?utf-8?B?NzRTQTlJbnhNV0ZZdGxKSDA3aHN1bG4xcVphcTdMOEVKQ08zdktLaTNMc0l6?=
 =?utf-8?B?U0ZmdXNRVXBHRjIzVkExRUJFc2V1RnhGd1BWOCtQTVZNV2Uvcmd0MkJRTXI5?=
 =?utf-8?B?UXIrMi9tNzZWWVJ3NFVMUE5TZ21HUkt3bTdkOWJVSmw2aU14OTJ1MXJhNnBv?=
 =?utf-8?B?ekIyV3dIaEtKSUVoa1daSnl6VC9rRXo2SHFxOUthdHFwbVZuMUZaYnVVeWpQ?=
 =?utf-8?B?RkFrVkpIWm9FVWVOOGtWMmx2VXB3SjVWZFQyZXFId2I1Q3pMdG4zTjF2VUdC?=
 =?utf-8?B?RHlUbXRRTXI1SXplRitGdDdYSE5zV3ZYZFAvNHJhc3VNdWdNcjc3S0MzVFFJ?=
 =?utf-8?B?amFEdXFONlBYdFBETW1RaEJITEJMYjA3dlEvZ005alp1eDFueEROL21hcjNL?=
 =?utf-8?B?dTZUWVlOaXlyVEFZZTlqTTNKRHFTRXpCTTArZGgyK2hqVzZnV2RHd3h5VUFv?=
 =?utf-8?B?R015ZEZiZW9WdzJ2SXQxdmpMZDNSRS9BUWdwU01EU2I5Vjdzc3hHWnRFMjlC?=
 =?utf-8?B?Y21NSFdUZzVidkJUOGpFSXNqK0REeUw5ZmJFU0JXcys4ejR3bTd3VTZ2STBX?=
 =?utf-8?B?QWcvSkFGNWxLSDVuS0ViNDBFVkNMdEFLSXVDTDlDTkIyY0ovQkg3RWVQQ1cz?=
 =?utf-8?B?cUVWRWo2S3E5TG5SK2xvckc5TWpFZ1A3cEhZcWt5RCtDNXBCZk80czJjdm1t?=
 =?utf-8?B?enVWYVlSa0tpNlowb3hvcXBwYTV1Q0pKWktrT0ZldUFGMU8zVmhqMEpla1BV?=
 =?utf-8?B?cEpSZnR0Ri9TRFBjU1NKY2lWZGdTV2NybFJFZndUOFo0elhMOGdJUXN0RmQ3?=
 =?utf-8?B?VmpRRVk1SXVNTVpnUmUvK0NDNGVKVTRGVjRKVXpqWlZIQTJyelloR04yenIz?=
 =?utf-8?B?R0lNc3VVS3FrejFLYVlWemRmdkhrZGtrblN0NXFmbC9MTzIxOEo5SEtaMW9V?=
 =?utf-8?B?SWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d5c7cba-07a3-4c0e-8a3a-08dd55b2cadd
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2025 15:40:55.4886 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: usXy5QuuUVYvKsktNF9s61YDsF5PmBGeGQUHzKl3AIEtFGCdx2htfPJi+kKZtahu66/h5OLbtxIJzGZ5fGVCtg631rQCO0Hh/mwQBRLWhd4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7829
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740498107; x=1772034107;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jXMfVABatlEHhAZxdIt5AttQ36YbYG1S+U5hu/nHFWs=;
 b=L7O1+/+g4eqU8zxWUvrch+pwYOcV90oyCmPpQ72EBZI2T6xA5gu2yFE+
 iTJM8Ll1m2ZPlHt3wAKHkAHVr2qIIgo+XanzF7NA2PXWDC7m8erFwhso9
 KMD57XFC9b6P0pM+wqofhRLaWywbln44gOMb2lkHDd9ajUEX1tUs6NmE0
 0QfMeDcXfwThnMT8MRPmJqO4rp8MD61L18u1bmZVcprevz4lmLaIgnvT7
 1mK06aoBItEcwZU20ikG6WJw9Mu9laPXRhIdRlUAKj5IHTxi94EJi0+VO
 xcwxHbR1BS1DFwm9V8sv80P/Qpl+73K8sRh1//z1cBbfGK/OG7/T8wBgU
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=L7O1+/+g
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC net-next v2 1/2] devlink: add whole
 device devlink instance
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

On 2/25/25 15:35, Jiri Pirko wrote:
> Tue, Feb 25, 2025 at 12:30:49PM +0100, przemyslaw.kitszel@intel.com wrote:
>>
>>>> Thanks to Wojciech Drewek for very nice naming of the devlink instance:
>>>> PF0:		pci/0000:00:18.0
>>>> whole-dev:	pci/0000:00:18
>>>> But I made this a param for now (driver is free to pass just "whole-dev").
>>>>
>>>> $ devlink dev # (Interesting part of output only)
>>>> pci/0000:af:00:
>>>>    nested_devlink:
>>>>      pci/0000:af:00.0
>>>>      pci/0000:af:00.1
>>>>      pci/0000:af:00.2
>>>>      pci/0000:af:00.3
>>>>      pci/0000:af:00.4
>>>>      pci/0000:af:00.5
>>>>      pci/0000:af:00.6
>>>>      pci/0000:af:00.7
>>>
>>>
>>> In general, I like this approach. In fact, I have quite similar
>>> patch/set in my sandbox git.
>>>
>>> The problem I didn't figure out how to handle, was a backing entity
>>> for the parent devlink.
>>>
>>> You use part of PCI BDF, which is obviously wrong:
>>> 1) bus_name/dev_name the user expects to be the backing device bus and
>>>      address on it (pci/usb/i2c). With using part of BDF, you break this
>>>      assumption.
>>> 2) 2 PFs can have totally different BDF (in VM for example). Then your
>>>      approach is broken.
>>
>> To make the hard part of it easy, I like to have the name to be provided
>> by what the PF/driver has available (whichever will be the first of
>> given device PFs), as of now, we resolve this issue (and provide ~what
>> your devlink_shared does) via ice_adapter.
> 
> I don't understand. Can you provide some examples please?

Right now we have one object of struct ice_adapter per device/card,
it is refcounted and freed after last PF put()s their copy.
In the struct one could have a mutex or spinlock to guard shared stuff,
existing example is ptp_gltsyn_time_lock of ice driver.

> 
> 
>>
>> Making it a devlink instance gives user an easy way to see the whole
>> picture of all resources handled as "shared per device", my current

This part is what is missing in current devlink impl and likely would
still be after your series. I would still like to have it :)
(And the rest is sugar coating for me)

>> output, for all PFs and VFs on given device:
>>
>> pci/0000:af:00:
>>   name rss size 8 unit entry size_min 0 size_max 24 size_gran 1
>>     resources:
>>       name lut_512 size 0 unit entry size_min 0 size_max 16 size_gran 1
>>       name lut_2048 size 8 unit entry size_min 0 size_max 8 size_gran 1
>>
>> What is contributing to the hardness, this is not just one for all ice
>> PFs, but one per device, which we distinguish via pci BDF.
> 
> How?

code is in ice_adapter_index()
Now I get what DSN is, looks like it could be used equally well instead
pci BDF.

Still we need more instances, each card has their own PTP clock, their
own "global RSS LUT" pool, etc.

> 
> 
>>
>>>
>>> I was thinking about having an auxiliary device created for the parent,
>>> but auxiliary assumes it is child. The is upside-down.
>>>
>>> I was thinking about having some sort of made-up per-driver bus, like
>>> "ice" of "mlx5" with some thing like DSN that would act as a "dev_name".
>>> I have a patch that introduces:
>>>
>>> struct devlink_shared_inst;
>>>
>>> struct devlink *devlink_shared_alloc(const struct devlink_ops *ops,
>>>                                        size_t priv_size, struct net *net,
>>>                                        struct module *module, u64 per_module_id,
>>>                                        void *inst_priv,
>>>                                        struct devlink_shared_inst **p_inst);
>>> void devlink_shared_free(struct devlink *devlink,
>>>                           struct devlink_shared_inst *inst);
>>>
>>> I took a stab at it here:
>>> https://github.com/jpirko/linux_mlxsw/commits/wip_dl_pfs_parent/
>>> The work is not finished.
>>>
>>>
>>> Also, I was thinking about having some made-up bus, like "pci_ids",
>>> where instead of BDFs as addresses, there would be DSN for example.
>>>
>>> None of these 3 is nice.
>>
>> how one would invent/infer/allocate the DSN?
> 
> Driver knows DSN, it can obtain from pci layer.

Aaach, I got the abbreviation wrong, pci_get_dsn() does the thing, thank
you. BTW, again, by Jake :D

> 
> 
>>
>> faux_bus mentioned by Jake would be about the same level of "fakeness"
>> as simply allocating a new instance of devlink by the first PF, IMO :)
> 
> Hmm, briefly looking at faux, this looks like fills the gap I missed in
> auxdev. Will try to use it in my patchset.
> 
> Thanks!
> 
> 

