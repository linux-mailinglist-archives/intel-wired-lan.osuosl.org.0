Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 628294E9DEE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Mar 2022 19:53:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1CFBC80C3F;
	Mon, 28 Mar 2022 17:53:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pTJkwrUc533g; Mon, 28 Mar 2022 17:53:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1124380BFE;
	Mon, 28 Mar 2022 17:53:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 371161BF37F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Mar 2022 17:53:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 18EFF40121
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Mar 2022 17:53:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zc7Xc0dK1ogB for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Mar 2022 17:53:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F305A400FD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Mar 2022 17:53:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648490004; x=1680026004;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6hVE3nZR2DLTvfxhy4j476v0qbisDLvHHSVhVKrRkz4=;
 b=ODHOLLTMDFntNnpQBR4v7qz+Kzquer8GwtcqNO+uiqP3sN0vr5dY0MQ2
 v2Wcu82UwkB+6DndxrvW2BRfe3Hx16SPfcuy5Pam5vUPlsYMdaaOqip99
 7RyMASxOli5kbjLw3HVvoK0MkEybUykfmw1El8G4abDtNe+kHXrkuCcJZ
 d25WsQQIwzYHSJ9qtqe3/Fdc1PhjeHGnpyqUqATVerxQOAyfU1uR58pSa
 avrhXBvk8SEoBlT8tIvoOm8Q0CuqHrB0D7nB83tXqEi8nR49zmuvBc2PA
 75G5tHNxI8ZW7M0Xvh8GIs4qsBex879HJEdfUQGeksX2sLcfSNp6Bg1fu A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="319767285"
X-IronPort-AV: E=Sophos;i="5.90,218,1643702400"; d="scan'208";a="319767285"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 10:53:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,218,1643702400"; d="scan'208";a="553995138"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga007.fm.intel.com with ESMTP; 28 Mar 2022 10:53:23 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 28 Mar 2022 10:53:22 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 28 Mar 2022 10:53:22 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 28 Mar 2022 10:53:22 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Mon, 28 Mar 2022 10:53:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=llsHT7k06Hc/v1RTjRPBTG24WHOE2Da9qQCgFx1+T8A1Squ6+n0IKRjrITle/RgY4G/45sJy5wW+ZgKwfoQOT8/XNebHVOVmfSZ68o3sENhz/j+M6PXSAzKmo1icp8euBk1SM8DvJLu0CedYHRjhfe3VCEzrF+6pS5sKwHI+7+odVeBW2W0JMNEkU6TskhfOHsvH9Okw+C+sQcz41ixeAQ2QdN0WWSX5zIrHJu8cbq6iKxiuRXMmQ4plnF8Wi9UlcTNrgi2NEWi37aXglU5FRkN4AaOLVyV7BiFDW7DJd9YMQMHlcYqkqa3sq34l2gD5GrJPX2KGUkM85Ch0SzQFuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ogvLTv7LPt3AO9AcgNUUwYPpRAPJe+rC4nANTJ+kE/s=;
 b=MkbB0+ozyeo/jrZB99zfwnTjS0/fuhLU/MWe9N0dLu9OhbkRSdTCEYq9aAmZhCt5kTEy4jEB1oiZG8hXXDlVzb1aq/0U7Q4K8j+qpP3kmezj2W5DDqh/YoX1n7kW96qE/P1jy4mK295TqEAljPTQeEvSe14Qs81giAqJ4KwSMJk91Ay1+M90YrX5+0nCKeYI2qRZibtESWI/N51Wq2NFsu0i65brJ3niN6OO03f05a9RGuJzpIp6cUaxii45cA9aOeixMOEuylO+E2ZbSB6AEPOCZ4eWwabJF6QOyu7Lye2e55i5v0MyBjLTE/HSWc+O7IDhtUjV5RKQ+bBHNVmYrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MWHPR11MB2062.namprd11.prod.outlook.com (2603:10b6:300:2a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.21; Mon, 28 Mar
 2022 17:53:19 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::8441:e1ac:f3ae:12b8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::8441:e1ac:f3ae:12b8%8]) with mapi id 15.20.5102.023; Mon, 28 Mar 2022
 17:53:19 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: ivecera <ivecera@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [PATCH net v2] ice: Fix MAC address setting
