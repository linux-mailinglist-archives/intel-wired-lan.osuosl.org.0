Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BEFB433F61
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Oct 2021 21:42:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A090C82B49;
	Tue, 19 Oct 2021 19:42:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ALO-prJ0ufg8; Tue, 19 Oct 2021 19:42:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A668382AB6;
	Tue, 19 Oct 2021 19:42:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0D7671BF328
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 19:42:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EE562400E7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 19:42:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PIcPUmkYLudS for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Oct 2021 19:42:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C94F2400A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 19:42:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10142"; a="209412455"
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="209412455"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 12:42:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="483396124"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 19 Oct 2021 12:42:22 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 19 Oct 2021 12:42:22 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 19 Oct 2021 12:42:22 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 19 Oct 2021 12:42:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZzpQVzTuD8edBvSycBY+5ZZPGl0sGceZt1HQYKbNlF+RKVqkyrOdItCTPEYid+7h3Snq2J06B1tJiT4t4x0gH4dFC74rcMGNDJ5zFT5wQzPAYcyisdPSXi2jgcb3JBoA832eRxOvg2/XjkybKpJgBvQ33ytR3IG+FcYiAmCSY0uhTUsG3DgRUQoPpuZ56tZSdpsB8CnElV1GeRbxhJTpUgb49Poc1x6uUfIAGq78yyKj4orgKhhrKgxs3jIbCb2g4WE9PvPWclIHm70j8url3xNRFIMO8z++szU3PXlr367iGGRU95NY9kP/s+Zet+mrDZsncKBcKyUAhBMMecW1Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jgj1ozxl1CKNbDbksPVyAMQoNbfZzj8vF8wueiOPV1g=;
 b=bRAYu82QSbBS0V+y4Mji5cdJp2/fKMxIusNxtZmO+WboGFgjIb+BAxrKO9mUmrkShDdfUyaPmmIC0QjXtHYGNJeaJNlTRKVBAzSbpbFYcKAJfuHl6nljFhFbxaprOe008G5fNyYXA4NI2I4A8PBkS7FHhorECG2u2KNwueCJMQxtdXvaMDO7EFCEJpdzIPtEW5C0wlEc7UTL3P0oujpzo8AXWXbmDXnN8mMxw+ejnVGracMPKeZX2kVc9KND5knWVBMmKV50Yl4r7amjciU1hCX7nSEUwIbNOnmS52x/vsdoazrXhy5yfDQTGp05BLCUUu0bavyzbG0kkDdV9PwK/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jgj1ozxl1CKNbDbksPVyAMQoNbfZzj8vF8wueiOPV1g=;
 b=f5WHSGUMbh7PDPFDmlEMBLOCiETGFkvgZ3dB5kXoyC+57cGjlMGQJ501RBN/U+QxYLR2s41E0caBi38Uypd1ExEUpXJHKtHl4iZjqn4iwNWD1rF0vDrlOkr6ndOb7xzUy0rDcR2Vm7lUd45I3nxXOkmeeNJjp/YfhvToIowzupM=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA0PR11MB4653.namprd11.prod.outlook.com (2603:10b6:806:94::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.16; Tue, 19 Oct
 2021 19:42:21 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4%3]) with mapi id 15.20.4608.018; Tue, 19 Oct 2021
 19:42:21 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: Add missing device ids
Thread-Index: AQHXxQAUNrk3MPpLCkCVPfXpQFhUZKvagXWAgAAYbwCAABAqgIAADlEA
Date: Tue, 19 Oct 2021 19:42:21 +0000
Message-ID: <a9930feac5b27580a01b06b9b759504ce47a771b.camel@intel.com>
References: <20211019152758.58277-1-anthony.l.nguyen@intel.com>
 <c2e59ebe-4a7b-b2d7-f15d-759ad26c006b@molgen.mpg.de>
 <1494d7bcbed00caff6f6391512dd8db5256d3770.camel@intel.com>
 <bb9307c2-58d4-362e-dafb-a6d3c1afd587@molgen.mpg.de>
