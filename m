Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 35691436D1F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Oct 2021 23:55:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A0270408A3;
	Thu, 21 Oct 2021 21:55:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UM65rCWLKoW0; Thu, 21 Oct 2021 21:55:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4E91440314;
	Thu, 21 Oct 2021 21:55:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ABDB11BF9C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 21:55:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9538A40298
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 21:55:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JZpN-in2wmDE for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Oct 2021 21:55:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 39627402B7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 21:55:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10144"; a="209260021"
X-IronPort-AV: E=Sophos;i="5.87,170,1631602800"; d="scan'208";a="209260021"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 14:55:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,170,1631602800"; d="scan'208";a="576147639"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 21 Oct 2021 14:55:10 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 21 Oct 2021 14:55:09 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 21 Oct 2021 14:55:09 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 21 Oct 2021 14:55:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ogX57nJxw5azFa3jHSGKtwt7R7HUnsZJwYMuWlATWopk2EeJ+EpMdBCFJ/pciwR25LQsVgwzUTKRreLQyCj0ugkEQzIZO3ayC9ZqvPRdzdfn+wK/DILYA0oHiLGd5+KgTlBy7Y1lnoKuS95tQ7PijkaVVS+354RIeKl+YngWlaP8sJlaIxo0kxI595OsJA7Dfkq2Iop2in+KvXDLOj3DO5R+XkA+y7H0+U8yONHRPKkJH8rdi+iDV8eJHDMB5GWvzkhvxaSyRlybuY07itKl0fhw9LVmX+ue681+0+zi7An+09wsIrrTpwPtQuRchzpm0qo8t6DbwFKPMiHs+0SaTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rHeK7ba2LPqofFJS+0YRqYX4UV9vx+tt4/nk0yiyFDw=;
 b=ERJXo6qgxD6C5KkGvc0/d1l/efZBLSbvUOZabRbs7AyQ1qsYGaj/ZgmRTjhzDZMJGKfMBRb8vq3qdJqKnxJiub1/eSS3ewcPFTDIk/8QsMlvJZkYEF84lFW7g+bfDQYHCu/C+u4sVLcADW+JsolOPrOo3JHGKELry8eYaVEb5lzvq/e/Q2Bh47zd7McUupLggedZ7EOb0IbId2Avk9l4yM7EnJmRtaGKmOY70WTeljvS1aUWSt+JHr7yQs42MaPyzE6dd0LB9y2jvfzAbxzPiabcZ6G1oxML+64lfEm3MJkWFYSzNm1YFdk3Pi18OnEn+fGSiLpKZUGSeBAWAntkNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rHeK7ba2LPqofFJS+0YRqYX4UV9vx+tt4/nk0yiyFDw=;
 b=MZlMQAsvLOsk3VAe3/YLcDLiyJUTi6S/2koGOObdaSdDxVnRQ+nvCUbB034vKPYTJk2b4C1AWAeKIO7TVzLSr6hkb5V8LRrO9VeOsD7lyhpm9t0yPFeQR4tuOEWhOVs4Db8klUxEygGEA4XlE0aVN+JdAjQB0AQojbg0cWzRb/E=
Received: from PH0PR11MB5095.namprd11.prod.outlook.com (2603:10b6:510:3b::14)
 by PH0PR11MB5207.namprd11.prod.outlook.com (2603:10b6:510:32::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.15; Thu, 21 Oct
 2021 21:55:08 +0000
Received: from PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::95fb:53de:54f0:4c55]) by PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::95fb:53de:54f0:4c55%3]) with mapi id 15.20.4628.018; Thu, 21 Oct 2021
 21:55:07 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [net-next PATCH v4] ice: support immediate
 firmware activation via devlink reload
Thread-Index: AQHXxTP+JhclPrKLtUyBjpH0oBtkhqvc+FeAgAEFoJA=
Date: Thu, 21 Oct 2021 21:55:07 +0000
Message-ID: <PH0PR11MB5095792EF885D0C6C4EE853FD6BF9@PH0PR11MB5095.namprd11.prod.outlook.com>
References: <20211019215423.3383750-1-jacob.e.keller@intel.com>
 <2adb7d96-b114-d5dd-20ef-31f43bc263f0@molgen.mpg.de>
In-Reply-To: <2adb7d96-b114-d5dd-20ef-31f43bc263f0@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: molgen.mpg.de; dkim=none (message not signed)
 header.d=none;molgen.mpg.de; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 54eca637-b6ff-44b0-6878-08d994dd7285
