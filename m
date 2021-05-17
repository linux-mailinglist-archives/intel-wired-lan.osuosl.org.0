Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 47686386C9D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 May 2021 23:49:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA82F4038C;
	Mon, 17 May 2021 21:49:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 52VzyBkpJA9B; Mon, 17 May 2021 21:49:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 613854053C;
	Mon, 17 May 2021 21:49:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DC6001BF9CB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 21:49:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C9F6E83DF4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 21:49:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fb7p8-vKxKMX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 May 2021 21:49:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 01A5983DEF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 21:49:13 +0000 (UTC)
IronPort-SDR: quAyTjZZXwjkQfo5sjeHNrjtfcXynNqYeeFitJJSFDfipGjUzgHa9u7u5h4puGV2T8EgUwIQnT
 vdpb5g1TvT0g==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="200266387"
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="200266387"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 14:49:11 -0700
IronPort-SDR: f+bHLGA8wm1y4AMYQCV+Jl44tXslHDajp0JfEKpsoXduOyaKvs/epIGRXllSeo588SPCqcPsYN
 xL8l09EnK4Dw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="439110581"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga008.jf.intel.com with ESMTP; 17 May 2021 14:49:10 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 17 May 2021 14:49:10 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Mon, 17 May 2021 14:49:10 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 17 May 2021 14:49:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QOQNGfT+MXBTg8w+7e9Vm6coa2SlcMurFB4N8jAuZelWYx1U+BXKzx3PM+mXInCfYFWF7EgmfuQaFgYvO4HlRsu2d65bWmYFgGRzRu1ZEq6alu10Wrb68dd4QGZ6BzKUCepS2oTyiaT+4q1IlKtzltDQ75IG0JpFrnjHi6OdRDyAHjSepCUsM891iOG6zF55dad/J9R1r98nOqfFZhGA5OlG0s2CAWzFUYlN6rDWtdBrfeaJCG/b08IcisFNlnH5COcfCBC566sjgiXa5iF+DnemksIxM+SoesR4LHt0LPv9VxdlXqHpKJlWTwt3yfY3PASC5NZChNEEknsuTLmS/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z2Sf6WKzDnTFJ+mMRSgnod7ZtOheSVCSj4X9thMBiOI=;
 b=nPDj/SaiFqGaiDJGwew4Qtm89SuqNRLaQbRwj0BWpp6/1HjKPWWEzzlwO4CXXnE5708fGwBw7xHo4iFC8MIbnyzJLT+QzeZxc3nQLtJfFht36rig2lC8nVUfd1apo3oC1izkuHB8rtyhw2TG7JNyiwg/2GSIrGyVTwmQygd0miC/x6lLAIyPHuoR593VzogmUvuXX4EFZfUm7iNlFYSS9XOKYiRwrddUfCQ+/pNnh4WS4FasMAO9fYBce5nCf8VyTobPPNoXfDw1hRP/i4BmttrvQYXXdtt2tO/MWS/x+utjTv7uIVPksQvV8Xg0HlcvHlOKTqncoxQA4k7WPWySgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z2Sf6WKzDnTFJ+mMRSgnod7ZtOheSVCSj4X9thMBiOI=;
 b=s2kt92dDiPGLXxsWGi37Jw7qCGBsGWnmJYPWE8EbuO0i3wpn1TECIXUBKoHrD+ORuCRWYqrafHKc4cgxIPqBOYKfds5J027fkGtpawAJiyx1J27YRe1HIJXJ8DlHnQN5jV22h44iiTNpSFexixJQDO5B+waP+Lbh41nVr9fSnUY=
