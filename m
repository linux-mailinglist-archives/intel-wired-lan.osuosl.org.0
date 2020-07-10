Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 379DC21BF3B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2020 23:30:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BD46688501;
	Fri, 10 Jul 2020 21:30:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qJzWxodweEq4; Fri, 10 Jul 2020 21:30:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 64A578848F;
	Fri, 10 Jul 2020 21:30:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7CD8B1BF9B9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:30:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B2A43878BB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:29:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tq6YuGSjcqUc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2020 21:29:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2D28C87F4A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:29:41 +0000 (UTC)
IronPort-SDR: WXnDyY9zjTLuTtoO1+jKD1fLtB8RTmrxluAxofpAkPrBRjFb+eJqDIlqj4JXNI1cfa4vvtS9Gd
 waM7GmGhkTtQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9678"; a="147414546"
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="147414546"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 14:29:40 -0700
IronPort-SDR: Lkn8ZX3RJf4XMJtwH59JHNdCRvpNBC+A3hT3mzdG5iUzj+k/H+v6IIM9/eMeiDpCUDx5MXiyjm
 eDqFRau7hC7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="269188565"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga008.fm.intel.com with ESMTP; 10 Jul 2020 14:29:40 -0700
Received: from fmsmsx116.amr.corp.intel.com (10.18.116.20) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 10 Jul 2020 14:29:40 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx116.amr.corp.intel.com (10.18.116.20) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 10 Jul 2020 14:29:39 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 10 Jul 2020 14:29:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yb7uZcPUFrR2bBBUTGlmXOSSZDwsTrSEE8m9zIAovcNsgaaf4ELFWKGszFaMr5F/YWked8+78oe/nfUZvAavfUSgDD0IDWx/ZJS4lKWPSJnKVjz1JQadE8uljBYYREXDW5TJzL0prIQ+8Oms48Hwo68p9m9pXASDKQiDQfztTOPaF+3Ma4OH2CAZ6Az7uvoTkBZ4TUXyj7UNWXP45P+gvktMbKo8mVb6YTBboo/kItOWb5gY8tZv9gIi/hN+YktM7+6GcG+K+XKJdekEvj9QoTDeT4CuX/PmxLjkD63S55gQs3IFXKbt6sxi5dTpGvqNmxIOiVxpLZUTyvoNP4H92w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UozLt+sYY3k2JUKcAQobn8vDyO5kC6kUFwFDXb/CwOY=;
 b=ixrxONcJXXdNBRImSaigwtA9NGzC0yiQx5XL5aVFsccGwKTHiSw/NyKoj9xmCyJecAFvdjzB2l7KGKzTWkxRGqP5+0wWcOeMDguvFg6tTY9+vlweUroTazx9B6/XW2fZRTlycbQTqfspC7feyRXVH7n2ai+ZCXQUfPg0zyVLijxMz2fujso/98wh60/ZQGHu4GtXfZq3YeitkzHRQ/UT3RLz9zUdi+p/mIg1jNEQJK4lqfWQhNBqjQtWSTKANbpVA5vhNw46pnQ/sPB2bJk9edYTv4TADgfuvSZjB8srrSjwFRRaIOT4y8+TEiPxwsVqVGwlGc3dxe5GIHymF/BfAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UozLt+sYY3k2JUKcAQobn8vDyO5kC6kUFwFDXb/CwOY=;
 b=T24pADLtzJ8DdB1reFHWaCqXJfirSbMweMa9k/fGwZk2iLZgUcL8hL60Tz+dJ/UZzKqgda/HLjwVlQg3UIHg+ezRl4BaVoWqL4C9wW+momhvFUpUMczK/U5HtY++TQXB68TQxw/2I3HDdQ12u0UoVk+74OLQiRJeWln6mvpMhBk=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3604.namprd11.prod.outlook.com
 (2603:10b6:408:83::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.20; Fri, 10 Jul
 2020 21:29:38 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3174.022; Fri, 10 Jul 2020
 21:29:38 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v5 08/16] ice: Support RSS
 configure removal for AVF
