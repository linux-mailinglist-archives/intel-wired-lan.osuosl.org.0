Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C9A3AD489
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Jun 2021 23:42:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C9728422F;
	Fri, 18 Jun 2021 21:42:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pXcfGCqB_uyb; Fri, 18 Jun 2021 21:42:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5B1EB84208;
	Fri, 18 Jun 2021 21:42:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A70861BF5A5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jun 2021 21:42:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9E20940621
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jun 2021 21:42:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jA0BKw_Do7ei for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Jun 2021 21:42:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1899440138
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jun 2021 21:42:11 +0000 (UTC)
IronPort-SDR: aMLeGCaKqF2yBWjTlh374u/FR6r0HUtoZq5tS1HUF4k9gMJcVeKVAow9S0gMrQKBduTY01/yRB
 jeqEtu+BIE2w==
X-IronPort-AV: E=McAfee;i="6200,9189,10019"; a="193755671"
X-IronPort-AV: E=Sophos;i="5.83,284,1616482800"; d="scan'208";a="193755671"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 14:42:08 -0700
IronPort-SDR: fMEOPPe3O5D9ydg4WvsE079JU4bdDhfAwTOFD3Bf/WSmG8TgZYFF2DXoCnOVP1ymSO0b3cVAjk
 EpPRTjdf7/ZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,284,1616482800"; d="scan'208";a="451533033"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 18 Jun 2021 14:42:06 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 18 Jun 2021 14:42:06 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Fri, 18 Jun 2021 14:42:06 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Fri, 18 Jun 2021 14:42:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j1rstPD8TLua6Bzfzumkzi+2sMd9kOdt8tdPTnwm3xMbNmhpW8s7fX5WQmj7xPFG9/gKnph9G2Kf5QQhTdRJCG/eznx63YT5gr5YzllXZ25FY/5gvmqLqYRN0z5FKotkMcMFIpYwQy/gZKDVYpkDDscTOBFN8sBXouGD6tJMvp/zS/MjpHPVdVNYbJ5Q56lL7v4JxIqrEq2NXQJinKQNHPCaXVbZD02gCp1v6qg1VtQvRPIwL5W8btHQI7kl81Of+W1fDW5iblDJYPq8Fg2SR4MAQ5LwR21v/uPtIFEe/40cKiuAAtnzXFaeW09ZG1QGerQQjCBoc3o62vhn41X70w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EFQwAl+3gMTUlyUQY9qt2yoQMyOGBgqqivbhKnapR9U=;
 b=UNRaVCgN595d1p4jhNKkO4fXnVqlezSbI14P8bfeC9UpFe559Dvwt5dZKr8COa1wI7N9LCBGj7XK1RIEggo9xO+71bQ3Y5ssME7Zgghm3G8mFFDaebO4Fov0fjpgqTEFn5OFRHBH1N+JF8hQr9/f5kET5K+rGUVsaYZPsTKOyZO6+jcHAe0r0sy1g3SwTIGpQ6vsIXfHYagB/rb9tDWrlbxWTIUWw0THYOnsgbU6wRkoYTKSa9gL0GNZEBQk4I9AuleacuBNGBRXx7aPg/QJ9rz22K5c2TY88nRMUBbnzYXwfEo/71PsqYt6F9NvLGYRoUvYHspfvnPOcROsODuYXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EFQwAl+3gMTUlyUQY9qt2yoQMyOGBgqqivbhKnapR9U=;
 b=VFC1VqwUOEeFImldeHfx9ojzCEPBxUot0ZQ7AlDrgmL+QPEa4LgJBBwzLfrOWPEPxlFgH3shKiUkPjkrYCRm7/poUcwGs0W0SmWOT61MXkqj1TV2wXq+rxJmMicnxOAJWBdaekS1Gc9JvFuVhCU6prKamjJIoE46eFELxg5SgGM=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA0PR11MB4525.namprd11.prod.outlook.com (2603:10b6:806:9d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.21; Fri, 18 Jun
 2021 21:42:04 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1%5]) with mapi id 15.20.4242.021; Fri, 18 Jun 2021
 21:42:04 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] iavf: Add trace while
 removing device
