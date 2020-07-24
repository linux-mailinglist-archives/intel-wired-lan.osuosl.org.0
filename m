Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 113EA22D28A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Jul 2020 01:57:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B97BE88847;
	Fri, 24 Jul 2020 23:57:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TTojMQ5KxArx; Fri, 24 Jul 2020 23:57:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0CABD87863;
	Fri, 24 Jul 2020 23:57:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5E3FE1BF365
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:57:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5801188BBC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:57:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WEe2NI76RjOj for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jul 2020 23:57:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A636988BB1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:57:39 +0000 (UTC)
IronPort-SDR: UgeXoWWRs2TAQuh4cSFIyLsjAOW75lrvhP4Oh6tGN/EgRY/0HEvRZdAo4WL/hXHEdf8GRKmiLv
 v1c8KMUoGL+w==
X-IronPort-AV: E=McAfee;i="6000,8403,9692"; a="130354448"
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="130354448"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 16:57:38 -0700
IronPort-SDR: zno41t0W3p8009l5+NGVMV6UB9AAHng+N2uPL+LbAf8qWtIfCvwaFWDid64j1fLZgRSnYHFlBf
 Is5bz2QS+0kA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="302819749"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga002.jf.intel.com with ESMTP; 24 Jul 2020 16:57:36 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 24 Jul 2020 16:57:36 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 24 Jul 2020 16:57:36 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 24 Jul 2020 16:57:36 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.59) by
 edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 24 Jul 2020 16:57:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bLs0YQ36ML7t1D25Ndopk3FImkJMWj1zVxRHGO3tr6bsy5m+et2iIvk3Z7MRPLtgZ3+p/yW009RP623mHZ+V8N8dhcRLBPNU/IoZUXrFT9g5YubNfwnGm3txr4sj67XfYL5+1LhiFXEuqT5h1mEJ8pd98UKheQjoijNHiNbN7JHdEswzpeYv1mWJw5LYlqy7yDhSU6iOTST0Ty/Ayz98QNQFgug1x9guupkAyXer/1iVsIqJJFMfKaqrvhi0ut/O3AyQKZjXKAQ43mKYaiZgrwmKlR5aVDXsvT56LwkMNhreD/1EBpzbITwHgHKumU+FIJ19PGapSK/uEv1S8RSRQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YlnQJPs69z1zB92ZOuMrD0hW4l5ja0EFCooPLFxpKI0=;
 b=EtJkTASMOekfEnoGXBvuJgemVIz5bV0NHWcHl+JrN0IoCUl7MFeD6BpchMjT5qSBkxdaqECdDJabFrn2YL0MjlMkzIcK8oxhCOJzCTVh2vPLSxdnuFSud/IwMnIZW5HBAG5PN303Hv6BqqfRfOtZ3BGiPt3rPBYI9D8t3zS3UoAVddN5fo9jg3dRgl4wGDMEeDmMOyIGhWYjdqbvXB2Gx/vZevGA/d/+IfNpoFoSbxw2GxR1qbTW6jzJbzlLrxIJLJVIXH7GpNLS7hK1UGUQfs40xCvCijPlwoRj5qaqzPWqWCWsEQFCIKfYMN/Kao0nNw+5Q1ejebIGPmM1zsTrEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YlnQJPs69z1zB92ZOuMrD0hW4l5ja0EFCooPLFxpKI0=;
 b=A+KRSY8gJTgDrJ3ZzmypoTODfidKH48hZHSQjxWy7bMW0jxHiRWXqTYB7su8jYnk6ItDQEuWtCrgh10th0CcZkSkamb5Pdy2BwUf8c7htg1t9YG7sylED/0Ay8EMAPQCsvOGlEE9o7OQtWECgLTPKdgPUJ3b2rP22qjETBLwREI=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3842.namprd11.prod.outlook.com
 (2603:10b6:408:82::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.24; Fri, 24 Jul
 2020 23:57:34 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3216.026; Fri, 24 Jul 2020
 23:57:34 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v6 09/16] ice: Add support for per
 VF ctrl VSI enabling
Thread-Index: AQHWW3YeXxeuis0pu06v8bD4PqvMtqkXdWbA
Date: Fri, 24 Jul 2020 23:57:34 +0000
Message-ID: <BN6PR1101MB21458CCFBDFBE67A1CB0E7E68C770@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200716133938.46921-1-qi.z.zhang@intel.com>
 <20200716133938.46921-10-qi.z.zhang@intel.com>
