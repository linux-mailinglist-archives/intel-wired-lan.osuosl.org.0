Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BEA039487D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 May 2021 23:56:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD6CB60DF7;
	Fri, 28 May 2021 21:56:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P9fNWwa4m0yC; Fri, 28 May 2021 21:56:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B13D260908;
	Fri, 28 May 2021 21:56:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AE75C1BF3C9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 May 2021 21:56:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9781460908
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 May 2021 21:56:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NFeBlTzs-pzX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 May 2021 21:56:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6446A60791
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 May 2021 21:56:38 +0000 (UTC)
IronPort-SDR: kQzYcKHx/lokyEkH6uMTxOy/xc9kTMZpQ0/YAPCIFmpinL4nHnty971pigeWAzdgbjrkXCDsLe
 8r702ZL8XO2w==
X-IronPort-AV: E=McAfee;i="6200,9189,9998"; a="203075046"
X-IronPort-AV: E=Sophos;i="5.83,231,1616482800"; d="scan'208";a="203075046"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2021 14:56:37 -0700
IronPort-SDR: VSYvN113wmKmwqehhqJdDcHTyN6/LLf9mmajjc9KV2Nj+KhfBV57Nhl+3tNkIjfd5ySvfAmH+V
 YUZXuQfpBZiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,231,1616482800"; d="scan'208";a="466039088"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga004.fm.intel.com with ESMTP; 28 May 2021 14:56:35 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 28 May 2021 14:56:34 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 28 May 2021 14:56:34 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Fri, 28 May 2021 14:56:34 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Fri, 28 May 2021 14:56:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PDnqtX/yxjUQ1v8jA//ObGYPvmcqM0+elHlr+9l6YFUPpj0US6JaNxczUxOACXqCuE/opphiQ/R0CDdTajkJIwRKNXNkTaXOupvueEKLsqBCF8CHSWOxL03RLAmIITpSsbG6cILB6dPIngRTVJDegY1+PeTjuTHeHhtnITW+06FavbnShpjbzA0mf+fUg+qkB1JJnZba+Iw+KskhYTaijKv3Zc9vAD7F0Ix/WWGgU+FWxr2e6+izC0inL0DFWqfqnPwfgw7Tuwj4kKdQbnxlsmsQrvKKOVxKs4BSR3Awpiw09281FvO1V9m6dsJXxwz6eDE8KZFSqwISIVT2dqIDWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xgJUFNBEd9uzuvty1jfIG+kfOXMez4MXrLGmuz4/YFM=;
 b=Tx3tJJWODgl1fPNneC2JHqcmRnycaEAg398OPxuo6OF5PCakHMce/0S6B57swsmlM6aiOSEfTq2ZS9I0gc9Jd6rtx0clyYQF+CGe3KP0lTu81VHkXA6eidlhVLbm3JvzfU3UXkV+Z6IXHZe3i1EqlS/qEaRWnS/PD1dNFpIgu/p9esH2seNHcL2h5T/0J3ALostOc/V8EfEeiSJhRcsSEGL/ss5Cf6j5tt6LJjCxFty2jldl6zPa4KcQ5gP9JkNkpqFYXCjA81RHRc5Pb74k7fFCZuE6uKnCWOjHSZzW0VjxO5HeU4esjXvz+tRc4b/yrFdZptDjilnpcl+SEb61ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xgJUFNBEd9uzuvty1jfIG+kfOXMez4MXrLGmuz4/YFM=;
 b=uEu24+vj/kLfy7c7jxb4WcXyrQZfDrfvUDRIlMRaCZ6N9lnGsEYl++UgkrVzgXGygekD5vsbHrjP57ieDsNaqUF+StdMVb7rOiqrZ6V18RzyTiZsALzsTbZ381Wn9L5xw504KYJgRWiXE7F3kEQ7flq/TFBMc8m7ZiV0eASxddo=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB4809.namprd11.prod.outlook.com (2603:10b6:806:112::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.20; Fri, 28 May
 2021 21:56:33 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7ca2:37ff:9cbd:c87c]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7ca2:37ff:9cbd:c87c%6]) with mapi id 15.20.4173.023; Fri, 28 May 2021
 21:56:33 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>, "gustavoars@kernel.org"
 <gustavoars@kernel.org>
Thread-Topic: [PATCH][next] virtchnl: Replace one-element array in struct
 virtchnl_vsi_queue_config_info
