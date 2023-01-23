Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC706776FC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Jan 2023 10:04:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E493681E1B;
	Mon, 23 Jan 2023 09:04:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E493681E1B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674464666;
	bh=9yfpXhhlEe0Ano6FRdsKRqQNSLSgCjvoD9K4jUVmPs8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=e0jYqYm1kWpro82EBLK8lnrtic9uthnwVzJlHOvDrIQyWMo4N1YPx2Q1fJ2qw+SK9
	 VI6UBLO5WuQLkMUad8It4eZJSFJWXUsIPrlXaxASK25gaZj5iSLdAUNkNhsjXaJ85U
	 z18QjtnEU0YL1R4sDdcKgmeb+CSYai9TrZZjC1BiwRg8duJiyK2uq28JxbNBmsMj34
	 YB1u0jxTTNf/u98OCm+hphCu+EBx1oX+2PiS2rsgmvN5dT/w/Yk9sN3xJ2dpX3hhyz
	 inpbp8idlatDCp57Cwdhk5RFVeLjVNw/OReLai5e+/4jKrlTcvv8tV5bstLfDC7WFZ
	 Zgcz1tGtz0EKA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mUk6FoB60zoB; Mon, 23 Jan 2023 09:04:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E53AC81DF7;
	Mon, 23 Jan 2023 09:04:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E53AC81DF7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9A34B1BF5A6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 09:04:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7410340250
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 09:04:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7410340250
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jOHTdeytL8m5 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Jan 2023 09:04:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B1FA5405DC
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B1FA5405DC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 09:04:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="313893818"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="313893818"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 01:04:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="611479656"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="611479656"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 23 Jan 2023 01:04:18 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 23 Jan 2023 01:04:18 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 23 Jan 2023 01:04:18 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 23 Jan 2023 01:04:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k/UHN8GYzbvN/r1PHrMi4J4d6hXtqtAz0KNFk9ihDJfLGUY/Xe9BKVbv9h7Th9rsWjTbY5eZW65LBgn5NRm1FaZuk7J00UmCNz8TDe2NNvM13FAH1LYFo6aiL6MRkbSAyexph/FCOzjR4HDChQH3HwH7nXjUrI13cZRlfjlHtCs5056XCNVpCokFU9S27o2t9T2jcfbTYVCIBiv5REtqhu6upFFJ6zcNV1nYffFNx/WBEBxlVzxyWlx+N5QaCdgOaN3apZjP+cLU4jD4SLL470qGwJpECv6hMwK0wvcR/NO3AQrLsTwl5rA73uK9+kdD7GMfWKeJuWpdL+INKA/mNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XPh17f8J7W4xTLWmW/OofcvWeNtabJ0y6iklesRm9y4=;
 b=Y1rq40B0CDLKx8ze3uQnLeqOtoUydAULC0KmUCEY0YBK0bY7/Wu2n/jH9rv8wJLysLbLm8FbBDkr4ljQztjdxv/q3cpLz6mEfS9LasZTAG+JWtLsexLNLi83FUOucBtHM8ZZm5En+anjrCIKUPVkM1j6aSYy6lPnlZLCCsy9PmC0mGzTn4vHnmCFQ76p/bf96q0uxSDaYCC82Eg/aMX9FS0dExcjC+6BLtVnXnVtooGqYg40jyHmbVZQiQd7SbuN8crBNpVE1ArRGJ6pIPqNBezOjoPniOVTeAyOUYMl4XQfr6F7agPNv1PLJAmR01rpzTburvMY9qrZuE4rHTKslA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by MN0PR11MB5961.namprd11.prod.outlook.com (2603:10b6:208:370::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.28; Mon, 23 Jan
 2023 09:04:15 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::d0ef:473c:502f:986e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::d0ef:473c:502f:986e%9]) with mapi id 15.20.6002.033; Mon, 23 Jan 2023
 09:04:15 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1 3/4] virtchnl: do structure
 hardening
Thread-Index: AQHZEYoaGCuelHq9HE6fdG82uqUz+a6r8CrQ
Date: Mon, 23 Jan 2023 09:04:15 +0000
Message-ID: <CY8PR11MB7364703A8898A60EFC136E32E6C89@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20221216200658.59833-1-jesse.brandeburg@intel.com>
 <20221216200658.59833-4-jesse.brandeburg@intel.com>
