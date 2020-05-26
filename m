Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE251E2FE7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2020 22:23:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 520F78869E;
	Tue, 26 May 2020 20:23:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HdPGc3z++ne8; Tue, 26 May 2020 20:23:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EA76E886FE;
	Tue, 26 May 2020 20:23:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E3EC61BF82F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:23:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E02B386746
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:23:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YIG8kSpS5EWu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2020 20:23:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 45D9D86256
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:23:39 +0000 (UTC)
IronPort-SDR: 47wWeDGVxzk6F3hSV/auy+P0UIFdNLPQRJHoQUmzYX4fd91LBNAtvLsrA4aaFbULSB9t9opXZN
 LZglMMjBFu9Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 13:23:38 -0700
IronPort-SDR: uWUPjcv8JJlENw09ZnDGIjQVaZpggaiUbGOTX94oUHiemWjiOWfF9Ssud4v2RjcYuiVeAstKDF
 ZIH58JLUizZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,437,1583222400"; d="scan'208";a="310357034"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by FMSMGA003.fm.intel.com with ESMTP; 26 May 2020 13:23:38 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 May 2020 13:23:37 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 26 May 2020 13:23:37 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 26 May 2020 13:23:37 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.59) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Tue, 26 May 2020 13:23:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lpZXrvsyDkaClO9y3CWO9H1nlBjYOKCMN3mOWrc0yPGCKmVzwgbH9Ya6glLfRM2pthXuDb6UjIDbEkP8OlP3PTVqvhEwqOc1/vby99j8XB5V1tHkZOHpF9eTA9tiwAoBHh96sT1wHUuT+hm494ErF8ablNEUXJNZP+b+PEv1xlFiAhoauGLAfQBLoDnDj/5Kw1JSbJtQkCTb5KoNOAw0TGMPuKPS52FCAwYprNpNpEoE75oL9qA58fR/gW3X0pxtjDdUukRFDlZfZixFlL65LvlQQ9rA5Yo7gV/CUvsNPFJukRvtt37tGUO0MYOtv2xYhEm0io77Q82tkizr/GVcfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t01Nrui6LaItuOO8oGFfnxpz3b6GLtuSJdR1de7rPL8=;
 b=W/vwNg3VKwqmolHEP0fH4BcHXOYtLGdcxuV34uAfvuC1njubA1UJpd/YZLAtuvkoUFwEkb95jIjgAsFFgVGIofZfInRpOB3iS0jUPOLJv2+TWaSWGOi0IFQQaLp+dD+sgO9ob9huAB5lxUBAdQ65tbMzYmN4wI3w9LCb13TXCZKhTzXTDRJiXcNGYIx3I9U6S462pJF+ACLnMp/rK9deO0alp0xQf4L6CfPNxjhJ0+ffPIgXNCQ1sxCxmCFvnuI+A0V2awBZx+Wbwg6J74QDC5cbIvngL84WMfO5G7w1nom0mGPRi6r2h1ZjgA4oTeoG8JKiUcLeHjuARHJzSDikeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t01Nrui6LaItuOO8oGFfnxpz3b6GLtuSJdR1de7rPL8=;
 b=RBQBeiRL6znjgtunWlAraS4EAOsHGdyttqPFX5Yg5iQ+9nUsVO+pMYTv0FuzqXVVcsRGAtagvGkXf9tF2UTWi7Nq0yfamBWsy4RBCI2snDyg9MgHNWWQLNwS5yyZCQHMdHFvw8sGSj4te466fjvX4FbhXlzdu5W0qqlexRvhRDs=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1353.namprd11.prod.outlook.com (2603:10b6:3:a::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.26; Tue, 26 May 2020 20:23:36 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.016; Tue, 26 May 2020
 20:23:36 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S44 04/14] ice: Add XDP Tx to VSI ring
 stats
