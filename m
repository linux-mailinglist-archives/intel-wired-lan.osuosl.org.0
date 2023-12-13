Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 000D481087A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Dec 2023 03:58:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8398D4052C;
	Wed, 13 Dec 2023 02:58:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8398D4052C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702436323;
	bh=mW5Z9ULNus7dTjEpxKB9ltdtyG+lc/cPygOwuWGH89I=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=K8Xmj9q5JNfYtQ0clNR4AwWHP/CDBtiQWwvfv03zrXJlKhKpagrCKWCELdyRBjjd6
	 shtXgNi1CaptV3hc4PtjMh1tWDJ6hs2KNmWau6fWn8V66vOKJ9c7AsxtlaRpxz/Mhl
	 BWU2OIrYSEpApiGFCrBg7sfnnXrnA/eUe7F8kd4/aoyV1jW6Eya4kNDvOUzLIFTRuy
	 G7wey5ahTPd3czXyX///07XqNLiJD1Khm2uSTlHJL5SuSf6G/Yq1XNOrItoTh/fabN
	 enWTSdcMII/FeoEeCJrX/M75QyA3iPWLL6lsBRECLs3y7+SVCV2oKIeB055ygO1wf9
	 fFBqkjuD2t/cg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uXLW08jbzJOK; Wed, 13 Dec 2023 02:58:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E6BF8400CE;
	Wed, 13 Dec 2023 02:58:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E6BF8400CE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 36DA91BF2B1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 02:58:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EF6D04052C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 02:58:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EF6D04052C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nad8TYlQyahY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Dec 2023 02:58:25 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 68942400CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 02:58:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 68942400CE
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="481106312"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; d="scan'208";a="481106312"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 18:58:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="864449855"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; d="scan'208";a="864449855"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Dec 2023 18:58:24 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 12 Dec 2023 18:58:23 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 12 Dec 2023 18:58:23 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 12 Dec 2023 18:58:23 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 12 Dec 2023 18:58:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yluw55OMP8WNmEpFi462Zy3zhSnN2clZiAqimmQkuxOF3qthuLqvHoRJegXE8O2Yf8nkgYp2RaxDIURGYNrOi3craandzalY0el3GBl2XGbn/vjPptewZmMFHG+1oOW/xRBkOI6xG0Iu593vDImQxLocfkT7r2bTZpvYPoo6NPuRbxmsJizoe0mReczmkhhCdDUm3jc+vzrKfLsfKpyTw68tY3w4YJqwU7zlRdElU1GvMbDSIrxpvzUUovog1e1jF83CtKKtaCmZG9ydBNqPTBLqyxXf7QAkHkAa1vg4HMUP9OkuyZPPDdnB7TfEUvfAnWpdS5b2VIlbhY8CiLShCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pHz9UM8KMS21TPRX1+8Pt6WVQBdnclQqzcz/oLduS20=;
 b=TrikiKsTgIays34dkVIOwPVNJ5mruIx3SDc1a+157bF8Octh+Bv9dksHt/0oXPdFZesPEhfjzoXMAexNyvDRwN++u8xMpiWjaqzA9m6ks8O7SnvKkQK5MasLKfXOSU8Cfww4kqbyE+V7tz2n+Aa68SY54klfPST5Nxk4gE3y5nPpwfTPCdzkFdFkwWLPUv3B7cs4jljZOla07CLZYWNzDj5q78Fgd3EtMMkkCZeIwEknurs46+U9Yq7jt1bHvWxghF4uiXSymlilJRJKmLHKvWSdDdU8YmJD+b8gYbOtIkOoLdugFMiiJsDmRhxlkyK08zQ7mzuJNH4EMHtBeGJPTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SJ2PR11MB8451.namprd11.prod.outlook.com (2603:10b6:a03:56e::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.26; Wed, 13 Dec
 2023 02:58:10 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f%4]) with mapi id 15.20.7068.031; Wed, 13 Dec 2023
 02:58:10 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 03/15] intel: legacy: field
 prep conversion
Thread-Index: AQHaJ9/ntY7KX33i5kq5vTav0ymOhLCmiBtg
Date: Wed, 13 Dec 2023 02:58:10 +0000
Message-ID: <BL0PR11MB3122ABC3ADFF9EE08798B721BD8DA@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231206010114.2259388-1-jesse.brandeburg@intel.com>
 <20231206010114.2259388-4-jesse.brandeburg@intel.com>
