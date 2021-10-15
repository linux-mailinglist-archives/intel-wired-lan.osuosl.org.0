Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C7342EC8A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Oct 2021 10:37:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 06B60608DF;
	Fri, 15 Oct 2021 08:37:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kl7TRU6rV_LP; Fri, 15 Oct 2021 08:37:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0150F60782;
	Fri, 15 Oct 2021 08:37:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BCB951BF334
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Oct 2021 08:37:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AEC4D4055D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Oct 2021 08:37:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e9R5T4rsh2KN for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Oct 2021 08:37:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 02CAE40464
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Oct 2021 08:37:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="291360664"
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="291360664"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 01:37:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="492376319"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga008.jf.intel.com with ESMTP; 15 Oct 2021 01:37:23 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 15 Oct 2021 01:37:22 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 15 Oct 2021 01:37:22 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 15 Oct 2021 01:37:20 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 15 Oct 2021 01:37:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rk5ZEWnqXmZwpZ/fFtJrIpuFWAfdLy5F8HsaXNGiXt2JBx9yFxzGsOHe1yKZyueHycu4yskAaLY/RO6NOo4FjIMXiVbCLAw2a8Y1rlFYKwoPAg+IChRFiUTVALFqio4Ug6PiwNvJr3axFZoLzCbEHQH7NGNuVkcTRxYhdGgeS+jp2PQI9dA1UEE2NOexQEGlyYzrqbez8b80mDxParcsAZa20IbIZb2l7YT2pZikXh9nz72RkcjWzP6m9il4YbOqbz2CR1hx7eDZRSeSkyjqeZQRDc/fJfoulSeQkWlHm++ySkKpEAO/bvAMuHAGg+Y0uZ9R7lhRdZueAicCy6BEEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3/k7GDFLhjEOf3ez5+nT0fj7fXUjlkJbWGAchpu79sY=;
 b=RjKcB3M2VT7XBBApar0p6oLTlwUS8m8RiYK81ZASChKGk+Fesw7LcXuZ7IQqBRCleFXk0rA02e1MOyzuuO7HQxhqCPGBDQ6FRny2ii1O0mY4ErBYYP+rejjJlzIvc3d5bewjby3t3NvMEgYjbVugHqScmUb41JHVjOcpV0Ua8SDQVAQfAStWsqQgrDJRMrmbV2+JT58i2nGV+eZ/XRTzWEEST62yWLhWLgXX3/OREKH6I+8EetVT9vjPWyJJ9TgHFEhPTAWVVHODO8lUgV3KYHXeSgQTRfnCKh8T8ndsNpMvmbzL7M7hSwftZm97IJHIotw/xmqoKp/AVneW3n7xSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3/k7GDFLhjEOf3ez5+nT0fj7fXUjlkJbWGAchpu79sY=;
 b=NobMMMZJqPzh5ciCHaUuLqOvXzVY5DPcLIevpE+1JMzBh4Hv5GfPKxoDO6HqepZUyge45tgJ1so7UZ3sIFCNOfsSLpbP0KxulIfmA3/yfrSAnfUenKPYJBhQzp43RZWqoWE4nBlrxVMcv9Z1tcYlnr/w205Sqft8OOpkAq82ALU=
