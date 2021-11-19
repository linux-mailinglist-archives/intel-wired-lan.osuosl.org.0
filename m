Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 71290457657
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Nov 2021 19:24:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F3DC141C37;
	Fri, 19 Nov 2021 18:24:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3uYHzImktdqJ; Fri, 19 Nov 2021 18:24:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 12A3841C11;
	Fri, 19 Nov 2021 18:24:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6BF7D1BF20F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Nov 2021 18:23:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 67C3841C11
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Nov 2021 18:23:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bzz4YW2Ygg0L for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Nov 2021 18:23:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B61BC410BB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Nov 2021 18:23:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10173"; a="234297052"
X-IronPort-AV: E=Sophos;i="5.87,248,1631602800"; d="scan'208";a="234297052"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 10:23:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,248,1631602800"; d="scan'208";a="647229563"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 19 Nov 2021 10:23:57 -0800
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 19 Nov 2021 10:23:56 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 19 Nov 2021 10:23:56 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 19 Nov 2021 10:23:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D9kjARCrblAwBhh1GNQUQIFOK/m5Ik+CKqc85FEH9tfqaYndwW74y6OIeGhWtlYKwEFexZbOg1Ovmhys/X1evFKqdv6piRSpSxkCCi2MZ8tQuC76yRihhZQWIlMkrGj61thKOK+vFxDV7hIj6Nzpysyoxfen4dYHAyHZdrqprIAb1CNu0OwTVOT0KuF2hRytk/i2rGO4/6nZTF6hCbVY1PR9OBkcVf2aIyAqHikBQBTvUDy4JvC8b0oIgrLzvjWWUn1nt6w9mhifIZtLm9h1ir/8nby/GhPfrnK0wb4enPtDBdKyGZz1A/TSZKPVK1rDiMd3MUG/AuvKgUAqF55JDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oCsKmASzxociEz1cRCqZePFNR9RByb90WE/QOzUtZAg=;
 b=N4arjAD4+s6sImYYblNFEkNP5tdk/prXN/Iw8pYF6SmpWP9ESqpOBYbiDGsye0QKzadI1Qrw7SFtLhtaqaJ55bVkH81dRsou/ETjFqIKgvg9CjsJUHX/aOknnwZRr0jpcUTlLzCgMfsqN9fb2osfWVlkKT048BN0gXh1Jhe/QxbHoingVvzfWA+FQFZXkjdhy2TDhnQt0JeWQuMkdolgZMfJe0Spx2RDRBMX2gdT60cTRNsq+qrGKDXshGJIAyYHy5anJy8J70QOMF7ZvB/lqIvWf6SLQ3elu8tJE7vZRuGxT5MGdom4GBcCyEZswCfaQoIyl9utXsP9J+AWRbxj1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oCsKmASzxociEz1cRCqZePFNR9RByb90WE/QOzUtZAg=;
 b=tote54xMoce5g+RIGuHKOINmTpTAKtusdKEh//siZY780Duj+0Fvv225kNa8ED1aJbp9pRHHg41/fu+cSCgqzJwmAHPk1MHJQ0XHCBJoVZIWb9vmSGbrerBDZQvwU2q5z0K4CnwrHQILL88AGCvAIbdUlsF/aKuoS9cxJ5nnfMQ=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2703.namprd11.prod.outlook.com (2603:10b6:805:59::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.15; Fri, 19 Nov
 2021 18:23:45 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a5ee:3fab:456b:86d8]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a5ee:3fab:456b:86d8%7]) with mapi id 15.20.4690.029; Fri, 19 Nov 2021
 18:23:45 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix for displaying
 message regarding NVM version
