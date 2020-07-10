Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3458F21AD55
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2020 05:16:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B605A897F7;
	Fri, 10 Jul 2020 03:16:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jTMB2+w+mnWG; Fri, 10 Jul 2020 03:16:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DD8CF88424;
	Fri, 10 Jul 2020 03:16:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5CB8C1BF9B9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 03:16:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4F2D11FD21
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 03:16:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DqDwRzBCEG+P for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2020 03:16:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 04EA11FCB5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 03:16:29 +0000 (UTC)
IronPort-SDR: +Aw0fqrVK0r03idNywK2Fso9FCeEPfVEBZann8BPqA/VseJRtBXLCI0rO/G6puemZIzJpWNz1t
 6N1jWuLkkwbg==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="127736014"
X-IronPort-AV: E=Sophos;i="5.75,334,1589266800"; d="scan'208";a="127736014"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 20:16:29 -0700
IronPort-SDR: M5LIj1WyV3MZgGKczRL0KEgaet9G3vS8uBMLblkp6Bc+sk9aZ9FAtMFw3jsM7XhNJQNxLgEmGq
 apsmJ2xhnfOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,334,1589266800"; d="scan'208";a="484502319"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 09 Jul 2020 20:16:29 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 9 Jul 2020 20:16:28 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 9 Jul 2020 20:16:28 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 9 Jul 2020 20:16:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vni+oEyOPVRKwDWIO9Fh9IrkxN3RE4fMxQHv5lMgbmK4DDrN6TRU+M561xIxdCnkonhIIcyzDlT8Embq8rSWUCZM3lnXw6tmLpKHwv+FxOYFf5zqDKrxBZQ+IaOYPLLXn+wEe7YoDKjfdfPstNSAJMk29YkWMCYaL6XaeRgoPzaTSZG2PWDy7FV6DsD1WVEh1LEzgOQmw7cHonR3BozJO3RYzV2oGJccP7YUjml4qgQlpnBcVBZDk5RbNwexxpNJop1+5DuyXufO4KT44cfIW/YMpYzYqlYHl0QTrbKbhAL1NS5EmFs0oykYi56bUTDTt3hqbAP7op9cC2NAvK4CxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WYx2ddb9Cs9BQWywXbWEO0SpMNieddrnqzrchsr1/q0=;
 b=kOvYQeBHlZ9KccLOXTaJXtFjjmMa8I4mbN5FdxEvSkcpG7tQHLf3DFferDhRykWdyu6ib1dvDhni2ElOzDkKkBW7WMQIW2dUJOfvnNE02w2gKJJgRNRL9qGvNQ5uO1lZPXNc22etyE4qneCeIOzxh30xLjWTbbZlVIgKXqJx8OHWHCaiqz/9cWRIuXSGiWCL3PVFZ9wKa3LbcKvlt+AFbmD6Fp8vbJYNTALKUiItEvlJ0NTTAZDiG+cgbudWzNOon/Oa/wBRAIR2rj6wr1ErJLsinz5EjY6HGoR+3JM+B6GJmtrOVXgc47rQCh2RlS2XgtRDk7Axq5QKf/ZtfKAxnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WYx2ddb9Cs9BQWywXbWEO0SpMNieddrnqzrchsr1/q0=;
 b=iAX3UxRRyH4yTAwgNGEsTvOSYCiL2XMwcaSarbkITTxYYxIc9w1k4nklYBbRoMB+cqtmN/aNGRLaXCnENM95Ct3iuQ/HLNSf/Dp4vs3staF2pQWk+U8K+i+THeJ3y2MB6MM94skfbUIz7E73oEHnAxJ0I9ZL8iwr5wfT+CgHftw=
Received: from DM6PR11MB3900.namprd11.prod.outlook.com (2603:10b6:5:19a::26)
 by DM6PR11MB2921.namprd11.prod.outlook.com (2603:10b6:5:70::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.20; Fri, 10 Jul
 2020 03:16:18 +0000
Received: from DM6PR11MB3900.namprd11.prod.outlook.com
 ([fe80::3dc9:b760:b900:437e]) by DM6PR11MB3900.namprd11.prod.outlook.com
 ([fe80::3dc9:b760:b900:437e%6]) with mapi id 15.20.3174.022; Fri, 10 Jul 2020
 03:16:18 +0000
From: "Lu, Nannan" <nannan.lu@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next, v8 1/5] ice: add the virtchnl
 handler for AdminQ command
Thread-Index: AQHWVl59HUzAabLKk06B41tDLUACu6kAI85w
Date: Fri, 10 Jul 2020 03:16:18 +0000
Message-ID: <DM6PR11MB390091C6BD59015C44071924F8650@DM6PR11MB3900.namprd11.prod.outlook.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
 <20200710015421.92122-1-haiyue.wang@intel.com>
 <20200710015421.92122-2-haiyue.wang@intel.com>
