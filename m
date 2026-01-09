Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF26D0818D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 09 Jan 2026 10:08:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1A7D38378A;
	Fri,  9 Jan 2026 09:08:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yJiZXJsJ-pkd; Fri,  9 Jan 2026 09:08:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 84B5D8379F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767949695;
	bh=oczYAHNnhyIuayusuobk1rHXKsm51hJW8qGAQr/mKow=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RKyQaPmeWbanrJaB+EZltIWcGGo8KVfrjnsPfPnGMS2UsonLUlecOF2psx8NtD/CV
	 1ZX9zzLxCtyxnVQghOO2TBVseaH59jD4hsjpm8GqiiN4rcwmCt4DXNyk5EIQljO7RD
	 kmg9WF3IXa6oj+coLFIlTVn5KUf8MIcRxPkF+CryoQe+9fRQ6RjB5hpaWGnaK05kRu
	 nzxMKPXmqfXM8votU90x1Lvv5+p7Skp4t4TdwYhCGx/U1J/ApxzLe7uoFqghh0q1jL
	 QLJ+F3RCZy4EoOKzkUFNhN95YdVHyfCAMmnlSAIcw/uVLHywqRU9NGEqJrWpaGl+2n
	 sOacSjJak3Umg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 84B5D8379F;
	Fri,  9 Jan 2026 09:08:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 22266131
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 09:08:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 090F740A37
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 09:08:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qz4XgIxXqUvq for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jan 2026 09:08:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D462440844
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D462440844
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D462440844
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 09:08:12 +0000 (UTC)
X-CSE-ConnectionGUID: rO8Nmj13Td66vn4EtUTA0A==
X-CSE-MsgGUID: zNuh7D+hQiakPAhamfmWaQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11665"; a="79969657"
X-IronPort-AV: E=Sophos;i="6.21,212,1763452800"; d="scan'208";a="79969657"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2026 01:08:12 -0800
X-CSE-ConnectionGUID: c7rwiGqARq+EEBQLSUbcxA==
X-CSE-MsgGUID: taGKqOTKSRO8bexaMFcdKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,212,1763452800"; d="scan'208";a="202541555"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2026 01:08:12 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 9 Jan 2026 01:08:11 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 9 Jan 2026 01:08:11 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.56)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 9 Jan 2026 01:08:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CX+tvfVuIrDEAYActkCH9pUmlNEXYwIe8dgIl1/7IV+WOAWVT5grMc3KHCP4zuMCzsu4oVEScV4sO8w5c2XQkC5athn/3HAubLDcwSAni4ifR4O0KES9z4aF1Fw+Cxpd5behj2mahkKFoxZfx+kd8XhehQs8HT4dorPvO8UQ9R4GfEek419P4163leOryrLAL013c6LdAlu862JfhSxdz41eUPuXn4fZpjYsdJ4AAhEdl1MZROqDgWxAKrA/dmlU4YbkNMPAkv9oid/AuaQjF660mpkTv0c8EhllQN+2gxY2UQCZNzeisumNmlAXalLi3D7cg3C8A9uOFBbjP5r2Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oczYAHNnhyIuayusuobk1rHXKsm51hJW8qGAQr/mKow=;
 b=D0bzotO6hT1za6beJwDHKACn3p5I/eAH6zqjtkrypMpHKPSkU7UrIAc5r/1dC2SITfgL0/1IFF1VzuB4+I2Cg9PXh+NfQn+S8qbL7rRABwVh1K8jC1T3ZHfv/SAvZXqNbnOww+TbFFtJvqVtiOjjQAuQXb1ztjqqL/X87aXhEFle3o1XewqmPacT4jVyZ7Pdw2opDrpERG30ye0scYueyUE8UDA0xiQiufRFaT4Jbk4WWG9TIWK3ISPl+DA+yoBAuKk+d7tKWDzhVjHvL4uyG7Yjl6PP8K6JT9+oQhczqQV1Zrl0RNqBE7nxUVV3UureYRkxFl1JguI3iCNn6o8fLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by PH0PR11MB5141.namprd11.prod.outlook.com (2603:10b6:510:3c::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.3; Fri, 9 Jan
 2026 09:08:04 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9499.002; Fri, 9 Jan 2026
 09:08:04 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Ding, Hui" <dinghui@sangfor.com.cn>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Ding, Hui"
 <dinghui@sangfor.com.cn>
Thread-Topic: [Intel-wired-lan] [Patch net v2] ice: Fix incorrect timeout
 ice_release_res()
Thread-Index: AQHcZrbJw8zbULYZIkOERF8VXK4bULVJwRCw
Date: Fri, 9 Jan 2026 09:08:03 +0000
Message-ID: <IA1PR11MB6241AEE4989336C3583AE3698B82A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20251206134609.10565-1-dinghui@sangfor.com.cn>
In-Reply-To: <20251206134609.10565-1-dinghui@sangfor.com.cn>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|PH0PR11MB5141:EE_
x-ms-office365-filtering-correlation-id: b38f3c73-e89e-4f2e-61fd-08de4f5e98bd
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|921020|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?oONVUCdDhjNdi1WIBHEMX8Edn5uryxqI5t2lJHY1liinHEOq+ru38CaGzBrk?=
 =?us-ascii?Q?f8xFYVfzlBuLQrJspz7nYbwRwRiPudKITpA/qVD3bWotjsOzsJ7RG/8RkagR?=
 =?us-ascii?Q?/62T/nT9PDrmHPJdE/ReyOCmTeoiCxNKSQ2wzchd7tEmt2YapnsPgY/PBWgT?=
 =?us-ascii?Q?WXwOY10yOXcJgXwDKSKWKKFg/KkGuW/r5riuh6NgVQmqX+TP/pX1dqkiATgD?=
 =?us-ascii?Q?Zl9uEMuLroeaQNBmviVKyDXNrPsjKq0L5bgUrtE4XlQHoUrVococtc+l8w3e?=
 =?us-ascii?Q?/rYg9iQmXA2lwtADeor/1CuGp2p+6udNq3mO7dIrVtmVc8nE9MRXCWL2Fm+x?=
 =?us-ascii?Q?HV5h9dcMI2mPYSPasPBH/FRXkyQgu9w9ax/GzvSeZT0RXlIvsIfDTZn4ZBJs?=
 =?us-ascii?Q?t0kzYRSPSkVNRCjlr4fwJrW9V5Ln9Awg8ilYffxw1LwPp2d2T+ddYIFvEV4j?=
 =?us-ascii?Q?D93BR7ulNA22ZW/7172ObmSMvsU5fsQW6ws88ymayMDBuPup0hkCNl497jiC?=
 =?us-ascii?Q?QNK0fJff+dztd57RVGfgIE5a9LWtT9rf0klaOOFTvPcfnxcjhvDNWlxaFqfj?=
 =?us-ascii?Q?Rxte052n5ctZV5hfJDRX9r1i5bC44253TYIZGVLDmw5TMIJTp9tRrdXyVlUf?=
 =?us-ascii?Q?MkEYFcKSh90Se3WXVC+LgEqQQiMAEvsydHIPASWI8kFI7PYwqmAK9SBeAHDO?=
 =?us-ascii?Q?EnkE4Y8LZ7d7hb9VGogyd46BaZQZj08RlMFqYALchzGAism2Q138bey9BeqL?=
 =?us-ascii?Q?9iAI1SlBScJjjm259GUiT5XSrC8Hs4V2LxErfUcm/PmCsw1qiSa4Lf8ev5uK?=
 =?us-ascii?Q?OAcmRa9MCkUk1nzWnijeM6K6ZH95A//vTx26YejKsLGqkFUxa3wwdiBtZoI6?=
 =?us-ascii?Q?taWeYqvHuJ/JojGIUHVxM7ai8abWSqxrLqOxwvBrulqfP0awzBDQ1K4iOCdN?=
 =?us-ascii?Q?8U27LM5qH1N53bZhCO0EouKtk7xOa7pAwvbS1Mx/MnzzOIhuBI699CsUhDQd?=
 =?us-ascii?Q?nvflUDU0gdBNeZrrRzg/X/Q4kttYLhr0iQNRAazb0z9VrhhXG6iM0aV2oBqc?=
 =?us-ascii?Q?2bGXRq9dbPgOICXyytrhWlloRRHoAbCsGlQmajxe68GR9OtvjFDay8N67D38?=
 =?us-ascii?Q?yqA5w8Ef0SiZDBZYe2UIN2FdAkboVOoTZ2uHOY/w7I1Iw3IMN7j582X01gDC?=
 =?us-ascii?Q?v70x9U07RFaArcJVHl5w7Z6IA2sXhYS3DZMPNQRa2Dh1sdM4yMATuqN7sCqT?=
 =?us-ascii?Q?A9lwaT8+XBsYgJLAM6XFLJb1pT8ryZEEbW2OlI7WmwAsXlAZy7unkMCUQwp2?=
 =?us-ascii?Q?eQM+zzTPn+MLd0lYHhAvQIasePgY9Qgb8PN/lqbWdKAFk7R8T9D1TEdV5QVf?=
 =?us-ascii?Q?quqYj9FmXTgIEgZOmGVa8aAOAalOyYRFEyAvZUVaYuiyEMqE5sMtdFiO4bqv?=
 =?us-ascii?Q?eFyRNHhgVEuN6nL0k15CEEg1Xbr7RMY29kjeuhVlU0RkNmDZFuMw2hcyWXoT?=
 =?us-ascii?Q?TVDb8hDCY13CamkebxKbhraZd5r5e994wPjjztk2KY+//abRUXwjH1ik3Q?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(921020)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qc9fwjUE4GbIamDZhgQPUlkJqdHUZ+LulpAJHBU8P5IfjYjomOLeAXOLqbL4?=
 =?us-ascii?Q?e0icW8a6HCvFCos/MSKLzH7L8iYP2YYT4Tebp069QkL/39YkWtWjLVZrIh/5?=
 =?us-ascii?Q?CubNp0/LUa5q0FWcj4FQNTefuXu3ihIjVP117IDOshoHIJhO7FW3qhEK/8D5?=
 =?us-ascii?Q?o5PnNrHHET9VRofv7Xdiph3pKcLN23Urmp1eAcEEEwQ44eVAhF93xI8ccAoR?=
 =?us-ascii?Q?l2pvGxc5eC1Sw0pluQZfsiH5AD70epVoa+DYC+HvHwfwB0UjyrRyiCYpkvDq?=
 =?us-ascii?Q?+FzplN5rbGyg+mYgbuJZUrtmKR768TvLnBN1Dx7U8T4K/MIKQ9/VoEzhF2Ds?=
 =?us-ascii?Q?Ou26QDB51R9eBHR+ABwlrmx64lptSXSaExeRKYg1wkydSojgP/1ayqHR9SQj?=
 =?us-ascii?Q?dhtPEoniIEN8w7pSQhN+bIk6xjdpel6ZWk53Y11M3gdev9430wU9k22+u2gY?=
 =?us-ascii?Q?v6te3DtKEHJ36sRTEMrE3/C9dP0uesszQXL2kZe5K1daoyPzZP3nahaBFCE6?=
 =?us-ascii?Q?lFU59wk0bdPkFQHlARjOzYMeVFv1XdLgV+qDawA4t4VAaZcqZyys0vUUk6RH?=
 =?us-ascii?Q?HPlJ+vlOxpKTd2MBUG7Z4/I07QVtZCOXbjJ4vtFkY4lSCDHM85TySCTGrj1/?=
 =?us-ascii?Q?nYc9utcl5CN6d8wEIlKGafZi8oS8X3sxBZRM0AL7EhPXg8ixxVxZvhU1YRj2?=
 =?us-ascii?Q?Z9pnKT0VgVTGDoq/MCHsJ4K3qFlsmX7GqKlcZZ7Cr4MXVZG/Ej1BRW9TVSLM?=
 =?us-ascii?Q?nlVjulmstruIH1aJPjfbjyyU3QLGQQZzoacB21R1/RyUm1FCs9Wg3SK3v8HT?=
 =?us-ascii?Q?B2AwiFmWf0d8BQ2y2wkwEQ2Y4UpHjlE8iP2Ev49CkEeSwScPs95ohKLUZKOz?=
 =?us-ascii?Q?LrobGxSgAz3mrzDy9ELxV/yVB3PzgZbzS70WBCIh8TvscMJAHoQ8AvgwoAQR?=
 =?us-ascii?Q?l/i6490Q2n4tLdr67QW0wOZpVn/11O9jF/rHtsvDSEMEbZIIMucSfKovFB3O?=
 =?us-ascii?Q?unnYjIpXhRojWqHubsFun+Pmwz2VYLJsB6dfrgziAeacRjbGiFha03pwiJ5h?=
 =?us-ascii?Q?q6J328QEXULVQ+0w95x615et2tu2zLI1pAuY5Ez1tQQ7T+v5Mv/gY9tea4pk?=
 =?us-ascii?Q?cezOA0jqj0kIgmlmtD0gA2Yu711kxfoqR/ldovka1UHkxZBZcNHRromHaUfy?=
 =?us-ascii?Q?Left6f9080sJwfHJFWGoyesfRMkJrO/gPl2sGpzCVwGiMxloKCDcPc3zNw5y?=
 =?us-ascii?Q?rTNc5x+CnFIFvkQ11kWMabsxmzleTyxHLV/wKDJtAybBMRKUv7QTZ6kqtXh0?=
 =?us-ascii?Q?TsDtn6tIjex0dPBGK/EEqe9SdO5f57vEkkhRtNflix3TKZUkxU8dsLAu6az1?=
 =?us-ascii?Q?I9ERI0UZ/UMM+P0tqM8N9J7/9wj2b6oQ6ZoSqjLBCkkc+XmGWbR3hjlCjkEV?=
 =?us-ascii?Q?ba0v5e1oBQzdjhcN4jZlK74/h8L5fSJOO3X94WBnsQRUGDu+1WheOEmR0HBE?=
 =?us-ascii?Q?FT0QPHfuuBkL+8K6TKYsMTdPykVcpop4YuC5uJzqHHd6CBH8nSljz6CYLYzV?=
 =?us-ascii?Q?xBpBIvAye5WCHunty4WwEtTjM1J6LS6BE97PqpxHFWU1Z2O3de5+hqfi9Hl3?=
 =?us-ascii?Q?Q1LjCRH1QLetKhCDBMcqfvodpACDUfxRnHGokOvpuh1CBc+wMBxGSD0Qf2lK?=
 =?us-ascii?Q?GUCUal1GFdbj4niNvf+FZ2S+zcivARDhT36gEvDB+tacE7VJ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b38f3c73-e89e-4f2e-61fd-08de4f5e98bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2026 09:08:04.0120 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anHjvCChHORFPv+FQoIymQHwS7Zunl2vCcFS+I5hvnTrJ6UGviK8Yc7BeupNwhoRMaj/dLvdFPwjpPqSvpGwoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5141
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767949693; x=1799485693;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oczYAHNnhyIuayusuobk1rHXKsm51hJW8qGAQr/mKow=;
 b=kY0fYF9gy8/6+NlBnK6cG28l2LEjGoaQ7O0OudcqmORvcnvtgzjNyL75
 PZ9j/6s2VmGrC9u/0iYsPeO1DWbjLmGMby9NajZ6N//sYmmkyMnDksHFP
 tnESclTQcWsi/7Jbr0RajC3Mi7SccEKVQuOyqR9d6xKzaRqB8P2x1VOtj
 9EblCPo3HDAguO4qV72s+CJyJRDa3FC5Vjul3mMDcZqENkAQ6iDVb5K5K
 bLC+ZeNKyuxLBNy2p3V8PFYHt3s0YeHRAEstPlkCzDS2eOMQoKaUgKeOG
 kk3iDkA/K3eClBiO0on2Ngg8kPwftCy/tyJ39NjRoZMnEWt43BBgoGINB
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kY0fYF9g
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [Patch net v2] ice: Fix incorrect timeout
 ice_release_res()
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

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of D=
ing Hui
> Sent: 06 December 2025 19:16
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <=
przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch; davem@davemloft.net; =
edumazet@google.com; kuba@kernel.org; pabeni@redhat.com; Keller, Jacob E <j=
acob.e.keller@intel.com>; intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; linux-kernel@vger.kernel.org; Ding, Hui <ding=
hui@sangfor.com.cn>
> Subject: [Intel-wired-lan] [Patch net v2] ice: Fix incorrect timeout ice_=
release_res()
>
> The commit 5f6df173f92e ("ice: implement and use rd32_poll_timeout for ic=
e_sq_done timeout") converted ICE_CTL_Q_SQ_CMD_TIMEOUT from jiffies to micr=
oseconds.
>
> But the ice_release_res() function was missed, and its logic still treats=
 ICE_CTL_Q_SQ_CMD_TIMEOUT as a jiffies value.
>
> So correct the issue by usecs_to_jiffies().
>
> Found by inspection of the DDP downloading process.
> Compile and modprobe tested only.
>
> Fixes: 5f6df173f92e ("ice: implement and use rd32_poll_timeout for ice_sq=
_done timeout")
> Signed-off-by: Ding Hui <dinghui@sangfor.com.cn>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice_common.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
> ---
> v1->v2: rebase to net branch and add commit log.
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
