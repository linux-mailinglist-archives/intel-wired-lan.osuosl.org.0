Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD752DF069
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Dec 2020 17:19:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 52CF020471;
	Sat, 19 Dec 2020 16:19:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id An41gswgRsE2; Sat, 19 Dec 2020 16:19:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AA78E20467;
	Sat, 19 Dec 2020 16:19:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9B47B1BF357
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Dec 2020 16:19:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 93B9E87052
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Dec 2020 16:19:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0Nt36FKMVaI5 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Dec 2020 16:19:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BAD9486E33
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Dec 2020 16:19:27 +0000 (UTC)
IronPort-SDR: BuZdS9KKpu+5JICa+qDKYO0ZRETZL6+wDTep3I4lyIzvgM7YlW1/THxh8f79dFdEvT9vcRUC2D
 v4aVkqQ0KCrA==
X-IronPort-AV: E=McAfee;i="6000,8403,9839"; a="175724032"
X-IronPort-AV: E=Sophos;i="5.78,433,1599548400"; d="scan'208";a="175724032"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2020 08:19:27 -0800
IronPort-SDR: I39CEREw/seiVyxABy4D4pF4fOUbubhqgz8xaS2aas/xQG+cUL7fzxAOwZOGHFEkl/xgEv2tIA
 sSVuWl4ETy0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,433,1599548400"; d="scan'208";a="335743093"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 19 Dec 2020 08:19:26 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 19 Dec 2020 08:19:25 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 19 Dec 2020 08:19:24 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Sat, 19 Dec 2020 08:19:24 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Sat, 19 Dec 2020 08:19:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d2aW1Gk+pXqJtyz2VdLp7bjFkjSompm3huNVIZ6zIrrtjee6nj9z2494+bLWL5CuDezCuX9YJIXkRQDHMSTFLRVMC9dTjjjPkVoLQx/4bJ99okA60snX/Tie8M8TPoTKQWqjdx990IpN9D+Qdo7A9fLbIy2n+McNDlHIHahcfgWtdsqQeFGMgUSTMl2+Ie/rnoDanXyN4Sx/7EHJqMDH54Bxg4fSIxQYL7ji9hgQ8PvBd1is+L/pC2lWwFxVXrW4dhIfegaJ94Bb/n6WZ0yTOR8WctU81FhsqnZcMfTDx/f5YZOqcmC0sgH43NxVM45UDTvq7zvkWn3ptO1PMrrPUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l4iXoKGUSToYMUdntGU8qsmK0C5L8E+x795JCgHXjoc=;
 b=Dpv4D/gD9zVrqJIWywThgIrat1JaDf0BRo3rY19HZduqP+QdtfMVxaPIsZ/IWtsv+CMvpntZVtOWiGmlZp8grQAi/VTeBEdtfEtRPMYebfXKT3zTETImhZM0aZEM4i0k8HiFp2/yj3gRxeRSjkdGhzWA46t4gMTajloTefs3O0V12jF9SGJUcKct+ZDxJhJF+QpGcyR3Q1EdnTd8YuLfBdHenFcqrykQ1Oy+HMQd1N3uKiM5S5Fw3p6Nkv63Dm1FgxFPYZqZTBUOg7IJ1Eit5///YmD2Z2kHjGmZ6EP7u+dhOGz7VWLAMTibWQN6DulGOdvXJoP0pxTgLw4fU4Y2bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l4iXoKGUSToYMUdntGU8qsmK0C5L8E+x795JCgHXjoc=;
 b=j/qKLsPyHf+ZhO0MqhhmBdFOTUPdfmV3KbtovWWfIsiMVZ5S3SKjaJvusjLAIQq040QCjz7rVncr4c9l9Wn4TMQBP01/At4jl0UkJdF801L92Zybab7Kw/gxUlsAV8MIuBtiBEWdqbMRQ1UCmyNFu3uHNGkE5lziEr+sgHWzpo0=
