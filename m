Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 025F0BFEA2A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Oct 2025 02:00:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF23A40E90;
	Thu, 23 Oct 2025 00:00:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZfaIl6NWgZ7t; Thu, 23 Oct 2025 00:00:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 23D1140E81
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761177616;
	bh=paibVHSDckaP8W5MwAqeOliwVNAX8N2eVkJuoYR5vAA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WnLRXS8idh4estmx6PJwsxmQJykSM88S3SVwk941Elm0fWv+npt+tr/iCYKIWeic9
	 +qsPX3RrgqpBjQ9i86jFSfY0zG1KoxhS8QBiFsyeeJ0MeVQLJvmIT9Hi4zdNlXaIOC
	 yTsnowG2YTbNpdsRpxRc1q/0jC56x6IugEQZU4CqQhupGxUgHctdX8V/CDBmE77+he
	 cP0mclJR4/xkU5T316ivJM++lXAmVFEO1ZMdNioDaePUWmul8eLqgPrC+5ZUFxuy8o
	 e2YBXmwDbRw6A/T5i58BBaLpvOVncXG6dKRf0XgpJS8fVp5Az1lNmHNumkyHnOPqdP
	 lC65AxTd78f1g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 23D1140E81;
	Thu, 23 Oct 2025 00:00:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 20D89DE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Oct 2025 00:00:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1E2C440E7F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Oct 2025 00:00:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UyIaZWhzakZ0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Oct 2025 00:00:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6453740E7C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6453740E7C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6453740E7C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Oct 2025 00:00:13 +0000 (UTC)
X-CSE-ConnectionGUID: hEw0SwJEQg6QN8OwYdaiYg==
X-CSE-MsgGUID: xvEp2RfyTvS1b/vsMDXluA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63041796"
X-IronPort-AV: E=Sophos;i="6.19,248,1754982000"; d="scan'208";a="63041796"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 17:00:12 -0700
X-CSE-ConnectionGUID: SQqwxgQgSBiztasUE9+gOQ==
X-CSE-MsgGUID: pOFJ57QPQF6fg5LhrKjclw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,248,1754982000"; d="scan'208";a="189134632"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 17:00:12 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 17:00:11 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 22 Oct 2025 17:00:11 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.29) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 17:00:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZysnB6XB41sLQ9h2shCj+CtSwObQdG5iwwETdbuktZeYNrUkz8LT+tsL6U2ZRoMmuGGnJ10zOAv0YKtX3cMbTVY11sIgkmvVmEHamAR2nYfA5esFwSRycGZmaQIKc69gQkCfw6fyQ8rWdzqQ4aZH6MlzDroftOu1vjY8cTnd4++Vx3yxXKBzft6Sv16t+DLi/g4ys65MJMVItiTbkFpuZMP6Bl8hdegYCFzauhouc/bahszMze3YjkJJrbi655CSB50xL7cr7wbSu3jjAcPiPX8CgWayxTPvRxumYF7YMw1goPHfLk+IxM9TVCoEU1WfiudSnxH6kuRYV0FKI89zUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=paibVHSDckaP8W5MwAqeOliwVNAX8N2eVkJuoYR5vAA=;
 b=LwEkm4oMDEJTe8TDArmkCKMGtg7AQ5ejnS+/AtaLtVXZ9PEl3EWlZJ9k6O9Q9SIrkzEi2L9nAeLTdiR1XptsV9vFYNyARGa8wu7VCEDQv33VQmymrzMGB8V0AtsR/eAsyZzOVZqi5oW45RchT1luB7cs7CReGVGi7sjAzAj643DrRdNv/gLUvXNlIzaBnFQR1yH4C0Y4HWuXNfAZ8iNmMpjGjYr1mq79KXhuEDP67YrZZ5+fqULdS5Fkp+C8coIx77JwE0PB2wmLsLW59EYGAamRpdTAyvHdf2AEw/QEDdYoHLGrwiNJcVr75NcmXj5N/Wro5wpeNl9F75+2t+BMcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by DS7PR11MB8856.namprd11.prod.outlook.com (2603:10b6:8:253::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.17; Thu, 23 Oct
 2025 00:00:06 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::241d:ef75:baf6:dfe9]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::241d:ef75:baf6:dfe9%6]) with mapi id 15.20.9253.011; Thu, 23 Oct 2025
 00:00:06 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, NXNE CNSE OSDT ITP Upstreaming
 <nxne.cnse.osdt.itp.upstreaming@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: implement configurable
 header split for regular Rx
