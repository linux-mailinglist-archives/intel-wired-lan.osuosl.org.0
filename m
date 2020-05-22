Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A221DF006
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2020 21:30:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8FD6486E5E;
	Fri, 22 May 2020 19:30:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tofl0GoUpNTr; Fri, 22 May 2020 19:30:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D5979871AD;
	Fri, 22 May 2020 19:30:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DABD11BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 19:30:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D3EBE888B5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 19:30:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JN8vL6K3hrVN for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 May 2020 19:30:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 392C788898
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 19:30:45 +0000 (UTC)
IronPort-SDR: JGXQIVxo2FhjRg7iOWCgZSMCZvKgliNTGNreVvGcC6f4oi0Xf2yDbkW0219oQ+RH3HGNEEWLu1
 UvN6CW9+Tekw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2020 12:30:37 -0700
IronPort-SDR: MMlLx5BUOXSar+NtSG0+rCAdmGGAinmUhf8JlSvitFqll4n4L/zE2JiVtxtzhlnN9iPKamjUhz
 XQS1nSLj7yhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,422,1583222400"; d="scan'208";a="283494415"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga002.jf.intel.com with ESMTP; 22 May 2020 12:30:38 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 22 May 2020 12:30:37 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 22 May 2020 12:30:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RpSmpKvlBSltsIUe+U4br/1nD5GVGXLiD/iBISw+gmhswx7+6hFXYw+SAs980qqzZttPqoMjfuFHcWIz0l+aFCJMO/EL1XWmujOAwJnYSb/xU4CTwqMAa63dGaAinSLy0iB3/8/0mLP25vAX+jCJhHOSNmKdbP7kkeXarF6vkjGSMKsidFVtvjO/2/hw8oq7MQahBwDDlJLaU8H2If6XTa0O9JapwXEY148gK1zrOTkSjkweaQdg2FystO/9ir8c82rrPifY+2SnU409HyC0nDn6XRQU1RM2Baua4cmfGASypkl4SIr80r9noq6BZSQMnIc+eFozYFa9A2zqWw4z2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JX8hOsssZsfeLcvsLigw+IFwX0GCDdh0g7w95f5+EVk=;
 b=H1vVcwD1StV2oFaGnlxP5Sg77Qtt2abbTIHoo1oT5nxApzDGgmG3o9zpciyZL4lIk8820+eQPMB7VDMkBhvLuVex2M6SkbCFTfIbDt/BH4vMpphR2vX24Q30pTUlA/rqVBNYeqv59hjh0DO0p1x9zpFW+pP2LO2AXN6cZDD57k3yDliDObueImi3rUaSQVLYTsaqxOOONIsjt+9jul+SxH0sTxwW7u6/kfTT8VF/szDLo2UVgeXATEJH30YCJ1suLz4jPFQGP20uGJhzaTTAarNRZG+pNetkcxbgOgDa1hdcsx17C6HT+9okNBsyco9QVuzQfXe+QE+gJB5j0vLKvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JX8hOsssZsfeLcvsLigw+IFwX0GCDdh0g7w95f5+EVk=;
 b=PSr65zwTCGeNuaaO3iMbqSb/X9pbefbDcO0fQW7b6esGkfgC8c9a0+URPPGndZ7Xit1WeGMSbuUYWZKanJzmcmRoIVjDIicUKz944xH/4CXlCbUDChAVzyMrLwqQ8ayVlTGb8CX6rT9yHrhqfMp9vOUMGQHC5xZYQxsqjCPubh0=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB0010.namprd11.prod.outlook.com (2603:10b6:4:6c::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.27; Fri, 22 May 2020 19:30:33 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3021.027; Fri, 22 May 2020
 19:30:33 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S43 04/15] ice: Check if unicast MAC
 exists before setting VF MAC
Thread-Index: AQHWKxqJf3a3uf7zQkaPtkpAwTh9pai0iKPA
Date: Fri, 22 May 2020 19:30:33 +0000
Message-ID: <DM5PR11MB16596410BC27D504D79E8DF08CB40@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516003644.4658-1-anthony.l.nguyen@intel.com>
 <20200516003644.4658-4-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516003644.4658-4-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.201]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 330b81a6-8bb4-4711-03e6-08d7fe8698b8