Received: from CO1PR11MB4835.namprd11.prod.outlook.com (2603:10b6:303:9e::22)
 by CO1PR11MB5059.namprd11.prod.outlook.com (2603:10b6:303:9a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.30; Mon, 17 May
 2021 21:49:04 +0000
Received: from CO1PR11MB4835.namprd11.prod.outlook.com
 ([fe80::54d6:8b44:bd90:a69d]) by CO1PR11MB4835.namprd11.prod.outlook.com
 ([fe80::54d6:8b44:bd90:a69d%7]) with mapi id 15.20.4129.031; Mon, 17 May 2021
 21:49:04 +0000
From: "Creeley, Brett" <brett.creeley@intel.com>
To: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2] ice: Enable configuration
 of number of qps per VF via devlink
Thread-Index: AQHXOsjUgYMj4aLdOEes8wtR3wNHp6roVeFg
Date: Mon, 17 May 2021 21:49:04 +0000
Message-ID: <CO1PR11MB48359F4AB09484353280CBA9F52D9@CO1PR11MB4835.namprd11.prod.outlook.com>
References: <20210426181940.14847-1-sridhar.samudrala@intel.com>
In-Reply-To: <20210426181940.14847-1-sridhar.samudrala@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [50.39.161.200]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bc0f2c47-796d-4289-6317-08d9197d9718
x-ms-traffictypediagnostic: CO1PR11MB5059:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB5059C0159C90D9A3D35B228DF52D9@CO1PR11MB5059.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qsJ7D6S8KWv4VeL4XoGdDkAQ4W/VFnW3kZP7kBygguXunqvO7jkZhFB22QNcrJdZTU2yWf86ai5O4trypWMXHMHyqRKMpnLFESZkbGMibwzKBp+W26+K2xX1VbUV7a/j3xp27FF2w/snc7y5DweG2yXJ1cAB89/omAqfuGtm7clKStSsLvK2C6mUia9ll1JSP2Z2rqQev+DnoXKSwMPkvHKLUZNFGkasD0+WZtVWJ0Pt22IvCvj6uWxOnK0edGX9MXucsJ7ivgZicrYAjzxfHIt/MSbu2ZON2i6yzuChB8j8YIS4UOdK/E9uhmaUgI4oqEM6dDq2M3g2fFpIkfoVJQPwKyvNwHtwlw4ekAzyPXJajuKtLKgPChBIx9usw8MjLYL0uaz4kHXsr5EwIEo5JRwxhriX6qCY4NEoz/WECLTU5RCUuSN/InE5LjSxXvrpS0XpGBvpUTM85EvfZsrzAii9M+Pe7mr+IIgw7d5VqtzW9P8NXtVIiTfJxGAM5sQYrUW8DDmt26/acLBbWLTYp1Smu6fPG2cvRfvHF+HkGpoP5DmcqApezPk+4d3G1nOfoealpctFlpY+JMqBUqIfchCrNvMr3tfAnhK8Dc5GlgM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4835.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(39860400002)(136003)(376002)(346002)(396003)(33656002)(76116006)(107886003)(2906002)(38100700002)(66476007)(122000001)(6506007)(7696005)(478600001)(71200400001)(4326008)(9686003)(66556008)(53546011)(86362001)(66946007)(66446008)(6636002)(8936002)(316002)(64756008)(8676002)(5660300002)(110136005)(54906003)(52536014)(83380400001)(186003)(26005)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: jc58Y6+7LoxVtngl5orm5Oshc8Kh55U6PBUL9EEqZ4TtVwjgLIAwtbBTK3i1LO1CW3XThOEtK+e2rvzi3Fz7KjGDSlI4V6mSZKV13RMF++OXCXFVSPeVN+D7WfmYslLP58YyJwp1TFe0GWLcMgMEjavz8gt7bpZI4U0RR/OGffm1VW7NoZQP/GBqNlfkCtBlAHcEp8BpzYXV/cGpjAowa44lWvEqPUf4iLTMbrVLphSzik9dIajyebuUMEi0vxOPh4w0GYYRUn7CP4kNuOVOEpx78QPJGSoxH1QjPVMtbwev7FarvrIHbz2KFoA5l3Vmwi1PRWxywaIlDDfpEfzmx5RCe/1l7TNehHmFLkuQZeg4kBrSXqvp6TIXlRgF7WaUbAGRpMFH7kcbSQc07ulNSHxVtJ7Q+r6mjebi+uO+/8Y4zMOiao1FURdoW2de9JpmZeFRTZAqM/2IJyMXIWyWZcdY/FGEAN2mV/71bp52VoW1YX+ZGIgsl9IEBfNZQvb3X2pt251IJRZGOajZU/EP9mJMCumcDjrSps7jIlJC6vrsGGwoRsGdGgHuiHG725WmndWiLuZUf+7IW6k4f1CU9qOwTNGlJXeJ1yYqWCBkzRZfC9PJS1MInLkhnQbachHoTh+mnCL0dV/0Nh4+4GvhCF0QjZ6T1q3AdXRbXYPQIi/Leg2UJgqlPGHmfmgvIqHQB0GVzqikhHlFRlVbiXZG8+w7c0F3CwQ1yvLdsKbyaZ4=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4835.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc0f2c47-796d-4289-6317-08d9197d9718
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2021 21:49:04.5254 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +zWDQzAI6LrFmpdrk00/Dzn8so1X7YPujJL6VMbReoVsWk5f4bP8iujPEMm5+IvN3Qp7TzR71WvigOUrA/45vg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5059
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: Enable configuration
 of number of qps per VF via devlink
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
Cc: "Ismail, Mustafa" <mustafa.ismail@intel.com>, "Saleem,
 Shiraz" <shiraz.saleem@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Sridhar Samudrala
