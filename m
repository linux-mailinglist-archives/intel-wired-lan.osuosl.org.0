Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC5131E20A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Feb 2021 23:26:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C393D86BB4;
	Wed, 17 Feb 2021 22:26:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cCBvPoSUi1+r; Wed, 17 Feb 2021 22:26:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4A8DE869D8;
	Wed, 17 Feb 2021 22:26:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4C94C1BF3CC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Feb 2021 22:26:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 42F5986981
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Feb 2021 22:26:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2dsBnLaqodMj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Feb 2021 22:26:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5B33D86BB4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Feb 2021 22:26:12 +0000 (UTC)
IronPort-SDR: xvd7seJyV0ARuOtQsOjNfqOvTIIQWA+/ALQ0ftmFMDw1eHVZsjfFvXJWhz4hz0WFrG9LPHydhV
 f+1qg1iRKt1g==
X-IronPort-AV: E=McAfee;i="6000,8403,9898"; a="202568523"
X-IronPort-AV: E=Sophos;i="5.81,185,1610438400"; d="scan'208";a="202568523"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 14:26:11 -0800
IronPort-SDR: eV4dPrBkvTzOvo3M3Bc1v1oQRL0j9wPgAJ9QSLiWzc0xZa6dt9MwZdTItaazCxqGS2cyu61uUz
 kJT5UPGjdsQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,185,1610438400"; d="scan'208";a="439523363"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 17 Feb 2021 14:26:11 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 17 Feb 2021 14:26:11 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 17 Feb 2021 14:26:10 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 17 Feb 2021 14:26:10 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 17 Feb 2021 14:26:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QJCXj4Jyn2mFJbrhtO7FErFuyxElaIvZ4BOawN6ay+e5TT5z6GiFZcryE/1/xdI5h0CZ7idR9xffDbODzFX9GENvC3ZHRl3oCgXzj5JplOlOkcECTujzP7SgytZaCJikdGaTgEeMOrt6Rsr/IS2D/mYbmczFm/RiVKw3tLmPFIqTLaaRcBYHqZcXQa4PfU2h74D5had90ycLps9eQAaOavTvgdHJdP/KDcUm4a/KnFMDw812n2StXy14UJoMy9eSuJYNcsx7kXB8dfbc31NcdqXIf6TTpSVq28rsCO+HEnzot491if40Khy+NNpE/eg3WR2DeqEpRdXwDhoWRL4uzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=irxv2F1iv/2G+z93KedV73a5k727EVqAZo3u2To7qhM=;
 b=jZbn6A6sYD9d+Fe3QVg4DiKYoZw0pjVfHh3G97K8UCWo2zuat2ifaxvZn6MTCXmHjAw737PrvWEkhKQWx9zdylBhJX/P7KvQY05lFqnXRMOwfSd00qe2CgZs1Ripho2Wh8oXL0QZvFPMQimqe6X8vuiQIifSDhNA1YQV6Pgxeiu6976KlmvWUiD88HsFi6FlCpnIBM8rIoGuA4Z6X6UsSls1espld35JYePu/aPvNz8QgEIVBpAx+0j9j9rdQQYdVp9dP89OrnbTdDc8NK/dw05BkSBebJJelETSeSY2aLZ2I4GwnH9nABua1iBNT5RWGRnLjhud8qvYK6zIKpTacg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=irxv2F1iv/2G+z93KedV73a5k727EVqAZo3u2To7qhM=;
 b=lajnQjrr9YVyMEdsoH1Y5D715Cm006Zg0Nz3wA082qW6fbxOfSthF3jaoFemsC3Qb6JahEZ4sznYTjqWSqop+RO3Rqqf0X/lnpSPJkCS5oFHyYZAdIHkiEWOlWcld6E7N60qLK3jr4Gl617S5GY/r6H+xrznfFoOn2iGYuy4QFU=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2926.namprd11.prod.outlook.com (2603:10b6:805:ce::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.27; Wed, 17 Feb
 2021 22:26:06 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::85b7:921c:ff53:696e]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::85b7:921c:ff53:696e%6]) with mapi id 15.20.3846.042; Wed, 17 Feb 2021
 22:26:06 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Maloszewski, Michal" <michal.maloszewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] i40e: Fix NULL ptr dereference
 on VSI filter sync
