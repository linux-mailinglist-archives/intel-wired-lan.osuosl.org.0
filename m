Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D8D4A7B08
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Feb 2022 23:23:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B90660C23;
	Wed,  2 Feb 2022 22:23:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9dmecK3wKs21; Wed,  2 Feb 2022 22:23:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A4FB60C06;
	Wed,  2 Feb 2022 22:23:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DA4661BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 22:23:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C74D283E60
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 22:23:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9TVPd_0qWWNG for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Feb 2022 22:23:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B5E7C83E05
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 22:23:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643840592; x=1675376592;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jvFS6oizfAGBgndcJ8jfQYw7NSnE6fUpk8Vt6uN3A3M=;
 b=mPumkz7d5jeuBtW34yJd8wCLnTgADIb3mz45PgQlAQFxzKaySDhEl2/Q
 ZedabEzyePHaN7E2ekNQjk05jx/78J3Bys+f1icXKR2/TtKpiWslUQwCJ
 2+tjrKskEdYGa5/iqQYfkxQrWaTfpeu4ug+A/SKIZ+jXPhdgk/9Wvwwns
 9uBxyfATgjjikEKMMOKmdtN86gOMbweibDZuppmu0lwhTOUuECWhyuMtC
 Z98mOc1cT16nSGl5f61eyc81efgbeI0FxJrBas2jy7AP+RuelgHIAvamz
 1sJ0skVroWrXX4ORKa0iij+E9SpV87Jt724JaIqMBcOtnZRXF0TFlLpIh A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="235431044"
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="235431044"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 14:23:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="699104382"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga005.jf.intel.com with ESMTP; 02 Feb 2022 14:23:12 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 2 Feb 2022 14:23:11 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 2 Feb 2022 14:23:11 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Feb 2022 14:23:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ddoMVYHLYe0uBpflZOhI9rndEXCCheYyJFDzCQ0r96gBuRMS7OqxnmBjgX4TqOL/70I33r4Kw5cuLEFBUTPV0HQVwUNIIJ4C3TnW9sjt1D073jMTUSAqA5WUzARlrUAGnZ7N53yb/rGCoaJPEpRwdCxkH56oEKR6Mm13c1q57VFwtjuXxqnmoiNVOywl4tb3wqnLjeXhved51Al2taygk49vByvO8NibykWXN5i/qy9yTP1cw1HCYoH/JAR6oN+HJKk1VIHkMxkD+X/uZ0/5Jdl9b+Lr/gK75P9mNI6UEcRYbK5eBRHD8MC06nw9RfUHTZjUDEig+AxTadODRsMkiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pkl7tcUIQvs0bH+KkkV70gDMyp/90ntcYzqS/avTxbg=;
 b=KjFm2P3pgK/hu0P/AhsLv+d/j8JTGatYXa1iMG0Kwb5cDj+Ridyg1iwk3benRXQWWTJ7qMMetcyfE7NTKS+XeDX3NXcxSz26Hl5Kn+zRCt5xhbagagji2d2L9HP4Vb1VSlzTjQPI63DtFn13IaGIazAmsxBBSkxoEffK0mQiGc8eaxlTTOGWN9frzq89x4ULf/1SBRjbOISfM2Vwcxp6AnEzpjhEKHzyFsgAwCzwjT5BJAsVfVqQY7i8BOcyQ7aARefwjb8JMILXvmEur23kuNbAjnuoAHthr8L+vg2xAvfa+1QG0GkzclInSyVZ1VOXS/geNfixhUoVXnMCmmrn9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from CO1PR11MB5186.namprd11.prod.outlook.com (2603:10b6:303:95::14)
 by CO1PR11MB5169.namprd11.prod.outlook.com (2603:10b6:303:95::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.21; Wed, 2 Feb
 2022 22:23:07 +0000
Received: from CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1]) by CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1%5]) with mapi id 15.20.4951.012; Wed, 2 Feb 2022
 22:23:07 +0000
