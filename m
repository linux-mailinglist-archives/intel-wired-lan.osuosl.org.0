Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B78D9CF113
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Nov 2024 17:08:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 28BDB61171;
	Fri, 15 Nov 2024 16:08:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hx1CPkbPEHXT; Fri, 15 Nov 2024 16:08:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 61BF86115F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731686893;
	bh=EEYAZ3cVQ6FCD1ZIctC55c1J0N7g/4vMdHfSlVWez0Y=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CVwrbf2ERqtYmaQ/qGqLxQf55Tl01+0YCkrC7Ap771mJqIRz0TCJ1+Ar2AyosCdh6
	 8smPcPWWFRXWfSjYSTZFL8OA0uJzEC3k7+bT3uFjfn/Fl1Fe0PO4/Z2vFyJ2Lv9lwX
	 jlJJYVTyTuiZxnY3WcMAx7RfDy/ZQ+xugB2i3QP4cXhM/U80S+KE78CuwNshXc/dzp
	 wxLUfUUa3qpOuvXVdGEdruDtGOFwMWHWqB2d6gMIZuf7MV+HD1pKqGaaSTjWDgxg6g
	 hP7uSqcrcgOxYV7NYTb7azKKaJsj+vN7b65gyb7h54kkTFcv/Bh65RFOe5RVHn9gp8
	 5y281HCb2cFYg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 61BF86115F;
	Fri, 15 Nov 2024 16:08:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 775101EB8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 16:08:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 577C44317C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 16:08:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FpPxlJqsDzvL for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Nov 2024 16:08:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 56C1243177
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 56C1243177
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 56C1243177
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 16:08:10 +0000 (UTC)
X-CSE-ConnectionGUID: 2yA4qZg5SdiXkHorX5PHWQ==
X-CSE-MsgGUID: KdydgL/lQbCyCUc7scMYTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11257"; a="35625852"
X-IronPort-AV: E=Sophos;i="6.12,157,1728975600"; d="scan'208";a="35625852"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2024 08:07:15 -0800
X-CSE-ConnectionGUID: qFUb5ITfRNCP6VioqZlhZw==
X-CSE-MsgGUID: MYpyuHZNSH2ZIYda5GpxXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,157,1728975600"; d="scan'208";a="126143709"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Nov 2024 08:07:15 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 15 Nov 2024 08:07:14 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 15 Nov 2024 08:07:14 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 15 Nov 2024 08:07:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tYE5gVc4jEMBTBtsK4n3JQ5LuR1/2Wwf111TVwha+lc0R5XHMZ3+RjPsw63brqRm7RcUjxdhO7xfK3NkRUqICpjWBsWu6swtAv+JBV4TCklXgjL42MRmGNppotJykslhT7OxbEIynDDP4CwnmZYcALPzIDJ/e2/Etzsqrp7ZnCSEC1Qyn8q377Z8MKyyE8E9+zR+22EJnxm8T6KVrCqBBfNDXyiuf4+K1oBUrzhxww/VXH9LW5qDer1tihseoSv87vAL9rJweiLY3MmTGstkXqJI6jz836GxZNaEbgeR7v9XQi6jUCdtCWMpr9bMGAqyi9W/EmsgX8SSA/ooeZwDaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EEYAZ3cVQ6FCD1ZIctC55c1J0N7g/4vMdHfSlVWez0Y=;
 b=ernZI1AYWzm93JPYNlXq2fQcE2C4jDCrdRmZzp1Kf2aXw7PpMllFYIwQF308+j6IDwbytSUlmsiA5uM9MA8klu6eGJc3pW6zwOYrnODUc/vov8WiQXVw4NJT3N7KmT97kFx/VZ+/Ym6itCHwqYSw3vv/9uMznZBlMUVbW3l8FyDcflUwRIsLboUxKia/8uDXZM2BuZEZ53ZX5wdxuvPg/qiHKE/pPncHm/n/BZxzGXoOarI9uhAdcjYQ7CgDuTQjmq0MWhbE0JyKJB69IoQj/L61o1Vyyo8FImc/7DwPthinEjiWfULt15O32ntGJcubVEHXSCCTO4UTSBdHOxr1mQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5889.namprd11.prod.outlook.com (2603:10b6:303:168::10)
 by IA1PR11MB6123.namprd11.prod.outlook.com (2603:10b6:208:3ed::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.18; Fri, 15 Nov
 2024 16:07:06 +0000
Received: from MW4PR11MB5889.namprd11.prod.outlook.com
 ([fe80::89d6:5ccc:1dcc:3073]) by MW4PR11MB5889.namprd11.prod.outlook.com
 ([fe80::89d6:5ccc:1dcc:3073%4]) with mapi id 15.20.8158.017; Fri, 15 Nov 2024
 16:07:06 +0000
From: "Olech, Milena" <milena.olech@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 01/10] idpf: initial PTP support
Thread-Index: AQHbNeN9pe8q8r04FEKYiyV3vou+grK4XQCAgAAktQA=
Date: Fri, 15 Nov 2024 16:07:06 +0000
Message-ID: <MW4PR11MB588988BB2B4E0D3DBEBAD64B8E242@MW4PR11MB5889.namprd11.prod.outlook.com>
References: <20241113154616.2493297-1-milena.olech@intel.com>
 <20241113154616.2493297-2-milena.olech@intel.com>
 <4aa6f9f2-e3d9-4255-a964-c03d611d848e@molgen.mpg.de>
