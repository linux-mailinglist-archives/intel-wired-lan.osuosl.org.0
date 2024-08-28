Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1A83962B6D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Aug 2024 17:11:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 76C9740AD5;
	Wed, 28 Aug 2024 15:11:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TorMOV9hJL0J; Wed, 28 Aug 2024 15:11:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 04A5140D80
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724857883;
	bh=RBpGDhhAOzb8Frn/QlwtaurblHv3NTXDCLh6pDNRRLo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GewN0xmKLPZ7MTOnwUg1uIZHqSWC0it+hhscvXAzQPOT304lMnMo0U4yKTFqt1V2v
	 2KQZ2Fmndhe1c4o0cZFQjejConlOKf9u4gLXo+qIBNX7zU9Idsw/t59yWzykgatrnC
	 PZmkmVhgFeNwV9Tf02G8gRLoLTa22kxaZWFjLW7MKt4y4rZhUJYhlEp1noGhWNUKRH
	 Nm8pjtVJQuG9yPx7yeX0ths7bu0SxqKA6+v2NSJF4gFCMXvYRBRNnEfSzIRH1LdwnF
	 WuRSPGWBwFHwKzGrRz1Fw2jREDYl3FipO6p0d1fP3yZRHZI7WKi3CYTfkgfNWOG7ZP
	 56u2edTcDQtUg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 04A5140D80;
	Wed, 28 Aug 2024 15:11:23 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AC8241BF852
 for <intel-wired-lan@osuosl.org>; Wed, 28 Aug 2024 11:48:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A469D812D5
 for <intel-wired-lan@osuosl.org>; Wed, 28 Aug 2024 11:48:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D_BYRjbK7MbG for <intel-wired-lan@osuosl.org>;
 Wed, 28 Aug 2024 11:48:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=jan.glaza@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 74BDF812D3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 74BDF812D3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 74BDF812D3
 for <intel-wired-lan@osuosl.org>; Wed, 28 Aug 2024 11:48:51 +0000 (UTC)
