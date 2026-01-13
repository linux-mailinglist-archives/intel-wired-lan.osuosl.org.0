Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 18AE6D17082
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jan 2026 08:34:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9786861697;
	Tue, 13 Jan 2026 07:34:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nEQUB2KBzNkD; Tue, 13 Jan 2026 07:34:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F024E6169D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768289662;
	bh=7+Uts85vEp3jgizTUQqcF2AmVUpJR90ny0fWNQJYNzs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7jylaXEMGx7qEZmXCSyqU+qNPQZT1zHZ9rFAn//DzWKKLm4YxWK/vkQ8AXmOFEVgi
	 fSV3eYR97cfmPAGpTsL49dMRo/hbSEq0Dhy6aUzYO/vC5WF/dPRdJ5uF7sC7cLVxcg
	 3RaxiISiBoWYgylb66tO0AD0XnfkeTmuIf8JbWSaUk29uOChbW2iECwSyV+MYaIcRI
	 2ke6zG4qibnkF+AYJZ72dCAK0RPrlFOQhA3kj5uuODPK7nb2AoiN+W7mvdQJkqDjN0
	 4wiVuJdemGSsWt53n3MEiTHHKonlo5WW//VB4v60R0iZgJGKk+O8hkG8SbeRj4qNUp
	 Z/JtbS9lpcNZw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F024E6169D;
	Tue, 13 Jan 2026 07:34:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 75D2718D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 07:34:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 71AAE6169A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 07:34:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bYF9zlx86hfm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jan 2026 07:34:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9927761697
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9927761697
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9927761697
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 07:34:19 +0000 (UTC)
X-CSE-ConnectionGUID: STc7rK2bTpiWavoUEk4l4A==
X-CSE-MsgGUID: Z8mfRwp8QSaFNNNuKlrKUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11669"; a="69626290"
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="69626290"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2026 23:34:18 -0800
X-CSE-ConnectionGUID: rjz8MJtpSJqUaZnClSLobg==
X-CSE-MsgGUID: H0hGBUqESdCJFAD/v6Flcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="204712269"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2026 23:34:18 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 12 Jan 2026 23:34:17 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 12 Jan 2026 23:34:17 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.16) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 12 Jan 2026 23:34:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m8+dTm/hAmACtIDjCOYDkCRgHMySt6hPecrZPpw9jtlR9W8zWD1jfqQRxDDBeg/tAjLLBqcGNms+EyA53z6CSa06D+Nd7ibPmMD2SnCSaxAKTjLFE0T6OV2edg4jXnri9Ig0FtaOrUxNJAuUbxCmJLbDbL4OzgrvNhAW596anZyciD7Kh16NTqed/Ui0PGfx/FnRvkd1hFKQzcmZYw1moiXVEsMxLRbz+5XU2013dPzEHbt3BKg5HJyNvbqi0xyaMzydXdaUr1J9pGPSooiJ2LCTGnLwwK90OxK+Vf9ElQ6DLaSh6VEswgg+/gR0logYGxO3/dcvMKmFitdzzSZ+yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7+Uts85vEp3jgizTUQqcF2AmVUpJR90ny0fWNQJYNzs=;
 b=iL8VGSMYBu/ZmVLNQMzeC/J8ybUI1t7kaOjhqg99xIZBh+wgnFNpRJnAkRuu9QBNnGOTRcPSlaEY9e3fYOSUzQjFwyC4fb137h9xXCpw6rSs0XMGUuEHPxS1RWKn4FWEhWDrOaTNICmbUJymLlCDd4PT4xvyJzM9YRTyCc8FMQmQyrafp/M8BfyeWUDIxpWnoNxXBlMHsaFxEHqm2GbHGu8ya/oftQ9zQoisblQk+JtiuLEFuN22CQj6EyWhzNBuJjnLglyhdzcHqxAw6A0H/2tuUDWcUhUC2GST5fNCRZJp1AWVdT6PBN7oI8GVRqFoDR7AVxrGJKJkHcgN4W9YAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF7551E6552.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::31) by SA0PR11MB4654.namprd11.prod.outlook.com
 (2603:10b6:806:98::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Tue, 13 Jan
 2026 07:34:10 +0000
Received: from DS4PPF7551E6552.namprd11.prod.outlook.com
 ([fe80::67f8:8630:9f17:7876]) by DS4PPF7551E6552.namprd11.prod.outlook.com
 ([fe80::67f8:8630:9f17:7876%6]) with mapi id 15.20.9499.005; Tue, 13 Jan 2026
 07:34:09 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Li Li <boolli@google.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "David
 Decotigny" <decot@google.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, Brian Vazquez
 <brianvv@google.com>, "Tantilov, Emil S" <emil.s.tantilov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH 1/2] idpf: skip deallocating bufq_sets
 from rx_qgrp if it is NULL.