In-Reply-To: <bb9307c2-58d4-362e-dafb-a6d3c1afd587@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: molgen.mpg.de; dkim=none (message not signed)
 header.d=none;molgen.mpg.de; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fe069ae4-b9c1-48b5-c505-08d99338913a
x-ms-traffictypediagnostic: SA0PR11MB4653:
x-microsoft-antispam-prvs: <SA0PR11MB465306D617FC37215E844A8DC6BD9@SA0PR11MB4653.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Yx1MAshtKcMrjLjOZuCCxSbXcJs4mxqij2d/Wb8HiE3XRXxTC1zzhIL91BqgkoJYwtzyCFOpu/zc1XkxMh6vCy9CmAestFbBGXLAu7ZnzYqdMBt6Wge7RH4XdThggrIrbZg+tRvCWkF0LNU4YFvAPeNF+gu0CmLE6znzeWa0FpFH6nu07BTSztFGwF4Q4hW8JN5+7WM+HRzuisEG36IdWUojynZmvk+1CJxcYkZUg9W7baXhLXP/sQCtOmuLkuBWOD6yRIwvH+kKMNm2w9VyC/fM7zOq85bem57GW7/W5pxQKJaZM+WiglF1jvd9yiNq3OgB7InpqCtquGjMqlBDEE+mQ3+aTmapyaDrNW58H4TX3oIQN7AgvgBbXZ2LbzK5OkR6xtR2GO4OwukStzXu+Hjp+MWqbqYXFC7EhhIjvyvLqWBhiGhSeq5FuL3R8QChrrqHcVp9x+Tc7GLuiJ64stD/1Q0N7agZbM30qPocleN3jDp4Ya5rYKlb7+RRmtgOPSwMdTezCN8EoQZ9PxXQOBAqRP5rXD83ejTiuRLLZ9NeeszJa6xfdsoxjTkEZTzPkcjP3F3DPs5jpdZypaRawpPVJMohvZE8yJ2x9ZehByhbz12Ibpz+WkxC5Ju7CTPb3RTy8fcCc2YYryo+TJVI2NvkmkEI2o/PMCWlEebYPAgGQxtuNWNjVjYTXOGNKfFSQq2YZ5Y5V+QpoMY0DVNdEV92RxhGdL9cWRLDp0hUOyVwmE3GvHKqASC/Opjh9zPutY6JAqS1m09RIvwTMfGZjgDVWaYm5zkjV0VxdUiPPBc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(4326008)(6916009)(2616005)(38100700002)(186003)(4001150100001)(316002)(38070700005)(122000001)(66476007)(83380400001)(8676002)(76116006)(6512007)(508600001)(6506007)(86362001)(2906002)(91956017)(6486002)(66556008)(966005)(64756008)(66446008)(66946007)(36756003)(26005)(8936002)(71200400001)(82960400001)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bFpvV21KcWg2RDRFc2s4Ym16d2NQczc2c3RtcUp6cWhibmpxcVAvNDNzU1FU?=
 =?utf-8?B?RHJCdXdGVmlHR2Yzd0MrN082eHZKN0lLWUF6ZnVKQlFnY1h5MzIvanRXRWNl?=
 =?utf-8?B?N0hPelc5YUtRQWRZY3VZUVdzSXphOWhORVpnYUl4cDFTeW1waVVIamIrZ29a?=
 =?utf-8?B?YXRyMTRhejZnYUZoek5jbkpzSzJPWlZxU0N2dDJ6NWZSR2lnbVQvY2NHcEdH?=
 =?utf-8?B?d1VSbHIxY1k3MGRLU01UTjlmOTJob1F4aHlNdWxuUllyMXc4UnVQOTR6ZXhF?=
 =?utf-8?B?S1plYUxoZFozVms3SnZiT1AyVis2bTdCei9PaXJLN1U1elppQ2ZmS1ZRdDNq?=
 =?utf-8?B?WTg3aFJrSDVYSFByVk00S3FtL3lGWlFadTRDSFNqQmlBV05zZTBHczY2OWFC?=
 =?utf-8?B?WUZvcEVlVVJrS25zeHBKTHhnK0hscnhRemhqa0h0R1hoNEE4cmFQWVhOWnRW?=
 =?utf-8?B?cVZXVm9vZE9PQVJaZkNVT1A5STJJZTF4Q1FYMDF6a2lXSUlxdXIxRFNMZnl6?=
 =?utf-8?B?ZUIzU2RNcjIrSzBQR25XS3g4aXRPTWVMQU5LeWF6a1B0eGwxT1lOTmNlRzV3?=
 =?utf-8?B?MUpaOUZNZlFaNXRBYlhPdmNYRXAwMlhEcnJmb3gyNk5hb1F6ZDY2Q01lOTR0?=
 =?utf-8?B?cTdTOXV6dDBXT09xd1NKRy9pMEJoakZBNFl3RjJrZ2R3QmdmOGNPYkVvaCt2?=
 =?utf-8?B?STNvVnhxdVMweGJvckt1RHFvcnVNbmgwc1B5TEZGWDN5bmgzU2I3eGRkSjAw?=
 =?utf-8?B?WVNYMVd5YkEyS0xaNm0wUjlmemlIK2cvRzJDS083UTU1NWN0TlN3VDlpVW9H?=
 =?utf-8?B?cEc0ZEkzN2ZES280eDJCWHFVbnJybk9mZlZITG5kNm9lZWlTd1RZOTRPL3ky?=
 =?utf-8?B?dUFZSVZreW9pVkxjTjlTVVB5RE1RRjZGTnhudWNqUk03TW90Y1pwd0l4N0lm?=
 =?utf-8?B?Wk1kYmhIQnplbzYzSmZiejY0Q0lZYUZDOTBmcFc3N3JiVU9HSmxPL3owNmpn?=
 =?utf-8?B?d3dhbHg4UU1VVTRNWXpnOXcrV0ZIaVNUMjU3bHRIblZ0Ni91YmxIK05YRU1J?=
 =?utf-8?B?M1FFUWtITUtGbUR6bHM0Q25OQWtJYjM4czVzRXA1T1dEdXFZNkdXaVRtNVNT?=
 =?utf-8?B?VXE2cVg1ZjRTcXpSZWZ6RVphTmdtZXZ5L2RzaytWck9pYzFFSTFYYUdScnRV?=
 =?utf-8?B?OWZZSUVTRlZQdm14S1VuUjRhb2FjNjFUN3BxaUlUbndOZVVFRGU3WFlwc2h6?=
 =?utf-8?B?NTBtU2ZKSlhRNHhUd0tGMHRBTU5xdmFyNWRHMHBMYlBnM2gwaitYUTRlL0RI?=
 =?utf-8?B?cytyREdQMXg1SzYxZXp0TjNEdzY4dzh0Mk5YaXgxTExxbGl6Z25IVjJJZXJn?=
 =?utf-8?B?aDJaMUhHZDRQSGNieXVKMkR4WUxmVDVKWDVMenhNSkdBeWUyZzg2UEdVbWp5?=
 =?utf-8?B?ekk1eFVoWUhscVNqSFNaYXV3TnpxZ1JONldFK1RGcDVYYk9uQm5SMzN2S2Fm?=
 =?utf-8?B?ODJ1VW83R0tqVFRlaWxFaVg4UGp6YkhVQlBtajJxN1hqMGVSSEwzT3J2aUhs?=
 =?utf-8?B?SFgwWGh6aDJ3RlA0MldOQ2tMTThsQzBMd2Iwam91dlgxdXkvWjl3TGJ4Z2Vw?=
 =?utf-8?B?ZGxtUGxvMmJEcHRxSHplMXFmK2x4bzJKaTRlcVBSOGZkNFpxNHQvbXdMT1pm?=
 =?utf-8?B?VnBmY2VVdWw5U0pOZnZ0UEYzQVRwSjJSYzJQa2d6TnpCcFN3bTc0amN5R3ZJ?=
 =?utf-8?B?ZXlCejFZazZsMmY4bDAzUXRDNFg0U3RCczRVZ2gvdlNldThHaDJwUWxIWTE2?=
 =?utf-8?B?ejlLU3FoVWZiVjFYU29aZz09?=
