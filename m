Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 57366A9CFA6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Apr 2025 19:33:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 01ED1612E4;
	Fri, 25 Apr 2025 17:33:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dMtHuC0tzQOW; Fri, 25 Apr 2025 17:33:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5D1056120F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745602416;
	bh=pasmcjCOgW+hP4Q5RSj/PZNy/GlcQaqcjXWEbGydTHs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ene2kuFs6+9IOkuoNZ84K8AOm+hEW1iqLxVM9Gg22Y+VmEeoSut3DYXGBsZF5u0lf
	 LqRznybuKHxPZFQKwBwtpZg56+hj4ScNoo5Bu7QDyT7xSKMxGOLRZyzPbJy0fRWkUt
	 IBRH1KZxDIwEMIjSJW8OpdORfKYSmgFKMIrvzB7GVDwimGQfcwGzqzWT4QGXVlC3va
	 mj/XAUci8bRdvT37m98DQ5AU2srh7oanW6xoprAUgC62x9C/ORX/bkFR/dmm9u2qgU
	 v0S94uRLt4WM6SqEKjg0vCq9yu849WIqwYBJvMnEaPWAqhkZYrvJtSsTWWrKkp72Jb
	 lpq9jnK2MtrDg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D1056120F;
	Fri, 25 Apr 2025 17:33:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 61E4731
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 17:33:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 48060611A4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 17:33:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HTTus3_TLTwe for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Apr 2025 17:33:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 94B3660FE7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 94B3660FE7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 94B3660FE7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 17:33:33 +0000 (UTC)
X-CSE-ConnectionGUID: CSNghLKFRHGj72a/osMsbg==
X-CSE-MsgGUID: TsyODe4zQQSUEEtryrsu7g==
X-IronPort-AV: E=McAfee;i="6700,10204,11414"; a="46504995"
X-IronPort-AV: E=Sophos;i="6.15,238,1739865600"; d="scan'208";a="46504995"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2025 10:33:33 -0700
X-CSE-ConnectionGUID: HX/MH6vCR+GpwQUCHHH5yw==
X-CSE-MsgGUID: 8+XSZG+GQZOtE4IWKsOrfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,238,1739865600"; d="scan'208";a="137775376"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2025 10:33:32 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 25 Apr 2025 10:33:31 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 25 Apr 2025 10:33:31 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 25 Apr 2025 10:33:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ULUxeWd2QOiyjcMXztQz+vSPlbs+xoZJO24XLoUUWz7229ScNn+vINDA/pPgThGLuPgct0zxCO9UstQ92XbVtmJmRZXq/3aM7DfnGUVtOoxAXTMH9mNxROwr70+NFMv//6b7Enxe98jPRDZapsoX0l4i0doyNDU4VHaO3c5CYWNkCL6jU7ltdFgVfgRKrBRD+A38APu1wz/6kudKq1gin2CujmH6xuwA84MRaMPtQLwGPTxrqw3ipRSYN8SXu5rdIGBCp8gfUc5jjEsLY+xY+oeYf/LC4e5FSBH/HtfHWv+wXltzHWqB+YvDrd9qRtOAyuBqBmYOiQZZeUDZqNQg1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pasmcjCOgW+hP4Q5RSj/PZNy/GlcQaqcjXWEbGydTHs=;
 b=uKyEKfMQ+LzvTIL/1T0HCtgI4e/cOOY9xEYszByjZ/LiLNr4UefusoyO+FHuZIhARr+jdwcHvJ/VY1i6vbzFe/FOYwO3wBAwo6zDE0PDXa/ItsGicwjpTplEdpN3p6TmxK1PDWtDzglOyBPjP68DXcmf99zM6twuYmejUewkCZYBFsUt8xY65gRbwinUKI/6vlHdk5wqVx/MMtDaxnroJifAYP72O85Z6+qUPRm40Bt1sNVC0loz1B3l6Fl/KMnbPcrbjSO6B/6DQUFB8suJnaZUmm5ds+v6JOG9x6kqPU85QFd9InP+Wegpv/s2uv2jMUzxuvicujOuoePEuvkCzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by MW6PR11MB8365.namprd11.prod.outlook.com (2603:10b6:303:240::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.48; Fri, 25 Apr
 2025 17:33:27 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%3]) with mapi id 15.20.8678.025; Fri, 25 Apr 2025
 17:33:27 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Tantilov, Emil S" <emil.s.tantilov@intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Chittim, Madhu"
 <madhu.chittim@intel.com>, "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "Kubiak, Michal" <michal.kubiak@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, "Dumazet, Eric" <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Simon
 Horman" <horms@kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] idpf: protect shutdown from
 reset
