Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A9A042AAEC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Oct 2021 19:40:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 55D0D40407;
	Tue, 12 Oct 2021 17:40:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d5YVI_AZk-1F; Tue, 12 Oct 2021 17:40:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BF586403D0;
	Tue, 12 Oct 2021 17:40:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E71951BF5DF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 17:40:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D383460737
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 17:40:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nf_wSOMrmVNq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Oct 2021 17:40:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5F62D60635
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 17:40:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10135"; a="214370885"
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="214370885"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 10:34:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="715255626"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga006.fm.intel.com with ESMTP; 12 Oct 2021 10:34:18 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 12 Oct 2021 10:34:18 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 12 Oct 2021 10:34:18 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 12 Oct 2021 10:34:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E9i1WBPZkJUWfFBiOdjR6rManpEB9/o7pYKHsACUb8MggHwHiVlEWLSSff3BVb8QGZlhgfa/cfB/YoHAHrSwEZyZ5VJ4bBJH4lsFHEDhqkYhsEBwvR3FsZH8R6SGQe4nmtUBvmXB/QzhOVVMhTEvqfyveNNJsAguncNyJNdrdINb8ruVM7vLOu6uiswtrJWzFIdoT5OE+4blWowHKkRoeHIp3OYwAQtU7zf1rTXHcK7MKps0j/4id3L3j4dtzzxTRE8xCcJgC/qOXyf9kgzBqEByxoG6q7WEUOPzG6C280OzR599/OB9ojddOiY95zmRp47B3lTFYaOJjmP9eG2B8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8S1yx/OVHyDcqDbm+TALgHmhwMp9opQFrX8LYO9HW8Y=;
 b=a7o9ByHSThkmRcYkbxu+e/pvOEbCBIZ6vNQ6UGY3gFpQUNzafafpo1EZUWaBRDksiMUM8oCuLG7kiZBbUaKM6BElTdtt//OU6MWmfxNOH+ECqlCqKl3vPczgi+YbyhkkTX8BZLXiNdNFRnH46ZiZdDntJw6DBABWgIxHS4LjnoI1uSWx7CgolC3GU65kd4ULapX+ZvmOMo06poWdV9tRXLmCfr0fhN9ysm1+p/7iqAIiRg41lpho/ToxekMYEXXHVCv+jwJlz8ut/PMiTYLYNczjoppDduV10g3be7WpK4sfXkYBJK0BqDjJZ9fVNXN07QXPZD20vmSkfLLZl/ncAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8S1yx/OVHyDcqDbm+TALgHmhwMp9opQFrX8LYO9HW8Y=;
 b=cXk1IHB+KNm3D8RO3xmblPyn4+qd5SdGhitYzNjuuUgaqYSGRNu4XcwmX2veoPD+HruyAdVr0kQ+/H0ZaIbcONyRroCS2M/whRrv2cKqWpx+3wywB8QCnZReYMGlMagRCgWwofvHqCqxSDqoDCXMxomGwIZ+yfmVSJOoPyt4RgI=
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MWHPR11MB1822.namprd11.prod.outlook.com (2603:10b6:300:111::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.25; Tue, 12 Oct
 2021 17:34:16 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::982e:c29c:fe8a:5273]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::982e:c29c:fe8a:5273%6]) with mapi id 15.20.4587.026; Tue, 12 Oct 2021
 17:34:16 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [net-next PATCH v2 4/9] ice: introduce
 ice_ptp_init_phc function
Thread-Index: AQHXvwWZAJHscGBr3Eau3bHr5ESfCqvPBsWAgACZ8IA=
Date: Tue, 12 Oct 2021 17:34:16 +0000
Message-ID: <9f886ccc-aabc-a021-98d0-9bc0ce5576d9@intel.com>
References: <20211012010715.1684027-1-jacob.e.keller@intel.com>
 <20211012010715.1684027-5-jacob.e.keller@intel.com>
 <fd7b8b1e-0d08-51ab-3688-c82902046784@molgen.mpg.de>
In-Reply-To: <fd7b8b1e-0d08-51ab-3688-c82902046784@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.2
authentication-results: molgen.mpg.de; dkim=none (message not signed)
 header.d=none;molgen.mpg.de; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8373ea87-cda3-4863-c475-08d98da683e7
