Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FD41D5A48
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2020 21:46:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F17D687F53;
	Fri, 15 May 2020 19:46:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nHJYakkR3LNX; Fri, 15 May 2020 19:46:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CF9B787F72;
	Fri, 15 May 2020 19:46:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EEECD1BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:46:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E892C87F5F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:46:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ak5O4TEK0fW3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 May 2020 19:46:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 70E7987F53
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:46:31 +0000 (UTC)
IronPort-SDR: 8lP8G5Hj9WaZmejpi5w3u0ks8tf5ijwVu41+b+Qv5BE5251q50pklAjlsiEksYhv9TNPi+rHia
 UpzwvmLAYPRQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 12:46:31 -0700
IronPort-SDR: w+CXtLeu4rkDCdTP8pO+toFw69WRDG7tzMzhQQapkiduFCCkvkg302ZdmbLuwGnQQnYAxSxIyh
 c5UoGhTUP4pA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,396,1583222400"; d="scan'208";a="263293388"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by orsmga003.jf.intel.com with ESMTP; 15 May 2020 12:46:31 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 15 May 2020 12:46:30 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 May 2020 12:46:30 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 15 May 2020 12:46:30 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.55) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 15 May 2020 12:46:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dkS/DCbJDUy618E6f39MRVnY5iNCrE0Pe42q6wOSiv37fYF2zgfemmXW49vlt4kUa/rVDKkcExrlpxkPo7epSQAOs3IButuqlSN21M07r47DGhcnFkdv+cJXOmJ0ip1d5UeStU5vqD27Up+klXsgSNUbBdWTmxuG/FIv1JPxjvJfBgyM+Vt4kMjHyUDDePJ+7H6g3CstAlK0njJVSHZ0v87a2ZIIlsYVOxuURhUq7YTJPasrfnr7pkapQDCRwh+PMTFSwOE5SMtEyrut4BB5jXvRCef5Pi3F0udCb+52U+GWv5M4UAnPvP6xketOpaI+kHKIVwQ/3E0D6f1xRHuiKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ftoGCXfj2njZ8QVqdQdOACPJmgf+oCAeK0+r7wrConU=;
 b=nt3ygqQY43BPIRv+UFNbTMy2YFtrigh7MtYckE5iVxbNZzk5z4SB0tOAiZngxlla8NY0etc7wdRkvUl36b0fM3955B+Yr/f8ji4tz95smXSqRYmUhP7BMmF4GBpxwhHpsbRpooepPdsVeb6Iok+NiUq+tiobkQcbCMbY9i5Xt5Ut5vGNViY+MVTI+MnSsLbhghKICHdtBasM7eLm8HSkkkNeFtWnqdhxAvyLKkNnGUwG/hbsTgJH8hgDI45+QV3WnpG6HlBwrDcbQGCaL7XZ/iT5pZKUL/QGV0yK1wnk+sFxiu7pfsrHvQM3cB7iLJ0MxHVp9In5T3TeOZyvOxNopQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ftoGCXfj2njZ8QVqdQdOACPJmgf+oCAeK0+r7wrConU=;
 b=mz2OsX7Sa1aizTqcZRamnwm27S8stbKtHTrUhCxOStpZ+7DWkf+pvWtVTlIppkEVRNIqVvlqKr9sDufBGKyQJJWhZpCoGOcnTIUH62RnSQ04PKz0Z57TDCQxf5Y4zg5+gXHg/Pctu4to0RL35216+mT8o1WA3wK14rag/S/+sbY=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1452.namprd11.prod.outlook.com (2603:10b6:4:9::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.27; Fri, 15 May 2020 19:46:29 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3000.022; Fri, 15 May 2020
 19:46:29 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S41 10/15] ice: refactor filter
 functions
Thread-Index: AQHWJNHRZQQetpygCU+33KPuu3dXJ6ipmURw
Date: Fri, 15 May 2020 19:46:28 +0000
Message-ID: <DM5PR11MB1659FD33B92AB9733E4DD3868CBD0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200508004113.39725-1-anthony.l.nguyen@intel.com>
 <20200508004113.39725-10-anthony.l.nguyen@intel.com>
