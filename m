Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B09B121BF3C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2020 23:30:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3C85C22610;
	Fri, 10 Jul 2020 21:30:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8vEN7RdjI9St; Fri, 10 Jul 2020 21:30:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 364122E586;
	Fri, 10 Jul 2020 21:30:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 800691BF9BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:30:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 84DC187F69
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:29:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y3g35Ke8747g for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2020 21:29:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D028087F4A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:29:58 +0000 (UTC)
IronPort-SDR: VNbCVqB3OKETYv8tmfJ/7Zg5htkE5zELGCVAWOUU6U0zcZCLxb4vK271bJcNtJdRxnhX+TUYn9
 D9k/8NpYSz6A==
X-IronPort-AV: E=McAfee;i="6000,8403,9678"; a="148304870"
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="148304870"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 14:29:58 -0700
IronPort-SDR: fpLz9ZYm1DVb3G/tp1rosU5+LT9phF0f0wb82SSvI2tWo3sreAF8EBq+cA2to5c8Im4pDSuGcZ
 5c1nOjA+Ue5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="324812442"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP; 10 Jul 2020 14:29:58 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 10 Jul 2020 14:29:57 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 10 Jul 2020 14:29:57 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 10 Jul 2020 14:29:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HjXyOXYy0U3TSomrmqKn5C2XV7YORzX8PcpY7egVgh9bObvktP9kObhnltSzL80JZCpcxuQykqmQ9+rmQPzLg9/YnFD0qh1Ser9XDoc7I/Bmg0UmdbR0wr08uZDmYtw6xMIM6Fj/p7DZcIQSm2tOWMzYVQRxiw9KSVVBCCtnTFU3XoH1b6BaEGG1NFM1UOPdVt2RglDdoi77B1kAGAcVU1W50JSxDox9NyStwEPzcTgRnT8kMRd1o+bpDSwZHO1+cyNriKt6DWqnN+FFd5iGBV36bWZMbvddau8RO++Xuk+XszU76LW6DJ94SIBpdOgLw4w1Kpbd8NKJu0w4suX4FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yiuALPUK8lCUsMrQaJ7qKEQdrgKFGGQwCMC6IcZps1Q=;
 b=h9slfHhuh7hatz3JyW1iL0Vv017dLu3121Ll3s1kaFe2xXNjH+0vFMJcSu6ScCyln2KipqwYk5wRo3+Eo7OEaMOq3B5gimSKemOmrczFfgPRMaKekCn9/aXwziRPCKor6f8Niif+uwVkskDRsiHlbBgfaNXXZ+UvsoSKZkvvMvMnIHYaDo723UafR4mv7vWMH19S17KOqtpXnMH1pKrJzvylpnjLOuy+MvMdiH7HSw0uBwLg4hGbjbpYRtbDnSDYrwgicQ8JOdcFhBgKbElhHsSHw3eFk4AeTfLLs7wqEV+cqRr1uA3kXMWoOZYfwOYdjk9PBsX1q0uqrByPp0x9sA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yiuALPUK8lCUsMrQaJ7qKEQdrgKFGGQwCMC6IcZps1Q=;
 b=wemEiY/8Sxuzr9n5qSx3IKqoa3EYL4aNhJK1CTdXW7F07P6RXYTj+ZDT56SLJbp7vB/8LZoA3r2Excc/XL8rpkh1Mwe9XeCax4nOlcKrAJoN4PeG7Hg6ovSe0d4dj4Xwddedc8wAmpwiU0dL0W51vYpy5ZydB2J9IR+WTf+li50=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3604.namprd11.prod.outlook.com
 (2603:10b6:408:83::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.20; Fri, 10 Jul
 2020 21:29:56 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3174.022; Fri, 10 Jul 2020
 21:29:56 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v5 06/16] ice: Enhanced IPv4 and
 IPv6 flow filter
Thread-Index: AQHWVlXqwRamFzzucU2O4ZlJZL+HNKkBVcOg
Date: Fri, 10 Jul 2020 21:29:56 +0000
Message-ID: <BN6PR1101MB21452CDC338C1E057ED8DFEC8C650@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200710010644.33817-1-qi.z.zhang@intel.com>
 <20200710010644.33817-7-qi.z.zhang@intel.com>
