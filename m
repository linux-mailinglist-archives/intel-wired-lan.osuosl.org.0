Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB035E5B04
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Sep 2022 07:55:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D394831CB;
	Thu, 22 Sep 2022 05:55:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D394831CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663826129;
	bh=fFnGXKOJ0AOXHGabHb+RovUbMxe+TASZTT7epjHCc/I=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AD2fmzzr7Gn/BZgaNYqo3IjWba4Oi16s03R1mozAAEilhe7N2VlC5oSSa2dN/LASd
	 Ck0iztdcjbH55pd/MbYHxb7kYVbkNT7/a3nThjf0KCAPx4BMBOykUB8X5Bn9qrUwW3
	 TrVd2iwGaLQ9hVwGIX4jBupdo5GHZEiQTKkoV5dk5sqHsGuH4LVoJzdLsYN/C8HWB5
	 sFQRdqjuvZogTVTt6N5kk+4tWTnAVAZo/pwL7/HdZPHuT3MUwr14A5DCtMPKiGt2GZ
	 sab4kat5Y5dvoz2hPyWE2eAx+9zAI/MBs516mwcmV8jXi07u3cTvo0/kHcO1lu1kPQ
	 M1EzQob/zaWJg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JAvh4poYXKxB; Thu, 22 Sep 2022 05:55:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B74E7831A9;
	Thu, 22 Sep 2022 05:55:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B74E7831A9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6E8F01BF95C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 05:55:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4508F415FD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 05:55:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4508F415FD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n2gmxhqkAi8G for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Sep 2022 05:55:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1FC1E415F8
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1FC1E415F8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 05:55:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="279927393"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="279927393"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 22:55:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="948458827"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 21 Sep 2022 22:55:20 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 21 Sep 2022 22:55:20 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 21 Sep 2022 22:55:20 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 21 Sep 2022 22:55:20 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 21 Sep 2022 22:55:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cgtnblu5BFAsq4mHOdgXaCVSsMUpJABoH345pXT0QZUkkXAJUD08xPq04zZawzhaFEXEAFXXtWfy1fX3vWE2O9hIeBivXOnH2IFfrBjKcg7CCbG3cUmFcnurwj5VV/8qbdUxVEia0zf+RrtCoL8MP1EkL+D2iLMUhiCX13Y8bPy8mqH55M5MQtBHo+zQQxVWRaDVQdTld1yYeUF0hRCJv+NtGTUxBmkloA5xl9QUK2IZrMVWNLFK18e4zXkN9aqvDgi/boTsTBM7Zxxsb6iJWkw2+5KWb78h3s5+MA2Ib8R3YAAzDTzTgF9DJkMlCrkhYha+thjJoS+a0e8vD3aIkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ijFEtLL1bgwQDt2DuU7EDcZg+WyDN8Lr43UHEshxlMw=;
 b=mJeFq8sGiU1rlg3lIPlFMBGpRZzPJ2i9cF3A3Um2lnlcKPFJ1bK87J9L2qM/9ReASJS4pUErOTJ1MOWDduSRwQEmy/zWNjWqi8j/j3BCxEKE4/ZGeSC38U2dEwGTNZosKw3IfBaYkH52XnHRYnbxV/UhB8Pr5gKQ1rnE2+dkTRiUZ2YHWQB+5Xvj4NNcUMyen8TXgmOb6PJPmKo5xCb7WlplXf0a4wHPxb/1NGDoGz5t+K/vf4P+w9/ujU0z4xejeE8XdrjLYPSUwlf7g4n1A96vPu7ZGdNHrV2q9bHhCWVAUeaHPeOv+hnMB+F+RWjbc/HlVUIDJ6PQAtnL7kHNtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BL1PR11MB5336.namprd11.prod.outlook.com (2603:10b6:208:316::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.17; Thu, 22 Sep
 2022 05:55:15 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b26:8c78:fd62:300d]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b26:8c78:fd62:300d%7]) with mapi id 15.20.5632.021; Thu, 22 Sep 2022
 05:55:15 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Maziarz, Kamil" <kamil.maziarz@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] i40e: Fix not setting xps_cpus
 after reset
