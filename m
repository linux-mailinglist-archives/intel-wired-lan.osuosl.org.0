Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5991D7CA18C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Oct 2023 10:27:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F0CC6613C9;
	Mon, 16 Oct 2023 08:27:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F0CC6613C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697444829;
	bh=X7IR1R8OnggBfn0YXMcSq1R0BmKolSY1801/AwuM93I=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=snpHThdNmFIpxHU/NgNpUarCeClHMoYA+bwzqaAgAvMb+GIKpMqxc6mnGWbfWdyTe
	 ga35B3EG3lJoWs+Z8xxywHisA1qT4YIDsVQjH6lDBcB55YJKwGSW3C7yUfXfkgPq3Z
	 hMSejb5m4CGwNvGKmw1ZHBeodXziLzu5XBkKTFIUem/pmQHc0/31wBjSHYgvmahCQb
	 ajyAR0Ptna+cD4d3pYj2RmzFUXCzB2Mg/hIl4VntxJZUCuwbvsoc41S2E73ktvcq+h
	 bnPlbfZLsJrZgmmjWrC0rUQypNSuK3OY1ONZWtqVzvg8TMeStLo4YR6StUJNV+LGCC
	 80HqYSTY6jBXA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q_TakMzlE3Uv; Mon, 16 Oct 2023 08:27:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1E0EC613B6;
	Mon, 16 Oct 2023 08:27:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E0EC613B6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6E3BE1BF5A5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 08:27:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 428ED4093C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 08:27:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 428ED4093C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K9ICRlR6_lp4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Oct 2023 08:27:00 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 142CA40936
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 08:26:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 142CA40936
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="389336323"
X-IronPort-AV: E=Sophos;i="6.03,228,1694761200"; d="scan'208";a="389336323"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 01:26:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="755608776"
X-IronPort-AV: E=Sophos;i="6.03,228,1694761200"; d="scan'208";a="755608776"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Oct 2023 01:26:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 16 Oct 2023 01:26:56 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 16 Oct 2023 01:26:56 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 16 Oct 2023 01:26:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gNY4RVY+qxIVweqKdGifAqJCDJjNGfkQ31SLx8MdbTkik0t9hvjdwQMz5wxGtessu5S2RBxm+3QhDPSg051f6ClA7GKnKh0XfYU0o7VnERIhmpk6RkMLgcpgcsWrRjylfu2cs9J8Je+xH+2JhoUDQ5kdhMz7sd7HBtFpqT1lgN4PmG8yV4D7h6qWXjrBX10HwI4GakjIOPIF3rMRVkHy2Bg0krEB7BFEcKmx2hzWDQFkvsMa5/m8Pi1mBsTR+dzXQcxpVOrdBymtXz0pdXaO1Xu537HJfsSLmD1PxzKZ5xHQeRtkPPhjche3qk0UaWbUa03c+5IeHvx1G0gxOu0jSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eAX82LDZ09I5w+snW06KDXqCGKvELuEApTAt/1mpb2c=;
 b=eQLL9xEi81QrkNSUBgIOxJxDv8cc83J7V5mQgQA+vX5tlOUmwvbQ86KCgTBn/rS0/cnZFoWEUGIHI3WfQgQvgc0bu4zBO2jAy1Xl+1CMgis2BxL+TSp0ZoUlz3/JZ5WpA7ZDxWqzNZynr3K1s4zLPjrXJhOh0Vr1zuiS6AnGpRrBpqUqARh/9hxlUw9mE5LB/Xu9YPvCa5DpW59mgfb3ua5H+6/ui6WfgLZFC3P006wWTCFxu/19OTRcUg/Tk2gAw4MVjobWUBF56ucg9hvd5u01oATBtkASrZrdZNe0+qlbtUVAxu65j07TR153bAy6EgTdMxBK3RM/0sx0kUNrNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 by DS0PR11MB8207.namprd11.prod.outlook.com (2603:10b6:8:164::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.35; Mon, 16 Oct
 2023 08:26:54 +0000
Received: from BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::7116:9866:8367:95b4]) by BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::7116:9866:8367:95b4%3]) with mapi id 15.20.6886.034; Mon, 16 Oct 2023
 08:26:54 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Thread-Topic: [PATCH iwl-next v3 13/13] vfio/ice: Implement vfio_pci driver
 for E800 devices
