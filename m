Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E78AFA4B4
	for <lists+intel-wired-lan@lfdr.de>; Sun,  6 Jul 2025 13:02:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE192814C9;
	Sun,  6 Jul 2025 11:02:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gyes-dPX3IjT; Sun,  6 Jul 2025 11:02:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F271F81511
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751799732;
	bh=remDT9Ev/gYTcRI0iK5nIeUz3jLBE9Xp6rBapAS+0EE=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tFb/674vVByCyOEprhvZuHtbDS2VoQOWwDAHlzyPTIcVYUFVNKLu1pjA7yJzGlRqv
	 tRiNFo9QoPOjTu3kNbZ/nfFqD7uBr6epJ4YVzDu8a2ez0qKTubrRFF9AxJuVWGf4jR
	 8NbzkYGXBxbgxCQUIUxExrE4mhGMzhQYpFcokrEtas3kUd0Sd/uRfTwICiGRhAXthv
	 lI6lXqohQ9XuAjdPG6xVbyFLElPnQl4aUPcZLlTNFOb7MddEaWQypG7mXVkv/Si181
	 wXhgG7cA+BujALS3CUEycQ6u/ZnyOD1rYscjVwadR4IFvoTnwfLKi+/JT9JYb1zRI+
	 H4I2AYD2ILftQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F271F81511;
	Sun,  6 Jul 2025 11:02:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B12AD12E
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Jul 2025 11:02:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A2ED6409DF
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Jul 2025 11:02:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wMgGLazhp4nJ for <intel-wired-lan@lists.osuosl.org>;
 Sun,  6 Jul 2025 11:02:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D5020409BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D5020409BE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D5020409BE
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Jul 2025 11:02:09 +0000 (UTC)
X-CSE-ConnectionGUID: cUwhvugPSRy/0dWgQsE5QQ==
X-CSE-MsgGUID: 25+RWtyJSs+U11RGhgV9Eg==
X-IronPort-AV: E=McAfee;i="6800,10657,11485"; a="65390923"
X-IronPort-AV: E=Sophos;i="6.16,291,1744095600"; d="scan'208";a="65390923"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2025 04:02:09 -0700
X-CSE-ConnectionGUID: 5urWLrXHS4SjTQ6A5WBflA==
X-CSE-MsgGUID: loXheOIJQtS+Yn6NUTiu7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,291,1744095600"; d="scan'208";a="154396179"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2025 04:02:09 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Sun, 6 Jul 2025 04:02:08 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Sun, 6 Jul 2025 04:02:08 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.85)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Sun, 6 Jul 2025 04:02:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JqmowpwEFglVfyNoB9osSCJAAH8+cmFSA3D6XapycImNHWtzFe2LjC7el8uyUWV7+HLUIabhFETnPn7VDcw6tMVj6doALi4uEkODC1NAJR/clfFhqIqr/2c9uMid8AopInoYGHbPnL6y5CK9Wsc/jFV/7DmTHC/a4YKnXWsY9X88UAcC33Xf+ATC1O3rPV2dbAUB6gylpczUz6sDFIA5PJ9+Dq/FljPpVytxxwar9O3pGpDm3LeORjcT7S2CpdtlLxBm3yQ6seOGARmUtovvmaPlshDe7SKI39xmgpiiyMgwi2HUqLpcdIgA59nY6XxDzObGnToDFe2b2ulgrnX/DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=remDT9Ev/gYTcRI0iK5nIeUz3jLBE9Xp6rBapAS+0EE=;
 b=DjYZ2cdTqGUn4RJqCIRbO/9oR3XOWMDOMvXCxwEr2LQ2dsD3DYAI9FlF/foemHU9oizimhIp6KPh8OS4Cr2dJK8m/x6zM1BG/bHIrhEyDQNuUeo3Uq8yqvs3GRXrcxzM1dkQ/foddIPxQ2JATBOXnX0J8BpsvK2P0KU+ZeCnr7Hh1JT5SbjG3cpDg7JV6bw1JiMNSoXNuph+W7MrsPOeRxdagVRoP+SLDoowDRJqsUE1qzghWjdAEGtbJSAGMmt9nqw+mAfmxs0RcKZ8KTF3VC38ev+/4nFLx2JNvALrNAF4zM/P1M0IoRDkSsrnHBt2px5U/Uko7Mm05ow2k0LHvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6307.namprd11.prod.outlook.com (2603:10b6:930:21::20)
 by MW4PR11MB6787.namprd11.prod.outlook.com (2603:10b6:303:209::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.22; Sun, 6 Jul
 2025 11:01:24 +0000
Received: from CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14]) by CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14%5]) with mapi id 15.20.8901.024; Sun, 6 Jul 2025
 11:01:23 +0000