x-ms-traffictypediagnostic: DM5PR11MB0010:
x-microsoft-antispam-prvs: <DM5PR11MB001079A85BA65A36AB4E25D18CB40@DM5PR11MB0010.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 04111BAC64
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +hZ2USt5/eJ+fP5W/10Knbdj74k4r2Dw4+fRu643u7sQgKYGXFrbYErjC3vnm2j5guyhhgsYhs6yk5j+BtN5HbTILN6russPRQQL0E1wyWLc/wtV2XjSmecMAJ1/KAxpHrBPOaIv44Nr7AcqSqNyQ1enj43baCBk+7qE4pByMJNVee6YeA5u4Ioz6401h8UPtL7Z4SZQN3RGCD9916FdcGeSAluTxwb05DJ/+2p12m35ygXbGvWtebybjBkQy9NCIw5k/vV0EhtsHecVQMIa7XEEOdGerzxpI+kzikQzBbkyTiA6UXak7AnRlND0Lw29
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(136003)(39860400002)(376002)(346002)(366004)(66946007)(26005)(9686003)(33656002)(6916009)(66556008)(66446008)(64756008)(5660300002)(55016002)(76116006)(8936002)(478600001)(71200400001)(66476007)(8676002)(2906002)(52536014)(6506007)(86362001)(186003)(7696005)(316002)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 8iyk7VNeXUpNLlnxtitjcAkFQfsZDVAsGQ0a4eqhL29LK+2RtXKDURocp2VIkXZqHN3eEDgD6+8cfkP81FvuAyMAO9nfsJ5XSoOxVzTE3DprDCAdRNe88Gmk5pDYuk6MeF74f2wafUSmt/GFB55z2srteQdSxcD2Q8XGwrv4V9EN2pbidF85x9UVH882hg4VNW7ATMrU+yP+1PEdJhgrIi0N1506XA99D6Svam8/uTAOCYuj8e0yWOPtw/r3Y4s6rj17qFAU4wBKFhVIhoukicWTrO/B+1T9KHxXVFI3042GxOdQoIp7vKPXQddV/AjOV4JiM32Tjk/+UUlus7TjALPfI2q/vmiyyJUoaqtIrNfe5vVGHRPZrIsSO0YoLO5ebKNvCR03P8C+3kqRPaG7VAANHd6g8hl9/GyosscIlQvRh9X4CQQQY5pCYOljRBMtf3EX7Dmhyj25GGCVJILSQVvmVC9Br7jK0HoDOv7Wrck=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 330b81a6-8bb4-4711-03e6-08d7fe8698b8
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2020 19:30:33.5794 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HvjChC24xGsrQ6z3o9WwiTyTRwrZph+pVDwhhD2Ds+PCdCx9OOfEifFev7FwDYKg8v4sI3l0mWIwM8cmyz/+OExj0eAoOfUYgfnkhgaRbw0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB0010
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S43 04/15] ice: Check if unicast MAC
 exists before setting VF MAC
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
> Sent: Friday, May 15, 2020 5:37 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S43 04/15] ice: Check if unicast MAC exists
> before setting VF MAC
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently if a unicast MAC is set via ndo_set_vf_mac, the PF driver will set
> the VF's dflt_lan_addr.addr once some basic checks have passed. The VF is
> then reset. During reset the PF driver will attempt to program the VF's MAC
> from the dflt_lan_addr.addr field. This fails when the MAC already exists on
> the PF's switch.
> 
> This is causing the VF to be completely disabled until removing/enabling any
> VFs via sysfs.
> 
> Fix this by checking if the unicast MAC exists before triggering a VF reset
> directly in ndo_set_vf_mac. Also, add a check if the unicast MAC is set to the
> same value as before and return 0 if that is the case.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 43 +++++++++++++++++++
>  1 file changed, 43 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