Received: from MN2PR11MB3614.namprd11.prod.outlook.com (2603:10b6:208:ea::11)
 by MN2PR11MB4013.namprd11.prod.outlook.com (2603:10b6:208:13e::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3676.25; Sat, 19 Dec
 2020 16:19:21 +0000
Received: from MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::61:2bc8:a0b1:11b2]) by MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::61:2bc8:a0b1:11b2%5]) with mapi id 15.20.3654.020; Sat, 19 Dec 2020
 16:19:21 +0000
From: "Fujinaka, Todd" <todd.fujinaka@intel.com>
To: Ben Greear <greearb@candelatech.com>, Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] 5.10.0 kernel regression for 2.5Gbps link
 negotiation?
Thread-Index: AQHW1WmC/9lZetFbe0W6vQgdg2EdV6n9PE7AgAAE+ICAADjoAIAAA24AgAAMYICAAAwigIABATNg
Date: Sat, 19 Dec 2020 16:19:21 +0000
Message-ID: <MN2PR11MB3614FD0C52705864C05EFDF8EFC20@MN2PR11MB3614.namprd11.prod.outlook.com>
References: <7bb485c3-9556-d9f1-e70f-a4b3a05909c9@candelatech.com>
 <BYAPR11MB3606E48BA821185142354D67EFC30@BYAPR11MB3606.namprd11.prod.outlook.com>
 <3bcba0ca-8f3b-8428-861a-86aaff1688b6@molgen.mpg.de>
 <c54c8f2c-a295-c691-466e-07ae8f41b0ac@candelatech.com>
 <3c8510fb-af8c-b5f9-2af1-64584a667ac8@molgen.mpg.de>
 <BYAPR11MB36060F3889C66AE55092DA01EFC20@BYAPR11MB3606.namprd11.prod.outlook.com>
 <8635a2db-0d38-c088-321b-27bc4bb21ec4@candelatech.com>
In-Reply-To: <8635a2db-0d38-c088-321b-27bc4bb21ec4@candelatech.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
authentication-results: candelatech.com; dkim=none (message not signed)
 header.d=none;candelatech.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.115.69.8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 39be63e0-a243-42f5-88b5-08d8a439d7e2
