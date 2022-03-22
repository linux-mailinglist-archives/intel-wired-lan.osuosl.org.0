Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ABF84E4628
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Mar 2022 19:40:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0768440192;
	Tue, 22 Mar 2022 18:40:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X0LojhxuCpJ6; Tue, 22 Mar 2022 18:40:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8C380405C6;
	Tue, 22 Mar 2022 18:40:07 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 66BF11BF9B2
 for <intel-wired-lan@osuosl.org>; Tue, 22 Mar 2022 18:39:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 54629848A7
 for <intel-wired-lan@osuosl.org>; Tue, 22 Mar 2022 18:39:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pcGsIkD8v4g7 for <intel-wired-lan@osuosl.org>;
 Tue, 22 Mar 2022 18:39:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5EFEE847EF
 for <intel-wired-lan@osuosl.org>; Tue, 22 Mar 2022 18:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647974398; x=1679510398;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=zUWhJjq3nyL7MRF4aGqc4bpcSzoqLoVtofjAmYPzxq8=;
 b=XcpIBGaEUajtTPfVCvznm69gbyr7irePMH5OnJRcefak+2YsUWlmr0vw
 CcJ+1qP1+XXnTbDluDb6p9gHBZuaADq8k1HYCXLsgNHUhe3mrzSTL0/0+
 NkbtLKg3Fr72BV3XvCdyyH1QlVSgvfU8qV7ETFoHZeo1uSU23AIPT1i+w
 rsJvxa3lkjdv79fWai6CHzxAjosBpy8OQJk9JwrDc3w5UE7297tgrW1ae
 FfTJcMFxzFOI6Xv+uNRSFY39eCCs5cAR77xaJwfbgXnwcqpwHbCN9pJwc
 ih4dvofVx/r1k7wNlh0QUV1sfUUlAcnDnPkTjcBN1DNE7oTvlMB3ns/6c w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10294"; a="321114480"
X-IronPort-AV: E=Sophos;i="5.90,202,1643702400"; d="scan'208";a="321114480"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 11:39:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,202,1643702400"; d="scan'208";a="717069858"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 22 Mar 2022 11:39:57 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 22 Mar 2022 11:39:57 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 22 Mar 2022 11:39:56 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Tue, 22 Mar 2022 11:39:56 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Tue, 22 Mar 2022 11:39:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cURYZKL/8Q47q8+wgmSWP8rNP2wU1t3g13OCi/kQqXEtkdF/roNQ6y14hmloMEVrT/z8g/WWXPhTHXBe//IFt47F7Dc5NK/sP61iIMJzYKtohFPHXyacfimUkomKJ3++WYx73/dN8EK7TIlDNtGR5PLeLSssisHocdPBAZqUESuR30I0ljUl0KzNXWyX2bXjxdEJh10R/kd0+F5FNzou9U9UXCu2ZSvzK1H1qKhaEnmlrKMNmWPbL6su7cJhBcRNLaNz7OrchckZaDdpS3gF1bdm2xZRf/rKgb5E15S+Q3nRd7BztNsbuSh4xovy+ZhsTDwFnr2eb9KjQ5EjvrLhfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zUWhJjq3nyL7MRF4aGqc4bpcSzoqLoVtofjAmYPzxq8=;
 b=OXhxDSS8WHowCEmWFNHkRZ0uHZNL5j84riyONjoSDnuTqc08MLufENMZssN+Yj7xb93B4F02sMICzP5TIeJRrAtv1yzjaIlCN+jW7din974DE62Ln17EUn3j+ouUjt5LGbXONc4Tm6DnEafQAQNfQ1qVNYD7Sv2Sw5aS8o2amZjf8ZJvAbBaD1i/p1E2i+hYxB3Zss4VxNjgQDAcLm9Enc8LDqG/mibql8mmNcNaqBl5BHsgjKfpvqkM+EVohQLtCRK7JNa+PGP4A9XV2ZNLVN+9vdvDeJVqniVu8/KN9UEP8Q8ZOiBtS2DD50M1nu6Xw/3x1pvsvDh7sqJlLcvN1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SN6PR11MB3311.namprd11.prod.outlook.com (2603:10b6:805:c1::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.16; Tue, 22 Mar
 2022 18:39:55 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::8441:e1ac:f3ae:12b8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::8441:e1ac:f3ae:12b8%8]) with mapi id 15.20.5081.023; Tue, 22 Mar 2022
 18:39:54 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] Revert "ice: Hide bus-info in
 ethtool for PRs in switchdev mode"