In-Reply-To: <20231206010114.2259388-4-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SJ2PR11MB8451:EE_
x-ms-office365-filtering-correlation-id: c8bf16b4-4907-452f-5c0a-08dbfb875718
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SSrU5fFfR5g3UFvH+4468qKCzdMIBBJ+3pXZ6bNkGVLRt4vx6HDTDPOTNFHPy99dI0F3DgfiR2Yz3s3Qbpc67bkk2AiNrWAC7o2yZD4fvBsf+4hK5YWrEEXtei4SbKy4obZ2esDs1fgLxY+bK4EKKw/gwDdPRl8p7KsaxRXk+52FHNf0FVJDZcPXPA16jN7+HjupjJfaclMVDBMfi8DuJBhHogF/o5zwsAREUC4J09me4f34pXjo1A3SpBfNa+cfwqK3PhrcT6fVrNX/2qVrA6YPLBrV7E4QjrMtTK8plcmHYgmbmbYbL3LE3+5sfzFAGAXEjHDwdI/SJurwUJPqpr7GwgtIr3G+GuyIdCVk8wNAfCYHDds8OpQz9GeZovC4gXxB9BuiNQRsH9oebfORPb67KzEcFRQ3xIbBvkMi++YvXYAWgbxVCAwHWCU8EhV5VWzQ6GrUUlisNGcdpZ8GMC4VJDighqsXCUdcZ61aArYKEpNafgWPG2ukFC+c6o8sEfYenvyeLhn6bDxKkcTdEfuYo1cX/yljAIhn7JnyVwh1XKFHccqb1LDp9h8r3RmSzOGLs2MH7cHXTtmO2NbQyYVTxqG4q/e+px79pYyXzsxON3lONPLLkUmk2yXTp4of
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(376002)(396003)(346002)(136003)(230922051799003)(186009)(1800799012)(64100799003)(451199024)(8676002)(8936002)(2906002)(4326008)(52536014)(316002)(5660300002)(55016003)(66476007)(76116006)(66556008)(110136005)(66946007)(64756008)(66446008)(54906003)(478600001)(38070700009)(26005)(6506007)(7696005)(53546011)(41300700001)(9686003)(71200400001)(82960400001)(83380400001)(33656002)(86362001)(122000001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?f96B8HzRS+e7g1rvNTe+BKFKW9sKYM5pN9XpTGOl4l3qHxufMoO644pEeF37?=
 =?us-ascii?Q?6x5j7IRPfYcczjdjatJJHGIJpF30mT6JVsgCjK3LwcduYk4UzQadxqIzkMM6?=
 =?us-ascii?Q?u7jF+J2w5LwOaJOaTvMliJeQKU7JopLrJINDafwq/Aj4hvmPzpnEKGwlvmHM?=
 =?us-ascii?Q?aDYdnj34IgVye4e0wnupUdOzI00z/qgU1AEkuyuTROR8uz2h5oCXMzlFv/U+?=
 =?us-ascii?Q?/AhluOepeifs2jn53KuYVsREbknJXJwkInBTvrRHkTcooJm1PLy+EiQ6zAHT?=
 =?us-ascii?Q?dEOIj4Furl0U/HY2wsmDo/jGONWdVXDYf5/Za97pPWX08Ps4ukatnnph/RT+?=
 =?us-ascii?Q?drXTjj/cBFJCr/TqM01hS22zYU8s9KpdCOmVrD0AlJWj66ckdAud7XHZyYje?=
 =?us-ascii?Q?NyYudvhVA41KwVPV6vc7x4xIR+lXyWCCReVIldfwKN+qgzRz1RLTVkkOTpm+?=
 =?us-ascii?Q?zJFmk3Z+A5aEtzjFHdnBZGIq7KLkyClyhmJ/nGgcLI6F7XjXLNJgXAKO1A0y?=
 =?us-ascii?Q?OTUReFYlIEuZiJ5s6XrA4OvDgd4sDXbwhvC2BDBopbCDnGUTzKBfbujUVARr?=
 =?us-ascii?Q?3kYGKx9cVwm35KD+R6M6A+p8iroPN90rucvaHXdKTCH+wg9rszslquH2gOLs?=
 =?us-ascii?Q?IkXm+MmRMGijfJAivcf1bArYqEe1tvFmmTJ7DqAegHh7zMJ/hV7IZRu879nL?=
 =?us-ascii?Q?7Gdp2Q62Nf+6YyWZB9xQ0Ystm8U4SnnPJPxt1nMbwIWZC3DZ7Wbd3O8m7tfA?=
 =?us-ascii?Q?kqsZsG7dNTnjGKqBofCcGcmiAIc1thvkfjsVFmvknVeKifOq2QD7jimG2OAq?=
 =?us-ascii?Q?CA97itvmO89gl3XGw4UtOJhko154FeSHXssRvkqLDn7sQjNN6TOltMtZLkP+?=
 =?us-ascii?Q?4IX1zB4rm86mOjBAPDA5QItPB1cu027gyVsfGer1rmXBlExQJJ5qCLKQzckh?=
 =?us-ascii?Q?SasSvt9j6/qEqBA1mXyG6Cd3+FTkMqf0vByaJi+bPNNn813v8MjM6TV2VRrx?=
 =?us-ascii?Q?SDfYxdspjQYtEouKtxTS6uTq0JIvq/wIwiCmGfRtuzdpvtK+QsQclheXxBh4?=
 =?us-ascii?Q?1U795zn87/3NZ/jZkaBtcwBY4nhokItIPoVm8WS+r/YJNg5dfgXK3d3YjSTo?=
 =?us-ascii?Q?FmNkfK8Yy69ugDvTKmoSkAgHKeSZflYLN2jXFybpb8Y/dMJbHGmYRCj0mA+d?=
 =?us-ascii?Q?hFBhs8eh4X0EvtK3klKiSlnafReKgYOQHf9zoSeeRswZgagaM/OXBFVIO1ec?=
 =?us-ascii?Q?0u+i/8W/AeQ1RfEy6hw4DXEaVk/ZOSgPMrw0y1yCxBSDumo1CupjJFF9KIOu?=
 =?us-ascii?Q?JSxJhhB7BZHd5ec4tBTWXJSPnEbhBhWTfFFxRL5YNiB3eFdWm8BXVeK5AYEk?=
 =?us-ascii?Q?OL4TyvOC1DdHmtc7aT0MfgvHok3PZNIBlw+2u3Gn1XQmBzHlrZAhKpRu9/2E?=
 =?us-ascii?Q?Mxx7VWIPeuGiO7PP87nauftR25grfQgQtcctoFbQb+t6FBvCNyiP7kmK0qLu?=
 =?us-ascii?Q?Z688cFYgUEYU657MiTvOvsPY/Ns/+m95U6KYhs1QE9+mcFou6jGBQ1ROcBwP?=
 =?us-ascii?Q?dmfye0rBDDneBKs4wSf3dHmdSumbacYBHqbhDdgxyessG3wLekWulO9Hyptn?=
 =?us-ascii?Q?cw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8bf16b4-4907-452f-5c0a-08dbfb875718
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2023 02:58:10.3406 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b8oi2NlOLluwG81GPi895efaB+I/tFJhZYs/fK2JpLhmM8Z/rq4znsfuTbSiKxrHbyigsaWVBKKeDS9/4yH7TV/emz4Qr/KXRbNJkzCz60BpxECJQvLIJ7jMC9fWa1xs
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8451
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702436305; x=1733972305;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vPpSaQ+P8gKrENyfPcPi5ohmeDLjhiuEK5cSSGfEeiY=;
 b=PekI54vchgcT2BpkFVLZ4xhLqNR2ZSjfrGvXzxjj2jfvZ8RJncMKAeGF
 OjdZfiFWCTHbeor0SY3yShCkNCAHbPNFWB3y3xrESYXjm0bwprPo+FkKp
 UzhqVZZktX4Wio731e+GBe40ij5+kgPawN6WEfUak+EU5vukW9+zx5bck
 ZWSW3nd3AseHIteXuSqS9nqdQstl6Drmj2/8orTDBoOJYbfVzJG71pPAJ
 9t0U6NisC8AYPbxsboAz5T0mWTyfwS9RSYdLc7pXYKfUhmklvTp0qjcRZ
 hZR6PaF8lFpp63Lg1NgbHxCLurr/XbGPIa4Z4QOnhbB7JiNlDwoHZmD4f
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PekI54vc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 03/15] intel: legacy:
 field prep conversion
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, Julia Lawall <Julia.Lawall@inria.fr>,
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>,
 "marcin.szycik@linux.intel.com" <marcin.szycik@linux.intel.com>,
 "horms@kernel.org" <horms@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jesse Brandeburg