In-Reply-To: <20200716133938.46921-10-qi.z.zhang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e4b60d97-294a-4b10-d173-08d8302d55ed
x-ms-traffictypediagnostic: BN8PR11MB3842:
x-microsoft-antispam-prvs: <BN8PR11MB3842845CE50EBF6BD7C691BF8C770@BN8PR11MB3842.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Qh0Cl/ZmZW5oFo2ye2adYfeZKzuZO+GjFakHf9PRy07abpLLluVFNq4YUZ+WcmF3rzrhIYkPxAwPwCHXMLl3jpJbr39ab81rnwcmoOqEaJe3FM+MpqiTnVc/+uC+qryNNZXrF/8NIjuErFRL/QyB72eG8sPGFwPP2hnlAZuXfpdbteX5/BhNdYcNUbOpi6JaaU97v2oBIFuG9oNSHgKL094xFpuo74FnIf0JTh7Uw6sJ4JoZGuq+bzwJECvFxqgeJ/UaBYftfrRrqABgVyz1l1rMO8h2cA/4xWdLY1DX3gLZPxJqCZ4CVVOtFO3JwSC3R78/gogJGbiU9yoAHoCgyw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(366004)(136003)(39860400002)(346002)(376002)(9686003)(6916009)(2906002)(55016002)(26005)(186003)(86362001)(33656002)(478600001)(64756008)(66556008)(66446008)(76116006)(66476007)(66946007)(5660300002)(52536014)(83380400001)(8676002)(53546011)(316002)(7696005)(71200400001)(6506007)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: YmMzY5aE0mBmRDQs6PL6acNPpYxW+U11cC8ZQn/QG7C30h9wWlASGIHz52wwfspwlfBX242tHeIm8AOAtdKDJVLuSGUVvu0tJK18ADrP/DEpcCfHnJMr5MFVqGE1mouHaBUhvAn4TS7M5dgUcOsr3mnV6Xbo/e5XRzEixLYG6dZxVtNhTYY8oeV/Ji1trz2dhaUkPX0gQNgnuNSN8yX8s/umN0UJ8TelKMXOfyr2kj0N9jzUg4DziExt79v14ChQviBvl8sfB/0PLbeYPfGCDTbhXr7naRehIkV5WtVffme0b9q5yfOrxUpnj6lopY5hFOOKd6oF4eogVE2puCu8lmQry6zM8JlsAki5iPkJDWXdgtd4h9abcEK/MxsQEl921UQl9fQny9EZ8E3VO0v/ek+Vb0H/g5FaZiyCbVSgtwVJM/ToYP2OjX63/9Bf8ygyksbi56yTf1EyAQ3Jv9Eilj07DRS1HDragFCsYnQbH8gxB7xA60k3eyaepAAYAf8J
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4b60d97-294a-4b10-d173-08d8302d55ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2020 23:57:34.5755 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wcAIt21q69mlOlOWXbDELmDlqxmxBOR7mqsUiCwUK39RaMfLC0OjP5i9sjVmf5Ik5O7Iw30phGCNe5hxpX2aokYw6J9KmoGN0wVTGPr2xWo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3842
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S48 v6 09/16] ice: Add support for per
 VF ctrl VSI enabling
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Qi
> Zhang
> Sent: Thursday, July 16, 2020 6:40 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [PATCH S48 v6 09/16] ice: Add support for per VF
> ctrl VSI enabling
> 
> We are going to enable FDIR configure for AVF through virtual channel.
> The first step is to add helper functions to support control VSI setup.
> A control VSI will be allocated for a VF when AVF creates its first FDIR rule
> through ice_vf_ctrl_vsi_setup().
> The patch will also allocate FDIR rule space for VF's control VSI.
> If a VF asks for flow director rules, then those should come entirely from the
> best effort pool and not from the guaranteed pool. The patch allow a VF VSI
> to have only space in the best effort rules.
> 
> Signed-off-by: Xiaoyun Li <xiaoyun.li@intel.com>
> Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h             |  4 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c         | 64
> +++++++++++++++++++++---
>  drivers/net/ethernet/intel/ice/ice_main.c        |  9 +++-
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 62
> +++++++++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h |  2 +
>  5 files changed, 130 insertions(+), 11 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
