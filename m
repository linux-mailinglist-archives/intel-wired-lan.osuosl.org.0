Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F301DC783
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 May 2020 09:24:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7798A85BE4;
	Thu, 21 May 2020 07:24:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fB6aXJJjqZJO; Thu, 21 May 2020 07:24:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 53CC185C05;
	Thu, 21 May 2020 07:24:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7F6731BF371
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2020 07:24:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 75B8785BD5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2020 07:24:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WXDO1dikgGBU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 May 2020 07:24:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CDD8185BC8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2020 07:24:02 +0000 (UTC)
IronPort-SDR: I5BndBEbClbRfF/4+h75dzKlKZDF8P+S+r7ewkOnwsl47K7mJy2L5XUzePUY+LPodyBeUmDo+0
 022WHumW107g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2020 00:24:02 -0700
IronPort-SDR: 9EpKtzgdDQnzgZP42+w2m8MxynjRcJY9paH9o4T8MqJmXHGS+l5VR/3ux+VXCW5Yi1FSNhJxYz
 KnBTCZ7ihJIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,417,1583222400"; d="scan'208";a="264964003"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga003.jf.intel.com with ESMTP; 21 May 2020 00:24:01 -0700
Received: from fmsmsx157.amr.corp.intel.com (10.18.116.73) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 21 May 2020 00:24:01 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 FMSMSX157.amr.corp.intel.com (10.18.116.73) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 21 May 2020 00:24:01 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 21 May 2020 00:24:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AYGrsZ3mHWQHkGFBhNhkj3aD0ej5vouEDy72VIEl9zGYulPYvzWTCzeh9/YiZ7amcCsp2JNLLejauQaLx17pl87s+LC45OMGhz7c3W4aL3PdKi8wef9f5gDkRKDOEiuxb0+o2fR5NA1IukzaekmQKfZflLCmD3Xtq+jO7yrOJx0UmTvXTWyxxObKFMxM/Dxnq6i6B4rRlY0vkXcypmPw7u3d94S0CIkGCrCv8Rwf8rpJzb0O+pgE1B5fpV229nttX8+BKtEu+OxIUtsXT3130wKGW7qXs+RawSHNpWJNyTugx8jMblbOvs3hHeA+zuqgjBl7iPj7BYeVJ5rLNfHOGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HSNxyZrDX+CjfQOXxCILuRnMb0KrPu/7nGB+Uh1sz6c=;
 b=ijxLsmLkmxAtKD70bqsm9xCPpl+qfDMiRkSQ+vAR4a8bin9nlrQB951qBSXhbhI0V1RXsK19gg7k8hYAVVg+NuhGkhrE5J7D4Kv/B9iFz0+6Hor8vjNfKohT8QSgFVrm27O/wQRMgl045OlufOorkNPHjYu4sPzuP2rACvZWhb4z0TwWGYhhYHTNloWHU2RsFrR1+Ku3hPVwNtiQaNgdMyGw/iMxvluDO3LYeDIGRkzk9gh3+c95TKQX4zWLnQVrMDTa2Z3TiP5XTLUMeZAiaco6nEvk0+jIg45CjFzoJl/hMUE3/RiCM53G2BlOqOBs4zx0+dvP1KNETybpbbF8yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HSNxyZrDX+CjfQOXxCILuRnMb0KrPu/7nGB+Uh1sz6c=;
 b=XjqhKFCInzl5Wb9JYyvBzbX9bjFhOwuuohkAab+VjqAJRVBm/2sL3Pka+ZknBhMxVRmvui18kXJI7NXQAKcqWA98v8Fd/Ih/mzx92156Sle03nHme7NaX+FpLDS3XCo4jCZA5iJUh76wtyIRgweB6pZzuZikwRpDMi4y7kFiPAU=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3001.namprd11.prod.outlook.com (2603:10b6:5:6e::27) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.26; Thu, 21 May 2020 07:23:59 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.3000.022; Thu, 21 May 2020
 07:23:59 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1] e1000e: disable s0ix entry and exit
 flows for ME systems
