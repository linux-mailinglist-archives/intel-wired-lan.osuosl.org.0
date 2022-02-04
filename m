Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD004AA006
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Feb 2022 20:27:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F77960E38;
	Fri,  4 Feb 2022 19:27:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Idz24y68TmbA; Fri,  4 Feb 2022 19:27:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4035560808;
	Fri,  4 Feb 2022 19:27:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AEE611BF5A4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 19:27:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A987181992
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 19:27:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UWT76djNJ5_E for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Feb 2022 19:27:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 101A88276E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 19:27:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644002832; x=1675538832;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TiPAU7kT8ChIGAk3Nm8TEfiISjUDxunjknIY3p9drFc=;
 b=FEPYZPqj2/tm8ShH514FceOcdbN9zIN3bzgMRgg9DnymSrU431nHF1VA
 NfSvPKs+hwDeJxg7El1+ICDE2ZLdaRuyK7uaubUqiBxkXKHGS4vus2HIj
 gSkdZ+7JcuHCiJWigrwng4aKoEJc21kj5jMEfWl/LKQuu3XmEtGxmXi8o
 2C+0pzXI2glBQanhSe/+qyI2c3fjnDL2IZpLK8JznkgQ/t/MQG2++Jhhx
 uoTN40gKsirw2T0ecJHszpoWZVUYeHEWhf+NcLZzrk4zimu7UfBo0SSYS
 R5bzjUI7+JTS+MhBxGqN4kPmAIGtsmLDRWaLmP4Yg11xE4cYNPKOR0Dec g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10248"; a="248377505"
X-IronPort-AV: E=Sophos;i="5.88,343,1635231600"; d="scan'208";a="248377505"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2022 11:27:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,343,1635231600"; d="scan'208";a="600319971"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 04 Feb 2022 11:27:10 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 4 Feb 2022 11:27:10 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 4 Feb 2022 11:27:10 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 4 Feb 2022 11:27:10 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 4 Feb 2022 11:27:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T5Prt2FoaOhgxwVRq5fenHu3WZ4lE+bp+5UBdSc1S9UsFS1lLAvNRRABFX3Ql61zNYY9qnf6ZYa3dEOB883tXxmIaRA8a6gJa27bHX9jSvasFx7Otb3vgEpAkOVJevIeObKKcKoKtjG2+63FkKZdx5kgQWHdyYAzvmvQLspVV7HJX27lGiHqxp+0aCSEfPIog2C0d6hmSKW8KTyHAeJ+MXQd5Qhx7ZgoVsLthLleNxJLdK/HSeQusAoM7FbidX4q1fi1Xnr0tZaMtwMgI0tx1k09ydKaw8NmhKMkWUszFaTKGp9KJi4UczdXG3A4QfLIhBoLPIrwaopsjXVbI5RXpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZAts2tSf8VV7gX1LyTUBKAwW1P7iWsJ3R5E0fTfRnkg=;
 b=YDuTeSvLdY6BiWxU0befB2FjxMJj+Kz81vq5tmzuul6jrG2excgycUbAhzJoS21DqO5m/8sjJSnYwBo+5czFMVvM8hc/9bC7Pd4dzjqug5D6jiSwW2NsZOwAOWQdL0N0RvR70FNTzNKsxhWBS3ZjpR/7cX4LvBgW2vSybA17LxaaPQdZksuvSc7GgBEGL2H1PiY6TQJcYPrwyBsD82Cs3D1tgfpiTAbMkYoNLomyPt0WMtoxs814cd4IUv4UtIfbf8Yo7V4VtMZtSca2Bmc1bcy9+AI3IF5BFIRZUqZWQKr4E5fomSUtIJ2owbeMDP9LCu8DPGQE6HSWoPvkfxObtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from SN6PR11MB3518.namprd11.prod.outlook.com (2603:10b6:805:da::16)
 by BN6PR11MB0065.namprd11.prod.outlook.com (2603:10b6:405:65::34)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.11; Fri, 4 Feb
 2022 19:27:08 +0000
Received: from SN6PR11MB3518.namprd11.prod.outlook.com
 ([fe80::4d44:28a1:355b:71de]) by SN6PR11MB3518.namprd11.prod.outlook.com
 ([fe80::4d44:28a1:355b:71de%5]) with mapi id 15.20.4951.012; Fri, 4 Feb 2022
 19:27:08 +0000
From: "Switzer, David" <david.switzer@intel.com>
To: Joe Damato <jdamato@fastly.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [net-queue,v2,3/5] i40e: Add a stat tracking new RX page
 allocations.
