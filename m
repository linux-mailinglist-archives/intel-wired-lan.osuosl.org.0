Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F7D4A7D5D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Feb 2022 02:16:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA542415E9;
	Thu,  3 Feb 2022 01:16:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EL9nKs1gi51c; Thu,  3 Feb 2022 01:16:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 801474159E;
	Thu,  3 Feb 2022 01:16:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 07A891BF2BC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 01:16:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 02D5A83E8C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 01:16:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zYUz8OecbPhY for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Feb 2022 01:15:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D46C383E85
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 01:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643850959; x=1675386959;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OM7hExLGR+Ygt9XpeiXMiAfJkNNK6DFQP6XK5UUif0w=;
 b=brFmAWXU8g58tvq0FZitAWrj/rSGeAEGqGgAlnDpBhPQA2e5RnxNPSn9
 xyvkteZ7eevvJr4ooslKBuDFMlbiePrUqqJz7Y8WxCdl8puKAF9ZzRDs7
 pRMihTGFp90knpbZv3K/zXLuy6007oDxvM/a4lzrPQexigeQyiZt/0nBT
 tyDfZgniwlnp4RSm1L7/jd0DuD28ZM5ICggsbI+RXjinvc2S9MgGQPIzr
 Dr3Ug+nEBx8H8NrlvaQO3ZeG6ghFvLvbT9yw/rCeYK3/HJYusgKv9YHmL
 H8++v/5PZppCpRPG41RjkkOd0/8q0JmJmKYps0xfuQSvdaMiavdu5335N g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="311361944"
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="311361944"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 17:15:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="583638068"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga008.fm.intel.com with ESMTP; 02 Feb 2022 17:15:58 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 2 Feb 2022 17:15:58 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 2 Feb 2022 17:15:58 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 2 Feb 2022 17:15:57 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Feb 2022 17:15:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lO0RfhXDFcvnY0ydMNyolaH1i3+1GX0MrHjJ4UaySLjUR1H8EvNEzcP0xi9u8ZBQUEOCQIdv9WNx+2sPRU4aYwUsyX7ZzI+3aeiPX5PGzYUlP7LTr+fHbsMOr1ZfbMg1yyLv6pumAZfkrqN1n9soM9SZU6Q0VXa+nZ00drb6BsGy9S86Odhu4lJNmLaU/cedg/Lh5Cy0urcKzkYRfOz6PmYuW0m3dlC94jWhtbyt49JSCrkjARs01IrYIk/jpG1ReuMOdAiRVBUgvVYw2Ti+rV9nOBRA3KjgDm90m7fph3o/QhZfZQGJ8rilIO4Q/s/1V5FVHEEmXudnw5gjMApNVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XRSk6ecGobzF8BbhVGRu45nxBxkm6v9pPfJrb36C1II=;
 b=ibGI6+IRnN/9ppDOPSBIHb9n3wiMOQzhHNVIHuSgAxfcoDf65D8tF6PojLCFh+wam6X7XFlQQtmGTzfUo5KlH5jttb08lR6JeI63DhkEffnGHHXp2pqkJL8Ea6c/0Bf2eNCFO8r+Q1oCOyri/maiIU+LxL7P148jn1AMTpUPqw6ZefYDFpxiqYvY8QlYx8M3sZ0+xYgMO63mvzFItEY2aExG3DHRbjlhnbGAfvi+Yo9tK3IZwAnw46rGdk52VNKZrReFD50U4+KPRjpeCxawppr/LqaizoXfIHYHXsbH3avyfLR1zZgdIq/DaYZCcQX6oHYGc5GXLnTplN9Lk33cnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from CO1PR11MB5186.namprd11.prod.outlook.com (2603:10b6:303:95::14)
 by BN7PR11MB2706.namprd11.prod.outlook.com (2603:10b6:406:b3::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12; Thu, 3 Feb
 2022 01:15:53 +0000
Received: from CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1]) by CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1%5]) with mapi id 15.20.4951.012; Thu, 3 Feb 2022
 01:15:53 +0000
From: "Brady, Alan" <alan.brady@intel.com>
To: "Lobakin, Alexandr" <alexandr.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 13/19] iecm: implement splitq
 napi_poll
Thread-Index: AQHYE97VMWkVAJ525EKwew+fF/O8Bax35iAAgADPZ4CACFeXQA==
Date: Thu, 3 Feb 2022 01:15:53 +0000
Message-ID: <CO1PR11MB5186DD7A7916C9D699ADF2A18F289@CO1PR11MB5186.namprd11.prod.outlook.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-14-alan.brady@intel.com>
 <202201281316.ZdiaZw6q-lkp@intel.com>
 <20220128174401.28054-1-alexandr.lobakin@intel.com>
