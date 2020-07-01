Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9ED02110FE
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Jul 2020 18:47:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 537AE8AAF0;
	Wed,  1 Jul 2020 16:47:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EMM8p-bJ87Bv; Wed,  1 Jul 2020 16:47:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 025288AAFC;
	Wed,  1 Jul 2020 16:47:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CE4011BF82B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 16:47:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CAA638AAF0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 16:47:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3cTvoys8udxR for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jul 2020 16:47:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0B4128A9A1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 16:47:03 +0000 (UTC)
IronPort-SDR: j/af9cYJuUJyZFdfjtJ9AQ6FnKBOEwClVmLx+1fyh1nV+JDsYkd4ZPmtxQz/+lNzyH7//gGuRH
 Al2HmK+63Juw==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="144812145"
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="144812145"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 09:47:02 -0700
IronPort-SDR: t7L/hkfNmKVbNpjfd0PRZQaSxr/NmhYSdMU5seqYQmTjs2picJqGdiYuGUjovgs8bMJnOn3B76
 6WumziGG09Sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="265458018"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga007.fm.intel.com with ESMTP; 01 Jul 2020 09:47:02 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 1 Jul 2020 09:47:02 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 1 Jul 2020 09:46:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N7sV+NQBQHixHVy+QdHIg371cMWAbX7Qx5VhmtoPn+z8ybi8nRW2ZL4uQBgfjH2HyT9u8N2XTAEYspXJ6gvmeRA8cc6zWf5gdR4Tsir7ZxE96mdPdp8wswWtap1RCzVWrh/6QXt629iAefMI+2+HEB3x3lcggfny5sut3+336fvDCE68XCrqsVR/LeYIium6g2nUugB2xTHrFgwYEabfmDl3TvE9WjXVUvCNTekU+EMpQmuboADqytaMGzyzIE+7fjv/1aiha7qjl9Vmhj0vhFkN94UrrbVOrpKT342WZkDVX3MQ/be53oy+s7m96z3nAtE6JjxGh35ngybNYzeaPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mtmCQjuOsU/0JdtpCXCi6V6S+xfet+bvKnEuLuvHLTY=;
 b=FuIW75t0c6Mf/UxWWnoeioxLZCkvLHQrV2wJ/vOcKcecVDSoVt3+h2eBo41D+8Kx86k6xbphAqnVP6Bd6zQ0nPQfIqf6DyaxS6lce8czjSwrSr52/7xLldlXNGtlLcho+Kk2DD3ZhVYLOwV7dOeh9LvR5vDzm0yy8rSvNTCM5wWB/RuKx1CWKdE2iLcQoYEwHEvkvhfJQLatOsY4jJC3veUxUyfWcQR21HeEvfnfL933vR2zOMkqWY5tozmsAQgE8PoIU70HffPpMCiRagwrGB6s3KFANJ8LSmWyrgwM3KMGaF07Igq2Fz0uSYWsBh9KnSfOV6WC70y5fBlnKINIBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mtmCQjuOsU/0JdtpCXCi6V6S+xfet+bvKnEuLuvHLTY=;
 b=dz3vObO0t1N63YL2+GWzSQcoW/XJZGuPst9hDU+RifFQ8y8NUwVFk5nR4ExBSIn2tdTMeQKzJouTmk5rFT3BQs3aoab4EMnxCPSTVT/Lt5QIBj0F3xU2dPiLJ5mSL/WY+6LXPFPdp7WN8BTCyJRJrRjq2PPxTEgudmLjNuvRrB8=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1793.namprd11.prod.outlook.com
 (2603:10b6:404:102::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3153.20; Wed, 1 Jul
 2020 16:46:56 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362%9]) with mapi id 15.20.3131.028; Wed, 1 Jul 2020
 16:46:56 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next, v7 2/5] ice: add DCF cap
 negotiation and state machine
Thread-Index: AQHWT0gBWY8Y3Gh4MEqki/DZubDatqjy79DA
Date: Wed, 1 Jul 2020 16:46:56 +0000
Message-ID: <BN6PR1101MB2145033A1F87619AB34129708C6C0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
 <20200701012557.40234-1-haiyue.wang@intel.com>
 <20200701012557.40234-3-haiyue.wang@intel.com>
