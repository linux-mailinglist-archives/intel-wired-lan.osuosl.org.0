Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 290451DF005
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2020 21:30:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C77A1204E3;
	Fri, 22 May 2020 19:30:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I6TAVM5OqCdD; Fri, 22 May 2020 19:30:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 617AC20482;
	Fri, 22 May 2020 19:30:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 86F981BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 19:30:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 82983888B5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 19:30:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5dDtwVMCzb7U for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 May 2020 19:30:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B8D7488898
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 19:30:10 +0000 (UTC)
IronPort-SDR: GbV9FU0rYn/ZjBprjJdNQjhtS5Y7XRpXxcbpOvSLBvnaTlaRYozLmHabyjlg0xUWMX1SRNpt7D
 qm2uBCKTEcsw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2020 12:30:10 -0700
IronPort-SDR: Ar4EFaJm0V3Vax0qQEn3DpinZMi71yMGBMLM4xWNXQjyAuXNhNqjUOZPMmxGyrcl0zkqohwU8/
 tadlyR6TElug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,422,1583222400"; d="scan'208";a="269094164"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by orsmga006.jf.intel.com with ESMTP; 22 May 2020 12:30:10 -0700
Received: from orsmsx162.amr.corp.intel.com (10.22.240.85) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 22 May 2020 12:30:09 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX162.amr.corp.intel.com (10.22.240.85) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 22 May 2020 12:30:09 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (104.47.44.50) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 22 May 2020 12:30:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PzkwiJkUmPMyuu7l4lFKjCsTb00YILIbbQUV/jVxMUpBssFgB9dTNhY/FImG28WvnBnUdJvnDlLfv7dyS1fyxYD3a7fDkVCM/pwyzVN3iGioZy8GkYGdZLts5rw7pvEHrLKPqe2xytimPUHEpRwaHRaPlBGNx6DcL/iqDtEIQAbNfGec/DZUIk7Zh1fsV3DS0o7Rari59TNmRTrjBwgdlNlk++A6CUEOHzaHbvsnffL8/Xk7EEN5vEvxRlTh9hgaVskY64leKk3j2DVBTLHk0NjEWKNaeeJWBkjjR3JVaI64RTRPHDIc5Y8LjjMuEgJhQvG4NQBjLYf/Lkh0PrYEmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ubqOPnrL43mZy3Ilj+KAP8EHVeBvObslReUKRDydiRo=;
 b=lppAU1e8xq0uXrOfhDYnkbtrKzIlZwvyuxFL33CEzW7jhwvFUs/edOtqHMa1kQGPoEVu9SUr6f5cnaFaXAxvyN+028PUEvVLFzRLbofBEEXYgQRgqoH/vSalcFo84ZJNy8AdR2/z4rt/GA/WwkjbP8yeBIWjRa0fdIlcyPBBwdse6aB9poLsqfaRUC/rhSB5/lTrqqYD4yVqi479S3tu4n779lm5Z/jeNlqWpwtRNiP+EzZ/4jRE6Hl1iMyS9Ik9FRX3+/vSECUmEPrhx8mXDeYyqyibEqdo8cwLodrQqkx4RU+klSUkcHZgcUZnKhZunpUbJf8PnnffIyYCUa/4bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ubqOPnrL43mZy3Ilj+KAP8EHVeBvObslReUKRDydiRo=;
 b=WQGaM/PZeHndNUuQxEolLDlOuMavTMpioCUUJAoIIUlxE0wLVYkRGlSkLLP6vnMLgMbUjmznAy1aX0QM5H2EfEKnNskZ1t5bMKQVeSV8py5gHqH6rBNUbtOPU2SxZu+paGrEHQNomVpB/eCONjMIT8k52GX2kyDW7yz5iDKYYp8=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1786.namprd11.prod.outlook.com (2603:10b6:3:113::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.24; Fri, 22 May 2020 19:30:08 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3021.027; Fri, 22 May 2020
 19:30:08 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S43 03/15] ice: Fix Tx timeout when
 link is toggled on a VF's interface
Thread-Index: AQHWKxqK/IuFhGLyskqh738uVGgqd6i0iITQ
Date: Fri, 22 May 2020 19:30:08 +0000
Message-ID: <DM5PR11MB1659E8C89DB6C616831412498CB40@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516003644.4658-1-anthony.l.nguyen@intel.com>
 <20200516003644.4658-3-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516003644.4658-3-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: d99bd2d8-8ca8-45d7-0316-08d7fe868987
