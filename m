Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B75EA33AD42
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Mar 2021 09:22:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 55737430C6;
	Mon, 15 Mar 2021 08:22:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kpxqPnfxh3Yc; Mon, 15 Mar 2021 08:22:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4AE1A4016C;
	Mon, 15 Mar 2021 08:22:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F3DF71BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:22:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E27D34016C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:22:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AINZqzDnm50W for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Mar 2021 08:22:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EEF1940146
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:22:11 +0000 (UTC)
IronPort-SDR: hXzBA0vn3oIlekL3HtcndbWRFpR1p2E2Yx9isqWNbohrAbxVRO+unLvUxHkZxJiGc1cdSNu/M0
 YI4Vcn8aD/gg==
X-IronPort-AV: E=McAfee;i="6000,8403,9923"; a="168323752"
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="168323752"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 01:22:11 -0700
IronPort-SDR: VoTxqqg9pl0mZ7rOXuCFio9jtg2XnitJxqS71J3vMinyI/jetkiL20OVF6+sElvKLhJXwv6wka
 iMw5TOHr5HLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="439684109"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Mar 2021 01:22:11 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:22:11 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:22:10 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 15 Mar 2021 01:22:10 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 15 Mar 2021 01:22:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kp3Lje8HPv6zNsjwyQnGFbvHuNJ0ipZz47y/AokocuU5/IhL7Ammso2EoUyaJYIvbl9SU87OeRnH8WUKn+slCggVVeBX/5toiU4cLuCdHER/ackkiMDSzvdlnTx+Q+L98jXfHh9+cDUANeFtEdxo5BuVM+At9Yx5FKPeMLWoaQ1Oc/FscLgbT91WXXJ/Jug3yHy6kjqiHvlPAZuTP24qeyKR5XZR4dlivhXJ73Fgru2xZRbn1FQLTYOKi2tymWTnvbsRWZsQ0cu1a8/4zkK2rF7SafY6phazshoc+WesTtQi2SBvHDXIB4iRQsyJjqKzUkpYkI7X/wtR2JP5XpqOUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S4FbMi0dgvmVelggZuvweQiIkhZ63+GB5LERcxjyZOc=;
 b=GZbpVxxaBG+R1fFkQwYpuxncMOgD/rHEBUK42F+D3Xpfq0ipFTrFzYKMOf+nh5oI3+Vt84SLtY/oFgWVzPWPvjmGKQePZ5jkc7CyKFRtB6Cnfp6Mg9axV23lf0or5N6ePaRb8RdQ+HM63rmNTV2MhlwzBAtEVw8ufxJuS5BdWZOZ4QIn77SuwWx5NaX6jXeyE8wnpkirmhl8i8r21+OE6C5DUaZryk0DhC00F6zu0mDBrEAUPEyg2PPO/5I67sfRfKsXAiB9+Gipt7D1tV8hrcVg5zhE3my9xIowIGBCMlz2k6pHAp/eOw4X+yV6XtB74yRNZl8ZIMGYrNXbtdvUzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S4FbMi0dgvmVelggZuvweQiIkhZ63+GB5LERcxjyZOc=;
 b=FgVKFAgz9qoeyse4X9O+/2yzpEM6+hh2aYxRXScdtb5gJABneglFzkUgC2t6/xPJFHnH1iTXbRWyJuDzzGO4iHM34ANU3p4YcEDBOud8Xci4fJ3BRVmDW+ku0eKFq0kq6IzhC+/q7z2lkfjz0u1I49Q88ozIppHFnyQF+mMyt88=
Received: from BN8PR11MB3795.namprd11.prod.outlook.com (2603:10b6:408:82::31)
 by BN7PR11MB2801.namprd11.prod.outlook.com (2603:10b6:406:b4::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.38; Mon, 15 Mar
 2021 08:21:56 +0000
Received: from BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e]) by BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e%2]) with mapi id 15.20.3933.032; Mon, 15 Mar 2021
 08:21:56 +0000
From: "Wang, Haiyue" <haiyue.wang@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [Patch v5 13/18] ice: Check FDIR program
 status for AVF
