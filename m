Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C01422E06
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Oct 2021 18:33:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 055A183DAD;
	Tue,  5 Oct 2021 16:33:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YHYHP0tD_sz7; Tue,  5 Oct 2021 16:33:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E02783C13;
	Tue,  5 Oct 2021 16:33:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 616B81BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 16:33:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 505F36070B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 16:33:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gmji8PP3fmQF for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Oct 2021 16:33:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B25AD606A7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 16:33:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10128"; a="225736225"
X-IronPort-AV: E=Sophos;i="5.85,349,1624345200"; d="scan'208";a="225736225"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 09:33:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,349,1624345200"; d="scan'208";a="567821168"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 05 Oct 2021 09:33:45 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 5 Oct 2021 09:33:45 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 5 Oct 2021 09:33:44 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 5 Oct 2021 09:33:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hmDvISccG06aT8jiCRSxN5P/CSm3uVbmytU3c9pw7Tmy2WZ7o7ETZrX9haxpH/ISkFDQDnWee5ubwx8CzvdenLbfnURHYN6Y6nRPZeaklKsKiLpNBJq36euAhQsX5sj/TTzEmn1W8dTjOT5+fckH8oz8TWFOEHwpFJnRNzW6i1SBw++3YxtxnwMxITFkA83wjA8OA0wkhkwrsSncro7yrrWlcFyHv/UJXr7dBJQKhe+GdF1OasaTpPguSLRlpKcC/sGOnQnbl/a4vFcrTksqIPiwL+wvbTkibuOllqRV0/96Lo+VWfzpgVfdwt/JX3eveEinkfWeRJm6SvqLhrzd9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DRD/msfukm/n0+/V7pWgHGhdOeeTfhMJDHLKn+HIVcQ=;
 b=I/+sGAIdUmCZFsvf9GyJJRLvK0i+wcgV3uJZ/swvPCugEi5jk5DcbsTCylbb1QoBiVnHcQLGcoc/N7ADc3rwbdlu42AawbyZDoqVh6hD7Mrx8at5bNax+IvLeEPG+6tfumM3UgWZEzH+Com/9xeq/wmrEF8sHgw0GBiERu4uCEIdeh4/RgodcXGpmzleyWstQjC0fqgdwDdUPQCdbiLxQuX5jA21/XNrTvqy97DX5Ad+9z4OFYdLFG9kG1niGhP4OCpe8db6zln4DRkSei/vlZVjXNbe+yM+sH3MFQZk3GA7qa+u/blY3LJbc588rH0QBO6eukWVOJxULR8z8qlXoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DRD/msfukm/n0+/V7pWgHGhdOeeTfhMJDHLKn+HIVcQ=;
 b=D8PCLKY//IePGMOgi1HxZWxfp2OA9OEaKz81jHEYhAFAiGycOPjp+NCTTRPuJWGmxRIK048+XF6iY+t2Q0mx5rRhTXpcnRcqK3x9jUy/BKq4sSzRG1eWKcfOxLRU+eD7paJ9tAfOaRLdOvByxiSBqpghOtvVxSqdgAl1KKWM+vU=
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by MWHPR11MB1808.namprd11.prod.outlook.com (2603:10b6:300:10f::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.19; Tue, 5 Oct
 2021 16:33:43 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::e892:b78f:aaf9:b34b]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::e892:b78f:aaf9:b34b%3]) with mapi id 15.20.4566.022; Tue, 5 Oct 2021
 16:33:43 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 intel-next 1/4] ice: Refactor
 ice_aqc_link_topo_addr
Thread-Index: AQHXk1qazgvr7Z+IsUeEAsiP+/KdkavE5YTQ
Date: Tue, 5 Oct 2021 16:33:43 +0000
Message-ID: <CO1PR11MB5028CE4DB70C1DBFF5FA2E3FA0AF9@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20210817110918.1937113-1-maciej.machnikowski@intel.com>
 <20210817110918.1937113-2-maciej.machnikowski@intel.com>
