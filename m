Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E5062D854
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Nov 2022 11:46:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 74060418F2;
	Thu, 17 Nov 2022 10:46:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 74060418F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668681974;
	bh=m6acxdX6TkV1UhzIEujnXK8ZRxksNF1R3z/xyI2ehZ4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6Y1tnr1HICrN1MKUNzp65zqmp6i3VZDhUqBf/RZgFDQ0AnJ5w6WaIeMFmbssMxmoG
	 7xpiaFmWkyUgOwYqbkjlvK/EDeiIA2zLx4OZPHB8wFqYulaxkaH7Ag5TJJmnCfaKKe
	 ddAR5R4/4h9+N4BUubLt2uEZmZ2wvtBVgVSxgh9NHdr/5O5B/4Py0ehLeS6LFXg7Gb
	 VlTnD/AetEu365O4W0xID3Hn3DWVpzLvVrzaBZRM3K2vkr9NxplvWCRmYsb8nvG5KD
	 EUr121ilIe2I98yzWYpGLB83FgqdQPvhxrFKfgiCMdQ5r0BbqvEmmJPL/+kRLEzWqx
	 8tIEstONTt9Ow==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0J_6GgoVx0d9; Thu, 17 Nov 2022 10:46:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E1FF418EF;
	Thu, 17 Nov 2022 10:46:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E1FF418EF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 258431BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:46:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0C5A482082
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:46:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0C5A482082
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xsgGQUk_UcMt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Nov 2022 10:46:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C850A82080
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C850A82080
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:46:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="312832224"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="312832224"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 02:46:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="634014445"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="634014445"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 17 Nov 2022 02:46:05 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 02:46:05 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 17 Nov 2022 02:46:05 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 17 Nov 2022 02:46:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hgdVVUJUhqUnDts/ebegszvsuLe26dxodt+lU2OJWFcSsTznHEThRbIHlvq0/hLDv+ci3tnwGp34lDbZOtfm+f9MF5/Bhn48zl5FhOUfpVTmPSfQKCBTSpELqDmbUMQDx3wx4t9LLj7dsBIG4vzYC/p5g/3wpsErXff1PZGBfgNmGmmOA/I8wB2Sa91BqvmeDj9Vx8mjqqAyxueBX2ld9ksrEfIB0tGDqf6TrskxRUlI2rIRSNHVbyqIoyHboSer9W1LkwvfXzsa1Z5CklbV60pYanBV3upgBcHujdfIah81ja8iBKMyqxeyQ/7H53Em8NXbXWmq1DQzkzO3vB+qRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2SgR7uI7QH0pNgrJxfHPzLXpwIhhapoy1ERaZm5oe3A=;
 b=WWhGagLTjyDGXSNXfs5Gf8wCmVGoA49Oaq1MA1zJm3mJkOKpSEieTI+5fhLbo/qzHToDvcdS2bMqPc84PiHg1pCs3k7WbPc5agCLWY7uLoWxYotCfcBmWRCiVSPw3pYpG2NApd5pDCzYVGT3pW80enKNjUWgWHYY0tO9lCASqITTxjlJFPLkXmMxyPgIoJO+DLc+DMiTRCBfAKkJyXheERjJjaKsrhgyYz+tg7SSl73i7IIGr7nSZKFgQYCtqmvd9KzgtESAXG2wQxQm3vYPBC6YgGnBV/nns2xouOeCfOYHBPoYeGI48ttXJ8fD/Om9nOpuViDRcPjFIEx/4VHQ3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by IA1PR11MB6123.namprd11.prod.outlook.com (2603:10b6:208:3ed::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.20; Thu, 17 Nov
 2022 10:46:00 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%6]) with mapi id 15.20.5813.019; Thu, 17 Nov 2022
 10:46:00 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 10/15] ice: disable Tx
 timestamps while link is down
Thread-Index: AQHY79ATzPrQvhs7jUSwneUF67bfSa5DA85w
Date: Thu, 17 Nov 2022 10:46:00 +0000
Message-ID: <BYAPR11MB33670AC0A477B19168F6843EFC069@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221103220145.1851114-1-jacob.e.keller@intel.com>
 <20221103220145.1851114-11-jacob.e.keller@intel.com>
