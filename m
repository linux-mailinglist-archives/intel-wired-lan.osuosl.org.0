Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9690D33D975
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Mar 2021 17:31:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3C78C431AD;
	Tue, 16 Mar 2021 16:31:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JFThXLuy3VKI; Tue, 16 Mar 2021 16:31:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 44511431A0;
	Tue, 16 Mar 2021 16:31:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 15A351BF97D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 16:31:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 10CEC4EDAA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 16:31:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BMCgSR6mPH6T for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Mar 2021 16:31:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F25D04ED99
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 16:31:18 +0000 (UTC)
IronPort-SDR: SEPezByTzHILPvffqWPNs6rM8Q5648gpkGYcAKEfIIcKeH/IXTVxEvvsFplEwKs3a0kFqwUwVf
 Szqzs9UMialA==
X-IronPort-AV: E=McAfee;i="6000,8403,9925"; a="176423375"
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; d="scan'208";a="176423375"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2021 09:31:16 -0700
IronPort-SDR: VxycHLfb5h+TzzcHZ4HhIHl/U41XKsbzBQoM6Dj1DqQ9mCvoTxuyzA/k541RkiEMM4AH5b+yPB
 MU07WTKn/Htw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; d="scan'208";a="601887417"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga006.fm.intel.com with ESMTP; 16 Mar 2021 09:31:16 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 16 Mar 2021 09:31:16 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 16 Mar 2021 09:31:16 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 16 Mar 2021 09:31:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vq0rwMCN+rNpCYCl0eJvpQm0T/eZFnOf9LQrZo8ug+WtioS2OOCG28ZOWPEW4xvGjw4QqPBVqFbcWOrQZ8GcqjCaJHdfK45K8TKWX5Ft5uJ3e2aQ1cH6Brka1S6SY7K1//29OdeE7EQJsbH4SrcncK/hEB3wN4LfGEEwWi3Kd11XbmjqcsvyN3lfpDloqKIcMmNFTblzIhXOzEKCNckWpjkBJvDqpY0JTTGoWfu8/ejpRiobL5lmSn2mv6OB4pt05xbpiFUmjpoUpGmA5gFI4Bdi0NbTBP3e1W8uq1SegBOorzTzmwDYRcaCiUdjjU/ZSnxgQhH+bpgKa6Qd3sBW+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1CR/RbgPcMJ1pklRbfIM1C/1Rrz+mNaN2xm32PTLHxU=;
 b=cZg2EcWWW0S1kB2kdTpxDNoc2ZLFOj7OR60nqg7WEVvkbaF+tSBuB42EGWeG+DL015U7cYlqCct2TMlhjJNlUATHKTbz6RPxI/8WmcGlMimosUlAIxi0RyhY7BHU1+opu07aklExGhhOfDN4JUpjhMaKEUp1zhxJgD00i0QYDRYJOhdeD4eBgoZys4ngBMNm092WbEn8Ur7qkUN8Z0uFpGk93wE0QitiLv6b0SjyFnCuyxmnef/LHpu7S0uB8PRTTu1F+AGpkkXH/4VNH8Fu+8Seyo53pwE00gS99unsf6r/hmv8kmnYru2LGPJfaEdgBFDIhuR0luk19qQGfDlI9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1CR/RbgPcMJ1pklRbfIM1C/1Rrz+mNaN2xm32PTLHxU=;
 b=ZEVDPoMV15SXwXqIZkQhGJMbI41ugLSEBGIe+lVLtwaiJy9FFt5DA4MmyykDf/Dy2SJj/kBmF3A5ChBqXrrlDycmVaaEBc8DrEEi0xpBstX/8JZ9LJQ4VyH1LlE/CU8Zq3ywaKP2kRNpWJbYMu9+fH9DwkyeBIZKXPQhWe8Mlvo=
Received: from BN8PR11MB3795.namprd11.prod.outlook.com (2603:10b6:408:82::31)
 by BN8PR11MB3633.namprd11.prod.outlook.com (2603:10b6:408:8a::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.32; Tue, 16 Mar
 2021 16:31:02 +0000
Received: from BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e]) by BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e%2]) with mapi id 15.20.3933.032; Tue, 16 Mar 2021
 16:31:02 +0000