In-Reply-To: <20200701012557.40234-3-haiyue.wang@intel.com>
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
x-ms-office365-filtering-correlation-id: da4459c4-4898-4c8b-462b-08d81dde5d90
x-ms-traffictypediagnostic: BN6PR11MB1793:
x-microsoft-antispam-prvs: <BN6PR11MB17932A6DEB881B62207E46068C6C0@BN6PR11MB1793.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 04519BA941
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BbwD2CumHcWVRJcFgMT3E2/09SBi0RZ1a/hIEAB7cmn3ZlbE+0Y5U0t53uNLeryOWL85gaSjG4suVsVyShMo6XjrOVpvoFb9QlAFP+0goIJN8IfwqxlmwnhU+/mCOGQkElglZh5jX1/28zkaP5cA/ZBLfWGWzFw3T/izWrNnsMAc+Bci/zvk4IF+ukBjBxJJVrTUUu/3RDzgUUVUmDaXOVzzsLVJB+YuiVyDHq66sJP7zZe+5LeP/Rg68d9FRCB3cHm3lcn8kMEY0/pvjnCXj5/6sa4gSlVzOwM9epp4ThYzvouDNH9DRokDgYUWZauj
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(136003)(396003)(39860400002)(366004)(346002)(55016002)(5660300002)(66946007)(64756008)(76116006)(52536014)(8676002)(8936002)(6916009)(26005)(33656002)(2906002)(66476007)(478600001)(66556008)(66446008)(53546011)(6506007)(7696005)(9686003)(316002)(86362001)(71200400001)(186003)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: kJF+NRoNIdUP1UXg3qo0XQLYcv4hUkP39/nQBdUVk0sD6Cz5gStKvEUclRBpad1Nk3/nLnwNb6igFO2nC+j6I3dhEzcBrLRqUo/zgWdZ2ZFA3OBk+G+0AqsxryRPdIXOpopFXkCfeL3sPy8uMOkszUhBbj9w+7bkqP2uG8TTatEmHRGqbFV4PfCuO8GtkoKvcPcHIaiiMTR8EgMBoy7TsvyilIhzp5DzK73acGA5A9X5w0BE33p2sMOXvhGBkhQw+W8pEEyJ7j92IDoaoz6ronco3J85/bCTaXA9My65XyTcapnThfmkvKQMg/wtxxZvhJ9Ga7IHwr1XONUxEOSRSCJtDz3nUNA08+YP2WqWwdlfKSG1l1bxNGxkPshrTwe0f9bg3rhCx0P7fSh8rd+3Msm6ifpzpwJ89aNHORtfnHAuBIgb/bYWmWqG8zbfq90wBvKki7e5GL+27TnDlbF5YPiEIRi025nngGWuJSnFS+8=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da4459c4-4898-4c8b-462b-08d81dde5d90
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2020 16:46:56.0587 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: STQ56Zi16Aq5hqruXn6KaRJQmSgdKcNd5r9IQ3DQivlqsOUnLfYjlLRDsJjsBCzlbdiHei8pXeus7ay+TL928u/nZNoZl+pPeV3Kxgj5ghM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1793
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next,
 v7 2/5] ice: add DCF cap negotiation and state machine
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
> Cc: Li, Xiaoyun <xiaoyun.li@intel.com>
> Subject: [Intel-wired-lan] [net-next, v7 2/5] ice: add DCF cap negotiation and
> state machine
> 
> The trust VF0 needs to negotiate the DCF capability firstly. Then the PF driver
> may allow this VF to enter into DCF "ON" state if various checks are passed.
> In DCF "ON" state, the VF0 can send the AdminQ command to do advanced
> switch rules creation for other VFs.
> 
> If one of the VFs resets, its hardware VSI number may be changed, so the
> VF0 will enter into the DCF "BUSY" state immediately to avoid adding the
> wrong rule. After the reset is done, the DCF state is changed to "PAUSE"
> mode, and a DCF_VSI_MAP_UPDATE event will be sent to the VF0. This
> event notifies the VF0 to restart negotiating the DCF capability again.
> 
> Also the VF0 can exits the DCF service gracefully by issuing the virtual channel
> command OP_DCF_DISABLE.
> 
> The system administrator can disable the DCF service by changing the trust
> mode to untrusted.
> 
> Signed-off-by: Xiaoyun Li <xiaoyun.li@intel.com>
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcf.c      | 77 +++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_dcf.h      | 24 ++++++
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 85 ++++++++++++++++++-
>  include/linux/avf/virtchnl.h                  |  9 ++
>  4 files changed, 194 insertions(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
