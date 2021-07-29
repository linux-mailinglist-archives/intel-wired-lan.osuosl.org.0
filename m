Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A9F3DA815
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jul 2021 17:57:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3B85E839B4;
	Thu, 29 Jul 2021 15:57:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BnVwfCNeAQ0H; Thu, 29 Jul 2021 15:57:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 50C308367C;
	Thu, 29 Jul 2021 15:57:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2709A1BF292
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jul 2021 15:57:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 111B06063A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jul 2021 15:57:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HG4_aPF_pzhH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jul 2021 15:57:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 39BE260A64
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jul 2021 15:57:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10060"; a="200091666"
X-IronPort-AV: E=Sophos;i="5.84,278,1620716400"; d="scan'208";a="200091666"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 08:57:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,278,1620716400"; d="scan'208";a="518324906"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 29 Jul 2021 08:57:01 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 29 Jul 2021 08:57:01 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 29 Jul 2021 08:57:00 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Thu, 29 Jul 2021 08:57:00 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 29 Jul 2021 08:57:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HiF9ipbnAMw7zj1zb3W2AwfnPAkv79NAotYwnUS7MeqBa6OvEBweT/LgE6mnQawXvoSAJ/fb7mOOtUJeqkgRsq6zD+8yWiZHLcNGbXY2bDQ078XXxEVP7Fnz0/UvFhE/zUaB9BBe2DkMTmg7wT5+Ga+jRLY8a4aNJD/zRjeIefoYHxfzG3hCeB440TbtsTbsiBO3fToVthhWmzrYF0aUuSUOtpSlCZxb38k2R436ylg492filK/+BZZQwGik0MMo68jiW8g6vOh/qJRPS0MLr0HXAy3Z+P3WkLWszlX/e/3/ja77vDKU18z/sii5DUHsTgQYSEHFS3R95UYXDQJeaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8oD5bb52Xc2wv2nGvdk6In6Ohmre8LajbmvBBnRArq8=;
 b=b6ficKh3hV1ejsR0xagW8Uuby9RnZZCpLMjmRJtv+Hvwdw8Jm5TEmgsk23RvmlZM0PvyfbLmrkO6HijbSg2ZqwgvyRLoESEHQTScznUUlpilbC67iBrYnTpbW3EHUB+24Jk9pZFN3kkGZ5K1M241oqJAwBye4Cx/6OW/Bbq/D2pKAHANDyzXQaiNn9zVgpOUVenkkniVW7Pc8D1FaE1kQwNQK9RCdbwoK6xKW52sjEw1hADaz7S5PjpLVGJJlFnl+PRGcfLAHYJYCAHNUMjQqoyt0gl8LVuNdLVhS3FxO6liRAcXN3/we9ePNkIgDPlZnuaZXkuha0/bI9hG1vDYEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8oD5bb52Xc2wv2nGvdk6In6Ohmre8LajbmvBBnRArq8=;
 b=vR/ih8g0cO04wzKyYoItpG/CDiVAwOwnF3eZuLylzHbIegqq8k6G4GFS7fUY87E+8JjRA5ZHYk/D0HjOeeW6TCEF7txDS2xuik5SfEqm7yCm7NPEXxy1O5Jd7rLPmdCoLIVIPlwNBJ3R5Adst+clHPPG+tTS5oalGTmwGlP3VGU=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BY5PR11MB4195.namprd11.prod.outlook.com (2603:10b6:a03:1be::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.29; Thu, 29 Jul
 2021 15:56:59 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::4d0f:77de:b513:595d]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::4d0f:77de:b513:595d%5]) with mapi id 15.20.4373.022; Thu, 29 Jul 2021
 15:56:59 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH] ice: fix build issue if
 CONFIG_1588_PTP_CLOCk=m
Thread-Index: AdeEki1xGtTNTgPiRdKv4ThQM50ONg==
Date: Thu, 29 Jul 2021 15:56:59 +0000
Message-ID: <BYAPR11MB336788636E4860CD17D62CFEFCEB9@BYAPR11MB3367.namprd11.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: osuosl.org; dkim=none (message not signed)
 header.d=none;osuosl.org; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: eacbc35e-71c5-4b05-e540-08d952a97fae
