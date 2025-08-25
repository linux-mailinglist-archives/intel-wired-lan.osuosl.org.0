Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 580F6B33D63
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Aug 2025 12:58:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C6160849C4;
	Mon, 25 Aug 2025 10:58:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6h6zjbeEwM2Q; Mon, 25 Aug 2025 10:58:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E2F484BA8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756119528;
	bh=X6L78SgFDVbEQi6e/6KMpHqqd4qONBOsBLgmdvyaaxg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=g1wqGA4UY7KSbPRkcjlE2QkvZXPIhRUtgovXx5uDE0iE5OJ43Y3Mx/Sd90q4Yzwhe
	 6QvKlfXqdYTNr/pGAGWZN+wvDZSpkE9NodFcETuUI8QO6JlySyeInUz+Yyf1bclK/r
	 V4x5n0m15CaQE48kgkHHY1k/REDrJ8T79jR1eDQfkeQpKIpg3/zPkpwQXyrjNlGdLV
	 uhAyC8rmOhw4zuTql+bsJMK+udtSfCt9H70E0nMnW5kpBnCdJ3jcFwASfuotpSNini
	 TAzfABx3SYAQaaDyfRA7UyhohRHfZt378QxkdlNGtz7tDvdccFHD/4sZ62tAvqy4B0
	 u/BLNVZ9YLFMA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1E2F484BA8;
	Mon, 25 Aug 2025 10:58:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7452FCA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Aug 2025 10:58:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6602D61CAA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Aug 2025 10:58:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AxeXXYNrHLAZ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Aug 2025 10:58:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 49B38611B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 49B38611B5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 49B38611B5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Aug 2025 10:58:45 +0000 (UTC)
