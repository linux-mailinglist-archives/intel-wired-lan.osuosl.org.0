Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1343349B4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Mar 2021 22:15:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5163E60630;
	Wed, 10 Mar 2021 21:15:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ihHzBLYnV34D; Wed, 10 Mar 2021 21:15:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 59FBD60620;
	Wed, 10 Mar 2021 21:15:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E670A1BF37E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Mar 2021 21:14:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D496A83D71
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Mar 2021 21:14:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I04P9aCwRLxz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Mar 2021 21:14:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 14014842CC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Mar 2021 21:14:58 +0000 (UTC)
IronPort-SDR: 9b03nbrDTJ4aBTHsJGjZ3MRm3YGe1n4qq872B8oY1220OWNXoXpS10T4SASRwDZOpQXUthye7j
 uqt3eDhxOydQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="208378395"
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="208378395"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 13:14:58 -0800
IronPort-SDR: gCGwU9uYK9peuW9GQesakj3ggikkK400VKXuCtWikM2dH1Vs9uYhu+cmqGS188QxlTVDMbMUWU
 ax2bQfBKc0mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="509807224"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga001.fm.intel.com with ESMTP; 10 Mar 2021 13:14:58 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 10 Mar 2021 13:14:57 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 10 Mar 2021 13:14:57 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 10 Mar 2021 13:14:57 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 10 Mar 2021 13:14:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=odY11NSYZ2UWC3/Pwqj3s4e7ShOk/XSzlJSvXwM+K0EFPfSSOLNhgSpVW4Vz1ZD+2ezGcnmx9UuugiOid/oNRCJqfwnWpNMDoLc+2oEJcEyPYxuMBC7Ri1sFQE/Jgpg/4mSTxsyOhugHye6gwS2ZtRehXVyOdipakoft/tspXH1ck2H8yVxImuSwd5CWnkE88ISOt3K8mKKGnlDx4UE3rNxbTnqHDoDWcSQJ4357n9KRJpEZ4wew1DMbt3CKziAA70t/98w2uqfBd6vPHfsQLrloAqy958jo/CMbE+uaaZejxBMLCdFDZxFpCSzpCCR29V1S/Xj6JfZqhH2xb+SVQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8MrvNE+ulsBUY3vCo2FNgWxkdWziDkRjxLpHeBdvjeE=;
 b=cSiPdMqGvZA0GuvAXXYcaU+7t6zFd8IE3EYx4RdVCC43Bt1v2L1CuGhxZZK0d2j9PKCEd6wlsspoVUF5z3DRZ3lO81k1Ot8zi1fMv1erm5xKosaVW0PTOO2xHKnfYkTUfIRhlH3gtyzdoHj0a+CAe9pJ3YBD4nLp3BTsFCvG4Ip7rmYx5pQwpk9cr7fLO6nl7iCSLJFRYp8jMWs87Z+PGmP19jdEiJEsd0/tbLZ2q5cyTv7FbZqzkjo4T37JqJn0LvFbyRNsrHXKS5/PD2PvS9kxR/dcU6braPah6miQZUz7I0bKTV24++pfk8aPuxXI5/+jeV1tk4p5/iTB/bKv6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8MrvNE+ulsBUY3vCo2FNgWxkdWziDkRjxLpHeBdvjeE=;
 b=dN0HY8oR/Jjk1eQVwzi3b869AOZmxonFFlZ1IDcJ17rOJw/X/ATdSRAsCBn1Bn0LH46r6YztBUkWqHujBst/vuoB1moOloPtG3W1tXmXymE08HtnxQFHYMyAjLrCRakCw5MB7iHgpdkt6lCiLti4aAzY8ieuFpCL9quSP/w1uDU=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MW3PR11MB4699.namprd11.prod.outlook.com (2603:10b6:303:54::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.17; Wed, 10 Mar
 2021 21:14:56 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3912.027; Wed, 10 Mar 2021
 21:14:56 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 03/13] ice: Continue probe on
 link/PHY errors
Thread-Index: AQHXDIZ+kRDfhN1bSUuWLwDlrAA+Eqp9y59Q
Date: Wed, 10 Mar 2021 21:14:56 +0000
Message-ID: <CO1PR11MB51055510D3325C89C16DB262FA919@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210226211932.46683-1-anthony.l.nguyen@intel.com>
 <20210226211932.46683-3-anthony.l.nguyen@intel.com>
