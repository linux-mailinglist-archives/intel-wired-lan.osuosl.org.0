Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07DDB4C1A93
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Feb 2022 19:03:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ABBB6408EF;
	Wed, 23 Feb 2022 18:03:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vwrCo2EAcTer; Wed, 23 Feb 2022 18:03:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 67A21408EA;
	Wed, 23 Feb 2022 18:03:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3282A1BF263
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 18:03:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1ED2740141
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 18:03:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c8ZBB6jve3Nb for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Feb 2022 18:03:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D319D40040
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 18:03:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645639391; x=1677175391;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=s1OV/sjV3HDOzO3gDOGQcCMXnjd4rE/iaYCyPR+Bm4M=;
 b=WXuiDOw0GbgXZTT2JKbYxh1MAs1L8W5fzJxeE/0eHEjH4+tDyBv/N4g4
 Xddhd1UJV04F8YXC4HZVKlMTKIdYuF9ZgSyYgGJlAGbn96/qFtRKFeq3C
 h/gmat2qnoGbrbSvhpXCd+01+uTBoC4har/XyIH30Gec+Hr2W3ksreeN8
 Pquil52kXriLbmKMl6r9REQsTD/YR6lkN+wwZH5wF5vP10jqs3uVQtcOW
 upXIchPpXtmpmN7LkfYVw1am7pF2n3ExvkGUYLJ2jMhNPH1kAg1Pqugb3
 rmJqpgpNa3B/S/W9AdL1Pv87tSNKIA+ZWqw5WSePOQqS4SVT8LmygxolL g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="276664380"
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="276664380"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 10:02:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="776767840"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga006.fm.intel.com with ESMTP; 23 Feb 2022 10:02:26 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 23 Feb 2022 10:02:25 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 23 Feb 2022 10:02:25 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 23 Feb 2022 10:02:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Epopym1trO7B6JYJSp7kPbWurrPtLm1/R1OzZhSVAvoVYJjzevlxQz1tlP5GL+f+ZrmJsm/0fcZQ6CR+MJMhkMnDs8mYMGiD8MJU5hNEnzv/QEX4MvXCfZe1NcC/DHfYKYzNHeEI/6RCpV7XWGj+X/+MLWASiNeR+fGSeHcbgh1j3jkICUNN2JxDe8hygsE1XhbW88CcvpXV3QYGMiHl9DlA3qcDlQCsgQx7IsRdUi5B6GOVFfJe/ZL3jL4yBPbIVAKNKk7JBqngLSPwC4sihNuMhXgdFdbb9LLc0xl1FobiLbdX/oLdK08fgMhDsoexwFPTfGT8R/pzy2xhDAqirA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s1OV/sjV3HDOzO3gDOGQcCMXnjd4rE/iaYCyPR+Bm4M=;
 b=ObDXjLRcO7ZL1INvdeNEhj4KJFBy4SH5IKtRDoH965NsgPwlIEoOY0qCHiJkgXnPjc4ANHw5NSaDbnBoUQHt3Pvx5ro9Vpa/k3qaz9VF6FS1FLSW63m29oxx+nflXLgDkLLybqDiFqAUIUNfb7cZ/5H5mehmK/OLd5FL3s5iWoNgck0E2kdn42TOmTWyniltnoKUlgUjnfbsUEGZHsKylZXZLtcwk34a0vOeJ4PsOHkJ4RLyYvcNa18VGId0w4itVcXiSYzRcSW+wYUifQOy7LKliit+ihzY6t0dGsxLRbNEG8MguPNpViGy2h5EKOU7PCM/jfeRr5LGSid4UWooeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM5PR11MB1835.namprd11.prod.outlook.com (2603:10b6:3:114::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.22; Wed, 23 Feb
 2022 18:02:22 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::f57d:8a79:f838:ff1f]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::f57d:8a79:f838:ff1f%6]) with mapi id 15.20.4995.027; Wed, 23 Feb 2022
 18:02:22 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH 23/25] ice: cleanup long longs
 in ice_sriov.c