Thread-Index: AQHXZB63zDqJWojWA0qcjBMI03z9c6saTheA
Date: Fri, 18 Jun 2021 21:42:04 +0000
Message-ID: <57f776bcb6fbce788ea1528f0d967ff35d1f5ac8.camel@intel.com>
References: <20210618084730.20524-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20210618084730.20524-1-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4ccb39cb-7fac-40ab-12e6-08d932a1ea17
x-ms-traffictypediagnostic: SA0PR11MB4525:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA0PR11MB4525D64A30CE45CEB57A550AC60D9@SA0PR11MB4525.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:109;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: P8SlkiNTArKOrphhlgnymtvCGrxEKVoBfHevXps6+omsVwbvRnIqSrHf+PTzPfg0e8es5kbPnDfKiddpZxO5KJB4qz8DYk/MryUgUOrPO5uKVw6yVQH/IaYxDKsDujCcvBvOr3NAGP8Pi8m5lS94SFC/n7AChglfPDYgn2O5sZwriMf+LyREtvmarFTJCm+iFpgmf0hZ4OjK0ZAf/clMOkZGDS1pgyipDi6hINxNRTfKcZ07AM+lda1hwCFydJ/MiTEw0MH8+SUdcBjO3GSxeeRmtVbtveRfdeQpSgmm78JR8BAx9h/FaeQXWvGJbR+1YZOOe8TpqNccTWIdxE/5/YLZ4M4vcu2+nE4RvOF7+mxtIGbr4+dADuQim3CMmvFRlACJ9ZIYe4jb58hyWqJjr6nT1Wp7fi94dkIvoQbL4IMIK+P8gckb8y5UiIqu0R7ysdonlt8H96bJVN2YS8SsU6GW0/K9xbW6Hi8yIY4ow6ZyclEufWQo3fcPhY7dqZLUQLecLcFIPhRe2rheIyS9oY5h08e55e2nJ9n++0JI0abkD3U8zVZF/9psTy+g9lRh/45V5zsZjh0mvBUGizTNcYsfXyHiL2u3Mv4HwbbcV/o=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(136003)(346002)(376002)(366004)(39860400002)(6486002)(71200400001)(36756003)(316002)(76116006)(86362001)(8936002)(6512007)(478600001)(66476007)(91956017)(110136005)(5660300002)(186003)(66946007)(6506007)(8676002)(66556008)(2906002)(26005)(122000001)(38100700002)(66574015)(2616005)(66446008)(64756008)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RFpUTzFZczA1ek8yU09TNDF1VEhVS2UyR1YyMUVjelI4N1dkeStuVGJjMWll?=
 =?utf-8?B?SzM2Z0JHRVdjQkNBdUJZRktvVlY1MHluT2o0Zjg3QlRkdjBsMzRzOTZ1QVA4?=
 =?utf-8?B?d3MreEtiTDJKV3Z5VVdWZDJlOU5DWG9mUVcrTkVESU1YM1pBRzExTEo5Y056?=
 =?utf-8?B?V0ZPNEl6NDc1K1Y1TEczaVNycUMzcGZzMDVCVjJPWXd6N3o0dTBrNVZER2dG?=
 =?utf-8?B?d0tKSnA1VGRrZVkyTEphdk9vQU1tSkxHU0NHbEpCWFliUTExS05DMk5BYzdS?=
 =?utf-8?B?UVRUNDR6VzBOTEhTYURtbzFaS3EwTFZMSks4eWpaZGQ1U3IzMWllTWpPME85?=
 =?utf-8?B?R085RGw5aWkwT0tlMnpPV0xJSUFhanhrSmRTY3NDU3BBSk0vcCtmLzN6aFNF?=
 =?utf-8?B?dXdydk02MTJXV3ZtZ1hnREZCS1RQYlVmVUcvN1oyUE9zYWRjV0tpbW5ySXF1?=
 =?utf-8?B?L1Vrd3d0b09MK0VuT0dZS1RsanIvQWplcGZkUmROVW1ZcmtWM3hjKys4QUdB?=
 =?utf-8?B?cFYzTGtFc3pOQ2p1T1BXY3RHK2ZaUHNVekNLdWNMaEIzQnVaalU1OWgwUWRh?=
 =?utf-8?B?RllPbi9Jb2h0Z2svNWs3ZGxJbTRKR2xBY3g4RFFPYU9iY1RpVU9ZenFDRms3?=
 =?utf-8?B?WENTLzhQaUtYWUJLbExHWGVzTU1DRHJxNjZlQWNMc0VLTlQyWUJYdTF6a2Vz?=
 =?utf-8?B?K2htQ1dYTE5iUjMvZ1NpQUhKMVMzVDMwU0FxTUowc05WTXc0ZFdHcnB2SWlN?=
 =?utf-8?B?UTJ3WUJHdEtrbVZrdGhLcE91NDBkeDNoU1VoSHBqM2wyK1EzajFwOG5oM3dG?=
 =?utf-8?B?ZDhLNmFpbXVOM1djMVg0STg1QlljbHpMTDJqM0UwYm9tWnl2aVVrL0lQRU5k?=
 =?utf-8?B?OGg5NUFuMW4xaVBRRnNwMEEyMGFpNXlETW92L0hNWXJ4bzhhOTRrMWZZVkEz?=
 =?utf-8?B?RFYwNVhrT0VOYndVVDkvUWhxaEtKTWJiRUJkS0FSU1djRGh0NGxJRGxqNkMv?=
 =?utf-8?B?WlVCTU5laUM4ZVEyT05xNi9LcUk1U0hORG0zR1VFTGpYZG9ZU0ZTSEJaTmMw?=
 =?utf-8?B?TndYS1JIU2xWTGVxU0dsbDJ2SW56dEZMcTBmYXVvSEJrMEs4K0RUUDBjbUFR?=
 =?utf-8?B?NzdWa0JQanRVZHNiaHo1Um5GZExkdlR6UWF2cFllazE4YzdGektXT1FVVUNP?=
 =?utf-8?B?Z1hhUXlqY3N5RWxYK01DNXBqY3RoN1dLWFJrVm9Rc1F2UVVYRTlUeG5sRm5y?=
 =?utf-8?B?QitoS0pTTzdXOGw1TzliRWR5bTlDMXBod2NmVW52TURydUhHTmVJN1h2bVhz?=
 =?utf-8?B?SjRJUmhPTUhTS240V0ZhcXdEYStZZzZ1am5WeDAxeExJQzB2VjU2dGNJMTFk?=
 =?utf-8?B?L3lDWXBqUWhZaEpSOWVpRktsOFJ4NjIxa0sxWEQvMER6NUprQkVBd2x1b1V4?=
 =?utf-8?B?UFg2eDk1MHZLT2o4emVhTGJFekhCUk8ranJ4NzhXR3ZMUFQ0NjF3Z2VRQncv?=
 =?utf-8?B?dDhWQ0xURDRNNjJWMzZtOEdNSHdEZWV2SHhhWkFwalZjNmFHWFJydkZiWjhs?=
 =?utf-8?B?UnJTbTJTNU1pY3BjN1VMWHFpblR3dzF2TnZTOGhCY1lBTUhtUUk3c2NENlZu?=
 =?utf-8?B?OEorUFJLMlFuNmpET2RhT2U4ZTErTFRtSm11MWZpcXRmeWxyTjBGUms3MDM4?=
 =?utf-8?B?UWpxekU5S0Jkc0RYQ1FlTHJiSG5rOTM4VDNlVlJyT0p0UVk5Y3NaTExqdDFa?=
 =?utf-8?B?dmtsSWRpQjBTVE9YQ2ZweUYxUlFZTkxxUXJrZ0V4SjBLOVFEazlsOGlJZWNK?=
 =?utf-8?B?ZG1tYTJWUWd1N1UwNUlRdz09?=
