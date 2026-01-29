Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KOk3G+w1e2mGCQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:26:52 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id ADBD9AEA16
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:26:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C188360866;
	Thu, 29 Jan 2026 10:26:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id co7jqz5fqhf2; Thu, 29 Jan 2026 10:26:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3661760872
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769682408;
	bh=Npc6Tu0UHYyAvC19zEeEtLsEA3VB+mrUF5Su1m18TVo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3roS+2Ylt60h1R1PqfqAuWs45YqxxDiey3U4/9jpXqbu71abup9npX0EOdIcPfkts
	 OTzmgZTk2ohsDKJY4/530KbempeOQjtuBvSDKnJT2oDoYtZN6H/h0NtB3+ZaMOvYHv
	 YRbt2AehN+eCFsVlur5orzbM3g8rDGr9MTB7I1wij+Qb74pqodi6ghwTC1nz1+aE7l
	 IggKkzJ6nbtoqVeOGOf9cDQZgVgctmaWmGsF+SrLqI/EPXjSelidMeB39cpOvOzJPW
	 NmypVRIN3Ri90tWDDNAHkfe7qjann2z+ROy5wHguxA3kCMnQyuBRkoIR/5DQXL3skW
	 43Sovw+t90BFQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3661760872;
	Thu, 29 Jan 2026 10:26:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 384651AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:26:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1AC2740B51
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:26:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vyX34EAFK6Ft for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 10:26:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 160A040B33
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 160A040B33
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 160A040B33
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:26:44 +0000 (UTC)
X-CSE-ConnectionGUID: EIlN+p+TTQSU4hlZOfFZ8g==
X-CSE-MsgGUID: g1iC0o9QQnui9fU7Ag7Azw==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="69931557"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="69931557"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:26:45 -0800
X-CSE-ConnectionGUID: /tVjK1NPSmu5Jbil/GXG8g==
X-CSE-MsgGUID: cYuyxbUeSaSSD/mzAXDiZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="213502592"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:26:44 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:26:44 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 02:26:44 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.68) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:26:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=orHcP1kudzC9bZf+s7xvhqSOG+1nezHVZHja4iiv7nQ4ubzDtNnyFfWnocNrtvwt7VO1L7rPMAVdGipk1Jzsi8s7vtT/+YEwC/rIN8JIbOkf3puDOdIrWyNmGTujxt3uU19VjpRUcOZsynXMHoQSwWoYRsB3eFe4X3KiBdKoAewcC5yKHmk9P3G2HQ76E0gPuDzdWSfaAgjxWgmQQLTJjnUXxQUnXaXbF69iA0BaA9Ox/oxNmzHxOq3uD9iu4qSFCc55gz0eNtZDYX/FqnGWHVTDtvNZIvH5iCgMZm+zmWHy61vhdHhZTDu+WTvWXfwy6x5ehStwLW4bZcrGEC4NNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Npc6Tu0UHYyAvC19zEeEtLsEA3VB+mrUF5Su1m18TVo=;
 b=SrVE1SvQJBIUusSZuLS64XyMwzic0Zc5EY4CsaXrMsEMfMUXaDXQSI9IngTDB4P86zErDD+6sVGn2K0T006vFKuLRXd0HjuYWfcsrcCjK5m644gUa6aCblsftUeW+MWI9ccauAnvDvWiwXCXDf/WHrEt5IcBauCWAwqEm/XdivZyRX92NZ60ZjqkqITVGO7JtqmO8WH8NrVPboHUjgRAFrb+Oz73C36xQ3WjL/TbQNsJMpdyqsnJxGjXK5cbB+u+AVri+KBTKIAWPpJk+zU1SzBg56cqmFE43v0nYFzIplSObdU8inoNzEc9af7mQVyu0NIYXeTin2zmgkatR6UFOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by LV8PR11MB8697.namprd11.prod.outlook.com (2603:10b6:408:1fe::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.8; Thu, 29 Jan
 2026 10:26:41 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Thu, 29 Jan 2026
 10:26:41 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Randy Dunlap <rdunlap@infradead.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 04/30] docs: kdoc_parser: don't
 mangle with function defines
