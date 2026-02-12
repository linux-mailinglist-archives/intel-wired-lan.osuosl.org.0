Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kPoxDLwbjWmkzAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Feb 2026 01:15:56 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E35E4128942
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Feb 2026 01:15:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E082A840BB;
	Thu, 12 Feb 2026 00:15:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G4YPauIXn7oS; Thu, 12 Feb 2026 00:15:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C9C68408C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770855352;
	bh=oxPjzLa5BgvRE+paltc+JhAbPLPc+V9RNU1inEOq/JY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SsF2OzxWFYUns9EeJjj+kugIM9qHFehMvW5R8s9n7Ts3e0wPIuRr8+BJHNmDqQSCH
	 382gHW5GLz4PZWgqXTogEhNsYZoPRyShtm+jLZnbTD+7dxMUIjqQ3E+dMUTbKD76XN
	 K6uJVSfVnSdeHBaJexZq54QukcE4FTMh9THW3nGO/UY5xGNxMaxoI9nR2VptsPP0jr
	 5NtYJpZhnZyh47+VuO+vgXhXIMMd7Qh6osZWLL+A/NJmjn38ZGY711bGsadIREDada
	 cppBcZ+iZ7/lrxo0+w7ELeYkwkKBbDp/Ik6gmJiSnayKL14f93Wtez2C+t/ZC4GIAl
	 YuxVOiCOk255Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C9C68408C;
	Thu, 12 Feb 2026 00:15:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7C9EE23D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 00:15:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 66ADB611C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 00:15:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fdxULCAq_9E7 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Feb 2026 00:15:49 +0000 (UTC)
X-Greylist: delayed 429 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 12 Feb 2026 00:15:49 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 76C64611C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 76C64611C3
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 76C64611C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 00:15:49 +0000 (UTC)
X-CSE-ConnectionGUID: m+VMVpaLQxCdQmpYfZ4oXQ==
X-CSE-MsgGUID: wH0EOdWWSo2ltj8N7J1ShQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11698"; a="71912802"
X-IronPort-AV: E=Sophos;i="6.21,285,1763452800"; d="scan'208";a="71912802"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 16:08:40 -0800
X-CSE-ConnectionGUID: KiXBrCoNQHubkPyBkhoHiA==
X-CSE-MsgGUID: uqHWhDiUQh20QgjdaOSgnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,285,1763452800"; d="scan'208";a="216663018"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 16:08:40 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 11 Feb 2026 16:08:39 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 11 Feb 2026 16:08:39 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.56) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 11 Feb 2026 16:08:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bZBPLXj3G2jWTCSUe5E+aqAOSdklfvwGD47UYEXd8UW2HbQaWmrODEe7dPG/HcX0NDqRCgqHOLUmCwyCGc1VmJgBm+U1MqfawcJRDpHnGVwK7UR1Fvu1duJ3IU9d7jERrp5C3LUNgJ1GuT8999CTSJFWHy9yJAmwZbHfDOHt8gxAiTnXf+1R1t1SUYDUi8/HhyZWG+WGqXPK4W3cQgWy8P3XKOb/6lAeIVjafuyBtmL9lNlKuVGudFmPYIpP++SWCai1ypFpRyhfBwKjdjJxktONR3oXywgoOepUSAo8PQTa3BpaEuvEx+auj7aRvM7nXEQD+WFYtnL7XKQMU2vWtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oxPjzLa5BgvRE+paltc+JhAbPLPc+V9RNU1inEOq/JY=;
 b=Xl9Zkpn7qZ4C3ynpKmpu1ZdLpAeoDqFFCAmJaYL42QAaOcmgr1VxZcfZOroUFoEYQuvxwM6uBeeLHMV2Js4X8Z9sY9NQQjUs7MZB6eJ4aP9p28LbO0A7TjyVr0GWSXRwH8D1Afpmvk2rXlsGZuboWw8/Pwr/fpnBR5kTTrahEwZa4ugVg79r2gy9DE8ir2juiUfGMph9RvJ8kwwQCMzIwGH95hR7wZvqrWR3Slcz3PBWWAPt5EYF+gfveTGfchdqULJXVwLufo+jkvfLeh3vfQ2IZR3IoJeZdwHM+2fmizU2YglyAMk/gaBewLwsfw7s1mDXSVSNNmAMqki4s9KC6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by DS0PR11MB7310.namprd11.prod.outlook.com (2603:10b6:8:11d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.19; Thu, 12 Feb
 2026 00:08:32 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e%6]) with mapi id 15.20.9611.008; Thu, 12 Feb 2026
 00:08:32 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: Li Li <boolli@google.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "David
 Decotigny" <decot@google.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, Brian Vazquez
 <brianvv@google.com>, "Tantilov, Emil S" <emil.s.tantilov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v2] idpf: nullify pointers after they
 are freed
