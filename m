Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A27059A1F4E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Oct 2024 12:02:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 049A560890;
	Thu, 17 Oct 2024 10:02:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2eTDXuMPv5ZL; Thu, 17 Oct 2024 10:02:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 58098608B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729159336;
	bh=eSD8FWaLGjjKmQjXau9sacwUWUx1f3n52P1foPHSFYk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=r5mBFOMzCZSVRgq5ysI4KLcWdzW3iZBh/IFKBWeXUljbCvOxmBoRP+T1TkY2gJAn8
	 taEnZjQF7+TmzdPMxLbIBIPpc51ZpHC3xo/N2TpbrGYSoQr3tU88uznF9jdAhL2rJr
	 oac0Trpb2hCalL0Oxy0VxZxqCTRm5ijDF5kk4wJkc+Wrm6ON7P9FJ9q5RJpPg2kzZU
	 Z1lEHFgsFovHHqmujLIvMGtdBP0efSG6k1/0b0FTXeSTfmJPxCfqZgFTZB1R1ZBe7C
	 Z7uEvadgrLzQfOmzR6w0j9u4duVzadUIYpagIhQHYDynFMeyQ2pWccYY3nvabDngT9
	 gPv8fHfHZyxPg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 58098608B4;
	Thu, 17 Oct 2024 10:02:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 13372972
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 10:02:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0E37C605FA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 10:02:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DA8t4b-A_HIA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Oct 2024 10:02:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C8D4A605D9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C8D4A605D9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C8D4A605D9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 10:02:10 +0000 (UTC)
X-CSE-ConnectionGUID: km882uPGRqyHYdb7t/nfSA==
X-CSE-MsgGUID: lomwrbKBTyyWr9eRzj3L8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11227"; a="16255940"
X-IronPort-AV: E=Sophos;i="6.11,210,1725346800"; d="scan'208";a="16255940"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 03:02:10 -0700
X-CSE-ConnectionGUID: 6hcqe/ATQB2gNaLbG0pokw==
X-CSE-MsgGUID: lodnnCFwTVu1eUBWP8tJVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,210,1725346800"; d="scan'208";a="82462606"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Oct 2024 03:02:09 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 17 Oct 2024 03:02:08 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 17 Oct 2024 03:02:08 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 17 Oct 2024 03:02:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=THuvT7AkiJ0EHnIAD++OywHHWSIwL1+h7Fb0uQClrbicaJqMPE6hWf2MP5GIw2mhQtcHsYHh9WaDR5k1mYPYPGcE/J/FUFhhVJudExj/jJ3ThmKEKfYMBM8H8/EN7gVJJcDFauWI+DmzTcUrIRX2HgiH/kzb3j7VYpukniNA5JOy38jxv3GiOe0C3RGr63HA01I5zUbbW3ChWekvf4SZDnJxgHQRA76BJRTxoeOYyiXvKfWLBaQsWi1K5gdGTnTv5nReZhjOZ0TcSKSZ/yo7btHp1rEBExFIXHuWh40mRNR9yRVT6nUB02XpGlO9v6JAdGw5jH+JsrkzpoBDNb2nsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eSD8FWaLGjjKmQjXau9sacwUWUx1f3n52P1foPHSFYk=;
 b=MS7RpoVP+i6MiDSG+KqF/am1zxBen0y6bp/C50RWE3IpBhruA0DQ3yGBcqLjq//Q+OsMjYKQxvsQhlklLakDVrWswXl+Ab0sbTWvRkabZ8Mx+d75zUA711MwAID0Iut+/6jo0sy1HT6PUoYLpMcykU4L884NAmdjn7J0dkkcCEJ118ckrW6f7FkSDbdLb/VDljqI1AXHU9e4+rLk3NzL8itmtH52dLW3qbHKOxIp/Cn4wVtxt3FGCoQMGfcLOZELPKWvFmyAGvhfqbs6hlTKYOHjUCF6taX2VLMdNxxawUo4ItWvGeBD2e8R65mzPtu+xHEi19rda2QB3CfzI2Bfng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by CY8PR11MB7393.namprd11.prod.outlook.com (2603:10b6:930:84::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.18; Thu, 17 Oct
 2024 10:02:05 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%3]) with mapi id 15.20.8069.016; Thu, 17 Oct 2024
 10:02:05 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Sokolowski, Jan" <jan.sokolowski@intel.com>,
 "Connolly, Padraig J" <padraig.j.connolly@intel.com>
Thread-Topic: [PATCH iwl-next v3] i40e: add ability to reset vf for tx and rx
 mdd events