In-Reply-To: <20221216200658.59833-4-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|MN0PR11MB5961:EE_
x-ms-office365-filtering-correlation-id: df98d00b-86b6-47a2-d7af-08dafd20cdad
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: J3eAf1gsfG/pnNPBE/IyKqZB69L1yXZBiXcswKFhhG1n7yTJ5+rIkl/ydJEnc6IiGEY8MvBpFivfl0PI6AKsdaIVPPZf8c2Z5qA3I+PnK8RlK79M2kZcA/ebMzx7Kvg19cJq9ouq1K7cYffuuNYPefwslxxABtHOQaG8jb90RUpi0NDmgjhUg3f2Avv+Yvjw0sCELsP0Zn9tfW1zbK7wHgJ3ZtyY2KD+M7mTzVy9x01AG6sMIxWy2InRWeJeW/xRl1IQieiIQ6FuGIT7PqrUzKxyXdikffIoWvxnIQeomrLRqSQCCRKJpWIukX5evY9jh+cARvzgpCm0KDHWawI/aM1Z3Ey13BySuf9JMVm/ghPUkdb4NSkEBE+KKGPylbglO/3EU0IgK+ea5VlS2kk9lnmj+c0G83OYGz59rJKX0QENoPDF8ePncTtXWmKg+18bkqsQ4I4h9YK7/ElQnrQn6/nK/m3lLPkGsI3VtnZi8XyDsNfskmISQtDKOYk5DUqAsf0Cf6efCjICP9N46HgCu+OLGNEwPouI+6rBBuzde8hBHsi5v0rxHD1goU0m8mjuaxg8b/q6DgIwHmY7pvgQmKHKtObWaWLQeH5/hBw8OL0Mpx7stgKwmTBvrGgEQTfcAjKsCnZkQOF5/tarnNYx+xfW7YlZX7aAwvspibvFHchcXYUPYIQfQ77NIp0WRf42PTtt0Ppwt6EvAuNI0ZFh4Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(346002)(136003)(376002)(39860400002)(396003)(451199015)(71200400001)(7696005)(478600001)(122000001)(33656002)(83380400001)(82960400001)(38070700005)(41300700001)(38100700002)(316002)(6506007)(8936002)(66446008)(66476007)(5660300002)(64756008)(8676002)(86362001)(6916009)(55016003)(2906002)(9686003)(53546011)(186003)(26005)(76116006)(66946007)(66556008)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?4zWFl5wzyviwHyguwuyiZZDbXwMZK/1Pzuninwp7l3oqK45H5NgpScWRb/?=
 =?iso-8859-2?Q?Y3x7UZ4xQ7xP4W61bXAENpdTgm0h3rX2Gi6qRzyx7Xb5/7eet8A/Wnj8DO?=
 =?iso-8859-2?Q?CWJTtBJ/HpQaSz4xCRAXB2TuQ1opNI560tFcOLCe+Sc4vUvoo4cU3/sleq?=
 =?iso-8859-2?Q?q5zPpv7vzk2Rp7I300W2CMcJoQG5a8LDGBzTS+ykXep7lSYySq2Kxi0YZg?=
 =?iso-8859-2?Q?oDxvdEWMtQ9YKP17dRIbV2pGRzQg8VL6tqz0NQdcQ+iZ3ZaCE1KvJIejLX?=
 =?iso-8859-2?Q?kGLC/nplrvkNLPidwKHkjKoO4KB187EvKP9c/o7gRKTsDhiFYsyu7lfY94?=
 =?iso-8859-2?Q?Xd056YnyYEEL3kbAM1ZhtY6DKnBEduLJeIsfTL9K3IPtjkAC6BmZeaA+nD?=
 =?iso-8859-2?Q?o7Xussd+Re4kcSR+HWSMPdXeb1YPoETd8sKO/rVaMz4M4KFLoy+l64DYzB?=
 =?iso-8859-2?Q?5pkGTmV6j82YtdVaZBKBKi/ukREIyQVVxBFDS0BJhbrs2guMNq5ssXOeXd?=
 =?iso-8859-2?Q?UoNCWluYnng8SeIGo6GquL5gHs7pBd+vMLFvBfmVLlfAUaGvCDNNsYbIUG?=
 =?iso-8859-2?Q?I8v0ezHOWXN6A4pwAr51J4nhrXQT8vVgdZz9z3jASz/Ek4WqgVaDtKlV1h?=
 =?iso-8859-2?Q?1Jsd+MyLndeqXrsjSyOzACztzt5tuNyKaiLhLQpn/CvYRw/iG/Q5RFA3KY?=
 =?iso-8859-2?Q?1csDnxHYhaRm1W4RfYDeiLz8DBDgF6Hg1TQay4KtfAU+mpHAvj69t8DFSw?=
 =?iso-8859-2?Q?qzvuJv3Srlb3jrGLIkG2Jg8snYAMqsSPCtJDEMZXVQNRqd1+f0xqQN3OX8?=
 =?iso-8859-2?Q?WGhG9VC29RsLq4YF3zF8s8SIOHyHZ3ErPG0Me9Y5cNPu2waxi6LpVywStF?=
 =?iso-8859-2?Q?AK6gHtu23hTS7BEoF1CJh6XAjvvcARa+a/45bStq+2BSXD/UX4zc5cOxg5?=
 =?iso-8859-2?Q?NmC887QfqpoqLg69sYMfvdWj8q2H9fy9uzDeQ7iLav1DEQuArWr51XDOBg?=
 =?iso-8859-2?Q?pY/dACmMNz7rHgu7vS7sS8Et3zS5nyopI/MTgSTvdBxl3t0LGrkBHiw9gR?=
 =?iso-8859-2?Q?kLZPtWYUJPgN6ys2z8ddVlqefDQG9x3WaokuFQhZgVb/pY1qvLLiDmbURq?=
 =?iso-8859-2?Q?02S4aWPW5TgoFYJMydrECmdJZ5m0ev7zIzv6FbH4fKb0O8J6oNlViBXg9v?=
 =?iso-8859-2?Q?OzM6N0dO4REwu7afuRJXmY0GG3us4zcJt9DcKbvOKSgz5Kye1xX9yJqtv6?=
 =?iso-8859-2?Q?defJYQ2LATYuD3/yGuOvj+Qcp8hX7Pr+jAjko1oMZxbltMzRRJP17VzNWK?=
 =?iso-8859-2?Q?FqkYDEdUSJrcEXTgkFgBVLOdieLWlZqi2vGlWD6JLY1WdbBiaRdsi1lWa1?=
 =?iso-8859-2?Q?WHsvbo7/PHA5drhqCp031ix6TOFvpMD1vVl+xwF5Jdp+iKmF26f2RvGjRv?=
 =?iso-8859-2?Q?1dvau1j87Wi3qI1oooKqR0ca8Obad3JP9ZrbtxEUsp4IUeCcM7WMbT4YBY?=
 =?iso-8859-2?Q?ggsN7UAqyo9OI3QgZT99B+zFoG0tT9CIKWrqGpcg1t2SIz6xt4G1zPwAzv?=
 =?iso-8859-2?Q?YdT43nnkh4t0ofS5LfL47tMYWabiygoyoLLp7BeY5P0dIcg9lZJcSdt/Sj?=
 =?iso-8859-2?Q?aMOregypv/XMEV7+XGuNaugh87ng4fw2Xs?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df98d00b-86b6-47a2-d7af-08dafd20cdad
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2023 09:04:15.7536 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9uF3d56eECFOP0pdLi6LTb5L5zqDslmizdHZE9lv0NbVawhSc2NLhmCkFsqmdnfpoVHiERBAgcKOShUxNk4EJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB5961
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674464659; x=1706000659;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=VNnYdwnQR+2h2H6mSQn/Pg1IVP/DEVJu96ne9n0Shrs=;
 b=nuMkMgoXnFfVIjkQ2onI8hHV/iAOaxeZFfDEHDrPpl3J+hcZhGQeDuCk
 nOyKw9mfgCPdh8MY+s3GAJU5khRlZqB8+unOyQoeQ+QuwFGjhmbEHzsw8
 PU8DaEokZIAQ24+R5aU/nO5CT+1O3C4C6ysIFUqb85SJZVV3OZjDQzAzM
 uk24vj99NW53DEqZd4iJTRnfC00qd3q+ka2NkIRFPthwD8T3cwbvHX4Jl
 ySMDuJGbF7fpDjwvtIZLr4qPBf9XrCU1XnQpd91Bu0YVpx3YWLM/KkhBD
 rN2i8q668Y3q+FOa2GFV3DCD4QaMOuQEqqqSttjx1L7/aHwwDJa4IdQVG
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nuMkMgoX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 3/4] virtchnl: do
 structure hardening
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jesse Brandeburg
> Sent: pi=B1tek, 16 grudnia 2022 21:07
> To: intel-wired-lan@lists.osuosl.org
> Cc: Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1 3/4] virtchnl: do structure
> hardening
> =

> The virtchnl interface can have a bunch of "soft" defined structures hard=
ened
> by using explicit sizes for declarations, and then referring to the enum =
type
> that uses them in a comment. None of these changes should change any of
> the structure sizes.
> =

> Also, remove a duplicate line in a switch statement and let two cases use=
s the
> same code.
> =

> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  include/linux/avf/virtchnl.h | 48 ++++++++++++++++++++++++------------
>  1 file changed, 32 insertions(+), 16 deletions(-)
> =

> diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h =
index
> 2e685aa37688..5c630c818370 100644
> --- a/include/linux/avf/virtchnl.h
> +++ b/include/linux/avf/virtchnl.h

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