From: "Wang, Haiyue" <haiyue.wang@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Patch v5 15/18] iavf: Support IPv4 Flow Director filters
Thread-Index: AQHXFJQB38naSQKlkkOaQtnqsk5cDqqG2jVw
Date: Tue, 16 Mar 2021 16:31:02 +0000
Message-ID: <BN8PR11MB3795903520731FBE05EFA539F76B9@BN8PR11MB3795.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-16-haiyue.wang@intel.com>
In-Reply-To: <20210309030815.5299-16-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.0.76
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.198.147.205]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 69552d00-5bcd-49e3-5d05-08d8e898e3ae
x-ms-traffictypediagnostic: BN8PR11MB3633:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN8PR11MB36339810E4FFC17B1B249E24F76B9@BN8PR11MB3633.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:800;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: it1M4xxOPafm3NrBcIKhkcReP4JAhp9rxbbWYrghnmDPAsllmpJeB72OJsa4oJ/O5qCfRt2eTe8gcfe/v0vjQnQj9hIs3PfcsCcg+1rh0XfRuyLjqIl1BEp1s5/Hy2z/tro/9ZheoFXeXlJfYSBao7Dy/TEjyDWj543XBHlrdAH2q2fEElBwMrSdkQcl6OBk+mwoPneQGc6ibZoE/XvIJITUqMGG5/P3aeJpiKOQX1PY2btDix6d5AHbZC8zj9y5VBA966B893hvijfiuJczuVWw75hfPwagcUUjvz6FhFAzybeVG9DSKQYXW7TzybWOt1fNKop1QchaWCqSAq1OinoDXCTEAn+2wC/e/BL88TnPww+dNFULNBWh3m09Hd0+1EbPoEWq3lRIN2AXl+uBSi/CSRdfCZ4U+DYP6Qy/PjJ7moSO1ROTWdnh9WU3MmQPa2dyOig5j3N89agOXXRoibrkDZlx9WtwIAoQo6N8mDzpxSwN6fS5xAjop2Yvlb0Wf7no93paw9I+2053hWW876Qs6dd4ULr6itULCjWbLNAAv89+sEmJPE6LQJABgDFh
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3795.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(366004)(136003)(39850400004)(346002)(396003)(6916009)(2906002)(9686003)(33656002)(107886003)(4326008)(54906003)(5660300002)(66446008)(186003)(76116006)(64756008)(55016002)(83380400001)(71200400001)(7696005)(8676002)(6506007)(53546011)(86362001)(316002)(8936002)(478600001)(66556008)(26005)(66476007)(52536014)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?crTnO74fXT3C5oXgdfHn2ZCCoAZZ0ZdS0MShUWFfu9rOIZgY/iZSfCi5JRIJ?=
 =?us-ascii?Q?zDLy8L2MIjeVh2MV6UuDu3R74pEXDDWFY5nYePT8KloLLFLYPTm+lIMdd2jD?=
 =?us-ascii?Q?6wNrE+zsbU+04NKZFt2Wtcu1j7pvLJ6c5Xq/b6bzRoL3wYDybdW0EmkyLrg5?=
 =?us-ascii?Q?zTSvYQEPvkEO+PbTuY1Fa13661dIqlK1+RpMy2UWt07O9mKwrUFvBN5uP9jM?=
 =?us-ascii?Q?MHtEOy0NV9udZoWrxLqDR6GqwVOzqOhvruJKRXN3JhP5/KAHAVBQMWYOiqCQ?=
 =?us-ascii?Q?0IGBXRXSqLU2nN2ao8FNfx2ZGLzcrNJc3NdWSZ+aBELaugOB5wyBaKT39M18?=
 =?us-ascii?Q?hzC8qE5Pr/JGIDvZ33DuKS4gF7uQyyJGVDuvlAMQdQo1eqMeYrhb/gm8HVpm?=
 =?us-ascii?Q?QCiF35OGhg83F+OAWeai0IEobkigpsdq1rHDRNxdzK6twRjzcF6PDrcaQyQo?=
 =?us-ascii?Q?5bZvEgVVInrwWzw07txsymO1uX67ZQNToNa803Ie7B5kjshilQWSYKJ8PHM6?=
 =?us-ascii?Q?Ebqn9Fw+cZQa/LqzcP3DazXmOwCQEYiWWBpNlYs3/s078rcrtRdTMgskGExs?=
 =?us-ascii?Q?Fhyyo2l40lEc3n1fqTx5gGorfymeOxFVsdOHkjn4AISIgdHwPIVRJP2O6RGK?=
 =?us-ascii?Q?xVN5wr8C0J8SgajwZJvdzMnu6yxJA8mNeAdfic/8281rATr6kkxuPlCG/66D?=
 =?us-ascii?Q?sUsDYltTpJHlbhzLzxNAxulAO52uONWX7H71UMvTmP0keOyBXh6+1KctPQly?=
 =?us-ascii?Q?lWuVnRYL6DqYfx0vStSJnvLHQUn3YoN98P3qt0sTdvgBUS1cBnqpG+3eWBkP?=
 =?us-ascii?Q?pODDwbE1h1NBkC3S6Cz7Y/OQNxDVibiSyJSwFbRVQwmOAYi98X9QR3G1yKyp?=
 =?us-ascii?Q?N2qnImrkRx0zNaVNmMYTNcKY4C5vDjmwts7aRdgXgTuYp1OUL938dmP+/+Zv?=
 =?us-ascii?Q?ouJTMEhxv/MffpkKVtobsDrjXiB34KkRS67WagwyeHcCzKmPxphdvBMqhZtD?=
 =?us-ascii?Q?Ah8MPRIwhh8xW1G7DeYyU24hzmfutY0kgO5SajY8ENxH7zzn7k/63uimSiqj?=
 =?us-ascii?Q?AvDrl2cKrMkJ/ghyeI3/o1s7bKVKXHFYQjjNT8t7IccvFcgJi/LsVsIALeZt?=
 =?us-ascii?Q?RFLuymqQD2c0XI6lmQXrS/Yjgai4lwzKCniTo3lct1/l3ntSkzFK/l6kZBWC?=
 =?us-ascii?Q?znureMuzBW7ZFpTgq4tUf0X9whGEJ/F6FB2qFnFdN6/d1x4C4u+qxp09cIGc?=
 =?us-ascii?Q?lkl9eCvx6DuWGGNH4v/fV3P5GlU3EOwcEyLsplAY01398hEWTHL1tsy+OIQm?=
 =?us-ascii?Q?6JWEgyOm7ugz0hL57fUEPzki?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3795.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69552d00-5bcd-49e3-5d05-08d8e898e3ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2021 16:31:02.4144 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lrlUo5N0C5Iz63PKTGOKgnroqMaB+gRY3n9u9vQujYYfG0Nl4yfvb3ysShYBzaBaAuokK+wde/uHCIGAArfjXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3633
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch v5 15/18] iavf: Support IPv4 Flow
 Director filters
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
Cc: "Liang, Cunming" <cunming.liang@intel.com>, "Zhang,
 Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Wang, Haiyue <haiyue.wang@intel.com>
