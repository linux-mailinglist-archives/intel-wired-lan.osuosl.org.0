Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E3063B701
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Nov 2022 02:20:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD03F60E92;
	Tue, 29 Nov 2022 01:20:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD03F60E92
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669684806;
	bh=6x7aimcvYHudl+u/pJwEJrWkK+jINlhS1lqsSgmozWo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ca02rJPaJwNE8StV7/21Jm66ZCATbTXjeNLQc42Ww7z9rUfR6JJqghbjaQwt0SWK0
	 yOf4XT8w3o3xZoyLSXUAIJEcPwR8xuOulubXCaw1DTN4P6on9uiiCAL5O8PzgHlgk3
	 IJmBD5869tcNDCxHIEPjpeZPvJtXMqdMQHrfBN4WVWkpqkhRQUp3R/PGroCSzuK4CY
	 dtSPp2j0lfB6pEAteKu6RFwRsaGoLSNMpTmhgpd/MI4xXtUI6t1v4vEoZd+UBXSKt1
	 gC8c5QAtWGY3PHD3ctZIoFxtwDd+bJPkETxrelSO4VMd/y/G5Qrq6GHlDvi/YKLVuO
	 4JFoBPWMEJJZw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id drTHfklPFg53; Tue, 29 Nov 2022 01:20:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7DD4F60E3B;
	Tue, 29 Nov 2022 01:20:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7DD4F60E3B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E8BB01BF39C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 01:20:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C162660E4A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 01:20:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C162660E4A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yq7t1xPSBvUY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Nov 2022 01:19:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9DDD560E3B
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9DDD560E3B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 01:19:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="295370231"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="295370231"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 17:19:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="645710157"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="645710157"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 28 Nov 2022 17:19:55 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 28 Nov 2022 17:19:54 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 28 Nov 2022 17:19:54 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 28 Nov 2022 17:19:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hMjLQplFyJ3KI72ZPar6dQxhSpQ4Ub5umXhJLBuzQDcL4U/I7xPrLzZubLSwxED1O7KOy9z4Wqy1zzd9OfCUDqchKSEMcEy4arDgkP9ok5OnetRbp4R4ZFgZmZG783fVblgCkLrN5pGaGq3HxtV2Mec2VCw6foezIQMTtI9y+tgCdoWGIMvquzptz0Eh4GRc9dXJBKUHNazBUj/bYiq9AoLsiFY9gueSCoZKGf3w5yzZUYzWYJ24Fh2KS32o7e4dP3Bq2hpa7by/orCMcDDP1l9yc2mKMIWnDBaY90SXKPjPPGTKm8lXU2gxNgCEA4ji/yxhqc4tDv8SEL2G4aIVzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2VWQL/ZbZJIinFw3T8FjVq/YL3CKNqc/3tMyr9gMUQY=;
 b=VoCz6ihsE9GI+DXY8zWAo8Kfd9fxDf3+epodHDf0Mvb45os5FelIjmdVJb5pmak5OJMq66JDteNqKCLnKz/QwpYtxf5jA//fu4VpJBiq8pYcBoHFxd1Zh7Nmy/wvuJTO3KRkXruhQpD95CtQCavC6LKwG8cY/sBLmkz8IU7HOEdXfZQ91OrzbcjVUrHVuPdSg+E3FHigvcbjATpDOX5R8LHRS99+XPuFBuwSLKP5xljXefZG9V9HpeMg+YHqfazpOOzm/M3bbsg0FkQkYWuqiXEtao9YIGWqHwJrpl/ae0ySrR/2pOD5ixWrfAXazgwBrrwJFJ0Sir6joIGkr1E5iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH0PR11MB5080.namprd11.prod.outlook.com (2603:10b6:510:3f::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Tue, 29 Nov
 2022 01:19:47 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::3862:3b51:be36:e6f3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::3862:3b51:be36:e6f3%6]) with mapi id 15.20.5857.023; Tue, 29 Nov 2022
 01:19:47 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Vincent MAILHOL <mailhol.vincent@wanadoo.fr>
Thread-Topic: [PATCH net-next v5 2/4] net: devlink: remove
 devlink_info_driver_name_put()
