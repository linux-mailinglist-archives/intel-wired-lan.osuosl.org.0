Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E58410F3D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Sep 2021 07:11:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 09CB640367;
	Mon, 20 Sep 2021 05:11:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U79TFoStDq9V; Mon, 20 Sep 2021 05:11:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C263840364;
	Mon, 20 Sep 2021 05:11:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E2ED61BF352
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Sep 2021 05:11:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D0FE682443
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Sep 2021 05:11:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LxeMi2MRP5ug for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Sep 2021 05:11:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A21DD82438
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Sep 2021 05:11:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10112"; a="245471888"
X-IronPort-AV: E=Sophos;i="5.85,307,1624345200"; d="scan'208";a="245471888"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2021 22:11:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,307,1624345200"; d="scan'208";a="435427179"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 19 Sep 2021 22:11:28 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Sun, 19 Sep 2021 22:11:28 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Sun, 19 Sep 2021 22:11:28 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Sun, 19 Sep 2021 22:11:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hnqHZVuqwqaTKvu05T7Dm0QDU3W1Lveop0Wds+/ZYDGpobVzPUKuz73LOXa1RDpw0sxyyH6ZY7hojCZWsybJwEb+XtrSI0dRHtB9azSqELwcCvNtcPuMjkSBhg41nXUOxoLwMQfTb8Y1NRI5dRtiAGcyrTLvjAqGxv+ztHqVyQAnWBGw3hh+svgpyDUpjCKjv3g2YlJVw3ZISm3K2rx3AxQtnwNgYTj3yKgYbogVtH0o50vt3sBJ/IqYEqH0tniY3gX7XHmd9/ItXfCQOizfqxt68nFdKRmc/FEqg09j93QWmx2ljxC7u0EVQzb7KAxo0lTCfqfUNsc/p7Nsh5cc4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=O5DND9irS/+au3L+mLPWX8P8qNdtQaZNP1dZNu1kkPM=;
 b=hhkX4Q0cA62i76zM5MdxqClU0ao2YmyNuUqQaVSKMfuY9CbKyHQ3ima5fzOTL1+fVXcqpopu9YLgb7QcwIFkg+a8FIfxH7uEZXLzJhSfe9Dpk2VjA2c5iCnksB2iScAGksd2MTflcT+JcJoYOi9v+hOSJsgiPccWJQMOM/07X8X/f/cotZ9Ybc8gD0MzOLsYux7XZ6ieoVpMrxfIbSnHUfpDAPX6qup78w5Wx8cqv9bjk+EWcDiQ9pWDDCcQQ18lVr1RVuRm6Gto+PYx2V/tVZFVLTIH/E6PBGobnKJgauytjNMnFQUXzDGPI+z6AAeDlHxB4fvbQlH2w0AtVEwcCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O5DND9irS/+au3L+mLPWX8P8qNdtQaZNP1dZNu1kkPM=;
 b=efE95l5V1+kyRE99mbNmkgygnEcM3OX/1KwssAkpmUYKYt95uNCprp6cg6w/vworVoE9tN2Z6tG6SM2Y8aFwFfCeIv7VkghfNWDTJOuHUzHHDA/uXKgQSHbjPVaDXNRPc5n7Xzew4dkOzDOz15YKL9ko9qTJU9U1mNVkjTOWWHo=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3205.namprd11.prod.outlook.com (2603:10b6:a03:1e::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.18; Mon, 20 Sep
 2021 05:11:26 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::90d0:abd2:bb85:56e2]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::90d0:abd2:bb85:56e2%3]) with mapi id 15.20.4523.018; Mon, 20 Sep 2021
 05:11:26 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 3/3] ice: fix software
 generating extra interrupts
Thread-Index: AQHXmIVY+SvgH6GUMkGgjoTxhc2Px6usisBw
Date: Mon, 20 Sep 2021 05:11:26 +0000
Message-ID: <BYAPR11MB33673D57E74AAA0546CE2060FCA09@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20210824011259.738307-1-jesse.brandeburg@intel.com>
 <20210824011259.738307-4-jesse.brandeburg@intel.com>