Thread-Index: AQHWKxtjJIMFYPHGi0uhjo0Mw4FMAai64MWg
Date: Tue, 26 May 2020 20:23:36 +0000
Message-ID: <DM5PR11MB1659B5707BEE57B09FCA227A8CB00@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516004226.4795-1-anthony.l.nguyen@intel.com>
 <20200516004226.4795-4-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516004226.4795-4-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.215]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dd95c591-ff34-4503-88fa-08d801b2ab82
x-ms-traffictypediagnostic: DM5PR11MB1353:
x-microsoft-antispam-prvs: <DM5PR11MB1353E60FDFEC46FF17D05E1E8CB00@DM5PR11MB1353.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:813;
x-forefront-prvs: 041517DFAB
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JuWc58ktN7EGyB0rM+2QXpq5Daf8hgNU4Ha4JkQFCHn+uKDlkp/+rY/Ih54Ui+fj2ivraLP6CqTrBtbo0ffK4Q/KiiGTn3pdsLtZgG1c2DabFk7rvtablxj1AoRTilZXlMHxKcxco9Dndl8O2NxScMW7Odd+IClMaPb78Y8pcipYRfYHnDpSTYbTgHBY/z9QBEsoJder5X7eJoWJ5xBvnievVzltI2Mp0oZ1H1s3woLHlCz1gfQAEaLGLglDITIXn8+aE/meVZDxu6Ramq/Es5PuyFvKOn9ruzyYtqbz3Li+IH5lnviSUNF+kg1npKkxRQfzGZD9Fw+hpMdDdi+dog==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(376002)(366004)(39860400002)(396003)(346002)(8936002)(71200400001)(33656002)(4744005)(8676002)(52536014)(316002)(86362001)(478600001)(2906002)(9686003)(66446008)(64756008)(66556008)(66476007)(76116006)(66946007)(55016002)(7696005)(5660300002)(26005)(6506007)(186003)(6916009)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: nfVJD8csCWj56d6CgsOg06etKDYe1wzLEofOJAF+ztwbPEOOMrhDeSFjFKDKskBTS29jJo3l/E1su3qItZUepOLHien+6tkClC0cr1+WqgBpYYFCGhpjcVVCe8xCfIwTA/A0axPZQVSPiC/loBnJ+aduYr0qbp5quY3VgcwxW5oRSB06FkK1aOfJZKhc25BxoJsWOI1cxo8pYnn8jASKpXT1gaM8n5HeE5nm8EjIm2hP9wbYcOIf358iHf7w55vEgGoCxirX9l6DMuwYxI8HwqyX/GxXqCFS/EDX/boNhAwcFkDXO2dZZ8LVU3CwscFgcCmoIvymp+1hpsPZ3rHO12Vyl6Js2cAPJ+CLJYEagNQKVmkx/ew66JU/bIsUz5rlvHvXAWQIv64w3nUHyrdZoAOMb1bA9z5bkMClydr9ex2Z77Yy6HlvRkkT69cVjYXkmAVAkNd/QqPQlecUByuN6eVLy/rsFW/YqQVsCdac3Ff8bdoZxAn02nrWROqk9Fnl
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: dd95c591-ff34-4503-88fa-08d801b2ab82
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2020 20:23:36.5430 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kxh81UCqwsUcGixAVsj7sVYAMy3FlFwwc05z9Piz50AxRJYJqHWHWLENrzZhmwQirScFCvAXJiO3DoNxXSAFJgbmYza/TswPUw7GTxmuJRs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1353
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S44 04/14] ice: Add XDP Tx to VSI ring
 stats
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
> Tony Nguyen
> Sent: Friday, May 15, 2020 5:42 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S44 04/14] ice: Add XDP Tx to VSI ring stats
> 
> From: Marta Plantykow <marta.a.plantykow@intel.com>
> 
> When XDP Tx program is loaded and packets are sent from interface, VSI
> statistics are not updated. This patch adds packets sent on Tx XDP ring to VSI
> ring stats.
> 
> Signed-off-by: Marta Plantykow <marta.a.plantykow@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 42 ++++++++++++++++++-----
>  1 file changed, 33 insertions(+), 9 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