Thread-Index: AQHX3UODo9xMAvSnwE6yLf+NpEPbWKwLKkuA
Date: Fri, 19 Nov 2021 18:23:45 +0000
Message-ID: <c066d91ca5a3b3f4323c6cd6c448a316dbb6a7ee.camel@intel.com>
References: <20211119124603.19611-1-mateusz.palczewski@intel.com>
In-Reply-To: <20211119124603.19611-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e9e80c2d-399c-4968-cf8c-08d9ab89b95a
x-ms-traffictypediagnostic: SN6PR11MB2703:
x-microsoft-antispam-prvs: <SN6PR11MB270374D324857745083A0CFAC69C9@SN6PR11MB2703.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zR1BLftQ71XYOEprqZ0vaabE90TnH3tDCuN1c94+eNqtnaG3SR5nvpRmkDAcxjm41yLAa7rRshHBMPQMPzePyCyU/JQgeh/VvSQwFXdRAjxHUUn4mLw3wHTCX9RpeIZ0t0GM7FigBEP4hTqHfEqV1MYIt6nMFSLxMzCb7SxQcjwgsIoEe5+a728GH7nhtv/2H+lvm0ICJJUr+glTBeBQnyfOSHP1UzFEgQ8Xkzs5xSkZKUpw4Gagj1UOevgNQm/4AwCXka9FL11YTeW8G7k1/ceGlh9NSpPbXFveYoxl8QqIYHEVk5HxCLyq8lKjocnpwZciKITibnd3NLqjkUaL6jfgTwXGPlWzatNM4ilUhFCmdETdJBBvCFLveItdq2GzH4aeJtVlyp2uj1nSJieq8+AxpAfdvQe1ENNH4exdOJitz1EhcLhDhoYxwaIaEeTa82gGnmSUM8gnHLg/tIvVjdcIdNx04quEoUehDmjjxXX07G7C2sbH0Qxk3I3zWAFgexG1RnrqJ9UvBTUUbZegA/Jdg/3c+qJKVYjpsL8vm+RnF00KMs9dOK57I9b10x5e9/hmQawdJAw9L6oE3LG2QKI/QGJIP+O6TYARCuaIaENBdKsB4vhuW6CqfY+TUkibexNa6+ykcSlp+wzEH+QrMi6diGavsy50ET4b41HIYuq7tiwzpyUyCPS61FbgmsMmy/63zfX13RlnNPzy1yGjrw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(15650500001)(36756003)(8936002)(5660300002)(186003)(4001150100001)(71200400001)(6512007)(8676002)(26005)(6506007)(38100700002)(4744005)(316002)(122000001)(110136005)(86362001)(6486002)(2906002)(508600001)(38070700005)(66556008)(76116006)(82960400001)(66446008)(64756008)(2616005)(66476007)(66946007)(91956017)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bW0xMUZFUU9NdVVzaGRGczQ5aGt1a0wxSlYvaEFYRVk3MnhDWnlIeEJ2Wity?=
 =?utf-8?B?VC9HRUtQdmp1VXBqUDVsek5iUkZDOUFNWXdLdWZuc1FIQUhRb3VaaC9NMnc2?=
 =?utf-8?B?RFkvUjF3WGhIY1IzRGZuYlFWU2ZSVTNLbFp5YWd5b3VDNWM5NkJVZytaUld2?=
 =?utf-8?B?YW9zYVVIV2grTkJrYjJPMDRERDZYR1VUNC9pTmppS1AvakRZWUVDL09lNUZs?=
 =?utf-8?B?TUt6c3haVW9Jc2NLelhJUHJod2dvQlk4TFdCK3Y2cjlQZ2dkU2RUcEJ6Witr?=
 =?utf-8?B?WFU0d3JJejVUeUdwbjF1UTAybDh6VTI3UllrdVVvS0tKOHp3RWcyR1FLYi95?=
 =?utf-8?B?b1A2cVM1UVVpeDVnOWJpR1BzRm4yTUxOSG1zV2d3cDIvT3pTcHJSMVdyV25H?=
 =?utf-8?B?aG1ObnFYWjVKZ21MVC80Vkxoa2VSS1RIb1pEWTV0ZklKTkoxVE44R2hvcGwr?=
 =?utf-8?B?TDZZdHRqOE9lbU1uVXdVNWVOWEpCVDJ3allKdUxNVklCOGpYMmI2aUZtTGFM?=
 =?utf-8?B?Q2o5MVlnNEFZbXdnQmJkM1ZaK1Rack14azE3R3lQNy9ydHYzNWlLQW9jZkJC?=
 =?utf-8?B?bGFPM2RBSGM2SXVRS0JkN1htTXZQTjVZUUFRdWxZd0h6c1lJaW5yZ3JHY1Yw?=
 =?utf-8?B?a0FscmVBTWpydGZ0R3VVY01kcE1WVE02OTdNUHBFV0dnRHBHZCtVVEprZFZM?=
 =?utf-8?B?dGhuRU1aYmFzZk1wNDVzK3FEaHI4ZnhIbUdqN2JtSFpEbzhUYm05K20ra1Rz?=
 =?utf-8?B?akNybG1Kd0YxU2N6N2hiWEhaaUlsbVVJY1l0OURIK1lhcS9yRUVyL1F0anNs?=
 =?utf-8?B?WkNsRWplZmpQSHJ4YkNFY2NVeHFCRHFEeG13MWpwYnBadCsrMERXaG9ZRjJ1?=
 =?utf-8?B?bHRRK1ZiSEtOU3cxNjNPcnk2T0pkYW0vTHdkV3l2K2hzYzJ1ZnJ5Z1hEbUFB?=
 =?utf-8?B?MWN6S1RVanFaYTFWYjZkZEF1dm1UcCtCWXBtVlVTZ2xUZmJtdzVBcC9IQUd4?=
 =?utf-8?B?UkN3cmVvKy80SlJsL1R1VFdCRlJTSW1SSmpkSGRZRFFyZENLOVJRcE0wdXB6?=
 =?utf-8?B?L3Y5L21ZUlUwdzYyTWxwT1ZJZHdDUDFvRXlLdXNxVVM4K0Q0a1BhT2MwUllC?=
 =?utf-8?B?V0xCeW1OeVhWenhpeE9keE1nL01SeDR3Z3Bvbmd3TnlOTG9oLy8yLzdWazAw?=
 =?utf-8?B?SUhTVFZCZ0lpT3F4WTBGcnQzM2ZMdWZZQUNJVlJSQmRRK0l6dnpmZEFGMTF5?=
 =?utf-8?B?STVFeXBUckRtZitWemYxWGFMODd2SmlIUkw4MCs1c3lsZUlUSzRuUXBwLzRP?=
 =?utf-8?B?K3dtTGh4VzFHZURPQnFFQjBlSkRKaTRERHErdm1yNGdtY0VGczZpakRZUitr?=
 =?utf-8?B?aFgvVzc0R0w5N2VEUXdTWVBlWjZrOE5YMUluN29iOE5RdlFKSjVFWkxGb1Ur?=
 =?utf-8?B?WHJHajdFc2F1dUJIM3EyNHJmTUh0cGRzMEFZMU9Vbm5oU3BPTDlwRStHaUtW?=
 =?utf-8?B?djBUZlFrUWRUZ0trSTJUQlE3c3NZNUdCOHFKM2l3L1dMK0J1THpna2RWL1pZ?=
 =?utf-8?B?clBhY0VQaGc5TGp1TTluVVdGcWkxN2RRNW9rT0NERWpKOU9qWlR0Y3JEcGNP?=
 =?utf-8?B?eEZrUzFMbitnVkFBbUUxVGxxTnlkRGtFU3g3V3NrNmhkWUxLb1Voa2pWQlVE?=
 =?utf-8?B?N3lwbFo4RS9taWhLbGxoV2huZ3hZaWVqV1pSeEtxYnZEeUVlcEhyaS9zN3Ba?=
 =?utf-8?B?aWtPbW9iY0xGV05ySDkzbjNCL2NlZU9qdVpLL0RsUkp0MzZZOVJwZmQ1NW9Z?=
 =?utf-8?B?enVXV2MyMlhKTzJ5NDFhd3JwSTZiTGJ3M21FZ3VEY3BFZnFKMkZZc0hOMzMz?=
 =?utf-8?B?c2RhMjgxYUQxakRRKzI4TTB5WHdZR0FSaHZlRHBrWHEwb3IrbjV4bzV4MUNr?=
 =?utf-8?B?b1B0ZDB2ZU01VTBFMTI2M1REMmh3ZWpTOTJ5L29MbElMR1c4NTJMZ3FwT1Ur?=
 =?utf-8?B?b2k2TmxxWnJIOGxNQ1hNSEdYR0NaMUFPd1lNc1YxaGZBQnl3dE4xQm53dERk?=
 =?utf-8?B?UGQ3RFV2Y1p2QnpTREtBQ2hNWjIvOWVYeFlDeHBkU3VSYjg4bVRQcnc3UzRw?=
 =?utf-8?B?OFJsMzAyOGEyT1VsYitjbm9JVTJNb1BtOTUya2JCVHllTERlaE85Y1dMem5i?=
 =?utf-8?B?cWduS0Q5RHU1OHhJR1ErY0Rsa05BNFR2c2VzSVFFQXdiTFVUczZXRU9HRy9T?=
 =?utf-8?Q?r/uH5B+BQBaHJiRXsMnCLVlImr4W8NPJoXuaEHaruo=3D?=
