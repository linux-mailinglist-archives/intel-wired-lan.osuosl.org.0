Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 25CD225E537
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Sep 2020 05:11:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B107086943;
	Sat,  5 Sep 2020 03:11:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oSorknjgI1fm; Sat,  5 Sep 2020 03:11:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E508986BF7;
	Sat,  5 Sep 2020 03:11:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CF9451BF9C8
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Sep 2020 03:10:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CAD8886943
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Sep 2020 03:10:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5UVzHJAb6SCu for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Sep 2020 03:10:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BBB428539F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Sep 2020 03:10:58 +0000 (UTC)
IronPort-SDR: F3S/y2SRXJDiu7NKcWmfHacZU2gcnsoBtG3epCdHBSr07VHGYjs6DtsyHW0dS3EtZwPgjY9kQL
 zOPgnz6qNbdg==
X-IronPort-AV: E=McAfee;i="6000,8403,9734"; a="242653153"
X-IronPort-AV: E=Sophos;i="5.76,392,1592895600"; d="scan'208";a="242653153"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2020 20:10:57 -0700
IronPort-SDR: zoamjPTBQ7ZZXpt2UN8eCWu1Zc73GQo+1q3+qwz9W0B9RqAwh7lkC0dRNHxUl5EsNusPPlj+XH
 YGirhH8DCAew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,392,1592895600"; d="scan'208";a="298645861"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 04 Sep 2020 20:10:57 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 4 Sep 2020 20:10:57 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 4 Sep 2020 20:10:57 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 4 Sep 2020 20:10:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eXTA8mQXXdWcTpAWqhEtv39B+48q7WBHhVtfyIqPF0E73LeX9mKrQaapWqaEknNPzVvDqZ+qh25697yOaq8974C1BUejyiEDjkl65nyuPRLDU2tG8OT8VR3cO53S/wHePgVZkdudb0TAoNm1FXX7+n1ZUSOnGcVuE5kET/qXnzV6rDwQi9GGcSqwPDWWmt4+eNtxYXoT8/vfb9dk4iP+ARfOV+9Tvbr8WpFs53aAfRugclclPwIGj1tx0179HrfO9saZoc+9z+cBOQc1i5A6AmtDi4e/1ERPRDL+3nGB/IcFk0jfP1MfI9L2+A1INBQHjWEPIaQWEFk59z5iDGcK+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XJFEKntakLUdno5SaYjg0UKPXutt8O5bU4oYKYnEapQ=;
 b=gTO1tVv9hbThL2i+cm+vFotQjJD3mqOOgZ/E9W1kY/HAqP5R2iIfTILj6/cqHR2FlFUiXA2Osc802eypJ14yKB6+98auDZiXY1vxnnTSvUdst9RGq6EW3hBWKtHXiHq8WS5L1rTvs2rc4FDFoZ54tQKGngzhytTiJ4YCw/teaA3yKKU1Z5Xrw3cBW9MYCIcPxwLdiF1WGcgJjaed1YlMHoCB71CRBG8WceH4jt9KNDQQc8B4wyXUWMomHZYKFKeeJjpeEFdM1+mNqZs92MwXtgfuucd2FRnLLLDUhpGCMWV5yNcITKNM3F7mim7pSqFQJXUX6i3PS588UAJkqGWEyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XJFEKntakLUdno5SaYjg0UKPXutt8O5bU4oYKYnEapQ=;
 b=Mi1pFsyE5afVxG6WCa2BNQoxo8SZrVm1ymoMloOSGsM+gH7whyYtu3AcQK8ewJHKrgoFFo1C84kCG3VaC4/pZSAiH10U4+HKnbIy8y6ZxNx1CLDEjd7KMJk8T/MBo451PmB9UGAJN27XdoQddKteAmveAigp64vkmSPAf7D8fSw=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4284.namprd11.prod.outlook.com (2603:10b6:5:205::28) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3348.16; Sat, 5 Sep 2020 03:10:44 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f%7]) with mapi id 15.20.3326.025; Sat, 5 Sep 2020
 03:10:44 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net 6/6] ice: fix memory leak in ice_vsi_setup
Thread-Index: AQHWgUIzogQxm6OtgUiFarzXgr4xt6lZYaZw
Date: Sat, 5 Sep 2020 03:10:44 +0000
Message-ID: <DM6PR11MB28903E0D9493384C6B9CECFEBC2A0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200902155347.16972-1-anthony.l.nguyen@intel.com>
 <20200902155347.16972-6-anthony.l.nguyen@intel.com>
