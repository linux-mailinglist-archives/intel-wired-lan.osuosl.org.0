Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B2BC731E340
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Feb 2021 00:53:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3D4A386D18;
	Wed, 17 Feb 2021 23:53:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UzmzVeSJkT97; Wed, 17 Feb 2021 23:53:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EDE3386D25;
	Wed, 17 Feb 2021 23:53:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 886351BF3DD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Feb 2021 23:53:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6CD648710F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Feb 2021 23:53:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gqn6HSAoHhqR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Feb 2021 23:53:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C341F86DDC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Feb 2021 23:53:10 +0000 (UTC)
IronPort-SDR: F3XZ2hyaiS0i90++W9ZR2fXfSrUEDUFHqNbMkQSc5u1CtXXYvJfXE87H7EyWh+zBi4oHPz8eFf
 tma4peShkwSg==
X-IronPort-AV: E=McAfee;i="6000,8403,9898"; a="180790963"
X-IronPort-AV: E=Sophos;i="5.81,185,1610438400"; d="scan'208";a="180790963"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 15:53:09 -0800
IronPort-SDR: 8cywwov3rTxkv5pu35YLZ6cY3Er16aM0jHVGXqk/PDDT605KqDvUak4+mqB7u7Ns8kIiTX7P6U
 qpIYwe1HzLOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,185,1610438400"; d="scan'208";a="513039912"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga004.jf.intel.com with ESMTP; 17 Feb 2021 15:53:09 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 17 Feb 2021 15:53:09 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 17 Feb 2021 15:53:09 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 17 Feb 2021 15:53:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EqtsapTrF3b+biIiCxvIPc/QTaJ+hKNJEPB+xKnYFdvfcv2Wd6JN62BZAoM9EN4aChKkSBgD3LNg9nSHb7JxuDryYehLkCaycx554YD66VN5Xsv9SDegG4Njj2UuYTY534XxQ8TBdoQitJIe9SHU91op2/IuVKde1lFetC13QtcfDWgBRshW8pNIWbn6+nTZTQKwGzFTTrLfWSFyCGMsR+Wr9IKLouLMP7/aC5xzYUVq1Hu84aRQw5vIAhZHV7Y1kfDx4TM4T1HHgkyndB7ijojFGd6Sr6j/Ar/0vgjwiwO+slwNfD6ahdgV5li6rrlTlpqk9MAjWMQNqk/See1sCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6YhSEKCSWYOxSSMGtzX0mtNBXffkB/doId4QJ3QhM8c=;
 b=izBAk5JTGq3GAlPDyJcmmgNR8qOnTq7wDZ2T2qPa9fDeY2obyKygv+/7nltQ8CywrdRpKjv64xFYPbAb+5TdXnwAUhVkfJwopcVT3r+t/1AjdPzo7JtX0xC5+eRhpxfGIR0869phb2Gs3qgJ/Z/XvMjMBlarr1JMWi/XQO4JZnneFWGzhJ/sOM8/FTvPBscvDndn93ETOjQBRkhmIDcQpMMHzsZAkrMrbhH5kK8vp7+Qmj7SHzSBPPO5TnPc9PshylG+XqTgSGWK5zFeKNe4TbZ9GjTQnDINC2e5e9tojzcyB65m1P8xVQevefvOKk/LOEhdiTo1mm/lcIX6SULp7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6YhSEKCSWYOxSSMGtzX0mtNBXffkB/doId4QJ3QhM8c=;
 b=Rnha6J2cGPOMChKD9BmR8hGsxwzkoHMc4ZXfpfQksutczS1SvKBIjJaHnXcePLKJexXXrvQsphbMvFLpUyDpsZXUvSm14BW/uhK3V7g+8HYw3IGXN5DQVW9zq5/dKC2K4mNcLSr8gNW6H6EnnllF2AX8cHfJupzJM/eOFo8nJ3A=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB5051.namprd11.prod.outlook.com (2603:10b6:806:11f::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.29; Wed, 17 Feb
 2021 23:53:08 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::85b7:921c:ff53:696e]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::85b7:921c:ff53:696e%6]) with mapi id 15.20.3846.042; Wed, 17 Feb 2021
 23:53:08 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>, "Desouza, Ederson"
 <ederson.desouza@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH next-queue v1 2/2] igc: enable
 auxiliary PHC functions for the i225