> Sent: Tuesday, March 9, 2021 11:08
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>; Liang, Cunming <cunming.liang@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Wang, Haiyue <haiyue.wang@intel.com>
> Subject: [Patch v5 15/18] iavf: Support IPv4 Flow Director filters
> 
> Support the addition and deletion of IPv4 filters.
> 
> Supported fields are: src-ip, dst-ip, src-port, dst-port and l4proto
> Supported flow-types are: tcp4, udp4, sctp4, ip4, ah4, esp4
> 
> Example usage:
> ethtool -N ens787f0v0 flow-type tcp4 src-ip 192.168.0.20 \
>   dst-ip 192.168.0.21 tos 4 src-port 22 dst-port 23 action 8
> 
> L2TPv3 over IP with 'Session ID' 17:
> ethtool -N ens787f0v0 flow-type ip4 l4proto 115 l4data 17 action 3
> 
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/Makefile      |   2 +-
>  .../net/ethernet/intel/iavf/iavf_ethtool.c    | 404 +++++++++++++++++
>  drivers/net/ethernet/intel/iavf/iavf_fdir.c   | 428 ++++++++++++++++++
>  drivers/net/ethernet/intel/iavf/iavf_fdir.h   |  40 ++
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   8 +
>  5 files changed, 881 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/net/ethernet/intel/iavf/iavf_fdir.c
> 

Re-send to Bo, as a new member.

> --
> 2.30.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
