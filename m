Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 58ED3C838B7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 07:49:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 05F826081D;
	Tue, 25 Nov 2025 06:49:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YJYubymEu2vo; Tue, 25 Nov 2025 06:49:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 708D160D9D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764053365;
	bh=BTwxyE0U0O9A1yAO8xvnJ2GE9m0d364TcvlKC10yBXU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MhbaXASWsusQaLXxE9XEalh/erMsUaCdkQzSuP/nLZoOCQmD4UXKXkaC29twokmrh
	 bBmsGE33+fbI1v29xBXl6Ji8Al5C7gxIDr5R0ViRWElJsyLM+XMbOjyYAewEPn3RW1
	 ZeTajOQ3q1RIvCeaZ6cAWg0TzIeAaYu6BCzm4TaRdScn2GSmCWOb+A4BqDp4nfnyVC
	 ILeh0DR3RNZdiBKYLNMU/ZdCY5y8qctqXK0Sjg5OF2HjSd1Gk6nZPAg7nPg8UGXjr0
	 sI4YDSV4vkLWhOkgr0tSXco3m/jFQqbRDPxuqGNm2xnftZVCz0ccJ4/eU5t2Ruepv4
	 CD6sz6xvVKm7w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 708D160D9D;
	Tue, 25 Nov 2025 06:49:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 221C5359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 06:49:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0885E40462
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 06:49:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bon_mPkVOsyl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 06:49:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 50932400F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 50932400F6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 50932400F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 06:49:23 +0000 (UTC)
X-CSE-ConnectionGUID: s6555FIpTt6iN/8TTNWgnQ==
X-CSE-MsgGUID: cP0IyqaBRSO6OGMKBnhgGQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="65248411"
X-IronPort-AV: E=Sophos;i="6.20,224,1758610800"; d="scan'208";a="65248411"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 22:49:23 -0800
X-CSE-ConnectionGUID: 2R5Rtn9YRDSwu5bmnvx7UA==
X-CSE-MsgGUID: 7YoI06/WT2yZLN5srzZgbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,224,1758610800"; d="scan'208";a="191813990"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 22:49:22 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 24 Nov 2025 22:49:22 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 24 Nov 2025 22:49:22 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.6) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 24 Nov 2025 22:49:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BocadXTXswvHgcNwTqEtZX4mvifmqoHwaZObbt/HFkDlGGnPcPgUvNj42VRJN+jfzy4Mi0uV8NCa8FRZQQ3Z5I4ewktmQuoCJ0QyhjJipuNeSgbrgJmsrIJXhjEYXlzhpqosBmok5+jw6rvhYIkBTKZ/Z9rtYdIdtuswRPitRxWCjmqRHM+7ojQb/8h/WFt3msK8z4woT82NpRqnJZbas5Fx+imjXUBISavWPcl9TjAe2jKd1nlrzffyUDK7/OJBnwPOWcjfByHhYC1CneQ12c28M/86GCxBuHPAi5wywWg+O265G/RO2XvS0UOba9b69AbD7Umm8S9oyhY7OjNLiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BTwxyE0U0O9A1yAO8xvnJ2GE9m0d364TcvlKC10yBXU=;
 b=u/YTyljU7Dmrc2MQH40/Gyxp/eye/1XgCdpGOxHt0MB1y8atTznR471vi3Y2U5LE1gi3KR3YI2ZrvcVl/KSwMj+FhyjsuJ7T0UR9a2ewSQRc1cFnho4pcjDr1pFFFYG+jGCUNu4POW5u5CekTG5/sdTqp0/3/hyGIBb2OgAabsU9Xc5SMXTv2sleQpiXq8B5aVEmNtSMh0vxz+m4squMQDoOJvCjEcPXjb5reh1P1BKwMOxDtjIiz5wSYlPz+M668pE9mGJArEzKmE+o+sodZVQPx5Yu//IxGIV1xJERMIWZPCFJ1r4oJkuc06v5EstwL7jmYtGCjsSCyoIOd/U4Pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA3PR11MB8073.namprd11.prod.outlook.com (2603:10b6:806:301::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Tue, 25 Nov
 2025 06:49:20 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 06:49:20 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Breno Leitao <leitao@debian.org>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>, 
 "michal.kubiak@intel.com" <michal.kubiak@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "kernel-team@meta.com" <kernel-team@meta.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 5/8] igb: extract GRXRINGS
 from .get_rxnfc