Thread-Index: AQHcNt1RsOfGzUTGyk+BdLtl8KBcpbTO8fcQ
Date: Thu, 23 Oct 2025 00:00:06 +0000
Message-ID: <LV1PR11MB879063320A71E52DCDAD42FE90F0A@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20251006162053.3550824-1-aleksander.lobakin@intel.com>
In-Reply-To: <20251006162053.3550824-1-aleksander.lobakin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|DS7PR11MB8856:EE_
x-ms-office365-filtering-correlation-id: 41caba6d-4470-446c-910b-08de11c72019
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?QjAra0VMc3dYREhXS25LV3RPeXpBdTdhbkVtUENmNUZjT0Y2QlFHVTJaYURx?=
 =?utf-8?B?OGl1MjNxcDQ2eit1TklFNDZQSW1yMnd5Qmphblo5QWlmMjBXWXdySHZBbGtl?=
 =?utf-8?B?bW90SXkxWE9USUg5SG01WndoR3N6YlBkVTZqVnVyQUMrd3o5RmwzZ0lTRWMv?=
 =?utf-8?B?c0tRM1IxNTBEOWhaalRxeWtsS00wQ2x3RFpUZ0NBTEZEVU4vamFldGxmNkVX?=
 =?utf-8?B?WkdyQnRGVzhqNWZDNWR3bndIZlRwaDhXSlhTaCszZzVoek9RTkpMRlNRcXZB?=
 =?utf-8?B?YzFsUWZIZlR5bFRTMHhJTEU2SWRJcUhacFp6MkpKbWptZnFjZXRCNjljZXl6?=
 =?utf-8?B?L1NxQmRHTHA1cVdRRi8zVFF3Y2pXZkZ6aDlOY2NISVdnOTExcDIrSWExUTU3?=
 =?utf-8?B?OVNyYngwNTB3dTRtMHB5U1NLL2ZSSHJzZjVkcFZ6VXpnRlZVK0hNOXBVYWF6?=
 =?utf-8?B?QXhWWHk5bGVBRFVlWTVPSE9nWC9vbVhTME9vWVVySDliNXM5OFJaUHRyRTVk?=
 =?utf-8?B?elNnSGk5aUtyVXpITFBjNGxpbmlIM25RazkydUxLVEYyUWJmRFRqemRXcnZs?=
 =?utf-8?B?eFNLWGN2NW5oVDJSbnNjVFZBcWZjc2J6emlXMkRZN1hoa2Evb3NXSSt0RjRh?=
 =?utf-8?B?Rmp6NlF6d1JmeTU1eGZOVjBwWHlWa25XVjFjd254cTkyYUFyaDlMUmdxYVcx?=
 =?utf-8?B?MTlwcERBN1hTdnRuQ0VZNkw0ZkF6ZGovV2hSSXVram5ITFZmV1RjcGNGVnAy?=
 =?utf-8?B?Yk1tMmRua2U5YjhTaWsyWDRBRFQ3NG1Eb3RWY3Y1a1FzQWFiVXQ1VVR2eXRO?=
 =?utf-8?B?b2NWeEM1YjNzZVBRZVFidEoweWJzRmVBdTdzb1FLaExZQUQvUm9IR01hNUlp?=
 =?utf-8?B?djIzcVR6NTdLR24xOGdEbTY2VnFrS0pMdkdGeGtvT1RWNk5BVDJ6VFRiQ21R?=
 =?utf-8?B?NVBnYWhNYkx1Z3J2RTR3ZUdCbzdoZCtQNG9COHRyL0VKQjdHMjNIUkpUN1NZ?=
 =?utf-8?B?TWY3UWlXR2U5R0gyZ2dOL1puMFI5akFKSkhyQ1Z1UWdzT09UUlNYODgyOC9n?=
 =?utf-8?B?cTZPK1Z1L2kwZkF0a1B2MUp5QnpITWc1cGNLQTdDSDVaTkFzRU82RkJGbFN4?=
 =?utf-8?B?VzJhUCszWGlUWVFjbTU1T2hYd2dxbWhDV0FIbGtwWnREM0hKLzVkK3g4OGxF?=
 =?utf-8?B?ZDdzMmJ4S1ZZdnpPaENLbC9qQ2p0MGNsdHNqMjUyMXE0WTl6UjJ2M0NmWmJ1?=
 =?utf-8?B?WHJ1Tlk4Nzd5bERXYW9CR1M1cFgxSlZiRDdOU1ZKSDE2NUNwbDBtNTArVWpV?=
 =?utf-8?B?UDYvRjlTb3RaUGpIRXlBWFl2eW0veGZnSGdnTEhYVHprenVLbVhveW91bFN1?=
 =?utf-8?B?UWd3QXZUcWRjcE5IOGRrU24waXJHTW5Dci9hb3BRNmlnbEtndGxtVG5hejBQ?=
 =?utf-8?B?ZFdDcGdSYWpxSkpIT0RFcWpwdzFUOU5YYzJVdWl4T2N6aFl5dXhEOGlXZloy?=
 =?utf-8?B?bXdWRG4vRU1raWZZeUVBQklXZXFBZEJnRkxnSGhjZStKeGd3T0ZSa2lGZ0Fj?=
 =?utf-8?B?aDYrK3ZhRHM2WUlPaWZ1QnhMaHRPUS80RDZvZlZUbXJrUWVvOTdyYW1qeDgx?=
 =?utf-8?B?TlU0SmREMkM0OUxtb1d5TzVsR0dtQ1ZuU25Wb0JVYjBNTGNuRnF0LzJGWjZQ?=
 =?utf-8?B?YzdNR2o2d2RKbjBXdTdrZTZuRDBmL2tPOE12NXZ3YXNkYTBSMUZhLythaWl2?=
 =?utf-8?B?aks1Q3dLb00zWU1RWHF2ZTU3a1NLTDUwd3d6cmJ1Y3JyeEZRM29YKzhkaUpQ?=
 =?utf-8?B?ZVhPMGNkd25PYUZ6L2w2cng0Y3drdWZnM2tobE42Wi9oM0Q4WW91Y1lzUUZz?=
 =?utf-8?B?M3RuWXd2UWhPZEtCUVhZMnNqUmN6WVdpNW5SZEx5RkFJNkVkUTBXcDFReEFW?=
 =?utf-8?B?UkZ4THEwUVVVaXZIRWswcTlxcmQ4dU9aTWhsN0I0RGt5blJmUzlJUjJMWTZY?=
 =?utf-8?B?V0t4R0dTNW5KeVgyMy9mbXJLWXp0N093MUluOXd2TWJOdFdlTDlPQTFackhw?=
 =?utf-8?Q?zyCTeI?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eXdxMXJiUHZFMWl2MVNycVFHVGx2NzhMYWJjQ1RyQWVlTXdpTG55djlTUDNP?=
 =?utf-8?B?ZFVxZzdkWktqaGpvaHpIeGovQjh1a0lVb1BBWENRTkJIT1pwVmkrMjl5bVp6?=
 =?utf-8?B?RnJDUXp5T2NTZ25DdjJTb3FwVEpjYzduRzI1SUFkOVhtOFBTbUEzbzFURWdk?=
 =?utf-8?B?Z0dXUFlwbWN6dXJlUUpaQmJELzJLejMzK0hveCtrQWtZU09GT3M2WVZIamNk?=
 =?utf-8?B?Nk1vLzFOK1dVR3FJSFZDeVBWTWx3ZlFzMXhDQTBqUDU0TkFVZlBSSHlEeFpR?=
 =?utf-8?B?RkM5K1JBYis5QVpmOGhBRlJ3K0x4UHQrNjJMWS9KRWdwaXo3K0p5TzdyNnNV?=
 =?utf-8?B?dytIQUtYWVAreERjRUwvK2VnT1lzOWcrdnBkZmJLdlhMejNycHlmcGFyN0R1?=
 =?utf-8?B?NGd4RmREdzRMZDQvWXlLc1BhMUJZMjUya1VQQTcwNGlsKzIxaFNzaGxEOHUz?=
 =?utf-8?B?dld2aFE4NVFNUk9QdHBaRFUvb2dReTJlSUdPVVZ1dWtISzh3dUFKNmNBc0ls?=
 =?utf-8?B?dVRhR1R6V2JVRUVBZnp5UkQzWnVBc2t3YkdGTTdKRHI0VGhFVmxvMG13N3A3?=
 =?utf-8?B?VVg4QnR4aGJESGZLZXljYlFETkNNNjV3aU0rNDduVVcreFd2K3JIQTdmS296?=
 =?utf-8?B?SXdJKzByQkZmY0tRL0ZFRFFDRjlYV2E3d0JFK0UzRkQ4aFFHc3RLcHFGRlc5?=
 =?utf-8?B?cWZDRTBjMGNqRFlXd1ZBSlpHTHZPdFJjMGVRakpZWjh0U0FaQklQcjlybmFC?=
 =?utf-8?B?Z1hUcDg2N3JvT1JzTlJuQ1RaRkdCczlPelNBbm8xaEJIMGVmUEpzb1JpUVlh?=
 =?utf-8?B?VjVXTWhoKzJrSitEWHNQTU9UQ0d4eWk5VEFSZGR6QkhwYy9TbSs3UXprcnZP?=
 =?utf-8?B?VDlZckZRT0NsR2RkL1d6Uk5weENQRUtZOFl6ZUt1eXBRMGNZbUY1VjJwSTY4?=
 =?utf-8?B?QVZhb0xhcVljSVNkaFVYcExsUzBVLzlyYVl5MnhKcE9hcnU2TDNHbnBZaHJv?=
 =?utf-8?B?OGgzcHpOV0Z3RndKdmtrY1M5OGFBeWlPTFJPK3krMnh1NkN4dlBheGNaYTRM?=
 =?utf-8?B?Z1NybFhUT0xrQmI1Y2JDQkdwYVZnM2Y2L0JITXBMNmN1SE40cUxzWENWbU5B?=
 =?utf-8?B?d0UyMTgySnVkQmtyRHgxM2RFcldad1ZYdHoxZkh6M00yWjdOOWVldHAxVkh4?=
 =?utf-8?B?aFQ4WmFnRGo3eGgyczRQQVdFTHczK2RxNll0ZVFZVENCTDlmUmRCT2VMZmdx?=
 =?utf-8?B?Y2pGMEh1d3VGanJ6U3E3UVpYRUVVdmZMKzFBbDBCMUlrYkdnbnltbmxGUGwz?=
 =?utf-8?B?aDFUdk9qNEFXaUtVZjY3c0wwUVRiWnhuV014bmlPRDlRamNwc1d6WUdWZk5s?=
 =?utf-8?B?Mm1TL3VBNWdNeFR6cDl2cTlvT2NaWExmSkhhaVByVk54c3ZmYTN2eGgvMDJZ?=
 =?utf-8?B?RWxuSitZSEYwRHp4UFQ3eWkyNmhuZ1R5Mm4yL2p0WW1IQWJjN2xwUTZFTXdE?=
 =?utf-8?B?Ty8wWHhpK0t2OE9kNjVOUTZwYWN1enU3ekhXWHBScWxueVJmbDQ1WU84aXRo?=
 =?utf-8?B?N3RVcG93bWVwc1dMcjlSQW02T0tmMUZPNm1nZnZYYkJrTEtFZHlhSnlSdzN0?=
 =?utf-8?B?NGRLem5FRjEwL3RNWVBVYkU2elNRU3NIdThiQytUQTVMK3ZiSXNxdThYTHBH?=
 =?utf-8?B?Z1JPWFd2Qjk0SnZkV3B5eE93dVNEY0l0K0hDK3NHdFVQRGNPbEVnclpudEpK?=
 =?utf-8?B?N0w1UThFWFFUbkdxVEVONk5hWXBUTThES1p2ZXBqbWg3dFQyeWJSd2FtMzNv?=
 =?utf-8?B?cUZRcnpaanBRSkpwRDE0NFpmZTdPNjRnRjM1MUp0VUpZdkxJQWNsQ1VVa1RX?=
 =?utf-8?B?L0ZXbk9rbFZhUXVDR0FvUmE1bVdyQlZDQ1NCUHZlcUg0bDVyVVk1YWNPYlha?=
 =?utf-8?B?SHBKc3VtenRSOTNXZVNHaGU4TzdlTXNzeUtBOUtsOGdpTHluNXpNVzA5V2dh?=
 =?utf-8?B?a1VjdjdhdVRPTUJOVm5ObStDWnVKTm13eFFDa1JLSjkvdTZxcUNrZlRKS0Ro?=
 =?utf-8?B?MFJ4WG5QZGthNU5YM2k2VHcwTGJuKzZLWUhzL0E0bzl1eFJENk9zT2dHN0RT?=
 =?utf-8?B?Mk41SnloNlVWZEVzVG5GTkF4OFc2Y201TzZhQVd2ckFCQVRRMjRTUWU5MmJu?=
 =?utf-8?B?cGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 41caba6d-4470-446c-910b-08de11c72019
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2025 00:00:06.7606 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ebW8zeUrx8I8lCC/bPwP+ArFw1ZYU+tJFTaKvw0LbM3F0ERccf69PvVL3l+U5uJn/xKQ2wBhUmNQtozNxMm8FqEP49nRzDgI7755DPghssg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB8856
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761177613; x=1792713613;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=paibVHSDckaP8W5MwAqeOliwVNAX8N2eVkJuoYR5vAA=;
 b=HZZjr7Fmkjfy1JVKbe4nI5jK1CnK3F662brk8oMvNOk7wO2/YCqUD1Gb
 LwMCnVdvv+F2ZSiYf0ZXJMErF5dlTKIOVIF9D0eBfP5MTgDu1W2JR7Lea
 kcWX9ppA90bM/WZ/BFPU62wjl9MDN79z78hdib6RDLKrPiKB0HLq3FACS
 9IchNIL8tqzTJlk4hkN63x9hF2KudP62brZFpnrjfd2PnJ2Xh7QFgBdNx
 H51oshwrj5ToRjkxFcyhLzDr3LM+rh+cBqvbE96Zi2NMnxPQV7JF2a8lM
 aYKpjLLKFf8OFZZZCKXTHUOjRnyYNbiEC+UGweh8TWgTwyVZZ1knoUmUd
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HZZjr7Fm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: implement configurable
 header split for regular Rx
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
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBBbGV4YW5kZXIg
TG9iYWtpbg0KPiBTZW50OiBNb25kYXksIE9jdG9iZXIgNiwgMjAyNSA5OjIxIEFNDQo+IFRvOiBp
bnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZw0KPiBDYzogTG9iYWtpbiwgQWxla3NhbmRl
ciA8YWxla3NhbmRlci5sb2Jha2luQGludGVsLmNvbT47IE5ndXllbiwgQW50aG9ueSBMIDxhbnRo
b255Lmwubmd1eWVuQGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNsYXcu
a2l0c3plbEBpbnRlbC5jb20+OyBBbmRyZXcgTHVubiA8YW5kcmV3K25ldGRldkBsdW5uLmNoPjsg
DQo+IERhdmlkIFMuIE1pbGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD47IEVyaWMgRHVtYXpldCA8
ZWR1bWF6ZXRAZ29vZ2xlLmNvbT47IEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+OyBQ
YW9sbyBBYmVuaSA8cGFiZW5pQHJlZGhhdC5jb20+OyBTaW1vbiBIb3JtYW4gPGhvcm1zQGtlcm5l
bC5vcmc+OyBOWE5FIENOU0UgDQo+IE9TRFQgSVRQIFVwc3RyZWFtaW5nIDxueG5lLmNuc2Uub3Nk
dC5pdHAudXBzdHJlYW1pbmdAaW50ZWwuY29tPjsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgbGlu
dXgta2VybmVsQHZnZXIua2VybmVsLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBb
UEFUQ0ggaXdsLW5leHRdIGljZTogaW1wbGVtZW50IGNvbmZpZ3VyYWJsZSBoZWFkZXIgc3BsaXQg
Zm9yIHJlZ3VsYXIgUngNCj4gDQo+IEFkZCBzZWNvbmQgcGFnZV9wb29sIGZvciBoZWFkZXIgYnVm
ZmVycyB0byBlYWNoIFJ4IHF1ZXVlIGFuZCBhYmlsaXR5IHRvIHRvZ2dsZSB0aGUgaGVhZGVyIHNw
bGl0IG9uL29mZiB1c2luZyBFdGh0b29sIChkZWZhdWx0IHRvIG9mZiB0byBtYXRjaCB0aGUgY3Vy
cmVudCBiZWhhdmlvdXIpLg0KPiBVbmxpa2UgaWRwZiwgYWxsIEhXIGJhY2tlZCB1cCBieSBpY2Ug
ZG9lc24ndCByZXF1aXJlIGFueSBXL0FzIGFuZCBjb3JyZWN0bHkgc3BsaXRzIGFsbCB0eXBlcyBv
ZiBwYWNrZXRzIGFzIGNvbmZpZ3VyZWQ6IGFmdGVyIEw0IGhlYWRlcnMgZm9yIFRDUC9VRFAvU0NU
UCwgYWZ0ZXIgTDMgaGVhZGVycyBmb3Igb3RoZXIgSVB2NC9JUHY2IGZyYW1lcywgYWZ0ZXIgdGhl
IEV0aGVybmV0IGhlYWRlciBvdGhlcndpc2UgKGluIGNhc2Ugb2YgdHVubmVsaW5nLCBzYW1lIGFz
IGFib3ZlLCBidXQgYWZ0ZXIgaW5uZXJtb3N0IGhlYWRlcnMpLg0KPiBUaGlzIGRvZXNuJ3QgYWZm
ZWN0IHRoZSBYU2sgcGF0aCBhcyB0aGVyZSBhcmUgbm8gYmVuZWZpdHMgb2YgaGF2aW5nIGl0IHRo
ZXJlLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQWxleGFuZGVyIExvYmFraW4gPGFsZWtzYW5kZXIu
bG9iYWtpbkBpbnRlbC5jb20+DQo+IC0tLQ0KPiBBcHBsaWVzIG9uIHRvcCBvZiBUb255J3MgbmV4
dC1xdWV1ZSwgZGVwZW5kcyBvbiBNaWNoYcWCJ3MgUGFnZSBQb29sIGNvbnZlcnNpb24gc2VyaWVz
Lg0KPiANCj4gU2VuZGluZyBmb3IgcmV2aWV3IGFuZCB2YWxpZGF0aW9uIHB1cnBvc2VzLg0KPiAN
Cj4gVGVzdGluZyBoaW50czogdHJhZmZpYyB0ZXN0aW5nIHdpdGggYW5kIHdpdGhvdXQgaGVhZGVy
IHNwbGl0IGVuYWJsZWQuDQo+IFRoZSBoZWFkZXIgc3BsaXQgY2FuIGJlIHR1cm5lZCBvbi9vZmYg
dXNpbmcgRXRodG9vbDoNCj4gDQo+IHN1ZG8gZXRodG9vbCAtRyA8aWZhY2U+IHRjcC1kYXRhLXNw
bGl0IG9uIChvciBvZmYpDQo+IC0tLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZS5oICAgICAgICAgIHwgIDEgKw0KPiAgLi4uL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X2xhbl90eF9yeC5oICAgIHwgIDMgKw0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV90eHJ4LmggICAgIHwgIDcgKysNCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2VfYmFzZS5jICAgICB8IDg5ICsrKysrKysrKysrKysrKy0tLS0NCj4gIGRyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZXRodG9vbC5jICB8IDE1ICsrKy0NCj4gIGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdHhyeC5jICAgICB8IDg5ICsrKysrKysrKysrKysr
Ky0tLS0NCj4gIDYgZmlsZXMgY2hhbmdlZCwgMTY4IGluc2VydGlvbnMoKyksIDM2IGRlbGV0aW9u
cygtKQ0KDQpUZXN0ZWQtYnk6IEFsZXhhbmRlciBOb3dsaW4gPGFsZXhhbmRlci5ub3dsaW5AaW50
ZWwuY29tPg0K