Thread-Index: AQHYx3mGmC6bTBUPmEWqIXs35/gaja3rAI1w
Date: Thu, 22 Sep 2022 05:55:15 +0000
Message-ID: <BYAPR11MB3367065CCBB94C1D63B7B287FC4E9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220913140206.64330-1-kamil.maziarz@intel.com>
In-Reply-To: <20220913140206.64330-1-kamil.maziarz@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|BL1PR11MB5336:EE_
x-ms-office365-filtering-correlation-id: 98fd6704-2f77-403e-2783-08da9c5f0584
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uK7jNpIk61PqiiLw4+viYwXakmkE3ej5TXX4ny8Ai9PJ0U10QfaCU7ZPhhf0H7oJmfp1aFvOyG68VmrGwREkqxgGtiVZKQWhkPeU+m+a2HxHo2Evtijz64OzN1Pg5u7qoVwCyuT3vYTC3vMPwLNZyYh74Gw/BJbmI6fkRhHwHKJSyJS0ggHq1OJLKN8dESUFA5/42t9lgmwu1HK9T2lui40H7Sd8CH6SLfnj5VNUzfC5Oqk7Ccd6P01pVqy3wTWsUyZPE0/5zG+aCOTCTrZFPi/KbIgjyOofUjX2jAA8YTcVHmm0VYasupPukTqBmfVc/5lPtRf7p/EOUEhExN6xnAoXh+ndUk4AAXs4+Hy98cTq4jx8TIEbYmVRpIVwGh/AMVeGk/0RKYwGFyRrZyNcr6eWgpFDueofF5kBPljtAP+ld7m5mrx95KEN6Ugum0wkdA5eij7lorrsRtMlDBhefcgwEJqRkTgWV7da29FWoi0YKD6ZaxTD6QAiQ+91D2Od0FVymaxzqLmkpRUaoJdV9xpLmtQB6cJVQ5FOED1gED4uvoFAlnb1IwpPTnZp/c8PiHRUB+L6FWXFsQhqyWgeW61ERH3fkHEeA4z6RdUikyxIH2FzlsEGVeka7Eiaw/2LURXDvJT3d3wZGAJwJ4WIXKv5xrmsTrSgwKRahyvwzoteH1Ib06tNKSQEHb8oJu+T++QWCOO+KUzr99rzQ45luDipUfldyqVteDXUCURCW//kGA50woEecQ3jHL3M+BJFoWNY/rErzZqkKNlLDzQV1A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(366004)(396003)(136003)(39860400002)(451199015)(83380400001)(71200400001)(53546011)(41300700001)(26005)(9686003)(76116006)(5660300002)(2906002)(107886003)(55016003)(86362001)(316002)(54906003)(110136005)(4326008)(122000001)(6506007)(478600001)(186003)(33656002)(52536014)(82960400001)(38070700005)(66476007)(66556008)(66446008)(64756008)(66946007)(38100700002)(8936002)(7696005)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fSGtN2Nk7BnGSh8h3lECdbxbzHyRKoUnBGK99FZVuSj6MFzm7WzAx02jh6+I?=
 =?us-ascii?Q?iJrMGec34jWlVfjCILvgrN3B7Tx1pJb76ATb12YaUyMsgj/JOhomti3+fxGX?=
 =?us-ascii?Q?AZy9dr3DNVP+sXgeSevV0SX3NWSG2HxM08MF3etwduzhkUS7xFfTMCTJzzFJ?=
 =?us-ascii?Q?mbTwuS0ugXQ5sN9hbBPP0iNOs2f/uHA88DNUBvIpgx2ZF8MJUqIBO66tZHG1?=
 =?us-ascii?Q?w7AS5pp5S8dxQNp0CZtUCjnQzAYZIJ3cZQuvOgUU0yK06uvfVsmctB+dwmx4?=
 =?us-ascii?Q?sTABGxC4dA8vYaw4xAinKrPtltwBz7hByuDZCDfDUnfza2GNbb/pWrA0lSjo?=
 =?us-ascii?Q?sUythGpVFHPPA1ymkroXpgqtyyBN4ryGusp7UkruHPaEM0n7akJcYUUW1T29?=
 =?us-ascii?Q?5BLbHeKjtkzngagUEOpF+AMR4hAMb0N0QJVhVMwjTNaVf6t0gEwp6lGdx80s?=
 =?us-ascii?Q?FrTzxzdUqhSzxHtT6nvzBOf7WjunVK+xkxLkasfLkxKjD0f1omrhULWbT5gE?=
 =?us-ascii?Q?mnFbMC4qYt1Hs6IQ2TXaFvLnNZ8PZ/flTtJDNlyhpZgfAe4xIUjK3RfDN06y?=
 =?us-ascii?Q?u80/E31qTajXOtmYcozzJ6jUJ+9NGZR/dKozM2LypX9JIOfE1ucOXFBrnf/8?=
 =?us-ascii?Q?MB4UesXyjxu7Q7bls/AK99rU2lDWFf5IqSnEgPP+2TzUsZXpCblDK88ZtWcG?=
 =?us-ascii?Q?x3OeNgcCVItojX0FEGZ9lUPcrysjwUlbCYBuSFfrQAgp32W4oTWsvwSKalnz?=
 =?us-ascii?Q?uOyAMTWzUhoPmSi2lKcKD9yXwJ6KBwNXEOY6kHYeML5Qi0DxM3uG9OrAREA1?=
 =?us-ascii?Q?uOWU17i9UcVOcUJwwTNfgM1fvTrqO8SihwDrVYJJ4SVQvpEIreCOXjX8xgZ9?=
 =?us-ascii?Q?kW1h/7Z7t4tJxFAOXzXxltweyOKS50XtY0N3hBtT9FHnxtn/5tae1eH+ye/H?=
 =?us-ascii?Q?7gJCPU4g3unQhUlf0Hw5UP22wIlqdxFiDa6EioK7e54lLbOmNFyIQHUYUVVf?=
 =?us-ascii?Q?dDBAiocbiwgYNVAOKNYdmu+PfOWrRnacQIqQkZiXDbrWLTogrYsmPr6kxjGV?=
 =?us-ascii?Q?jRuYCb3QGcwUTVVblGynPbetpZq0JodVRMzHU03S02xh7XSVFHaw5gf/WHsC?=
 =?us-ascii?Q?rbkfH0UnCiLMjyO8Cz4SkJUzrgdW3e7Gqy31AUdOsMNiTQdRivImfhZgTdtV?=
 =?us-ascii?Q?VGfaWVW4rjC4hOXR8dgco9fDJkZa9GTQW3D6bvdMYTNgfxs8fsk6EhPqib0g?=
 =?us-ascii?Q?Szn6mVOlC9C9njd+kKBFyVUiMwfrw0ktTCVC4jQc9zCtPRAzeN1qs0bCiQqC?=
 =?us-ascii?Q?nZUNQPbSE5xCeYhjw0TJJxNMD3OUZ4vCOgosb2OLfWGRGPtFE0h98wR8q/jV?=
 =?us-ascii?Q?hDpZipawsOPv4w0Gj5jM1pqehoDZyVR+AdDDxi7bX6uBXg8OR/tIOQYgUddn?=
 =?us-ascii?Q?Xd6CXvETEok5N6E+f1Odz1/mk4WscZVORnhMdBP4mNf42Ga501CO7aGeSQCV?=
 =?us-ascii?Q?J3D926SZNzP1MrRD/cULZwhhQ/WE2h5TW8Jox2x4rJfrFg5t7eQ049eq+ggS?=
 =?us-ascii?Q?Mb3rQAc1kxVCjoGBJzb23ouLCe764pdNktyZlsou?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98fd6704-2f77-403e-2783-08da9c5f0584
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Sep 2022 05:55:15.4094 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KzuzeYuQBC04wwFBOCm/ytFhHJL+8Q0OGcn8/jB/RfhshSNZBz1Eqwr9mgTyMldjnhpHAoi+MZtToV+hKI8xYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5336
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663826121; x=1695362121;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MX5q/oCD9GNTiVquqgza3hUalYIrcXfWmVdC3Qz0v9w=;
 b=Y/ZKge+G5YssBCetu74GEl/DXfIXYJGulodi4kLP/wEPusUJ3llj3LsA
 5MTXgL051eJP7P12ZtJ34O++GMBbq9mGQWdXjnfKs31y9W1MwNaMPM4YI
 RH9wbHm38lek2XzIj+vkpfZXp2LpK+f5fwsbDcbRGhbKKVlgNRntM2OJ0
 csDA8Cf8iDC9QKdpMauUivfgoNOPNhPv+hpVVTHXqNs8tQUvbU9QR7W9A
 1bqiWKuj1yIXrZJa9N18Lw6xpayolnPZhRsWEtrZnX7vK5upma8949Vhk
 4rXc9YYaJzLzK/ayS2PAAuJcBIVMTEoC59KGRrAkVfjM363+BxOhh6cBE
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y/ZKge+G
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix not setting xps_cpus
 after reset
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
Cc: "Jaron, MichalX" <michalx.jaron@intel.com>, "Maziarz,
 Kamil" <kamil.maziarz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Kamil Maziarz
> Sent: Tuesday, September 13, 2022 7:32 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Jaron, MichalX <michalx.jaron@intel.com>; Maziarz, Kamil
> <kamil.maziarz@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix not setting xps_cpus after
> reset
> 
> From: Michal Jaron <michalx.jaron@intel.com>
> 
> During tx rings configuration default XPS queue config is set and
> __I40E_TX_XPS_INIT_DONE is locked. XPS CPUs maps are cleared in every
> reset by netdev_set_num_tc() call regardless it was set by user or driver. If
> reset with reinit occurs __I40E_TX_XPS_INIT_DONE flag is removed and XPS
> mapping is set to default again but after reset without reinit this flag is still set
> and XPS CPUs to queues mapping stays cleared.
> 
> Add code to preserve xps_cpus mapping as cpumask for every queue and
> restore those mapping at the end of reset.
> 
> Fixes: 6f853d4f8e93 ("i40e: allow XPS with QoS enabled")
> Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h      |   6 ++
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 109
> ++++++++++++++++++++
>  2 files changed, 115 insertions(+)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