From: "Brady, Alan" <alan.brady@intel.com>
To: "Lobakin, Alexandr" <alexandr.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 05/19] iecm: add vport alloc
 and virtchnl messages
Thread-Index: AQHYE97UbqGZGUG4j0uGbi7+tOEfA6x31KcAgACL34CACH6UgA==
Date: Wed, 2 Feb 2022 22:23:07 +0000
Message-ID: <CO1PR11MB518606C472A0241932C993FF8F279@CO1PR11MB5186.namprd11.prod.outlook.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-6-alan.brady@intel.com>
 <202201281200.CI9u45bS-lkp@intel.com>
 <20220128123947.21363-1-alexandr.lobakin@intel.com>
In-Reply-To: <20220128123947.21363-1-alexandr.lobakin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4e9c8425-5578-473f-ab58-08d9e69a965c
x-ms-traffictypediagnostic: CO1PR11MB5169:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <CO1PR11MB51698097F25859CF2D9BFB878F279@CO1PR11MB5169.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BvYw2xshUJz+8PuMmytZ/BAWGDAdYklFhtPI81XHFOu8+VA/elmt8wYbl4s4Iq4mzVb3RwcOmpxJQLglwRK1BvTRp5wUv1gflpdFU0Hu9ByMIxt/AMyTFVEniJApkb/dgAQ6B/dmp7jzedLLDGIKZUPvD9//Zd+Cb97K5IAZ94vRfkRrvaPwMbIk/gN+gR1dlT/H4EUuWUQB/RHWRRwfZL+wGS2mibiM8lRpPY2IA//OtCq+6IilrmHjpPPy2dmg+1ziFZ909UmZmt8nWcrj40NzOLrrflz4F9yb16S76y+ny5A6vwtrfgYiFJqVO2fwok3JmAwxHRw3XKQtAryJrajnMBnHZTcHY+LjutjIh619+0fJDqEVicmeaYKk9vVllAVegZ4/v4nlGJFqd8Kx4W4UodmGgXxBpAFBR/rZeNc4D5dxFJOmvQ2Us30/+iPAKLYAtC28GVsohwQ2lPit4yqDpNsAOTnXmXoE/yXlHMNbyFMk97nFA4rZ6VjlyIlII/NNfre9j7qhYZyOeV8RgvsYIRXJDCdLRFmDWaKm/isfIWfblm5GMiQZD3vu4MITq943J/b9kkIy3nwio6PGRzfJJqLYIgNufjmiATYXP0vY2Mux6N3D5GJeCGkwcB5WjbEAc8o64pwflkZkHEK29SkJjE3qVLhXOCghsmOSzEsz3GnFWqnsHTePKQ+P+ShR+jV67H2LgmkV+yFt2A0iz2z+iHJDTJAtHAjbdX/1KrcC+LWzRUevoqJnfw4laq/0TXlOcstPMXBxSpGmCsMUrtjjjqZ/W4RyXpTq5E8HUdBQ3svRPKgMrufNh9CzezQ4swYyj3No2k8leSvX2bE3Vg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5186.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(33656002)(66556008)(6862004)(316002)(66476007)(122000001)(66446008)(4326008)(83380400001)(966005)(6636002)(54906003)(38100700002)(19627235002)(64756008)(66946007)(76116006)(8676002)(8936002)(508600001)(52536014)(82960400001)(186003)(86362001)(107886003)(53546011)(26005)(55016003)(6506007)(9686003)(7696005)(2906002)(15650500001)(71200400001)(38070700005)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YT+CtoJUg8h9CTh5yb9mbzuvp/oRtMRUil3xnpZ1UmV3bHh419Y2Zu3sjt7w?=
 =?us-ascii?Q?aaQku8ANNLfBXEC248PUYJhU79FQ9XjAffdjMiCQbPxsPOR9q78tPk+qlLu6?=
 =?us-ascii?Q?yq5jb1cDOD9dIrGP8H5K/wmEcLKJr75e6wzpy+cOM5D1qDe9AFwsFFhTIRkg?=
 =?us-ascii?Q?xmQ+vv7P/XKYaiXGC23NiYSyVBQUieBxl25y9PiUhnO+TXKOmpowhLVDU5eu?=
 =?us-ascii?Q?02pbX41cNYcwJuZPpphKsP1V9PP9bWuwa4uyzX9t1e1cQsiDv2mt1vVTwYKP?=
 =?us-ascii?Q?88YLOSnNVjW5GZcpddxYMxMNVr6+sseCyRM3xKybXK+25NBie6+7BBSQUNSn?=
 =?us-ascii?Q?/MjAxSd4/aJItOWxVjyojQy3Uc76nS/F2rdJsz7h9gwXlyC1L+kbsx+0LcQ0?=
 =?us-ascii?Q?rmVDngDuMQjkzMjtrOHsqu5jTDXqvmtegQCjGHOrgm1nvURDe1e33GIn2D5b?=
 =?us-ascii?Q?YT3yGviitxxZg2yeUrfhlfDArWPECCfNw83LBvOBEkIocuEhhHyDuJSv4Lr/?=
 =?us-ascii?Q?4Y1IhSPumdaY9nIAsvmvzrrdqXmdiVTvooPtI+4qLepwBN3rs9wszXswAA2+?=
 =?us-ascii?Q?3mjiqr8G14ziYQtRf1E1j1hWdJZJQpuCmVTMdrdx3Qnvsibkk7U3zZ+9/qxi?=
 =?us-ascii?Q?2EDujoiXsZT0hzNjlZlpMCFjyr6r8oZKsojT1X5F4iDt46ueHENmwNq+9F3q?=
 =?us-ascii?Q?Fx9P9F+PGNRV9CdPGX3pR1pM8borUiZhy/s5cztUR4BlR9d39YjpoCU4Ro5G?=
 =?us-ascii?Q?Ibfv9vPhJrGXK++3sBtOQ/w3axo1bKN5OsSXBobThpjQ+WUR70sJ619dItE6?=
 =?us-ascii?Q?Wghbm+/nMGDXEzC3EdkoqHe4z/ukwdLj+okcj8Ne5S+FK7/wdc2KQIoK62cY?=
 =?us-ascii?Q?W1ZBlojddgTnmYqCcYeQcyVFDZEIjhnfaaEDZLWoFRSUiKHKjqpEnLLrY87d?=
 =?us-ascii?Q?3m4N+vX2nFM7AFOk5hRiUMs4JGI5yMfIHz16rB6iK/r7dKUrTVMNjOwM4wcT?=
 =?us-ascii?Q?jWgtWuabysPOSrZpVea4TbLGGlMwdN8U2SmaP4yXQPShPIRpZqKWRDVRvdbD?=
 =?us-ascii?Q?RjwzlKZFzgw7R9/rttcHKViCq+8jg2bGJ39xxOv1uYmUWgS38ruLv4JJRiR+?=
 =?us-ascii?Q?4Uzh/gWVzMI7pnObsubEzw8IgTrvh66axSRyjX45g4Htid07VyBltDJjvSJ6?=
 =?us-ascii?Q?BUNdwYcH7Xy9TmYeAdVForEb7oLaO3Yz/PtwwwjIdUw4WbkLWD7tFyadDZFa?=
 =?us-ascii?Q?uRe+Y2a9FPACcNKPL9Leo2KyLdj9SEUY/FpsZ5+Iu4vM+FiiQLu0eEi5rAMO?=
 =?us-ascii?Q?Yjq40O/zhuvLhl7qB8remEm5lxDvMmNo9dwJVUW3UJI0fmw+r30fhrAbYrOw?=
 =?us-ascii?Q?qQRrQxTjzBgD2p/aWzseOrUHUGNwlvivQDIFylMh5fcTsyFdrBMcdgoX8ETz?=
 =?us-ascii?Q?/+NP/bZXySkjvrOjqNJJf1uROTr6etD51q+W9xkWi+qJRX4cdx+HMqGaZZqY?=
 =?us-ascii?Q?gWpfBwVqbzNEe/R5a+ZiyRvgYaN37gC+qkofYjd4t96ypNVhLJrTLGxo2jHE?=
 =?us-ascii?Q?ncJg2qrQXq3a4UotHfoIfB+FefO2Jhyj6VczXmBPbmFLwIBVRVQmDCwzvu0x?=
 =?us-ascii?Q?Mlo3qci5+q2aC8WuXaJhFy4=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5186.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e9c8425-5578-473f-ab58-08d9e69a965c
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2022 22:23:07.0393 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K2SwtkwKDwI3vPs36vTJu9QfjZqtYXFWyTVoKw5dGeED70Y8jwAShuDo1QhuuvJJpWRr1v0RVPC5xXq2OWr21Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5169
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 05/19] iecm: add vport alloc
 and virtchnl messages
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
Cc: "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>, "Chittim,
 Madhu" <madhu.chittim@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Burra,
 Phani R" <phani.r.burra@intel.com>, "Linga,
 Pavan Kumar" <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Lobakin, Alexandr <alexandr.lobakin@intel.com>