Thread-Index: AQHXAOCCSwr9zQtxWE+JpkalcLRsGqpZAl2AgAQL9AA=
Date: Wed, 17 Feb 2021 23:53:07 +0000
Message-ID: <4a11d17d2b0b2e297de1e42fb76db076e9940712.camel@intel.com>
References: <20210212014212.41570-1-ederson.desouza@intel.com>
 <20210212014212.41570-3-ederson.desouza@intel.com>
 <bd0bfa55-de44-82e9-337a-e6254d3a8405@molgen.mpg.de>
In-Reply-To: <bd0bfa55-de44-82e9-337a-e6254d3a8405@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: molgen.mpg.de; dkim=none (message not signed)
 header.d=none;molgen.mpg.de; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3245d8eb-dd85-4ba1-eec9-08d8d39f2cfa
x-ms-traffictypediagnostic: SA2PR11MB5051:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB5051B94DDC2425795C02C366C6869@SA2PR11MB5051.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hsM03YxeDmk7GiSPSDToO5FndbvF67D9B/e2qpymq0BVY5oFHjXYvmjFnSjTm1GGCDnei6VurG+DBIfh8bDhW40IAwCjQtfwUOMIxS7rpI+RbKqY4KUnhRaOo4agd4LT6fq6PHM42QVVp1RthjQYSnS83x/JovSAW9doGf1F6Y07arxawrrap9X2F6qPNRd1DDQsPvx3AYOWpW7lo5gC6yREEb1YYYiT9/KzRXqPSd4YNqRknfQrt9t9TF3hCpL+SZVtrYq7eYaFpbsDqIBHO9VgBQjYBdQAtBDy0EydYzPFLtv5iaqCGMMpeu3OmRdy4x8IyaaToVfQUV0Qk3iAzbRMzHbLGUiVoRAKYkxsSsUXXoRTQPq2CGiVuRv+DAukLM3WYRFqgV7P37O6LDWRn6ZEyRBg3OauFidJMuQMDu09forZMUZdnuefAPAxtx1lzWnlR+e3F8q9U06+Zjk26ZbKx7Wv/8HvpcD/WLHHjwYoeZJUdUw6nTukS3bGopqnCl+LNDbzm17YmrlMxPBu2FvPDPk/Qe0J8lV58YcXCQJbC/qFsRFjpX33nbthJ0rK
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(136003)(366004)(396003)(376002)(346002)(86362001)(4326008)(2906002)(478600001)(316002)(2616005)(186003)(26005)(110136005)(6486002)(71200400001)(5660300002)(6512007)(6506007)(36756003)(83380400001)(66946007)(8936002)(76116006)(8676002)(6636002)(91956017)(66446008)(66476007)(66556008)(64756008)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?YjJoa3VXZnhBak5ZQmdGd1MzRXZQYkcySWc2U2poTnd2NExmdkFxV09IY1JJ?=
 =?utf-8?B?c2dnMDFuZlFNU01TNWIvU0dSN0ZjYU80ODcxdWRyR3FHOFY3alFzemRhT2lm?=
 =?utf-8?B?ODhvNjFvdGxhZmRoT3FPRWRmSFIvNXZXZWRPVlU1RDN6NGJYWUlkWWZ0cG50?=
 =?utf-8?B?NCtjR1crNEdKVnFsd1hSd0NCVnptM0NqY2NrWFpqczU0K1dzbUtMS2Q2Z1Nh?=
 =?utf-8?B?MHZVdjNQc3NnUC91anNKRFJkam4rQWZUK1dOLyttbEwzUUNadktkN1M4aFFi?=
 =?utf-8?B?dkRpcG9vQ05rdGNjWE1vUmdvb1ZYVlFYc2pWcVpZYitGME40eFlwSTk4Q2ZE?=
 =?utf-8?B?NlpwQUFGd0RSZVF3SWdHc0hoejBxM3ZOWVQxKzM3dE5udzh4WjZBOHBGSSt1?=
 =?utf-8?B?WW5Wek4zR0ZzbmplVWpVdmsxRUorVjcyTmt1SEE3NGhMTnJtUXJoYjBIQ1JV?=
 =?utf-8?B?Ykx3MXpFM09WZHNVZlcwc1hudC9XTk5Za1o1Y3ZZbEtBcHRweXkvdUZBMlhT?=
 =?utf-8?B?WEhURkJUbXE1RTlacG9ubTZ3WU14b1JucEFDRWFEK2o1aFdvbWR5alJqSnJT?=
 =?utf-8?B?Y2FaVGRER09vSmlGcGRrd3NpOWRsWFIxTWlwa3pBa09kNzFCUEc1elM5TTRM?=
 =?utf-8?B?eG9ueHIwd00ya3hoZi9La0MvY3ovNmdmNkkweTc5MHYxa2cvNFVKdUthcUhO?=
 =?utf-8?B?bEVYOVZjSnNTU0NtNmlqL0J2dnVoeS9WTlI2WVVaVjMrTnA4WE5YY2ppRkFF?=
 =?utf-8?B?R2pwMFlaK3RMNk5QNnk1M0lVSHNHZ1RDM2MzTEdabXVmYURiYWlzbm55QTRh?=
 =?utf-8?B?Yzg3TmlhQWpSb1Bock8vM2hRVGJ5OFlzRmFmVC9zSVVGbklKQnJJT2NwQm1G?=
 =?utf-8?B?VnlPRXZHSFNPbzhNVS8wZDhEZi9kTmRFbm9sQUVjK1lDWlZja3RWaUhGaHk4?=
 =?utf-8?B?ekcxWkEweUNRYzQ3UFAwMkxaY0FyUzdZek5PVCt6b3hZNzRnaGl4SjkraG1v?=
 =?utf-8?B?NXRUZkpJU2tnckpFa255cTR1KzNGQUxWS25yNFNQaWg1NWU1UWtqT1pxVllm?=
 =?utf-8?B?dDEzenlkOXplczZkTVdKQWhwbjRDYTVQckE1ZEFqejlUcjVpR3BRMk8vNEpE?=
 =?utf-8?B?ZXlmRUdDUGczZGMraEZSMk1mMnZyUVdTTlRsTUk4Z1M5Z1Y0VlV3b0k4b0pa?=
 =?utf-8?B?RG5BUUkyd0dHWml6NmcwTkRYSjU4R0dScTBZajA4TzNSWXJvemt6bTY5c1ZE?=
 =?utf-8?B?akhjc1duSDVtREcxbnVGMWU1MU1mNnppOUpWQVJRdW9VNC9xVzYxNE81NzJm?=
 =?utf-8?B?eU9PN0NQMGYwei84ZStialFzTEtna1RLQ2llaDY0bFRYSWMrdFlLT0RpWXRM?=
 =?utf-8?B?M2tMSkMrWnUzLzBndStvRUtxdWNVN09HYWJ3UEF3bU90dTRKcEFmT3g4bmo2?=
 =?utf-8?B?RCsyT21SUWExNmUvOHNqcmlEeGpncUNod1hDWG1HOU5KUDJPTWt2anRxSkZh?=
 =?utf-8?B?NTlmOUVUaFhHZ3BoZjB6UGk5N2tqdkszNmtFLy9lZDcxbjhrekpQOERxR3kr?=
 =?utf-8?B?NjZLMnF1dXluRjY1UHV3WHhkN3Y5UTMreENRT2YwdVBIVHdndTNLNnh6b3J1?=
 =?utf-8?B?UURHTTJjdXJETjlsTm50WUhrdWhXVmNsL3F2bjRlSjRRS3dZVXF2V3NyYUhJ?=
 =?utf-8?B?c0I0S1l0TmNFYWFlRUwwNHhxeURUdlVneTdOVFpNQ25xV0g1L2ptNkxZNjhG?=
 =?utf-8?B?TWpkVVlzb1J1NjdMbzlLOXNTVUZ0ckxHTjYxdWp0VDFmbTZNblNKbTBpZDlC?=
 =?utf-8?B?TXBwVUd5aVEwQzBGMys1dz09?=
