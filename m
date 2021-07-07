Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9433BF24A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Jul 2021 01:00:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CA1AC40231;
	Wed,  7 Jul 2021 23:00:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yWLpvIWqxVgK; Wed,  7 Jul 2021 23:00:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C6C4D40112;
	Wed,  7 Jul 2021 23:00:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 005AE1BF228
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jul 2021 22:59:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E310C832DB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jul 2021 22:59:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r5W_VFQ3MMtp for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jul 2021 22:59:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EF5E583294
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jul 2021 22:59:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="273242769"
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="273242769"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 15:59:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="410705248"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 07 Jul 2021 15:59:50 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 7 Jul 2021 15:59:50 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Wed, 7 Jul 2021 15:59:50 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Wed, 7 Jul 2021 15:59:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E56reUzPDbm9/kAv7k/sMXfIXvIWnQrK7gHApuOwzbY4Gm+ZzxW/zAYKm/d3556J+JId6w35fDuhps6Veg69wnXv3CaXfZWtygqNAitpvBtzwg3rYp48Yh0+NoEcyb8EXHJdrUGJItGDfcUTqt3WCnXv3OBk0LdKvimSK6axgvySejeX/gY/i1FanO/hOFZ+QKEzZeKXu5pqTisDi41LjHUjntDXQ1rZhfXOJwrwNb3r7hKWKDtCB51TcRY/bNoGPdy2t+wzjK2D4l+VofypOngImPwpYqiIAj2mzFXiZI339SB2hL/LoXqISfaa0YEtFmRTN6QErcSJrgvDi4GOEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dUv4lArxUVVnC357MsiF3vaP/BYd5IVD6CWSeY2htgI=;
 b=O3CWP8WdRCnAsWqm0FY6FTEw1GtQFegm6//WTFojEa9cYToXydh188ad7NgqfNzCUIkJuk0NROBKjkVqw/ccRL3lwuNYBTbwfZ4+0UHneK4c0j/RWjw7TAKD9qlT2+7R3L4p++OcK4BidkOugzxe5ChxG68RdS7IkDPlJ1l5MsFbJ+l2iK8IIQ/5Y3VUNpS1eHRSu7bVLXCLw57JuEnqMA+aZVHwSt1WlPjwP/etDyie0KRlBtbXjWmomkjBxmOOPQhsebaKOh0OwXJidtkr37U6gnTjKpTtbNst4skSZjZHbh0Aw0uvhoqg6DEGuxEFhilduzb2bjXAnne5SwCU5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dUv4lArxUVVnC357MsiF3vaP/BYd5IVD6CWSeY2htgI=;
 b=yZSRo01NmxhFNYk8XifAX63JInp+4N0SGBvMiZNz/eUdhUZpJ9RgfdjOotPed6pm8qUko/LPZW6bknwCmHf9gOuR+Zz/Mn3zyyZK822cz/T5xIkgwpFSL86FPhr1DAWa2eZe6YzQ10mZHrjhbNBu1yH/of3BJkISwKQcXAsUyaM=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB4873.namprd11.prod.outlook.com (2603:10b6:806:113::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.31; Wed, 7 Jul
 2021 22:59:48 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4e0:837:41ee:5b42]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4e0:837:41ee:5b42%6]) with mapi id 15.20.4308.021; Wed, 7 Jul 2021
 22:59:48 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "dan.carpenter@oracle.com" <dan.carpenter@oracle.com>, lkp <lkp@intel.com>
Thread-Topic: [PATCH] iavf: remove redundant null check on key
Thread-Index: AQHXbzVCYzjOBc1t90Wnf+HT8shaI6swBfYAgAD9AQCABycKgA==
Date: Wed, 7 Jul 2021 22:59:48 +0000
Message-ID: <e5f0d67fb0f278886fc4c4ac862b3c68533bd2c7.camel@intel.com>
References: <20210702112720.16006-1-colin.king@canonical.com>
 <202107030209.xwGHO2JN-lkp@intel.com> <20210703092040.GX2040@kadam>
