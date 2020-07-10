Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D21921AD6B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2020 05:19:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 049F18795A;
	Fri, 10 Jul 2020 03:19:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d312ehbb8kuR; Fri, 10 Jul 2020 03:19:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B209188550;
	Fri, 10 Jul 2020 03:19:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 741C21BF97A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 03:19:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6FB06897F7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 03:19:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TUJjMGEvmbLs for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2020 03:19:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C8B67897C7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 03:19:14 +0000 (UTC)
IronPort-SDR: lnrPSoJibd9zfWloT50WYPh/uDlZCtHoVALaIYhilVbACn1zpNkQQp+vvOYa/VhlaXyElRGkGz
 Zjs/qpzNMttg==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="209674348"
X-IronPort-AV: E=Sophos;i="5.75,334,1589266800"; d="scan'208";a="209674348"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 20:19:11 -0700
IronPort-SDR: PnnYhU8FMgjmcwpQvBrEtYvVtS+KPHelFTWj6ed+ueVN5zbGPIfQGd+yPkaLj8ftWzEynW/Czi
 eSptdMoQnXgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,334,1589266800"; d="scan'208";a="428435724"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga004.jf.intel.com with ESMTP; 09 Jul 2020 20:19:11 -0700
Received: from fmsmsx125.amr.corp.intel.com (10.18.125.40) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 9 Jul 2020 20:19:11 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX125.amr.corp.intel.com (10.18.125.40) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 9 Jul 2020 20:19:11 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.50) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 9 Jul 2020 20:19:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kRYN8Wf7DjCr4EqszMilXyBD1M1Ro/YhyQarEDDInQNtg9bK4Ykhp2q3Eml+VPwHdCUE9d2Rx3ZX8n1E7ZXhsfjJSSTNo93YQLxQi5JcB7I4X5oYoZeDe4Iz6zv1A8QeD/hmZtxm+OOImhmlN+5fDe6BFz/bQr4WvYCd//GOpsQzkzkARcN5f18T9rn0I9Q8LFyberA1rnOtIQeMEHsrhHQMMaGUlf05vP5tPKzBFHObEmOSZi45TrLVWzXHBPWJ0QJfzsUdriHoA+KXLT9tYysxkYJSmhOV0U+aAiocSFRq74BH4vDHljtDhK4jf2XAsvpMRGAY27Tc20Dvx1kPDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zU77wXhvRteSGNF79JQaPH7zkUoXopU5FOm5fpJ3jAw=;
 b=XVARG1qc11zUpO36nFyz+uzAPoQXMB0pY7Eizsdavg3gn/rXsAJARkmZ3rzU5I5wZ/8vL959Br1HF3VSNYjkybUrjjmMNr0djBv+H5xfS1YA/2qCraOrbwy7iMn1YTKyhDDQK9IfVVpO9c0d+gryZZvCz+cWU3zm94iNMqFW72/uizoeLoBWZEPpstytU5YQtbfokyTnLmMYqNHXm/Ej+4CC1pqhyBSakg6l9i1w4nRM86W1YH8YIUB2aqnFu1tlrRRp/+xeeqUQQP1EVtOpN1vQ2odMWOv1Z2zGw/msUwVlG/KT8woTktneTHPgbdpnDK1stdhuzLc6357CEA/s5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zU77wXhvRteSGNF79JQaPH7zkUoXopU5FOm5fpJ3jAw=;
 b=vH6N9+YPrE0lbkeVqnE6BfL8oZegWyOq7ibKcs+SqRETQxcOyKJXmZ1Ur3TYWSqaKexAA31rwI5+L8gOytzogUvv/PuDh1JwR0ooNYkN2IB4gs4p7NCVGb6BdBUoBCgQ3pgOVyq4Q+MkgrpN5KInGiVovej7mLcr4sOALto0R20=
Received: from DM6PR11MB3900.namprd11.prod.outlook.com (2603:10b6:5:19a::26)
 by DM6PR11MB3691.namprd11.prod.outlook.com (2603:10b6:5:146::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.22; Fri, 10 Jul
 2020 03:19:09 +0000
Received: from DM6PR11MB3900.namprd11.prod.outlook.com
 ([fe80::3dc9:b760:b900:437e]) by DM6PR11MB3900.namprd11.prod.outlook.com
 ([fe80::3dc9:b760:b900:437e%6]) with mapi id 15.20.3174.022; Fri, 10 Jul 2020
 03:19:09 +0000
From: "Lu, Nannan" <nannan.lu@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next, v8 5/5] ice: add switch rule
 management for DCF
Thread-Index: AQHWVl59bJHhduZ/ukCkzsuDd2MjtKkAJMaw
Date: Fri, 10 Jul 2020 03:19:09 +0000
Message-ID: <DM6PR11MB39000E9DE7A421D3B8C319FEF8650@DM6PR11MB3900.namprd11.prod.outlook.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
 <20200710015421.92122-1-haiyue.wang@intel.com>
 <20200710015421.92122-6-haiyue.wang@intel.com>