Thread-Index: AQHWJJMIvTQCKhfAuEuSTxCe8+9yt6iyN/hA
Date: Thu, 21 May 2020 07:23:59 +0000
Message-ID: <DM6PR11MB2890BA07ECF487EE8969C454BCB70@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200507171406.6883-1-vitaly.lifshits@intel.com>
In-Reply-To: <20200507171406.6883-1-vitaly.lifshits@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.209]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0c3cdb32-0fd3-4e23-836b-08d7fd57ee1d
x-ms-traffictypediagnostic: DM6PR11MB3001:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB30019E8D40749D900BEA3DAFBCB70@DM6PR11MB3001.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1169;
x-forefront-prvs: 041032FF37
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: n/3gpH0jQZi+eT8Z3RgALtmX7HYoAlb5f6ze6zVmy58OzE5meqTi3nu/VcBK1XM5RPmrUwYzUf0XPWskQfxSfGHhvLbqbQ/bvO/rJt0fM78CT0GHCqD3u6ZFsl7bvXMHl/aM07vvBmuOiKqroLK9NC8nSg/GRjqifhoZeq7szjrPW2m4d4OPYoKut54H+hPDPC0wj2cnYkyifYfNP1EPg//qMAYPf+muL0Lwp4gnOXAo06ZhMigA6yx9ACKw1TMZvsvmcx+YSvqn2LdP58AcPVOHc3WT6T2mqyPlWfs54aO0iByk8DDmfU5tpALoDcQv00OcGQLsti0QU4D0VpCQLS1tEXRJ9KLK8FkErWYNgpvl9aSuWBVsOwhzlXfg2cNUrPqLvWb3wSLIvzBhFuZ0kT+bpeZ80tgTUITjyJH+IzKhkEDRCd36v5sAA+5bQ5naNGwOQVeRRrkoGT4wx1xSa+4uZccJU5bUbgC2BvKFyl0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(396003)(136003)(346002)(366004)(39860400002)(53546011)(8936002)(66446008)(71200400001)(52536014)(8676002)(7696005)(6506007)(33656002)(478600001)(186003)(66476007)(64756008)(66556008)(55016002)(26005)(9686003)(76116006)(4744005)(316002)(5660300002)(66946007)(86362001)(110136005)(2906002)(32563001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: wd/z0yfO+Yg3Zc3HIljIWt14kxQXCEfz8ij6tO+3aa3AQEhXqM7lY5taYN4EaSIUL8JZMI0e9liAIgith8VSSdbYPo9/u/owjw+ci0QP9Y6ycdFDkeV4WRstaNAa5b9q78OLu6DykwOwyVTwmsW2wbQyUJM/CMOGstMlYbe3sRyVt0Xs3DG8AItet7i1zE41NkfH/QMh1cda27pQ8KPFBNIK2LQRRyIcMRfkzMGNDB5zlPWq1HUb7UeCf7T+NoOTjg+9qI/fnz6RoIMmkwnakknmkJgNLu60PkwsrLGjV5iwpFJIUnElqeht1WwpXbd0UzfwE3VZgtbaCAucPRk7Vd9+sbZRngcYAPqIGTAN2vxh1vum5HWvA8hNdJYrIId6QcjIMc+EJe40OWtMgN8ZjWHsiFjx1T5Lh3aJ/cktdzYpYN9H1BdyB1Tgwjrjh/mrpbkiEtRh3LxYLDoswkFKekx10xkuFwOQ5vMiW9hf+BynVz8wD3SX3zN0l/3oaRga
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c3cdb32-0fd3-4e23-836b-08d7fd57ee1d
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2020 07:23:59.3729 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vGrM2GOnxNWq5fPUp9yeto0nYZKT3IPlkJSMCyHfDzS1m8pECDaLmj0Qe50Wt7TG7IKaTfsyZULwtoXI5Uea1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3001
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1] e1000e: disable s0ix entry and
 exit flows for ME systems
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Vitaly
> Lifshits
> Sent: Thursday, May 7, 2020 10:14 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1] e1000e: disable s0ix entry and exit flows
> for ME systems
> 
> Since ME systems do not support SLP_S0 in S0ix state, and S0ix entry
> and exit flows may cause errors on them it is best to avoid using
> e1000e_s0ix_entry_flow and e1000e_s0ix_exit_flow functions.
> 
> This was done by creating a struct of all devices that comes with ME
> and by checking if the current device has ME.
> 
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
>  drivers/net/ethernet/intel/e1000e/netdev.c | 45
> ++++++++++++++++++++++++++++--
>  1 file changed, 43 insertions(+), 2 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
