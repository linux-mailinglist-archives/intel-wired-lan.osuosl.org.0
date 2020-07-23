Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD10722A486
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jul 2020 03:26:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 45E0088396;
	Thu, 23 Jul 2020 01:26:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6hugNMjrWM7l; Thu, 23 Jul 2020 01:26:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D113F88427;
	Thu, 23 Jul 2020 01:26:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 000931BF29C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:25:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id ED37486DEF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:25:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9VN2Xb_gP8-x for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jul 2020 01:25:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6EAB186DEE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:25:20 +0000 (UTC)
IronPort-SDR: hg9g+BT3n9BPJCeN5zpTCVelRemyqJo3ntO3FaGim4BdPt84fzUckyTdgjYNuMYjq4WR+xcfut
 eBbGFavSsWOw==
X-IronPort-AV: E=McAfee;i="6000,8403,9690"; a="149625094"
X-IronPort-AV: E=Sophos;i="5.75,383,1589266800"; d="scan'208";a="149625094"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2020 18:25:19 -0700
IronPort-SDR: j1XvDZF72spZ2Kad0B0eOntlMjchnBYqfdeYpqOCZxHLFUtzgdSWz5rJ6LqCI4heBAcJYMH5ju
 ZlT9daV4b4FQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,383,1589266800"; d="scan'208";a="328396693"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 22 Jul 2020 18:25:19 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 22 Jul 2020 18:25:18 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 22 Jul 2020 18:25:18 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 22 Jul 2020 18:25:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YXXu//OAD9btNZXWcxyh7tEdNW9DyYM7WHlkIL6/ZPS2jZp4w5roCHsvfhj9JRLDy+UzjUrsu1dtRV2+m9ugld0IBkPIHMYXa3LrzOYVAxi/43nlEcaEGRoDzIFzI+C7TmPkLyauVd1t4agt9wuOqn6FM0LLKbE7jHeuoFy2IQW/Mwf6UEZjvrZ3TsUOw7/9+9kH5qpUUG1F5EdJs45mfheTRkLMATh/5SB71bbSri/fEd5iu4+sfyoAdsMBMhADzITYRhQe3Nx0Hz+eyHmSCnLUbpaaZ0rYt+og4Xlu4TxU0SgZYMXkFXcXHhYyVKgc+0c5izB/yz2CUgKWvX9OmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JrOclPYkKlk0xclQ50JVic8NUkuytIVhcU+3JCbyhqs=;
 b=P64Hqe1TBazDNgnmpnGcUzQAuJDa1L16OtAiGZzKLe3ppzcU95i/pADfG4ZCnhPxz+u9EKUHgpDc6zsIcZJuiwPR/KzTw3Bf/kyxY785CQRE+DFjAfo4xqJvYvD6W8rSOVHL5stZO35Iv9j5CA0yreXE6voY0FRTtJktTpKweNiDJUEHVMDy+BDD3GxDBEODnMX2dBktgqKFRGEM53smQWbBmiO6tFtlBBvot4FQTZvoZ6CBYarOkKH/OiahN24JlJC/eOJv1SFSGIZc+d6ztiKS7HVQ06pufim02NW5NfSUvJweVUwubWipjvlb8wqYPmn1za4/Xb9W3WLeHzsvPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JrOclPYkKlk0xclQ50JVic8NUkuytIVhcU+3JCbyhqs=;
 b=jlSTK43W6PWL2Jtm+Nxhn2w3jxwxDG/EwD5rPy4O0rrqxBGdS4mW4hxABFVJuvPEStD8j4xipjRDfYWjSbwdRYwuGR8Dp8bKBhIn49B/AEhTYrlyOmLqZdv8ytwWyWRzQKP77rwkrtl7/7P5WymA8Lp5VZsyneDS1lfcSwbNcMs=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1537.namprd11.prod.outlook.com
 (2603:10b6:405:c::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.20; Thu, 23 Jul
 2020 01:25:17 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3195.026; Thu, 23 Jul 2020
 01:25:17 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S49 09/15] ice: support Total Port
 Shutdown on devices that support it