> Sent: Monday, April 26, 2021 11:20 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Samudrala, Sridhar
> <sridhar.samudrala@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2] ice: Enable configuration of number of qps per VF via devlink
> 
> Introduce a devlink parameter 'num_qps_per_vf' to allow user
> to configure the maximum number of queue pairs given to SR-IOV
> VFs before they are created.
> 
> This is currently determined by the driver based on the number
> of SR-IOV VFs created. In order to keep this behavior by default
> the parameter is initialized to 0. To change the default behavior,
> user can set num_qps_per_vf parameter via devlink and this will
> be used as the preferred value to determine the queues and vectors
> assigned per VF.

What if the host administrator wants to give the VF a different number
of vectors than queues? For example, if the admin knows the VF
instance will be exercising VF RDMA and the VF needs more vectors
for RDMA traffic.

Should we have 2 separate values, i.e. "num_qps_per_vf" and
"num_msix_per_vf"?

> 
> USAGE:
> On a 2 port NIC
>  # devlink dev param show
>  pci/0000:42:00.0:
>    name num_qps_per_vf type driver-specific
>      values:
>        cmode runtime value 0
>  pci/0000:42:00.1:
>    name num_qps_per_vf type driver-specific
>      values:
>        cmode runtime value 0
> 
>  /* Set num_qps_per_vf to 4 */
>  # devlink dev param set pci/0000:42:00.0 name num_qps_per_vf value 4 cmode runtime
> 
>  # devlink dev param show pci/0000:42:00.0 name num_qps_per_vf
>  pci/0000:42:00.0:
>    name num_qps_per_vf type driver-specific
>      values:
>        cmode runtime value 4
> 
>  # echo 8 > /sys/class/net/enp66s0f0/device/sriov_numvfs
> 
> This will create 8 VFs with 4 queue pairs and 5 vectors per VF
> compared to the default behavior of 16 queue pairs and 17 vectors
> per VF.
> 
> v2:
> Fixed kdoc for ice_devlink_num_qps_per_vf_validate()
> 
> Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> ---
>  Documentation/networking/devlink/ice.rst      |  23 ++++
>  drivers/net/ethernet/intel/ice/ice_devlink.c  | 110 +++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_main.c     |   3 +
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |   5 +-
>  4 files changed, 139 insertions(+), 2 deletions(-)
> 

<snip>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
