Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA68AE066D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jun 2025 15:01:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F84740926;
	Thu, 19 Jun 2025 13:01:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jt30hfYDY2ny; Thu, 19 Jun 2025 13:01:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B143E4092C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750338096;
	bh=oh1rHe4MTUoJJKBqh0xEe8sUNiHuuLa6D/cZaMAuPBQ=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=32kJ4XzdrgGhsNJNzRqp5vLf3wmTcQ+0hnbK4j28qMOBIFy4hZ3VbxkOFditWhXrF
	 0R8sLWa2fz8ti9rxD0DS9FO9HZIrZG4sU604GDZhFAYQOwT0MpdEHbCE+L1lJjVB7B
	 0OT4Sc0v8MpVTQrxRPu/O3I/kB/EHGxa4NtdlrndeYsSCpKTCi7RbU6YO3drkuyDqf
	 T4oWqBIh2Yv5DZMxdn9n6vzjAwMLbl0bCr/SrnOYcHSy08uq4AY4qdTAfGPwJBFwX4
	 f9hLRkT0C9b/MNnSuDhJxePW5sHzPF13EekXsvdHvyvtBq5zq60wH2oRlxqZb2oaTc
	 bO0vyr6Db31NQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B143E4092C;
	Thu, 19 Jun 2025 13:01:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 87C0016B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 13:01:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7945C60690
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 13:01:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5wrNS42o5gVt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jun 2025 13:01:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 78ED260658
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 78ED260658
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 78ED260658
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 13:01:34 +0000 (UTC)
X-CSE-ConnectionGUID: IPgEQRRzRzCvwqkNB9xrxw==
X-CSE-MsgGUID: WRnx6OboQgi3A2ABSK4ulw==
X-IronPort-AV: E=McAfee;i="6800,10657,11469"; a="70156598"
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="70156598"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 06:01:33 -0700
X-CSE-ConnectionGUID: ZVXxNsNdSwK51KMsuJJRXA==
X-CSE-MsgGUID: 2MloPzosRH6jVo3+ulE4PA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="150082358"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 06:01:33 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 19 Jun 2025 06:01:33 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 19 Jun 2025 06:01:33 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.56) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 19 Jun 2025 06:01:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZCxiu2BSzR30hDVWluM2yJlABmNYfqkfBBeDexYdULovKC7lGC9hP87LPThed1Y3oO8AIUC1pZFLN3KK8viTauxOgXtPwnVCkKfFXQfKZIeqmOATfdTmqfD/B5JJ6RLqbh3x+By6a1HnNJ56626ODiMNPSOeWYnqiMSh6Rfcce7XdmdsLpyWID0jVNcIWFeLqJ9mxFFMfbU3xI2Z+m0YwRO4Crk45xZ0XTHZiwk05gFr5/Acx9mp7lQaF1H2Uvs8vWfJHcIbfXPjcbJBkACzYxxVHxlkuYo6EGlJsv3Ii0NMbrGUNHvArAWvx7ctpi+Z+ntZhVpS8wlXgKAO/zqtmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oh1rHe4MTUoJJKBqh0xEe8sUNiHuuLa6D/cZaMAuPBQ=;
 b=nG3S8cXpdhRqhldMt6MjK7b5wkICugeG8Bvb0bGua91GAiaEpkK7nNjhDWyUZ70GjW2LqAFJOejsMDqEmLZCp5hM2H17t+fNUUVK6faG3U0KXBKeEjLAugJdQeqA1yYYV0jEa1aRgBJZ7TF5y4Roql0MgE0oaU9+G6Ghs12EEz2dB7hxh5RHdN0o5qWc0pPmFVnAo2VZKv/MRmImG2MNpJodbNndjR4fsL0WgHMtR+HYifXg5fgJelkefNViZjCuYFUwcI/zk8QSFBxu/W2NKgqttyeMul9MjnrPikGtt6/uXpCBZK3rwQ7bs92gouLwKbRNdoaE5vB1Nf01P29U/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9013.namprd11.prod.outlook.com (2603:10b6:208:57c::9)
 by CH3PR11MB7795.namprd11.prod.outlook.com (2603:10b6:610:120::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.29; Thu, 19 Jun
 2025 13:01:27 +0000
Received: from IA3PR11MB9013.namprd11.prod.outlook.com
 ([fe80::112f:20be:82b3:8563]) by IA3PR11MB9013.namprd11.prod.outlook.com
 ([fe80::112f:20be:82b3:8563%4]) with mapi id 15.20.8857.022; Thu, 19 Jun 2025
 13:01:27 +0000
Message-ID: <53614312-ef1e-48cc-a6de-e194981feec1@intel.com>
Date: Thu, 19 Jun 2025 16:01:21 +0300
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>, Colin Ian King
 <colin.i.king@gmail.com>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S
 . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <kernel-janitors@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20250618135408.1784120-1-colin.i.king@gmail.com>
 <eaed1854-ec73-43e1-b5c9-5a2be8268ffc@intel.com>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <eaed1854-ec73-43e1-b5c9-5a2be8268ffc@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0014.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::17) To IA3PR11MB9013.namprd11.prod.outlook.com
 (2603:10b6:208:57c::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9013:EE_|CH3PR11MB7795:EE_
X-MS-Office365-Filtering-Correlation-Id: 3a58b23e-84b7-4e1c-a491-08ddaf3166c4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QkpsRDEzOUJTNDNMN2Q5Tit5c2hkTE92akhYc1NYRDlYcjduOTZlNCtjRWdx?=
 =?utf-8?B?TEUvcjNtdVF0bzRvVEJxa1E0MkJkN2d0eU9IRkJiekFxb3hEanNnb3VZYktq?=
 =?utf-8?B?TitucDgreWlMZnUvSUI3YWdxeElmMW1MdTh4ZkNXLzlyenN5QitrZ1o5eC9W?=
 =?utf-8?B?KzA3NUtvQjM3aVdaZTRpVDM4YmlxdjRQdTlWTXhuTzJ0NHgvTFQ5VVBGR1BN?=
 =?utf-8?B?OXR5WEQxU01ydUNvN29uWEhlN0ViakhWUWJXTGxCak12bHNBbGZmS3k1UjBu?=
 =?utf-8?B?L01GeTF5b3VHeHNobDlGVWZQYnJ1SXk1R2diRVJ5aE1GNHZCS002VG5ZK2Vz?=
 =?utf-8?B?Q283ajgyQWs5b2xldHYrMDRiTUkwV0grSjVpY2dOM21MSGZQakNPSlh1dGE1?=
 =?utf-8?B?S0JmNHUwcC9FMlRXQ2pMd1pTK015QzJwZGRTVG1ENXpvQXVJNndMV2RZdDFB?=
 =?utf-8?B?dVZXSUN4eWRJSjBKRWJxNWVQenp0eTN4NGdIcVJST2RacUd4dEZodDV3NUVa?=
 =?utf-8?B?QXlqWHV5T1dZa3VKRUpTMlRmZUs2OFFHOHJQaGZ4Yk13MXlYckpRSzBEYXB0?=
 =?utf-8?B?VUZZNlJqbFdzc0QvY1VZMlhwdU1wQmtRNmkxc0VnWi8vNCtzcFMwa2F2Y09o?=
 =?utf-8?B?Z2svWW5PKzZJaFdTckM0Tnl5cDlPdFA2aXdvKzFINzlxOEprQVlKaGpzd1Ev?=
 =?utf-8?B?RWdJK01tTGpyUmlTMHk0YWRaSnpKcTdkU2xxSXdWM0JrMDBuNER6N2FFcWdO?=
 =?utf-8?B?UFFMc3FIamZkaFJmQkk4TCt3QVlEZnJFaHNXNlJhYlo2QytqSWh4Q1VacWRv?=
 =?utf-8?B?VzR4SzNpa2d4Zkh4KzVtZ0pGRVVSY0JKNFlmSHJrampWWmpjcU1LL0FjZVBS?=
 =?utf-8?B?MlExc2M4YXcvWnVRRXk1Y1VjcFMySHh6bUVaeEtuOE51bGl5VC9mK3hYRVR5?=
 =?utf-8?B?OHl3dmJxcEJ4TUhpYUpSZUJrZmxXSXlNYmJ3ZVBSV2RueDVMVHJLbFZDS2NZ?=
 =?utf-8?B?VXhwN1FhRXVTUkFSdktEVzZKUEJSR3QxNmd0RmVaZk9qbk9uTGs5VzAzQytO?=
 =?utf-8?B?cWZVK21ha1hCMGptNXRRWlJreTNsYWZHM0UwZ3RaQVBIZytRbU5KK0RSZ1lR?=
 =?utf-8?B?N1lzOThMOXo4cTJ0azQ0UGc3MTZJYktodCtBRDNnaWZMYUMvNEVoUEt6MkZE?=
 =?utf-8?B?TG9oek1FZUVmUU5OWVUxZTF5MUp6UHRkSWZ4WmJpUkdGVThqbUxhVU5IdEVo?=
 =?utf-8?B?RnBGeDVaT3JJblhpSXFVeGxXRWN6ZCtPemI0d3U5QUtSWU1heW9hV3MyR0ZV?=
 =?utf-8?B?SWZldjFCYU8zYVNpTUs1MFMzSkx4bE5QM0NFR2FzZURvNzVmTm0vQndkS3lU?=
 =?utf-8?B?L1dpZkRuVmhKbUFjeE1Ea2dFcXZ2S2N2TVp3bzBvSmFYbVR6M2o2WHpxdFh3?=
 =?utf-8?B?ODQwWTNLSW93N2RJZDc5VmowVXVrSW1KZ0VvU2J3c2UwYnQvWHVDbXZYRkNw?=
 =?utf-8?B?dW5iRXRkTEp1ZkRJNFVzQ2h2dEhIaUhNTWRvS3lkcTdsMEVYVVlNNnVEeVcw?=
 =?utf-8?B?QWljRGlnZFpHeXdRK1lURnYrOHhjYjc4V2JjcU1KSXEwR2txaEkxdmUwbytj?=
 =?utf-8?B?bUdjZFdMRlVzRk5WZTlaRWVOVERvNlVNSUJZc2VEU3p4YkQrb3pmdGxqN1Jq?=
 =?utf-8?B?ZSt4UVBEUjVUdnNyMy8zTVF6RUJsc3owa2Z6RHdQNUNXWkE2dGNzTnRyUzJT?=
 =?utf-8?B?T2M1SU1iSVdTNFVvVzBTb2N4aXZlWEVqVVRFTVRuL1p2RWJJYlJZbkhsRTl3?=
 =?utf-8?B?T0dEUk1oamp3QS93eE1yMEhIRnhaTmNDaDJnSzlxcVR0UkxISytLejRMUkVq?=
 =?utf-8?B?UC8xRGJ2RVpZVlJDc2hCVmlsYWVySmErRHlQK0dNdUNhbThOWWxFTTQyTXJl?=
 =?utf-8?Q?w/vW5em6f2Q=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VjhIdnZiZWtrZkEvajRyU0VqV3lBREV0NkFvNytLdzdsQ0dPWEZQRzZOQlV2?=
 =?utf-8?B?U0MrRjNNRWZsclArOGo2eHZ3Y2hKQ2l4K0NpNVBMaTlZT1BqVzRGMEU2amxR?=
 =?utf-8?B?aVRvOUZZVklkaDZ2UktMa3Fud0o0dTRIeEovTTZFZ25TTjVSall0Smtpd0Y1?=
 =?utf-8?B?NVVCM1VJS0dCZE1LYk9Na0VHWldUOVpSZHp3NE5jYkJQNVRocS9TZVpvaUFQ?=
 =?utf-8?B?YUtnY0lrZXh1T3FUYTNBNDQ1Wjl6T3dLQ2xnSVd5S1Q4V0dzTlVCRUZ0ZlVu?=
 =?utf-8?B?TDhROTlLVjVkT0YrU1ZtbC9kOTh4WVYxTW4wNGpRVFNyMVh6eFdzYm92K1F0?=
 =?utf-8?B?UW5ZK0E0enZrakdkbmZsalBCRktDcjI1bnFnM3MvdWwwdWFvTlF2dVg0WG9a?=
 =?utf-8?B?UWFvVk1QY2F2WHNaQ2lHaEJNQlF0aXVFUHpMY2Fja2NRU0Z5aUltd1piZS9S?=
 =?utf-8?B?K1BybVE4R293a2FaNVplYkhUS0d6NTkxeExHZmszdHFpNEV3TWlQRFgyc3Nq?=
 =?utf-8?B?NEpDb256NzFyd2ZINms0NDlOSnhXdFJ3MEhmZDAzMERSdnp3d1BuQkZBOTM0?=
 =?utf-8?B?RlkvdGZ1SGplQkVxdjJBWXU4cm9Db1RSSFcwaVN4WFlxWW1ibTNTU3V6YXdX?=
 =?utf-8?B?OUhvc3pxZmZqTVlXd1Bqd0lEc1RNdVF4SFJYZEVtbUJMTWhVWTlzUHRycHlJ?=
 =?utf-8?B?ZTFHMDEyYUlTSkhsZ0U5NlJPeFdpR012blJvbUpVU0tWdko2cVl4ZHdpQ0N5?=
 =?utf-8?B?Tm1hRjFWWWJBMFVNSEk3UGliTlY4VW5ZR29ianNFWnVXYmNXWVRjaU5CU1hC?=
 =?utf-8?B?dkRaNW1JTXVIZXgvS3hQZGNJQVViVXRmWGJ2VWJCRlZTTTBHR1R1WkhqdjZx?=
 =?utf-8?B?QzRrelNuTTl0MjRVTXpnVU1Dbm9jWGJhNEVkcGtLdTQ2U2IrUDMwNzJ2cjJq?=
 =?utf-8?B?akpIZm9KRHJBUTJvSzJRUXc0RWJxVDVWdm1tK2JRbEFDUmZZeHVqMFQ0VFlh?=
 =?utf-8?B?bUkvMmZNQ3hXbENiZHdLZTNSTEpubnEzTFdYNkhSS2Rkd00yYlYzVDdlYUNL?=
 =?utf-8?B?cDZrMk0yNkVOTTFXMmhybmhyRDdXalpPaFUwc1ZhR3ZSRks1YzlINkNmOVd1?=
 =?utf-8?B?aWRsSjc1SlljS1dISXpzWmtKKzlCbVBkQkhicm40cEpzejFIWEpJWXRHN2FM?=
 =?utf-8?B?VGErY1JBRmhtc01pcXBMYk8zZWY4aDZqaklCb29OT082L1dodWNIRUFKbFJD?=
 =?utf-8?B?Q3hCU2d3eVErQ29VZUNYZ2I3SVZ5RWdscDlPbmxrNXpjOWtGUlZXZ09hU3Rq?=
 =?utf-8?B?aDNZTDRCYklORko1bmZ5YWptdW9zbzNYT0dzeHVzRVNIdC9LSTZXS2EzTEtv?=
 =?utf-8?B?YnQrcFVPL01lQXhSTFNnajgzM3h3akUvMUY3RzlJOVZUL1UzMHJsdHd4YVNo?=
 =?utf-8?B?NDF4NzdTM1BMK1JLWVBPYWdzS1d2MkZpWXVjUVpqWnBPTnFGdWVYenJpenlP?=
 =?utf-8?B?U1JKcGx0SFM2Rk1BUVBZOVBCRG9aZXdDQ1NGa2k3b3hndVh6WTVsT0k0SnBm?=
 =?utf-8?B?b3AzUnYwUkJid005RHZMd1o1NEVWd2wzVksvb2dmTlBlVWpSYVlWSzZDU2pZ?=
 =?utf-8?B?N2xEbFU4RVM4YnpzUExQS0FNbHB0VlBnbG10NVpPRnV0M04zTUplbkxjaWdu?=
 =?utf-8?B?aXA4L29CMVNQYmxEOG4vRHRoVWFQYWdIakNWb3Z1SVova0JwY2JtR2VTN2lv?=
 =?utf-8?B?NEFveUZtUUwwNWNiNEVUVWpvK0t6YUovL3ozWU1DeENlenBmNzNEbFdWNC9F?=
 =?utf-8?B?YTRFQ2tPbkZrZU5XU3IrL1BGVkt2QURkNGFEN2JlNzhSc1VFelJ4NktLQjZM?=
 =?utf-8?B?dSt0TWUzUzZBOWpETmJscVMvM3ptZWdSbUhlbkpTL3ZZUzZ6bUZSdW92dTFa?=
 =?utf-8?B?SUNWSVJmL244TVNzSnZvOXpubk5IbndmbEpIaitVdUlFWlhuZkUrQjJzME1I?=
 =?utf-8?B?VUg5Z25hSlhUckVVUGhiWHJmV1g3bXAydGxZZE1nY1k2SlhtZDJUWDZXSUl3?=
 =?utf-8?B?STZmY3dEM3hwWGdDOFM5djlqWVhNN1ZzWFJDK2liTVhwY09GZnNBVGZTNHhw?=
 =?utf-8?B?N01aejJyMEo5V3diNG12Z0dqQ3VMaFhZMnhKazBtNml2Ym5mTjlURVBKSUVy?=
 =?utf-8?B?UUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a58b23e-84b7-4e1c-a491-08ddaf3166c4
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2025 13:01:27.2031 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: boHf2KK0WWgOdFwRM22yoMtWtNzDdhcfJPKY4X6yIvtizYwPYNPoJrImRa6deiQqQmY4RGtTIgPeoo0a6+olbJT+mzpErDF2ZDvvYCz//0M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7795
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750338093; x=1781874093;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=75SdQ7Prh+kEcAQ/A6rYPaFVNLKDQiiqSDYexjSjszs=;
 b=lF90ef5elzOIgGxQyf5v+cCLTTwX5rOdXqQpoSIZB+oXU3aF7oU93+7e
 kQsVZQLj/h3UMrB/QtnXYr0ySWFcwkejwDsJZBlh5MFXZzcCF9u8UQXw+
 7vvxk1odM5zIULaALhpW2q/NZxGDdmrTuNqkqFPgZ2Az8n/uLp+GyQ7/+
 NGHZBfeIIfwV2/ykheVGgMijkk1yKXHGBalZNGheSsH3aeDbrdzoSSTcR
 FAB54oUXUXqV5opBDQFHeCoy8KGE8V2M61wYSQLJ8WFMMXhHhKoZxy2ZX
 dXWK6f55eIZmJFJX4f/DjhYPjy1Za09QbOtQeBmrlhAhWhAtvuqnEuOCc
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lF90ef5e
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] igc: Make the const read-only array
 supported_sizes static
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



On 6/18/2025 7:29 PM, Alexander Lobakin wrote:
> From: Colin Ian King <colin.i.king@gmail.com>
> Date: Wed, 18 Jun 2025 14:54:08 +0100
> 
>> Don't populate the const read-only array supported_sizes on the
>> stack at run time, instead make it static.
>>
>> Signed-off-by: Colin Ian King <colin.i.king@gmail.com>
> 
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Reviewed-by: Vitaly Lifshits <vitaly.lifshits@intel.com>>
>> ---
>>   drivers/net/ethernet/intel/igc/igc_tsn.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
>> index b23b9ca451a7..8a110145bfee 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_tsn.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
>> @@ -431,7 +431,7 @@ static u8 igc_fpe_get_frag_size_mult(const struct igc_fpe_t *fpe)
>>   
>>   u32 igc_fpe_get_supported_frag_size(u32 frag_size)
>>   {
>> -	const u32 supported_sizes[] = {64, 128, 192, 256};
>> +	static const u32 supported_sizes[] = { 64, 128, 192, 256 };
>>   
>>   	/* Find the smallest supported size that is >= frag_size */
>>   	for (int i = 0; i < ARRAY_SIZE(supported_sizes); i++) {
> 
> Thanks,
> Olek

