Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id BKZ5MiHLpWl3GwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 18:38:41 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F971DDECC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 18:38:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 784B741C2E;
	Mon,  2 Mar 2026 17:38:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CkfQoc5hl9GG; Mon,  2 Mar 2026 17:38:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DD93141942
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772473118;
	bh=oYJfsngoXZabYYJm+i2PjaJbH5K0Rjurn/BN8JU5MOk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Qq/cpRROF41O8w9hB/dRYfyQ6AFOORRe8UFQjiIK6hgj5frwfhnBsvYN4jTGN5J2+
	 ytvXZqsC/3N90uQmL1muHrucl7K+jXhvlX9cgt7xgXG4AhYSLXEzamoyoe8uA271xk
	 p16Xp7Iaix8mHSV1CVHcoW/v5MR2fV0Wxm5X/sm/4eDU60gknleXgfGTwv/hbydMRc
	 pu3D2P2FOzh9fWyowZ6TsplkN4rYiJCn/rbpmOXBu2o6o81HsM6ro9eMG/ZgP5fhyt
	 gNpIxs/fGgQ4TW093WwZfVQxlraE+8vn+P39btIqfTc/o1TXlICMFgjuFn27xKqSJ3
	 qR3ZmWJ401aKw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD93141942;
	Mon,  2 Mar 2026 17:38:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id CBA021EB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 17:38:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B19EC4192A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 17:38:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AOUoerf0CqJi for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Mar 2026 17:38:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B9B8E41922
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B9B8E41922
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B9B8E41922
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 17:38:36 +0000 (UTC)
X-CSE-ConnectionGUID: aDibAvWVTuObmvEbc4G3eA==
X-CSE-MsgGUID: IvD4fnblS6ipRexhahzMIg==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="61060788"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="61060788"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 09:38:36 -0800
X-CSE-ConnectionGUID: XB2lV7aiQeqD3PYE2cEASg==
X-CSE-MsgGUID: N309f67eSaeYWfdtrtZHWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="217641923"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 09:38:36 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 09:38:35 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 2 Mar 2026 09:38:35 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.46) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 09:38:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V7eTd/bYllB6RGmKmq/LmW5NYGf0tmZ9xd38fXfN0aWI0vZfAWAxsrtZof+6eXjHslTthvZs0hN5BM3FpQrCsb7f3cHElhSt+tArFCHpeC9kKhviM2tRsslTYsuElUSrV9ANHDveHgEeZZ7aIgPrDFhOGo3/yleSTGO/s1Z4UmM+dZn7HHwiLlfXiEWm1Vyk22LmhuaZFj1f2IgKicQ3VIFaGZBauWD4Q8cTDqkl8WF+xzXOdogEAEh5m0usuxsI06dRZVtFOaFDhybOLz3P+m7F9DJGYTYpw0cbydsh2OdLMxn6dPpUi6Xb4L7hMxAEPk84tp1co+2wwBt0P+3LoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oYJfsngoXZabYYJm+i2PjaJbH5K0Rjurn/BN8JU5MOk=;
 b=X+VeFHcqUPpD/ozH1iYZK+ozhz0H+QYayiGFXQezyTO/U9T3/iRzewdr/J5pIObQersWNqwLU4DVLAn8qkAt+Em/UCmBreg5idg6vE8cdPgwAtHHmKI4DcmhJEpBQEY9hCog0CvxcTYv3hSjVXxGVpZcRRKeWhsRNfT3TMe4tfC25xKQfZB22un9QNQoFwQjBHkctVb16i2azM4KmD9kMXsI9eJy8TuQB+AZIphpDenXJnnM46VNhmtU2XlGML4ORP4CdVXr0R1phWnW4++MZU/7t2asYPC5P707uwRJoktEE+uLwBg46OCULvuejhuNovJ4jxWJhE212KTy0OALGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ5PPF6806D69E4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::831) by MW4PR11MB6763.namprd11.prod.outlook.com
 (2603:10b6:303:20b::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.11; Mon, 2 Mar
 2026 17:38:29 +0000
Received: from SJ5PPF6806D69E4.namprd11.prod.outlook.com
 ([fe80::16a5:1a74:21d8:8e3d]) by SJ5PPF6806D69E4.namprd11.prod.outlook.com
 ([fe80::16a5:1a74:21d8:8e3d%4]) with mapi id 15.20.9632.017; Mon, 2 Mar 2026
 17:38:29 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Slepecki, Jakub" <jakub.slepecki@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "michal.swiatkowski@linux.intel.com"
 <michal.swiatkowski@linux.intel.com>, "Slepecki, Jakub"
 <jakub.slepecki@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 4/7] ice: update mac, vlan
 rules when toggling between VEB and VEPA