> Sent: Wednesday, December 6, 2023 6:31 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>; Julia Lawall <Julia.Lawall@inria.fr>; Lobakin, Aleksander <aleksander.lobakin@intel.com>; marcin.szycik@linux.intel.com; horms@kernel.org; netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 03/15] intel: legacy: field prep conversion
>
> Refactor several older Intel drivers to use FIELD_PREP(), which reduces
> lines of code and adds clarity of intent.
>
> This code was generated by the following coccinelle/spatch script and
> then manually repaired.
>
> @prep2@
> constant shift,mask;
> type T;
> expression a;
> @@
> -(((T)(a) << shift) & mask)
> +FIELD_PREP(mask, a)
>
> @prep@
> constant shift,mask;
> type T;
> expression a;
> @@
> -((T)((a) << shift) & mask)
> +FIELD_PREP(mask, a)
>
> Cc: Julia Lawall <Julia.Lawall@inria.fr>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> v2: updated commit message with new script
> ---
>  drivers/net/ethernet/intel/e1000e/80003es2lan.c | 7 +++----
>  drivers/net/ethernet/intel/e1000e/phy.c         | 7 +++----
>  drivers/net/ethernet/intel/fm10k/fm10k_pf.c     | 3 +--
>  drivers/net/ethernet/intel/igb/e1000_phy.c      | 4 ++--
>  drivers/net/ethernet/intel/igb/igb_ethtool.c    | 3 +--
>  drivers/net/ethernet/intel/igb/igb_main.c       | 9 +++------
>  drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c  | 2 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c   | 4 ++--
>  8 files changed, 16 insertions(+), 23 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
