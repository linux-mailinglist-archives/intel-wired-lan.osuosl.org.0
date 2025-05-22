Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 732F0AC0E7A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 16:41:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 356EF80DB0;
	Thu, 22 May 2025 14:40:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E9woSGrRtX2b; Thu, 22 May 2025 14:40:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9154680D26
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747924854;
	bh=U6H3NJKQc53haZbVRVIVcoS4vHTwdiE0dm3VCxIVALg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jgwAOEgiXSeoIG3E5smVWneJfsqRf4auhoWcVCokWjq8IsBcN4SoGdDwnNwlbv5gs
	 WWN8nyqrWL9lYGnD0IBP5wS1YECR7846r8QGO2WkNEFfgN/Q29A2fmP0+8JG0GQ/we
	 2pbYmEY/sVPTKiX8yb3COBp1qdmmDgLgOHrTZ6+iijzKOLWj8/I/x3s+DfTmg/Wfui
	 oq8fk0V0nIlCfaJnuwMK+U0nBeDSw/NMqeGpqxbNhBfGjM70rFFEyGkkdjX3iL23uA
	 yN0UvPkvIaeGO4jS1AisycScsrCafhYmYL4B4gnDWvI53Dbh6gghb71gnqwTUlDtAo
	 ITSAafNGdfBdA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9154680D26;
	Thu, 22 May 2025 14:40:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3DA64BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:40:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 23EBB6141D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:40:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yu_h5lXDPSFM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 May 2025 14:40:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 77CFE61440
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77CFE61440
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 77CFE61440
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:40:51 +0000 (UTC)
X-CSE-ConnectionGUID: VYJN/eWnRdS48rSQr1MwYg==
X-CSE-MsgGUID: E54kCjX4TyaX8US7QIcf5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="37579620"
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="37579620"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 07:40:50 -0700
X-CSE-ConnectionGUID: lT665PnzTb2upuCctGV46g==
X-CSE-MsgGUID: 15WqS4BaRbOepHpXemNlGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="145778927"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 07:40:50 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 22 May 2025 07:40:49 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 22 May 2025 07:40:49 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Thu, 22 May 2025 07:40:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IRYZcnrJ+Ljqdi1cTvrulAsNCMZIaV3t+FkCq1hFshQHSeSgAVfBNKazE7I/zZwPciqqVgen2wzODfUTMAQOrDJLvOBBQnT12gsPohXag5/AX0zDoqc73DBfrtyprpTnVH961zpq/YT5EpbwIH3SijeANqehfuQs2Ugr0LJoPjBHS9IP8bVRSK9Iylri1kG4GIJ37eHcjP+d0re2++dQRFtLJuiJXtdsJXH8U6vY8UI1Oroj25lcHs5ja1A+bmC538t9pMqKwZkXs+WSBimuc5r1hHe3XBEiVd7sFR06Pl9d7RprxLccsXFUeKlBugkeBF4LRjR0yOUP4QzfqTOJjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U6H3NJKQc53haZbVRVIVcoS4vHTwdiE0dm3VCxIVALg=;
 b=C35GiQmnEu+HIldyzzdAiBsJgepMaYFJVO35aHUJ1o8JjLkmLpmMWAiSKYvCTv6OhpVpo6UdIUM+H0Ui0MIpDXFxff4mBVRWu4ipey3EKidihlKdANL1zZA9jfAiZU61fnfc0BKiUdxDHXbrecE/Az2dSq7oYzfNQ4AFOeSz002V7EunwyRKNlpktbQ7Jy68PO3fw+BnYOTdS2kqF141pK2kbnRAuNnsAJS2ZhlM7+AA2eqduP5Tb9jb74/91wNpjiwuxbsJIVkD+LEiiYnRfTKgOJJbcIFWeRRPw/S4WdzWLFtut9I8zZ0Gv6eqLTW0Q0bVVh9hNawsC3qov4d7WA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by PH7PR11MB8572.namprd11.prod.outlook.com (2603:10b6:510:30a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Thu, 22 May
 2025 14:40:20 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%4]) with mapi id 15.20.8746.030; Thu, 22 May 2025
 14:40:20 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, netdev <netdev@vger.kernel.org>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Kubiak, Michal"
 <michal.kubiak@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Olech, Milena" <milena.olech@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH v4 15/15] ice: default to TIME_REF
 instead of TXCO on E825-C