x-ms-traffictypediagnostic: BY5PR11MB4195:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4195ABC2B86F5308B22318FEFCEB9@BY5PR11MB4195.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0X9OXkaShMkAJkGKr3Oeme/r/gSRiMSooS4noliDPppXj3xI8dfBrozCiWEBETkaFoQd4ZuxuixFpw5PTvJbmVRxJHGSHxT7ikxN/qsyUOvF0fsWHLOMuLPoxNXPC6y16MnX1Xj7OvKZmarD3OhUi9rDwHaVvP87hNvzRA/2nuu6YBb0AEPh84iVyOkZkrlxsvzvZyMsJmSpqQjRoZO4HLLSG7rvaki1MW2AfBelT3te6GrkmlD1a2EX/Tfnm7rVxTf9Z/260PbSX6/2OruBgMmfN1JVwHgeUP212dkN07sHg8TIzgxWZRy9w0KlcFtRpHzl++VdBrs9B7i/cWyDyQH2YDKKTgRusXO4z4H2QNPF+xCKPFGusWFfDhLOdO8RJfMqnBb9gXj/uxX8D09P3H40QDoNM5kat3Bzwjcqngxy8Mx180V0R1hLwbYm8p/lgUTgpfT4t2sfWgOAdJVxCXvytDnM2p5Y2S3CIU0afIkNfCdzvC0Rz3Ld542oamGHW2UEdG1TZ13fR2RFkqg3qXRyhVeb8EhScmJ9FnraQhmxXZUbt26xsekUfXAX8FJ82JUO8CziXtOJmFnTiLbi0W3bu0F+HhfD1IRwmxgMxCEbYkADbRC7F0BW3P0klevN8MWsJjHFCwxpNfV0DnFkLr++w8YQn8LeblJg6Eva5pLzISPVC+/eJev39bTNMRYp1yhKDe78uBlStdU5dcyKCQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(39860400002)(396003)(376002)(366004)(346002)(83380400001)(8676002)(7696005)(478600001)(5660300002)(86362001)(186003)(33656002)(52536014)(2906002)(55016002)(26005)(6506007)(53546011)(76116006)(71200400001)(6636002)(9686003)(66476007)(110136005)(316002)(66446008)(64756008)(66556008)(66946007)(8936002)(38070700005)(122000001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8T0NMTluae2YgESLm4JD0Aq/AiMAXiUOZmoQwMEtjNGK72f3dNeJARcJBlly?=
 =?us-ascii?Q?5rYrCxY/fdYodYi8OeSjlKxAlKASqhd0HMkX1WwzwUutYTU1K7nkF/xBSV4A?=
 =?us-ascii?Q?rOwbZ2UmJsZQNvNkCfWHQO1dfxF88+lGmRpCnB8e0GUs9o97HmdNBe+dUHI0?=
 =?us-ascii?Q?DrOzeqOYKck5IjWAB3BP9+prTmD3fzR7n36+ZOq0WRA8wCt+L+n7JnAfzeff?=
 =?us-ascii?Q?LHfeVd9EK2dUabaukL7cLWQpHfoSVDI7jamGvdJGd/sYFhAwSBdo9Qe63tSY?=
 =?us-ascii?Q?HbxTOKtSJJB67U+gbGjwB9YU5U5RnpMyNnk/DcvXx+K8bMDzTe45nbA+r730?=
 =?us-ascii?Q?Y5B37ztaDnpNaarOIA408X1fbPZ4m18zebVsOVPuqI9scEjMycDu6l01Gz2q?=
 =?us-ascii?Q?90A5l5j71ETaoq/6MDrg73yKHtNnN1NnMF5/J6nMcigMSqqhDf23RIefrME8?=
 =?us-ascii?Q?hNyb40VJIm9ckteqljIOXSF2UIBibG3nyB6k9P57Cek72S3NyBtHY03NIXVJ?=
 =?us-ascii?Q?UY+YPdKvTO4LZvBJSCKUeBnSVy1HTikiFnKAK6ZReu4yfqJqmaw63Gqc0KG5?=
 =?us-ascii?Q?ilOvdGO2zEfMigpGk+r+q2rNddo0HB3kbMQGiRNQRELZhPGLOGZ3JcStPi+U?=
 =?us-ascii?Q?bxOAy5uEweQzS7iLtyPBH4C3qnORg1egsHEZVUhbN6IB0Rdo0BflU4k8V0qa?=
 =?us-ascii?Q?cl5KRgUeBZWomZPQFepSoAyTOS1ZcNWQ1fWkTl9QLyTvnpBU7zZ5RvMlXguH?=
 =?us-ascii?Q?CozvVRwB0SiXRIpoW065daAUg7b3ZG4MUrcYcqmyxgXQQeVrO/NOv0kLE+0e?=
 =?us-ascii?Q?bffuRNulhWhxILqOdqzZlCi9TZOJ6eNhXoaffIM4xL34F4pBqBWzvfUMtZdl?=
 =?us-ascii?Q?i05ENdzjUEwaWQTAljJhqKrlL4aO4TpW0D5vYg+jnYjzqqQ5e/E7CRyziQxC?=
 =?us-ascii?Q?P/iUVBxI6lDC/4bDW4hnU/RT22B3QYIg3Cq6UxpLqX56gBqv0/wpGMp109dv?=
 =?us-ascii?Q?nDpda3jcf1Q9BA94txIvg9r4ps6dfyl0+T8ibRpp2o7ZFxLZdII3+5qAcFSZ?=
 =?us-ascii?Q?j1hvYqGTRsHJN13nCQGuELq9iKxuvo13zRJ9OPC0YoJGK+MkNQeGjKIJYb42?=
 =?us-ascii?Q?DwotqgfhRoQQ7rD+EHWshPQp5nMOelJ/MESt+LKUSasoZ0GNM0lmlTG8xTH7?=
 =?us-ascii?Q?Gp8wrST1Y80y4+IqRWymCRHUUZX63kHaiBI1ZybRyD8UJ4Ls9njVZBm5GK/V?=
 =?us-ascii?Q?Aln7E8gucYml70xwX/zxsFLjHZrjWuayVQjfZmD+9QOQzEcZfyDdj6yqhMfb?=
 =?us-ascii?Q?Y2OXe3GUjPTHoivQFhcVupSe?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eacbc35e-71c5-4b05-e540-08d952a97fae
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2021 15:56:59.3265 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: chuaXi2J6k8z8PV9/yG5R8AZUhYH+MzLGz+B62O0X/PYkYvRbpnm1UWY+V3Mm4S/oJsrnLbDfFrlfBvNQS3dRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4195
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] ice: fix build issue if
 CONFIG_1588_PTP_CLOCk=m
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


> -----Original Message-----
> From: Jacob Keller <jacob.e.keller@intel.com>
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [PATCH] ice: fix build issue if
> 	CONFIG_1588_PTP_CLOCk=m
> Message-ID: <20210709210726.224848-1-jacob.e.keller@intel.com>
> 
> If the CONFIG_1588_PTP_CLOCK symbol is set to m, then the driver will
> not compile ice_ptp.o and ice_ptp_hw.o because it adds them to ice-m
> instead of ice-y, and nothing includes ice-m into the final kernel
> objects.
> 
> Fix this by using the ':m=y' so that we always compile the files and
> link them to ice.o when CONFIG_1588_PTP_CLOCK is a module or a builtin.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> This fixes the compilation errors that have appeared from lkp on Tony's
> dev-queue. The lkp complains about other patches, but the root cause is this
> issue. If we apply this, it should fix all of the lkp issues I've seen so
> far.
> 
>  drivers/net/ethernet/intel/ice/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Tested-by: Gurucharan  G <Gurucharanx.g@intel.com> (A Contingent Worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