Thread-Index: AQHZA4aDtuA/HeJz8UWj3YH70WnD9q5VCi+ggAANmACAAAJxAA==
Date: Tue, 29 Nov 2022 01:19:46 +0000
Message-ID: <CO1PR11MB5089CA1EA56FE7CFF70F6046D6129@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20221129000550.3833570-1-mailhol.vincent@wanadoo.fr>
 <20221129000550.3833570-3-mailhol.vincent@wanadoo.fr>
 <CO1PR11MB5089EEF30335EC3CEDA8FCB7D6129@CO1PR11MB5089.namprd11.prod.outlook.com>
 <CAMZ6RqKy0Jnybz933tzjAPCX88KhKMC67RaN01yoFJxekvgLHg@mail.gmail.com>
In-Reply-To: <CAMZ6RqKy0Jnybz933tzjAPCX88KhKMC67RaN01yoFJxekvgLHg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|PH0PR11MB5080:EE_
x-ms-office365-filtering-correlation-id: de926286-640e-42db-da02-08dad1a7cdd0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: C5nlSUFr32UrQrUNjHRBYswr6ucOaxJIPbvjo0kfIAoUasPF/yHzn3dbeTxANStNi5QOktwKE1yALezb4D11yKU7JjLlpPO5vLgXAeUr1VlzbywHh9U6RyLiVPeGztpb3yYPtqHfAI+e7UKsBkt0oY4I5yl7uTuULqN6TdznNhSNdtISdkri8Z51qWpervaab0g4RNve/0oNPODDEm5XSYqWVX16YjNxgplk8J+730Nt6QdQGSsGBSvZFOAVA/HtcK+2eNQTMYqWOtUi/+c5TLxVUJRScaPgcwZm0CDhUsTotokjmIS2jWHxVZ5WaIM7ZgrEX3dVP8440+tcpvrGaJx19Lc3EaR5LhZ8TpsnOqVjUag2DaLY6Cdj1LDaIlmRaLt5q5layi0HUyjJUhIG8BdQ7JrP5xGiQ17+4f1f5JAQYrwtz36xnxuWCjBdfiH/MZLVabWZ3u/iJdbnln1rxLn0rQRFMcg7i0rWGAsxeN6AIRCsKgjrwX59MpF0x7vvEEHHbOwcd1oBVThjIACjoNqEpnEYrKGqwPYUgWmQbqobvGokkSShsHIFl4pMLk1JzsPVI1evSE3JQ5LMrXWKTdhcBL6rLhRFwrVI3LKALYxsfdplMCFiBoZuVr4viIzsBxSJmHxnI5JbNK/hkW5oVDMzx2IU9RVM0cYjh5w9O/7Whw7yVVG1+oM7YvKRQK8f
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(39860400002)(346002)(376002)(396003)(451199015)(8936002)(52536014)(7416002)(7406005)(41300700001)(64756008)(66446008)(66556008)(66476007)(8676002)(66946007)(54906003)(33656002)(82960400001)(38100700002)(4326008)(76116006)(71200400001)(316002)(6916009)(2906002)(478600001)(38070700005)(83380400001)(86362001)(7696005)(53546011)(5660300002)(6506007)(186003)(55016003)(9686003)(26005)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TjV2V2FUWnQyM0ZZVlJtTHhYNjlCT3A4YkIrTnhLaGFsZjFEbEdyVGtQT2cy?=
 =?utf-8?B?REpDbW1JTjUrMEQ3UmJhTzlsZllqNUU3VHFLeHpHb1VhZmRNMXN4NkNHS2Nw?=
 =?utf-8?B?Qzg0Q2t6TUNXamhWNkRmaHBFTCtLZzcyVVRDSlRJV1V0Tk5QdExuV3BjcVhJ?=
 =?utf-8?B?VTU3QUpwcDNLSTJwN28wQ1FzbUE2NExCRDZ6Nm8rTFNrRjErRTJEOHhDTWRH?=
 =?utf-8?B?NytDcUpzMUwxVGhTWWFJbHFjQXZxcks2UkE1aHM0WG9od1E3NElQV0xDSnBq?=
 =?utf-8?B?elJreGxWUnBGdlNUTStwMUpEdEp2WTQ3N09kWnV3a3hQbTA4TWJsTzE2a011?=
 =?utf-8?B?MlhGc1JYWHJBd21Hem5JWEg5MVFHc2w2QlpWelg4VVZjWGpxYnFzUGhpdXRC?=
 =?utf-8?B?Z1JJQVE0eTh4WDBISmhySllwQ1NheGNDNW8wVkpTK3AwOXhHWTVNMmJTNUxZ?=
 =?utf-8?B?TnFuT25oNFUxZDI5RU9va3hEUUF4N2UzUU13d1p4cnRZQkJadmdVUUhPdWN3?=
 =?utf-8?B?SURjNXV4RGJGOHBZN2VtK1JuV0pGeHgzem9RZkE1YWZ1R2VOYmRaRC9Lc1A2?=
 =?utf-8?B?a0laMnAvcTU0aHFlTjlHblhJOC9PZFJtUnE4bjVqS0s0T2gySVg3VjhBeEV4?=
 =?utf-8?B?V3lKY3czSFA5NFhCTFdQN1RqT0xwRjN2bE5aTjFsUld1TkRzNWdIbWZ3VVhv?=
 =?utf-8?B?djdZNVlGbXRUUHRiVlBPV3dKaVV2c0VNKzJQZE5IOFh4bGNZdFlYeEFYR0tp?=
 =?utf-8?B?N2hpRE05cTBKYUNzN0xEY2xZUEhrWGxWZWtmNnYwTXc1NFlUZHV4OHJlcDlq?=
 =?utf-8?B?NmNndTNHOHE0Z2pDcVFVS0V0RFZYUS9saU9GcVhUblByQ2lDRmVoREJPQWZB?=
 =?utf-8?B?NnlvT1hZRjBiQ0pZUGxaSEdBWXdGVm1YVmEyUldrNzFmZEs4bW16VkZTaC80?=
 =?utf-8?B?bjdXK2ZCdjY2ek5YVGU5WkVKQmxQdHBaT0JLLzdWTjBXcEZjVWhZdEdBTXN4?=
 =?utf-8?B?NXFxWUJvMjF3Vk4vK2o3NngxZEs0eDNRSTZrQnh2cGNXVlVrWitPZVBMTWFH?=
 =?utf-8?B?WXVGU0xGR2pqanhMTHJCRXJ1MzQzZklkRGNOZ0ZRWEJMTlRYZ3hTSEdCeG1Q?=
 =?utf-8?B?MW5xT3pmWlZ3a2Y2emlldFJPRVZ5SHM2MUM2cVFJMXVMUFg5cTZPdGI4VXc3?=
 =?utf-8?B?amFNanBnNkVTSVMwRlRZdFdYTUdmR2Nid2FFOWpkdDhHVUVLeHNVWElySTRI?=
 =?utf-8?B?SFlta3QzZVBZZ0NSUUhhUzZBTk9pd2Exay92bEE5d3ppQjR5eklTOFVwTS8v?=
 =?utf-8?B?Q01XQ0d6dUVsQmdlcDhKVlBLT3hkdG5tSWpuU1haQVdobHhPR0xScHVnSXQv?=
 =?utf-8?B?b0NtaXB0ZU1YRWZLMC9NazV0S2UxWFB2T1ZmaW5HZ0VJV2RPeXkyOFFtQzVz?=
 =?utf-8?B?RzRobUFPV1B5N3RzWE5lVXJPeDVRMm0vVWVwNmo3K29mYitIWkR1ckQ5R3dV?=
 =?utf-8?B?elkwaVBDUWt2OFdwYmtMYkpEdGRmUTJKemdlT2JPaVRkQnQ5YVRGUFVVL1Zo?=
 =?utf-8?B?TVdocDJuNVFlMzBNZC9GTkQySXhYUS9ERVR4ejZVMjdIcm1ZcVhObkh3OEVQ?=
 =?utf-8?B?L3BlOWphejlVcWVZVXBIdTdKaEVibks5aXN1MjcrNkx4RFBvMXNJeTV6d2RH?=
 =?utf-8?B?WGJTakdOSGt2b3MrMzdJWDJqSXVHTlNEN3U1T3dSeFlTTGR0M0JtbEVNVVBv?=
 =?utf-8?B?SHd2a2o3UGp2YUx2MlQ3REhQd0hVZHJuZVJSaVVKZ0J3dU44QWppcmJEMGx6?=
 =?utf-8?B?dkFzZ0JHbnJ3SXEyakZtdGxXNGtzVDZneVRqQ29TaWVWdG13anQzaEpjNThk?=
 =?utf-8?B?QVc5RDIxd0RYdnJGd3drSy82ZjIrMFhWa1IyWkg1eWJqWWxMSVU0amR1L1Av?=
 =?utf-8?B?NjJzVlczVHlyckZEVUNZTlU1bk1YSGx6amU0WURLWDR4bTRBN3hVeG9aaUMy?=
 =?utf-8?B?aEpwRmp0WjMvSHFLR1JUZ0NCNWQ5b1FMR2ZFU1FCMGg2Zk9rL2V0RExoRy9r?=
 =?utf-8?B?WnJubUhyYmNVNHZqSjg2YlJsT0licWw1YW9YaHlpa2JrTGdySW45U2txQ0Na?=
 =?utf-8?Q?2h5VHjTxxmGB0U9xlnRsLX/fc?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de926286-640e-42db-da02-08dad1a7cdd0
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2022 01:19:46.8950 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8hxUGblxTBqhePg/LHZhI2aNoDS+GU4Gic/1Gf5MGQaqoyVHJ+HJopS8YwxhAIZYNG7XhTOoyb6zGVBQofmtL4FsMFEtBzZoP+A2R0govCo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5080
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669684799; x=1701220799;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2VWQL/ZbZJIinFw3T8FjVq/YL3CKNqc/3tMyr9gMUQY=;
 b=TfYyICxfjjHzFpWphinKHzkNifSGbG60EPH2fd/9VTZxl79ol8BOlGfx
 3L4+mM5V82erJZImXaqppC/xrWUZ9nrwF5yORHEgqs+1ziOV9BOYY7ode
 UoufHWl6BzgQE92DfcpJjT88tWW+ho7+Rot9gU5xnfXyZe3D5NRDyb16T
 fuENys9z3XC/EGUnqC5MO2Ikjx+GRO+4pDeacvQDHzh5SLKffkHsh5Kra
 r4VB83hf8dajhL6ZczsvfQamp36RS7e1ydU1gD9oMCu/x0spBbnCY7CGl
 Ktb8rwZW1/1SKAtxKhQddvbmDKm3GHWxlPBJwFR6rX9Nle6H0Oi6W7LlE
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TfYyICxf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 2/4] net: devlink: remove
 devlink_info_driver_name_put()
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
Cc: Andrew Lunn <andrew@lunn.ch>, Shijith
 Thotton <sthotton@marvell.com>, Simon Horman <simon.horman@corigine.com>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 Subbaraya
 Sundeep <sbhatta@marvell.com>, Ioana Ciornei <ioana.ciornei@nxp.com>,
 "drivers@pensando.io" <drivers@pensando.io>, Linu
 Cherian <lcherian@marvell.com>, Florian
 Fainelli <f.fainelli@gmail.com>, Herbert Xu <herbert@gondor.apana.org.au>,
 Leon Romanovsky <leon@kernel.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 Srujana Challa <schalla@marvell.com>, Minghao Chi <chi.minghao@zte.com.cn>,
 Guangbin Huang <huangguangbin2@huawei.com>,
 Shannon Nelson <snelson@pensando.io>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Vadim Fedorenko <vadfed@fb.com>, Paolo
 Abeni <pabeni@redhat.com>, Yisen
 Zhuang <yisen.zhuang@huawei.com>, Sunil Goutham <sgoutham@marvell.com>,
 Ariel Elior <aelior@marvell.com>, Ido
 Schimmel <idosch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>,
 Arnaud Ebalard <arno@natisbad.org>, Jiri Pirko <jiri@mellanox.com>,
 Jiri Pirko <jiri@nvidia.com>, Michael Chan <michael.chan@broadcom.com>,
 Petr Machata <petrm@nvidia.com>, Salil Mehta <salil.mehta@huawei.com>,
 Dimitris Michailidis <dmichail@fungible.com>,
 Manish Chopra <manishc@marvell.com>, Boris Brezillon <bbrezillon@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "oss-drivers@corigine.com" <oss-drivers@corigine.com>,
 Vadim Pasternak <vadimp@mellanox.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Geetha sowjanya <gakula@marvell.com>, Taras Chornyi <tchornyi@marvell.com>,
 hariprasad <hkelam@marvell.com>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Jerin
 Jacob <jerinj@marvell.com>, Vladimir Oltean <olteanv@gmail.com>, Saeed
 Mahameed <saeedm@nvidia.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Vincent MAILHOL <mailhol.vincent@wanadoo.fr>