Content-ID: <64445450D3DCA04CAB340A99B4C526CF@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9e80c2d-399c-4968-cf8c-08d9ab89b95a
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2021 18:23:45.7671 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mU2yvAn9HR5viIo28b3DFESCSbd9v563PhhmaAVyr02kIbHjWkwiuBmJRf+HaD6Q8Z5s7wf/w8HQyLoIW0auP3VswUa0G3YrLl+hDZ9bN7o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2703
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix for displaying
 message regarding NVM version
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

On Fri, 2021-11-19 at 13:46 +0100, Mateusz Palczewski wrote:
> When loading the i40e driver, it prints a message like:
> 'The driver for the device detected a newer version of the NVM image
> v1.x than
> expected v1.y. Please install the most recent version of the network
> driver.'
> This is misleading as the driver is working as expected.
> 
> Fix that by removing the second part of message and changing it from
> dev_info to dev_dgb.
> 
> Fixes: 4fb29bddb ("i40e: The driver now prints the API version in
> error message")

This fixes is not formatted correctly:

Fixes tag: Fixes: 4fb29bddb ("i40e: The driver now prints the API
version in error message")
	Has these problem(s):
		- SHA1 should be at least 12 digits long
		  Can be fixed by setting core.abbrev to 12 (or more)
or (for git v2.11
		  or later) just making sure it is not set (or set to
"auto").

> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