Content-ID: <EB395D06A82BE0489FD46F43BA45A33F@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3245d8eb-dd85-4ba1-eec9-08d8d39f2cfa
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2021 23:53:07.9439 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pRpO61ct0JQBAT6CFyPVJ1VscdfOR/vtFok1RB3xapqw5rJqQNotB91BT5s+Q8QXU0kWG3++HUnQ/8Nq3Vy2bGFuC3UXAnsZPNBmS5WY/ZA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5051
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH next-queue v1 2/2] igc: enable
 auxiliary PHC functions for the i225
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

T24gTW9uLCAyMDIxLTAyLTE1IGF0IDExOjA1ICswMTAwLCBQYXVsIE1lbnplbCB3cm90ZToNCj4g
RGVhciBFZGVyc29uLA0KPiANCj4gDQo+IEFtIDEyLjAyLjIxIHVtIDAyOjQyIHNjaHJpZWIgRWRl
cnNvbiBkZSBTb3V6YToNCj4gPiBUaGUgaTIyNSBkZXZpY2Ugb2ZmZXJzIGEgbnVtYmVyIG9mIHNw
ZWNpYWwgUFRQIEhhcmR3YXJlIENsb2NrDQo+ID4gZmVhdHVyZXMgb24NCj4gPiB0aGUgU29mdHdh
cmUgRGVmaW5lZCBQaW5zIChTRFBzKS4gVGhpcyBwYXRjaCBhZGRzIHN1cHBvcnQgZm9yIHR3bw0K
PiA+IG9mIHRoZQ0KPiA+IHBvc3NpYmxlIGZ1bmN0aW9ucywgbmFtZWx5IHRpbWUgc3RhbXBpbmcg
ZXh0ZXJuYWwgZXZlbnRzLCBhbmQNCj4gPiBwZXJpb2RpYw0KPiA+IG91dHB1dCBzaWduYWxzLg0K
PiA+IA0KPiA+IFRoZSBhc3NpZ25tZW50IG9mIFBIQyBmdW5jdGlvbnMgdG8gdGhlIGZvdXIgU0RQ
IGNhbiBiZSBmcmVlbHkNCj4gPiBjaG9zZW4gYnkNCj4gPiB0aGUgdXNlci4NCj4gPiANCj4gPiBX
aGlsZSBpMjI1IGFsbG93cyB1cCB0byBmb3VyIHRpbWVycyB0byBiZSB1c2VkIHRvIHNvdXJjZSB0
aGUgdGltZQ0KPiA+IHVzZWQNCj4gPiBvbiB0aGUgZXh0ZXJuYWwgZXZlbnRzIG9yIG91dHB1dCBz
aWduYWxzLCB0aGlzIHBhdGNoIHVzZXMgb25seSBvbmUNCj4gPiBvZg0KPiA+IHRob3NlIHRpbWVy
cy4NCj4gDQo+IFdoeSBpcyB0aGF0PyBCZWNhdXNlIGl04oCZcyBzaW1wbGVyIHRvIGltcGxlbWVu
dD8gUGxlYXNlIGFkZCB0aGUgcmVhc29uDQo+IHRvIA0KPiB0aGUgY29tbWl0IG1lc3NhZ2UuDQoN
CkkndmUgYXBwbGllZCB0aGlzIHBhdGNoIHNvIHRlc3RpbmcgY2FuIGJlIGRvbmUsIGJ1dCBJIGFn
cmVlIHdpdGggUGF1bC4NClNvbWUgZGV0YWlsIG9uIHdoeSBvbmx5IG9uZSB0aW1lciBpcyBiZWlu
ZyB1c2VkIHdvdWxkIGJlIG5pY2UuDQoNCkFsc28sIHRoZXJlIGFyZSBxdWl0ZSBhIGZldyBjaGVj
ay93YXJuaW5ncyBmcm9tIGNoZWNrcGF0Y2ggdGhhdCBsb29rDQpsaWtlIHRoZXkgY2FuIGVhc2ls
eSBiZSByZW1lZGllZC4NCg0KVGhhbmtzLA0KVG9ueQ0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRl
bC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