> Sent: Monday, November 28, 2022 5:11 PM
> To: Keller, Jacob E <jacob.e.keller@intel.com>
> Cc: Jiri Pirko <jiri@nvidia.com>; netdev@vger.kernel.org; Jakub Kicinski
> <kuba@kernel.org>; David S . Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Paolo Abeni <pabeni@redhat.com>; linux-
> kernel@vger.kernel.org; Boris Brezillon <bbrezillon@kernel.org>; Arnaud Ebalard
> <arno@natisbad.org>; Srujana Challa <schalla@marvell.com>; Kurt Kanzenbach
> <kurt@linutronix.de>; Andrew Lunn <andrew@lunn.ch>; Florian Fainelli
> <f.fainelli@gmail.com>; Vladimir Oltean <olteanv@gmail.com>; Michael Chan
> <michael.chan@broadcom.com>; Ioana Ciornei <ioana.ciornei@nxp.com>;
> Dimitris Michailidis <dmichail@fungible.com>; Yisen Zhuang
> <yisen.zhuang@huawei.com>; Salil Mehta <salil.mehta@huawei.com>;
> Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Sunil Goutham <sgoutham@marvell.com>; Linu
> Cherian <lcherian@marvell.com>; Geetha sowjanya <gakula@marvell.com>;
> Jerin Jacob <jerinj@marvell.com>; hariprasad <hkelam@marvell.com>;
> Subbaraya Sundeep <sbhatta@marvell.com>; Taras Chornyi
> <tchornyi@marvell.com>; Saeed Mahameed <saeedm@nvidia.com>; Leon
> Romanovsky <leon@kernel.org>; Ido Schimmel <idosch@nvidia.com>; Petr
> Machata <petrm@nvidia.com>; Simon Horman <simon.horman@corigine.com>;
> Shannon Nelson <snelson@pensando.io>; drivers@pensando.io; Ariel Elior
> <aelior@marvell.com>; Manish Chopra <manishc@marvell.com>; Jonathan
> Lemon <jonathan.lemon@gmail.com>; Vadim Fedorenko <vadfed@fb.com>;
> Richard Cochran <richardcochran@gmail.com>; Vadim Pasternak
> <vadimp@mellanox.com>; linux-crypto@vger.kernel.org; intel-wired-
> lan@lists.osuosl.org; linux-rdma@vger.kernel.org; oss-drivers@corigine.com; Jiri
> Pirko <jiri@mellanox.com>; Herbert Xu <herbert@gondor.apana.org.au>;
> Guangbin Huang <huangguangbin2@huawei.com>; Minghao Chi
> <chi.minghao@zte.com.cn>; Shijith Thotton <sthotton@marvell.com>
> Subject: Re: [PATCH net-next v5 2/4] net: devlink: remove
> devlink_info_driver_name_put()
> 
> Hi Jacob,
> 
> Thanks for the review!
> 
> On Tue. 29 Nov. 2022 at 09:23, Keller, Jacob E <jacob.e.keller@intel.com> wrote:
> > > -----Original Message-----
> > > From: Vincent Mailhol <vincent.mailhol@gmail.com> On Behalf Of Vincent
> > > Mailhol
> > > Sent: Monday, November 28, 2022 4:06 PM
> > > To: Jiri Pirko <jiri@nvidia.com>; netdev@vger.kernel.org; Jakub Kicinski
> > > <kuba@kernel.org>
> > > Cc: David S . Miller <davem@davemloft.net>; Eric Dumazet
> > > <edumazet@google.com>; Paolo Abeni <pabeni@redhat.com>; linux-
> > > kernel@vger.kernel.org; Boris Brezillon <bbrezillon@kernel.org>; Arnaud
> Ebalard
> > > <arno@natisbad.org>; Srujana Challa <schalla@marvell.com>; Kurt
> Kanzenbach
> > > <kurt@linutronix.de>; Andrew Lunn <andrew@lunn.ch>; Florian Fainelli
> > > <f.fainelli@gmail.com>; Vladimir Oltean <olteanv@gmail.com>; Michael Chan
> > > <michael.chan@broadcom.com>; Ioana Ciornei <ioana.ciornei@nxp.com>;
> > > Dimitris Michailidis <dmichail@fungible.com>; Yisen Zhuang
> > > <yisen.zhuang@huawei.com>; Salil Mehta <salil.mehta@huawei.com>;
> > > Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> > > <anthony.l.nguyen@intel.com>; Sunil Goutham <sgoutham@marvell.com>;
> Linu
> > > Cherian <lcherian@marvell.com>; Geetha sowjanya <gakula@marvell.com>;
> > > Jerin Jacob <jerinj@marvell.com>; hariprasad <hkelam@marvell.com>;
> > > Subbaraya Sundeep <sbhatta@marvell.com>; Taras Chornyi
> > > <tchornyi@marvell.com>; Saeed Mahameed <saeedm@nvidia.com>; Leon
> > > Romanovsky <leon@kernel.org>; Ido Schimmel <idosch@nvidia.com>; Petr
> > > Machata <petrm@nvidia.com>; Simon Horman
> <simon.horman@corigine.com>;
> > > Shannon Nelson <snelson@pensando.io>; drivers@pensando.io; Ariel Elior
> > > <aelior@marvell.com>; Manish Chopra <manishc@marvell.com>; Jonathan
> > > Lemon <jonathan.lemon@gmail.com>; Vadim Fedorenko <vadfed@fb.com>;
> > > Richard Cochran <richardcochran@gmail.com>; Vadim Pasternak
> > > <vadimp@mellanox.com>; Shalom Toledo <shalomt@mellanox.com>; linux-
> > > crypto@vger.kernel.org; intel-wired-lan@lists.osuosl.org; linux-
> > > rdma@vger.kernel.org; oss-drivers@corigine.com; Jiri Pirko
> > > <jiri@mellanox.com>; Herbert Xu <herbert@gondor.apana.org.au>; Hao
> Chen
> > > <chenhao288@hisilicon.com>; Guangbin Huang
> > > <huangguangbin2@huawei.com>; Minghao Chi <chi.minghao@zte.com.cn>;
> > > Shijith Thotton <sthotton@marvell.com>; Vincent Mailhol
> > > <mailhol.vincent@wanadoo.fr>
> > > Subject: [PATCH net-next v5 2/4] net: devlink: remove
> > > devlink_info_driver_name_put()
> > >
> > > Now that the core sets the driver name attribute, drivers are not
> > > supposed to call devlink_info_driver_name_put() anymore. Remove it.
> > >
> >
> > You could combine this patch with the previous one so that in the event of a
> cherry-pick its not possible to have this function while the core inserts the driver
> name automatically.
> >
> > I think that also makes it very clear that there are no remaining in-tree drivers
> still calling the function.
> >
> > I don't have a strong preference if we prefer it being separated.
> 
> The first patch is already pretty long. I do not expect this to be
> cherry-picked because it does not fix any existing bug (and if people
> really want to cherry pick, then they just have to cherry pick both).
> On the contrary, splitting makes it easier to review, I think.
> 
> Unless the maintainers as me to squash, I want to keep it as-is.
> 

That works for me!

Thanks,
Jake

> 
> Yours sincerely,
> Vincent Mailhol
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
