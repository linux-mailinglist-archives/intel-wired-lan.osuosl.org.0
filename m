Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yMXYDGRpxGlEzAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 00:01:56 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA7D32D381
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 00:01:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 69444607DB;
	Wed, 25 Mar 2026 23:01:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JCJhwWjRsZQI; Wed, 25 Mar 2026 23:01:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 15571607A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774479711;
	bh=8DsiJWEdDfJ9SwO/kT0kJ8dqR83SM5RsQqV+QbpmGWA=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VS1hQvIFeJtab7IxW5OI/1SiD3qs1dE6TGHydPRy2IDCdqzQxWCiOqTSqE7dLMxj6
	 tW52gJDtI0p85rl2gLznoy/GoMdGOrVx6jmWtUOKFXjtgEsK1x+E81VNnhd27sWEWQ
	 2eA0CGV45pUDIJXc0IgRJfdZ0Juj8uTkbiYI7CKqBAxQF+nlbxsKvn3NeigD1j5sKY
	 21VcempNSJlSXwVWqYIKNFc559xrn0k32MK1s4Jqt/t/VvUfylGzSunVnSHalLzgh0
	 BONGsqP18b3XoMPi10UUnXkdCz66LuggLzHg1Onxs+M2dPn6McJ4vmy6RfK8mmIgZj
	 YdGXDPbkZNTuA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 15571607A2;
	Wed, 25 Mar 2026 23:01:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A83B8F5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 23:01:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8DE8A80EAF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 23:01:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gAB31OwjtbNL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2026 23:01:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A14C080E7E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A14C080E7E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A14C080E7E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 23:01:47 +0000 (UTC)
X-CSE-ConnectionGUID: rmHTQuH3R4KnvjbVNceaog==
X-CSE-MsgGUID: NmowwtDgTf6V0xETPITlGQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="63080286"
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="63080286"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 16:01:46 -0700
X-CSE-ConnectionGUID: k6EuCWH+SDyOGYQnlrpEYg==
X-CSE-MsgGUID: RYq+kXc7R32hZ6/wmS9VIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="255313760"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 16:01:46 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 16:01:45 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Mar 2026 16:01:45 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.17) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 16:01:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KVovvo5JtO6yaSPGbXpyTp3YJH/XPe4TlquCtAaN/KZk0XJUwviLf+wua+R1uVWWRncSQZ70f/tDfSQz3ilABIlSTskBYnaD2O8rIihR1l5Gzn1nadvzPaZAbHFpbaF2epN7wNpLjYRDPZdTzybBVj9PmTs63h8wtZqW00sAdmJmuO1QVvoMuidWA8gYjYF7JXJxK8O+45IuIvMn12xoU36ZHnGWYrf9LpXd8Lg7ObruXg5JwWYFnfz8TFWa4OifpXgEpQviangHHQaZXYlkKZsqTo7pVeqMIYs1rskWr8b3VPPtdd6f4sUuoXmvbiGRhP6AN2Bl/25wgjGYdGpIZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8DsiJWEdDfJ9SwO/kT0kJ8dqR83SM5RsQqV+QbpmGWA=;
 b=AhZV8kWdc2H97FXVq0SQIcnFExl1XL28+Fil6C/Sja2SAhwIj0E8VzN5UZLtQZ3x5n1aJoU2moBGKA6FFdnDESzVIL/9lQWMLLqIeojwVL8vCmIDK9jFos8TsQrYdnRUS+qWgCk2UpZmo7kocSaSRf8jEveqimPoi2E8cmyPUymEhBfdol7RggUQRdUbWgNL8x2wb6hs9j23/Yc1xz1+kLwfX566SAl7Mw73WSoAO1UwYkEYkatW7wTDRkQ9uJtf9NOwC4ySceEgcIgTySRrb8BI804UF12toOSZVNrGrDzM109jP2/YjYFkg9Tiqb6V2Rfb2g45ici3aFKPQ2moGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 DS4PPFAC42FDD50.namprd11.prod.outlook.com (2603:10b6:f:fc02::46) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.6; Wed, 25 Mar
 2026 23:01:43 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9769.004; Wed, 25 Mar 2026
 23:01:43 +0000