Thread-Index: AQHckPakZP+Lk18qQ02+URJehEAz+rVo8Y4g
Date: Thu, 29 Jan 2026 10:26:41 +0000
Message-ID: <IA3PR11MB8986908D45DF696D472356CEE59EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769673038.git.mchehab+huawei@kernel.org>
 <33b532261e00197d24d581be48db37a229b018fa.1769673038.git.mchehab+huawei@kernel.org>
In-Reply-To: <33b532261e00197d24d581be48db37a229b018fa.1769673038.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|LV8PR11MB8697:EE_
x-ms-office365-filtering-correlation-id: 6d1f87db-7eef-4e28-7320-08de5f20e4b4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?WjVhamJBTnUzZVNaQWZSbkJyWHpmR0pLUVBCazAxOSttUlp0RURkUlhpQXdK?=
 =?utf-8?B?YzQ4R0RSVkpzcUlWR1FSZXNxakNONy9BQ0QwU0x0UE1kdFViMzBZVWV3L01a?=
 =?utf-8?B?ZzNzOTIrQWxJbmtzMDVzN3I2akF2eTFWUmo0Wk9zdzFDT1VsaFhWWW55NHkz?=
 =?utf-8?B?L0FsVUhzak9kbm9DbVdTTmxMY2lKWURBd0taRUZqMVNFWTJZYzJLdmZESVBC?=
 =?utf-8?B?YjdONXBEZzNaeHArWmp5NEJUV0VFRkhiNGVEM29ZYzRxa3JWYnd1dnpjaStz?=
 =?utf-8?B?V3EwWHk2NnhmQzY1VWVVeFhWVnNCS0NCTnVwZnBHUG5jMHZFWWw5ZXovdnJU?=
 =?utf-8?B?UmxNSzdSRkdHL3UrNFlyc0RnZnF5WFZwOUp1YkJUNjFjZVY0a09BNWFJdmMv?=
 =?utf-8?B?ejZ3aHp6enhaVEhmb0Rua0FldGNwdGpnVXg4QkVTVXkxZEQyRXo1TEwrUkRz?=
 =?utf-8?B?K3FHeldFOExQTCtieVJORGFUY3JvQmJhK1Exc04xb3MwdXBTOHBNck9RN3pW?=
 =?utf-8?B?OHdoc0dXUzJkWWNJdisvV0dqT0l4RmpFQTY1RlRqTk9oRHJYdlIxWjhPb0VI?=
 =?utf-8?B?Z3ZLNksvenpQajVkVnltc1ZNTzV4dXJEaVZzQXBGdUJFQmFCbUpoQjZmbHlV?=
 =?utf-8?B?ZG1uSVJoenh5dlRmeUh6aVFRSU16NjNTSFZoait2RHBzcGM4OWVSamFyUVE4?=
 =?utf-8?B?VkY1ME5hV2JkMFk1U3RaUC9ZYUdna3YrYUp4YVJYc25uZE84Mys2MFVia3ZE?=
 =?utf-8?B?SEpNZFdFcVZRQWJDRWpxWnZOblVVaWVOT1ZUaC82aXlCTFltUHBXYkxGOFVm?=
 =?utf-8?B?a1JOMWpJRkY1Z1Y5NndpNW9QdUFqQWhSMjZiRGFycFNpQStLQ29QRkxGYW5j?=
 =?utf-8?B?TS9sNzdMTW0ycU5PRHFFamZUSXFTaHZabmowemtOaCtyMTkzWjkxaTRaWGND?=
 =?utf-8?B?SmtMazdnUlNSd1ZXSnVNUDkySlhDYXlDenY0ZjZ3Y09KUTNKeld1QTlZTG5p?=
 =?utf-8?B?RmxTaWpLcURvbFdOdFVHRWtleXdZL3JFM25hR3QzcHVaeHgrSHFJTXphQnE5?=
 =?utf-8?B?bVJmNVpFR3ArVmhGbWNPa0pGODYwTm1NZEx5UWxXZms4cHhVcnU0RkFIYWk1?=
 =?utf-8?B?dmZIcW55Y3V4c0p3djBuNWE2NEp2Sk9TNStVbEFScWdlUExoa1BpK21CQXIv?=
 =?utf-8?B?OGMyUXRETWlrK2lmZlJrZFJhNTNRWmhhZHlSMWszcXlyMGNhYjJGdWRvZ0Ro?=
 =?utf-8?B?TVQ1VjNORGlUY2E5aitRZjBzNERZS0docFFyOHU0VGlmbXZGM2orQXVpRjM5?=
 =?utf-8?B?SFFtNDBIS05zUS9EV1pwNjVRZi9vRXhiL2pEOFFMQ3BOS2hZZUlTQ0RDdlhX?=
 =?utf-8?B?NXdDMlg5dVBTUThHMGJmcHdiS2NoODUramR5RTZ4R0pDRVA3TFQvVTd6K3B1?=
 =?utf-8?B?QWFETjdXNGk5WW9CREhDNVhvNnlmMENKYlpzUno2YXNLV055WWR6YmRCYnlp?=
 =?utf-8?B?eGl3Vk5MQXBRNm16UkVuanlyYmlJMk0zcVlrVkFXTjk4bGhpRXRHd0lBL05n?=
 =?utf-8?B?cHZmM3Nka3FGWGxQMUc5b0xMdzNOZzh3a0Vma0V0MjFUTXVWcXQzS3lHOUxz?=
 =?utf-8?B?TjZkcFVYUURXbnpMTklkeXZyOFhjQ1RBSWE4T2k2VDh3c2lUUEptR2Q5VFFw?=
 =?utf-8?B?QTB6aWlvcWpHZU5XRHRrQkdBYlhTY3RxQ3RvcHgzbTVkQUQ2M1dBa2tDWXcx?=
 =?utf-8?B?SEhWRWtUanZpUkJVWUk0YXVqMldRVEFnOWdpTlZXM2NUcVg1VnVHTzFQZVUr?=
 =?utf-8?B?K0JwQkRqakt2Um5xNExhV25TZFZmV2crMXlVWnZCY3NvUkVlbkgxQWdMQ3Yy?=
 =?utf-8?B?TnUwN1U5TVN6WUIxRSs0UHBHWUhNdk15L1JFaHZ4ZmdyZlI2QWc4UmNHYUxn?=
 =?utf-8?B?MndEbFVRdFNLTzhnZDdPOVBISS9hcEFGY1Y1akdJSEFKbWprN2gxUGJtSEVZ?=
 =?utf-8?B?QUVxMlg0RFdTc1NDT0hSWkRtM2phYXcvNytKeWNFNmhtcm9WU1dYUkxrNHZE?=
 =?utf-8?B?VzFIQjlEbTI2TUtrV2g5SFl1TWdQSG00czcrbThiUElVMjRQWUxLdUZmT0xN?=
 =?utf-8?B?emRoZjdqOEJBTTZ0cHY1dDByNWZuc0ZxTG5GK2ZxV3Z5RjBVT2VUd0ExSElJ?=
 =?utf-8?Q?UAHPGwDbhDFklbUvzraLbtg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bTVhVzh3WUhUNnJpa3dTWVg2RS9BVTgvbFlNRUlWWEdzRVo0cUQwMlZnVnVD?=
 =?utf-8?B?NFZEM0ZMdDl2YWJ3NFMrd0RYQW5WVUVxWGhhdm5DMjRoWDFjbVhCdnlOaG1s?=
 =?utf-8?B?NHQ4M2NPb0NYTUQxaUNmd21zVVNTampWOWxtOGh5cTkrcndiRTdyZzFXUTQ0?=
 =?utf-8?B?am9iT1lyUDdIWVdaMUYzc3ZtLzZqNzd3Z1UvYStJa3hVSGtNcXg1bDMwdTFt?=
 =?utf-8?B?cTIyTjdPV2ZRMUQyWjBUQVoxYzdNOWR2S1ZMUnl0bytsc3N2aVNoY0R4bXJl?=
 =?utf-8?B?WHdrVTVGbnkwbkRMclRXYjB1Y2dyN21aZXlxclc4OGhKaXBGZ1prM0tSUU9k?=
 =?utf-8?B?UTJ6UzBHVUluMUhsaVA3NGt2bVlhUlZoMHEzU0c0cUd2b2MxTWNZRzVMbDNW?=
 =?utf-8?B?ZEo2eUNxTXVEejcrTVlaTDJTdGNTRFFiUWM0elpFSitYZzBjaTZHUm0wQjFp?=
 =?utf-8?B?eVh6VnJTM2JITG9ycElLM0x5NForYzFUcFB0NVp0N0NVZ1kwYWtIb3IwNmRo?=
 =?utf-8?B?VFozbkw0K3VENTR2ODJoc3I0R0YwVFVwQ2xzYWhMVzFTYVJBUTZMZ3pMWUxG?=
 =?utf-8?B?RjhsYUJGTEgwS3JaL2JhVlZRd2xmS3Qza3NKdjFXUHFlQlMwUnRIRUFMOUlC?=
 =?utf-8?B?UDlSWWZrZCtNYm5Ma1FWQWVKVTRKemxtekFEYU95ZWt1UEtOVWxKanBPaTMw?=
 =?utf-8?B?blBxbVhmSlQxbVRHSzVidFBqRG9IYmpHc3MvaFZJSFE4UVpmOXNjdXZFRjFl?=
 =?utf-8?B?Si9jOEdmTnlOd2laUjM2VURRZ0FoRUdvVGpCcVhjNXNMME52Z1JQNXJzTUZt?=
 =?utf-8?B?WkZCdlVKbDZSZ1djWFRBQW9mOXN5ZC83ZEt4UzJxcW1QNkp6Z090TUl3R0Na?=
 =?utf-8?B?YjcwRXJndFVaOUxXblR3YmlteEliM25RRHVCNi9MekdYS2pCTFFKUTJnSkVL?=
 =?utf-8?B?b3lVUUFOVndkaG5uOCthZUlzTXFvelkwWG5jbUdlVVNUZkl3TGZYV3BiYk02?=
 =?utf-8?B?OVNjOEh1NFY5ZUhub2NvMFJUK1RSVG5mTnhNSStucGJrS21jMWtqaGhnK2RX?=
 =?utf-8?B?QitGUGZSS2VBbW01YTgzV0psTVNzeGVCS2ZNdDVTL1JmN08yeTUrcEx2YXFt?=
 =?utf-8?B?S2ZlUEo1TWs2TDVGaFdQR1dpcEgwOW84K0g0KzRpZGtZR0xrS3dyempLU3hN?=
 =?utf-8?B?cjZDVi9pRVY5M1hwUlBOMmhoWTZVMTJJN1JyS0VwbFJNNkpFNzd0QXlCdU1v?=
 =?utf-8?B?SXpXNGR0RVJWZGFBT0FiRm9FY3hSWHc4cE5rSitWUTUzTnRDT1dmVEVkMStj?=
 =?utf-8?B?TW85MlEyTGhOMFRWWHlsME9STVRVQnFwWTMvMTBMSExKYUlqOWpIS0ZMRGx4?=
 =?utf-8?B?SkpxdjNqWXBoMGF1aU8vMWNYc3FadDFES091U2hBekZGbEdhQUd2c1VyUWFH?=
 =?utf-8?B?UWRGc0M0dVBVQ2MyN08wTEc3cXZqZFQ5ckZNMDNKbGtwVWVGWENuZ0YwcVQ5?=
 =?utf-8?B?NmFEbWQ4WmhDOEhBNFlZVjJnMUlMbzNpVVZKdlFaWjJZWmtEMDdDZklWWUpt?=
 =?utf-8?B?emZ5U2VyNGFQSG9idTY1RVJZMHBqa2dyWC9KWHB0V1RReklMZkhPZ2RYVkYr?=
 =?utf-8?B?eWEzVW9lU0RVMWNKR0RBeXpadEsrT0hYYTlqWlMxQ3JnYk9DZEZSWVh2ZVlF?=
 =?utf-8?B?WUtCb1hLUzhnWVl2RkJpTjZRUldYcnlmOU1PVVdWQzFUaEQ3QzJkNkVnTXpN?=
 =?utf-8?B?TUppenIrZFB5eVdaV3lNQ0dIYjAyVTN2R09IOFZ5anZFUUtjMVVCdjZFckVC?=
 =?utf-8?B?Yk9MNngrdFlaaDdRY2hNZ0pic0VzL1A5WjZaQkNZVSs2Qlh2SmV0L3Q2Vy94?=
 =?utf-8?B?ZnZ3VGU1MERidlFBSGpnMFRNUGtCbnZYVC82b0RtUWNmeHBnWWxyYkVDVVlv?=
 =?utf-8?B?MVBBQWsyWG1mSnptS1Q0cFk1MW9oL2wvUjQxY3NqMis2M09uMmJSQjhOTDFF?=
 =?utf-8?B?T1d5eCtaMmROWXVseGhQQUNaMS8yLzR1VlNqeHRPUFFUaHVTeHcwNkVLRGIv?=
 =?utf-8?B?bHUxWVJFTFpuSTUwQU5VMjlBUUpxU2RWeXVKZVpueERDOFQ5ejF0R0RxTnJM?=
 =?utf-8?B?SzVrQTFiZnBzMHJEK2hkdFNmdDNxaGJyWmk3dForWWI3RHlleC9yaUdHOUdZ?=
 =?utf-8?B?NjB1MmdkVUdXeHlsZ1VUZTNNRGkvV0Q3b2dZOFgwNEU0dmU1YUEwVWRZV1dl?=
 =?utf-8?B?V2MxWGoxRWw5QVFqTGt4eUQ3UlEzcjJCcVJPSWdPMGkyOFlaNW95OXQzVWpK?=
 =?utf-8?B?VEtaRFVVYjBWRmhLUGNmbjhOR20rV2R2azFQVGFjUnA4UCszTWlJZEFuMDFa?=
 =?utf-8?Q?ugZyWoNfRbjc50RA=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d1f87db-7eef-4e28-7320-08de5f20e4b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2026 10:26:41.3299 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e7aqbXnFw9EWwyA90ypuTWqE7Id8Sw8YV1Z5mRXTpqSpxdpYQnRC1fMSoSIEeuI0yAN/WsoDYYeumxBzt5l/8JjA8d0R/3r3KgufqLaOxx4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8697
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769682405; x=1801218405;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Npc6Tu0UHYyAvC19zEeEtLsEA3VB+mrUF5Su1m18TVo=;
 b=TAmXwS+x5DNj8DIq5QJ4vhxF49LDFNNZCHCQU6CkmnpiTf0aNLlqwVnD
 jv9tijH9Ctqz7Kzv/KkgygpsnPXHuNUWb78hPc43igcZTtF0xlXc+bhd7
 enjiES7CyLxjvGC6pkWBxqzkWeVqLjwXeG9aSim+4tqzStM9RW2RyIi6M
 aBnjRoNDwgQcy9sYXjiH0tUZVpA/EDSafz5cPYah+0SSULbEgnbF9ISww
 dwkIgmrt+1cBELW3Hwvv+j48lRibOD2ZYwiTpBpJDGVp/EnG5QmLVCfMW
 U+ZltPF2pBfBRfVt6E2s9fc1HSW9tCdfHSp28/psMS2n1Qx2cU/skiZh5
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TAmXwS+x
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 04/30] docs: kdoc_parser: don't
 mangle with function defines
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:mchehab@kernel.org,m:rdunlap@infradead.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lwn.net:email,intel.com:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid,infradead.org:email,osuosl.org:email,osuosl.org:dkim]
X-Rspamd-Queue-Id: ADBD9AEA16
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWF1
cm8gQ2FydmFsaG8gQ2hlaGFiDQo+IFNlbnQ6IFRodXJzZGF5LCBKYW51YXJ5IDI5LCAyMDI2IDk6
MDggQU0NCj4gVG86IEpvbmF0aGFuIENvcmJldCA8Y29yYmV0QGx3bi5uZXQ+OyBMaW51eCBEb2Mg
TWFpbGluZyBMaXN0IDxsaW51eC0NCj4gZG9jQHZnZXIua2VybmVsLm9yZz4NCj4gQ2M6IE1hdXJv
IENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYitodWF3ZWlAa2VybmVsLm9yZz47DQo+IGJwZkB2Z2Vy
Lmtlcm5lbC5vcmc7IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBsaW51eC0NCj4g
aGFyZGVuaW5nQHZnZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsN
Cj4gbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFi
QGtlcm5lbC5vcmc+Ow0KPiBSYW5keSBEdW5sYXAgPHJkdW5sYXBAaW5mcmFkZWFkLm9yZz4NCj4g
U3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIHYzIDA0LzMwXSBkb2NzOiBrZG9jX3Bh
cnNlcjogZG9uJ3QNCj4gbWFuZ2xlIHdpdGggZnVuY3Rpb24gZGVmaW5lcw0KPiANCj4gTWFuZ2xp
bmcgd2l0aCAjZGVmaW5lcyBpcyBub3QgbmljZSwgYXMgd2UgbWF5IGVuZCByZW1vdmluZyB0aGUg
bWFjcm8NCj4gbmFtZXMsIHByZXZlbnRpbmcgc2V2ZXJhbCBtYWNyb3MgZnJvbSBiZWluZyBwcm9w
ZXJseSBkb2N1bWVudGVkLg0KPiANCj4gQWxzbywgb24gZGVmaW5lcywgd2UgaGF2ZSBzb21ldGhp
bmcgbGlrZToNCj4gDQo+IAkjZGVmaW5lIGZvbyhhMSwgYTIsIGEzLCAuLi4pCQkJIFwNCj4gCQkv
KiBzb21lIHJlYWwgaW1wbGVtZW50YXRpb24gKi8NCj4gDQo+IFRoZSBwcm90b3R5cGUgcGFydCAo
Zmlyc3QgbGluZSBvbiB0aGlzIGV4YW1wbGUpIHdvbid0IGNvbnRhaW4gYW55DQo+IG1hY3Jvcywg
c28gbm8gbmVlZCB0byBhcHBseSBhbnkgcmVnZXhlcyBvbiBpdC4NCj4gDQo+IFdpdGggdGhhdCwg
bW92ZSB0aGUgYXBwbHlfdHJhbnNmb3JtcygpIGxvZ2ljIHRvIGVuc3VyZSB0aGF0IGl0IHdpbGwg
YmUNCj4gY2FsbGVkIG9ubHkgb24gZnVuY3Rpb25zLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWF1
cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFiK2h1YXdlaUBrZXJuZWwub3JnPg0KPiBBY2tlZC1i
eTogUmFuZHkgRHVubGFwIDxyZHVubGFwQGluZnJhZGVhZC5vcmc+DQo+IFRlc3RlZC1ieTogUmFu
ZHkgRHVubGFwIDxyZHVubGFwQGluZnJhZGVhZC5vcmc+DQo+IC0tLQ0KPiAgdG9vbHMvbGliL3B5
dGhvbi9rZG9jL2tkb2NfcGFyc2VyLnB5IHwgMTIgKysrKysrKy0tLS0tDQo+ICAxIGZpbGUgY2hh
bmdlZCwgNyBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBh
L3Rvb2xzL2xpYi9weXRob24va2RvYy9rZG9jX3BhcnNlci5weQ0KPiBiL3Rvb2xzL2xpYi9weXRo
b24va2RvYy9rZG9jX3BhcnNlci5weQ0KPiBpbmRleCAwYjY4YjE0MGNkMDIuLjNiYTJjZGEyNDg3
YSAxMDA2NDQNCj4gLS0tIGEvdG9vbHMvbGliL3B5dGhvbi9rZG9jL2tkb2NfcGFyc2VyLnB5DQo+
ICsrKyBiL3Rvb2xzL2xpYi9weXRob24va2RvYy9rZG9jX3BhcnNlci5weQ0KPiBAQCAtMTYzLDcg
KzE2Myw3IEBAIHN0cnVjdF9uZXN0ZWRfcHJlZml4ZXMgPSBbICAjICAjIFRyYW5zZm9ybXMgZm9y
DQo+IGZ1bmN0aW9uIHByb3RvdHlwZXMgICMgLWZ1bmN0aW9uX3hmb3JtcyAgPSBbDQo+ICtmdW5j
dGlvbl94Zm9ybXMgPSBbDQo+ICAgICAgKEtlcm5SZShyIl5zdGF0aWMgKyIpLCAiIiksDQo+ICAg
ICAgKEtlcm5SZShyIl5leHRlcm4gKyIpLCAiIiksDQo+ICAgICAgKEtlcm5SZShyIl5hc21saW5r
YWdlICsiKSwgIiIpLA0KPiBAQCAtMTA2NSwxMCArMTA2NSw3IEBAIGNsYXNzIEtlcm5lbERvYzoN
Cj4gICAgICAgICAgZm91bmQgPSBmdW5jX21hY3JvID0gRmFsc2UNCj4gICAgICAgICAgcmV0dXJu
X3R5cGUgPSAnJw0KPiAgICAgICAgICBkZWNsX3R5cGUgPSAnZnVuY3Rpb24nDQo+IC0gICAgICAg
ICMNCj4gLSAgICAgICAgIyBBcHBseSB0aGUgaW5pdGlhbCB0cmFuc2Zvcm1hdGlvbnMuDQo+IC0g
ICAgICAgICMNCj4gLSAgICAgICAgcHJvdG90eXBlID0gYXBwbHlfdHJhbnNmb3JtcyhmdW5jdGlv
bl94Zm9ybXMsIHByb3RvdHlwZSkNCj4gKw0KPiAgICAgICAgICAjDQo+ICAgICAgICAgICMgSWYg
d2UgaGF2ZSBhIG1hY3JvLCByZW1vdmUgdGhlICIjZGVmaW5lIiBhdCB0aGUgZnJvbnQuDQo+ICAg
ICAgICAgICMNCj4gQEAgLTEwODcsNiArMTA4NCwxMSBAQCBjbGFzcyBLZXJuZWxEb2M6DQo+ICAg
ICAgICAgICAgICAgICAgZGVjbGFyYXRpb25fbmFtZSA9IHIuZ3JvdXAoMSkNCj4gICAgICAgICAg
ICAgICAgICBmdW5jX21hY3JvID0gVHJ1ZQ0KPiAgICAgICAgICAgICAgICAgIGZvdW5kID0gVHJ1
ZQ0KPiArICAgICAgICBlbHNlOg0KPiArICAgICAgICAgICAgIw0KPiArICAgICAgICAgICAgIyBB
cHBseSB0aGUgaW5pdGlhbCB0cmFuc2Zvcm1hdGlvbnMuDQo+ICsgICAgICAgICAgICAjDQo+ICsg
ICAgICAgICAgICBwcm90b3R5cGUgPSBhcHBseV90cmFuc2Zvcm1zKGZ1bmN0aW9uX3hmb3Jtcywg
cHJvdG90eXBlKQ0KPiANCj4gICAgICAgICAgIyBZZXMsIHRoaXMgdHJ1bHkgaXMgdmlsZS4gIFdl
IGFyZSBsb29raW5nIGZvcjoNCj4gICAgICAgICAgIyAxLiBSZXR1cm4gdHlwZSAobWF5IGJlIG5v
dGhpbmcgaWYgd2UncmUgbG9va2luZyBhdCBhIG1hY3JvKQ0KPiAtLQ0KPiAyLjUyLjANCg0KUmV2
aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwu
Y29tPg0K