Thread-Index: AQHYKEwnncrOQ1U2o0Ki4uTEB6oGvaygXesAgACE84CAAIuYAA==
Date: Wed, 23 Feb 2022 18:02:22 +0000
Message-ID: <4228f673158e3f59f3465e617126034d47852e65.camel@intel.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
 <20220223002712.2771809-24-jacob.e.keller@intel.com>
 <bcba92ad-d159-2abc-f7d1-92043c9c44bc@intel.com>
 <CO1PR11MB5089CB5838DE2F54C51A079DD63C9@CO1PR11MB5089.namprd11.prod.outlook.com>
In-Reply-To: <CO1PR11MB5089CB5838DE2F54C51A079DD63C9@CO1PR11MB5089.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 27170a3d-3dba-4f8f-43d0-08d9f6f6a407
x-ms-traffictypediagnostic: DM5PR11MB1835:EE_
x-microsoft-antispam-prvs: <DM5PR11MB18351B0446002434A617C0ABC63C9@DM5PR11MB1835.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kyp/j/UC0X1ZTsqFc42iqcbe+YC0NNGOZ3pJTaD7LZR6E1VYuc1FJAJ5vqINUQJlOnX6/dNU+pe4yGghnQHrzgGXUxwPta8O7zuSnOoEU19/CeOS/gzVqXNqMJfuz64lSH8dZjGjjPyA4uCVup4S018Y3YG85q9qdpmmLNaezV/oc+yl5DnC7VSs2+8YYi7mC6XHU2WG2F3FBzqtX16+She/eNi3inkDrcDDzBR33vgFkTJhfN6KhFnvK4lvjv9CERplYw0cwa5F6dxoQxcO7i2P/oTjEMURZmALldsVZHtza9iKWChBY06/t/QWW1/L9hzk2cldX1sFE8BiYnnD1s8xYEbmYk08i0Cf6xz28CzciUxSpL4Wip+5796as6y3nEalGXY0CSWiwv0A++RC4szwrnlwWlNbU7wvGYUydGQId17Dt0JbmuF7pUxaiK9TjKz+HWrkPPJiND2ElkECfFVztlodfFRkST0d5YAR5QabxcOQmxskVhBPRTd9e4myfxugQW5xI5SesqfnCsArY1db2VQzupwt2y85w9KZ7VhTY+rN24u8sFld2EIry44TfHSWgX+XvXvzQoTLO5iTkUNRL+QDfohLNa93T4dqquApjXjK3du8P10SVOuQAXu+hmDsKAT3YGHn4Rk2+EAoV4df1x2GYe7Ip0Js6Y/KLzjQg17gP3l6RhvD0l75p1oSrViuOF6hniFohjAmhZPodYyT0xZ5ragXwtT9mbQ4ECMLKF4iutPFdGgT7sPbNdiPjRWmzZTf0B2u40hcLPasG97eI923VwUlYxZ9Xfh5YoY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(966005)(64756008)(110136005)(76116006)(6486002)(66556008)(91956017)(66476007)(186003)(8676002)(26005)(122000001)(316002)(86362001)(66946007)(2616005)(71200400001)(83380400001)(66446008)(508600001)(82960400001)(36756003)(5660300002)(53546011)(6506007)(6512007)(2906002)(8936002)(38070700005)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NEJZTmo5WWVEeHRqZ24rTHNiSGlmdVZkOUcvanpVRjAvSUUvMXdGMHR2MGsw?=
 =?utf-8?B?eTdKTEk2VkxFQ1ZmOEJHRlp3dGwvUklLL1V5c0lVbkNlVmV1d3lmZFNEc3RG?=
 =?utf-8?B?bmoxRTVTcXYwRkd0ODJlT0JMN3pWUjdnck9wMno2a1NaWWJoMUIrQmV6VFhr?=
 =?utf-8?B?Ykh5b2x5amxrZG5EOVVuNFdCQVhLK2F5d0JTTEVFdnNGeXNoZ1YrT2I5YWhG?=
 =?utf-8?B?RzVERm5XWkQ5eFI0bGw2dldnR2ZvM3RXdFBkKzg0RmkzQ25VYjV1OWhDRTNM?=
 =?utf-8?B?MlVnYTlKc2ZUNzdEZFlnVVUwUWw1ckFwUENoemU1R2VRdW1zcU45QUwxREtm?=
 =?utf-8?B?V0l3Ri9KeTgwYjRzSVExd3Vxa3QvWlZra3lOMWhwS1NlRENRZWR5MStQVExK?=
 =?utf-8?B?S09IbFFKZWdqcmdQVU41VzdPNmxidEFROUMrVmRJc3QvcWFjMmE4OENXNUha?=
 =?utf-8?B?SFF0eVVGM1V1a29WNGxvYndhUkpKK2ZzWkJtYVJBWUJ6YTRDWjR1NmFRcTBa?=
 =?utf-8?B?MHRZanAzMkY2bWVKYmhvUENjeHJ4QXExVzBwMHdXZjRGMGsrMXpONUw0aWNX?=
 =?utf-8?B?bGs3R3UwU1U0cFIyZXBQbVJtZUpuZ0o4eWZ3WE9RYUUxWUpRSlFJcUFRUkRx?=
 =?utf-8?B?VzVuMGlYWVdVcU0reUJNVEdiVW00bXltc2p2bG5NaEdVcS9IcERmdk96QlNi?=
 =?utf-8?B?cTBIbUlDWG43YXU2K3hPWVlBeGU0bVkzMk9pdU1CZU9pOFcwTkN3T3NqalBP?=
 =?utf-8?B?dWpPQmd4cU1zNGhmZkFXbXhOd3dudWJNaXZrRUNGLzVLQ2J0MDRJSEdpUDBV?=
 =?utf-8?B?L3JyaHZuVTQ1bWErL2RKYWZHNkNRZjUvWExSWC9MdXpkbGgvdmtnaTZpTm0x?=
 =?utf-8?B?U0IwdDVjbXM2dm9HMEh6RFYvN3d0aEtESWx6UmphRlVsNzZlckVXZUxneDcy?=
 =?utf-8?B?WWIxaENzZEY0bVFiU21idWcvd01lWTZGaUt0eGY3a29qRURkeTN0VG5hQXNK?=
 =?utf-8?B?bjhrelAwMXk2bG9ZMlI4VTBMNW9KdVRrRVRrU1g4YnlQMG5UVmtKUGJoTzUx?=
 =?utf-8?B?ZTRkRXp6ZVFubFZOdThUSEt2UG91NUpqdFROOTNseFIzYmlFL2dVNkdxcXRt?=
 =?utf-8?B?enRXcnV1Z0Uxc3lSYWhwZGlVZnYzV0lvbVRkZnlJZ3R3cGFoR2FBelVjQnVW?=
 =?utf-8?B?SjREYkFRY2xWQzlBY2RxWjV3LzhRWWY0aDlkcFhLYzltQlJhTUZQTWJOdmNz?=
 =?utf-8?B?cDdnWUtkMGFyaHZLdHExMEVOaXRDMDYzc3hmTWV0dG50Zk01akJrOU1Ibk9K?=
 =?utf-8?B?K1lRTlY5Z05uZWp3bzJNY1NSRWE3MW5IcHYydXlrU3B2NC9SSVN1Nlg0VlVR?=
 =?utf-8?B?N3k0UjBTeklqcENRakhoc1h1cnRRWmdhMmx6QWl4Q2VUcUpzbEdaSTVSZ2V3?=
 =?utf-8?B?UnhZVFRYbHoxY2tFRHgreXNwTW1GTzVPa1ZWVFJvZnFtbElsUDB0aktpZy9K?=
 =?utf-8?B?SFREa3VJaVNocHBQZzhJckhQSEJSVi96OFpvNHZ2NGd5dU81T2FhR3p6T1I1?=
 =?utf-8?B?dHEwVXNaaHFlZjIyanVOd3dGM29wQWFNOGZNVVpRcFlVMXd4T3lXZ0ErU2c4?=
 =?utf-8?B?MFBnUFlzbTFwckN6OWh3OEZzZi9uUlZmUGxGZzFGTHVuOU1ZRXl3ajk2NEZo?=
 =?utf-8?B?K3VMOTF2bXRnRG1WeEUvRThyUUJNS3Vxem9ZeENKeFZVejZYeXJIQngzRHVv?=
 =?utf-8?B?Zm10QzhxSUV0SEVsRGFWVm91WVg0MkdKQnE2ZVhTZDBDNkpiYmRDWldjd1h2?=
 =?utf-8?B?QVlJNklkdlZ3RmJna21UaFlHUjJYVzAxb2hOUzdyVUkxQjlpK1pDSUs0S0dF?=
 =?utf-8?B?dm1CZmprZ29RekV2Yzd4bzBKSDJGUHpPTVR1UExTak9Oa1JiMUhEUWY2YnlZ?=
 =?utf-8?B?OWI2SmJRa3hwMmQ4T0V4MTRuRUZVai9aK0RSYUdXN0RyQVZSMG85cWdzWmFk?=
 =?utf-8?B?T2lCUko0WnpjaUh1UksrWFNGNmhQdVVrbWo2VytIVHNCM1BWMytlUGluU1J0?=
 =?utf-8?B?WDlxOWdnR1ZkR2w0NjlsWlNZK0Jjb1owcm9zVDBKRGlUWmk3b1l0eVlESjRG?=
 =?utf-8?B?R0lJZFFFZmJsNVpRYzlIK0pUb1VoWnVlNkFWN2hyc0dqa3RqV3c0WGtrSVk3?=
 =?utf-8?B?QnZaTjR4Q3lsVUFDSFdIRnE4NU5tcDYrUTQ1Ujdqc1lHMkR6UG83WlF1aGJN?=
 =?utf-8?Q?fg4rgXjPBjTrrxsBf2oFLOLyerZnLHvx7Ml27IS3xc=3D?=