Message-ID: <3a0f74f0-7031-43e3-8268-473badd9f1fe@intel.com>
Date: Wed, 25 Mar 2026 16:01:40 -0700
User-Agent: Mozilla Thunderbird
To: Fedor Pchelkin <pchelkin@ispras.ru>, Tony Nguyen
 <anthony.l.nguyen@intel.com>
CC: Agalakov Daniil <ade@amicon.ru>, <lvc-project@linuxtesting.org>, "Roman
 Razov" <rrv@amicon.ru>, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 <linux-kernel@vger.kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, "Eric
 Dumazet" <edumazet@google.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Daniil Iskhakov <dish@amicon.ru>, "David S. Miller"
 <davem@davemloft.net>
References: <20260318120512.687149-1-ade@amicon.ru>
 <20260318120512.687149-3-ade@amicon.ru>
 <5128e54e-4164-4cb1-8ae1-e58d6a40c005@intel.com>
 <20260325180127-711d8e8fbff840853081f11e-pchelkin@ispras>
From: Jacob Keller <jacob.e.keller@intel.com>
Content-Language: en-US
In-Reply-To: <20260325180127-711d8e8fbff840853081f11e-pchelkin@ispras>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P223CA0007.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::12) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|DS4PPFAC42FDD50:EE_
X-MS-Office365-Filtering-Correlation-Id: 2a287e7a-6b2f-44ff-4ccc-08de8ac27b57
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: CqzVksKWvFLcB44fEgUGGZZmzQWyvUZInOiuu19VdMMEYaBsAYVjoB2q5u7Cu8rvXVgJe6rC6BHT7m7xJmKxz1xkfK+pFBo2pzZG3qlvHqu6yfRgOK+OwOHNoLyHsGjwwRUpTL49VBXI0LL19PA9oMZ2CK0pbYElymE7gp5R40kZzoLwd7jiYNn8BePsW0HVebSN7wcBcIpas4qN3SrTj4ibP1xsENkOxeDkEqLpY64foGTsBRSipJWYSROSxay5j46rzE+g2kYG7etuC2LqNK8Vf68w77uN/v8I9AcIo2c6qkojylzMGDlydnHYVEBdC3T5zgGxtX+fm27g2DNks4e0b6vEmvak0GfGwi9+2Y2NQEwCgaAGN4FaHrJg/5wkCWO/hbSBY0E2n9g/toIydIRJ4ZtKWOEWJ3CBjHm6F12mZ6TAKflRKGwQJfsPlPf8S2C1JVqWCXrwgjkooPsXjhT1KqCG1gJ1Md7kBQPRPjUYYGWCPTMAU2dA/0VOSQO00XMzT4Qtwnk125YeDaQCTNmSeHnuW8Oi54ZjPdbQI1SNesI7FvNT9HPjOEKWyBuVngyivoBtLDWk+knYf61KFv2+nPVbHmU1GtzU+uWCn9FV873qLPjgGaKdXRPbk374piUsdLJG7h1pegfpdszoCFscfE7HcM3pSU341M6Nm2Qu9Wl9aMesZ4cJcfNZAAPcJnS/zpaNe3M7yKHPcH+ZIdPEMTNAZmz6RUTeuQscxRI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RnZZNTN0Qm9kbTNrdEcxMTAwZjQ3T1BBS3pxcnpmY2VxYWZBT1E1V04vQW9W?=
 =?utf-8?B?QTRYbFlsdG9FVGo5ckoyMzk5K0d1eWJHeVZycWdIKzc3UTI1a0pJK2R4a2pX?=
 =?utf-8?B?N2F6UkdNTU80MmVSdGpYYXBFYWhTTllGSHFTZEZKWS8zL2VrYmxiRlowUW12?=
 =?utf-8?B?ZXNTbEtQTnJwYmQwbFovMWRoYUZrbmVaSGcxOGtOajFGbW1ReS9vZmlHc2NQ?=
 =?utf-8?B?ZHlZVTBEamFGREwxZmZXMitVbUZTRHEydXF0SkZ5Ykt5R0E3ZkJQMWlSYlNB?=
 =?utf-8?B?Y3hNQ2tmQUIzRkZacmlENFZUS2hDb1llOHMvbGFJMzVibXZCY3B2WlZtVldR?=
 =?utf-8?B?UGtlb3dhaG9UQndhNXBKRk1jYnBHVWRxVXQ3WkJYS09XUGRzSWZOcmlRYzFv?=
 =?utf-8?B?QzFUKzRlNTJjeERCdDl1dkxIcXQ1Z3NLTzVKR0Q5MkZ3bElSZHlVQWwwblRW?=
 =?utf-8?B?bWZyVEczNTZGWnUzNzBWdGRSM1BjU1htWnJUa1R0R0E1cDUraXdQS3hGOStE?=
 =?utf-8?B?cjY1bElQK29XWDNNUzRYUDNmN0NHQ0cvMXZwNjBXUW1uYzBjeFVNMkRPdUI4?=
 =?utf-8?B?c3NRMDRMVHhlWllqRVl4QUdiTG5Ea3FQWWM3TmU0QVg5TC8yMm9mVzBQQnpl?=
 =?utf-8?B?MElTNUxka2lYUmMxdEpwQzRONVp0cjhlWjhxU25iVDRFcVByUUs2Nmtha0F2?=
 =?utf-8?B?aUt4TTRSV2tpUUMxa01HVE4vU0YrdjZlQmlMMzBwU2pXejBZQ2tpRWw3QXMr?=
 =?utf-8?B?M3ZHWUkxRGh5cTFaWFZRMXZoNDVnbzBDT2JxWERyTjQya3o5d3R2UjVhZFIy?=
 =?utf-8?B?UXZ2bUowZDZ3UDFVQjN2T3pZOWZ6NVR0Ky9TdHh0UytIelR6THZxWVFPdHZo?=
 =?utf-8?B?UEtxam42K09tR0FadFpNT3A5NEh2MFo5RlpMOGZvaVFkYnNWOW1BaVl4ZUFF?=
 =?utf-8?B?cVRQUERIWWQ0cTRvRFpJcm53d0Y0aE1VcTBzRDlkUG9NRHNnQWtuRGFOZVRU?=
 =?utf-8?B?RC9xQ0JCQnIwOUtQdjVPVzk2b01UbTFTYU9oOGFNK0Q5MkkreDg2MDZ3U3RL?=
 =?utf-8?B?ODV6U1ZCNzJlQkRPZWM0Yms3V3hTTTRad2NiQ2pIQmNhVU0wMXo0Y3dmZm9P?=
 =?utf-8?B?VUxOZ1REZmZWMk9ISE9kdjNraERGdWVBNWtpOUdXdWprd0Z0Q0xobjFUYnVD?=
 =?utf-8?B?SzVHYmxBS2t1STliQzlURDc2VnVZd3BudUlyQXdOUXZZTmlsYldOQWVpYnBW?=
 =?utf-8?B?MkE3ZU5HWWNjWDBvOHJxbTBGNWRKRFd1TTZseEEwRW1HVHpRanpmMktJemZO?=
 =?utf-8?B?clJDSk56Z0JnZ3M0RU96ZEI1Q3dSWmxmcmxHS0FYVXBkamFmdDVSZlZZL3Vx?=
 =?utf-8?B?cjZnSEZ2c1FqUEdYcHh0STdTWDZXVldhVmRnRnF4UW9lY3dmMmt1ZXBhME5T?=
 =?utf-8?B?eU5rd2l3amlxMHAySG9iamsyaUFTelcwWVJkM0VRQWgweE96OGZSSjZDWVNR?=
 =?utf-8?B?c3JsbFU3YU9MbFJMMGxDaWxqOWVTVlhKSEwxMzYxMVBNUkUvR01tNys0TlNr?=
 =?utf-8?B?YzVRcWdiRmc5NitBUjgxZE02aHBIZEdzakF5RFEweDZCR2hBMUlFZTV1ZWFS?=
 =?utf-8?B?Q3RCSERXdUJjSnIxdlVYS0xNUy9iTExzdmtOdGZBWEVMbmFxRlp6RHVZYmx3?=
 =?utf-8?B?VGREa3NTVEFpYTJnRklLanZsYjNEa3ljL1QzMmkya01KU0JJRHphUGV0cE1E?=
 =?utf-8?B?b0xhM216OExiSGg4Y0hGSzYrdzVrRW1lRGtuMWVCTVEyVU9QcVAzZGNXam0y?=
 =?utf-8?B?STBuN2ZKdVcyY0ozVUc4NktOMmlsUURVR3BYSzFIaURadE5FTjlRVXBSNlZm?=
 =?utf-8?B?QmF0dWczc2h4cE45eGZyN0lGTjZzckhSQzlkMlBBZzhOZGU2cmpIYnJ5b3Bz?=
 =?utf-8?B?MnFwT2thQTZ5MkVoWDE0cmhIaGVOK0hPb2hGR1JuZlQxT1BwajhwSFpPbXFp?=
 =?utf-8?B?WjRFZjd3RTRybFRPZ0FTbnNKbEg1Y3F3c3lhRjUydFpNT0RTUFVxQmh2Z1la?=
 =?utf-8?B?aWZ2cUpFMUlYU3R5V25kWlVlMXNEY2k5R2hBWUFlc0hmU3RmSXpmK20zTndJ?=
 =?utf-8?B?cTBscGdCWmprdmtuRnM5eW5aMlJTaFR5WlArVTh1bG13UDBFYkF5aXZidjFk?=
 =?utf-8?B?NUJFckxlSldLUDlsZWI4UHdzMTZWaEh4ZXFZbVRKQ0FHdnZyVW9sMVlPTGpW?=
 =?utf-8?B?QUwrUTUyRWkvZlZzdDJOM1JHVENMZFhFSEdNVlhyK0pZTzE3T3E4dDM3TElR?=
 =?utf-8?B?bE4wRzlwVzdUY3pIbnlweHpIL29ZOVovdnZnVkhkY2haWlhTOWpOVmExdW8z?=
 =?utf-8?Q?P1abSIgXg2GZOTAs=3D?=
