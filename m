Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B89A8211107
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Jul 2020 18:48:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 766FB8A9F7;
	Wed,  1 Jul 2020 16:48:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eLywZGUArEIN; Wed,  1 Jul 2020 16:48:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4374D8AAF5;
	Wed,  1 Jul 2020 16:48:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B257D1BF422
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 16:48:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9EBFD2DA5E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 16:48:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T4vRAwK50FgX for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jul 2020 16:48:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id BF39A20109
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 16:48:31 +0000 (UTC)
IronPort-SDR: JHJ2zEpXlRdSeZbp+nqKmZsg7s5B7M+sNdtHXMmH6X+Qrn6b3YTsSe+rztl4KjHTKduSyOggi1
 34LuOUWSH6iQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="208153137"
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="208153137"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 09:48:31 -0700
IronPort-SDR: DOuWGIvdlhk7w6naZWvUtGpcyHckIOkCS8JGvkx/N+OKcEGPHxXAlNaV99a0M2pbHa+MgRNlHO
 dSj7szjGOlfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="265458285"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga007.fm.intel.com with ESMTP; 01 Jul 2020 09:48:30 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 1 Jul 2020 09:48:30 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 1 Jul 2020 09:48:30 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 1 Jul 2020 09:48:30 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 1 Jul 2020 09:48:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fWa88cuvuDEK0Sxepd1Hczyzp0DCFKUTKezwMW9XNBVx7Ki+mJ2E8mCcTkOrDf9IhwB4OQ0EApt1lwUYvIspeQ5/ERgVCc0vChpMKWI92U1bEoGN7Ak9EO87NYffdAeYF2OzE0y2VMJ0hw2Ejb7Dn9L9K/1tpk5D8nOznWTJ5wvCXH3YTzAAziAp7b7cZeue8dUzfM/bbfECL5275uzLX61KQ2KiE+h0Q8Q5JvvSFD5WeyIDA9da7v6k6SCgMVu2MhPs0HTP0mvVZcbUSR1fwsXC2nZ6ZQQ/Sl0brmiy1UrJS+ZYHgDcevoPus383M/8R0+jxI2OIDyqS/TIAfWV/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NY0Pep4ual5YiOSCGd6ZjtcHIcD/XEw54lfAlw8yhsk=;
 b=SW8WQGbO7uSmUuYCSMnE1moU4l13O6gR+mnG9nw2pyse69BhkxjDXplwB6kRUug4i599bNmCowqdHcXZ+EHN1eZCiT3K84T5LBjHhmFyYS/ZcyX19d4oN95VnWqfeJokqfPUsYrZMsUod18jOEFIxFnTLCSQioVcasA6C5kZU2WW4+XEglXhpUtxNWn8OX0vAbMtLV1JZspwA1v/heQy8Oyryr0iLCrGWS+LlNkbygCSRsVaGBgJ6+y/MTXggTiJQBfdXNN5V27Pij0qyeomcTE21NAl/kuKBnNeiBCu7TtlqnuBtz0K5LHIuiiI/TGGM/eKeCCNibNVZTcZ4wK+Iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NY0Pep4ual5YiOSCGd6ZjtcHIcD/XEw54lfAlw8yhsk=;
 b=Z/3WIQtFkmZbda+x1pZXfYv2H2a0VbSwpMOGwq6V78rhLwj9wGTiDW/iGPMgjBoGuAKuf57Lzlla2SY0XmLMOyLwqpR8mYcVXrQTsf/isTyLDSR0/NgmOlbENOay6PwQh1aQuA09qBuCzAVZQYY3dBpwQKp0Lrc3SRqpxOBp1tk=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1793.namprd11.prod.outlook.com
 (2603:10b6:404:102::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3153.20; Wed, 1 Jul
 2020 16:48:29 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362%9]) with mapi id 15.20.3131.028; Wed, 1 Jul 2020
 16:48:28 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next, v7 5/5] ice: add switch rule
 management for DCF