Thread-Index: AQHYQEvWKQE7B4Gt4EeDyRfKN/Jn4KzVGJjQ
Date: Mon, 28 Mar 2022 17:53:19 +0000
Message-ID: <CO1PR11MB508954503C974FD6D9E162FCD61D9@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20220325132524.1765342-1-ivecera@redhat.com>
In-Reply-To: <20220325132524.1765342-1-ivecera@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0f423707-53ac-4be0-2c2e-08da10e3d81e
x-ms-traffictypediagnostic: MWHPR11MB2062:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <MWHPR11MB2062BAD3CE36F8087BC6E481D61D9@MWHPR11MB2062.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XHl6HuCLpqeof+TPzJWi5rRJrO4RtkjO/2iYxh7F5coWVcd+eckVBH2Eh647xugS9xk0MPauuhuvYad4ko8N7Lni8bV0dOV60D9XCzJ7EIz6WLYoiDUdmilBHywq2SCwp+287iOW148sVwAZOsWRA7U7DeOBpTYmCvcQjMh63PLDLjHCbNi1w+hhwPhDWpmNgE7egFshKice16HS+5yJI8foBK7QdBxLaphmhNZxy2DtSfLl4mYLyAlMjmGCR1x0dPsMj2IxqumE3FKSlO4m+ZZZ7NeRAP1dmKo2je+0DbdZZb2P03z79TaGiJEPfVWFsOW3hb2nVBxTEeFVRBcuWiC2baVh2FHIssdV8/XozSBG6jCKsABVcZhe4aNOXYUUwzG38LrWMvHtiPbe3+4vinVMUFck1kDAsD+i2uXKph8+dK4PbF4CJSv6n1zeiSfYtSTKhBB4chIxRnB/WFQsaG+xIC2apIQoE4dyFza597X0mKioKGK+Zb8yw7lyuM1V9jD8XCcLn2lrGQlFmRO6j4devGGZFyOu4wy+gWrrOymawexiOMf/d5fnhiHtyP3LbPo0Ogn9hN/IV6TZp+t+XuLjlVAaQP2tFKBtWE/8MAcLm0+Z5IWKowz88GJqzgT0QpPbFrjmIttLbGBVy7m37wK3ZYed926yeiAgj8a2tiBq8hCsntU6SL/SwfedNIzkWf2u9TViuPFjnBJguK24Cg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(4326008)(8676002)(76116006)(508600001)(66946007)(83380400001)(26005)(66476007)(55016003)(2906002)(53546011)(9686003)(64756008)(66556008)(52536014)(86362001)(8936002)(6506007)(33656002)(7696005)(66446008)(186003)(110136005)(71200400001)(5660300002)(54906003)(316002)(122000001)(38100700002)(38070700005)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dyKd8rZ4PpzD+Jc/2mJyd7S5nV4Fkrcgmyd0XD/V0bx3UjMP64lWwKES8TLE?=
 =?us-ascii?Q?u5voF71XLv8wVtGblKswq/QHkjkFZ8ZdpfM4l8lx9PIRQ4/M2u81l6UMOy+i?=
 =?us-ascii?Q?a9seQN6INxev/Y1N96mL+ts4JhQsGXNVQZUDjss2aAzRBbavLhpCwY8KL0TQ?=
 =?us-ascii?Q?Rr8Q7xanfdyIrR0JcHKKvOY5R8hgmoZbhy2nzzbYk4ty6J2uPFOOkbAxwn7f?=
 =?us-ascii?Q?dg5fe1ofbeW4vQMC0TRj/VNZaRF2GA9y5USiZTJCQ5qsYLIev1J890KZ+rKV?=
 =?us-ascii?Q?/DAkn7zN/QPwkZziQoyqlaK+sLt/Z/PDO4Ih4h+VuEhvlKVO54Zop+GyVpdB?=
 =?us-ascii?Q?R7jlebsKW5RJlbJdWWTcDysWTAgbg/dVxaqNUPJwSIFj5nCrDkeUkJ83f5oH?=
 =?us-ascii?Q?xv19QLS02xbVLnZaTHLUDvrR6439xM87NJw7Ndbxbw/2Q8ouEpUcmaHT0kXs?=
 =?us-ascii?Q?2dVvUJYbJQNnvvSE4pBQHBLmpA2JQ+4gdEpOx4azo6xCfDRD8mPEcD+2d4Zq?=
 =?us-ascii?Q?Q9VR9F9Mea0cST7fb+XusundGza7dJtIuBYZFmHGmRqHbxfCCkdfb0snyHTE?=
 =?us-ascii?Q?SSFtMkwEYii7N88dyTWDbh2EFywvNApn87/1/iXSJ6VA9IW3iLGAqLlhP9EH?=
 =?us-ascii?Q?o+dRRffdibLc0+k1uR1nfEEWdtSH2elBmOhd5O1ilH7klG21jA9ranogQx+2?=
 =?us-ascii?Q?3jzyTmiXWMfd4hwSqdvELwltNO5A/CHMrG6kzh6h0sG2A37htgUKJmrABAp9?=
 =?us-ascii?Q?Fts1yS0lDWq5aUqiD+xuPsCIUK6QyIj7tHfN2I8Om9cuYv2zgh1uTH6WxtzP?=
 =?us-ascii?Q?d5h2o9/iBQn/p6xSuorL1hKVN0PhJkFmMk4kxrjlzgnYmngsu8xkYt+0sB3x?=
 =?us-ascii?Q?V15eWyUU88Fxrb1Oqt59LV6GM1VF1/VFhjiSizmpujkeZQk4qzLx8OPGO7LK?=
 =?us-ascii?Q?W47kYQ3xgkc/qVSEa7BqPCAFSS8YCHggd8/9szr/82tufdACtu6DacAxT2bh?=
 =?us-ascii?Q?Ne9OWc/aAOJ3hWEF59Mdi3MBcQnClgc1QFl3YGlYNExU+faCQvDKSuhjhSU7?=
 =?us-ascii?Q?hK7gcpeDPMSQUbah5tdviqnHDO3/fMkaYlom8+sbzMfOqb9nYW4SYBtEfGkl?=
 =?us-ascii?Q?baiqYk4ovNNqs2GR2um75y7IfxJF9KB1Qj3nNP62jRM8fZnkF4DVL8C+TN+C?=
 =?us-ascii?Q?W4uvqAOUfCCQ4yiuXx+LVyMFcSGvn3lEoIHeLQlhEds5EhuxQ3xZF8IvWNsi?=
 =?us-ascii?Q?r4m1/CPiOrGdRVPtB4a1s4Zlcx+6Y5PAOfguow54I1nwDkmoWv8f+jyXe2TO?=
 =?us-ascii?Q?3ZGw3BlFUYHr8kSoFogu7kUxQ3OiTx67AZ9UmwEHnht2OksPhoqwDhh1hLdh?=
 =?us-ascii?Q?WkqaPE7t6I8Z5HZ3ZqRAfAsyC1dg8HPifkoXADI2cPtwxAX8Dp7+QYRzsAof?=
 =?us-ascii?Q?xAwZfr7jmq+m+dOmBSO/ltL5r9rFnw9jBV5ymV/9DpcQtVBoiBetKGqGCPs7?=
 =?us-ascii?Q?TGPVDBCAje0S/9lqpzA2GtnsdlGXDUXZoHnvyu9Qgo/HiycfXhJY7NgWVktG?=
 =?us-ascii?Q?wwTrP8kx/+IKTzPW9sFMtGVT2inF2btEfHb57QZlpoa1VyIMdr33urK6+vHX?=
 =?us-ascii?Q?4iu4nGSwkwS4x0DC4oUIaUGPrpHlirEE43zPXh6lLnw924FbjPm+ATSmxABK?=
 =?us-ascii?Q?1qeBsS5DIXbngMlUQPDx+WGFvWYHiMH035yi1Y0qrirWq3bA4avEw9KfIHBH?=
 =?us-ascii?Q?hIcPOMOGBg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f423707-53ac-4be0-2c2e-08da10e3d81e
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2022 17:53:19.4417 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s6eP65fEiSnuZWsBuiz19RmzGafI3GSv0J+7fvBRmQQBBCNje7SfE9YwhoQ2DhevzRQLcriu9+Ll/aC1xdFAAnYQ68/AGCw2vBncJ2gj/Kk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB2062
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Fix MAC address setting
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
Cc: "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 mschmidt <mschmidt@redhat.com>, open list <linux-kernel@vger.kernel.org>,
 poros <poros@redhat.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Ivan Vecera <ivecera@redhat.com>