Thread-Index: AQHa+xLFE+hHXP8jHEmej6nLA7aeI7JGgUAAgAo+iaCAAC4vgIA6EsLA
Date: Thu, 17 Oct 2024 10:02:05 +0000
Message-ID: <SJ0PR11MB58667E28D6BB2B3CB663032FE5472@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20240830192807.615867-1-aleksandr.loktionov@intel.com>
 <ZtdqfLfHYvEKPE+r@boxer>
 <SJ0PR11MB586686ED6AFA882486F4EF05E59A2@SJ0PR11MB5866.namprd11.prod.outlook.com>
 <e9828f6a-3a2a-4128-bb2c-5dc75d013a9e@intel.com>
In-Reply-To: <e9828f6a-3a2a-4128-bb2c-5dc75d013a9e@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|CY8PR11MB7393:EE_
x-ms-office365-filtering-correlation-id: 8dac2b15-6f40-404f-a3b4-08dcee92c13b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?bEovcGc5UXB4bE0weUREL1VOWGhJbnBrSlNHUUROZ21iRE1jL2s3TnEvTHhl?=
 =?utf-8?B?cm5CNVdPbmJQditZcTRMMkJIQ3JRSVlvcURiSXlmdEg3V3poSmJzOHhPbU00?=
 =?utf-8?B?b1BRNUhib1F0TGlaZ0lxYlZENS95d0dNL0FzRy8vUHA5bkdiWHZNYkNXRVJp?=
 =?utf-8?B?VFVaYldBMVFKY1MxRjJUZlJXdEM5cGpFUGVjL0tJSExUcnZiNXN1ZTBWQjBr?=
 =?utf-8?B?dmErZXhFa2dYVTNpbStXMXJxUXJtTmEwcGVPakljNVJYM2w4Zlh2ZkQ0bE5I?=
 =?utf-8?B?emVDM0E3L2h6ZTBHMnQvZlRlb2pLOFRaVmpRUGg5T2pSOUNrcGFrNThMUnpY?=
 =?utf-8?B?NElFazV6T0RGZWhid1haanNRVi9uRENxYm5MMFFHcmw5Ymt6MzB3T1VlRVdM?=
 =?utf-8?B?aDkxRVpLaEZyV0QwaGREd01FS0ZWZk81citiNXk5M203ME1wQzdKeGNlMjVC?=
 =?utf-8?B?QU94Y1hrVUZoejc2RkhPaE9JRm9GVFdDalVlZ24xTElDQlI1d2RsMXVMZnV0?=
 =?utf-8?B?aGJhYmxsTDNuMHVPU2ZxQmZERmZ0WUllTWF5eW5lcU41Q3ExU1ZRL3Y2N3Mw?=
 =?utf-8?B?WmFtaGJ5bkR6UUNlb3dKQ1B6QXRNQWR5eC95ZjFHQzNUL01iakRNRHlsRWpN?=
 =?utf-8?B?VjVsVFI4bzRuN3dQOVZVQkJoelZ4L1JmaC9OUjloZm1MWGdRTHhuY1M0QVRP?=
 =?utf-8?B?N09XdXZ3Ums3NkN6cnlOM1lnRmFQUnE2UnNvMGFneGV6VEo1Z3YyV2o4c0Q1?=
 =?utf-8?B?eDd0eDMrVGZiQytzQUM5T1FlYzlWZE4rZktpUnN3YWlvQTllTE9vSjdkSGNR?=
 =?utf-8?B?Q0w0dG9scFkxendFZmtPMHgzdjl4RFdRTDREM01wWGNjSmQ3SHovQ1pXbGF4?=
 =?utf-8?B?dEFMdXg1RnhUSlJFQjhNeXdRS2tnQW5KNHBtNEVJRVNFaXdKdFdzaTdxOWhK?=
 =?utf-8?B?ZTFsTklBS29Sby9Xci9ONzhrYWtmbXpkVnhkWnFvQ25rN00xU1JxcmhjQ0Z0?=
 =?utf-8?B?SzljanRHenpDUzhYN05QbnFtL1N0Z2d2VWZpbk1qdnNzTWNaUEpTYjI4bzBH?=
 =?utf-8?B?WTUyWjJIbCs0VGI2OUFmRkVXU2VWeEJRL2FvazkySDRYNmczVnFzL1BnZkUw?=
 =?utf-8?B?RFlhdEdoNjliMDJudUdDa1lBUjFnbmdzak1TSHRNazRXd3J0N0QrOUlVeGdj?=
 =?utf-8?B?NU8wa2VWR0JkWkxSRlErUWs2eFVyOWVaMklUZ1BYdUE3aUlDOE9ZU01DWlND?=
 =?utf-8?B?Zk96dUFhOTU4NUtuVGZqYzhjREdwNVdJS1JqZUhKeTI3Wlk4SnQzUXVyWk1r?=
 =?utf-8?B?UDNoOFBkWkVISXFzTnJNOHNKNzh2dVhFTmdtOFFqQktTcmpYRWZWR0h6MmFl?=
 =?utf-8?B?Sk01ajNFbTM2MFpaKzVhbzgwb0J1WklZd2JZemFib1llTlNuV1VNM3IrQ1V4?=
 =?utf-8?B?Y1VhU2Z0YjZpV3lva1pCc01zdE4vUHE3MWV4NS9BcE16eHFaUTR1a1VJWGd1?=
 =?utf-8?B?TjVMQi9OcWNWY1RzS3c2c3BSa0JGUnFCdVlHQ1ZOYkMwUkw0bG9CWlljdWhi?=
 =?utf-8?B?eEFCNlR4WDJ6cDFGSnIxS0w5YmdRdEQ0TW9PM3pnd21MdExzTzcyMSs2Sytz?=
 =?utf-8?B?b1FEODluZ3UrT3hGNlYwNzBtOVZVdGVlTHV6NWx3a3puWmhCSmRCNVBKSXBW?=
 =?utf-8?B?MG16RU1YWmd4WlBtMkpHSVc5OE5NbmRETVQ1aFlPeGdnZmQzUHlMRXYzc2ll?=
 =?utf-8?B?blBJZEVRTTVFRUxNL3BycmNLTHdYMFk2QXh2eGN6M0Y4STBSR3JaMWlOTEJG?=
 =?utf-8?Q?6qr8z99/yEtZSe1bZoTVsSPk/PJbP8RujdGvY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VFptdzdhVm8rNnhCSnpNL2VRbVpYMXp5b1Z1bEFNOUE3b2t6M3B3bWE3dnkw?=
 =?utf-8?B?OWZLQzVzNjZDR2o0WGpweWo0cjBoeHR1Nk1IdHY4ZjkzR2pHWlVoY09PNTNr?=
 =?utf-8?B?WHZGWmlUTEN1NjVTcWtQcTByVmRrS3hqNXlpZkFtQWRUY1poR0dOSXd1Z0p6?=
 =?utf-8?B?dVlra3hFMnNCcXQrejAvVWt4eDdQTVYvNFRKdnJrb3RiTnY2U01kWExhRUJR?=
 =?utf-8?B?RUwvVy9qMmUrMExFNllMVFlCc29mamw3dWJTK3JlTUIyNkltMHFnVUNMUlZt?=
 =?utf-8?B?clAzVVpQU2ZocEpnYVlhUG1CVTdxeUNCVVNWbzUyTjk5ZHQ5WnZuaUk2Nnly?=
 =?utf-8?B?dHJCRVVVY0NHQjMrbmpNTzF3T0xWUkQyMktwZTZRaEdERXB1ZGZicU5ESlFt?=
 =?utf-8?B?YXdjRFJJSFo1Um5QSlArc0JyODV6ZVBjTUxOWC9iUTFXMmhDUEZpMlJkaFRt?=
 =?utf-8?B?TC9IbXQ5TGJwRGJDeG9odXJCWGM0ZDl4ODA2ZTlJOEhpc0ZyUmQzcEtrOWhq?=
 =?utf-8?B?UWdudVkvdzE3U1lwU08vN2dnQW1ndTFWNmVNczZXcC9mTks3OTdpSExTWmps?=
 =?utf-8?B?dmxWNFFCVXd5aXlRdFcwcHRXVDZWY0svaFJNMU96OVo0aW5QVVEwNHFUd1lF?=
 =?utf-8?B?RW9pckxkMTVXL241RE1yMnJvV3dkODR1OC9LUzNERzJMSythY3VWMm1Fb0pz?=
 =?utf-8?B?RnJON2gvZ3Z6VmtWa0dXQ2lWMUNacnZ5anRvVHBqUXBDaDlRRmFUM2oyNjV0?=
 =?utf-8?B?QmJLWmI3djVxT0dTODh0dUVucDNkZ01uVWJ6T2ZxR0hCaGZhcGNBeWZ0VGw5?=
 =?utf-8?B?UzkzVDhmMXpIaDJtUXUwcUpaYkdZQnRtM1FaK1BBZDQyUzBZY2FRMm5oY2VH?=
 =?utf-8?B?Tk9rSS9FK3haT2VSdFdZT2FzdG9PelcyUTFONmc4b1VDVUZJL1pzYklLeGxP?=
 =?utf-8?B?WVdnaXc5cDB1MUtUNXNpVkZLWVdvSUFnVHdpUFFBTFlOcmZSSjJpWktwaWp3?=
 =?utf-8?B?VjBaRTg1ZmcweUFIT1NDdDZpSU02bEw3QzRUN256SkVydHNaTmJWamVzaW90?=
 =?utf-8?B?SzRKN0hXRVRQMTdwcnNIem9GWnRRanNadm55djVBVUtKRDVYT3Vmd2dha3Zr?=
 =?utf-8?B?T2FRRVJxaVpSRk9XdVdmN1ZKdG1uTUNUdmlnMGI4Z3BGd2ViTjZYbXdhcm9L?=
 =?utf-8?B?MmFpNi8wWFR0cnpHeVdBSmswVHY4dE9lYjVNYTVIWjNuUFpNQkg2bHQ3NkNa?=
 =?utf-8?B?VGY1Z3RxT3IvMURwMG5YcWFCMW1vT0JCQ0k3bzJyTk5vN1pLL1ZET0dKTmp1?=
 =?utf-8?B?cHV6MkV3dGJRUm1Oenh3K2YvdCt0M0piVnQ0UVd2eDJOK0Z2Y21WT1hqcDA3?=
 =?utf-8?B?VzIxTDJuM3ZCeUZCVUtBWkMwd3BOZ2Y0bVlkTW1zcHRPN0lEQ0VRUWcyUVNC?=
 =?utf-8?B?MmhoVC96c1BmM3JLQkhvZWYvcGpYVE91UE5ZalNoanVlVE5MZUUxMHJCRG5v?=
 =?utf-8?B?c0xkVUpqZTNBNzhyNnQ1TEVwZkY3VXhZbjZ6U1J3clNwYmFzTVJoSFlsa0V5?=
 =?utf-8?B?b3M3OXFJMkJlUjNFTDhVZjhReWdDSVE4OVZGeGNET29IOTVNTjdCZkdwVUNE?=
 =?utf-8?B?ejFHdDBvbzE3ZVpuQUhKbitjVzdzMFhQTW96SjBLZGNIWWhMV2FHRHJYOVJz?=
 =?utf-8?B?TlpLSkMzSDJ5TEdvZlhDbmNmRHJoNWVEeU5MRXduc1pPc2JMekNyV1d0S3Bv?=
 =?utf-8?B?N3ZUVzJkOWNyNVZWQW9PSDVIQU9TY0FMTzkrazBDd0JvY0xpd0ozQndpa2Y5?=
 =?utf-8?B?S3dOdUQ1YzIrdXkvY0I5S2luZ2VRdEdad0xYV29XOUc0RmMzczRGUHBwOHZF?=
 =?utf-8?B?cEtIdTdqWmU4TWQ4c1FIM3pWZ0xMSkpSRXNCU3RpT2pOTmZWWlJPaDJ5RXgy?=
 =?utf-8?B?UXpiczR2VDlWNWFMcjBsZWxwYUY5ellkZ1VFczBVMm5zcHV1dk9GU3FUaHJG?=
 =?utf-8?B?N0oxd0RKczUwUkhrRUNOVEJhQ1Mrdld2MHUyQXZNRjIrQWdQNEFSdytYSVFr?=
 =?utf-8?B?QVFZV1VKU29lQkIzWXVGMWxqWXB0WkJyNHMvTDRPYnRMekhwQVJQdDBTUDE1?=
 =?utf-8?B?V3duM2pJQ2tHTlljU0MzVFVvU1VrSDZ1aFVxRHNDNWlCK0FPNi9BbEhBZjBO?=
 =?utf-8?B?cnc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8dac2b15-6f40-404f-a3b4-08dcee92c13b
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2024 10:02:05.3891 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +hUfYNFkGRMQgoWZlhWQ+grV5oZQRH+zKd5eRb2tI5ZNQxGrPC1gDn8qbj4NbP3CUGWLNJyjushoFGD6Rwteivtm0u2lFxJ4la8+0sRlulc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7393
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729159331; x=1760695331;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eSD8FWaLGjjKmQjXau9sacwUWUx1f3n52P1foPHSFYk=;
 b=CcImzjvWOp4KviqxAfkkPaFhmkNrXRHW99jMlJrmS75JeOotuDpPETJJ
 QTxa7Opq17mS0p17Dl5cJbK/M8Sfq0MKNq5ADUPM52fAi3X1xAbLq5m7i
 2dRUaDuGz74uOj8MDTeE1Gp0I+vIOR4VqC0bvuHtJPwxhWQgC4On1WtyE
 4ESI9hnfjDE4whKkAyacefIVArzt2Z/j8SzD8RZD27WI/nI8PDgrHp64h
 gF8sPcaL7u+HmXZ6bldaWq1eOZ7AJErBJebjTI8fWvpDoGlIui5fk1Yum
 Gh9DVqrwUcxMICY4bv0KbzsiFaIY0WxdSGc4PX/V4ErrSVQ3aKfHQbcNY
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CcImzjvW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] i40e: add ability to
 reset vf for tx and rx mdd events
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2l0c3plbCwgUHJ6ZW15
c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgU2Vw
dGVtYmVyIDEwLCAyMDI0IDE6MTEgUE0NCj4gVG86IExva3Rpb25vdiwgQWxla3NhbmRyIDxhbGVr
c2FuZHIubG9rdGlvbm92QGludGVsLmNvbT47DQo+IEZpamFsa293c2tpLCBNYWNpZWogPG1hY2ll
ai5maWphbGtvd3NraUBpbnRlbC5jb20+DQo+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1
b3NsLm9yZzsgTmd1eWVuLCBBbnRob255IEwNCj4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29t
PjsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgU29rb2xvd3NraSwNCj4gSmFuIDxqYW4uc29rb2xv
d3NraUBpbnRlbC5jb20+OyBDb25ub2xseSwgUGFkcmFpZyBKDQo+IDxwYWRyYWlnLmouY29ubm9s
bHlAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIGl3bC1uZXh0IHYzXSBpNDBlOiBh
ZGQgYWJpbGl0eSB0byByZXNldCB2ZiBmb3INCj4gdHggYW5kIHJ4IG1kZCBldmVudHMNCj4gDQo+
IE9uIDkvMTAvMjQgMTA6MjksIExva3Rpb25vdiwgQWxla3NhbmRyIHdyb3RlOg0KPiA+PiBGcm9t
OiBGaWphbGtvd3NraSwgTWFjaWVqIDxtYWNpZWouZmlqYWxrb3dza2lAaW50ZWwuY29tPg0KPiA+
PiBTZW50OiBUdWVzZGF5LCBTZXB0ZW1iZXIgMywgMjAyNCA5OjU5IFBNDQo+ID4+IFRvOiBMb2t0
aW9ub3YsIEFsZWtzYW5kciA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo+ID4+IENj
OiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgTmd1eWVuLCBBbnRob255IEwNCj4g
Pj4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsN
Cj4gU29rb2xvd3NraSwgSmFuDQo+ID4+IDxqYW4uc29rb2xvd3NraUBpbnRlbC5jb20+OyBDb25u
b2xseSwgUGFkcmFpZyBKDQo+ID4+IDxwYWRyYWlnLmouY29ubm9sbHlAaW50ZWwuY29tPg0KPiA+
PiBTdWJqZWN0OiBSZTogW1BBVENIIGl3bC1uZXh0IHYzXSBpNDBlOiBhZGQgYWJpbGl0eSB0byBy
ZXNldCB2Zg0KPiBmb3IgdHgNCj4gPj4gYW5kIHJ4IG1kZCBldmVudHMNCj4gDQo+IHBsZWFzZSBj
YXBpdGFsaXplIGFjcm9ueW1zIChUeCwgUngsIFZGLCBNREQsIFBGKSAoYWxzbyBpbiB0aGUNCj4g
c3ViamVjdCBsaW5lLCBidXQgc2VudCBuZXh0IHZlcnNpb24gYXMgdjQpLg0KPiANCj4gPj4NCj4g
Pj4gT24gRnJpLCBBdWcgMzAsIDIwMjQgYXQgMDk6Mjg6MDdQTSArMDIwMCwgQWxla3NhbmRyIExv
a3Rpb25vdg0KPiB3cm90ZToNCj4gPj4+IEluIGNhc2VzIHdoZW4gdmYgc2VuZHMgbWFsZm9ybWVk
IHBhY2tldHMgdGhhdCBhcmUgY2xhc3NpZmllZCBhcw0KPiA+Pj4gbWFsaWNpb3VzLCBzb21ldGlt
ZXMgaXQgY2F1c2VzIHR4IHF1ZXVlIHRvIGZyZWV6ZS4gVGhpcyBmcm96ZW4NCj4gcXVldWUNCj4g
Pj4+IGNhbiBiZSBzdHVjayBmb3Igc2V2ZXJhbCBtaW51dGVzIGJlaW5nIHVudXNhYmxlLiBXaGVu
IG1kZCBldmVudA0KPiA+Pj4gb2NjdXJzLCB0aGVyZSBpcyBhIHBvc2liaWxpdHkgdG8gcGVyZm9y
bSBhIGdyYWNlZnVsIHZmIHJlc2V0IHRvDQo+ID4+PiBxdWlja2x5IGJyaW5nIHZmIGJhY2sgdG8g
b3BlcmF0aW9uYWwgc3RhdGUuDQo+ID4+Pg0KPiA+Pj4gQ3VycmVudGx5IHZmIGlxdWV1ZXMgYXJl
IGJlaW5nIGRpc2FibGVkIGlmIG1kZCBldmVudCBvY2N1cnMuDQo+ID4+PiBBZGQgdGhlIGFiaWxp
dHkgdG8gcmVzZXQgdmYgaWYgdHggb3IgcnggbWRkIG9jY3Vycy4NCj4gPj4+IEFkZCBtZGQgZXZl
bnRzIGxvZ2dpbmcgdGhyb3R0bGluZyAvKiBhdm9pZCBkbWVzZyBwb2x1dGlvbiAqLy4NCj4gPj4+
IFVuaWZ5IHR4IHJ4IG1kZCBtZXNzYWdlcyBmb3JtYXRzLg0KPiA+Pj4NCj4gPj4+IENvLWRldmVs
b3BlZC1ieTogSmFuIFNva29sb3dza2kgPGphbi5zb2tvbG93c2tpQGludGVsLmNvbT4NCj4gPj4+
IFNpZ25lZC1vZmYtYnk6IEphbiBTb2tvbG93c2tpIDxqYW4uc29rb2xvd3NraUBpbnRlbC5jb20+
DQo+ID4+PiBDby1kZXZlbG9wZWQtYnk6IFBhZHJhaWcgSiBDb25ub2xseQ0KPiA8cGFkcmFpZy5q
LmNvbm5vbGx5QGludGVsLmNvbT4NCj4gPj4+IFNpZ25lZC1vZmYtYnk6ICBQYWRyYWlnIEogQ29u
bm9sbHkNCj4gPHBhZHJhaWcuai5jb25ub2xseUBpbnRlbC5jb20+DQo+ID4+PiBTaWduZWQtb2Zm
LWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92DQo+IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNv
bT4NCj4gDQo+IE5leHQgdGltZSBwbGVhc2Ugd2FpdCBmb3IgcmV2aWV3IG9uIG91ciBpbnRlcm5h
bCBlMTAwMC1tYWlsaW5nLQ0KPiBsaXN0Lg0KPiBGZWVsIGZyZWUgdG8gcGluZyBtZSBkaXJlY3Rs
eSBpZiB0aGVyZSB3aWxsIGJlIG5vIG9uZSBlbmdhZ2VkIGluDQo+IGFueSBmdXR1cmUgc2VyaWVz
IG9mIHlvdXJzLg0KPiANCj4gPj4+IC0tLQ0KPiA+Pj4gdjItPnYzIGZpeCBjb21waWxhdGlvbiBp
c3N1ZQ0KPiA+Pj4gdjEtPnYyIGZpeCBjb21waWxhdGlvbiBpc3N1ZQ0KPiA+Pj4gLS0tDQo+ID4+
PiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZS5oICAgICAgICB8ICAgNCAr
LQ0KPiA+Pj4gICAuLi4vbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9kZWJ1Z2ZzLmMgICAg
fCAgIDIgKy0NCj4gPj4+ICAgLi4uL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfZXRodG9v
bC5jICAgIHwgICAyICsNCj4gPj4+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9p
NDBlX21haW4uYyAgIHwgMTE2DQo+ID4+ICsrKysrKysrKysrKysrKystLQ0KPiA+Pj4gICAuLi4v
ZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3ZpcnRjaG5sX3BmLmMgICAgfCAgIDIgKy0NCj4gPj4+
ICAgLi4uL2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV92aXJ0Y2hubF9wZi5oICAgIHwgIDExICst
DQo+ID4+PiAgIDYgZmlsZXMgY2hhbmdlZCwgMTIyIGluc2VydGlvbnMoKyksIDE1IGRlbGV0aW9u
cygtKQ0KPiA+Pj4NCj4gDQo+IA0KPiA+Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaTQwZS9pNDBlX2V0aHRvb2wuYw0KPiA+Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaTQwZS9pNDBlX2V0aHRvb2wuYw0KPiA+Pj4gQEAgLTQ1OSw2ICs0NTksOCBAQCBzdGF0
aWMgY29uc3Qgc3RydWN0IGk0MGVfcHJpdl9mbGFncw0KPiA+PiBpNDBlX2dzdHJpbmdzX3ByaXZf
ZmxhZ3NbXSA9IHsNCj4gPj4+ICAgCUk0MEVfUFJJVl9GTEFHKCJiYXNlLXItZmVjIiwgSTQwRV9G
TEFHX0JBU0VfUl9GRUMsIDApLA0KPiA+Pj4gICAJSTQwRV9QUklWX0ZMQUcoInZmLXZsYW4tcHJ1
bmluZyIsDQo+ID4+PiAgIAkJICAgICAgIEk0MEVfRkxBR19WRl9WTEFOX1BSVU5JTkdfRU5BLCAw
KSwNCj4gPj4+ICsJSTQwRV9QUklWX0ZMQUcoIm1kZC1hdXRvLXJlc2V0LXZmIiwNCj4gPj4+ICsJ
CSAgICAgICBJNDBFX0ZMQUdfTUREX0FVVE9fUkVTRVRfVkYsIDApLA0KPiA+Pg0KPiA+PiB5b3Ug
ZG9uJ3QgdGVsbCB1cyB0aGF0IHRoaXMgaXMgaW1wbGVtZW50ZWQgdmlhIHByaXYtZmxhZyBpbiB0
aGUNCj4gPj4gY29tbWl0IG1lc3NhZ2UsIHdvdWxkIGJlIGdvb2QgdG8gaW5jbHVkZSBpbmZvIGFi
b3V0IGl0Lg0KPiA+IFRoaXMgZmxhZyBpcyBpbXBsZW1lbnRlZCBmb3Igb3RoZXIgbmV0d29yayBh
ZGFwdGVycyBsaWtlIGljZSwgd2UNCj4gdGhvdWdodCBpdCdzIGtpbmQgb2Ygc3RhbmRhcmQuDQo+
ID4gQ2FuIHlvdSBzdWdnZXN0IHdoYXQgZXhhY3QgcGFydCB0byBjaGFuZ2U/IFBsZWFzZSBiZSBj
b25jcmV0ZS4NCj4gPiBUaGFuayB5b3UNCj4gDQo+IHByaXYtZmxhZyBpcyBub3QgYSBzdGFuZGFy
ZCwgYnkgZGVmaW5pdGlvbiB3aGF0IHdlIGRvIGluIGludGVsDQo+IGRyaXZlcnMgaXMgYWxzbyBu
b3QgbmVjZXNzYXJpbHkgYSBzdGFuZGFyZA0KPiANCj4ga2VlcGluZyB0aGUgY29kZSBxdWFsaXR5
IGFzLWlzIHNob3VsZCBiZSByYXRoZXIgc2VlbiBhcyBhbg0KPiBhbGxvd2FuY2UgZm9yIGxlZ2Fj
eSBkcml2ZXJzLCBpbnN0ZWFkIG9mIHNvbWV0aGluZyB0aGF0IHNob3VsZCBiZQ0KPiBjb3B5LXBh
c3RlZCB5ZXQgYWdhaW4uIEJ1dCBjb21taXQgbWVzc2FnZXMgYXJlIGRpZmZlcmVudCwgeW91IG5l
ZWQNCj4gdG8gb2JleSB0aGUgY3VycmVudCBzdGFuZGFyZCwgd2hpY2ggaXMgc2ltcGx5OiBkZXNj
cmliZSBub24tb2J2aW91cw0KPiB0aGluZ3MsIGRlc2NyaWJlIG1vcmUgaWYgYXNrZWQgZHVyaW5n
IHJldmlldy4gUGxlYXNlIGRvIHNvIDopDQo+IA0KPiA+Pj4gK3N0YXRpYyB2b2lkIGk0MGVfcHJp
bnRfdmZfcnhfbWRkX2V2ZW50KHN0cnVjdCBpNDBlX3BmICpwZiwNCj4gc3RydWN0DQo+ID4+PiAr
aTQwZV92ZiAqdmYpIHsNCj4gPj4+ICsJZGV2X2VycigmcGYtPnBkZXYtPmRldiwgIiVsbGQgUngg
TWFsaWNpb3VzIERyaXZlciBEZXRlY3Rpb24NCj4gPj4gZXZlbnRzIGRldGVjdGVkIG9uIFBGICVk
IFZGICVkIE1BQyAlcG0uIG1kZC1hdXRvLXJlc2V0LQ0KPiB2ZnM9JXNcbiIsDQo+ID4+PiArCQl2
Zi0+bWRkX3J4X2V2ZW50cy5jb3VudCwNCj4gPj4+ICsJCXBmLT5ody5wZl9pZCwNCj4gPj4+ICsJ
CXZmLT52Zl9pZCwNCj4gPj4+ICsJCXZmLT5kZWZhdWx0X2xhbl9hZGRyLmFkZHIsDQo+ID4+PiAr
CQl0ZXN0X2JpdChJNDBFX0ZMQUdfTUREX0FVVE9fUkVTRVRfVkYsIHBmLT5mbGFncykgPyAib24i
DQo+IDoNCj4gPj4gIm9mZiIpOyB9DQo+ID4+PiArDQo+ID4+PiArLyoqDQo+ID4+PiArICogaTQw
ZV9wcmludF92Zl90eF9tZGRfZXZlbnQgLSBwcmludCBWRiBUeCBtYWxpY2lvdXMgZHJpdmVyDQo+
IGRldGVjdA0KPiA+Pj4gK2V2ZW50DQo+ID4+PiArICogQHBmOiBib2FyZCBwcml2YXRlIHN0cnVj
dHVyZQ0KPiA+Pj4gKyAqIEB2ZjogcG9pbnRlciB0byB0aGUgVkYgc3RydWN0dXJlICAqLyBzdGF0
aWMgdm9pZA0KPiA+Pj4gK2k0MGVfcHJpbnRfdmZfdHhfbWRkX2V2ZW50KHN0cnVjdCBpNDBlX3Bm
ICpwZiwgc3RydWN0IGk0MGVfdmYNCj4gKnZmKQ0KPiA+Pj4gK3sNCj4gPj4+ICsJZGV2X2Vycigm
cGYtPnBkZXYtPmRldiwgIiVsbGQgVHggTWFsaWNpb3VzIERyaXZlciBEZXRlY3Rpb24NCj4gPj4g
ZXZlbnRzIGRldGVjdGVkIG9uIFBGICVkIFZGICVkIE1BQyAlcG0uIG1kZC1hdXRvLXJlc2V0LQ0K
PiB2ZnM9JXNcbiIsDQo+ID4+PiArCQl2Zi0+bWRkX3R4X2V2ZW50cy5jb3VudCwNCj4gPj4+ICsJ
CXBmLT5ody5wZl9pZCwNCj4gPj4+ICsJCXZmLT52Zl9pZCwNCj4gPj4+ICsJCXZmLT5kZWZhdWx0
X2xhbl9hZGRyLmFkZHIsDQo+ID4+PiArCQl0ZXN0X2JpdChJNDBFX0ZMQUdfTUREX0FVVE9fUkVT
RVRfVkYsIHBmLT5mbGFncykgPyAib24iDQo+IDoNCj4gPj4gIm9mZiIpOyB9DQo+ID4+DQo+ID4+
IFVubmVjZXNhcnkgY29kZSBkdXBsaWNhdGlvbiwgdHdvIGZ1bmN0aW9ucyB3aXRoIHByaW50aW5n
IHRoZQ0KPiB2ZXJ5DQo+ID4+IHNhbWUgc3RhdGVtZW50IHdpdGggYSBzaW5nbGUgZGlmZmVyZW50
IGxldHRlci4NCj4gPiBCdXQgaXQncyBlYXN5IHRvIGdyZXAgYW5kIGZpbmQgYXMgcmVxdWlyZWQg
YnkgbGludXggY29kaW5nDQo+IHN0YW5kYXJkcy4NCj4gDQo+IFlvdSBjb3VsZCByZXdvcmQgdG8g
aGF2ZSBpdCBzdGlsbCBvYnZpb3VzIHdoYXQgdG8gZ3JlcCBmb3IsIGxpa2U6DQo+IA0KPiBNYWxp
Y2lvdXMgRHJpdmVyIERldGVjdGVkIGFuIEV2ZW50LCBQRjogJWQsIFZGOiAlZCwgTUFDOiAlcG0s
IGRpcjoNCj4gJXMuLi4NCj4gDQo+IHdpdGggdGhlIGxhc3QgJXMgYmVpbmcgIlR4IiBvciAiUngi
DQo+IChub3RlOiBJIGRpZG4ndCBjb3BpZWQgYWxsIHlvdXIgc3R1ZmYgYXMgdGhpcyBpcyBqdXN0
IGFuIGV4YW1wbGUpDQo+IA0KPiA+Pj4gKw0KPiA+Pj4gKwkvKiBWRiBNREQgZXZlbnQgbG9ncyBh
cmUgcmF0ZSBsaW1pdGVkIHRvIG9uZSBzZWNvbmQgaW50ZXJ2YWxzDQo+ICovDQo+ID4+PiArCWlm
ICh0aW1lX2lzX2FmdGVyX2ppZmZpZXMocGYtPmxhc3RfcHJpbnRlZF9tZGRfamlmZmllcyArIEha
ICoNCj4gPj4gMSkpDQo+ID4+PiArCQlyZXR1cm47DQo+ID4+PiArDQo+ID4+PiArCXBmLT5sYXN0
X3ByaW50ZWRfbWRkX2ppZmZpZXMgPSBqaWZmaWVzOw0KPiA+Pg0KPiA+PiB3aHkgaG9tZWdyb3du
IHJhdGUgbGltaXRpbmc/DQo+ID4gQmVjYXVzZSBpdCB3b3JrcyEgQW5kIG90aGVyIGlkZWFzIHBy
b2JhYmx5IGRpZG4ndC4NCj4gPiBXaGF0IGlzIHlvdXIgc3VnZ2VzdGlvbiBleGFjdGx5PyBQbGVh
c2UgYmUgY29uY3JldGUuDQo+IA0KPiBkZXZfaW5mb19yYXRlbGltaXRlZCgpDQpJdCBkb2Vzbid0
IGZpdCByZXF1aXJlbWVudHMuIFdlIG5lZWQgY3VzdG9tIHJhdGUgbGltaXRpbmcgYmVjYXVzZSBp
dCBuZWVkcyB0byBiZSByZS1zZXQgYWZ0ZXIgZWFjaCBIVyByZXNldCBmb3IgZXhhbXBsZS4NCg==
