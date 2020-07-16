Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AAEE222A55
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jul 2020 19:46:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 703FB22E3F;
	Thu, 16 Jul 2020 17:46:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ptHUe9tJ24ft; Thu, 16 Jul 2020 17:46:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CE8B626807;
	Thu, 16 Jul 2020 17:46:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8C8281BF841
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:46:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8926D89485
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:46:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pyoxM7LfEo1L for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jul 2020 17:46:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C7E6089A90
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:46:36 +0000 (UTC)
IronPort-SDR: MjrDZtgJQa8ZYOkTSjfRK4LfbElx/ScbSVmu9EavzCeo2sp/snc7JnWLXuAxgY0bXR1f57srcc
 fK7Gfa7eVpxA==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="146962379"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="146962379"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 10:46:35 -0700
IronPort-SDR: Aq7ePPz3ohZoxEJtClvkj0riraUIP1LW6Zf0ebKrwn3sAYmsej19aVgT2L9+9wYyKLUC63n1ol
 K4L2AKblU7Pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="282528240"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by orsmga003.jf.intel.com with ESMTP; 16 Jul 2020 10:46:35 -0700
Received: from orsmsx112.amr.corp.intel.com (10.22.240.13) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Jul 2020 10:46:34 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX112.amr.corp.intel.com (10.22.240.13) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Jul 2020 10:46:34 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Jul 2020 10:46:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k1zXQP5TO9PRJgaikrr0Qr+EOJwXXl06rE0NPeExacKuF75g4QCeZLd9KNNyUR9cB78Ozn9SNhCgl7Eqh7xR7G2ZzxO+SzpgG1KCFrgA/XXeBqYYXOtkJheG9EqeS8oDom14i53VACuLG/w8j6467ELi0ZI0nrnNXAVG8GR5IeR9+hqhme5HnPo7cM7nxIJTMMOvvdom1PVHw0JHfBGTTuROUxT8WTLwmsqlYi4r1hqegg24VhgsG1lfepPF4Qft97HBqxcWx+6uuOClOpKqHSJG3Wf4oG4P2JrQXk2Y1F6H10nvJJOZQpHPEstFDOzjeOLNlI6vR0RZ6yiSdNMmeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fpDZjdlWDDayL3rNI33Ootb7rU+lW84IsraCKw3k2iw=;
 b=BKVbYkeJ3Tkpu8eSwFllXjVsSN9GVPkvUJOolvZJTJQ5Up/lmLJlCAUalunAc7QuxVhgHzr4XzS3itpqcKI+1BUO1/vsBANe/MID8mkshsrq/eG8fLl6fF5wCLg1HapK+z7L8iWfqrfP5dGC+rWYzaJS8vmcrBrFzBKaTIozsM9YNMMzCl2h12HginJDSu0pZt85YZvirpbISxS0Nyw5CV0wYkcytuZ5kkLp/gd8evjKjKOMJRYoxxp+6E+LmsEISlJBqYdjNgkZmptoXmPAuDd/A5SEGWsxf/KyWP5i0cUj3uZ6NS8xRQd6NUTw9VdjuEm7mHMjJ5bwdbs0ES+Qng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fpDZjdlWDDayL3rNI33Ootb7rU+lW84IsraCKw3k2iw=;
 b=O2QW80HeBTzBosqHOdhLlfsxzCFOmdW2it7WgP3KurJoUstL6SDcZ35PcAiGUIJ+SqwMgkUdsPQYSmQ9He6pTmdXFOcO03Y1RRDjUeHxUPzWwBJ+wetanTnz9fRKzzbCraldvqqjdCW4ynaVEOX9aaqG4Vrr07fi6Uv4guEkRfE=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1268.namprd11.prod.outlook.com
 (2603:10b6:404:47::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.23; Thu, 16 Jul
 2020 17:46:28 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3195.018; Thu, 16 Jul 2020
 17:46:28 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S50 04/15] ice: restore VF MSI-X state
 during PCI reset
Thread-Index: AQHWWVg5/HLca5MplEm4Mt2H4w05p6kKf01w
Date: Thu, 16 Jul 2020 17:46:28 +0000
Message-ID: <BN6PR1101MB2145D228AACB811B27C9D9C38C7F0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
 <20200713205318.32425-4-anthony.l.nguyen@intel.com>
