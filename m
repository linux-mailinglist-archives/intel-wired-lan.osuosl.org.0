Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D7820418D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2020 22:13:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8270687152;
	Mon, 22 Jun 2020 20:13:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WbSlPbLQ3mQb; Mon, 22 Jun 2020 20:13:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A291F8723F;
	Mon, 22 Jun 2020 20:13:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0543C1BF3CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 20:13:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F3DE987004
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 20:13:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OoObBSSDCqyS for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2020 20:13:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EA12A86F8F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 20:13:34 +0000 (UTC)
IronPort-SDR: AN4HrTaKcKyNA9qAKIuuzYfJHdnJeGHrDhX5uqCD6Woh9msel9FQi9tpYI1F1odLI0/zqL3ezR
 N2V/u/mrwe9w==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="132295188"
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="132295188"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 13:13:34 -0700
IronPort-SDR: gL4LOhIF8nd8tYtvuuWODG3MAB+3a9/FoB4jrS5SwuKi8RisJa0a72rdrX07mvZEh9QoD+7fHz
 2YBLDfm+V7YQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="451958500"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga005.jf.intel.com with ESMTP; 22 Jun 2020 13:13:33 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 22 Jun 2020 13:13:33 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 22 Jun 2020 13:13:33 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 22 Jun 2020 13:13:31 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Mon, 22 Jun 2020 13:13:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mmN1z7ugxsuPRYrZak1BrBVgyhyn5L9cHO0kG6oYreAJTB+wZkovVcKdjARYp23orMwyM80uRj1VlpUvtgtFnXCCOz6b4vOt8Wj7KZ7kgcGL32J7fgGSypH2J0GOfVx+8zk4LOoG+nOwd11ILABZNHs3q57jhMQQ3stge4GfJ5muqJ5sklf1NJxetlikSnRQOkrK0kkg3pvIf1aXoDBV58zPwj1xbFGQt0Q3yxXtTpAjhvxm2vOYXdEjBf1SAB0VMucz7yigHs3rksxog5b5wbrMAPgdJ/Afp+C1RDvUpCt+jIFB2LUURdXY3iOfY71ybVvHi1A+PqjJX6NXtSm03A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rvOC4kxzHwjK5R19YsemkR5oxU5D0tXIAHnLR78inXU=;
 b=PrV+ebGMCAkWiFZT8hlFkxUOwJ7W9aFu1Wr8KDO8ImZIzFJwo2OTguF/sV3JSqovmp0P19wAPQJQcTHxtddNJK47PKpGZFx2wbVlmPjxyJDZ2nBJV9qo64pLYqfgvNYyOlxfytB+VnIGBEKWhZslKsCsR2m2hoky+STuBhhRV5jp7/N+89FsoGUfZt0qYcgsED6Y5GZoSJin/vVvls3nkpufvKjyFTud2SzgUB36KHOePkDBstqKkvRpv6O9vSN+rOYW/7QBJ57tnGSordW16NzaAQpWaBRym37HYCJy8ulQwO7ZPZkvevNlR4GXDkozBQgI54vSZ1CQQ7B+zKjNDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rvOC4kxzHwjK5R19YsemkR5oxU5D0tXIAHnLR78inXU=;
 b=Sox4ZqJPtGryXxZ8hmFAc+wrdrIh6SUTzf/66kxxkcY2DzvUwnWeg5cXokOJ2WtHI8VMfSsNIgNUUBltusvB+FivR0n6eAkPL4mcIvFPRfqxLoRLn8DQ3MFFH5snvrtdt6QiG4zKhtW2HBqA2lX9IiLwCMaJqG80cw0gZlvBXhM=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB4067.namprd11.prod.outlook.com
 (2603:10b6:405:7e::35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Mon, 22 Jun
 2020 20:13:28 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362%9]) with mapi id 15.20.3109.027; Mon, 22 Jun 2020
 20:13:28 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 5/5] ice: add switch rule management
 for DCF
Thread-Index: AQHWRl31Gs0GzLpZ40K5HbwcCdu1iqjlFlvQ
Date: Mon, 22 Jun 2020 20:13:28 +0000
Message-ID: <BN6PR1101MB21457263930B3EC0DE7A16088C970@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
 <20200619171022.9539-1-haiyue.wang@intel.com>
 <20200619171022.9539-6-haiyue.wang@intel.com>
