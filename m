Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1792E9023C8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jun 2024 16:14:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AAF1881433;
	Mon, 10 Jun 2024 14:14:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6ETkQBPHSiMl; Mon, 10 Jun 2024 14:14:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0DED98176B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718028880;
	bh=t96dBbqaDfcVxh4BL//z+QqmEOZ8sGhrj8L339UxiX4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vNVhuFMkWvVFs9qAEpjlype7gwOiFlne3CsRVU4A7xYHFVYU/nugutSZrLEHU1Ati
	 aKfWwNOiRFi46aEOc+l983prOfJdV9NpxrlSs8EuakIuJSll8WebquEIal7/i93UDL
	 Tk/b0Yuk/fx399m6vr0MJQWaEyQbYQDzRAwYgwp7ViNVwyypgLQRGl07qUondvLBeI
	 mhzAbPS6xQPYEZQ+EgquWKZZT4dUJ2MqnIiMqoFTqPRd9mT1LTVh+6YBmtNbddgGPc
	 MFa2a78XCxsn9aInedQ4NNV9R3yqFcro1D8T1rW/Ga7y0+0mnzDpioYVy+WZGQVeFe
	 HS0XH873TTkkg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0DED98176B;
	Mon, 10 Jun 2024 14:14:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1CEB11BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 14:14:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 09CCA60838
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 14:14:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8OnRkHjzR4BQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jun 2024 14:14:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=rui.zhang@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B63AF6082F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B63AF6082F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B63AF6082F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 14:14:36 +0000 (UTC)
X-CSE-ConnectionGUID: 8v74gHBMQRuiuMIaNWvhPw==
X-CSE-MsgGUID: NLplGKnvQq2GuhtP7T9FUg==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="37215175"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="37215175"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 07:14:36 -0700
X-CSE-ConnectionGUID: UusKkIY1RTC7V3iML4oMng==
X-CSE-MsgGUID: sqSPEwvwQeO98X86dTMUyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="76532885"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jun 2024 07:14:35 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 10 Jun 2024 07:14:34 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 10 Jun 2024 07:14:34 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 10 Jun 2024 07:14:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZrRsh4rk5wijEUNqFkOi22kRtzJWDOEGv2MOf09934Nn0x71f1Oz7DwiEU5ELyBln4Uqm5mQ0OcRPRC3ZsKaToy0j/3OM2PEk9BDWkZwKIImrz/VcuBfPY7tjt1SwTUMMeeI8qwoZ7Coud9blkyqHN/Mqu9T//xy0gMgUqXMp0oA3EOKZoqYUwla5AueR10NuESARzNS+7o2L76kVSVP6CvNEkf8wOozvKUMulPzqQ0W6YcsAnmKZsKd3PTE2OhXTGHq5qGM7Kab5gzIPZOkChEYqHDRe3dy3uDytnh1T2kosdF4HGWpx5OeY1MhLJCj9i8xjpeYYJtl7FrNgjDmLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t96dBbqaDfcVxh4BL//z+QqmEOZ8sGhrj8L339UxiX4=;
 b=GZf5cCPUF9SnEYxhZQK3TpzxmUHNd/6t5AKRsRLslXy5clxJ8TP/neJ+E10QTB/VO9hmVI4VVk2SMZ+tLhWiscvZcRvSuLRE65jPMtXJV5vpwetFnXgNo7vTP03DJ+cjquo4U4y/aPkmwg/+o1RSI2j7oH/1XF/PAOYg3+oLSVEi8utsi9PiHLx3lEvf+wM+PFTjXEzVWkM/zbRJWwNb5QUUugYntugyTFweEiPI8oA4qvkBbhSp3gW4cMEtahCabSPxP9aoAbnUqiN8xRZT5OqHw2ogNFtQ5JidgIRcZ9KGCudhQf3EzVtgtDC98w649+dbYbzYvd5AH1qMvmZR6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB6622.namprd11.prod.outlook.com (2603:10b6:a03:478::6)
 by SA3PR11MB7555.namprd11.prod.outlook.com (2603:10b6:806:311::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Mon, 10 Jun
 2024 14:14:26 +0000
Received: from SJ0PR11MB6622.namprd11.prod.outlook.com
 ([fe80::727d:4413:2b65:8b3d]) by SJ0PR11MB6622.namprd11.prod.outlook.com
 ([fe80::727d:4413:2b65:8b3d%6]) with mapi id 15.20.7633.036; Mon, 10 Jun 2024
 14:14:26 +0000
From: "Zhang, Rui" <rui.zhang@intel.com>
To: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>, "hui.wang@canonical.com"
 <hui.wang@canonical.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "naamax.meir@linux.intel.com" <naamax.meir@linux.intel.com>, "Ruinskiy, Dima"
 <dima.ruinskiy@intel.com>, "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Neftin, Sasha" <sasha.neftin@intel.com>,
 "edumazet@google.com" <edumazet@google.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>
Thread-Topic: [iwl-net][PATCH] Revert "e1000e: move force SMBUS near the end
 of enable_ulp function"
Thread-Index: AQHautYmCoiZKGhEaEG13HC2srDSyrHAiz0AgACAFAA=
Date: Mon, 10 Jun 2024 14:14:26 +0000
Message-ID: <98ccb75d7ef48c182425f130e0b2ececeec630ec.camel@intel.com>
References: <20240610013222.12082-1-hui.wang@canonical.com>
 <6ec4337f-7bf4-442d-8eca-128e528fde2a@molgen.mpg.de>
In-Reply-To: <6ec4337f-7bf4-442d-8eca-128e528fde2a@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB6622:EE_|SA3PR11MB7555:EE_
x-ms-office365-filtering-correlation-id: b775b295-ec34-45e4-5c57-08dc8957a2dc
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230031|376005|7416005|1800799015|366007|38070700009|921011; 
x-microsoft-antispam-message-info: =?utf-8?B?RFNGcGl1YnYyYjFCZ2ZONC9mVDNWMkU4QXNGOG9HV0dMbzRLUlRHUmQ2cXdU?=
 =?utf-8?B?ak9neWloZW50SGU3NCswY3pCNjhwWDR0L0hDZkxET2V1ZksvR09QNktBWmJZ?=
 =?utf-8?B?d2ttbkxwOU5jb05Oei9mbHByWU1QOE4wSGI2UGZGeVdCaFQ1cThySUk1WWly?=
 =?utf-8?B?YnlCQVBZL1pkZER2Wlp5TVE1R25rSTdMTUxMaTVOR0RiNkRkaG9XcE5xOEdW?=
 =?utf-8?B?YWw0UHkrRGRsQmpaZ3krcXZUK0VOV1VpclhGc1JUNko5cjZXY1cyQ21ZelJs?=
 =?utf-8?B?cGIvL2J2ZEpMc3N2MnNXL3orcDVmM2hadVErdktsZW5GQWxSbFZlTE5vMW9q?=
 =?utf-8?B?YnNYWTRPSlV1WWR3VndacC9XYWgyOGZZemJ3bEdnSWp0UXIzK2xSeGdHaEdT?=
 =?utf-8?B?NEJOWEo1Z1ZKOUZKblZXUFlqOHZDWmhQdTBObmQ0cFhnWjhjbVFQeHVBUWRy?=
 =?utf-8?B?Ri9ZTGVUbGQyR1c3eklEb2xOcEpvUWdrOFF0WEJzZm9uTk1RQnhodGh6b2Nu?=
 =?utf-8?B?b1NDVTgxdzYyUitKMjlkUkRDRElEQW5lQmpUbmp5L2dSbUZha2FadVdhbkt0?=
 =?utf-8?B?Yk9Iazg3VWl4c3ZJR0M3TksveUt4bml6SzBKWVQzd3hWalJ2Sjd5R0M2a2RH?=
 =?utf-8?B?cEhCSUtrdGRBVGF2QXQvTTZpY0FCNnhsRE9QMVhxY21jZWE2MGlDQnBaV1lW?=
 =?utf-8?B?SXJWUFUyaFBmdGJkWG41UkdpNDZ2R3MxbjZaQWZzYkFVbldTeEdyZEduSlgw?=
 =?utf-8?B?YmtXQkZXUkxlSGQ2YzY1ZTlSVTlqNjVUeEdLY0hWQmNVY1ZnVnk3M2s0WXBn?=
 =?utf-8?B?YS9DbDYyd0dwSlpzajU2enpGNm9SdmJNVENHRFdxUGVaSkdaRU1aRmZRSmR4?=
 =?utf-8?B?Zk4vakJNd3EyWHVJVWdaZDgwT3JGWFdsSXJtVEpTQU05OWFBM3RUTmhOL2Yx?=
 =?utf-8?B?ZSs1OXAyWlhoODJON3ZFc0k2VCtBRm1aTHRWOWpGY0VSN3hrQUZXT0tNTkxB?=
 =?utf-8?B?cTQ1L2dJblRtTkUyRy9RUnlmeFQxZjN3Yjh1RjVUbUFhQXNyelVkdlJQM3RY?=
 =?utf-8?B?dzh3V1F1RGEraUVBb1V1VTNRdVplR08vMXBxNDlSZ0FrNnRSbDV2dlY1Z2tP?=
 =?utf-8?B?azNjakdETmM4QVNHaU1nTUZ4Z0I4WmpKNkRvbklvUzYyMXB0YXVqUGZiTVlt?=
 =?utf-8?B?ZitZaWlleGxWV3hrR0pmM1JSeEpJd01UemZUbnhrd0xoaTk1ZTc5SS9iRzMz?=
 =?utf-8?B?RE90OTNqSFpPKy9oNHprc0hOc0lMSHBNSjFPeVkyaWFBaHZEZG8zbFRMczU4?=
 =?utf-8?B?ODdFQnY2bGZMZTh3M1RxOWpmcnpER3Q4TE43NXVGaXVETkdMMGpWb2YzNW5S?=
 =?utf-8?B?RlFxQjFScFJCSDNKZm5yVHJzVzNrd2F3YzI1S1NSSTJUNlpaU3QvYllwRUVR?=
 =?utf-8?B?K2d5ZkJXYWFtZE45anFKTXBTd01yVmZUK25FempJeHNFdUgzQW1nUmZiU08w?=
 =?utf-8?B?b21SbVhLNFFnUS9zSVFoVXdnTVNObFZHZUt3MDFUa0t6WGF2cy92TEhpbGlx?=
 =?utf-8?B?U2lic0hWRWJSdjNqWUsyM2gwa1NRQng1K0NYR21RbVJXMzNEdVRaellETHUy?=
 =?utf-8?B?MlVLVjV3NWUvUUp2QXZQSUVKQncyL05CS0tOMVMreEdLZ3B1bVdESXEvWUQ0?=
 =?utf-8?B?bS91STRHcHZ1cXNFRk9IbUUveThVZENsWFREYm12TUx2bHB1TjJTZ3RyYUYw?=
 =?utf-8?B?eWtJNkRvcjVZU3dNOFNnVXRzb0xuZmdHRFhjWC9yKzhXM25VbzhmYXN5MXZr?=
 =?utf-8?B?b3hoZjFsMVkxUEM4Si8xUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB6622.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(7416005)(1800799015)(366007)(38070700009)(921011);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WFp3NnFyYUlTcGIzTnhrVVFVY05iSmtyMlFydTJlZ1Frc2xiY01sR3V3SGN3?=
 =?utf-8?B?cVB3V0gxMXdqNyt5MkxiejR5aEl4bkNNV1EvWUlTNVhYanA3R1Nuc1NXQ01w?=
 =?utf-8?B?YkdHM1dpRVczdnRYaGF1WmtFem9PSkxLd1ZpVVBYZEZVZjlGYXR3UDZsMGxB?=
 =?utf-8?B?UXBxMXlzMmJsTS9TRTR6UDVqTFRLb1dYK1U3aldFcDNVTVQ1cFd1enVYSUFR?=
 =?utf-8?B?OS9wSkUzQTI1T1l0NHJwMVd6Uy94czlUWm1SZlZ6QktVbXpHaUVTb0xvenJS?=
 =?utf-8?B?VnpkUERNcUt4WEx2UGJPQ0wvVmhsWERhNGNnSGVjK0ZtdlM1R3dnTkVtbk8v?=
 =?utf-8?B?c2JySy9BWS9UakdFNUJWSklYMUZ0VmVzZHNtUk82SnlaOTdmc0xZMGtYOER6?=
 =?utf-8?B?OVp1TXpWbm15T29SSmdMUW8wd1gxMXdMZXN2UURqNGRKRDgyK0V0WWpWZ090?=
 =?utf-8?B?TlM0RG5SZkZNRTg1b05SZ0JOdGVnQllpUWlMZitTYytuNlhLdHFjMnJWNDdG?=
 =?utf-8?B?ZGRBeU9oeTByUEJEcGQweXhxSzZUQlc0Qkd1bTVoRkhnZ2YrWHdjOTdxK1Br?=
 =?utf-8?B?SnBwd1NUYW9wMjRwRWR2OG5EaXJ3NGEzRjZSYlRhcFM1WkZDMXNsMnM5cjRl?=
 =?utf-8?B?cm1HYXNWalZzTWw3eDZYa0hPR0NqV1RtYUZsMERmbjdyQitFUlRhQ2pXSERp?=
 =?utf-8?B?N1lwZlUxYjBkUEZOQXUvYnF5Zzl2S3ZQcm1uaGtpZHViZksrcGxENWtXc1lT?=
 =?utf-8?B?YklTOXhKSy9sTzY0NnZ2aDVRQzVyMDBFMENxbVQ4K2NjQlZiZklYeEYwQ1Nh?=
 =?utf-8?B?elozQVQ0aHpWWG1UcHZZSzlJVUt1UlZJYVljTjkwbWl0RW1welBmcVBudmNH?=
 =?utf-8?B?ZWRNWkhFRXZQYXM1aEV0ZGZUUUxNUGNFNGVwM0ZJRUdzdnVtYitWZjVBcHZ3?=
 =?utf-8?B?ellpZ0tmb2tuQU83QkxFeG9nN1N2RUlpY29WTDQ4ejh6V1JETFkyV2J1NW11?=
 =?utf-8?B?M0RPNFZkQlNDVEhGbGpBcW1SeHZxZGZxaE1CNmRzQ1NjOXpWRFdTcC9uSTdH?=
 =?utf-8?B?QVFoek81Y29EanFRZGNMand4dlgxcTQwNTgzTWNqb01ES0NyaFZaMDdGVHV4?=
 =?utf-8?B?NEhzT1h5RklIeXFSWEM1Tm1RYTBYNXBwUVBxQmJQcTEweDVqM3FXTFFITVhh?=
 =?utf-8?B?Z05LSHZGOEJTcWNJOHBZMEhaVW04eHYzcjdvYy82cGZzRTVVZUxPUXE3bkcy?=
 =?utf-8?B?LzB1NFhXUGczR241SXY2SFRPaXJxT3JUQVNXSFQ1dW9TZjQwMjNFUmVMdENv?=
 =?utf-8?B?WFp0ektISzJ5c1hVQldhOXJGaXRtdFNLa0pyeUs0SjNHTUJaNmtIQkhCTHhu?=
 =?utf-8?B?WTJOa211cWVyNjFQeld1Z2RPMGhMRSswL1JtcmVQWGxXK1V2dWdVeWc5cEJZ?=
 =?utf-8?B?S01kODRBY1hwTnZMK3RCMGRFL3FYQ1NVU3VJUUI5NVlqY1lTUGN6QkgzNVov?=
 =?utf-8?B?a3FXZDl3R3FNbzZON004Z1lTMGh2aGN2SWwwa1RGaFZFWEczNUhIUDJoNGV5?=
 =?utf-8?B?VEMvcUdsTG0rekJ6Sitidy9paVltcW4xREhUZWJ1NFNzdjVYbkRFUGNwVFBn?=
 =?utf-8?B?VGxDeTVlTkN2UkNqVVZYUFNpamt4NWFBbVo5SFlTWElSRFRBZG9mZXRua3E1?=
 =?utf-8?B?eHhxb2sySWhuU3pKU1VaQ2hZb2h4UnpzK2ZxRFhkUnVGRU9mNmFNTm5jeEF6?=
 =?utf-8?B?WEpyQnA2YlRhSkVMdnR5TDFXWnlUaWEwU2ZYdWErbm81M0JYYlNMTU5JVHds?=
 =?utf-8?B?OWg5WVZzUk9aRW03azJEekw0YS9ONUkzU05XT3pJNjBnTTY0V20wa2Q0cXFH?=
 =?utf-8?B?STBSbFpmTUloMDBpWjVjeTNFODQxTlFJZ2hwdWZ4UU5UelMwY1hUQjhSZjhM?=
 =?utf-8?B?Ui90RXlLcU91eGFHNkh2d0Z5aTgzTUhaalNjbGthRGg0RHYybGh5MWhTZkZ5?=
 =?utf-8?B?aXBpSWI4UEg4OS9pYW1LOHMrYjZSQzVidUNUR0F1MlpSSTUxdkQ1dUNJVUI1?=
 =?utf-8?B?U1hONlFRYktMYmw3RzM3U3UzbkpxK1lGVFlsK2dBdjVVSk9YNmhtQWhpM1B2?=
 =?utf-8?B?bUo3WkNsVTdKNXIvMXlOSm8wTkRDNW5jTTBEWGJ0ZC93VUdQR0RqeGd6VUJl?=
 =?utf-8?B?SFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C72FFB22EE94D0428FCA81E573728AB7@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB6622.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b775b295-ec34-45e4-5c57-08dc8957a2dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2024 14:14:26.6705 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Iyc+LciPOcNcvn3h5NZlIaZ+YbRJxcutZbWJRZnbr3FYvcr4OrxV0+InlKLxWAJTsLx+HVrCi8gB3yGAbJmwZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7555
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718028877; x=1749564877;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding:
 mime-version;
 bh=t96dBbqaDfcVxh4BL//z+QqmEOZ8sGhrj8L339UxiX4=;
 b=Rk86cYy0AxQiOJf/bKvEaWXa2D58fvOT7Ny6beDgtgFxqdgjxIG9VSLU
 G17uXe8BDiAT6boJrVhyULNYXQUdIhCUkbOns/c/kGcoL7iMJ60Dl4ms1
 SxG33nn52hPPkCTS1gk0ViISMj8/f5y1jK4WW1E8Qs1XC5UKDBWVMUSN3
 k8zEhBTtGWxtjfh+zUJdzjuY7m+kAG1wyuLsEG9QkPPIET1m3J7hUTc6g
 0UKc526vP7wR+nmtDlG9A3CebvLoWx9S5QqgXODQFr9kHmJ0SVynoAQiU
 8ZrczLKDTD+8LY4iYDTlmjB/2qYItV0ch9Ou7RnUeIDsy8pPLI+vQSqMW
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Rk86cYy0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-net][PATCH] Revert "e1000e: move force
 SMBUS near the end of enable_ulp function"
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Brandt,
 Todd E" <todd.e.brandt@intel.com>,
 "regressions@lists.linux.dev" <regressions@lists.linux.dev>,
 "horms@kernel.org" <horms@kernel.org>,
 "dmummenschanz@web.de" <dmummenschanz@web.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCAyMDI0LTA2LTEwIGF0IDA4OjM2ICswMjAwLCBQYXVsIE1lbnplbCB3cm90ZToKPiBE
