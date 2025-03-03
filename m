Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B62A4BEF5
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Mar 2025 12:39:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 96E6A410B2;
	Mon,  3 Mar 2025 11:39:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X3UaAb8YgtKX; Mon,  3 Mar 2025 11:39:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C10CE40C6A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741001949;
	bh=IDB96pPfX8V4/rafIhMram7d3hFdoUKGChasd8ors5o=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xs/0Hdllo3LJDYN0W7JcVmi+bbSUbmGvZesnHQb9EIN4NQPOED94TOxDTknNxK8TK
	 AcuMvaVqR0vyg72EphPoZVNX3umFGGbkvqquObL70xapHAQ5XgT1Zuj12taWBYs5c7
	 A3DBHxHmYB4TNZnsnRLTkmtrCKAhKcbcFI3pLfcaoQp0a5HQlT3BEajXJsNQ8liycW
	 ViQSgdG3pJ73TV2EKT4AshIy6EDDytFMkoLoW/TRx7Uno41v5HUa+VC339/fgdyHCp
	 C5Ygcy8H3GrnDiGpaQl4I9TZrFekTLQPdUpg8/ZwF+wURgzzwf1BRatbony6MSgw/C
	 /FehVLRBpn+0g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C10CE40C6A;
	Mon,  3 Mar 2025 11:39:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 12FF7B89
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 11:39:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B5FED606F6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 11:39:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HlO_pgHvIEyS for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Mar 2025 11:39:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DAEB36066F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DAEB36066F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DAEB36066F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 11:39:05 +0000 (UTC)
X-CSE-ConnectionGUID: JBc/gQJwSESrNlPjTsw6Bw==
X-CSE-MsgGUID: cPKbAqanSHC1NDz7YnY4PA==
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="52511537"
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="52511537"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 03:39:04 -0800
X-CSE-ConnectionGUID: VNjFHL9+RWWl8sCmKjFRqw==
X-CSE-MsgGUID: ubsAtj4tQ7mYUOcu507x7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="122936543"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 03:39:04 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Mon, 3 Mar 2025 03:39:03 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 3 Mar 2025 03:39:03 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 3 Mar 2025 03:39:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mEenGOirqmUb84WaqQ8fwgJCLNlbeG8QZ2GfHr4o7GZYpMgUfgjazIkVdqCzrwl9CxtI5Sy644ukvplKrtD6kOU88gYMATy5LucMWapZMExnwCBUVVcIbTgxAwGtWIirTzPkPbTnlqSqjyn9Qg2DOnzYiqRZ1B/bTroX+RsvPCadTSihIS53O97R+pZKW4TtRhnM5ISjx59H7Yqc5WKuRzokFcDn9SYQHhbTtB4HbkSEzgqXoVHyLNLbLQa+0XJoh+YOrxO31Ilku7a3U6JrpkfRAh1nT2IkGjgGG/mR8SlBaaCtTVpdHb6ZgHv0Zblydz+iQ7ZfasblSpHH1OJ0tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IDB96pPfX8V4/rafIhMram7d3hFdoUKGChasd8ors5o=;
 b=QiVlPLzopql50WNiTDsmQW0t/0iyQmqgZnKM/PjBdTkctlpVNpKLiLEGTFV71GZMrSuLD29O7wiNFkw4bRmu9tl0Sc1j24M0v4TFhQnF+i+OCrvvCpSdU4ja6Hg8nEKLO8IJdafayHrgzLG32LBHNeKfzTGGKIVqveZO36FbJrGj9vTtQvK5MLjwo+0ZVe28PQZ52KdONsux/5aMrQgfObmncn5AOYOb35rqfMk9N8xu7k4VjA8RvQsfyR5ke9mmkDCzzFRUL0ouZm2Oyc30u9dEeQCuZbI9znYnGbjm1KFLf84zh8ax5j6bzoo9v0kTliwhsYAXSn9JERmNNVVtRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) by
 SJ2PR11MB7620.namprd11.prod.outlook.com (2603:10b6:a03:4d1::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8489.28; Mon, 3 Mar 2025 11:39:01 +0000
Received: from DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::7a4d:ceff:b32a:ed18]) by DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::7a4d:ceff:b32a:ed18%6]) with mapi id 15.20.8489.025; Mon, 3 Mar 2025
 11:39:00 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 1/4] ixgbe: create E610
 specific ethtool_ops structure