In-Reply-To: <20200710010644.33817-7-qi.z.zhang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c2c9c686-80c2-414e-a80b-08d82518645b
x-ms-traffictypediagnostic: BN8PR11MB3604:
x-microsoft-antispam-prvs: <BN8PR11MB360469099C81B480446DE87F8C650@BN8PR11MB3604.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Wq+tSJNZoWOh/ogUZg74Jo7o3QkpO1NBBUJ6zJANvDrqOnIHTMGSq7eiOoRDiQXHncwy4pzpoE0kkHymd3vo92bl/jgRRCbLwF5JIUikmc4pR7bcJcrL/wJWuVFn22PBjL0hQ2XsHEWz8y/hcQ//W6raB3dFBK9mkw9J0jmfLkisnTFcUZgGMA/HBEMbQ3SG1ybAf2t+ATY+hwPg6HZvhv08U6cZChceEOsV9OIVDtJV/HwRxoJgQGMypOldYxRU7HZFdzh64osrVpycs+5ZB1p2ax0JCg7YwP3ES0D/YIk/Q/88LS4qudwMe7zoh1JV
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(136003)(346002)(376002)(366004)(396003)(186003)(7696005)(33656002)(6916009)(71200400001)(5660300002)(83380400001)(52536014)(53546011)(9686003)(55016002)(64756008)(66446008)(4744005)(26005)(6506007)(478600001)(66476007)(66946007)(66556008)(2906002)(316002)(8936002)(86362001)(8676002)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: J6h3uE7lK115YxVL3XrI0KuNgXytAe/lCo0oMHm6luLR/VnI1bQr354shwgkYV3D8el5DrNEr+VMlvKP1CThhOA81UcjpinFv9T9xIzTVMBRiDelHNeB0pKxdwdU79J5qf4i6kemoajSYuBsbHXEVNoL/UZG5XQcKkyx0mySnkUHKZxiHBF30DIZ53zlFWGwPqTTI3rlgZKQFKANkaFYTeSmar8KereOiNYmvrrwbEfzZSP01AQ41ghyDVrWPLjFDOO6mcFaJZ8ohMDaHDZWy2DxM3X8VkAoFa2IbUbtXbXzY9et1Jug1iK6vN8jVyDCfUvgEMc3bUAGi2hNqH/QvvzVUv4JUi7T7PcGLhYHN7ZiAgZElQffNWoKjA9y6kF26jkcNAeyry0A3oWvHG9pCNvetUewT4rDLgRmS+bAg2GE2X/YPFBSZLyZNkZ2lfOLJYly/ONAjUGgpXql2iEE/AtBBT0R1jgJD6fWgf7W/4iGLUs8PsUSkJM6f+SIvPBv
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2c9c686-80c2-414e-a80b-08d82518645b
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2020 21:29:56.3997 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VQDZVwDASD4+M3Mv6SAf4Iuxnaj2mQHoykw77cpWK0TbGPBsUeN1IZuIsLVUH4IEqWfis48DlK6+1kSlgo4kOi9nUcr7GuoALV/k6UjDt3c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3604
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S48 v5 06/16] ice: Enhanced IPv4 and
 IPv6 flow filter
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Qi
> Zhang
> Sent: Thursday, July 9, 2020 6:07 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [PATCH S48 v5 06/16] ice: Enhanced IPv4 and IPv6
> flow filter
> 
> Separate IPv4 and IPv6 ptype bit mask table into 2 tables:
> With or without L4 protocols.
> 
> When a flow filter without any l4 type is specified, the
> ICE_FLOW_SEG_HDR_IPV_OTHER flag can be used to describe if user want to
> create a IP rule target for all IP packet or just IP packet without l4 header.
> 
> Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_flow.c | 111
> ++++++++++++++++++++++++++++--
>  drivers/net/ethernet/intel/ice/ice_flow.h |   4 ++
>  2 files changed, 111 insertions(+), 4 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