Thread-Index: AQHZ6flqZD1UOTQKXU63YTaA4XkWubBHjNTwgABcfgCABFeu8A==
Date: Mon, 16 Oct 2023 08:26:54 +0000
Message-ID: <BN9PR11MB52762B6019CFA0496B0272FF8CD7A@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <20230918062546.40419-1-yahui.cao@intel.com>
 <20230918062546.40419-14-yahui.cao@intel.com>
 <BN9PR11MB52763EABE64389B5FBBBFFC68CD2A@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20231013140744.GT3952@nvidia.com>
In-Reply-To: <20231013140744.GT3952@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5276:EE_|DS0PR11MB8207:EE_
x-ms-office365-filtering-correlation-id: 78a928af-3fe3-40da-cf45-08dbce21a77f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: I0A2MgvSUZsW3p8jLG8K623pF1yO/7Qaw0zsJI1mP78R2VOQiaGl/i7gAT7sNJBvA6SQQTRXL9qzk6WgMTZYJy9PTMgJFGBVlGLyrTEsDUcQOBnnlv8LKrkUCzxzyISPcSii2ICcuWstzD9IpXnwwUOCLLGD8L/+FZbpQUXVYKPzo/FtBkTY6HXoJf7cRS27M598Vou14DUo5NJRcxLtcpiinmj1r55uB9Ui8AHvV0T0kVxwzAv0HLFtartEKpFsbmHP57zRAR9jNPz6SLtFSfMpUdqnQ2mJI2TGn38LzggurVnNu9MuH2u0hRY0hAlvCHa+mcUIRNGN+UIgqjTpEJxFRLx71vQc3KeQv6i0YrPVmYdNuioHmENvK3DfllFX4RiZlYy/5nvxYzfPh26swMv2QJQ6CBSuUXxzqvqYWSsmHcBFnmKMy70nz7m9i56vnJ90+ncjZdDwT2Ik7rPnYzc9hiC6iwWNyBl/ws8Ga2WVaO2rF+Yroeo042J8S7E0GJWQKEfiXhzX2mzrUaGnpsG36d6TRNMPHv5z+kBiDcGTPe3cT7/jCnLzql7hyqeWZynXNaquMFEPlbE6ZMM/oIgQNkbId2Cf2eYbg4bFOWcPIYPGrc3e4MTjQQJrS9XI
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5276.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(366004)(346002)(39860400002)(396003)(230922051799003)(451199024)(186009)(64100799003)(1800799009)(55016003)(478600001)(76116006)(66946007)(66556008)(66476007)(66446008)(64756008)(54906003)(6916009)(71200400001)(83380400001)(86362001)(38100700002)(82960400001)(316002)(9686003)(26005)(107886003)(7696005)(6506007)(41300700001)(33656002)(5660300002)(38070700005)(122000001)(8936002)(8676002)(4326008)(52536014)(7416002)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9+OWndBjG+OjlJSkltk+EEonoADwHDEFvbx0+geYwRSmdnjRM3+xlaXAAt4l?=
 =?us-ascii?Q?1+zBH43blL59QgYtpF8CMCEpCssYnOxvN1JZKb8WP4JPouBLh+axhC1NqOy5?=
 =?us-ascii?Q?celJstdVxYthNFAqSEIQu4CZqA7RXLPX/z/+9dLMooLHvvmHGwtFS+NNBmSG?=
 =?us-ascii?Q?MMtdRnlOYimvk5NgeHvNsj48iz+5zPknhhBjO+Kwlf+qsksTjj8jGhMCv3vM?=
 =?us-ascii?Q?Vzb1qji23bBCZjH9Dc0pQaWQCkU3jnWOF1f2/pMHoq2512qeFQhcRdhXCOvg?=
 =?us-ascii?Q?XP/L6ktj+NkPKY56OMJvzUvgtDc30khP4atxdY7nT1GvP4g+zkmq33pFmJmt?=
 =?us-ascii?Q?XKga+80WC/9h68n8vfK2TdNNGYwhcn7dOOFAkxuMQwO90aCbMxF0Dz2fTl0Q?=
 =?us-ascii?Q?woLfXvZ+9GOTtBt9ETtuapJAuIgMoYnm+yotZfG2qa1fyhDXWsbl1HuDq3zB?=
 =?us-ascii?Q?A17XjdMs2c4np/SP5zGfQr7ts5xQ32xpKGy05ks+l10apO8614J7Vxc8fHHQ?=
 =?us-ascii?Q?n9uZ6Hq5KalFn7hAcSEDSAk1uPh2GcuEflbNIBhG3kDCfUR9hBfy6/9j3giO?=
 =?us-ascii?Q?RV1eb/RVpbq4DwmrvEEcTjYVWIs9hJAcbHqi8E4Low10VrcLPU8yvH4rgde1?=
 =?us-ascii?Q?uunY1tSjUZ/gRHSA9WBGp1mU7gqWEDTuh8jUIGpeIYxX4/Nc9/In2MR8EODW?=
 =?us-ascii?Q?MSxdaMMT8cagiunqq+OxMnE6aWpRcJGXwZ9GO+ZvZHogYcXw4MBQG+8/qr/M?=
 =?us-ascii?Q?71Y1LZgt5ZcACbjWqrrHqGyAf4Gt1YpY0GsCdLNT0YoGsfwTJwgLvoPpAWcY?=
 =?us-ascii?Q?dfSdYE+107xPiFVfjSafOvrF1zZYdnL5R2RfjUL3QKAv5j8TV3wrYsbrpzeA?=
 =?us-ascii?Q?NfspTYzVX7izIeISeIIs1sHHH9q5efwNYR86Bp4FlqM7EtLSpw/gkRHSqnVG?=
 =?us-ascii?Q?XoXqAPraZt10M0uhhdBOjOZAjX5bqXPe6UPEOXQqrL4RSkMoCM6Sxn0ImS7+?=
 =?us-ascii?Q?WfWLgLNocDTH9WlxKzxPKHRUwxgJJbh0E8wDpbJheoVAAlZXl1w2wHDtcN+W?=
 =?us-ascii?Q?v3OlyfwIA3X6LId5NJySIee+nuiCdE4OmISBySDMRbx5pVi9uP0jTCr5qc8v?=
 =?us-ascii?Q?udStOT3Sh/pS+A7zixJ/x7wC+AWPOO9vVu95+dER5dk/7ZMLLNP4JvpGwoU7?=
 =?us-ascii?Q?1LySLY9UvknIiEKqGTC6JMumAQZHBBtIY1NmSZ54VfSX65SgD/vBRojbbPuw?=
 =?us-ascii?Q?UodtA7QBt2+4TBsJH0oHn08pBTRc6cjaaFa5uIykJe5hbefAzX/A1IU7/WGd?=
 =?us-ascii?Q?5rwIjEoJfC5vl/s3pJ35MYDwtu/Ue8aRrW6rlld4shl0ZAm1chSWoOcLiryH?=
 =?us-ascii?Q?K7hoJs0K6GGqBlZJA6/yunM5tkNE2tDXjKS9dVYquWZIf3EQv4z8z+CXvtUC?=
 =?us-ascii?Q?jM+IO2yUiynZL3NgS+mGLHM1rFo3Vi0cMgR3ZWzd9ltvp+EFnkdngCjnD/vb?=
 =?us-ascii?Q?iqbgRblOfP65eC/hZDAgcnKBQy7S61hZ17kWVMZvmw0gY0p3GZfAov0h3UNz?=
 =?us-ascii?Q?+T6yCxRIGCVKR/yO8H5Ciqq66Tu34uApoGb3YYkA?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78a928af-3fe3-40da-cf45-08dbce21a77f
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2023 08:26:54.2415 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yZu31L0f0h7UKjdaenmQ0ObmwfRoRSN7AJVNTknURr3GbBvjbUuI84ZMGl5NcNjS+ufp4aPUA7Dx98dS4z7Clg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8207
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697444820; x=1728980820;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=O/Inn5hgloMMCd7bda+tRZs2e9LmUeezCmuL607OZz8=;
 b=ZxhtMSnGliTCtmKx3u025sk77cegX381joxw2V1GhZ/i0H0nS1jCRTde
 PTBk7MrzZAVddsx76tmzR1UPDBX+2ExfO9/m50jmvCvJm9XswmslEOrOE
 4/JI4FDX2TOpH8zEIMap3cpBnTqxOCbBQILo8nln2ouhr3QHm8HkBzLP5
 pYzdrtfbjF3hrRwtB0Rb2yPavoiKrz4m9JEEK851acVm+NyKGFsJ0jhiJ
 jFKC1IFcgMj6tjgKyvSt6tRKC25Mm0VV1UVQfPc4ZUXwsWi2eVvyM7Prq
 9JkEB+jHgezfHVmZFmwz6SFnd86wo6v5UO86+8l6kcTS/HT5beC/xnTAJ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZxhtMSnG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 13/13] vfio/ice: Implement
 vfio_pci driver for E800 devices
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
Cc: "yishaih@nvidia.com" <yishaih@nvidia.com>,
 "brett.creeley@amd.com" <brett.creeley@amd.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Cao,
 Yahui" <yahui.cao@intel.com>, "edumazet@google.com" <edumazet@google.com>,
 "shameerali.kolothum.thodi@huawei.com" <shameerali.kolothum.thodi@huawei.com>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "alex.williamson@redhat.com" <alex.williamson@redhat.com>, "Chittim,
 Madhu" <madhu.chittim@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Samudrala, Sridhar" <sridhar.samudrala@intel.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Jason Gunthorpe <jgg@nvidia.com>