In-Reply-To: <20210703092040.GX2040@kadam>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: oracle.com; dkim=none (message not signed)
 header.d=none;oracle.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f80e0b2b-6eed-4867-b8b3-08d9419aebce
x-ms-traffictypediagnostic: SA2PR11MB4873:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB487302F14169A8CBAE3427ABC61A9@SA2PR11MB4873.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1284;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ul330abpeQ8BoCKwQdgovlQBEj4HIlwMCjCNekM0OaAhAbhpv4J4Ebe8iHtJJGprVSl6qsE1zOk8C2qkkyc330G6nMPMLygtZuzaCqD+Vwoxk2jwAvCQt3Co97C/GvPL+YMO6/hFcjQ3Yc9t2lkMb5V4apVd8M1s8EDfSIPMNSpNTfJLRTgZBBRtjvYLtBnk4HQ9hqBPyuexO7lXM/iF4JRbtXpiGhDtnUhrHETNPzjFVCmmxB2+7KI64k+gq2SXpC/ffVruHwaxwdIWnqq9X4homr0+s05zZ+nxUcBxQk4OFIQt3XBj21rZ9Upy/vvrhXnDG/yp2e5a0ZmrzVQsWTn1WCrAel+FbNm2EG3E5r91CnF21p5yz/NrGDC8Y0miPVNGq0/3nBBJBx/NxvN7EEoF+Z3mdazSF7SmvFzZtE/wXKwxj1nsrR5/RVHtv8v8Z1mcNukjICf//HVMJLvPMzVAN3dH+zA0slcWFLnq8+gzfIvxe/i5j10Ke2SAIKVFkfZTPEPa2g+Rz3FttfWGlwWFpOwitki0TOubzeU1c7zdFbw67EvIh5qjFGwaDNRtSGjQmOSbdZsLX2lw7/l4hlpkm0fJtlI1qYTgHIT+C9kLy3t/B2fVSJnlouBZi+/h1vjuDHtXn//lqoiWosh1GA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(346002)(136003)(376002)(366004)(39860400002)(66476007)(4326008)(64756008)(478600001)(91956017)(66556008)(6506007)(66946007)(86362001)(6636002)(38100700002)(2616005)(4001150100001)(66446008)(316002)(110136005)(71200400001)(76116006)(122000001)(2906002)(26005)(186003)(83380400001)(54906003)(6486002)(36756003)(6512007)(8676002)(5660300002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YmFrR1FZY3RucldCUk9xbWQvRVV4bUlPZm51dGRLaERoODM0ZUZrdzA1QVZW?=
 =?utf-8?B?UzhBZ29CV3lNZXdTemxOVDhybWI5ZUVYQkFYRVFwYUZ5L09PWDJKWTlGajYr?=
 =?utf-8?B?cklMeTM4cDVBRU4xbGZJTDBYTzJsT1VObEhCMVN4UFdpeC9YN1pUVTBuamVX?=
 =?utf-8?B?SXJDRExxblFMMlhtOWViNVh4bmIzUGFBdk1SanhFTEFXa3h0THdMOFJGWXcv?=
 =?utf-8?B?VUhiTjZsTlZFdWFQTXR5dk0vNUh0c1YzRWNwUFIvMFZMck8xMnRoYXF1REI3?=
 =?utf-8?B?TlgyeXZrNjFXbmkrQWduMXFoTUl6Z2J3RjJvTlZOaG1QRkoyRDBiNEdjVGtW?=
 =?utf-8?B?TUtzTklnVit1VDBtR0EwS2hyZ0tHN24ydmVXSzF5aXBKYm4rUEloNzZZM0tu?=
 =?utf-8?B?eDUxVWcyVTlHeWZLcGlmdEVZVUlVcG1hV05qZlErbm1PdlU2dGpjbUNENWNt?=
 =?utf-8?B?elM3eGUzdnJSYWlyeHNRN3h0TEpFd3dESG12WWVxQzMrVzV3S1ljejVxbnJZ?=
 =?utf-8?B?ZmdrK2JybWk4akhxOS92T0xXa2plNTJZWmp1RmNNcVl4eFdoLzFPMUtzeEVo?=
 =?utf-8?B?bU1BcDM4UzdaaWYwenVyQWswRjNFekZtWW1MTFlmbGVpSldyTUc1MkNJS3BI?=
 =?utf-8?B?SjZxS0hlYWhBd3RzbjIxeGh2azR6UzRYK3ltbTQvTUcrWUtaNk53eGRuRkND?=
 =?utf-8?B?NHhhNUVLVTZXMUp4S2tQVjk4TDFMNzRVcjZqbG5vRTMvQzZ1SlBXNXpjcWFi?=
 =?utf-8?B?ZnFmU2ExSTRnajdMZHhHayt3elhHSU9oOXp4OCs5aUIxTTdYb0pWcGRhd3A3?=
 =?utf-8?B?djBOdXo2dFNwS3FyN2w1YkdGZ3g4aE9vaHdDWC84N2dhcVVuWGpjdG1OdzZs?=
 =?utf-8?B?WU5HTFFoUGxleHRGL21UalkxendrdnVLOE1OdVFPK2JSTzErbHRKTThzM3lC?=
 =?utf-8?B?RnQ3eXhmTEtIekJiSVBmWU9MUmh0YmVmdm05WTdOSkMvL2cwRVhhd0dqUUxv?=
 =?utf-8?B?ZzVxb1ZFK2ovWVBhQUZZbVU0c1ozWExHTUM1Y1dGcmNta1NEM0gwVmE4NEpI?=
 =?utf-8?B?WWdkSHV5b09LWHltOHRUTkpGVllkb08za1FYSTlsN0hSd3FNTmNZQjd2M3pl?=
 =?utf-8?B?YThDRDBKNDlpUVRWS1pPQUlENk93UEV6ZFUwVjFOUmVxSElTL1JYdVBEM3NX?=
 =?utf-8?B?M3ZpS2IzT281YkZQMXc1RDc1VVUwblRIaUtGcng0MTNpemtXZnRQOEZNL2Z4?=
 =?utf-8?B?TkpZMnRSTy95eEEya3RPOGRNck5oR1U3RERrWHFYMkt1ZzRXSWh1MzdTRFVi?=
 =?utf-8?B?TENUUmxuWEdFaVM3MDRwY2FPZkdVV2hxejd4TFoybkF6clVBZmp3dlIvT2lP?=
 =?utf-8?B?L3lnOXRkUUNqRm9JWUJ5OFFNTFdPL3JiV3NJQWhEbkVEM0xBSUtkcnB5SkNZ?=
 =?utf-8?B?SDhjQzRZeW5lQytqNzRrSGhjVlZuenVsTEhCZUVIZUNmb0dlbnptY1FhODhR?=
 =?utf-8?B?UVdxRjJhZUE4S0c1MGd1NEFhRlB3ZTd4T2FYZVB6L0hMV2VEd1JnSFVhN3ds?=
 =?utf-8?B?b2xsQ3QrZDh0YzhYT01EcC9DOE41L3RrQ0JWWHFEVGxuZnJGWEN1STVPZURF?=
 =?utf-8?B?ZmVtbGJsVG1DWUhJUGFrcktUV3pjc0xjaWZTZk5wb1oxWk96RlNSaGVFalZx?=
 =?utf-8?B?REpqVHJVaGxIcjRaOThhS2lBVkVuSUkvWVFaa0kvdFRQbGw2Z2hZNHowWHZm?=
 =?utf-8?Q?rZH4gjoyxVYRR4CWxbUKJhXpQCwuVw3WlVwHWm3?=
