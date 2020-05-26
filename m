Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4411E2FF1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2020 22:26:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 716A086946;
	Tue, 26 May 2020 20:26:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FBslTniDI54C; Tue, 26 May 2020 20:26:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CD2DB86930;
	Tue, 26 May 2020 20:26:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9DCF91BF82F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:26:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 976198651C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:26:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kwfqjzRUlowd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2020 20:26:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 075A086207
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:26:21 +0000 (UTC)
IronPort-SDR: RG2YYw863lLlV8NA5vqRteRc0TGkXoFiTuLIp70d4wC73UpX+gWyZK+kxBwSs3lGW/nB5EmJk1
 zN9OejGAZGuA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 13:26:21 -0700
IronPort-SDR: YPMYGWm8PcljWP98OliASXcRyBRda5hBX9fKM42N4SKZhy/OXMEOixYQO+VvntfYzeAe1xOc9R
 LP12lvqqTo/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,437,1583222400"; d="scan'208";a="310357690"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by FMSMGA003.fm.intel.com with ESMTP; 26 May 2020 13:26:21 -0700
Received: from orsmsx124.amr.corp.intel.com (10.22.240.120) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 May 2020 13:26:21 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX124.amr.corp.intel.com (10.22.240.120) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 May 2020 13:26:20 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 May 2020 13:26:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OU9NHeWAmo8LQ64OKqawwSSppPNT9iJHJvansd1DFtx1diBN9FM0e+HI5vh5NBzoblRQf9CZpGqme100juVOH0+V50qwFmGs3cGvhRlCGyivmqx8aY4GlJMDeT/aDG0EsGcQDiT0xUwb395iuYuakvTwSObOw1o3QXVCS3FS7fDisjZhiJbdhzrYMmvTj77z/pNOgjotWq+majognTasm5UScw87vKclCpzwIefQihID4A8B6+wCURpUqpC7dH4wPTsx+dqq1OyoRnlrwy3jLQfwk8T3UpLiAfnVfuTp/q+q6jNSak2MJIdtUKKl1BbSiNag0f29v0cbJn2Sb/4m9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/B5+oYaFcKjVC5pHxXaqmfhS7g+segMn6CShEa9sZ50=;
 b=BRoODJ2sxSeIakc9SnSxCT3rxozntsYON2CaKnieXJJH1x2sE+q/2aCrhCE8Gu093SKO/Kc+qrOD7mzUCC+vnPNaICY39bIEypd9cNIOlzDPERRmtnFgKz9UAx1L7A/7cD7Vf9hfneXvWK/+ZYDDCuOcG5H/qREyiizK7XYB1FoJbSoT7SoAJ4mUvPTP0EfNcNq0dCJ8cR+CgZu3xNMYXBymi2LkXRuLC1PMtUiryLookT9ad3FUrC04Jc/+ElcTmKQ+pl8tzZgNarB/Gsl1YQ0t8ez8cKlLTe/QIg6lne4DTSHPwqD6qzFj/+dQds5uLiLmvttvUWWzdORMrs8L7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/B5+oYaFcKjVC5pHxXaqmfhS7g+segMn6CShEa9sZ50=;
 b=BCGbMwMTq8Xh1e8S4h/qExjfeEVSQev+ATxMGjBRroFT8Liy/wkhGVnxSk64GIyZUbNROKcJ8BIXvglzD5mb4GkLgD+ptG+wSKpu/RxyE7FVIKn/DYlrF1kNgRB+uYxet7SAs9tcB24LoJxZsov3q63OZUNsijr4xiOs9ILyKrs=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1643.namprd11.prod.outlook.com (2603:10b6:4:b::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23; Tue, 26 May 2020 20:26:19 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.016; Tue, 26 May 2020
 20:26:19 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S44 12/14] ice: fix potential double
 free in probe unrolling
