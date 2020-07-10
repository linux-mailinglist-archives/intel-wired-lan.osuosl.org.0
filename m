Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 73CD721BD8C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2020 21:23:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 04C9F20789;
	Fri, 10 Jul 2020 19:22:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gElhEI7wv4HE; Fri, 10 Jul 2020 19:22:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 76C2E22851;
	Fri, 10 Jul 2020 19:22:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 83BC71BF2C9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 19:22:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A959D8846E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 19:22:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nYCcUvgDuKbQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2020 19:22:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DC54688462
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 19:22:35 +0000 (UTC)
IronPort-SDR: jDeQQTdzwoQDhjJ8thrwFGYQU6WV/TBC/EpY0ovziTLU7JnZcINb/9G29bif21/OU9Z0q0wb/N
 gUE6OBT1NqVQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9678"; a="147394472"
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="147394472"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 12:22:34 -0700
IronPort-SDR: fBRCTnyjRfGw9BA3G9oXcQJmrCVIeP3CRxaeme26fsHO8s4nso5W88tRjncMhXFAtOWO34hRSZ
 VmekHhzzyWoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="324762331"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga007.jf.intel.com with ESMTP; 10 Jul 2020 12:22:34 -0700
Received: from orsmsx163.amr.corp.intel.com (10.22.240.88) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 10 Jul 2020 12:22:34 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX163.amr.corp.intel.com (10.22.240.88) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 10 Jul 2020 12:22:34 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (104.47.44.51) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 10 Jul 2020 12:22:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j8p4fHUwMtBaM28Cir8E8MTWGMRO+CjIv38H+4qcBDCHAH8MUkRXjvpaughq1D/WgU+Tf3iP4rSFzgN9ikPOQhORwJmo5EbPvnjNbmLGeOEAVdKi6mSbARwLi3mzNC8IF3J/UxsINTgKjGaekHoF13VVsXwmL906lq0A/RfDPmEBNIqbDfc6vypqMIxxYsUZ+biCNz8SYm25HfkeRUs0mlWcN6rMHE12R/SRDh6lL9phZ42bu3KxF7x3oiTvJDS2yf5UTgAQ5uR44IzLz9jxyjsYfheWnahEvO0DGTNCvTSwDF7oO7HkTDrsHHpnfAj6R0kR/t8kzX44tybZsTReUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5GaHElzLW/ljNVI9j0vTRCkeMlqhUWWY6S4cg4AvBiI=;
 b=Rv37/EUoyuKDxVpHgDPnEt62LGMs/nzBZKIRZkChF0rhdXkPVUpj4zrw+iin5zs9hi+0It8gIX92Mi648KXM+fqp7XC96iZ7RlwrRGZcc+ACDVyOQh/NEHsv0g4LT0hceORHRSw6JBM33C+Og82JOxYpVa93lYc6WNaVVDbw2ocfnmWJwXCFDYJYroQdgMNzY2SoM3HPYJHsBXGhqaHoX5sEtr2DeqcwW2ODHlGRnQTnKTymweTV/Tmt4Nbht7sQ0sH9lBu54JW2RoNCRY4iiJ+PTBCZjnRnPM4ML87wwkiXfywFf04EJyjqlhoPO+Blh2wBr3MMyiTMC5SnUAhJ5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5GaHElzLW/ljNVI9j0vTRCkeMlqhUWWY6S4cg4AvBiI=;
 b=IU7teFjPpG5efMP+BI+GhPiukCK0LIiAArwoJLJxO9/R7t8N9pc2Zd1z73ExuBIeoID0JL8EA0Ipzrv/laMCam7KJAL+uzwgC5PmX6jDyYnw0aNhEtt+Ns/pg7kkkUbX8KzFZVLbCC4+nc2zpm2/+d6L/3NJQTAW5sPutjfCF9Q=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB0052.namprd11.prod.outlook.com
 (2603:10b6:405:69::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.23; Fri, 10 Jul
 2020 19:22:31 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3174.022; Fri, 10 Jul 2020
 19:22:31 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next, v8 2/5] ice: add DCF cap
 negotiation and state machine