Content-ID: <B217B613E1E9C348B74FB2DC5CAA3993@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ccb39cb-7fac-40ab-12e6-08d932a1ea17
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2021 21:42:04.7240 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4CQc15AEouC3VJEAvKqVJtv6CMLkFoVrkrJ4tFosX2YL4ooKhHzFJZJsYkSzhYMlY3MbxGreE402H/fuD+4cWOLsa61+/Ghz/CdJaZMZh7M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4525
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] iavf: Add trace while
 removing device
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

T24gRnJpLCAyMDIxLTA2LTE4IGF0IDA4OjQ3ICswMDAwLCBKxJlkcnplaiBKYWdpZWxza2kgd3Jv
dGU6DQo+IEFkZCBrZXJuZWwgdHJhY2UgdGhhdCBkZXZpY2Ugd2FzIHJlbW92ZWQuDQo+IEN1cnJl
bnRseSB0aGVyZSBpcyBubyBzdWNoIGluZm9ybWF0aW9uLg0KPiBJLmUuIEhvc3QgYWRtaW4gcmVt
b3ZlcyBhIFBDSSBkZXZpY2UgZnJvbSBhIFZNLA0KPiB0aGFuIG9uIFZNIHNoYWxsIGJlIGluZm8g
YWJvdXQgdGhlIGV2ZW50Lg0KPiANCj4gVGhpcyBwYXRjaCBhZGRzIGluZm8gbG9nIHRvIGlhdmZf
cmVtb3ZlIGZ1bmN0aW9uLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQXJrYWRpdXN6IEt1YmFsZXdz
a2kgPGFya2FkaXVzei5rdWJhbGV3c2tpQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSmVk
cnplaiBKYWdpZWxza2kgPGplZHJ6ZWouamFnaWVsc2tpQGludGVsLmNvbT4NCg0KQXJlIHlvdSB1
c2luZyB0aGUgY29ycmVjdCB0cmVlPyBSZWJhc2luZyBiZWZvcmUgeW91IHNlbmQ/IFRoaXMgcGF0
Y2gNCmRvZXNuJ3QgYXBwbHkuDQoNCkFsc28sIGNhbiB5b3UgY2hhbmdlIGVpdGhlciB5b3VyIEZy
b20gb3IgU2lnbmVkLW9mZi1ieSB0byBtYXRjaD8NCg0KV0FSTklORzogRnJvbTovU2lnbmVkLW9m
Zi1ieTogZW1haWwgbmFtZSBtaXNtYXRjaDogJ0Zyb206ICJKxJlkcnplag0KSmFnaWVsc2tpIiA8
amVkcnplai5qYWdpZWxza2lAaW50ZWwuY29tPicgIT0gJ1NpZ25lZC1vZmYtYnk6IEplZHJ6ZWoN
CkphZ2llbHNraSA8amVkcnplai5qYWdpZWxza2lAaW50ZWwuY29tPicNCj4gDQo+IC0tLQ0KPiAg
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX21haW4uYyB8IDEgKw0KPiAgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX21haW4uYw0KPiBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2lhdmYvaWF2Zl9tYWluLmMNCj4gaW5kZXggNGZlYWQ1OTAzLi5iMmE1ZmNiNTIg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9tYWlu
LmMNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX21haW4uYw0K
PiBAQCAtMzk3Myw2ICszOTczLDcgQEAgc3RhdGljIHZvaWQgaWF2Zl9yZW1vdmUoc3RydWN0IHBj
aV9kZXYgKnBkZXYpDQo+ICAJCQkJIGVycik7DQo+ICAJfQ0KPiAgDQo+ICsJZGV2X2luZm8oJmFk
YXB0ZXItPnBkZXYtPmRldiwgIlJlbW92aW5nIGRldmljZVxuIik7DQo+ICAJLyogU2h1dCBkb3du
IGFsbCB0aGUgZ2FyYmFnZSBtYXNoZXJzIG9uIHRoZSBkZXRlbnRpb24gbGV2ZWwgKi8NCj4gIAlh
ZGFwdGVyLT5zdGF0ZSA9IF9fSUFWRl9SRU1PVkU7DQo+ICAJYWRhcHRlci0+YXFfcmVxdWlyZWQg
PSAwOw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRw
czovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