x-ms-traffictypediagnostic: DM5PR11MB1786:
x-microsoft-antispam-prvs: <DM5PR11MB178602E3584349D093201CA58CB40@DM5PR11MB1786.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 04111BAC64
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JRltw03SjxNTeU/z2iwSGDZEZNWMesJAGXBR1+avc8D+Mn9BVJ8q+Z3rSPNcIPFMFJvzj4jqhOG5t1SfhiJBN+LENmgQXD9Kf+fipOJvY0MTHWXrGdwNRg1SOq3+QKk7H+ZGGYgpR1vcUWXoG9EFqqo29+gFgUyPcZd6nyGagb1yn6vVa7HNn2fHRcw+1GaUsUA57qpQsEJNhHltAyRc1w0hzmgK8mHwBp523MVMArseC093gzWa4gyJys5qTcpkF2UWEmWfWFR525a3qVR0OqhxYG5rghxrQgHKyIleXWpV5uDWtAvYC+2J2iSm46yi
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(366004)(39860400002)(396003)(376002)(136003)(8676002)(9686003)(2906002)(26005)(316002)(55016002)(8936002)(6916009)(186003)(52536014)(6506007)(53546011)(64756008)(66946007)(76116006)(66446008)(478600001)(5660300002)(7696005)(66556008)(71200400001)(33656002)(86362001)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: Yecdm9LeFxCO/zCFkAnNwNSs9mcx7gREj6Ts7bdIEH+HRSqTkm279hAWaQLImbveOdot60hbxHkVhyOHVZHraxwM7eAj6pwMiWefGbwlsGc/LbQc2NL/KTrLxbTKarozv2KztG/Fg//RfyYYDHF8lKPja4mVvK9aBzM9kSH/zdP1D2IWDCyQDd1KxdudoOKwfVbq8xVXF17nLllD5lVLtTOMvEqTKOI5oU/NFLHjxjdNo4LXphLWlpB70N1Up/pED26ephFA52ogKnxTIcIQ4Jz4TgerqgFXPumFGHvxS+WawExCPF07mkjNpkF/QZBzn9DW83CrE9RYjk8oKVOn3IYP/S9buH4WeXM8qt+GNgJ+3BGAnJTfgh4HtBGIXXZuA2qcYXCc6GRSLaoRMsUdeICF9Eexd+rEEY7Afa28sOAZlbgTquKcIW5WtUwqL6K4o9U+N1FD/cZBFuuMdaaxKgNmMq61SpZRLbfzD9bleE0=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d99bd2d8-8ca8-45d7-0316-08d7fe868987
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2020 19:30:08.1074 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fkhZKTV9etjAmsItZEY0+/a0ocjSjudLMKmr9shN1tiAjAGrD3ZnbLNveB779tHEI+Ag4irf//U9VY68BwveMY0tD5EZJjMwG/Swzk0muj8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1786
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S43 03/15] ice: Fix Tx timeout when
 link is toggled on a VF's interface
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
> Subject: [Intel-wired-lan] [PATCH S43 03/15] ice: Fix Tx timeout when link is
> toggled on a VF's interface
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently if the iavf is loaded and a VF link transitions from up to down to up
> again a Tx timeout will be triggered. This happens because Tx/Rx queue
> interrupts are only enabled when receiving the
> VIRTCHNL_OP_CONFIG_MAP_IRQ message, which happens on reset or
> initial iavf driver load, but not when bringing link up. This is problematic
> because they are disabled on the VIRTCHNL_OP_DISABLE_QUEUES message,
> which is part of bringing a VF's link down. However, they are not enabled on
> the VIRTCHNL_OP_ENABLE_QUEUES message, which is part of bringing a
> VF's link up.
> 
> Fix this by re-enabling the VF's Rx and Tx queue interrupts when they were
> previously configured. This is done by first checking to make sure the
> previous value in QINT_[R|T]QCTL.MSIX_INDX is not 0, which is used to
> represent the OICR in the VF's interrupt space. If the MSIX_INDX is non-zero
> then enable the interrupt by setting the QINT_[R|T]CTL.CAUSE_ENA bit to 1.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 48 +++++++++++++++++++
>  1 file changed, 48 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