x-ms-traffictypediagnostic: MN2PR11MB4013:
x-microsoft-antispam-prvs: <MN2PR11MB401364E36244513A002634CEEFC20@MN2PR11MB4013.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kT59EGiu1f61tKs9IvkaCIpFoaV+IHyr216M4BgB25K9z2zOVTcy+L5ork5C9LZeqH/lLQq38wASdiP083MWimDuKauOdkZJ/dPykxAenXL1+ZbCNn5zMP6u0THLBrINNPFeM+RrLiuidYWPSW7SQlHbyC5PcNpZXlHyCqcRKE9XTHQ9cPuYwl80YCN7vggVYeaZns3uGJOWQTpywfCCwZo/7LZ4nmGbm8RMJUmCbu4YCMaH03F20LN+vrCVC4ayEbnIJ3AHGttO4dTZITKWtVcKskPNQtg73BuV5KlClU6E9JQ++Q+AD9gFqukHD5brHMW2Ek1JvX4XXTt3JbD0jZTdhw/3nxKdKB9H1V+3/dSLKO/oqn7BiFK/8RITmxfMx7InWNJYdgc4/X6mzpN1hfrFQUSJU0aAguQYo6ZBsxdQNRtVDer6mRwYoPEapH2sFLYJcw1TFvAJeZ9kDdn/G39EpybHfSgimSRhTPOqMClLR88fiB1NMxN0amqko/ADOhae0n5rp6KToGGCyVYT5g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB3614.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(396003)(376002)(346002)(136003)(366004)(2906002)(52536014)(33656002)(966005)(478600001)(76116006)(5660300002)(66446008)(8936002)(54906003)(66946007)(110136005)(64756008)(66556008)(66476007)(86362001)(316002)(53546011)(8676002)(6506007)(71200400001)(26005)(186003)(83380400001)(55016002)(9686003)(7696005)(4326008)(18886065003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?eUtXVmx1RGhmT29RWHdzeTBUUEtUemxMSlA2aVhZWS9iMUc4WmRRZVUrVDBs?=
 =?utf-8?B?L3lCS2dSNmJWNDlGLzJlTkErTURTa0lmbkM5SmlpeGZEU01zSTJLVGdKbXht?=
 =?utf-8?B?T2J6YnRHVTZENzJjZGFRS0U1SnlTQXlmQ0dLaGp3MUtQRWo0YjUxY2V6Yncz?=
 =?utf-8?B?dzN3RGxHVFhwK2Zwd0NCemFaN1ZYKzM4bCtrK04ydU1yTlhLY2ZqYUVIYmdt?=
 =?utf-8?B?cXRmc25MYWtxQm16Tjh5RXRBbHZ3Z3RSU0pKcC9wM2l6c0wyOTZlMUdraWlV?=
 =?utf-8?B?blhMNk9aOXdpejdTSmd2Y3BLQTd3OWF6MWNUK2RNR2VJRFFER2pJY0c0STJZ?=
 =?utf-8?B?VFBZUEJtdEFEelNBK3JNdEtGUkFuekFtNHZ3cm04Y0xhLzE0b0t5RzQ3SnBQ?=
 =?utf-8?B?VkpBVWlKb1RxTzZmRlB5Zy9JZTQraG52cDEyR0g1ZG05WFo4TkhQdnowTWVL?=
 =?utf-8?B?V1NNVVNxWEZ5ei83a3RrcUtYY05WWXdzZW1YS3Vka1Y3a1JOL0Nla2E5cm5P?=
 =?utf-8?B?bllXMU5kZ1p5Wkh2S1dlZWhKTXBYVVFBaEpLRzNhRjJoTzJFVHRsRXhtN3Zm?=
 =?utf-8?B?RTlrS25zbWxrZ1UyNXZ4OXVZOERhSEJWdVZrSWRGaHE1RTJHN2VEWlNNUVRE?=
 =?utf-8?B?N1JOeFRCd3FScitoVVc4cnRyakVmWDBVejMrRW1DN0ZUd0cvK1pSWXR0THo0?=
 =?utf-8?B?TFBtTWswU2hCUjNvNGQ4YkdJVTgwK1FObHkwdFNlZXJxNGlSTUs0M0tUWVk4?=
 =?utf-8?B?TTdIelhCSHkwMnp6U2FDYmNPcC9Pb3FYZktDN2t6dS9XdE1aU3dUNHI3emk1?=
 =?utf-8?B?VUhERXdzSVZQQkhvb3Jkc2V4QVdpNEZTdHIwN0VVeTRtaVNUYmY3VjFoUDZE?=
 =?utf-8?B?NVhzdGZHSzV2WGcySGJGYy9saE9zK1lKVzVybnExcUt4eGk3d0g3MFBMaHNS?=
 =?utf-8?B?bVByMWRpQjhaVHVweU9oUHBhbDBQa1lmdUdHWG1yQXMzSGpMaFV6aGJYbXFo?=
 =?utf-8?B?VkZ1d2FRQWVNTzVEd1BOWjZIaitpR0Mxc2tTQWl6REFMMWxPZDBPaklGbVJ1?=
 =?utf-8?B?T2I1c0l4ckc4U1hpNWpaQTBmR3d1ZUxQUHBQRXFtVUNKb3dlMFc3UHQrQTUv?=
 =?utf-8?B?VGlrbHQ2TzJ4QzZ6WWphU1d3NDlRSG95QWFOVnE2ditMRGFvUzJsVm5FTkJo?=
 =?utf-8?B?QlNXYkV3cjdUOVowbXEvclJmNWJqOGNWWkdCbDUySmthUDAzMUlTakZRd1h5?=
 =?utf-8?B?MHFuaC9ZOUdiSmVXaXA0anI0ODlERUhwQ3ZhTngrL1YwZVFwdWdJV2QwWURp?=
 =?utf-8?Q?iL0FBjx6k5oFE=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3614.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39be63e0-a243-42f5-88b5-08d8a439d7e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2020 16:19:21.4044 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9BiTGJVsG3mvnZ7QHMoGOJDQOJ4wk1z8VBPzSEwv8hYpFUswPvYQNo6O+7dioMny63vLRzWRPUc+gUDmXvd54g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4013
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] 5.10.0 kernel regression for 2.5Gbps link
 negotiation?
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
Cc: Greg KH <gregkh@linuxfoundation.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhpcyBpcyBhIGJhZCBjYXNlIHdpdGggbm8gaWRlYWwgc29sdXRpb24uIERldGVjdGluZyB0aGUg
Y2FzZSBpcyBub3QgcG9zc2libGUgYXMgYXV0b25lZ290aWF0aW9uIGhhcHBlbnMgaW4gdGhlIGhh
cmR3YXJlIHdpdGhvdXQgc29mdHdhcmUgaW52b2x2ZW1lbnQuDQoNCk9uZSBzb2x1dGlvbiB3YXMg
dG8gdXBkYXRlIHRoZSBzd2l0Y2ggZmlybXdhcmUgZm9yIHRoZSBhIHN3aXRjaCB0aGF0IGlzIGlz
IHRoZSBsaW5rIHBhcnRuZXIgdGhhdCBnaXZlIHVzIHRoZSBtb3N0IHRyb3VibGUuIFRoZSBpc3N1
ZSBhcHBlYXJzIHRvIGJlIGluIGNvbXBldGluZyBvciBoYWxmLWltcGxlbWVudGVkIHN0YW5kYXJk
cy4gMi41RyBhbmQgNUcgd2VyZSBpbml0aWFsbHkgbm9uLUlFRUUgc3RhbmRhcmRzIHRoYXQgZGlm
ZmVyZW50IG1hbnVmYWN0dXJlcnMgaGFja2VkIG9udG8gMUcgaW4gZGlmZmVyZW50IHdheXMuIFdl
IGltcGxlbWVudGVkIGl0IHRvIG9uZSBvZiB0aGUgc3RhbmRhcmRzIHdoaWNoIHNob3VsZCBiZSBp
bnRlcm9wZXJhYmxlLCBidXQgdGhlIGNvcm5lciBjYXNlIG9mIHRoZSB3aWRlbHktZGVwbG95ZWQg
c3dpdGNoIHdpbGwgdGFrZSB0aGUgbGluayBmcm9tIDEwRyB0byAxRyB3aXRoIG5vIGF1dG9tYXRl
ZCB3YXkgdG8gZml4IGl0Lg0KDQpVcGRhdGluZyBzd2l0Y2hlcyBtZWFucyBhIGxvdCBvZiBkb3du
dGltZSBmb3IgYSBsb3Qgb2YgZGF0YWNlbnRlcnMgYW5kIHRoZSBPRU1zIHdlIGRlYWwgd2l0aCB3
b3VsZCBub3QgYWNjZXB0IHRoYXQgYW5zd2VyLg0KDQpPdXIgc29sdXRpb24gd2FzIHRvIGRpc2Fi
bGUgMi41RyBhbmQgNUcgYnkgZGVmYXVsdC4gVGhpcyBmaXhlcyAxMEcgbGlua2luZyBhdCAxRyBv
biB0aGF0IHN3aXRjaCwgYnV0IDIuNUcgYW5kIDVHIHdpbGwgbGluayBhdCAxRyBieSBkZWZhdWx0
LiBBbmQsIGFzIEkgc2FpZCwgSSd2ZSBoYWQgdmVyeSBsaXR0bGUgY29udGFjdCB3aXRoIHBlb3Bs
ZSB1c2luZyAyLjVHIGFuZCA1RyBhbmQgSSdtIHRoZSBndXkgb24gYWxsIHRoZSBtYWlsaW5nIGxp
c3RzLiBJIGFwb2xvZ2l6ZSBmb3IgbWFraW5nIHlvdXIgbGlmZSBoYXJkZXIsIGJ1dCBpdCBzZWVt
cyBsaWtlIGl0J3MganVzdCB5b3Ugc28gZmFyLiBQYXVsIHNlZW1zIHRvIGJlIGFyZ3Vpbmcgd2l0
aCBtZSBqdXN0IGZvciB0aGUgZnVuIG9mIGl0Lg0KDQpUb2RkIEZ1amluYWthDQpTb2Z0d2FyZSBB
cHBsaWNhdGlvbiBFbmdpbmVlcg0KRGF0YSBDZW50ZXIgR3JvdXANCkludGVsIENvcnBvcmF0aW9u
DQp0b2RkLmZ1amluYWthQGludGVsLmNvbQ0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0K
RnJvbTogQmVuIEdyZWVhciA8Z3JlZWFyYkBjYW5kZWxhdGVjaC5jb20+IA0KU2VudDogRnJpZGF5
LCBEZWNlbWJlciAxOCwgMjAyMCA0OjQ3IFBNDQpUbzogRnVqaW5ha2EsIFRvZGQgPHRvZGQuZnVq
aW5ha2FAaW50ZWwuY29tPjsgUGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCkNj
OiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgR3JlZyBLSCA8Z3JlZ2toQGxpbnV4
Zm91bmRhdGlvbi5vcmc+DQpTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gNS4xMC4wIGtl
cm5lbCByZWdyZXNzaW9uIGZvciAyLjVHYnBzIGxpbmsgbmVnb3RpYXRpb24/DQoNCk9uIDEyLzE4
LzIwIDQ6MDkgUE0sIEZ1amluYWthLCBUb2RkIHdyb3RlOg0KPiBXaGF0IGRvIHlvdSBjb25zaWRl
ciBhIHJlZ3Jlc3Npb24/IEhhdmluZyB0byBlbmFibGUgMi41RyBhbmQgNUcgdXNpbmcgZXRodG9v
bCB3aGljaCBjYW4gYmUgZG9uZSBhdCBib290IHRpbWU/DQo+IA0KPiBXZSBoYWQgbW9yZSB0aGFu
IGEgZmV3IGRhdGFjZW50ZXJzIHdpdGggaXNzdWVzIGJlY2F1c2Ugb2YgY29tcGV0aW5nIHN0YW5k
YXJkcy4gSSBjaGVja2VkIHdpdGggb3VyIG1hcmtldGluZyBwZW9wbGUgYW5kLCBvbiB0aGUgd2hv
bGUsIG5vIG9uZSBjb3VsZCB0aGluayBvZiBhIGxhcmdlIG51bWJlciBvZiAyLjVHIG9yIDVHIGN1
c3RvbWVycy4NCj4gDQo+IFdlIGhhZCBzZXZlcmFsIGVzY2FsYXRpb25zIGZyb20gbWFqb3IgT0VN
cyBhbmQgdGhpcyB3YXMgdGhlIHNvbHV0aW9uIHRoZXkgd2FudGVkLg0KPiANCj4gV2UgY29uc2lk
ZXIgdGhpcyBuZWNlc3NhcnkgZm9yIGludGVyb3BlcmFiaWxpdHkuDQoNCkNhbiB5b3UgZGV0ZWN0
IHRoaXMgY2FzZSBzb21laG93IGFuZCBhdXRvbWF0aWNhbGx5IGZhbGwtYmFjayB0byAxR2Jwcz8N
Cg0KRm9yIG15IG93biBwdXJwb3NlcywgSSB3aWxsIGp1c3QgaGFjayB0aGF0IGNvbW1pdCwgYnV0
IGl0IGlzIGxpa2VseSB0byBiZSBjb25mdXNpbmcgdG8gb3RoZXIgcGVvcGxlIHdobyBoYWQgYSBz
eXN0ZW0gdGhhdCB3b3JrZWQgYXQgMi41IHByZXZpb3VzbHkgYW5kIHRoZW4gc3VkZGVubHkgaXQg
aXMgc2xvd2VyLiAgVGhlcmUgaXMgbm8gZWFzeSB3YXkgdG8ga25vdyBmcm9tIHRoZSBzeW1wdG9t
IHRoYXQgeW91IG5lZWQgdG8gZGlnIHVwIGFuIG9ic2N1cmUgcmVhZG1lIGFuZCBydW4gYW4gb2Jz
Y3VyZSBldGh0b29sIGNvbW1hbmQuDQoNClRoYW5rcywNCkJlbg0KDQo+IA0KPiBUb2RkIEZ1amlu
YWthDQo+IFNvZnR3YXJlIEFwcGxpY2F0aW9uIEVuZ2luZWVyDQo+IERhdGEgQ2VudGVyIEdyb3Vw
DQo+IEludGVsIENvcnBvcmF0aW9uDQo+IHRvZGQuZnVqaW5ha2FAaW50ZWwuY29tDQo+IA0KPiAt
LS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBQYXVsIE1lbnplbCA8cG1lbnplbEBt
b2xnZW4ubXBnLmRlPg0KPiBTZW50OiBGcmlkYXksIERlY2VtYmVyIDE4LCAyMDIwIDM6MTkgUE0N
Cj4gVG86IEJlbiBHcmVlYXIgPGdyZWVhcmJAY2FuZGVsYXRlY2guY29tPjsgRnVqaW5ha2EsIFRv
ZGQgDQo+IDx0b2RkLmZ1amluYWthQGludGVsLmNvbT4NCj4gQ2M6IGludGVsLXdpcmVkLWxhbkBs
aXN0cy5vc3Vvc2wub3JnOyBHcmVnIEtIIA0KPiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+
OyBOZ3V5ZW4sIEFudGhvbnkgTCANCj4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgQnJh
bmRlYnVyZywgSmVzc2UgDQo+IDxqZXNzZS5icmFuZGVidXJnQGludGVsLmNvbT47IFR5bCwgUmFk
b3NsYXdYIA0KPiA8cmFkb3NsYXd4LnR5bEBpbnRlbC5jb20+OyBMb2t0aW9ub3YsIEFsZWtzYW5k
ciANCj4gPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPjsgTWNsZWFuLCBBcnRodXIgRiAN
Cj4gPGFydGh1ci5mLm1jbGVhbkBpbnRlbC5jb20+OyBTa2FqZXdza2ksIFBpb3RyWCANCj4gPHBp
b3RyeC5za2FqZXdza2lAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxh
bl0gNS4xMC4wIGtlcm5lbCByZWdyZXNzaW9uIGZvciAyLjVHYnBzIGxpbmsgbmVnb3RpYXRpb24/
DQo+IA0KPiBbK2NjIFJhZG9zbGF3LCBBbGVrc2FuZHIsIFBpb3RyXQ0KPiANCj4gQW0gMTkuMTIu
MjAgdW0gMDA6MDcgc2NocmllYiBCZW4gR3JlZWFyOg0KPj4gT24gMTIvMTgvMjAgMTE6NDMgQU0s
IFBhdWwgTWVuemVsIHdyb3RlOg0KPiANCj4+PiBBbSAxOC4xMi4yMCB1bSAyMDoyNyBzY2hyaWVi
IEZ1amluYWthLCBUb2RkOg0KPj4+PiBZZXMsIGFuZCBJJ20gcGx1Z2dpbmcgdGhlIGhvbGUgaW4g
dGhlIFJFQURNRSByaWdodCBub3cuIEhlcmUncyB0aGUgDQo+Pj4+IHByb3Bvc2VkIHRleHQ6DQo+
Pj4+DQo+Pj4+IEFkdmVydGlzZW1lbnRzIGZvciAyLjVHIGFuZCA1RyBvbiB0aGUgeDU1MCB3ZXJl
IHR1cm5lZCBvZmYgYnkgDQo+Pj4+IGRlZmF1bHQgZHVlIHRvIGludGVyb3BlcmFiaWxpdHkgaXNz
dWVzIHdpdGggY2VydGFpbiBzd2l0Y2hlcy4gVG8gDQo+Pj4+IHR1cm4gdGhlbSBiYWNrIG9uLCB1
c2UNCj4+Pj4NCj4+Pj4gZXRodG9vbCAtcyA8ZXRoWD4gYWR2ZXJ0aXNlIE4NCj4+Pj4NCj4+Pj4g
d2hlcmUgTiBpcyBhIGNvbWJpbmF0aW9uIG9mIHRoZSBmb2xsb3dpbmcuDQo+Pj4+DQo+Pj4+IDEw
MGJhc2VURnVsbMKgwqDCoCAweDAwOA0KPj4+PiAxMDAwYmFzZVRGdWxswqDCoCAweDAyMA0KPj4+
PiAyNTAwYmFzZVRGdWxswqDCoCAweDgwMDAwMDAwMDAwMA0KPj4+PiA1MDAwYmFzZVRGdWxswqDC
oCAweDEwMDAwMDAwMDAwMDANCj4+Pj4gMTAwMDBiYXNlVEZ1bGzCoCAweDEwMDANCj4+Pj4NCj4+
Pj4gRm9yIGV4YW1wbGUsIHRvIHR1cm4gb24gYWxsIG1vZGVzOg0KPj4+PiBldGh0b29sIC1zIDxl
dGhYPiBhZHZlcnRpc2UgMHgxODAwMDAwMDAxMDI4DQo+Pj4+DQo+Pj4+IEZvciBtb3JlIGRldGFp
bHMgcGxlYXNlIHNlZSB0aGUgZXRodG9vbCBtYW4gcGFnZS4NCj4+Pg0KPj4+IFdoYXQgY29tbWl0
IGludHJvZHVjZWQgdGhpcyByZWdyZXNzaW9uLiBQbGVhc2UgYmVhciBpbiBtaW5kLCB0aGF0IA0K
Pj4+IHRoaXMgY29udHJhZGljdHMgTGludXjigJkgbm8tcmVncmVzc2lvbiBwb2xpY3ksIGFuZCB0
aGUgY29tbWl0IHNob3VsZCANCj4+PiB0aGVyZWZvcmUgYmUgcmV2ZXJ0ZWQgYXMgc29vbiBhcyBw
b3NzaWJsZS4NCj4+DQo+PiBMb29rcyBsaWtlIGl0IGlzIGF0IHRoZSBlbmQgb2YgdGhpcyBwYXRj
aCwgdGhvdWdoIHRoZSBkZXNjcmlwdGlvbiANCj4+IGRvZXNuJ3QgbWVudGlvbiBjaGFuZ2luZyBk
ZWZhdWx0czoNCj4+DQo+PiBDb21taXQgYTI5NmQ2NjVlYWUxZThlYzY0NDU2ODNiZmI5OTljODg0
MDU4NDI2YQ0KPj4gQXV0aG9yOiBSYWRvc2xhdyBUeWwgPHJhZG9zbGF3eC50eWxAaW50ZWwuY29t
Pg0KPj4gRGF0ZTrCoMKgIEZyaSBKdW4gMjYgMTU6Mjg6MTQgMjAyMCArMDIwMA0KPj4NCj4+ICAg
wqDCoMKgIGl4Z2JlOiBBZGQgZXRodG9vbCBzdXBwb3J0IHRvIGVuYWJsZSAyLjUgYW5kIDUuMCBH
YnBzIHN1cHBvcnQNCj4+DQo+PiAgIMKgwqDCoCBBZGRlZCBmdWxsIHN1cHBvcnQgZm9yIG5ldyB2
ZXJzaW9uIEV0aHRvb2wgQVBJLiBOZXcgQVBJIGFsbG93IHVzZQ0KPj4gICDCoMKgwqAgMjUwMEdi
YXNlLVQgYW5kIDUwMDBiYXNlLVQgc3VwcG9ydGVkIGFuZCBhZHZlcnRpc2VkIGxpbmsgc3BlZWQg
bW9kZXMuDQo+Pg0KPj4gICDCoMKgwqAgU2lnbmVkLW9mZi1ieTogUmFkb3NsYXcgVHlsIDxyYWRv
c2xhd3gudHlsQGludGVsLmNvbT4NCj4+ICAgwqDCoMKgIFRlc3RlZC1ieTogQW5kcmV3IEJvd2Vy
cyA8YW5kcmV3eC5ib3dlcnNAaW50ZWwuY29tPg0KPj4gICDCoMKgwqAgU2lnbmVkLW9mZi1ieTog
VG9ueSBOZ3V5ZW4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPg0KPj4NCj4+IFRoYW5rcywN
Cj4+IEJlbg0KDQoNCi0tDQpCZW4gR3JlZWFyIDxncmVlYXJiQGNhbmRlbGF0ZWNoLmNvbT4NCkNh
bmRlbGEgVGVjaG5vbG9naWVzIEluYyAgaHR0cDovL3d3dy5jYW5kZWxhdGVjaC5jb20NCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxh
biBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5v
c3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