x-ms-traffictypediagnostic: MWHPR11MB1822:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB18221EBD3756992EA4EE77ACD6B69@MWHPR11MB1822.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KUvDIN19JRiKyhBzgQthduWQ3dSrtr38HRA8YwVU87Ji0foL9Wmcd+AlsMXGbMlYjpWhSNPP2oaAVlBjArNbBcZ9bQkV9XJgUqQCPGxX2e1b55AZQOAyUsYmWl2RwG9/wFOtpL/9n1hrCJZ5S6ng++wc/TLO8xmCZO45xSWhjEuZqR+SRiIS7WVLulu+dtE9TrnMbGdxbGqpcLV5OXN021eEZrMXnoPPj6Prv15QUbI3xpSTI2bhOvUeoQ99v0D1TV3u5eDZt1Ab4XHj+EJpC3o6AmACpMUgT7r/cSd0Mh5H+Rybu+WTnc95Dg+3OWrrxtTZtsKylfHPP8C6lm8CRisZpyMn/wx9ryx8KprsnF+oL4PVOTfEBLhSoG9E4EackF7XC3l2/WrinLZ1Sq9r1DD9k+yOiV39eWWG3gf1OMazQ3H86luTvWYKpSgwxq64v85ktf93wYQ4zNjDXuKjw1B8ZSPCmM5ILVqg8E66NFMp8eSxyETv9ypoigV9YtjtRA7UYdPqEsOGT9QI3jKC2z82cH5tip3xaS9t+zC8efXOjkj0f14byp0PQFzQ3CveuEBMdkZMWxvr3q/0o1XcISwQz65zWHb7KM0nqfN8ps0zeJJIDMNFadUV32Gj3lqXWr19lwCt1UHqmXG7wZyouJsr6e4dQP+SJ+coakiluAgeH7ZONKc0qNJkqZH9ogywL0aP3X0A0BtAsLZWQl1GN1pWPIGwgWsxLkgO8/XVNKRkPRQy0dWwkw4JOYOPc/KkueS31z19AhV3cqNJRpR+Hw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(186003)(71200400001)(66946007)(6916009)(31686004)(31696002)(64756008)(2906002)(76116006)(86362001)(66446008)(36756003)(66556008)(66476007)(53546011)(8936002)(122000001)(6506007)(6512007)(316002)(4326008)(5660300002)(6486002)(508600001)(83380400001)(2616005)(8676002)(38100700002)(54906003)(38070700005)(26005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WFRqK2VtbXNlb0tSSHlXTU1xbmVyUDN3cUlNa3ozUG9MNHB4V1dhU242cEky?=
 =?utf-8?B?bzk5NVo1dTdYVUgwYmV0NUoyd09WVGZsZU9xTUpOUUJwblpHQkpzNDRSK2g2?=
 =?utf-8?B?ZWhyaksycTBpRGlMVVhLS0xLd1lEWm53YTdDUWgveS9DTWdHbURwa2R2MkR4?=
 =?utf-8?B?NVdRdk5XbUM2YVZmMmQwSWdWVHRadGc1cTVid2FwWGRCN1RVV2RjUlNnbm5t?=
 =?utf-8?B?THBkSXlyMUZzbitNNG9iczRtbnZlYnk1ak9waGhwMzZUdlZoQzM2SGY4Nk85?=
 =?utf-8?B?eENKcWVRVDBvbi9sbXI1NGFCSTVldGJINlU0WFJpdVppcEgwYWNMVjhvV1hF?=
 =?utf-8?B?blNhZVVnUURQa2w0d2sxbDhNUjNxK2xkb0F0YWFDU1BTdGZlWlhHNlVQUGox?=
 =?utf-8?B?VHJVNE0zbE05TkUzV0UvVUJOM3NDTFFjUWZBWU5tSHZDUHRhVGF5U3VSeUl5?=
 =?utf-8?B?MlFwOU56WUVQdGdEcTRYNEVNQ0dxZWhHZ1Q4T0JzM3Fjd0l4Q251TUVsZXpI?=
 =?utf-8?B?SEp4aGsrbDNjblV2ejliOWk3T3FrTnB4cGprWFBrc3pnbzV1QWllOHVCcVNV?=
 =?utf-8?B?Z3dEQ2lpTkJFSDlVNC9PaEFiZE5YUXVlaVBuT29Pekp3OUl2UTBXTDlKeFNH?=
 =?utf-8?B?MnZ2RUhxbEViMy9NYlFZbVQ0QU1XR3lGYlFxdXFtRlJRMElSbVlwbUI0b3dw?=
 =?utf-8?B?eWZlcDhLWmxGdTRHMlF0YmRCU0tKUFN5MmpiZnFieGpzV1RnSUgxZURaSVpi?=
 =?utf-8?B?MFg2REtScFc3VkRkSGNNTzNYU2Q0aWpkTjRCMGd6cmpwQ0J6bnZtdHRRbXFm?=
 =?utf-8?B?dXhjK25XaHgyQ2RncTRxYTZHVVM3ZVBQQTBVem1TNDZJWGhvZFozam9YUVdj?=
 =?utf-8?B?dEZRNkxkQVhkY3A4alhoZzdMYTJxTFp2T0lxSFR3OHBLT3MwODJqOXdadkZG?=
 =?utf-8?B?ZTFLOWlBck52Y3Z2NnpqRS9QMTQ1a29teEpuQldJL21SOFVjZ3cwQS9PZ2Ez?=
 =?utf-8?B?R21JZDBvelZwMjJrTWZhTXMySUYzWkd5SlpTTUpRQjlhblpiL1U1VVJhRXkz?=
 =?utf-8?B?VDFlWVpkQmQ4RFZvQlFyaXN1bXIvSFpkTXVsblJYcmthTmZWVCttRUt0RmU2?=
 =?utf-8?B?dFoxUzEyY1JRdUV5OS9XcDB3UGdzQ0tLSzBDS2dpM1d6bUJwcXVkSVdXZ2gv?=
 =?utf-8?B?R25VTXpxRUdFMEJ0TnpMYXRQelpkank2dFpUWUhQR1V0anZsbEVXSGZ2VXJt?=
 =?utf-8?B?TFl1ZlJGT21laWhrM0VwajN5ejhEeGpvM1ZSVHBKUGVnaGpHVWVKVmVYNVJo?=
 =?utf-8?B?cVlpWDd4Mks4OVJxWlg1cUt6VHYwa3Q2WXo1d2RGZlZZRnQwaWhwYUlJSUIx?=
 =?utf-8?B?Y3diWmZzY1JCUitQSkhteTNKdzI0OXY0enJXQko3bjYrNC84d1RPbmtGUE9y?=
 =?utf-8?B?cTE1UVArR3UxWHBUcGgrWGwveko2R2tnekZ3eHNqS0NGK3VhRUJvMitBRWJo?=
 =?utf-8?B?UVdCZDdQckVvdkVOU09TaVN0MzRBK25samI5UTFtS0EyUHBVb1Q2Uy9GeCsx?=
 =?utf-8?B?M1F4c2paYkJGZCtwR0dtUG80dXgzZEJyRWtmMTRHdE9IOVJhM1NOTlI2MUpJ?=
 =?utf-8?B?YTQ5ZzM2TURCdVp3ZDV2TTFTU1hRZ1JlT2lpeVcyNXIveURqSXpZNitLOGo1?=
 =?utf-8?B?V2NpVmZLUUZUdjR5YkhHR1RGWFo1c1ZxSVRrc2VML2pzTVkyQVBEdk1EbXRL?=
 =?utf-8?Q?E0M84EWCNqzhrJRJaY=3D?=
Content-ID: <D1179944BE9F1045977BEE3BAC365FCC@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8373ea87-cda3-4863-c475-08d98da683e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2021 17:34:16.5323 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4yKXX2ZuKdZ69iQZVM4ghnpgkB3IXlRp47Hki08Y/Ij2B/Ybzqav1lGAbm63TVmJ2WThl1gjcog5Z2OKsimfaxLAsd12njkYie5Ug4aNatE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1822
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH v2 4/9] ice: introduce
 ice_ptp_init_phc function
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

