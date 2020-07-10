Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8991E21BD8D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2020 21:23:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CE37A27BB6;
	Fri, 10 Jul 2020 19:23:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a03Q81WlL+o5; Fri, 10 Jul 2020 19:22:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4B54323235;
	Fri, 10 Jul 2020 19:22:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8EE471BF2C9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 19:22:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8BCF78847E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 19:22:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id alAlh_QcI4TM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2020 19:22:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B14D98846E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 19:22:54 +0000 (UTC)
IronPort-SDR: /npfp1EbjRvIG/4SLE0/5l0jZWve4E519B0UjQ7ZcVHh9atvqkmVJUDm4eprlDeh0FcHaz8sQd
 QqmtefuxF9xA==
X-IronPort-AV: E=McAfee;i="6000,8403,9678"; a="128341881"
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="128341881"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 12:22:54 -0700
IronPort-SDR: ZucKspLg3kjagM/q3rMuIpSO48Yd9Aop+EgJ+ggegmPJd04ehBZWSqxBJeK1oZPDgwp0nGWDXR
 6Z8HTF/oKbxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="298526256"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP; 10 Jul 2020 12:22:54 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 10 Jul 2020 12:22:53 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 10 Jul 2020 12:22:53 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (104.47.44.54) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 10 Jul 2020 12:22:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FdodqRksspaD0KTN8yarqeZaw1VikKeGu9TIumNTCKTFS8auMx7u70ql2VIru33mC5+qffmgbSEC6IDXt6mPreKIaq5gQzvsXYTwU6ChpkA2dWLTUh0TUyvWeyItjHIF2AtH4qTxy3OCmMRQdWaE4PtrwO1dedgHt6VAgbjfmuvcr7FOLctHN48veo+cDoGhFh1XUGxwyWrpCuEsv4DQUedyfgqk1LQWdgpztJ6tWf7UxLP8zizcCO+aceO48fFIbbci3Vr+Vij+tvhib2r+L4pSOjX8TeBDrFnUM0tQMdg8gi1STg4CFRzZC9tySIkJ379wSqEf1VeH9qBrCtnUoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U9i9BCy6bpOQGksKewZq30YZinkD91UFvevBc5iOYS0=;
 b=HAdkVNgF6HpNWfdQ9vEkgrdE4LBNSSVJpTNflRkIGyuuo2pnHTfTDjJiocLp8yh9b0ZP+3nGfRKoQ2ZRZ/OaiQQGwUT9knV2FLznmx47NXbHNqe9DbcDqtdvNVO3f+93LEtyl3OG/GqzStoXQ9Q2NGhoJpaXjJa7A73naDoHd8LXkw4AnQ+CQACO6JMBNSfwUPhlrISJIfdhQwErIxeNDdVQO69n/2IWcv3TSQg5LvUGkPrmUvB35ZwRpTSxZD/h7dwP5ednbAdRE30zmMtDEVxZAn32tc/zz8cC9+Vpjs97gySLzzRzOCIVL9QxuymdWd1k6bxu+Ah6qI47JFXb3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U9i9BCy6bpOQGksKewZq30YZinkD91UFvevBc5iOYS0=;
 b=GCvW8F64UNwxMY3/bUw5tYsgOFbZSLvRKC41gGlPMq//vDk1hziJjH6BEYhWI3MMwdF2IdustBde+sqpoAbk7wEQvCvXnJGmyBcJMy8u+41D2DnmjJ5BWT15oPsLP4g/L24ChEcSFl2KjBsZ4U3HlAKahuPi3gvdGaN8mGoaXoM=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB0052.namprd11.prod.outlook.com
 (2603:10b6:405:69::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.23; Fri, 10 Jul
 2020 19:22:52 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3174.022; Fri, 10 Jul 2020
 19:22:52 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next, v8 3/5] ice: support to get the VSI
 mapping
Thread-Index: AQHWVl56InPlWRrgtk67POODyYtvZqkBMi+w
Date: Fri, 10 Jul 2020 19:22:52 +0000
Message-ID: <BN6PR1101MB2145C868D39B7A4171F93B3B8C650@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
 <20200710015421.92122-1-haiyue.wang@intel.com>
 <20200710015421.92122-4-haiyue.wang@intel.com>