Thread-Index: AQHXFJQ1vqtZ+jCyIEqPzcY+TLLXwqqEvzdw
Date: Mon, 15 Mar 2021 08:21:56 +0000
Message-ID: <BN8PR11MB3795861D59A4116898AAA8ABF76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-14-haiyue.wang@intel.com>
In-Reply-To: <20210309030815.5299-14-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.0.76
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.46.56]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7629e9b3-b518-48b8-7811-08d8e78b6593
x-ms-traffictypediagnostic: BN7PR11MB2801:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN7PR11MB280174357533C3E6B242410EF76C9@BN7PR11MB2801.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5ZDKuHgakHAVAbbJqNj02aHknkVzbwiAgHf+uDPj20c1LvPZehNYDDuK5dR8ZckN9+qfoZBhJu2S6WIeZlpHPRAagUaDv5y3wWUdfT/XEXnSEfoEB2A7RxMj6CpyFAJg16RYCikt/t8pT5Qo8Sr7rEibml74r/EOCYHOfJzmhOcHFIoPAbyev8+m7rllRAzBCjZFJaJ0QQz42LwMlv296lpPHZ2SxNBu77oG9RJQ2WH9jJOS1xbXzn8YCY02+nnhnpoqw5IdwlZh+KDWF3HF4K7nzks2xqRUPZ66KK0W+OcGXIpkCx0ZGtOX0Cb1xfyJG7pRMVwj+nSUSkePd6NtUhs61TyoX5oWWKK24swu4VeXc2woE2hZ3hp2YiZDAhmwYk2mvBBmTIRcuEos0eYsEPlcAVqQYVx4uFhLvIvk+U3LFgOXNqDPk0ecDtOw/FWkuQvQRjwc1GjXX/yy+wZ/PzxluoYzrbRGJCH4SY8RBhUMJn5g8RpcP2VCLEebkKkdgQRfqESBNnbOCcav4qP5CJ5Pd1eHwf+oVGlmmdMmaNq/v0Wphl8GouKsLg6Dz3rEx8H83EsWg4CbHpHKLwhgJ/J85L3oMZ0RpUCQXxtCdoc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3795.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(39860400002)(136003)(396003)(366004)(346002)(54906003)(2906002)(52536014)(71200400001)(64756008)(83380400001)(8936002)(76116006)(107886003)(66556008)(316002)(5660300002)(6506007)(66446008)(4326008)(8676002)(55016002)(26005)(6916009)(7696005)(86362001)(66476007)(186003)(66946007)(53546011)(33656002)(478600001)(966005)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?nuvCyNjpVt3IRkVNOGulXDmWE+W6pWdEWnLg2PP80BYktlyiBa2cRCZ05Y6v?=
 =?us-ascii?Q?aOzi/DjEnZx1VwzsrrYqfZZLUDdXKp01JurJLDhbtCeKr2bScedYutBaExV3?=
 =?us-ascii?Q?1Z0Rku1boYuj7nr1RR6GCylDO+uyZW7ucqb/fCqGptmI4nYxOfNiS3fs6p8f?=
 =?us-ascii?Q?W9/aR2SmqdMVdxf/Vc0tF4GzmSfm0JgmYktvGA05HOYnN5d7eDHzGboX6Kes?=
 =?us-ascii?Q?QmKaJVmAN3Xs1OJ04bkT8Pwr2oqTBd6i7xvfbbOGSbCILHls65rhNn7gtzGm?=
 =?us-ascii?Q?hsq05XGpPbrPe27vokWTr9MOaXKeI9Rjtj7Bf3Kjf1e+hgaMqWuwEO0igo5r?=
 =?us-ascii?Q?uiAa0Stqo17K8zjbe7LH3ilX94Tkg5te3GjGhpE/o1Le5BVZgawvz4vNtCN3?=
 =?us-ascii?Q?arQyXloRyQUdRNWbpaQ9Idj5okOHBQ9eBQNg9bFEkLFpFbiFmmXjFS+6QHDu?=
 =?us-ascii?Q?VRRZD7vXyLzY2ft9TKttFEqepRPJRrtQTJ75H46xcz0itu4vEws71Gc0cjrH?=
 =?us-ascii?Q?azkQEQHWJAaEcowdzTwlEv/WrSmIoFxrHcsjIiT23VKT2FiOxp6i+6bbp8bo?=
 =?us-ascii?Q?98ele7JuoHu78WNH1lWKdQUbiufSaRUsq9sYmmJUg1T7N8FQzckyTcurVqT/?=
 =?us-ascii?Q?3/Inp1BWjawNqxR56CeXtH8QfrLZCGuZGm8YT6fIlyMyunnEXoCHH4xtU9DU?=
 =?us-ascii?Q?oCHwsK7Qfm97PMOX8DNkl/Y/0ej92z0W71PYAZPL2HLXZHq9WGgeXRfKcJhu?=
 =?us-ascii?Q?TsbVplu0M1NSPGXeTM33do6ICvda2fcZOao1elYFWOEI1oSnc3x8svjajKOD?=
 =?us-ascii?Q?qw82LRcfA/BmMl5nL0o+/rVnzODkFOFO10hNxzIVcG9lpnAQn9fPx8wVYeT/?=
 =?us-ascii?Q?p2WvT0rEyaMO2zpyvSjQfOVL/U4L5/yVewcAoNDb+Fe2FQro/Zn+YCaFXiYm?=
 =?us-ascii?Q?brns/UywM1p4it/RxbQM1TP694QIU64s7aDgauzh4P5HnCOFIYPutR1pg9/s?=
 =?us-ascii?Q?wpK+J2Fd//DlI1PURpw6LggaSukTO5QV5LKbTg+21Ieu9jaUZ8tjCdMTm+eT?=
 =?us-ascii?Q?r+JyMj+OZcMbccr86kPJIQQ4WmpaSIXPcAeNqHGwvbwXoJHaPLgyDwOrr80q?=
 =?us-ascii?Q?PNmzdLmqg7UjxC1So8tCQmCPXqzuaH0t2BxgVLqzK0xTsUpenqwfoYUy7Eps?=
 =?us-ascii?Q?mQzscQociCTVL16a5UWHODAe2MkvR/53ibn/PE6yrLqXeYJPzRstYxmg+Wao?=
 =?us-ascii?Q?FIxNcrqLxHDZyHVsvKs9gUGUmmq+NcB9V+k/1szkxw6zt/wK7Gg1sbosw5hB?=
 =?us-ascii?Q?zex5/qSgrWTVjWniavxj7+64?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3795.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7629e9b3-b518-48b8-7811-08d8e78b6593
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2021 08:21:56.1440 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0XQMBbA7WZCBf7NcqFM/sVkn2bYh3KL4eEzNGLp94MTaZNj/yuEjWAdTRLqDX+bZXtA+DTrXDf+7ZrCaemlu8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2801
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch v5 13/18] ice: Check FDIR program
 status for AVF
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
Cc: "Liang, Cunming" <cunming.liang@intel.com>, "Cao,
 Yahui" <yahui.cao@intel.com>, "Zhang, Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Haiyue Wang
