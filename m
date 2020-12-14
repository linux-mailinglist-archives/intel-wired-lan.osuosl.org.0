Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 768F32DA284
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Dec 2020 22:23:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1EBB486FEA;
	Mon, 14 Dec 2020 21:23:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s7PXawuRP+Hw; Mon, 14 Dec 2020 21:23:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5714787056;
	Mon, 14 Dec 2020 21:23:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3C2511BF38A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 21:23:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2EE088701D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 21:23:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2Kch9PdK6IE3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Dec 2020 21:23:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3BDBA86FEA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 21:23:09 +0000 (UTC)
IronPort-SDR: SqMg8v7sY5FGDSXfZ5aCJDxhnd8cGvj3saqkU/858HWUEzpyjpc/kDW0M+/6n45EEnUoXPlySb
 icNr0laP03Kw==
X-IronPort-AV: E=McAfee;i="6000,8403,9835"; a="174891979"
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="174891979"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 13:23:06 -0800
IronPort-SDR: E/Xf2gZC3YOIiDvVtVXkB0htQpiVNt3kMN6tyAQF7gs9BG4IXku+aLaH9DPPKwwmCLnMFG5wTV
 dQvbDQzqmbAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="557014380"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga005.fm.intel.com with ESMTP; 14 Dec 2020 13:23:06 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 14 Dec 2020 13:23:04 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 14 Dec 2020 13:23:04 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 14 Dec 2020 13:23:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MUffThxANt2IlVxb0iMWC9GaGExAVRL+B6A3GhDmQXfCMuAD2hsFPkWy05Ys3IoAf9G0hWZ0XFMXmU9gwshofqWO00bfNcgOgnOfC4DkNJq7shTv3brvYPv8mFf+uXIcKBm+a0ghF2OcKeAiPYVKXW801jxcvGChiHEKsH+szmNF+/iK/0Ese0O0QMk67UXJg1E9V8bp2Y1+kiSoCRv4oW5isv3r7160+Ev7uK/6It2XfO/4PLNfm9oLScov+/bqkk2lA5GNQwkEZoff0sEKOKKPytta7jRi/HV7E6kh4sZ1tyEML1fyvIFpV7msLVRdXf89HJGXLvvr1/1XK7WcMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xw4PeAFLcIIQJ4PdCXArUP5Y8+zbAxXVHq8QRFtGqkw=;
 b=YqHroLM9l73PTFjcOveMlNZidut5VT6GrvWDocBLfj+wvMbZPOZvtGz+v10M77xKgINUBY5XoRaPJKCm0t3fXA553aM7UJoFfSDM/zpwCVsTgQumelhT3DrlZT7wvMjjeMmA6TjcLOddc5eHfRtMh9dQmXUhRO5Cl1RAtepEyy9oA4DnOZvCexLLKv+iQ8kgHRw3aDfkvSCN6FDRlrOJNrWDtZh9s1WGfW703x1BHbH1ytxasEQTghPUTftuMdw+FYFRsFLBU5XPXTxfUuH/PT3SRYsED8yU/KWXUn0hDdfFRNAT5E3B4OJBwNZRfhvDJ3ygMw6xBTNkrgpgEnRE6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xw4PeAFLcIIQJ4PdCXArUP5Y8+zbAxXVHq8QRFtGqkw=;
 b=rLWPx6iaixQ08Qz7goW0PPOFEmJr4Gxb/PAvcrKLf10AP5yA/C9ZW4t1kaeT/VlKGOXuf27nFUukgcwdO2zqxNvggezkW+o50VWYUC81WuWYhVvIFzNCrrwG9NCaGlYWbijGvsuqF5w+2JMw/vdWVH8c4IJ6mgj+DMtZxeBVEOQ=
Received: from CY4PR11MB1576.namprd11.prod.outlook.com (2603:10b6:910:d::15)
 by CY4PR11MB1381.namprd11.prod.outlook.com (2603:10b6:903:2f::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.17; Mon, 14 Dec
 2020 21:23:03 +0000
Received: from CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::e832:8392:8dea:28d7]) by CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::e832:8392:8dea:28d7%7]) with mapi id 15.20.3654.025; Mon, 14 Dec 2020
 21:23:02 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: Jakub Kicinski <kuba@kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net] iavf: fix double-release of
 rtnl_lock
Thread-Index: AQHWyZZw3EEHkTY0Xkaqejz6z5Wo4anlo8AAgBGHXnA=
Date: Mon, 14 Dec 2020 21:23:02 +0000
Message-ID: <CY4PR11MB1576A8474925E179AAE0EA36ABC70@CY4PR11MB1576.namprd11.prod.outlook.com>
References: <20201203021806.692194-1-kuba@kernel.org>
 <1867f98e7951f8d044a7dbf16fcf6a93996914f7.camel@intel.com>
 <20201203094100.516612a1@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