In-Reply-To: <20200710015421.92122-6-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.102.204.45]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6c2e34e0-f567-4445-0cdd-08d8248002f3
x-ms-traffictypediagnostic: DM6PR11MB3691:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3691BDAF3D473A026539160CF8650@DM6PR11MB3691.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: r76B6pIFRW1Q8cPQRfbbtb9y8bCXqaDbIgVJ0g798o5sYLvIo+ffo92gZ9fT7af62gRK7AGcW3GOpSZpamW1iGqdCDHsHLaoBQCprwwgdQ/Ys/oJ5HIiG9nWADtGiImYERM/osx1KXuUDYyq+K4nW5Juokm7gvv8yR/ayv2eeH0LYtxXkVE7HhjAHpjnQoNaBJFt+LtPyGXXvF9LjNs/MZLQJXP3JvD3q/gmG3vT8Ow67iMixAStcIr884tCfD3PU7eLpK2o7oXh0vqSqDzfSbLv/MtOPCjdyCGgAOfWLXbV/ol5VgSV4sZAC9Pt7/q9sh3oxHaDGuXCvtS9qYS3KNWksKqJ7yeu+slD0+y6HuDWZrV4Io8tEZywga2xea5NUak6XUpaAkWByEesu+W9Ug==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3900.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(396003)(136003)(39860400002)(366004)(8936002)(2906002)(55016002)(9686003)(6506007)(107886003)(71200400001)(26005)(186003)(53546011)(86362001)(66446008)(4326008)(5660300002)(110136005)(316002)(52536014)(54906003)(66476007)(76116006)(66946007)(33656002)(66556008)(8676002)(478600001)(966005)(64756008)(7696005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: jUGOnJ3K9M90mvJC6HMy4CL6CsnHBD1YuS1gkGwz0gXEhrklWaMFgJ0SXoaiARn0drpz209MdMtua/URxDwOuCpypv8fpJvkRjOilaZWNcCF2ppY99IfmZOQHcxF48Hj4Jp77Fgg5Ic4HOJ9IUP31fhPg03aIktMyFB95ucIicJFrpEZHbyshIkTBfpze6lJJB/++EKVVb+WJU6rqLddaCVNALgzRwinIPw+/j2GGKPHZbVzah0HppMPw+VNA8+/1YP+HCNsuhi/bALKyoFIY4uHMrP1QGd+55jAYqWGu4kQx9LENN3ymA2U5+g0A/8IbPTj2/uTHIAJZF89E2QvB6HWQSIjmvp+Lxb3WrgcjRke/IG1nK+YW/W8FzsH5HaUlITlfjlFdU+Ayw6MJLpU5I0gUnoGceSc6NQFu13Oj372zBDGOn6gu6VpEo7eBRGqZzJyRM5i389FW01WuJhzx/LodY+aT5yHh8UrqLCfttolYDPcYCa2e5PVMtZZXE0u
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3900.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c2e34e0-f567-4445-0cdd-08d8248002f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2020 03:19:09.5582 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D5Qcans5BDPP5tD+ZHLZkfP43T3Ztm/yVq2J5Sf6aYSvgBkm6ct8RhQdimuT0GvdpWX8GFpEoggHWEXDo6zkiQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3691
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next,
 v8 5/5] ice: add switch rule management for DCF
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
Cc: "Zhang, Xiao" <xiao.zhang@intel.com>, "Xing,
 Beilei" <beilei.xing@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Haiyue Wang
> Sent: Friday, July 10, 2020 9:54 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Xiao <xiao.zhang@intel.com>; Xing, Beilei <beilei.xing@intel.com>
> Subject: [Intel-wired-lan] [net-next, v8 5/5] ice: add switch rule management for
> DCF
> 
> The PF shall track all the outstanding switch filters (filter IDs to be
> precise) added by the DCF.
> 
> Upon a VF reset event, the PF shall clear all outstanding switch filters for the
> given VF. Upon completion of either VF or PF reset, the PF shall skip replay of
> filters that were added by the DCF. The PF shall however continue to replay the
> filters that were not added by DCF for the VF(s).
> 
> If the trust mode of the DCF is taken away without the DCF gracefully
> relinquishing the DCF functionality (by way appropriate virtchnl message
> exchanges), then the PF shall remove all switch filters that were added by the
> DCF. The PF shall transition back from DCF mode to regular mode, the VF shall
> be treated as any other untrusted VF, and the PF will reset the VF.
> 
> If a designated DCF requests AVF functionality from the same VF (VF-ID) without
> the DCF gracefully relinquishing the DCF functionality first (by way appropriate
> virtchnl message exchanges), the PF shall remove all the switch filters that were
> added by the DCF.
> 
> Signed-off-by: Xiao Zhang <xiao.zhang@intel.com>
> Signed-off-by: Beilei Xing <beilei.xing@intel.com>
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcf.c      | 707 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_dcf.h      |  41 +
>  drivers/net/ethernet/intel/ice/ice_switch.c   |  16 +-
>  drivers/net/ethernet/intel/ice/ice_switch.h   |  27 +-
>  drivers/net/ethernet/intel/ice/ice_type.h     |   9 +
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  40 +
>  6 files changed, 815 insertions(+), 25 deletions(-)
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