> Sent: Friday, October 13, 2023 10:08 PM
> 
> On Fri, Oct 13, 2023 at 08:52:07AM +0000, Tian, Kevin wrote:
> > > From: Cao, Yahui <yahui.cao@intel.com>
> > > Sent: Monday, September 18, 2023 2:26 PM
> > >
> > > +static struct file *
> > > +ice_vfio_pci_step_device_state_locked(struct ice_vfio_pci_core_device
> > > *ice_vdev,
> > > +				      u32 new, u32 final)
> > > +{
> > > +	u32 cur = ice_vdev->mig_state;
> > > +	int ret;
> > > +
> > > +	if (cur == VFIO_DEVICE_STATE_RUNNING && new ==
> > > VFIO_DEVICE_STATE_RUNNING_P2P) {
> > > +		ice_migration_suspend_dev(ice_vdev->pf, ice_vdev->vf_id);
> > > +		return NULL;
> > > +	}
> > > +
> > > +	if (cur == VFIO_DEVICE_STATE_RUNNING_P2P && new ==
> > > VFIO_DEVICE_STATE_STOP)
> > > +		return NULL;
> > > +
> >
> > Jason, above is one open which your clarification is appreciated.
> >
> > From my talk with Yahui this device can drain/stop outgoing
> > traffic but has no interface to stop incoming request.
> 
> > is it OK to do nothing for RUNNING_P2P->STOP transition like above?
> 
> Yes.
> 
> The purpose of RUNNING_P2P->STOP is to allow the device to do anything
> it may need to stop internal autonomous operations prior to doing a
> get_state. If the device does not have such a concept then a NOP is
> fine.
> 

Thanks. this is clear then.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