> Sent: Friday, January 28, 2022 4:40 AM
> To: Brady, Alan <alan.brady@intel.com>
> Cc: Lobakin, Alexandr <alexandr.lobakin@intel.com>; intel-wired-
> lan@lists.osuosl.org; lkp <lkp@intel.com>; Burra, Phani R
> <phani.r.burra@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> kbuild-all@lists.01.org; Linga, Pavan Kumar <pavan.kumar.linga@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net-next 05/19] iecm: add vport alloc and
> virtchnl messages
> 
> From: kernel test robot <lkp@intel.com>
> Date: Fri, 28 Jan 2022 12:19:10 +0800
> 
> > Hi Alan,
> >
> > Thank you for the patch! Perhaps something to improve:
> >
> > [auto build test WARNING on net-next/master]
> >
> > url:    https://github.com/0day-ci/linux/commits/Alan-Brady/Add-iecm-and-
> idpf/20220128-085513
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git
> e2cf07654efb0fd7bbcb475c6f74be7b5755a8fd
> > config: i386-allyesconfig
> > (https://download.01.org/0day-ci/archive/20220128/202201281200.CI9u45b
> > S-lkp@intel.com/config)
> > compiler: gcc-9 (Debian 9.3.0-22) 9.3.0 reproduce (this is a W=1
> > build):
> >         # https://github.com/0day-
> ci/linux/commit/1233d9631b312eea5aebbce63590e27f9993bacc
> >         git remote add linux-review https://github.com/0day-ci/linux
> >         git fetch --no-tags linux-review Alan-Brady/Add-iecm-and-idpf/20220128-
> 085513
> >         git checkout 1233d9631b312eea5aebbce63590e27f9993bacc
> >         # save the config file to linux build tree
> >         mkdir build_dir
> >         make W=1 O=build_dir ARCH=i386 SHELL=/bin/bash
> > drivers/net/ethernet/intel/iecm/
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> >    drivers/net/ethernet/intel/iecm/iecm_virtchnl.c: In function
> 'iecm_vport_queue_ids_init':
> > >> drivers/net/ethernet/intel/iecm/iecm_virtchnl.c:1396:1: warning:
> > >> the frame size of 1052 bytes is larger than 1024 bytes
> > >> [-Wframe-larger-than=]
> >     1396 | }
> >          | ^
> >
> >
> > vim +1396 drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> >
> >   1322
> >   1323	/**
> >   1324	 * iecm_vport_queue_ids_init - Initialize queue ids from Mailbox
> parameters
> >   1325	 * @vport: virtual port for which the queues ids are initialized
> >   1326	 *
> >   1327	 * Will initialize all queue ids with ids received as mailbox parameters.
> >   1328	 * Returns 0 on success, negative if all the queues are not initialized.
> >   1329	 */
> >   1330	static int iecm_vport_queue_ids_init(struct iecm_vport *vport)
> >   1331	{
> >   1332		struct virtchnl2_create_vport *vport_params;
> >   1333		struct virtchnl2_queue_reg_chunks *chunks;
> >   1334		/* We may never deal with more than 256 same type of queues
> */
> >   1335	#define IECM_MAX_QIDS	256
> >   1336		u32 qids[IECM_MAX_QIDS];
> 
> I'll elaborate on this warning a bit: you declare 4 * 256 = 1 Kb array directly on
> the stack here.
> 
> 1 Kb is a limit inside the kernel, it won't cause any issues since stacks on x86 are
> huge, but raises such warnings and we should listen to them, especially given
> that compile tests are now being done with -Werror.
> 
> Just use kzalloc(array_size(IECM_MAX_QIDS, sizeof(u32))) + kfree() here to avoid
> that.
> 

Will fix

> >   1337		int num_ids;
> >   1338		u16 q_type;
> >   1339
> >   1340		if (vport->adapter->config_data.req_qs_chunks) {
> >   1341			struct virtchnl2_add_queues *vc_aq =
> >   1342				(struct virtchnl2_add_queues *)
> >   1343				vport->adapter->config_data.req_qs_chunks;
> >   1344			chunks = &vc_aq->chunks;
> >   1345		} else {
> >   1346			vport_params = (struct virtchnl2_create_vport *)
> >   1347					vport->adapter-
> >vport_params_recvd[0];
> >   1348			chunks = &vport_params->chunks;
> >   1349		}
> >   1350
> >   1351		num_ids = iecm_vport_get_queue_ids(qids, IECM_MAX_QIDS,
> >   1352
> VIRTCHNL2_QUEUE_TYPE_TX,
> >   1353						   chunks);
> >   1354		if (num_ids != vport->num_txq)
> >   1355			return -EINVAL;
> >   1356		num_ids = __iecm_vport_queue_ids_init(vport, qids, num_ids,
> >   1357
> VIRTCHNL2_QUEUE_TYPE_TX);
> >   1358		if (num_ids != vport->num_txq)
> >   1359			return -EINVAL;
> >   1360		num_ids = iecm_vport_get_queue_ids(qids, IECM_MAX_QIDS,
> >   1361
> VIRTCHNL2_QUEUE_TYPE_RX,
> >   1362						   chunks);
> >   1363		if (num_ids != vport->num_rxq)
> >   1364			return -EINVAL;
> >   1365		num_ids = __iecm_vport_queue_ids_init(vport, qids, num_ids,
> >   1366
> VIRTCHNL2_QUEUE_TYPE_RX);
> >   1367		if (num_ids != vport->num_rxq)
> >   1368			return -EINVAL;
> >   1369
> >   1370		if (iecm_is_queue_model_split(vport->txq_model)) {
> >   1371			q_type = VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION;
> >   1372			num_ids = iecm_vport_get_queue_ids(qids,
> IECM_MAX_QIDS, q_type,
> >   1373							   chunks);
> >   1374			if (num_ids != vport->num_complq)
> >   1375				return -EINVAL;
> >   1376			num_ids = __iecm_vport_queue_ids_init(vport, qids,
> >   1377							      num_ids,
> >   1378							      q_type);
> >   1379			if (num_ids != vport->num_complq)
> >   1380				return -EINVAL;
> >   1381		}
> >   1382
> >   1383		if (iecm_is_queue_model_split(vport->rxq_model)) {
> >   1384			q_type = VIRTCHNL2_QUEUE_TYPE_RX_BUFFER;
> >   1385			num_ids = iecm_vport_get_queue_ids(qids,
> IECM_MAX_QIDS, q_type,
> >   1386							   chunks);
> >   1387			if (num_ids != vport->num_bufq)
> >   1388				return -EINVAL;
> >   1389			num_ids = __iecm_vport_queue_ids_init(vport, qids,
> num_ids,
> >   1390							      q_type);
> >   1391			if (num_ids != vport->num_bufq)
> >   1392				return -EINVAL;
> >   1393		}
> >   1394
> >   1395		return 0;
> > > 1396	}
> >   1397
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 
> Thanks,
> Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
