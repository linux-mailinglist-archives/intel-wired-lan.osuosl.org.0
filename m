Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C79B311703
	for <lists+intel-wired-lan@lfdr.de>; Sat,  6 Feb 2021 00:28:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 263A086DBB;
	Fri,  5 Feb 2021 23:28:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oLSoBhjpBSJ1; Fri,  5 Feb 2021 23:28:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 03D0086E6B;
	Fri,  5 Feb 2021 23:28:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 18A9A1BF2E5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Feb 2021 23:28:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D39982E14A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Feb 2021 23:28:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5LZOEzjy6RSw for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Feb 2021 23:28:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 597072E12E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Feb 2021 23:28:51 +0000 (UTC)
IronPort-SDR: I2vWQcK7yW93BqzTnlboLxrCguzdClhJi01EibwJxWbEaxZ/M3bIrg0+c3NPVME47CVpBC8OWi
 hIibAWe76boQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9886"; a="266330078"
X-IronPort-AV: E=Sophos;i="5.81,156,1610438400"; d="scan'208";a="266330078"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 15:28:50 -0800
IronPort-SDR: Nbs1Ib2ZaCwB2x10e8PWSLn9OXB2DtXabA8fKhe4xqdA0NBnFs+bW3g6f34IW3lqW5fi+nkK6X
 In5lWPHJctlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,156,1610438400"; d="scan'208";a="409278660"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 05 Feb 2021 15:28:50 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 5 Feb 2021 15:28:50 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 5 Feb 2021 15:28:50 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 5 Feb 2021 15:28:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rgt+zv/tJiB3YCDwYo7JC1uXRvqHPkVzdlmMKD3ZennVWXVqT1QFjFm57bHhsOiaqnYla3Gkgwa050ksoeM1yXfMie24BkjrsNTSZSFOyEAGp1M7SbIjvDPOBmoTieF+0sU7WQf+gSbhtscDKAetFv/oIlLC6JIW6Aa1NXzefCjVlXU9jftYBNnyTjEZ0bjlNBBiRyeKX9o+c0ts4lykP/z/7XtBjSofB1TcDQLZXaRuCbkUexpj21UcDAtsPc3f4Dl1KfZttIQnjUoF+rV+Lm9ODzeF5r3fQxp0jMT6Xl4nPpfcCGDd2pM3JsGdoJK3TcV/gaF36HZKzidjl5TY8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GjvkItkdbmJ7NhOuuySnefLeDsIiuColRube7cnOM98=;
 b=jz3choDlifZEzRde7fHqdqZgXBPFTcsr5CAF5ThTaeW1Celk7gimDEvimuCKPDnixTCaWTDjtl6ir7qDIZ9iKLeI391HxXczzVZT+vH1Qg+5V1kRJA/7WmGVr0x/zid44fCq8xMtcQsmZcP/RdPnx0CNcvQiF47vGcFt57m5oZCsrwg9jhKJ8oewtuTJUei2chHARxOivAD+NTOqvY2mdQb0vofLhYAil8zFPJHOIOVdJwdjSCjCGVhrWLSy8O8BnP9P+Kp8aEE6fTvJ1zp96q/WO4WhyKcKEh52J6b/8u/joozn9RPV2WPv/PlMOSFAnlI/qx9jZRdHG42FECGuhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GjvkItkdbmJ7NhOuuySnefLeDsIiuColRube7cnOM98=;
 b=WI0dPft/KedKd/tBOL2eFTZe8Iozpi4D3vnY8Sdw2xthDGVi8tRWq2xW1PZ1jPibh+VHid/n8kR9vPidSguxJX7pqm4HlFuRg/0/l/JI/ZCWSqvvHu4eUCJjgxFJlRQ8SnoTC084OO8L10HrmB8TD80GmW7kGRS6x4mu5A8IeYs=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB5068.namprd11.prod.outlook.com (2603:10b6:806:116::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3805.19; Fri, 5 Feb
 2021 23:28:49 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cccb:4e77:41e3:d02a]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cccb:4e77:41e3:d02a%5]) with mapi id 15.20.3805.027; Fri, 5 Feb 2021
 23:28:49 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Maloszewski, Michal" <michal.maloszewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix NULL ptr dereference
 on VSI filter sync