x-ms-exchange-transport-forked: True
Content-ID: <DF04104B5D169C4A9F3C5B78D34AA4E7@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe069ae4-b9c1-48b5-c505-08d99338913a
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2021 19:42:21.2765 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anthony.l.nguyen@intel.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4653
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Add missing device ids
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

T24gVHVlLCAyMDIxLTEwLTE5IGF0IDIwOjQ5ICswMjAwLCBQYXVsIE1lbnplbCB3cm90ZToNCj4g
RGVhciBUb255LA0KPiANCj4gDQo+IEFtIDE5LjEwLjIxIHVtIDE5OjUzIHNjaHJpZWIgTmd1eWVu
LCBBbnRob255IEw6DQo+ID4gT24gVHVlLCAyMDIxLTEwLTE5IGF0IDE4OjI0ICswMjAwLCBQYXVs
IE1lbnplbCB3cm90ZToNCj4gDQo+ID4gPiBBbSAxOS4xMC4yMSB1bSAxNzoyNyBzY2hyaWViIFRv
bnkgTmd1eWVuOg0KPiANCj4gW+KApl0NCj4gDQo+ID4gPiA+IEFzIHBhcnQgb2Ygc3VwcG9ydCBm
b3IgRTgxMCBYWFYgZGV2aWNlcywgc29tZSBkZXZpY2UgaWRzIHdlcmUgPg0KPiA+ID4gPiBpbmFk
dmVydGVudGx5IGxlZnQgb3V0LiBBZGQgdGhvc2UgbWlzc2luZyBpZHMuDQo+ID4gPiBQbGVhc2Ug
bWVudGlvbiB0aGUgc291cmNlIG9mIHRoZXNlIElEcy4NCj4gPiANCj4gPiBJJ20gbm90IHN1cmUg
SSBnZXQgdGhpcyBjb21tZW50LiBUaGVzZSBhcmUgdGhlIElEcyBmb3IgdGhlIE5JQw0KPiA+IGl0
c2VsZi4NCj4gDQo+IFNvcnJ5LCBmb3IgYmVpbmcgdW5jbGVhci4gSSBtZWFudCwgeW91IHByb2Jh
Ymx5IGRpZG7igJl0IGdldCB0aGUNCj4gaGFyZHdhcmUgDQo+IGFuZCByZWFkIG91dCB0aGUgSURz
IHVzaW5nIGBsc3BjaWAgb3Igc28sIGJ1dCBsb29rZWQgaW4gc29tZSANCj4gc3BlY2lmaWNhdGlv
biwgd2hhdCBJRHMgYXJlIHVzZWQgZm9yIHRoZSBoYXJkd2FyZT8NCg0KV2UgaGF2ZSBpbnRlcm5h
bCBkb2N1bWVudHMgdGhhdCBwcm92aWRlIHRoZSBkZXZpY2UgSURzIHRpZWQgdG8gdGhlDQpoYXJk
d2FyZSwgYnV0IGFzIGZhciBhcyBJIGtub3cgdGhlcmUgaXNuJ3QgYW55dGhpbmcgcHVibGlzaGVk
IHB1YmxpY2x5DQp0aGF0IHByb3ZpZGVzIHRoaXMgaW5mb3JtYXRpb24uIFRoZSBkYXRhIGlzIGFs
c28gYXZhaWxhYmxlIGluIHRoZSBQQ0kNCklEIHJlcG9zaXRvcnkgWzFdLCBidXQgdGhhdCBpc24n
dCB0aGUgc291cmNlIG9mIHRoZSBpbmZvcm1hdGlvbiwganVzdA0KYW5vdGhlciBwbGFjZSB0aGF0
IGl0IGdldHMgcHV0Lg0KDQpUaGFua3MsDQpUb255DQoNClsxXSBodHRwczovL3BjaS1pZHMudWN3
LmN6Lw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRw
czovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