In-Reply-To: <20220128174401.28054-1-alexandr.lobakin@intel.com>
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
x-ms-office365-filtering-correlation-id: 9dfafd9f-4e0d-48e4-a650-08d9e6b2b965
x-ms-traffictypediagnostic: BN7PR11MB2706:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BN7PR11MB2706D094213F34C0A3FC31798F289@BN7PR11MB2706.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ON8NWeAhXSI16IlfFl0BJe9vvLP1AO984slfHTfoJcBANnehE8FgD3Bg6AdCCZ22DJ2n7PQ5wFPQ7vOiY2WqQqOTVBD47wiCVMjbUGnX7Q6Iltn+5QNjXtlJmYkmJheoJXmNU4PXl64Q1R6P4yo7HzgrkSqBqgJ62iPZE32E2gXue8tvl+yQrtfCwxTw5BYttyQNq8du9NpPeXswCrujMEanyqqcAYdYxly7NlU0PehkbQ/+EweTVW7verVK9/MhGr+Y8JbbU+sclZ88IyXY78wpFG8v2hbDxlKjoCBBHQ8F5NPIHLpcrXaKIweQU3YyJYGs+E9fxeXtmORpCCPNZTnUxST13FeGLatrSD9dEgHtZrC7uB7Bc24FdP60MzKkwzoE65W6n7rP2KuR55G3+ox1jsQnLm2/+drRvU1YlhUfBGppnr9vkVfjTpvgwyF1aBNXErmMWJa/S862akT+wGxwdFQA0rT706YJlDEzrnKko9j0us9GP+Y0jIgI0vbPPWelBx2IYpZptJijF0E3Kq/6pL7115oAr6UYq1S+rVujh+4CXS4nc5cOzMa5h+QMWa92Yj0huFFlDNnPnLaSKV1CM/SYGRZp8MSI39rjULOM78gVmVBd5XYSvgPBgjidK2GSpbi222Al/bckvNyw5H0wY75IWcUqdxOOTcVmmMoUwQSPNmgc5Lb3Jlq8ZJISnEm0Eavn3mf0QjXRAZcMq/aKiATqQiP+nvajGS4gpkQvAzqpzggwLRLsvDF603AJNtksdEWveD8rUctlFVNfXvFcigyC1gvL0GaI/AhTIbsrO6Ubl3IgmIioCYsSZo626iFCFgbkf1wDxQn9himVGw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5186.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(122000001)(82960400001)(54906003)(66556008)(508600001)(71200400001)(966005)(83380400001)(33656002)(38070700005)(107886003)(5660300002)(2906002)(52536014)(64756008)(66446008)(66476007)(26005)(6862004)(66946007)(38100700002)(53546011)(76116006)(9686003)(55016003)(8936002)(186003)(6506007)(4326008)(86362001)(19627235002)(8676002)(7696005)(316002)(6636002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4ezGRWJprioDUZbzx9o+ISpXDXL9mkYwHASwwAYJMqJOL/Hn8wEVfeqAR/Vz?=
 =?us-ascii?Q?C9JnvxtzniuVQMiyPK+dJcspWmkTezHUz2p1Ukw/xoG2leXYYUPKGattpii+?=
 =?us-ascii?Q?nwrUy1kTApL9u+XWT5cn6ogsncfIt1MNAtP5KV4Hgkk65m8k2whw7ENBO7+e?=
 =?us-ascii?Q?vb6srjIKVe+GsyTliU/XnXthgRVIHugv+FzL1VtgPTBCHP6w3DmQVU5GYF8/?=
 =?us-ascii?Q?JhpW5upg6iBHR0eytVDbIy/jiWOi0QFo3OVwgEAaTywIk4FFLvkvu8iNlmkz?=
 =?us-ascii?Q?1GW9f5W2jszfpamI0qIeklmJZ+yB/p5X0AnDvRWM21fmwskNJSjFEj6wY1E0?=
 =?us-ascii?Q?bKbLeRlRJTxhK1R6bamEuDnq/v0rZIPRh6QzixqSEfsyfvJDL1hbKCPdIcAg?=
 =?us-ascii?Q?/kv8a+OqmXMHA6Ulh3vjd1eg6SuB8mtBHrIQpNlpaiffOODGrnZXSFzEjERB?=
 =?us-ascii?Q?MspZ3WkOTvlfCbnZOHl3t3eH++DFrdwmldcK1uloc8VbDOmORL2a7RFi0IHa?=
 =?us-ascii?Q?wmsbLQxmWEufWZwSV5CZkUkh7n1RpegG5xjjVlfGdpN3WdC6C2A4fxvofSlD?=
 =?us-ascii?Q?D8qeLXAornD4NA4fR2m0iP0Ue7Lt/DeV7MKSlAFQR7OeKMwjV2RE/k3pZOMC?=
 =?us-ascii?Q?IgCD8CHk6eqINvecZ0XS6TtQyIrtHes/bcR6N1NcCp48/TOrPGWNYOdv0zox?=
 =?us-ascii?Q?X34rlTIUqIB7E/q5jWP/dXxzQc4cOJofHmDImRySyhS6ovuE8j5t1Lmh7m8l?=
 =?us-ascii?Q?GjjMbF4ddRw1hcxKu73Wb/zzbvRtBJdyCviWaTUSPlnwk6yQ2EnZCMoaHghF?=
 =?us-ascii?Q?qKl13/YNJ+5oYGKEp7c1NeIyenra/F2mtJboSgf8dycf5LtPhr68V9lfSC5m?=
 =?us-ascii?Q?RbHSBRylSsPeY9UCaH/TU3TEcbLGljAl0hAucjsK5xrwQqkqlOoHTcp2YqqL?=
 =?us-ascii?Q?ETzLNFR1TE0wJbqFWIhgBzW0/VwmnQjbXja94/EpzlC3K21+IPJpq/4qGnBk?=
 =?us-ascii?Q?4/Y4L2CXC+IFpZ/rNa+VCOsQHoXYAoMoLF8vTX1Oav9PSAryW3rGpKMxNhnP?=
 =?us-ascii?Q?DpLlgSk60hbWPTAQXgDubWYR6h0w8CppsnYq+BhAIZWb/DH6EDwFDZarl02D?=
 =?us-ascii?Q?w6JfBvBT680cDTmb4sCJ/JLYZ30I+TSlCdHjGZKWqQZuyMeBPMyhYCvx+arA?=
 =?us-ascii?Q?xPP/AHo9XQEFEpDzU2SuWE79lKa49HnzaCSfAMkVULiu/KW/pik4YVHwSUGp?=
 =?us-ascii?Q?1uk50EPQRw8IT9j3cV5SOxTe38i1rw8jRcH8/r0TzbeMTr5KSzrSVri/n5xf?=
 =?us-ascii?Q?froUP80Bb6B39vxrgjoWSyH3X9rP88sEkUKbwROZag0wqQy8F1rUbbivE10H?=
 =?us-ascii?Q?/mUMwtdYNDP1Fe1m5hPAThzxj7B5buSFQ8qPnSbGFtaafyjfXySjbhv7U9ei?=
 =?us-ascii?Q?n56shmGB8DP5gCh1jvtUONd4g0BrEdwCuEOltgj5C93s+xYsf4KCZAWPrXfs?=
 =?us-ascii?Q?CpGYd+Q0DDiC4eRjM7UUgxm8Rv2iruCstwFmRpiQvrWThQq9jiANLOiRezc6?=
 =?us-ascii?Q?EiUwT9YsEv9sl4IyfK8znv7u//WPLQj+0Y8XQ4CI4eEo0J5vorV6Lpwq6WTb?=
 =?us-ascii?Q?JK/SLpmLo9EQHR/+iX3WwTQ=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5186.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9dfafd9f-4e0d-48e4-a650-08d9e6b2b965
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2022 01:15:53.6931 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0EiZNIhsbycHe0fd+AjXN19KBt3UCjw2DQ+2opL2Vt9nb5oPeR1DFF/2Zv5Jj6gqWHcB0g0IO8aKD+Z7MpdG+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2706
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 13/19] iecm: implement splitq
 napi_poll
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
> Sent: Friday, January 28, 2022 9:44 AM
> To: Brady, Alan <alan.brady@intel.com>
> Cc: Lobakin, Alexandr <alexandr.lobakin@intel.com>; lkp <lkp@intel.com>;
> intel-wired-lan@lists.osuosl.org; Burra, Phani R <phani.r.burra@intel.com>;
> Chittim, Madhu <madhu.chittim@intel.com>; kbuild-all@lists.01.org; Linga,
> Pavan Kumar <pavan.kumar.linga@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net-next 13/19] iecm: implement splitq
> napi_poll
> 
> From: kernel test robot <lkp@intel.com>
> Date: Fri, 28 Jan 2022 13:21:42 +0800
> 
> > Hi Alan,
> >
> > Thank you for the patch! Yet something to improve:
> >
> > [auto build test ERROR on net-next/master]
> >
> > url:    https://github.com/0day-ci/linux/commits/Alan-Brady/Add-iecm-and-
> idpf/20220128-085513
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git
> e2cf07654efb0fd7bbcb475c6f74be7b5755a8fd
> > config: arc-allyesconfig
> > (https://download.01.org/0day-ci/archive/20220128/202201281316.ZdiaZw6
> > q-lkp@intel.com/config)
> > compiler: arceb-elf-gcc (GCC) 11.2.0
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-
> tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # https://github.com/0day-
> ci/linux/commit/8e9b2451747f81363327cf5a4e07aaf88af52397
> >         git remote add linux-review https://github.com/0day-ci/linux
> >         git fetch --no-tags linux-review Alan-Brady/Add-iecm-and-idpf/20220128-
> 085513
> >         git checkout 8e9b2451747f81363327cf5a4e07aaf88af52397
> >         # save the config file to linux build tree
> >         mkdir build_dir
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0
> > make.cross O=build_dir ARCH=arc SHELL=/bin/bash
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> >    drivers/net/ethernet/intel/iecm/iecm_txrx.c: In function
> 'iecm_rx_can_reuse_page':
> > >> drivers/net/ethernet/intel/iecm/iecm_txrx.c:3132:19: error: 'struct
> iecm_rx_buf' has no member named 'page_offset'
> >     3132 |         if (rx_buf->page_offset > last_offset)
> >          |                   ^~
> 
> So these series wasn't even compile-tested properly.
> x86 has only 4k pages, but lots of other architectures have much more. If ARC is
> not relevant enough to MEV, then I say that
> ARM64 has 4-64 Kb pages, and PowerPC64 has up to 256 Kb.
> 

