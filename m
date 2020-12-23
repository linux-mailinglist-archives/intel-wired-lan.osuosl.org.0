Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B882E1E31
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Dec 2020 16:38:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0764D866F5;
	Wed, 23 Dec 2020 15:38:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FMOUmN2AufiJ; Wed, 23 Dec 2020 15:38:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CE76C866BA;
	Wed, 23 Dec 2020 15:38:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 91F6D1BF47E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Dec 2020 01:37:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8C581872C6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Dec 2020 01:37:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GGuTMfhwPW0R for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Dec 2020 01:37:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7D5F5871DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Dec 2020 01:37:33 +0000 (UTC)
IronPort-SDR: t5XUE8l36juGyFtVaDKZ30M6NdNiAml36VGMnrAKkpPqpKbo/wptWr7IuaZ0UnWppqbe4vQlIA
 LDec4QPcIyRQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9843"; a="163667506"
X-IronPort-AV: E=Sophos;i="5.78,440,1599548400"; 
 d="scan'208,217";a="163667506"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2020 17:37:29 -0800
IronPort-SDR: FrgJZ5R3ueE/nzoj8xBgRzWFW+5YaLLDkC5/+10jOAIsSZrU9/4gZn5+R2LLsBkHcP/9YbDutU
 RS1mCF5wMq3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,440,1599548400"; 
 d="scan'208,217";a="564901096"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga005.fm.intel.com with ESMTP; 22 Dec 2020 17:37:29 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 22 Dec 2020 17:37:29 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 22 Dec 2020 17:37:28 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 22 Dec 2020 17:37:28 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 22 Dec 2020 17:37:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QVy5CSbdClWpGMqdIC/nxA9t/DkFmuWcV3DZbkaKPXJWmQ9DWbjLxOgi15Cw+gcohOrLMLflQ4Mdqi8iuLWMDum2iFWR1P4JeIijHg9Odl7bCd4JSwmumfLdRZFfkqIOI5PxuIlKmv0hNeEfKA97xjC+sbU8WpcFxW2LQA9+6EcCzy2+n+pW/muf40xcg+7cHn0/yaaaCQHpIukkAtGU53fnF9ylKTrOxtqrvbyKLSmeUkgkwiDxx8fLDChZicPhacIn7oqxyIIFgCnPzwuhB2Jx3Y5vkgftKjdV4jvZJ4k/w/miRyUCdkLIGQEkmU1YE4UhU0EMl779JZ7dsFQ/zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LqKUYlu6OwXwzyfxtn2uDJauerHNm8ar9uUgjXqAcyE=;
 b=RCjIlN1pmfgSEPcIMYTKBtXVHWPIbGAWv0iBJ/y/YO/e7sydLRVolFsE4q9VPb1qGvI9i65eWehDShssMzKWIDvtcZ+e6YNPFsiAAc5aIGYI9/acT2GDu7CTM3AuH4+rncq4k+TBqY/K5ByN6tNHQQ3QXAlk32oX6SSoJ5nFHVEpAxEqd8SvjBs1T0ixYlXp6wdPwQUGpwgaQ0XptrldAyf2k3PTCzdzsA18CqgA/ShU0YlkDoEAwaLfv4rpmkVnBkl6q52XOLvn+IFZ8iQYVDWe+V4LSJkq+M/2bHoa3Xz/99NxEdX6MDMJBpwsDKC9lOgFLCQGH/ToxCw336qX8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LqKUYlu6OwXwzyfxtn2uDJauerHNm8ar9uUgjXqAcyE=;
 b=rGHqG+9X/KRlnMJBAoHR0IlBR5vLpCKmehsOPuAf8glof5+j4ZTJdMAoANW0UpjQU81uZrDPgh11ZrLAo+q4v4tqEqOQq+Z2Rf0c2LLNrDnjrj1sLc4IqLTBdI4+cFj4POb7wc54fItHKNudSb9s0/DPt2Pd/voNnek4xBmfsfs=
