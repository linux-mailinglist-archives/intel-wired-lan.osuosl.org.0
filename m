Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DDCD625E432
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Sep 2020 01:30:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 95DC486F51;
	Fri,  4 Sep 2020 23:30:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nJpkDDcz4E2Y; Fri,  4 Sep 2020 23:30:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B2C0686F40;
	Fri,  4 Sep 2020 23:30:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AC92A1BF42D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 23:30:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 953E2204DD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 23:30:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jaeNkRmse6Q8 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Sep 2020 23:30:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 65563204C7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 23:30:41 +0000 (UTC)
IronPort-SDR: qfOey3s1uMhshepzrK7FCNyKVXNLxsSIcTD1kLLFimZdgIj3kDanE8S7wvzP8M2HwBEz492m0a
 YSpNrtWLk/ZQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9734"; a="242643077"
X-IronPort-AV: E=Sophos;i="5.76,391,1592895600"; d="scan'208";a="242643077"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2020 16:30:40 -0700
IronPort-SDR: N8sFwVKKmoHHxyu8bkMSC456nv+dryjhGbrCF+mBvE6nsjVI2IxxjkEagsk8ueg4ThiblosZq5
 T3j16wTsRknQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,391,1592895600"; d="scan'208";a="284647353"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 04 Sep 2020 16:30:40 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 4 Sep 2020 16:30:36 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 4 Sep 2020 16:30:36 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.55) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 4 Sep 2020 16:30:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F/Uqlp7FaoABkrE10No6hix8c+2z84BWbXmxwBGaZmENwwGCM/BrElRbiFGrbFP+3ANODvF8+/OTQoOke2x2FV67v3dN+lKLEbX0g/sa2bZ4uHdYpFK42C4bLOUqKrduY7Ajcg2ONepGeVLyYjLz8Cc+C5H6qWeIUYsRIVQF3pCFkL4jonk4cfrTZb9WaaCmbEcQQbc98iQNPCsh/o2gDuXxAgstzqZbY3okAjrzn2OU4ikKu/kO+JcA7m2ioNmkm1zk5sLRPUaWqHc+ZHfBAj9M3WvEt28lomLYDsynDEYgY4X/+WTo3xTknvo6+jTPOvXs6RIYajYXLZmKCmUA0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h4s+6LDWy+NHFyzgs1PA2jBT/WfIfjDbbmQz71f02AY=;
 b=QSsS/90EHUbdni328X/gCt1EgR+ldVJ7VwgBcsSB45eFp07qBrOfoomNUQC4MrlIm7TqUJhLDfsfVDavsYCOC4UEJIcevFoxVRH/n6KfAS4Yhe0pmCxsdWJrEB/UX7okFedCSSNQm1Byy/6/BgnPaxfjoxm4PLFvFgYnWFfn0dqhxzuxjjlJtFoTUhMN9TCHPYFfZumCoBv19b07YGwKGco33pK+/gut28M3YyTrhH1eeW7N3W7UKvNQjGpZdJjMnDTiKPv4f7vtq/+zi0wWfRXpXfmQKGkcR8irxue/rSEqpPikk6LrmIXK/NhFrb/MM6jQEJ+YnVKigFykt3w3dQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h4s+6LDWy+NHFyzgs1PA2jBT/WfIfjDbbmQz71f02AY=;
 b=RuBoYnT2N2a7keJtOKR4udeV8uIcB0pG+xDELPZ9G0fZIfpQL+Tnp+pj0vd6+iOIIy9JHV1ROLTtBTsPc4wSF9wKL28d0hjnO41dN/kTR3l0gb0MxJz9D8UHHapwB8awmLb1BV+vb/Go/1azyFLnFzhu6odaRqN8UPhCDfycH0s=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB2571.namprd11.prod.outlook.com (2603:10b6:5:c7::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3348.15; Fri, 4 Sep 2020 23:30:27 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f%7]) with mapi id 15.20.3326.025; Fri, 4 Sep 2020
 23:30:27 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: Li RongQing <lirongqing@baidu.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "kuba@kernel.org" <kuba@kernel.org>,
 "Bowers, AndrewX" <andrewx.bowers@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH][v2] i40e: optimise prefetch page
 refcount
Thread-Index: AQHWZya3EZdEndcOM0awGjMzjhp0calZWC+A
Date: Fri, 4 Sep 2020 23:30:27 +0000
Message-ID: <DM6PR11MB28909A8D75981EE55BAC8CECBC2D0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <1596191874-27757-1-git-send-email-lirongqing@baidu.com>
In-Reply-To: <1596191874-27757-1-git-send-email-lirongqing@baidu.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: baidu.com; dkim=none (message not signed)
 header.d=none;baidu.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.215.99]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fc741bd3-cfc5-4899-78cf-08d8512a8151
