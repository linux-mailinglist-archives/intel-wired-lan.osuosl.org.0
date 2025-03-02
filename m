Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D12A4B1C3
	for <lists+intel-wired-lan@lfdr.de>; Sun,  2 Mar 2025 14:10:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C5E6F81446;
	Sun,  2 Mar 2025 13:10:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t6bL4RVwKwZv; Sun,  2 Mar 2025 13:10:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 670B4819CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740921033;
	bh=cCaDCsr++QWXRO7nPpDVmQGYG+J4kkpdaEqWl/FXync=;
	h=To:CC:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qAmjUkjsUr9srlFIPAbTOFrQsqiInYQSUdLF5O6MmLKciSsR3iJFzehh/E67kZcR3
	 Mdebcna7ho9Qu9xcvpTSgbYPpnGroYC+bAGKB4TaBCjkX+HIDDUHUayGWUPet24Ybt
	 akU5n/5hAw85K/vLnjGY2EdMWQI2PtijxYVy+bu6JdPZ8dQ/JDMuiLTCzXFAgT/diF
	 ZTccLCwfrT7QxG+72GO0zyLdedJqJQdg+XfMQACBvc5yVOHOPWZJxj4nupuHO13Sdw
	 qO+NYzf6AOLqSLjZ0nT4QwwdTYqUL6kz5vJVrrv8w2vYSij4TYWsacUh1etf2teoF5
	 fKuBsM98kdLQA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 670B4819CC;
	Sun,  2 Mar 2025 13:10:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7C1DC19F
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Mar 2025 13:10:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5FC4660BAE
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Mar 2025 13:10:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ayw8qNiSMgQq for <intel-wired-lan@lists.osuosl.org>;
 Sun,  2 Mar 2025 13:10:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 15A7660723
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 15A7660723
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 15A7660723
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Mar 2025 13:10:28 +0000 (UTC)
X-CSE-ConnectionGUID: t7geoldpRqi8OfTj/ZU03g==
X-CSE-MsgGUID: vUDxf3aERvmnJmeoxqRYTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11360"; a="52442169"
X-IronPort-AV: E=Sophos;i="6.13,327,1732608000"; d="scan'208";a="52442169"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2025 05:10:26 -0800
X-CSE-ConnectionGUID: 22mxE1dLRryEqTqFST77YQ==
X-CSE-MsgGUID: rvPI7+uUSoy49YayPNn9kQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,327,1732608000"; d="scan'208";a="117762608"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2025 05:10:26 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 2 Mar 2025 05:10:25 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 2 Mar 2025 05:10:25 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 2 Mar 2025 05:10:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jjetns7d6qCfKSt6hfmhOcgVUk9sqjsSeb9lafh2OjdWN2InYCskoY4s3UqoTNtyWNJHp44/pgaeR7fSlPFtgHZv8limWpEkYlrT1LEFYtfTqnJIe1bJMIPmuH6ntwC1TcqL/FQd4pnEif8trXwqU27JjeyF0CoCJh2NsGNl/QKYmKiFw0pfiRQ6m3YhZ5Z6TCsdoadni7CiaOLOg9XQzMRMpii6eVcJJmjEocaR+XAlsuMSAny/SxNuDi3Uw0QoDKcBElngfa7PNbO9Z8DLDFfdJO66w+/C5pFRQfVeauPf94ed0/8dIq7OvsEbLlyNqR2GyQSAMBbt3qfhUFHNMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cCaDCsr++QWXRO7nPpDVmQGYG+J4kkpdaEqWl/FXync=;
 b=C6ckucqz/6ypDwx2htv1YXetHksfuglleV/2QNF4MUBwzAx7Q5VyfcROHUj5L+pDZeqCjEDO2SMHrelt+OsGR6hhSiJDYBbh8JUNhkqKkZgNARtwBrGPwPkGMuI/ZdiDnEELPYXOwMQ7ceeBVE4Vlw0wBwETBDaLuahspcBbh39nN4W0Zn9rSox5Y8Esh6O9Wdn6BdsBC+QwP6YI0Bbtlg2HexV7TOmyDXWhnYQxFYywidaCgpEtD5njHliQV58udmfly8l3y2QSMkwtdWB1lSqkUfm9WuRH84sciMZXQSvSs0zhJvCjV+PvGmdAsoLJgHCNQGBf6IwMM6iSKVMnkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by SJ1PR11MB6226.namprd11.prod.outlook.com (2603:10b6:a03:45b::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.25; Sun, 2 Mar
 2025 13:09:42 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%6]) with mapi id 15.20.8489.025; Sun, 2 Mar 2025
 13:09:42 +0000