Received: from MN2PR11MB3807.namprd11.prod.outlook.com (2603:10b6:208:f0::24)
 by MN2PR11MB3870.namprd11.prod.outlook.com (2603:10b6:208:152::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3700.27; Wed, 23 Dec
 2020 01:37:27 +0000
Received: from MN2PR11MB3807.namprd11.prod.outlook.com
 ([fe80::4d7f:d51:79bc:e596]) by MN2PR11MB3807.namprd11.prod.outlook.com
 ([fe80::4d7f:d51:79bc:e596%4]) with mapi id 15.20.3676.031; Wed, 23 Dec 2020
 01:37:27 +0000
From: "Xing, Beilei" <beilei.xing@intel.com>
To: =?utf-8?B?WWkgWWFuZyAo5p2o54eaKS3kupHmnI3liqHpm4blm6I=?=
 <yangyi01@inspur.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: X710 NIC can't do IPv6 VXLAN TSO offload
Thread-Index: AdbYyjlTQ4zJjVNCRfagHcfpK1HzJQAAbYiA
Date: Wed, 23 Dec 2020 01:37:27 +0000
Message-ID: <MN2PR11MB38071BE26150EDE0F0C3FF95F7DE0@MN2PR11MB3807.namprd11.prod.outlook.com>
References: <c38c0e82b9314dff9ae59c10ca5292e8@inspur.com>
In-Reply-To: <c38c0e82b9314dff9ae59c10ca5292e8@inspur.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: inspur.com; dkim=none (message not signed)
 header.d=none;inspur.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.102.204.36]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6bd6ef42-b8e6-4be4-dde0-08d8a6e34e5f
x-ms-traffictypediagnostic: MN2PR11MB3870:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB387057D5B98C358048CB47D9F7DE0@MN2PR11MB3870.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1443;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fYzYlRXwPSR2qHUGDUwszVCt/xWhfRegdljFhTAkobRRqsE4d1VN4SirpqShBNrInU4KH9+JL9iWY8DTpoNxZ7rhoiVEXHUYd+xF1zEdZ91irfl9GYsb8W51MaGinbMYK0fVwbG9LutpSLOQWQ6XTL1Xxmd3Oey3sEdbTkYFy52CXJRwGDzxuoUdeixUnXjpRfve6RebYk/Djl4ThusVcycB5kilu4FXCsX7wEU4OR4B5IEcDAlh/hUptBMTRwEB0b7uxfkBkpajgdCIq1aueUcmYtiX+NvE2SWAD34KdWNSauWJEtY5UI8hBFvHefUXLrnub3fI24REZ/5B0A/XHJkTeFKOHzlKB6XDH6XqTyebAQKR/aUQyQ2d8JRHEkoMycNuugxkPwn2E6ee4cuj6g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB3807.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(376002)(396003)(366004)(136003)(346002)(4744005)(33656002)(64756008)(66476007)(478600001)(8936002)(66446008)(66556008)(110136005)(76116006)(4326008)(71200400001)(9686003)(2906002)(55016002)(26005)(83380400001)(6506007)(8676002)(7696005)(107886003)(53546011)(316002)(86362001)(52536014)(66946007)(5660300002)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 6k3az2HNP2bS8VpozRJrsJB4MDLy1rh6Zm4coV+TLeZo1O6y9jrs3waKe4LQeHbGc7EcQPrYLSfuQjP0WV8RtED8ncREeaDSzfAk6Ze2OEEsnij0QdtBLXNZCrc7XO3fjy0sWPdH1BvQuTpcvJhv3ZYO9NZuHa/ZAoFNdRF15nFPpQiSXh3O8UzaWjbXOHcU7D6UQWwFgdyPZysQSdFMDwi+caqzAHq5pb+ETjpwLoaFw3a+zv1QjOKSttEv+MvrsQQTr0umeyf+jlwzKVgGsd36SEzkotY2lYFO3XncQ+fAT6QavnPxbXgfC39dYjbBPwFiVMj7JpgYz1Ul8ieZxxOd3pK0zO1tx/Q+iGsdhgBFUycmxNqN7rYlScVxdWnwD4jjUwwwBvTx/S3vNzKbazCTVwyz2ncLAmcXz3yvx2hjohRNPB1FIgiVU+yJ2Y5qAJwMRFNp9a/YbxdchYnRiyMxRTQnJ2BuZ7z+H6YgzMYQ7nzEJcEB5CQdeUEhanzdmyZZgSKe1wJIUmuA0DjYkG0RTd5apjuZvEfJHy15CaBsbeEeE26cw1WCj3WZd5+NEDohwOTSz7Ko9d0mi+mi8DJHiYIO94MP/UyJ/ZNHgdueC2nXv5fUfweOfh5D6QB9++37aa+tcIMD/HcdVlHeztiOUDLr6DQ+ksmfHfZFn9MyQeYO23z+z+5h2Yi51cqlE7gg2QLM4ofwDC0ZlI/T8uUUf75/I2daf8H3wd/z/Hg=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3807.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bd6ef42-b8e6-4be4-dde0-08d8a6e34e5f
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2020 01:37:27.4778 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Gg6YL/tBXfIeYuJBMVRwSAhwEcPOV+8tHoAMPk/mlrATo2Jb5k1N+NQW139EoNacMDpcw54UUGqVQioKclJY4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3870
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Wed, 23 Dec 2020 15:38:51 +0000
Subject: Re: [Intel-wired-lan] X710 NIC can't do IPv6 VXLAN TSO offload
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
Cc: "Zhang, Guanghua" <guanghua.zhang@intel.com>
Content-Type: multipart/mixed; boundary="===============1647798904377925130=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============1647798904377925130==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR11MB38071BE26150EDE0F0C3FF95F7DE0MN2PR11MB3807namp_"

