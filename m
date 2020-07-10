Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A478B21BF25
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2020 23:25:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 32D5689B3A;
	Fri, 10 Jul 2020 21:25:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M990kkKqwmLe; Fri, 10 Jul 2020 21:25:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 851EB89B44;
	Fri, 10 Jul 2020 21:25:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C057D1BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:25:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BB88289B3A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:25:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YEF2QvvqNUal for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2020 21:25:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E94F989B37
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:25:29 +0000 (UTC)
IronPort-SDR: +cMDDjohqsZwahPkfKVgfzNeVr/ZEyOfZh8f36juy4Uxv0IsXjZfinmW0o8AoSr9MYpj53SFSE
 XsKxL/QmPHnw==
X-IronPort-AV: E=McAfee;i="6000,8403,9678"; a="213170755"
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="213170755"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 14:25:29 -0700
IronPort-SDR: vgd8y/utFnnYI/Xn4yD6aS4B7srYyqCe+B8g5OuKDraGU9snDrnDkdT8aDHpPSLUuvrIfoim9t
 OHeVsn7RtTfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="306676829"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga004.fm.intel.com with ESMTP; 10 Jul 2020 14:25:28 -0700
Received: from fmsmsx157.amr.corp.intel.com (10.18.116.73) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 10 Jul 2020 14:25:28 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 FMSMSX157.amr.corp.intel.com (10.18.116.73) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 10 Jul 2020 14:25:28 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.52) by
 edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 10 Jul 2020 14:25:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OM0T3mZcWdamQorJGejqwlIiKDJytZlMaOs5oXgvO7m3V6+4it7VgX1B6KOYZYKYCOmP8c15YGZARpqjaJb2vXXPkkg+UVTfC/X+zLkO+WOla4Ge9seCtfIC4MR5oJ/hjMdQfZv1NgbQjacc5spPW0scBdw0kfI7lUGW1ZUY4mxLX+NUY6u7pN/o/ZSVTnn6f1sBoKk9bcdmNxySVt5l5Pay2ZYJloVuTlEnyFW0kCkur5haFaJ84O0FCjf6GrwVuDmneWoJbwDzj84ar2nbuRy53f037CuPu5oOQYWM8r8UY7dG6PprAafPbAqo8NYfj6nTDVdjAiiKrmT+8kQAzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vYHF4eOnRgrZtyMx3wTE//xBINSU2oaTM5pisxFHuhg=;
 b=Mu/ssQr+tVVou2U/i0ZqSAZuZTIerZxb+QsqWQSwqPl8TxWQM//UMIED+N44ctH2VLEPMNuH7wDSE3msErpyrRSh8vsI6F3GicvdNed9fA1q90ZeIhSrP3owASbIzJ5SFxHoUYsmyybq6o+VDHzU3EngyJ2kvj7uM92WbpjNPqOhtszgXtpuiIqrNFCG+ZvVwVaQF9s34AMHdMqcKcNXzdLMQakCyO6ses6v7bv+N4jxgfF+URUTUAZZDEqovTlsZT9Tll7WAMTC5AeqVPIIL2S6A+vwZUKSshFhumwRwxEz9wx3gGI9ajh/04TQVbLUw35GP0jxPZmVD3tNKI2zWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vYHF4eOnRgrZtyMx3wTE//xBINSU2oaTM5pisxFHuhg=;
 b=X3q5YgVL6PDyGA+tvUjG6m/29Xr9DDl2vC1w7re3zF/GjbxwU86Pxyx9PWxvt+LHp36AhoqnXlaVJAppno9AwPo7BRSvCZfDSDYgMn2kTOHsuTsHZEqj9Xab0FNa820WCdp9uRAByw3C4skj2zSounOyN5ACZl3yG8Z9SCJRU0A=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3699.namprd11.prod.outlook.com
 (2603:10b6:408:83::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.23; Fri, 10 Jul
 2020 21:25:27 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3174.022; Fri, 10 Jul 2020
 21:25:27 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v5 15/16] ice: Add more FDIR filter
 type for AVF