Thread-Index: AQHcle1CoxVe1Q+cq0640WK6a/RoxLWbqtDA
Date: Mon, 2 Mar 2026 17:38:29 +0000
Message-ID: <SJ5PPF6806D69E4FBE6186C926433BD80278F7EA@SJ5PPF6806D69E4.namprd11.prod.outlook.com>
References: <20260204154418.1285309-1-jakub.slepecki@intel.com>
 <20260204154418.1285309-5-jakub.slepecki@intel.com>
In-Reply-To: <20260204154418.1285309-5-jakub.slepecki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ5PPF6806D69E4:EE_|MW4PR11MB6763:EE_
x-ms-office365-filtering-correlation-id: df223149-b1cb-4a86-4f01-08de78828434
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: SuyJ3Uu4MANUrHIAhiQP/AxEnyQ/BC8LZXWHvEBhg3IVDoQvkxltI81pve1/clUel0iKtzxRb5RhklYwr58k9OSxUbBMjoLlTaDLmZ2KDoVJ5U4OMoRh2iE73/Yr/YVx7Zi9MJ5j2kI9PGj9OB5v2C4lx11MxqJLwVhmG+H24QqvVbIi8r4aI+UvCyALcllbYkGi6ZrIykVl21/jTz2mezEvHiUbzFhPf4COiUQa70prKqeMO1aAIqclEDDn+wL4TnC+EZP8ds8TkVELWsw8S4UL17g5RZRjYklrtv19qlS9Mpa9l9LH9HV19E0vmp779hJuluDVsyu31B1cWbDXbuVJD/6vtlFRWjtuHLc7/Jh7gBvEDWOf6hmMvvG5FPWRMoAy1mQw1e00pO6alB0x1DofB5TrauNMD8e1PqOOUDVu7qUtLz5JdMlGoPOXluuIHHrFr/kI2ZIW17louTQajLS9otr4mylXMvfmpSsBfoaxiANHMhLdY08TPfJ85rFyAj3IgsTvPAZL/cq0jIQfqOdTC99r/SLlKPY6a2mdi9tYE1u2txcUHJtA0Guxn+XOHivhZgnMKyX2KT6yeHashhnat5zPSt6/l4bS0OAZRSPfvNXablljQnO1LU0qgGCD+II+Ap8U0vBqqS8NahS6haD00LXMGezw2c2KLmDoucTzZ48wPJn3FR+YeiOUeP1xPmwgT8KUJbOnOYega+4kuvkJOGqu/zUx4wruwDDjdJx+fJpzsM7BG7bV6/JKeoZelzKtm2QtvyxrxY8nPiQTEoMc6Yv+BLVkN3edT3lPx5I=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF6806D69E4.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UEwzNTFqR081eHZqWmR0YU5teVBNREM1Z0RDUGVFRlZTYit5WWMwcGEwalAx?=
 =?utf-8?B?L2dCT05MWldLbmd0YytDMkVuQTdTemRzcUlJUEtrbFZaaEEzdGpyU2xtRUFM?=
 =?utf-8?B?MkNYRVVSaUk4Y0xoUWx0Qllsd1dSeEo2WW9lUUZnMm8zR3c3RnNKWFl0dmNN?=
 =?utf-8?B?MWZLZ281MTE2czhWcUVJNVpIclFvWmdWWmhzb2hicWJTNjZqZ3Z5QzUxRUNK?=
 =?utf-8?B?Mkh2dmFyS2w5bG5wWnUvWlVsQlh4NE9Eak9CTnhia1dUM0NrSFBHMit0RXdp?=
 =?utf-8?B?TmZSMGZlcTdYNEFsdTBldlFWQTlJTDhnOTEwemQvM3NSYzVtT3ZFU1YzTXJv?=
 =?utf-8?B?N21hcCswSnY0VWpGZzRZYmROeEw1a2c3d011dVhqc1VlbGFueitEVU96THBE?=
 =?utf-8?B?ZjRSZHZINWRRN0RIR2V5N2tWazV4YThmSXBpT1pLc2laa3lJUlpJKzVZN0t4?=
 =?utf-8?B?TEJCeThBLzdmQVRvWUptdXNXMUIrWCtQbERkYmlHK0YvcER4UEJEOE40dzkv?=
 =?utf-8?B?dVhobW8xeGtFOG9XUTdRMHlxSFRhMEdwTnk0Z0RrSWIvWnEzTnZmZXRIeVNN?=
 =?utf-8?B?dFJNV2NnUmp5ZklqY0pWTFdvaVJ5ZUxoTnpPRFd4Y1BYRndzbWpPQWRmUFFK?=
 =?utf-8?B?YjVZRGRmOUtZdTl0RTVpdjZCQlBZTFBDQkFlK1F1b25iMWVLRTEybVlwWCt1?=
 =?utf-8?B?cGJmTVF3YXFhUGhQNUhWaklqYVYxeU9vd2RtQVdPM0tEL25HOFY2WUhjUlBN?=
 =?utf-8?B?ODFHdFNGVE9EVXRqM3JTWHE0aDFRdkpVZ285WlMrZVhxWC9BUVQ1ZnFDVmRl?=
 =?utf-8?B?VEx1K0JYNU1CVXdyS1hDWDZaMytkY0xHbzZUUW5sMDBmYnJwUWMxUFVnOVVm?=
 =?utf-8?B?RTVwQ2JEeGU1RnpTdXA5WFlZMnJXbjZoK2hOb1lIcUhQaGxCVkgxNzRXMzBa?=
 =?utf-8?B?d2c2aHlkNkVpeTNQKzNXWnVSWEV1VUIza1RPZlQ0aTNDN296T3VlT1ZZaGN2?=
 =?utf-8?B?QkZUdGxtcUY4QzNtR09qMDlnQzRsL3VGZ2g5WUp0ck5tVExMM203QjJXYlpK?=
 =?utf-8?B?NVUrU3ZteXNhcWR3T0dDdHVObHIzWHpBbTFzc2o4aTRNdW1YRTB2ZldEeWRJ?=
 =?utf-8?B?WlRpUk1qYXdibWxreE1jaTJGL2kzVHFjckJLYlZGTGpRNTM1STM3b2FWOEFm?=
 =?utf-8?B?dlovQXYvaVlkTTNtdkVwaU1YMW9qVmFPbzRHUmdKbFUyaE9ERDZjajlCa2N6?=
 =?utf-8?B?VE14OHRXTEM3UFoxTGp6d3hFMlZwZ0pGNFprRWhJaVlVNGEzVVdkSWF5citx?=
 =?utf-8?B?MEV5QUEwbnpVUkJ6aEt2UnRHVmhQRDhQM1J4N0pGUVo5b3Nwem5oY0Y5bkNS?=
 =?utf-8?B?czJvcGUxcmlLQStyeFI4UGh4L2owdU0wN2Q0YmthNlRSSUhFcW1abTVXZklp?=
 =?utf-8?B?amVuNC9lajNIbGtJdDJzQjZ1Z0VwQlpvQ3ZlZU1HdTMxYXpmL3pqU1BoeS9M?=
 =?utf-8?B?V0RTUVV0QWplMFI3QXVJY0N6L1hoVHg1dnc2Wm53Wm54cWJxeUNjUVNybHlR?=
 =?utf-8?B?NWo4OHp3QnY1WG9OOHJLa0ZkTGcrcDdvbGY1OUl2S0RTTnJvVENZUFBxVy9R?=
 =?utf-8?B?TG14UkcvVmIzTVF6KzYwMlJQai9WSVRTN1ZrWEJyWkhuS2RIaitxZTIyYTk1?=
 =?utf-8?B?a3dRYUI3Z0Z6ZWd5VlhsU3UybGJqRE1uWVZtOTFYc216Z09NWFVHQldGdSsy?=
 =?utf-8?B?RjBGRTdMcER4aFl2SWV5YU1GMjg4aWlENmFacTU0R2JLVWlFWEYzeFplZ3oy?=
 =?utf-8?B?R2Y4QjlpNkR3cmVlN1VPekpvamJ1YzJLT0hCZ1ZiSy84WHBHWFBXL08yZlkr?=
 =?utf-8?B?b2c0UUxuNUQydGswUWx2cDhLdEtEWkhFN2pRMkpZUTV5aTU0YVlwZllhVFdp?=
 =?utf-8?B?aUE2SGVrMDFhem5OUnFtQjdZZnhqbWZWNnZNaVd3NXB1dk8xQm9lZ2FKT0Iv?=
 =?utf-8?B?M3BnakR0WWpDU0FITm9XWkZCNFNZbi8wb1MvZ2dQT2J2UlRoM0tRQ1FsQXF0?=
 =?utf-8?B?c2tvcXlVTlVxaDZ1dDJPQk0vMDlDdFpOUEw5TkZSZFdYODVQb28rZ09Qaldo?=
 =?utf-8?B?VVdZSWpPQjA0MjRvRGV3V3dOak9FcGo0dllGUU1UcEJnSXFFRWxRVzU3dU1k?=
 =?utf-8?B?eDBWSjMySVhpMnZuU2pBTUhOUXovN1pEUE5FNGFKaGRLZWlIMmlJdVJEZTU2?=
 =?utf-8?B?Nmk4d1VIQnhvazlzbStKNHZsTHpUOTNhNmVndWhoeTZYWW1KWlJzckRPbUtU?=
 =?utf-8?B?Vk8ybjRYQWtPeHhnb290TXdDOGtmWXVoamlvajlyam9SUHA4ay8xZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF6806D69E4.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df223149-b1cb-4a86-4f01-08de78828434
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2026 17:38:29.2042 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VKnF+gpv3XhvDqKXXK14CYUmkO1zSppRK1aM7RlS7DQCubyiAGRiwrQI/r+1jQHsQHvUw2VW9U6sxrBbXcF+0AiL5o9qx1ugowCR6a1Uht0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6763
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772473117; x=1804009117;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oYJfsngoXZabYYJm+i2PjaJbH5K0Rjurn/BN8JU5MOk=;
 b=dTBWDHBzxIyMwsdBc0WwORdJ5XtOqDz39KtHcAvr3AHAwqHw+7MYR1/k
 DgbaeiS8a1bWcveRow20Nj2eERhCfa+snehxZlLCLn33XvsTLfmxiI+o7
 58ciam2BCVyh7YGBdQxBhbUatdPEm09zRfFmA4O9vbcLXUq81Zd++Pmw8
 f9cMh+g997TmHJKqw6vALF5enV97ZA0Rxwd2dVVh3dVh/OQiQ2Ce/heZJ
 OD/vkOaUtss6du0qSqKxZMFyWfUrtNX0luq78DdXadOe2JzuwUZoFnHAm
 Bry0c4OVImo3WUlxuzg6TtHJS2rEVayshH36ynXhTffpgkcry1OX4ZCrQ
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dTBWDHBz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 4/7] ice: update mac,
 vlan rules when toggling between VEB and VEPA
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
X-Rspamd-Queue-Id: 16F971DDECC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jakub.slepecki@intel.com,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:michal.swiatkowski@linux.intel.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
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
	FROM_NEQ_ENVFROM(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[SJ5PPF6806D69E4.namprd11.prod.outlook.com:mid,osuosl.org:dkim,osuosl.org:email,intel.com:email,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo]
X-Rspamd-Action: no action

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWt1Yg0KPiBT
bGVwZWNraQ0KPiBTZW50OiBXZWRuZXNkYXksIEZlYnJ1YXJ5IDQsIDIwMjYgNDo0NCBQTQ0KPiBU
bzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4gQ2M6IGxpbnV4LWtlcm5lbEB2
Z2VyLmtlcm5lbC5vcmc7IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IEtpdHN6ZWwsIFByemVteXNs
YXcNCj4gPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBOZ3V5ZW4sIEFudGhvbnkgTA0K
PiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBtaWNoYWwuc3dpYXRrb3dza2lAbGludXgu
aW50ZWwuY29tOyBTbGVwZWNraSwNCj4gSmFrdWIgPGpha3ViLnNsZXBlY2tpQGludGVsLmNvbT47
IExva3Rpb25vdiwgQWxla3NhbmRyDQo+IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4N
Cj4gU3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXh0IHY0IDQvN10gaWNl
OiB1cGRhdGUgbWFjLCB2bGFuIHJ1bGVzDQo+IHdoZW4gdG9nZ2xpbmcgYmV0d2VlbiBWRUIgYW5k
IFZFUEENCj4gDQo+IFdoZW4gY2hhbmdpbmcgaW50byBWRVBBIG1vZGUgTUFDIHJ1bGVzIGFyZSBt
b2RpZmllZCB0byBmb3J3YXJkIGFsbCB0cmFmZmljIHRvDQo+IHRoZSB3aXJlIGluc3RlYWQgb2Yg
YWxsb3dpbmcgc29tZSBwYWNrZXRzIHRvIGdvIGludG8gdGhlIGxvb3BiYWNrLg0KPiBNQUMsVkxB
TiBydWxlcyBtYXkgYW5kIHdpbGwgYWxzbyBiZSB1c2VkIHRvIGZvcndhcmQgbG9vcGJhY2sgdHJh
ZmZpYyBpbiBWRUIsIHNvDQo+IHdoZW4gd2Ugc3dpdGNoIHRvIFZFUEEsIHdlIHdhbnQgdGhlbSB0
byBiZWhhdmUgc2ltaWxhcmx5IHRvIE1BQy1vbmx5IHJ1bGVzLg0KPiANCj4gaWNlX3ZzaV91cGRh
dGVfYnJpZGdlX21vZGUoKSB3aWxsIG5vdyBhdHRlbXB0IGEgcm9sbGJhY2sgb2Ygc3dpdGNoIGZp
bHRlcnMgaW4NCj4gY2FzZSBhbiB1cGRhdGUgZmFpbHMuICBJZiB0aGUgcm9sbGJhY2sgYWxzbyBm
YWlscywgd2Ugd2lsbCBub3cgcmV0dXJuIHRoZSByb2xsYmFjaw0KPiBlcnJvciBpbnN0ZWFkIG9m
IHRoZSBpbml0aWFsIGVycm9yLg0KPiANCj4gUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9u
b3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBKYWt1
YiBTbGVwZWNraSA8amFrdWIuc2xlcGVja2lAaW50ZWwuY29tPg0KPiANCj4gLS0tDQo+IFRlc3Rp
bmcgaGludHM6DQo+ICAgTUFDLFZMQU4gcnVsZXMgYXJlIGNyZWF0ZWQgb25seSBpZiBlbnRpcmUg
c2VyaWVzIGlzIGFwcGxpZWQuDQo+ICAgVGhlIGVhc2llc3Qgd2F5IHRvIHRlc3QgdGhhdCBydWxl
cyB3ZXJlIGFkanVzdGVkIGlzIHRvIHJ1biB0cmFmZmljDQo+ICAgYW5kIG9ic2VydmUgd2hhdCBw
YWNrZXRzIGFyZSBzZW50IHRvIExBTi4gIFZFUEEgaXMgZXhwZWN0ZWQgdG8gYmVoYXZlDQo+ICAg
c2FtZSBhcyBiZWZvcmUgdGhlIHNlcmllcy4gIFZFQiBpcyBleHBlY3RlZCB0byAoYSkgYmVoYXZl
IGxpa2UgVkVQQQ0KPiAgIGlmIGxvb3BiYWNrIHRyYWZmaWMgd291bGQgY3Jvc3MgVkxBTnMsIG9y
IChiKSBiZWhhdmUgYXMgYmVmb3JlLg0KPiAgIFRyYWZmaWMgZnJvbS90byBleHRlcm5hbCBob3N0
cyBpcyBleHBlY3RlZCB0byByZW1haW4gdW5jaGFuZ2VkLg0KPiANCj4gICBSZWZlciB0byBjb3Zl
ciBsZXR0ZXIgKDAvNykgZm9yIGZ1bGwgbmV0d29yayBjb25maWd1cmF0aW9uLiAgVG8NCj4gICBj
aGFuZ2UgaHdtb2RlIHVzZToNCj4gDQo+ICAgICAgICMgYnJpZGdlIGxpbmsgc2V0IGRldiAkcGYg
aHdtb2RlIHt2ZWIsdmVwYX0NCj4gDQo+IE5vIGNoYW5nZXMgaW4gdjQuDQo+IA0KPiBDaGFuZ2Vz
IGluIHYzOg0KPiAgIC0gUmVmZXIgdG8gcmVwcm9kdWN0aW9uIGluIGNvdmVyIGxldHRlciBpbiBj
dXJyZW50IDQvNy4NCj4gDQo+IENoYW5nZXMgaW4gdjI6DQo+ICAgLSBDbG9zZSBvcGVuIHBhcmVu
dGhlc2lzIGluIGljZV92c2lfdXBkYXRlX2JyaWRnZV9tb2RlKCkgZGVzY3JpcHRpb24uDQo+ICAg
LSBFeHBsYWluIHJldHVybnMgaW4gaWNlX3ZzaV91cGRhdGVfYnJpZGdlX21vZGUoKS4NCj4gLS0t
DQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYyAgIHwgNDggKysr
KysrKysrKysrKysrKystLS0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X3N3aXRjaC5jIHwgIDggKystLQ0KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X3N3aXRjaC5oIHwgIDMgKy0NCj4gIDMgZmlsZXMgY2hhbmdlZCwgNDYgaW5zZXJ0aW9ucygrKSwg
MTMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9tYWluLmMNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX21haW4uYw0KPiBpbmRleCBjYjgwYjc3ZDI5ZmQuLjdiM2FiNjliODMwMCAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMNCj4gKysrIGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMNCj4gQEAgLTgyMDgsOCAr
ODIwOCwxNiBAQCBzdGF0aWMgaW50IGljZV92c2lfdXBkYXRlX2JyaWRnZV9tb2RlKHN0cnVjdCBp
Y2VfdnNpDQoNCg0KVGVzdGVkLWJ5OiBSYWZhbCBSb21hbm93c2tpIDxyYWZhbC5yb21hbm93c2tp
QGludGVsLmNvbT4NCg0K