ZWFyIEh1aSwKPiAKPiAKPiBUaGFuayB5b3UgZm9yIHlvdXIgcGF0Y2guCj4gCj4gCj4gQW0gMTAu
MDYuMjQgdW0gMDM6MzIgc2NocmllYiBIdWkgV2FuZzoKPiA+IFRoaXMgcmV2ZXJ0cyBjb21taXQg
YmZkNTQ2YTU1MmUxNDBiMGE0YzhhMjE1MjdjMzlkNmQyMWFkZGIyOAo+ID4gCj4gPiBDb21taXQg
YmZkNTQ2YTU1MmUxICgiZTEwMDBlOiBtb3ZlIGZvcmNlIFNNQlVTIG5lYXIgdGhlIGVuZCBvZgo+
ID4gZW5hYmxlX3VscCBmdW5jdGlvbiIpIGludHJvZHVjZXMgc3lzdGVtIHN1c3BlbmQgZmFpbHVy
ZSBvbiBzb21lCj4gPiBldGhlcm5ldCBjYXJkcywgYXQgdGhlIG1vbWVudCwgdGhlIHBjaWlkIG9m
IHRoZSBhZmZlY3RlZCBldGhlcm5ldAo+ID4gY2FyZHMgaW5jbHVkZSBbODA4NjoxNWI4XSBhbmQg
WzgwODY6MTViY10uCj4gPiAKPiA+IEFib3V0IHRoZSByZWdyZXNzaW9uIHRoZSBjb21taXQgYmZk
NTQ2YTU1MmUxICgiZTEwMDBlOiBtb3ZlIGZvcmNlCj4gCj4g4oCmIHJlZ3Jlc3Npb24gaW50cm9k
dWNlZCBieSBjb21taXQg4oCmCj4gCj4gPiBTTUJVUyBuZWFyIHRoZSBlbmQgb2YgZW5hYmxlX3Vs
cCBmdW5jdGlvbiIpIHRyaWVkIHRvIGZpeCwgbG9va3MKPiA+IGxpa2UKPiA+IGl0IGlzIG5vdCB0
cml2aWFsIHRvIGZpeCwgd2UgbmVlZCB0byBmaW5kIGEgYmV0dGVyIHdheSB0byByZXNvbHZlCj4g
PiBpdC4KPiAKPiBQbGVhc2Ugc2VuZCBhIHJldmVydCBmb3IgY29tbWl0IDg2MWU4MDg2MDI5ZSAo
ZTEwMDBlOiBtb3ZlIGZvcmNlCj4gU01CVVMgCj4gZnJvbSBlbmFibGUgdWxwIGZ1bmN0aW9uIHRv
IGF2b2lkIFBIWSBsb3NzIGlzc3VlKSwgcHJlc2VudCBzaW5jZQo+IExpbnV4IAo+IHY2LjktcmMz
IGFuZCBub3QgY29udGFpbmluZyBlbm91Z2ggaW5mb3JtYXRpb24gaW4gdGhlIGNvbW1pdAo+IG1l
c3NzYWdlLCAKPiBzbyB3ZSBoYXZlIGEgcHJvcGVyIGJhc2VsaW5lLiAoVGhhdOKAmXMgYWxzbyB3
aHkgSSBvcmlnaW5hbGx5IHN1Z2dlc3RlZAo+IHRvIAo+IHNwbGl0IGl0IGludG8gdHdvIGNvbW1p
dHMgKHJldmVydCArIHlvdXIgY2hhbmdlKS4pCj4gCj4gPiBSZXBvcnRlZC1ieTogVG9kZCBCcmFu
ZHQgPHRvZGQuZS5icmFuZHRAaW50ZWwuY29tPgo+ID4gQ2xvc2VzOiBodHRwczovL2J1Z3ppbGxh
Lmtlcm5lbC5vcmcvc2hvd19idWcuY2dpP2lkPTIxODk0MAo+ID4gUmVwb3J0ZWQtYnk6IERpZXRl
ciBNdW1tZW5zY2hhbnogPGRtdW1tZW5zY2hhbnpAd2ViLmRlPgo+ID4gQ2xvc2VzOiBodHRwczov
L2J1Z3ppbGxhLmtlcm5lbC5vcmcvc2hvd19idWcuY2dpP2lkPTIxODkzNgo+ID4gU2lnbmVkLW9m
Zi1ieTogSHVpIFdhbmcgPGh1aS53YW5nQGNhbm9uaWNhbC5jb20+Cj4gPiAtLS0KPiA+IMKgIGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMgfCAyMiAtLS0tLS0tLS0t
LS0tLS0tCj4gPiAtLS0tLQo+ID4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBl
L25ldGRldi5jwqAgfCAxOAo+ID4gKysrKysrKysrKysrKysrKysKPiA+IMKgIDIgZmlsZXMgY2hh
bmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgMjIgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5jCj4gPiBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMKPiA+IGluZGV4IDJlOThh
MmEwYmVhZC4uZjllOTRiZTM2ZTk3IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvZTEwMDBlL2ljaDhsYW4uYwo+ID4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvZTEwMDBlL2ljaDhsYW4uYwo+ID4gQEAgLTEyMjUsMjggKzEyMjUsNiBAQCBzMzIgZTEw
MDBfZW5hYmxlX3VscF9scHRfbHAoc3RydWN0IGUxMDAwX2h3Cj4gPiAqaHcsIGJvb2wgdG9fc3gp
Cj4gPiDCoMKgwqDCoMKgwqDCoMKgfQo+ID4gwqAgCj4gPiDCoCByZWxlYXNlOgo+ID4gLcKgwqDC
oMKgwqDCoMKgLyogU3dpdGNoaW5nIFBIWSBpbnRlcmZhY2UgYWx3YXlzIHJldHVybnMgTURJIGVy
cm9yCj4gPiAtwqDCoMKgwqDCoMKgwqAgKiBzbyBkaXNhYmxlIHJldHJ5IG1lY2hhbmlzbSB0byBh
dm9pZCB3YXN0aW5nIHRpbWUKPiA+IC3CoMKgwqDCoMKgwqDCoCAqLwo+ID4gLcKgwqDCoMKgwqDC
oMKgZTEwMDBlX2Rpc2FibGVfcGh5X3JldHJ5KGh3KTsKPiA+IC0KPiA+IC3CoMKgwqDCoMKgwqDC
oC8qIEZvcmNlIFNNQnVzIG1vZGUgaW4gUEhZICovCj4gPiAtwqDCoMKgwqDCoMKgwqByZXRfdmFs
ID0gZTEwMDBfcmVhZF9waHlfcmVnX2h2X2xvY2tlZChodywgQ1ZfU01CX0NUUkwsCj4gPiAmcGh5
X3JlZyk7Cj4gPiAtwqDCoMKgwqDCoMKgwqBpZiAocmV0X3ZhbCkgewo+ID4gLcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGUxMDAwZV9lbmFibGVfcGh5X3JldHJ5KGh3KTsKPiA+IC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBody0+cGh5Lm9wcy5yZWxlYXNlKGh3KTsKPiA+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBnb3RvIG91dDsKPiA+IC3CoMKgwqDCoMKgwqDC
oH0KPiA+IC3CoMKgwqDCoMKgwqDCoHBoeV9yZWcgfD0gQ1ZfU01CX0NUUkxfRk9SQ0VfU01CVVM7
Cj4gPiAtwqDCoMKgwqDCoMKgwqBlMTAwMF93cml0ZV9waHlfcmVnX2h2X2xvY2tlZChodywgQ1Zf
U01CX0NUUkwsIHBoeV9yZWcpOwo+ID4gLQo+ID4gLcKgwqDCoMKgwqDCoMKgZTEwMDBlX2VuYWJs
ZV9waHlfcmV0cnkoaHcpOwo+ID4gLQo+ID4gLcKgwqDCoMKgwqDCoMKgLyogRm9yY2UgU01CdXMg
bW9kZSBpbiBNQUMgKi8KPiA+IC3CoMKgwqDCoMKgwqDCoG1hY19yZWcgPSBlcjMyKENUUkxfRVhU
KTsKPiA+IC3CoMKgwqDCoMKgwqDCoG1hY19yZWcgfD0gRTEwMDBfQ1RSTF9FWFRfRk9SQ0VfU01C
VVM7Cj4gPiAtwqDCoMKgwqDCoMKgwqBldzMyKENUUkxfRVhULCBtYWNfcmVnKTsKPiA+IC0KPiA+
IMKgwqDCoMKgwqDCoMKgwqBody0+cGh5Lm9wcy5yZWxlYXNlKGh3KTsKPiA+IMKgIG91dDoKPiA+
IMKgwqDCoMKgwqDCoMKgwqBpZiAocmV0X3ZhbCkKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMKPiA+IGIvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jCj4gPiBpbmRleCBkYTVjNTlkYWY4YmEuLjIyMGQ2MmZj
YTU1ZCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9u
ZXRkZXYuYwo+ID4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRl
di5jCj4gPiBAQCAtNjYyMyw2ICs2NjIzLDcgQEAgc3RhdGljIGludCBfX2UxMDAwX3NodXRkb3du
KHN0cnVjdCBwY2lfZGV2Cj4gPiAqcGRldiwgYm9vbCBydW50aW1lKQo+ID4gwqDCoMKgwqDCoMKg
wqDCoHN0cnVjdCBlMTAwMF9odyAqaHcgPSAmYWRhcHRlci0+aHc7Cj4gPiDCoMKgwqDCoMKgwqDC
oMKgdTMyIGN0cmwsIGN0cmxfZXh0LCByY3RsLCBzdGF0dXMsIHd1ZmM7Cj4gPiDCoMKgwqDCoMKg
wqDCoMKgaW50IHJldHZhbCA9IDA7Cj4gPiArwqDCoMKgwqDCoMKgwqB1MTYgc21iX2N0cmw7Cj4g
PiDCoCAKPiA+IMKgwqDCoMKgwqDCoMKgwqAvKiBSdW50aW1lIHN1c3BlbmQgc2hvdWxkIG9ubHkg
ZW5hYmxlIHdha2V1cCBmb3IgbGluawo+ID4gY2hhbmdlcyAqLwo+ID4gwqDCoMKgwqDCoMKgwqDC
oGlmIChydW50aW1lKQo+ID4gQEAgLTY2OTYsNiArNjY5NywyMyBAQCBzdGF0aWMgaW50IF9fZTEw
MDBfc2h1dGRvd24oc3RydWN0IHBjaV9kZXYKPiA+ICpwZGV2LCBib29sIHJ1bnRpbWUpCj4gPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAocmV0dmFs
KQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoHJldHVybiByZXR2YWw7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoH0KPiA+ICsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAvKiBGb3Jj
ZSBTTUJVUyB0byBhbGxvdyBXT0wgKi8KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAvKiBTd2l0Y2hpbmcgUEhZIGludGVyZmFjZSBhbHdheXMgcmV0dXJucyBNREkgZXJyb3IKPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBzbyBkaXNhYmxlIHJldHJ5IG1lY2hh
bmlzbSB0byBhdm9pZCB3YXN0aW5nIHRpbWUKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgKi8KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBlMTAwMGVfZGlzYWJs
ZV9waHlfcmV0cnkoaHcpOwo+ID4gKwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGUxZV9ycGh5KGh3LCBDVl9TTUJfQ1RSTCwgJnNtYl9jdHJsKTsKPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBzbWJfY3RybCB8PSBDVl9TTUJfQ1RSTF9GT1JDRV9TTUJVUzsKPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBlMWVfd3BoeShodywgQ1ZfU01CX0NUUkws
IHNtYl9jdHJsKTsKPiA+ICsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBlMTAw
MGVfZW5hYmxlX3BoeV9yZXRyeShodyk7Cj4gPiArCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgLyogRm9yY2UgU01CdXMgbW9kZSBpbiBNQUMgKi8KPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBjdHJsX2V4dCA9IGVyMzIoQ1RSTF9FWFQpOwo+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGN0cmxfZXh0IHw9IEUxMDAwX0NUUkxfRVhUX0ZPUkNFX1NN
QlVTOwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGV3MzIoQ1RSTF9FWFQsIGN0
cmxfZXh0KTsKPiA+IMKgwqDCoMKgwqDCoMKgwqB9Cj4gPiDCoCAKPiA+IMKgwqDCoMKgwqDCoMKg
wqAvKiBFbnN1cmUgdGhhdCB0aGUgYXBwcm9wcmlhdGUgYml0cyBhcmUgc2V0IGluIExQSV9DVFJM
Cj4gCj4gTmFhbWEgYWxzbyBhZGRlZCBUZXN0ZWQtYnkgbGluZXMgdHdvIGJvdGggY29tbWl0cyBp
biBxdWVzdGlvbi4gQ291bGQgCj4gSW50ZWzigJlzIHRlc3QgY292ZXJhZ2UgcGxlYXNlIGV4dGVu
ZGVkIHRvIHRoZSBwcm9ibGVtIGF0IGhhbmQ/Cj4gCj4gQWNrZWQtYnk6IFBhdWwgTWVuemVsIDxw
bWVuemVsQG1vbGdlbi5tcGcuZGU+CgpQbHVzIHRoYXQsIAoxLiBUb2RkIGFuZCBJIGNhbiB0ZXN0
IHdpdGggdXBzdHJlYW0gKyB0aGlzIHBhdGNoIHRvIGNvbmZpcm0gdGhhdAogICBhLiB0aGUgcmVn
cmVzc2lvbiBmb3IgVG9kZCBpcyBnb25lLgogICBiLiB0aGUgczJpZGxlIGZhaWx1cmUgZm9yIG1l
IGlzIGJhY2sKMi4gSSBjYW4gdGVzdCB3aXRoIHVwc3RyZWFtICsgdGhpcyBwYXRjaCArIHJldmVy
dCBvZiBjb21taXQKODYxZTgwODYwMjllIChlMTAwMGU6IG1vdmUgZm9yY2UgU01CVVMgZnJvbSBl
bmFibGUgdWxwIGZ1bmN0aW9uIHRvCmF2b2lkIFBIWSBsb3NzIGlzc3VlKSB0byBjb25maXJtIHMy
aWRsZSBpcyB3b3JraW5nIGFnYWluLgoKdGhhbmtzLApydWkKCj4gCj4gCj4gS2luZCByZWdhcmRz
LAo+IAo+IFBhdWwKCg==
