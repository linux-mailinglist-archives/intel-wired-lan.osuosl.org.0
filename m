Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4961D7FE8A2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Nov 2023 06:23:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 697A261B2F;
	Thu, 30 Nov 2023 05:23:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 697A261B2F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701321813;
	bh=gsOJWMbNuu7zGhqGv7/ph2ABqiUmUAR3DbiWwxeIPLo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rUE4Bpzg0LHEb7xtEqDcqF6h6HncXbwYPg53ZbpdcYMSFjHMXdzSJ2FwHsweEEk+5
	 xjYCHxgeHmOyQKwP513jyCUjBE6Na3ySUWZCK+74ky+QbNYMa7aV8LZOgJsyNaDuSm
	 LAvlldqrjspcTkPPtmIqkmFdANxrnRFwPCZE2tpAeAt4rdovL0eXOhyfUbbAFfrkpa
	 tHqsAQSIa8Y1SlTarcaCIekbCLGrlpcxjRUuAm/GPRbShGZ0Pz7kk7y+K6VbP6fsV+
	 H8fxTJRR6vlmBAzcDVebLSVD9C4ZhXLlQR38gOammOOYi8VdkIQctTvz+6t7QsfXc9
	 MVbOyZRvHIvIg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7VgI2yzhJVcj; Thu, 30 Nov 2023 05:23:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 340E4614F9;
	Thu, 30 Nov 2023 05:23:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 340E4614F9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F40561BF84C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 05:23:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C845484457
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 05:23:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C845484457
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tK3Ei8vW9uJs for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Nov 2023 05:23:22 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0B52B821AB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 05:23:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B52B821AB
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="6487585"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; 
   d="scan'208";a="6487585"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 21:23:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="887117066"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="887117066"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Nov 2023 21:23:08 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 29 Nov 2023 21:23:07 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 29 Nov 2023 21:23:07 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 29 Nov 2023 21:23:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PC71Vsv3XIaEmWI7H5iAs1mTluZ9Apu8GbNO//bpNKkfzQXQjXlQpfgN6qXB6YxzlxJDfIv7QiC6vGJ+440z4iwoCzAMU5qs4wLwEtgI8MTYsXPDjA+H5xnYPENYV/trrjQMVKv3xvwjquRdKCH/n+6nb/YlLqpbfSacjBhUGmB3wOZg0jrJjrof0g+0iQN6CFF4YPq7P2TtgYObEFCTpzBrK5z3bzUoYdQSNoeiElIcpRw48hjq3xR1HfXxkmWvvs0pKwPP+Tdz3zJzJ8bsYg3XcXoa8t98JfbG42oDQJ39J23J8Cjve6sHNAjBhTSsi+XqnMfY4+QywXkJ5da4ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6/oM9UZ/ZWLNI2w4e7hhJ/XV46D6ev4Ev0PyQDalf9g=;
 b=abXVmqFEOlnubD+kjU07CbgKJew+GXWhnyqQsCvYg2l45i7wcwqS+kwTMVYnQEISWZrw1iLYaO+DKKrOgb0bO/xymT8qvgYIDNjGmdcSa5fpZ98KCGXN960gQ/e9QQuXgPrRdNUICcEMTamKWRoOFAJf3fUqkDrwmRwewLjaFzmp2Tz8v32FPX/SXle6wbzePqIodmOC73sHDC0eZv8zcVZ0jt7KMZe3p/y05pL9bQDd43pWKTeUX6dFXzbU0c7RoBt+LDfO21hfH/MysSpiY7LJSmIl8yAXJWLtqAiJT1q+VSSHvy9riPpBJzFqrby7Oi7yhqs0RonaTHMa6WcYiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by DS7PR11MB6198.namprd11.prod.outlook.com (2603:10b6:8:9a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.22; Thu, 30 Nov
 2023 05:23:04 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f%4]) with mapi id 15.20.7046.023; Thu, 30 Nov 2023
 05:23:04 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: ivecera <ivecera@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v5 1/5] i40e: Use existing helper to
 find flow director VSI
Thread-Index: AQHaHueKTxQAB9F/rkef+3K6ARwC0bCSVYRQ
Date: Thu, 30 Nov 2023 05:23:03 +0000
Message-ID: <BL0PR11MB312220F2814A916756B0073EBD82A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231124150343.81520-1-ivecera@redhat.com>
 <20231124150343.81520-2-ivecera@redhat.com>
