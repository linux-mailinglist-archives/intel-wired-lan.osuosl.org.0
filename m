Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ADBA0C837AF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 07:32:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A69AA408FE;
	Tue, 25 Nov 2025 06:32:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BWlE2ieJpikW; Tue, 25 Nov 2025 06:32:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F619409AF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764052343;
	bh=eAddoDhXQR5Z9IE5lE3kiqou0/j6sYozds13+tkZPjU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7LjT8pXj1eH2LmGr2nXIEspS4Pu94Rxv/Acst3nU6NiGvJlfIWu+kMZsra8Ep2/ha
	 sND+iEQLDNxnPxo0exfFc5Xr1mUXUiVfVGGhTtwYnAJSmf24zkgIVi5rODhF4lPvUc
	 RfmgEMJMQ4aQTq0zu6MjnVuplU4EocFNSdx/pLbhkFW2TSNhEJsr6vDWE3cBxrirFs
	 baEvqnTlLk1D2tX6s2o3Oj3bGGvrCQDw2vnFdGSf8eE1C2pBckiRfS2tSPQcnLdk04
	 8Bx0hupHn+b/dOCTIlROKy75hvwVmBEqCT6u1IpV41qDCDr284iwxZ8Z0ICYk5+n8X
	 tSDue449T0URA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F619409AF;
	Tue, 25 Nov 2025 06:32:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B29FF359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 06:32:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 98CDA60EE8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 06:32:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wdRPRs4pqW1t for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 06:32:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C0E3060824
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C0E3060824
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C0E3060824
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 06:32:20 +0000 (UTC)
X-CSE-ConnectionGUID: 0BN7vHU0Rj+DITs3vhIB5Q==
X-CSE-MsgGUID: YysUojg4Td2bE5EkTXSFOA==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="66106751"
X-IronPort-AV: E=Sophos;i="6.20,224,1758610800"; d="scan'208";a="66106751"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 22:32:19 -0800
X-CSE-ConnectionGUID: oQzGhijARU6lOOAgFOCh9A==
X-CSE-MsgGUID: nnvCqP2VQnC+SNW2AhSL0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,224,1758610800"; d="scan'208";a="196847182"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 22:32:19 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 24 Nov 2025 22:32:19 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 24 Nov 2025 22:32:19 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.3) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 24 Nov 2025 22:32:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p7/tOrVf6GIzDFVeRErKgbAJtzzUchdsYD2axqeYg3TEsxjtoOyOYTdcOthOtDYPIaarrETxj/YBRQPIj9qdjhLLvgsV0Am1xuM2d20Ur86bcxldM/Uz61yxFofnXJuka24Q5J7Tv+/3GKWsH26WGDGAlsQt+PGzBmW646i3nHnMh7iOPHFrccoLG7c5pfINYYDwOn2oB1H8ZUSvG4ks/CbeSzxo2Ibg1AWGPkmsXttI8A71Y/aT9ZsjQH2hk186J10vVJ+RN9tOgMUS5MO7/sc/EWhyH6MdG5QUtse8VrYIAgjIXRAKfGwg4iRW8N27M9TBYS8YXXBnCppOeQ5idA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eAddoDhXQR5Z9IE5lE3kiqou0/j6sYozds13+tkZPjU=;
 b=cDPTh1U3MSVWdtiexuEb6edrKHRBRkn0TWm8KHxtjkP1L1mkEkZmoELyD8XDW2Njn/BmnW3DHGv/JcyIM7yin3dAwNR56oKfPXalLF606v6i4hGZaeBcD78E02ibOTIOGDalxXx7DvWoh56uJ+1wGOvtljSPgPJvmzEeG+tRucAoSQ0TPeeYcvuRnw1R691lQ1DnNlh5FDHVuWsM7UjN1cSEJfeRTir2ThlLBR+i8HGRDXIx+MFvIz8l9BqZHOEFSrHIB7txrVjbRbJlNhAq11i3rMAwYNiowsN7iNpet6TT8wKdT2m/56S4/V/vJx/yaOXj7fjomzMrPFtqFykgwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Tue, 25 Nov
 2025 06:32:17 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 06:32:17 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Slepecki, Jakub" <jakub.slepecki@intel.com>,
 NXNE CNSE OSDT ITP Upstreaming <nxne.cnse.osdt.itp.upstreaming@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: fix broken Rx on VFs