T24gMTAvMTIvMjAyMSAxOjIzIEFNLCBQYXVsIE1lbnplbCB3cm90ZToNCj4gRGVhciBKYWNvYiwN
Cj4gDQo+IA0KPiBUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4NCj4gDQo+IEFtIDEyLjEwLjIxIHVt
IDAzOjA3IHNjaHJpZWIgSmFjb2IgS2VsbGVyOg0KPj4gV2hlbiB3ZSBlbmFibGUgc3VwcG9ydCBm
b3IgRTgyMiBkZXZpY2VzLCB0aGVyZSBhcmUgc29tZSBhZGRpdGlvbmFsDQo+PiBzdGVwcyByZXF1
aXJlZCB0byBpbml0aWFsaXplIHRoZSBQVFAgaGFyZHdhcmUgY2xvY2suIFRvIG1ha2UgdGhpcyBl
YXNpZXINCj4+IHRvIGltcGxlbWVudCBhcyBkZXZpY2Utc3BlY2lmaWMgYmVoYXZpb3IsIHJlZmFj
dG9yIHRoZSByZWdpc3RlciBzZXR1cHMNCj4+IGluIGljZV9wdHBfaW5pdF9vd25lciB0byBhIG5l
dyBpY2VfcHRwX2luaXRfcGhjIGZ1bmN0aW9uIGRlZmluZWQgaW4NCj4+IGljZV9wdHBfaHcuYw0K
Pj4NCj4+IFRoaXMgZnVuY3Rpb24gd2lsbCBoYXZlIGEgY29tbW9uIHNlY3Rpb24sIGFuZCBhbiBl
ODEwIHNwZWNpZmljDQo+PiBzdWItaW1wbGVtZW50YXRpb24uDQo+Pg0KPj4gVGhpcyB3aWxsIGVu
YWJsZSBlYXNpbHkgZXh0ZW5kaW5nIHRoZSBmdW5jdGlvbmFsaXR5IHRvIGNvdmVyIHRoZSBFODIy
DQo+PiBzcGVjaWZpYyBzZXR1cCByZXF1aXJlZCB0byBpbml0aWFsaXplIHRoZSBoYXJkd2FyZSBj
bG9jayBnZW5lcmF0aW9uDQo+PiB1bml0LiBJdCBhbHNvIG1ha2VzIGl0IGNsZWFyIHdoaWNoIHN0
ZXBzIGFyZSBFODEwIHNwZWNpZmljIHZzIHdoaWNoIG9uZXMNCj4+IGFyZSBuZWNlc3NhcnkgZm9y
IGFsbCBpY2UgZGV2aWNlcy4NCj4+DQo+PiBTaWduZWQtb2ZmLWJ5OiBKYWNvYiBLZWxsZXIgPGph
Y29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4+IC0tLQ0KPj4gICBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX3B0cC5jICAgIHwgMzggKysrKysrKysrLS0tLS0tLS0tLS0tDQo+PiAg
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwX2h3LmMgfCAzNCArKysrKysr
KysrKysrKysrKysNCj4+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHBf
aHcuaCB8ICAxICsNCj4+ICAgMyBmaWxlcyBjaGFuZ2VkLCA1MiBpbnNlcnRpb25zKCspLCAyMSBk
ZWxldGlvbnMoLSkNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV9wdHAuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRw
LmMNCj4+IGluZGV4IDE1NTg0MjQ0N2ViZS4uNGZmZmFlMzQ1YmY5IDEwMDY0NA0KPj4gLS0tIGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAuYw0KPj4gKysrIGIvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAuYw0KPj4gQEAgLTE4MTUsMjQgKzE4MTUs
MTQgQEAgc3RhdGljIGludCBpY2VfcHRwX2luaXRfb3duZXIoc3RydWN0IGljZV9wZiAqcGYpDQo+
PiAgIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBpY2VfcGZfdG9fZGV2KHBmKTsNCj4+ICAgCXN0cnVj
dCBpY2VfaHcgKmh3ID0gJnBmLT5odzsNCj4+ICAgCXN0cnVjdCB0aW1lc3BlYzY0IHRzOw0KPj4g
LQl1OCBzcmNfaWR4Ow0KPj4gICAJaW50IGVycjsNCj4+ICAgDQo+PiAtCXdyMzIoaHcsIEdMVFNZ
Tl9TWU5DX0RMQVksIDApOw0KPj4gLQ0KPj4gLQkvKiBDbGVhciBzb21lIEhXIHJlc2lkdWUgYW5k
IGVuYWJsZSBzb3VyY2UgY2xvY2sgKi8NCj4+IC0Jc3JjX2lkeCA9IGh3LT5mdW5jX2NhcHMudHNf
ZnVuY19pbmZvLnRtcl9pbmRleF9vd25lZDsNCj4+IC0NCj4+IC0JLyogRW5hYmxlIHNvdXJjZSBj
bG9ja3MgKi8NCj4+IC0Jd3IzMihodywgR0xUU1lOX0VOQShzcmNfaWR4KSwgR0xUU1lOX0VOQV9U
U1lOX0VOQV9NKTsNCj4+IC0NCj4+IC0JLyogRW5hYmxlIFBIWSB0aW1lIHN5bmMgKi8NCj4+IC0J
ZXJyID0gaWNlX3B0cF9pbml0X3BoeV9lODEwKGh3KTsNCj4+IC0JaWYgKGVycikNCj4+IC0JCWdv
dG8gZXJyX2V4aXQ7DQo+PiAtDQo+PiAtCS8qIENsZWFyIGV2ZW50IHN0YXR1cyBpbmRpY2F0aW9u
cyBmb3IgYXV4aWxpYXJ5IHBpbnMgKi8NCj4+IC0JKHZvaWQpcmQzMihodywgR0xUU1lOX1NUQVQo
c3JjX2lkeCkpOw0KPj4gKwllcnIgPSBpY2VfcHRwX2luaXRfcGhjKGh3KTsNCj4+ICsJaWYgKGVy
cikgew0KPj4gKwkJZGV2X2VycihkZXYsICJGYWlsZWQgdG8gaW5pdGlhbGl6ZSBQSEMsIGVyciAl
ZFxuIiwNCj4gDQo+IFRoYW5rIHlvdSBmb3IgYWRkaW5nIGxvZ2dpbmcuIEZvciB1c2VycyBpdOKA
mWQgYmUgZ3JlYXQsIGlmIHRoZSBtZXNzYWdlIA0KPiBjb250YWluZWQgc29tZSBzb2x1dGlvbiB0
byB0aGUgcHJvYmxlbS4gU29tZXRoaW5nIGxpa2UgKG5vIGlkZWEgaWYgDQo+IHRydWUpOiBUaGUg
aGFyZHdhcmUgaXMgYnJvY2tlbiBhbmQgd29u4oCZdCB3b3JrLCBwbGVhc2UgY2hlY2sgd2l0aCB0
aGUgdmVuZG9yLg0KPiANCg0KVGhlcmUgYXJlIG1hbnkgcHJpbnRzIHdpdGhpbiB0aGlzIGRyaXZl
ciBhbmQgdGhyb3VnaG91dCB0aGUga2VybmVsIG9mDQp0aGlzIG5hdHVyZSB3aGljaCBzaW1wbHkg
cmVwb3J0IGFuIGVycm9yLiBXaGlsZSBpbiBzb21lIGNhc2VzIGl0IG1heQ0KbWFrZSBzZW5zZSB0
byBhZGQgYW4gYWRkaXRpb25hbCBtZXNzYWdlIGFib3V0IHdoYXQgY2FuIGJlIGF0dGVtcHRlZCB0
bw0KcmVjb3ZlciwgSSBkb24ndCBiZWxpZXZlIGl0IGlzIGFjY2VwdGVkIHByYWN0aWNlIG9yIGRl
c2lyYWJsZSB0byBwdXQNCnN1Y2ggYSBnZW5lcmljIHN0YXRlbWVudCBpbnRvIGFuIGVycm9yIG1l
c3NhZ2UuDQoNCj4+ICsJCQllcnIpOw0KPj4gKwkJcmV0dXJuIGVycjsNCj4+ICsJfQ0KPj4gICAN
Cj4+ICAgCS8qIEFjcXVpcmUgdGhlIGdsb2JhbCBoYXJkd2FyZSBsb2NrICovDQo+PiAgIAlpZiAo
IWljZV9wdHBfbG9jayhodykpIHsNCj4+IEBAIC0xODc3LDEyICsxODY3LDE2IEBAIHN0YXRpYyBp
bnQgaWNlX3B0cF9pbml0X293bmVyKHN0cnVjdCBpY2VfcGYgKnBmKQ0KPj4gICB9DQo+PiAgIA0K
Pj4gICAvKioNCj4+IC0gKiBpY2VfcHRwX2luaXQgLSBJbml0aWFsaXplIHRoZSBQVFAgc3VwcG9y
dCBhZnRlciBkZXZpY2UgcHJvYmUgb3IgcmVzZXQNCj4+ICsgKiBpY2VfcHRwX2luaXQgLSBJbml0
aWFsaXplIFBUUCBoYXJkd2FyZSBjbG9jayBzdXBwb3J0DQo+PiAgICAqIEBwZjogQm9hcmQgcHJp
dmF0ZSBzdHJ1Y3R1cmUNCj4+ICAgICoNCj4+IC0gKiBUaGlzIGZ1bmN0aW9uIHNldHMgZGV2aWNl
IHVwIGZvciBQVFAgc3VwcG9ydC4gVGhlIGZpcnN0IHRpbWUgaXQgaXMgcnVuLCBpdA0KPj4gLSAq
IHdpbGwgY3JlYXRlIGEgY2xvY2sgZGV2aWNlLiBJdCBkb2VzIG5vdCBjcmVhdGUgYSBjbG9jayBk
ZXZpY2UgaWYgb25lDQo+PiAtICogYWxyZWFkeSBleGlzdHMuIEl0IGFsc28gcmVjb25maWd1cmVz
IHRoZSBkZXZpY2UgYWZ0ZXIgYSByZXNldC4NCj4+ICsgKiBTZXR1cCB0aGUgZGV2aWNlIGZvciBp
bnRlcmFjdGluZyB3aXRoIHRoZSBQVFAgaGFyZHdhcmUgY2xvY2sgZm9yIGFsbA0KPiANCj4gTml0
OiBUaGUgdmVyYiBpcyBzcGVsbGVkIHdpdGggYSBzcGFjZTogU2V0IHVwDQo+IA0KDQoNCkFoLiBO
b3Qgc3VyZSBpZiBpdHMgYSBzdHlsZSBndWlkZSB0aGluZyBvciBzaW1wbHkgY2hhbmdpbmcgdXNh
Z2UsIGJ1dA0KSSd2ZSBkZWZpbml0ZWx5IHNlZW4gbWFueSB1c2VzIG9mICJzZXR1cCIgYXMgYSB2
ZXJiLiBBdCBsZWFzdCBpbiBrZXJuZWwNCiJzZXQgdXAiIGFwcGVhcnMgbW9yZSBmYXZvcmVkIG92
ZXJhbGwuDQoNCklmIEkgbmVlZCB0byByZS1zcGluIHRoaXMgZm9yIGEgZnVuY3Rpb25hbCByZWFz
b24sIEkgY2FuIGZpeCBpdC4NCg0KPj4gKyAqIGZ1bmN0aW9ucywgYm90aCB0aGUgZnVuY3Rpb24g
dGhhdCBvd25zIHRoZSBjbG9jayBoYXJkd2FyZSwgYW5kIHRoZQ0KPj4gKyAqIGZ1bmN0aW9ucyBj
b25uZWN0ZWQgdG8gdGhlIGNsb2NrIGhhcmR3YXJlLg0KPj4gKyAqDQo+PiArICogVGhlIGNsb2Nr
IG93bmVyIHdpbGwgYWxsb2NhdGUgYW5kIHJlZ2lzdGVyIGEgcHRwX2Nsb2NrIHdpdGggdGhlDQo+
PiArICogUFRQXzE1ODhfQ0xPQ0sgaW5mcmFzdHJ1Y3R1cmUuIEFsbCBmdW5jdGlvbnMgYWxsb2Nh
dGUgYSBrdGhyZWFkIGFuZCB3b3JrDQo+PiArICogaXRlbXMgdXNlZCBmb3IgYXN5bmNocm9ub3Vz
IHdvcmsgc3VjaCBhcyBUeCB0aW1lc3RhbXBzIGFuZCBwZXJpb2RpYyB3b3JrLg0KPj4gICAgKi8N
Cj4+ICAgdm9pZCBpY2VfcHRwX2luaXQoc3RydWN0IGljZV9wZiAqcGYpDQo+PiAgIHsNCj4+IEBA
IC0xODk1LDcgKzE4ODksOSBAQCB2b2lkIGljZV9wdHBfaW5pdChzdHJ1Y3QgaWNlX3BmICpwZikN
Cj4+ICAgCWlmICghaWNlX2lzX2U4MTAoaHcpKQ0KPj4gICAJCXJldHVybjsNCj4+ICAgDQo+PiAt
CS8qIENoZWNrIGlmIHRoaXMgUEYgb3ducyB0aGUgc291cmNlIHRpbWVyICovDQo+PiArCS8qIElm
IHRoaXMgZnVuY3Rpb24gb3ducyB0aGUgY2xvY2sgaGFyZHdhcmUsIGl0IG11c3QgYWxsb2NhdGUg
YW5kDQo+PiArCSAqIGNvbmZpZ3VyZSB0aGUgUFRQIGNsb2NrIGRldmljZSB0byByZXByZXNlbnQg
aXQuDQo+PiArCSAqLw0KPj4gICAJaWYgKGh3LT5mdW5jX2NhcHMudHNfZnVuY19pbmZvLnNyY190
bXJfb3duZWQpIHsNCj4+ICAgCQllcnIgPSBpY2VfcHRwX2luaXRfb3duZXIocGYpOw0KPj4gICAJ
CWlmIChlcnIpDQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV9wdHBfaHcuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwX2h3
LmMNCj4+IGluZGV4IGI3NWFhN2JjZDQyMS4uOTc4N2Q0NWMyZmRiIDEwMDY0NA0KPj4gLS0tIGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHBfaHcuYw0KPj4gKysrIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHBfaHcuYw0KPj4gQEAgLTIxMyw2ICsy
MTMsMjEgQEAgaW50IGljZV9wdHBfaW5pdF9waHlfZTgxMChzdHJ1Y3QgaWNlX2h3ICpodykNCj4+
ICAgCXJldHVybiBlcnI7DQo+PiAgIH0NCj4+ICAgDQo+PiArLyoqDQo+PiArICogaWNlX3B0cF9p
bml0X3BoY19lODEwIC0gUGVyZm9ybSBFODEwIHNwZWNpZmljIFBIQyBpbml0aWFsaXphdGlvbg0K
Pj4gKyAqIEBodzogcG9pbnRlciB0byBIVyBzdHJ1Y3QNCj4+ICsgKg0KPj4gKyAqIFBlcmZvcm0g
RTgxMC1zcGVjaWZpYyBQVFAgaGFyZHdhcmUgY2xvY2sgaW5pdGlhbGl6YXRpb24gc3RlcHMuDQo+
PiArICovDQo+PiArc3RhdGljIGludCBpY2VfcHRwX2luaXRfcGhjX2U4MTAoc3RydWN0IGljZV9o
dyAqaHcpDQo+PiArew0KPj4gKwkvKiBFbnN1cmUgc3luY2hyb25pemF0aW9uIGRlbGF5IGlzIHpl
cm8gKi8NCj4+ICsJd3IzMihodywgR0xUU1lOX1NZTkNfRExBWSwgMCk7DQo+PiArDQo+PiArCS8q
IEluaXRpYWxpemUgdGhlIFBIWSAqLw0KPj4gKwlyZXR1cm4gaWNlX3B0cF9pbml0X3BoeV9lODEw
KGh3KTsNCj4+ICt9DQo+PiArDQo+PiAgIC8qKg0KPj4gICAgKiBpY2VfcHRwX3ByZXBfcGh5X3Rp
bWVfZTgxMCAtIFByZXBhcmUgUEhZIHBvcnQgd2l0aCBpbml0aWFsIHRpbWUNCj4+ICAgICogQGh3
OiBCb2FyZCBwcml2YXRlIHN0cnVjdHVyZQ0KPj4gQEAgLTg0MCwzICs4NTUsMjIgQEAgYm9vbCBp
Y2VfaXNfcGNhOTU3NV9wcmVzZW50KHN0cnVjdCBpY2VfaHcgKmh3KQ0KPj4gICANCj4+ICAgCXJl
dHVybiBmYWxzZTsNCj4+ICAgfQ0KPj4gKw0KPj4gKy8qKg0KPj4gKyAqIGljZV9wdHBfaW5pdF9w
aGMgLSBJbml0aWFsaXplIFBUUCBoYXJkd2FyZSBjbG9jaw0KPj4gKyAqIEBodzogcG9pbnRlciB0
byB0aGUgSFcgc3RydWN0DQo+PiArICoNCj4+ICsgKiBQZXJmb3JtIHRoZSBzdGVwcyByZXF1aXJl
ZCB0byBpbml0aWFsaXplIHRoZSBQVFAgaGFyZHdhcmUgY2xvY2suDQo+PiArICovDQo+PiAraW50
IGljZV9wdHBfaW5pdF9waGMoc3RydWN0IGljZV9odyAqaHcpDQo+PiArew0KPj4gKwl1OCBzcmNf
aWR4ID0gaHctPmZ1bmNfY2Fwcy50c19mdW5jX2luZm8udG1yX2luZGV4X293bmVkOw0KPj4gKw0K
Pj4gKwkvKiBFbmFibGUgc291cmNlIGNsb2NrcyAqLw0KPj4gKwl3cjMyKGh3LCBHTFRTWU5fRU5B
KHNyY19pZHgpLCBHTFRTWU5fRU5BX1RTWU5fRU5BX00pOw0KPj4gKw0KPj4gKwkvKiBDbGVhciBl
dmVudCBlcnIgaW5kaWNhdGlvbnMgZm9yIGF1eGlsaWFyeSBwaW5zICovDQo+PiArCSh2b2lkKXJk
MzIoaHcsIEdMVFNZTl9TVEFUKHNyY19pZHgpKTsNCj4+ICsNCj4+ICsJcmV0dXJuIGljZV9wdHBf
aW5pdF9waGNfZTgxMChodyk7DQo+PiArfQ0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwX2h3LmggYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pY2UvaWNlX3B0cF9ody5oDQo+PiBpbmRleCA0Y2ExYjZmYzViYTguLjA2ODE5ZDkxZTNiYyAx
MDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwX2h3
LmgNCj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwX2h3LmgN
Cj4+IEBAIC0yNyw2ICsyNyw3IEBAIGludCBpY2VfcHRwX3dyaXRlX2luY3ZhbF9sb2NrZWQoc3Ry
dWN0IGljZV9odyAqaHcsIHU2NCBpbmN2YWwpOw0KPj4gICBpbnQgaWNlX3B0cF9hZGpfY2xvY2so
c3RydWN0IGljZV9odyAqaHcsIHMzMiBhZGopOw0KPj4gICBpbnQgaWNlX3JlYWRfcGh5X3RzdGFt
cChzdHJ1Y3QgaWNlX2h3ICpodywgdTggYmxvY2ssIHU4IGlkeCwgdTY0ICp0c3RhbXApOw0KPj4g
ICBpbnQgaWNlX2NsZWFyX3BoeV90c3RhbXAoc3RydWN0IGljZV9odyAqaHcsIHU4IGJsb2NrLCB1
OCBpZHgpOw0KPj4gK2ludCBpY2VfcHRwX2luaXRfcGhjKHN0cnVjdCBpY2VfaHcgKmh3KTsNCj4+
ICAgDQo+PiAgIC8qIEU4MTAgZmFtaWx5IGZ1bmN0aW9ucyAqLw0KPj4gICBpbnQgaWNlX3B0cF9p
bml0X3BoeV9lODEwKHN0cnVjdCBpY2VfaHcgKmh3KTsNCj4+DQo+IA0KPiBUaGUgcmVzdCBsb29r
cyBnb29kOg0KPiANCj4gUmV2aWV3ZWQtYnk6IFBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5t
cGcuZGU+DQo+IA0KDQpUaGFua3MgZm9yIHRoZSByZXZpZXchDQoNCj4gDQo+IEtpbmQgcmVnYXJk
cywNCj4gDQo+IFBhdWwNCj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFu
QG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtd2lyZWQtbGFuCg==