Thread-Index: AQHXUbwDbnIYY2RrYUqZlp9C9hVLLKr5dd4A
Date: Fri, 28 May 2021 21:56:32 +0000
Message-ID: <f3674339c0390ced22b365101f2d3e3a2bf26845.camel@intel.com>
References: <20210525231658.GA176466@embeddedor>
In-Reply-To: <20210525231658.GA176466@embeddedor>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b4160765-fa3f-4247-30c2-08d9222374e6
x-ms-traffictypediagnostic: SA2PR11MB4809:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB48096058F38C95140F1DAB41C6229@SA2PR11MB4809.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: t1EcRayAqGYi+PaTtk6cTzdhbVGjGV270+A7cYWLsjIsdlPeTfnAE/JjNjUyb4htMIcQpzd4249FLy6+EHSQAyxBS5nDS3gwoSnnOgPdoP5rjvEEJACyPEPmqdIz1l4IGARwrcMt6c1JJwYsmTB7SWDPaKaaWskRJOSh6gLkQ9djUHHOTrJ2hq+/yt0zfrW44f1/cXFg19DRwD3+zvp/IMgC0B2VgCEQpZYlKdFanEcIA8IklDV6ZB01KOfJlGY3kc/I7Q0VJ1y1spMzxHiIxCBE+Ne3uzFxMpHn+BV5EJHAiS+HfFzjYC0tWsMxnb2huyTD+Eg8anpqoYzgcRRFii0GweoSodEn9R/TqdZb1dlPn+aZl7xZVZmZ6Y3Zfglnx0gSTUEWhjU2IQaeILvnf4qWXdoDEmS4bY0jFzEEEPRqnh2c9mTDBab9p4nZXINJkjeB2E62P0Yma9RufhpW2ddNaWztpITPmKRHYMU7H79FK6xVqy9LqYqSX7ONJMJg+UjC1SuA6LuyTYhGtpzye0BWB1pqkYm9NMkaQiuzbXbiNpOLGcOJ/dwHnFkygiLmiNwmBNptW5Znpc9iYmzS50X5OVqw0CdGiONd/oMa2ig1sod2WPgXh3sKmE9kHbjGDmmh5mHZBvd5pN+zM14jdvhGBoe3g4MDw8pVloaZYkrhIhpRMIGUE46KagvR9SolRKJqFB8f81FV9OpgTxkckZPpeQDqkg9jhda6geF8F8EZDSI4HKFhLUDqt2OkKoxJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(39860400002)(346002)(376002)(396003)(136003)(6512007)(186003)(316002)(6506007)(5660300002)(71200400001)(110136005)(966005)(54906003)(4326008)(6486002)(36756003)(478600001)(2906002)(86362001)(91956017)(122000001)(83380400001)(8676002)(2616005)(66556008)(64756008)(66446008)(66946007)(8936002)(66476007)(76116006)(26005)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?aVBYZks3OUJnYzV0b2xueDU1VVhnbG8yZjVGR0lrYmpyb21iNkRlUi9FSXU3?=
 =?utf-8?B?WkVNRHhjOWZ4U0hJU3pHSFE3eUppNDdqa21hdjZaNVhwVFQxUUF2bVZHS1VO?=
 =?utf-8?B?dlpjdDkxR1RqNmRCTVo1cWJXNnNCYmp2WkR2eVFVdTl4bzFLQ2NadFFqc3A2?=
 =?utf-8?B?Y2JWTDdzQWE1eFFDeXk1WDVvVDdET3BMV2RuK2JDRXhtWGJ0T0RJMjZ3S3JP?=
 =?utf-8?B?dHlDT243cExid2JpM2JZUFRtUWNhdUh3T2U3SFMyT21KZUxrMnlQY2FTa21M?=
 =?utf-8?B?aFhBN0dvbnpBZFk0MDEvOWd5V0RhVERBRktQMUNMTWIrWW5Zc3NzNUpYUG5J?=
 =?utf-8?B?bEt5alp0VHFVdHVQbUplVDJZYjROVjBITkNUN3BWb1lpdjk4aG5GY2dxaVRa?=
 =?utf-8?B?ckVIUDJFRWx6Tld1UXp4THVEQzJ6MWtZMm5TTmN0SGlyaVh2RHlBR1RoSDhT?=
 =?utf-8?B?OUxmWHc3SExHMXAwUFJieWNjWVdMYTBWQzVaU2Irc0RNV3FpaFo0dTB2QWRN?=
 =?utf-8?B?Q285anZ3K095RXN1L2pBWFVNSDlMeGpoSk95TWFWY2ZKeW5qcG41cU9RQmx3?=
 =?utf-8?B?Q3BNVWIrdkREOXU5ZDF4aVhuYUZnOHdkV0phM0Q3RFhSMVhXQWlDU21KNm90?=
 =?utf-8?B?d0w2d09qK0VZTnIvK0lzK0tlelh5dWUzaDVUVDZMK21sdGV5OTBYby9IdU5i?=
 =?utf-8?B?b0tNSWtQY09GTjlpbHorTFhsV2VGWEhwWHZMSi9oVkxhcitHczFHck9tOEVO?=
 =?utf-8?B?MGRlWjJBUkh3YzRkTzY0RnJ1M3NqM3NIVjlZTGkyV3hkY0swNUNhaWRHVTJZ?=
 =?utf-8?B?WUhRblliRGJybUY3R3RnY3NXeXIrdkMxWk5HMU85T0R2VE1wMTU2YjN1ZHhT?=
 =?utf-8?B?bXFtTEVEc0ZFaUZBK0ZTemRYMEhJK0NDWkZNVER0Z3h1ZDRna0MvVUJnWXBu?=
 =?utf-8?B?eGhLNjYzZXQ2Wm5XZHB4VGRXR3BqUVhpOUhERXVtUkt6dUNtQjIyTmtTNEtw?=
 =?utf-8?B?WjZzZEFKd0lvQTJwZUZaWU1UODJ5VU1kdUk2dUticUk1UmxpUUhpZXQ5SWIy?=
 =?utf-8?B?dExoTFpYNkNzb3dGbWlhOVpCSEZDYWptTjAvSm9OamZmZXVMUDJqaThPV2hk?=
 =?utf-8?B?bEw3WVh1R3JTaUtvc0kxYWtqSmMwa1VZd0FJNmVsN1p2T0pjL2hOS2J0TDZY?=
 =?utf-8?B?TTdoUS8rL2xaTkRPV1R1NG1yY3F0RWxTOE5JM2pCU3lLd011VjcxVUJLcWxZ?=
 =?utf-8?B?SURUK1U2MDU3T09FNlMvb3YwQjZ2WkNyMWxZdzRuelhYL2pBS3k0aHh4Qm1P?=
 =?utf-8?B?Q1lwenJCR3JDNTd2enZSd0N1NDJUWithVUNhL0Y5Tm44RVNwSm1VT1VJUENw?=
 =?utf-8?B?RHB0TkFjM0dZK3lKSTU3WUtMRGNQMjlldHMwcVVBZUJETlFaRWwrc0hSWXpp?=
 =?utf-8?B?Vms4aEt1MS84WTlOTTRVZ0J3dEFhbW91Sk9PbFV5c01pYzVmZUI4N1I4UW5q?=
 =?utf-8?B?MGZzd0psK0NxTmFJM0Qwc0srWURDOE9vMFdiSGxQZ1QvU1dwcUtHcjBWdzQ5?=
 =?utf-8?B?SEs0OWpHbmV3V01lR3lWYkY5Mm5XbE5pL05IRnBNTzk0QkVEVFQzVHo4Vmpm?=
 =?utf-8?B?THlPVkVjaDJLMkUwcUx1RU5RSjFJRW1HSXVPRGtMYy9XQ2piQldBbmVobnRT?=
 =?utf-8?B?THExSnlpSHZFMjh6NGZFeEZJaS8xaFpGaGdQVnF2TUZxWGNZZHNDWDRxd0pO?=
 =?utf-8?B?ZWpUZzVnTG1ObjZvOWwzNTk3bGkwNmZrNVNPUG9CbDNPQ2lFZW9saEx4V0JO?=
 =?utf-8?B?WFNNL2tLSzdzdlFQb0RPZz09?=