In-Reply-To: <20210824011259.738307-4-jesse.brandeburg@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3a0a6987-2951-495e-9896-08d97bf518bd
x-ms-traffictypediagnostic: BYAPR11MB3205:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB3205AB30E82BA6045ED9C8FFFCA09@BYAPR11MB3205.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: swpyc/oQXURoOxDwCChrOfs1tuPBfzunwyB+oxJvJxmCp+Ip5Um8WxjPMrc9z18sZEjYgQx2ZgQZq93lf7HIQqSjWXBX5Pow/sq5kDjKKBiHpjKrWfB8PGwNbd3wO1Ny16LMBfpCVF7Ey9qLxm3bHPOhRh03SoZz4zQSHc8txCMTDmKLcZ+JNunrWeD0jZWiD2AYjv1+gNMYLSHXtQGrD61z9C4rqkHzIOMCqxSVhM3i9lnWFmu2B4bneoyxRwkVgQ0gNMjqgRMYctc5fAjPgPXUgpmacbEcmv1mYJebYqwLWAPBv1d3nEA9xwVj3TfgLA+pOLuCwUUcI04Dh8LMaBnMlkyppOSz2gmBri+a9tgznqoqkZmHdkHvc2ejQnbU5urr1J5bq6XM3iSVEgN0Tvz8AgctOfDKpRA0ucW95vCYztonULf1nWOLAiXeeuI+rs8hC2pBAacTm7DOeypINNkkhtSzajI1X78ndJ2CQsQ+GFZ3LdAqaQVjPNk23P5XV3zN2Nwvy8hoOZmXxRIa/OoJCpWQY17qx2S0dEuqh698vRw1LNvXyN/jY4zbWiqhJStPguh+1c77F+UpejMsJx3cqR+ADZ+GxcWydq9x1qaqLcjfmyBItsrAI/+nfsvmBpXBQrNVBvXZjNuTg6WSeg60FswAZTG+3fy9tTisuXKTvDeSCm2rU9jvbbXKYbbGcbNYcNMX+X5op2XmUmUcRg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(136003)(39860400002)(346002)(396003)(366004)(8676002)(8936002)(55016002)(122000001)(66446008)(38070700005)(110136005)(64756008)(66476007)(7696005)(52536014)(2906002)(478600001)(55236004)(9686003)(76116006)(66556008)(38100700002)(53546011)(6506007)(66946007)(71200400001)(186003)(316002)(83380400001)(33656002)(5660300002)(86362001)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2yNHK2cxDnuokZQlodr4181GXNtAd9CYHDtK1IR85DJ/himLq1a4yvlcv3tM?=
 =?us-ascii?Q?eFQxKg251LJDrpTi7a+Ognf9qrmrWWlF52obiOehJ5KWZItyqUJWldqhq6gl?=
 =?us-ascii?Q?GeRVE3BSfauYloG5LFMzO5ngbWg2n4+5a6vXP0zv2TXHTIxClw2m0niaNrE4?=
 =?us-ascii?Q?oZWJVhusTF5soKXoLg9Wgr5XHQ0YVwXZ8oUmPPBoxOarAKFCs5fk5ikifZq0?=
 =?us-ascii?Q?DebXXSKhIxc5SmFBlKIIQeHvqWIrvSimDhRbvEQtJHb+QZbmbfDrzwI2v+5Z?=
 =?us-ascii?Q?AsAOzdcWblT5Dlvl/Ei4U7pyE2XobJ3dqIU8+H9D6qCudnakpfgfxuEw5sRm?=
 =?us-ascii?Q?ttzz/yq02zkmS8DHZXiLFXQZfTSFMe8+ZsmqDyGki7dHiLtSelKn/D5jX7Wj?=
 =?us-ascii?Q?CWapUaCuq5aSJ+gBcgazG5oBlOgIi4UnZ55PJn+y8XcDPuzYrMZNK3g8sIcb?=
 =?us-ascii?Q?HZMsACvJ1KXBUuzP3BJwDVYwuKZSlJoYoir/idc/3q9FRGuQQZS4SUC0kURM?=
 =?us-ascii?Q?hBpvvYXriFYZExhg9IQiJrAlb6/NwBIIsvrTf8LP1rCJHcwO96GewL1MxCmB?=
 =?us-ascii?Q?MyS9S6vFMypHJB2nlr46V4blgv2hTAKKDdrdpjwrklLj8L6jxqhkANkH4EFA?=
 =?us-ascii?Q?dy35/bWNVVR+zpNbwM1pTT3d6lChUibB7aIvvPLeEfxIJ37JhyRarvFP+f5K?=
 =?us-ascii?Q?vSTeqUCJpnBlJ4QJg8PH2xSFe7pFCt9dqZoQuAYkRi93qnA/z3UefrspnUw5?=
 =?us-ascii?Q?kHH6QXDS6tqtpYbYmVg9CC0ZrKMg2KvxAoSESu4UIgdajeKztCX+gmUozg9A?=
 =?us-ascii?Q?bj6WClb5PPrA/hAriuffjMnxLIkvujyHYeKnv2cL02fW0haAHXXUjHNDn3sf?=
 =?us-ascii?Q?jY6wMiv7kA7CbLBsl6dbz3mvoeoOaq/M2rALVQt8x6SVJMTGMF5sf+R1GOxv?=
 =?us-ascii?Q?10Eh7mPaxrPFhVFJD4DKeM3euIMFZLUTAa3CPizgnnLd/t6HLEGNoloV3t35?=
 =?us-ascii?Q?USj4CVbrTYIheuC5oMfxJvodyB01eJBE26+iFaR8LIpdMzfJKMlzlyNZ7XiW?=
 =?us-ascii?Q?i9ezxN21XzJBpVsWFZL8TF/v7QIWlsn0/12OFHyB1W9NUX6gW0/SEZM9jXv4?=
 =?us-ascii?Q?xOHFLi6mKsPxumsfjTrk1jvIiV3UiVOHKpAD7InmLwz3+xEuyWTMEK01YJ0H?=
 =?us-ascii?Q?gfQVje+iVLrtf6w3TTNvmBWCtkaEHHabjOTHySVqKs5z6KK9E2h/3gF//S5A?=
 =?us-ascii?Q?cKGzLuS031/oDptZxZf8u4K7CznUcyygd8fECCONdMevmZgehPx3WGkfTMi2?=
 =?us-ascii?Q?kqI=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a0a6987-2951-495e-9896-08d97bf518bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2021 05:11:26.0359 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WW0o2/cYpIW6e7FNnfRiHOR6VXERdqsoJDMLxQ2pw3LqOHrnQGXqYpeg/j2UWFC3Ckv5xWoayCvz0Ia1NEfPmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3205
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 3/3] ice: fix software
 generating extra interrupts
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jesse Brandeburg
> Sent: Tuesday, August 24, 2021 6:43 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v3 3/3] ice: fix software
> generating extra interrupts
> 
> The driver tried to work around missing completion events that occurred
> while interrupts are disabled, by triggering a software interrupt whenever
> we exit polling (but we had to have polled at least once).
> 
> This was causing a *lot* of extra interrupts for some workloads like NVMe
> over TCP, which resulted in regressions in performance. It was also visible
> when polling didn't prevent interrupts when busy_poll was enabled.
> 
> Fix the extra interrupts by utilizing our previously unused 3rd ITR (interrupt
> throttle) index and set it to 20K interrupts per second, and then trigger a
> software interrupt within that rate limit.
> 
> While here, slightly refactor the code to avoid an overwrite of a local variable
> in the case of wb_en = true.
> 
> Fixes: b7306b42beaf ("ice: manage interrupts during poll exit")
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_hw_autogen.h   |  1 +
>  drivers/net/ethernet/intel/ice/ice_txrx.c     | 26 +++++++++++--------
>  2 files changed, 16 insertions(+), 11 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