In-Reply-To: <20200619171022.9539-6-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.216]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 27d7ba1b-6b7c-49c6-ad66-08d816e8ba0b
x-ms-traffictypediagnostic: BN6PR11MB4067:
x-microsoft-antispam-prvs: <BN6PR11MB40676C5F54DAC7D8DE2407688C970@BN6PR11MB4067.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0442E569BC
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FZuzeVK2ePbEsEmahevVALdVrZVOJ2DAHlCHZO3hGAATFZNcb1pOR1OLTOmlKM/TGl4w5TTEVDw9RzrU7wcI3iHsoKp+c5fR/5o6uYWKdedz5eexuHZjwhQ+WU4bELbtxdkwJoagJpAo+JdQrfdFt9FNsW+tFvp9aHqD2Qg5Uku/0axBdk7spBy+zzGnnNhBRhb5eo+nYBu3GqXPQFm1ULQ2IHPhcduhTsCdxXcI67BwZHcLTJfme+IPST1hfXG9xaFi0Nv5U1SxFFNU2oKat6G2iuzaRv43Qnm+vx2aMcL9nq3vMJzVE62zxP3rHdONx0349eP+h2Y7CjU4fORJ2w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(136003)(376002)(346002)(39860400002)(396003)(6916009)(76116006)(186003)(33656002)(26005)(66946007)(53546011)(7696005)(6506007)(66556008)(64756008)(66476007)(478600001)(66446008)(5660300002)(8936002)(52536014)(8676002)(9686003)(71200400001)(83380400001)(316002)(55016002)(2906002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: rUELWPZh+kz6zSQf89bqWwn7/B5pktZ9M1jorAcasKa2O6jZD7q8+e4yhwhwDZtovQkXeV1pTDyYXjV+NGfYPFFI6mihWEvzUbyLu6soz8thZf8VchswbU+qTXzQ1s0Zpk0ejAkx9IzqyNvuSfMCYNEXl3ekhCo37/IThHPPIKSMuMsOJyvMOCaZyW75pOH2fHncnglG9ykLq03PmFncUOsxlNJc3fArMCHunJ5nm3vAKvzsk5gccTrIcuRvyyYLav4FYePmTd25eYwi7P+0APGgs9dhSomqpehTlxD2uLjml+w9FwJxvS7Tj6sdP6TXYIkt/BtsTrqv33UNKfDZqWBhJHTVyUzbV3NNjzhBJ4Cza6UE7zH3RfTxkC8hG5Nkj7HkJ/kXGB5QvaNmMZTtrgny8i40rXyeDJvZ9A5DUUGNl2rDmyRxkhREtHTubYyso9kCHTM7xWTfZCDybh0j0HIxuSz8VufvLTBtfG8AuS4=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 27d7ba1b-6b7c-49c6-ad66-08d816e8ba0b
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2020 20:13:28.1156 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qc4NAXK/+PtNxlIzf8fjKlvvozcxXCELBpViboL8bAjY4fjn1XhO63VGQUwwFJQQf5Ydwra3eIDlajVW+Z/tY2Z27Fyul6HQmm3r+JmS8Xo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB4067
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 5/5] ice: add switch rule
 management for DCF
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
> Haiyue Wang
> Sent: Friday, June 19, 2020 10:10 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Xiao <xiao.zhang@intel.com>; Xing, Beilei <beilei.xing@intel.com>
> Subject: [Intel-wired-lan] [PATCH v2 5/5] ice: add switch rule management
> for DCF
> 
> The PF shall track all the outstanding switch filters (filter IDs to be
> precise) added by the DCF.
> 
> Upon a VF reset event, the PF shall clear all outstanding switch filters for the
> given VF. Upon completion of either VF or PF reset, the PF shall skip replay of
> filters that were added by the DCF. The PF shall however continue to replay
> the filters that were not added by DCF for the VF(s).
> 
> If the trust mode of the DCF is taken away without the DCF gracefully
> relinquishing the DCF functionality (by way appropriate virtchnl message
> exchanges), then the PF shall remove all switch filters that were added by
> the DCF. The PF shall transition back from DCF mode to regular mode, the VF
> shall be treated as any other untrusted VF, and the PF will reset the VF.
> 
> If a designated DCF requests AVF functionality from the same VF (VF-ID)
> without the DCF gracefully relinquishing the DCF functionality first (by way
> appropriate virtchnl message exchanges), the PF shall remove all the switch
> filters that were added by the DCF.
> 
> Signed-off-by: Xiao Zhang <xiao.zhang@intel.com>
> Signed-off-by: Beilei Xing <beilei.xing@intel.com>
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcf.c      | 713 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_dcf.h      |  41 +
>  drivers/net/ethernet/intel/ice/ice_switch.c   |  24 +-
>  drivers/net/ethernet/intel/ice/ice_switch.h   |  35 +-
>  drivers/net/ethernet/intel/ice/ice_type.h     |   9 +
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  40 +
>  6 files changed, 829 insertions(+), 33 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