Message-ID: <215f6090-d421-4fe2-b99e-e91cb1bc26a0@intel.com>
Date: Sun, 6 Jul 2025 14:01:14 +0300
User-Agent: Mozilla Thunderbird
To: Song Yoong Siang <yoong.siang.song@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, "David S . Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 "Jesper Dangaard Brouer" <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Jonathan Corbet <corbet@lwn.net>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, "Shinas Rasheed" <srasheed@marvell.com>,
 Kevin Tian <kevin.tian@intel.com>, "Brett Creeley" <brett.creeley@amd.com>,
 Blanco Alcaine Hector <hector.blanco.alcaine@intel.com>, Joshua Hay
 <joshua.a.hay@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Jacob Keller
 <jacob.e.keller@intel.com>, Kurt Kanzenbach <kurt@linutronix.de>, Marcin
 Szycik <marcin.szycik@linux.intel.com>, Brett Creeley <bcreeley@amd.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20250620100251.2791202-1-yoong.siang.song@intel.com>
 <20250620100251.2791202-3-yoong.siang.song@intel.com>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20250620100251.2791202-3-yoong.siang.song@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0029.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::19) To CY5PR11MB6307.namprd11.prod.outlook.com
 (2603:10b6:930:21::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6307:EE_|MW4PR11MB6787:EE_
X-MS-Office365-Filtering-Correlation-Id: 47e8cca3-84dd-4e3c-d6cd-08ddbc7c7201
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|921020; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Ykh2d3dvRlVmTmFuTjUvb3k4ZlNXMVJ2T0NLZkN4SGxkUjBJMEpnQnhnVEUr?=
 =?utf-8?B?UzNtMUlYSWF4MVZIbWZVRFBFTHRGbzN6V2tPaEE1Q1JwR3Q3VThoNkwyb2Y4?=
 =?utf-8?B?Uk9LdXYyVUt1R0tldTJ0RjM2WHZzeVltRjR4WTU3ZUZjdi9zR0N2akdLTTBo?=
 =?utf-8?B?OFFnTXM4TEovME1TWE5lanR5dkFsSGNqaEYzRm9DRm1hTDJYU2plNEVXS21l?=
 =?utf-8?B?RDdrTk9JRVhhQzBtUG1VQXJsVzJ3OTRMcFgySFpId2NGMk85SFp1Yjl4Tjh5?=
 =?utf-8?B?UjFzL1VCRzRCbmxSTlRMMGYrOWtvcXhYZ3RXNTZxei9ERCtlNEcraU5QSmE5?=
 =?utf-8?B?OEdTNWJ1YzNqczM0V3RITzlDTXlBMEtyV0lYekJocnRVWnB6TzRpQWdnSitE?=
 =?utf-8?B?ZUNLYVBCRGpvdDJDeTlibE9uaWxxaVd3ZkFKS0JJcUs3THJ3TjZEK1hWanZw?=
 =?utf-8?B?STRUcDY4alIvSmtNVjhxTGZydmhuOXBVWnpRWWY0dU1qam9Oc0ZQYmdXaXhX?=
 =?utf-8?B?cjVDLzg3WWNmN2ZDZkNLWGhSQXpjSGljUndkMEl0NldtZ2QyRmlYRWpmRUIy?=
 =?utf-8?B?ZzdxQzREcnRwOFE1aFJtd1BRM3BpYS9nYndZbHo0dWZaSWNicjdnUGw1eWo5?=
 =?utf-8?B?L1pwd3Evd3czazR6dEdKUzJneWtWdDR6M2ppcVhRWnpmVVpkbmVLa3lndVVD?=
 =?utf-8?B?S25HOXhxRWI3R1dVajFoYTF6cFRwRjZiZktucHRsSHNRQVlwWFg0OFhOS3Rz?=
 =?utf-8?B?MFJOdmVPSlhwWWxsWG40LzBmS0xQNVhhaGN6SGZwWFVWeWd0MG5wVVUwRHRr?=
 =?utf-8?B?dHZFd3Mva0R0a24xek5YRkJwUFZtRGY1Yllxa0pyZzFMeUJYcFVmS05vcXlo?=
 =?utf-8?B?azF6bkl0M2RZUGU3MGNCZXRtNzFrVDMwMm05NUFwT0Q5bEpNZWdleVVybUV1?=
 =?utf-8?B?OVBabFRFUlZpWklHWFlsUFJDUitYQzdDYnBUWDlraDdIZExvVzFCYmhKaUVC?=
 =?utf-8?B?U2YrRHhNdk9zT3pHcFEzR1dwdmVJRTZqbGtwUXI2TUZxY1h5WDVnUmRIeHVY?=
 =?utf-8?B?YkVweHRoU1NrVmdqRnJLMWZkN044OThHYkw4eGZRUHhTd2RDOGNEUysrMHRt?=
 =?utf-8?B?eVEveHpNUFhJdzJwN1o1NGM4ajRKUUVYUWc0MWhlTFYyK2tzWFVHc2hxV05E?=
 =?utf-8?B?MXZpS2ZGNnNZcWx2NGUyVmxnQ29XS3dWWGF4VHBNQXd4UHRqaHVTS1NtV1hq?=
 =?utf-8?B?QTJidVJzcXVwVjFwTXhCMFFUT1ordWZqOC9uR2YyTnNpRUxpRXFFUUtsYmlw?=
 =?utf-8?B?d1gyYkNqdjNaYnIzMC9hdkIzMDVCME1xNmNrTGxHaGt5TFE1OUk1YnovZ3B0?=
 =?utf-8?B?WUczNUdaSmNHWGg0STA3VmtoT2lPY2lZbGlkN1doTGI3Sk4zZUx6dVIwZ1Rm?=
 =?utf-8?B?NGllQmsrWVhNaXlnY2xIbUxkRksxdWtrR3ZoZUZnbDFXbEZiQld4RnkwNExm?=
 =?utf-8?B?aUtseCsvOFBVVzRWZ3ZpRWFDRWY2SzVGVms2RHpkRTNoUXU0aGc3cXJBMHJY?=
 =?utf-8?B?YXZUR1gzY0V6azhqZjMxcDBiZTJ4VE9lZUhEeXcyWU9FQTErY1B0NUR4T25N?=
 =?utf-8?B?U1lTaHJuZUV5dkRJSENhSjZhODZNWGdGdVZscXE4dVdOa1JoNUt3R2lLQXY1?=
 =?utf-8?B?WG5VcHpSVGxYbXhqN3ZtSndGUTRrMnNnSFI0OWJSMUl5bFlNTE43ZWN1OFRR?=
 =?utf-8?B?MWw4Vi9PM2N5TTVrYXFmU1ZmMUhwM1RwYzlmWmNiV1dzZmhsZWVRVnhYN2lz?=
 =?utf-8?B?ZExjS0c2K1NoMkZYYWNmUVRoU1JqSHFZTGQxenNOSStKU3B5ZXVxUHNlNFlI?=
 =?utf-8?B?WDJWVXlPb3d1bzRQUVlwK0FORGdnTkUrOEJ0eDQwNisvTU1EQXdYaGFHQVYw?=
 =?utf-8?B?TzZaNUJ0VFlRZzU2elBPS2RwMHRSSzRFTmhvTmE3d0tpNklxWEE1K1N2ZndG?=
 =?utf-8?B?V0hvQUw5cFpBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(921020); DIR:OUT; SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WkxZVThuS3A3VEhmREFCallSQ0JMQ1p6SEkvcGJqWVBKdGZmdldONFVzbEZz?=
 =?utf-8?B?VGJvYUlSbnZQK2ozcjk5dStEdlhueWsrcE1BRGpKT0pWRFJvN2xrcEVYZUdl?=
 =?utf-8?B?OHZMdzZ5SEtyUXdKd1BRQlBrbWkxRlhMbzh6dDZjSExMbnI1aTRYQlhuTHdl?=
 =?utf-8?B?SHNNUU5wV0pWVER4ZkNTYlhSMSttKzJMTDZ4R3ZNM2IxRnBQeW1YSXlhNmwz?=
 =?utf-8?B?K0R3S3p1OW9QVWZDdStTVURTM2RDUmI5SzBRVDBicHBNVHh5TlBYUnFXQ3JE?=
 =?utf-8?B?NURSNS94MzlscitiTXhmcG5CY1pVMWNWbXJ5VXhSRU9RWDRCTE5nVG9zUW5U?=
 =?utf-8?B?QVBGUytQZWhSMThzTFU4QkJUNEZlUzEvUUtNWWxoVlVhM0Y0Ukt5WHRqelM0?=
 =?utf-8?B?dEZCUnFGVkZUaUdmTXF4VWJsTEZBQkVlMisxV3NqRTdCeUtTd2JoY1lrU1JT?=
 =?utf-8?B?eE1SRXdHbnZqU2tWcVluLzIza1hUNmxldVVGTk4zaUtrY1gwcUtsVmIzd1Vi?=
 =?utf-8?B?Q29YekxxQ3haZjlkdys2clFEaEphWVhMWURFZ2w4c2ZTaCtzSlBrakNXN09O?=
 =?utf-8?B?U1ZCRWRkY0l1Yi9MS1loQUJ0SmhIaW9GTmo4UG56bG1iRGNhbnpPWlhEL3VV?=
 =?utf-8?B?cjdBQTFoeEo3aURpOWYrQVNMMVZKZGdNa3BrMm4rRnhCNHZKYlhNSDZCZDBN?=
 =?utf-8?B?dmV0TCs0WVBCYzJ6bkR0ZjRmRU5ESjNpTmdGSGwwRVdaenJjdXZrK0NzTGRQ?=
 =?utf-8?B?VjIxaVltcVZPUFY5K2dvdTFzNkQ1WjhodEFPUmdQelNJVm51SDA3dGNjWmVZ?=
 =?utf-8?B?N0h3WnpnSERHYTdPd3NWNjJSRjR4TkVobHg0cUJQUHh1V3JYb1lBWXJUNEdG?=
 =?utf-8?B?Wmd3VjhqaWd1WTcxb0MweG0yT1pxdjAySWdQMmlzWGI3eERMdmVpSDZxM1dE?=
 =?utf-8?B?SG1YTEVjMFM2dW82dC9sdE1lYXZ1cFpCVlFBcTFJOU9TS3U3SE9wM3IvMmhz?=
 =?utf-8?B?U0ZlcUZhY1lZQTJDTjBKeU1XSHdjTm5la1BtazUxY2xpQUpsWGI0eGtsd21D?=
 =?utf-8?B?VWt0RUx5R1dlQXk0SWFvdFBPUUxxTTVqclVwRVFsZ3p1ZWtac2hGQXRhckc2?=
 =?utf-8?B?eEpVb1lGeDVhQXlZS254Sm1tWkdtRWhiOHFrb1BvWnRYK0gwa1hkd1BZOS92?=
 =?utf-8?B?RVVGOVIrOGpOK25mbDhyT1A0dFpzUGZkNEVEMWJ5aGczcmNiODQ4Y1dzVmE2?=
 =?utf-8?B?SlBCUEJhM0E0RHpJU1grZnR2WHUrWFkrdGNFbEhLRDBCNGpRenQ0d2hZamI0?=
 =?utf-8?B?RzhFSVYrc3pmN0ZHSUlDNm1nYk4xZkl3YlNjYUFtaUhpalM1Skp2Y2Vrei95?=
 =?utf-8?B?WndFT3FBMHJLbW5wczZScGZRV0FCdVJyclZtWnpZc21LMjlUNDBMZVoyeHZp?=
 =?utf-8?B?Qkl4TFRXeEE5Q1VKSmFlbTN6cnU3bkJNcXcwd2JEK0daNGVPWFJjT1V3aFBC?=
 =?utf-8?B?ZFBkS2pMZk12T0JNS3lKNVlYU0l6SjM2RWdWQjVtN0MyaTlDdWxmTEFsTVNN?=
 =?utf-8?B?U0ErcjhGUVh4VWs5Z3dJM1UxMWxpcC93NFNNVnNQMVdSaUhwQm5yaVdpYmtw?=
 =?utf-8?B?MCtNMEZ4NWp4NXJGK1NOUUE2VkhmWlVtNUtoM0h5akZuMmV0b3dwRmxkSGUv?=
 =?utf-8?B?anhiVFI2c3NYcFFTS3AxNFhyT0pTS1V1Zzd0eHdLUzZ5VStTNTZCZVFiYSts?=
 =?utf-8?B?SUJWakgvYWdQT1AzemdtT05yUVdxekIzMzgvUThZMmFjeUMrWWpGZG14NkMx?=
 =?utf-8?B?NTJNazg5V3doT0ZIRXRhQkVaS2djbkFEdTh0Ujh2VUc4UXhDR212Vzc0TEQ1?=
 =?utf-8?B?SEdmMkkyTHo1Z216Njdram94Y0ZobE9SL1RKNnFRRFlXN2ZZUE90OWFDUHFN?=
 =?utf-8?B?QUdJQStLSDVVNElxL0tWcFU2TDFUdFFqM1lPVE83Z1ppNDRkVlJ1Y2daSlR4?=
 =?utf-8?B?cHVXUVZ0SGd4aXZwc2ZLS3ZRaDlzZVNvcmI2Nm5OdytBMmp4cWpaWTNmdUhw?=
 =?utf-8?B?NVlncU9POE5HMWUrUlNIZGY3VFBoVThBcGJRZzAvamlLT3dJbmJQY2lkbmM1?=
 =?utf-8?B?OGo1bEZGTjJ3M2xkU1ltdHVhWDJuWnZvSUV6NWI2KzdoZitmZ0NlUUl0QVJr?=
 =?utf-8?B?K0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 47e8cca3-84dd-4e3c-d6cd-08ddbc7c7201
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2025 11:01:23.4480 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SKpt1K3OJEae99XTE6i7Y+nX6LZZwhhPnT1s390S1FleL7tk5UeedlsvkH9CaWMtkTGQUs50QjZojMwNQCc1YjzRttAxkdLT79+i4hjZk6Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6787
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751799730; x=1783335730;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6HjiFpdKol2t7GUyQz1EeaIdlHadshmWvMqyXB5DtOA=;
 b=nyaKWiAhBFBKzwvVEsAS4M1PgniFTdRKYVPQ5dhMTjLsT18bYUxtLwki
 Gz2sPD6cl9Y8L0hxJ0bQ6TFPhRYtqWW60UQN4wzMZXr/kTNaygHlUvM4n
 wCxAK/uQmJa95fqyCxnmrxDdu5huCmDhTYB2WsOeZfJHo/kzFIkGMwFae
 uFU+B2r40Myt2T7UDPG2jBdH0J1R4F1vavEAUOZU9ByWwW+R2iZPepu0E
 ROHaUEG8maW1trFM32rSSDDvxfm1C+QQ45muGsXxcHmiZjltQm5YlghSV
 J2LoSaEFs+74GMrUs4DrkfibGXyDRULgIrGvlbv3YW/7LaZPnDMgfU7m6
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nyaKWiAh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next,
 v3 2/2] igc: Add wildcard rule support to ethtool NFC using Default
 Queue
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