Thread-Index: AQHbqg8elGqUmiwzJ0aubTpI3axVkrOmjuiAgA4s5oA=
Date: Fri, 25 Apr 2025 17:33:27 +0000
Message-ID: <SJ1PR11MB629795751E9CAB28897DF34A9B842@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250410115225.59462-1-larysa.zaremba@intel.com>
 <a83efcaa-9b01-4efb-9ac0-42f5db42a576@intel.com>
In-Reply-To: <a83efcaa-9b01-4efb-9ac0-42f5db42a576@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|MW6PR11MB8365:EE_
x-ms-office365-filtering-correlation-id: b34beea5-0768-41cd-47bd-08dd841f49bf
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?TEkwUmp3emI2SjNwdnFtTTJBNXJZYzFRdDBaYno3MU9pTmxVaFdLbTdtT00x?=
 =?utf-8?B?ZTJURWpkSkdnZHBBVEtDZjBaRlVrLzh3M1lRNTZadWZmOHdIVWU5S1dhbnh5?=
 =?utf-8?B?UTdJYkFEMDc5TlZSbUNXbGN0eEdpZjg4NEpkQmhTMXphNm85TUppU096MW0y?=
 =?utf-8?B?K0ROTnNrdU9RRFpTOUdXUUI4RWl1TzNhYjNEOHpkNFFsVHphNmk0cTR3c1Fi?=
 =?utf-8?B?N0dTenMyMDJ5d1dXWVFQbk92KzBYZ3JnRTkzSyt4eVEzSzY5SDhuK2JzalBG?=
 =?utf-8?B?NjNpT0RtUUNkekgvV2dWUlE2ZE9Vc3NEUi9KdjBmRzlCTjByOU10ZmcvcG02?=
 =?utf-8?B?dXZBUXh5VWxDemlNQklrdzZEaURBQ2tBSHZIcG1BR05XeTFDZFF4VG1FdTlp?=
 =?utf-8?B?UXBJQVk1UGlPTmFOZG5heXVRNktrZmg0QkRneHBwQzZjVjRvU1RFTE96dUtR?=
 =?utf-8?B?NkVLQ012T0VsSlRZTWc4dmVpZGhoNnA0YlRZbFNla1RQeXlxTTNCbUVZaG5Q?=
 =?utf-8?B?VDVENzF6RklNVzlwR204RUh0L0RncUd0VXpjeGdIdXhvRldMb3JNQWZlZXVt?=
 =?utf-8?B?ZVlOTnVuYXdrZERvM1RJeTBHbWRWRlpBNUw0OUQydGt4dU1yTVdkQU5yRVhR?=
 =?utf-8?B?dVBRR0YxdGU2aUZRVTAra3dpYXlsZTZNOHY4dURRMXJMYk9EckZrTlpQQjM4?=
 =?utf-8?B?aFk3L2hBc0J5eWNzbkYzWi9yemRDZjhNNnRxV1JrKytZSlg0SlcrOExhQm1N?=
 =?utf-8?B?dE5uTCtRL2o0cHkwSXBscUdCaWJmRVNOKzBCWTR6aDNISzRMQmc0b2FHMmpk?=
 =?utf-8?B?cXpFU0x6Qm1UbFRXRlNvS0ZxNVI0bU1zamlnVVVEcXZnMmZuRnVNUnVOREY0?=
 =?utf-8?B?NEdmR2ZnMWt4ZGNaVHZBcDlsRThoeE9JbmpMT0ozVzdoeDBxVDRTdmlNRW5z?=
 =?utf-8?B?cXNJaGJ6V2tNWEY3THREejRSZnNhb1pUZWFDUGlFU1VUUnVaeW52N3pQOWdi?=
 =?utf-8?B?ejJIVVdHQnRhNFdxbUdmdjk5aTQzYjVSS2JOVGNIeWJJRXB2cFc3U2RvUGtj?=
 =?utf-8?B?U0tYclVxM1l5cG1ROUd5Sy8wMXR1S1JsbG5RdG44K2NmWTFNUnZ0VVluYUZR?=
 =?utf-8?B?eUhFRXM4bEl3RjRKSENSdGR3Y2pCWnVSeUtxTStQcSs3L244Rm1iL3NzUXgr?=
 =?utf-8?B?Z3NQQVZ6VFFKOUw4bko1L250L2lteFc2YWRiTTBHTjB2MTIzc1BYUFVNTjNM?=
 =?utf-8?B?cm5RV2ZXb1o5U2xIVitLRVRXN2lrMVFGODM1eDVSbFA4cnlYbkcwcGx4Mm53?=
 =?utf-8?B?Y3Fac2lUekFmVU5TUU5Wa0hnL0hhdHkyR0RKZjE0ZnAyRkRGTXI5dVBaU3dp?=
 =?utf-8?B?dGVzYzk1YUJsMzlHMk1SNk9OYzh6M0h0M1JaU3JUL0JmNXJBdjdSUVgwcGYw?=
 =?utf-8?B?YkcySENydWRuc2VrNThGNXMyeVJ2bFBnNXRTMk81TGFpOXdOcVdlTTBacDdh?=
 =?utf-8?B?ckUvd05VSFZhL0ZSTnlKay90ZHZ6bkpQcGhjeGFGTG1FOEpEeTdCVVdka3Ft?=
 =?utf-8?B?WnVjQ2tmZDFSY3ZFVlFuK2Z1U0N1Q1ZsQXM5bVY3VHpudlo3dWFYRWhucmJW?=
 =?utf-8?B?ZUJLU1FWQy90cjd4d3NTbnlzU3NyNjhRcEZXZ1QwZVdGdVVHT3JYVzJCc0xF?=
 =?utf-8?B?UTdvdkNCZ0hodUtLek5IVldBMy8wUWlDNDduYTZzTTJ2ZGZ3QWxFclQrNlQw?=
 =?utf-8?B?bWVybTlGYjA4VEtnVnJZSDRqRGY4ZVpvaFpsaFNzU2c5YjhlUDRHeHE0UC9N?=
 =?utf-8?B?a016amlRYmNzL0o3a0JsKzAxVUZCY1pFVEplb1I1aTB3ZkNkKzlCZ2JMbFJB?=
 =?utf-8?B?U2hRU2pjRUh5STNJRGdSSnVQRmdLamZLcE0zQkdDQmlRalNHbnp1cVBCSVdY?=
 =?utf-8?B?d01qWWdHdGwrZktYQm5yblIrVVZtYXY5cjRkRUlEL3BZeTBLUWFMTG9Kais2?=
 =?utf-8?Q?GuK7NLKh3cDHEOt9b6H3ivq7aXSrdc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aExqcjVDM1kxS29MTEtaamJBdTMrcDdsWkl6NU9yUjZIaFdYczFjUUlkVjVF?=
 =?utf-8?B?U3BNWUJPMnV2NklTRGc3eS9WeHNDK0NZOU1OZk5Wc25SeloyZ3VEYzUwVXFZ?=
 =?utf-8?B?UXRZWDk5ZEJEWUpDeXlTNDdmVHlubkRISllidElKMzJUK2pMUlNuWk04cnZ4?=
 =?utf-8?B?cHIrbUJ2NmQrejZXNWlqL09FMVVkOS90MDJvMGtPblc2c0NERUtiRm80dC9C?=
 =?utf-8?B?OUYxaUdhVzRkczFWdkJncnQwVDNQYnlBN3AwZElWOFpKazNOVWkycjVaNnMz?=
 =?utf-8?B?ZW5nVFdRTXFYbFVoNGFqZHVmWlVMVi9JdzBBNXJCL1BuVm1HVnFiTldHZm12?=
 =?utf-8?B?ZnlDSTdjdG1RZW5RK1k5bTJYcVRqbDBjcnBxdnVJMTJIVFd1Q3dKWUx0Ykg2?=
 =?utf-8?B?bm1VaEt4Y291U0puVkt2ZThORk9sVTJKUS9jamRuUWNIVXRJVTNmOFNLM1dk?=
 =?utf-8?B?WXJFd2FtNmxHZHNaV3BqZFpDODQ1WFdwRXlHL0VPa1VCMkFTUlgwYllzY2I5?=
 =?utf-8?B?eDR6VHRXSnNFNTRDd1FFYjJoSG9HMStBT3I0ZnJtNkJacnpjUDgrVlhBb0NG?=
 =?utf-8?B?d1VGUDBRejFPdjZ2MmFIMEhxV29OazhTUmNNM3FEWGU1eGprRWRCdTQ2S2Ey?=
 =?utf-8?B?ZVFJdHl0S1lDQXpGMmlBeSsrbFRrQ0Q2T2xTSXQ2N3lpVVc0RDJYMTkrQjNw?=
 =?utf-8?B?STVLN1BGZWVKODFRSkNMZkdHak1KNGl4Rk1Dd3REZ0tvTFFrYkozN2U1V0ZP?=
 =?utf-8?B?b05jTVByNWU5VCtiSG91M2VMZkxYWS90b3ByMzBROUZLVWpsWmhoSFI5TWUx?=
 =?utf-8?B?bXVld1BPdkpWTEJoOE9VRnRFdDZEK01pSW1yUVJSb0N1aS9JTkZYT0EvMUVC?=
 =?utf-8?B?ejE2clM5MzZGWjE2NUNDbTRHdGkxYk5teU1ra01KYlFTOVdXRTZRei9TZWta?=
 =?utf-8?B?S3MybDhhZzJERjVpR2tSWkFhQTFXYW5Mcll2VENXUTBoMktxeFJEN1Q3WkIw?=
 =?utf-8?B?aHpzSXBicmpLcU9GKzdCa0l3blY3MzdZOVB2SFNsQUVVL3VSdGZKaDdUekNv?=
 =?utf-8?B?NzgzR0lOc1JDTk1ocVRocXJ3THV6dGhjc2F5SkxIK3p1cW96TVF1aVhBenZm?=
 =?utf-8?B?MHVNV3JrTnhEVTEwSUJYT2lKb1VxbWxVNmcvODd2b0ZrVnN2SHlWZE4vajRK?=
 =?utf-8?B?NXMyL0xrUWtkTGluK0M2d21tY1ZJUG1sWWc3c0lNYTlnVGQ5SjJtd3FmbHlN?=
 =?utf-8?B?RjdYalZVSkJEZTk4QVV5SkR4UzFVWkhSbHp5NWVrVW5NMEczVzBmQlg2elVL?=
 =?utf-8?B?NUpSemdWWE5BUEFqT2tDK29yVUdLNWxrNDhlTy9aNGFlY2FHQkVTcitOZkFY?=
 =?utf-8?B?NjloV0Y0Ym1neHdCK2JyK2lXREtmU2hJazdaR2JKOU5BOC8wOXpReFdRTDJF?=
 =?utf-8?B?MXBQSytydEdkdGRWbzJpTGtQTUdLU1kxQ1dsSlovRFg2TXlZcWdwTmxkL1BU?=
 =?utf-8?B?RUFVbkVCcVNQL2N4UkdLWlF5d0grWG1Qak9NWDFOUFArdVRnaUdrZDc2L0ZV?=
 =?utf-8?B?Q1lXRGdBK05PemR1TmhYZ0NheHB3UGJueGdadUE5UWRvbUxmeEZtNGlpOTlx?=
 =?utf-8?B?bnBSdXNuS0krSFQ1Ri9CdzJNWDlHZ056TmwyWnpWTitFNC93ZjJvakdFcU9k?=
 =?utf-8?B?NlFTaWx6NzB1d3BBNlBGNlJ5UjI3eXdueHZKSnFtcnNwbHpBNmFpZXFRcVpv?=
 =?utf-8?B?RGRtS3d2WVZEUGJLR28rK0NTNi9ocGhKZzBtWmlkMTZTNWczRklnL2g2dENC?=
 =?utf-8?B?RFUxekg0RU94ekVpMXdVWEtMUWU2dk9LOTJweExhUjRueExzVFdoSTRtdmZ4?=
 =?utf-8?B?ODBsVHJ4Vmh6VkpSNVFTdkJEZTQ4SHpUZXZ2UzJ1UmNhSzBOd2kvSWszcWwv?=
 =?utf-8?B?b0s2dVlRS1BLdWZ1OHN5TXN5eW5WanB6dVR3U3FwbVFiSjNLVXhCZW9mTVJL?=
 =?utf-8?B?TG9iNHVqbWNOSFNFN1RNSEtvQnJxclpUUitMd3h5OXlmS2k4ZWZYSFErUmRI?=
 =?utf-8?B?QzN1clZBR2V4eDJTckUyanJZcCtXc0xmS3NuYzlVKzVZNVdUcERoSTN3RUVT?=
 =?utf-8?Q?SZcW88yiAuGOoO2yHhRl/9MlR?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b34beea5-0768-41cd-47bd-08dd841f49bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Apr 2025 17:33:27.1981 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JoSC8nIU6WHitvsilkPpn5yqs3UUdCc/n5VGP5YophSyakvTTdNC3gMidVxubb6bsSfBfZFWY6sLUQGzF0NMQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8365
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745602414; x=1777138414;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pasmcjCOgW+hP4Q5RSj/PZNy/GlcQaqcjXWEbGydTHs=;
 b=eV1bYzTBVWhX2/4Kduk5X9GxGmtYFj/gGCc5Z+inkeq9KoETwDY6WSdn
 LcdxXZEavHxDwnZ081H95JNR1v+irBNZmbs5NAFohZ7+W+RZIMvcBtM8K
 SGjY03VLw3Xgvnj0RTpqVpcqHfJVyNKcTvCxogYarXSuhy1GE10hIb6X/
 5A8gRBPudr3Aj+CUstIkpk0chtft1JNry2GodJZ9xXKe6fwjSq2em1w8q
 cMU7YwAjkXu0mL60uXz9EYuqyMG1qhktMXrgqBMC8A8BCHCt/gQga42sd
 kpXGjQJ6mQdfJjO7SPkVs0tMBjbxm0J2/uE3ferCLq2OvfgAIMe5xFKdk
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eV1bYzTB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: protect shutdown from
 reset
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YNCj4gVGFu
dGlsb3YsIEVtaWwgUw0KPiBTZW50OiBXZWRuZXNkYXksIEFwcmlsIDE2LCAyMDI1IDEwOjA0IEFN
DQo+IFRvOiBaYXJlbWJhLCBMYXJ5c2EgPGxhcnlzYS56YXJlbWJhQGludGVsLmNvbT47IGludGVs
LXdpcmVkLQ0KPiBsYW5AbGlzdHMub3N1b3NsLm9yZzsgTmd1eWVuLCBBbnRob255IEwgPGFudGhv
bnkubC5uZ3V5ZW5AaW50ZWwuY29tPg0KPiBDYzogTWljaGFsIFN3aWF0a293c2tpIDxtaWNoYWwu
c3dpYXRrb3dza2lAbGludXguaW50ZWwuY29tPjsgQ2hpdHRpbSwNCj4gTWFkaHUgPG1hZGh1LmNo
aXR0aW1AaW50ZWwuY29tPjsgSGF5LCBKb3NodWEgQQ0KPiA8am9zaHVhLmEuaGF5QGludGVsLmNv
bT47IEt1YmlhaywgTWljaGFsIDxtaWNoYWwua3ViaWFrQGludGVsLmNvbT47DQo+IEtpdHN6ZWws
IFByemVteXNsYXcgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBBbmRyZXcgTHVubg0K
PiA8YW5kcmV3K25ldGRldkBsdW5uLmNoPjsgRGF2aWQgUy4gTWlsbGVyIDxkYXZlbUBkYXZlbWxv
ZnQubmV0PjsNCj4gRHVtYXpldCwgRXJpYyA8ZWR1bWF6ZXRAZ29vZ2xlLmNvbT47IEpha3ViIEtp
Y2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+Ow0KPiBQYW9sbyBBYmVuaSA8cGFiZW5pQHJlZGhhdC5j
b20+OyBTaW1vbiBIb3JtYW4gPGhvcm1zQGtlcm5lbC5vcmc+Ow0KPiBuZXRkZXZAdmdlci5rZXJu
ZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnDQo+IFN1YmplY3Q6IFJlOiBbSW50
ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5ldF0gaWRwZjogcHJvdGVjdCBzaHV0ZG93biBmcm9t
DQo+IHJlc2V0DQo+IA0KPiANCj4gDQo+IE9uIDQvMTAvMjAyNSA0OjUyIEFNLCBMYXJ5c2EgWmFy
ZW1iYSB3cm90ZToNCj4gPiBCZWZvcmUgdGhlIHJlZmVyZW5jZWQgY29tbWl0LCB0aGUgc2h1dGRv
d24ganVzdCBjYWxsZWQgaWRwZl9yZW1vdmUoKSwNCj4gPiB0aGlzIHdheSBJRFBGX1JFTU9WRV9J
Tl9QUk9HIHdhcyBwcm90ZWN0aW5nIHVzIGZyb20gdGhlIHNlcnZfdGFzaw0KPiA+IHJlc2NoZWR1
bGluZyByZXNldC4gV2l0aG91dCB0aGlzIGZsYWcgc2V0IHRoZSBzaHV0ZG93biBwcm9jZXNzIGlz
DQo+ID4gdnVsbmVyYWJsZSB0byBIVyByZXNldCBvciBhbnkgb3RoZXIgdHJpZ2dlcmluZyBjb25k
aXRpb25zIChzdWNoIGFzDQo+ID4gZGVmYXVsdCBtYWlsYm94IGJlaW5nIGRlc3Ryb3llZCkuDQo+
ID4NCj4gPiBXaGVuIG9uZSBvZiBjb25kaXRpb25zIGNoZWNrZWQgaW4gaWRwZl9zZXJ2aWNlX3Rh
c2sgYmVjb21lcyB0cnVlLA0KPiA+IHZjX2V2ZW50X3Rhc2sgY2FuIGJlIHJlc2NoZWR1bGVkIGR1
cmluZyBzaHV0ZG93biwgdGhpcyBsZWFkcyB0bw0KPiA+IGFjY2Vzc2luZyBmcmVlZCBtZW1vcnkg
ZS5nLiBpZHBmX3JlcV9yZWxfdmVjdG9yX2luZGV4ZXMoKSB0cnlpbmcgdG8NCj4gPiByZWFkDQo+
ID4gdnBvcnQtPnFfdmVjdG9yX2lkeHMuIFRoaXMgaW4gdHVybiBjYXVzZXMgdGhlIHN5c3RlbSB0
byBiZWNvbWUgZGVmdW5jdA0KPiA+IGR1cmluZyBlLmcuIHN5c3RlbWN0bCBrZXhlYy4NCj4gPg0K
PiA+IENvbnNpZGVyaW5nIHVzaW5nIElEUEZfUkVNT1ZFX0lOX1BST0cgd291bGQgbGVhZCB0byBt
b3JlIGhlYXZ5DQo+ID4gc2h1dGRvd24gcHJvY2VzcywgaW5zdGVhZCBqdXN0IGNhbmNlbCB0aGUg
c2Vydl90YXNrIGJlZm9yZSBjYW5jZWxsaW5nDQo+ID4gYWRhcHRlci0+c2Vydl90YXNrIGJlZm9y
ZSBjYW5jZWxsaW5nIGFkYXB0ZXItPnZjX2V2ZW50X3Rhc2sgdG8gZW5zdXJlDQo+ID4gYWRhcHRl
ci0+dGhhdA0KPiA+IHJlc2V0IHdpbGwgbm90IGJlIHNjaGVkdWxlZCB3aGlsZSB3ZSBhcmUgZG9p
bmcgYSBzaHV0ZG93bi4NCj4gPg0KPiA+IEZpeGVzOiA0YzkxMDZmNDkwNmEgKCJpZHBmOiBmaXgg
YWRhcHRlciBOVUxMIHBvaW50ZXIgZGVyZWZlcmVuY2Ugb24NCj4gPiByZWJvb3QiKQ0KPiA+IFJl
dmlld2VkLWJ5OiBNaWNoYWwgU3dpYXRrb3dza2kgPG1pY2hhbC5zd2lhdGtvd3NraUBsaW51eC5p
bnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogTGFyeXNhIFphcmVtYmEgPGxhcnlzYS56YXJl
bWJhQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gUmV2aWV3ZWQtYnk6IEVtaWwgVGFudGlsb3YgPGVt
aWwucy50YW50aWxvdkBpbnRlbC5jb20+DQoNClRlc3RlZC1ieTogU2FtdWVsIFNhbGluIDxTYW11
ZWwuc2FsaW5AaW50ZWwuY29tPg0K
