Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A6F9BFA7C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Nov 2024 00:53:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D21D581368;
	Wed,  6 Nov 2024 23:53:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 40nTbhiBGFGc; Wed,  6 Nov 2024 23:53:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 02F9581369
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730937201;
	bh=SdICJxitkNqhKahZWsn2XOQXqmOgoRkQYxHbDkgL11o=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=65gU0TxrG3tckHUbHd5YlrpxEE4Bn/kp2I5dSytAMw1rngzC8gcRcPRhPgQHZydkI
	 wMP6+GaKTzcLGnxDP92P58zRolz2ItGPYku/RotS7Q9eLm3DXPokUkL2e9qJwPfFzs
	 cvzx2OPikqCGDoBdu041XWn39G4R9juExdI1NgNxuIr/FQ51kEXCR20q2LKUqFkbZP
	 ydc6dJSBfGFID+PebknPE49KKbzxOIaj5h0+SUYjwIoO/ovWI81/9ig5aXwtM/zWtk
	 UqCCIL4lV5vP1CUoFgyNIaiiAFVPCymotPhmSPJL/okPPwAbgUQW3tuQYR7rxs3L27
	 FIvHzOwPf/AOA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 02F9581369;
	Wed,  6 Nov 2024 23:53:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 16B84280F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 23:53:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E919540777
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 23:53:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8oJINdD2P6st for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Nov 2024 23:53:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=christopher.s.hall@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C8CEC4074F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C8CEC4074F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C8CEC4074F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 23:53:17 +0000 (UTC)
X-CSE-ConnectionGUID: lVp21RKwRgGP8bmMupOuTg==
X-CSE-MsgGUID: sRen8kRdQDmSzNHYazD/pQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="30879433"
X-IronPort-AV: E=Sophos;i="6.11,264,1725346800"; d="scan'208";a="30879433"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 15:53:17 -0800
X-CSE-ConnectionGUID: CrV1vAUhRXalMCUgGwj7CQ==
X-CSE-MsgGUID: WQdpA8QbSDS27AczJYQIUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,264,1725346800"; d="scan'208";a="88797151"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2024 15:53:16 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 6 Nov 2024 15:53:15 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 6 Nov 2024 15:53:15 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 6 Nov 2024 15:53:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=REm6RIb8eDonZBwO8ZaIhl9QjR74U3o385Fema29lz43un9mQKJK+EIIeThAp+J7BaEtRydKYH3pc5ec4w1UawGnuLa2sWREZr1rsvcQrWrYRot5yDlVBxuSyW7jeD1yNuaVFvGNEJnS/P+IfWpfCnE/QcrWBpKR/uVg/PGM1QZ7vlsCCHAUErXcxe0SJkk3+bxbDAJZuRi8+BKaRg/kdzh9Wi9QTLKuc2n/kGe2uM+zpkYX2QS4Bt3d+Muw8cIZB92M2lzF6N/QIAJxSjCf/6uqJ0R3QCPVbkUCSdTSk8ZOHYIZRiYtpRAwViP3DLehonq8LncSx20+RH59tT+ing==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SdICJxitkNqhKahZWsn2XOQXqmOgoRkQYxHbDkgL11o=;
 b=KYYkDpWpBYTfwMRyRJCkkusRs7didCCbnEJzkUxPq3BDFTEgTe9974yvvQ5P/r9tKluAugBynZvBr+P3UKewiSDHIOWHKGnLMA9H8EY6ayJE5JNYFW1wazM48vX2i1Cv0/F3XxW6Zzfe+XNMrB2RaTIHB5WVogBW6XCVON0wldc/wzAi8QJb2TYFz1Sm3xV9In4ZabZKMeFRzHy+5llgcJk9MaZAU5yOmaoFD/9dXeVxBkqY/hYZFZH6ROnS40qlaUXJDQTgy6u4gm/PjOzNKdMY100cfZoXojdCJNdTO5kSfcLdN9ECzy+vk1yN5KXybvJc0ffM16aDCgE8I26+9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6984.namprd11.prod.outlook.com (2603:10b6:303:22e::22)
 by SA3PR11MB7626.namprd11.prod.outlook.com (2603:10b6:806:307::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Wed, 6 Nov
 2024 23:53:12 +0000
Received: from MW4PR11MB6984.namprd11.prod.outlook.com
 ([fe80::91f:4bc5:f5c9:ec7a]) by MW4PR11MB6984.namprd11.prod.outlook.com
 ([fe80::91f:4bc5:f5c9:ec7a%5]) with mapi id 15.20.8137.018; Wed, 6 Nov 2024
 23:53:11 +0000
From: "Hall, Christopher S" <christopher.s.hall@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Zage, David" <david.zage@intel.com>, "Gomes, Vinicius"
 <vinicius.gomes@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Cadore Cataldo, Rodrigo"
 <rodrigo.cadore@l-acoustics.com>, "Vinschen, Corinna" <vinschen@redhat.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Bar Gabay, MorX"
 <morx.bar.gabay@intel.com>, "Dahan, AvigailX" <avigailx.dahan@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v3 2/6] igc: Lengthen the
 hardware retry time to prevent timeouts