In-Reply-To: <20200713205318.32425-4-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: d5a5cd43-c2e7-4478-04cd-08d829b02ae9
x-ms-traffictypediagnostic: BN6PR11MB1268:
x-microsoft-antispam-prvs: <BN6PR11MB126802878E81AA5E461F6AB08C7F0@BN6PR11MB1268.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mQRk1EL/ZLSCRLm8vBbOIX+SmEZUzJA0RoY7qa1HR5pNM5aAkQhpzS6zC6QFbtIJLLC8TJSkyPO6578q7mHJ4sqWp82n/sjs60phUP0IMRpiqKt4hhSq3FOtEHIvloa8aBjCzADz9WFfx0UtQE9OT8JYqbinWo35gxJweC1H3lWyOAPIn1aQII2xqf3Lh91lPcdsyrom7MQuL4HN4+6WoWJARFDEwVes7bh4zud3/sfv/luu4kLGuYX0losdhoWXf7FrMX6gn8ZQ7IFKNSJ4q6i8yYy9RffbBGoat40Kk7tBl7kfkTv7bX3KTc55UA+p
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(39860400002)(376002)(396003)(136003)(346002)(6916009)(2906002)(9686003)(55016002)(478600001)(7696005)(186003)(64756008)(8936002)(316002)(66946007)(66556008)(66476007)(83380400001)(71200400001)(76116006)(26005)(5660300002)(53546011)(33656002)(52536014)(86362001)(8676002)(66446008)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 0mKSuCFjK7BRPYBg2i0Rt3xdYdgqTXbTDgvSDCd+EAZwO7q9lpZhzpHj4eDOLF/e0GH70Oegdpt3qa7HK2Ne/s+iSp+mH8j5y1AFkSbDvj6ZxRpq9quB9sikijE0S8ZOPeERtHGIWyQNyUEcH0tTkYI27UPwkLxBcxlc4KqOxH6vWM4VYhJ+FG9HdXAtF3AxDVKz0lSY/3X9sjll0A/xwtAPCAOrDZ5iw9iKeQM7GNPrO/6HYGDQrmuPszqokdGSuZwcdnjM+JlnJU1Uw59xL2muoajY034T9ubppu6/LhoXspKHlWo6lvBVORJc2Z8/O0mc2oAvqApYl/liVBavZJUQxQIZRqdwGxvzuXq9Eblt+5oa9LV6zGpotSyFfsHVeL7ywaUOAPCOcW6W8TBAVsv3BqW3Hx1aIbWjGC9cXfBlNdkxNn91jnC9R4D64QH5I+zyscxHiQhWZ6W0uCKBz3Mk+0IbufwAqSoSyEjnXAA=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d5a5cd43-c2e7-4478-04cd-08d829b02ae9
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2020 17:46:28.2832 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Gx3lv8HDhw9jLnWswqol78s2G+ZyVuYCWdI5MPK2I3y1PUlsKuHULJHqByrYThYj+EUt+BtHtMwgMdP94yOp+RMRd9T+eHE4pfpufS7B0JM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1268
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S50 04/15] ice: restore VF MSI-X state
 during PCI reset
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
> Sent: Monday, July 13, 2020 1:53 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S50 04/15] ice: restore VF MSI-X state
> during PCI reset
> 
> From: Nick Nunley <nicholas.d.nunley@intel.com>
> 
> During a PCI FLR the MSI-X Enable flag in the VF PCI MSI-X capability register
> will be cleared. This can lead to issues when a VF is assigned to a VM because
> in these cases the VF driver receives no indication of the PF PCI error/reset
> and additionally it is incapable of restoring the cleared flag in the hypervisor
> configuration space without fully reinitializing the driver interrupt
> functionality.
> 
> Since the VF driver is unable to easily resolve this condition on its own,
> restore the VF MSI-X flag during the PF PCI reset handling.
> 
> Signed-off-by: Nick Nunley <nicholas.d.nunley@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c     |  2 ++
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 30 +++++++++++++++++++
> .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  2 ++
>  3 files changed, 34 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
