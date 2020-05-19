Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D3B1D9CEA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2020 18:35:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0C481887F3;
	Tue, 19 May 2020 16:35:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pnhUipJpTdtJ; Tue, 19 May 2020 16:35:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 451A9887EB;
	Tue, 19 May 2020 16:35:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EA47C1BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:35:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DA8A621539
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:35:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0M8nkE9rugFS for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2020 16:35:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id 604E720463
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:35:27 +0000 (UTC)
IronPort-SDR: /ld/MkfayMcKAWZByumwjN2iidFt0m8+YVdH9CL5Nr3UB7waWsWWanm1xFXBDebNmTWD1r5rn5
 5tVfkxlqGtLw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 09:35:26 -0700
IronPort-SDR: EzE+Utl8ct20cEddiJOHO1PpfmD4ulCLS9QYtAwGiJR7C5lhJBGc/jPtxlk3BWYVG/mwWVgERN
 xzSXo4l89WrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,410,1583222400"; d="scan'208";a="254773085"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by fmsmga008.fm.intel.com with ESMTP; 19 May 2020 09:35:23 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 19 May 2020 09:35:24 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 19 May 2020 09:35:23 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 19 May 2020 09:35:23 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 19 May 2020 09:35:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GKM4HZHIXtIZl5vtHFOx6GvIJ3tTYd5EouCeAfkqYq8nem2kKC/EqnAdItea0GdWiVFQ9VXJWwUp3Q/Mcrjtp6k99aYEBBdhzjmdq+7B3TN10BAMkSw0aWl8JiVJoXPJ4tcDTkTnF8LmD0pvozpJCedD44EYozBG3SK9Id5y6eVZuQ9fdI/fRLXMuSqQi8jUnhHQ06iYf7wJB2XZb8e+YR5UIQO+c3AM8QSpyY/NzpZL+PzPAnAe9C2fxTs3E8iIrlwOfTTB4/jRy9aPk/Qf2J2k9Kb/z5K0lb1BjXH48/JGGXGjcIYcnKmgjgmntrcgm1cPxKyATkhF1q0BO0cfaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9MeeWiWbHKMKrdjviZ7HQUwJDHAgB6T0B4DdOVFF3Dg=;
 b=j9m0NYa9pYMohfeRO+m2ntU8YPdPSFoFZ+/psw+IJ9KkMdMXsLop6HZf4xyneSNvE3eG+jlHkG+/azbRePlDUV54/mh56jvsoncPvRzodu5v02b6RbC1bROO2tGhVNhxX4EoLTh+XnJzHD5uIiENATAlsAxe/pCEH3lomEosw25rse9XGM3UjqXHds02gP7wSzc2e6FYz3dxl2T0pB0M/4hAr5+SPqShezdnaMcUUA56vFnXiyNbXojc6Bejnzw7D0+s2PYc5IVsN6Q4ySBZYJ+gVp6lSKmuVBlLLR0N57LNtiVL4s4OqIO84Qy0+yfZyi8DRBebwT5QfkDwy3NcIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9MeeWiWbHKMKrdjviZ7HQUwJDHAgB6T0B4DdOVFF3Dg=;
 b=WZTm2IkN6q75ocEzuX7f7YhdC1ph1GPt+oJ88lsLXtkrbDiQ8YPYlwI+YniNSGCN2x0zRcVhN7z46MpwIUT+JtMsDFGlwOEOajOvH1osFnTUjQSLyAHJtH+ZOeSlQ6dlMguMgZjxnxQttVCTinbVBKg5UvX/mC6Upt1aTBUvq/s=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1642.namprd11.prod.outlook.com (2603:10b6:4:9::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.26; Tue, 19 May 2020 16:35:20 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3000.034; Tue, 19 May 2020
 16:35:20 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S42 1/7] ice: Initialize Flow Director
 resources
