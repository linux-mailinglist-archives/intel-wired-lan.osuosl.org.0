Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8656D8BFBAC
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 May 2024 13:16:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 34AFD41A4F;
	Wed,  8 May 2024 11:16:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 456SOSLIjxyo; Wed,  8 May 2024 11:16:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 643F0400CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715166984;
	bh=NbXaEBUJAxbDYVt26HQRjHMGsUsV6DXRwY7DLut+k6c=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IrEAMRl/aZckkGdC8a//R73T3MErZOx/AeBolRHx5hU60D1ALAnVJEC4XtHTJqxbD
	 Hf2OTEQ8bJcidEH8BJBxguubG0PIzwJJqrWcrVC3yYVEwo2w2MXyMG4onv+I/3UFPj
	 cE863LGvTy03vXJyb+cst32IIUglWrwSRVtp6LYGa7h72j+HATeqO8pimiGAy3uLBg
	 IVtim+gJ9lkMrmyvQDfez1QKlw5phpKsv/nC1MkGq0tbG3kOtxcaVOLweTx6Uy7Z24
	 KbDJ16upALAchohNXlL7JzKnfz6+eBYJjv9Sw01+Y8mmNYmP8L7Q9uO0ISBJIkEkIW
	 DxYJr/U7AQplQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 643F0400CE;
	Wed,  8 May 2024 11:16:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 821C51BF391
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2024 11:16:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6C4DF404E8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2024 11:16:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k0HO-gKXtgfe for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 May 2024 11:16:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 47B2D404E7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 47B2D404E7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 47B2D404E7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2024 11:16:19 +0000 (UTC)
X-CSE-ConnectionGUID: sfbIuh1YSKqu89Nub8gcOg==
X-CSE-MsgGUID: U4YlI3+EQYWr0RVz3vTuVQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11066"; a="22173391"
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="22173391"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 04:16:18 -0700
X-CSE-ConnectionGUID: Bneq4hGwQmOnEsjtL4MxXA==
X-CSE-MsgGUID: Gu3cxlwfSYy4F4Q9S6D3hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="28824948"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 May 2024 04:16:18 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 8 May 2024 04:16:17 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 8 May 2024 04:16:17 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 8 May 2024 04:16:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UQVxQ5HEwMAS/GD/Ij3vndDyTlfiJR4izpS/SA+7rkdlBsdnXA647t1iwRJj8hwIzL9rmjIXywW/jRsv11Tn3V1RZbEyr2Orcm6wsktphqpEA7HWf580wzH2equ562jK4alRb49xJC8ekOk4ACBtvXFz8HbPCwHb/cMQbkfAYiYX/9JyV7/4DNenHbGGS7ilxg4R+sDeukfrS6cB2bAafm0cXJiviGPNUAUhorj2+Z1P2ach2K3325a4X/F6EFZYVir7OQDFWFz5rqCyfU0/FfF8OOHrKLHAkI/ErL6wEsAQ6SqlpX/l/YWxTcKQX37pDi6H0lFzxDSOAyfAhROe6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NbXaEBUJAxbDYVt26HQRjHMGsUsV6DXRwY7DLut+k6c=;
 b=NgtMHOUCyG+cVGos45rs6uA9Re53S9JXsRpfuUb3g6jpU63cN3BCRAYUVRmYoNxpKts+AIONZp6/L01j5WBDVjjvJrB2VT2TehJald6exTV8CHn31DmSCeS1YkrLoeT0NZhEG9QEGFJgGuDbGNEFD2dmt8fKm993OVIdhV9bNN+8nNZslUaX36il17DzVx2sUI3X8JrecimMEnYoNbl3gIqFMsBfw6tUArI8Lc348BjQPg1gRN/eTyBKD66QbWfGSK65flew35KJzH3OS1khFCpOlCTJ86ODI45KPJbDa/+/sKpDnu3+ddSMrSy6O4/DeE6GR8/Cr1PM0GMfMOCFnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by SA2PR11MB4778.namprd11.prod.outlook.com (2603:10b6:806:119::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.43; Wed, 8 May
 2024 11:16:15 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%3]) with mapi id 15.20.7544.041; Wed, 8 May 2024
 11:16:15 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: =?utf-8?B?QXNiasO4cm4gU2xvdGggVMO4bm5lc2Vu?= <ast@fiberby.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] i40e: flower: validate
 control flags