--_000_MN2PR11MB38071BE26150EDE0F0C3FF95F7DE0MN2PR11MB3807namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

K0d1YW5naHVhLg0KDQpIaSBZaSwNCg0KQ291bGQgeW91IHBsZWFzZSBkZXRhaWwgeW91ciB0ZXN0
IHN0ZXBzPw0KDQpCUiwNCkJlaWxlaQ0KDQpGcm9tOiBZaSBZYW5nICjmnajnh5opLeS6keacjeWK
oembhuWboiA8eWFuZ3lpMDFAaW5zcHVyLmNvbT4NClNlbnQ6IFdlZG5lc2RheSwgRGVjZW1iZXIg
MjMsIDIwMjAgOToyOSBBTQ0KVG86IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQpD
YzogWWkgWWFuZyAo5p2o54eaKS3kupHmnI3liqHpm4blm6IgPHlhbmd5aTAxQGluc3B1ci5jb20+
OyBYaW5nLCBCZWlsZWkgPGJlaWxlaS54aW5nQGludGVsLmNvbT4NClN1YmplY3Q6IFg3MTAgTklD
IGNhbid0IGRvIElQdjYgVlhMQU4gVFNPIG9mZmxvYWQNCkltcG9ydGFuY2U6IEhpZ2gNCg0KSGks
IGZvbGtzDQoNCkFueWJvZHkgY2FuIHRlbGwgbWUgd2h5IElQdjYgVlhMQU4gVFNPIG9mZmxvYWQg
Y2Fu4oCZdCB3b3JrIGZvciBtZT8gSSBoYXZlIHRyaWVkIE9WUyBEUERLIGFuZCBMaW51eCBrZXJu
ZWwsIHRoZSByZXN1bHQgaXMgc2FtZSwgaG93IGNhbiB3ZSBmaXggaXQ/IEJ5IGZpcm13YXJlIHVw
ZGF0ZSBvciBvdGhlciB3YXlzPw0KDQpCVFcsICBJUHY0IFZYTEFOIFRTTyBpcyBvayBubyBtYXR0
ZXIgaW5uZXIgcGFja2V0IGlzIElQdjQgb3IgSVB2Ni4NCg0KMDc6MDAuMCBFdGhlcm5ldCBjb250
cm9sbGVyOiBJbnRlbCBDb3Jwb3JhdGlvbiBFdGhlcm5ldCBDb250cm9sbGVyIFg3MTAgZm9yIDEw
R2JFIFNGUCsgKHJldiAwMikNCg0KJCBldGh0b29sIC1pIGVucDdzMGYwDQpkcml2ZXI6IGk0MGUN
CnZlcnNpb246IDIuMS4xNC1rDQpmaXJtd2FyZS12ZXJzaW9uOiA2LjAxIDB4ODAwMDNkM2IgMS4x
ODYyLjANCmV4cGFuc2lvbi1yb20tdmVyc2lvbjoNCmJ1cy1pbmZvOiAwMDAwOjA3OjAwLjANCnN1
cHBvcnRzLXN0YXRpc3RpY3M6IHllcw0Kc3VwcG9ydHMtdGVzdDogeWVzDQpzdXBwb3J0cy1lZXBy
b20tYWNjZXNzOiB5ZXMNCnN1cHBvcnRzLXJlZ2lzdGVyLWR1bXA6IHllcw0Kc3VwcG9ydHMtcHJp
di1mbGFnczogeWVzDQo=