Thread-Index: AQHWVlXtffYCrMFIYkCf1zIBTxU+tqkBVbAw
Date: Fri, 10 Jul 2020 21:29:38 +0000
Message-ID: <BN6PR1101MB21450B428FE217DDA51B23D88C650@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200710010644.33817-1-qi.z.zhang@intel.com>
 <20200710010644.33817-9-qi.z.zhang@intel.com>
In-Reply-To: <20200710010644.33817-9-qi.z.zhang@intel.com>
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
x-ms-office365-filtering-correlation-id: 85f22ebc-d74b-4224-6bd3-08d8251859a6
x-ms-traffictypediagnostic: BN8PR11MB3604:
x-microsoft-antispam-prvs: <BN8PR11MB36044CDFA6F0EA3B232B4EE08C650@BN8PR11MB3604.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1775;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DJQ00HwjblnSH0EZ5gBKYUyovnEPZ/V6dcWEsYDmkwyl46dnL0hMd9bxSFQX/OtA75TgIc1Efq1dpg6LhRXfS0F/HIkW31yoTvSN7mILc8tnXR/eUD29wI1KiRU5w0t1+qyh78vNEfzuM+laev+m2T3r5OFB9722xdRIZ18VNPKnjoiWtWsUR7sAWruNQlKQqXYelDT078yStLcRHiGXbJ6mwKrGTHw4fkbRN/oc7AvMxQphDI/XhoVKmaJ0iBkIAVtILKjL1RBf0tmAxljU25b/ikHG1gdoNV4CHEBK51C859kyS8xbalXqhyNbbKx904Ck5pzlBpuVJCSHTNrTQQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(136003)(346002)(376002)(366004)(396003)(186003)(7696005)(33656002)(6916009)(71200400001)(5660300002)(83380400001)(52536014)(53546011)(9686003)(55016002)(64756008)(66446008)(4744005)(26005)(6506007)(478600001)(66476007)(66946007)(66556008)(2906002)(316002)(8936002)(86362001)(8676002)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: /bUjeHv7dYaLktfFbOTgWodxUE1A0ppLWJVfuZvhmmeJfSW7OUSdGnLeYrcGNWQXQAjzVEDVV2vwGHdlCK4ZiK8+Ed4/0aILYWeqxfm+Sex/wxH3p2Hnz8j3K1U4OafSi3Qxdb1lJ0R7RWubDAioul7afLOZdSEGtxdBrnwzZBYJw9QOBr9estjPZtyeE/oBmRAMqXE8Ar1OyGS90+MQ+BNdQUeFc+Eb9R9A8LcBb6py7J9SYPZe3gjKJY+nORccSWgXGZoIF3yjVfZ+iHHpPf5vNUJuzYg/xwi8YOW9dt2B78K0EqG9/nCHceYTprQ+8e7HAknWNdzpcatuqBHHc0YeoypD4tT+DltIJPs6u9by8Bk1ax/0zDW2WRF+Jn9p6q1yXLcTiBX7+TVapt/Ocd3Dt3V2AtcSViF1pdvzT7X2ERiCkKVOcTdoJaIFflRv5lYjjS5VzoYLn71XXXFZNd4GIVHEyiuhOZdH1m5quHUBD7ExjXFPg1dSdevmr1Q8
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 85f22ebc-d74b-4224-6bd3-08d8251859a6
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2020 21:29:38.4687 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fmBcZJGBiWIj69+YV67wxX4cavienjUft9sU08//p5+w+tuZPG0MQ1Z7WRgbUQ0njXOKrW8L3yGBwHHLi4yqGTjYP9mbxR9xcEF8SuMcT6M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3604
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S48 v5 08/16] ice: Support RSS
 configure removal for AVF
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
> Subject: [Intel-wired-lan] [PATCH S48 v5 08/16] ice: Support RSS configure
> removal for AVF
> 
> Add ice_add_rss_cfg's reverse operation ice_rem_rss_cfg.
> It is invoked when handle VIRTCHNL_OP_DEL_RSS_CFG.
> 
> Signed-off-by: Vignesh Sridhar <vignesh.sridhar@intel.com>
> Signed-off-by: Jia Guo <jia.guo@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_flow.c        | 90
> ++++++++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_flow.h        |  5 ++
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 17 ++++-
>  3 files changed, 110 insertions(+), 2 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
