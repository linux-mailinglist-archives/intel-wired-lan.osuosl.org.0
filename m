Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E3B1EA7EA
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Jun 2020 18:43:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9AFB687B77;
	Mon,  1 Jun 2020 16:43:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5XRbqW-jBP8J; Mon,  1 Jun 2020 16:43:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E786B87B6A;
	Mon,  1 Jun 2020 16:43:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 419881BF2BF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jun 2020 16:43:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3AE5C87B5E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jun 2020 16:43:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d01pDmKtJnrg for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Jun 2020 16:43:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4F91387B5B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jun 2020 16:43:16 +0000 (UTC)
IronPort-SDR: aU0KlR1l85brS1uhE4PfHTwzsnjPlr7LIcXrZTR6IGblwAjFXirpYRc1FBvwXaS33bmok12Opa
 ZvhZ29mgSxHg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2020 09:43:15 -0700
IronPort-SDR: ffpSnDa8IipRSmPqIirHXQcAWZjIrWz+8p0pH5GyuNeUQsEc/0DU8tOy1MxP5DW5GJbd2YibfR
 gmZmktJa38Uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,461,1583222400"; d="scan'208";a="258011443"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by fmsmga008.fm.intel.com with ESMTP; 01 Jun 2020 09:43:14 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 1 Jun 2020 09:43:13 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 1 Jun 2020 09:43:13 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 1 Jun 2020 09:43:13 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Mon, 1 Jun 2020 09:43:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n/uzjGqLi/da7/s0XE+C5KbXgnh1WY1HwUowCxWiy+IqTiHnpuEjpywjsdl8QqHzqO3loOIm6bEypIip3k4i72Y+IjuQuoFUcT2JMW5/uzXtZZmLsFDy82fu3r4MlKDCWlyM8hn8OkYtR8x/XtHbzV0TLICgyKSjk+vg5/QbQ+6Z6PFWgXqjAeAYAP2+CYSY51tkc2vdBg9veyYexkt9SLN5hzydmwJNK4iItbOf/5OUe2we/EHzv4Enyg/jk2iX/3nM6nkqQW3lNPOxak8r4VPTYZ0pvvGV+oslX0qH7xOG1lbzZRFcEbZnrrP6DQyonfgDbfLRft6sWerdwJqelw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vja+0r4G+18kfYgDxfGQJXPxi4+qgH0rHsnCs9y5wUg=;
 b=Whfmx6K24LhbNIQakJc6dxZVCNBzUbU/wzDNwCrVKA0DmRwz4M1+WYyvEWrF0D2BlRm55ItK7dgWpSbRuTMn4P3nRw1YsQKCs/smmgTTTPZ/EKpTM2ZA/qoKkj7MiT5X8zNEytfxGnzeB+JIPXmjXxlSlhWvE+0SftzAf7Y+WCzQSnrKG93ZRfj8OS+/qieOAHHkL3II0kUsYo3hdSWQnov5SmU9btYpmrNCepLjVjqeaftkKJBp2DyGBB17LsJbBSm1Zba6QN3nwTLzY+K0suLkDgRdZ02bWWa4sgui/PLFnkepA8Z4Ybn8FIJSWopo7IS5AN+8th+HuXbF86jM8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vja+0r4G+18kfYgDxfGQJXPxi4+qgH0rHsnCs9y5wUg=;
 b=NsgXTjnhUemsjlP3+V85ltu68GM/hnt8XsiEj2PfI1weOM+/n03CHAsPMn/0Tx2cBptxlJIpFtMUhiyLSGKzpEGvtdlGqp6LnmjfN6s0jLHxNQ09wQhqx1xa1/T8IMfsm0rQfopj+n/B5lEdSRe7gYK+8H/kOl/hKsBGYtK04zk=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4283.namprd11.prod.outlook.com (2603:10b6:5:206::32) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.21; Mon, 1 Jun 2020 16:43:11 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.3045.022; Mon, 1 Jun 2020
 16:43:11 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next-queue v4] igc: Add initial EEE support