> Sent: Friday, March 25, 2022 6:25 AM
> To: netdev@vger.kernel.org
> Cc: poros <poros@redhat.com>; mschmidt <mschmidt@redhat.com>;
> Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>; Jakub
> Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; moderated
> list:INTEL ETHERNET DRIVERS <intel-wired-lan@lists.osuosl.org>; open list <linux-
> kernel@vger.kernel.org>
> Subject: [PATCH net v2] ice: Fix MAC address setting
> 
> Commit 2ccc1c1ccc671b ("ice: Remove excess error variables") merged
> the usage of 'status' and 'err' variables into single one in
> function ice_set_mac_address(). Unfortunately this causes
> a regression when call of ice_fltr_add_mac() returns -EEXIST because
> this return value does not indicate an error in this case but
> value of 'err' remains to be -EEXIST till the end of the function
> and is returned to caller.
> 
> Prior mentioned commit this does not happen because return value of
> ice_fltr_add_mac() was stored to 'status' variable first and
> if it was -EEXIST then 'err' remains to be zero.
> 
> Fix the problem by reset 'err' to zero when ice_fltr_add_mac()
> returns -EEXIST.
> 
> Fixes: 2ccc1c1ccc671b ("ice: Remove excess error variables")
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---

Thanks for the v2. This looks great. Good analysis of how this happened in the commit message, I appreciate that.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

>  drivers/net/ethernet/intel/ice/ice_main.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index b588d7995631..d755ce07869f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5475,16 +5475,19 @@ static int ice_set_mac_address(struct net_device
> *netdev, void *pi)
> 
>  	/* Add filter for new MAC. If filter exists, return success */
>  	err = ice_fltr_add_mac(vsi, mac, ICE_FWD_TO_VSI);
> -	if (err == -EEXIST)
> +	if (err == -EEXIST) {
>  		/* Although this MAC filter is already present in hardware it's
>  		 * possible in some cases (e.g. bonding) that dev_addr was
>  		 * modified outside of the driver and needs to be restored back
>  		 * to this value.
>  		 */
>  		netdev_dbg(netdev, "filter for MAC %pM already exists\n", mac);
> -	else if (err)
> +
> +		return 0;
> +	} else if (err) {
>  		/* error if the new filter addition failed */
>  		err = -EADDRNOTAVAIL;
> +	}
> 
>  err_update_filters:
>  	if (err) {
> --
> 2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