x-ms-traffictypediagnostic: DM6PR11MB2571:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB25710EDF9A212A5CC1A93A00BC2D0@DM6PR11MB2571.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:317;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bgkHv6MDpUnY1YARB7ejd451kZhrIOGY4HhENjI0MwhrJJGT8xM4KKGOh28oiBFzkocuD0Qgvm/YJa7uvUcHWFPmbOtY1YzYVtdOEgydz0j/NhYf5ZsryMDk2fsPP5ciTY26Xo8aVU4k/PCNd/wJw58x7aCjGAN7FMdLZUNiq+51AhLXAJzPx+wDfv0Ml3JPYSIJ5RLWTYRCq8GUGBLueich9BUhol1n2Ba27yX79v5O5Lq1krL0pbLNBOAk5eqRtYWLbpREdXMn0dsUc0S/h7ZwvkgsSKZsFaeYfVvcE0OhAgIGifZKgRz94l+8hoOy
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(346002)(376002)(39860400002)(396003)(366004)(66946007)(186003)(478600001)(64756008)(76116006)(8936002)(66556008)(66476007)(66446008)(8676002)(86362001)(33656002)(5660300002)(53546011)(71200400001)(52536014)(2906002)(6506007)(6636002)(316002)(26005)(7696005)(55016002)(9686003)(110136005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: vdQVuKpWjywB+TfNbSSZ00MMK0xvCtuLZVWhtpVCGAmPZHi8P6qQMk7DQGzGsZRCwak+7iuUBIz4y97HeQZXGcZJAQRzlFe8/dG/1qTMTAQ+Q4mLfvAxW9pXw9OW5SReRmDiqu3syMAEWYaRrXc5pCuL/h6RxtX1EKN1fCtL/1qZxKBitEz/oys0tttbUSb/GyBLxToPApSfM+TFDQQfU2aCZJP5aditz8nddDTmBSj98katvp1jdnTPljC+pU3SGDn64T6AqnbgiGMDqBqUfZ2PgIN/6wxr55qBMapNbPfzzWOi0WOUFR3l61bGuGEMljUuQERrMGGjRqQXQA3tbdF3/Z0TJqI0Dko1irCdqVmqzJO1ZYquvlf30/HB45sOqw0uY/fJ/EC29P2Xj68KSjf13XnPFSawmxsnRpbF4uGCXpsTSM3sDJ8cHDlbZCJhMt/q2WoU+mvHDKut49sj8E1HHTQVvbkeB1PACJJ9irnI3Pqo3p9TfhLRpc/QKk5dKOoJKqLONT+av8Cmvh6uTeZbO/7SKyextdMfJrgxqelQTZTYmencaoGHVT9WyNaMMr22R9U5Eacx23sBm0Kba1Ni+I4LawyM1W7rbIBNIbQ6158k0/qNwNyT7D1c3AJ8RZDN8S4Lgja3Y+2voWJluw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc741bd3-cfc5-4899-78cf-08d8512a8151
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2020 23:30:27.1462 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5o+6gH62iJta1bdm8feZ6ZWuRhyAz+ODZAr2RoMsA4azkRlMDX8TjVAu4WoTeigpI4uFFiFdBJ2v0chbOu/ytA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2571
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH][v2] i40e: optimise prefetch page
 refcount
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Li
> RongQing
> Sent: Friday, July 31, 2020 3:38 AM
> To: netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org;
> kuba@kernel.org; Bowers, AndrewX <andrewx.bowers@intel.com>;
> Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH][v2] i40e: optimise prefetch page refcount
> 
> refcount of rx_buffer page will be added here originally, so prefetchw
> is needed, but after commit 1793668c3b8c ("i40e/i40evf: Update code to
>  better handle incrementing page count"), and refcount is not added
> everytime, so change prefetchw as prefetch,
> 
> now it mainly services page_address(), but which accesses struct page
> only when WANT_PAGE_VIRTUAL or HASHED_PAGE_VIRTUAL is defined
> otherwise
> it returns address based on offset, so we prefetch it conditionally
> 
> Jakub suggested to define prefetch_page_address in a common header
> 
> Suggested-by: Jakub Kicinski <kuba@kernel.org>
> Signed-off-by: Li RongQing <lirongqing@baidu.com>
> ---
> diff with v1: create a common function prefetch_page_address
> 
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c | 2 +-
>  include/linux/prefetch.h                    | 7 +++++++
>  2 files changed, 8 insertions(+), 1 deletion(-)

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