In-Reply-To: <20221103220145.1851114-11-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|IA1PR11MB6123:EE_
x-ms-office365-filtering-correlation-id: 9eddf0d2-8483-4104-0e66-08dac888eaf0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Cio3QQgG3difLeoyyOFksSNNgmJeH1m01sVivSieb0a5bwWgEwAFBOnOfk8rpbtC31RyMf42nlb+SXYLYlwGNye8cFOv8avIH3QK2WS2GbmEy8fh4nh6Bbla+dTwpubphdgaRNTiQ96Hlat5xp/hX8vXwDoNMtBwaSvuOT4H3N3HHCENYxFm7Ocdhq+3BwEVW5yNKPuBJxNFkGKIAS/cBjylUAAFJq0uTGsqIgSHQGHtnzIPniDItoIdcNZU7WGXz2fEkagIPsPtyV9gozLdsQeDM4KYU7eUe61K25PcB4BGe98u+rwJ88+j9CWZaOTOQoFIPZSL6YpHf4v2DIoHDkI1hpjevqx6oslGC7qniU07yt33mnuK9DlA0+qTaz93pivNeVnvKI+nIh+UwwrRYkol1vseMa2OX4mOPq0k7l22ko7TWD+wuICdTXoly/KtwSvO2vSnVSsJ7WJZ2aiFgkXyTH6CGP3R5UIM+lvZtsAMpDTxs/LawYO5X2hhvPx+dI+IiZaFjaQJuy6EzDso309QnPhddjoQ/hoVKK68OPK4ptvyL8lF4JemO3C5w2+vS6XrfPlVz31dN+SsNq4jJKqdw8OyntfGI1cPB1wljcVwRn8hmqX15boc6f6FVfY95fDtC58sd2noKGahGhJIGPqfwq7RGsPFHnkSoGO03cFpiGMCV8noLCgqzbUy0cB/gwujUU8oBfJW2djWS2aUxw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(366004)(136003)(346002)(39860400002)(451199015)(71200400001)(478600001)(41300700001)(26005)(8676002)(76116006)(66946007)(66556008)(66476007)(66446008)(64756008)(8936002)(52536014)(9686003)(4744005)(5660300002)(186003)(33656002)(53546011)(7696005)(6506007)(316002)(110136005)(83380400001)(2906002)(82960400001)(86362001)(55016003)(38100700002)(38070700005)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ouDoPmIWDkngbRHINwrgnK7Fgu56Ufb7X4EXNtzkxqYWW4IDeq/Bcq0nE4PK?=
 =?us-ascii?Q?lWbqLlSTvXtP+NRcu4qcdnmURLcEx8nxc9buE5Irv6VB3UzEs+7dOLd/YqeM?=
 =?us-ascii?Q?IJI6PhMIjFeMC7jFGfKjQ8tJXoXNd1ClQGH1ywwH8nq9vMJ3FNxjm/6kmnqf?=
 =?us-ascii?Q?t/oSPKmmxq3V3MbynXJUGHr7ASBB/Zgu6gYwE/tX0VFudpvZugX+T5+z8TV6?=
 =?us-ascii?Q?MMazdxUDkauTnFbeWX0EsfVORXqqtuFEGAq2DnJD00mHdHmhV6tWCR8KP6Mx?=
 =?us-ascii?Q?gCgrg9/QxcNFUI+1zh3Crild9b8kyZkeMmmZI4YRcZmj/YmOlbzuZF4H+7XP?=
 =?us-ascii?Q?GNfdY3AzDQQJkOPi0BMmsFH/ojlOHokcckFKS3lZIY6hDEkHpMAOGDy3bcqk?=
 =?us-ascii?Q?tdJrCxW3yiIeUhX1J8jnkK8jpquDoIsxAWfr4P5pz308Ji48aXG7pqDeEkL8?=
 =?us-ascii?Q?IlRA4vRWRw6Awe5IEBCVdpxDMVqD7/ttERBZuwIF/FvPNyeyn6jYlIjhO1ok?=
 =?us-ascii?Q?Brlvxu9bAndRK2EIT0GQP3VOVDm84znkOzISPNMtGR9GHY3TX3G8hn/VlYhV?=
 =?us-ascii?Q?DQAFYWotdXaoksFnD5JcE+iQATVbSF42FPwLrWb08Q0j1UIHYJah0VRNQpWG?=
 =?us-ascii?Q?EORxFdhGBTW2YZsktg13FzxzPbgnF5/AR3gWK9/9Kgwsbo63q62j0ywaVDP/?=
 =?us-ascii?Q?RzAEW6p8TnlrM/LzY+dSt+hAxNRSi9nZcQDQjOO5C5Nv+M3e1cDwSIM6o/B2?=
 =?us-ascii?Q?yu29e/z04G/+89VkBIJjnYNi7YkaA1ZUJHAccip3M7FOYj0Q9gvfgmHo4Zkn?=
 =?us-ascii?Q?fvusb8qTHR3FFA+1DQWsPmuTyzhNToeIBZVC+Vs+T9sHqMQ4lC6hwR7moOz5?=
 =?us-ascii?Q?KWvsRupDoGl97CX/xcRjy5jk3eHu9pu1Odc81w1q4lAVTuWIN2eOjqQwXlHj?=
 =?us-ascii?Q?8oDS8uszVrW4Pgu0vJ5qMTMc6WniLE4I3xNmWwNvzKgB0T94kdikVy3/Cjfv?=
 =?us-ascii?Q?zDWMFCJipOYvN8n9t+YRndydfnl1ybC1CA3idHBGEgfpO3OWD4ArbOW2l3K8?=
 =?us-ascii?Q?0dy+uJHsRXSPUeC7/6orlSr4pGFzEMqdjD87wGjHqHjF1adVEO0kdqP+x6LK?=
 =?us-ascii?Q?plUAP9unCRzNfpLap2bjxqjbRYda4iESqfLSEv9o73xV4lCJjsQxGi8a+6FQ?=
 =?us-ascii?Q?4E4m/68zjQiYzVkRboIsR8MYeLaZm2ucLwTLcwh9f1EBFy9arJ3ofRkq0IHX?=
 =?us-ascii?Q?TaEYJ8KE5lx+yx/Y6+1vMHkeBdEd/qw7OzV40IzRXZsljsZsYPGvT6guy4Wu?=
 =?us-ascii?Q?2GIG+qZfRvaaKy9VGDMCq7pHBYR9UBeGvVneO7k28qUWK2LCLUeezzv/0953?=
 =?us-ascii?Q?IgsKE6XY8cB3hOARl5NS+4GdophHCvPqysotV886xKqVjUEhJeyZMCwsBeGV?=
 =?us-ascii?Q?ZCi7JsYpHmUk1zd4mm4fXh4OY2vcXJK0JjJVsZ3k+A8z7VCEJdBnFDwIEWzH?=
 =?us-ascii?Q?CSSs5V0pFrHzTtpI9NZHPkBMyoNn2TFNYBIgkgvzK7kwx4bsxlAETen4vPEN?=
 =?us-ascii?Q?fMTV9ZhSuJcVY0Kn635WvLZ04vfzNItE39ZrW+Wt?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9eddf0d2-8483-4104-0e66-08dac888eaf0
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2022 10:46:00.8742 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gfxKzKR0j3AHFRyQ0tmj07c/o7a00dkyGb3Zvjmdnr6pUo8fp3N43cF1wCTWtL5iThkh2dnqDyvs8OICUg/SZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6123
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668681966; x=1700217966;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=EoJpiZ8kRurUoIYJt2XpPb5R4xO74wO9FB7NESAG4bo=;
 b=LBSoe7tu+6jFwbQhPIY+4X9AZGQPaQ8DEsMF6Enj8G0REPXpVBL2s3TH
 Cn+DCLQtozjbeRKzLmkuExdJbbImq5zk2NwzMs4IL3XG621FbmcR96152
 BKgEoTgy8AZBMaki7dEP2J5Zetzqtpbqh+014GNngZkXoKMznEBXI8elZ
 9F4w4GhmJSuGOBi2Ws0mUoORHVsDV0+m5j1rPN8FAgN3DLAFLHbCr6rYv
 G6sKMq/bLnVEVSbJls/h+wvqJpiarndGj/xPWEFvuB7GzOAoyVfcgTr0h
 Hpi0vEsvnuBJdJmgH/NueMbnCUJEEKjgpxYPSJlKQuEoHR7ZPjSVUWJ/Z
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LBSoe7tu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 10/15] ice: disable Tx
 timestamps while link is down
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
> Jacob Keller
> Sent: Friday, November 4, 2022 3:32 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [PATCH net-next v2 10/15] ice: disable Tx
> timestamps while link is down
> 
> Introduce a new link_down field for the Tx tracker which indicates whether
> the link is down for a given port.
> 
> Use this bit to prevent any Tx timestamp requests from starting while link is
> down. This ensures that we do not try to start new timestamp requests until
> after link has been restored.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> Changes since v1
> * Moved the changes to the init and calibrating fields out of this patch and
>   into patch 7 of the series.
> 
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 11 ++++++++++-
> drivers/net/ethernet/intel/ice/ice_ptp.h |  2 ++
>  2 files changed, 12 insertions(+), 1 deletion(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