In-Reply-To: <4aa6f9f2-e3d9-4255-a964-c03d611d848e@molgen.mpg.de>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5889:EE_|IA1PR11MB6123:EE_
x-ms-office365-filtering-correlation-id: abdb14df-f8a8-4a16-3412-08dd058f8d5d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?SUF1Yk1PR0t2Nkt1WjVQRUxGY0hCa1NBcnYzUFpDL2VuSzYxelcvNUxXUVZM?=
 =?utf-8?B?Ukh1Zkc4Y3BHeDkxblpJZ2FxUzdUTnFQSEhDOVJDb3pOa3RjeXQ1ZGVTOVhZ?=
 =?utf-8?B?eXg2eW9HcS93T1NmQ2RnQ2dTdFJtK1IyakdrUFYxdmZKSEJFVTk3SXI1VW1O?=
 =?utf-8?B?bXdDSFJDU0lnNWltRUtGZHJxdXJGVjAyN3lueDJUMEhaMmlBRmg5NDNvcklh?=
 =?utf-8?B?d3NyMmJYK1hhakpVK3lZVmhzQzlQN2I4MmZqUVp4NXdmQU1CUW44NWdsYjZ6?=
 =?utf-8?B?L1VSdGVtd0xWSWpIc05KSC9PbnJxKzZGaUcrcHI4TThzcjVWMTZLT2tjRFc5?=
 =?utf-8?B?MWRGamRLZ2c0ZjlVaDRjNkF5UTh6eTVNaEtBNkczZVM1bmFCcXdmQ0UwVDl4?=
 =?utf-8?B?M1UydVd1bXhhTnFwbHRnUGMzS2ZNWDhtSVdVUnRKbEx2clU1bW9uNUYwMjZB?=
 =?utf-8?B?M1IybDFBY1pjeC9NRXE3R1N1UDRySzgwVlA4T0hWcElVRmU3MDRmZG1rMXZz?=
 =?utf-8?B?SWhQQURvUDd6cHRIZjB1MmdBZ0QzTlI5UEozWm5GMmEwbU5WMHFTcXYrK3Ur?=
 =?utf-8?B?cTY3K1RReGl2b1V4UUY3eWo4d0M3SXVTTzBtV1dtYWxmd3BzbHlMNCt2a3c2?=
 =?utf-8?B?VWVXQTljQk1kQVppTXM5NEQzbld5Z3B1OGJFNnhiNnN3b2JuOEpORVZDQUNs?=
 =?utf-8?B?bmpMZnhaK1ZLcC84YjAxOFhDL2xFVXB0ejZjMjhlTkRIL1I1aHlDL3o1RDV0?=
 =?utf-8?B?Wkd3VGV4NGtTOElJakpLM1ppSTdRSFh3VEZRODFBbG9kUUlGckRLQU9DZG9h?=
 =?utf-8?B?OUYwaDBNLzZ3U0crSmI2a3A3VncvUktTSFF2ZnVlRnhDWmlxWjV0WWhoRjVX?=
 =?utf-8?B?aTl4cXJ3anVhb0drN0oreFd6TFZDR3JaSCtIbDhsMld6cHJ5bXNlUkwwaEpu?=
 =?utf-8?B?bTNyN3ZSaG03Q08zR3JpWkVmdWtaUHo4MGIzVzlVN3BwNVNYeHRPWTZld1Fz?=
 =?utf-8?B?VDJLMkdvV2VWbzZlcDhxYkVnc3hHTFZ5M1pOM3JVSWN5alBiNmFETFZEclEy?=
 =?utf-8?B?M1NSWTR0b01mVjVSczY2MDVaODIyUVQ3b1QzZ1hSNUFYMkVQNE5PdU5vTFps?=
 =?utf-8?B?alFSUG9LaHhSbDRSbXpWVmtqdnpEZlR3dURpT0FmTDVwTmRxV014eUhKdzF4?=
 =?utf-8?B?Q1Z0QWxOVnZqTDNpbVVUTjloOFVIaFFNZ2k5UStjZXJvNnZJeDU3ZnVGeSsx?=
 =?utf-8?B?Rno2SzV6aDNPbzFIT2hrZVNBb2oyVnZyWCtDWGR4bXBRMXVrcytBQjJpVFhP?=
 =?utf-8?B?dVZkTHI1QXVVWHN2ZFgvZlRuVnkxUVVodUxjTmZ5OU1QS1h3NUEzUm83SStW?=
 =?utf-8?B?VEt1TjFTd3NJSFZpWDN6VVh4MmZBZnNwTmRxTHhSZVN1U01WanVzZ2V1OWFY?=
 =?utf-8?B?TlUwMVJUc3UwSDhhOXE2ZDdMWGZxcnpmOXBGQUhmLzVORStrVXpzUWFzaElH?=
 =?utf-8?B?N1hoRDZFNEIrM0FrMkZmemx5NnhOTkRaMG9FRUZzZmVIN3d2bEZlcFE4eVdM?=
 =?utf-8?B?aWdUS3dLancySzZlZkxRR2hCSGxnSlc2djNNWmlETHBsbTRtd0RReWVteDlT?=
 =?utf-8?B?ZSttV0dnaXNXVWJUV3dLVTJjVTlkNkVRQzlLQUZPa1N6UDZ1cld0NGtIcUcx?=
 =?utf-8?B?SHpwTy9CcTJGSExMb2xZaXRRRDQ4bWlGVjhYcTRpUXVJaGZxM01mQ0RSYVVF?=
 =?utf-8?B?TG5TNHB5K2E2T0t2bzArY1hrRHl6aXZ6aUp1K0pWalJuUXN1RVI0czlOUGkr?=
 =?utf-8?Q?EOCoyX/ZEQWvh18V5vJACaiZM3l2uOU4j+Ozc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5889.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SVhJZFIrcVQzU2hCSXFWZzJNamRRTFp5UjN0dVV2a2owZksyZTJHaFM4emtD?=
 =?utf-8?B?dFFMVU1QeWZRMThSNU83MEhVSW5IYkVmS3NxeXhlcW5TamJha3ZoamRJNlRv?=
 =?utf-8?B?TEtkQi9UU05IK2ZxU0RNMHphazg4OXVEUFZ5Y1hsdDNPdEhEZjIvdnlLMEJq?=
 =?utf-8?B?bjVRTGVLT1N2Mlk2dTJ1NXpHVnkxKzhKdTltQ2c2dHpvYVNjSG1GYWM4TmxU?=
 =?utf-8?B?OFVrSDlCa2U0Q2JpQjFYaC8vejZiSUtEbXFrWXk1cmJVVHFBMkNUK2N4enFP?=
 =?utf-8?B?emhGWDhGQVN3TCtSR3F4REdabkpjSTFyNWwrUDcrcnFha1BPOGl4OEdCbGlH?=
 =?utf-8?B?OFozaGIxdmhIS3B0cFh2bjJKNnZmVWEyZW1Ib01yR0gvNjhaekJKbVdVQmZV?=
 =?utf-8?B?YVZXL2pYSVpIaC8wVE8vcS9oUTJ3L1BHUFo0M2pNTDY5bnhtZ05MNkxISEx5?=
 =?utf-8?B?SXJzUUlZTUZSVWZ6dzN2SXQ0Q2dCYzA3WlF6SUZZaWtya1VwY282dUJwVHdK?=
 =?utf-8?B?WExVT1J2U21WWUJSRm4yd2YwRWhNRndESi96M3hvUUt5TVBWaVhnSHVEYU9t?=
 =?utf-8?B?Vk9hejZtKzJKR2tubmtOUlJya25tMU0wcU9laVlFRDZrMUdwSVd1OCs2eFZz?=
 =?utf-8?B?SHBnNDg5QUJHSDQyMGRxbEVZUWU0R1pCNCtpQjBZYWFUdHZGQkM5VFN2YkpS?=
 =?utf-8?B?VzVaUTB5ZWFRU3pFcXNmWk1rSzBwcU5yYm4yVmt4L0hjMnVUTXplajFDclRG?=
 =?utf-8?B?NnQrMGhlTkV2SFhFSzFHR3dobXBYK1JxSTdHYklkdWs5QjJCVVZxMThNVHhY?=
 =?utf-8?B?SWNIby9tMGw3Y2RYcGpON2J5eTRTQnB6bndtY2xuSkdsV1VPaWpCR1JpaUgw?=
 =?utf-8?B?YVBaTHM3czJCbkRQWis3clZjUWFTbWdqWUdMMWRPK2lHeHZiVDVBVndlVlgr?=
 =?utf-8?B?UERBUDMwcERGMmM4MkRzbUdQVlh6bnhsdCs1bEVieXV1Kzd4VEFHRkpRb2oy?=
 =?utf-8?B?NGVYcjlIaG9rbXhnL3RYbnZBMjg2WFdBL1JxZ1hWKzdiYlJsV0RrY0xSUEk0?=
 =?utf-8?B?NXNjbDF4TGY2YTJhZUM2Q2ZjaUtianBPcVp0L1VXYXp1S1lmK0lYVzN6VUgy?=
 =?utf-8?B?RjdWNjN0dFhzZHg2MERuYThIVTRocGJuR2x0dU1rMzgxei8wa2xTSUcyazNk?=
 =?utf-8?B?YWpUeTNJMjZWdUZlRktLMXZMSzNMVkpqOUZsQ0tIWWZNN1llcnkrbE0za294?=
 =?utf-8?B?ejV1TTVITUsvWDRMc2tQK1hQWDlvRHAzTzZ5ck56RU5uOEJQK0RyeVhiMUQ1?=
 =?utf-8?B?M2lmbEh6bWR3WlY1Ti92dEtpUTFLTkU4N1VxV3N0T2s2dGtxSXJPazBWVkdB?=
 =?utf-8?B?akdUUEVsMGZRQktRcUNWb3dkdTY0UXRUaEVtRFRRc0dpQWt0R0tCQUprRXBE?=
 =?utf-8?B?Q3p2R212dDBPaENBNUZFdWJyRU9RaW1SS09DUDM3QUVhZzBtT01vem5NcUhv?=
 =?utf-8?B?bFZTclpOMFVOcTZLenBaVUdzbjZpKy9UYWl2TFdHTVh6elhrSk44YTlqWkF5?=
 =?utf-8?B?anQ1UHo0Rk81Z2s3bWtoaHErQVNCSjUxOGNwNjBGQ3JqUTI4c0dUWkxvZlE1?=
 =?utf-8?B?UTFYZzhQL3NVcElyUzE4cUFXbnFuSFRIL0c5MHM3anZ1Sm85bkJMWFJ1UGo5?=
 =?utf-8?B?YUE5eUZzeGJMaXpNZ1VyTmZYbmVGNG1UVUZKcTRlUWZoaktuS2dFQ3FIMkt0?=
 =?utf-8?B?NUJQdVM3ajQrYS9FY2FhczJBelJCZnJMRG9GWWcwbkRUQkRDcXk1VzcrZ3J5?=
 =?utf-8?B?VzA0M05pUUwxeXNEd1FtRjRhSUVsZzkzQ1BUTnNKd3R2Q2JJWHM3NXpyYjFU?=
 =?utf-8?B?RFJRVUw1MFJTeHBwczZGRXZmZXQ5ZnpSeEFmdStXWVA4QkVWdWkrRDVwOXNo?=
 =?utf-8?B?c3FQY2hTeFBNZk53U3ZZNGVJQjlrY3NSY2VlZlh1ekM1V3JsdmRUOEFxd2s3?=
 =?utf-8?B?STRzZnhUOE9wYUQ0eHF4aGZCcGo1WjdQeVhabWFVdy9iUXEzbkdHTUI4dC9m?=
 =?utf-8?B?QVZzYmdaci9kR2hXSEdYTGVVV3ZsRXZRTE1kS3FlRml1bDF2ZnFhd0RybUFi?=
 =?utf-8?Q?vnKoT94cFN69/rNW90kf1/sxu?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5889.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: abdb14df-f8a8-4a16-3412-08dd058f8d5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2024 16:07:06.6209 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +7fy1ly2pA8ABJ+nGbxHb1xhNHMJqo1FXJJk4PIPMWCq9YvJlMuut5tNAEnYp5vUY/CNTThjsoMmN4kiTQB7XA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6123
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731686891; x=1763222891;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EEYAZ3cVQ6FCD1ZIctC55c1J0N7g/4vMdHfSlVWez0Y=;
 b=X0XGEgs3Okpccf816JojIa7JUiSLbN8/o7LR4QdbjK0G9mmYKQTtCjF0
 e9Z0A1qCy5cDaHoJ7NQn4gsOPm2AGdjpTFQ/77QKRCh3+FxkhubIzntUg
 fXiEfgqSSxkAT0+PtuNgrj91zg4yi0sqdp/WsYwkOi2gHQbr29yeKEu1R
 yQO6QSy7YfrsuK6JHFRZ+WrK31TWT9srZD8zeMOsP7xIYd1dyU5dMe7d5
 A4M0raolQ0ijFOCESxhjGEqXigCqPMqx6zQPmo+Lo0ECRr5oNTarJIi+0
 LTtUyk3let+ewGwobNMlIQJ7JESMeAZuu3gmgzT+MFVgQoKqImItSP9/y
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=X0XGEgs3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 01/10] idpf: initial PTP
 support
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

