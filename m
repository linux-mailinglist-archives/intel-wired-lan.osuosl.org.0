Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FA71DF042
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2020 21:58:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D09A688A37;
	Fri, 22 May 2020 19:58:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ui6nMPOaamjy; Fri, 22 May 2020 19:58:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 59CEB88A5B;
	Fri, 22 May 2020 19:58:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E220D1BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 19:58:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D6FE9879CC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 19:58:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dGGsUjRLBpHr for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 May 2020 19:58:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 85D9187861
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 19:58:40 +0000 (UTC)
IronPort-SDR: yHWREnHUs04gQ2g9YV4JPZT4u3irKKj/wdFVUUG4rHfWJMHCemeI0nBpqcAMQOhHSF5q/onwZu
 ub/JF1Hf2DMQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2020 12:58:39 -0700
IronPort-SDR: 4TNqzOw1LuRNTQfeCSaq//ZsN/CFjbnn8maOPX1k7rGATU9GyQYuGkiwWh6WGk3AlNWpqakYgo
 TY0TB5zUx1AA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,422,1583222400"; d="scan'208";a="374854849"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by fmsmga001.fm.intel.com with ESMTP; 22 May 2020 12:58:39 -0700
Received: from orsmsx162.amr.corp.intel.com (10.22.240.85) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 22 May 2020 12:58:38 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX162.amr.corp.intel.com (10.22.240.85) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 22 May 2020 12:58:38 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 22 May 2020 12:58:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dQtd5vMNxDlY655SS+20QTvBNBfZDpOPZqHD9rUMjFIw0n1xb6TGyguNLDzYlmoHMSWykCt7re3KH978hLjb8gcEySFgtoMWCNQ392GcMxoueRO58JV0tnZPvg4isfX02ssrbaOXwvMndRzESNAsvgu2hpK3YspDaFMhzM3WRY9Axag5bF8p0f9tZ+9xjKBNkcRLby4+KefvvJa2vHzijEVhz/68QNoYaVq3VniT3Nh2MMqRGbmZ/4F7B0C1geMJqSs9dswg2XTC8kR4ROJ5Ns61o2kveM+poGMxUXnX24j1zy/htp+fJZbYbaZWreJ7TKrV76AQ/UyR866WQUfZJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d9HfaMnqcYvNPleu4Ggc/s0R2uE3Je+ikzDDUWUqRIc=;
 b=Jz3sAYvyn/8FRHe0C3iRLQScbiOKSmpyeH9TzNsYVxLqEnWeFH7k1Y0ROwmyFj4RJ+e+wlDsvzIkCu7LST+1DzrrxP4pVTuKDLYwOydgXKzjJVDJ3gU5F2XjOmHz1vYMusm9ZgsE+DsqHv1GaSbNAk54pDRyA2NAGxW0r+on78/Too8JLdlXbwYSCmgIsaLVAFF6tU/omRAl/M0veBy9+17pqLIHHO/YI4TLjdQ/yALK1KWFhq92maOQ43K59CyDDCpiJTs/KiVFMZzK0zunPA1UgmS5hdtt+LKeuPGKpLvXtHZrB37LAYacLESkkWUmn18EyBjEfeZT/sN/DNmT9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d9HfaMnqcYvNPleu4Ggc/s0R2uE3Je+ikzDDUWUqRIc=;
 b=RvZALipPYON/3amLpW2WOsJ3fRFfumEfQLSXxnCEVFARTw8sZKROBbJSG04WFvRljwIajBZrEdOFFpx/LAKFBcqgbHA8lJWOc/sxyEwLOg05c4/SgAiwA7BOi00kalvANX3CXe9qotc06xZPCGRf6hGxXZD+Kp3nBaHC9lnFpvY=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1577.namprd11.prod.outlook.com (2603:10b6:4:a::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23; Fri, 22 May 2020 19:58:37 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3021.027; Fri, 22 May 2020
 19:58:37 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S43 08/15] ice: cleanup unsigned loops
