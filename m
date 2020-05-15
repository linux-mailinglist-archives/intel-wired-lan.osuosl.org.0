Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF9D1D5A1C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2020 21:40:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A3BD72ECD1;
	Fri, 15 May 2020 19:40:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ylOx6KeY9QMP; Fri, 15 May 2020 19:40:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 000F62ECF6;
	Fri, 15 May 2020 19:39:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6CFB01BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:39:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6431E88652
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:39:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8mP-5v7fBux8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 May 2020 19:39:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D8CBF87EA6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:39:51 +0000 (UTC)
IronPort-SDR: IdkvpeJOHpwUg3APYeR1ew0b8p6cD/5C6svDXEovMwuEW13IDWwU5fmVzk3caQSyFUyTiTdO40
 Gpd0ZxvPrYLQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 12:39:50 -0700
IronPort-SDR: A+uoafhFq8ODgP87enBsNJEKPw63NyAWxVcHkTuZ5EIGe0tcSUge65lX8auzzhNpgNu4WafE4F
 DQJrcK0F/AUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,396,1583222400"; d="scan'208";a="464833734"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by fmsmga005.fm.intel.com with ESMTP; 15 May 2020 12:39:50 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 15 May 2020 12:39:50 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 May 2020 12:39:49 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 15 May 2020 12:39:49 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.54) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 15 May 2020 12:39:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kd+j/9a2SSu94Pwb+nBp9IajLgQSM0MQdx1xDVw9G0tA8w6oj9OXp4Pd1hfJ9IbTeG3NCFgekM3uRcuW1G+uG5sb15gsk0N+f8EQmdCcJ3FcNkHLynG5WMh42E0BokYTEmiu+jldivloAnQe8Yg+z/HpQ89d1xcuAsHNAxim7bgA6oEdXl0hR53yunwab8nbqV+FxWYxNrag+e0BYDr31elgwtBY9NgVcaHUWuzJMdMDfPtr3XcOBhW6+JmHEwv5KgFupCI0eRHl0DPCn58+O2JBy8pn183mKbASVcM812gnF9AniJexs8xqlT/CKP7D5XOz2yi0DhiQlzIvj0RGrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZxN0IBnI4Dv8jccXyKDdquQ2W7Y5ih0viuxwo7TcwQ0=;
 b=Cr8YBGP73qbsR/32sBdnBc98MEJD1Vpud9Sneydsle4CWxvjV+pMFFia4tWY6pt25+jFUmfvQRpSkAR46CapnVMMxFDvABVAK7pt96A53mUsYQ3CJ9Q4E1qxFwRw1lxFeXzrTp1bQm6Q/IeseGXFUJdE46ixmwuGSMlWGMHtxWCYsILUYa4lcqYSyOjzvpH35742672hjwW/O4JFFmIHWgtEPei0CSx/ei6hbt6ozBM3rIliJ1V1bSWSzCdpuxC++ju2/rv5VgI+Iu7oBNmDr2YnfvJfFJVSjzpHR7qYdSFh46TRcdgZGcvVxennB3HXPwWZ7Gv4wKyeIA25i/7Kng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZxN0IBnI4Dv8jccXyKDdquQ2W7Y5ih0viuxwo7TcwQ0=;
 b=q3pA9mUQSOkQ97vaydDP8iPxUen0p/ATO0X7qVRDU6ycwTSFXSnMwbis4Sncm7Feao8KU5nrLDLUrv0eykwpZiwN2sm70QaMBLPHKNZ+AD9q03rKj9iaDiVsrr0jgpgWyI8hqptGFPN+g9cLETi6NUBJUb3XsJO1FDP4UBlVekY=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1452.namprd11.prod.outlook.com (2603:10b6:4:9::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.27; Fri, 15 May 2020 19:39:45 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3000.022; Fri, 15 May 2020
 19:39:45 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S41 01/15] ice: Add VF promiscuous
 support