Thread-Index: AQHW+wl04DC62k5yHEq0VXTGWbA2jKpKNzsA
Date: Fri, 5 Feb 2021 23:28:49 +0000
Message-ID: <1138c5f3d7eb757638b321d23e28ea79708005a1.camel@intel.com>
References: <1612439746-27796-1-git-send-email-michal.maloszewski@intel.com>
In-Reply-To: <1612439746-27796-1-git-send-email-michal.maloszewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 89d35ad1-85b9-4fb4-ed22-08d8ca2dcaae
x-ms-traffictypediagnostic: SA2PR11MB5068:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB5068AD342F0AA04F4654C3AAC6B29@SA2PR11MB5068.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: W80/GAVW7DReisIMLBs7SLXaR9TN16YNs4LJz+DNMTgQgS1ZgHrw+hdYEEB1sH6C59AHf0zI8Ly+r33ttGdhQPFx8V5eNEPFwlcz37+h1A/rdAwynlbvS4Jq67GoOPOgtq+Lw0WWiamUZusojF4Lvz8ke8vJEOqfYBbhB2S6cGoQ7fOJ+6x7tBf/+VRKuoC1NFcskG064gesL5LRKnKt1YM3MpJUJG+4Jl/rck9oVFdYPHy1VwCYNNw2R5AYf5xzaNxUKRG6uEolwsLmmahutxr40QF4nsQazatIIGtXo+w8P+Tj2r5/EdWIEONlQTZhp0mKcBTiOzZimcNJAIC3Z/HRH8aWjlIq7D/tX4sTueU/fGOEFKfsKiXQJ4bc0griqYhd8qO0feqi/dKpva1MuUu4twiMMez5u7gTpYh9BxXq7ZaM1zktJCZRgNGAUnlJoSPN9OcOfv9QmHDzq0icPjPZT7jrkE5DJbNgc8J81WGs/3K+unHx899zm1bJPiTrwnz3ZVEjLZU8kAz5K/ouHUqPnqaXiIllhTdSUBFe6ePoksEvYSL4gmuT49YP9rbQ/qYQzsqLZm/4hPKnEAJVnqVvdDKu/Eifshd8rrFhCy1kKjCLpPnp0817I5EfVs3XAo1d3MzfcyF4sw8eJSlLNw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(366004)(396003)(346002)(39860400002)(376002)(2616005)(5660300002)(966005)(26005)(6486002)(186003)(91956017)(6512007)(478600001)(71200400001)(66446008)(66476007)(66556008)(64756008)(8936002)(8676002)(36756003)(86362001)(76116006)(66574015)(66946007)(83380400001)(2906002)(6506007)(316002)(110136005)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?VkJBbXhUZUpsQ3ZOQUZiWXJxRWtGeUxoR3pVemE4ekFvV21wZGtidWRBeG1R?=
 =?utf-8?B?aXByZlVldXdJYmEvbFlMWXVqZy9WWVdjeDdPQkM4UXpmS3hCdXVNK3AwaTdI?=
 =?utf-8?B?QWkzVzhMRFUxZUhjZWZ4akRINW8raTJiamNDODN5VzQ1cHNvdXMwSk85OThY?=
 =?utf-8?B?SFh1ZUdyRmhnQXFORnRXeW1MSTEvWWk0TUlZQjRzWml6UUxWNWRwaEpEMGQ2?=
 =?utf-8?B?bmlXeVB2M09OcE5hMzhTS1NVNEtIWUR3UmxFR0hQRnA2c0ljQmg5Y1hPQjNy?=
 =?utf-8?B?TnhVSTRBeERpRG5obXM0MzVxOE1KRkxJU2dFQ3hheWpOb3NiUmVxazNHWGlU?=
 =?utf-8?B?SHdtNGFWS1MwcUhjU3NHeFEzMlBHUHM5bjBIb050U1A0OWE5TnMyZDNFajIw?=
 =?utf-8?B?UGRDNnhVZlNKL3RKUnF6dktmUkNld2EwMG1NVkF6Q2JxNHFpUXBpNzJEdXM1?=
 =?utf-8?B?OUFEeDNqWnNxcG9iUExhaDVKZjExaEN6YjVsWE5KeGdQZ0JPOGt2WExKc3h4?=
 =?utf-8?B?VENCVFRsaElMS21SR2NZVHhJUzc2QVVid1phaFFqalVlRzhwSjZCVGNGN1Z3?=
 =?utf-8?B?YXI4eUNpdktidjlhdEwzbjVVQU40VHNTZ3dtV3J0SUw1dlR6bUkyMm03STk3?=
 =?utf-8?B?eWtidFhMRVVYTndtcVlsWDM1SHlQVnk2Ly9LK0M3THZHZHdlWUpwZHgvd1Ew?=
 =?utf-8?B?b0JPYzJNTm1uQ05rVkZnajJjSmtYS1NEdmptTUY2NGRNZU1DZ0JtRURuS0Jr?=
 =?utf-8?B?cGFXdVFIRnptVDl0ekg5a2tzY1lvY1NWNm5rc0VBSVNpU0J0Y2lrbWlZKzVM?=
 =?utf-8?B?QkFOZnJLa2RLWEpJK2Z1ZjBpcXl6dU41UFVVSXlxZHhzS2xDcWZ3SDJrRGwy?=
 =?utf-8?B?THFqNHRRVEpQbWhEQXpVUXhNRkwrcUJpRjJzRm4zcWtSMXN5MnlzVHplLzJl?=
 =?utf-8?B?SDlrYjVETmxNVjJjM1owUXcvOENoQXFWRVNnUmVuNmlNNW5MUi9RSVc5MktE?=
 =?utf-8?B?Ykt4KzlaSDBSUWp1NS9EenlENUJSSjNGcWlRY3p1WGdTMTNRUUhFSHkvaDVz?=
 =?utf-8?B?S2I2Q2NFMXZTZUlOMmNVc0hvSlZ6YW9zWnJWbXp2RStBWVIwS3I2ZFB2Vmth?=
 =?utf-8?B?bmVobWx6ZDVEaVNSVnVOb1JaYnZnNGpxak1acmlMTWZ0d0toRjU2UktBN01C?=
 =?utf-8?B?dE10TXJsNUU4UDNCY0JKVForMy9tVFg4M2F4QVUyZER6WlkwSzFkdGtGU1ln?=
 =?utf-8?B?SVM0aGtoUmlzdnZnRXhOcWtUNUhMaXUwbXVaTk9tblFEbm0wZHc3Mm5oN1hW?=
 =?utf-8?B?anJyRitJUFhBcEtDQnlqN2pvM24wYkFDTEFkYkhBTUpSVlJDcGZnME9OaGtL?=
 =?utf-8?B?N1gzOVlLWXJES0ZOaW5FdUFMYThUOUhrV1d5ZUNBSjVWWlBLc3B0aWJXRkpz?=
 =?utf-8?B?L3k4dFU2c1hlMnZDTWxVeUhibm5uRXo4WG02Qnh1VTY1bXJMN0R6dzFZU0pv?=
 =?utf-8?B?RjQ3SjQ4L2pSbmt0bFV4ZitDZmFZQS9DT2pUeVZvMTVJQnp6amlrVzhUV2Ra?=
 =?utf-8?B?RGNVZnpvWHZJWW1adTE3MVhmZ2J4STY1SVpSb3BUQlFiVll0akZNa2djbHdS?=
 =?utf-8?B?TkFyTE9lZUhzUXZpemdTcHNmc0JpU0d3eHBtVnE5T0s0Tmk0bTJxRG9HRW44?=
 =?utf-8?B?MnBBejNqNnZnUXJDWkNhWGxydW10azdiZnVwdmVFTnlQOHhTdGI0QmVBRG5w?=
 =?utf-8?B?YWJzaWQ3bkJCUG5GaE5jVWc2M1R6UjNUWnhDQy9VSGRQMTU2Y2JLeERZN2dr?=
 =?utf-8?B?Vm1aR00wQnNrUlc0NktPUT09?=