To: Mark Pearson <mpearson-lenovo@squebb.ca>, Andrew Lunn <andrew@lunn.ch>
CC: <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <mpearson-lenovo@squebb.ca>
 <20250226194422.1030419-1-mpearson-lenovo@squebb.ca>
 <36ae9886-8696-4f8a-a1e4-b93a9bd47b2f@lunn.ch>
 <50d86329-98b1-4579-9cf1-d974cf7a748d@app.fastmail.com>
 <1a4ed373-9d27-4f4b-9e75-9434b4f5cad9@lunn.ch>
 <9f460418-99c6-49f9-ac2c-7a957f781e17@app.fastmail.com>
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Message-ID: <4b5b0f52-7ed8-7eef-2467-fa59ca5de937@intel.com>
Date: Sun, 2 Mar 2025 15:09:35 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <9f460418-99c6-49f9-ac2c-7a957f781e17@app.fastmail.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TLZP290CA0004.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::15) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|SJ1PR11MB6226:EE_
X-MS-Office365-Filtering-Correlation-Id: 4a35bcdb-fe2a-4407-97c1-08dd598b7eb6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SjlaV0NINXR2NklJclRpVjlOR1pldW1QVThvQWw3M011eXdqWDhrQko5RzBz?=
 =?utf-8?B?SDFLMkJHWCt2Rks5cGpSRk11b29tdFl6emxCOUJpMHlka1RoVUsxek1mS2t0?=
 =?utf-8?B?UXVyalpEY3ljMWl3OTZxd2theDhxdjg5MTV6aVl2NWl0MzhqNWhmenRIRnRS?=
 =?utf-8?B?Nm5USEM3MGJEYnZzbkx1U2orYm1zSXpNaHRmOU9tKzBXbGhUOTBEaWoyUmZS?=
 =?utf-8?B?QVlpMndiZlJ1RFFJOXRodHIvdThqWUtzeVNwcmZreG5zY2ZabzRlMmlWcEFq?=
 =?utf-8?B?c3p4cVZsRmpmV1E5VUF4RFFnSWl2TkU3SkwzdDRMaHdtMGhJSzJ1bEhoZnV6?=
 =?utf-8?B?TG9EVGJRWHl4UklzTVh4MjIzd0dqbThrLzRSMkN1dGtUTmFRZjVmSFF3UXhX?=
 =?utf-8?B?LzNHK1hFN2I4YUQwbWY4aVkxSmtuSWluN2RwZmQrLzJnK0psUytKNWxjWHJX?=
 =?utf-8?B?M09tUytYdVdoYmt1NEdMMU1HMUJLYnNJYVZSQWk0SHZkUFhISnl2a3FMQ0I1?=
 =?utf-8?B?UzEyaFEranRFR0U5QzJOQ3QrdElMN3FFc25ZTkpqd0IvamRZY0R2NWJ4eGd4?=
 =?utf-8?B?UTNXUUVXOXVqcjQyYk1jQU9iZVNlQktmbWR4UUprWDVlSCt2SElua3dpenJh?=
 =?utf-8?B?TTVhRGtYVE5URVRlWUg1b0gxNVpjR2NJbjREMWxxREduVXQzOXpUMHFsSlhO?=
 =?utf-8?B?a2Z0Y0NnQTFtSDc5V0lienRmWGwwUEdDU0Y1MVpNOUNLdWdDcFAzM091bjRR?=
 =?utf-8?B?SVQ5VzlwN1A4NlQzNmUzN2NpZk5QaTVadERtOFpGRnhuTU1VNDhheGV6bEpm?=
 =?utf-8?B?MTF0VjVuM2M3VWJoeHkrU3pIY3hrVElNQldETlpoODFJdENqL3FCV0JVdGkx?=
 =?utf-8?B?NzFaQnAyNnZEVDQxVHVyeDlJTWwwYzlnMXRXY0VmbXRSakdldXBCaW0ramtj?=
 =?utf-8?B?R1RyYlJEdmsvand5TWJEamdFcXZXZXBTenhrRFM4Zy9WWnVzdmtnWk9Ub0Fa?=
 =?utf-8?B?bFpOUDhzZHU5VVpJdnlrZUFOTG43cWxrMGdualVreWFYZnV0RkFYbXZ5byt4?=
 =?utf-8?B?T0RDTHB1L2dlbnE1dVNTbmgyNUFPTHIzRjdsUUZ2S25XOWhGS1RqK2pibkxt?=
 =?utf-8?B?VzRyS3lIaXp2UDZSWlFrYkdIdjJRc2RCUkpTZ29JSXJWdEhFZVk1RllmNzNU?=
 =?utf-8?B?MFFFWXF5dGFEVWVsSzNFUk5qb295MlVwWFNwSU5yZW5EOGhYZmNlcWphWlF0?=
 =?utf-8?B?T2FOUHZXVVBjNSt2S3RrSEs0cUxVMGZVaTVOcGVYR1FXK0d2TDg1OXM1ajhD?=
 =?utf-8?B?UUdXaldQT2FDUXM5Lzl4VnpidGU2ZHNrUFMwRDlVWDNtN3pVamJmeSswS2o0?=
 =?utf-8?B?bDJablM0M042YlJ4c1J1allBcVhYYnQ5OWtWWTBJZDV0MFVKNTZ1aGg3WlB3?=
 =?utf-8?B?dCthM1VhNjdPaTc3TnQ5Wlh3cTVoTjlqcVNWMnRIaEVJWCtqenRrd3ByS0pq?=
 =?utf-8?B?TFJZdWpTU0hzOVpHZVV1RU50SE5TVHM2N3JVUllZWkFJK2xvV2pvL2Z0Y3Rz?=
 =?utf-8?B?MW9hMzRWQ3JacUZpT2NrVjFvdzBGQWM4cFgzcDl6ZG9xcVVFc1pTdkJCaVlj?=
 =?utf-8?B?d0tpZHNWT1RMbWMvaFlWSk4zVHZNaFhKVjF3K2hHamhhdWRGT3A0d2hBM3Zy?=
 =?utf-8?B?K3BXelo4bnQvSHBWb2lpUEcwcERkb2VmZlFGcWEzbDVYRnVVS0lRelU0eHJl?=
 =?utf-8?B?eDJyS3l2bU0rMHdtMW82ZHZwajE4T1UrMUlWVm4yMTV6d1ZLckFwc2FSZW9J?=
 =?utf-8?B?ZUI4aFNON1ZYeXo0dkFRdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NnZFWUNCNkZUU1VoY3d5K2wxS2hmOFAwdVVKeW5VZm9Cb21BVTlvV0Q5KytC?=
 =?utf-8?B?N3pVTG44d2R3c3gwNFZYc1g1ZlcwbzRRTG5rNHRTaEV4YnFWL21vT0hIcWc2?=
 =?utf-8?B?ZDVtVUVWb1UwN1FVc3M4SytqS3c2Q1dkZVpBWFdVTzZSd1lBSGN2TEhoaUVl?=
 =?utf-8?B?RENOeHhzUWtzaUQxS0Nydlp0WHlJMm5oRVBRd3Q2dU9POUZRZHpwSjlMZ1Rz?=
 =?utf-8?B?aEo2Zm5qcEU1REJTSGRhc3U3VGlpT0FvR1RHVjJMM05FbXE5QnlDRm1SNXpr?=
 =?utf-8?B?UHF2V244eWRsVlU0SXJ0OVJyRmRCVytXNW9PTVVicG55SkdyZmlCSXhyZDM1?=
 =?utf-8?B?amZ6eWhaUUZqcDRUR3ZFZm5zYzBzRTB0V3A0NW5nTVJxRFQzK1VLQktGclRt?=
 =?utf-8?B?VkZacHpsMjhMQVI0ZkhvWnY3dFlhbVIxenUvVzdnaWRJbnkwUkwzNnd3b2tw?=
 =?utf-8?B?WnY3cW1kcHNxdHJCZzN3cHFHK29xT1RzY0sydDYwTE56T3BqcGt4V2g1UGE0?=
 =?utf-8?B?V01ZZS9MZXBTdmF5a0t2N3dHcVI1MEVReU9jR0VBWjBDNi8wSW8xZnFKSUlG?=
 =?utf-8?B?c0k2OVVURCtJOGJ4bHM3RmZnQ1JQd0UweUFIWWg4Q2VNMjJQeE53Qk11N1lI?=
 =?utf-8?B?NUhzZGNVYmhoNWc1NXhKbE5ybFoxbEoyT3p1VXVPWDB1SHhQQkdiWEZRQlVw?=
 =?utf-8?B?WWpZOUExN1FxZGJjaUpJZUZvVWVIVCtPZWtwRXZLVElVSHJPelo3K2xVMllC?=
 =?utf-8?B?N084VzZlK0N4K1RCUFd2R243NUJpTEZ3SVo5VW1IalJoMGE2Y3pPVlQrQjRQ?=
 =?utf-8?B?R2REL3E0d250SXo0K0N3elFSQkowS0oxYXJLNVd3dGoxcTlKVjRVSkhGSUJ5?=
 =?utf-8?B?RlRPRnZWZVFMZDVUem5US3JUVFFiZjVDRDNuUVF4YVR2TXJKNkl3dzVQRUpq?=
 =?utf-8?B?Wldsc3VZOTRlZTVVeUlXV3Rlc2E3OEcrZ0cxUjVXRER2ajM3WWJzUFZJc1Fk?=
 =?utf-8?B?NE5UYTRndzdjejM4K1V2TFdhK2dublVPMkFwMnI4dmptM3FibVhUOElJRDd1?=
 =?utf-8?B?VjVTQXdkVmoyWkhZQS9tRjdrV3J1ZlpEWThVekdHMG1YQVBqdjNtV3R1M0Nw?=
 =?utf-8?B?YWhrNytqMzVqN3pHMjR5dzNVOVpmSURxZDJlb05MNS9RTStpTENFdXRIa0VS?=
 =?utf-8?B?ay9hZnZGYnBGUHR6dEZYRk02VnlZTkNjc2NhS0lmL2lmZ2plc3BwazJVL3pZ?=
 =?utf-8?B?Z1V3aStLREZBNGZ4Vzkzb08wMmorTDR6cXQwT0hPaGFVZXlaaFFIUDl2ZVpM?=
 =?utf-8?B?OVBNK2FZc0gzb3JCU2VDRUFhYnVqb2hORzdsNENad1hrN3BHZ0ozYVVoMkkz?=
 =?utf-8?B?ZGZrbnBCS05NS2hDUVRKZ1djbTBhZSswUWEwUzd2YlBxbHovWlowZGUwZy9h?=
 =?utf-8?B?M0R5NTRoYW02U014UWl6SkdIbnNNMGZ5VUlZZkxqclIwMFZTZUwvS3V2VTY3?=
 =?utf-8?B?RVhlNE5KMEdZdE5senVZSW9RaGJFK3JzQ1NDR2ZBd0g5QmlXNGZUWDdjVU5B?=
 =?utf-8?B?aWRWN1NTRVhhbVhRZDZPOW9TN3BhZmtRNzZVZ0hJSk5uUjJIU0t6bkdvOUx6?=
 =?utf-8?B?cnppSjhUbFJDQis1TU5BNVZYNnZvelFwUjc0YU9wOEVOV3N4STdxSHVvWEc5?=
 =?utf-8?B?dlQzdHE5dURMRVFHcFJsUkFUVERicjNUL1NkNlVsRE1hUXZaZjVKU3dyR2k5?=
 =?utf-8?B?OHVXeTN2REJmek1WTzZ5WFBIaWhBbHJ1dm1kc2N5aE9sZHM1Tm1TOU8yYWFr?=
 =?utf-8?B?U1g0aTdnVUZYcExUZFliUHY1MVRlaUk0UnJyajF1OUhFQkwxbWFPdkp2TURF?=
 =?utf-8?B?M2hSaFFNN2lpOWpoQUdwOUJjTWpqL2ZvcWpEZGcySWh0eVdYZDA5RmpES0Uz?=
 =?utf-8?B?KzB6Z2lKWHRaVGxqTUFNVHlSdmFCMmVkMWdaYWU0Vi9lSVZZMm1mUVhnU3lY?=
 =?utf-8?B?MUl3anBnYld6VkxEaWhQdVAxSzNXU0tSUUJobXc1QjB6YWxvUUhzdkN2aHdM?=
 =?utf-8?B?UW9QRmJCanRVcTVWR05veXBQVUV4ZDhjWUQvWHlTdUJIa1FxcTMzazlwMURQ?=
 =?utf-8?B?YWJsMzhZeXdMUU9kcklWVHlxM1FiUmVmOFFsMGZrTkc5VENUUmtReFE0UWc3?=
 =?utf-8?B?ZkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a35bcdb-fe2a-4407-97c1-08dd598b7eb6
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2025 13:09:41.9384 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Vnt+MJ6FRxm5j1CyZtWOClBioydLBZSNR8UWTkk5N53AsMw6W2V+/egoaYE/pGgtMOmI81+360gt2zfItQBHKgQM3TQPKD7/KxD8zMKYajk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6226
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740921029; x=1772457029;
 h=subject:to:cc:references:from:message-id:date:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DBxfPx1Qw3cFSsUyEYfgfz2kkRBeWKyu+dvUuwcMnEo=;
 b=Z3QgdJ4qLg1qIMCncQjWOQ1bsmqSWwG0sUDjnqtDA4MYY6g4K2oWuU7R
 ugtF4eT2hL/TPQ1FBkJz1d5kRZqpblu/bXoNDWrq4xA74dJ1cx7pIMO/a
 1WfgM5YZ/1he+3DH1aoXKdSO4xZ4PPs8C14qTBdIZwYIWNBy9jX5m8Hw8
 N9onOwOAwY1/v6IiCVr2R0r21uOOzKR6/KZkpBvMrAkWxeHCY164nEqRd
 217Yf8le1pj/SW1kvdwhLGU7oNazwa4Tio1oyI/K64Rjzh52tAYeIvTKk
 6MnWufpC4vVc+95od3fx9wtQP7IKqTZHapSTcXOV6PUFUXVx2Ig+gYap/
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Z3QgdJ4q
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Link flap workaround option
 for false IRP events
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