Thread-Index: AQHbMKGVpNF2EcLyMU2OwA0uYjBG2bKq5lnA
Date: Wed, 6 Nov 2024 23:53:11 +0000
Message-ID: <MW4PR11MB698491CB1DA8179D870F787FC2532@MW4PR11MB6984.namprd11.prod.outlook.com>
References: <20241106184722.17230-1-christopher.s.hall@intel.com>
 <20241106184722.17230-3-christopher.s.hall@intel.com>
 <4ee8f886-40ed-46bc-9d11-1619d64f7875@molgen.mpg.de>
In-Reply-To: <4ee8f886-40ed-46bc-9d11-1619d64f7875@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6984:EE_|SA3PR11MB7626:EE_
x-ms-office365-filtering-correlation-id: 19052049-bb27-440f-811b-08dcfebe2bff
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?MVEvdSt5WUxPYkl6cVg0cGQ1NVY0VXVNWXpYekFreTNOU1VGUGg0cWFkdGs3?=
 =?utf-8?B?QjJNUGxuUTlnL3ZuMk0rVEMydWY0UERhRTRhZittdVc1ZjRhOTRZS3FzVjVl?=
 =?utf-8?B?MER3NGRsREpSUFA2NE1IUTRWRkVxN0pJUCs4Q21UZWNSelVjaDg2UTBieGdj?=
 =?utf-8?B?UWxYdUg4cUxZU3NyaFJnclJZQm5yeGhhZjNsZS9xSHF3S1Y2VXl1bGIyTkQ0?=
 =?utf-8?B?ME9tWHl1ZmR2L3FGK0huOGhlb3ZSbm1ubHJIZVFmVzV2TXVjaEQ3d25uM1Ur?=
 =?utf-8?B?aG1pZmtxZGROaUhPZUpYQWhqdUhycm9yMTM1ZTg2RFVJdDBTYjNJdkFlZkYr?=
 =?utf-8?B?V2wzcGlLeEt1a24ycTVqQ29KMzRvbmQyWUF3SmxDQTB3NWpGMFRNL3lNYUFW?=
 =?utf-8?B?WEVVamltcUsyNkl4T1VPSTlIZG9vb3V3QnZJcGdjUU5MNnhXa3hXd1AwUFpF?=
 =?utf-8?B?WW8wZkUxNHZ0UmxpWlJhcnFVdWJHclhiUkFQNmlqbG9vWVQydjh6UXE1SDVL?=
 =?utf-8?B?S3M3aExUaGVDUk8rWmRhNXo5NGZhYmdNMitucFhjR2h1WXd4OUg1QUQvZVoy?=
 =?utf-8?B?TnNYMlRjS0orck5kbzRJc0wzTWhxRW9IM2o3S1RyUkxMckJWVk9SS0hoTCtt?=
 =?utf-8?B?U21Hb0JFUnNrSkNqOC9PckJ4bzdzS09BZlpBTHljSWYvclV1aXBiT3I2UlRF?=
 =?utf-8?B?eGRaZDBpSWlpNzM4Z3FUZjNRandZVkpLTnZoWWZpWjdYdlM4OWxGYVdPemZm?=
 =?utf-8?B?N2t5V3J6ZC9DZHpQTHkxd3hFSy9rZDNYV250VDcrVG9xODR3K3dHcUpQVHM3?=
 =?utf-8?B?cmFXeERXMFJRTlE5TzRrWUxqcnhseVUxaE1nZjc0R1l6V0xrd2x1cE01Ni9l?=
 =?utf-8?B?K2dtM0F4L3lrcEpmTWN1dHNIZEtFc05kTEVsSER0amxrRk5ndWJrWGVDaHRZ?=
 =?utf-8?B?bzR5YVFRY0p2Sm9EdGFRcC83U2J4ZE9IYUFkOHA0UmFob3dPa2xqZWlSditP?=
 =?utf-8?B?blZzWTRhSHN3ckdoa1EvVXFvdy8rTXUvcGlSRG9Sc2xEYURUZnJMU3NaN0Ex?=
 =?utf-8?B?ckRUZnhFRkdvSlVEd0pwdGZzK3MwVXBrMXYxQ2o4UVhVSU9GTzIrYWtydThj?=
 =?utf-8?B?amFpT3NITjFiT2FuRkFxZjJHQUwycHZMeVV2VzVNY3pBMnlWdWlZbU1oWllK?=
 =?utf-8?B?YmdMSm1McDVqblE0OXhyNGdiRjNkdi82bGIvMFRPKzNsZEFTSnpRaVRCNXNp?=
 =?utf-8?B?cFEvY2s3dkxVcis5d3dDZ28zNGhuYzIxbXpVS3RYQSs2Sm0xc3pZQmdaeXI5?=
 =?utf-8?B?dlVXRU5laGRHZnBVcWl2T0ViV20wQmZxQVZjSUJJb2VzYU9nN0tXQzlHZmQw?=
 =?utf-8?B?RjdaRFJLL3lDL1lzRXpVc0duUEJDMHRScmljcm0vRDlEbGdIQkptSmN5a1NK?=
 =?utf-8?B?ZENVbzdrbHMvTlhJV0lHdndxNmRUZFUrVllFdHNVK3BTM1pUbmsxSHhGeFVH?=
 =?utf-8?B?NXVjODhuS0U1aVZZV1NTNUF0UXQzcWtUcXdCenByWEtuaTh2Y2JZbEt0Q01S?=
 =?utf-8?B?dWlEcCt1OGwxZ3FvaHd6ZTgwOFVFVEE2R2VBY1cvYnRUU3BXdWVRelNZbDdI?=
 =?utf-8?B?NEprQVdMRkhnVnVlU3VQN002MTJOcTRIZnFDSmY4UnVBNHhaYURsTVVnTVBC?=
 =?utf-8?B?QlVWTlpBSUx4NGM2R1NUaUpyN015OFJaa3REYWNraTBrV3dwc0JzY2g1ZjZY?=
 =?utf-8?B?R3c3cjZmMXhmR1R0K1hpRUhjLzFGM3JKa1h3My9TODJ3QVZmR1VqRG5ydmVj?=
 =?utf-8?Q?OrTS1o6aRcXrgZVj+duafM+LugfdT77Oa+rkg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6984.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TUdwaWNLdDlVYnlKczcyenNDTlErUE9RcmVvRHNEZTFDajBDZmhoL1ZXRHhS?=
 =?utf-8?B?bWxpTlBEMXNkTEZBU1NjdkxLS0t6eFNjOHZtbnVydWtsNVJET3I1ZlRTK3A4?=
 =?utf-8?B?RXI2ZDN5c3JxVVNLblJuTGtRcFVHVXVmNmJTS0t1MG9LS1o5bS9kbEJJRGdM?=
 =?utf-8?B?blQ1ZXExVjhXbTlNSWVRNDJ3aisrQ0pmMlkraVZ3WXhqL1pmV3lJV1ZLMGdi?=
 =?utf-8?B?UklSdTFOeEJBOURBU1Q1U21RT2gvRXNROWhiZlJqK3l3RXN0cG5LTUh2Ukox?=
 =?utf-8?B?SGhKcXVTb01XOFpmd2hXWmR5RTVqRlA5TzdFWWVSYVBDMnM5VFNzbDhuM2tQ?=
 =?utf-8?B?VFZ1NmZndVZHNitickk4NTJnZTVBUXVpSzZFMHcwemJuU3VCNkxzdUZsdTh1?=
 =?utf-8?B?ZXdWR1NRb1dBNWFVdVM3N0E3ajdSVEQrblpJNTEwZW9VYjlCUUpXcGVQN3Vv?=
 =?utf-8?B?NVRkUTJ6aTJUdjhTN283WHlGTmRNZUwrZnpNSjVjY0Via051anRra0IwUjdL?=
 =?utf-8?B?bkNJWThYcW02dld4cVhJOGJVQ2NIbEdyRG0xTEpZSkpjUkVGZmJyc0IvMTV6?=
 =?utf-8?B?ZXpnU0hXSnJiYVU5djZieFJEN01DNU5RUFhiY3I5L0cvOFJFRGxIRjJ1TkxO?=
 =?utf-8?B?RDNyR1FIaWhtNlRkZ1c0cDdjYjR6bnNrMm1aR0dubEJ4WVQ0OUFLZUNqRkoy?=
 =?utf-8?B?OEU4aXFuQmcxcnkyTmxoNVVoVlU5MmsxdWNlb2UvMkNOUndDZzhhdVB4Wmt0?=
 =?utf-8?B?UjJFZndzZHViNDNnakhJdENIYjJYK1haajhPRUNKdnZoeHlSd0lkdUxLZnk2?=
 =?utf-8?B?T2NFa2FaZGwwZ1lVNTQvU0p1eXNLU1R5Y25rV3Y1cTVJVUlQN2NEbkhrRnlH?=
 =?utf-8?B?anBCTmVHMGJIeml4ZitzdnNGUnpKMUpUZFVJQjMwR2VVN2JhNUZiSmU1Ym1S?=
 =?utf-8?B?Ny91TDdZcFdCUERNSjBVNFFrMkR1ckp1dHpsK3RUSGsvOW5BWXRROUtzbVIz?=
 =?utf-8?B?cDk4NDh4M0RMdklyclorcVpDazRrekZBeUdtLzdJYThKOTFOVk5Sa1hEdXhG?=
 =?utf-8?B?dDlGVGdrbzllUVdkQXlIQ1RHUk1oMGNySlBJNWx4RXE2RXVOeXVmQ3RVOUVB?=
 =?utf-8?B?V05ueVRTdlZjSUtRSmxkbmUyUW55cWoyRGRadGhocndDb3p4ZC9vT2I3dVY0?=
 =?utf-8?B?SEh5d2ExY090UDZKeVlyUEJON1dZMFBXNmZFbTh1d3NkSzNYZHZlSzY1NVlD?=
 =?utf-8?B?NmNvcGdBWmxjdFhzMis1aGJFWE1rMzBsY2dNTGpoamNkOExCLy95NXpOYy9p?=
 =?utf-8?B?NG43M29RM0xodUJ0YXNVeGQ3cmNDVXJrV0RsNmdWT25vV3huMENzWGdRd0FY?=
 =?utf-8?B?aWpkSHRseUx0SEFHVktya3BVbzFla2x4SDVhWm5zRTNwYXh2V2RRS3M4cWJm?=
 =?utf-8?B?bFlOWVl0Ykd5ZWJWdGNIc2RqdllOWVlLRzFPeWpHSk92TzRiaHpxanRpTUR0?=
 =?utf-8?B?YXZlVWlMTVlPbzZmdjVTZnBDUTJLa0VQOHZyOVpqc1FHVVBFcG9ZZzIvNUNN?=
 =?utf-8?B?SmtVWDNiSm5JUlRCL1hKYktVc25hTTBIMnR1S1FKcURTeXVFc2xKTXJhbk1Z?=
 =?utf-8?B?Ykd1WDhPT3ozU0pjMFEyWnh2aldGVzBnd0FqUFFXQ1hpRlhWV0ZqSThTVXVL?=
 =?utf-8?B?REJaTThta01OMTViVVFZUmVZTXBadHZBYmE1dS96dXAwL204dk5LTUlCK0Nj?=
 =?utf-8?B?VWpIRlM2MmNTZlZ2ZytaQ2g0QmxobDhDczlCWUVHWXlaTEF6aVdPRitrenRk?=
 =?utf-8?B?dHdMYmZyQ3M2a2dxS1ZSZ1pocXFMNVRtL1U5R3I2TlZjWEt6cy9ya3AyM3pO?=
 =?utf-8?B?U1A1eTFwSmVDM2czM2VYUlRicjc4dGs3QVZ5TTE5a3BBYVo1QmxHdk1weHFE?=
 =?utf-8?B?OWR3MHI2UHZpR0hiQlJmZjE4NUh6VHlXaHN1WXAydE4xM0hIRXZNbW01Tjlw?=
 =?utf-8?B?NS95eUs3TkY3Qzl2ckcyRE5paFByd2pCNWVuTWNnUm9qb3ZScGRuN29DYldj?=
 =?utf-8?B?UHNZdkNST1ZLN2RmRStITVhXdk4wLzJKalRQODZRNCtIZjBPSEVpZTU2OXo3?=
 =?utf-8?B?RktUYUw2Z25ERStCS3NDSS9Hckp2d21PRlBVUE9HQWViNUZVYmJ1RTU2amt2?=
 =?utf-8?B?d3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6984.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19052049-bb27-440f-811b-08dcfebe2bff
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2024 23:53:11.4635 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n+z6vlbC+zDLwvjfclsFzP3R05J+2qMCrO4ps5ZYjCH1YRZsxRZ0wg7zUuW3SuWKNKKilo6iNPXWMSuCpZpZU+9T//aYnYww3C9tRRA43q4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7626
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730937198; x=1762473198;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SdICJxitkNqhKahZWsn2XOQXqmOgoRkQYxHbDkgL11o=;
 b=WCNu4D6W1TIWaLADWZU54js1x+tBRhsviXKHEQif7JnpQLKhK1rQhj94
 DFQ7qAQ72J8apjtKO6tdArBWJK8GKoARgF7lIMyERFdqsSF7Pf9GGdG9/
 CR7z2XqgmlmA32VYWRpMTDNox4Urll9xVe3XModR2s4Noxn/of8iIFnxU
 8/kaxx2mPtXAAkaofpI2NwDlANwWqxKu+EyZCJdGN0p712kgl+bklj5zc
 4wcWDwgL8dP33ouA0OCoY0EfZW5gWhJEgeXVB/rSDbDfDf1yFCdw0jInp
 dTpu21k1OIAXI24wvGPT7dbuz2WNKfDTCCxb5GgzMjEKOK7rhZIj5vLgy
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WCNu4D6W
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 2/6] igc: Lengthen the
 hardware retry time to prevent timeouts
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