Content-ID: <6F66FF93FF33794B88587E2EBB431CEE@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4160765-fa3f-4247-30c2-08d9222374e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2021 21:56:32.9168 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dq4IR7mq8Q0oAKNbGuve50jLA72H+FxxzyZ6bs7RABsGG1b44Qo2tsuvkjvXESLG8jDLGLJbMpmN0xAp93mUV5VtFX93uKmkGPXIYwzHwyA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4809
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH][next] virtchnl: Replace one-element
 array in struct virtchnl_vsi_queue_config_info
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCAyMDIxLTA1LTI1IGF0IDE4OjE2IC0wNTAwLCBHdXN0YXZvIEEuIFIuIFNpbHZhIHdy
b3RlOg0KPiBUaGVyZSBpcyBhIHJlZ3VsYXIgbmVlZCBpbiB0aGUga2VybmVsIHRvIHByb3ZpZGUg
YSB3YXkgdG8gZGVjbGFyZQ0KPiBoYXZpbmcgYQ0KPiBkeW5hbWljYWxseSBzaXplZCBzZXQgb2Yg
dHJhaWxpbmcgZWxlbWVudHMgaW4gYSBzdHJ1Y3R1cmUuIEtlcm5lbA0KPiBjb2RlDQo+IHNob3Vs
ZCBhbHdheXMgdXNlIOKAnGZsZXhpYmxlIGFycmF5IG1lbWJlcnPigJ1bMV0gZm9yIHRoZXNlIGNh
c2VzLiBUaGUNCj4gb2xkZXINCj4gc3R5bGUgb2Ygb25lLWVsZW1lbnQgb3IgemVyby1sZW5ndGgg
YXJyYXlzIHNob3VsZCBubyBsb25nZXIgYmUNCj4gdXNlZFsyXS4NCj4gDQo+IFJlZmFjdG9yIHRo
ZSBjb2RlIGFjY29yZGluZyB0byB0aGUgdXNlIG9mIGEgZmxleGlibGUtYXJyYXkgbWVtYmVyIGlu
DQo+IHN0cnVjdA0KPiB2aXJ0Y2hubF92c2lfcXVldWVfY29uZmlnX2luZm8gaW5zdGVhZCBvZiBv
bmUtZWxlbWVudCBhcnJheSwgYW5kIHVzZQ0KPiB0aGUNCj4gZmxleF9hcnJheV9zaXplKCkgaGVs
cGVyLg0KPiANCj4gWzFdIGh0dHBzOi8vZW4ud2lraXBlZGlhLm9yZy93aWtpL0ZsZXhpYmxlX2Fy
cmF5X21lbWJlcg0KPiBbMl0gDQo+IGh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwvdjUu
MTAvcHJvY2Vzcy9kZXByZWNhdGVkLmh0bWwjemVyby1sZW5ndGgtYW5kLW9uZS1lbGVtZW50LWFy
cmF5cw0KPiANCj4gTGluazogaHR0cHM6Ly9naXRodWIuY29tL0tTUFAvbGludXgvaXNzdWVzLzc5
DQo+IFNpZ25lZC1vZmYtYnk6IEd1c3Rhdm8gQS4gUi4gU2lsdmEgPGd1c3Rhdm9hcnNAa2VybmVs
Lm9yZz4NCj4gLS0tDQo+ICBpbmNsdWRlL2xpbnV4L2F2Zi92aXJ0Y2hubC5oIHwgOSArKysrLS0t
LS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9hdmYvdmlydGNobmwuaA0KPiBiL2luY2x1
ZGUvbGludXgvYXZmL3ZpcnRjaG5sLmgNCj4gaW5kZXggYjU1NDkxMzgwNGJkLi5lZDljNDk5OGY4
YWMgMTAwNjQ0DQo+IC0tLSBhL2luY2x1ZGUvbGludXgvYXZmL3ZpcnRjaG5sLmgNCj4gKysrIGIv
aW5jbHVkZS9saW51eC9hdmYvdmlydGNobmwuaA0KPiBAQCAtMzM4LDEwICszMzgsMTAgQEAgc3Ry
dWN0IHZpcnRjaG5sX3ZzaV9xdWV1ZV9jb25maWdfaW5mbyB7DQo+ICAJdTE2IHZzaV9pZDsNCj4g
IAl1MTYgbnVtX3F1ZXVlX3BhaXJzOw0KPiAgCXUzMiBwYWQ7DQo+IC0Jc3RydWN0IHZpcnRjaG5s
X3F1ZXVlX3BhaXJfaW5mbyBxcGFpclsxXTsNCj4gKwlzdHJ1Y3QgdmlydGNobmxfcXVldWVfcGFp
cl9pbmZvIHFwYWlyW107DQo+ICB9Ow0KPiAgDQo+IC1WSVJUQ0hOTF9DSEVDS19TVFJVQ1RfTEVO
KDcyLCB2aXJ0Y2hubF92c2lfcXVldWVfY29uZmlnX2luZm8pOw0KPiArVklSVENITkxfQ0hFQ0tf
U1RSVUNUX0xFTig4LCB2aXJ0Y2hubF92c2lfcXVldWVfY29uZmlnX2luZm8pOw0KPiAgDQo+ICAv
KiBWSVJUQ0hOTF9PUF9SRVFVRVNUX1FVRVVFUw0KPiAgICogVkYgc2VuZHMgdGhpcyBtZXNzYWdl
IHRvIHJlcXVlc3QgdGhlIFBGIHRvIGFsbG9jYXRlIGFkZGl0aW9uYWwNCj4gcXVldWVzIHRvDQo+
IEBAIC05OTcsOSArOTk3LDggQEAgdmlydGNobmxfdmNfdmFsaWRhdGVfdmZfbXNnKHN0cnVjdA0K
PiB2aXJ0Y2hubF92ZXJzaW9uX2luZm8gKnZlciwgdTMyIHZfb3Bjb2RlLA0KPiAgCQlpZiAobXNn
bGVuID49IHZhbGlkX2xlbikgew0KPiAgCQkJc3RydWN0IHZpcnRjaG5sX3ZzaV9xdWV1ZV9jb25m
aWdfaW5mbyAqdnFjID0NCj4gIAkJCSAgICAoc3RydWN0IHZpcnRjaG5sX3ZzaV9xdWV1ZV9jb25m
aWdfaW5mbw0KPiAqKW1zZzsNCj4gLQkJCXZhbGlkX2xlbiArPSAodnFjLT5udW1fcXVldWVfcGFp
cnMgKg0KPiAtCQkJCSAgICAgIHNpemVvZihzdHJ1Y3QNCj4gLQkJCQkJICAgICB2aXJ0Y2hubF9x
dWV1ZV9wYWlyX2luZm8pKQ0KPiA7DQo+ICsJCQl2YWxpZF9sZW4gKz0gZmxleF9hcnJheV9zaXpl
KHZxYywgcXBhaXIsDQo+ICsJCQkJCQkgICAgIHZxYy0NCj4gPm51bV9xdWV1ZV9wYWlycyk7DQoN
ClRoZSB2aXJ0Y2hubCBmaWxlIGFjdHMgYXMgYSBiaW5hcnkgaW50ZXJmYWNlIGJldHdlZW4gcGh5
c2ljYWwgYW5kDQp2aXJ0dWFsIGZ1bmN0aW9ucy4gVGhlcmUncyBubyBndWFydW50ZWUgdGhhdCB0
aGUgUEYgYW5kIFZGIHdpbGwgYm90aA0KaGF2ZSB0aGUgbmV3ZXN0IHZlcnNpb24uIFRodXMgY2hh
bmdpbmcgdGhpcyB3aWxsIGJyZWFrIGNvbXBhdGliaWxpdHkuDQpTcGVjaWZpY2FsbHksIHRoZSB3
YXkgdGhlIHNpemUgd2FzIHZhbGlkYXRlZCBmb3IgdGhpcyBvcCBjb2RlDQppbmNvcnJlY3RseSBl
eHBlY3RzIGFuIGV4dHJhIHF1ZXVlIHBhaXIgc3RydWN0dXJlLiBTb21lIG90aGVyDQpzdHJ1Y3R1
cmVzIGhhdmUgc2ltaWxhciBsZW5ndGggY2FsY3VsYXRpb24gZmxhd3MuIFdlIGFncmVlIHRoYXQg
Zml4aW5nDQp0aGlzIGlzIGltcG9ydGFudCwgYnV0IHRoZSBmaXggbmVlZHMgdG8gYWNjb3VudCB0
aGF0IG9sZCBkcml2ZXJzIHdpbGwNCnNlbmQgYW4gb2ZmIGJ5IDEgc2l6ZS4gDQoNClRvIHByb3Bl
cmx5IGhhbmRsZSBjb21wYXRpYmlsaXR5IHdlIG5lZWQgdG8gaW50cm9kdWNlIGEgZmVhdHVyZSBm
bGFnIHRvDQppbmRpY2F0ZSB0aGUgbmV3IGJlaGF2aW9yLiBJZiB0aGUgZmVhdHVyZSBmbGFnIGlz
IG5vdCBzZXQsIHdlIGFjY2NlcHQNCm1lc3NhZ2VzIHdpdGggdGhlIG9sZCBmb3JtYXQgKHdpdGgg
dGhlIGV4dHJhIHNpemUpLiBJZiBib3RoIHRoZSBQRiBhbmQNClZGIHN1cHBvcnQgdGhlIGZlYXR1
cmUgZmxhZywgd2UnbGwgdXNlIHRoZSBjb3JyZWN0IHNpemUgY2FsY3VsYXRpb25zLg0KV2UncmUg
bG9va2luZyB0byBhZGQgdGhpcyBhbmQgd291bGQgbGlrZSB0byBkbyBhbGwgdGhlIHZpcnRjaG5s
DQpzdHJ1Y3R1cmUgZml4ZXMgaW4gb25lIHNlcmllcy4NCg0KPiAgCQkJaWYgKHZxYy0+bnVtX3F1
ZXVlX3BhaXJzID09IDApDQo+ICAJCQkJZXJyX21zZ19mb3JtYXQgPSB0cnVlOw0KPiAgCQl9DQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJl
ZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlz
dHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