Thread-Index: AQHWKxqL7O0ajYROskWZ0M7+QTpF2qi0kHlQ
Date: Fri, 22 May 2020 19:58:37 +0000
Message-ID: <DM5PR11MB165948D9C8CD9AE5EEAF897F8CB40@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516003644.4658-1-anthony.l.nguyen@intel.com>
 <20200516003644.4658-8-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516003644.4658-8-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 7ca5a15a-b1aa-4a89-8ddb-08d7fe8a8449
x-ms-traffictypediagnostic: DM5PR11MB1577:
x-microsoft-antispam-prvs: <DM5PR11MB1577CAAAA92831CD5A41D7328CB40@DM5PR11MB1577.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:403;
x-forefront-prvs: 04111BAC64
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Mr/wefGuGzxywBd8FRQcgVzdAPWQyIm6YqCCbeLHDCxOXHOZMvkXfco9tnniTCFRWO9YODgL4o37GcbJ6WOlGAAPnR3evuD+5JIwLdISHni1usPQKZ4Vd7Ca31Kxq8yxMptWxpVgbaHpmFvn4AckwZJy36O1LTvP15OctkzXmgEPz5tXs2j5gmirTHUyWVdO9PIiwSo4ttKARgTJ4K8Tm9we/StWuWZ7eoUFPJmgznDxlTlvHgXL5ajzNMndsnw+mlgHTchrFIKcE49xHyrsjYDPwRrXgDQ/0WUNtMwgcWcHyakgQDqaR0P5spcv2b7A
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(366004)(396003)(376002)(39860400002)(136003)(186003)(6506007)(9686003)(2906002)(5660300002)(33656002)(52536014)(478600001)(316002)(26005)(53546011)(6916009)(8936002)(66446008)(66476007)(64756008)(66556008)(66946007)(76116006)(7696005)(4744005)(55016002)(8676002)(86362001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: AQfztdeEXGVEbtxk72oXmZKNystdptmOTDEPjJQMdRasarB3OzVVm7xbXa23GJTe3l+aCivjC5XGXyuR2q46Eor8GsHkzh52M0rweL6P5G8CwGHkKOprIdhaHg7/3642mt6qEc5vpnCYG5/h84sruZ+8l3fZGU1kN8N815V85ixpmtoMkW+huKm7YVgW3A5oam5r/+GPnbV25fCCOf9khvtOBRs2hGhS3YPTo6F9Ym2hX6YVkk7Mts4cvaRFTB/izJJcEIYNQQcHS7xBLd8nZYDKqk7Hds5zz2dINfAm9vK11ejXMrXvOztAj08ljaoi61iNCi76wA0HbM++PazD4VRT/Yb2mRk4ZWBCbGbl6fmaA7vANOdLi/3FbyocRhoz4euDhnHPQFo0Ai6oZ8nOwXNWPvlehxeCiPUd+JrprJ6kbHiUA7XqN/Oz5AJsevU5RvrB6Z60RQu0cIdmVzp44pslklDboh+0reFusMj6Z5Q=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ca5a15a-b1aa-4a89-8ddb-08d7fe8a8449
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2020 19:58:37.3569 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iMKCRETQDO+04lTjge/MYTNNDORiLlgX5vPD0ZR+l8Nb3K7J4T+zJJfr4mgjq3Zpsx7JTf+RJCJWVPgnsI4lHfMLKR/EEdlQpnJ81wOStWw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1577
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S43 08/15] ice: cleanup unsigned loops
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
> Subject: [Intel-wired-lan] [PATCH S43 08/15] ice: cleanup unsigned loops
> 
> From: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> Fix loop variables that are comparing or assigning signed against unsigned
> values, mostly by declaring loop counters as unsigned.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcb_nl.c      |  9 +++++----
>  drivers/net/ethernet/intel/ice/ice_ethtool.c     | 10 +++++-----
>  drivers/net/ethernet/intel/ice/ice_main.c        |  4 ++--
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c |  4 ++--
>  4 files changed, 14 insertions(+), 13 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
