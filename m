Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CDFE23143C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Jul 2020 22:50:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 11300885E7;
	Tue, 28 Jul 2020 20:50:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id orexMTFLq2GS; Tue, 28 Jul 2020 20:50:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C2FA8885F6;
	Tue, 28 Jul 2020 20:50:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EA4FE1BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 20:50:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DF4E3885E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 20:50:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iozZkAVFVz23 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jul 2020 20:50:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 34E52885D1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 20:50:49 +0000 (UTC)
IronPort-SDR: WX1I3RBFxIn2LJQqsu+MP/hYmNsEs33/QBobRj7qFRfwp/6MeorhWzuZhZqxq/mNf23DHbHGnW
 y4/uqt2LJY+Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9696"; a="139333675"
X-IronPort-AV: E=Sophos;i="5.75,407,1589266800"; d="scan'208";a="139333675"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2020 13:50:48 -0700
IronPort-SDR: qzhX5Pz0cdVcADAexEAs2usUgT7yPmO3EdXQ8ODJE1nMVAjadyU75KIOzk2JU+hWsH3Pd+IEle
 7MkFW3ZigoOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,407,1589266800"; d="scan'208";a="364633146"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by orsmga001.jf.intel.com with ESMTP; 28 Jul 2020 13:50:48 -0700
Received: from orsmsx161.amr.corp.intel.com (10.22.240.84) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 28 Jul 2020 13:50:48 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX161.amr.corp.intel.com (10.22.240.84) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 28 Jul 2020 13:50:48 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (104.47.37.53) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Tue, 28 Jul 2020 13:49:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dEBW5tCGvGonjAhem1adY3Jpc4SxTcjsmHT3oN0q92X/uT3GfPXclKy70K7wGaMykAWnKS3a35ReMU5kqtmBcopU4MWSa79OQFpX13XmHlH+RcpB6fpbHfKZNEe0HiGRjpj3vW+PXtsUSLmOFCHs9BSpt5KIdCjxp05rBwJyJ0Jndy51k+w9Sh4ker1HsT7jllQIW1iduBTHWUqf5t6YpKZcSH4fGdfs+TrWk7AVUxdYHnluAVPlZiTpduzIlmCPE2iyT9R4FGDOtiWWd7XuKgJ5DRAnkBkXTiIrUzNCPxwbzTwET28H6GnnJU9fgBxRQmNlAA1AmjoIvaNdBcSlmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J7NeWXdpSVJfYt00olRWb1kp2bUbr4a5b66qXv+I3pY=;
 b=aSixTrADgq6XQZhoQ1nxhmugZZO8HRqIXhpMx9FtOG9nFTT1yj1wsiD7c79m2vVzslKG6hYMkP6egCGWl1lOGNgdzckFh8NHSPE7/A1wWOD3A+ERSe/srrcq13F00b2kEjsACa+LUrC0Qal3qMMstEaEpBTg89wQeIjOprpHSvVP9sjeiFpjNkiYmnOJaHQyedOeL5b4KTXJ/HgKQ9KloOP+W52hkc50AswE52C5JGiinGCnHIyrnKXKy6dVHDymSyJIzVYffN0KQeCHnZxBafd7hRaolRfo5UUyx3cdf9VAjepUKMc0HAEJBKfcPu0zxjgZqHJYvTjIYyGbecF7qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J7NeWXdpSVJfYt00olRWb1kp2bUbr4a5b66qXv+I3pY=;
 b=t9Acm7ePuKyq/w4qSVX5/8ZHeGNGX4dj1XnLCfsMWdE/OrPLfAYJYlCoIxx38xLoD973pb899pXGfDIqNpEjpQAygm7EPCFyRHKJibEdRBDlydi5pZGhLs9QzE43o57/u8+gTzXDGsvadu9WNYwPiHC9ag/u60IK3xc8WEydM70=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM5PR11MB1259.namprd11.prod.outlook.com (2603:10b6:3:15::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3216.20; Tue, 28 Jul 2020 20:49:18 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd%6]) with mapi id 15.20.3216.033; Tue, 28 Jul 2020
 20:49:18 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: Suraj Upadhyay <usuraj35@gmail.com>, "Kirsher, Jeffrey T"
 <jeffrey.t.kirsher@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "kuba@kernel.org" <kuba@kernel.org>