> Sent: Tuesday, March 9, 2021 11:08
> To: intel-wired-lan@lists.osuosl.org
> Cc: Liang, Cunming <cunming.liang@intel.com>; Cao, Yahui <yahui.cao@intel.com>; Zhang, Qi Z
> <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [Patch v5 13/18] ice: Check FDIR program status for AVF
> 
> From: Qi Zhang <qi.z.zhang@intel.com>
> 
> Enables returning FDIR completion status by checking the
> ctrl_vsi Rx queue descriptor value.
> 
> To enable returning FDIR completion status from ctrl_vsi Rx queue,
> COMP_Queue and COMP_Report of FDIR filter programming descriptor
> needs to be properly configured. After program request sent to ctrl_vsi
> Tx queue, ctrl_vsi Rx queue interrupt will be triggered and
> completion status will be returned.
> 
> Driver will first issue request in ice_vc_fdir_add_fltr(), then
> pass FDIR context to the background task in interrupt service routine
> ice_vc_fdir_irq_handler() and finally deal with them in
> ice_flush_fdir_ctx(). ice_flush_fdir_ctx() will check the descriptor's
> value, fdir context, and then send back virtual channel message to VF
> by calling ice_vc_add_fdir_fltr_post(). An additional timer will be
> setup in case of hardware interrupt timeout.
> 
> Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---

Re-send to Bo, as a new member.

> --
> 2.30.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