X-CSE-ConnectionGUID: lyKj/VtkQ3SoILKjPZ41Tg==
X-CSE-MsgGUID: OpBx5Tx1SoCBqII69eeI0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="23541955"
X-IronPort-AV: E=Sophos;i="6.10,182,1719903600"; d="scan'208";a="23541955"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 04:48:46 -0700
X-CSE-ConnectionGUID: maKsF4E7SzeDIC/knSY6hQ==
X-CSE-MsgGUID: wnBH0vFoS6C/9/TJUPNrMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,182,1719903600"; d="scan'208";a="62851533"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Aug 2024 04:48:45 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 28 Aug 2024 04:48:45 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 28 Aug 2024 04:48:45 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 28 Aug 2024 04:48:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TgvBH5pDd+6jCefz1lEO++vIOdyY4qqD64wD1N8Ay5Vingmqpj4CixG2c68Aa7Ia3nzcG2HLJFds8Wuen5vxBHxGBJF5v4rg2ZvwMhoLAp2ITIDNp0Y6+c18Vnd/xMXSk7ghpEkDtuvc9Ky59G4QucRIbTUyw9Q085cil374EkB6fAONrRE5CPXvD/IEXJcgzvkGGg44FOrXJEDmqZaXv6NgSoRxmq23/wxVd/OSQuY5SpzSpfZaTE+4ZHzbR32wW94p6l/x42XJB/fI/wwSJGuPx9bouMIZD53sFBZBbZh8g+BXvSQCqI6fLNKgqahNdfAFRsRBu9Ga6uP0ckjgaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RBpGDhhAOzb8Frn/QlwtaurblHv3NTXDCLh6pDNRRLo=;
 b=iZ5HDelIDmoc9+Y9Ltd6jusZReVfpOod3SIrZHJDjeC58qT4vtpnEcWWaKNqMGmr9/OviT2IS3sAeTBcFhhu2Xk7se7uu3lWTFtPLWnJczUzJlnrdKVVhJjXr9YQtFJehz7Av3vaiFHJwPh4z6NxKFmX0rDGT2o/7Na7vpRo0tF80Do3v/Hz3y61DZkgHXo46SapIuaKSHT/N6Z8QOyw9Be+oaavqbUu0rSiUwSodSoSkRJ8iDZv5GEjg6IO+wpWFc0MMOq15Qtf4GyYqfMwlNJK5ebbgN/3wr23vDR1XxbmYkGbui74bCY6JGuhZrSRof7xcZq7kRmgHI1pMi1LOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA1PR11MB6807.namprd11.prod.outlook.com (2603:10b6:806:24e::7)
 by SN7PR11MB6851.namprd11.prod.outlook.com (2603:10b6:806:2a3::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.28; Wed, 28 Aug
 2024 11:48:42 +0000
Received: from SA1PR11MB6807.namprd11.prod.outlook.com
 ([fe80::b42f:a07d:8100:7f80]) by SA1PR11MB6807.namprd11.prod.outlook.com
 ([fe80::b42f:a07d:8100:7f80%4]) with mapi id 15.20.7897.021; Wed, 28 Aug 2024
 11:48:42 +0000
Message-ID: <5dfb65a7-8625-4149-9d8a-b6bcda530882@intel.com>
Date: Wed, 28 Aug 2024 13:48:37 +0200
User-Agent: Mozilla Thunderbird
To: Faicker Mo <faicker.mo@zenlayer.com>
References: <SJ0PR20MB6079EE704620E28B3AD45286FA8B2@SJ0PR20MB6079.namprd20.prod.outlook.com>
Content-Language: pl
From: "Glaza, Jan" <jan.glaza@intel.com>
In-Reply-To: <SJ0PR20MB6079EE704620E28B3AD45286FA8B2@SJ0PR20MB6079.namprd20.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: VI1PR0902CA0028.eurprd09.prod.outlook.com
 (2603:10a6:802:1::17) To SA1PR11MB6807.namprd11.prod.outlook.com
 (2603:10b6:806:24e::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB6807:EE_|SN7PR11MB6851:EE_
X-MS-Office365-Filtering-Correlation-Id: 48f8faac-de13-41c4-f2df-08dcc7575d58
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NjJnT08xOWxsWUxQUjZkNDQxWUFBbVNjWUVwdTVpajZHdVBBVmRHcVYrbkRX?=
 =?utf-8?B?dUMyeGRNOTlmRHd6ZVNHVk5TQlJmQXNEOVVHMlZVYU5OY3d6bS9FMVhCTWFr?=
 =?utf-8?B?MEpGWWRwOHdLdFVjcVY2SXRiNkZ5OTh0NDFCM255UEkvTEF3bzZIcWpSMUM4?=
 =?utf-8?B?RkZPbE9TRjVCeUJEOEpCaUxJR2xEaXB0OWE5RmUxN3pHV1Q5bng0eWE0MjJT?=
 =?utf-8?B?enVPVmppdTdpQ1c2UTl0dHd6bmgvVjhLRDFlZHppWUJWZk5jKzRtK3FRR3Nk?=
 =?utf-8?B?WUM3SHRFdlpKUnZ3bEZqcGhsa1M0YWEzN0RKS2grTWtFdndscjBhZnFsWkpE?=
 =?utf-8?B?L28yVTV4WDFsRU5mTFZqZnZuWVlqZ2NKK09rQ292d2tBTUtFNC9hL05jdTJI?=
 =?utf-8?B?VWw5emVqdUo2em1WRkgyZmUycVdGMEw0OTdNSU12bDlGMkhSREUyQ2ZDbzRh?=
 =?utf-8?B?WWlzMFNkcmc0eU5lSE9iQ1FKbG1kYml0SG5KK0J4K3ZkN2ZTeHBzRlJ0UFEr?=
 =?utf-8?B?aFZtbjYvVU9sMUEyZGVZLzlOc1pTRnE5OXNUbER6UjNud2N5UzdlbjBKNHBQ?=
 =?utf-8?B?RVRDMm1wTXdNUmlMWU9vZ2ErVS81bzdDTi9BYmsvU2VHZGltT1pEOTZBMzgv?=
 =?utf-8?B?WEFTL0ZGN005V3ZGQk5ucHFxT2wya0wwSnJvaVlsOTMzbkFITCt1NnZpdEZO?=
 =?utf-8?B?UHZYWWxnckdETHcxSHduUEk2dk1FV1FjSnVnQ01BVWNPeStXZktMRzh1R0xn?=
 =?utf-8?B?TE9tbFoxRW9kY0o2RXZmYzMxQ3luZWpibllvQXloRU5PTFhGR1hVd1hNSHZL?=
 =?utf-8?B?azk4dVFXeXBTUVhSNitvc1E5S1haMCtjUXdYQVQ5Y09BTGVpYXlac0luc05v?=
 =?utf-8?B?VEJYRHhTV0IybEc0a2F5Qk0zYmJSdlg2TTZYNitqWUd0ZXZqdzhaQWJVTDU0?=
 =?utf-8?B?U2luQjUweW9rVjVzd09lSmNreTdzRnpnL0ZESW5QcDBMa3RPN3VDbGtzYXdG?=
 =?utf-8?B?N0theFZuTURvTnhTa2xEMkM3YWZKSTFGdXRRSjZIWENtU3VIVHlCYm5LWFZU?=
 =?utf-8?B?S0JSamlCUjdBc0EvMjExUE0vS3AzOExKcmRSN1hMSGtSb3hoMXBkQVFJRlp4?=
 =?utf-8?B?ekFURDQyaVN2czdvbS9WbVZaL3ZWZUpENzNiMS9WN3l5T2twRHZRQVF6MXFJ?=
 =?utf-8?B?d3o2NS9mOUl0Rzh6RHdPSkRJNUFRd1pEZXg1TGNGbjZzbFV4cGlobVdDNnF6?=
 =?utf-8?B?ZXpuTXN5cWk0NFZKemxzTmRKd1ZlSTdtVHREUmt5bWgzR3pXL3RjSlRXTzND?=
 =?utf-8?B?MEQrVDg3VGRoSldUVXdjRjFvRHNEU29OVGd6cVhkZjgzT2ZiK01DOFFQRktq?=
 =?utf-8?B?N1pqeFFsRjdnK0I3MlA1RWcyOTZveFRWMTV2MmlzM0N2ajBCYzR6MXJyWmRR?=
 =?utf-8?B?SDJ1SXlwM0k1NktvNUZDVGtaRzlrZ2oyRDlTM0lqNzVLUGs1Y1JyNC9oOEhp?=
 =?utf-8?B?THQzSXVtY2dRLytFVVBISmZIT0lCOEJWbzlzVHBZY3FPcmZnaGo1TURhbisx?=
 =?utf-8?B?UXJ2OEQvRGlLNGpRN3pZSFJTM2JwRENXbkJqbFhXWWJwdjF5Y05KZlkwY042?=
 =?utf-8?B?dnhGTWxDOHlwb2xCOEtvUWpQTVk3YW9QZDhQa09SYkd5dVpCemNEbmJBYk9x?=
 =?utf-8?B?bFBnT21Vbmtma2I0aU1nbE9mNk9oSjc1YU1mNy9Ja3hXL1pUblpxTUdSdmhL?=
 =?utf-8?Q?KWf3yg1CmBrkHOQ0K4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB6807.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VGRraXZDbllBcGlFT3lWREF4RUFZVVFGcTdzZkVuSkJiSFV0N2R1SWkvOHZW?=
 =?utf-8?B?VTF1ZU5QYTRZYXI2STlCV2MzQU91aFQzL1hXQlMzeEtOa3QvNFVpTlk4eTRk?=
 =?utf-8?B?TzhkVmd3N0RsMmNkYURNMlpJWkpHMjlocllzcDBHajdKS1d4NkN1S3NQeVdB?=
 =?utf-8?B?amRlVWRyWlBrWk9vNmRYems4VENmM1AraW1LYTZUOHJVK0puQkd5T2U2YUJG?=
 =?utf-8?B?T3QyNFdvR2pGR0xRVDgwZlExZW1WQjJoQ1pwam1Pd1czUzcyNm8vdHVEbmM0?=
 =?utf-8?B?dHlXSnFyUXU5b3ZRWTh2MXZ5ZU1raGpJR1UrRFFxMlN2ZDNvK2xFU0NSb0dH?=
 =?utf-8?B?YkhTYVYrNXVVQVJhb1dIcmpJQjV5WllabDMwSU9VUHJ1aXV1S3B3RFRyczU1?=
 =?utf-8?B?M0hFZ21FRDhKakx3L2dGYVZkQUlKdVR3UnoyMnc0YnN1RHg3Lzg5Sy9Zc1V0?=
 =?utf-8?B?WW85WHNSdFcyNTFBQ0pKeGV6SmRLVktRcHNPN3dzeWNtL0dLSHdvbi9UVmlm?=
 =?utf-8?B?eExISGp5a2I3ZDQzQ3M2Ulo5aHM4SDVVaHlqRmg3ekNnWjVyRnlycG1Sc0VV?=
 =?utf-8?B?M3BmdmJLZTlNc1hZVjdKRDJXZjNiUzhQNldJNndoSVBOclJsMVZWODVZQzJM?=
 =?utf-8?B?dFpUWTBuVjJIa1BkZG8zWWFHWG1LYVQvL3JlcW51QjQ0ZjZTOHNhYlArSHRk?=
 =?utf-8?B?MzNYcFJuNEhqZm5hNXhnZlRoOXQrdUo4U2ZaQTlaOW9Ya0tXSXcrWFo5aG52?=
 =?utf-8?B?bzFmRys4Y3BDSUVTWGhvMmlCSXI5SzBLUUtKbUp3WkR2ZTNRbExpQVpRY3p0?=
 =?utf-8?B?ZVFMbFZtQ3RSRWdQOGtCRHVGcE9haHR6ZlRFSExpNEJ1RFppWUt4R3ltRmVz?=
 =?utf-8?B?QkJWYTNkZmJWTTRoK3NieDloc0lIWS9GZVMxYzhiOUVHYXZlV3MzdjhYci9M?=
 =?utf-8?B?alRmUDdNRzB0YWFCYzg3UEU1STdncHo5UUM5QkdJVzBSWDIyZTg3V2V5Wk5Q?=
 =?utf-8?B?cTQ5T3VXUEFNbmZCTGFGeVNNQW5GUW1YeTBDWlNFYXExRmY3aHVYdzA0NEpL?=
 =?utf-8?B?QWl5NUcxNUJaVXNzVjZRaE52Q0dNdndjU3ZSVkxWVUVtSmpVNTRKNFd0dFRJ?=
 =?utf-8?B?VWF3QlpoOU0zY1pkczFKdjRLNUNiaVVSR3E4K01UdGVHTkROd2VFTFB6WS9o?=
 =?utf-8?B?bkxhN2pKcVQ0bHJtR3pncWhnUXVIODFZZ3ZvMTd2WGxoL1dwcnNVZjdjdFR4?=
 =?utf-8?B?ckJMekx3MDFHZjBGMEdIL0FnT1NEMVJDZFZjVy8yRTRuUHg3QlB3bGZNTXJk?=
 =?utf-8?B?Wk9sMnR3enpLMzU3YmFGMzltZzZrUGhBS2xVMjJJTXBSWm4rbVZ1U1krRmdF?=
 =?utf-8?B?Q3VtNXF1SHZiTUk3ZGlqUnlvZFlLaS9MelpqQVhPcDY3THF0T2dLTldDOC81?=
 =?utf-8?B?QUpRekpSazNVbWFtc2Y2Tld3cEo5dDUvT0h6NVQwSG1TbHBDajVERk9TWnd4?=
 =?utf-8?B?eG82bEV0OERubXRQWFRMalNUMXhoUHlCeDN4bXVzQ29yRUhKRzlVS2ZabkF5?=
 =?utf-8?B?K3piYlpqRlVQV081dUo2YmltY2hzT1JFSE9oc2NBdTgvOGlReWJoRnFxT3ZG?=
 =?utf-8?B?eTl0b0RMWU9DVHZoWWNza2JFY21JK0k5alFRRTM1eGNFYy9BRGhmSW00cWE3?=
 =?utf-8?B?OGZBd2oreWQ4MW9vVTlKSTk5VzAvOGwxeVVGODlFb1Q4c0pjUTNZNFRXWk5w?=
 =?utf-8?B?SzFqeHVrTjIxTGxyN0svOUpFMUh1aEhDQWZadHU4cG5iSHJUS2ZpVHRPbGE0?=
 =?utf-8?B?UU9SWVRJaks0QTZ4anBoa2RRVjFFcEtFQ0x2dDBKMy8rVHlFNXdJSE9sLzUz?=
 =?utf-8?B?SXBvYW5qNklkd2ZNZXNYeDRFaFF5SU5NWkkzWWdsd0VBTE53d3greWZVSUpX?=
 =?utf-8?B?NXJEcDNEU28vV2JRWHgwVk0zWDhJaEpTL1ZzSExZb3dYTVNteDZ0UHVxeE5Q?=
 =?utf-8?B?R1YvclZaMExSZ2V5VTRVc2hlcStKZFExeWNPcVB1emdkWnBnVDh6cFZTME80?=
 =?utf-8?B?SktSL3ByYU1yWjRDajJJdFVLei9oYWFnV0tPbW53NmtPaWMvM3hVMWhqWGh2?=
 =?utf-8?Q?VMDE06h8IzNJD/zVTNB/SKLgM?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 48f8faac-de13-41c4-f2df-08dcc7575d58
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB6807.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2024 11:48:42.4250 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UGBKc+/0JmrZamnTPuXMto52EPQ9mJG5S2CEYIlTd9EY/WJpyw1C99CvZwGWIlbF+rBnEQZLI0nIifr7Z+GQ4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6851
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Wed, 28 Aug 2024 15:11:20 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724845733; x=1756381733;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uY3hz8+7h+GSjUKXokyrtPPdyPctRqu1OLVMZOKvYwA=;
 b=imoLScGt0mKNBMbZd/1IpwFfCfdm4V/UpVVAIngZyedZDP+geFbGZ637
 fU97+lFD43lNPzXy7iI7EgLyuwkfnbHHpmvWr9E+sgZT5sRwYVXwws3CR
 s9IjH4P7x9NcrWsXI1BAo8qBEDJMzAqz7rU1pkcSa4oLDpOPl6VANRHvr
 98uhYZ6S3Xfr9ko1iv9JBZpvUWx++CNNRvjgouqAUmGaKQr8b3kjs9HOA
 kyqAIm/RRU00pDj+S6g11zHPfd4A3VfS0Yn6zcTGBLBzWiYtubyiT4Ycy
 gKQIhHUkmm0Gap2hQUtfKlMZDM6YXiTp5JY6cDfjVGTKzs2GSoJPy50VX
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=imoLScGt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [bug report]iavf: deadlock on detach/attach
 vf to VM with net_failover
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/26/2024 5:19 AM, Faicker Mo wrote:
> Hello, we met a problem with iavf driver, the ubuntu22.04 kernel 5.15.0-119 and 6.11rc4 both have the same problem.
> 
>  
> 
> When the X710 VF is detached and attached to the VM with net_failover, the kworker thread in VM hang. The backtrace is
...

> It looks like a dead lock of adapter->crit_lock.
> A similar problem, https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20220808175845.484968-1-ivecera@redhat.com/#2947762 <https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20220808175845.484968-1-ivecera@redhat.com/#2947762>
> 

Hello, we are attempting local reproduction and will work to analyze and 
fix the issue. If you are able to, could you please provide us with the 
reproduction commands or script to facilitate easier investigation and 
rootcausing?

Best regards, 
Jan