Received: from MN2PR11MB4711.namprd11.prod.outlook.com (2603:10b6:208:24e::13)
 by BL1PR11MB5495.namprd11.prod.outlook.com (2603:10b6:208:317::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.16; Fri, 15 Oct
 2021 08:37:19 +0000
Received: from MN2PR11MB4711.namprd11.prod.outlook.com
 ([fe80::5900:c525:18e2:2e]) by MN2PR11MB4711.namprd11.prod.outlook.com
 ([fe80::5900:c525:18e2:2e%8]) with mapi id 15.20.4608.017; Fri, 15 Oct 2021
 08:37:19 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Forbid trusted VFs in
 switchdev mode
Thread-Index: AQHXwR4vYgKnYpOfU0OBdp8y8dVwF6vSzOCAgADwYTA=
Date: Fri, 15 Oct 2021 08:37:18 +0000
Message-ID: <MN2PR11MB47114907218CBAF8F4E1D0FAFDB99@MN2PR11MB4711.namprd11.prod.outlook.com>
References: <20211014160958.238689-1-wojciech.drewek@intel.com>
 <456e1efa-c48d-df56-5372-91db6e33e6f9@intel.com>
In-Reply-To: <456e1efa-c48d-df56-5372-91db6e33e6f9@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 702829ad-044a-4692-17c3-08d98fb6ffff
x-ms-traffictypediagnostic: BL1PR11MB5495:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BL1PR11MB54957DE76FCB74FD26BE62A1FDB99@BL1PR11MB5495.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aIXECyu3cdbJfNhcdpLWT/I7wfFIePyucy4VRWWzi6Y2bI1+uQ+Vwmr7NzdoX0f6v/rlQVGmDOPqH0fqPHyWZm1GKTTXeBmeJ8FCl8jPWYfS2y/t1+h7S7WHL7yiQGnBBazdeEq6V5fs/W7HYtbbTYrB9r9UHNvsrL4JNid3CsSUBTWOQJ5iTnsAa6JiPN1RLe9TIXL/nTVPBTPtMPtJLUmrWNfSJTj5aZGNW7Q8DPQF0rlnrA/ZEBLA8zVM+6L8gee6JyxjfhpDt+exZbUmyHOQzhf+/U3gw8VN4gSkAZserFPQGpdsq2HRy+jo9eQth1lMSZSGZvYvRUh9p10AipMtMFwpp85Lqs2D8GHeFb61wYpJTFoRO1cAGz2G2Q44PDK0nZrwon1BggpW2lqlXKyk5VP0rLnlDHAwPcmTZZzpbLlV/tRYXR8Kb0jLJLPrVXoOns5uNsRNCUQGVMiqflQnrIoWBlRljQIZVPL79vkNFFMyfAWq42eR1kWkhrpeN2Aoic9QcSN/3rn/W2ZnO74F2ogZp5O2ToNpPyGesMy+y8sGfHqMA7ydcBOsAvqa91dp+Orh0svlZfwb4HI3HhGSsQyZggsNwrp+eckdSO4ByoCSSS6KbCo2KoFlRXPMfVFC6upxsP1yhoAAnrXHbdYI79ypH6lkOWBgrYfCZE+H0CDVx1rBoQxPJtYtdboGez1BnyelSdNquW8+FqDucg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4711.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(7696005)(316002)(5660300002)(52536014)(82960400001)(53546011)(6506007)(83380400001)(508600001)(76116006)(122000001)(38100700002)(66574015)(33656002)(66446008)(86362001)(55016002)(9686003)(8676002)(66476007)(38070700005)(26005)(110136005)(2906002)(64756008)(66556008)(66946007)(8936002)(186003)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cExwNzFSNjl6WnFYYU9vOTBUY0xpS2tuSG5DSDhtQTdsdjJ5KzdkcmFZTlUv?=
 =?utf-8?B?VFluV3IwWVp2cXM3TmxxSlF6N3hKZ2pCNzNuZHRFc1hKcTNNVjBNL00zT01q?=
 =?utf-8?B?ZnlMVk5kUmRNWnpSRCsrOHlqVXYyY1dMczdCMCs2SmFTTXpkSTZXZFpEdXFo?=
 =?utf-8?B?VGlUK3JEdkNDdkljem9KRDN3TGZaOFBOak10d2oyL3RxV2dLRU9CR3dkVUNY?=
 =?utf-8?B?Y1I2ZFQ4c2ZNTTlncGtKSjdGbGJqWi9WaE5SKzY5emhHNWVVN2JVdTh6UGJB?=
 =?utf-8?B?L3VYNVc5SW1HTjlXRFladDhQRC8xeXZNYS82QUYxUlYwT2FlWS85LzB4Rmov?=
 =?utf-8?B?ckxRRSs4NkJmL2VHZkg5SjNvZEhIZVA1SlVVYVUwU1pvZS8xVkZMV1B0Y1BY?=
 =?utf-8?B?bFJVR1NGYkg0TTRYS2dDQkc3Y3VVeTR1THArcHVaTWlRRFcxNnJKTXQ5KzZC?=
 =?utf-8?B?T0kxdU92dzZpR2poRDBZYzZ0cWU1Y2dIaWF4R2RMalhTLytFQXlsbGs0enAy?=
 =?utf-8?B?UTh5dzJKdEtpYllNZ0ozMCt0Ukw2YzRxT0d0V1Z2MDRnekpPV0d2ak1xVGk4?=
 =?utf-8?B?eXNHRzFFL01NU2NxYytOVEhNWExkZnNocS9pZHdpcTJBYjlRN1poNmhvOFJP?=
 =?utf-8?B?TGVKTUZkdmROcEVQQVE5Uk0xNlRtSWdjelJxUVRsa3JGdkRPeW40U0ZWNUtF?=
 =?utf-8?B?TUVWbW1nQjAzMWdUdlp2TzZTa1lEK2RMQVEyMElDUnBscFgwZEl1cjJuYVI2?=
 =?utf-8?B?cDdyQUVuOGF3SVI1N0JtMmQ0YkE5cGlRTGVOd1EwcmoxSzdNM0ZHZDk4VHRk?=
 =?utf-8?B?b3pzOGhPaXAyS0V5bHZoTDduZURLdXJSdTRZcWxsZzY1Q0dJK1JGV0Y1TjV3?=
 =?utf-8?B?Nit0NEN4UytlWmpJNWNsQ3pSY1NkcnEvQjUveVBDcjh4c2RZTC93WGwrSTNS?=
 =?utf-8?B?VUJMOVVIaDVkQ0lJeWR3dlUvc3lSamx5cURSVE5uc0EzMDNKMjRoUnFqb1ht?=
 =?utf-8?B?Rk1Dek5FeVRoZ3JFSi9xLzltWlNrNnVFU0l3NFRRWFB6VnV5aFRMeDhRZGkx?=
 =?utf-8?B?THBENnR5MFFJb2NHRXRBNjlxTW4xTDVkSmRZT3J5QndkRFFYRE40RkJ3Vlh1?=
 =?utf-8?B?ZC9WaVRUckdpbUZlbzFMYm5LWndVZ01XZGJHM2laeVZwaDVOWmU0NE1Sa3p3?=
 =?utf-8?B?blFHNTdaVzgwUHFHcE13WWcxa2M0NTdhalRyVUZsa0NhbmkwZG4zb21IWStG?=
 =?utf-8?B?VHpza3Z3WVNXOVpad1FxMFNaeVluUFlNS1pKQUNnVWpKVVB5YTRlWEtQaE8r?=
 =?utf-8?B?UWNZUEFDOHBYTkdOZkV5WFg4d1lsbW9ncWZjNVRSQk04QjZ0TytMVjIxeVhQ?=
 =?utf-8?B?bXNzbTFUUVhUT3NydXgzMlVpREJvSEZZL21Zd1ltcGRTV0N5UnZKdkNrV2dS?=
 =?utf-8?B?OUtpMkJlRnp1SVhoMnpRYVdXVjl1V1hLcDFDVUM5NUZmY21McUFsc3poZ3NX?=
 =?utf-8?B?eEtYQ0p2U1NSN2Zwejk5WFZHYVdCdGRxRXVLUFVZbVBYdHFLdDZvaGdkNCtR?=
 =?utf-8?B?ZnIrNG9zV1lHNHpNN1JyK29JdWNTS3hudkpIUDA1VkMzMktDQlUyWjRaa0pL?=
 =?utf-8?B?WXF1aE1ZT0FqUWpvRUZsTzdlM0I3UWdRNTJ5VGhQa3k5bUIxenBHS1JBdlQx?=
 =?utf-8?B?RVZ3bmwySlRqbGxOTmpTSnVENDBCKzN4TVBaTGZxeDN5WTdGeUFJS1p5dUJm?=
 =?utf-8?Q?R35PU8cIwK7T/u18nQ=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4711.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 702829ad-044a-4692-17c3-08d98fb6ffff
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2021 08:37:18.3737 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZCN9oXTTnI2/VYagmRCknq1Fqam38Kg3aQXG3eqatIzXzq4lYR62hwiES2/3dVywhPyrECQu6vTMh/2kScTKQj+8ljqAZFCdnNgkbvDxdrM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5495
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Forbid trusted VFs in
 switchdev mode
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQnJhbmRlYnVyZywgSmVz
c2UgPGplc3NlLmJyYW5kZWJ1cmdAaW50ZWwuY29tPg0KPiBTZW50OiBjendhcnRlaywgMTQgcGHF
umR6aWVybmlrYSAyMDIxIDIwOjE2DQo+IFRvOiBEcmV3ZWssIFdvamNpZWNoIDx3b2pjaWVjaC5k
cmV3ZWtAaW50ZWwuY29tPjsgaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4gU3Vi
amVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBuZXQtbmV4dF0gaWNlOiBGb3JiaWQg
dHJ1c3RlZCBWRnMgaW4gc3dpdGNoZGV2IG1vZGUNCj4gDQo+IE9uIDEwLzE0LzIwMjEgOTowOSBB
TSwgV29qY2llY2ggRHJld2VrIHdyb3RlOg0KPiA+IER1cmluZyBhdXRvLW1lcmdlLCBjaGVjayBm
b3Igc3dpdGNoZGV2IG1vZGUgaGFzIGJlZW4gaW5zZXJ0ZWQNCj4gPiBpbiB3cm9uZyBwbGFjZS4g
SXQgc2hvdWxkIGJlIGluIGljZV9zZXRfdmZfdHJ1c3Qgbm90IGluIGljZV9zZXRfdmZfbWFjLg0K
PiA+DQo+ID4gVHJ1c3RlZCBWRnMgYXJlIGZvcmJpZGRlbiBpbiBzd2l0Y2hkZXYgbW9kZSBiZWNh
dXNlIHRoZXkgc2hvdWxkDQo+ID4gYmUgY29uZmlndXJlZCBvbmx5IGZyb20gdGhlIGhvc3Qgc2lk
ZS4NCj4gPg0KPiANCj4gc2hvdWxkIGhhdmUgaGFkDQo+IEZpeGVzOiAxYzU0YzgzOTkzNWIgKCJp
Y2U6IGVuYWJsZS9kaXNhYmxlIHN3aXRjaGRldiB3aGVuIG1hbmFnaW5nIFZGcyIpDQpJJ3ZlIGFk
ZGVkIHRhZyBpbiB0aGUgc2Vjb25kIHZlcnNpb24NCj4gDQo+IA0KPiA+IFNpZ25lZC1vZmYtYnk6
IFdvamNpZWNoIERyZXdlayA8d29qY2llY2guZHJld2VrQGludGVsLmNvbT4NCj4gPiAtLS0NCj4g
PiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdmlydGNobmxfcGYuYyB8IDEw
ICsrKysrLS0tLS0NCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDUgZGVs
ZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV92aXJ0Y2hubF9wZi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV92aXJ0Y2hubF9wZi5jDQo+ID4gaW5kZXggM2U3ZmRkN2YyZTFkLi5lZGJjNDE3ZjhjN2Qg
MTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV92aXJ0
Y2hubF9wZi5jDQo+ID4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV92
aXJ0Y2hubF9wZi5jDQo+ID4gQEAgLTQ4MTUsMTEgKzQ4MTUsNiBAQCBpbnQgaWNlX3NldF92Zl9t
YWMoc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiwgaW50IHZmX2lkLCB1OCAqbWFjKQ0KPiA+ICAg
CXN0cnVjdCBpY2VfdmYgKnZmOw0KPiA+ICAgCWludCByZXQ7DQo+ID4NCj4gPiAtCWlmIChpY2Vf
aXNfZXN3aXRjaF9tb2RlX3N3aXRjaGRldihwZikpIHsNCj4gPiAtCQlkZXZfaW5mbyhpY2VfcGZf
dG9fZGV2KHBmKSwgIlRydXN0ZWQgVkYgaXMgZm9yYmlkZGVuIGluIHN3aXRjaGRldiBtb2RlXG4i
KTsNCj4gPiAtCQlyZXR1cm4gLUVPUE5PVFNVUFA7DQo+ID4gLQl9DQo+ID4gLQ0KPiA+ICAgCWlm
IChpY2VfdmFsaWRhdGVfdmZfaWQocGYsIHZmX2lkKSkNCj4gPiAgIAkJcmV0dXJuIC1FSU5WQUw7
DQo+ID4NCj4gPiBAQCAtNDg4Miw2ICs0ODc3LDExIEBAIGludCBpY2Vfc2V0X3ZmX3RydXN0KHN0
cnVjdCBuZXRfZGV2aWNlICpuZXRkZXYsIGludCB2Zl9pZCwgYm9vbCB0cnVzdGVkKQ0KPiA+ICAg
CXN0cnVjdCBpY2VfdmYgKnZmOw0KPiA+ICAgCWludCByZXQ7DQo+ID4NCj4gPiArCWlmIChpY2Vf
aXNfZXN3aXRjaF9tb2RlX3N3aXRjaGRldihwZikpIHsNCj4gPiArCQlkZXZfaW5mbyhpY2VfcGZf
dG9fZGV2KHBmKSwgIlRydXN0ZWQgVkYgaXMgZm9yYmlkZGVuIGluIHN3aXRjaGRldiBtb2RlXG4i
KTsNCj4gPiArCQlyZXR1cm4gLUVPUE5PVFNVUFA7DQo+ID4gKwl9DQo+ID4gKw0KPiA+ICAgCWlm
IChpY2VfdmFsaWRhdGVfdmZfaWQocGYsIHZmX2lkKSkNCj4gPiAgIAkJcmV0dXJuIC1FSU5WQUw7
DQo+ID4NCj4gPg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