X-Exchange-RoutingPolicyChecked: TnV5/TOTKX7kQf5O4Wm2eIElIrE+mn9LzIqijXTnvvnYZdxHRwJGuipfQI4ZpDjfcYyUL0vj9kzHjjG6uyHJf0yLyVOAhJy+h5g+MwUPwa+aUNDQEMKgmqjjsa9IxoXHrsLtEAMUT4SzHqUGlK2KaWgmQovgNcarA6seqBV0skJQgg5JpBtE0UjppVIBYdq1PST+nPOJ4HtYocatrHIM8ozqCX1yyrxgLgMOrloBCZ47X9fA4qN7M1WzJEhKtWgL8jI1wQstvnVwLKJVVnYxcj148BPno8wlBuK0MIP47m8UOAQTQmOulZoSacSzGw3DobxF2pTd3ex0XtcH3kLMuA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a287e7a-6b2f-44ff-4ccc-08de8ac27b57
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2026 23:01:43.4221 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: H1eQaP+wrycdVOBXb2IT4WFV+riV73FMJp+4ixTl2e8DiIN74UsHmp9TdaCdCGswKaMcfiSAtcIDZMx3RTuYng4RjE4PqPxKXf7iUhiD1kQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFAC42FDD50
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774479708; x=1806015708;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zZFpMPXyH8bf7nhyWVbPE3veNLGP4B8YQp4eog+MflM=;
 b=DBsSt9a9ALyltj6GPF7YCg0QfY4pYifYf9gTmWnqLcjlhu7qwDf8Dy8+
 Q4nvcBvLR1QHgG2imgbcdx8S3n5Zo730WuEgsvOLhkWlVSdspdKm4kEYC
 IJBif0dawWuAS3h3YhmCjFJSHeWO8yehAgqQls0YWeFM+exRGB20Wisy0
 H9JAaZ8f9pXHEy7AKSyc7KRVQGZEVuO0d6CnUKoYcT2SyZpsfQzKXPAZk
 /icZfkie9MPjTStX77oijOL51ZJ8AaQiDkLQVkuETKZ6Onq/jywkieToU
 9pJsje7JAaiaQY2R4CEWkFVwoqrBX1UOTohRr/xyntok7NS3Bp9u5u56O
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DBsSt9a9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net 2/3] e1000: fix endianness
 conversion of uninitialized words
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:pchelkin@ispras.ru,m:anthony.l.nguyen@intel.com,m:ade@amicon.ru,m:lvc-project@linuxtesting.org,m:rrv@amicon.ru,m:przemyslaw.kitszel@intel.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:netdev@vger.kernel.org,m:kuba@kernel.org,m:pabeni@redhat.com,m:dish@amicon.ru,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim]
X-Rspamd-Queue-Id: 0BA7D32D381
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/25/2026 8:19 AM, Fedor Pchelkin wrote:
> Hi,
> 
> On Tue, 24. Mar 16:26, Tony Nguyen wrote:
>> On 3/18/2026 5:05 AM, Agalakov Daniil wrote:
>>> [Why]
>>> In e1000_set_eeprom(), the eeprom_buff is allocated to hold a range of
>>> words. However, only the boundary words (the first and the last) are
>>> populated from the EEPROM if the write request is not word-aligned.
>>> The words in the middle of the buffer remain uninitialized because they
>>> are intended to be completely overwritten by the new data via memcpy().
>>>
>>> The previous implementation had a loop that performed le16_to_cpus()
>>> on the entire buffer. This resulted in endianness conversion being
>>> performed on uninitialized memory for all interior words.
>>>
>>> Fix this by converting the endianness only for the boundary words
>>> immediately after they are successfully read from the EEPROM.
>>>
>>> Found by Linux Verification Center (linuxtesting.org) with SVACE.
>>>
>>> Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
>>
>> While this is definitely better, I'm not sure there's a bug here since it's
>> being immediately overwritten. Seems like this patch would be better going
>> to *-next as an improvement.
> 
> It's worth stating in the commit message that the uninitialized memory is
> touched with le16_to_cpus() in the loop only on BE systems.  Little-endian
> ones are not affected - le16_to_cpus() is a no-op there.
> 
> Anyway, for the BE case, touching and manipulating uninit memory bytes is
> still in general considered a bug, even if this memory is overwritten a
> few lines after that.  I guess if KMSAN supported big-endian architectures,
> it would hit this, and that wouldn't be a false-positive.
> 
> I'm not aware of the details on how you treat the bugs in these drivers
> for BE-systems: maybe they aren't prioritized and then would occasionnaly
> go as -next material.  But, again, this situation looks like a real bug
> worth fixing on BE-systems.
> 

Typically the bar for a fixes and a net change is that it requires some
user visible behavioral impact. That's where the hesitance on our end
comes from: how does this cause a user-visible bug?

If there are truly user-visible impact on BE system for touching and
manipulating the uninitialized memory, then it makes sense to go to net
for me. I guess "KASAN/UBSAN complains you touched uninitialized memory"
would be such a bug.

Alternatively: is there a risk of some side channel method to capture
that uninitialized data and leak kernel memory? I don't recall enough to
know whether that would be an issue here...

I don't personally have an objection to going through net (besides
fixing the commit hash for the Fixes: tag on the patch that was wrong)
since its an obvious fix.