In-Reply-To: <20200902155347.16972-6-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.215.99]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b598bdeb-1154-4436-bba8-08d85149477b
x-ms-traffictypediagnostic: DM6PR11MB4284:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4284ADA3530E3EB38D02F192BC2A0@DM6PR11MB4284.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RPt0IZ6h9iVKdzP5gSRWcxSjO5ybDiWTqkPw2YnL/mnwM+g9Byr6dK3DX/xYmpoQe5XXFdSGAFxgwxT122zKzNR5CS785gnB0QkMRAQBbZ85f2y2DvUCLR7593/blEDGmvpwW4+h99PEmR3ZESRHTdNQk+d459ASXd6HP3pJZ0Qi33kzxnAYsN/4a39BYskZ5dP6IR2GYOPpqS+yfxRpmZ526trkMSvbjZXE2ZhKW7nOfpRQo8R7f4cUH2urV1yDU1ZDSMWIZwgsqhXbMANlfEWrSdx5m/YtzeRGJop0FdlqAmkWMsxgEtC7Ilfu/Ksh
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(366004)(39860400002)(396003)(376002)(346002)(478600001)(110136005)(86362001)(83380400001)(6506007)(7696005)(53546011)(33656002)(8936002)(9686003)(5660300002)(76116006)(66446008)(8676002)(316002)(52536014)(66476007)(64756008)(55016002)(26005)(186003)(66556008)(66946007)(71200400001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 1osp0iOVg8Izryrbi4sJaaFLVaWaoTq50MwsZf9Nf5JbcSwgb0qqgqiljIqcp+BOQ3ySQ1fl3WpXoe+Onk7Iq+WXGyzddG5bltY3jU4bZBsIHCb6r43Q+WJp296faTDU9IT/EyqkYgnBpMTbUmtfqJFZRvD1NfNYl1iJ4FFiPQ1j7SLyh1kGc4iuthj11/M/pXfGXzFS+6bUQDrqf/ngrVU5pOXUTm6iqdvuvHw7y8G1LPoR0XZtZdKvlNo2U0BUYPbBFnl0OXrhM61Qw3eSaIzAeOATGYvfYFCVhXNXqzcjE6n96FBlFh8naXq3tsgpwXyJUk4vKe1IpAqfbAl5fRSCvUVxmyLH4XoXzOZoNicL0EGnMbBesP41yFQIlMdc7EA8pWQ6yQ7XirKacj+Furrq6OTjQSgrJHgmS2hHLiQcBSZTHWs5w0dlaBD4T0ZMaGceFKjlmrhs7j9e6fn7WyqLWOxB2DTIl7yR9K8QbsMESPCFVb41+Z4XufoXsggQQz8ALi0kz/JB0i9UNMU5iTFrJqUa+NXksuc3DemFcEBQsCEG/ks8gIrmaNdFRz14Mfw0yBpCPSOD+7VPBKvUllyOHbdhEwuJ9yI77wPGcrsH97QulJqUdJbC/BfWR68aw5m6q5rE1Ieg6YpIRrS4uA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b598bdeb-1154-4436-bba8-08d85149477b
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2020 03:10:44.5419 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Lqa8H9NR/O0c/9v7mB4b7XS1XgGvcgvu7UBWhn2mGj+w4YDZ8xXSWbSSaDRzU0DRAjc4pKAWnpIDiRcYeZOSAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4284
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net 6/6] ice: fix memory leak in
 ice_vsi_setup
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Wednesday, September 2, 2020 8:54 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [net 6/6] ice: fix memory leak in ice_vsi_setup
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> During ice_vsi_setup, if ice_cfg_vsi_lan fails, it does not properly
> release memory associated with the VSI rings. If we had used devres
> allocations for the rings, this would be ok. However, we use kzalloc and
> kfree_rcu for these ring structures.
> 
> Using the correct label to cleanup the rings during ice_vsi_setup
> highlights an issue in the ice_vsi_clear_rings function: it can leave
> behind stale ring pointers in the q_vectors structure.
> 
> When releasing rings, we must also ensure that no q_vector associated
> with the VSI will point to this ring again. To resolve this, loop over
> all q_vectors and release their ring mapping. Because we are about to
> free all rings, no q_vector should remain pointing to any of the rings
> in this VSI.
> 
> Fixes: 5513b920a4f7 ("ice: Update Tx scheduler tree for VSI multi-Tx queue
> support")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