Thread-Index: AQHWVlX9GfjtGlHu4E2H7cU+xrauEakBVH/w
Date: Fri, 10 Jul 2020 21:25:26 +0000
Message-ID: <BN6PR1101MB21456BD666C1FF563365830B8C650@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200710010644.33817-1-qi.z.zhang@intel.com>
 <20200710010644.33817-16-qi.z.zhang@intel.com>
In-Reply-To: <20200710010644.33817-16-qi.z.zhang@intel.com>
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
x-ms-office365-filtering-correlation-id: 58ef64c6-4088-45d8-4eba-08d82517c3ae
x-ms-traffictypediagnostic: BN8PR11MB3699:
x-microsoft-antispam-prvs: <BN8PR11MB36992601DEADC8B087C966808C650@BN8PR11MB3699.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2089;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eXtJ1vmVJBcIkMkdJRmRJjm+Q+NhVpBMmcA9ZAuydlbnUBV3wjgyv2Bo6A8LNZWTLldYgpZpuAO4BY/CMSpOlS8A8bMkOFDamD6xydous5GTNi4CwkstgQAK9yrhhJ+H7HpoH7/wEWioh+lzpF8FyfhaSxEC/Ao1KPztBirNhLE+cijwYchSKFJbOoATDBGXcHZc6HyKOaIe8PHDBtaEaw59tGptb7Y6SPqbsOwwtMOQFwqA9GchYMtLQnmib8YjU73IBtiI8ZXGCecerJbxJd+z5ZXw2jHSVi1NNgI5fUAdE/VtnrP6zC1X9yYXhovwhS54v6Eb0anwwA6Wx5+JSA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(376002)(396003)(346002)(136003)(366004)(316002)(66446008)(64756008)(66556008)(66476007)(71200400001)(76116006)(66946007)(2906002)(83380400001)(9686003)(7696005)(33656002)(86362001)(478600001)(53546011)(26005)(55016002)(5660300002)(52536014)(6916009)(8936002)(6506007)(4744005)(8676002)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: lgKZgCOy7wU+PU1ytegbSklhnLIRlHg2aaEjUA7Vo0h9PkGNQAt/YFq+UIk6U7i41nxXAXMb9b+zlfm7QIWZOVrgoEl8r4B6BDvwVUjFvlvjFSOsQtW3Lon9HFR5++eVJeRX2BbrsAujIiyGgjtezsDbKjV5L7+Z/uBdD7ZxpcXlZvDqyCnUXidGtsrxFNU5oO9trZDi+97eD8aZqbUOt3K5p4AKKzcXtCt883l9s6dSSkFYRw5xEgufopQ5JzJIRbhXXrbjx93CsC7yvMJUiO6hbm0PfB/J79NyInM+f7rN0yKIv9UvoSBjiuksbWW5O93Rmd3Vyt9h+yHa/COBWD9cCh935mA70WWTjor0q5IG3uM/ZufjSOxdgpfamNKFVhpNsoqlznfyCZHt/wIVgUNZK3fHPu/SNVF/iSLrp1S1Jua9lNrFwAUeLogzrtaxdyFBiokcvfE1sUm0q4WnOzQcLiQEW7AW2ZtVr0Fr8cI=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58ef64c6-4088-45d8-4eba-08d82517c3ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2020 21:25:26.9991 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0tdkc3tQu0rBt5p+bvVbuuBtSU20FeSUmOgE5QY4kRGdxDXL82DYMCNMrm432YeoctTMXWJ7mrg76JWMqnoQ8xXEdxT4WA+43bsucNFG14o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3699
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S48 v5 15/16] ice: Add more FDIR
 filter type for AVF
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
> Subject: [Intel-wired-lan] [PATCH S48 v5 15/16] ice: Add more FDIR filter type
> for AVF
> 
> FDIR for AVF can forward
> - L2TPV3 packets by matching session id.
> - IPSEC ESP packets by matching security parameter index.
> - IPSEC AH packets by matching security parameter index.
> - NAT_T ESP packets by matching security parameter index.
> - Any PFCP session packets(s field is 1).
> 
> Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_fdir.h          |   7 +
>  drivers/net/ethernet/intel/ice/ice_type.h          |  13 +
>  drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 280
> +++++++++++++++++++--
>  3 files changed, 282 insertions(+), 18 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