Thread-Index: AQHcjDW5k/sf+q/Ji0SkFpcT3g2GjbVfV5+AgAAM6QCAHupa0A==
Date: Thu, 12 Feb 2026 00:08:32 +0000
Message-ID: <SJ1PR11MB629758BE3D8FA45AE91638429B60A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20260123065806.3858623-1-boolli@google.com>
 <IA3PR11MB8986E9CEBE2CEC78B194DF40E594A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <CAODvEq7yoXMvhkZhzcF4rgaceCnxCfzgKbSa5+SMVMO1X+XgdQ@mail.gmail.com>
In-Reply-To: <CAODvEq7yoXMvhkZhzcF4rgaceCnxCfzgKbSa5+SMVMO1X+XgdQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|DS0PR11MB7310:EE_
x-ms-office365-filtering-correlation-id: 7d766f62-bb9d-43b0-29a4-08de69cadbcf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?bEdVaGd2b3NyN3cxekhXbElzbm9FekR0ZmVIeEk1THk1S1Y1ODlJSnphUUJQ?=
 =?utf-8?B?a0dEeDNBL0lscWtxV1ZhMUdsTFgvSXROOXdNd2p3Mm43S2swc01iclhRTVBR?=
 =?utf-8?B?Nk94MWhJZlBuQW5QZTVua1RsZVpTbHg3VUJBdWdPZVB4MU5XMVRESTBPNGd2?=
 =?utf-8?B?aFhlOUtIYUVDSHVlSVI4clJtMXNRa1lBYXlSM2Zwb3RRcHp5a1hjNkNzS0RT?=
 =?utf-8?B?OHNyb0Q3djMybjdsYmZZYU4yZmRudkJjeGVwTFJ3d2wzNWMyYzZselcva2pI?=
 =?utf-8?B?dk53S0NWQUVFeGhQTmNYcU05ak5OU0pOVW1ybWxmWStWTmlKaXFFQTRSRkZr?=
 =?utf-8?B?ZXJ4NlBsbWJqVzhldjhKYm4rVUlOeHVEVERSTHhxbFE4ZXNyRG9ibCtIZndT?=
 =?utf-8?B?ZXhrWnVzNHdxdkFuOWJWSGxqNkFUcU5SWHd3T0NCSlUrUkpnQkFSa3V3eVZi?=
 =?utf-8?B?emJZVHI2VW9SUFhXMmJtQXVWOUE3aW14VDNLOXBoMERkZUFOU0NhZEc2TXE0?=
 =?utf-8?B?THNZbkZEc1M1VkxGYXp1eVJVSFhCZFZQZ09sOXY3WFZlL0RGVHJ1WHc5YjA2?=
 =?utf-8?B?WmtYZTNxUHVxSjF1VUZ2TWsybllJSENiUi9lUEx0NWFWcjBaL2xYNFEvTUFL?=
 =?utf-8?B?YVNzMlBwVm83NWNBZ1JGT1BuM29yTVdCYkhKaHF3bno1dlYxQnQwaisybllK?=
 =?utf-8?B?OEg1UVRkRXhyRWIyZWlXZU9qQi81QWk2Y21vUys2Vkc4SXFSKzdUMEpZRnVq?=
 =?utf-8?B?eHd6UVlyRkMwQjJraUlleEV6YWpKdWVxdGNPR3UyZ0dGclAyR3MzbVR6NWh0?=
 =?utf-8?B?RVNGOFgrb3FtWUFUNzcveWQ5SU9FSlBZck5Ob29PRE9GRXovRUFpbXJmQjdN?=
 =?utf-8?B?UGhYLzY4THVMSEsvWDQyWDlwZXhGZ1dDT0RDRnUxSW9lUVBuUUlrZ1ltbHJ0?=
 =?utf-8?B?anFmUVZuOUFKTjRkZGI3T1RLcmZkSnBObDlGaFN2bW5pUjJVb05tZW11dmFs?=
 =?utf-8?B?azljUXliMjUyQ3NpQlBRejdnZFAvaDg4Q1ZQUERzcGM5KzVxdStyTkY3TFYr?=
 =?utf-8?B?dzVnNFF6ZHRSQjdnSVBhdkRaWkZZNDRwUm1HYXdRUWlrRnNwWVVRTFJOZ1ZS?=
 =?utf-8?B?d2dXVGt2dExieVZFTW1oSzZLOEhlSDBicVJqdXBuNWpjckxkY0l4bXhBYjF6?=
 =?utf-8?B?bFBhMHF6V0E4Qmg2OWFXY09hL3JSa3ova3dhU0J4Znl2TEg0WXBmRGxYZ2R6?=
 =?utf-8?B?N2t4MlVrTzlrUHFDbHdadzhmbys5bkRnU2svaCtpejhHbG1IMnBYeSttdHdH?=
 =?utf-8?B?VDVNdExlVEdicnNLQmlMNE9qcXFrd2d6dGhhNkN6Z0k5WVpRY3JHYnhYM3p5?=
 =?utf-8?B?aWREQUhreUdaVXZPeUM2eU1NY3orS1ByYzA5MGZhWWVWOWRiYXhtd1pCWVA3?=
 =?utf-8?B?Q0JoYW94THBxdUFIcGl0eE1xaFR5M1NnREJPbHJKb2NRM0h4bzlYa3V1b3Rt?=
 =?utf-8?B?SXZqWlplcUhjdkxkaWJtZFV2K0hubmRNai9yY2EvUVd5YVdibTBIT1RCcFcz?=
 =?utf-8?B?cnpZeFRIa0UzeWRibFdIa1E3Rzh0SmtwTWFGdFYvSys5a3R4TUg4VE44OWcy?=
 =?utf-8?B?WXloU0ZmYms4N1YzdGlPOW82d3FUS1V4d29mYTQyVDJ5eVVFVUNoU2R2OHEx?=
 =?utf-8?B?RHk3UytjYVdsQnp3WDFDMEhQQ3d0YTMwOGp0RFBjOVpIZVlNbEdoTkN4Ymp1?=
 =?utf-8?B?eklNUXVVampGMWhQMnJyL21NSkkrbzNmTHpGMkYvaXJLK0NteHpBR1VmcGVk?=
 =?utf-8?B?OG1GK1BZaTJ1MW0xNTYzQWlMUkl2KzNWMXhXdmNtMjE0dFRaR0hLeUE2UTN3?=
 =?utf-8?B?YlBuNndLbU9DMnRQcGl6QUdpblkxNyt6NUpaNWRxT2hweUFVaXBJcFBIaURE?=
 =?utf-8?B?eTljZ2pFZGJYdmlLdEZ4dEIxL3M3WFY0SlhyZlNabHlNZFpGQ1c1dFE5dzJi?=
 =?utf-8?B?b3VhdGZlc3RablMvTW44R0ltcDdyVTEvMlRtUzNUU055WjN1SzczZ3NTbGU2?=
 =?utf-8?B?cFNCUi9CUnQ5TVJqSXVINHpJN3FsWnZ3Uk9CWk5JdHlYZkVMdUNmbXlvZVZP?=
 =?utf-8?B?NW54RzZuWlVkZ3g1SzR6ZFlwbHVTUE92OVY4emhQSEFwWkI4SFRibmlBSWlH?=
 =?utf-8?Q?osELROxnQwb1OtrQkmJVMJc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SkFTRXphSGpPZTlFNS9JRmV5QlhMVzFDd0piQXh4cWJhdElra3grejJuR25h?=
 =?utf-8?B?SlhuMEtvTEx5bWpzUG10TmdXSGJnVkNXMmNEZVczcUNIeTFCVFZjWkttV1M4?=
 =?utf-8?B?R1lVYU9JMUhHdHFjbEwwNGdaWkp2REdGeDloMTBGTlhzWjdGbmFrdEhJMHR4?=
 =?utf-8?B?Z29sQy9KeEtXZnFhNXhzUTR1SE5pVEtzUkZzVnBhTE1HVlZDNmVPNGI2V205?=
 =?utf-8?B?eEV4ZGVVcEd3RkR1UnJkaFl2Mkl0djlmVlQvYXJQTmtWZEl4Uy9YMnp4WkZr?=
 =?utf-8?B?WTIyZHVtWkFscHNQODhXcFFWZW04TXFtQ2U3NjVraHhTQWVWNE5QWExORldM?=
 =?utf-8?B?S2dZRXUvWHdsNWN4TldMVFc5MmJCK0lhTkUyV1NSdS9wTmhuZWhlOVVlV3Q5?=
 =?utf-8?B?QStwdGlkNTBZTDBOc1dNRGI3eFVTcnFDTGp4bzdMR0gvUnp3dE5IYzQvbGdG?=
 =?utf-8?B?eDJvV25zZEhPeFFlTm4ySGh0R281K2lBdmduUFd5VVkwcEdwcVd0ZmdYeDY2?=
 =?utf-8?B?ME1mckw3YzNwUVhMTlV0WWVNVVNPL2Q2ZndROXVtYlRLTXJ1WDNXaHdUa0lt?=
 =?utf-8?B?RXpmaGNvNHZuN0lpUnhZeVZ2RjM0V1d2VUZGelFjSzlhQVhsOGdFODBRcWRO?=
 =?utf-8?B?VThLckVpYVRXOVpIOVJaZXREeDFLZXR0ZHZIWng4RUVrWUxBNHpSeWovRUJO?=
 =?utf-8?B?czI1dnF4cW5Qck0renVVVUt6SXczSHpmeG5XQlZZK3pwRy91NnpxbFF3eXNL?=
 =?utf-8?B?UGduWTBIaU9hZDNEdlByT1B2ZkJsMm9ieG0wcVh5UGpGcy9seVp5OVEvaWk1?=
 =?utf-8?B?VFk5T3Q4QzgzeUQvKys3aUxPeHBVUmJmeEdiVzlZRTVWdFFzWGoyaXhWRHdR?=
 =?utf-8?B?bkVYYlRiOGNYRjl6R2kyWHA5NnIrK2lSdVZMbnFRSk5SQ1VLTFBFM3RGTHR2?=
 =?utf-8?B?N1FMZ29SaEV3RURpNFVFK0p5Wjk5ZFVyd1p2a1g4TTM3Q1BRSzlkanlTWXFq?=
 =?utf-8?B?SkFkaVc3ZWwyMDdlcExQdlhGdHhjV3pGbHNjT1RjWkk0TjVLVEs5eng5b0VV?=
 =?utf-8?B?M1g4QXJGbDd3dHdFRThPZkdqWFQxdVV4aGE1L2xxR3o3ajl1cklkQjR5QnNE?=
 =?utf-8?B?Uk8xTDI2R3pCemQ0dmIxdUJLTHRTT2N6eUUwVVA2VlpNSDJxYTcxQkpHeU9I?=
 =?utf-8?B?QlVwRkFrV01JcElScG4zVXZzbjhQbDdURHY2Qjlqa3BrdFV0eXdodGVxWG9S?=
 =?utf-8?B?RVlWWnBLWUI2UDJ1UnY4YU9CN3k5T1MydGhKeHNHYXFCK2tNTmVmTTN4VGdn?=
 =?utf-8?B?NXZhY0t0YWNTWHVmazhqcThsQU96czFKUWNWUnA1K0hKTUcvMTBiYWJtS2dT?=
 =?utf-8?B?VDBpUitTVHRYOWZRNEN5c0JYZlVWWGZNOFFqZmtTRGt3N3ZKbGl1eFlnUDBB?=
 =?utf-8?B?U25XbTRPUEMrN3hDQTNxTHRXUmhkci9FYXRJOTZ5SVpQNWk1c1NwSGVQRW5E?=
 =?utf-8?B?YUpCRWFoZGozd2JIUjZGTzVleTdlWGoyMzZuRVhoMHlSdVozd0xQeFNpMTgz?=
 =?utf-8?B?ZGpqUERjcXRiWDZsVk9JS2J6NDF6bUdCcElsVjUyVmNUQmxBZUxUZWFHdEZt?=
 =?utf-8?B?b2pJMVArUE1MT2xWdk1lM2pXZ3F2NEJpTWo2UTFOeHFUaC8zMlF6bnlRc2tJ?=
 =?utf-8?B?L1M5NWg3M2h5TWZtQS9FZFozKzZUa2ZuVDVhejJxeDJtbERJU3VoV1ZrT3dW?=
 =?utf-8?B?UVRiM0JiWFZjUC9nOWlFWTBscUU2STgzWGJBNVk0Y0t0aEdRckZOLy9LNG9a?=
 =?utf-8?B?QVg2VFJmODFBTCtyZFVTeG12S0JPSDlaNTJLZEJmeWNuOHRHenlDZUJYczJQ?=
 =?utf-8?B?VWhTMzFLSm52eGQ2RE0wZEdkYWpMOEdHS1JjcGNiZ2pCSUJtbGZnTU5LNTlG?=
 =?utf-8?B?MGYxdDZJZEptUGtCZGZXdEZZai96Vmo1T1RMcUdQUlp4M1Y3bTRBZytTVVNP?=
 =?utf-8?B?cHJMN3kzZE9GSmd0OWtCTDJZaHBUS1NHWDlTL0cvZmZmT3l5SlEyYkdybXYx?=
 =?utf-8?B?VS9FeEJmRUxPY2NiYjFxTlhBUkRLTjF0N0h5dllMdU1WM0ZGZ3RZUGZib1dU?=
 =?utf-8?B?VEJzZnhmdHVKMmJUZzdRWjlNRVNZODExM2VNZ3hZUTFZWUduQUtxK0lsTlJZ?=
 =?utf-8?B?TjY0SlZRbXowSlB0ZzJ1ODZNcXRYL1lmMWl2dTMzaDVXNlpJZjVKSzFtdWFU?=
 =?utf-8?B?R2VJM3FrakI2MndIT2dRK3NJQXFqcG9XVGZDS3V6dW5pcHk3YnhwamhTanhM?=
 =?utf-8?Q?1TUUSxCh94YDSQDp7G?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d766f62-bb9d-43b0-29a4-08de69cadbcf
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2026 00:08:32.4704 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PbHN8h8Zas1G/HKns/+HGgQo1yYKDUtINpybbfvdgqvEHMR1ZhaZmUF43zJHDNpExiPvjPoeI2hQlmA+JjolRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7310
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770855349; x=1802391349;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oxPjzLa5BgvRE+paltc+JhAbPLPc+V9RNU1inEOq/JY=;
 b=NuV6CJZ99o9344F88ndafi8EnGYcxgpZkXledVfKldpOKXhZpJwwdCck
 Q4PV+QNhxIeIJlscaB+yX0LG9rxEz+10j4vOZ7xMna/CgobvMhNtoiw7S
 93rGF+7EAASiOaICAnETMMS1OemR7dqyn2KATy/k5lpWvLZeEj/uIqcja
 l07sAPdx8KtOUXWt68agTHRk9djLm6GFYBOwaUpkLjxtGLltMC5suU52D
 v6/CtEgvGoWe8MNSDVWqCGwXWc+ZgEKbZojMqs0s+PUCzBD34SjnHXIZb
 n29efGryhA5t4XDjLNFIvJZ7dinJ6l1LvQqu+TeuSxiw5qHLv11MwMJ9F
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NuV6CJZ9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] idpf: nullify pointers after they
 are freed
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:boolli@google.com,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:emil.s.tantilov@intel.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: E35E4128942
X-Rspamd-Action: no action

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBMaSBMaQ0KPiB2
aWEgSW50ZWwtd2lyZWQtbGFuDQo+IFNlbnQ6IEZyaWRheSwgSmFudWFyeSAyMywgMjAyNiAxMjow
MSBBTQ0KPiBUbzogTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50
ZWwuY29tPg0KPiBDYzogTmd1eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwu
Y29tPjsgS2l0c3plbCwgUHJ6ZW15c2xhdw0KPiA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNv
bT47IERhdmlkIFMuIE1pbGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD47DQo+IEpha3ViIEtpY2lu
c2tpIDxrdWJhQGtlcm5lbC5vcmc+OyBFcmljIER1bWF6ZXQgPGVkdW1hemV0QGdvb2dsZS5jb20+
Ow0KPiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZnZXIua2VybmVs
Lm9yZzsgbGludXgtDQo+IGtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IERhdmlkIERlY290aWdueSA8
ZGVjb3RAZ29vZ2xlLmNvbT47IFNpbmdoYWksIEFuamFsaQ0KPiA8YW5qYWxpLnNpbmdoYWlAaW50
ZWwuY29tPjsgU2FtdWRyYWxhLCBTcmlkaGFyDQo+IDxzcmlkaGFyLnNhbXVkcmFsYUBpbnRlbC5j
b20+OyBCcmlhbiBWYXpxdWV6IDxicmlhbnZ2QGdvb2dsZS5jb20+Ow0KPiBUYW50aWxvdiwgRW1p
bCBTIDxlbWlsLnMudGFudGlsb3ZAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW0ludGVsLXdp
cmVkLWxhbl0gW1BBVENIIHYyXSBpZHBmOiBudWxsaWZ5IHBvaW50ZXJzIGFmdGVyIHRoZXkgYXJl
DQo+IGZyZWVkDQo+IA0KPiBPbiBUaHUsIEphbiAyMiwgMjAyNiBhdCAxMToxNeKAr1BNIExva3Rp
b25vdiwgQWxla3NhbmRyDQo+IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4gd3JvdGU6
DQo+ID4NCj4gPg0KPiA+DQo+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4g
RnJvbTogSW50ZWwtd2lyZWQtbGFuIDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3Jn
PiBPbiBCZWhhbGYNCj4gPiA+IE9mIExpIExpIHZpYSBJbnRlbC13aXJlZC1sYW4NCj4gPiA+IFNl
bnQ6IEZyaWRheSwgSmFudWFyeSAyMywgMjAyNiA3OjU4IEFNDQo+ID4gPiBUbzogTmd1eWVuLCBB
bnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgS2l0c3plbCwNCj4gPiA+IFBy
emVteXNsYXcgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBEYXZpZCBTLiBNaWxsZXIN
Cj4gPiA+IDxkYXZlbUBkYXZlbWxvZnQubmV0PjsgSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVs
Lm9yZz47IEVyaWMNCj4gPiA+IER1bWF6ZXQgPGVkdW1hemV0QGdvb2dsZS5jb20+OyBpbnRlbC13
aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZw0KPiA+ID4gQ2M6IG5ldGRldkB2Z2VyLmtlcm5lbC5v
cmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IERhdmlkDQo+ID4gPiBEZWNvdGlnbnkg
PGRlY290QGdvb2dsZS5jb20+OyBTaW5naGFpLCBBbmphbGkNCj4gPiA+IDxhbmphbGkuc2luZ2hh
aUBpbnRlbC5jb20+OyBTYW11ZHJhbGEsIFNyaWRoYXINCj4gPiA+IDxzcmlkaGFyLnNhbXVkcmFs
YUBpbnRlbC5jb20+OyBCcmlhbiBWYXpxdWV6IDxicmlhbnZ2QGdvb2dsZS5jb20+Ow0KPiA+ID4g
TGkgTGkgPGJvb2xsaUBnb29nbGUuY29tPjsgVGFudGlsb3YsIEVtaWwgUw0KPiA+ID4gPGVtaWwu
cy50YW50aWxvdkBpbnRlbC5jb20+DQo+ID4gPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBb
UEFUQ0ggdjJdIGlkcGY6IG51bGxpZnkgcG9pbnRlcnMgYWZ0ZXINCj4gPiA+IHRoZXkgYXJlIGZy
ZWVkDQo+ID4gPg0KPiA+ID4gcnNzX2RhdGEtPnJzc19rZXkgbmVlZHMgdG8gYmUgbnVsbGlmaWVk
IGFmdGVyIGl0IGlzIGZyZWVkLg0KPiA+ID4gQ2hlY2tzIGxpa2UgImlmICghcnNzX2RhdGEtPnJz
c19rZXkpIiBpbiB0aGUgY29kZSBjb3VsZCBmYWlsIGlmIGl0DQo+ID4gPiBpcyBub3QgbnVsbGlm
aWVkLg0KPiA+ID4NCj4gPiA+IFRlc3RlZDogYnVpbHQgYW5kIGJvb3RlZCB0aGUga2VybmVsLg0K
PiA+ID4NCj4gPiBHb29kIGRheSAsTGkgTGkNCj4gPg0KPiA+IENhbiB5b3UgcmUtc3BpbiB2MyBh
bmQgbWVudGlvbiB0aGUgcmVwcm9kdWN0aW9uIHN0ZXBzIChleGFjdCBiYXNoDQo+IGNvbW1hbmRz
KT8NCj4gPiBUaGUgQ0FMTCB0cmFjZSBmcm9tIGRtZXNnIGFsc28gaXMgbmVlZGVkIGZvciB1c2Vy
cy9hZG1pbnMgdG8gZmluZCB0aGUgZml4Lg0KPiANCj4gVGhhbmsgeW91IGZvciB0aGUgcmV2aWV3
LiBUaGlzIHBhdGNoIGlzbid0IHRvIGZpeCBhbnkga2VybmVsIHBhbmljcyB3ZQ0KPiBlbmNvdW50
ZXJlZC4gSXQgaXMganVzdCB0byBhZGRyZXNzIGEgZGlzY3JlcGFuY3kgSSBvYnNlcnZlZCBiZXR3
ZWVuIHRoZQ0KPiBHb29nbGUgaWRwZiBhbmQgdGhlIHVwc3RyZWFtIGlkcGYgYXMgSSB3YXMgcHJl
cGFyaW5nIGZvciBhbm90aGVyIHBhdGNoIGFib3V0DQo+IHRvIGJlIHNlbnQgb3V0LiBTbyBmYXIg
d2UgaGF2ZW4ndCBzZWVuIHRoaXMgcGFydGljdWxhciBkYW5nbGluZyBwb2ludGVyIGNhdXNlDQo+
IGFueSBpc3N1ZXMgeWV0LCBidXQgaXQncyBzdGlsbCBhIGdvb2QgcHJhY3RpY2UgdG8gc2V0IGl0
IHRvIE5VTEwgYmVjYXVzZSB0aGVyZSBhcmUNCj4gb3RoZXIgcGxhY2VzIGd1YXJkZWQgYnkgdGhp
cyBwb2ludGVyIGJlaW5nIE5VTEwsIGFuZCBpdCdkIGJlIGdyZWF0IHRvIGF2b2lkIGFueQ0KPiBy
YWNlIGNvbmRpdGlvbnMuDQo+IA0KPiA+DQo+ID4gT3RoZXJ3aXNlLCBmaW5lDQo+ID4gUmV2aWV3
ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29t
Pg0KPiA+DQo+ID4gPiBGaXhlczogODNmMzhmMjEwYjg1ICgiaWRwZjogRml4IFJTUyBMVVQgTlVM
TCBwb2ludGVyIGNyYXNoIG9uIGVhcmx5DQo+ID4gPiBldGh0b29sIG9wZXJhdGlvbnMiKQ0KPiA+
ID4gU2lnbmVkLW9mZi1ieTogTGkgTGkgPGJvb2xsaUBnb29nbGUuY29tPg0KPiA+ID4gLS0tDQo+
ID4gPiBDaGFuZ2VzIGluIHYyOg0KPiA+ID4gIC0gUmVtb3ZlIHRoZSBsaW5lIHRvIG51bGxpZnkg
dnBvcnQtPnFfdmVjdG9yX2lkeHMgYXMgaXQgaXMgbm90DQo+ID4gPiAgICBuZWNlc3NhcnkuDQo+
ID4gPg0KPiA+ID4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl9saWIuYyB8
IDEgKw0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQ0KPiA+ID4NCj4gPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfbGliLmMN
Cj4gPiA+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX2xpYi5jDQo+ID4g
PiBpbmRleCAxMzFhODEyMTgzOWJkLi5mNjNhYjU4NDI4ZDJlIDEwMDY0NA0KPiA+ID4gLS0tIGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX2xpYi5jDQo+ID4gPiArKysgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfbGliLmMNCj4gPiA+IEBAIC0xMzA4
LDYgKzEzMDgsNyBAQCBzdGF0aWMgc3RydWN0IGlkcGZfdnBvcnQNCj4gPiA+ICppZHBmX3Zwb3J0
X2FsbG9jKHN0cnVjdCBpZHBmX2FkYXB0ZXIgKmFkYXB0ZXIsDQo+ID4gPg0KPiA+ID4gIGZyZWVf
cnNzX2tleToNCj4gPiA+ICAgICAgIGtmcmVlKHJzc19kYXRhLT5yc3Nfa2V5KTsNCj4gPiA+ICsg
ICAgIHJzc19kYXRhLT5yc3Nfa2V5ID0gTlVMTDsNCj4gPiA+ICBmcmVlX3ZlY3Rvcl9pZHhzOg0K
PiA+ID4gICAgICAga2ZyZWUodnBvcnQtPnFfdmVjdG9yX2lkeHMpOw0KPiA+ID4gIGZyZWVfdnBv
cnQ6DQo+ID4gPiAtLQ0KPiA+ID4gMi41Mi4wLjQ1Ny5nNmI1NDkxZGU0My1nb29nDQo+ID4NCg0K
VGVzdGVkLWJ5OiBTYW11ZWwgU2FsaW4gPFNhbXVlbC5zYWxpbkBpbnRlbC5jb20+DQo=
