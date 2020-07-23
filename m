Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D82E322A48C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jul 2020 03:27:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 89C0688B81;
	Thu, 23 Jul 2020 01:27:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q3IE88uJupN4; Thu, 23 Jul 2020 01:27:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8E29988B56;
	Thu, 23 Jul 2020 01:26:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 825A31BF29C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:26:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7D8FF8846E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:26:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id atn4aWmsY0+m for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jul 2020 01:26:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CF9F288415
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:26:57 +0000 (UTC)
IronPort-SDR: DKigi3FAq97WFAVRS7P+1ovFQBPjyZa0SXaREiqZjEiTiG18DsalvLa2xST6JTAJzLe32dgjy+
 GQwKmvy2E1Og==
X-IronPort-AV: E=McAfee;i="6000,8403,9690"; a="211992689"
X-IronPort-AV: E=Sophos;i="5.75,383,1589266800"; d="scan'208";a="211992689"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2020 18:26:57 -0700
IronPort-SDR: Ur63oDDAdX6JsdbRxhd0nZc5y4SGLV4BBALAo/sch5h8NuOkTs1hWx50DGLj9VBZdE9AKLFAEk
 UKopmiOu6qpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,383,1589266800"; d="scan'208";a="328397070"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 22 Jul 2020 18:26:57 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 22 Jul 2020 18:26:56 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 22 Jul 2020 18:26:56 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 22 Jul 2020 18:26:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oRKdlyr7cgJ8YnxfBs0vGXW75g8YsgtvdynCccNkfupnzvySM4fTGDm6EXKAAUqc7JnUGVF9yL5LsRHGnwMZPnT/gXxGNyHu39LIg285psB3mPARStBGpNNCCZZ8TQwLm5WWefwoiPB/WrGZjBbunhkIgVHgCQnDJ8w8LvT91EA5072Kd2ZeC9SNsh8NenBEldbSeJox9A0AxSUGKkcDQs/g+kuTCHBay7yncFJhoVSP3JC3ZjEnoQJ6L6RYvNs44yGw0yWhTCZ83J5iYpFyTVZML+V6E9TGZAY+W8FPeI7eAs471fGaRPeQ6q3hg+Q6/ffjPRzVSqo9LH2Pepn6aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ogyiRzmJ7xWMdjTdoFI2DwFdnFlgAnhhBXfbgyhyjfU=;
 b=B22FaOLqu5NWRGVoEM0DWDhIWalaDbfDy6NjkANVFt2kC+wy6lp9Y5+XqduR8xID4xf1WUtJC3tJRNSkXkKb+oMaaYQid7fGiZebKR6QF9ClUXq5mrAYsuPKSfYoq3HkUgayukGjpBIo/sSzQCBD9Iuoi7ZLpa+IEXP+74QprStNMs2ekr64uDJzXKZS+f4hq1OzbQCdDpww3U4ot36LhmrVPEMR2TC/D+muD6whWSwMvYx26XUABy9jvUKKyXmbpwBf298NnyASYLuUDeYPDh3SOAUu+M3M3NTbutN63xT2AO7HXYTkNhNpqzIvTvALRyBf9aPmfU0dk+ghyNmeaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ogyiRzmJ7xWMdjTdoFI2DwFdnFlgAnhhBXfbgyhyjfU=;
 b=HSiEs2pagfQ2iOc4+0Vi8OnhYKgt9+4zPXoCwN8624vGXmFdoVRyxWpDnS+8DmVJ9RbVLWzYzPjRrL9ObHZNtANsADpZiEImF15Q2ylovqRyHVUmty3pESHa7yZcHBTlYFqNwN3GHzBuGt+CwlPIEcOsgZ4T4YHefuPPlX8qgZQ=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1537.namprd11.prod.outlook.com
 (2603:10b6:405:c::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.20; Thu, 23 Jul
 2020 01:26:55 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3195.026; Thu, 23 Jul 2020
 01:26:55 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S49 06/15] ice: move auto FEC checks
 into ice_cfg_phy_fec()