Thread-Index: AQHX832URsU/CUsRi06Sc7tv4shp26yEE0rA
Date: Fri, 4 Feb 2022 19:27:08 +0000
Message-ID: <SN6PR11MB3518D319A2EF050E5E83C756EB299@SN6PR11MB3518.namprd11.prod.outlook.com>
References: <1639769719-81285-1-git-send-email-jdamato@fastly.com>
 <1639769719-81285-4-git-send-email-jdamato@fastly.com>
In-Reply-To: <1639769719-81285-4-git-send-email-jdamato@fastly.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e9957e53-bc73-45b1-b317-08d9e81455a8
x-ms-traffictypediagnostic: BN6PR11MB0065:EE_
x-microsoft-antispam-prvs: <BN6PR11MB0065A68ED22375BDEEEC5536EB299@BN6PR11MB0065.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:751;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WYDzj8EI97K2mGFGugGupX3WfeWxcU7Gpj7X1ej1bf6yL3g53g2foc8tSujD0H4M50aDGnNTwlwjJBUb7TPHtSaQfLC/BeRofxqjuACRaitCtAbs+/M93B96Ki+FfUfuyhURn/9KIsrL6jxwdDnBkJF2Gslu0rqM+rz7ZoWVMz00VIo56Pk16uAOSw+L7Sq0+2gmfolyYM4z8ozrcRoLBp2uKtUQsMqf4KuJVysbNzonmbU3UlaE5vb6isVDWbJjqXEDqKPyg25m7sUBr/Ab1q2H70YofsYWWpOezhkr9F/OQ85m8ffo+NbvhpToVdCchFJhGXYmbYQssBhxUa7GcIQLGKzKJcOUyc5Qvrfo3Q3TeDcYx2pHNxF/k5yFLjt3azXaazZmGUzQvgDyNjn6wxEn+kzyUwVRz9NMYVq1ZbanKnNCrh9DYhz/R1rVIVlMax0vI2ZZQhriOkQfKbwaV8rLYeZEnQhNvyciQvprPJSxnD3lJa5a+VZ5S6rmtFC6eqe5YKOovuXPMlJ/H0RX3pImd+pcVU2mrwg+nJC31MJjLw/o9TWvr2MEQ4kuC1LdJAQQNeNVdpft/Q4qYhg9StfvMesf2elKwIhMZQ0R1I13LW6ZVkXR7xulZZHgfoLU03iQQZbT/PvxnzN8xx7Y35kHmdyjD4/y5cVak7UyaMN3iZTNMlj0SuhI6/UxW5v1gWbJB1n28WDD6V2s/dXA5g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3518.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(54906003)(83380400001)(316002)(71200400001)(86362001)(5660300002)(64756008)(66476007)(33656002)(76116006)(26005)(107886003)(66946007)(186003)(4326008)(8936002)(8676002)(66446008)(2906002)(82960400001)(110136005)(55016003)(38100700002)(122000001)(6506007)(9686003)(66556008)(508600001)(4744005)(38070700005)(52536014)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LNBkwapNyaqG7uzXi5tIKpWUvcidufT6hu4yn0O8ZFDuP/poFWMPx6eCoGBA?=
 =?us-ascii?Q?bDMOwYUu1bBvEQx6e2NvzfwXUshzjw/TaFwU887I8pNiZ5wqCaLL5O7GfiL1?=
 =?us-ascii?Q?HBG9w4JpTbnT4dEiup6fAG1u39s9SAmeL4bGBCnVBjhtwB+LzOj4sH3Ciawf?=
 =?us-ascii?Q?ZnSwCSDOHC+enJ8TYKlDuPS01VAyHprGEfMYk0vTKo1CpiKZfaRQfX+g3rUS?=
 =?us-ascii?Q?+ICJUs3rPNg6cCW+yom2LTq65d8sOkipxP7bx+5T/NmVRtplZMYfPoqyrskL?=
 =?us-ascii?Q?22GYouQa8DG3qjQeizYH5J+HEYi7hDjwJL1KDY29eq9bt0Wb/lHAQTKXS8dH?=
 =?us-ascii?Q?aE2zAsujXSLctOybaWdd84qbmHdY04gBR87Bko+Bv6tTWWUbVEMuRfxyrMxv?=
 =?us-ascii?Q?FtAlwsbXkufDU36sTjmdFdK79yaghHsJUhyMvzX3qm4WYg4lJDECNz/g7WOe?=
 =?us-ascii?Q?tl19JOEHwlhgsav4LeRJoIRejU+JsWmhw0bJfqqxyEHQQI29JEAiqRGoe27p?=
 =?us-ascii?Q?FVSd5PPoPfwhAiOT9+ljcndmRqcuW454wUjrFupiM1QQq2rJdnPf74Cen9nH?=
 =?us-ascii?Q?w8VtYsHJm26iZHWeymDuM7BCvPVXWPihhExCInf2B9ANOvAvEXypKGRyt7Am?=
 =?us-ascii?Q?MltXF4p3GNzoNzLvGkzVyboNeLIPKOr31iz6O0k+i4Xul4inTxn8FSQyCqW7?=
 =?us-ascii?Q?m9KqPo7FK3R5Mfm3NfGhCgbm8IFbFv0AGR77m3VFFa5rhekklMrNMNmqKK82?=
 =?us-ascii?Q?Knf7hIPa5+1XjtsCmW5wngbDEzGm4GBnwZp+J28s8bzC2B2zKp2cx/5hphDd?=
 =?us-ascii?Q?VqZdERPtHViKI6Z3Vlnc9htZNMPPrBo3tn2rO7Wvx7ptsabi+u/oiKs6WYgb?=
 =?us-ascii?Q?wbD812DPMzu6ZNZ5WH7JBCkmyTWSdzjrV/RNaaoGqQ5Xig75UOiC/wx77xjV?=
 =?us-ascii?Q?tfdTBhfzSGIfAOL3rtZbj/2kyiQDH2w3mDiTaP0eWXcSo3GVKtyPAMUWhMmZ?=
 =?us-ascii?Q?Xx/wn991xQkoWDwMKouOPqLwgXGt1GaB6GhYU4N+F7HUqXTqV836sytZK8Rx?=
 =?us-ascii?Q?b7cbffhx3VcrP35k9kXcwtyxPObUVo0vK3jkAUoirGS1fF+0nZ/Zqfz6Mfxt?=
 =?us-ascii?Q?TGF++iQ4/ocZEGjKIlNzPqJD/s0Ws87SwqVyadg3SPO5bYLv2DPeflMclFC+?=
 =?us-ascii?Q?5m8NgmfpvoBnSpEF70FwJjHN/7YjFik7JgxImONe0NCSrK2pukk9nNwwxyAo?=
 =?us-ascii?Q?wzV+l3MsY6s24TTS0JFZUlFrmwd4TxZxRVfiaMSK0uPD5pYEws/PTW/V/d7h?=
 =?us-ascii?Q?L+sxt2Sm+67yBnpyhk9STQpw34XGURNTQ+hByfBNRQk9DCBxLjId7LdH0Gnq?=
 =?us-ascii?Q?hCuG2Hc8llVs/qhFh52q90U1e04UInVGmYm6h82ljZ3SaQDnHR1CcON4w7xZ?=
 =?us-ascii?Q?6/Gz6OPw7UdiJbgaPwspwn7v8UwPxVQXHnnLGnRcUJDEBMaOW4T1q+tfRtG0?=
 =?us-ascii?Q?b/GrvP0JzBOW/BpoZyciudNGGXtARwa6lyqE1WTybfr1Qjz1ls8UOsXG5Xw2?=
 =?us-ascii?Q?iNCSrDxeUusZfMtLrzlzsfi3gydPPpLr7GV4hzbNegJOSN+SUdF1Qoa7xym5?=
 =?us-ascii?Q?Qw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3518.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9957e53-bc73-45b1-b317-08d9e81455a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2022 19:27:08.2495 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7XD56CO4IEREvjeA3zfVESDxjlX7pnDDQ1Zb6Ok9nvZpQ4LfdxoesZhZ6T6LWFMu9t4orIh4w4rzlR+QAn3WBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB0065
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-queue, v2,
 3/5] i40e: Add a stat tracking new RX page allocations.
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
Cc: "kuba@kernel.org" <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Joe Damato <jdamato@fastly.com>
>Sent: Friday, December 17, 2021 11:35 AM
>To: intel-wired-lan@lists.osuosl.org
>Cc: kuba@kernel.org; Brandeburg, Jesse <jesse.brandeburg@intel.com>;
>Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Joe Damato
><jdamato@fastly.com>
>Subject: [net-queue,v2,3/5] i40e: Add a stat tracking new RX page allocations.
>
>Add a counter for new page allocations in the i40e RX path. This stat is
>accessible with ethtool.
>
>Signed-off-by: Joe Damato <jdamato@fastly.com>
>---
> drivers/net/ethernet/intel/i40e/i40e.h         | 1 +
> drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 1 +
> drivers/net/ethernet/intel/i40e/i40e_main.c    | 5 ++++-
> drivers/net/ethernet/intel/i40e/i40e_txrx.c    | 2 ++
> drivers/net/ethernet/intel/i40e/i40e_txrx.h    | 1 +
> 5 files changed, 9 insertions(+), 1 deletion(-)
>
Tested-By: Dave Switzer <david.switzer@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