Thread-Index: AQHcXWToho/5i+cc3UCJuMsrbFIXv7UCEcIAgADd37A=
Date: Tue, 25 Nov 2025 06:32:17 +0000
Message-ID: <IA3PR11MB8986B1C6A48D9050379B0B1FE5D1A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251124170735.3077425-1-aleksander.lobakin@intel.com>
 <c7bd3f03-fa2f-495c-94cb-8e310608cee6@intel.com>
In-Reply-To: <c7bd3f03-fa2f-495c-94cb-8e310608cee6@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH7PR11MB8252:EE_
x-ms-office365-filtering-correlation-id: 6e407e4f-c8f7-44c3-2443-08de2bec60e4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?bkRiL1ZYWGpIV0pOTWtLdjArT2EwQ1FxUzlLN29YL2htWVFjZy9NU25mbXBW?=
 =?utf-8?B?VC9WQmhPMzU1K1NMTFdNM25hTWFrREcwTVdLT3RGZFc2ZU90L1gyQnVuWndZ?=
 =?utf-8?B?amNEazlrVVpmaEdGcHFVMCtrQTk0cmVDSWRjNk8wWXhsTEg2NzdsRzJmTlp3?=
 =?utf-8?B?WjZWenJWR1MxNW44eVFUNDkvb2JTOFZEWVNVWEFpQk9nS3h3ZC9WMnFpdDhu?=
 =?utf-8?B?YXJ0cCtEUDlGREVMYlZIRVJvaVFsejVLamx6MHdicjNXV0VEZjQzVzdqVUcx?=
 =?utf-8?B?Wk5zRmhrMFVEaVNNOVJYNVZDSURwVDFjd0ttQlliclZ0VkpLK0RjOHBzUkRU?=
 =?utf-8?B?aDZHaWNTa3Z0TUJXVTQ3L2hWR1VaUkdtNDM5MEswMk5uU0N2bVBzODB3OWly?=
 =?utf-8?B?SVIydyt5TXUxU3ZzbXhKa1NqOVBVQ0FwMXBpVTgvc0s3enhHaCtLTGU0bWJq?=
 =?utf-8?B?RzVEUHROM3kzL2hpZkRjMHJORUVENHUyblFnNStqSjViUnV5dm4vTGhTR0dy?=
 =?utf-8?B?dC8xQ2g1R1hnM2tiY2NDeW5jSjRieGt6disyYUxFM3lubDlxWVlCQzJpZnlS?=
 =?utf-8?B?Z2xXa3o4RmppaTFmSGpwQ1dzRkZhTEh6MVo4UEU4S0wwNjZ2RWFZdEpJY2NX?=
 =?utf-8?B?TGpzd0lRVU1JU3lzQWtaeTA4MkNuY05MUUliSGo0OXJTMTZkZE81OEhZUXY3?=
 =?utf-8?B?NW5DdGVsT21EMTBPOGlyRzhLVmlvUEdKaXVWSEN5VHNmblB6YzlqL0R3aVVJ?=
 =?utf-8?B?QndxVVYxd3k5OE1yYUtVOWlUa2RwbUIrcUEzVm1VTVV3K0ZjYjJqY2J1alJW?=
 =?utf-8?B?Q1AyU3dmWWx5RDUzcndvdXhJek1QUkg0MCtKdTN2WUdUdkxjZkZ1cUdTWkpj?=
 =?utf-8?B?T3I5ZExNWHBhWmFJTjNTRFVnbGs3MFdWcW5yTzJVZkpjMlJ4N3pUckNIdklu?=
 =?utf-8?B?QWlIRGx1eFhRK2UwZGFaeFpJcDBQZHc5eHp4STJueGQwQmx5M3M4NW9JS2RT?=
 =?utf-8?B?ek01QThWWkEvU2YzMFhOS2dRSjhra1VkZWhHbHdtZjVmMS9od2tiTXVVUXhl?=
 =?utf-8?B?dWwyNDRNZFNwSytDQXZVYnhFcEJTVnZrZUVwMVd0cEljR1VWVXRGN2hJRkhF?=
 =?utf-8?B?UWFrRWsxd2k1bXZ3UDV2cENtUE1EYnB0NFBDLzNIVUo0Y2lSUVNUMVhoSXV5?=
 =?utf-8?B?eHdaWmFkeEZ6VzVGeHRyc3FPKzNFeTZqWjRwSVEwVnpPTFRDNXRRNVc3eUY3?=
 =?utf-8?B?MzZlV3cwWXduYjhZdk9UMk4yK3dPQVNaZm1Wc2ZMS3E4NlFldTNjcUtDNi8x?=
 =?utf-8?B?R1FjdmhqR2xwWnZlRGFWRDNRRFZPYUt1UEZqbmEwMHRPZVB5bTljM2dzNUMw?=
 =?utf-8?B?VGRhV01FOTFOYldPQTNzY2RiSFJ4dERmcFU3bnd2bVNTY3FRVEtOeGpub082?=
 =?utf-8?B?cVl5S29GUE5FZEgzcE1SWERxazRMbXR3cFVWN1NhbDg5V3lmZTdkZlhHK0RQ?=
 =?utf-8?B?S0F0UHdJMEVSWjZsZm5NUkE5SE4xbFpDbEhneGZIdkpZakFRRFczSHFhbjFN?=
 =?utf-8?B?T0NLc1BYcEJ0aCtmaGl0R1hLUitZK2o3Q1ZYenJROHBDYUVDQkZIWFhXbTNq?=
 =?utf-8?B?aFJoSU4wYjFvT2ZFZmZXN3d5MWdXYjZtMmhWUk9aZnZNajRxOGdUVDJkOHdm?=
 =?utf-8?B?ejdOWXpHdEFLNFJkbHNQRkNzK0lBQUpTbW5aa2pMZTYyQ1A2WEZoWkhvNnJy?=
 =?utf-8?B?VlNLNlRVVFNEKzNCY2ZZWlovWnp0aE45b3JTSk5IQnpTOEZXYldIYWdIWFF2?=
 =?utf-8?B?UE56UHV5RElVQ1FhS1V1RkErdk1ua2FyaHB2WGpPWlA1Y0kxYkltckk3SzNT?=
 =?utf-8?B?emZWY0JLZmt4NDRuUS9qWEkyTHhBTVZTWE1kRjlJMWxOQ3VWT0IyS3NzV0JF?=
 =?utf-8?B?bWppczNGNHBnRWk3aVhIaXNiL0d0YmoySnZjZi94Z3JDR3d0R1R1aGlqa1U2?=
 =?utf-8?B?dEIvMWxjZnY3UFFjeEFqN2pvSkQwYkg5OEptRnFVbFJDaUV6T1h3bkltbjJJ?=
 =?utf-8?Q?6GKmbg?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZW9tcnFVMEt1V1doTUVuVVFhSUg2eXVvK1dsTy9BOWtpZVlaSkZyaUd1TGxy?=
 =?utf-8?B?WlI3YjRNK1FtMENENW1DMWtZNEZ4NXV0NStZQ05NVU1HWUVISURLV0dKeTc5?=
 =?utf-8?B?SEhkMnc1NHdseUNnQThVcHd1aUNUM3NmT3AyS2UvYVpSR1htWWVGcEtsZkI4?=
 =?utf-8?B?My9wR2tmdkx4d0NqRzRSaVpoVEtQc21jcS8xYzVqRklBQlUvZDNjdzcrUGtn?=
 =?utf-8?B?UGk1Q3FZM3JqTnZ4MDlLWjdZWEc5a1kxb3BvRTRrT216dHplQlhVc1hXaWQv?=
 =?utf-8?B?SkFCazFMdnduQmdkcE9UZ1BVMzVGaXc4ZWM4MGRpTXhNd01aVWFQUUJXYVVH?=
 =?utf-8?B?eWJpSmZLY0labTZiVlROYjlqSkRtYW9zNWJxOVczN0VDd0hMTlNPZnFuVmJY?=
 =?utf-8?B?TGJyeklsempBSWsyWWNpVlhwcFdKRytpZERjNmdxTDBFdnZpakZtZENZSFp0?=
 =?utf-8?B?M3daLzlWTTJUTXhRRmtJQkM5Z0dyVTdMajgrSlFaWFlYN01Fb0ZETGFBSDVY?=
 =?utf-8?B?a1E2dGI1aWdrcEN1QTRHMmVRZ2kxN2JIUW80ZTVEbmd1N1V0ZnVPNGlxdTR2?=
 =?utf-8?B?K2ZlWCs1ZUJyWjlTeTY0ZkZxbzMzeFFFYU13Y2FxRWtvY3ZYTzAwQVVCbDRE?=
 =?utf-8?B?bmVIRVZpVC96YVRSS2RmU090SU5MMnlqdTQwd0VMdCtmT3FaTmxhcEIrZndW?=
 =?utf-8?B?OFZHdERYblUvb045OEtmNUZnWE05OEVVUjNOOWw2REJ1bXNpa0VEL25HME41?=
 =?utf-8?B?bXZFWkluVi9qM1d0alRKc1RWUlA4WGI5SmRMK3ZLbHEwQ2N2UW9naUFKMGps?=
 =?utf-8?B?eDlQN3M3QmxINUNpaDRCU0hmSzg1VjhEdWlTTHJ3VTB6cndsZkRZY0FZa01k?=
 =?utf-8?B?WjgrcUpZNENMZXBlYWc4YmROZURaczF3RnNlNzhSZlB0MVA0ZEQ2aTEvOUQ1?=
 =?utf-8?B?cDBETDZJT0UyZGlLM2Njck9wT1hGb3hpZlg2WWZRaG1lUHFBajNjbWZXL1pI?=
 =?utf-8?B?Q2dFYVhsUDNQN2krdGhLYWM1clk4ODZHbkhZMm90djhOcjAybHdDUG9yK0NM?=
 =?utf-8?B?eWFsVHk3ODNEcjlXVitaaHNyQlFZWmRqTTdHTGtmMlA5RFZTUUptWXE5ZTlk?=
 =?utf-8?B?aTVDWGtHNG04TndmZnpSbjJST1NRbjBsV3JjU3pFMGwrYTFBaEtjT251OFVV?=
 =?utf-8?B?RmFFWjdsOXY1M29Tay9yZTRaMnkvSUhEN0d4Wm1SUW01d1pGRkdESW9NU0RL?=
 =?utf-8?B?aUR2QiszZVU3ZTJKdmxPV1kyeW11Ny9sRHg2NGh3UTJPWnE2ZGZ0NXgrSmZM?=
 =?utf-8?B?djdiLzgrUnhYUHVxUG1JSmVwTnNhdFVJQ0c4T1NhRkttS0llV1NuS1h2eHFq?=
 =?utf-8?B?M3dIT1hZZFpBS1Z2UkVySUpkcDlKdGROUVBudkYwaGRYVFdGelJwZ2JlQndE?=
 =?utf-8?B?RUJHdWJLcER0R2MzWUxnOTkzUzhpRTNmN2VPNlp4djJYRUdZaUhWS3JWOEE0?=
 =?utf-8?B?R090aTVNSHlKdmJXbTFLcjZQT01QY3YySGllK0lUNnV6VEk5bnFsckphRk5m?=
 =?utf-8?B?RlpYbWxSUzdSQ3Z3TzdPL2NiNmoyN3RvbnJHMUpoRExvVkJIRzM1NnQ5czQ1?=
 =?utf-8?B?bTQrUTFhQitNd1FBVGRaOEVzZW5xYVhKOTl1a01aZkNRMTl3RXpxd2ZUWkwr?=
 =?utf-8?B?Y3hnNjlIOERKL3pGenZ5TXM5eXpwZWlqZU9ZM2JQc1lJcWJKVi9aME5oOTJT?=
 =?utf-8?B?cmxQQ3VwUGZCRncvTzdtcGo5Mnl2T3Y0ajh2eW5IZ1pqSC9RNGYrZWRRRkZr?=
 =?utf-8?B?WTB6SGs2c2psTkdvcEhnSCt5b2piS25obHVYVWxob1NieE92QURML2ttcmxn?=
 =?utf-8?B?VTFkOWpYODZBdkdkNjk3VzUzTDUxQjFYVXNEdTVSUm5GK05GUFQ2VkFoVE5J?=
 =?utf-8?B?b1ZZdXpSRWFHTDNVSW03bkdjY3ByN3c1RTZkZVpLZVNPUk96emtTbFBCN1Rv?=
 =?utf-8?B?RUJqR09TRldUaVRCVC8yVi9vcmhlYzR6aG1NeWdsU0g2TGtxbFFOV1dyeHlk?=
 =?utf-8?B?OHc5VWJqdW1RYVZ2eCtIRTlOUmJubEhUcFlDYzhpaFJEUUVaY3JhTm1mYzFG?=
 =?utf-8?B?aXJNRks2NTQ5bURPUTBpelM4Tjh2ZUpJcFdma0swbFZzNkY0amk4aW1DN2xP?=
 =?utf-8?B?c0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e407e4f-c8f7-44c3-2443-08de2bec60e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2025 06:32:17.0429 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mYNtaPxZEXDbSRl7q1A6TyhCdSBIdOHO2zNDqsZaCcPZfpEkjGaoDUWbE66Xp4g+Ou+F8FMTLadLAC1cgUNo6oO2pzpbYHBEbLxrUVTZZew=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8252
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764052340; x=1795588340;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eAddoDhXQR5Z9IE5lE3kiqou0/j6sYozds13+tkZPjU=;
 b=E9buxPdeuK6Dho1Csz1J+92nT+Dwe2O15VCyJsnkOnKLhSW7w8mYqGXx
 KsAUGEe1c70tFOg+II7JhjjvQ4ko02k0R8+TAR3J9YQuyufkSeXWzS1Zh
 kxfI6SYHTQaEsB0SWH8A+OzjgN4UAIycah7fj3/hTKLK8mspgpKFN4N2a
 RSBbG0A4a9WhlKrrAeSEdfpj93oi5QsnjbNjt+7eBR2S064ZKFcTTQGgn
 Btqmje1XcAhW+Y4pq7ZI+/h+2BgAf+yo+LUDZZZ9t+QcbApdP4KRJ3yNJ
 UjEkAYrAJzX+5nTMkFr4qGQjj01Akb9ZcepSOw0UF075maxmkZA8BSkM0
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=E9buxPde
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: fix broken Rx on VFs
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
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgQWxl
eGFuZGVyIExvYmFraW4NCj4gU2VudDogTW9uZGF5LCBOb3ZlbWJlciAyNCwgMjAyNSA2OjE4IFBN
DQo+IFRvOiBBbmRyZXcgTHVubiA8YW5kcmV3K25ldGRldkBsdW5uLmNoPjsgRGF2aWQgUy4gTWls
bGVyDQo+IDxkYXZlbUBkYXZlbWxvZnQubmV0PjsgRXJpYyBEdW1hemV0IDxlZHVtYXpldEBnb29n
bGUuY29tPjsgSmFrdWINCj4gS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IFBhb2xvIEFiZW5p
IDxwYWJlbmlAcmVkaGF0LmNvbT4NCj4gQ2M6IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNs
YXcua2l0c3plbEBpbnRlbC5jb20+OyBOZ3V5ZW4sDQo+IEFudGhvbnkgTCA8YW50aG9ueS5sLm5n
dXllbkBpbnRlbC5jb20+OyBTbGVwZWNraSwgSmFrdWINCj4gPGpha3ViLnNsZXBlY2tpQGludGVs
LmNvbT47IE5YTkUgQ05TRSBPU0RUIElUUCBVcHN0cmVhbWluZw0KPiA8bnhuZS5jbnNlLm9zZHQu
aXRwLnVwc3RyZWFtaW5nQGludGVsLmNvbT47IGludGVsLXdpcmVkLQ0KPiBsYW5AbGlzdHMub3N1
b3NsLm9yZzsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgbGludXgtDQo+IGtlcm5lbEB2Z2VyLmtl
cm5lbC5vcmcNCj4gU3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBuZXQtbmV4
dF0gaWNlOiBmaXggYnJva2VuIFJ4IG9uDQo+IFZGcw0KPiANCj4gRnJvbTogQWxleGFuZGVyIExv
YmFraW4gPGFsZWtzYW5kZXIubG9iYWtpbkBpbnRlbC5jb20+DQo+IERhdGU6IE1vbiwgMjQgTm92
IDIwMjUgMTg6MDc6MzUgKzAxMDANCj4gDQo+IE9vb3BzLCBtaXNzZWQgYSB0YWcsIHNvcnJ5Li4u
DQo+IA0KPiA+IFNpbmNlIHRoZSB0YWdnZWQgY29tbWl0LCBpY2Ugc3RvcHBlZCByZXNwZWN0aW5n
IFJ4IGJ1ZmZlciBsZW5ndGgNCj4gPiBwYXNzZWQgZnJvbSBWRnMuDQo+ID4gQXQgdGhhdCBwb2lu
dCwgdGhlIGJ1ZmZlciBsZW5ndGggd2FzIGhhcmRjb2RlZCBpbiBpY2UsIHNvIFZGcyBzdGlsbA0K
PiA+IHdvcmtlZCB1cCB0byBzb21lIHBvaW50ICh1bnRpbCwgZm9yIGV4YW1wbGUsIGEgVkYgd2Fu
dGVkIGFuIE1UVQ0KPiBsYXJnZXINCj4gPiB0aGFuIGl0cyBQRikuDQo+ID4gVGhlIG5leHQgY29t
bWl0IDkzZjUzZGI5ZjlkYyAoImljZTogc3dpdGNoIHRvIFBhZ2UgUG9vbCIpLCBicm9rZSBSeA0K
PiBvbg0KPiA+IFZGcyBjb21wbGV0ZWx5IHNpbmNlIGljZSBzdGFydGVkIGFjY291bnRpbmcgcGVy
LXF1ZXVlIGJ1ZmZlciBsZW5ndGhzDQo+ID4gYWdhaW4sIGJ1dCBub3cgVkYgcXVldWVzIGFsd2F5
cyBoYWQgdGhlaXIgbGVuZ3RoIHplcm9lZCwgYXMgaWNlIHdhcw0KPiA+IGFscmVhZHkgaWdub3Jp
bmcgd2hhdCBpYXZmIHdhcyBwYXNzaW5nIHRvIGl0Lg0KPiA+DQo+ID4gUmVzdG9yZSB0aGUgbGlu
ZSB0aGF0IGluaXRpYWxpemVzIHRoZSBidWZmZXIgbGVuZ3RoIG9uIFZGIHF1ZXVlcw0KPiA+IGJh
c2luZyBvbiB0aGUgdmlydGNobmwgbWVzc2FnZXMuDQo+ID4NCj4gPiBGaXhlczogM2E0ZjQxOWY3
NTA5ICgiaWNlOiBkcm9wIHBhZ2Ugc3BsaXR0aW5nIGFuZCByZWN5Y2xpbmciKQ0KPiA+IFJlcG9y
dGVkLWJ5OiBKYWt1YiBTbGVwZWNraSA8amFrdWIuc2xlcGVja2lAaW50ZWwuY29tPg0KPiANCj4g
U3VnZ2VzdGVkLWJ5OiBNaWNoYWwgU3dpYXRrb3dza2kgPG1pY2hhbC5zd2lhdGtvd3NraUBsaW51
eC5pbnRlbC5jb20+DQo+IA0KPiA+IFJldmlld2VkLWJ5OiBUb255IE5ndXllbiA8YW50aG9ueS5s
Lm5ndXllbkBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogQWxleGFuZGVyIExvYmFraW4g
PGFsZWtzYW5kZXIubG9iYWtpbkBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gSSdkIGxpa2UgdGhp
cyB0byBnbyBkaXJlY3RseSB0byBuZXQtbmV4dCB0byBxdWlja2x5IHVuYnJlYWsgVkZzICh0aGUN
Cj4gPiByZWxhdGVkIGNvbW1pdHMgYXJlIG5vdCBpbiB0aGUgbWFpbmxpbmUgeWV0KS4NCj4gVGhh
bmtzLA0KPiBPbGVrDQoNClJldmlld2VkLWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92IDxhbGVrc2Fu
ZHIubG9rdGlvbm92QGludGVsLmNvbT4NCg==