T24gMTEvMTUvMjAyNCAyOjQ0IFBNLCBQYXVsIE1lbnplbCB3cm90ZToNCg0KPiBEZWFyIE1pbGVu
YSwNCj4NCj4NCj5UaGFuayB5b3UgZm9yIHlvdXIgcGF0Y2guIEl04oCZZCBiZSBncmVhdCBpZiB5
b3UgdXNlZCBhIHN0YXRlbWVudCBmb3IgdGhlIA0KPnN1bW1hcnkvdGl0bGUgYnkgYWRkaW5nIGEg
dmVyYiAoaW4gaW1wZXJhdGl2ZSBtb29kKToNCj4NCj5pZHBmOiBBZGQgaW5pdGlhbCBQVFAgc3Vw
cG9ydA0KPg0KPkFtIDEzLjExLjI0IHVtIDE2OjQ2IHNjaHJpZWIgTWlsZW5hIE9sZWNoOg0KPj4g
UFRQIGZlYXR1cmUgaXMgc3VwcG9ydGVkIGlmIHRoZSBWSVJUQ0hOTDJfQ0FQX1BUUCBpcyBuZWdv
dGlhdGVkIGR1cmluZyB0aGUNCj4+IGNhcGFiaWxpdGllcyByZWNvZ25pdGlvbi4gSW5pdGlhbCBQ
VFAgc3VwcG9ydCBpbmNsdWRlcyBQVFAgaW5pdGlhbGl6YXRpb24NCj4+IGFuZCByZWdpc3RyYXRp
b24gb2YgdGhlIGNsb2NrLg0KPg0KPk1heWJlIG1lbnRpb24vcGFzdGUgdGhlIG5ldyBkZWJ1ZyBt
ZXNzYWdlcywgYW5kIGRvY3VtZW50IG9uIHdoYXQgZGV2aWNlIA0KPnlvdSB0ZXN0ZWQgaXQ/DQo+
DQo+DQo+S2luZCByZWdhcmRzLA0KPg0KPlBhdWwNCg0KUGF1bCwNCg0KSW50cm9kdWNlZCBQVFAg
ZmxvdyBzaG91bGQgd29yayBvbiBhbGwgSURQRi1jb21wbGlhbnQgYWRhcHRlcnMuDQpJJ3ZlIHRl
c3RlZCBvbiB0aGUgSW50ZWwgSVBVIEUyMTAwIGFkYXB0ZXIuDQoNClJlZ2FyZHMsDQpNaWxlbmEN
Cg==