Thread-Index: AQHWNGiwsL3Q3vGBGUCTM7QNAfN52qjD/nqA
Date: Mon, 1 Jun 2020 16:43:10 +0000
Message-ID: <DM6PR11MB28907FB267763FC928B66C19BC8A0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200527205132.152659-1-jeffrey.t.kirsher@intel.com>
In-Reply-To: <20200527205132.152659-1-jeffrey.t.kirsher@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.211]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2d45ecc1-428f-4040-80a9-08d8064adf03
x-ms-traffictypediagnostic: DM6PR11MB4283:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB42833F8A4ED500D62445CD0CBC8A0@DM6PR11MB4283.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0421BF7135
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: a9oGwV4XtMTuzHTRmG+yoP6jmjRBIvKQ30yrOA6yUrxnEHqcQCvGHdxuz+jJxmcAny2uYzxT4fmWv9zu1TucLKqD6rH1Rwx7ghC1vEw8sUrEFc0TfN23bjFldzLiz24nosJUEEijN1CFr3ayQj1eRlr/Cdl36d4FnVFmq5MqHNumDcx+DuJwXBTeDvkFWQHYmtT6UchEK7I7YJuPl8LysFYRF1NCL8MHho9+LpnBxMtcL1F8ebq3grgYLumChQavpBOgs7Lr6rglzUig0hx2iKNDQDNBiDHBccd9wMBRLADxZ6qzk9rj7251Brefx1aGFUZMyP3IzdT6TjRcSGupZA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(366004)(39860400002)(346002)(396003)(136003)(4326008)(55016002)(107886003)(9686003)(2906002)(478600001)(7696005)(110136005)(71200400001)(316002)(53546011)(6506007)(26005)(8936002)(186003)(8676002)(33656002)(52536014)(86362001)(66946007)(66446008)(66556008)(5660300002)(64756008)(66476007)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 3mvhdyRQBmZzeMIx3pfZFmgP0IM3PjNUlIpPSVjbInLZkrteZDZisc19lx0u5+DTb7Sj2Zaw7PB75Bh1LQDwVvcxPoX0DO5bvf9nmnNvC6sElqaWepO33+KhMlDT4EOBe1lD0mos2kVBwtM5NwA2ExLkDsG1sqsW4eBceN1Z4v+pYdz+52qPoWMI9lHFJTPo6aR2BNGnM2hYsAjcJP7hkOHXt+DSYrQvIrDk9qPI38KsI02lA8OuztQx/pzoh4A6id9x/z2RVGYpIyTKqsRUc+/BVGkM5g52fii6+bL0yQdR1NiH9HWs4LFeULQ+ARsmK4l6ZhNF5bJMXwBULSoxl6NR3YFQlSKKyVmedJUFAUd3JBX+U8DBvojU7RNGCWhj0RWSJrfULa8ip6Z5VF2I8a1arzdxPPygAdOYKDHKmMXH+pQ0sFuVtU2Xjlsik05w7Qyl8xjc0ySHyxjl4LzcQRquiVBVjZRvCXXFCCBPceyQnwDkuBSVhQyq6DD28I0e
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d45ecc1-428f-4040-80a9-08d8064adf03
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2020 16:43:11.0321 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CQmip/i5fz4XrFlYMx6pmUuLHVVPumAXYcakoigYlP1PaAY/znGUqSUyxqfLE6CJZfVzewoOhvfBWsir71sXrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4283
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [next-queue v4] igc: Add initial EEE support
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
Cc: "Guedes, Andre" <andre.guedes@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jeff
> Kirsher
> Sent: Wednesday, May 27, 2020 1:52 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Guedes, Andre <andre.guedes@intel.com>
> Subject: [Intel-wired-lan] [next-queue v4] igc: Add initial EEE support
> 
> From: Sasha Neftin <sasha.neftin@intel.com>
> 
> IEEE802.3az-2010 Energy Efficient Ethernet has been
> approved as standard (September 2010) and the driver
> can enable and disable it via ethtool.
> Disable the feature by default on parts which support it.
> Add enable/disable eee options.
> tx-lpi, tx-timer and advertise not supported yet.
> 
> v2:
> Rid of inverted logic and replace eee_disable boolean with
> eee_enable in device specification.
> Address community comments.
> 
> v3:
> Remove pointless ret_val from _set_eee method
> Minor comment fix
> 
> v4:
> Fixed conflicts when applying to next-queue tree
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> Reviewed-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h         |  4 +
>  drivers/net/ethernet/intel/igc/igc_defines.h | 10 ++
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 97 ++++++++++++++++++++
>  drivers/net/ethernet/intel/igc/igc_hw.h      |  1 +
>  drivers/net/ethernet/intel/igc/igc_i225.c    | 56 +++++++++++
>  drivers/net/ethernet/intel/igc/igc_i225.h    |  2 +
>  drivers/net/ethernet/intel/igc/igc_main.c    | 16 ++++
>  drivers/net/ethernet/intel/igc/igc_regs.h    |  5 +
>  8 files changed, 191 insertions(+)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