Thread-Topic: [PATCH 3/4] igb/igb_ethtool.c : Remove unnecessary usages of
 memset.
Thread-Index: AQHWWhbikUtIhvYSqUqKUmO37o4ufqkdjPGw
Date: Tue, 28 Jul 2020 20:49:18 +0000
Message-ID: <DM6PR11MB28901E92AF05925C1C6488C8BC730@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200714194147.GA21537@blackclown>
In-Reply-To: <20200714194147.GA21537@blackclown>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.173.209]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6815bed5-1c09-4457-c26c-08d83337b2b0
x-ms-traffictypediagnostic: DM5PR11MB1259:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB12596E118D9E493E6EF0D773BC730@DM5PR11MB1259.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:439;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rbqLqdU32j+wkOV+3aMmgDq/HNHCEO0HGLqHwB3XGkLFpHp7TBVTnPN4eaS+6t4bzElq+vu/djtawf9345SJvx1RiITTdenpK9wdSp+IWjJBE2CIAVSVs2pR7+fcRDyoKH1LySdDjJNuPGP9P4cheGNsx02aJxlEi9dzA6J7QxuLdTTBonU7BG8/v8F4IoknCJ8EDdCuUFadxjaMtKB3B2aZ+eP0FHvLEYVKojjQ1XKp9/jOgs8787duOtQzsT1TZvgcPwOJBvfQkJ3ZUlueFCnlJhuFgDZluPfuJZ4VtbomK1OeEJ4CjPfEqhFwU8tEtJrUD03rjogsUYM8K8//mg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(136003)(366004)(376002)(346002)(39860400002)(52536014)(6506007)(53546011)(83380400001)(4744005)(4326008)(8676002)(7696005)(5660300002)(33656002)(86362001)(26005)(478600001)(55016002)(2906002)(76116006)(66946007)(66476007)(64756008)(66556008)(9686003)(66446008)(71200400001)(186003)(8936002)(54906003)(110136005)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: UIpYTrL92BtUoJVHNUXWTrGTurOljoQXSjC9zlroc3CftrDKb9c/wHTXieQeJOkICMgMy1NeNYCw0MdIHIyvrj+qsOBjcG7nhgrQ1K2OqnqyfBELyw4N788MX5XSK7els/yKnx/zlJDbi+3dWwYahEZp7zz+tcxWeEqYsDBSWU2xK1TCbeKwO1FjA+8qGjefnnOCbxHrv9Xo15lzMT3zNQpwRs48kDWMW8fJbiMHNyiZQgrGOU6IrSMuNW5KEMuaiCa5Wm0HOj1MfPob4urqU4M8Mt2VschdGJDGv/nqf3jTKhFrW15hvUQk7aZBnJyMA3FCSH8VfFCLHYPVzLZ8OSvz1v05sxu+IWPZAnYH39F1KYct1akuNx6gE8ZtrZe/0CXIabBYhxI5sodSJo7SOTBd1ZzY8rcGYbJbFmUAth/gQUoolKw7JaCtUBygB/LWlX0hyz6kVT26PGK8U2sugm2AUqkVc1vLCvMgCXE5ndqf4qR3OJf7zVrZe8ejV2s8
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6815bed5-1c09-4457-c26c-08d83337b2b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2020 20:49:18.6022 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TsPKq2EMjYfLulorcGMHHF3+8Tj9NjMcYD9XTwLq4RGKgIKU6m+mCu4oGnLGSq3CBUStLYrlvTlGm/FAccFRKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1259
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 3/4] igb/igb_ethtool.c : Remove
 unnecessary usages of memset.
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Suraj Upadhyay <usuraj35@gmail.com>
> Sent: Tuesday, July 14, 2020 12:42 PM
> To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>; davem@davemloft.net;
> kuba@kernel.org
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; kernel-janitors@vger.kernel.org
> Subject: [PATCH 3/4] igb/igb_ethtool.c : Remove unnecessary usages of
> memset.
> 
> Replace memsets of 1 byte with simple assignment.
> Issue found with checkpatch.pl
> 
> Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_ethtool.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