In-Reply-To: <20231124150343.81520-2-ivecera@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|DS7PR11MB6198:EE_
x-ms-office365-filtering-correlation-id: 77d584bb-b10e-4e16-1b46-08dbf1646d81
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TTy8GHrlxS8kSzw9n/SpsumtWfPDB+hCAssqjsvuaCNHUeLex2MAZoEocncp6j2NuMeTiHJUOsM14JVjY3jjffVIdRLaH9D7CvxteVJ9aw0Sa72cTUfG8NiqVgp69US042nFaOWeXk08v19xDwPbsi24qHkPN6soYrzmGe9xoDBC/0ogC9cFbOCyJIoNPPdqJTXnuIBKCHHU6877LMWKUqBOYb9L97Ihdon5gMJ/SsLdlA/D+6oOB36yItdCtl/F/UnmI2S/dcPimpKH/MDY2HsD6U667y6XeieyFpxA9n2xC+ko+CogX/n7xKyoYmTiCTQTAREse9m0w05CDB6PJnRl5OkykMFga8ina3ssSvOn2iI59q1EhebfLSne8Uj8sa6nITNrVhUsd24btEidIcveGCUZ3ZBc4/Ag/7dXJss2rtlaiikW9Rn3BC+V62oyD3btGb+jF1AquDj8UNDi1DGDDJlNdo/4/lvEq2ZBTOmsvUOblAmGmIU3h2GUqoeEJpSjtHZcisMESbuwdJhLSZiwOOxa+H4mwY/jPsteXOI3xD1d+d5tfQitxtINf7VoDjrxP3NqCTFuNnBoY0jUuBbPE/Z2OisZ3RVTNTM9ZSWdk0BIdtrfEWGINRtF64CMcsqOMfNQZnyqpByI3mRsK2XIge8n3TN7w0cIbd1A0wDCXJpQKTaF2uk97nEk4wlv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(39860400002)(396003)(366004)(376002)(230922051799003)(64100799003)(186009)(1800799012)(451199024)(478600001)(71200400001)(9686003)(26005)(53546011)(2906002)(4744005)(5660300002)(41300700001)(83380400001)(7696005)(110136005)(8676002)(8936002)(66946007)(52536014)(66446008)(66476007)(66556008)(6506007)(76116006)(54906003)(316002)(64756008)(4326008)(82960400001)(122000001)(86362001)(33656002)(38100700002)(202311291699003)(38070700009)(55016003)(37363002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?AI8qFqXIiHmQf8iB6nmBya3+2wSUZTLHu7s77Wmm3+FEotggAcOMa15KASz4?=
 =?us-ascii?Q?BiP+WcEg3tSokQ4SOLQnscCHqA8p3Mkfshf+kWjnAX6SgkVjzuLXIkspErLe?=
 =?us-ascii?Q?BxW28U/JiHMAvjjlPm1udwPUEYBeWMRKlO9VF7rzexgPJbTBhX5kRztDsCRH?=
 =?us-ascii?Q?k0Qa2z4vHGaABXf0Hn5VF9s+L8KiAGW5hLaXqNOWTVJsTdzwNjjR0e1JGMW8?=
 =?us-ascii?Q?LlE9JAKyow2oDSqEH1L+0wil9zXjp8IvJfF4+6gRi4ZiFYniOIIBNy7xwEpJ?=
 =?us-ascii?Q?8AOA6oPvioo6mCZbX9l9Pm8AG0EstTObPiRnSxPzAhVCP0YVDlwEEajV8NrL?=
 =?us-ascii?Q?p0oJN1KBpyW/kv0UqiWVY6XS0oAGB27jphC4PcphdVHRRsufSfNjjtANHDJR?=
 =?us-ascii?Q?iVRONCqWrar/f7HjzB8SqxPYfryBN1iV8RyqbFNV8607Wa17S/AnAIhN9f2H?=
 =?us-ascii?Q?mDoIau44XyXjrhFVxzasB7HHMrGLDY2pR6TEo3/tWL6MRjAFWfX+d1UgTROy?=
 =?us-ascii?Q?Rsvsqb8TAwABj9Fdrm2/CiYsT8glCXuRpQwU62GJ9tvDvQEou4KVW/7ri0NR?=
 =?us-ascii?Q?rOJrBIDklO/RgmaT5qQN7JG4/s2yEXgQ8SwjKJskGDGzOMwtD0+FbonFzWmN?=
 =?us-ascii?Q?nEE1CjsJninytR2pxO0HNAExxMd5yscZcSkpfiU4y2eMdSOClYBcgUOPIOK/?=
 =?us-ascii?Q?Igeuk4dnncCVwHVXa0Ra4Q0082pnVX4r7/6e8InoASuWmk09LfNtfGVa6xwM?=
 =?us-ascii?Q?DnDk3VySUXnH/o+b5Ghoib1p6oFeLvU9QMrcqAcoh3h2FkZDgkG2/1AzQNTU?=
 =?us-ascii?Q?xAdcjg/sjUxxLPxmBdz6jNpVG95LyI5fFF8CpWzTfgvK+0or7ulnXB74KDwE?=
 =?us-ascii?Q?03YjGoNxZMM5TspO9yd8hKKdCRWbi/RrpYqHHGrBw+E8CtkhwEVc4luykRrJ?=
 =?us-ascii?Q?/jD+fVOiXYgiqE9XcUeFw+uyOZmbNGzowXmzAgDHnA26//JZEXuNWprCImEm?=
 =?us-ascii?Q?fSEpZCu34WiQGI9bim+FQvgAjWo0+5t8s4jmPmmWycVRHpAFC6PtfDIMI0vw?=
 =?us-ascii?Q?BH2tZ4HTcIvCivbgTmGrhZzhld0sjJspI9kOdIHT1ryqFnq8JSzd4ehLiSn+?=
 =?us-ascii?Q?8TfqEDbvPZkUbZu9Z2YnYH3lftpEBEAwg/YaJBc9wagOhGqOA6PDGgK97bRc?=
 =?us-ascii?Q?KHPsIbOifuG8wQDra9agExOcEqXNFEK6Ue4OJNGE0U58D3//GqdozjTotPAN?=
 =?us-ascii?Q?UQSju9d1PnOxuJuVSjg7NL5AkVbD1piA7zfVGznUogFgbE0HjyD5CqDCSfDj?=
 =?us-ascii?Q?u6mubA0sKRhQ5tGndHhVXOuS36lpAz/cEGj5CCpcM+NCfRac2JSTll5ergGZ?=
 =?us-ascii?Q?BHCzMRy4G/eBZNZ8AOrnqf5GL/vhA3OwbgHjo3EyQOHRbrOzq26ix0eO6X19?=
 =?us-ascii?Q?t90JowZ/tbE2lgDRgkMZbynC8MbiwqSwCRtyNVXpzBUhNdvcBhyQ+pww4GN9?=
 =?us-ascii?Q?qEzct/7eZXfEqy1D5ExwNSBFEsAOarjWJf2M/VVlmo07xzM4ZssXHRCr6MHW?=
 =?us-ascii?Q?z1QEQRnakxsCRt1KKwVCllkyOiqv74Xz/9iIsLz90wvLeTPSO/Lvz3rWHJ6T?=
 =?us-ascii?Q?dw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 77d584bb-b10e-4e16-1b46-08dbf1646d81
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2023 05:23:03.9057 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c4IeSwxnAo/DTUBXMx0X/PO1NzRkBbA6c1AjtljNdHjj4bJ7vipjHZ3Wew2lNInEG+Fh/BWcVl49fTLxR2nYHWyDa2zOSuzHmIODnJKi386wxCjSHReofO4AwsYsyjWI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6198
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701321802; x=1732857802;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dW4KwtOrHDnpNEi6s15wPDSS81+2MREvJjgwhWvK7xU=;
 b=IsvEadxKdGsTWR0PaQP+K/tTi/2gZU/q0iepk27Gq2v70xoiuTLp61co
 hYLNQnmlrJFqlb88hNnsyrwgP8cBBhpGOiJevBN0lWhxGPZh29vq0ebNW
 w85xvh72qTWH4FQCMSbBNPWytPYYrja1M6GlnFR5xEW+x8t5ekNzlQ6Ps
 uDyl9C7xVp/e7GRDBRPNbxaKhLfv76Cvb2oFRRye0dhZzS1HzfcGHNhiH
 IN0mih9soJLBQL+GPC9fWSQuFr2J4oE7qMB9+oJ4l5/O8XeO6V94jrctA
 BMnlLBbox5gP2FzD92n8Yz1HXfh+y763bWAVdeMx44x+X/v5Vi5+R/97B
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IsvEadxK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v5 1/5] i40e: Use existing helper to
 find flow director VSI
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Ivan Vecera
> Sent: Friday, November 24, 2023 8:34 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Drewek, Wojciech <wojciech.drewek@intel.com>; netdev@vger.kernel.org; Brandeburg, Jesse <jesse.brandeburg@intel.com>; linux-kernel@vger.kernel.org; Eric Dumazet <edumazet@google.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Simon Horman <horms@kernel.org>; Keller, Jacob E <jacob.e.keller@intel.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S . Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH v5 1/5] i40e: Use existing helper to find flow director VSI
>
> Use existing i40e_find_vsi_by_type() to find a VSI
> associated with flow director.
>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 11 ++++-------
>  1 file changed, 4 insertions(+), 7 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