SGkgUGF1bCwNCg0KPiBGcm9tOiBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xnZW4ubXBnLmRlPg0K
PiBTZW50OiBXZWRuZXNkYXksIE5vdmVtYmVyIDA2LCAyMDI0IDM6MTQgUE0NCg0KDQo+IFN1Ympl
Y3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5ldCB2MyAyLzZdIGlnYzogTGVu
Z3RoZW4gdGhlDQo+IGhhcmR3YXJlIHJldHJ5IHRpbWUgdG8gcHJldmVudCB0aW1lb3V0cw0KPiAN
Cj4gRGVhciBDaHJpc3RvcGhlciwNCj4gDQo+IA0KPiBUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4N
Cj4gDQo+IEnigJlkIHVzZSB0aGUgbW9yZSBzcGVjaWZpYyBzdW1tYXJ5L3RpdGxlIGJlbG93Og0K
DQpXaWxsIGRvLg0KDQo+IA0KPiBpZ2M6IExlbmd0aGVuIGhhcmR3YXJlIHJldHJ5IHRpbWUgdG8g
NCDOvHMgdG8gcHJldmVudCB0aW1lb3V0cw0KPiANCj4gQW0gMDYuMTEuMjQgdW0gMTk6NDcgc2No
cmllYiBDaHJpc3RvcGhlciBTIE0gSGFsbDoNCj4gPiBMZW5ndGhlbiB0aGUgaGFyZHdhcmUgcmV0
cnkgdGltZXIgdG8gZm91ciBtaWNyb3NlY29uZHMuDQo+ID4NCj4gPiBUaGUgaTIyNS9pMjI2IGhh
cmR3YXJlIHJldHJpZXMgaWYgaXQgcmVjZWl2ZXMgYW4gaW5hcHByb3ByaWF0ZSByZXNwb25zZQ0K
PiA+IGZyb20gdGhlIHVwc3RyZWFtIGRldmljZS4gSWYgdGhlIGRldmljZSByZXRyaWVzIHRvbyBx
dWlja2x5LCB0aGUgcm9vdA0KPiA+IHBvcnQgZG9lcyBub3QgcmVzcG9uZC4NCj4gDQo+IEFueSBp
ZGVhIHdoeT8gSXMgaXQgZG9jdW1lbnRlZCBzb21ld2hlcmU/DQoNCkkgZG8gbm90LiBUaGVvcmV0
aWNhbGx5LCAxIHVzIHNob3VsZCB3b3JrLCBidXQgaXQgZG9lcyBub3QuIEl0IGNvdWxkIGJlIGEg
cm9vdA0KcG9ydCBwcm9ibGVtIG9yIGFuIGlzc3VlIHdpdGggaTIyNS9pMjI2IE5JQy4gSSBhbSBu
b3QgYWJsZSB0byBkaXJlY3RseSBvYnNlcnZlDQp0aGUgc3RhdGUgb2YgZWl0aGVyLiA0IHVzIGhh
cyB3b3JrZWQgaW4gYWxsIG15IHRlc3RpbmcgSSBhbSBjb21mb3J0YWJsZSB3aXRoDQp0aGF0IHZh
bHVlLiAyIHVzIGFsc28gd29ya3MsIGJ1dCBnaXZlbiB0aGUgbGltaXRlZCBoYXJkd2FyZSBhdCBt
eSBkaXNwb3NhbA0KSSBkb3VibGVkIHRoZSB2YWx1ZSB0byA0IHVzIHRvIGJlIHNhZmUuIFBUTSBp
cyBub3QgdGltZSBjcml0aWNhbC4gVHlwaWNhbGx5LA0Kc29mdHdhcmUgaW5pdGlhdGVzIGEgdHJh
bnNhY3Rpb24gYmV0d2VlbiA4IGFuZCAzMiB0aW1lcyBwZXIgc2Vjb25kLiBUaGVyZQ0KaXMgbm8g
cGVyZm9ybWFuY2UgaW1wYWN0IGZvciBQVE0gb3IgYW55IG90aGVyIGZ1bmN0aW9uIG9mIHRoZSBj
YXJkLiBUaGUNCnRpbWVvdXQgb2NjdXJzIHJhcmVseSwgYnV0IGlmIHRoZSByZXRyeSB0aW1lIGlz
IHRvbyBzaG9ydCB0aGUgUFRNIHN0YXRlDQptYWNoaW5lIGRvZXMgbm90IHJlY292ZXIuDQoNCj4g
PiBUaGUgaXNzdWUgY2FuIGJlIHJlcHJvZHVjZWQgd2l0aCB0aGUgZm9sbG93aW5nOg0KPiA+DQo+
ID4gJCBzdWRvIHBoYzJzeXMgLVIgMTAwMCAtTyAwIC1pIHRzbjAgLW0NCj4gPg0KPiA+IE5vdGU6
IDEwMDAgSHogKC1SIDEwMDApIGlzIHVucmVhbGlzdGljYWxseSBsYXJnZSwgYnV0IHByb3ZpZGVz
IGEgd2F5IHRvDQo+ID4gcXVpY2tseSByZXByb2R1Y2UgdGhlIGlzc3VlLg0KPiA+DQo+ID4gUEhD
MlNZUyBleGl0cyB3aXRoOg0KPiA+DQo+ID4gImlvY3RsIFBUUF9PRkZTRVRfUFJFQ0lTRTogQ29u
bmVjdGlvbiB0aW1lZCBvdXQiIHdoZW4gdGhlIFBUTQ0KPiB0cmFuc2FjdGlvbg0KPiA+ICAgIGZh
aWxzDQo+IA0KPiBXaHkgZm91ciBtaWNyb3NlY29uZHMsIGFuZCBub3Qgc29tZSBvdGhlciB2YWx1
ZT8NCg0KU2VlIGFib3ZlLg0KDQo+ID4gRml4ZXM6IDZiOGFhNzUzYTlmOSAoImlnYzogRGVjcmVh
c2UgUFRNIHNob3J0IGludGVydmFsIGZyb20gMTAgdXMgdG8gMSB1cyIpDQo+ID4NCj4gPiAtI2Rl
ZmluZSBJR0NfUFRNX1NIT1JUX0NZQ19ERUZBVUxUCTEgICAvKiBEZWZhdWx0IHNob3J0IGN5Y2xl
DQo+IGludGVydmFsICovDQo+ID4gKyNkZWZpbmUgSUdDX1BUTV9TSE9SVF9DWUNfREVGQVVMVAk0
ICAgLyogRGVmYXVsdCBzaG9ydCBjeWNsZQ0KPiBpbnRlcnZhbCAqLw0KDQo+IEtpbmQgcmVnYXJk
cywNCj4gDQo+IFBhdWwNCg0KVGhhbmtzLA0KQ2hyaXMNCg==
