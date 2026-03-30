Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aKSPHZFNymmb7QUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Mar 2026 12:16:49 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E5FF359028
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Mar 2026 12:16:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0282A407E0;
	Mon, 30 Mar 2026 10:16:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qS018MjVmbDZ; Mon, 30 Mar 2026 10:16:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 613C3407E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774865805;
	bh=+cZ2/bZQBmXo6hlusMmTrARjcc71lB3FXm3Cot/bWWU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FdmQcgCizP7EiBUrNy/1mlP7EO620/FJRwOWU47GTDVDbQiS6bbqeVoWRq2ANyZFA
	 XQtKs65F5bKE3CbQTgFQMG8TFRsTqjqcTdQb9NaBh8tf4i5C7Y+RQcaVx2HumOHAhD
	 VgvS0wu7vwVax/aEWdNJ3tX6qFIelvlgY2dlaOc6wMgwhgWj1uI62Bk6AHz+b0yZn1
	 yZ9wx5bevmT4tl+eeG0xP1CH/CkqA0WenwU2pP2xGaaR2o6IiW82l4tHCI5jRI0r6y
	 BSq5445XMj/n3dbAlJJslvWj3f9VrzIbZxftL4y1CWlVLaawWVM20TcGZG50IeMpHp
	 VqnhtAKbVum4Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 613C3407E4;
	Mon, 30 Mar 2026 10:16:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id B7CD52C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 10:16:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9D86540442
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 10:16:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1GX4TlHwlmuw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Mar 2026 10:16:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=patryk.holda@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C835C4043E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C835C4043E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C835C4043E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 10:16:42 +0000 (UTC)
X-CSE-ConnectionGUID: khPKNXbJSd+8h8n+ujFBQw==
X-CSE-MsgGUID: i+ZvYGz4R4yJjp9TSGw/Dg==
X-IronPort-AV: E=McAfee;i="6800,10657,11743"; a="78449759"
X-IronPort-AV: E=Sophos;i="6.23,149,1770624000"; d="scan'208";a="78449759"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 03:16:42 -0700
X-CSE-ConnectionGUID: RIc/Oo2oR5Sgib954Imkpg==
X-CSE-MsgGUID: e3hrqOT/SS2XI3OKZrkEhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,149,1770624000"; d="scan'208";a="227628788"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 03:16:41 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 30 Mar 2026 03:16:41 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 30 Mar 2026 03:16:41 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.67) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 30 Mar 2026 03:16:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iScLt8bHNStWAb2r3kFEk4F63r+jqwTqIMrXOZbOhqH7l/WdtQYKW2q8wCbGMdUf5ijWSf4+OMbY2a+pZC082fVvQzeOB4zExm5Z61UjjREfUmsZ5CGeOuw63LLF6Y5Y746T6m2cq+xjPx2/zLuKvVsYDbz6hcvN3QnR8WKwEfx+VXjcND1gJH34GVB2cwl7QcvBCkguPJ7ochSbUrvkBILrJU2QVwzTLnZlW5YsNuZrIZjeEu2JHfD9+bVJsW1+vMjnK8Qqmm90g6ueBhtbejWhfRBMUwS8VFaSc4YgFiGobPZ8r725pDmDFAWulaSuYZ1hdf4ujXgs6uIdg366nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+cZ2/bZQBmXo6hlusMmTrARjcc71lB3FXm3Cot/bWWU=;
 b=MjgsIXUPZNS9yWDorQ5He9XLFCp64TywMJQO5Je4EncMfRaYQgfWqOpZGzumMnzchhh8N44vTNrZJkyB1FQ1y4I25OBzcrdWoI5AbNEO4/2yH3Bxc4JdJX4DREdPN0v9FloLlXjURhc9wxkADCg0cojnCaxB1mLm404TvrKrqQONmSu+//WK6nkpD6BrD1YYMYc+MQubaVAcjcqajD6tWvE16g/k4/09QWpjAcfdko+zYwoYpvCftHRLlikQeWwFJ+9W7S3LUMPX19UUNT/JOv5fRErs/CPia72G0BcbRJbLviL+CK6Gm2zWwrbvkDmPSCmE2fzUT4BXMoFl64OBew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9301.namprd11.prod.outlook.com (2603:10b6:208:573::20)
 by CH3PR11MB7915.namprd11.prod.outlook.com (2603:10b6:610:12f::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.11; Mon, 30 Mar
 2026 10:16:33 +0000
Received: from IA3PR11MB9301.namprd11.prod.outlook.com
 ([fe80::714b:7d3e:aa0:104c]) by IA3PR11MB9301.namprd11.prod.outlook.com
 ([fe80::714b:7d3e:aa0:104c%5]) with mapi id 15.20.9745.019; Mon, 30 Mar 2026
 10:16:33 +0000
From: "Holda, Patryk" <patryk.holda@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, Alex Dvoretsky
 <advoretsky@gmail.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "kurt@linutronix.de" <kurt@linutronix.de>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v3] igb: remove napi_synchronize()
 in igb_down()