In-Reply-To: <20200508004113.39725-10-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.199]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3c96de40-4122-4763-d475-08d7f908a93e
x-ms-traffictypediagnostic: DM5PR11MB1452:
x-microsoft-antispam-prvs: <DM5PR11MB1452C3169776F349BBA057A78CBD0@DM5PR11MB1452.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-forefront-prvs: 04041A2886
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nm9GPGAkJjMKbCH+lYM6dRLtRoumTSGCN4niPx4oHLhde+qvxrfyes2eGMI8DDE3LUZi3LcqxbD7sjqVAhunkq7F4v0y/HJWbEIVmLYWCr2bnnt0Oca6sZPNB+YsrVETyxgi2h/G+0hihVOxSMbLsJAg+ElYyqDZUzEqx44S12SvtjoitdKG3fsJcBn9pNRy2H877kyZ4H83cnE8LLti4ssvtMjPFuNMDhjyVXYayG7j/1+BrqrziXNFppGCwxZ1Qr8qiXg61ExfP/b3n1GuG2rQ7ttAwI13jghvHlZFakjZLkZS5qIw+mdrWdexZnAQmAzY0SXDczb7OjpNEpjJ1QN3tVFAibQDxdK87WtNUMzPHNaeChwQq9cHstCVJgdszHKecQZbXVh0Qi+ybpw5DjvNV3JfN8Ka/Hym9+eRhcoeJcYNn0xZlF/75oSaZPJE
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(136003)(366004)(376002)(396003)(39860400002)(71200400001)(186003)(26005)(6506007)(7696005)(53546011)(478600001)(316002)(6916009)(8676002)(76116006)(8936002)(66556008)(64756008)(66946007)(66476007)(66446008)(86362001)(52536014)(33656002)(5660300002)(55016002)(9686003)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: n95iDkF4+tmQ+NZr7Z+esLcLau8AdsnmkuknNQejv4WHlcWRzH9KGHcG3pkr9ZAURZq9zp+kwM79tH3jJJ8WrzCILUrUAnncUx63HHEi8sV3kVnqC12QEjq01m1IHTPd7IiPN3pYidartx8yKUJBHZ4W6fEe/wEA3Cohf0+uUoAtEm+yaKvv7XqF3pQFQUy3L2IwnMaIyS99niBGL7ximvyOZTZyszbeAbXUfxMhuH0Acb3adN/K4L9QxUvSU51zVQLO9K9aNM+iM6l70qJ5oVKn+HpKG4kQnZmVf+ARAEwqhBkwLsYAITg5ZvtWg2M/SZauXtmXElOEoThdMqc8Hw0D4igEIE4rOcATk7OzbtOvpog5gKvJHGQMJBRSDNgmBHha4ml6/58o4HYsGX/tZPBNVx+BzYDKegjzYznwT6YP3/5dXlsR575qkJ5To8B7fi13alKpw+WG8t8qUUVLZOlh3O9jIwGFpeg0oByUV1ioiVLCyR/UQ6GbgUED+zhG
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c96de40-4122-4763-d475-08d7f908a93e
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2020 19:46:29.0001 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lNgTfPCvrUakyqXQaNqB25waeVo0tqbKLDrvNmuvUozZnIuSzUPTPLAmNgUPTcgIgavPHbYrJ8TZHcYSaZ+Bn23zYPL75k2IEus/K+Iayok=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1452
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S41 10/15] ice: refactor filter
 functions
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
> Sent: Thursday, May 7, 2020 5:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S41 10/15] ice: refactor filter functions
> 
> From: Michal Swiatkowski <michal.swiatkowski@intel.com>
> 
> Move filter functions to separate file.
> 
> Add functions that prepare suitable ice_fltr_info struct depending on the
> filter type and add this struct to earlier created
> list:
> - ice_fltr_add_mac_to_list
> - ice_fltr_add_vlan_to_list
> - ice_fltr_add_eth_to_list
> This functions are used in adding and removing filters.
> 
> Create wrappers for functions mentioned above that alloc list, add suitable
> ice_fltr_info to it and call add or remove function.
> - ice_fltr_prepare_mac
> - ice_fltr_prepare_mac_and_broadcast
> - ice_fltr_prepare_vlan
> - ice_fltr_prepare_eth
> 
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile       |   1 +
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |  13 +-
>  drivers/net/ethernet/intel/ice/ice_fltr.c     | 397 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_fltr.h     |  39 ++
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 212 +---------
>  drivers/net/ethernet/intel/ice/ice_lib.h      |   9 +-
>  drivers/net/ethernet/intel/ice/ice_main.c     |  53 +--
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  34 +-
>  8 files changed, 494 insertions(+), 264 deletions(-)  create mode 100644
> drivers/net/ethernet/intel/ice/ice_fltr.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_fltr.h

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