--_000_MN2PR11MB38071BE26150EDE0F0C3FF95F7DE0MN2PR11MB3807namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
U2ltU3VuOw0KCXBhbm9zZS0xOjIgMSA2IDAgMyAxIDEgMSAxIDE7fQ0KQGZvbnQtZmFjZQ0KCXtm
b250LWZhbWlseToiQ2FtYnJpYSBNYXRoIjsNCglwYW5vc2UtMToyIDQgNSAzIDUgNCA2IDMgMiA0
O30NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6Q2FsaWJyaTsNCglwYW5vc2UtMToyIDE1IDUg
MiAyIDIgNCAzIDIgNDt9DQpAZm9udC1mYWNlDQoJe2ZvbnQtZmFtaWx5OiJcQFNpbVN1biI7DQoJ
cGFub3NlLTE6MiAxIDYgMCAzIDEgMSAxIDEgMTt9DQpAZm9udC1mYWNlDQoJe2ZvbnQtZmFtaWx5
OiJNaWNyb3NvZnQgWWFIZWkiOw0KCXBhbm9zZS0xOjIgMTEgNSAzIDIgMiA0IDIgMiA0O30NCkBm
b250LWZhY2UNCgl7Zm9udC1mYW1pbHk6IlxATWljcm9zb2Z0IFlhSGVpIjsNCglwYW5vc2UtMToy
IDExIDUgMyAyIDIgNCAyIDIgNDt9DQovKiBTdHlsZSBEZWZpbml0aW9ucyAqLw0KcC5Nc29Ob3Jt
YWwsIGxpLk1zb05vcm1hbCwgZGl2Lk1zb05vcm1hbA0KCXttYXJnaW46MGluOw0KCW1hcmdpbi1i
b3R0b206LjAwMDFwdDsNCglmb250LXNpemU6MTEuMHB0Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJp
IixzYW5zLXNlcmlmO30NCnNwYW4uRW1haWxTdHlsZTE5DQoJe21zby1zdHlsZS10eXBlOnBlcnNv
bmFsLXJlcGx5Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmOw0KCWNvbG9yOndp
bmRvd3RleHQ7fQ0KLk1zb0NocERlZmF1bHQNCgl7bXNvLXN0eWxlLXR5cGU6ZXhwb3J0LW9ubHk7
DQoJZm9udC1zaXplOjEwLjBwdDt9DQpAcGFnZSBXb3JkU2VjdGlvbjENCgl7c2l6ZTo4LjVpbiAx
MS4waW47DQoJbWFyZ2luOjEuMGluIDEuMjVpbiAxLjBpbiAxLjI1aW47fQ0KZGl2LldvcmRTZWN0
aW9uMQ0KCXtwYWdlOldvcmRTZWN0aW9uMTt9DQotLT48L3N0eWxlPjwhLS1baWYgZ3RlIG1zbyA5
XT48eG1sPg0KPG86c2hhcGVkZWZhdWx0cyB2OmV4dD0iZWRpdCIgc3BpZG1heD0iMTAyNiIgLz4N
CjwveG1sPjwhW2VuZGlmXS0tPjwhLS1baWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hhcGVsYXlv
dXQgdjpleHQ9ImVkaXQiPg0KPG86aWRtYXAgdjpleHQ9ImVkaXQiIGRhdGE9IjEiIC8+DQo8L286
c2hhcGVsYXlvdXQ+PC94bWw+PCFbZW5kaWZdLS0+DQo8L2hlYWQ+DQo8Ym9keSBsYW5nPSJFTi1V
UyIgbGluaz0iIzA1NjNDMSIgdmxpbms9IiM5NTRGNzIiPg0KPGRpdiBjbGFzcz0iV29yZFNlY3Rp
b24xIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPitHdWFuZ2h1YS48bzpwPjwvbzpwPjwvcD4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+SGkgWWksPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZu
YnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPkNvdWxkIHlvdSBwbGVhc2UgZGV0
YWlsIHlvdXIgdGVzdCBzdGVwcz88bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+QlIsPG86cD48L286
cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5CZWlsZWk8bzpwPjwvbzpwPjwvcD4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPGRpdiBzdHlsZT0iYm9yZGVy
Om5vbmU7Ym9yZGVyLWxlZnQ6c29saWQgYmx1ZSAxLjVwdDtwYWRkaW5nOjBpbiAwaW4gMGluIDQu
MHB0Ij4NCjxkaXY+DQo8ZGl2IHN0eWxlPSJib3JkZXI6bm9uZTtib3JkZXItdG9wOnNvbGlkICNF
MUUxRTEgMS4wcHQ7cGFkZGluZzozLjBwdCAwaW4gMGluIDBpbiI+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj48Yj5Gcm9tOjwvYj4gWWkgWWFuZyAoPHNwYW4gbGFuZz0iWkgtQ04iIHN0eWxlPSJmb250
LWZhbWlseTomcXVvdDtNaWNyb3NvZnQgWWFIZWkmcXVvdDssc2Fucy1zZXJpZiI+5p2o54eaPC9z
cGFuPiktPHNwYW4gbGFuZz0iWkgtQ04iIHN0eWxlPSJmb250LWZhbWlseTomcXVvdDtNaWNyb3Nv
ZnQgWWFIZWkmcXVvdDssc2Fucy1zZXJpZiI+5LqR5pyN5Yqh6ZuG5ZuiPC9zcGFuPiAmbHQ7eWFu
Z3lpMDFAaW5zcHVyLmNvbSZndDsNCjxicj4NCjxiPlNlbnQ6PC9iPiBXZWRuZXNkYXksIERlY2Vt
YmVyIDIzLCAyMDIwIDk6MjkgQU08YnI+DQo8Yj5Ubzo8L2I+IGludGVsLXdpcmVkLWxhbkBsaXN0
cy5vc3Vvc2wub3JnPGJyPg0KPGI+Q2M6PC9iPiBZaSBZYW5nICg8c3BhbiBsYW5nPSJaSC1DTiIg
c3R5bGU9ImZvbnQtZmFtaWx5OiZxdW90O01pY3Jvc29mdCBZYUhlaSZxdW90OyxzYW5zLXNlcmlm
Ij7mnajnh5o8L3NwYW4+KS08c3BhbiBsYW5nPSJaSC1DTiIgc3R5bGU9ImZvbnQtZmFtaWx5OiZx
dW90O01pY3Jvc29mdCBZYUhlaSZxdW90OyxzYW5zLXNlcmlmIj7kupHmnI3liqHpm4blm6I8L3Nw
YW4+ICZsdDt5YW5neWkwMUBpbnNwdXIuY29tJmd0OzsgWGluZywgQmVpbGVpICZsdDtiZWlsZWku
eGluZ0BpbnRlbC5jb20mZ3Q7PGJyPg0KPGI+U3ViamVjdDo8L2I+IFg3MTAgTklDIGNhbid0IGRv
IElQdjYgVlhMQU4gVFNPIG9mZmxvYWQ8YnI+DQo8Yj5JbXBvcnRhbmNlOjwvYj4gSGlnaDxvOnA+
PC9vOnA+PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5i
c3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+SGksIGZvbGtzPG86cD48L286cD48
L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiPkFueWJvZHkgY2FuIHRlbGwgbWUgd2h5IElQdjYgVlhMQU4gVFNPIG9mZmxv
YWQgY2Fu4oCZdCB3b3JrIGZvciBtZT8gSSBoYXZlIHRyaWVkIE9WUyBEUERLIGFuZCBMaW51eCBr
ZXJuZWwsIHRoZSByZXN1bHQgaXMgc2FtZSwgaG93IGNhbiB3ZSBmaXggaXQ/IEJ5IGZpcm13YXJl
IHVwZGF0ZSBvciBvdGhlciB3YXlzPzxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5CVFcsICZuYnNw
O0lQdjQgVlhMQU4gVFNPIGlzIG9rIG5vIG1hdHRlciBpbm5lciBwYWNrZXQgaXMgSVB2NCBvciBJ
UHY2LjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286
cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj4wNzowMC4wIEV0aGVybmV0IGNvbnRyb2xsZXI6
IEludGVsIENvcnBvcmF0aW9uIEV0aGVybmV0IENvbnRyb2xsZXIgWDcxMCBmb3IgMTBHYkUgU0ZQ
KyAocmV2IDAyKTxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJz
cDs8L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj4kIGV0aHRvb2wgLWkgZW5wN3MwZjA8
bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPmRyaXZlcjogaTQwZTxvOnA+PC9v
OnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+dmVyc2lvbjogMi4xLjE0LWs8bzpwPjwvbzpw
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPmZpcm13YXJlLXZlcnNpb246IDYuMDEgMHg4MDAw
M2QzYiAxLjE4NjIuMDxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+ZXhwYW5z
aW9uLXJvbS12ZXJzaW9uOjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+YnVz
LWluZm86IDAwMDA6MDc6MDAuMDxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
c3VwcG9ydHMtc3RhdGlzdGljczogeWVzPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj5zdXBwb3J0cy10ZXN0OiB5ZXM8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPnN1cHBvcnRzLWVlcHJvbS1hY2Nlc3M6IHllczxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+c3VwcG9ydHMtcmVnaXN0ZXItZHVtcDogeWVzPG86cD48L286cD48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj5zdXBwb3J0cy1wcml2LWZsYWdzOiB5ZXM8bzpwPjwvbzpwPjwv
cD4NCjwvZGl2Pg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_MN2PR11MB38071BE26150EDE0F0C3FF95F7DE0MN2PR11MB3807namp_--

--===============1647798904377925130==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============1647798904377925130==--
