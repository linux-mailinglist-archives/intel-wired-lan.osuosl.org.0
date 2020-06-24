Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B341E206E1A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2020 09:47:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 55948203F4;
	Wed, 24 Jun 2020 07:47:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yv9jOyWn76ma; Wed, 24 Jun 2020 07:47:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8F6962207F;
	Wed, 24 Jun 2020 07:47:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 10A1D1BF861
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 07:47:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0D0C9886E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 07:47:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ea4qzXXItSrK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jun 2020 07:47:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 315A98869D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 07:47:19 +0000 (UTC)
IronPort-SDR: rMRRnlDQwFSlOWyMt2V1FvRzqDsq2jPytgXm6DIFkYOSNA4kWE7OpwSwiWrariwnXFD1J6vNfJ
 I/R0jVvm0vJQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9661"; a="205878357"
X-IronPort-AV: E=Sophos;i="5.75,274,1589266800"; d="scan'208";a="205878357"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2020 00:47:18 -0700
IronPort-SDR: tIAr06mSauDN0KWJab0iucWsaudkmdTnK59/DYwbtTLHxhX/mBUVWT/aNntHLOn/r3PdujJpxW
 72pGt2IbBKiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,274,1589266800"; d="scan'208";a="423285933"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga004.jf.intel.com with ESMTP; 24 Jun 2020 00:47:18 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 24 Jun 2020 00:47:18 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Wed, 24 Jun 2020 00:47:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j0NYBeGf0A1Vn+tYpoeGBpZXXurWysGSCHqDw2j/OxNc8gb9Z6kYYprRUoXTlMur0vrN2McQsoERMeF7DAhPgf9tRRAaOLAcxcjY+8Of8zuTPVZu+j81FHQ8AZx3FSv+Yy7PfHbzucZqz0PmCUQCoH/Ewup6tlpFqQsaJmgQk5d7O/0oziGlGk+XPI+wg/qqdjyGi1fQwLR8mwQEw2grNKiXWTEx/F/GeUt2tppGHOHfnNuFurURa/qTCZrKIVOqBqEcqgT4oHno5apHiZnpz7tx7Qf2K34U9bflfPESz4BSSDipB4hGvssMyh18itjKimYfgU9VOYIQF8vmif3jgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fNpCZql9ScLkNzKt4U4FecMW5rMKU7OG8kPyTTuNqUI=;
 b=fpheKsg+1rjR8eCEqx/foA/IcEErQzAhGQs30rE/P5wpmC3BCyLGnbLrZguYp+QJKsi6VrP0YZdCe60OJafBz5bOxcqXMTU5A/Kd3UkMV6G3qIlDQLGgj4+afrib9cyJTPLvIXhrb8YCCH2pYTMlfHGGAEzQuyQD1ARq9QiRHhiRe0xoGcARH+equw5WI8K6lti/q8yFkk/uNRyy2CLuBEDaKDpYAwuvVSh0qNc8ObJj7vIr6Kmf8CZOGpvGzwZe2SBxHsQB0+YgSVClTaLtMxYOekdI2a9RXCVIEQ1kldxbd4a7sMzscbm8RNkl1dqHSL88VVWQ/VufzhNqc+q5Hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fNpCZql9ScLkNzKt4U4FecMW5rMKU7OG8kPyTTuNqUI=;
 b=nkXMXG5LlBcXg0uIp5tvpa5oWvYuTkYz1gbW71zbLpAN8GD15SGjv28UQziR3dZFjF0P95GfTfit3OuV33QBtiFWPk7DUEuRnAPKkOK3XaGOuCwHaN2O6dNiBU+2+N6qdTH7Na2577TERPcYSJxvDTMc/mEvn8K2iA+3ML6wVIE=
Received: from DM6PR11MB3900.namprd11.prod.outlook.com (2603:10b6:5:19a::26)
 by DM5PR11MB1452.namprd11.prod.outlook.com (2603:10b6:4:9::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3109.23; Wed, 24 Jun 2020 07:47:17 +0000
Received: from DM6PR11MB3900.namprd11.prod.outlook.com
 ([fe80::3dc9:b760:b900:437e]) by DM6PR11MB3900.namprd11.prod.outlook.com
 ([fe80::3dc9:b760:b900:437e%6]) with mapi id 15.20.3131.020; Wed, 24 Jun 2020
 07:47:17 +0000
From: "Lu, Nannan" <nannan.lu@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v4 4/5] ice: enable DDP package info
 querying
Thread-Index: AQHWSfqeV/Hf0m3tJ0qjrJrU1nRjn6jnYobg
Date: Wed, 24 Jun 2020 07:47:17 +0000
Message-ID: <DM6PR11MB3900321E31A06A733F96E2A8F8950@DM6PR11MB3900.namprd11.prod.outlook.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
 <20200624072939.9363-1-haiyue.wang@intel.com>
 <20200624072939.9363-5-haiyue.wang@intel.com>
