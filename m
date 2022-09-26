Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0710A5EAB9A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Sep 2022 17:49:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 39C0E41811;
	Mon, 26 Sep 2022 15:49:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 39C0E41811
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664207361;
	bh=VcpsHm8c1uv/htJWnABHpRrlnP/COtJz+Kqyd05G4AY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LndmR1yfQWNMME4mP3pyeOw94A3wkcY/wkbkSSDeUfofp+pR8DfjbfAcdTURzpgB+
	 MtBJygWeeGzmr0TU+4qiBeXq2XZpk8ZOnQl/waIDFWpVeVpeYaFwL7zOBDbWgWKI7O
	 sIXvkp1pL2QgV4wqpaGDX1p3NkAY1TqQy+NWODpC9yEKhkss9rN8vXVDLVnGdvq0US
	 jMRyqp+/I/BBhqZzmI/aS7mqDv+y/nDxfq0LLPvqEP3zokIVB6te/iQSQ1SfROUlhF
	 ObclwV6/pFHRQq3TVbNbnhYztPcbn8GcE7CQgNE2ZsQj0NBWFoX2913gZsPATprsjh
	 k+HenDBcQyyow==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3SQ42Tw21nns; Mon, 26 Sep 2022 15:49:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC145417CC;
	Mon, 26 Sep 2022 15:49:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC145417CC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D28A01BF3A6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Sep 2022 15:49:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BA08482A28
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Sep 2022 15:49:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BA08482A28
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HSAa_JJP45AQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Sep 2022 15:49:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F0F3C82A56
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F0F3C82A56
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Sep 2022 15:49:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="284180668"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="284180668"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 08:49:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="651872904"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="651872904"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 26 Sep 2022 08:49:04 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 26 Sep 2022 08:49:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 26 Sep 2022 08:49:04 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 26 Sep 2022 08:49:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hhtVrnV1hWrZFMrW6hu+L0FvMm3efW1jV51BgXpDWUPYs92/cWrcS/NaHyp1AkTateGEmJ0rWmbKLghV347RQUlusnKQqDRoBx1ofdB3B6+Gr/2FFlS2Hvigns85tH74mj8Pfp+M8UzVeB5tj9kefJ7RonQ+iidia75muDq0WZmd7W1HHNPyutpemM0mQ2ZMI/WUP5TiebfZXT/EuxLlX04pk1XuTPb5tCpL66td5BdCSWKk00qUe7mqdU6ZxCrMqXSVHR1+xVUUl17Q2fI7WlOdW48kkuAutWAvadPVLvo2RO5CT017btgVcpcnRauIEVC0QltEa8qRpQB1zyKV7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fofTDFGBoNvMPEw1Dpr0xEP1PSg2NB2o1FENz4SGW6I=;
 b=Gjy8JkG/wFQ6bItH6RmDqCdYDrgE73YEiTXqndxOrZB7iLKF4fjqQ8OzEca/83b8O/JETI2JlFZtvYXcd9zP162MyRwysVuN06/zgbZ9kl3x2AixZ/LV1s6UyvONWapsDmXH8LWCyNylv1VJgPU+KC/kkC7lcggq1YsGPIXOvAN9zXIu/NEFDjGrSo8ECnrdW+5Az7bUA02c3apZxRU8E8cbzlHIN4/ezhWYQpd63LnELgKQGpOe84Daq/xXxYcF8Xkt7Monz1Ju8FXwBq4U6bJT24XIL7pinutnheTde/q/rrh8tHW6hrQNPnMFHs9UmJZ0CtJRzUSdGDEfl/szvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR11MB1324.namprd11.prod.outlook.com (2603:10b6:3:15::14) by
 BL1PR11MB5221.namprd11.prod.outlook.com (2603:10b6:208:310::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.25; Mon, 26 Sep
 2022 15:49:02 +0000
Received: from DM5PR11MB1324.namprd11.prod.outlook.com
 ([fe80::7992:6033:ae1f:3e08]) by DM5PR11MB1324.namprd11.prod.outlook.com
 ([fe80::7992:6033:ae1f:3e08%11]) with mapi id 15.20.5654.025; Mon, 26 Sep
 2022 15:49:02 +0000
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: Kees Cook <keescook@chromium.org>, Vlastimil Babka <vbabka@suse.cz>
Thread-Topic: [PATCH v2 06/16] igb: Proactively round up to kmalloc bucket size
Thread-Index: AQHYz4sQnGagtDAy5Ey39TamNoTGUK3x3q/A
Date: Mon, 26 Sep 2022 15:49:02 +0000
Message-ID: <DM5PR11MB13241141BB4C863F1A01D958C1529@DM5PR11MB1324.namprd11.prod.outlook.com>
References: <20220923202822.2667581-1-keescook@chromium.org>
 <20220923202822.2667581-7-keescook@chromium.org>
In-Reply-To: <20220923202822.2667581-7-keescook@chromium.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR11MB1324:EE_|BL1PR11MB5221:EE_
x-ms-office365-filtering-correlation-id: 3b13f607-4bfa-4e36-51e6-08da9fd6a282
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: B30/mdLOatQAiRtXoSU9ThH7GMZqYobdTBoeUkupZqB8NQQzuiPufJRt+xUV9Mlphn9XaKTnwqkNVNJYRggptoA7kAxQvFhbc886EY3QlyT85/yj2C9zMjalS8Oy3TxjiS1jxCYsURNDSOcF0CAtyMDEjDeR16pObo4J4GfAgrrBAfednKnZ4/UR5BexfId7wivgzrr0QJFp43FV0FfBml2iSePSFbIFhd6VJ6VlpqDv+vydQazHYB7x5HY6d998BLlU1gRMVWXMJjeHv56alVS4Jr+IChnCXsJBE0rwxcmxcK6x1i9NbeiK5O8Yyj7n1nIMoeHuiLZy1hXX9TrOgJ/3TNWzRNuawYp9dMZ5YK2tQpO2GBObKlkt8acIM8Z9sUnzvKkvzAFUppLLMAaSpjo2do6OJLvjLsOC6WKCI7NAIbC2p57ErD8qmMPk0NegJkC5r7ormJKghC2TEuT/FqquQUqboirfhYhQ73+Vfm1CEr0gbtGpqkFDmDPMc4yBZNNdgDnCZTGIJpUOUw1WIcZf7YPVAjE6mniGb3R91hxwArP8PiKJZ73Z56uMBcKCTnmdreIlQxtlZ/wBWSghZVDMizzvlS1bLOEtNGocg2LMDaoBsabjFQ2AdUS1huJUSi7SJ6bbygE2+oP5q5BSvVmPV/JDMVxRjqv0KNo5btFhVfQo3lMG1e7/IZhZpStakQ+oisI/VOrD0OOGC4B/OYmvHx2LNU1uF+rSIkXZw+tPpmcJy5oB+JFibzQStJRlsmH5pGQEmYEKhkyBBkoCdw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1324.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(366004)(396003)(376002)(39860400002)(136003)(451199015)(54906003)(71200400001)(110136005)(316002)(478600001)(83380400001)(66556008)(76116006)(66946007)(8676002)(4326008)(66476007)(66446008)(41300700001)(7696005)(6506007)(52536014)(64756008)(5660300002)(9686003)(7416002)(26005)(7406005)(38070700005)(2906002)(8936002)(33656002)(186003)(66574015)(82960400001)(122000001)(38100700002)(55016003)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?AIGrTDbDFItjn4Ryzw80Jp36y9fRnr/BqJ50poZHfHifbpx3TK4GxN3wLw?=
 =?iso-8859-1?Q?Wf/aeQeLRJCZ9P5nh/rDr4nnMOpahTfkkC+fUPq1MpEbJ46lY873by7FdU?=
 =?iso-8859-1?Q?J2cw3+PkOjZqr952qdBoDP4n8mZoRkqMrL3atK9pR8sqRNdtu8xwFT0Ry4?=
 =?iso-8859-1?Q?E3VFxUQN0aHmYndJtE6YUJtZ4cpUGhWpXPZD00EUFIAfWs08f8yaGjDJ9l?=
 =?iso-8859-1?Q?ncSm+xyxBD1R4/PxRVSYc0Nv1V9aOu4YjTqzAldndhWBHvVFrrUM0YBu3b?=
 =?iso-8859-1?Q?af2gbglzyB5yMA9V3vitzkoMMgO8yH5TSr3W3bosOAoIvAItjDFoqmuFVq?=
 =?iso-8859-1?Q?lLYN8jq4h95OEmiGeFteIAiZBIe6HUlX/nH7LDhl/blo8scMmaAOVsQrdf?=
 =?iso-8859-1?Q?olupVt356KLQ0Og0nB+ecMlN6EbqZPEcruA31MZSZ0lz76ubOChyHrIXXm?=
 =?iso-8859-1?Q?jHkYwR+Uhn03JA8wgBMLgoSpIL/+9dAQVGpMap0j3Rexm/8z40UtGBnVXj?=
 =?iso-8859-1?Q?CSovMeYyGmi4CHXoXfiXuo3glmED68t9C2lq9S75RTDhFTCK3auRcDWbyM?=
 =?iso-8859-1?Q?d/cMOsEr2vc8L7gNrbyI+W6m4b5QRggJ+22xh9hKaVesQMAlW4dMMG8A6T?=
 =?iso-8859-1?Q?79rzTmOGWj3/L5TcmkntS31AB9ZDukDEXFaNXQ8XYUfsbM/Rx1cGQMW3CN?=
 =?iso-8859-1?Q?H4GfFka+AdbGR54KnJFSl8qRL98dkmy1jtk7Z2cZauT0NIx0vppc4KiWN9?=
 =?iso-8859-1?Q?TC0XaITbgjREt+/EAfFGYS0bOszJ704Wv3Npd2AMTav6nAXhl2vVv74sAG?=
 =?iso-8859-1?Q?wFbhbVmou/FcES5nolt2Xb/FVQCwFfBxPv9MwJhdFu8RYUJQiAQaWVx+g2?=
 =?iso-8859-1?Q?7/4zjzaoUy/aYLnulenNzKyEL8bFpR/VOi76HPQP9x2Wl1tqUuvSKT4pWv?=
 =?iso-8859-1?Q?qW6AFEFivC3KSZVhkj58dSSpuDzp+sM/dnUHbL7BG5ppTcdEIxId1G+sD3?=
 =?iso-8859-1?Q?5ALS8UTSqkyW1SRqDYyMNlhsuBzKDRXOD1cKVLu6gO1YcfHYIhczsj5lde?=
 =?iso-8859-1?Q?jm5GeWXoMq2/sovZ2XCfk1kxMWV3r9O2lm7pc3YY6Ng5ImU9MDEmaHmFeP?=
 =?iso-8859-1?Q?kyLvTTPKI+oYCmZwHPWnpnkFDvdvqe0Kc7Qe3rBQXXgOhQdKP+eXbm+V0X?=
 =?iso-8859-1?Q?wxHazAY51hizH4umUdbO69bZRz1m5c/TJnY+lOYaQjLPWDJZwhk7QIydxY?=
 =?iso-8859-1?Q?rstGMoJHAM8AJzg6le3U0UXgLXoDSj8DzopjPGJTNbwzFHBAcNAPhp9Z/M?=
 =?iso-8859-1?Q?c2vlGWNZh56Z0wqfS3JdYCkq34Z4rSx6F/ABopOEmhytlzV18ZBGBsW4mL?=
 =?iso-8859-1?Q?bot2lCu7Fek8tSBGBVu1HOoveRb69bFXLcpJYo7fcCdEN42FqkLUXnSPL1?=
 =?iso-8859-1?Q?a0Khc3p2AVe1ETebA6FZH6M+4n0+tAgeeXDi7VWkVMqWd7NkvM/R7oDBkR?=
 =?iso-8859-1?Q?RP8WRKpGbcG09Tewj1uc4knl1D2rr/kKYIPNzWnPl1jPZ2Uq54QsXg87jf?=
 =?iso-8859-1?Q?P9kG9GzfXxaMwRKkPrnDxOfX5ElS5WaqBWzSNIT9TDPfiacjrff3Z9bYNW?=
 =?iso-8859-1?Q?EZE+iFekeX83uHYvQWK9qhM/5NwWK8ZZLM?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1324.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b13f607-4bfa-4e36-51e6-08da9fd6a282
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2022 15:49:02.4457 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QQDp/xFXJV7+d1QXhc5KT5kx9GvtnmEuu3UiJvVwVZaI8oGr7EdbJa6J1WFxdP4+VJW3h7gYwvRDgb0M5HM3n6atR7KeFrBgeExOURDbMX0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5221
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664207354; x=1695743354;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cVdSevvhDIWDYS8iV0bUsmnd4ZtdDXW1rzPl0O1tgDg=;
 b=WQTdqSfb9syGzjiFq8bEIAvGFhHp4higVQY/hpV+XWVL4oAusklzybH8
 2PCCChQmkhN/9kIHkfbcdNp+2Ye/D0lDgme/ufZZTO9/sqkFyDHzPbK4R
 CbZLQuOWSJqQtyIDao2vcONc3G/huJiOo16NJf7jv2hrQqC0TdZKA6NfZ
 Ls5ZP96CyVKLrUB/KMEnE5Om5DJGwwMZh9Q8FtOTmnf5r/6urU8Xul5Pt
 nEr6+sFwlu8K+MGdHGcs7/VX5czNn7sGbCtA0/IPj/vb3fbrbbb8TNzk8
 aG5iuhVDUQLxLCmd1OsDxVXYTS3arOLr21ldoKPGV/aISL8PA3h3TPF7D
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WQTdqSfb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 06/16] igb: Proactively round up to
 kmalloc bucket size
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
Cc: "llvm@lists.linux.dev" <llvm@lists.linux.dev>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>, Eric
 Dumazet <edumazet@google.com>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
 Hyeonggon Yoo <42.hyeyoo@gmail.com>, Christoph
 Lameter <cl@linux.com>, Sumit
 Semwal <sumit.semwal@linaro.org>, "dev@openvswitch.org" <dev@openvswitch.org>,
 "x86@kernel.org" <x86@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 David Rientjes <rientjes@google.com>, Miguel Ojeda <ojeda@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 Marco Elver <elver@google.com>, Josef Bacik <josef@toxicpanda.com>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, Yonghong
 Song <yhs@fb.com>, David Sterba <dsterba@suse.com>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Pekka Enberg <penberg@kernel.org>,
 Daniel Micay <danielmicay@gmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 =?iso-8859-1?Q?Christian_K=F6nig?= <christian.koenig@amd.com>,
 "linux-btrfs@vger.kernel.org" <linux-btrfs@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Kees Cook <keescook@chromium.org>