Thread-Index: AQHcsieZ2k95IXxzOUynBa0+I8yfPrWsM3mAgBrEkwA=
Date: Mon, 30 Mar 2026 10:16:33 +0000
Message-ID: <IA3PR11MB930147B64F6421FD7D01AB418A52A@IA3PR11MB9301.namprd11.prod.outlook.com>
References: <DS4PPF7551E65520F55DBD20987BCAE3C6FE544A@DS4PPF7551E6552.namprd11.prod.outlook.com>
 <20260312135257.71610-1-advoretsky@gmail.com> <abPY+aT0SWuixsmN@boxer>
In-Reply-To: <abPY+aT0SWuixsmN@boxer>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB9301:EE_|CH3PR11MB7915:EE_
x-ms-office365-filtering-correlation-id: b2bb41f5-0d75-4a2f-b10d-08de8e456b14
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: Zj8702viS85r8m910Wtc9hS5Jb6KyvI+/1BxkiXSGnr/N2E5q/giICGO07SngjQffM5Mxx02hxyvH0QzTHOZ3mnl+AS79Ptm+zRvaEHwjFYZXWU40UvHHm6o8Yx8y23OO87obBYhuUhIi5djjzf59BGGteKaZ7NB2Wx5laFj+lZ1aSc9lK94V616KJuxOeFF61sr54jdr4XP282azbR5XcMO2JTmLPm5rt4Qg7LBJTrVI+MrTbg95z7D0uqyfvNgY6xc33Dh7yuE4kQ01z6+8dkA95+J0b0jzKfFa+zpw9pAY43FcYe0ucLPvsrvEtF9jg+3c5fD6mwEYjclDsVMD48LvgJ16ZBEuWn2V5RifpYoWaVig8svATK1e7erapA87tOxto/2CFXC0+pcbT+EyQJHkj9GvA//3vm22HiYU0XKUmIKm7rZjBG2bz5OYpuZuwLAWekLkYgiXgZme6HFiGoJAIP3EolSzD9Q2HVmBeA06AgF5WtgeOQHTqOWu+Ctbvo2q//KaWD/o7oMhMfSqBC8CVhmNOwLV05NvXlsL4dQUqxyCkYRxbtXXxeR42bUe8po0xv3i3JkeIwy7EJy60sR7zH2eyxZ+kFeTay6qx6yXPWrmjymHfksrsqDRzKR2fNxz8D7oRkdeMWU1JNnrln6WdU2Ad1lUyK0/cCEBOD8XjaWgtF8/O6UjpuF0k38uejzE0VW27Y+qmJQRfvTM2hLDEjxrbi9oHMQz8HMdvDm9maLoNw2fm29iDwfVGroq2ETLCQk5Tet3txHrclWN8+avfjBY30tOoC7AisdWTc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9301.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bHI0R29lS1E0OVRaeFRqQUxDdlppRlM0TGV1c2F5WUtNWHRUMlEreTFSRnla?=
 =?utf-8?B?NTF5SUxrM3EzcCsyOXhuZnZ6OFVLQ1FvSVBONHZaSEtPQmVPMmJtTFB1TFBN?=
 =?utf-8?B?T2tzWWVFcXBQNHRuaWFpRHhmT1N3Y3dIU05OL0hhc2xqTXRoOEUwcnp3NHlF?=
 =?utf-8?B?SzhaTm1IMFV1RTBrbkN6bnpaSCtHVlBLNm5WQmtEQUhBUnY2T2ZsTVdPdmtR?=
 =?utf-8?B?RDdyUElpUEpjcDBIN3hNQ0NnME9CblR4Y3ZpVmVBSWNyUVlzekhVZ0NyY1lO?=
 =?utf-8?B?ZkUyWFVySW1lZTQyZzFiV2gvQzZPVlI1dlZxbE9ZaEdCQ0tMLy8waTJGSnJs?=
 =?utf-8?B?bUlOM2pCOHJLSS83djdKZ2k3QWNWR3QzSWdRTnJMT3pXRittVDBpR3dEdWNE?=
 =?utf-8?B?VFdiVGlyQWJqSG5sb3RzYThkWEttRUQ2ZW91eW45OTZQT1JNS0cyaHVxWWJV?=
 =?utf-8?B?UGdiMnQrTHJDNTJVUTZLblJRMEFxNW9sTkZLcFMwaUlzK2JTcGhybWJBamlM?=
 =?utf-8?B?YnVjL1dnY3RsdktPM2NFYkE0MURBTHU0MXhFNDg1cVFBcjVlUldUYW9ia0dD?=
 =?utf-8?B?YmhMcnJmOU85WS9Ic0k3cHEwUWlWWGNxdVlqUXFSbklzOUpTOXI3azBMREg5?=
 =?utf-8?B?MXRjOGRUZFdETlNJNzJlVDRYQi94cFk5ckRKMkUzM1pSMDh4UmpKdE94akU3?=
 =?utf-8?B?L2hiZ3ZQWjAzQjhVMnVMWXdzVlE3VW5WdloyMlVZQU5NNTMvN3h2UFNNUktx?=
 =?utf-8?B?cC9TTjN5WTI3Q3BzS2s1RFNKcVZqTHA0YVU0WE1yNWhxTVhlVlF0WEJDTmJM?=
 =?utf-8?B?VnArWDhnK1J6VitObEpXSlUrcTJEY2V4VkpRa2RESFV2Z1lYL1JCVVc5VUpV?=
 =?utf-8?B?SkU4b2FlMjJhOU9pbEEwOEhRQ3JaSWVnd3BqbDlkSGNNb0tiR2tydTdqMC9I?=
 =?utf-8?B?cVFzTmFLVml4TTQxOHUyTU51VC9WRGZ5QlBRN29HZ2sxVGxIRG05Rm9oRUhL?=
 =?utf-8?B?a3loN3c4OWpjMmJiYStRSWN5M3lhZExDeE9sM1ZVZERCcTBkVm5sYmREY2Zy?=
 =?utf-8?B?NXRkYjNwQ3VYOE9LaHdsNTE2akxFKzc3SGpFc3BSOWVYWXVIOEFQVGZJWjJH?=
 =?utf-8?B?WFl4cFpWK1ZyYWR3RVlockhTZ2ZCMWFWSHRSb1ZJNElBUHpmczh3V2VWVWFR?=
 =?utf-8?B?RnR4aEgrZktVVlZFT2UwU2VjZnkvOERNUTBGb1MwRCt3S2g3MHlnRjVwOGZm?=
 =?utf-8?B?MFZhQ2FnYXMvdVg0cmRIaTdhSmFiU2hITXJNaGplb3k4ek83aElXYU1NSTVL?=
 =?utf-8?B?cm5Gams0V0xvbzZrS0JXNWQ1eVJUWkNSSTl2bUpQenNYQU9FL0V3amovUjdt?=
 =?utf-8?B?MkpJUjNDbjZWL0RTdWNhYm9xSXl3TURPb05FYVlLRTZNU0tNQi96cVdXK0hX?=
 =?utf-8?B?MktMSSthZVFpaWhvblNZS1hXSzBSOE9NeHZpTDk2bWdXNHR0ZlFtT3hCcStp?=
 =?utf-8?B?bGNkWjVoVGlOaWp4Y0VQclNqd3hwSWdpRzEvUW9XMi9teGxHcHJBdDZSYWFq?=
 =?utf-8?B?K1dlUElrRERvdVIvemplSFlMRjJRZWVFNUNkeTM1eW9saGxKQ012SHNGQW1X?=
 =?utf-8?B?RjlwYjg2ZEZtT00rbG8zWDlQaTUwUDZMTXJpbTZxVFc2SmYxY01lcGNTM2F0?=
 =?utf-8?B?N28zY2QwdXNuRjFBdHU3MHlpQ01VYUUvNmt4c1VISG9BWnZ5VzkvYXdzZy9v?=
 =?utf-8?B?WHdtbEwvdGowSkVTZmZEYkswSUIwNkdSVzVNNGQzdENsNC9OZnBobHpxSzF4?=
 =?utf-8?B?QWdhU3JKUy9kTnVuSXh4QTJZS1FjY280UTRyRXV0OXVEQXE0SjZET1BmRERW?=
 =?utf-8?B?VkluMlloQlFXbXBGaGJNRjU4TGJOcSs3WTUxczNicElVT0xpRmRYRjM5bWZr?=
 =?utf-8?B?ZXQ0QkdkY2F6NGlzaHhMMU1nMWpleVJFSDlod0NNSG9oQXcwdDBWclhIT0pW?=
 =?utf-8?B?Q0FiYzVZMklwZElzcHd0d0dZdkZBNms3Z0dyY2VmUUw0QklnZExPSkJoNzI0?=
 =?utf-8?B?WjhvMEpqK09NWmJJYXF4Vno1SHg2VnRrdE5HS1VQd3lDTzdLNVV1M05CUStB?=
 =?utf-8?B?bFJqanNEcFpQcmlwZktmeCt6NkIzMUF2bUIrYjhla09SbjgrKzZQSkhTRXZT?=
 =?utf-8?B?eUVMamJWMDVZWEkwdEFzYWVPQmFOTVZ4NEh4OVRhSjB2ckNUQmZoVmpnVmFx?=
 =?utf-8?B?a3VxemxPRmpaa2JPSWVQREtnZXRzM0RBSnJPenlETmRNVnZHcll4cVlkMzhx?=
 =?utf-8?B?akp1cEd0eUJUckR2TFJqeFJlY3RmcW5hVnpyM3JrVzFqSDdtVTFEZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: T3EkOHJxDQchA2lKdF2l5wTqIrgJaLibtBXCMsK1DAJ4Vdd5lFFqubIIUNAGcn6aixLB0qshGjn8wjLxqL7MNYsTxUV9wAwlDg3/Ho+4uc2o06x1C4ttMBYvHJb+wOcmN76U5CzwUMI+0wjr9OBnEB3Qr5mkWk4kC4P9d2Mk4pAesa4u2VtoezUAPZ6McvLDuQ/PqlUA+3SAW4ByE7U/1o3nJYfurQJqey8suVmjeJ59UvBLmqJjdx4wfyQU2jopcNsD16G7/KwVdhUyKGp87GN4tMHkE3cf4+pVyaJUQ4BluKlYbOa3MRDqjyckYHE0F4NeOlyN0AICxvs5stGk6Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9301.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2bb41f5-0d75-4a2f-b10d-08de8e456b14
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Mar 2026 10:16:33.3508 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Bwk2n7PFMvjLCP/SFMWtyimNzXZZXG0hsEpB6b6a5npXcC4qWVCRuACS/GAC6+2a48J9o+Dyf9Y8ttkNL9ZD+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7915
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774865803; x=1806401803;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+cZ2/bZQBmXo6hlusMmTrARjcc71lB3FXm3Cot/bWWU=;
 b=fyQ9I3eTaEJcYRAe1VeQYCyXDI3i/5hp8zYy78HKNHB50uFPx4k3fA+F
 4P7zzJaY/Qt+7sC0Nn/S6B7tfQZ2I1ylTY1pPE0uwDMIJnzDJgzzO18Il
 YIB+bgHlzaReF6YkAl6sMEuO1IcqB7ILdGQfpfrNGyap4Yx/JZzLlHzZY
 bxYnKUG9R4i6iSsyrdD8IvpcSpn3ZZOeMNCK/WG1HZDFkVf3/GaLPMBTb
 Ac4RztrS2VCYb7HVnvT5cwdrKqoQUx5aoomPPRPCPAEtuEs/sVQ4AcHtG
 BB+CQRhRNV9m9jZ+8moj+jUXIo/ebWMaAIvDHdXOMxi0q6BYV2u4Mc6lG
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fyQ9I3eT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3] igb: remove napi_synchronize()
 in igb_down()
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
X-Spamd-Result: default: False [0.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:maciej.fijalkowski@intel.com,m:advoretsky@gmail.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:kurt@linutronix.de,m:stable@vger.kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[intel.com,gmail.com];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[patryk.holda@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[patryk.holda@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[9];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 3E5FF359028
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLXdpcmVkLWxhbiA8
aW50ZWwtd2lyZWQtbGFuLWJvdW5jZXNAb3N1b3NsLm9yZz4gT24gQmVoYWxmIE9mDQo+IE1hY2ll
aiBGaWphbGtvd3NraQ0KPiBTZW50OiBGcmlkYXksIE1hcmNoIDEzLCAyMDI2IDEwOjI5IEFNDQo+
IFRvOiBBbGV4IER2b3JldHNreSA8YWR2b3JldHNreUBnbWFpbC5jb20+DQo+IENjOiBpbnRlbC13
aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgTG9rdGlv
bm92LA0KPiBBbGVrc2FuZHIgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPjsgTmd1eWVu
LCBBbnRob255IEwNCj4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgS2l0c3plbCwgUHJ6
ZW15c2xhdw0KPiA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IGt1cnRAbGludXRyb25p
eC5kZTsgc3RhYmxlQHZnZXIua2VybmVsLm9yZw0KPiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVk
LWxhbl0gW1BBVENIIG5ldCB2M10gaWdiOiByZW1vdmUgbmFwaV9zeW5jaHJvbml6ZSgpDQo+IGlu
IGlnYl9kb3duKCkNCj4gDQo+IE9uIFRodSwgTWFyIDEyLCAyMDI2IGF0IDAyOjUyOjU1UE0gKzAx
MDAsIEFsZXggRHZvcmV0c2t5IHdyb3RlOg0KPiA+IFdoZW4gYW4gQUZfWERQIHplcm8tY29weSBh
cHBsaWNhdGlvbiB0ZXJtaW5hdGVzIGFicnVwdGx5IChlLmcuLCBraWxsDQo+ID4gLTkpLCB0aGUg
WFNLIGJ1ZmZlciBwb29sIGlzIGRlc3Ryb3llZCBidXQgTkFQSSBwb2xsaW5nIGNvbnRpbnVlcy4N
Cj4gPiBpZ2JfY2xlYW5fcnhfaXJxX3pjKCkgcmVwZWF0ZWRseSByZXR1cm5zIHRoZSBmdWxsIGJ1
ZGdldCwgcHJldmVudGluZw0KPiA+IG5hcGlfY29tcGxldGVfZG9uZSgpIGZyb20gY2xlYXJpbmcg
TkFQSV9TVEFURV9TQ0hFRC4NCj4gPg0KPiA+IGlnYl9kb3duKCkgY2FsbHMgbmFwaV9zeW5jaHJv
bml6ZSgpIGJlZm9yZSBuYXBpX2Rpc2FibGUoKSBmb3IgZWFjaA0KPiA+IHF1ZXVlIHZlY3Rvci4g
bmFwaV9zeW5jaHJvbml6ZSgpIHNwaW5zIHdhaXRpbmcgZm9yIE5BUElfU1RBVEVfU0NIRUQgdG8N
Cj4gPiBjbGVhciwgd2hpY2ggbmV2ZXIgaGFwcGVucy4gaWdiX2Rvd24oKSBibG9ja3MgaW5kZWZp
bml0ZWx5LCB0aGUgVFgNCj4gPiB3YXRjaGRvZyBmaXJlcywgYW5kIHRoZSBUWCBxdWV1ZSByZW1h
aW5zIHBlcm1hbmVudGx5IHN0YWxsZWQuDQo+ID4NCj4gPiBuYXBpX2Rpc2FibGUoKSBhbHJlYWR5
IGhhbmRsZXMgdGhpcyBjb3JyZWN0bHk6IGl0IHNldHMgTkFQSV9TVEFURV9ESVNBQkxFLg0KPiA+
IEFmdGVyIGEgZnVsbC1idWRnZXQgcG9sbCwgX19uYXBpX3BvbGwoKSBjaGVja3MgbmFwaV9kaXNh
YmxlX3BlbmRpbmcoKS4NCj4gPiBJZiBzZXQsIGl0IGZvcmNlcyBjb21wbGV0aW9uIGFuZCBjbGVh
cnMgTkFQSV9TVEFURV9TQ0hFRCwgYnJlYWtpbmcgdGhlDQo+ID4gbG9vcCB0aGF0IG5hcGlfc3lu
Y2hyb25pemUoKSBjYW5ub3QuDQo+ID4NCj4gPiBuYXBpX3N5bmNocm9uaXplKCkgd2FzIGFkZGVk
IGluIGNvbW1pdCA0MWYxNDlhMjg1ZGEgKCJpZ2I6IEZpeA0KPiA+IHBvc3NpYmxlIHBhbmljIGNh
dXNlZCBieSBSeCB0cmFmZmljIGFycml2YWwgd2hpbGUgaW50ZXJmYWNlIGlzIGRvd24iKS4NCj4g
PiBuYXBpX2Rpc2FibGUoKSBwcm92aWRlcyBzdHJvbmdlciBndWFyYW50ZWVzOiBpdCBwcmV2ZW50
cyBmdXJ0aGVyDQo+ID4gc2NoZWR1bGluZyBhbmQgd2FpdHMgZm9yIGFueSBhY3RpdmUgcG9sbCB0
byBleGl0Lg0KPiA+IE90aGVyIEludGVsIGRyaXZlcnMgKGl4Z2JlLCBpY2UsIGk0MGUpIHVzZSBu
YXBpX2Rpc2FibGUoKSB3aXRob3V0IGENCj4gPiBwcmVjZWRpbmcgbmFwaV9zeW5jaHJvbml6ZSgp
IGluIHRoZWlyIGRvd24gcGF0aHMuDQo+ID4NCj4gPiBSZW1vdmUgcmVkdW5kYW50IG5hcGlfc3lu
Y2hyb25pemUoKSBjYWxsIGFuZCByZW9yZGVyIG5hcGlfZGlzYWJsZSgpDQo+ID4gYmVmb3JlIGln
Yl9zZXRfcXVldWVfbmFwaSgpIHNvIHRoZSBxdWV1ZS10by1OQVBJIG1hcHBpbmcgaXMgb25seQ0K
PiA+IGNsZWFyZWQgYWZ0ZXIgcG9sbGluZyBoYXMgZnVsbHkgc3RvcHBlZC4NCj4gPg0KPiA+IEZp
eGVzOiAyYzYxOTYwMTNmODQgKCJpZ2I6IEFkZCBBRl9YRFAgemVyby1jb3B5IFJ4IHN1cHBvcnQi
KQ0KPiA+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnDQo+ID4gUmV2aWV3ZWQtYnk6IEFsZWtz
YW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KPiA+IFNpZ25l
ZC1vZmYtYnk6IEFsZXggRHZvcmV0c2t5IDxhZHZvcmV0c2t5QGdtYWlsLmNvbT4NCj4gDQo+IFN1
Z2dlc3RlZC1ieTogTWFjaWVqIEZpamFsa293c2tpIDxtYWNpZWouZmlqYWxrb3dza2lAaW50ZWwu
Y29tPg0KPiBSZXZpZXdlZC1ieTogTWFjaWVqIEZpamFsa293c2tpIDxtYWNpZWouZmlqYWxrb3dz
a2lAaW50ZWwuY29tPg0KPiANCj4gPiAtLS0NCj4gPiBBZ3JlZWQsIHRoYXQgbG9va3MgY2xlYW5l
ciDigJQgbm8gcmVhc29uIHRvIHRvdWNoIHRoZSBOQVBJIHBsdW1iaW5nDQo+ID4gd2hpbGUgdGhl
IHBvbGwgY291bGQgc3RpbGwgYmUgcnVubmluZy4NCj4gPg0KPiA+IHYzOg0KPiA+ICAgLSBSZW9y
ZGVyIG5hcGlfZGlzYWJsZSgpIGJlZm9yZSBpZ2Jfc2V0X3F1ZXVlX25hcGkoKSBwZXIgQWxla3Nh
bmRyDQo+ID4gICAgIExva3Rpb25vdidzIHN1Z2dlc3Rpb24uDQo+ID4NCj4gPiB2MjoNCj4gPiAg
IC0gUmVwbGFjZWQgMy1wYXRjaCBzZXJpZXMgd2l0aCBzaW5nbGUgbmFwaV9zeW5jaHJvbml6ZSgp
IHJlbW92YWwsDQo+ID4gICAgIHBlciBNYWNpZWogRmlqYWxrb3dza2kncyBzdWdnZXN0aW9uLiBu
YXBpX2Rpc2FibGUoKSBoYW5kbGVzIHRoZQ0KPiA+ICAgICBzdHVjayBOQVBJIHBvbGwgdmlhIE5B
UElfU1RBVEVfRElTQUJMRSwgbWFraW5nIHRoZSBfX0lHQl9ET1dODQo+ID4gICAgIGNoZWNrcyBp
biBpZ2JfY2xlYW5fcnhfaXJxX3pjKCkgYW5kIGlnYl90eF90aW1lb3V0KCksIGFuZCB0aGUNCj4g
PiAgICAgdHJhbnNpdGlvbiBndWFyZHMgaW4gaWdiX3hkcF9zZXR1cCgpLCBhbGwgdW5uZWNlc3Nh
cnkuDQo+ID4gICAtIFRlc3RlZCBvbiBJbnRlbCBJMjEwIChpZ2IpIHdpdGggQUZfWERQIHplcm8t
Y29weTogZnVsbCBFMkUNCj4gPiAgICAgdHJhZmZpYyBzdWl0ZSwgZ3JhY2VmdWwgc2h1dGRvd24s
IGFuZCA1eCBraWxsLTkgc3RyZXNzIGN5Y2xlcy4NCj4gPiAgICAgWmVybyB0eF90aW1lb3V0IGV2
ZW50cy4NCj4gPg0KPiA+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4u
YyB8IDMgKy0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBkZWxldGlv
bnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Z2IvaWdiX21haW4uYw0KPiA+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9t
YWluLmMNCj4gPiBpbmRleCA3YzQxZTMyMjU2ZmEuLjA3OTM4NDJjYjkzNyAxMDA2NDQNCj4gPiAt
LS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYw0KPiA+ICsrKyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5jDQo+ID4gQEAgLTIyMDMs
OSArMjIwMyw4IEBAIHZvaWQgaWdiX2Rvd24oc3RydWN0IGlnYl9hZGFwdGVyICphZGFwdGVyKQ0K
PiA+DQo+ID4gIAlmb3IgKGkgPSAwOyBpIDwgYWRhcHRlci0+bnVtX3FfdmVjdG9yczsgaSsrKSB7
DQo+ID4gIAkJaWYgKGFkYXB0ZXItPnFfdmVjdG9yW2ldKSB7DQo+ID4gLQkJCW5hcGlfc3luY2hy
b25pemUoJmFkYXB0ZXItPnFfdmVjdG9yW2ldLT5uYXBpKTsNCj4gPiAtCQkJaWdiX3NldF9xdWV1
ZV9uYXBpKGFkYXB0ZXIsIGksIE5VTEwpOw0KPiA+ICAJCQluYXBpX2Rpc2FibGUoJmFkYXB0ZXIt
PnFfdmVjdG9yW2ldLT5uYXBpKTsNCj4gPiArCQkJaWdiX3NldF9xdWV1ZV9uYXBpKGFkYXB0ZXIs
IGksIE5VTEwpOw0KPiA+ICAJCX0NCj4gPiAgCX0NCj4gPg0KPiA+IC0tDQo+ID4gMi41MS4wDQo+
ID4NCg0KVGVzdGVkLWJ5OiBQYXRyeWsgSG9sZGEgPHBhdHJ5ay5ob2xkYUBpbnRlbC5jb20+wqAN
Cg0K