Thread-Index: AQHXBT+t20VYGzEBZ0K9wh5dDSBW2qpc7UOA
Date: Wed, 17 Feb 2021 22:26:06 +0000
Message-ID: <e423d17ef916b7e81dbbca4eb81f746babbfdf1a.camel@intel.com>
References: <1613561124-15464-1-git-send-email-michal.maloszewski@intel.com>
In-Reply-To: <1613561124-15464-1-git-send-email-michal.maloszewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cc20ba24-44eb-4ffc-32ef-08d8d39304b9
x-ms-traffictypediagnostic: SN6PR11MB2926:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB2926C2D8AC5E3F4211150D9AC6869@SN6PR11MB2926.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gj1Q294HHtX0/9Ohu0njeVTa+7zCGgdntEsnDBcFWJo1ke6bN7PdtNHIwckf4sFeT2ufyyugbt1lYFAWRhfRzvCB5+hEUq3DEN9CfE6shig+uSS7oUJj3mJpT09L+fzkk7OSftxs+usWSf2xLrHVcQqNJSzCtxyzERyyD+NSPNqng7DjWG/YFWK3g5HzoTreMvqTw4HwE3gPyCgE/SAQQK8C03J/4Gp+KaPP7y2Fxl1MhtxxBMnyMOckjfK0xvUZkkJ+ZJsGssH7PvbWRhlZHlryAg6pD+mPCuhUvuyYIvq6U2H0sK/55UfTLqokQWrB7l2PA7hnC41gvHDrdphchPucfbEH3ZLBXWVrQ+Yc0Qc1Pq1/ap8CFXE0JfzJi7G/Tt8qW0COf2HeqJbcgVn/LC8T+eZK2KON/ffIAWoeeXnLdcFzD38TFAQbBTuzVEHNfVHl6jv+lJzNf/fZUUemmRIVd3BcJ352V2oGVEn6nxxgmoIFSh+UgihS6+DLVbR6NwDLkuEqbfsTUDFzzl3etFMxFBum4VWFEuDKbbqKmWcbuZvKfJyfrXM5aWz5qkVtvGyq7xqIgVcMzSZQCL6VBwMWYs0YU/UQzL+w29Yb1CU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(366004)(136003)(346002)(396003)(39860400002)(2906002)(26005)(36756003)(83380400001)(6486002)(64756008)(71200400001)(66446008)(186003)(66574015)(86362001)(2616005)(6506007)(5660300002)(6512007)(66556008)(66946007)(316002)(110136005)(8936002)(478600001)(76116006)(66476007)(8676002)(91956017)(99106002)(309714004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?alE0VDN4V1F5bXNHb210Q3Zmc2ptWXlZU0ZZc2s1RVMrUzZnUnVmcGxZZkJQ?=
 =?utf-8?B?bXVibktvWDJQUUYyaWtINEhrNUxoM1VyOCtPZzVyMVdhQ1hFVGtlV1krOU4v?=
 =?utf-8?B?MEpISnBSbnBPQzRoMEJpakJWYXk2cGVpcWtKWWtzaThobGhKOWZYMjRScjdN?=
 =?utf-8?B?bEVhTllVeDFBVkpCb3FUd2UyczVQMjJiNnZmdXRYU1Z4SDg2LzQ3RnYydkVj?=
 =?utf-8?B?UDA0V2RCeVhvWEZObTc0QkxvNGJzTno1RmNJS1VaVU9sdmZpRVpLRW1pYklN?=
 =?utf-8?B?SjhQTXg2WC9KY3FobVN6b1pCMW0wTkxpRzlqbFpITjAwazF0OXZMdGg1OU9w?=
 =?utf-8?B?RDhiYjU4U1M0VlhjSnJIUEdJR3hzMzZYMGlUNmpPcTVXU2JYZjFDcXVFK2hY?=
 =?utf-8?B?L1FRV2dlSWVlaVF4OTFvVXZXOGlwSUkrRm51bTMyVWxoRlpjSG10VmMzMXIr?=
 =?utf-8?B?dk5TRytZRzVwTzRHUWg4Y3pHWU9IcVVmVDlTQS9CbmdhdllVNUtTMTY5ZGhn?=
 =?utf-8?B?UjVRcU1VdnYvbTgzT1FIRHY0UGxqVzcrWkFxM0ErSW9FY2xZeGdESTNEN01a?=
 =?utf-8?B?Zi9yWjRVOFZqY29KYWJmbHgyZzdUb2VNNWVQNitRVndPUXVXWVJRSzB2YmJW?=
 =?utf-8?B?bER6UWc2U3FLSGNMcUFNbjJlVURra3Rremtzc3NlYWptRGkwNTVySE81QkJo?=
 =?utf-8?B?YUVxalh3ZDh3b0FqY05DN2w4N08rcm4raWhaZGNaODB3QXcrUXA1VkhMR2hx?=
 =?utf-8?B?RE5YNHZaaS9sR1hqRXBSc09zdkZ2L0Y1TC90UkVnankwL1B0RDR6RUVEOWdW?=
 =?utf-8?B?UHk0UTNvYm9ua1REajRMN2ZiMTBadzkvekRzUUZrWkh6Snp1d09pdWhGYTJH?=
 =?utf-8?B?MzdNWVM1UmxKVHI0bzgvM1p3bXk1N3F2NEp6dnc1VXIycWVMenZGRmlnN1hI?=
 =?utf-8?B?aGhYSlZXd0Y5Q3BSc2NkeGlxZCtwREtaTUpBcGt0aVJ6ZFl3T3BxVEFUVXRE?=
 =?utf-8?B?dk5YRHVyODBnREE0WlJwNkFIUncrOHBmQ0h5S08yS0R0aHdnbTVOOW9TQm5D?=
 =?utf-8?B?eE1rbW9kV1hNN0ppNHZ0Vm45VndhWXVma3NlVWpvWmFUc3ppNWx4RzNWSTZK?=
 =?utf-8?B?TVdCQUdJc1ozT09PekREdytiZFNxZGFVdXlNaVczV1k2MWlWYVdsbk1SdGZM?=
 =?utf-8?B?WC9MbExRTTQwV1NOazV0b1hIVEUvSVZpQ2h5cUtVSVFPb1g0ZEh0NWJNTXEv?=
 =?utf-8?B?bHZDbnZmbytlcDZ0QUZubTFmSXBwejZkRDRpcjJHZUxXOUhRVDRuZlBudEZq?=
 =?utf-8?B?UlZjUmJiZjBRTmxUM1pLVWlGejdIbXNQazlwVW0yNXQ3THdWMUxaNkdlZDRx?=
 =?utf-8?B?NUJhU3pYR2tVZkRWMm1oNTZsZUNqb201bU5DWWV5dmpOMnF2M1hKQmJsK1Vs?=
 =?utf-8?B?ZGJnTnpqWEJObGhHS1FvRFdOQVhTWU1KTm85elc0YjIxU2FidTNydUtxQzZK?=
 =?utf-8?B?V1NqaHcwekZ2SFQ5U0ZleWVGc2NZY1BBMFhMUFN2MzUzY0E5V2lQQUQydWV1?=
 =?utf-8?B?enRpdGlhVTViMmNzS0Fwck9NbWkxeENPRm55QUJKS2VURlExWUMyczlIYlQy?=
 =?utf-8?B?WUdQTjFrVWlqMmc1TzhnUlVhMU96L2FHT2pCaUlKbXZDVGFqMmNJNDdKdTRP?=
 =?utf-8?B?TldlMTJTb3VWblFCaEVwdHBrYkJuSmVSdXl5aGdsZkZlZkVzY01ldnpVczRk?=
 =?utf-8?B?bTBlQmZCc3VSLzVRNFI1UzJrRlVVWGZnMjR4dFR5Sk1MTy9wSGc0Q2E1ZW5Y?=
 =?utf-8?B?ZENDOXNCa0Njb2pTMWN5Zz09?=
Content-ID: <A5CD03EDF9CEF042A3FE940273BDF3E7@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc20ba24-44eb-4ffc-32ef-08d8d39304b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2021 22:26:06.4984 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PnVA1XInUwyfpd5ahhrRFWNle/YGNLMKqN0y2uoAmtiu50Esmfssf7wbWC3qMFCCB2YfK2keDTJUrtF0bEsJiunx16U+VpPEXauT1hkVobY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2926
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix NULL ptr dereference
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

T24gV2VkLCAyMDIxLTAyLTE3IGF0IDExOjI1ICswMDAwLCBNaWNoYcWCIE1hxYJvc3pld3NraSB3
cm90ZToNCj4gUmVtb3ZlIHRoZSByZWFzb24gb2YgbnVsbCBwb2ludGVyIGRlcmVmZXJlbmNlIGlu
IHN5bmMgdnNpIGZpbHRlcnMuDQo+IEFkZGVkIG5ldyBJNDBFX1ZTSV9SRUxFQVNJTkcgZmxhZyB0
byBzaWduYWxpemUgZGVsZXRpbmcgYW5kIHJlbGVhc2luZw0KPiBvZiBWU0kgcmVzb3VyY2VzIHRv
IHN5bmMgdGhpcyB0aHJlYWQgd2l0aCBzeW5jIGZpbHRlcnMgc3VidGFzay4NCj4gV2l0aG91dCB0
aGlzIHBhdGNoIGl0IGlzIHBvc3NpYmxlIHRvIHN0YXJ0IHVwZGF0ZSB0aGUgdnNpIGZpbHRlciBs
aXN0DQo+IGFmdGVyIHZzaSBpcyByZW1vdmVkLCB0aGF0J3MgY2F1c2luZyBhIGtlcm5lbCBvb3Bz
Lg0KPiANCj4gRml4ZXM6IDE3NjUyYzYzMzZmZCgiaTQwZTogcmVtb3ZlIHVudXNlZCBhcmd1bWVu
dCIpDQo+IFJldmlld2VkLWJ5OiBQcnplbXlzbGF3IFBhdHlub3dza2kgPHByemVteXNsYXd4LnBh
dHlub3dza2lAaW50ZWwuY29tPg0KPiBSZXZpZXdlZC1ieTogRmlqYWxrb3dza2ksIFdpdG9sZFgg
PHdpdG9sZHguZmlqYWxrb3dza2lAaW50ZWwuY29tPg0KPiBSZXZpZXdlZC1ieTogSmFyb3NsYXcg
R2F3aW4gPGphcm9zbGF3eC5nYXdpbkBpbnRlbC5jb20+DQo+IFJldmlld2VkLWJ5OiBBbGVrc2Fu
ZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCj4gU2lnbmVkLW9m
Zi1ieTogR3J6ZWdvcnogU3pjenVyZWsgPGdyemVnb3J6eC5zemN6dXJla0BpbnRlbC5jb20+DQo+
IFNpZ25lZC1vZmYtYnk6IE1pY2hhbCBNYWxvc3pld3NraSA8bWljaGFsLm1hbG9zemV3c2tpQGlu
dGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGUu
aCAgICAgIHwgNzkNCj4gKysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4gIGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMgfCA2MCArKysrKysrKysrKysrKysr
LS0tDQo+IC0tLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAxMjQgaW5zZXJ0aW9ucygrKSwgMTUgZGVs
ZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aTQwZS9pNDBlLmgNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGUuaA0K
PiBpbmRleCA0MjVkNjIwLi41NThiMGFlIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pNDBlL2k0MGUuaA0KPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pNDBlL2k0MGUuaA0KPiBAQCAtMTU4LDYgKzE1OCw3IEBAIGVudW0gaTQwZV92c2lfc3RhdGVf
dCB7DQo+ICAJX19JNDBFX1ZTSV9PVkVSRkxPV19QUk9NSVNDLA0KPiAgCV9fSTQwRV9WU0lfUkVJ
TklUX1JFUVVFU1RFRCwNCj4gIAlfX0k0MEVfVlNJX0RPV05fUkVRVUVTVEVELA0KPiArCV9fSTQw
RV9WU0lfUkVMRUFTSU5HLA0KPiAgCS8qIFRoaXMgbXVzdCBiZSBsYXN0IGFzIGl0IGRldGVybWlu
ZXMgdGhlIHNpemUgb2YgdGhlIEJJVE1BUCAqLw0KPiAgCV9fSTQwRV9WU0lfU1RBVEVfU0laRV9f
LA0KPiAgfTsNCj4gQEAgLTQyNSw2ICs0MjYsOCBAQCBzdHJ1Y3QgaTQwZV9jaGFubmVsIHsNCj4g
IAlzdHJ1Y3QgaTQwZV92c2kgKnBhcmVudF92c2k7DQo+ICB9Ow0KPiAgDQo+ICtzdHJ1Y3QgaTQw
ZV9wdHBfcGluc19zZXR0aW5nczsNCj4gKw0KPiAgc3RhdGljIGlubGluZSBib29sIGk0MGVfaXNf
Y2hhbm5lbF9tYWN2bGFuKHN0cnVjdCBpNDBlX2NoYW5uZWwgKmNoKQ0KPiAgew0KPiAgCXJldHVy
biAhIWNoLT5md2Q7DQo+IEBAIC02NDEsMTIgKzY0NCw4MyBAQCBzdHJ1Y3QgaTQwZV9wZiB7DQo+
ICAJc3RydWN0IGk0MGVfcnhfcGJfY29uZmlnIHBiX2NmZzsgLyogQ3VycmVudCBSeCBwYWNrZXQg
YnVmZmVyDQo+IGNvbmZpZyAqLw0KPiAgCXN0cnVjdCBpNDBlX2RjYnhfY29uZmlnIHRtcF9jZmc7
DQo+ICANCj4gKy8qIEdQSU8gZGVmaW5lcyB1c2VkIGJ5IFBUUCAqLw0KPiArI2RlZmluZSBJNDBF
X1NEUDNfMgkJCTE4DQo+ICsjZGVmaW5lIEk0MEVfU0RQM18zCQkJMTkNCg0KLi4uDQoNClRoZXJl
J3MgYSBsb3Qgb2YgY29kZSBoZXJlIHRoYXQgaXNuJ3QgcmVsYXRlZCB0byB0aGUgcGF0Y2ggYW5k
IG5vdA0KbWVudGlvbmVkIGluIHRoZSBjb21taXQgbWVzc2FnZS4gSXQgYWxzbyB3YXNuJ3QgaW4g
eW91ciB2MS4gSXQgbG9va3MNCmxpa2UgcGllY2VzIG9mIG90aGVyIHBhdGNoZXMuIFBsZWFzZSBy
ZXZpZXcgeW91ciBwYXRjaCBiZWZvcmUgc2VuZGluZw0KaXQuDQoNClRoYW5rcywNClRvbnkNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVk
LWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0
cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