On 20/06/2025 13:02, Song Yoong Siang wrote:
> Introduce support for a lowest priority wildcard (catch-all) rule in
> ethtool's Network Flow Classification (NFC) for the igc driver. The
> wildcard rule directs all unmatched network traffic, including traffic not
> captured by Receive Side Scaling (RSS), to a specified queue. This
> functionality utilizes the Default Queue feature available in I225/I226
> hardware.
> 
> The implementation has been validated on Intel ADL-S systems with two
> back-to-back connected I226 network interfaces.
> 
> Testing Procedure:
> 1. On the Device Under Test (DUT), verify the initial statistic:
>     $ ethtool -S enp1s0 | grep rx_q.*packets
>          rx_queue_0_packets: 0
>          rx_queue_1_packets: 0
>          rx_queue_2_packets: 0
>          rx_queue_3_packets: 0
> 
> 2. From the Link Partner, send 10 ARP packets:
>     $ arping -c 10 -I enp170s0 169.254.1.2
> 
> 3. On the DUT, verify the packet reception on Queue 0:
>     $ ethtool -S enp1s0 | grep rx_q.*packets
>          rx_queue_0_packets: 10
>          rx_queue_1_packets: 0
>          rx_queue_2_packets: 0
>          rx_queue_3_packets: 0
> 
> 4. On the DUT, add a wildcard rule to route all packets to Queue 3:
>     $ sudo ethtool -N enp1s0 flow-type ether queue 3
> 
> 5. From the Link Partner, send another 10 ARP packets:
>     $ arping -c 10 -I enp170s0 169.254.1.2
> 
> 6. Now, packets are routed to Queue 3 by the wildcard (Default Queue) rule:
>     $ ethtool -S enp1s0 | grep rx_q.*packets
>          rx_queue_0_packets: 10
>          rx_queue_1_packets: 0
>          rx_queue_2_packets: 0
>          rx_queue_3_packets: 10
> 
> 7. On the DUT, add a EtherType rule to route ARP packet to Queue 1:
>     $ sudo ethtool -N enp1s0 flow-type ether proto 0x0806 queue 1
> 
> 8. From the Link Partner, send another 10 ARP packets:
>     $ arping -c 10 -I enp170s0 169.254.1.2
> 
> 9. Now, packets are routed to Queue 1 by the EtherType rule because it is
>     higher priority than the wildcard (Default Queue) rule:
>     $ ethtool -S enp1s0 | grep rx_q.*packets
>          rx_queue_0_packets: 10
>          rx_queue_1_packets: 10
>          rx_queue_2_packets: 0
>          rx_queue_3_packets: 10
> 
> 10. On the DUT, delete all the NFC rules:
>      $ sudo ethtool -N enp1s0 delete 63
>      $ sudo ethtool -N enp1s0 delete 64
> 
> 11. From the Link Partner, send another 10 ARP packets:
>      $ arping -c 10 -I enp170s0 169.254.1.2
> 
> 12. Now, packets are routed to Queue 0 because the value of Default Queue
>      is reset back to 0:
>      $ ethtool -S enp1s0 | grep rx_q.*packets
>           rx_queue_0_packets: 20
>           rx_queue_1_packets: 10
>           rx_queue_2_packets: 0
>           rx_queue_3_packets: 10
> 
> Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
> Co-developed-by: Blanco Alcaine Hector <hector.blanco.alcaine@intel.com>
> Signed-off-by: Blanco Alcaine Hector <hector.blanco.alcaine@intel.com>
> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h         | 11 +++++++---
>   drivers/net/ethernet/intel/igc/igc_defines.h |  1 +
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 18 ++++++++++++++++
>   drivers/net/ethernet/intel/igc/igc_main.c    | 22 ++++++++++++++++++++
>   4 files changed, 49 insertions(+), 3 deletions(-)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