Hi Mark,

> Hi Andrew
> 
> On Thu, Feb 27, 2025, at 11:07 AM, Andrew Lunn wrote:
>>>>> +			e1e_rphy(hw, PHY_REG(772, 26), &phy_data);
>>>>
>>>> Please add some #define for these magic numbers, so we have some idea
>>>> what PHY register you are actually reading. That in itself might help
>>>> explain how the workaround actually works.
>>>>
>>>
>>> I don't know what this register does I'm afraid - that's Intel knowledge and has not been shared.
>>
>> What PHY is it? Often it is just a COTS PHY, and the datasheet might
>> be available.
>>
>> Given your setup description, pause seems like the obvious thing to
>> check. When trying to debug this, did you look at pause settings?
>> Knowing what this register is might also point towards pause, or
>> something totally different.
>>
>> 	Andrew
> 
> For the PHY - do you know a way of determining this easily? I can reach out to the platform team but that will take some time. I'm not seeing anything in the kernel logs, but if there's a recommended way of confirming that would be appreciated.

The PHY is I219 PHY.
The datasheet is indeed accessible to the public: 
https://cdrdv2-public.intel.com/612523/ethernet-connection-i219-datasheet.pdf

> 
> We did look at at the pause pieces - which I agree seems like an obvious candidate given the speed mismatch on the network.
> Experts on the Intel networking team did reproduce the issue in their lab and looked at this for many weeks without determining root cause. I wish it was as obvious as pause control configuration :)
> 
> Thanks
> Mark
> 

Reading this register was suggested for debug purposes to understand if 
there is some misconfiguration. We did not find any misconfiguration.
The issue as we discovered was a link status change interrupt caused the 
CSME to reset the adapter causing the link flap.

We were unable to determine what causes the link status change interrupt 
in the first place. As stated in the comment, it was only ever observed 
on Lenovo P5/P7systems and we couldn't ever reproduce on other systems. 
The reproduction in our lab was on a P5 system as well.


Regarding the suggested workaround, there isn’t a clear understanding 
why it works. We suspect that reading a PHY register is probably 
prevents the CSME from resetting the PHY when it handles the LSC 
interrupt it gets. However, it can also be a matter of slight timing 
variations.
We communicated that this solution is not likely to be accepted to the 
kernel as is, and the initial responses on the mailing list demonstrate 
the pushback. We do understand the frustration of end-users that may 
experience the problem. A couple of suggestions that can make it look 
less “out-of-the-blue” are: try a short delay instead of the register 
read, or read a more common register like PHY STATUS instead.
On a different topic, I suggest removing the part of the comment below:
* Intel unable to determine root cause.
The issue went through joint debug by Intel and Lenovo, and no obvious 
spec violations by either party were found. There doesn’t seem to be 
value in including this information in the comments of upstream code.