In-Reply-To: <20200624072939.9363-5-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.102.204.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bcdfabe7-5bee-4c51-214e-08d81812d14a
x-ms-traffictypediagnostic: DM5PR11MB1452:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1452FBD821F564A7D4863780F8950@DM5PR11MB1452.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-forefront-prvs: 0444EB1997
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OVNxuAYNcOkoRkVGu5owijrTHf4MDUV3ESSocMztyLgVy3Xf/UIUYPbwdyOWQn38J3W2EuRgxgoJMq+OrrhJXOdym3PAq6JnRt8xHr/J89oL8IGKT3CSVaJOka63pF9jVOzBLD3QLWn5bTk7XVI9Uu0kPQUTdRLWmz2+BLOcA5f9WQFhqNY3YvQ0JE9Tt0w37lotnDY4cz/0VegS1JuKpH/6zXzwH7wOiSywPbdoKwUNPR0LQXbc2DivsOQecYLru03tKcDa2IOKZ1cM0XBMwBuipLXitseqKsz0Jh/mwa0gzgufqOjzomsQGiHCfl8FH335TgumygfPBrN+DK9IkO7s1SMcZ0S9YEtrGkCzCpuFtWgl2uebsKEh9ExAlGJU6flowJJWo2V+gzBpjl1eRA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3900.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(376002)(346002)(396003)(39860400002)(366004)(83380400001)(7696005)(186003)(26005)(66946007)(107886003)(55016002)(8676002)(33656002)(6506007)(8936002)(966005)(53546011)(4326008)(9686003)(86362001)(5660300002)(76116006)(54906003)(64756008)(52536014)(2906002)(66476007)(66556008)(66446008)(478600001)(110136005)(316002)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: DztZVG3dZvDtfOKIf+RnRsEHsPycvnfspHE0foMXh4iTVqtjP6jHtozZ/OxkfKzV2r3OajaZPpp21hTxOj6oaPodzrGYwnsOby3uJ0HxHBv65CAzFimf/M2DuThe3Q1lfVgxGNN4yC7qcRC2ce4CSkx3Pw+DH6ukghu8CQUWblU9QGXu7b7djvF83Gg+Tvv2dFxPNBEi8G3mFFdiqwfDezYylmB29aDmasVxqCT+/yUPPeEEa8dxdXUnUvglpJhhr/3AQnid1/wmJrkSwvOe7vFUeOIN4I4Ndti1s+gy0PEA+Om2CuYz6TH+PyN+DG93wWXbDYes21eUOXMhHhafEW53df1fBm25GlibB5v6F0KYD85rDDTH8A11vKMKSayrhV11xBzj241Cc06A3U8pbIWbIUDDpA00NKwzch4y+n0Bny3KtnFiJ39s1x5Xuf9Fxuj54FPBqi6+Z8BAWoVRYMI/tgl8WE2my3gJTpcJkQK5sERnoE/rP4k97AEHEJTZ
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: bcdfabe7-5bee-4c51-214e-08d81812d14a
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2020 07:47:17.1939 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vEp3pU8IfhCJrExaMrR2UPhVwSXs8NchzG8Tu8gD8Qx1pqZrvvjlv9DRGwxInT6OilfqYPrCkQHV/zG1GgJpfA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1452
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v4 4/5] ice: enable DDP package info
 querying
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
Cc: "Xu, Ting" <ting.xu@intel.com>, "Rong, Leyi" <leyi.rong@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Haiyue Wang
> Sent: Wednesday, June 24, 2020 3:30 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Xu, Ting <ting.xu@intel.com>; Rong, Leyi <leyi.rong@intel.com>
> Subject: [Intel-wired-lan] [PATCH v4 4/5] ice: enable DDP package info querying
> 
> Since the firmware doesn't support reading the DDP package data that PF is
> using. The DCF has to find the PF's DDP package file directly.
> 
> For searching the right DDP package that the PF uses, the DCF needs the DDP
> package characteristic information such as the PF's device serial number which is
> used to find the package loading path, and the exact DDP track ID, package
> name, version.
> 
> Only with the matched DDP package, the DCF can get the right metadata to
> create switch rules etc.
> 
> Signed-off-by: Leyi Rong <leyi.rong@intel.com>
> Signed-off-by: Ting Xu <ting.xu@intel.com>
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcf.h      |  6 +++
>  drivers/net/ethernet/intel/ice/ice_main.c     |  2 +
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 52 +++++++++++++++++++
>  include/linux/avf/virtchnl.h                  | 23 ++++++++
>  4 files changed, 83 insertions(+)
> 

Tested-by: Nannan Lu <nannan.lu@intel.com>

> --
> 2.27.0
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