Thread-Index: AQHYPTK6u1E98F+Kjk2t/brsnjqftKzJ7ZWAgAAVfoCAAbr5AA==
Date: Tue, 22 Mar 2022 18:39:54 +0000
Message-ID: <f6ccd848-1dd8-764f-2b73-981a49e6a024@intel.com>
References: <20220321144731.3935-1-marcin.szycik@linux.intel.com>
 <a7dcc837-e24e-86d6-059c-416ad3357fe0@molgen.mpg.de>
 <3cbd7420-3803-e830-9347-652e53a3dd02@linux.intel.com>
In-Reply-To: <3cbd7420-3803-e830-9347-652e53a3dd02@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bada5c5b-e80c-43dc-b3ef-08da0c335bc9
x-ms-traffictypediagnostic: SN6PR11MB3311:EE_
x-microsoft-antispam-prvs: <SN6PR11MB3311B8B303AF02A813084534D6179@SN6PR11MB3311.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: thuzCJGnVMasm6Vile9bOffcYczxwKmdns6F/fHlKWNVyJLXr78gKr5PmJyy8mWdMx4ogV5eRVDdvJXMUjkzNZYDqnsQuykTJ47P7flhGawPcdsTlJQR454Vr1ivStdg3nHlQxBUofpHqU2lR2uapK3/luDole3isc/y/ewal5QBHRDH1pNALHpV31R24JsI2Ef/lFmfjTlzPyIt6kly6FISLNvN84zGz2T0Iy0BRpr5RFesrDsSrNlj8b2Cg6lkGeIa6fURThcwzn9Qt3kG0FTXlvLFzNs+i8dZAAJxVGgR4206ICCYWZD4xrhBkiDr284ZhoXW9gUtBLRTICId6orM3h2lMrLCjR7lrsP0OVx5IEdHRMuIwjNeR8RepCahVNWjKHNf9fBrf39X5k7QhUkzC4ZJwZff2mfIOKLs8WJSZFsZnNsYpE0OTx8LFXfneJmUASRgZLkW8fo7OVFERX1CQNGnyaTq03EvckuAnipDKfjGcv4tRuzNWweRInOQXdq8CpGwJAfqBtquO0Z/IbvundZfzp+UYTwc7IhoXTwFUV6zdAgAQ+EkKMaAS9fanKzho1w9RwmwllGhr6xE3LTZwh5y9u6fsLSoIdo1Clyls0r1ya+NLFDUDEyELhSc658/YkYr7MP2CnarBaq0cWTT4LD3tD6pn83viNm8UW26yG+xi3mheRhL8TCxqbjble6zuTRk1+y8qbYMNGxPpcBBKXeKfeslBZ8n5krJBIIgLR96XouJ4fMCZ8GVvGCvRfDkLfxFjbp9o/E9EHTKwwZ8lUYwchAjJ7Ms0GJVMzHeXvmB0MimMUcN0wc06MKmj2W+Z0wBys9omEIQxooywOAuC3Wd+0ZIexcBmC2tzgg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(122000001)(8936002)(6512007)(6506007)(71200400001)(82960400001)(31686004)(5660300002)(966005)(38100700002)(2906002)(6486002)(76116006)(66946007)(66446008)(66476007)(64756008)(8676002)(66556008)(508600001)(2616005)(53546011)(38070700005)(86362001)(31696002)(36756003)(6916009)(316002)(186003)(26005)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c2xMUFVXM2hvZmM2L1lJWlRvSG12RDA5Rlp1Nks4QUwzbmY3YUlOaTZJenZ4?=
 =?utf-8?B?MDBXTmtGTENmZ1ppUVVWZVdKZjlxUnJRdURwNWNXbnJBcTEySzZGUklNc3Zp?=
 =?utf-8?B?d2RZZy8xZDJ2QWhBRysxL202K2RFVkZNV0ErZHlKUGo4VFlNRVc1WjRqWkpC?=
 =?utf-8?B?REowZkg2RjhCOWFIZVZCYVJCYVBSMER4NFpZMDVHR1VGaW1MaUk0TnlhZmhR?=
 =?utf-8?B?Y01vN0JMMjFJWXZoQkJ6aGhFTWo2RjZ1SFFBWXBaT1FOTnBQTGdjaUFHbnZP?=
 =?utf-8?B?UTdIVEVjY2ZNM2gvSi8vd2ZYTGZPcGxsS2lxYm51aW1MOUhnWlJ3SG9GYWph?=
 =?utf-8?B?bUYrYUVITVEvM2YwOHpMTm0razYyWlBNS1lkejZ4OTFrTVdmTnhPdTRiSmVV?=
 =?utf-8?B?RVJhYWJEcXVwcEsvL01KVk0xckc5eHBMSmxqeWR4OWtoTlZSU3dRbHlJTnhw?=
 =?utf-8?B?a2V2ZnoyU1NOL0k0T3hOZi9WWDQxLzR2a3pDT0pIY1VrRlZsSjFwQlNxWWM3?=
 =?utf-8?B?a0Rld1Rra0cxaXJObXBQSVA2YzVBT3NiR1BIMTlmRmFmSlY1ZjJMMGxjVUV2?=
 =?utf-8?B?NURBbHh5VXVWSGZjaEloYW5oWHJvbVZXcDdjMHdvazh1THF4OHlsd25vUXpN?=
 =?utf-8?B?bE5YZEVHM210dk9sbUJzSTFGaTdEQUxmVlBjYU5JeU5SWnM3WlRoWnlmUis2?=
 =?utf-8?B?RGU1YTlVMVRRbEVVS0t4SUdNL3Y1OXpWME9iMktmdGo3Q0t1RjJmK1RmRjls?=
 =?utf-8?B?VmVHZFEvR3UvUzI4RFpDQ1VDanY1c2FNS1RGZWlxR1I1dW1URzRiRmVZTmVS?=
 =?utf-8?B?VFVPdDJLOGlzSFVoYWFrVkV2UjFka2tpZHJnTHBzcmtqZXFDZ3RuU2JheGR3?=
 =?utf-8?B?Sms2ZUxUUkRHajNJanIwRFR5bGU2RVhtKzBPQzl6L2RCcGc1d09vT1hROTJC?=
 =?utf-8?B?K0p2anlWZ2Yva1FkSjIrWmNoZDE4bmJnQWM3bEVwM2huSEFCK2JzMUN1V245?=
 =?utf-8?B?djR3RTdtR3NITzZGYi83bTVldkh3d0tWb2orbE1tQ0JrRkJJUFlGY3Uxckl6?=
 =?utf-8?B?czhSOFc5QjRjblJtSDBIa0FCYVp0SGFESzkyMzhRR2s0LzlsbkFiNzU4RHpI?=
 =?utf-8?B?SWRrMVFuZy9GamxaeVZzWTFaTlZFTmpsd1dDRjFjaVJibEVUaUlLcTVWOHR2?=
 =?utf-8?B?dWc4eEJpejBRNmN3Rmpyb1FWV01CKzhRZExmMG9UYW54UWl5bEtWQlR1bDIz?=
 =?utf-8?B?dEd6RVFTRGsxNEVjcmFFSmJnQ2dHN2c2Zm5PNG5vVzUybEI5Z3ErV2dud1JJ?=
 =?utf-8?B?NUM3aVhhWjhmTS9KMXRQcks2SzVRU2UyMU9Zbm44TnZRczdnY1pQNUtETWo3?=
 =?utf-8?B?eGthaXc2SEVQenh3dG5VeG00MUxiUTg2STRjTWh6VmdUTkZiWm1oR3NvWEU3?=
 =?utf-8?B?K3Q1M3RGemRLRTFYNzdaa09QNzZaaUFjMDE1Y2JMVDRIT1pUWHNUd0E0UkZ1?=
 =?utf-8?B?dXhqY1dQc2U0dVRVTnp4RUxqakN3UWlvZ2JXNGlKVXB3TFBFSkRjV3k2Zjkw?=
 =?utf-8?B?Y3dvdnNXckVCK2VCWVlpT2c2Yjh2STBhRzJqbUlYRVRsU2UzSWJYTXJxWXll?=
 =?utf-8?B?THhqRmRYMUxkUHhTNm95QlM5aXNaZm1aRXJJKzZ1RkErZVM3QnVCU1pUTy9X?=
 =?utf-8?B?alNQbUpEOWRSL283TWZFbFFjTVk3bHIrSVgzUHRIRGhwM3VCa2RvMi9RbW12?=
 =?utf-8?B?dVNsSUZVeG55TTQ3NkxuZEtBU0pBdHQyT21HSEJiNU9qYU9FWmZCSCtpOXZs?=
 =?utf-8?B?TUpTS0JUdklsNFVEd2ZabmpIdllHWi8yNEd5NjU3OTlJK1V3V2gvWkxEVWY4?=
 =?utf-8?B?UVQrdGdhUWxhZkhIdm1ZMytHZHRyVjBobU5oRnMrdDNhaFRweUljQjNEbGww?=
 =?utf-8?Q?RFfm2y7p01J9AqEacT0LiTfaaTQfT1Wi?=