In-Reply-To: <20201203094100.516612a1@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=intel.com;
x-originating-ip: [188.147.103.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2baaf31a-ae2d-4ba9-b1dc-08d8a07670ad
x-ms-traffictypediagnostic: CY4PR11MB1381:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB138183D4EFCFEF1F99F21A02ABC70@CY4PR11MB1381.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jCOYU7gBRcf+yRvn1xfvPKtithPr7sl6Qt7EvPAETTfHt77kZiVokBdaz882rUaGQOMrXgppjt/ckRW2k6BFtnY5iPJ/5O0K+xKfCZy6sjSCHV+o9M1hVrNzu/nqDTIehocwBO2D5yEA+lAH/HQfjG8KJdfn54SGZEb/Gn+3SWtkeuYRmWFB4xLeVpKGbsIOvUnXA86pFoH0Nzchrm1HmizrSehkv386VG1EG7gYQqNWQGrHb0/Ixtn354PPKGAhjgRZfG48mSF0vQjkXuGZJG6K5N6BIhZ6FXFp0HvmQE0OIIXE6tYNnUTGLoA7P7I3
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1576.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(366004)(136003)(376002)(71200400001)(5660300002)(8936002)(53546011)(6506007)(8676002)(9686003)(26005)(508600001)(7696005)(54906003)(186003)(33656002)(66946007)(110136005)(55016002)(66476007)(76116006)(4744005)(86362001)(64756008)(66446008)(2906002)(107886003)(83380400001)(6636002)(66556008)(4326008)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?twVf3wO4Xnsev3B3mLkNWC75kvliXKyAHSkSqP+gar0oNVoQ2Fh12uO5daPY?=
 =?us-ascii?Q?46PLIj6XnKIV6j8ad2GEhd9VzuAepmh7PWJR20unLD1PDKnyvZBqv7M+Vwef?=
 =?us-ascii?Q?TEHSeYZ6DroML+OlsF9fajm9vZgUCBjjseppd9KjRe/vbvMczqit8NmmqYP0?=
 =?us-ascii?Q?wEflmTdCbwseT2241xCqwjs2P+iJUH1fb1Iq/ZCotDrVaVMoDJoAM3OvPh9W?=
 =?us-ascii?Q?jkoFYMprQVfgIm9oTl8skfi+QfTTvaul31vso9f0Rh0+lz+L2eVn0vltIimt?=
 =?us-ascii?Q?evNwWiAa4b93H9/lTyvPi5+zR/ZaZd63a2nr9toABv25L6itdWU/TNUc5QQh?=
 =?us-ascii?Q?HPEo44PU8hDjlvPpPMJXzT9lqD0rAWBFHBx0tjWPJuos3AZqS2JEc6uFqAUK?=
 =?us-ascii?Q?XpIToHphIs2TLv0Hpmya47aeizJphxnjQ7pYl2hoMZzBmEgOKyUicINO7xYh?=
 =?us-ascii?Q?fDGmUFLiwjaFm2Zl9OSU+jgIiWXa70fp6sQHYGFc/AANW36Lo9KVqa3nUC90?=
 =?us-ascii?Q?hJOw+T4gfGLTZB6vaaJ9is/2XauR4ZTl3IKXsqOWCQo9VZHvaRbJgtVhKHV8?=
 =?us-ascii?Q?q13bgsNkGSKibbJBWLGeRYZuHAUA3t4410R05fW4CGuYfeRXWavJQwkXF3Vj?=
 =?us-ascii?Q?xJXook2VPvIsxkkhyhhOEvBG1vSESOgQ3qKIh+Nz6znZxIDZCINT0epwmKj8?=
 =?us-ascii?Q?nksrWUBr7btR1BXItQNRy8Pt+4weW1iTEXW6LR+GH9g9sDsrFlbLPuRG7ksj?=
 =?us-ascii?Q?XdGW4qWHKWHHRNrJUjI6JGCuiUUFz1nqYZn3HhoL6PEd1MiPh+YFHGWlpRBR?=
 =?us-ascii?Q?Q0Yb3C1RpoARU+qb9rR7TfzzA6CI5emeIskl8MhMoF6gh2wWmGI+fXHRS79E?=
 =?us-ascii?Q?n84vCLAO/6I6hSM/TA5OspFP9jNox/yRQwPDOm3lHjyGcpM1+z+zbm12Ivj7?=
 =?us-ascii?Q?faD46h8lKMKhJZ1V9HlqnRKjGQwiiIZnwf+wu6Ghuu8=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1576.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2baaf31a-ae2d-4ba9-b1dc-08d8a07670ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2020 21:23:02.8222 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A4kFLYoDFzDmkQQWjGfY/IgoUf97jsE0rWfWfDoATN5EWuVziKxAJlmiuGTB7mErj07YDOSjZm27grfavZuv0JSZPXn/ZcmAT8g2Db19gW8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1381
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: fix double-release of
 rtnl_lock
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Pawlak,
 Jakub" <jakub.pawlak@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jakub Kicinski
> Sent: czwartek, 3 grudnia 2020 18:41
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Cc: netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org; Pawlak, Jakub
> <jakub.pawlak@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net] iavf: fix double-release of rtnl_lock
> 
> On Thu, 3 Dec 2020 17:04:14 +0000 Nguyen, Anthony L wrote:
> > On Wed, 2020-12-02 at 18:18 -0800, Jakub Kicinski wrote:
> > > This code does not jump to exit on an error in
> > > iavf_lan_add_device(), so the rtnl_unlock() from the normal path will
> follow.
> > >
> > > Fixes: b66c7bc1cd4d ("iavf: Refactor init state machine")
> > > Signed-off-by: Jakub Kicinski <kuba@kernel.org>
> > > ---
> > >  drivers/net/ethernet/intel/iavf/iavf_main.c | 4 +---
> > >  1 file changed, 1 insertion(+), 3 deletions(-)
> >
> > Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> >
> > Did you want to apply this or did you want me to take it?
Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapita zakadowy 200.000 PLN.
Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i moe zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