Content-ID: <FC1FF042FBA04B43979FAE4344928F0E@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27170a3d-3dba-4f8f-43d0-08d9f6f6a407
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2022 18:02:22.2869 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I8R+eDnX+l/FC3Wm6LqeNlctmHcZyDkZ1qOZTe3UD8TfCfil1occTv1gcmFKItl1kOV+Wdwe+VFOdHrsjxnIBUv73WPIbsJUyS/Wg0tz86o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1835
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH 23/25] ice: cleanup long
 longs in ice_sriov.c
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 2022-02-23 at 09:42 +0000, Keller, Jacob E wrote:
> 
> 
> > -----Original Message-----
> > From: Brandeburg, Jesse <jesse.brandeburg@intel.com>
> > Sent: Tuesday, February 22, 2022 5:47 PM
> > To: Keller, Jacob E <jacob.e.keller@intel.com>; Intel Wired LAN
> > <intel-wired-
> > lan@lists.osuosl.org>
> > Subject: Re: [Intel-wired-lan] [net-next PATCH 23/25] ice: cleanup
> > long longs in
> > ice_sriov.c
> > 
> > Subject should be "cleanup long lines" not "cleanup long longs"
> > 
> > 
> > On 2/22/2022 4:27 PM, Jacob Keller wrote:
> > > Before we move the virtchnl message handling from ice_sriov.c
> > > into
> > > ice_virtchnl.c, cleanup some long line warnings to avoid
> > > checkpatch.pl
> > > complaints.
> > > 
> > > Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> > 
> 
> Oops, thanks for the review Jesse!
> 
> Tony, can you fix this up in your tree?

Yea, I'll fix that up in the tree.

Thanks,
Tony

> Thanks,
> Haje
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