X-CSE-ConnectionGUID: 2wHpuwCSQ2OK5nAp//OOdQ==
X-CSE-MsgGUID: LZmGEKK6TLyQct55v4JObA==
X-IronPort-AV: E=McAfee;i="6800,10657,11532"; a="45902547"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="45902547"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2025 03:58:44 -0700
X-CSE-ConnectionGUID: 8fz49+ihRq2iumZGAmEEIA==
X-CSE-MsgGUID: GBGuGqIOTj+WjPINqskN6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="206432483"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2025 03:58:44 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 25 Aug 2025 03:58:42 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 25 Aug 2025 03:58:42 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.87)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 25 Aug 2025 03:58:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aHSUVl6X+RSwxyY6TZcJzcldq9R/iHdEFtvFrs0TIPlsMDdsmddiRhKtdg/4NnzizBKViRrJ3dlU9+O4V7xD5LNwrXg3M9URI3UWdIYYiffF0zfEDGodpC5uwOYevMVxSt8ykfq0vTVErj7bfYChYnSGDj9ydyOCmvgwWT1pTSILWbT6XgB2FtNQt5aTLKJ4W+3LZTrR1BWq6lWES6V0UoW0sY11df26B7dfBoXiM7vyX81chkKx7EZG1UMOJ5YX9a4wb4Ll+sR0wNG15A3RhDLNNwOft1abFXKHhl9gRfP4LzEN7D1I3EyaK7rIJK8pNUimS8PYYJ8+iSkXjS9cBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X6L78SgFDVbEQi6e/6KMpHqqd4qONBOsBLgmdvyaaxg=;
 b=M49VA/qnpYvp2ij9fHKoibzXfIizHUA3baWbPYbEoguv7Pg8jAtf7hBYQ6+yPKtOHuqNAXsk8bX2tp1BtYBvVJ/hGGIl3M9OUriFp8Oh7wPLTPBSsZdWFFTbIPgHzkbalTmvtbNR3OLC/DWiMhLUHPHvkVPEKHRnTAepjziRvhbgf/tC+oaiH2wBFcQwoMEraFUqrq1iSmEVQMqZUr6m2V08WG1JG+eAdU5Ev18/vfdMxy1vXCNMU8R2bbm8pN2edTC7CageA+wm2FJW3Gebs06jKfj/9/RwEkkoMVWddshK1HsQGw2rI52WVtE3aFItIIKZlnJEqoysTM2EfSgDCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA0PR11MB4701.namprd11.prod.outlook.com (2603:10b6:806:9a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.20; Mon, 25 Aug
 2025 10:58:40 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.9052.019; Mon, 25 Aug 2025
 10:58:40 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: Paul Menzel <pmenzel@molgen.mpg.de>, Vadim Fedorenko
 <vadim.fedorenko@linux.dev>, "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Richard Cochran
 <richardcochran@gmail.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet
 <edumazet@google.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>, "Sebastian
 Andrzej Siewior" <bigeasy@linutronix.de>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2] igb: Convert Tx
 timestamping to PTP aux worker
Thread-Index: AQHcEzZk1MGLJaby9UK1hd62FHy4M7RzN+ZA
Date: Mon, 25 Aug 2025 10:58:40 +0000
Message-ID: <IA3PR11MB898642CE8EA4BBA755E76812E53EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250822-igb_irq_ts-v2-1-1ac37078a7a4@linutronix.de>
In-Reply-To: <20250822-igb_irq_ts-v2-1-1ac37078a7a4@linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA0PR11MB4701:EE_
x-ms-office365-filtering-correlation-id: b5f8211a-8d65-42cc-5870-08dde3c659df
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?aitYNHRKWTYxOWVZZzJkdHlQNUJLN0ZGNERsMFZUWTA5alEwWnNCaFp0dkFR?=
 =?utf-8?B?UjAvT29LcVNCdzRSVzZac0kxeW5vMVhib210bW1sNTZPSW5kdU9rQ3V2SUEz?=
 =?utf-8?B?RmRPSnlnNmkyQUtzdUppa2t3azRrZFcrOU04eWN1SzVMRFFHeUppVU9pYVp4?=
 =?utf-8?B?MVBoZzlaM3ZuOGFlVWpLRnlhV2FRVlFhbE5sckk1dDNWSVkxZEg2R0gvbVpK?=
 =?utf-8?B?OGRxS201QkdYaXdBUjNKNXNRcUJsSk9zdnA5djZOa2RNZTQ3b2poK21aOWpp?=
 =?utf-8?B?U3IvUkRkWklrbWthK0plT1lBcGN1Zy9JN2pNaEhTcHE1bEZVN2V2R3RFMEZh?=
 =?utf-8?B?b3VaVGcvWEFnb0h0R0ttd3VOOHN5ODFDc3Y1TkZ0cG03MmdjQ295dFhFMnVt?=
 =?utf-8?B?ZTJEZkRoQTFib0xIWTFPN1hlWitRMmxhMGtUSHpWNFpwRCt2bzNkMXVmYy9C?=
 =?utf-8?B?NXlrUlVnNmx2aVRhb3pzemdpTkJQZW1rT2dBQWpMYUtDZ3F4dzBEdXU0S25C?=
 =?utf-8?B?anN6NXpJb1pYUi9Mb2o3Vk41WUtaaklheXFleHI4T2VROWhnZ2pvSG5BSFpr?=
 =?utf-8?B?ZlFOdkEraEhjZVk3U044czUza2U2bmVSMUtXc3B5SVR1WFV6V01jNHVERExT?=
 =?utf-8?B?OXBMdlpUdExIM0ZLSjhaN01DcFNidGhRWWxWbUZ5dXFwQ2xMcWdySWEyaHpF?=
 =?utf-8?B?QUhocGNhMDYwallGZGFUSlIzWGdNbVdXbXQ4REl3UXZiSU5GcFVDSjdqTm15?=
 =?utf-8?B?T0o0K1RtUlNDYnM0TkFQUzdCWThJUDlMVCswTG0wSUUwS3dPRHJoUUtmSkM1?=
 =?utf-8?B?c0cxOExiVmpOTTJ4WGJYT20vNDJBclZCV3RqWHFkNXpFSmNRYytNVU9CNEwv?=
 =?utf-8?B?Nnhtd2dpY2NSelJCam5vVU52RkphWDhpUThTSjl1d1RHWS9ySDBaa2ZFK1Bq?=
 =?utf-8?B?ekdqVjJIVEN2cDdzaU44QVJtTXlPYW0vNUVxcEJucHpCUENVaWNhcEFlMGZz?=
 =?utf-8?B?M2Q3b29hQjFJZnU3NVMzZDdyS3lBU1JkRjFyRkdHSmEyRUVqRUZJM1BlSTE4?=
 =?utf-8?B?OHN0dGg0VEtLZGE3NGRQT09PSlpQZnkzTElIKzkvZVJuellxNnRhVTNtRVpP?=
 =?utf-8?B?NjF3VWVGSHpLaUhzNHdDNld1YVdKTmk0U3o2ZFFRWnVPZmE3ZmdJak5Vc2Vk?=
 =?utf-8?B?ZDc5QkxLQXEwV2tEaGtpOE5COEFrVlpJcU9JME0zdm5wa2tMVExzRnVIRitk?=
 =?utf-8?B?OStCcHIwTkM0NEwybmE1TDZ6VUprTm5SZ3lyMDloRStCTHp3MUhlSlpMeXVJ?=
 =?utf-8?B?aTVVUHJpWmRKb1RPajlZNndMZHJsSzYyUzFCcVV0MmNqK3VkcmJCc2hmOWR4?=
 =?utf-8?B?S1ArYjZnUEh0QVdtS0wwYWhzc1hKYm0xejNsbFg0RTExOXR5Ui9HQjJnQkQx?=
 =?utf-8?B?c0JmUm9vTGlRZnBzb2pLZ1FFc3ozeFFHNVVrVTh5eGpPbVlmN2I0K01vZjk5?=
 =?utf-8?B?V0NKMzlsa3NRcitia0hERkNqcmtpSXhWWXUwZDJTa3BhcU1xa2Z4bXVqQVA5?=
 =?utf-8?B?cUNrY0x4ck1nYjh3MkZkalFXT1dWVEZxcm1uZVRmZS9pTVJUb3pEeG53K01y?=
 =?utf-8?B?b3hORnJ5Sm9tSWU0WUJYVHUxbDJRcTFNamxhT3VPeHpmMHliN2VUd2U3UHk4?=
 =?utf-8?B?eG9LY3E4S0xDMlhnM2NFZis1cnFzTnFsck8rZEl6ODRaMjdsWVVqcUJ0Q3dN?=
 =?utf-8?B?K0RYbjhqWS85UzNmQXBPTU54SlREdUxadmQ4TlJ6RzIwaWJVTFpNZUdudG5h?=
 =?utf-8?B?K3o1NjRDTisrQjZtR0dOdzNYV2kxTXZ0NzFueGFDSkdIeXdHcXZJZU1hekx2?=
 =?utf-8?B?QlhVbmRkTSs3OGljZFRZeTJjZk1UNTZVZW1NNGJQOU4zUG1ORndNQUdTajFk?=
 =?utf-8?B?VlRBdkcwUlpLTXJEMDR6aEVsME9JeGdBWmlQRnI0a0NGUE1TZGdXUGdGdTlM?=
 =?utf-8?Q?AyP8AgOdnAevuJto+Uja6PJZ7c/5co=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c094L050eDE2Ym1WS2FzUm82dFZEa3pjNUZmR1ZLTFdJT3VPZ092MGhXNUxx?=
 =?utf-8?B?b2JOd1JRTGxUQ2NSNnhLMzhnUXFvY0tMb0U4RnRtbzdtUnhFdm5NWGNHQmpq?=
 =?utf-8?B?d3JjdDVPZExFdXdjdVgzNzg3cnFWa0FKWHNDVkZnQTBKdWtYNEliZlFRUHh0?=
 =?utf-8?B?b1BramloeW1CR2s2YmEzL3RQb0w4Y2YySDJUdVdocTRKdUpUSytyWGVsRStR?=
 =?utf-8?B?ZlplcmkxZ2FXb0JRN0Y0Vnk3cFlsVW9pVTZXR3JIcnpnWHpjRGJPRGZPd0hl?=
 =?utf-8?B?aHR2dlMxajZoaUwxN0tuZ0tIancrbDVYTENpZFh4RFpsSnpPVTM1MlZRYmNo?=
 =?utf-8?B?SVp6cG1WVzRmang5UEdVdEdpZ0V1MjRDcDRQWnFqSmt0RDZHdEZKa2xzOHIz?=
 =?utf-8?B?eGRuMkZURG0rTVM2cmMzazNJejBUSnoxTHBGOVUvRVZZbktSQzRSWWMrM3g1?=
 =?utf-8?B?M2V2TEhqQXFPQ0JXZXdwL1U1bm4yQ3hJUW52cjM3R0plTm5uNUt6OVJmNTNT?=
 =?utf-8?B?Q1dHZHI4dVNmeGtTRTJLRHpMeHZBRjVHK1grcTFla1h1em8rblFXNHpzeVdN?=
 =?utf-8?B?N2dIcWc4NWs3L1RZL01Ma3pnZVBmUnAyM1U3MmFwemx4cGViSXc3S1ExV3Na?=
 =?utf-8?B?V1czY3M4WlZya01CV04xQ2VQVFFlbUtIZGhzRzBwYk8yQ3VpRVJzQkExOGlX?=
 =?utf-8?B?eW9qL1Rsc3dIdmYvajdzSnIwL2hhZFVUVjBBSU1lK0MzU1kvWExJTForQkFD?=
 =?utf-8?B?S0xiRFhTQzlFSlhMK1hldjRrNzN5Q3FWMVNBRU5kbnRPWk1udUpMdVVCdzRj?=
 =?utf-8?B?ZmwyeEtQaURISUJ5eVlPM2lJN2tKUzNKS0hhSFdEVWM3a1owT0RpeWs4cmxM?=
 =?utf-8?B?SENRMzRIbTdPbi9WU0o4UnRCd3pqOFVSWFFUN3o1VU5makg2RVFvRlhnMUZK?=
 =?utf-8?B?K0h5YloxY05sOFNSWnVxRHNyOWZYZmFxRVdqZnBFYU5NcG5aY0oxR3ZiSjl0?=
 =?utf-8?B?b0NBN1FKTU53SWkyVEJQSGxsYkI1OFJiQUZSWUNhd3JpSE95ZmMrdTFCanN3?=
 =?utf-8?B?RWdMWFMwNHQ3TEJSa1BXa1pLamkxbkd4aFVRMVM5eVlxa2kxTm1jcENYS2xi?=
 =?utf-8?B?MitESFBSaTJpamFzeHNnb0xhYTVxQWxMV0Q2aXJnTC9tb2hFUThMNFlZRmcy?=
 =?utf-8?B?ZDF4OTlXSWIrWVluWXcyZjN5RlFQWUozUXk5emRBeHJFSFpXb2w5bk4ydzlV?=
 =?utf-8?B?N29Kd09sZm1oSWhLRWh0Und5MXlNeDMxWjZRYVp1a1JtZDdiYnArdWRNZGNj?=
 =?utf-8?B?aWgyMHM4VUoyeFY5Q0VNSnZGazZFbTBWMkVlSjQxTm9TNlNXZkxXb2t4WS9a?=
 =?utf-8?B?MkpJQ3dwM1ptdVY2aVNpWWFzeVVsQzlUUVFxS00xOGpHWlRrcDFZaWNVOCtV?=
 =?utf-8?B?Z0U3SDZJaDBNV0czaE95T21sTXRsR1hSVGt5SFNKM0NEN2ZWNzBnRFRaUFJB?=
 =?utf-8?B?aU9jQlp1NzFocy9VTW53SjBNblFpRmYycEdGMnlNTGFKeDA3M0pDMWZabGUx?=
 =?utf-8?B?STFPa0FPbVJ3SlM3U3hrLzZyWkxJNTk1NWVKTnc1aXA0RTBmd1dtYXUreGN6?=
 =?utf-8?B?aGUvRmNKNjNNUklNeXBkKzZMak1FaWZBY2tyMGpPRnk4MW1QS2E5YlNoRlBl?=
 =?utf-8?B?dk9qNXRvK3loTGZQSWlseFBWTStKelY1MmR6NXBQQnd6TlBUbEllV1hCV1VV?=
 =?utf-8?B?Yk5wU01iM1JkZDA5YzhoNXhid0h6YnZnaVFBS2hISkY0VFowVWdmbGFVTFlN?=
 =?utf-8?B?dEMwOWsvb0ZYZ2tKbFVwT0pUd3RaUjdoMzJMemx1RnAxWFZUVkpibkpZQk0z?=
 =?utf-8?B?NmdqNURKSzQ1cWt2ZzNWNkhUM3hqRThDdnJmbjJzUWR4S1NDRVV4NzZtZXgx?=
 =?utf-8?B?eW56M0g1VVdVZWtMTnQ0dmNvRlBRYjRqMDlGNEZPRzkxNWF1aU5kZHlMMUZl?=
 =?utf-8?B?S29CWldlYjdzWUUvL2Z6OWZEaEdSTGZYWUdoQ3JKT3E2R1ZBNnJpU1d1cGZ2?=
 =?utf-8?B?c2lGTFVWdmZOeEwwNjB1WWlTZGx4TGxKK0ZFOVIvQ3E4ZkVXSnNOMmpDVlJS?=
 =?utf-8?B?dUNUalBWdjU5RVR0OU5hc0tkYjJwZXByMlNBbitpSE1WZXRVQTRwVkMvUSt3?=
 =?utf-8?B?UlE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5f8211a-8d65-42cc-5870-08dde3c659df
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Aug 2025 10:58:40.7057 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4tOsa+3LlvwtCoTmlNJS/aJH417Cbno8Te42cO+0RcYFPXu0+uhh37uS8O1cKL+1d9tyNGg9eP74oysWZqaRhxa6xLNCexzfSbTrEpdupJY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4701
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756119525; x=1787655525;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=X6L78SgFDVbEQi6e/6KMpHqqd4qONBOsBLgmdvyaaxg=;
 b=joy+qjgIweI8tSdwBH0xPuZIryY/9xisvQC9HoIU+JfEAVdinFAuJoQf
 eVj9YCbANu1DbrhJOUAyYxj5Kg9LUnTCfBEHfjBf13XybbW0E373EXRYP
 BK004qtv9FatFirEamn/URhc3sO2DLXy4MTU9X9LpgiHXx6W8qYc7kvv1
 9kaoc9DJVUC60dde9fV6DNtUbMx1I/y8KRNiKlWRwg6QZQ4TyL7aKILdN
 zN43u8PRH3LuO06J4XcbDbuhw1HSNgxeZ4aFlRN+HlIjUfbzvUoT3TayV
 er1eSq884PIv8wz7YoGachszMlgfBjH6alvJQ9SpR07TLtQAlOcoC96XF
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=joy+qjgI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] igb: Convert Tx
 timestamping to PTP aux worker
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgS3Vy
dCBLYW56ZW5iYWNoDQo+IFNlbnQ6IEZyaWRheSwgQXVndXN0IDIyLCAyMDI1IDk6MjggQU0NCj4g
VG86IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IEtpdHN6
ZWwsDQo+IFByemVteXNsYXcgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+DQo+IENjOiBQ
YXVsIE1lbnplbCA8cG1lbnplbEBtb2xnZW4ubXBnLmRlPjsgVmFkaW0gRmVkb3JlbmtvDQo+IDx2
YWRpbS5mZWRvcmVua29AbGludXguZGV2PjsgR29tZXMsIFZpbmljaXVzDQo+IDx2aW5pY2l1cy5n
b21lc0BpbnRlbC5jb20+OyBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBSaWNoYXJkIENvY2hyYW4N
Cj4gPHJpY2hhcmRjb2NocmFuQGdtYWlsLmNvbT47IEt1cnQgS2FuemVuYmFjaCA8a3VydEBsaW51
dHJvbml4LmRlPjsNCj4gQW5kcmV3IEx1bm4gPGFuZHJldytuZXRkZXZAbHVubi5jaD47IEVyaWMg
RHVtYXpldA0KPiA8ZWR1bWF6ZXRAZ29vZ2xlLmNvbT47IGludGVsLXdpcmVkLWxhbkBsaXN0cy5v
c3Vvc2wub3JnOyBLZWxsZXIsIEphY29iDQo+IEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT47
IEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+OyBQYW9sbw0KPiBBYmVuaSA8cGFiZW5p
QHJlZGhhdC5jb20+OyBEYXZpZCBTLiBNaWxsZXIgPGRhdmVtQGRhdmVtbG9mdC5uZXQ+Ow0KPiBT
ZWJhc3RpYW4gQW5kcnplaiBTaWV3aW9yIDxiaWdlYXN5QGxpbnV0cm9uaXguZGU+DQo+IFN1Ympl
Y3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV4dCB2Ml0gaWdiOiBDb252ZXJ0IFR4
DQo+IHRpbWVzdGFtcGluZyB0byBQVFAgYXV4IHdvcmtlcg0KPiANCj4gVGhlIGN1cnJlbnQgaW1w
bGVtZW50YXRpb24gdXNlcyBzY2hlZHVsZV93b3JrKCkgd2hpY2ggaXMgZXhlY3V0ZWQgYnkNCj4g
dGhlIHN5c3RlbSB3b3JrIHF1ZXVlIHRvIHJldHJpZXZlIFR4IHRpbWVzdGFtcHMuIFRoaXMgaW5j
cmVhc2VzDQo+IGxhdGVuY3kgYW5kIGNhbiBsZWFkIHRvIHRpbWVvdXRzIGluIGNhc2Ugb2YgaGVh
dnkgc3lzdGVtIGxvYWQuDQo+IA0KPiBUaGVyZWZvcmUsIHN3aXRjaCB0byB0aGUgUFRQIGF1eCB3
b3JrZXIgd2hpY2ggY2FuIGJlIHByaW9yaXRpemVkIGFuZA0KPiBwaW5uZWQgYWNjb3JkaW5nIHRv
IHVzZSBjYXNlLiBUZXN0ZWQgb24gSW50ZWwgaTIxMC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEt1
cnQgS2FuemVuYmFjaCA8a3VydEBsaW51dHJvbml4LmRlPg0KUmV2aWV3ZWQtYnk6IEFsZWtzYW5k
ciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KDQoNCj4gLS0tDQo+
IENoYW5nZXMgaW4gdjI6DQo+IC0gU3dpdGNoIGZyb20gSVJRIHRvIFBUUCBhdXggd29ya2VyIGR1
ZSB0byBOVFAgcGVyZm9ybWFuY2UgcmVncmVzc2lvbg0KPiAoTWlyb3NsYXYpDQo+IC0gTGluayB0
byB2MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI1MDgxNS1pZ2JfaXJxX3RzLXYxLTEt
DQo+IDhjNmZjMDM1MzQyMkBsaW51dHJvbml4LmRlDQo+IC0tLQ0KPiAgZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWdiL2lnYi5oICAgICAgfCAgMSAtDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZ2IvaWdiX21haW4uYyB8ICA2ICsrKy0tLQ0KPiBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZ2IvaWdiX3B0cC5jICB8IDI4ICsrKysrKysrKysrKysrKy0tLS0tLS0tDQo+IC0t
LS0tDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDE3IGRlbGV0aW9ucygt
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2Iu
aA0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2IuaA0KPiBpbmRleA0KPiBj
M2Y0ZjdjZDI2NGU5YjJmZjcwZjAzYjU4MGY5NWIxNWI1MjgwMjhjLi5mMjg1ZGVmNjFmN2E3Nzhm
NjY5NDRkNmM1MmJiDQo+IDMxZjExZmY4MDNjZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWdiL2lnYi5oDQo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2lnYi9pZ2IuaA0KPiBAQCAtNjI0LDcgKzYyNCw2IEBAIHN0cnVjdCBpZ2JfYWRhcHRlciB7
DQo+ICAJc3RydWN0IHB0cF9jbG9jayAqcHRwX2Nsb2NrOw0KPiAgCXN0cnVjdCBwdHBfY2xvY2tf
aW5mbyBwdHBfY2FwczsNCj4gIAlzdHJ1Y3QgZGVsYXllZF93b3JrIHB0cF9vdmVyZmxvd193b3Jr
Ow0KPiAtCXN0cnVjdCB3b3JrX3N0cnVjdCBwdHBfdHhfd29yazsNCj4gIAlzdHJ1Y3Qgc2tfYnVm
ZiAqcHRwX3R4X3NrYjsNCj4gIAlzdHJ1Y3Qga2VybmVsX2h3dHN0YW1wX2NvbmZpZyB0c3RhbXBf
Y29uZmlnOw0KPiAgCXVuc2lnbmVkIGxvbmcgcHRwX3R4X3N0YXJ0Ow0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9tYWluLmMNCj4gYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYw0KPiBpbmRleA0KPiBhOWE3YTk0YWU2MWU5
M2FhNzM3YjAxMDNlMDA1ODBlNzM2MDFkNjJiLi43NjQ2N2YwZTUzMzA1MTg4ZmNiYmZmMjdlMjFl
DQo+IDQ3OGU3NjRjYTU1MiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWdiL2lnYl9tYWluLmMNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdi
L2lnYl9tYWluLmMNCj4gQEAgLTY1NzYsNyArNjU3Niw3IEBAIG5ldGRldl90eF90IGlnYl94bWl0
X2ZyYW1lX3Jpbmcoc3RydWN0IHNrX2J1ZmYNCj4gKnNrYiwNCj4gIAkJCWFkYXB0ZXItPnB0cF90
eF9za2IgPSBza2JfZ2V0KHNrYik7DQo+ICAJCQlhZGFwdGVyLT5wdHBfdHhfc3RhcnQgPSBqaWZm
aWVzOw0KPiAgCQkJaWYgKGFkYXB0ZXItPmh3Lm1hYy50eXBlID09IGUxMDAwXzgyNTc2KQ0KPiAt
CQkJCXNjaGVkdWxlX3dvcmsoJmFkYXB0ZXItPnB0cF90eF93b3JrKTsNCj4gKwkJCQlwdHBfc2No
ZWR1bGVfd29ya2VyKGFkYXB0ZXItPnB0cF9jbG9jaywgMCk7DQo+ICAJCX0gZWxzZSB7DQo+ICAJ
CQlhZGFwdGVyLT50eF9od3RzdGFtcF9za2lwcGVkKys7DQo+ICAJCX0NCj4gQEAgLTY2MTIsNyAr
NjYxMiw3IEBAIG5ldGRldl90eF90IGlnYl94bWl0X2ZyYW1lX3Jpbmcoc3RydWN0IHNrX2J1ZmYN
Cj4gKnNrYiwNCj4gIAkJZGV2X2tmcmVlX3NrYl9hbnkoYWRhcHRlci0+cHRwX3R4X3NrYik7DQo+
ICAJCWFkYXB0ZXItPnB0cF90eF9za2IgPSBOVUxMOw0KPiAgCQlpZiAoYWRhcHRlci0+aHcubWFj
LnR5cGUgPT0gZTEwMDBfODI1NzYpDQo+IC0JCQljYW5jZWxfd29ya19zeW5jKCZhZGFwdGVyLT5w
dHBfdHhfd29yayk7DQo+ICsJCQlwdHBfY2FuY2VsX3dvcmtlcl9zeW5jKGFkYXB0ZXItPnB0cF9j
bG9jayk7DQo+ICAJCWNsZWFyX2JpdF91bmxvY2soX19JR0JfUFRQX1RYX0lOX1BST0dSRVNTLCAm
YWRhcHRlci0NCj4gPnN0YXRlKTsNCj4gIAl9DQo+IA0KPiBAQCAtNzA4MCw3ICs3MDgwLDcgQEAg
c3RhdGljIHZvaWQgaWdiX3RzeW5jX2ludGVycnVwdChzdHJ1Y3QNCj4gaWdiX2FkYXB0ZXIgKmFk
YXB0ZXIpDQo+IA0KPiAgCWlmICh0c2ljciAmIEUxMDAwX1RTSUNSX1RYVFMpIHsNCj4gIAkJLyog
cmV0cmlldmUgaGFyZHdhcmUgdGltZXN0YW1wICovDQo+IC0JCXNjaGVkdWxlX3dvcmsoJmFkYXB0
ZXItPnB0cF90eF93b3JrKTsNCj4gKwkJcHRwX3NjaGVkdWxlX3dvcmtlcihhZGFwdGVyLT5wdHBf
Y2xvY2ssIDApOw0KPiAgCX0NCj4gDQo+ICAJaWYgKHRzaWNyICYgVFNJTlRSX1RUMCkNCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfcHRwLmMNCj4gYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX3B0cC5jDQo+IGluZGV4DQo+IGE3ODc2
ODgyYWVhZjJiMmE3ZmI5ZWM2ZmY1YzgzZDhhMWIwNjAwOGEuLjhkYWJkZTAxZDA5ZGNhY2MxM2Ux
OWZhNGNlN2ENCj4gZDAzMjcwNzcxOTBhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pZ2IvaWdiX3B0cC5jDQo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2lnYi9pZ2JfcHRwLmMNCj4gQEAgLTc5OCwyMCArNzk4LDIwIEBAIHN0YXRpYyBpbnQgaWdi
X3B0cF92ZXJpZnlfcGluKHN0cnVjdA0KPiBwdHBfY2xvY2tfaW5mbyAqcHRwLCB1bnNpZ25lZCBp
bnQgcGluLA0KPiANCj4gIC8qKg0KPiAgICogaWdiX3B0cF90eF93b3JrDQo+IC0gKiBAd29yazog
cG9pbnRlciB0byB3b3JrIHN0cnVjdA0KPiArICogQHB0cDogcG9pbnRlciB0byBwdHAgY2xvY2sg
aW5mb3JtYXRpb24NCj4gICAqDQo+ICAgKiBUaGlzIHdvcmsgZnVuY3Rpb24gcG9sbHMgdGhlIFRT
WU5DVFhDVEwgdmFsaWQgYml0IHRvIGRldGVybWluZQ0KPiB3aGVuIGENCj4gICAqIHRpbWVzdGFt
cCBoYXMgYmVlbiB0YWtlbiBmb3IgdGhlIGN1cnJlbnQgc3RvcmVkIHNrYi4NCj4gICAqKi8NCj4g
LXN0YXRpYyB2b2lkIGlnYl9wdHBfdHhfd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspDQo+
ICtzdGF0aWMgbG9uZyBpZ2JfcHRwX3R4X3dvcmsoc3RydWN0IHB0cF9jbG9ja19pbmZvICpwdHAp
DQo+ICB7DQo+IC0Jc3RydWN0IGlnYl9hZGFwdGVyICphZGFwdGVyID0gY29udGFpbmVyX29mKHdv
cmssIHN0cnVjdA0KPiBpZ2JfYWRhcHRlciwNCj4gLQkJCQkJCSAgIHB0cF90eF93b3JrKTsNCj4g
KwlzdHJ1Y3QgaWdiX2FkYXB0ZXIgKmFkYXB0ZXIgPSBjb250YWluZXJfb2YocHRwLCBzdHJ1Y3QN
Cj4gaWdiX2FkYXB0ZXIsDQo+ICsJCQkJCQkgICBwdHBfY2Fwcyk7DQo+ICAJc3RydWN0IGUxMDAw
X2h3ICpodyA9ICZhZGFwdGVyLT5odzsNCj4gIAl1MzIgdHN5bmN0eGN0bDsNCj4gDQo+ICAJaWYg
KCFhZGFwdGVyLT5wdHBfdHhfc2tiKQ0KPiAtCQlyZXR1cm47DQo+ICsJCXJldHVybiAtMTsNCj4g
DQo+ICAJaWYgKHRpbWVfaXNfYmVmb3JlX2ppZmZpZXMoYWRhcHRlci0+cHRwX3R4X3N0YXJ0ICsN
Cj4gIAkJCQkgICBJR0JfUFRQX1RYX1RJTUVPVVQpKSB7DQo+IEBAIC04MjQsMTUgKzgyNCwxNyBA
QCBzdGF0aWMgdm9pZCBpZ2JfcHRwX3R4X3dvcmsoc3RydWN0IHdvcmtfc3RydWN0DQo+ICp3b3Jr
KQ0KPiAgCQkgKi8NCj4gIAkJcmQzMihFMTAwMF9UWFNUTVBIKTsNCj4gIAkJZGV2X3dhcm4oJmFk
YXB0ZXItPnBkZXYtPmRldiwgImNsZWFyaW5nIFR4IHRpbWVzdGFtcA0KPiBoYW5nXG4iKTsNCj4g
LQkJcmV0dXJuOw0KPiArCQlyZXR1cm4gLTE7DQo+ICAJfQ0KPiANCj4gIAl0c3luY3R4Y3RsID0g
cmQzMihFMTAwMF9UU1lOQ1RYQ1RMKTsNCj4gLQlpZiAodHN5bmN0eGN0bCAmIEUxMDAwX1RTWU5D
VFhDVExfVkFMSUQpDQo+ICsJaWYgKHRzeW5jdHhjdGwgJiBFMTAwMF9UU1lOQ1RYQ1RMX1ZBTElE
KSB7DQo+ICAJCWlnYl9wdHBfdHhfaHd0c3RhbXAoYWRhcHRlcik7DQo+IC0JZWxzZQ0KPiAtCQkv
KiByZXNjaGVkdWxlIHRvIGNoZWNrIGxhdGVyICovDQo+IC0JCXNjaGVkdWxlX3dvcmsoJmFkYXB0
ZXItPnB0cF90eF93b3JrKTsNCj4gKwkJcmV0dXJuIC0xOw0KPiArCX0NCj4gKw0KPiArCS8qIHJl
c2NoZWR1bGUgdG8gY2hlY2sgbGF0ZXIgKi8NCj4gKwlyZXR1cm4gMTsNCj4gIH0NCj4gDQo+ICBz
dGF0aWMgdm9pZCBpZ2JfcHRwX292ZXJmbG93X2NoZWNrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29y
aykgQEAgLQ0KPiA5MTUsNyArOTE3LDcgQEAgdm9pZCBpZ2JfcHRwX3R4X2hhbmcoc3RydWN0IGln
Yl9hZGFwdGVyICphZGFwdGVyKQ0KPiAgCSAqIHRpbWVzdGFtcCBiaXQgd2hlbiB0aGlzIG9jY3Vy
cy4NCj4gIAkgKi8NCj4gIAlpZiAodGltZW91dCkgew0KPiAtCQljYW5jZWxfd29ya19zeW5jKCZh
ZGFwdGVyLT5wdHBfdHhfd29yayk7DQo+ICsJCXB0cF9jYW5jZWxfd29ya2VyX3N5bmMoYWRhcHRl
ci0+cHRwX2Nsb2NrKTsNCj4gIAkJZGV2X2tmcmVlX3NrYl9hbnkoYWRhcHRlci0+cHRwX3R4X3Nr
Yik7DQo+ICAJCWFkYXB0ZXItPnB0cF90eF9za2IgPSBOVUxMOw0KPiAgCQljbGVhcl9iaXRfdW5s
b2NrKF9fSUdCX1BUUF9UWF9JTl9QUk9HUkVTUywgJmFkYXB0ZXItDQo+ID5zdGF0ZSk7IEBAIC0x
MzgxLDYgKzEzODMsNyBAQCB2b2lkIGlnYl9wdHBfaW5pdChzdHJ1Y3QgaWdiX2FkYXB0ZXINCj4g
KmFkYXB0ZXIpDQo+ICAJCXJldHVybjsNCj4gIAl9DQo+IA0KPiArCWFkYXB0ZXItPnB0cF9jYXBz
LmRvX2F1eF93b3JrID0gaWdiX3B0cF90eF93b3JrOw0KPiAgCWFkYXB0ZXItPnB0cF9jbG9jayA9
IHB0cF9jbG9ja19yZWdpc3RlcigmYWRhcHRlci0+cHRwX2NhcHMsDQo+ICAJCQkJCQkmYWRhcHRl
ci0+cGRldi0+ZGV2KTsNCj4gIAlpZiAoSVNfRVJSKGFkYXB0ZXItPnB0cF9jbG9jaykpIHsNCj4g
QEAgLTEzOTIsNyArMTM5NSw2IEBAIHZvaWQgaWdiX3B0cF9pbml0KHN0cnVjdCBpZ2JfYWRhcHRl
ciAqYWRhcHRlcikNCj4gIAkJYWRhcHRlci0+cHRwX2ZsYWdzIHw9IElHQl9QVFBfRU5BQkxFRDsN
Cj4gDQo+ICAJCXNwaW5fbG9ja19pbml0KCZhZGFwdGVyLT50bXJlZ19sb2NrKTsNCj4gLQkJSU5J
VF9XT1JLKCZhZGFwdGVyLT5wdHBfdHhfd29yaywgaWdiX3B0cF90eF93b3JrKTsNCj4gDQo+ICAJ
CWlmIChhZGFwdGVyLT5wdHBfZmxhZ3MgJiBJR0JfUFRQX09WRVJGTE9XX0NIRUNLKQ0KPiAgCQkJ
SU5JVF9ERUxBWUVEX1dPUksoJmFkYXB0ZXItPnB0cF9vdmVyZmxvd193b3JrLA0KPiBAQCAtMTQz
Nyw3ICsxNDM5LDcgQEAgdm9pZCBpZ2JfcHRwX3N1c3BlbmQoc3RydWN0IGlnYl9hZGFwdGVyDQo+
ICphZGFwdGVyKQ0KPiAgCWlmIChhZGFwdGVyLT5wdHBfZmxhZ3MgJiBJR0JfUFRQX09WRVJGTE9X
X0NIRUNLKQ0KPiAgCQljYW5jZWxfZGVsYXllZF93b3JrX3N5bmMoJmFkYXB0ZXItPnB0cF9vdmVy
Zmxvd193b3JrKTsNCj4gDQo+IC0JY2FuY2VsX3dvcmtfc3luYygmYWRhcHRlci0+cHRwX3R4X3dv
cmspOw0KPiArCXB0cF9jYW5jZWxfd29ya2VyX3N5bmMoYWRhcHRlci0+cHRwX2Nsb2NrKTsNCj4g
IAlpZiAoYWRhcHRlci0+cHRwX3R4X3NrYikgew0KPiAgCQlkZXZfa2ZyZWVfc2tiX2FueShhZGFw
dGVyLT5wdHBfdHhfc2tiKTsNCj4gIAkJYWRhcHRlci0+cHRwX3R4X3NrYiA9IE5VTEw7DQo+IA0K
PiAtLS0NCj4gYmFzZS1jb21taXQ6IGE3YmQ3MjE1ODA2Mzc0MDIxMjM0NGZhZDVkOTlkY2VmNDVi
YzcwZDYNCj4gY2hhbmdlLWlkOiAyMDI1MDgxMy1pZ2JfaXJxX3RzLTFhYTc3Y2M3YjRjYg0KPiAN
Cj4gQmVzdCByZWdhcmRzLA0KPiAtLQ0KPiBLdXJ0IEthbnplbmJhY2ggPGt1cnRAbGludXRyb25p
eC5kZT4NCg0K