Thread-Index: AQHWT0gMk5re0GB+QUuexS6QFw6XNajy8D8A
Date: Wed, 1 Jul 2020 16:48:28 +0000
Message-ID: <BN6PR1101MB21452B9484A906D4E76D5EBC8C6C0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
 <20200701012557.40234-1-haiyue.wang@intel.com>
 <20200701012557.40234-6-haiyue.wang@intel.com>
In-Reply-To: <20200701012557.40234-6-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5fd422a9-177b-422a-4c75-08d81dde94d0
x-ms-traffictypediagnostic: BN6PR11MB1793:
x-microsoft-antispam-prvs: <BN6PR11MB179375DF6A61F36FDF00FD178C6C0@BN6PR11MB1793.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 04519BA941
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /SHCI9qRUp9z5JHPWuaOqdlTOy4vBOd9NHBayBG94rF0sWgmA6QpHLnURoC8oD+0629K7jkSHSlV0XP9YbmnuxbgveZrk4F8c4eg/0wLBotIHuZmhLBO5qXRqzhLnl7YfXJGtMU89KLC92/HTK3lCPpdDRyzoDpJvs8zMC415aqZmFVVVipS6fq1NdkSBXzJ1mXnKDpo0hgyGOC0WarTqDzYpZL9/VTVlLEIWBLuv++1j4L49U3gOZiV3+t5Cvkhf9si7JZUQyzZR9FuFNCcziSLJWoL5cQhSuKuH9BEC989yOAKEZJc8JL2viMx3qvSEA58N6ggpWprdCHnD01d4g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(136003)(396003)(39860400002)(366004)(346002)(55016002)(5660300002)(66946007)(64756008)(76116006)(52536014)(8676002)(8936002)(6916009)(26005)(33656002)(2906002)(66476007)(478600001)(66556008)(66446008)(53546011)(6506007)(7696005)(9686003)(316002)(86362001)(71200400001)(186003)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: SoPaww5v9s+boV+XObQfqx2/vmmmqUXxrErDVh20/XHFFS53Y8tcIj5vqMqjQb/2gRFg/pIzvpNruKyRe50aZY93M8S6xUSpuulGCbyF0bMrfEJSno1J8sCvyV12CgzkeWxVYHINIhy+LJ9SKyX3b5DKuOlupIxj/uEpFuFrXyLMdmgUwfCyIhkNwpAs7kLkpCQWuUeqidV+mPiC6LqoDLZduz7B68FFGR33gvouPb9u0vNMGFaX4rRYo3xJK1zcJy/Dju+GQ+1/xis7v5aAjN+m+xMXdOr8Qm/oCt6l3psEMlBHQ20a20bKRih8hVYybJW0hcRPyMRTlotVBlThFj0m62Z7MyR4KeAParyS46quhrlSoF1YAgGcWWGUB7HdxThXSREtU0lIikG2hHOSnOracl15jegP10lMXdUk8505eaUwaSaVMvadLuF5ys/Jq0+5qVI40sns5rRzTxtjnbjt771crillhdkDlHNSrf8=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fd422a9-177b-422a-4c75-08d81dde94d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2020 16:48:28.7860 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 47FTPH5HUL7hmaMPShi0xVCcSCkNEZue887fQUGn3ZtB2mwcLGb7AIYhESvmTUAdy4OhP3ld1whZ3/PfcicDj+CDJJnryD/qHUTWYmdrt6g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1793
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next,
 v7 5/5] ice: add switch rule management for DCF
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
> Sent: Tuesday, June 30, 2020 6:26 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Xiao <xiao.zhang@intel.com>; Xing, Beilei <beilei.xing@intel.com>
> Subject: [Intel-wired-lan] [net-next, v7 5/5] ice: add switch rule management
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
>  drivers/net/ethernet/intel/ice/ice_switch.c   |  16 +-
>  drivers/net/ethernet/intel/ice/ice_switch.h   |  27 +-
>  drivers/net/ethernet/intel/ice/ice_type.h     |   9 +
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  40 +
>  6 files changed, 821 insertions(+), 25 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