Thread-Index: AQHWVgz6OHtdmMI1xkSmOv0z07sjFakUdIoA
Date: Thu, 23 Jul 2020 01:26:55 +0000
Message-ID: <BN6PR1101MB2145D2ABC68F595E0059DC9A8C760@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
 <20200709161614.61098-6-anthony.l.nguyen@intel.com>
In-Reply-To: <20200709161614.61098-6-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 152fa71c-3023-4d07-246c-08d82ea77c99
x-ms-traffictypediagnostic: BN6PR11MB1537:
x-microsoft-antispam-prvs: <BN6PR11MB1537C8F1C2C3D98B5ED6666F8C760@BN6PR11MB1537.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1332;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Fc+m78lxHQWSghFbgX7y0Bd/n/lc3D5O1bnsxNJD3D23/tTw++cTYn63XhyJ4gPGyXZR2p4eBSXdYcYrmHPRG1n1CsmNyost8fepmrzWfEckMujklRLzuTpMIW6bn8ha0ZuCcXqz6jMBy4GhYMXX4zIUvoa7ySwStUrI4LEilqIy9R1Ewpt7JekDibBtkdz7Ffua4TwW5E5XXxvW09BuHD1EniyhQDqffGFYmO/leApx5H1wm/r/Z8aHrnZXywJBgMOGuNj1RZbOxUzlDBuMl86wqPr5oT1AjjPWYE2Nof55n1Kpgtp0i1Uz3ovKecEc
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(376002)(366004)(39860400002)(346002)(136003)(66476007)(66946007)(478600001)(7696005)(64756008)(53546011)(76116006)(6506007)(55016002)(66446008)(6916009)(186003)(83380400001)(66556008)(71200400001)(9686003)(2906002)(26005)(52536014)(5660300002)(8676002)(8936002)(33656002)(86362001)(316002)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: rVz8jc7QbnQcOJXPOdIdE+nE+4cJ/uVfJ9qdWtlYhn6eZF9IyiZUCHXDYjljvVxTeBGQ7rsVQYQZTSVGBBQkoQd/fzKlxsYWv70bpwqr/DvHUPqZVLNbfRYymtKVZULHK/TtL0pl33Hy9L3AbLqAQb/nFGMn7DUVa958loLz8mb4nky5PFYghlfVE3XsoUkVQ85IQ2XOUiovqOS9cYM4sFnBVEzV/wKc29OoxsMObCkCAUmLZnCjtrJFw5KRjQaTpL9PQrYkaBTNtAU9GWN/D/zlHY8Ho1ZhkwTZBjGZLIOq9c+sANOur+KVi/oDEAnTOauL11QXRZlFFli+8Zr4Q9QuVuq/qhg9lfPSkAG014UDKcF+BOi86keQC2lk7fx5vglpVSnPODc3HCNTiDPcBlR04kyA1+9x6aCZ52mDpZWT9bioW8iF1h3lWWyJW2R4VGjd+s0N8oFVnZKNuDOSn+0yqKXV1T6R8MfE8VhVHrEXhMlvi6z4uRZlzf+n1djs
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 152fa71c-3023-4d07-246c-08d82ea77c99
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2020 01:26:55.6043 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5jPFjASbTXgtPwscysOfQMePBZmdw7z0ywh2qIYHmZ1mcWYZ8ruOh21X2ZWujkEtduUVEKguo0PUJGXYOy92CactO/rV7kOXuFZbG3Mu/uw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1537
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S49 06/15] ice: move auto FEC checks
 into ice_cfg_phy_fec()
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
> Subject: [Intel-wired-lan] [PATCH S49 06/15] ice: move auto FEC checks into
> ice_cfg_phy_fec()
> 
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> The call to ice_cfg_phy_fec() requires the caller to perform certain actions
> before calling it. Instead of imposing these preconditions move the
> operations into the function and perform them ourselves.
> 
> Also, fix some style issues in nearby touched code.
> 
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Chinh T Cao <chinh.t.cao@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c  | 43 ++++++++++++++++----
> drivers/net/ethernet/intel/ice/ice_common.h  |  5 ++-
> drivers/net/ethernet/intel/ice/ice_ethtool.c | 31 ++------------
>  3 files changed, 40 insertions(+), 39 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