>Sent: Friday, September 23, 2022 4:28 PM
>To: Vlastimil Babka <vbabka@suse.cz>
>Cc: Kees Cook <keescook@chromium.org>; Brandeburg, Jesse
><jesse.brandeburg@intel.com>; Nguyen, Anthony L
><anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>;
>Eric Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>;
>Paolo Abeni <pabeni@redhat.com>; intel-wired-lan@lists.osuosl.org;
>netdev@vger.kernel.org; Ruhl, Michael J <michael.j.ruhl@intel.com>;
>Hyeonggon Yoo <42.hyeyoo@gmail.com>; Christoph Lameter
><cl@linux.com>; Pekka Enberg <penberg@kernel.org>; David Rientjes
><rientjes@google.com>; Joonsoo Kim <iamjoonsoo.kim@lge.com>; Andrew
>Morton <akpm@linux-foundation.org>; Greg Kroah-Hartman
><gregkh@linuxfoundation.org>; Nick Desaulniers
><ndesaulniers@google.com>; Alex Elder <elder@kernel.org>; Josef Bacik
><josef@toxicpanda.com>; David Sterba <dsterba@suse.com>; Sumit Semwal
><sumit.semwal@linaro.org>; Christian K=F6nig <christian.koenig@amd.com>;
>Daniel Micay <danielmicay@gmail.com>; Yonghong Song <yhs@fb.com>;
>Marco Elver <elver@google.com>; Miguel Ojeda <ojeda@kernel.org>; linux-
>kernel@vger.kernel.org; linux-mm@kvack.org; linux-btrfs@vger.kernel.org;
>linux-media@vger.kernel.org; dri-devel@lists.freedesktop.org; linaro-mm-
>sig@lists.linaro.org; linux-fsdevel@vger.kernel.org; dev@openvswitch.org;
>x86@kernel.org; llvm@lists.linux.dev; linux-hardening@vger.kernel.org
>Subject: [PATCH v2 06/16] igb: Proactively round up to kmalloc bucket size
>
>In preparation for removing the "silently change allocation size"
>users of ksize(), explicitly round up all q_vector allocations so that
>allocations can be correctly compared to ksize().
>
>Additionally fix potential use-after-free in the case of new allocation
>failure: only free memory if the replacement allocation succeeds.
>
>Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
>Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
>Cc: "David S. Miller" <davem@davemloft.net>
>Cc: Eric Dumazet <edumazet@google.com>
>Cc: Jakub Kicinski <kuba@kernel.org>
>Cc: Paolo Abeni <pabeni@redhat.com>
>Cc: intel-wired-lan@lists.osuosl.org
>Cc: netdev@vger.kernel.org
>Signed-off-by: Kees Cook <keescook@chromium.org>
>---
> drivers/net/ethernet/intel/igb/igb_main.c | 5 +++--
> 1 file changed, 3 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/igb/igb_main.c
>b/drivers/net/ethernet/intel/igb/igb_main.c
>index 2796e81d2726..eb51e531c096 100644
>--- a/drivers/net/ethernet/intel/igb/igb_main.c
>+++ b/drivers/net/ethernet/intel/igb/igb_main.c
>@@ -1195,15 +1195,16 @@ static int igb_alloc_q_vector(struct igb_adapter
>*adapter,
> 		return -ENOMEM;
>
> 	ring_count =3D txr_count + rxr_count;
>-	size =3D struct_size(q_vector, ring, ring_count);
>+	size =3D kmalloc_size_roundup(struct_size(q_vector, ring, ring_count));

This looks good to me...

> 	/* allocate q_vector and rings */
> 	q_vector =3D adapter->q_vector[v_idx];
> 	if (!q_vector) {
> 		q_vector =3D kzalloc(size, GFP_KERNEL);
> 	} else if (size > ksize(q_vector)) {
>-		kfree_rcu(q_vector, rcu);
> 		q_vector =3D kzalloc(size, GFP_KERNEL);
>+		if (q_vector)
>+			kfree_rcu(q_vector, rcu);

Even though this is in the ksize part, this seems like an unrelated change?
 Should this be in a different patch?

Also, the kfree_rcu will free q_vector after the RCU grace period?

Is that what you want to do?

How does rcu distinguish between the original q_vector, and the newly kzall=
oced one?

Thanks,

Mike



> 	} else {
> 		memset(q_vector, 0, size);
> 	}
>--
>2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