Thread-Index: AQHWJ/llCZq8PgIT5E2ZCZP55OdmDqivpslA
Date: Tue, 19 May 2020 16:35:19 +0000
Message-ID: <DM5PR11MB1659EC231376B8A6430C0CAE8CB90@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200512010146.41303-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20200512010146.41303-1-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 1e0019df-65dd-4f39-5ec5-08d7fc129edd
x-ms-traffictypediagnostic: DM5PR11MB1642:
x-microsoft-antispam-prvs: <DM5PR11MB164263D61F5AB108D5FB73938CB90@DM5PR11MB1642.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 040866B734
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: p4hcD/ebYWjJnDIR2HptKkwvXNC1r+4oXibwB0nILdLbesY058BeHmtuUUweiR9GXj3UaWcsvp/vBTL3CKA2OH+AlWP0t1d4c3eEwWDCs/Fr7vqzZ1d0ViBQt/R7BXMZC4if1m7RharG08Lr2BMctJwt+dmQLnQ00uzU3fT9K5zxeg01uvbLdF3/Kcfor6UHt+ztcc6afPIaWiOk63r0Cxuck82v8nGdo1Rc6Im9eRli/oj1yy3c9jx7o/3VmdA05P7NTkISxHdxvfPDYsKv49K6NwLS42BgIS0enkLLgTC6fOSZzQR7vz3/WWqBK1JP5HUZUiT9MAiuwOiqvakpsNYi32baZpwFv/t8NIRC/NJwSwId6x0gDfcMEy/DfXUKW7y8VPoNhE+1vF4baXPFgehctuu+ZLtvRXYJGtS0A7Yhew0NtTP9dr7tFed5v5ja
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(136003)(366004)(39850400004)(376002)(346002)(6916009)(7696005)(66476007)(66946007)(76116006)(64756008)(66446008)(66556008)(5660300002)(8936002)(6506007)(8676002)(478600001)(316002)(186003)(71200400001)(9686003)(86362001)(52536014)(53546011)(55016002)(2906002)(33656002)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: a4gRGvwDtxKHiJd2RVsiupnuteMACJDlmTo3x0YtsYEEKxPQs3dgvQmkM92gRVCKeYzKbzrbXYrLMUG4B55x32R3cbC/9Oq8h/b+Q+jhUqAYY1viPly8uD3csSLqR8xezySNhzJDvL+XNCnhUKd/uDF6By7EehyYPAJ2sjF2+rGAppx4hgBhY5XBSahbVej1jXeVHyowMfeWZjaG7et9hINp2TRkwWQnSlUJp6wii52Q4MRJGMOiahpOlE5Tw6s6yzRaZURsXAvoKqf0LHBv4H8zpqOZLfmLDTNwwjxPjfkdukRmJ6e8RQR0AFP1saQUVtdXgJPtYumb+Us9nKscIUectVg9UPEFV977fPgWXll0J14N+5j3lsjyMEiQ1WHc6SgYC3mgoJif4Ne/yWoUouo1sNIAjUDCBLIrtWLYUAUfGLZGf7WQzS0mMM7nK9nztop2gpcDKVryVgx5qOIGJvcrKvyXpURkBsap1fDBY3U=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e0019df-65dd-4f39-5ec5-08d7fc129edd
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2020 16:35:19.8914 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yPYBagw5rd/l+my+D0UDa5i9qjFTzk78hkxeXI1rmfbBS696nvHwa4nqr7cYdu9Q+Xe0kiTANgKqMh5waDuCs/i10zomgyiikScl7zG51Fo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1642
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S42 1/7] ice: Initialize Flow Director
 resources
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
> Sent: Monday, May 11, 2020 6:02 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S42 1/7] ice: Initialize Flow Director
> resources
> 
> From: Henry Tieman <henry.w.tieman@intel.com>
> 
> Flow Director allows for redirection based on ntuple rules. Rules are
> programmed using the ethtool set-ntuple interface. Supported actions are
> redirect to queue and drop.
> 
> Setup the initial framework to process Flow Director filters. Create and
> allocate resources to manage and program filters to the hardware. Filters
> are processed via a sideband interface; a control VSI is created to manage
> communication and process requests through the sideband. Upon allocation
> of
> resources, update the hardware tables to accept perfect filters.
> 
> Signed-off-by: Henry Tieman <henry.w.tieman@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile       |   2 +
>  drivers/net/ethernet/intel/ice/ice.h          |  24 ++
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   9 +
>  drivers/net/ethernet/intel/ice/ice_base.c     |   1 +
>  drivers/net/ethernet/intel/ice/ice_common.c   |  36 ++
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |  11 +-
>  .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 399 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_fdir.c     |  54 +++
>  drivers/net/ethernet/intel/ice/ice_fdir.h     |  12 +
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    | 224 ++++++++++
>  drivers/net/ethernet/intel/ice/ice_flow.c     | 169 +++++++-
>  drivers/net/ethernet/intel/ice/ice_flow.h     |  32 +-
>  .../net/ethernet/intel/ice/ice_hw_autogen.h   |  11 +
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 210 +++++++--
>  drivers/net/ethernet/intel/ice/ice_lib.h      |   2 +
>  drivers/net/ethernet/intel/ice/ice_main.c     | 160 ++++++-
>  .../ethernet/intel/ice/ice_protocol_type.h    |   1 +
>  drivers/net/ethernet/intel/ice/ice_switch.c   |  75 ++++
>  drivers/net/ethernet/intel/ice/ice_switch.h   |   7 +
>  drivers/net/ethernet/intel/ice/ice_txrx.c     | 100 ++++-
>  drivers/net/ethernet/intel/ice/ice_txrx.h     |   7 +-
>  drivers/net/ethernet/intel/ice/ice_type.h     |  45 +-
>  22 files changed, 1552 insertions(+), 39 deletions(-)
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_fdir.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_fdir.h


Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