In-Reply-To: <20210817110918.1937113-2-maciej.machnikowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 744c769e-65a4-48d2-12f7-08d9881de58c
x-ms-traffictypediagnostic: MWHPR11MB1808:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1808D2C35395916E28E456A0A0AF9@MWHPR11MB1808.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Vd9lSJKQDtxagSOngsEj4SgqxNgsyZN78VfVmyJMV7lz1sp9SlXdzL6YXfe4DNdpaAFgX/fLJYO6T9LfALik6O/2iY1zvOVCoNwwhpiUNv3frlj/meHTkBcrqTneBYx4hAeH0Gbp7YbqRaupeNFcpoJk+1ZObeMjVM1SM+XBzBAm1c9QITPG+PY2Ypvfk8Nk3J5D9Xm7w7ISvLQyXO+rAZ3sza7qI0kdFxgaoj38m6g+k8+F2RwHeuBZa/7vrB5pHkIxXQYYb0ShlUJgAAwkIOsAFOwTeLIYdNemZ7VHJvA5JDUTc9cXRcc8qRsqD3JOcRh+Y7Vq6R9OXr3cRvkn01rzTAOp2EUTuTDOVMHzZsnLzeBMMFvIzR25pqDml5FFmvwLxFnyu6Hj/t5F7iwactiCQ7BQS+u2po2liciOZ7riCneFXUuuHfXcQVXKXQRXhbOkNB8a+FMjLMa5sqErnuNoGBdbPBqG7gZlat85pPtLHBp3mBdIdsuu4JIhlGm9tQlYKzQyjg+aootRT281zqISNiYnar9PzxHuPHgqh7DwTtscEAXLj6y9ZYNlEfwAoMNuitPkLJeQq2079rSLn0eJnlpE1Kn7d5V98+4WpnejKv6jjxjHwCXrAaEybsjcVRadR7JwqTIXXfWMzbXUme4zTGjCCbr/bYeVnkgCl/l/ClEN0FU5nfW4LWk2JdgHKHhHr4YhFmnb83J1tyT6pw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(4744005)(53546011)(8936002)(7696005)(5660300002)(122000001)(6506007)(186003)(52536014)(508600001)(4326008)(8676002)(33656002)(55016002)(9686003)(71200400001)(86362001)(38100700002)(26005)(107886003)(66556008)(83380400001)(76116006)(66946007)(2906002)(316002)(66446008)(64756008)(38070700005)(110136005)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7KhFOQYa13yP0cECe4bhLgTzIIjvcm7X4BBjvvotKh7Shs1ATWE2e0u925ht?=
 =?us-ascii?Q?gNp/WbVvWiHSI1Zv1w/wcYap0JelAJSDcwkfbW3eYj6os0+bc3GLJlo0FVcM?=
 =?us-ascii?Q?rDiLiNOwNPPO94ssxXJNci3FFo3LQ5fWe684mVqVOUBPSXWLBoNww9J/DCJ8?=
 =?us-ascii?Q?Mcw0NUrxhdIZc9nVbuifspJzvTxt3TvJF9ghWovB37MYDJ7JSy7TMTZNel9e?=
 =?us-ascii?Q?QjCSrdJ00pMltqYRqi6zKB+s5BVPozqU8nbyVx2GaOdFBMQEAEAPeqxqfuV/?=
 =?us-ascii?Q?grnKlFWhy+uEAvwOkkwgpjmwsE/+pMUAXK2brY6ojhoL696n4+0PCrRuzHD2?=
 =?us-ascii?Q?3egEzCNqxWXV1ijFEzx8k1h/6btBBO8oxWpTD39WxkSl4Tm/0s9RzcS4c78Y?=
 =?us-ascii?Q?Qh4II1yF7cMLiroEGf+XhKgj+GXxaiVZgBjh353CXp9/2bytAUEXvKiITmdv?=
 =?us-ascii?Q?YMY3yy6xrzyPgKuwGC2Iw80HrexoExMAI2LORdi0EQdd6KEFz0Ifqifq4RuS?=
 =?us-ascii?Q?i4DlwNgTO3EgBM6I0aDBpzCJmXPlzX06bMSWCRIWORirNqhef9q7ZaTup43t?=
 =?us-ascii?Q?DSCB3wgdToqjJcpURYnQR6qmBHNltmESmwPNj45YiukV5yc10G4zgfL2jYop?=
 =?us-ascii?Q?RJroWFnYKVYbse+9zRZ3p0b+hneZXNYR1Lsh0zlPC9z1ngHh+Se5TvGP2iOP?=
 =?us-ascii?Q?fJwF88rdpSdJB8TtQshfzQjkOpxHFcJHS4B+OJ1nhA+XK5JSE5IN0oJETVPz?=
 =?us-ascii?Q?E2rsh4M9l4nMxJlgxI14BqlnYGCmXI/BBILMCyNCyAE8A1y3lHI6QLxC+ki7?=
 =?us-ascii?Q?Xt6jwKjWo062n0XYhYKtblMAvFISR4LD2KE+SjY0PJIhn0Bb3h8x262plO/g?=
 =?us-ascii?Q?3HnbM9hln9NEAZt1S3Y9vqq3LAfTmuLIuls1EzlyVOmJcZ4Vwl++soBCs/xC?=
 =?us-ascii?Q?Hf1BjwG3ck2/htFqY32Q7FDPhItdgNeveXlNnzkGOWkevGLv1bCGS/C9TOUk?=
 =?us-ascii?Q?G7EFYWCFcLxiKXcd5idLI9ALoZVuCkE6G/P6Nb+6PUOt5jJGASEmqYmMU7l4?=
 =?us-ascii?Q?6ZctxYlniH3Htnmuc/h5s3L3/SPx/RLqRnKn4oXiXKn0cJaZVuGIlTSw7SIi?=
 =?us-ascii?Q?7Gsao8N6VKi5BiMJW83yoeLa5UqbPlJgu3aCOTPWNiftPvGEJpN1SfD0GUCf?=
 =?us-ascii?Q?e4am6PHjiqtq7bXfMKjy1yjDDCMjMWGBHwBzBsC8BYuQf8FAP13jnjf8SFOB?=
 =?us-ascii?Q?1vdkRvaX8Ag7P4kSEtpNilzA8Kq3JW01jY3+NoxlQFzQ+I7WJctZhsA1ToWX?=
 =?us-ascii?Q?GK7s0ZDUdFasoXgFhmoTZk0r?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 744c769e-65a4-48d2-12f7-08d9881de58c
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2021 16:33:43.4913 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vJnwzsb68qCbOWg2GtOrcOtlQJNCByVx/+kMupeKvJGP6Gc2P/GYsb5PgpijPQdFMPJWryoAmTw15MzyeyzOJ/MF6jLkWWoU2TuB9n8myss=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1808
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 intel-next 1/4] ice: Refactor
 ice_aqc_link_topo_addr
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
Cc: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Maciej Machnikowski
> Sent: Tuesday, August 17, 2021 4:09 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Machnikowski, Maciej <maciej.machnikowski@intel.com>
> Subject: [Intel-wired-lan] [PATCH v2 intel-next 1/4] ice: Refactor ice_aqc_link_topo_addr
>
> Separate link topo parameters and move to the ice_aqc_link_topo_params in the ice_aqc_link_topo_addr.
>
> Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
> ---
 > drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 6 +++++-
 > drivers/net/ethernet/intel/ice/ice_common.c     | 8 +++++---
 > 2 files changed, 10 insertions(+), 4 deletions(-)
>
Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worker at Intel) 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
