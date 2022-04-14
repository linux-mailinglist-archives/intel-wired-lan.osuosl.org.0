Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5CB500635
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Apr 2022 08:36:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9371A41886;
	Thu, 14 Apr 2022 06:36:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8qydwS1Hfhrw; Thu, 14 Apr 2022 06:36:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3BB014187F;
	Thu, 14 Apr 2022 06:36:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D0FB91BF310
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Apr 2022 06:36:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C90B5405C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Apr 2022 06:36:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DDGJmyY-43Hy for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Apr 2022 06:36:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D4E5740155
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Apr 2022 06:36:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649918198; x=1681454198;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=FXjL2zWmMasgbh2RO6yvBMq5tzBAkxQq2qYP/GFUWMI=;
 b=Kg9R49k7bJ3OqV5IgLnu7jqKeLBBfUm2YaJWDSrOzQmTlY64tj/8Nj45
 ymOuwQFMXz7Vvq/YBDqcUdPo2S4ZveAxUsFs4/NjuE5MTXnmjol11a6XD
 asck+Ha1AMkUYzFSkd19UBYlZwkqZWSEsW7NhUinNHYdI3eJXphl0Dvs/
 SDF3ybWQktBndbaDIlvewILhEvN8o5LL9kGdlMlrgwJscDa/LFUjF0ulP
 tPhKQtX28Hv7oCrzCAvWQrgcyTEXIMgePQqNolyQij0WMyUDX+joCGpuX
 0plMe7jvSkAjdeXP/wtPStJpuDzVn7Vt46iwu+JhOJ2qeLtBvolmoEu4j w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="261706629"
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="261706629"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 23:36:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="552537595"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga007.jf.intel.com with ESMTP; 13 Apr 2022 23:36:37 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 13 Apr 2022 23:36:37 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 13 Apr 2022 23:36:37 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 13 Apr 2022 23:36:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GbBK7/uvWaOlX3Yb6JkxNVJovOqEYQ7HjNqIw1IDDh2K7y/Y7+yovrZqNJd6/r2QzKbWfi6UdV2D7wcZr1GVtnRg8sTX51SXGG4qecl89hR9+jw6iISNaegdXODFQDlCIFZZE3Obw1omLK8KEIJ512mzZxrNAN7sq09DMLMS9XQKrClb4YVORrhRTHObRcypyFkvaKYBG0tjsSXUuXdYRfbhNuoPHqEnKTHV+VJFnRsQ9de1j2XuFtX6+0AW5gfqPj5pBOQNNagppQE/AfdAMytERUT4RbU9QxTquSckTyAlpUsrEfHQHEZJGDAeWKoezmLpAJgQcsgFK6iszRCUrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FXjL2zWmMasgbh2RO6yvBMq5tzBAkxQq2qYP/GFUWMI=;
 b=VqW8lXM8zr1nt9luldkskfy30xCJiwLJqdkhaWly77vIFJEzHJCosA/GGp5ImwLmeT8SG0W62Nq0E8tevlXfJd2QeKCWmYCVW60mtnDEoWdDJ6fPXnhVQBreXg0v4KcX7lUAF0v6nk72/pns98MLRQO1O+mofQHtsGYwZhQrnNsmL99l7kBxiqiBrVuZ0lqiZn6WVfP85IkcZjti9RWoqT+CX4o+6Rm7syByzvQUV6kcWEKf/I+iWlqvT6QbI6g8gMD+xwUDt2TuKbhRs7Mx93LPbbjLoLASh0L0xUPbkSoh0et6tUJJtwILgnN/pnRqU84bsRyBfFMxnOUZpmFzHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4546.namprd11.prod.outlook.com (2603:10b6:5:2a7::24)
 by BYAPR11MB3272.namprd11.prod.outlook.com (2603:10b6:a03:1b::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.29; Thu, 14 Apr
 2022 06:36:35 +0000
Received: from DM6PR11MB4546.namprd11.prod.outlook.com
 ([fe80::e80a:4268:df3b:c3b9]) by DM6PR11MB4546.namprd11.prod.outlook.com
 ([fe80::e80a:4268:df3b:c3b9%7]) with mapi id 15.20.5164.020; Thu, 14 Apr 2022
 06:36:35 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 2/2] Revert "ice: Hide
 bus-info in ethtool for PRs in switchdev mode"
Thread-Index: AQHYQrRvqi1ogmaPrEihETff9RuQSazvDhGQ
Date: Thu, 14 Apr 2022 06:36:35 +0000
Message-ID: <DM6PR11MB454618A0BB23814F21A7ADAF9CEF9@DM6PR11MB4546.namprd11.prod.outlook.com>
References: <20220328145828.10097-1-marcin.szycik@linux.intel.com>
 <20220328145828.10097-3-marcin.szycik@linux.intel.com>