Thread-Index: AQHWKxtewXRVPiAdZkCE5mwlmYfVGqi64YqQ
Date: Tue, 26 May 2020 20:26:19 +0000
Message-ID: <DM5PR11MB1659A44E7A7EC041719B444D8CB00@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516004226.4795-1-anthony.l.nguyen@intel.com>
 <20200516004226.4795-12-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516004226.4795-12-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 8adb759e-434f-4a90-975d-08d801b30caa
x-ms-traffictypediagnostic: DM5PR11MB1643:
x-microsoft-antispam-prvs: <DM5PR11MB16437E1AFDB8F18E7A131E3C8CB00@DM5PR11MB1643.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 041517DFAB
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qM91PR0QTwdw8Zdxmwfvsq3jxtMCpfYr7UBwPY27LD37FFzTxtW7Q95+LABJrmMji5O4J4VqaycYAZIp3gYJ4PuFpjHIOfQ0NC5tKXMc/ixHjomtUmUORVhdhWHXNQlNz98qAaOIejftBZp/6sWf3baMNsERnvcUfM0u25PFG0uuLQiwdgXsLCljU0QWUIaYMQXOW1tAlDVOU3YhItJ4Al8cjOizCgnfVi0NOoXQJFKAvJ5ST62nxJgBPaozl6zn6nOkEPGhTolUdjsxygua2pfyexnit7tD0Cmn7tmRU6QN6ui35QLcVKSClhC7JEes
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(346002)(376002)(39860400002)(396003)(136003)(55016002)(316002)(26005)(9686003)(33656002)(186003)(71200400001)(6506007)(53546011)(7696005)(5660300002)(66476007)(478600001)(8676002)(8936002)(2906002)(52536014)(6916009)(66446008)(66946007)(64756008)(86362001)(66556008)(4744005)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 7GMtGxd8XpqLoJu3UkUnBQX7Snei3p+KegYM/YZzQLhqzhYin97NsNw5h5EjQy4e0+4g7MdwvJPl/HrLr5F6IU850+SeWM/mxMJwfaRgAEp6r3AGrJrFFlxqJ4hlnXrDDyfSnjKoMgfcQJ9lE02uGzVMMcTpc5FJE3Rv2uw/5uYcUti3kXYw0yiLY8aIkpvfs1BQkq/ylVG0zWbvJERqJYBWwMKSEJTIanHPTrJMdWRL8tPldhwn1x3eb4Wov5EfNM2W/tNW5rx915bzL4OztZat6KmtmrRT+sLCnjAerhVQHEX+OVpg1ob7QfCvSIIfB8u2E2AdeTCQJCPrKIenzJRmiT+OXmAbPJibcnr+zFQ6pk8VaOYByt3bxKmrrkj6OlrLFLoUEYR7vCeNsgfD4UX+4SjNAO1mrBpqwsc2lGDd0DKFSCQerwUM7MKLej4Y3RprbMplY4T7OGpeYGyuYZaO5aoC1D+d255i9uTDC9/5Eh9QfRgrSObct36MnQZM
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 8adb759e-434f-4a90-975d-08d801b30caa
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2020 20:26:19.5215 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OE7Y/UNueKIGqEOcpLfa+KIbt5Ex4ggQ83ZXYXqa2Q100Da7h2TjbCfD1NdhSIeoin2SYPEJ3cmc2YIXlKFG71/0NK6I9luk4fesDdxcJy0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1643
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S44 12/14] ice: fix potential double
 free in probe unrolling
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
> Subject: [Intel-wired-lan] [PATCH S44 12/14] ice: fix potential double free in
> probe unrolling
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> If ice_init_interrupt_scheme fails, ice_probe will jump to clearing up the
> interrupts. This can lead to some static analysis tools such as the compiler
> sanitizers complaining about double free problems.
> 
> Since ice_init_interrupt_scheme already unrolls internally on failure, there is
> no need to call ice_clear_interrupt_scheme when it fails. Add a new unroll
> label and use that instead.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