Content-ID: <45EA6AFF7B43DC41B5702B864E837F1D@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bada5c5b-e80c-43dc-b3ef-08da0c335bc9
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Mar 2022 18:39:54.7595 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tKywd8u6KH5ZOUPOv7Y7Zbt1VM0YvD9X2Dnsk8r86SRHbc6j3mQ55gUNqawRpXK1n7ZkobeGA2aStdEtf5HtzN6TRdiCuVity4dFtoBTyF4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3311
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] Revert "ice: Hide bus-info
 in ethtool for PRs in switchdev mode"
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMy8yMS8yMDIyIDk6MTQgQU0sIE1hcmNpbiBTenljaWsgd3JvdGU6DQo+IA0KPiANCj4gT24g
MjEtTWFyLTIyIDE1OjU3LCBQYXVsIE1lbnplbCB3cm90ZToNCj4+IERlYXIgTWFyY2luLA0KPj4N
Cj4+DQo+PiBBbSAyMS4wMy4yMiB1bSAxNTo0NyBzY2hyaWViIE1hcmNpbiBTenljaWs6DQo+Pj4g
VGhpcyByZXZlcnRzIGNvbW1pdCBiZmFhYmE5OWU2ODBiZjgyYmYyY2JmNjk4NjZjM2YzNzQzNGZm
NzY2Lg0KPj4+DQo+Pj4gQ29tbWl0IGJmYWFiYTk5ZTY4MCAoImljZTogSGlkZSBidXMtaW5mbyBp
biBldGh0b29sIGZvciBQUnMgaW4gc3dpdGNoZGV2DQo+Pj4gbW9kZSIpIHdhcyBhIHdvcmthcm91
bmQgZm9yIGxzaHcgdG9vbCBkaXNwbGF5aW5nIGluY29ycmVjdA0KPj4+IGRlc2NyaXB0aW9ucyBm
b3IgcG9ydCByZXByZXNlbnRvcnMgYW5kIFBGIGluIHN3aXRjaGRldiBtb2RlLiBOb3cgdGhlIGlz
c3VlDQo+Pj4gaGFzIGJlZW4gZml4ZWQgaW4gdGhlIGxzaHcgdG9vbCBpdHNlbGYgWzFdLg0KPj4+
DQo+Pj4gWzFdIGh0dHBzOi8vZXppeC5vcmcvc3JjL3BrZy9sc2h3L2NvbW1pdC85YmY0ZTRjOWMx
DQo+Pg0KPj4gQXMgeW91IGNhbm5vdCBrbm93IHdoYXQgbHNodyB2ZXJzaW9uIHVzZXJzIGhhdmUg
aW5zdGFsbGVkLCBJIGFtIGFmcmFpZCB0aGUgd29ya2Fyb3VuZCAocGFydCBvZiBMaW51eCA1LjE2
LiBhbmQgNS4xNykgaGFzIHRvIHN0YXkgaW4gdGhlIExpbnV4IGtlcm5lbCB0byBub3QgdmlvbGF0
ZSBMaW51eOKAmSBuby1yZWdyZXNzaW9uIHBvbGljeS4NCj4+DQo+PiBXaGF0IGFyZSB0aGUgZG93
bnNpZGVzIG9mIGtlZXBpbmcgdGhlIHdvcmthcm91bmQgYXJvdW5kPw0KPiANCj4gVGhlIG9ubHkg
ZG93bnNpZGUgb2YgbGVhdmluZyB0aGlzIHdvcmthcm91bmQgaXMgdGhhdCBQQ0kgbnVtYmVyIHdv
bid0IGJlIHNob3duIGluIGV0aHRvb2wgZm9yIHBvcnQgcmVwcmVzZW50b3IgbmV0ZGV2cy4gSSdt
IG5vdCBhd2FyZSBvZiBhbnkgYXBwbGljYXRpb25zIChvdGhlciB0aGFuIGxzaHcpIHRoYXQgZGVw
ZW5kIG9uIHRoaXMgaW5mb3JtYXRpb24sIGJ1dCB0aGVyZSBtaWdodCBiZSBzb21lLg0KPiANCg0K
VGhhdCdzIG5vdCBxdWl0ZSBjb3JyZWN0LiBJZiB5b3UgZG9uJ3QgaW5jbHVkZSB0aGlzIGluZm9y
bWF0aW9uLCB0aGVuIGF0DQpsZWFzdCBzeXN0ZW1kIGJhc2VkIGRpc3RyaWJ1dGlvbnMgd29uJ3Qg
Z2VuZXJhdGUgdGhlIGV4cGVjdGVkIGFsdG5hbWUuDQoNCklmIHdlIGtlZXAgdGhlIHdvcmthcm91
bmQsIHRoZXNlIG5ldGRldnMgcmVtYWluIHdpdGggdGhlaXIgZGVmYXVsdA0KZ2VuZXJpYyBldGhY
IGRldmljZSBuYW1lcy4gKGV0aDAsIGV0aDEsIGV0YykuDQoNCklmIHdlIHJlbW92ZSB0aGUgd29y
a2Fyb3VuZCwgdGhlIG5ldGRldnMgZ2V0IGFsdG5hbWVkIHVzaW5nIGEgc2NoZW1lDQp3aGljaCBt
YXRjaGVzIHRoZSBleGlzdGluZyBQRiBuZXRkZXYgc2NoZW1lcyBsaWtlIGVubzAsIGVucDI0czBm
MCBldGMuDQoNCkZvciBleGFtcGxlLCB0aGUgbmV0ZGV2IHdpbGwgZ2V0IGFuIGFsdG5hbWUgc3Vj
aCBhcyBlbnAyNHMwZjBucGYwdmYwDQoNClRoaXMgaW5kaWNhdGVzIHRoYXQgdGhlIG5ldGRldiBp
cyBhIHJlcHJlc2VudG9yIGZvciBWRiAwIG9uIHRoZQ0KZW5wMjRzMGYwIG1haW4gbmV0ZGV2Lg0K
DQpUaGFua3MsDQpKYWtlDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vv
c2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdp
cmVkLWxhbgo=