In-Reply-To: <20220328145828.10097-3-marcin.szycik@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8d350114-026e-4054-265b-08da1de11f18
x-ms-traffictypediagnostic: BYAPR11MB3272:EE_
x-microsoft-antispam-prvs: <BYAPR11MB3272013F15689EA409AE97D99CEF9@BYAPR11MB3272.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ihR9DeGt4GlJjHXCOZNkFwRx8kemTWJICzVeav3hXS0Z80+59czbq/Husj1Mig6Em7arr7IUChPSUfIIXYeLdCMvg0qjdMkDYNPg4J64n5j4e4Vp7oghX0doi5/XjdfHlZjN5TZQeEH+qJTzN0+JUvMJC0tI+va+7p18xqyM5dkUfoif/aBmdjpgxgbErXSGLQvDpLaMgA9MP1Mb19SCWbu4RmTwlEX8Tw9IZqYdqnghyaGmBNzqsDVFXZSBx9vJzPOBe3gx1QJqqZwxV9qr+JsY4TqcOPkNP4Uo3SM0/HnzsN/762heTMbM9YWCBipNVokK6wHh+EHLlOe71wZAtM6BT5x74W0QXwvfDI2CcSECyq4wDrloF3ZpRIC8hFKL6nZ96kpRft8eXGMyIYd09VKCyPbvc/Ua93zJeIJCDs235A8SJK7AsWvuStTi6YcImwcRPfug34aGs9VwRY7uJ+40JDqhkSzgdZ3qfNA8pqqtxjiX671uO3mEK9gsaZ6UFYuUCL3593Nx0aGFSdSZnSbBTcp94a/UKazrOWFkRBHdLtROObAkK9iW3TRKK9WjNnp0qpx2w+Bu3FJk18O+ZfJrCypB9kIZYmfD/tTnykF2xlKWIIrYtM66+P8LVYRM+yA6IUNLBkFTe/SLvMygXJjR61bSX3Wu/4CgA6axl7qSi2ljwtbVgUCz3SRGJoN/1gRbtUnDzRp7eL89mjWHaCt+Vck1anPu58VN9GnQhw3WhXcV6KSeGN2ErGIs4JLre1F63KJPXoyZp8oWSuHq7PoBlq8c2FlcwosWMqR2r/s=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4546.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(5660300002)(186003)(26005)(83380400001)(966005)(33656002)(316002)(9686003)(55016003)(122000001)(110136005)(38100700002)(8936002)(52536014)(508600001)(82960400001)(66446008)(76116006)(38070700005)(64756008)(66476007)(66556008)(66946007)(71200400001)(86362001)(6506007)(2906002)(8676002)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yx4uoqsXXmZmONIk7Wspd2U6AGfn3RvFMOKPpzPC+7P3BdgFsi9tQLbCuMYO?=
 =?us-ascii?Q?SEQEyUOVV5Urx6tYjmMFMgbCQng+Zlq151Tqo9IqlkRsrLyPPWEBaQkcPpYi?=
 =?us-ascii?Q?jLRIFYpfduNIjcxQq1uiUh/NDFp9ztzlQQdTNuyjSgLxBaoZ9agaYtPdGdQi?=
 =?us-ascii?Q?3r/Jpw/C/HnmPooZ7Vaqii5sNFLv1rwWS+hWkhcsO/0IUFhoCDVh5X3pMOFX?=
 =?us-ascii?Q?/yulX+gK1e867eFDexgQuzdmZoqC+8qyrTqp0WGK6RBeYuY6264gQmK6Lwvh?=
 =?us-ascii?Q?PiGm6F5n13x8xZgpcEzS7TxP4pk6Driibm9HQVb+tAKXdqR6abghuIB6Mcls?=
 =?us-ascii?Q?no7u8s9xe98oYyQ8J4YaaXncXiNUcV/7w8pR+ZqMqEQSV6epJ8gAMxM032O+?=
 =?us-ascii?Q?/5XWXi5q83CEwCGAhxCOQ/5IifEI9HmsGE8A7wE21V8Gyjzo0iBIwUHVCeSX?=
 =?us-ascii?Q?F9WwvhH51eiMTnYteXn3mv+pN57fwDnNaqqm0g/wXpLJaeZBsiBi5VQPMGBj?=
 =?us-ascii?Q?Bw5hOtL9KUUmGB8bwZo40jTMOS8WnzUvog4zeRIlXzmorej35J3WQpv31ha6?=
 =?us-ascii?Q?eOqVNqfEHMoR162Az1UAI2we/spEuz5Q1cxUdaj46/vlrSn2bCt7g4vBb6In?=
 =?us-ascii?Q?RW0z0gqeDL7FFqt2QfW2dc6C04np4u+1vmfDteMMbXYx26WafVcWuWA77XGZ?=
 =?us-ascii?Q?p1NCsra0QCgAAa+GhJEVOr4OeuXvtgkYjICmnDhoJBpxpzbJPOWxhXSaYmEd?=
 =?us-ascii?Q?L/zWsX/rQubg5D+Y/edXg7U6lrqoN2cLfNCwQbKRbE50GGPyQnGQZo4/nqA8?=
 =?us-ascii?Q?tlwfkFkUL3Ta/kYSeK4hdeytOURmoukEmhDzZHlTFELPs1Mwj0BxmKESCltq?=
 =?us-ascii?Q?QPghDoGgzeTH+wILorS/FVKLfpUuRtGKI8R5hP/lsyh51DuuOIdFUp8ppjBO?=
 =?us-ascii?Q?izjaXVRQubEKUT/VfH12Q+ujHIINSnatfRHHyw1mvxHaFHgISxm3jyCqKJrK?=
 =?us-ascii?Q?LBuE3IE72tlfTbIsS0bnrpK6Sx/JVoqXishGZSdxjwJ3MefcjyeWHwhzyHtF?=
 =?us-ascii?Q?67dN/y+MMWZ/rE2siK5udx+LAFIJG0hTehjNXRbC57OyCyCvQcFCVjkSp2sr?=
 =?us-ascii?Q?bF9Li/SbhWmJqG3GhHAWfQojMBmH7QAsd/ATsmLp8OmdSm2fAAZ3EsfRAifA?=
 =?us-ascii?Q?kRtVwD79UjnoFnrIrGAg5inEqA/v+4J4cllf8RZgVZ5dKeM+r3XffDsNYhXY?=
 =?us-ascii?Q?lIueWX57V2quVbnxAm+8s64TtXUctdNz/t7Ac2wvBKJvtdIEYfzDd6808F8U?=
 =?us-ascii?Q?luODCMGc9MuIE6NhVT6d3Ksg2MO3Ejylcgci3BchsLH3LVdE5Q8o9RBFfc0i?=
 =?us-ascii?Q?lHqE0fIJgN2ze91bFcj7sQZa6m3LUMIETO3xCB61JPJxFemcrpabkEi71D8k?=
 =?us-ascii?Q?GY7H0EmXIVOZM798WCRpiuIG9VybJO+eN0IL5CIlITkddE+HJHsKYnF0JNw3?=
 =?us-ascii?Q?xgXpHI8JVp9/4riWxv3Y0WFOWYTTFseuhzWhDFdITxytHg12Tl3e8FdpZ75D?=
 =?us-ascii?Q?suAko+M50Ao27hvmUrS1MdHsnkg4+uqqp5ND+3nhjLQsPkg8RIOeclQkJB3y?=
 =?us-ascii?Q?EizRlwsCJDLj8VgJVhman4/ao4z/gDWPlZAGtDN94ZoZPBdCtlY9U9rmBTh5?=
 =?us-ascii?Q?x3O51Ah/+/9SzqvNXaWhb/NxmVtsNakt0MjLj1IYX765ejkyFuU1gttY4BBl?=
 =?us-ascii?Q?P3+hj/jIinHVbUSy728SKILqthNOVlg=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4546.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d350114-026e-4054-265b-08da1de11f18
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2022 06:36:35.1776 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ybNEv+IRyW+CioKSFxuvWLBE+d6D4DbrOJOgQInmj96T9AKBQe3LBm2CIDph1ywGSqTj66y5EkHuLPl+0p5RzDWLijBEMQM4yKHML9BQiMU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3272
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/2] Revert "ice: Hide
 bus-info in ethtool for PRs in switchdev mode"
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Marcin Szycik
>Sent: Monday, March 28, 2022 8:28 PM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next 2/2] Revert "ice: Hide bus-info in
>ethtool for PRs in switchdev mode"
>
>This reverts commit bfaaba99e680bf82bf2cbf69866c3f37434ff766.
>
>Commit bfaaba99e680 ("ice: Hide bus-info in ethtool for PRs in switchdev
>mode") was a workaround for lshw tool displaying incorrect descriptions for
>port representors and PF in switchdev mode. Now the issue has been fixed in
>the lshw tool itself [1].
>
>Removing the workaround can be considered a regression, as the user might
>be running older, unpatched lshw version. However, another important
>change
>(ice: link representors to PCI device, which improves port representor netdev
>naming with SET_NETDEV_DEV) also causes the same "regression" as
>removing the workaround, i.e. unpatched lshw is able to access bus-info
>information (this time not via ethtool) and the bug can occur. Therefore, the
>workaround no longer prevents the bug and can be removed.
>
>[1] https://ezix.org/src/pkg/lshw/commit/9bf4e4c9c1
>
>Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_ethtool.c | 8 +++-----
> 1 file changed, 3 insertions(+), 5 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