In-Reply-To: <20200710015421.92122-4-haiyue.wang@intel.com>
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
x-ms-office365-filtering-correlation-id: e00ca988-1661-4ed9-5af4-08d82506a404
x-ms-traffictypediagnostic: BN6PR11MB0052:
x-microsoft-antispam-prvs: <BN6PR11MB0052EA243AB3EC137CFF780B8C650@BN6PR11MB0052.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uDqT0JnE8JuMqq//IXR2TTko+UV7b0oQ3siQNOIhuTMTQBDHR45ibObCWi7K4hDxTqtA8c2ejiXDpAp2v/eDsMDKgw0VhKCSuk42QB783A7WQ3T1jxcPMLqlsAxpCw3HkpSxTamGEcvYJu55w33pkEK7xsfcZThsZP1tv/blNHPgHiRbZALJU67pYnZcA6cGZbYAT37IrBn1mJkkcqADcVWeocJFkwutP3VHUcQ2hBjjkn+3VzPecMecqn3VU4W7CRoueOW2hlkYk1QrTVsjYtijI3CNoR5+Ca5YSnhpCfXK4Mg7lqnY0HUY1i67WntAJS9MoJN/QrU4b3YxLC3hPB7GvdSw/7v+FOyGuSeBlw1U2SdkCrn21kFJAW33W9in
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(376002)(396003)(346002)(39860400002)(366004)(6916009)(52536014)(5660300002)(71200400001)(83380400001)(26005)(4744005)(7696005)(9686003)(55016002)(53546011)(6506007)(64756008)(478600001)(186003)(8936002)(8676002)(316002)(66946007)(86362001)(76116006)(66476007)(2906002)(66556008)(33656002)(66446008)(15583001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 3aWWPd39xM2yHw55y7hwzeOaALhbH8jsuAyg4OEY23l+T5ibrr18Bj+SOeaI3N2jr+085VAldDo2N7+iIf7Ov4Q11BrR38nCyCyGvOs4+99zR7aQhYoUYlOQ+2gHJbC9KHQppeZh7Uah8Rk646Sv/9RI/32ijGnhSPiAl+TkCitkuNCV5fL1xNXP4yl6sPgppnFJmyvkvqetKpLSV/DX8QyppK7oX+gPg4kLa/lFYxzEewHz5PHeZ46DgPwztir6Of18WXGsbYhrarAMXoh5t80O9jwh8c9kOyqlvl79e6eurgz5gLid6sovVG50RmrFoXw3z/LKC3Uq6eVDOSXiysmzVblySTBBPyQU9VJ4u2d2MOR/wz1dZufMfYAehIyA5tr8SVkg3iKa+/EgpARNtDqM7/JGhcjETNbpxrd2ag6HNihug2Wg0jXlxIeNkwS1d+MF0dHkwqXwhsMszogaaEsPSkLO3Meji4HQSBWJ2Tk=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e00ca988-1661-4ed9-5af4-08d82506a404
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2020 19:22:52.2656 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2ZA9PhctXw0DMu5x8G/uTxNSFmNERVRIAgMF7prqAX5IoJzbOWm+8kptyyPXfRyr6XPMl8bRejktCxLYWYRCxq2U1FXrffhYGmlf/ScfV/k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB0052
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next,
 v8 3/5] ice: support to get the VSI mapping
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
> Sent: Thursday, July 9, 2020 6:54 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Xing, Beilei <beilei.xing@intel.com>
> Subject: [Intel-wired-lan] [net-next, v8 3/5] ice: support to get the VSI
> mapping
> 
> The DCF needs the mapping information of the VF ID to logical hardware VSI
> ID, so that it can create the switch flow rules for other VFs.
> 
> Signed-off-by: Beilei Xing <beilei.xing@intel.com>
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 61 +++++++++++++++++++
>  include/linux/avf/virtchnl.h                  | 21 +++++++
>  2 files changed, 82 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