It definitely was compile tested, but juggling around 30k lines of code gets tricky and a mistake or two was inevitable. This should be a trivial fix.

> >
> >
> > vim +3132 drivers/net/ethernet/intel/iecm/iecm_txrx.c
> >
> >   3103
> >   3104	/**
> >   3105	 * iecm_rx_can_reuse_page - Determine if page can be reused for
> another rx
> >   3106	 * @rx_buf: buffer containing the page
> >   3107	 *
> >   3108	 * If page is reusable, we have a green light for calling
> iecm_reuse_rx_page,
> >   3109	 * which will assign the current buffer to the buffer that next_to_alloc is
> >   3110	 * pointing to; otherwise, the dma mapping needs to be destroyed and
> >   3111	 * page freed
> >   3112	 */
> >   3113	bool iecm_rx_can_reuse_page(struct iecm_rx_buf *rx_buf)
> >   3114	{
> >   3115		struct iecm_page_info *page_info = &rx_buf-
> >page_info[rx_buf->page_indx];
> >   3116
> >   3117	#if (PAGE_SIZE >= 8192)
> >   3118		unsigned int last_offset = PAGE_SIZE - rx_buf->buf_size;
> >   3119	#endif /* PAGE_SIZE < 8192) */
> >   3120		unsigned int pagecnt_bias = page_info->pagecnt_bias;
> >   3121		struct page *page = page_info->page;
> >   3122
> >   3123		/* avoid re-using remote pages */
> >   3124		if (unlikely(iecm_rx_page_is_reserved(page)))
> >   3125			return false;
> >   3126
> >   3127	#if (PAGE_SIZE < 8192)
> >   3128		/* if we are only owner of page we can reuse it */
> >   3129		if (unlikely((page_count(page) - pagecnt_bias) > 1))
> >   3130			return false;
> >   3131	#else
> > > 3132		if (rx_buf->page_offset > last_offset)
> >   3133			return false;
> >   3134	#endif /* PAGE_SIZE < 8192) */
> >   3135
> >   3136		/* If we have drained the page fragment pool we need to
> update
> >   3137		 * the pagecnt_bias and page count so that we fully restock the
> >   3138		 * number of references the driver holds.
> >   3139		 */
> >   3140		if (unlikely(pagecnt_bias == 1)) {
> >   3141			page_ref_add(page, USHRT_MAX - 1);
> >   3142			page_info->pagecnt_bias = USHRT_MAX;
> >   3143		}
> >   3144
> >   3145		return true;
> >   3146	}
> >   3147
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 
> Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