Thread-Index: AQHakA4H8oC9gTU1l0OioxlsondKuLGNUhJQ
Date: Wed, 8 May 2024 11:16:15 +0000
Message-ID: <PH0PR11MB50130F459A000DD320D961FD96E52@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20240416144320.15300-1-ast@fiberby.net>
In-Reply-To: <20240416144320.15300-1-ast@fiberby.net>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|SA2PR11MB4778:EE_
x-ms-office365-filtering-correlation-id: 386f55be-eb70-4051-58ec-08dc6f5046ae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?NkF4L0MrV0ExSE9aM3RubnF3SHZHNWxJMnNzWFJuaXE3TU9HTEhnaUdnUXBB?=
 =?utf-8?B?OWJXR3ZGdDBubkdFcC9yaXlvZUhvbkxEVU5HZmxUTEF3cmtPRlRkZ29WbjRm?=
 =?utf-8?B?bXNFd3QwQXlPbHN2TVNkV2dSbmxteXlocCs1S2NCOTNqM1hkUHlvcmFwMVhP?=
 =?utf-8?B?S0FRVnVpdFNwSkFsdnJwYW0vSWZnRE1SNCsrNkthUXIyNmhhL2ZFM0FFM0VX?=
 =?utf-8?B?ZDZZUTU5RUdMelZ0TXh0MFZDVXBzS2w5QVRxREhEdERDK1NZUy9XR2xrUFNj?=
 =?utf-8?B?RFFtNjlhTCtLVDExMzFuUG9sZkQrR3BOUkhyamt1eWVNV1dDTklwdWZuRlIw?=
 =?utf-8?B?RzBqVGk5eEh1MXVNZ2Q0N0lIUG13UXdwL08zbXdWOGtyeXY3cU9SRU1OUFpm?=
 =?utf-8?B?K1Uwa00xZjJYR1BwOFBYM0xBeWEyc2xWL3dKV09aTHk4eVNkRm96bFNxTGl6?=
 =?utf-8?B?czdoS0srQmpEV1Uzbm5ZSmRrSHNUUVJUaEtQWmlFZDJ0MnVDUXc2cVJwOG5U?=
 =?utf-8?B?ZWo4Qjltcjdzc1lnY2dhRnkwaEFCZzlnOTJjeEwrYXhkSjYrVlFJV2FHTUM2?=
 =?utf-8?B?cEgyRHVuWDJYL243UHVoOGZjMzRnOFBob0UvdUpJZXAvdXZ6cU9rR2JCQmZ4?=
 =?utf-8?B?djZLQmo3M29xQTNpUEtiUTFES25pbFVkVDNpRGhZaFJrNW1pQ3Q0UGhTZTJz?=
 =?utf-8?B?SGFqbUVwemg5V1dZdWFZWDBGajZISTBlTEcvRUhST1N0WDBYdUllVXg0TDY2?=
 =?utf-8?B?b2Z2R0k4RzZWUGV0RmNTQUdIRVNNTUQyV3VZblBMS2JxZHQ1bUlwbXZhMUo2?=
 =?utf-8?B?NGxPNmRIeit4TlpWdjVGUzNabU9ZL1dRWGl0MFFKRUdTN092dThpQjhhNnl4?=
 =?utf-8?B?c1JkYklEVEpzb0pvYldtYWN4cWFZOWxqNVNBa3F6WmZxKzhaMkJ0MU5Idmth?=
 =?utf-8?B?T2FQemFKWHd5SkRkSVg4L09wZjluc00zbmt2MW9ZdFR5MGJaU1A1NHpVVWZM?=
 =?utf-8?B?NGpQeklZdHAvTmY2aFp6cENtMmtubGl2OXErMndub0tZS3BVTE5HOWRaUzVl?=
 =?utf-8?B?OTVoWWtieGFWUVVkSnlpNjVzMlBxMWFJa2J2OHRzZFNlczU1NncxYzFDNEhU?=
 =?utf-8?B?d0tlWFRFVmJaVWEyYm9oREljWjdWeExTalVaOFZXWlVUMGpvWi9md0xUSFdw?=
 =?utf-8?B?V0dHbk52UnJ6QXUrbHJkMXJaajNOaW9DZmsvbnJta0tqK2gvalFIRGhjc3JT?=
 =?utf-8?B?K2JxWFM4SDJ1N0lmMmZkODg5N1lRcGNtTXdtdWhtQjI1aGYzdFN2MHNTZ2Ro?=
 =?utf-8?B?NE10ZkgxVzdZWWNQWHd2WFprTllmYzlyVzAwRndidkRQUXJockZMeEpBSEpm?=
 =?utf-8?B?T3cxZk9kMms0UFBUZ2kyQ3hPb0N5RXhvSU1YR3pwcVNsTURGZkRGdUgwN0kx?=
 =?utf-8?B?dVllTzFxTDF1ZUhxN1AzdHp2MzJMMThvZ2lZeUQ4TzVyMUpFVUFBOEJlaFFO?=
 =?utf-8?B?ZTdtejFvVTlETTN0TDFldjk0Vm5nTHYxb1FVK3JReGVidlgvcnVpL3F3andr?=
 =?utf-8?B?RnB4K1ZKN0RiRHFFQWk3RDZGa2NuR1JVYzZoRThDVzBPVjREMEs2OWxHenNu?=
 =?utf-8?B?d1lsTGlQQ3FKLy83ZGt2TDJVMGdFbURIelRxUWlQc2xSZGRxYkxZWm9pUXB4?=
 =?utf-8?B?TSswN3FsZitjQ043VTFmdFZsSXJVMVdOZDdDYWl2MGVWVi9MUlpPd3lxQ1ZV?=
 =?utf-8?B?Y3lkZ25nNWlPVWlNV0l1QnIyZldsNWllS2RPSGdzclVXaUk0WENDQnRmM1pF?=
 =?utf-8?B?Y0FzWitFNzhTRmd1eXRnZz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RUsraHpDTlRaQnkvQ3VrcEZGTlJMQTExTzlrUU1LYWtpZGVsdlZzL0JTSXY0?=
 =?utf-8?B?dnFIMEN6TGN5Uk9vekMyYlRRaHdKeFgzSHJBM3V2ZmxqT2Z4bFNhM0JNWjQx?=
 =?utf-8?B?dWt3L2NrcGRCdWVadXBnYkZ6T1JiNi9qZGVJR0liWTlRN0d5dWxGZ0w2OC9h?=
 =?utf-8?B?UVVUdklaNWxuSkQvTVlpRzdpS205RkhTeCtuWlQ3WkpFcU44R0R3bjZJL0Fi?=
 =?utf-8?B?bjdpMXJnZVcyV2lWMXp5bzQ2anVObzFmMDRzZkFld1QrV3JXZ2VCRFFpTTh5?=
 =?utf-8?B?R0NZR1cvdnpVY0srMmpwOUtVUUFCa2JRQThUamw3UnJJZmpSRVc3cTU2dFJj?=
 =?utf-8?B?YzVYc1pLazRYZXgvenh1cVB5V09PcVFDNTFrb1BPQ1U0cU9FZnMzeWk2WE1H?=
 =?utf-8?B?QW5OR29uMUZveEZKYURaU01qWkFsKzZHNjI0M09DZHBQdVdGenM2c0twczdB?=
 =?utf-8?B?UU5kVnNncnFVb1RteHNvUml5ZjJPUkEzRjBSVlZBbFhMTnljMUpRVjk2Snhi?=
 =?utf-8?B?WnlpNVM3elNHS2FsWGYwUUlldTNJeGpRc3FmRlhwdmpxMjlkSzVJZmZCNlZ6?=
 =?utf-8?B?NWswUklVbHdVZTVDRW5XeldVRGRhVHAzWmpwRHhUeVBrbjV0NU5uZ0YzQ3pp?=
 =?utf-8?B?ZDhndlVwSCtMTmVWejBEUEpIZnN1QzdSUmovcFlPV1RaZnd6Vng3aXBINERu?=
 =?utf-8?B?STN2Q0xYSlVDbWZzaEF3KzZ2SENaRzdSR0xXZlZPaU1GdGRTVFZCZ0JCUmJU?=
 =?utf-8?B?Y0d0czFzTHYwL0loYXJlSDk4TnpmRnBUejNZVHhsQUNCcUNGM0dqTUdBNTE3?=
 =?utf-8?B?bm5LS0swTkJJSEtUaDRzbjhYV0QwZktGSHJaMk1Zd1VRZE82eDZubk9yWjF0?=
 =?utf-8?B?SlNTZ2ZsY1lEREY0V1dNd3IvYjJWTVljTTkwSjEwNk5tNEhoaFg4dEhuaDBB?=
 =?utf-8?B?c21MbkN4alBDdjdGRDAzT080SHBzWDhPR1RDNDFxM2lJY3pXbUI5bWduc0po?=
 =?utf-8?B?RXJ3UjVCUWg5WTJlVmxJZi9SazlMNUM1cFMrbzJXb21mZ1VSSGd2dUFkdWZK?=
 =?utf-8?B?YnY4RVRFdXNTcjhiZVRHL3lKZDVsU0owNFQrN3RyMjJmN1B1S3BNUy96bmtl?=
 =?utf-8?B?ei80RFhhVFpTeHZOWHQ3MUd6T2t6bjlKRXV0MytsanR1KytFQlkrbm9kK3Mv?=
 =?utf-8?B?WDVWWGxydlJCV3RDdlBHZDA0dnVrNjhJVUdpcXhCVzF5UGRrd092TXJ1ZTZt?=
 =?utf-8?B?ak5UZXVyY0MzR2RRSkNIZVUwMndRR1J0WlBxNk9iVzJlaXE1RWRIMmFhSllt?=
 =?utf-8?B?SzEraGlnTi9tSWhrREUraEN4THlKYXkzMmZqZit2bDczM1ZySkh0cGN2UkdC?=
 =?utf-8?B?dVZtcFpERGlxUi9pRUNaWGdkbDNxaTJ6NDZIZVAwM28yU3NOODc4S0t6TWM5?=
 =?utf-8?B?ZkRVS0VrY2FTc1NuMXRDeCtTSkVvOXdtNTFhSjhYQW9BTVpTcTFSVFB2U0hV?=
 =?utf-8?B?ZFJwbjM2ZXZ4eWtLVk5Fcm1vajFNUzUxWkRRSHlZUkUrK2k5Ty96WXgrTm5z?=
 =?utf-8?B?MEFqa0YzMjliZDdKaU9EWi80czZ3RDJnWjcwNWhnMVk4WEpZOVJZb0tUV1dQ?=
 =?utf-8?B?ZWhWbFNES3ZIL3Rpdk5zeWhvM1JKcTl0ek9FOWExZ3ZTM3hIclhUV2RZOHV3?=
 =?utf-8?B?OVpLYit2SmRYYjZaVWNiUmFYSGNRQ3lQckFURzNGVitZRUtpUCtBNXYwSnFp?=
 =?utf-8?B?THU5L0R0cWUxa0lub293Z3VQb0QwNEI1NkI3OXo5TXIydGtaTVRDa0NmSmJj?=
 =?utf-8?B?OENtWXQyYnc1RU5ndVYyYnpHSDY1TUdSQkNzMURFb2FEVlc2aEU2K2NDMTZu?=
 =?utf-8?B?S2VxZjI3c0t0TTBtaXdIVkZjeXdvcWUxOXRxOXhianc4aHErY3VhRWpTL284?=
 =?utf-8?B?eDNCTmNvT2g4endKMlJ3UlR2TzJwVHNmcjFnaWpVVVVhT0FXeWJlUGR1emIy?=
 =?utf-8?B?SjQ0MXZqOWZhUmN5N1UxcGlSV1BMNW9DUDlqZ3dMZnBNM1FHYnlzakpvcjdt?=
 =?utf-8?B?NUZXZkZOSytyTVZGakFoT0NwWVZEeTJnbUEydWxMRzB1NGhkU3VsQXJhSFRa?=
 =?utf-8?B?b24vT0NuODRtM00yK3U2OUxuRXQ5bkNaNllaY1hpOEViUkd4cUlaYTdtV3Jx?=
 =?utf-8?B?UUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 386f55be-eb70-4051-58ec-08dc6f5046ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2024 11:16:15.3038 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gtlV8Q5WpnHXxHU4JaDNZagtXTHmmD85Yeu1iOx99SVoiV/INA3wJttQMbVwQo5/f7PfeKhZhhm6WdkR7EG/OOpUYSlR34KYIH2Rpje+8Wg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4778
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715166980; x=1746702980;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NbXaEBUJAxbDYVt26HQRjHMGsUsV6DXRwY7DLut+k6c=;
 b=XhQc/fo51vmgUDmlZBmIWkshgc8eY8TO4YhaWCyCl7KK2WGvjlpUyqp7
 BgvEg9B1e7HeF0ZwyCF2PXtaOl3SLkitMr1oAwNz609lyEqdaCLYcJpC7
 45A1G7UbHXfxdl1BbuBF8Mj0olGwDvSGQ7coheBlRudXdJXL2x/mcdJo4
 NvKHTzVy2apcsNCLh73d1cAVGiPxNpE9BhWuYzjCAsWbkp+5V5xFqCjKh
 JTifQtkOxPMKoku0tzsNcuJh+bTTUlE+x+GYjo80G/4xN1BBLHsSHw108
 jwNu+FMc6bWzvGuJQCNqdC2OAp2DyriryTyQAVQgvkgitS1s/f+Caafop
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XhQc/fo5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] i40e: flower: validate
 control flags
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBBc2Jqw7hy
biBTbG90aCBUw7hubmVzZW4NCj4gU2VudDogVHVlc2RheSwgQXByaWwgMTYsIDIwMjQgODoxMyBQ
TQ0KPiBUbzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4gQ2M6IG5ldGRldkB2
Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IEVyaWMgRHVtYXpl
dA0KPiA8ZWR1bWF6ZXRAZ29vZ2xlLmNvbT47IE5ndXllbiwgQW50aG9ueSBMDQo+IDxhbnRob255
Lmwubmd1eWVuQGludGVsLmNvbT47IEFzYmrDuHJuIFNsb3RoIFTDuG5uZXNlbiA8YXN0QGZpYmVy
YnkubmV0PjsNCj4gSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IFBhb2xvIEFiZW5p
IDxwYWJlbmlAcmVkaGF0LmNvbT47DQo+IERhdmlkIFMuIE1pbGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0
Lm5ldD4NCj4gU3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXh0XSBpNDBl
OiBmbG93ZXI6IHZhbGlkYXRlIGNvbnRyb2wgZmxhZ3MNCj4gDQo+IFRoaXMgZHJpdmVyIGN1cnJl
bnRseSBkb2Vzbid0IHN1cHBvcnQgYW55IGNvbnRyb2wgZmxhZ3MuDQo+IA0KPiBVc2UgZmxvd19y
dWxlX2hhc19jb250cm9sX2ZsYWdzKCkgdG8gY2hlY2sgZm9yIGNvbnRyb2wgZmxhZ3MsIHN1Y2gg
YXMgY2FuIGJlDQo+IHNldCB0aHJvdWdoIGB0YyBmbG93ZXIgLi4uIGlwX2ZsYWdzIGZyYWdgLg0K
PiANCj4gSW4gY2FzZSBhbnkgY29udHJvbCBmbGFncyBhcmUgbWFza2VkLCBmbG93X3J1bGVfaGFz
X2NvbnRyb2xfZmxhZ3MoKSBzZXRzIGEgTkwNCj4gZXh0ZW5kZWQgZXJyb3IgbWVzc2FnZSwgYW5k
IHdlIHJldHVybiAtRU9QTk9UU1VQUC4NCj4gDQo+IE9ubHkgY29tcGlsZS10ZXN0ZWQuDQo+IA0K
PiBTaWduZWQtb2ZmLWJ5OiBBc2Jqw7hybiBTbG90aCBUw7hubmVzZW4gPGFzdEBmaWJlcmJ5Lm5l
dD4NCj4gLS0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5j
IHwgNCArKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspDQo+IA0KVGVzdGVk
LWJ5OiBTdWphaSBCdXZhbmVzd2FyYW4gPHN1amFpLmJ1dmFuZXN3YXJhbkBpbnRlbC5jb20+DQo=