In-Reply-To: <20210226211932.46683-3-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.213]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c414e536-1d36-4037-9f96-08d8e4098e80
x-ms-traffictypediagnostic: MW3PR11MB4699:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB469908DB86C21BE7D8178127FA919@MW3PR11MB4699.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5ZmnakjCfQgPogYWN2FWs1IXfZ56DquncIzC4qGDO+qtqzNkxSp0Bkvm1jgF16g9142at18/kU0O6dVV2Wu2eOJ4428e4J2J9D5LvXrIs7qkyjIDuETZmiz1NvPZjx/ptMefBQ2EH5tJenFFD2SZXIPVvCMTvFUy7JZ26TE75Yn6oBaFKoVzPvBzB166vUJ7olPymjH1gmLcyBqXQZKMoM0f09RWTrcDvA77AeJv/4AIBPBmZJSBJaZcD81fX46ZVOih1VI0VVCQ3LKgP3rbLvLT7/U6dP7gjGMFbOGb3a0EELqa/jkS9B87V4b5Q0wVEcJz7Cb7ULVaA72n0hVK5hVyHZY5/TQqhpnIe/7k7Xk1KRXZC/RGwe6jU0F3xjiwDK+5mOmKfzKw6ivcXEMxpCr0vKbee+simzD10UkyTk74gPD2RObHI1s1pk30h9vUEiTdvOkNq+NCj/cNOeej4Q2SlmKsuukT7SNxqNR2LWKwlq0cxiBMgsseZ6oajaiBBwRp/JX4aWPe9/CoRGRl6w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(366004)(376002)(396003)(136003)(39860400002)(53546011)(33656002)(7696005)(26005)(52536014)(66556008)(478600001)(8676002)(9686003)(5660300002)(76116006)(64756008)(186003)(66446008)(316002)(66476007)(4744005)(6506007)(86362001)(55016002)(71200400001)(66946007)(8936002)(2906002)(110136005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?bvllqaQ594aBUpg61nxCX0YtVnhlkyga3shQuYxVNG4Z5aTb0FnUOpcBITYQ?=
 =?us-ascii?Q?9cF4gkmROKTaZdqGLdfUxOzG+VqHsgnMt5bJ/tzndFqfG3ArrxeMKRdUOBBX?=
 =?us-ascii?Q?VsqM4YgtyepQlmqxpev5SocGkV/ldtj65ePKpGVSJ3X+B2Yc5rBv8VFNMbvd?=
 =?us-ascii?Q?ZxF48B8o8n/Ac2DjWCbSs1FqbdjM0TRRhNUGXgfpuko6eL+BGs8TZOrYq4Mq?=
 =?us-ascii?Q?qAQ/urewaQhmVyMu9C0/sf4w/oJdhKl3cRGa+KwNtOG1QHp9IjoKPEkbdrWF?=
 =?us-ascii?Q?dMdjH93tr+SuzfRI/ocX9zmDsiKp2zIxNOQaFGpK5CVVJr6klCc8YY1xSKrw?=
 =?us-ascii?Q?EZHAyA6nitnNn9u1mwfU24rZaOEhxU4Yzab+/RSrig5exvSyO0HX4HG+bQOK?=
 =?us-ascii?Q?Mla+GxC5xugSa39Tb/zDoNU7qnu9rfstvtZYwaxpknEUZlVWZIt0Mpu6VtjN?=
 =?us-ascii?Q?j8evK02tR+e9Rruz7ezyx5u/7HalTtaNnvB4d/TRhQGqkEFDojJqaVFgr4qZ?=
 =?us-ascii?Q?UTwF0hKQ7otbqQedvFnwL7d5fzjeZAUTG8KzgDZw9XXvpKiiqibbUpVPeE+P?=
 =?us-ascii?Q?AOy7NSKwqeKBkaNP/buj1hELg/fbaXvdUgLrncq0o+96lZ+LblH5oYQrFXhq?=
 =?us-ascii?Q?CmaixcTORjxMoPP5z9sKniTrQgvY3oVYmXJV6bWztm39AsgoggGO7U9atF8g?=
 =?us-ascii?Q?Oezt8sADvHbxMULxWq6001BUJuRhhWitZ1m4OP0adIfSaFgG+rX+z3XOi7OZ?=
 =?us-ascii?Q?D8yApvGDLq2iScJBwpp0Tyxgiaa8q/PdMzX4bBEU+v/7xllLwpr01GtMfYyL?=
 =?us-ascii?Q?5+ANYDJP+XFO/iT5rrr5o5984z7aKRvyXlDyqucDH9UnqjBwLVVRYoe8SAOo?=
 =?us-ascii?Q?CBptVSVUd9KxIbZWIsxLiiWNYZbQoZEFReOsblg46+1EwQOw69WhrfaOLzGG?=
 =?us-ascii?Q?gB4Ht6SYVjCh8BSH0QMajg3m+OLmZ3EiJrfijH290cP57wBfw7QGN2pOm2wm?=
 =?us-ascii?Q?Kc9ZhEsbUMXYKN3PpjBAsnes/o0hLG7mzZNKJ1e8AchfB846+jXqOYsQtr8H?=
 =?us-ascii?Q?rtRq/VdOPnW709nEqXcy+EgJkcyewOvipdqOXJOotwUkdm85UYCv+kiKCX/a?=
 =?us-ascii?Q?9nZBZW6LjUvTcEWE9dEwcl5NkxzyzBQRlcmPzraTFT3Oc0VLZxfYVlKO708n?=
 =?us-ascii?Q?DP+JkFkZXexRbsene2Yiwreo0/0Impd01xxC+psNo0No4OGhYnFIMIfVlXsX?=
 =?us-ascii?Q?jXS3plFHucZHra+bZmbyLZJAGcye1iFYKyI8UElJ+d83H7xJSIGcqLc5z4db?=
 =?us-ascii?Q?wn+bpMUF3n96Fb+cS1u5y9z6?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c414e536-1d36-4037-9f96-08d8e4098e80
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2021 21:14:56.8293 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0t7DfyrK/ifxoHgVfqBzJAvxeoN2dVNeVO5bNy5/4atINiH+iZ/hF+xtRHQ+CuekrOKPQ43NVRLVXtv8P6/WjLMR+Q/tBdqCF7+iw/xttaw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4699
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net 03/13] ice: Continue probe on
 link/PHY errors
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
> Sent: Friday, February 26, 2021 1:19 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net 03/13] ice: Continue probe on link/PHY
> errors
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> An incorrect NVM update procedure can result in the driver failing probe.
> In this case, the recommended resolution method is to update the NVM
> using the right procedure. However, if the driver fails probe, the user will not
> be able to update the NVM. So do not fail probe on link/PHY errors.
> 
> Fixes: 1a3571b5938c ("ice: restore PHY settings on media insertion")
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 15 ++++++---------
>  1 file changed, 6 insertions(+), 9 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