Thread-Index: AQHcXW7yaw50RnFs50umxGMdufOnRrUC9FZA
Date: Tue, 25 Nov 2025 06:49:20 +0000
Message-ID: <IA3PR11MB8986F114969A35228751DFFFE5D1A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251124-gxring_intel-v1-0-89be18d2a744@debian.org>
 <20251124-gxring_intel-v1-5-89be18d2a744@debian.org>
In-Reply-To: <20251124-gxring_intel-v1-5-89be18d2a744@debian.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA3PR11MB8073:EE_
x-ms-office365-filtering-correlation-id: 05f2de87-1e17-4d03-d563-08de2beec29b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|38070700021|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?NWJtL2FtK2g3alBMVXhiaHRUOG5qS1RKT2lhQVV6RnBsay9aYXhWRk85Unhi?=
 =?utf-8?B?R3MrSWtxbm5yYzFBazgwb216Qzl1SE9BV3FQemJwT3lTSXIraHNnOTdaNmFu?=
 =?utf-8?B?UTRadTdCeE9vZFVBQnNrOXQ1K0JzUDNkODlnUTJ2SkJtK2grK3UzN0NaUDBn?=
 =?utf-8?B?TVVNTnpHRTN1NW5SZ1NPd3JhbHZ4aVN6UXhOaVU2ZDBvWW9WVXBSTmlWNDFJ?=
 =?utf-8?B?b2NDWUtUTk9jamZHc3pNdG8rbWQxVlB3QnJlMFdSay9CK256Y1ZEeURpWEJX?=
 =?utf-8?B?RGFxVVVuek9WanBiZG1BajBpUkJiY2dnUUlEK2RjUVFaTEJIZVdzY3l6TWtI?=
 =?utf-8?B?ejFnUVdWSVkxa0xvYkJJMlBOazVkS2ZHZ0lPNzBLZUNqcUQxR3c0WDhFVU9F?=
 =?utf-8?B?UTJZVlFWMmQydTYzSkM3Y08yTlo1WmFCMG55TlFPaVZzVXdRQUNZYnpRTGtD?=
 =?utf-8?B?bGw2dDRKRVNKcm5ZOVUwcldNd3piUUY4Vk5NN2Z2VVUrdXZTWTlUTjhXc0du?=
 =?utf-8?B?UGcvM2tydnV4SXd1eitocDdDQmI0VTF6UXFLMW1LMGV5Z2ViaXI4V0VOZ0Jx?=
 =?utf-8?B?ZlRNdjZqNHRqNVVjNGdmMVRBUFlJajFYZkczdGowajZuWktnSW9ad0w4REpM?=
 =?utf-8?B?SHVJWTRKSHF0TjhvdThDU1M5bEZjYXNRV0t4cWJNa0FGTlhpc25WbDAwOTJL?=
 =?utf-8?B?VWhGZmRTMlgwMk9SeUdSeXJIUkZzQXFhVkt1d3JjTFUzZ0VxMFZWeS9EZjVE?=
 =?utf-8?B?SXd6YWZXUEkveG04SmM2eVpWQ2IvcGRxa3JRT0Nsd3EvK2l5a3JENFBHNWtE?=
 =?utf-8?B?dFF1LzBMeTAyYXR2K3FXV05qT1lFbVlPYWMrUXFqKzlrL0pLNEdrR2VxZXpY?=
 =?utf-8?B?L2RFV2hDOVIxR0dMd05mdFloNGVlSmRTay9EWWhEdURoSTJURFJNSU9ybEpC?=
 =?utf-8?B?TVNPOFUxMXBtcExDRjVDdEh6WGZseEw5NnVjRmpIYURsNjlIRlNUeXpNemRD?=
 =?utf-8?B?Z2hBQVVwUXRqZ1RVS1NJVGJkWUQ4YVV0WWhLK2w1OENyemJaTGt6c0NvY3cv?=
 =?utf-8?B?WDJpbUZpVHhQSkpQU3NOZzZXb2VCKzZGblZickd2QUU1YWtZTjNrZTdtektG?=
 =?utf-8?B?MnZqcTEyY1RhaGpWdVFqVVlKd3lseHVVV2RWbm02eXozdzJQbWFGbmdaSVZO?=
 =?utf-8?B?dGNtdWwxV21UcUI4VC9rWWU3T0I0QUduOEJ4bFVXQm1nVnBjeDVzUWN3ZUgr?=
 =?utf-8?B?a3BTdDF4R2psQWhkeStmYlhnTkFqclNJbThpSkFMekhUSWs1bnRDZnVia2VP?=
 =?utf-8?B?T0g3Sk9EZVBIM3ZMTTZVT2hxYUNROEM2WWJmYXJ1eVdTU1FHWXQrTE9LR1hm?=
 =?utf-8?B?QUN4Y3RWTzR4ak5OSzJBdTVkVVE1dGlmWUNzV1BFdllhajJtTVNvcnpyQ0k5?=
 =?utf-8?B?dHBWa3ZzeTRkWk1VaXhRaDFKdHFCQ25SMFZPR1FQeDVZQkJuNEhnQ0lLUG92?=
 =?utf-8?B?UGZuVWo1dU9ubE1lK29tNDJLOHA5STNRTmJiN0d6YkFRcXp5ZTRLRnVCQUJa?=
 =?utf-8?B?OG0wV3lyVVBGaTN1WHlVLzF1Qyt1c3lIZ0hjUG9BK3BtTDlmcDFKdWg5OVZn?=
 =?utf-8?B?eDFnYjdYVTZiMVJROW81dm5rRFRGK2hxbTFyeFZOVlVwRTJtWHdEQTliNzBZ?=
 =?utf-8?B?N3g5QjNHS3NBektOWGNZWDRyaHIrR3ZUOHA3QVl6TnlJTEZwQzh6QkRUVGZM?=
 =?utf-8?B?L21mYjNybHJRMHkyQUxaOGlZS0kzRTBGMTJFYXRlQ0NvSDFsUlZNL09DWmtJ?=
 =?utf-8?B?blBDVDhGVjNRR0xzMjB6cG1MNERvZHNUZ0xBdkdxNFNXMTJaaEEzOW5ndlhP?=
 =?utf-8?B?NGlaUjZDYmZVc2VOdjAvVlpmdnduRU9uOWUyVkdMdEM4R0lpS1RmSTU4TnZw?=
 =?utf-8?B?U1ZoUmUydzgrTjZnVjlnS1d5SlBXTWorZm92MW1xa1JzeHh3anVFQmlqWDhr?=
 =?utf-8?B?dkg4d0RuTDMySHhUN0FIU0J5VE9MTDU3RnBkSVhFWkhFNVpVWmlrM1VlaFV2?=
 =?utf-8?B?Uy9NZDM1VzFZRmdhZTJYRUZ2MUdXVVdhTUlLdz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YkRXRjJvbzdMNVJFT2V6andsck9Na1pGMHB4V0ozL3lhczRPRldHNndZZlNw?=
 =?utf-8?B?ZVJ5QVpEVXFFbHFnaWhJNjJYeFNRcTg2czAzbGdETEgxUXFOUWhzYnpXcng2?=
 =?utf-8?B?QjZaRElXalhib3FZMVRxSDBRNnN0cGdhRzloY3pDTkxOQ2ZUclJCN1JvQmpr?=
 =?utf-8?B?R1BQZU1sWWJHcTA1Rjk1blU1RDVtRGZOZ1BvODB0ay9jWkU4VGNKZnpBM1d4?=
 =?utf-8?B?bTFoNnpEZzREWmNtQUNweEk2N3RIVlRQQ0JzdGNNWFZSVEJLSjJyTHFOdnlT?=
 =?utf-8?B?YXVGaDR5QWEzUTBES2JVSDhGWjdmZXZ2cy90NHAwRlEwL0tYbVI1YTMrUkFL?=
 =?utf-8?B?cWdlcXg0R1l0bFVYd3V5bE8yZFJQeUV2MDlOVW1QRU5kdk9vQkI1bkJWcmk3?=
 =?utf-8?B?L0p1dG9kTlNHYVNGczdZMWRId25PSldyRExOYlgwNzdQbGx1eUM0Q2xGR2tr?=
 =?utf-8?B?ZXJJc2w4Y2xBMWs3VHRiLzlqakxUWTVrd3NiVnZNM3dxczNHRXZWR0tzMXlD?=
 =?utf-8?B?K3VjZTh0a2Z4WUZaczY3QmxGRDIvd2o3cnk2SmRXcC90WHZhK3doekNjNm1D?=
 =?utf-8?B?b2VCNzIrNTh2dmVrWjlNdWt1UVM5ZHhmL08wN0tkU3QyUmp6V05jVlorNFln?=
 =?utf-8?B?a2hPaGNXYndHQUs1WDRIVWhPQVRTODJ1WUhUTTVnckE0dlB4aStMT2ZYZTVw?=
 =?utf-8?B?MUlkZ3lIcGdlNC81RDROV0ppVTU1cnAwdVRNY1RIaG5qOGFscFh3YmxtL2NE?=
 =?utf-8?B?TE5oT3JwNmdRVVZuUTVwNXhxZ1k4OUgyOU50MUhpY2NXeE9ZeThzNE1PNjl6?=
 =?utf-8?B?dkhQRlhmay9YNURBMVBmSVpabDhzK2hGclhtSStQT0tqYWFDOU9nblVKSi8v?=
 =?utf-8?B?THlJZmN5TGFXT2RrK1pMOVdQNi9qUGtBRnlGWW5ockF4MjkraDc2SjNoWnRy?=
 =?utf-8?B?c1QvOXpiQ0EvbFdMSitCWUs1cVc0UE9JaVh3d0hXd1JZSzd4b3BoS1hsbEF2?=
 =?utf-8?B?WXJxT3ZyL1RHcHBTVHZNQ2IrRlZ0MkRXVEg5eUh2S2pPS1d3aHlRVHRhSERM?=
 =?utf-8?B?WW8zdHFJdjJabmhlYSs3MEFJYW5ZNFlFRGhiOHJxckMrS1JNckFkTWxVR3dH?=
 =?utf-8?B?aXdHbis5bG1kdW9ocExGR0dBUURoMUNnT3Y0RFhtWVd2ZnNOVTBMY1ZueC9Z?=
 =?utf-8?B?V3RWWkZJSlIvNFpmUXpCTHNTOEF0azk2cUZuWVBSL25FZWVoa0ZIUDRLUmlB?=
 =?utf-8?B?Z2Zyb3dlSHFnZHppUlBsT0VDdHdLZkhxTzFTK3dVejdVWXo3dDBveUoxMGtB?=
 =?utf-8?B?blZaSzg0ZnFmeDhtVGt2T0hqRTVjLzc3YzZiT1RVRGRzK2trZGQ5NExkZUov?=
 =?utf-8?B?cXU2elBXblBHRk5Mbkt1RUV1SjhDMEdvUE9jcUk2ekZJeFdjY2xzWG93NnNr?=
 =?utf-8?B?Y3FHTUxQeG9vSUN2ckZMbFhmOHZ3enV3L0cyeXRESVV3ZDFDUEgwVnlhc0VD?=
 =?utf-8?B?MWNtZ0l1b1VkeWR3ZERUUGNNSVA1bzVlbFZVTFhGa0NqbHkrUXFzWldSVzcw?=
 =?utf-8?B?UUZ4aWE1bWpMbFFnNlVpWTNaMlMyUWRXS3h2c1UyR2U0Y3h1aFNLR1FtdjI3?=
 =?utf-8?B?RndWRUdFRGV6NnJ6L01PMGswaURCZ0dHeGxyVElTaDFscUlpUTl0TnRCOGpO?=
 =?utf-8?B?SnozTm54NllWeklYTHhrcjdKNGZvOXJidWYvVHFNb0lLOFNOVXFJZ1ZaUFZr?=
 =?utf-8?B?Q0dFTU05UWV3TTNLMXRJRDBRUS8zOStDSUVTVFNWQys1dkVseW5DR1R5Ymt4?=
 =?utf-8?B?UFM2WCt4TC9Wb1prdHlrYm4xTUtKQmZHaGZDcWJ6Y0h1ajRMREtiYkhZajA1?=
 =?utf-8?B?OWNqQWxsNkxGS1V3OFNRbGVScEgvMDFJdjB0VENLd0pqZEpXSC9TQjZpR210?=
 =?utf-8?B?ekFlWktNb0JPclgyUHFxYkRmTHUzYWRObjcxcllNRTVlN1psdC9qVmZWL2VR?=
 =?utf-8?B?UGlabk1UTXV6VnV4d0ZERVluRXpOZVJHeWNEZU14b0VkcWp6SWJZSWJzZHgw?=
 =?utf-8?B?RHpBNXR0QVFTbm1UN25MOFBtL2FVQmdKaXc2Zmo1ZWxyL3U5c2VZMzZQMjBP?=
 =?utf-8?B?aFdjdmZwNzhCR2lvbWRvVjd1N0MzUkVUTnllN1Q0em1hdVkzT0RSUzEwY0dJ?=
 =?utf-8?B?K1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05f2de87-1e17-4d03-d563-08de2beec29b
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2025 06:49:20.0214 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7kKgytVT51/uMa+ox7e0Why7msKGXsr8H0TpyYDcsr7FIRriDZvp+xXa92DxMxdTnMlLqt7SNlNWePX/xtE3H3kLJwJllDC92LONKcGuhZ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8073
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764053363; x=1795589363;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BTwxyE0U0O9A1yAO8xvnJ2GE9m0d364TcvlKC10yBXU=;
 b=kUbH+0/YsrFyrMnKC+z4POD6ujFDO7cJnSXIxNOltJjgjpwsvxQw8KYw
 4VmH24qd9/ZJEkxqaqzei8DdZpCUiJGi0wmlxLhzHOK5fijahIEd6M1MB
 uOmp7BJApNZmRomg3ObngU5uFJoHtD2zmEQaLU5IjmbBk5Gdkgg/gbIsS
 t+bC1pECR6L70aCd8n9W1HiYt2zykvPTUHgzmnaYHmVt8/v2oQ6EAvqDu
 u+RG+GddyzCqZhbPVyqezTRBK2ez01OpFcfNqeWP+UrVgiOgpIcXlHwV4
 1WNtkyvhEuKQml/RMZRmCDgXSt5Jao0S1gVhohcBA2MagI5BaJ3qKMDdC
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kUbH+0/Y
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 5/8] igb: extract GRXRINGS
 from .get_rxnfc
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
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgQnJl
bm8gTGVpdGFvDQo+IFNlbnQ6IE1vbmRheSwgTm92ZW1iZXIgMjQsIDIwMjUgNzoxOSBQTQ0KPiBU
bzogTG9iYWtpbiwgQWxla3NhbmRlciA8YWxla3NhbmRlci5sb2Jha2luQGludGVsLmNvbT47IE5n
dXllbiwNCj4gQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IEtpdHN6ZWws
IFByemVteXNsYXcNCj4gPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBBbmRyZXcgTHVu
biA8YW5kcmV3K25ldGRldkBsdW5uLmNoPjsNCj4gRGF2aWQgUy4gTWlsbGVyIDxkYXZlbUBkYXZl
bWxvZnQubmV0PjsgRXJpYyBEdW1hemV0DQo+IDxlZHVtYXpldEBnb29nbGUuY29tPjsgSmFrdWIg
S2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IFBhb2xvIEFiZW5pDQo+IDxwYWJlbmlAcmVkaGF0
LmNvbT4NCj4gQ2M6IG1pY2hhbC5zd2lhdGtvd3NraUBsaW51eC5pbnRlbC5jb207IG1pY2hhbC5r
dWJpYWtAaW50ZWwuY29tOw0KPiBGaWphbGtvd3NraSwgTWFjaWVqIDxtYWNpZWouZmlqYWxrb3dz
a2lAaW50ZWwuY29tPjsgaW50ZWwtd2lyZWQtDQo+IGxhbkBsaXN0cy5vc3Vvc2wub3JnOyBuZXRk
ZXZAdmdlci5rZXJuZWwub3JnOyBsaW51eC0NCj4ga2VybmVsQHZnZXIua2VybmVsLm9yZzsga2Vy
bmVsLXRlYW1AbWV0YS5jb207IEJyZW5vIExlaXRhbw0KPiA8bGVpdGFvQGRlYmlhbi5vcmc+DQo+
IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBuZXQtbmV4dCA1LzhdIGlnYjogZXh0
cmFjdCBHUlhSSU5HUw0KPiBmcm9tIC5nZXRfcnhuZmMNCj4gDQo+IENvbW1pdCA4NGVhZjQzNTlj
MzYgKCJuZXQ6IGV0aHRvb2w6IGFkZCBnZXRfcnhfcmluZ19jb3VudCBjYWxsYmFjayB0bw0KPiBv
cHRpbWl6ZSBSWCByaW5nIHF1ZXJpZXMiKSBhZGRlZCBzcGVjaWZpYyBzdXBwb3J0IGZvciBHUlhS
SU5HUw0KPiBjYWxsYmFjaywgc2ltcGxpZnlpbmcgLmdldF9yeG5mYy4NCj4gDQo+IFJlbW92ZSB0
aGUgaGFuZGxpbmcgb2YgR1JYUklOR1MgaW4gLmdldF9yeG5mYygpIGJ5IG1vdmluZyBpdCB0byB0
aGUNCj4gbmV3IC5nZXRfcnhfcmluZ19jb3VudCgpLg0KPiANCj4gVGhpcyBzaW1wbGlmaWVzIHRo
ZSBSWCByaW5nIGNvdW50IHJldHJpZXZhbCBhbmQgYWxpZ25zIGlnYiB3aXRoIHRoZQ0KPiBuZXcg
ZXRodG9vbCBBUEkgZm9yIHF1ZXJ5aW5nIFJYIHJpbmcgcGFyYW1ldGVycy4NCj4gDQo+IFNpZ25l
ZC1vZmYtYnk6IEJyZW5vIExlaXRhbyA8bGVpdGFvQGRlYmlhbi5vcmc+DQo+IC0tLQ0KPiAgZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9ldGh0b29sLmMgfCAxMiArKysrKysrKy0t
LS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9ldGh0
b29sLmMNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX2V0aHRvb2wuYw0K
PiBpbmRleCAxMGUyNDQ1ZTBkZWQuLmI1MDc1NzZiMjhiMiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9ldGh0b29sLmMNCj4gKysrIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9ldGh0b29sLmMNCj4gQEAgLTI1NDEsNiArMjU0MSwx
MyBAQCBzdGF0aWMgaW50IGlnYl9nZXRfcnhmaF9maWVsZHMoc3RydWN0DQo+IG5ldF9kZXZpY2Ug
KmRldiwNCj4gIAlyZXR1cm4gMDsNCj4gIH0NCj4gDQo+ICtzdGF0aWMgdTMyIGlnYl9nZXRfcnhf
cmluZ19jb3VudChzdHJ1Y3QgbmV0X2RldmljZSAqZGV2KSB7DQo+ICsJc3RydWN0IGlnYl9hZGFw
dGVyICphZGFwdGVyID0gbmV0ZGV2X3ByaXYoZGV2KTsNCj4gKw0KPiArCXJldHVybiBhZGFwdGVy
LT5udW1fcnhfcXVldWVzOw0KPiArfQ0KPiArDQo+ICBzdGF0aWMgaW50IGlnYl9nZXRfcnhuZmMo
c3RydWN0IG5ldF9kZXZpY2UgKmRldiwgc3RydWN0IGV0aHRvb2xfcnhuZmMNCj4gKmNtZCwNCj4g
IAkJCSB1MzIgKnJ1bGVfbG9jcykNCj4gIHsNCj4gQEAgLTI1NDgsMTAgKzI1NTUsNiBAQCBzdGF0
aWMgaW50IGlnYl9nZXRfcnhuZmMoc3RydWN0IG5ldF9kZXZpY2UNCj4gKmRldiwgc3RydWN0IGV0
aHRvb2xfcnhuZmMgKmNtZCwNCj4gIAlpbnQgcmV0ID0gLUVPUE5PVFNVUFA7DQo+IA0KPiAgCXN3
aXRjaCAoY21kLT5jbWQpIHsNCj4gLQljYXNlIEVUSFRPT0xfR1JYUklOR1M6DQo+IC0JCWNtZC0+
ZGF0YSA9IGFkYXB0ZXItPm51bV9yeF9xdWV1ZXM7DQo+IC0JCXJldCA9IDA7DQo+IC0JCWJyZWFr
Ow0KPiAgCWNhc2UgRVRIVE9PTF9HUlhDTFNSTENOVDoNCj4gIAkJY21kLT5ydWxlX2NudCA9IGFk
YXB0ZXItPm5mY19maWx0ZXJfY291bnQ7DQo+ICAJCXJldCA9IDA7DQo+IEBAIC0zNDczLDYgKzM0
NzYsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGV0aHRvb2xfb3BzIGlnYl9ldGh0b29sX29wcw0K
PiA9IHsNCj4gIAkuZ2V0X3RzX2luZm8JCT0gaWdiX2dldF90c19pbmZvLA0KPiAgCS5nZXRfcnhu
ZmMJCT0gaWdiX2dldF9yeG5mYywNCj4gIAkuc2V0X3J4bmZjCQk9IGlnYl9zZXRfcnhuZmMsDQo+
ICsJLmdldF9yeF9yaW5nX2NvdW50CT0gaWdiX2dldF9yeF9yaW5nX2NvdW50LA0KPiAgCS5nZXRf
ZWVlCQk9IGlnYl9nZXRfZWVlLA0KPiAgCS5zZXRfZWVlCQk9IGlnYl9zZXRfZWVlLA0KPiAgCS5n
ZXRfbW9kdWxlX2luZm8JPSBpZ2JfZ2V0X21vZHVsZV9pbmZvLA0KPiANCj4gLS0NCj4gMi40Ny4z
DQoNClNpZ25lZC1vZmYtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9u
b3ZAaW50ZWwuY29tPg0K