In-Reply-To: <20200710015421.92122-2-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.102.204.45]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9a473b4f-775f-4f05-e6b7-08d8247f9d2e
x-ms-traffictypediagnostic: DM6PR11MB2921:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB2921F10B8185608F866BD170F8650@DM6PR11MB2921.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7Lxuibtb9IgY6C63mgNs1kPjdjkcdQEEQL4uyhbgH3nYKmQfwBod2onPL03nh+ZieC33YlS4aq6/2q6XIfmpcWjXH17JyaExTc0GJKPtjm6xf/0vKvskSDA86krb00XzdypCNQt08vZWKNfm7dPHllijdPkZDRMlmL45ArGUoWmPudI4Pv8KD2J3eLzaL4i1XPNntU24GXPBstpSLtO9/i86p3kW7rHrfVJhdhWOMOFkehaVcSHuBnL6oItKJ+rakaujLuXpwHXYOm+bscKC6bSQQ0gyTG0QkhqVAb3UjSmHYtSuP5DyriM1CKrRXipu+lmMhPF1FzwZNj33/Ppiyhsy/1NCNRZZUnoR+JOkvtbSxJ+sIkkkKKrSJwWTPSutJ4rZO55YtSCUYrkWQ3NM3A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3900.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(346002)(396003)(366004)(39860400002)(136003)(33656002)(66556008)(71200400001)(86362001)(83380400001)(7696005)(6506007)(53546011)(966005)(55016002)(2906002)(478600001)(316002)(110136005)(9686003)(5660300002)(66476007)(26005)(52536014)(186003)(66446008)(64756008)(8676002)(66946007)(76116006)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: uD6KOSl9Vpv8sfOhwcbAWM8lwsbbMBYlxIM5ewOK0lASWjpAu0CmG5Hdriwh8Jjf/bW6m/PgpsYPoS4Xlwkc7U2FZqb5gIHjg7V/Pf9DH7/rWYJhDe4v1X5g3xpKWw6hbgbLrEnDdzentOygnxHl1Df395gy7XCr0uMPkbgk6wh+hEx/dfYG66nPgsZUaKEn9IarRyLj39z5XGJNoLHAVBUKk2MmmM8fq2Y04kdKDkeWOLf6+5+ZEG6jeTHrioVPbOxMoX0fEg+S8LyPA8+Rhr1ed9rEYhIVm1EBswwLIDT5v41A69Y3HdME3A0+Rs7WTJts3hD3A0nWGTchXH1xGHmsV/bF26ZlsCtECt8DnGMTrs8V/FbmFjaiGeguCEmWa37ltXtp6DfFIJAp45uKOyCvxftfWxIwe7fGZ8SRiCLXmIEqxp99IZOa+h4ftAmLP1BuphlTyBKQ9NzOucTFZQByFm1suDbzkTSTr31umuWNopedvnoV13syJvd/V/qm
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3900.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a473b4f-775f-4f05-e6b7-08d8247f9d2e
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2020 03:16:18.8578 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OQcsqugXaiS7L/LcFXBGHKx0QU0Zs7OvJmf1mGnEgGvEBpSySkv6xyY/8sVn3hDHbTPjgHG1Id9zxq4tr0ESrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2921
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next,
 v8 1/5] ice: add the virtchnl handler for AdminQ command
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
> Sent: Friday, July 10, 2020 9:54 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [net-next, v8 1/5] ice: add the virtchnl handler for
> AdminQ command
> 
> The DCF (Device Config Function) is a named trust VF (alway with ID 0, single
> entity per PF port) that can act as a sole controlling entity to exercise advance
> functionality such as adding switch rules for the rest of VFs.
> 
> To achieve this approach, this VF is permitted to send some basic AdminQ
> commands to the PF through virtual channel (mailbox), then the PF driver sends
> these commands to the firmware, and returns the response to the VF again
> through virtual channel.
> 
> The AdminQ command from DCF is split into two parts: one is the AdminQ
> descriptor, the other is the buffer (the descriptor has BUF flag set).
> These two parts should be sent in order, so that the PF can handle them
> correctly.
> 
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile       |   2 +-
>  drivers/net/ethernet/intel/ice/ice.h          |   2 +
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   6 +
>  drivers/net/ethernet/intel/ice/ice_dcf.c      |  49 +++++++
>  drivers/net/ethernet/intel/ice/ice_dcf.h      |  20 +++
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 130 ++++++++++++++++++
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |   1 +
>  include/linux/avf/virtchnl.h                  |  10 ++
>  8 files changed, 219 insertions(+), 1 deletion(-)  create mode 100644
> 

Tested-by: Nannan Lu <nannan.lu@intel.com>

> --
> 2.27.0
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