Thread-Index: AQHWJNHLq3NaIYFWGEesDujkNlIRuaipl26w
Date: Fri, 15 May 2020 19:39:44 +0000
Message-ID: <DM5PR11MB1659BC65988C92D7864DD6128CBD0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200508004113.39725-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20200508004113.39725-1-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.199]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: eeee06c1-97ec-4557-491f-08d7f907b867
x-ms-traffictypediagnostic: DM5PR11MB1452:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB14520A733A9398DBA3F01EC68CBD0@DM5PR11MB1452.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 04041A2886
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Fjp3SBphWG4PNLhm6fJG2fzBy+NaJBVsOv8k7PcIhyatgy6U2SjINVs0g4FJBR5Pbw2Fq6GKevbHkxbC5sBuaoqVHsej1vB5oBR7cQwWikAR/Y+yH4jBPLI1ALI9IstZEiWVat88WggmPlg9ye6F48nV0YLwhB8yWDcL7B9PwSjONSgJJZT7WG6j8rc3sdGvBRU9ojVlSz+2bfnQ6Th9agLbgF0j50TgDPsNI4Is1w0Yt9wrkXBldo73L7CL5PFN2JzIFt9UWRl1ejZLsi1EFSW8Fl7zCcX3ftQuLUsENuiDrPOmvCJ44ChJ8u83nf4GWctaVRPyJz0Fr6WjuEGS9aOPXs+tP7TX2ffp/U7oMS6uWiTj+XLWUHZ93YpSkmvdpz93FYV09Fm49Di9974LBTLB1Z9G4nLhcSXAa+zJ6aq86hZnXFq/mdGZS6mNxLof
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(136003)(366004)(376002)(396003)(39860400002)(110136005)(71200400001)(186003)(26005)(6506007)(7696005)(53546011)(478600001)(316002)(8676002)(76116006)(8936002)(66556008)(64756008)(66946007)(66476007)(66446008)(86362001)(52536014)(33656002)(5660300002)(55016002)(9686003)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: WjjIXerCzQ/EiVFkzpG7GW3dsCAm4ZTIuWatWESfUNujK1p4UdOsf5cMPzpO0SZo01zieNSMg45bLhtTIN7u4tZAcaBudPGq3UYJ6pkBZOlCwS76dr+9S9Fs1JTW/xFIIgND7NUMn6uHrsYgPCxnd62b+Lv4N6LnxsJe9jQUOEtIc89PF6VNFq/angt+IrB1zhbebu/dPwFREDcS+BSid6piFrPs7FVQQwRU+gL2s05sNDjmOINqX897DLgWH8mCljoBN72LMV5kdkg4Z78X6JPCltDxNRcB3XvJp0dxvJRMhTEDAUb3ywggqLkW28uUzU4AyqN98fW5GvfSIu9HZD1/xqTM6cb+GbISKDQ0jQTWhdlGND861pttBqKqHOfQPUA6slnssz9lN7qe2escNHAmGzFkzsVc/Q5f8b9dTu0p2x5ayV+Xtt2EYBq3aZ88mj85QVf1bej2x87lqMOCLsBtxsVcR/LpEZ7NdO8HXsweS8KLV3Yd3eD44LyMM6Wa
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: eeee06c1-97ec-4557-491f-08d7f907b867
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2020 19:39:44.9193 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1JSdbhg/Q+ghPdXRUg/5dhI1WUrddDzfxj0EfwEpc+VOWu+VrBCQic8rqrxLEV2xKGMptm35r6UVH0vVhYNqQoWwZHCEr+Nyd+oYlj/a6vc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1452
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S41 01/15] ice: Add VF promiscuous
 support
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
> Subject: [Intel-wired-lan] [PATCH S41 01/15] ice: Add VF promiscuous
> support
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Implement promiscuous support for VF VSIs. Behaviour of promiscuous
> support is based on VF trust as well as the, introduced, vf-true-promisc flag.
> 
> A trusted VF with vf-true-promisc disabled will be the default VSI, which
> means that all traffic without a matching destination MAC address in the
> device's internal switch will be forwarded to this VF VSI.
> 
> A trusted VF with vf-true-promisc enabled will go into "true promiscuous
> mode". This amounts to the VF receiving all ingress and egress traffic that hits
> the device's internal switch.
> 
> An untrusted VF will only receive traffic destined for that VF.
> 
> The vf-true-promisc-support flag cannot be toggled while any VF is in
> promiscuous mode. This flag should be set prior to loading the iavf driver or
> spawning VF(s).
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |   1 +
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |  12 +
> .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 206 +++++++++++++++++-
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |   6 +
>  4 files changed, 223 insertions(+), 2 deletions(-)


Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