x-ms-traffictypediagnostic: PH0PR11MB5207:
x-microsoft-antispam-prvs: <PH0PR11MB5207382F68E6CE6E4134675DD6BF9@PH0PR11MB5207.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RE94l2xEyHAl4vPj3eVUr3fDOJRoMBxn6BygazxVUBM/8ZvVj7RQsYP2Ov5wL0HTyRV141lfm0hciyeL7BFRuR1ILBKoc5JLcHkZxSucGz8Bfhsx0ctOJa5L7k1WBGcIqwsFdp6mLqWEzV35GphE032JzQxKGtTXeWRPNq1oDYVdqqSQJLHW24gEw5PtLEjokX1oXRWPj8U+1C183R23hQQfqaSi0qVVB4iki84IqtNvV2GYI+MA/WZoSs2DBKrVuZLKPb3ObGTqstMFpQkCD1ClT0jQWHtml8bznAFPCOtHUavvhVA7I4Fx+IuqnDjU+oevYJv72VZSudkDgRqQrab7BYtH7WT5ayM5gsrlGp+xDzSOuRiS3M0yj1I9sqP3qtsht4Rh45Btux13q0VAGkHGrrYXSoZwx2IAPYx1ewb2uVndWov1y7+YIRfkk1MbPLdXteKO1L+2utW7EzqtYZQkIptlA1OK7eheHU7AnVteANaqcvxNFc8y50jer42l3Vh4JEGXLOKYx6B4uGqIQv7jIBosi6ydQ7ccsKH1GzBUJqEcpnBNLx07ipQyPnrs4ZJEa1charlJnuAxqN4F9ZaTQ3PzqkwouikiqcpxNo12nM7N7PqEBzwTQYF3u3DCwzQ0vTt7Ni90Z+9W6mkKJCszy7YTHWt2sQj3nL2IWCwMnOPBYQCwya5CkNviQHUM10+H33e+MHNHgi105v+QU0YL5NWATUG/lUsGtjHuzh8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5095.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(2906002)(8936002)(508600001)(71200400001)(33656002)(9686003)(53546011)(122000001)(38100700002)(5660300002)(316002)(86362001)(38070700005)(6506007)(8676002)(66556008)(52536014)(7696005)(26005)(4326008)(6916009)(66946007)(83380400001)(186003)(66446008)(76116006)(64756008)(82960400001)(55016002)(66476007)(54906003)(14773001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TjYzRVIrYlI3T1Jlb2FlR3B6QWxQc1V6VlNqWmRPQ21PM2QyQjFQQTJQOVJh?=
 =?utf-8?B?bkdabXRYUHBncGlQSVhtY2xLeVdMdzQ2NnhKQTJjOWQyNW93RmdBVTM4azl2?=
 =?utf-8?B?L0lxNE03djJDdHpuRkttVDZFOGszRkFES3JXUG95ZitoRmRBa3c0UVFYSUxS?=
 =?utf-8?B?N1NwSWFvSkRwZ3RHTWJ3RTgrVWdhMk42NHI2ZlZvdG8zeHF1cEN3REtHWll5?=
 =?utf-8?B?V3Jwbk1tZjkvU0lUazJzdEZ6TmZGb3JCZXQ3YnNQQ2FITFBiVFpmd2EvUTRw?=
 =?utf-8?B?aDU0SkszcisrdVpFb1VPeGFXVGx0MXZ4S0wyZjMrWmJSQmViRW42dU5BbU00?=
 =?utf-8?B?b1FydGlkY1VCQnM4dWFwWnBKM0wrYmtqM21mV013NlhoamtjeWZIWmszdmor?=
 =?utf-8?B?ekpJcUs4SGJqcGEydE50anBiSVhIM3g0alhWcGs0K1htZVZuYVpFZjMvK0tV?=
 =?utf-8?B?ems1VTRIaFpPRW1XWE5tVU9XbTZMTWxWa0s2ZStqTjlwRnBTWStQakR6T25z?=
 =?utf-8?B?NTU3ejBaT1J6d1hBQ1RnOURHUGJlekltbmJrTnJZZlBNRFY5WU1lZTE4VXVU?=
 =?utf-8?B?dUlVNzZoZ1M1UU8vWk9nL0lzOG1xcjlGMlF4MDY5VVI0Y25IRDV6WE11ZVVE?=
 =?utf-8?B?b25hd09xdmVCU05zenlFcG1DN2dmRFlTdEdNVDB2QysxV2Q1R0V6c215NGg2?=
 =?utf-8?B?NkJIK2djeGFTNGh1cWQ0L1MxaTcySUhhbkVDdlJWTWRUaHBtSnRJNXBPVm9P?=
 =?utf-8?B?OUlkdmRCcjY4TjFhcks0ZS9vQStJbGRtWTNvMFhMaWZ0bmhjYlNobzBsaTZt?=
 =?utf-8?B?Y1ZnT2RhQTBzTGs4ZU5VSjEreHl6bVNvR0d0ZkNZVDhTU2FOMERud1QwQlRV?=
 =?utf-8?B?eUdIbUF5TkFIcUJLVWE3TkdtUkpZZ0phYTRwaURWMXdUeExRbi9CSlUvVVhx?=
 =?utf-8?B?Q2Rld05wVHlVanlTRnNiMlAyL2NtRSttZDkrdldVSW5FaUY5bnQzM1hIQnRr?=
 =?utf-8?B?dFRZTk5CY2V3M3JUNk1MNmlmcTd5V0VHekhBZGRVQkFEaGR2aVMyOEYrbmdl?=
 =?utf-8?B?NUh0SVlObCs3S2J4OFhoUnJ1N3JPd0l1NmdLTklheVVKd3ZjUmQxVUtTbnpC?=
 =?utf-8?B?RGxaOXZQM2d6cUk0UVQ1UGZQb0RrblRsdVBBdXZEblMvc2wyOWpGTnE1Ynlo?=
 =?utf-8?B?aGU4cXZhQkduZnowMVprNTFDSDhZSjVvNnYvOFFLV0U5bzJMN1ZDNXptMGUw?=
 =?utf-8?B?Wk1iMWFTaHhDVzVEYSs4RElHSkNxMXhQSmxpYUQzUm1HbUg1V1ZHVFAvOHdp?=
 =?utf-8?B?ZEdmbFdac0luMW9MRmg3Z1VLS1phYkJvOHNtRUx6cmdFTUs0OFUvRWVxZDR2?=
 =?utf-8?B?NXNSczA0SmhRaS9aMWRDUXVEQkdsVHBodTZxMWV0eXUvMElUWHRHNG1CVUdX?=
 =?utf-8?B?V2oxdUl3NlBuZlo0WHJxUkFNRnZiVUtsYzcvSTErVG1FYktEZ0hzWFc4Y09O?=
 =?utf-8?B?SmdsbXlIRlhQVlZIeTFGcFFjNU1sOUR5ZzlTSC9QcVcrSEtVUXU5OUdkODhw?=
 =?utf-8?B?NDNyNlpBQ2FiZHM5ZHFmTm9UbS9XY2FMQ1htTzJ6UTl4c1BSMFdodnFEV1hD?=
 =?utf-8?B?YWc2ZjlyUE8weUkvUU9lYjVjdFFIRWZrbitUVWxyQW1qWHhFa2s3ekNHNXVu?=
 =?utf-8?B?U2Qrb001Sk9zNzFsVmRZeCtXYXZrTHdjWjlQM1ljOFVXL0tST25VMGMvbWdL?=
 =?utf-8?B?bkZqK0RrajBneWEwdXYvdUU3TURYYmtkdVdjb3QrVW9GdTRpOGl1Zm8vbk5O?=
 =?utf-8?B?Z3BSaktrdXNJU0ZRcTgvUW1XcDdxcGtxVkZqZTU2TzREQ0h4N2tON0JHbTFV?=
 =?utf-8?B?SVNKRk9weVZIVkJOR3JMWTN5V2dzelgwc1BwcTlIVFU3Vkx3Y3hCNVA0OGJm?=
 =?utf-8?Q?pm4SZl6S6SY=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5095.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54eca637-b6ff-44b0-6878-08d994dd7285
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2021 21:55:07.8927 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jacob.e.keller@intel.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5207
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH v4] ice: support immediate
 firmware activation via devlink reload
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUGF1bCBNZW56ZWwgPHBt
ZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gU2VudDogV2VkbmVzZGF5LCBPY3RvYmVyIDIwLCAyMDIx
IDExOjA0IFBNDQo+IFRvOiBLZWxsZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNv
bT4NCj4gQ2M6IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47
IGludGVsLXdpcmVkLQ0KPiBsYW5AbGlzdHMub3N1b3NsLm9yZw0KPiBTdWJqZWN0OiBSZTogW0lu
dGVsLXdpcmVkLWxhbl0gW25ldC1uZXh0IFBBVENIIHY0XSBpY2U6IHN1cHBvcnQgaW1tZWRpYXRl
DQo+IGZpcm13YXJlIGFjdGl2YXRpb24gdmlhIGRldmxpbmsgcmVsb2FkDQo+IA0KPiBEZWFyIEph
Y29iLA0KPiANCj4gDQo+IFRoYW5rIHlvdSBmb3IgeW91ciBwYXRjaC4NCj4gDQo+IA0KPiBBbSAx
OS4xMC4yMSB1bSAyMzo1NCBzY2hyaWViIEphY29iIEtlbGxlcjoNCj4gPiBJbiBvcmRlciB0byBj
b21wbGV0ZSBhIGRldmljZSBmbGFzaCB1cGRhdGUgZm9yIHRoZSBpY2UgZGV2aWNlLCB0aGUNCj4g
PiBzeXN0ZW0gYWRtaW5pc3RyYXRvciBjdXJyZW50bHkgbXVzdCBwZXJmb3JtIGEgc3lzdGVtIHJl
Ym9vdC4gVGhpcyBpcyBub3QNCj4gPiBpZGVhbCwgYXMgcmVib290aW5nIHRoZSBlbnRpcmUgc3lz
dGVtIGNhbiBjYXVzZSB1bndhbnRlZCBkb3dudGltZS4NCj4gDQo+IE9UOiBrZXhlYyBpcyBhbHNv
IGEgbmljZSB3YXkgdG8gd29yayBhcm91bmQgYmxvYXRlZCBmaXJtd2FyZSB0YWtpbmcgdG9vDQo+
IG11Y2ggdGltZSB0byBsb2FkLiBObyBpZGVhLCBpZiB0aGUgY29sZCBQQ0llIHJlc2V0IGlzIGhh
cHBlbmluZyB0aGVuIHRvby4NCj4gDQoNCkFzIGZhciBhcyBJIHVuZGVyc3RhbmQgdGhlIFBDSWUg
ZG9jcywgdGhlcmUgaXMgbm8gZ2VuZXJpYyB3YXkgdG8gZ2V0IGEgY29sZCBQQ0llIHJlc2V0IHdp
dGhvdXQgcmVib290aW5nLg0KDQo+ID4gSW4gbWFueSBjYXNlcywgaXQgaXMgcG9zc2libGUgdG8g
dXBkYXRlIHRoZSBkZXZpY2UgZmlybXdhcmUgaW1tZWRpYXRlbHkNCj4gPiB1c2luZyB3aGF0IGlz
IGtub3duIGFzIGFuIEVNUCByZXNldC4gVGhpcyBjYW4gYmUgdXNlZCB0byBjb21wbGV0ZQ0KPiAN
Cj4gV2hhdCBkb2VzIEVNUCBzdGFuZCBmb3I/DQo+IA0KDQpFbWJlZGRlZCBNYW5hZ2VtZW50IFBy
b2Nlc3NvciwgSSBiZWxpZXZlLiBJdCdzIHJlZmVycmluZyB0byB0aGUgY2hpcCBvbiB0aGUgZGV2
aWNlIHdoaWNoIHJ1bnMgdGhlIGZpcm13YXJlLg0KDQoiRU1QIHJlc2V0IiB3b3VsZCByZWZlciB0
byBhIHNwZWNpYWwgZGV2aWNlIHJlc2V0IHdoaWNoIGluY2x1ZGVzIHJlLWRvaW5nIHRoZSBpbml0
aWFsaXphdGlvbiBwcm9jZXNzIHRvIGJvb3QgZmlybXdhcmUuDQoNCj4gPiBhIGRldmljZSBmaXJt
d2FyZSB1cGRhdGUgd2l0aG91dCB0aGUgdW5kZXNpcmVkIGVmZmVjdHMgY2F1c2VkIGJ5IGEgZnVs
bA0KPiA+IHBsYXRmb3JtIHJlYm9vdC4NCj4gDQo+IFdoZXJlIGlzIEVNUCBkb2N1bWVudGVkPyBQ
bGVhc2UgYWRkIHRoZSBkYXRhc2hlZXQgbmFtZSBhbmQgcmV2aXNpb24sIGFuZA0KPiByZWZlcmVu
Y2UgdGhlIGNoYXB0ZXIuDQoNCkl0J3MgcHJvYmFibHkgYmV0dGVyIHRvIHNpbXBseSByZXBsYWNl
IHRoaXMgdGVybWlub2xvZ3kgd2l0aCBzb21ldGhpbmcgbW9yZSBnZW5lcmljLg0KDQo+IA0KPiA+
IFdlIGNhbiBpbXBsZW1lbnQgc3VwcG9ydCBmb3IgdGhpcyBpbiB1c2Vyc3BhY2UgdXNpbmcgdGhl
IGRldmxpbmsgcmVsb2FkDQo+ID4gY29tbWFuZC4gSW1wbGVtZW50IHRoaXMgY29tbWFuZCBmb3Ig
dGhlIGljZSBkcml2ZXIgc28gdGhhdCBhIGRldmxpbmsNCj4gPiByZWxvYWQgd2l0aCB0aGUgRldf
QUNUSVZBVEUgcmVsb2FkIGFjdGlvbi4NCj4gDQo+IFNvbWV0aGluZyAoYSB2ZXJiKSBpcyBtaXNz
aW5nIGluIHRoYXQgc2VudGVuY2U/DQoNClByb2JhYmx5ICJJbXBsZW1lbnQgc3VwcG9ydCBmb3Ig
ZGV2bGluayByZWxvYWQgd2l0aCB0aGUgRldfQUNUSVZBVEUgYWN0aW9uLiBUaGlzIGVuYWJsZXMg
dXNlcnNwYWNlIHRvIHJlcXVlc3QgYSByZWxvYWQgdG8gYWN0aXZhdGUgbmV3IGZpcm13YXJlLiIN
Cg0KPiANCj4gPiBUaGlzIGVuYWJsZXMgdGhlIGFkbWluaXN0cmF0b3IgdG8gcmVxdWVzdCBhIGZp
cm13YXJlIGFjdGl2YXRpb24gYWZ0ZXINCj4gPiBwZXJmb3JtaW5nIGEgZmxhc2ggdXBkYXRlLg0K
PiA+DQo+ID4gVW5mb3J0dW5hdGVseSwgaXQgaXMgbm90IGFsd2F5cyBwb3NzaWJsZSB0byBjb21w
bGV0ZSBhbiB1cGRhdGUgd2l0aA0KPiA+IGEgc2ltcGxlIEVNUCByZXNldC4gSW4gc29tZSBjYXNl
cywgdGhlIHVwZGF0ZSBjYW5ub3QgYmUgY29tcGxldGVkDQo+ID4gd2l0aG91dCBwZXJmb3JtaW5n
IGVpdGhlciBhIGZ1bGwgcG93ZXIgb24gb3IgYSBjb2xkIFBDSWUgcmVzZXQuIEluIHRoZXNlDQo+
ID4gY2FzZXMgYSBzeXN0ZW0gcmVib290IGlzIHRoZSBvbmx5IGtub3duIHdheSB0byBjb21wbGV0
ZSB0aGUgdXBkYXRlLg0KPiA+DQo+ID4gV2hlbiBhY3R1YWxseSB3cml0aW5nIHRoZSBmbGFzaCBk
ZXZpY2UsIG5ld2VyIHZlcnNpb25zIG9mIGZpcm13YXJlIGNhbg0KPiA+IGluZm9ybSB0aGUgZHJp
dmVyIGFib3V0IHdoZXRoZXIgYW4gRU1QIHJlc2V0IGlzIHN1ZmZpY2llbnQuIEl0IGRvZXMgdGhp
cw0KPiANCj4gUGxlYXNlIGRvY3VtZW50IHRoZSBmaXJtd2FyZSB2ZXJzaW9uIHN1cHBvcnRpbmcg
dGhpcyBmaXJzdC4NCj4gDQoNCkknbSBub3QgZXZlbiBzdXJlIGhvdyB0byBnbyBhYm91dCBkb2lu
ZyB0aGlzLiBXZSBnZXQgZmxhZ3MgZnJvbSBkZXZpY2UgY2FwYWJpbGl0aWVzIHdoaWNoIGluZGlj
YXRlIHdoZXRoZXIgb3Igbm90IGVhY2ggb2YgdGhlIHR3byBmZWF0dXJlcyBhcmUgYXZhaWxhYmxl
LiBJIGFtIG5vdCBzdXJlIGhvdyB0byBnbyBhYm91dCBmaW5kaW5nIHRoZSBzcGVjaWZpYyBmaXJt
d2FyZSByZXZpc2lvbnMuDQoNCkkgc3VwcG9zZSBJIGNvdWxkIHRyaWFsLWFuZC1lcnJvciB0byBt
YWtlIGEgZ3Vlc3MuLiBub3Qgc3VyZSBob3cgaGVscGZ1bCB0aGF0IHdvdWxkIGJlLi4NCg0KPiA+
IHVzaW5nIHR3byBtZWNoYW5pc21zLCB3aGljaCBhcmUgZGV0ZWN0ZWQgdmlhIGZpcm13YXJlIGNh
cGFiaWxpdHkgYml0cy4NCj4gPg0KPiA+IFRoZSBmaXJzdCBpcyBrbm93biBhcyBQQ0llIHJlc2V0
IGF2b2lkYW5jZSwgYW5kIHRoZSBzZWNvbmQgaXMga25vd24gYXMNCj4gPiBpbmRpY2F0aW9uIG9m
IHJlc2V0IHJlc3RyaWN0aW9uLg0KPiA+DQo+ID4gSWYgdGhlIGZpcm13YXJlIHN1cHBvcnRzIHRo
ZXNlIGNhcGFiaWxpdGllcywgaXQgd2lsbCBiZSBhYmxlIHRvIGluZGljYXRlDQo+ID4gdG8gdGhl
IGRyaXZlciB3aGVuIGFuIEVNUCByZXNldCBpcyBzdWZmaWNpZW50IHRvIGNvbXBsZXRlIGFuIHVw
ZGF0ZS4NCj4gPg0KPiA+IFRoZSBtaW5pbXVtIHJlcXVpcmVkIHJlc2V0IGxldmVsIGlzIHByb3Zp
ZGVkIGFzIHBhcnQgb2YgdGhlIHJlc3BvbnNlIHRvDQo+ID4gdGhlIGZpbmFsIE5WTSBtb2R1bGUg
YmxvY2sgd3JpdGUuIFRoaXMgcmVzZXQgbGV2ZWwgaW5kaWNhdGVzIHdoYXQgcmVzZXQNCj4gPiBp
cyByZXF1aXJlZCBpbiBvcmRlciB0byBwcm9wZXJseSBpbml0aWFsaXplIHRoZSBmaXJtd2FyZSBn
aXZlbiB0aGUNCj4gPiBjb250ZW50cyB0aGF0IHdlcmUgdXBkYXRlZCBpbiB0aGUgTlZNLg0KPiA+
DQo+ID4gVGhlIGF2YWlsYWJpbGl0eSBvZiBFTVAgcmVzZXQgaXMgaW5kaWNhdGVkIGFzIHBhcnQg
b2YgdGhlIHN5bmNocm9ub3VzDQo+ID4gcmVzcG9uc2UgdG8gYXNraW5nIGZpcm13YXJlIHRvIHN3
aXRjaCBmbGFzaCBiYWNrcyBmb3IgdGhlIG5leHQgbG9hZC4NCj4gDQo+IFdoYXQgZG9lcyDigJxm
bGFzaCBiYWNrc+KAnSBtZWFuPw0KDQoNClRoaXMgaXMgYSB0eXBvLiBJdCBpcyBpbnRlbmRlZCB0
byByZWZlciB0byAiZmxhc2ggYmFuayIuIFRoZSBpY2UgaGFyZHdhcmUgaGFzIHR3byBiYW5rcyBm
b3Igc3RvcmluZyBmbGFzaCBkYXRhLiBZb3Ugd3JpdGUgYW4gdXBkYXRlIHRvIHRoZSBpbmFjdGl2
ZSBiYW5rIGFuZCB0aGVuIHJlcXVlc3QgdG8gaGF2ZSB0aGUgYWN0aXZlIGJhbmsgc3dpdGNoZWQg
Zm9yIHRoZSBuZXh0IGxvYWQuIEluIG90aGVyd29yZHMsIGlmIHRoZSBmaXJzdCBiYW5rIGlzIGFj
dGl2ZSBub3csIHlvdSB3cml0ZSB0aGUgbmV3IGltYWdlIHRvIHRoZSBzZWNvbmQgYmFuaywgdGhl
biB5b3UgbWFrZSBhIHJlcXVlc3QgdG8gaGF2ZSB0aGUgbmV4dCBkZXZpY2UgbG9hZCB1c2UgdGhl
IG90aGVyIGJhbmssIHRvIHN3aXRjaCB0byB0aGUgbmV3IGltYWdlLg0KDQo+IA0KPiA+IFRyYWNr
IHRoZXNlIHJlc3BvbnNlcyBpbiB0aGUgcHJpdmF0ZSBzdHJ1Y3R1cmUgd2hlbiBwZXJmb3JtaW5n
IGEgZmxhc2gNCj4gPiB1cGRhdGUuIEFmdGVyIGZpbmFsaXppbmcgdGhlIHVwZGF0ZSwgYWRkIGEg
c3RhdHVzIG5vdGlmaWNhdGlvbiB0byBpbmZvcm0NCj4gPiB0aGUgdXNlciBvZiB0aGUgcmVxdWly
ZWQgcmVzZXQgbmVlZGVkIHRvIHN3aXRjaCB0aGUgcnVubmluZyBmaXJtd2FyZS4NCj4gPg0KPiA+
IEFsc28gdHJhY2sgd2hldGhlciBvciBub3QgdGhlIEVNUCByZXNldCBpcyBhdmFpbGFibGUgZm9y
IHVzZSBkdXJpbmcNCj4gPiByZWxvYWQuIElmIGZpcm13YXJlIHJlcG9ydGVkIHRoYXQgaXQgaXMg
YXZhaWxhYmxlLCBhbiBFTVAgcmVzZXQgY2FuIGJlDQo+ID4gcmVxdWVzdGVkIHVzaW5nIHRoZSBh
cHByb3ByaWF0ZSBmaXJtd2FyZSBjb21tYW5kLg0KPiANCj4gV2hhdCBpcyB0aGUgdXNlcnNwYWNl
IGNvbW1hbmQgdG8gZG8gaXQ/DQoNClRoZSB1c2Vyc3BhY2UgY29tbWFuZCB3aWxsIGJlIERFVkxJ
TktfQ01EX1JFTE9BRCB3aXRoIHRoZSBGV19BQ1RJVkFURSBmbGFnLiBUaGUgY29tbWFuZCBpbiBy
ZWZlcmVuY2UgaGVyZSBpcyBhIGZpcm13YXJlIEFkbWluUSBjb21tYW5kIHRvIGFjdHVhbGx5IHJl
cXVlc3QgdGhlIEVNUCByZXNldC4NCg0KPiANCj4gPiBBZGQgc3VwcG9ydCBmb3IgZGV2bGluayBy
ZWxvYWQsIGFuZCBhbGxvdyB0aGUgdXNlciB0byByZXF1ZXN0IGEgcmVsb2FkDQo+ID4gdG8gdGhl
IG5ldyBmaXJtd2FyZSB1c2luZyB0aGUgRldfQUNUSVZJQVRFIGZsYWcuIElmIGFuIEVNUCByZXNl
dCBpcw0KPiA+IGF2YWlsYWJsZSBmcm9tIGZpcm13YXJlLCB3ZSB3aWxsIGF0dGVtcHQgdG8gbG9h
ZCB0aGUgbmV3bHkgYWN0aXZhdGVkDQo+ID4gZmlybXdhcmUuDQo+ID4NCj4gPiBJbiBzb21lIGNh
c2VzLCBzdWNoIGFzIG9sZGVyIGZpcm13YXJlIHZlcnNpb25zIHdoaWNoIGRvIG5vdCBjaGVjayBv
cg0KPiA+IHJlcG9ydCB3aGV0aGVyIEVNUCByZXNldCBpcyBzdWl0YWJsZSwgdGhlIGRyaXZlciBt
YXkgbm90IGJlIGFibGUgdG8NCj4gPiBkZXRlcm1pbmUgd2hlbiBhbiBFTVAgcmVzZXQgaXMgYXZh
aWxhYmxlLiBJbiB0aGlzIGNhc2UsIHdoZXRoZXIgYW4gRU1QDQo+ID4gcmVzZXQgaXMgc3VmZmlj
aWVudCBvciBub3QuIEluIHRoaXMgY2FzZSwgd2Ugd2lsbCBhbHdheXMgYXR0ZW1wdCB0aGUgRU1Q
DQo+ID4gcmVzZXQuDQo+IA0KPiBIb3cgZG8geW91IGtub3csIHRoYXQgdGhlIEVNUCByZXNldCB3
YXMgc3VjY2Vzc2Z1bCwgYW5kIG5vIHN5c3RlbSByZXNldA0KPiBpcyByZXF1aXJlZD8NCg0KWW91
IGNhbiB1c2UgZGV2bGluayBpbmZvIHRvIHNlZSB0aGF0IHRoZSAicnVubmluZyIgZmlybXdhcmUg
aGFzIHN3aXRjaGVkLg0KDQo+IA0KPiA+IEZpbmFsbHksIHRoaXMgY2hhbmdlIGRvZXMgKm5vdCog
aW1wbGVtZW50IGJhc2ljIGRyaXZlci1vbmx5IHJlbG9hZA0KPiA+IHN1cHBvcnQuIEkgZGlkIGxv
b2sgaW50byB0cnlpbmcgdG8gZG8gdGhpcy4gSG93ZXZlciwgaXQgcmVxdWlyZXMNCj4gPiBzaWdu
aWZpY2FudCByZWZhY3RvciBvZiBob3cgdGhlIGljZSBkcml2ZXIgcHJvYmVzIGFuZCBsb2FkcyBl
dmVyeXRoaW5nLg0KPiA+IFRoZSBpY2UgZHJpdmVyIHByb2JlIGFuZCBhbGxvY2F0aW9uIGZsb3dz
IHdlcmUgbm90IGRlc2lnbmVkIHdpdGggc3VjaA0KPiA+IGEgcmVsb2FkIGluIG1pbmQuDQo+IA0K
PiBQbGVhc2UgZG9jdW1lbnQsIG9uIHdoYXQgZGV2aWNlIHdpdGggd2hhdCBmaXJtd2FyZSBkaWQg
eW91IHRlc3QgdGhpcz8NCj4gSG93IGxvbmcgZGlkIHRoZSBFTVAgcmVzZXQgdGFrZT8NCj4gDQo+
IE1heWJlIGFsc28gcGFzdGUgdGhlIGxvZyBtZXNzYWdlcyBvZiBhIHN1Y2Nlc3NmdWwgRU1QIHJl
c2V0Lg0KPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBKYWNvYiBLZWxsZXIgPGphY29iLmUua2VsbGVy
QGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPg0KDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZGV2bGluay5jDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9kZXZsaW5rLmMNCj4gPiBpbmRleCAzNzc0YzNhNzI4MWQuLjg2OTNh
ZDAyNDg1NSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX2RldmxpbmsuYw0KPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9p
Y2VfZGV2bGluay5jDQo+ID4gQEAgLTM3MCw4ICszNzAsOTggQEAgc3RhdGljIGludCBpY2VfZGV2
bGlua19pbmZvX2dldChzdHJ1Y3QgZGV2bGluayAqZGV2bGluaywNCj4gPiAgIAlyZXR1cm4gZXJy
Ow0KPiA+ICAgfQ0KPiA+DQo+ID4gKy8qKg0KPiA+ICsgKiBpY2VfZGV2bGlua19yZWxvYWRfZG93
biAtIFN0YXJ0IHJlbG9hZA0KPiANCj4gV2h5IOKAnGRvd27igJ0gaW4gdGhlIGZ1bmN0aW9uIG5h
bWUsIHdoZW4gdGhlIGRlc2NyaXB0aW9uIHNheXMg4oCcU3RhcnTigJ0/DQo+IA0KDQpUaGlzIGlz
IHRoZSAicmVsb2FkX2Rvd24iIGhhbmRsZXIuIFRoZXJlIGlzIGEgInJlbG9hZF9kb3duIiBhbmQg
YSAicmVsb2FkIHVwIi4gcmVsb2FkX2Rvd24gaXMgY2FsbGVkIHRvIGJyaW5nIHRoZSBkZXZpY2Ug
ZG93biwgYW5kIHJlbG9hZF91cCBpcyBjYWxsZWQgdG8gYnJpbmcgdGhlIGRldmljZSBiYWNrIHVw
Lg0KDQo+ID4gKyAqIEBkZXZsaW5rOiBwb2ludGVyIHRvIHRoZSBkZXZsaW5rIGluc3RhbmNlIHRv
IHJlbG9hZA0KPiA+ICsgKiBAbmV0bnNfY2hhbmdlOiBpZiB0cnVlLCB0aGUgbmV0d29yayBuYW1l
c3BhY2UgaXMgY2hhbmdpbmcNCj4gPiArICogQGFjdGlvbjogdGhlIGFjdGlvbiB0byBwZXJmb3Jt
LiBNdXN0IGJlDQo+IERFVkxJTktfUkVMT0FEX0FDVElPTl9GV19BQ1RJVkFURQ0KPiA+ICsgKiBA
bGltaXQ6IGxpbWl0cyBvbiB3aGF0IHJlbG9hZCBzaG91bGQgZG8sIHN1Y2ggYXMgbm90IHJlc2V0
dGluZw0KPiA+ICsgKiBAZXh0YWNrOiBuZXRsaW5rIGV4dGVuZGVkIEFDSyBzdHJ1Y3R1cmUNCj4g
PiArICoNCj4gPiArICogQ29tbWFuZCBpc3N1ZWQgYnkgZGV2bGluayBjb3JlIHRvIHBlcmZvcm0g
YSByZWxvYWQuIFRoaXMgZHJpdmVyIG9ubHkNCj4gPiArICogc3VwcG9ydHMgZmlybXdhcmUgYWN0
aXZhdGlvbi4NCj4gPiArICovDQo+ID4gK3N0YXRpYyBpbnQNCj4gPiAraWNlX2RldmxpbmtfcmVs
b2FkX2Rvd24oc3RydWN0IGRldmxpbmsgKmRldmxpbmssIGJvb2wgbmV0bnNfY2hhbmdlLA0KPiA+
ICsJCQllbnVtIGRldmxpbmtfcmVsb2FkX2FjdGlvbiBhY3Rpb24sDQo+ID4gKwkJCWVudW0gZGV2
bGlua19yZWxvYWRfbGltaXQgbGltaXQsDQo+ID4gKwkJCXN0cnVjdCBuZXRsaW5rX2V4dF9hY2sg
KmV4dGFjaykNCj4gPiArew0KPiA+ICsJc3RydWN0IGljZV9wZiAqcGYgPSBkZXZsaW5rX3ByaXYo
ZGV2bGluayk7DQo+ID4gKwlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBpY2VfcGZfdG9fZGV2KHBmKTsN
Cj4gPiArCXN0cnVjdCBpY2VfaHcgKmh3ID0gJnBmLT5odzsNCj4gPiArCXU4IHBlbmRpbmc7DQo+
IA0KPiBXaHkgbm90IGJvb2w/DQoNClRlY2huaWNhbGx5IHBlbmRpbmcgaXMgYSBiaXRtYXNrIG9m
IHdoaWNoIHNlY3Rpb25zIG9mIGZsYXNoIGhhdmUgcGVuZGluZyB1cGRhdGVzLiBUaGVyZSBhcmUg
MyBiYW5rcywgdGhlIG1haW4gRU1QICJOVk0iIGJhbmsgd2hpY2ggaW5jbHVkZXMgdGhlIEVNUCBm
aXJtd2FyZSBhbmQgc2V0dGluZ3MuIFRoZSBPcHRpb24gUk9NIHdoaWNoIGluY2x1ZGVzIHRoZSBw
cmUtYm9vdCBzb2Z0d2FyZSwgYW5kIHRoZSAibmV0bGlzdCIgd2hpY2ggcmVmZXJzIHRvIGV4dGVu
ZGVkIGNvbmZpZ3VyYXRpb24gVExWcy4NCg0KSWYgd2UgZ2V0IGFueSBiaXRzIHNldCwgdGhpcyB3
aWxsIGJlIG5vbiB6ZXJvLCBhbmQgdGh1cyB3ZSBoYXZlIGF0IGxlYXN0IG9uZSBwZW5kaW5nIHVw
ZGF0ZS4gVGhpcyB1c2VzIHRoZSBzYW1lIGludGVyZmFjZSB0byBjaGVjayBhcyB0aGUgZmxhc2gg
dXBkYXRlIGxvZ2ljLg0KDQo+ID4gICAJLyogVHJhY2sgd2hpY2ggTlZNIGJhbmtzIHRvIGFjdGl2
YXRlIGF0IHRoZSBlbmQgb2YgdGhlIHVwZGF0ZSAqLw0KPiA+ICAgCXU4IGFjdGl2YXRlX2ZsYWdz
Ow0KPiA+ICsNCj4gPiArCS8qIFRyYWNrIHRoZSBmaXJtd2FyZSByZXNwb25zZSBvZiByZXNldCBs
ZXZlbCByZXF1aXJlZCAqLw0KPiA+ICsJdTggcmVzZXRfbGV2ZWw7DQo+ID4gKw0KPiA+ICsJLyog
VHJhY2sgaWYgRU1QIHJlc2V0IGlzIGF2YWlsYWJsZSAqLw0KPiA+ICsJdTggZW1wcl9hdmFpbGFi
bGU7DQo+IA0KPiBJ4oCZZCBub3QgYWJicmV2aWF0ZSByZXNldCwgYW5kIHdvdWxkIHVzZSBgZW1w
X3Jlc2V0X2F2YWlsYWJsZWAuIFRoZQ0KPiBjb21tZW50IGNhbiBiZSByZW1vdmVkIHRoZW4uDQo+
IA0KDQpGYWlyLg0KDQo+ID4gICB9DQo+ID4NCj4gPiBAQCAtMzQ1LDYgKzM3MCw3IEBAIGljZV93
cml0ZV9vbmVfbnZtX2Jsb2NrKHN0cnVjdCBpY2VfcGYgKnBmLCB1MTYNCj4gbW9kdWxlLCB1MzIg
b2Zmc2V0LA0KPiA+ICAgICogQGNvbXBvbmVudDogdGhlIG5hbWUgb2YgdGhlIGNvbXBvbmVudCBi
ZWluZyB1cGRhdGVkDQo+ID4gICAgKiBAaW1hZ2U6IGJ1ZmZlciBvZiBpbWFnZSBkYXRhIHRvIHdy
aXRlIHRvIHRoZSBOVk0NCj4gPiAgICAqIEBsZW5ndGg6IGxlbmd0aCBvZiB0aGUgYnVmZmVyDQo+
ID4gKyAqIEByZXNldF9sZXZlbDogc3RvcmFnZSBmb3IgcmVzZXQgbGV2ZWwgcmVxdWlyZWQNCj4g
DQo+IERvY3VtZW50IHRoZSBwb3NzaWJsZSBsZXZlbHM/DQo+IA0KDQpTdXJlLg0KDQo+ID4gICAj
ZGVmaW5lIElDRV9OVk1fUEVORElOR19ORVRMSVNUCQkJQklUKDIpDQo+ID4gICAJYm9vbCBudm1f
dW5pZmllZF91cGRhdGU7DQo+ID4gICAjZGVmaW5lIElDRV9OVk1fTUdNVF9VTklGSUVEX1VQRF9T
VVBQT1JUCUJJVCgzKQ0KPiA+ICsJLyogUENJZSByZXNldCBhdm9pZGFuY2UgKi8NCj4gPiArCWJv
b2wgcGNpZV9yZXNldF9hdm9pZGFuY2U7IC8qIGZhbHNlOiBub3Qgc3VwcG9ydGVkLCB0cnVlOiBz
dXBwb3J0ZWQgKi8NCj4gDQo+IE1heWJlIHVzZSBgYXZvaWRfcGNpZV9yZXNldGA/DQo+IA0KDQpU
aGlzIGlzIGluZGljYXRpbmcgd2hldGhlciB0aGUgZmlybXdhcmUgaGFzIHN1cHBvcnQgdG8gZG8g
dGhlIGF2b2lkaW5nIG9uIGEgcG90ZW50aWFsIGZ1dHVyZSB1cGRhdGUuIEluIHByYWN0aWNhbCB0
ZXJtcyBmb3Igc29mdHdhcmUsICBpdCBpcyBhbiBpbmRpY2F0aW9uIG9mIHdoZXRoZXIgb3Igbm90
IHRoZSBmaXJtd2FyZSB3aWxsIHRlbGwgdXMgdGhlIHJlc2V0IGxldmVsLiBJIGNhbiByZW5hbWUg
aXQuDQoNCj4gPiArCS8qIFBvc3QgdXBkYXRlIHJlc2V0IHJlc3RyaWN0aW9uICovDQo+ID4gKwli
b29sIHJlc2V0X3Jlc3RyaWN0X3N1cHBvcnQ7IC8qIGZhbHNlOiBub3Qgc3VwcG9ydGVkLCB0cnVl
OiBzdXBwb3J0ZWQgKi8NCj4gDQo+IGByZXNldF9yZXN0cmljdF9zdXBwb3J0ZWRgPw0KPiANCj4g
SW4gYm90aCBjYXNlcywgdGhlIGNvbW1lbnRzIGZvciB0aGUgdmFsdWVzIGNhbiBiZSByZW1vdmVk
Lg0KPiANCg0KU3VyZS4NCg0KPiA+ICAgfTsNCj4gPg0KPiA+ICAgLyogSUVFRSAxNTg4IFRJTUVf
U1lOQyBzcGVjaWZpYyBpbmZvICovDQo+ID4NCj4gDQo+IA0KPiBLaW5kIHJlZ2FyZHMsDQo+IA0K
PiBQYXVsDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0
dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