Thread-Index: AQHWVl54XQN1Vz73DES40Z5Ci+D1uKkBMhiw
Date: Fri, 10 Jul 2020 19:22:30 +0000
Message-ID: <BN6PR1101MB2145C9BC228C029400733F3A8C650@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
 <20200710015421.92122-1-haiyue.wang@intel.com>
 <20200710015421.92122-3-haiyue.wang@intel.com>
In-Reply-To: <20200710015421.92122-3-haiyue.wang@intel.com>
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
x-ms-office365-filtering-correlation-id: 167c8411-95f7-4198-1a65-08d825069758
x-ms-traffictypediagnostic: BN6PR11MB0052:
x-microsoft-antispam-prvs: <BN6PR11MB005290AA827F782F1A701F218C650@BN6PR11MB0052.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3zYLATQjbE+Gl07ZsKTnZkL3TG718KQmmpLVVspYr+ujV/GZlx4lORJTOSVlGmfS70KGj6bDP3eVwotvZ7nZMEI06gkR6IsxbXZoE9rKgJ06jSB9EhPkP9iSDcdXQkLwOY9Z74omR1XzUfawZWK4z5UqdQRisMXYENPTWuQmOp/yQalhjPk/U9u8A27Pq72JV4UsQKsk78y1MZbYuiYG78AwYWl7J3MxXrypC1kQczeb0dHKEARGrMEE8fhkBRd7leOlfNMilp1YSxM4peSJPsS1o5ZIdw2j+4gLZp1dE9g5JigCih5ExNu1NLWLsO2J
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(376002)(396003)(346002)(39860400002)(366004)(6916009)(52536014)(5660300002)(71200400001)(83380400001)(26005)(7696005)(9686003)(55016002)(53546011)(6506007)(64756008)(478600001)(186003)(8936002)(8676002)(316002)(66946007)(86362001)(76116006)(66476007)(2906002)(66556008)(33656002)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: YzS50dTNoiGhSpUXRi+Srg2xEPSKJBWfaIYE8//ZXi8jdOq4DBhk0FFCKrd5q/70Nz1xEfXBqyOEXDn2gAYR2BsPdYYVGHjP/H8bvSqsAezDVXDGbzN8DNbSeBhpUD5H+gvPFJrOoTZv8ecRLThT7oZmYtWRXxVO8bZIjU3VH3wrVmTC+WUz5aQ2x3OjY6H04FTMsmBV+Tfa2MiBWwE4MfDgi07MwetE22Qsf2Ev40wO3pj5iFeh4ZDDQS8UJmwmg1L7QqN+yVhi9fHVXWGoW3YLonSwLUpDzhQ9NWci0izXuazjACfn6vxGjFr9XjW5qiOcF0i7jUMVfl1cfUElDE4wV1YsKHTDIm6z8aSElWPD2G5CrZK4ife+251wtMRMwdWpCYdDCIYTKe6udVPOFUs3XgKgz7aGqfZ7dKaNHplwi6wi+8GyKdSXn0V7eLtlvJofdzitlIHD5qwtwU7Tt0SUE5zojmtD7JIGUM+a06o=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 167c8411-95f7-4198-1a65-08d825069758
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2020 19:22:31.0141 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eva8LfRrfzxvHLOxpwapn/0fm/iokwbT3yMli2tImVffVckCWXmrI1d8dHU9W6Z8gmh66E79ootiJXZMZQ4UTHyM05q+QR6hLtyQgwW0t9k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB0052
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next,
 v8 2/5] ice: add DCF cap negotiation and state machine
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
> Cc: Li, Xiaoyun <xiaoyun.li@intel.com>
> Subject: [Intel-wired-lan] [net-next, v8 2/5] ice: add DCF cap negotiation and
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