Content-ID: <C7D5CF5BF4949444A01499DAE826A8CF@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89d35ad1-85b9-4fb4-ed22-08d8ca2dcaae
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2021 23:28:49.4316 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8TDywqds7azxPc1XZuT6pEPntDUxczx2JZMHZz3mmax/s99BlJMNL8PiqR+N9xTWnJ4YB9b64fqYXJethAAKwDBfRF6wQx3LEX57HSMhYtU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5068
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix NULL ptr dereference
 on VSI filter sync
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

T24gVGh1LCAyMDIxLTAyLTA0IGF0IDExOjU1ICswMDAwLCBNaWNoYcWCIE1hxYJvc3pld3NraSB3
cm90ZToNCj4gUmVtb3ZlIHRoZSByZWFzb24gb2YgbnVsbCBwb2ludGVyIGRlcmVmZXJlbmNlIGlu
IHN5bmMgdnNpIGZpbHRlcnMuDQo+IEFkZGVkIG5ldyBJNDBFX1ZTSV9SRUxFQVNJTkcgZmxhZyB0
byBzaWduYWxpemUgZGVsZXRpbmcgYW5kIHJlbGVhc2luZw0KPiBvZiBWU0kgcmVzb3VyY2VzIHRv
IHN5bmMgdGhpcyB0aHJlYWQgd2l0aCBzeW5jIGZpbHRlcnMgc3VidGFzay4NCj4gV2l0aG91dCB0
aGlzIHBhdGNoIGl0IGlzIHBvc3NpYmxlIHRvIHN0YXJ0IHVwZGF0ZSB0aGUgdnNpIGZpbHRlciBs
aXN0DQo+IGFmdGVyIHZzaSBpcyByZW1vdmVkLCB0aGF0J3MgY2F1c2luZyBhIGtlcm5lbCBvb3Bz
Lg0KPiANCj4gRml4ZXM6IDE3NjUyYzYzMzZmZCgiaTQwZTogcmVtb3ZlIHVudXNlZCBhcmd1bWVu
dCIpDQo+IFJldmlld2VkLW9uOiBodHRwczovL2dpdC1hbXItMS5kZXZ0b29scy5pbnRlbC5jb20v
Z2Vycml0LzI4MjMyNg0KDQpUaGUgUmV2aWV3ZWQtb24gc2hvdWxkIG5vdCBiZSBpbmNsdWRlZC4N
Cg0KPiBSZXZpZXdlZC1ieTogUHJ6ZW15c2xhdyBQYXR5bm93c2tpIDxwcnplbXlzbGF3eC5wYXR5
bm93c2tpQGludGVsLmNvbT4NCj4gUmV2aWV3ZWQtYnk6IEZpamFsa293c2tpLCBXaXRvbGRYIDx3
aXRvbGR4LmZpamFsa293c2tpQGludGVsLmNvbT4NCj4gUmV2aWV3ZWQtYnk6IEphcm9zbGF3IEdh
d2luIDxqYXJvc2xhd3guZ2F3aW5AaW50ZWwuY29tPg0KPiBSZXZpZXdlZC1ieTogQWxla3NhbmRy
IExva3Rpb25vdiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYt
Ynk6IEdyemVnb3J6IFN6Y3p1cmVrIDxncnplZ29yenguc3pjenVyZWtAaW50ZWwuY29tPg0KPiBT
aWduZWQtb2ZmLWJ5OiBNaWNoYWwgTWFsb3N6ZXdza2kgPG1pY2hhbC5tYWxvc3pld3NraUBpbnRl
bC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlLmgg
ICAgICB8IDEgKw0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4u
YyB8IDUgKysrLS0NCj4gIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQ0KPiAgbW9kZSBjaGFuZ2UgMTAwNjQ0ID0+IDEwMDc1NSBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pNDBlL2k0MGUuaA0KPiAgbW9kZSBjaGFuZ2UgMTAwNjQ0ID0+IDEwMDc1NQ0K
PiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jDQoNCkkgYmVsaWV2
ZSB0aGlzIHdhcyB1bmludGVuZGVkPw0KDQpFUlJPUjogZG8gbm90IHNldCBleGVjdXRlIHBlcm1p
c3Npb25zIGZvciBzb3VyY2UgZmlsZXMNCiMyNjogRklMRTogZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaTQwZS9pNDBlLmgNCg0KRVJST1I6IGRvIG5vdCBzZXQgZXhlY3V0ZSBwZXJtaXNzaW9u
cyBmb3Igc291cmNlIGZpbGVzDQojNDA6IEZJTEU6IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2k0MGUvaTQwZV9tYWluLmMNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5A
b3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4K