Thread-Index: AQHWVgzyjdVf2iU0YkWVdS1uc5L6hakUdBRg
Date: Thu, 23 Jul 2020 01:25:16 +0000
Message-ID: <BN6PR1101MB2145CE86EBFA74E799E9B71F8C760@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
 <20200709161614.61098-9-anthony.l.nguyen@intel.com>
In-Reply-To: <20200709161614.61098-9-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: f637c7ff-3e63-4812-306b-08d82ea741c0
x-ms-traffictypediagnostic: BN6PR11MB1537:
x-microsoft-antispam-prvs: <BN6PR11MB1537EFFF89A3A3BF599774A08C760@BN6PR11MB1537.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TdmcXh0cHTPLBWIFmGvXb5T0X1AGjyyjkhMYMJWPpZXFEBb7i+FuPRbQxzx6AgsZUxznVzU2JGpoOndFBGORI1HpBUl6tpj+Uo0CsERC1gTMidc5zucKWtds9L9ImhLF+tRcrJpMB0QjYhj2Evw2ViUozVOoXb9V5+OIyCl0FijHZLx4JfvS/YdLmpp/Lqgj4NkkGSkisHLuBe1DYaxDIQuxd8eOgfmd5qRHTHm1s6HRIBtRW/s2x3DoWW/a/97FjDBj4nDR+oEfVbAStZyC0Mx65jvKltrzhOZo2P25MnEp05MRtQAmfHgSbwdHeLuw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(376002)(366004)(39860400002)(346002)(136003)(66476007)(66946007)(478600001)(7696005)(64756008)(53546011)(76116006)(6506007)(55016002)(66446008)(6916009)(186003)(83380400001)(66556008)(71200400001)(9686003)(2906002)(26005)(52536014)(5660300002)(8676002)(8936002)(33656002)(86362001)(316002)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 90P0ce8eCR5PvRnNzU8QVWhMrjTumOEWK83gt7Wk6zE3sm5aeea7WcELIFrfWNPMNlBWFxLH4BDxmdO0eRYwZr8P4p4HJutynXZuVmckTC13FWI8K3dxflnSEv8/IFN6NxCHAeK3zTuRRuljMiXP1vzdauV9eSa12ZujRbJpWvaFnzf29QgX5OVDLCq1tpJFTVR3Q9l/bVMycd6t42X86YkIjsTLDENd4L9qBk9Fdqd4zoXhekzV0GRqoYs+eCBYeqDDv4ZBqfnucPygmuRBBv83roXZW5Qk57oFZ79Gwo/jNZewVpUfoQykD7XWAVJzv2EnBmqX07AbUSEsvYAnSG2XY+vsPBtsxFdRiLBA5OOu7ghwzaKReQqJirjvvMd7yTzEpnd/QL68i0/1LqcDCkpJy9OGVLRcyZ5nE2hDthPTpbe9Vn0z/g0zZDtmfkuPgVQ1XSp2Wh/PROBafeZ+kxm9v8/noZFyYotYk9tEyLU=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f637c7ff-3e63-4812-306b-08d82ea741c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2020 01:25:16.9246 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 48WCyEaauHat3q3WTIyFACyk1jrjXQaocFJpX2/HnHgbwKZZ2ZORyyLeWmkjhI2wUnIa4GcSyCAXGR4zXF2XKdE82PWVYkpfnioLFBkzksE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1537
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S49 09/15] ice: support Total Port
 Shutdown on devices that support it
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
> Tony Nguyen
> Sent: Thursday, July 9, 2020 9:16 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S49 09/15] ice: support Total Port
> Shutdown on devices that support it
> 
> From: Bruce Allan <bruce.w.allan@intel.com>
> 
> When the Port Disable bit is set in the Link Default Override Mask TLV PFA
> module in the NVM, Total Port Shutdown mode is supported and enabled.
> In this mode, the driver should act as if the link-down-on-close ethool private
> flag is always enabled and dis-allow any change to that flag.
> 
> Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |  1 +
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 12 ++++++++++++
>  drivers/net/ethernet/intel/ice/ice_main.c    | 14 +++++++++++++-
>  3 files changed, 26 insertions(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