Thread-Index: AQHbuuwy31yVdiyXfU2oaGR88RaMxLPe2IbQ
Date: Thu, 22 May 2025 14:40:20 +0000
Message-ID: <IA1PR11MB624173B68D1FAE1196D139A38B99A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250501-kk-tspll-improvements-alignment-v4-0-24c83d0ce7a8@intel.com>
 <20250501-kk-tspll-improvements-alignment-v4-15-24c83d0ce7a8@intel.com>
In-Reply-To: <20250501-kk-tspll-improvements-alignment-v4-15-24c83d0ce7a8@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|PH7PR11MB8572:EE_
x-ms-office365-filtering-correlation-id: 24f416bc-f03a-47b7-353f-08dd993e93f7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?Qk5MTFJqM1JYY0hMZy9ROFh3TkJ5YXByTEV0VThheklPYm1mamMxc1NnUkNa?=
 =?utf-8?B?RzEzVnhKb25TNXFTbjJQdXdDNzFJOTdpMWxNQzFZcWJQVkU0SXJyM0R3ODZq?=
 =?utf-8?B?c2lldnNYYjI2WngyNzJzdFFVK2xISHNCYjczTnNlL0R1RndIVERlMkdIS3Yy?=
 =?utf-8?B?ZXFpOEpaS1MvZHhjU2N1Y205dnZKaWdBWTBnMzBMUE1wdURIMUorcTZuMEQy?=
 =?utf-8?B?MENxUDRpb2xsZU53Y2pjVXRPd0V3WHJwaDBEZFhhN29EbDJJbE40VjUybWJF?=
 =?utf-8?B?aWd5SDBsQ1h6YUoxNEs0QjJjSmFMWGtHTDF4ZmlHM1J6MysyUnFkVExjcG5J?=
 =?utf-8?B?TWMvRmZXbS9QdHpYcE95NjB0L2tUOURKSlR3VHNFT0tZN240bnB5aU1XZDJu?=
 =?utf-8?B?aEw1TmozaVhJcEhiSnI2bFpxWkNCazhkN3NEanlwRU9MOU5LcFI2anBWNlQz?=
 =?utf-8?B?UXlpMDMyV3pnS3VmN0d5R2hrajZOeDJ6ZzZGZUhKS0NpYVFuejBPY29GWWxB?=
 =?utf-8?B?cHFrNlNUVk1rc1hrVExWWGRxNzJFUktqQjAwM09IK2RhZmpXTWFzb3QydkFQ?=
 =?utf-8?B?VHhQODhTdjduZG1TNFJxaFJ0alJENXlsWFpDaUVvb2F2NVBGTi9Fem14Z3BQ?=
 =?utf-8?B?MHByMDgyWmltK2xrRlpHS0VDT0N2cS9lUGczMEExK3FyTVp3NElaL2xHTG5M?=
 =?utf-8?B?c2hUK0swUTI4RnNSVnhWZ01GVmFaVEV6bFZTL3JlOE9INnd4YTNTSnl1TFpn?=
 =?utf-8?B?VW04WGZiZ1VaRkhHNjBjK01PbEJWclkrQVVDZnBmc1lhWjVnaTJWb0hFcmN2?=
 =?utf-8?B?NmtCWUVMWTlyZFNhVDFvK3BlLzBVN0wvS0NrZU9IYWlzQUtQY0xQaENTQmNm?=
 =?utf-8?B?OWhTbW1TYXFyanRzYkJQdklmK0gzNkxnQ0ZIcnFpOVlpNS9seWl5ZkRTYmZq?=
 =?utf-8?B?N2JocGs5N0xSdUJUa3l6YWhMeUJSWlJwVGpTM2tvdTVLazFZUXM0NEo5V0l5?=
 =?utf-8?B?WHllOTFLeFhhM2tpcTh5cDVnZ1dGbHVFUTlCa2oyMzVWQkFKRkxSZEV1ZnJ4?=
 =?utf-8?B?cFRvTXNMYXV5KzNOQ05jMExOYWU0OVRhUmlqWjJYeUpqS1Y0bWhyTTlxVkta?=
 =?utf-8?B?T3RKcGZEMkcyTzlsdmRrZXZHMUF1dXg3bGh5eUZlZTFIQzdZTE5MUEFhTDUx?=
 =?utf-8?B?TlJWVzhGWkdweG9PK2V0NS9SczZ2OElCWDMxNjdacDg0d1VsQUgyNENwRTVz?=
 =?utf-8?B?OFozcGpGeHhPS0NOWjlLY1B2WDhFa2k2cGtOQTdHcjExMmYwR1R3TVo5emUy?=
 =?utf-8?B?bWRmcG9iSjBHOGxxbHQwOGU2UUZqaWFva3lMTUZoaDM4cERtOGJ3Z1g0b01o?=
 =?utf-8?B?U0IrVUF0djZybVlhWU13anl2MjVweDZlR1VLc3FvaEpKV2VwOS9zRzlzNkhY?=
 =?utf-8?B?Mi9wWFFhTEpuRnBwT0owa0ZhMVFrZy9SeEZ2WkZoSjc0K3VIYW1GaFlxL3Bm?=
 =?utf-8?B?SkNxZTI0dWx4cTJLUHRmMlBtd3VGSUo0bnJSbG1ZL3FlSTZDZUg1SGhNT25r?=
 =?utf-8?B?MnJOYWFsSkNyK1RrYnNPWmpwM0JQRVY1QTVScytZb0J5WXRDWXF4aktpR242?=
 =?utf-8?B?MFlGSnJqSGRmWDRNcHp0MzdrNm1WUEVlVkZsZFluaTdoSGRmTUFBU1VmTVpi?=
 =?utf-8?B?OTM2dENHTmNsZms4NThyU1pzRmxKT0U0Z3FLMEcxVXEwTUlvSXVuRUNpS1dC?=
 =?utf-8?B?MHhPdXE0MXpVRjBUWjlZMHI5ZllRRlhsMGpCbzJNYllIQmJzcXN3MkNDSW5F?=
 =?utf-8?B?aXB2YU1Wd2R1WDNETjZBUWlYaHNYZWlubDc1Z0NCZnlUZmtPOVhnM1hjejRp?=
 =?utf-8?B?ZlBEeHltMDFoYjhvdHgrSm1WdWk1c3U2bVRQTDVOUWMxVEhGTUlBNE9zQ0N4?=
 =?utf-8?B?Q256aHo3Z0w5SU9SektpbHN5QjFBNlNrVTJqZVlnLzZqNlFCbXF4R0hGRUUy?=
 =?utf-8?B?VFc2eHRpbGJnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bHY4eGhMMC9CejBjQzRIZmxPTXF5ZmVMakNNVy9qMEZhejAzUlBSK0pMeGRB?=
 =?utf-8?B?SHdrd2xFMVJRR1JYMDE2YVdQcDFiVTNrazB2ODVkR1BtSVdEUVI5NWJ1SWMr?=
 =?utf-8?B?RXJaaFp1cTEzcEZuUUc4dGJCMTBOR1NzMTNuRFdKbi9xdkZUdWxyTnNpa085?=
 =?utf-8?B?Z1lsTEk1RlNhblk2UFNSZUNuQ3RsRTRzQVU4TkkzTFJLY09KMnplRU02SWFJ?=
 =?utf-8?B?a3diTG0rdGFLTk9zTEp0aS9zeXNSek1RR0poZWJveDBjeVZ5ZG9RdHRYVDBU?=
 =?utf-8?B?SS9TR29Tem8rblh6cVRVdFEyVEZ4NHVvK0xWOWVzTlkyNW9IQWlMRFNIVk9Z?=
 =?utf-8?B?TFFtTWJDZXNzcE1WL2VZeURsNFlMS3JMaE1LMkVza3d6Z0x3K2FKMVc3Qnd6?=
 =?utf-8?B?YkIvS3l1eEt0RXZRL2NCYmFaWmtFdmZUNHhMZzR6TzVjUTlpSHB2eUU0dmpt?=
 =?utf-8?B?RXBiUU5ucVErcEQ1aGlLTEF0MGMwSXlxVGVvcUtVMmg1dFdRdUJJTW1hYmNJ?=
 =?utf-8?B?amdsZlhNMDdnV1krZnZhWm93MllKN2dqMnBUdlYvanNJREQ3SGk2V2VLQWVH?=
 =?utf-8?B?RGc1N2puWEt3bDRqOE9FZXhHMGtRVEpmcU9Sb29OWUIwdm9PZ1lCdS9SbGlj?=
 =?utf-8?B?WnRLU2p6UXp2ZjR3NUFpaFVpS3E3eTZZZXArSmtEWnFYMm1uSngvemp4cWZC?=
 =?utf-8?B?d2lHOEZIK0tQOFNpY3ZEaEo0eWNwTmdsdnZFZEtJSk1nUEk3dE9hcEgwTFdV?=
 =?utf-8?B?cGRCR1ZIczY4L2FQblBuMmp4Skp3VU5YbFVZYUY2Y1dtRFBybHJSV3V1UkVE?=
 =?utf-8?B?dXB4ZGhOanl0RytTQTI5TFJKQ2F1ZkM4c05TOVRuZTA0MzdoV0h1YUJUR3lM?=
 =?utf-8?B?L1FIUXNxQzhGL0NzM0ZqWDlWN1pQV3k5UkpvRXFsOUhyUXdqQXArd2RXeTJS?=
 =?utf-8?B?ZG12cVd4d0lmazdzSDBuMDV5MVgrYVhQellZSGZVOTQrQktKMSsrVFVGUnBw?=
 =?utf-8?B?OHRuQ1hKVUhWZHcwNVVDUjdUdmpDQjlUY29XaUYzeVR2c2kvUndKb0ZDZmhY?=
 =?utf-8?B?c29zSGlnalMrbUZLaGtTZGZBVzRJM2ZtVTk3QVFuYld5bGFESXpNblE0S1c0?=
 =?utf-8?B?aGNJMXJqNHE2WXB6MHR6TFd0M1ljb0VQYy9hWnVBWTQwSlpGSnl1a3U0ZnNW?=
 =?utf-8?B?VjNCeFoyRHB3clNqVC9jMkJ0ZWY5c016aGZOenFTTUkyUi9JVTQ3NWluWlJO?=
 =?utf-8?B?UFlxRThwV3JiaGo4UjhqWTk5bXM2eXM1MkFKS1p6c1Y3K1BlQmFWdDhlcGZK?=
 =?utf-8?B?R2szaEFQRXN2OXRqVHRXWjRCQVFzQ2Z5MUFqeVlKZ3FBaGJYam1KOTIrWXJp?=
 =?utf-8?B?cEJ5WHBORXRMMTJHeFI4RmdjcmdOZXVwVzBBeDAwaFk5eWFoZ1BualZCL0E3?=
 =?utf-8?B?UWtuV3I0SnZlTXZiZTg0Unh2S0xwbnptaDJhWDYvZzFnSTl5eHRzNnpEbU4z?=
 =?utf-8?B?eGkxMjh6NzBBWEtpcXFVZXhGcDhFcFlSbTI1d01EZ0pUcGVYTmhNa0NkKzg2?=
 =?utf-8?B?aGc1KzgvcHZvVHh3ckFRL1lWVG0vWHJFNTd0S1hXL1VZMXhQOWRiVHJRdndD?=
 =?utf-8?B?UklJT0FTSjIrSUhCQTBLdmsyK3pOZVVRRHRXV01VWVpPeWtiSHI1cnJ0OWRR?=
 =?utf-8?B?R2MrWDFFRWNWQ1NISTB1Y3VDWGUyUmpoWm84azJyaHhyWjRJUnpiTUc4RkE1?=
 =?utf-8?B?S1hBS2gzVmYyUTRiVGF0UFVoS0ZlQy9KeGJ3OFRIT1FCRXZWUHJqQmpzUEVW?=
 =?utf-8?B?ZFZuNkU1LzBQWklXdHVUMmJNVEJkRWFLV0Vtb3ZpZUs3WmhQNzVSUjU3SUFZ?=
 =?utf-8?B?dVBUUmE0QlQwRlpZRDFwamtJNWREYTFKTnc3aThISUJCMVMrbkk3eFU2eHRB?=
 =?utf-8?B?UXNiakJ2eTVhWm1JeHlaNEx4aWw0V0hLeFRHL3dnY1F1VVZNS2NhWnNxUHVZ?=
 =?utf-8?B?UStKeEhRNkpuV3V1NjhWaEtoWXFjanFBNi9idXRuSFJYQVdRQlJnaWxTL3hQ?=
 =?utf-8?B?dDRqaHluR2t3NEthNlV6N1BaZkZSNjBJaVl3d1ZzUTlVcGV2eFI4dndPOUN2?=
 =?utf-8?Q?Qe4RekMMQX28qaeaFGfqEmKJp?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24f416bc-f03a-47b7-353f-08dd993e93f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2025 14:40:20.5865 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bXfGAfSYL7JO5dTDvv5yAuuLoKKgHyxkl8dmQuwYmc+mkv0S7CvsO1WBCD3Pza3BczWFqhsj9AiL+zTFKMZzDQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8572
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747924851; x=1779460851;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=U6H3NJKQc53haZbVRVIVcoS4vHTwdiE0dm3VCxIVALg=;
 b=ge6Fj8CWaGmKpqjfKPk7o3d71SBrGLaj3IM03ULcQFlcmZsQfy0i1d/g
 +hQk3dTREKeFA4bRHrL8caVX/xAqssb3XAKlA+56WTaJdfCfXbAk3soLC
 2t7PuL97NSscMJ9neNbZl+em+RJJ12yCT2JjUN/w/NNgaq5u1LsKYVJVi
 sLg79dduoG8NrsrEzHQKH5A3Gs8puqphSy82zom6A8OqJgCWq4pKibmeR
 8fNyZ2I7eWufBL/LK372ZCF6kgJQxsiJGyKf1orW5LKS/zn7mi4C9qxz5
 bzNFysqJkWQbtB3218ciu/ZzctCBG2IjiVA+/mTc/luZ71fnb/Sty9SJh
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ge6Fj8CW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 15/15] ice: default to TIME_REF
 instead of TXCO on E825-C
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogMDIgTWF5IDIwMjUgMDQ6MjQNCj4gVG86IEludGVsIFdpcmVkIExBTiA8aW50
ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc+OyBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9u
eS5sLm5ndXllbkBpbnRlbC5jb20+OyBuZXRkZXYgPG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc+DQo+
IENjOiBLZWxsZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT47IEt1Ymlhaywg
TWljaGFsIDxtaWNoYWwua3ViaWFrQGludGVsLmNvbT47IExva3Rpb25vdiwgQWxla3NhbmRyIDxh
bGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT47IEtvbGFjaW5za2ksIEthcm9sIDxrYXJvbC5r
b2xhY2luc2tpQGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNsYXcua2l0
c3plbEBpbnRlbC5jb20+OyBPbGVjaCwgTWlsZW5hIDxtaWxlbmEub2xlY2hAaW50ZWwuY29tPjsg
UGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gU3ViamVjdDogW0ludGVsLXdp
cmVkLWxhbl0gW1BBVENIIHY0IDE1LzE1XSBpY2U6IGRlZmF1bHQgdG8gVElNRV9SRUYgaW5zdGVh
ZCBvZiBUWENPIG9uIEU4MjUtQw0KPg0KPiBUaGUgZHJpdmVyIGN1cnJlbnRseSBkZWZhdWx0cyB0
byB0aGUgaW50ZXJuYWwgb3NjaWxsYXRvciBhcyB0aGUgY2xvY2sgc291cmNlIGZvciBFODI1LUMg
aGFyZHdhcmUuIFdoaWxlIHRoaXMgY2xvY2sgc291cmNlIGlzIGxhYmVsZWQgVENYTywgaW5kaWNh
dGluZyBhIHRlbXBlcmF0dXJlIGNvbXBlbnNhdGVkIG9zY2lsbGF0b3IsIHRoaXMgaXMgb25seSB0
cnVlIGZvciBzb21lIGJvYXJkIGRlc2lnbnMuIE1hbnkgYm9hcmQgZGVzaWducyBoYXZlIGEgbGVz
cyBjYXBhYmxlIG9zY2lsbGF0b3IuIFRoZSBFODI1LUMgaGFyZHdhcmUgbWF5IGFsc28gaGF2ZSBp
dHMgY2xvY2sgc291cmNlIHNldCB0byB0aGUgVElNRV9SRUYgcGluLg0KPiBUaGlzIHBpbiBpcyBj
b25uZWN0ZWQgdG8gdGhlIERQTEwgYW5kIGlzIG9mdGVuIGEgbW9yZSBzdGFibGUgY2xvY2sgc291
cmNlLg0KPiBUaGUgY2hvaWNlIG9mIHRoZSBpbnRlcm5hbCBvc2NpbGxhdG9yIGlzIG5vdCBzdWl0
YWJsZSBmb3IgYWxsIHN5c3RlbXMsIGVzcGVjaWFsbHkgdGhvc2Ugd2hpY2ggd2FudCB0byBlbmFi
bGUgU3luY0Ugc3VwcG9ydC4NCj4NCj4gVGhlcmUgaXMgY3VycmVudGx5IG5vIGludGVyZmFjZSBh
dmFpbGFibGUgZm9yIHVzZXJzIHRvIGNvbmZpZ3VyZSB0aGUgY2xvY2sgc291cmNlLiBPdGhlciB2
YXJpYW50cyBvZiB0aGUgRTgyeCBib2FyZCBoYXZlIHRoZSBjbG9jayBzb3VyY2UgY29uZmlndXJl
ZCBpbiB0aGUgTlZNLCBidXQgRTgyNS1DIGxhY2tzIHRoaXMgY2FwYWJpbGl0eSwgc28gZGlmZmVy
ZW50IGJvYXJkIGRlc2lnbnMgY2Fubm90IHNlbGVjdCBhIGRpZmZlcmVudCBkZWZhdWx0IGNsb2Nr
IHZpYSBmaXJtd2FyZS4NCj4NCj4gSW4gbW9zdCBzZXR1cHMsIHRoZSBUSU1FX1JFRiBpcyBhIHN1
aXRhYmxlIGRlZmF1bHQgY2xvY2sgc291cmNlLg0KPiBBZGRpdGlvbmFsbHksIHdlIG5vdyBmYWxs
IGJhY2sgdG8gdGhlIGludGVybmFsIG9zY2lsbGF0b3IgYXV0b21hdGljYWxseSBpZiB0aGUgVElN
RV9SRUYgY2xvY2sgc291cmNlIGNhbm5vdCBiZSBsb2NrZWQuDQo+DQo+IENoYW5nZSB0aGUgZGVm
YXVsdCBjbG9jayBzb3VyY2UgZm9yIEU4MjUtQyB0byBUSU1FX1JFRi4gTm90ZSB0aGF0IHRoZSBk
cml2ZXIgbG9ncyBhIGRldl9kYmcgbWVzc2FnZSB1cG9uIGNvbmZpZ3VyaW5nIHRoZSBUU1BMTCB3
aGljaCBpbmNsdWRlcyB0aGUgY2xvY2sgc291cmNlIGFuZCBmcmVxdWVuY3kuIFRoaXMgY2FuIGJl
IGVuYWJsZWQgdG8gY29uZmlybSB3aGljaCBjbG9jayBzb3VyY2UgaXMgaW4gdXNlLg0KPg0KPiBM
b25ndGVybSBhIHByb3BlciBpbnRlcmZhY2UgdG8gZHluYW1pY2FsbHkgaW50cm9zcGVjdCBhbmQg
Y2hhbmdlIHRoZSBjbG9jayBzb3VyY2Ugd2lsbCBiZSBkZXNpZ25lZCAocGVyaGFwcyBzb21lIGV4
dGVuc2lvbiBvZiB0aGUgRFBMTCBzdWJzeXN0ZW0/KQ0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBKYWNv
YiBLZWxsZXIgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4gLS0tDQo+IGRyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29tbW9uLmMgfCAyICstDQo+IDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPg0KDQpUZXN0ZWQtYnk6IFJpbml0aGEg
UyA8c3gucmluaXRoYUBpbnRlbC5jb20+IChBIENvbnRpbmdlbnQgd29ya2VyIGF0IEludGVsKQ0K