Content-ID: <84FBE1CA0E0F184295063B0865F6BF1F@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f80e0b2b-6eed-4867-b8b3-08d9419aebce
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2021 22:59:48.5169 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: You+Z8wAUBVP698lcweOT1SVAZPVrGftCK7AvXSnXK4hMA96Y/A7OV72N7IzfkRGaXDWFsoPklNIqaZ6dGCiqm2sx9QwSzVXOfnpcbeJek4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4873
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] iavf: remove redundant null check on
 key
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
Cc: "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "colin.king@canonical.com" <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, 2021-07-03 at 12:49 +0300, Dan Carpenter wrote:
> On Sat, Jul 03, 2021 at 02:43:46AM +0800, kernel test robot wrote:
> > 129cf89e585676
> > drivers/net/ethernet/intel/iavf/i40evf_ethtool.c   Jesse Brandeburg
> > 2018-09-14  1899  static int iavf_set_rxfh(struct net_device
> > *netdev, const u32 *indir,
> > 892311f66f2411 drivers/net/ethernet/intel/i40evf/i40evf_ethtool.c
> > Eyal Perry       2014-12-02  1900  			 const u8 *key,
> > const u8 hfunc)
> > 4e9dc31f696ae8 drivers/net/ethernet/intel/i40evf/i40evf_ethtool.c
> > Mitch A Williams 2014-04-01  1901  {
> > 129cf89e585676
> > drivers/net/ethernet/intel/iavf/i40evf_ethtool.c   Jesse Brandeburg
> > 2018-09-14  1902  	struct iavf_adapter *adapter =
> > netdev_priv(netdev);
> > 2c86ac3c70794f drivers/net/ethernet/intel/i40evf/i40evf_ethtool.c
> > Helin Zhang      2015-10-27  1903  	u16 i;
> > 4e9dc31f696ae8 drivers/net/ethernet/intel/i40evf/i40evf_ethtool.c
> > Mitch A Williams 2014-04-01  1904  
> > 892311f66f2411 drivers/net/ethernet/intel/i40evf/i40evf_ethtool.c
> > Eyal Perry       2014-12-02  1905  	/* We do not allow change in
> > unsupported parameters */
> > 892311f66f2411 drivers/net/ethernet/intel/i40evf/i40evf_ethtool.c
> > Eyal Perry       2014-12-02  1906  	if (key ||
> > 892311f66f2411 drivers/net/ethernet/intel/i40evf/i40evf_ethtool.c
> > Eyal Perry       2014-12-02  1907  	    (hfunc !=
> > ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP))
> > 892311f66f2411 drivers/net/ethernet/intel/i40evf/i40evf_ethtool.c
> > Eyal Perry       2014-12-02  1908  		return -EOPNOTSUPP;
> > 892311f66f2411 drivers/net/ethernet/intel/i40evf/i40evf_ethtool.c
> > Eyal Perry       2014-12-02  1909  	if (!indir)
> > 892311f66f2411 drivers/net/ethernet/intel/i40evf/i40evf_ethtool.c
> > Eyal Perry       2014-12-02  1910  		return 0;
> > 892311f66f2411 drivers/net/ethernet/intel/i40evf/i40evf_ethtool.c
> > Eyal Perry       2014-12-02  1911  
> > 43a3d9ba34c9ca drivers/net/ethernet/intel/i40evf/i40evf_ethtool.c
> > Mitch Williams   2016-04-12 @1912  	memcpy(adapter->rss_key, key,
> > adapter->rss_key_size);
> 
> Heh...  There have been a bunch of patches modifying the behavior if
> "key" is non-NULL and no one noticed that it's actually impossible.

We are capable of supporting a key change. We're working on a patch to
resolve the check and allow the key to be changed.

- Tony

> :P
> 
> regards,
> dan carpenter
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