Thread-Index: AQHbib3+Z170l1L5X0SDcnBIfF/SebNcgGUAgATM44A=
Date: Mon, 3 Mar 2025 11:39:00 +0000
Message-ID: <DS0PR11MB7785EA866891C5E2FD3A2684F0C92@DS0PR11MB7785.namprd11.prod.outlook.com>
References: <20250228083739.209076-1-jedrzej.jagielski@intel.com>
 <20250228083739.209076-2-jedrzej.jagielski@intel.com>
 <776c21b6-c39c-4871-9d95-e54470d0d55a@molgen.mpg.de>
In-Reply-To: <776c21b6-c39c-4871-9d95-e54470d0d55a@molgen.mpg.de>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7785:EE_|SJ2PR11MB7620:EE_
x-ms-office365-filtering-correlation-id: f911d152-6804-4051-8d22-08dd5a47fe0f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?T0F0SFU3SzQ4RGNZeitYb3JDeDByQ0gxd1B3d2RMWERGdXRQTzBCSjZZT2gv?=
 =?utf-8?B?RlBhdnYwNERIbnJsRWN2c2dDTkd4RGM0dTJVRE9EK1VwbjdQQ2pyOXlETnRD?=
 =?utf-8?B?Z3JrWWJiSy9yK05RZlhqS0o2bTJmOU1ZK0p4UDQvWGc3eWZ4Rm1haDIzdXNP?=
 =?utf-8?B?ZENJWFJmYnRESTFGdmlIZzFISXhtTWtGMFRNRi9uYWlMSk00bGt2QktnV2NC?=
 =?utf-8?B?b2ZjQ1BYVUoydWRtdm0vamgrQWJMS0R2RTlsdVUzUTFjYWlTbTF2ajhRZ3F2?=
 =?utf-8?B?bkFPcjVzY2M1WWJQV3BYbXFWNDl1dVVnMEZzaTNFbnZVSzhKQnpEU1lrTTIv?=
 =?utf-8?B?YzFnT2JQWTlDb2lOY2lNZ2J3TkF0a05iRFhqVmxRT0lPMmNkS3NEdVFJaEVE?=
 =?utf-8?B?ekhqRXBPL3ZnRzN1MFMxSEo1TTJSZHdRSElhMFVaYlNvaVY1QUJkL2VsTmkx?=
 =?utf-8?B?L3p5TWJwdTJ3elRYc21paXgzbE5ubEVDNGtyMUwrc0xnZVE0aXA2YllKQkdn?=
 =?utf-8?B?NFdLQ3Z6T0ExRnlHd2NQY2lBRVB0WDVLTTRCSlJDZkZVaFRYU0thaE9PUEtq?=
 =?utf-8?B?WEFVTkJrM2dCMFU2U1B3NTd2OG05Rkp3ZEZIN3hHc1dTYlJ6bmRsNThhSGNI?=
 =?utf-8?B?RDdaUWwwUURMSWloZnFDWDFIVkw1ZkdhWHNjNGMzTDdWRGdabCtnOGtwNzJZ?=
 =?utf-8?B?ZDQ4KzRPc1l4bmswbzQ3K1ZGT1NaZittMXdPb2w2eTFORE9EZW0wNm11d1ps?=
 =?utf-8?B?Y3p4VnpiTDhldXJDVnBiM0tURTB3ck51VmgzV0JnZ3B2OUFINU1sSTZvclhX?=
 =?utf-8?B?cC9yQkNydXlFRXhyVy9FczdhdmhBRzllMmRxM2RKcGVyalhtL3VLVHRaQXcw?=
 =?utf-8?B?cmF0c05BWjYzeDlqVk9EOFAwNFFXWjZ5U2l0U3duZVNUdjVvbEp5NmZ2bzdi?=
 =?utf-8?B?VHR6eURzbFNVdEt6VW1kbWZWU2VIVmNKWjluRERILytMdEk4SW45aWE5ZTRh?=
 =?utf-8?B?SVpMUU9nZlFpRXVoRzdHNWF0RW1rUnRYd1EwYWZVbkxoYStwRlJOd09ySDBQ?=
 =?utf-8?B?VHVpUXRZWVdrY28zVldjZGR2MGVtOGo4cWNnT29NVzBSOHArcnA5amZ1TVZa?=
 =?utf-8?B?WGdEeVZzZzRKWVVXYzVVYzA3ejliUC82V1MxbzdqQkVnR1o2T3ozOEFXSGNT?=
 =?utf-8?B?cHQyWUVvNkVWNXYwY0t0ZjJrLzNCQlRvdGJxNGV4eUJzeXhJZitMUVRiMGgx?=
 =?utf-8?B?QmhQYjRpZ2R6dDlYUnNDN3VQbkxiL1VQMjJqeGc0YVAvU0pwWG0ydlMrUHkr?=
 =?utf-8?B?YTdBY1FpZjVWdFFNNnRPbkxZSnU0elN1ZUI3MFdWOVhKMGFsWCs2MzR3aXJz?=
 =?utf-8?B?RVFXWTFOZ2FCMkkydndLNFdmVlRENEVsRklCUmlDSXFHTVFjM1h4SVBZbitT?=
 =?utf-8?B?MkVEUjJJL1FWU0FjOXlhZkFzL3BSazRMQTN5K0NKVXVLZ2pWZnc1alRtREZy?=
 =?utf-8?B?bmdybWFSUlorbVFMZmRYMksrT2NyUGN3MlNWZlZGNnlKUkpZeHJoN1pML3VI?=
 =?utf-8?B?OEx6RGxjZ3UxQkdNS1FNSjR0UytNTWdycnZIeUd3MWRDemVERDBsVEFQai9r?=
 =?utf-8?B?RndBVjQvYndJVFpWMWJWUGZ6K3ZucjhQc2k3eHJDUy9ORlltSmR6SzBVbTRo?=
 =?utf-8?B?aGtTOVYrYTQvNS8rU1FuWFQvSWJDWEdmdEdhdGxhOTFmTXhMam5ydEVFWVQ5?=
 =?utf-8?B?MVVwY0JuaDRYMnkyN3lFVDZ5d2F3TTZWWm9ibXVIK2xPbHZ0ZGNJTDJqSitN?=
 =?utf-8?B?ZE9rTUY3UGQzMktqRmFXU0wvc2hQRThSSUlpKzhIbkNLZ25jUStaYVhobVFu?=
 =?utf-8?B?U2pXL012RXNWN3ZWSmZpNXZCdGw1SjR5d1M1S3hXN0FYS3NiRG9YTEhaTjY0?=
 =?utf-8?Q?1xfmccoiO9+NS1FsZTVE68vKe18YC4jp?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7785.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WnJaVlQwSDF3MXg4TzZ5S1Q2QlNrWGtobFRtb2Ird0YrQWpydHQxUTMvOFVh?=
 =?utf-8?B?UjdLT2RpRStXTmFkeTBUQzlsTDhzcjZXcFBzUDlqUEJ0QS8wM2NaNFJHdVVT?=
 =?utf-8?B?MHUwazYveXFvYitZZEJkM1duemhHaUdQbWQrSTF1TFVKVkE5cmpMQnpIWm9w?=
 =?utf-8?B?MWlNV2F2VnV6MjdHWjhtQ2l4UXcwYWlrckRLcW1ITURlZ1dJNmhmQ00xckVp?=
 =?utf-8?B?T2dESC9YVUhGd01Fc3FVMlVmQ3FyRWwza3U3aHBDc0hSUXN0Z1BlRlZQV0dJ?=
 =?utf-8?B?VDNEN3RsL0ZHc2crS21DWHZlL0NwOXdnbjBpZWdscjI0L3M5UlRrRTVCcDRj?=
 =?utf-8?B?UFh6eGU2dzM4TktxU2owbFEwUkY5UDM5MWVlU2lmREppUzduUit2SThaRHly?=
 =?utf-8?B?RHdXYXpiRFRNMURuRnZlc1VlQlptNkRkSjlSRFhmemgxbWxBTzZNY0l5Zng5?=
 =?utf-8?B?dGpuNmpzNW5UQ3dIVVA2TjhsUEZkSEh5YUtiR2hrN1BialRwKzVyM0hlL1Rm?=
 =?utf-8?B?ZlpaSjJad1hVSjNrSTRSVGZucHYxRUY0a2JZSmRrRUZWeC9XbDluVkRuNjBn?=
 =?utf-8?B?dEJGR2E2aFBxbVV0UkFJek5jbldOaEsvQ1l2VWpSa3l4WC92RjJySkVESGRy?=
 =?utf-8?B?bU9KYzN2V0VTckJYLzB6bmlDNy9wbUFBWnVnYmdmK3N5dlNCVThzQmxaTjJu?=
 =?utf-8?B?VHRKZ0VHT29UTEp6cG1oUkIwYkZldnBKQnJ0WXJYbit1bUdrMURKcWl3Q2hx?=
 =?utf-8?B?czY4TkFDenpFeHZPYjZ2ZStNbDFkUmQ5akVtclBWejlmQ21FSk5EeHk0Sjla?=
 =?utf-8?B?RGhZZjA0MDVWa3NJaXRjS2U4SUVJQkplT3NUU2dJUlZFcWdLVEtGMzZnbEow?=
 =?utf-8?B?cHkwQUdOKzdOOWpkaGVtQXNZVDBDb3R0aUxVdHhBRUVtZXlPQ0RqK2kxQ0xK?=
 =?utf-8?B?d2lJdmhVN2Vzd3hzVElmVUxSc3FObmRETDJNT1JHdTU4K0FGYWsyQkpkU0tM?=
 =?utf-8?B?VnlKc2Q1VmVlYWZlNjlSWjIxTE9uREFsRTZKV1VPemRFZlgwMDFrSXJueTlO?=
 =?utf-8?B?V2NYQlZFdTJoLzM2L2Rueml5Z0V6WGNKbFB0TkRsL0JXazkxZU5MK0xGNHdw?=
 =?utf-8?B?NXJJV1RnLzV3aGFsQXVqR1lNTDYxLzJ0bWx1STFWaUFQZUgwVGowRXhnZzh6?=
 =?utf-8?B?cGgxYWJzVnA5SlZZUmordkRMT01zQjhTUVlHREdaemNlTnpleGNlK3dzQ2Q5?=
 =?utf-8?B?Z2tncjRJT1lUNFVXYmtBK3Y2cEZGV2ZwSnFiYXRtdGIyd3Fma1M3MjVsK3FC?=
 =?utf-8?B?K0dPbGdGS2s1Vy9tTjBVeVVwc1JTKy9iL2w3M1c1U1ZldjU0Y2JYQk01MlRs?=
 =?utf-8?B?R2NCUGcxMkl0d1IzK2J1TTNZM2d6NVJwSUJXLzBYbUZYL2x3bzl1TFkyL0JQ?=
 =?utf-8?B?VTBUZ25TQWx4R3dxUTRNVmFRL2crKzYzNFVXaTZHZ1lPNlkyWXlnRTR0MkJK?=
 =?utf-8?B?SVJBcXo4bTNSWW82MDFHajZOVDVpaVgvSzdNWGtGNng2eElONFRTejJGT21l?=
 =?utf-8?B?SGpKQjB5N2cvZlNpUU1NcEloQ0drT2RGNU12TEtxbjNaYlBLTjFCRjNsVFdW?=
 =?utf-8?B?M2YxUWhVSzdRVUxxa3NPZkxyZGo4WVNEeFRGVHNKVjM2QTZRalV6WmhBUWhI?=
 =?utf-8?B?YW1kVklWM3ZVMCtqbTM0K205dEVsSCs1cWZ6M25xaDYrM3dkOFRpYnY0RzJZ?=
 =?utf-8?B?ditUZDdDVXZDbjVHdVFOTzBBV21KbG9NWlZhT0VoVjFhOHRpU2JtOTRoaDJz?=
 =?utf-8?B?R1ZYNnhjVS9IcUJlblo1TjM4MXVFaVhodW5zT0tTOVlNYk1CbkwyNllYdS9N?=
 =?utf-8?B?ekVTbEp0emlZd3pwOGc2RnhmWFBQdCsvU3RzMHp3REpFTkZYbEwwQVllMCtG?=
 =?utf-8?B?UDdEVGgxWkF2UkxDTTk3YmhpMHVqQTNQc2NuelZ1c0dRcVZRdTFKQmtTb1Vm?=
 =?utf-8?B?MjYrSW1ScGNTMFF5YlhKZXhzakRKeEVFTCtIbnV4L3ZnVmxaWlVWU2RZQkd4?=
 =?utf-8?B?STZHYkh2c2NkTGFaMzdrM3dJMlN4QlBCUlE4Y2JaREFnSlBhNjk2WlI5U2xR?=
 =?utf-8?B?Ly9zSjFpYmo5cFpYeXpCdmZIb3BnalZJZGp4VWtKVjhlYVl4L01WRWtsUHNz?=
 =?utf-8?B?bFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7785.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f911d152-6804-4051-8d22-08dd5a47fe0f
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2025 11:39:00.7624 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rPatwDJS8xGgcF2dbjIMe0NE3siUvtYFBim1NYM8cRHUepAyNPQIdQLHBvw+NLmSms4SNALku/dkUh6//DgRl8QTTdDm5iDrzMXrtQ4hQvA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7620
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741001946; x=1772537946;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IDB96pPfX8V4/rafIhMram7d3hFdoUKGChasd8ors5o=;
 b=bOxhpJ+0utgECooRm2m0Z8KrnenMAcGz1O+072+gzk2bh+Hz6FRh9pRP
 FEGEbTEGK+7WDAZ1AntWJfDI6fFAaWpEllvp83AXC+8p3G1+Q9XNOQ/XA
 5ieAtGLktjm4m7DHOg6uwsJakLoiEDQ/OeoUqsqVP6GZHezsL+L0Itbwu
 6YZT8QaoCzlGtJTQ9uXXyN9uB3ekqvnpOul+2b5uiKgbgtWW3obo2C0ZO
 w5kQoePqXp5jkT6i5kZKXAk4ZAbQaRZae/sWlxUQCtBscqOBI+m4z5xsn
 67EJD5rPLrc8YV2Psnx7HECjIhb5/aeUC3v3aj/9gC3CM4OkBa0Yr37Gg
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bOxhpJ+0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/4] ixgbe: create E610
 specific ethtool_ops structure
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

RnJvbTogUGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4gDQpTZW50OiBGcmlkYXks
IEZlYnJ1YXJ5IDI4LCAyMDI1IDExOjE3IEFNDQoNCj5EZWFyIEplZHJ6ZWosDQo+DQo+DQo+VGhh
bmsgeW91IGZvciB5b3VyIHBhdGNoLg0KPg0KPkFtIDI4LjAyLjI1IHVtIDA5OjM3IHNjaHJpZWIg
SmVkcnplaiBKYWdpZWxza2k6DQo+PiBFNjEwJ3MgaW1wbGVtZW50YXRpb24gb2YgdmFyaW91cyBl
dGh0b29sIG9wcyBpcyBkaWZmZXJlbnQgdGhhbg0KPj4gdGhlIG9uZXMgY29ycmVzcG9uZGluZyB0
byBpeGdiZSBsZWdhY3kgcHJvZHVjdHMuIFRoZXJlZm9yZSBjcmVhdGUNCj4+IHNlcGFyYXRlIEU2
MTAgZXRodG9vbF9vcHMgc3RydWN0IHdoaWNoIHdpbGwgYmUgZmlsbGVkIG91dCBpbiB0aGUNCj4+
IGZvcnRoY29taW5nIHBhdGNoZXMuDQo+PiANCj4+IEFzc2luZyBhZGVxdWF0ZSBvcHMgc3RydWN0
IGJhc2luZyBvbiBtYWMgdHlwZS4gVGhpcyBzdGVwIHJlcXVpcmVzDQo+DQo+MS4gIEEqZGQqaW5n
DQo+Mi4gIE1heWJlIGV2ZW4gaW1wZXJhdGl2ZSBtb29kOiBBZGQuDQo+My4gIOKApiBiYXNlZCBv
biBNQUMgdHlwZS4NCg0KSGVsbG8gUGF1bA0KdGhhdCdzIHJlYWxseSB1bmZvcnR1bmF0ZSBtaXN0
YWtlLCBpIGRvbid0IGtub3cgaG93IGkgY291bGQgcGFzcyBpdCBieQ0KdGhhbmsgeW91IGZvciBw
b2ludGluZyBpdCBvdXQhIDopDQoNClJlZ2FyZHMNCkplZHJlaw0KDQo+DQo+PiBjaGFuZ2luZyBh
IGJpdCB0aGUgZmxvdyBvZiBwcm9iaW5nIGJ5IHBsYWNpbmcgaXhnYmVfc2V0X2V0aHRvb2xfb3Bz
DQo+PiBhZnRlciBtYWMgdHlwZSBpcyBhc3NpZ25lZC4gU28gbW92ZSB0aGUgd2hvbGUgbmV0ZGV2
IGFzc2lnbm1lbnQNCj4+IGJsb2NrIGFmdGVyIG1hY190eXBlIGlzIGtub3duLiBUaGlzIHN0ZXAg
ZG9lc24ndCBoYXZlIGFueSBhZGRpdGlvbmFsDQo+PiBpbXBhY3Qgb24gcHJvYmluZyBzZXF1ZW5j
ZS4NCj4+IA0KPj4gU3VnZ2VzdGVkLWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIu
bG9rdGlvbm92QGludGVsLmNvbT4NCj4+IFJldmlld2VkLWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92
IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCj4+IFNpZ25lZC1vZmYtYnk6IEplZHJ6
ZWogSmFnaWVsc2tpIDxqZWRyemVqLmphZ2llbHNraUBpbnRlbC5jb20+DQo+PiAtLS0NCg==