Thread-Index: AQHchBiuXbQi2JwdB0yVSWPUNHdVa7VPtb8w
Date: Tue, 13 Jan 2026 07:34:09 +0000
Message-ID: <DS4PPF7551E6552C3D8014B51CD9ABDF66BE58EA@DS4PPF7551E6552.namprd11.prod.outlook.com>
References: <20260112230944.3085309-1-boolli@google.com>
 <20260112230944.3085309-2-boolli@google.com>
In-Reply-To: <20260112230944.3085309-2-boolli@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF7551E6552:EE_|SA0PR11MB4654:EE_
x-ms-office365-filtering-correlation-id: 0ab1efcb-f56c-4567-3f9e-08de52762419
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?aE1sKy9PYktPek0rb3RZWDhvM2FzK1NvS0s4RlowYnBuYlNqR29EWUdtcjBt?=
 =?utf-8?B?Rm1hUGJibmN0SUpLZlhuWkpDZWt4TDNDUjlzbFM4c0FLanJtRGlSNUpubFZt?=
 =?utf-8?B?K3V0SkdlVHp6TE9PR0hldXVXb3ZWNDYxem5CREZpY1cvc2MrQk5zQkZnWHFm?=
 =?utf-8?B?bHIvMnpDK21NZ3Q3VW15cTA2NEFETnNIMUVieTlrUUJTV0x2eFdYanZaRVlR?=
 =?utf-8?B?aVJYL2lGT2ZVT0JiQk82TVV6eWZJZWI1RmlTeStNN1hYOTllbWhQaWltOFBZ?=
 =?utf-8?B?MEM3VkJYTkQ1R0RvT1hFOXA3MjNOaEpNemxLMFZBS3FHLzQvV2liQndKeUtv?=
 =?utf-8?B?WUZNSXdaM1VmYUpqSWF4UW8yNjYvekw4dlp2WU5uU2tjWFcrWHpkVVZnZ2Z2?=
 =?utf-8?B?QkJPZCtzenFKdEV6RGQ0SXNHYXdEaThSN2h1Z1lISU0rM3dxbXZrY1ZueHc2?=
 =?utf-8?B?NzVaeDZqc1hoWElMd2ZqUVdycWtMaVNuM2lDNXg1SWZoTnB0cUY2S1J5THBV?=
 =?utf-8?B?WHlnOHh1d1YwTGpXbTlCWlU2ZTR1TExFc096VGRHbm5YeTZKcFkxM0VMSGhm?=
 =?utf-8?B?TTE2cmUyM0ZBWDExSnY5ZndRekxsazQ5YkdUMGJtekV2VEJBM09TSC8zQ085?=
 =?utf-8?B?dnZqMnVIbDlacnp6dWk4NEd2RWxDWFI2UlpIMzlXRWlHWmJGUjBNT1U3MVF5?=
 =?utf-8?B?azRieEFMQzhPOUJHQzg3T1VtalN2T3ZpZENTMk81ZXUxa2NqdmFNbytsTzh5?=
 =?utf-8?B?L0ZpVTQyQmdCMjFZUEMwbmlpNVBHVWxEcmt3NThzZGhIL285ZThmQ20rZHg2?=
 =?utf-8?B?b0Y1THdXU1RlSjZpV3ZsUCtXbHg0cnFHSExmVHJteVp3cnlnUDVqQlNVMnZi?=
 =?utf-8?B?TU1kREhLVHBLOWtjWmw0M2hNNHltYzhxT1kwNEcvMjNGZndxM0p0WDdTckdV?=
 =?utf-8?B?VG44Z2gxYWJQalNLMXZEV0FNOXIrbklzZWxYOTNra29SaXlyYWZLbXlkR2JR?=
 =?utf-8?B?VThGZzAvdldXd2tsS1VwbHFPUUd3YllsRFlhUmdKelJaZCtDZW43OGJlYnIx?=
 =?utf-8?B?UGg2QWhPVlcwMWN5c1FWNnJoYVRHYmN1SlJkMGFwT2diVHE0K0RGOElQTjB0?=
 =?utf-8?B?UTg1czBNNnZTYURRTWFqTWhXd3RMSWF4YkVEdTM3MzRxR1VVSVlQa24vR0Zm?=
 =?utf-8?B?UHpmVXhESXBrSnRoVDNUbEVJN2N1SzhVUURybHdVeEN4SUFlYkF3c2Y1UHBi?=
 =?utf-8?B?SFR4R2orTldEQzRNM0dLR1dBMTk2YjZtbXBFKzM0dVY1S2MzaCtUZC8ycm5F?=
 =?utf-8?B?YXY3cFdBdkJvL3ZkdlZwYkhISVhPWkVDWC9EN1pBS2Y2TmFISHlKVWxMMVJ2?=
 =?utf-8?B?WnI4eGc4UmszK0N3RzVjTzdwNjB6NTVnNXdtY0NkQXZnbUlFK3Buc0Q0TkxX?=
 =?utf-8?B?YllJVzc3aVdqL3p0Y3UxbDZ6aklOKzc3OUxRTGNwSDJsWDAvMkdja2cyVEoz?=
 =?utf-8?B?Y2dQcnEvYi9XYmJnNEpKY3Nqc0l3K0VUdk9KajlXcTdQcWVkQmltYnNaMDVj?=
 =?utf-8?B?Vm10ZFZYTVM1MW1FL213a2IrdjFhLy9yYXVFcURBSWxYSHVqT2pNYktjWlhq?=
 =?utf-8?B?WmN3L05GUE41NHIySWNOOFBZUnB5RFAzZTkyV2lYVDBNOUNLN3BrWmJuUEEy?=
 =?utf-8?B?L29oWXA4cUtnT1RaUDJCWVM1RCtPcGduR0RJUmJtSVlwdnFjNzZvdXFsQ1Ju?=
 =?utf-8?B?TzgyTmI2OUhDV2dWQnlVb0EvV3RzRlRRUTRKYWpSR3UwUVJhRlpYdXltZnp5?=
 =?utf-8?B?UytvTzlNUlJVWmtFWm03clNBVUNzSmRON1hSQW85MXYybU1CU1JFbjFHNEJk?=
 =?utf-8?B?WHloV1RyOG13SHRmOGNTSXVyTVRIZStpTkFxM0h1Z0VPMTdmMG9tNXhEVklw?=
 =?utf-8?B?YldpMVkySFlCL1A3dkhNSUVnUkNzc1NLR1lFTHpOWW1ibDZZVnIxOXBCT1FS?=
 =?utf-8?B?SmNvS3NVMkd4aVhKQXVKVVpOWVV5OC9QUnJQaUVnWExGakkwNlA1TCsyb1Zk?=
 =?utf-8?Q?wxnNF0?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF7551E6552.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cjFScDlTLzh3WXh0WG5HYU9obmJNblMyKzE5R1FJSHhwWEtqV3BEem9LY25Z?=
 =?utf-8?B?aFBXMTdGdG9lRkFmOUcwNkVrc0M4M24wWHB5aURXckVrZlZNb2RtdmNTdDBS?=
 =?utf-8?B?Q25UcFdOSnZzbWFNTzNpVlBJNStsSU1wRCtVRE45Q1ljc1dqSVE4d29id3pl?=
 =?utf-8?B?MnlWRUJuaC81aW5nNExrSS81aUFzNE9GTmtTbFVHcWxWMlV1ODlTZytIeEl3?=
 =?utf-8?B?WGFodVV2M2pNT3djVzRJMTRhUFB6WGtRU3VCRVZxYUEwMk41UmIyT0dwdzNu?=
 =?utf-8?B?aGpMdENCOHF4KzE0dVdrcndyZGFhblZHMHI5Y2FkQVhQeG5wM3pBSXd5K3Vm?=
 =?utf-8?B?bitrTVVpTUdyYXYvamFaWnA5L2Y0TTRRUGpOc0NuRHlFZVZybG5oRnVvTWJ1?=
 =?utf-8?B?dlp2eWZocHdjZDI5REY4WFhqQ3locEdFNTRJSzViRmljbnMwUXlZaUtCdlJT?=
 =?utf-8?B?THNlMnh1MGh0ajNtOXV5bzFmZzM5OTFaNTE4YzBiNlhsQWhJeWpjdXFsdjBC?=
 =?utf-8?B?OGw1SVpubmt0azIwQjJIeTlucWI0R2premg0T2d5UmQ1Q0RSaTd5bTEyZCtm?=
 =?utf-8?B?ZGNvS3BwZkhOWmhzZWRUVkR5UEFoZDBrRExzcWRhT3N0dERxc3NIWEZzWTF6?=
 =?utf-8?B?eWFULzRiRTFIdDFxaFZTVlFLaUZ2TXBzMjJkbDl2aDdhZFZacTFPNFNadG1Q?=
 =?utf-8?B?eWdsR2pES1BHNUh3S09TWVFKck1BWE5USVZidXo5ZEhuYnFFUkZLNEdNeFQy?=
 =?utf-8?B?NGFpZk5rSmlBTEg5Q2FNdC9CbHlydWxQUkZ4QXdYR0d4UEZkSEVzdzRNSGd4?=
 =?utf-8?B?cmlSRm1BZDBBZTArSDg2N0RXT1JSc00xTnZsY3BLemVRWnF6am1vdnBSMmhM?=
 =?utf-8?B?Sy9qRVV6VS9yajF1aDNZRy93T3dYWlFselVUVWpYWmx2YTdjK2JsWTVnV08v?=
 =?utf-8?B?bzJVazdwcVdJMHZ4MjQ1bDhiV2k4OHN0RnV2VmpDTHJrRnJJT0p3QVB0VDZt?=
 =?utf-8?B?VThjSUFkTEU1Yy9idGs2VGs4Z00yZmtJcVJTQTI5Vk1oczlIRlhhZ1VrOEl2?=
 =?utf-8?B?YUN6NzM3dTVxejFHak1mNXdCYklRc3JUQ3Vmb29xUklPYTdzK1hJUkJNQmQr?=
 =?utf-8?B?L2J0dmFtZ0hzck1xK09KbFE4QUJNSEpheXJTNk1KdytZaHZ4dWhJdFBzNlNX?=
 =?utf-8?B?Wk9pN0s0Qlk4VmROR2dVOGNOMFBwUDQ3TkI3eFg3S2orZW9BSXRuTCtjSk94?=
 =?utf-8?B?eDRtZCt2VGhTeFhsWVhORXgvc2ducFhIZnZTd2VZQ3pFc3F5K0UveTNZbWdH?=
 =?utf-8?B?WHVLZzFIY1hhRHZkVVEvNWtKK0NLM01zN3lhbjhHYzJoWEdVMHJBbkpLYkQy?=
 =?utf-8?B?QWNtMmRFd04xbU0wR1R4SlVSRFIySUVWZHVXbHp1ZkZCVFplVmdqbFVXTXRq?=
 =?utf-8?B?ZTJQUEl0TGV1ZkVYYktndkpyUndxVWgwcmt6N2N5aXlkTkdScndCWnBTSW1v?=
 =?utf-8?B?SjJWUUtyWVdzd29qVTZuMVlFVDFNLzVLamk2WTlHMmRMejV5Qjh2QlRvMm5h?=
 =?utf-8?B?di9sTXdkSHlqazFpYWdVdFlYSGo1K3o1ODNBa0N2MUdnZUNDOFhEMURwN1o4?=
 =?utf-8?B?NmZIQWdQUG9VVXFtaWRJVi80R2VmSlloSzI4blpvdW53YlZaWVBDcTM5YkN4?=
 =?utf-8?B?UWRVS1BnYTVGSXVKRlZMN05xVndTZ0dqcW1wVUg4M0FpRmRzd2MwSnFCT2pH?=
 =?utf-8?B?d1UrMHBzZUVsa2xjTDYvNS8xdDlxTVFEb1Q5VXc1VnZRalYyWWRraVpXT3pQ?=
 =?utf-8?B?TTgvRlJITFgra0VJT0RUdWtjem9NajNGSGVocG92ZlJMSFdoTk1lRmlVTStn?=
 =?utf-8?B?UldOMDA2U0Fma2xQUU1LVVM5YWFMOG0xbU9YbXRoOXladnZUTzdicUc1eU9s?=
 =?utf-8?B?RDd0RldyS0VaMW0vVnlNMlo5Vmo5OEltS3NMRjR5cVBFcUtQa01wUGFzSWR5?=
 =?utf-8?B?Z0hUcVFaQnl5d3liKzRGamtDcXEwSk14TWFpejYrdjNGWUlTWW40WSs2UnRn?=
 =?utf-8?B?WFkrYUhVbGpJbmlnd05oTnIxNWhoWENDR3lhYjBRQ1g0L3R0cjlqWXV0QnMz?=
 =?utf-8?B?VXQ3a0MvbU9tVjE4QnlReWpIMForZkNsRk9PU0pZVUJLc1dNcVNuQUY1bEdB?=
 =?utf-8?B?ODBHOHJSRmI4NDNua05GdVA0dTFYUTEzK1pRSnhUYTRldjBLSzkxQzkvZDNB?=
 =?utf-8?B?RmF2VDMzQitpR1pGL3YzY0NjRm5qQkZjYkRPMEpyRy9BcUQ1OTVCa0dVeFd4?=
 =?utf-8?B?V2JLRzBWRXVJbjdYUG1LbkZZL2tLeXpXZkFvSlBLQlJtSkRUaXVhSHNGR2RE?=
 =?utf-8?Q?mIv6swOCHSqQotjY=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF7551E6552.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ab1efcb-f56c-4567-3f9e-08de52762419
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2026 07:34:09.7996 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jrJTEsbALckEVCDPgJKCCw9y25IyKfw0rwvAoPF8Q3Y51W/6pygTPS2iAPNpipew/86xUJGJY7ONvHambaScB1SWCGbMEsglbWAbbuONHTI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4654
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768289659; x=1799825659;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7+Uts85vEp3jgizTUQqcF2AmVUpJR90ny0fWNQJYNzs=;
 b=kzDuDcUw8hyqLXPIqKveq3HC2b58JlccssRTFCwiZQs7v4jtu80PciaK
 QgZ+KMOBpOvY+yuLz4rUPjTAIU8F+AAGFLiRQFYPsKKFReCYWDrVOW3A4
 kWxAuDrVO2a7XKZFReMmtPvabOd0mqEbZqaHmes7+uj280dnTwJps0pAV
 NzrlSU6Y9bF2cGl476RIWUJTyQUS6htE8uy5geULYYVAfFYqEF54dJGRj
 ZHEJTts/JJFo6+OYff9zQ9bLNhEn+GgJJcCqx8t1ORkpwj7oDQZSZUpxm
 OXSSEA0mMYQIliT3p+lH2dqHbGRlFalfU7q3hg+sYsqbeOv5vbwgkvjN/
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kzDuDcUw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 1/2] idpf: skip deallocating bufq_sets
 from rx_qgrp if it is NULL.
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
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTGkg
TGkgdmlhIEludGVsLXdpcmVkLWxhbg0KPiBTZW50OiBUdWVzZGF5LCBKYW51YXJ5IDEzLCAyMDI2
IDEyOjEwIEFNDQo+IFRvOiBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRl
bC5jb20+OyBLaXRzemVsLA0KPiBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwu
Y29tPjsgRGF2aWQgUy4gTWlsbGVyDQo+IDxkYXZlbUBkYXZlbWxvZnQubmV0PjsgSmFrdWIgS2lj
aW5za2kgPGt1YmFAa2VybmVsLm9yZz47IEVyaWMgRHVtYXpldA0KPiA8ZWR1bWF6ZXRAZ29vZ2xl
LmNvbT47IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+IENjOiBuZXRkZXZAdmdl
ci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBEYXZpZA0KPiBEZWNv
dGlnbnkgPGRlY290QGdvb2dsZS5jb20+OyBTaW5naGFpLCBBbmphbGkNCj4gPGFuamFsaS5zaW5n
aGFpQGludGVsLmNvbT47IFNhbXVkcmFsYSwgU3JpZGhhcg0KPiA8c3JpZGhhci5zYW11ZHJhbGFA
aW50ZWwuY29tPjsgQnJpYW4gVmF6cXVleiA8YnJpYW52dkBnb29nbGUuY29tPjsgTGkNCj4gTGkg
PGJvb2xsaUBnb29nbGUuY29tPjsgVGFudGlsb3YsIEVtaWwgUyA8ZW1pbC5zLnRhbnRpbG92QGlu
dGVsLmNvbT4NCj4gU3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIDEvMl0gaWRwZjog
c2tpcCBkZWFsbG9jYXRpbmcNCj4gYnVmcV9zZXRzIGZyb20gcnhfcWdycCBpZiBpdCBpcyBOVUxM
Lg0KPiANCj4gSW4gaWRwZl9yeHFfZ3JvdXBfYWxsb2MoKSwgaWYgcnhfcWdycC0+c3BsaXRxLmJ1
ZnFfc2V0cyBmYWlsZWQgdG8gZ2V0DQo+IGFsbG9jYXRlZDoNCj4gDQo+IAlyeF9xZ3JwLT5zcGxp
dHEuYnVmcV9zZXRzID0ga2NhbGxvYyh2cG9ydC0+bnVtX2J1ZnFzX3Blcl9xZ3JwLA0KPiAJCQkJ
CSAgICBzaXplb2Yoc3RydWN0IGlkcGZfYnVmcV9zZXQpLA0KPiAJCQkJCSAgICBHRlBfS0VSTkVM
KTsNCj4gCWlmICghcnhfcWdycC0+c3BsaXRxLmJ1ZnFfc2V0cykgew0KPiAJCWVyciA9IC1FTk9N
RU07DQo+IAkJZ290byBlcnJfYWxsb2M7DQo+IAl9DQo+IA0KPiBpZHBmX3J4cV9ncm91cF9yZWwo
KSB3b3VsZCBhdHRlbXB0IHRvIGRlYWxsb2NhdGUgaXQgaW4NCj4gaWRwZl9yeHFfc3dfcXVldWVf
cmVsKCksIGNhdXNpbmcgYSBrZXJuZWwgcGFuaWM6DQo+IA0KPiBgYGANCj4gWyAgICA3Ljk2NzI0
Ml0gZWFybHktbmV0d29yay1zc2hkLW4tcmV4ZFszMTQ4XToga25ldGJhc2U6IEluZm86IFsNCj4g
OC4xMjc4MDRdIEJVRzoga2VybmVsIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZSwgYWRkcmVzczoN
Cj4gMDAwMDAwMDAwMDAwMDBjMA0KPiAuLi4NCj4gWyAgICA4LjEyOTc3OV0gUklQOiAwMDEwOmlk
cGZfcnhxX2dyb3VwX3JlbCsweDEwMS8weDE3MA0KPiAuLi4NCj4gWyAgICA4LjEzMzg1NF0gQ2Fs
bCBUcmFjZToNCj4gWyAgICA4LjEzMzk4MF0gIDxUQVNLPg0KPiBbICAgIDguMTM0MDkyXSAgaWRw
Zl92cG9ydF9xdWV1ZXNfYWxsb2MrMHgyODYvMHg1MDANCj4gWyAgICA4LjEzNDMxM10gIGlkcGZf
dnBvcnRfb3BlbisweDRkLzB4M2YwDQo+IFsgICAgOC4xMzQ0OThdICBpZHBmX29wZW4rMHg3MS8w
eGIwDQo+IFsgICAgOC4xMzQ2NjhdICBfX2Rldl9vcGVuKzB4MTQyLzB4MjYwDQo+IFsgICAgOC4x
MzQ4NDBdICBuZXRpZl9vcGVuKzB4MmYvMHhlMA0KPiBbICAgIDguMTM1MDA0XSAgZGV2X29wZW4r
MHgzZC8weDcwDQo+IFsgICAgOC4xMzUxNjZdICBib25kX2Vuc2xhdmUrMHg1ZWQvMHhmNTANCj4g
WyAgICA4LjEzNTM0NV0gID8gbmxhX3B1dF9pZmFsaWFzKzB4M2QvMHg5MA0KPiBbICAgIDguMTM1
NTMzXSAgPyBrdmZyZWVfY2FsbF9yY3UrMHhiNS8weDNiMA0KPiBbICAgIDguMTM1NzI1XSAgPyBr
dmZyZWVfY2FsbF9yY3UrMHhiNS8weDNiMA0KPiBbICAgIDguMTM1OTE2XSAgZG9fc2V0X21hc3Rl
cisweDExNC8weDE2MA0KPiBbICAgIDguMTM2MDk4XSAgZG9fc2V0bGluaysweDQxMi8weGZiMA0K
PiBbICAgIDguMTM2MjY5XSAgPyBzZWN1cml0eV9zb2NrX3Jjdl9za2IrMHgyYS8weDUwDQo+IFsg
ICAgOC4xMzY1MDldICA/IHNrX2ZpbHRlcl90cmltX2NhcCsweDdjLzB4MzIwDQo+IFsgICAgOC4x
MzY3MTRdICA/IHNrYl9xdWV1ZV90YWlsKzB4MjAvMHg1MA0KPiBbICAgIDguMTM2ODk5XSAgPyBf
X25sYV92YWxpZGF0ZV9wYXJzZSsweDkyLzB4ZTUwDQo+IFsgICAgOC4xMzcxMTJdICA/IHNlY3Vy
aXR5X2NhcGFibGUrMHgzNS8weDYwDQo+IFsgICAgOC4xMzczMDRdICBydG5sX25ld2xpbmsrMHg5
NWMvMHhhMDANCj4gWyAgICA4LjEzNzQ4M10gID8gX19ydG5sX3VubG9jaysweDM3LzB4NzANCj4g
WyAgICA4LjEzNzY2NF0gID8gbmV0ZGV2X3J1bl90b2RvKzB4NjMvMHg1MzANCj4gWyAgICA4LjEz
Nzg1NV0gID8gYWxsb2NhdGVfc2xhYisweDI4MC8weDg3MA0KPiBbICAgIDguMTM4MDQ0XSAgPyBz
ZWN1cml0eV9jYXBhYmxlKzB4MzUvMHg2MA0KPiBbICAgIDguMTM4MjM1XSAgcnRuZXRsaW5rX3Jj
dl9tc2crMHgyZTYvMHgzNDANCj4gWyAgICA4LjEzODQzMV0gID8gX19wZnhfcnRuZXRsaW5rX3Jj
dl9tc2crMHgxMC8weDEwDQo+IFsgICAgOC4xMzg2NTBdICBuZXRsaW5rX3Jjdl9za2IrMHgxNmEv
MHgxYTANCj4gWyAgICA4LjEzODg0MF0gIG5ldGxpbmtfdW5pY2FzdCsweDIwYS8weDMyMA0KPiBb
ICAgIDguMTM5MDI4XSAgbmV0bGlua19zZW5kbXNnKzB4MzA0LzB4M2IwDQo+IFsgICAgOC4xMzky
MTddICBfX3NvY2tfc2VuZG1zZysweDg5LzB4YjANCj4gWyAgICA4LjEzOTM5OV0gIF9fX19zeXNf
c2VuZG1zZysweDE2Ny8weDFjMA0KPiBbICAgIDguMTM5NTg4XSAgPyBfX19fc3lzX3JlY3Ztc2cr
MHhlZC8weDE1MA0KPiBbICAgIDguMTM5NzgwXSAgX19fc3lzX3NlbmRtc2crMHhkZC8weDEyMA0K
PiBbICAgIDguMTM5OTYwXSAgPyBfX19zeXNfcmVjdm1zZysweDEyNC8weDFlMA0KPiBbICAgIDgu
MTQwMTUyXSAgPyByY3V0cmVlX2VucXVldWUrMHgxZi8weGIwDQo+IFsgICAgOC4xNDAzNDFdICA/
IHJjdXRyZWVfZW5xdWV1ZSsweDFmLzB4YjANCj4gWyAgICA4LjE0MDUyOF0gID8gY2FsbF9yY3Ur
MHhkZS8weDJhMA0KPiBbICAgIDguMTQwNjk1XSAgPyBldmljdCsweDI4Ni8weDJkMA0KPiBbICAg
IDguMTQwODU2XSAgPyByY3V0cmVlX2VucXVldWUrMHgxZi8weGIwDQo+IFsgICAgOC4xNDEwNDNd
ICA/IGttZW1fY2FjaGVfZnJlZSsweDJjLzB4MzUwDQo+IFsgICAgOC4xNDEyMzZdICBfX3g2NF9z
eXNfc2VuZG1zZysweDcyLzB4YzANCj4gWyAgICA4LjE0MTQyNF0gIGRvX3N5c2NhbGxfNjQrMHg2
Zi8weDg5MA0KPiBbICAgIDguMTQxNjAzXSAgZW50cnlfU1lTQ0FMTF82NF9hZnRlcl9od2ZyYW1l
KzB4NzYvMHg3ZQ0KPiBbICAgIDguMTQxODQxXSBSSVA6IDAwMzM6MHg3ZjI3OTlkMjFiZDANCj4g
Li4uDQo+IFsgICAgOC4xNDk5MDVdIEtlcm5lbCBwYW5pYyAtIG5vdCBzeW5jaW5nOiBGYXRhbCBl
eGNlcHRpb24NCj4gWyAgICA4LjE3NTk0MF0gS2VybmVsIE9mZnNldDogMHhmODAwMDAwIGZyb20g
MHhmZmZmZmZmZjgxMDAwMDAwDQo+IChyZWxvY2F0aW9uIHJhbmdlOiAweGZmZmZmZmZmODAwMDAw
MDAtMHhmZmZmZmZmZmJmZmZmZmZmKQ0KPiBbICAgIDguMTc2NDI1XSBSZWJvb3RpbmcgaW4gMTAg
c2Vjb25kcy4uDQo+IGBgYA0KPiANCj4gVGVzdGVkOiBXaXRoIHRoaXMgcGF0Y2gsIHRoZSBrZXJu
ZWwgcGFuaWMgbm8gbG9uZ2VyIGFwcGVhcnMuDQo+IEZpeGVzOiA5NWFmNDY3ZDlhNGUgKCJpZHBm
OiBjb25maWd1cmUgcmVzb3VyY2VzIGZvciBSWCBxdWV1ZXMiKQ0KPiANCj4gU2lnbmVkLW9mZi1i
eTogTGkgTGkgPGJvb2xsaUBnb29nbGUuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2lkcGYvaWRwZl90eHJ4LmMgfCAyICsrDQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWRwZi9pZHBmX3R4cnguYw0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYv
aWRwZl90eHJ4LmMNCj4gaW5kZXggZTdiMTMxZGJhMjAwYy4uYjRkYWI0YThlZTExYiAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX3R4cnguYw0KPiAr
KysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfdHhyeC5jDQo+IEBAIC0x
MzM3LDYgKzEzMzcsOCBAQCBzdGF0aWMgdm9pZCBpZHBmX3R4cV9ncm91cF9yZWwoc3RydWN0IGlk
cGZfdnBvcnQNCj4gKnZwb3J0KSAgc3RhdGljIHZvaWQgaWRwZl9yeHFfc3dfcXVldWVfcmVsKHN0
cnVjdCBpZHBmX3J4cV9ncm91cA0KPiAqcnhfcWdycCkgIHsNCj4gIAlpbnQgaSwgajsNCj4gKwlp
ZiAoIXJ4X3FncnAtPnNwbGl0cS5idWZxX3NldHMpDQo+ICsJCXJldHVybjsNCj4gDQo+ICAJZm9y
IChpID0gMDsgaSA8IHJ4X3FncnAtPnZwb3J0LT5udW1fYnVmcXNfcGVyX3FncnA7IGkrKykgew0K
PiAgCQlzdHJ1Y3QgaWRwZl9idWZxX3NldCAqYnVmcV9zZXQgPSAmcnhfcWdycC0NCj4gPnNwbGl0
cS5idWZxX3NldHNbaV07DQo+IC0tDQo+IDIuNTIuMC40NTcuZzZiNTQ5MWRlNDMtZ29vZw0KDQpS
ZXZpZXdlZC1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRl
bC5jb20+DQo=
