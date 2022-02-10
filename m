Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8FE4B050B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Feb 2022 06:29:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C4BC9408D8;
	Thu, 10 Feb 2022 05:29:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kEDgbnNOsbyR; Thu, 10 Feb 2022 05:29:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B48B3408BE;
	Thu, 10 Feb 2022 05:29:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6B21F1BF40F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Feb 2022 05:29:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 57B0D408BE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Feb 2022 05:29:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3vgvAi6pV7ZQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Feb 2022 05:29:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8C1ED4034C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Feb 2022 05:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644470954; x=1676006954;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=6Q5p4a14ZtLCLXtRD0WxrOhQUJtXd4/TqXm7dfLXap8=;
 b=Ci3efMpRZWz59LfgJMmRhi+9eWdT1YaffwQutqCwyPv/BweXcO0kHa2n
 WCh9s8eMksDL58zIvtAljrLzp1ay/s9OJfkWXcEh+C3MN66fHgVf5wtj7
 m4gfCwAoTK3WbAS3hPWCTUxv1Md2qSbSXuKsyugmKRZmR3cCSvXTiUgwf
 ybWi3cncgE18bCLuhmQpjmZElqEBkJ06i5tg8Y98eOvD787eHOpr3fjxh
 HMFrdnBZUS74kH+mb9OhLxPdmai5cPY4mUKfyHzLnNtIlP+HVVzlcbJUX
 x2HlZ1d5mlXVilONPAeYeZbi3T/mzSgarmGm2ZQfLinUbt2pUCpLeDdxs w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="230062088"
X-IronPort-AV: E=Sophos;i="5.88,357,1635231600"; d="scan'208";a="230062088"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 21:29:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,357,1635231600"; d="scan'208";a="500266197"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 09 Feb 2022 21:29:13 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 9 Feb 2022 21:29:12 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 9 Feb 2022 21:29:12 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 9 Feb 2022 21:29:12 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 9 Feb 2022 21:29:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=go0AOYGn3bGledzBXap0SyWripLBbyZkJ0M/SyZo9OW6fa/PFmd34BPsiDVkCuP0/o4EP98sn97pxn8RQjWYrpWHnuPER7/17tffDNbFXWIOlcrDrjVQ7672tgijDkMb+4fTXZmk0l1Ju+hqkp8vYA3KKDvcSZVSyRkVmktuGFjtq8tg6Mpoy9B80ds+tF7fjzyw9PNpzxTACW+Ng2o+rYretIDIPtCgwlmgBR/52H57yVjdmRz9swIY4s6aAaW4feN4SDbRW6KRvXzq9yZpvliJ8wRAt2LJh9CW2BvyOV5hW3ivtutm/gfFx99TgOtxDJNWbFij/hZKkKZQxEW7Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nA1Fz5f3niehwxgjKk24R5jtnzCZuplTye9TSqBSAc0=;
 b=DTbNxxXhd4NIdMfZ4pvTx+OfYOeOBXoPSBhtKUlJsiCJDBLeF9MY61GpGiqmH4ESzvO9z3IwRXAbBDsNR12nkXHaqdc0U2r3I/0RP8b6504Aj8z9JzfY/4PBy8pTidl9zvhUQJy4poXm/09c/zjG6c9CnUvY4eM6TtD72uhbBau/pLpel+lOj/T0tlS8r/OZDECzTMAy4Ja32dEfWu4nPNfc5s6lvZOF7Fa+EN4BIU8vxyXITzqjSDyqZdW7PYrw3Fm5oFbJFkyZoVeePfWgZZMUA5RWcykVPd+UpCWTNhoW5n40LKofhGKGckNOmHfcz0l2L1oihKO1t5mVrdWt0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MWHPR11MB1870.namprd11.prod.outlook.com (2603:10b6:300:10f::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.11; Thu, 10 Feb
 2022 05:29:10 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::3162:31b:8e9c:173b]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::3162:31b:8e9c:173b%4]) with mapi id 15.20.4951.019; Thu, 10 Feb 2022
 05:29:10 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: Avoid RTNL lock when
 re-creating auxiliary device
Thread-Index: AQHYDl4NN0vx1WsdWUCfdC+jR4eouKyMYXQw
Date: Thu, 10 Feb 2022 05:29:10 +0000
Message-ID: <BYAPR11MB336728CE6F3C8EF91B88D5EDFC2F9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220121002756.1105566-1-david.m.ertman@intel.com>
In-Reply-To: <20220121002756.1105566-1-david.m.ertman@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 023eb697-4ee7-42c5-a2ec-08d9ec56445c
x-ms-traffictypediagnostic: MWHPR11MB1870:EE_
x-microsoft-antispam-prvs: <MWHPR11MB1870F1CC91CC59073316D8F2FC2F9@MWHPR11MB1870.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 78p2WZOOYveZxowLJ2Ric+6+dfgf0sOYBHzRR4YPl/YaA6E0Q+aE4Mz4p0SgiK8IS0EJRsDv+QqcrQo7OnNNb7OCXB4Bt7oGnctS5AZqGOMjWVCF9B44YMDRs2+vRTH9BzubhZWBcogh9qtYmjnKO7Fd+LO7YH8cafWitNJC8PV88QxNmgitfbKTQTTyH7DeW/6MfaOR6f20NPa9cFDF3kl07R+ejMOXWsB/J6ciUnuPOeLU80FgHLevMr8jw/SsJVRARwe1kY4lsoajjo5uNcqsnVz8iO+NkPeb2HOp1i9upjIRQnrIRAqlz3xvlEINdxPcDohn0x4iI2k4/cQ75FHtq0XJIqf/vAqRmdUaQx2mxHY+vfFDIMUdBqkKFS2psSjBBaNT67+/S9IZEGr3Z/zCo1WxX1325jTDGTLEOt77sk94gQPojYNwLWXQ4zqlYsy0mW+MWFDgaRkBYHDvH9CKbbblAZCrdxy2DaAIxlZdCP5Dq0ZcNtyNKfUzyQlSI4tCJibd2eKWKg5lNZp6fzgsNXtuJz4e1dsAaXKSFHy6+LZVYX9vc1bksfJYG+BmubcVoOjElZ5mpZaC2gYrx3dhLsL4RNgjoGqZMhzAg2I3XmBke3Fe9wASDfCOxca/kXL3U4O889qFmXaRKtEfQkDl+PpmqV8Z6DEzzJMAC3lHwEw+QuF8Hqxy11psnwOgFv1WUbPOtoZkPvtq11DTZw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(38100700002)(82960400001)(8676002)(8936002)(55016003)(55236004)(66446008)(66476007)(66556008)(76116006)(64756008)(110136005)(66946007)(53546011)(38070700005)(122000001)(2906002)(83380400001)(316002)(52536014)(5660300002)(33656002)(7696005)(71200400001)(6506007)(9686003)(508600001)(86362001)(26005)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Jygt80XRi96uoBWSC6kdrphAJJKh3bDdZZufA775RZCGrqqHsuAiqYI3qPJk?=
 =?us-ascii?Q?T3NErurqe6ZSbWwf9wvOGhp+BEYhj04hTr+5CjyS4NQBsCpkl1dDxxKto3qm?=
 =?us-ascii?Q?ffnxaNUKoyfXzqVH/wkoVvrH2qDtRetQy3TGlrblMs87aqMC7atOvPobb5Sg?=
 =?us-ascii?Q?D7tetTkUMfAkB68+LoI/VJ90JG5mjlv+8mH5B2wZllo6tWlRf7tgEpZiMoR1?=
 =?us-ascii?Q?uvnrqWeTNVV+Qalw1i5zcye1QxKYwObaa1VtOS/us6ujIAhXLH5mLlyZbDE3?=
 =?us-ascii?Q?C6ugD3DOiV8MlDMxN0+BBkz3Uya1d3VZBPR67hYExmZqxR2+OW+mVcKmG6/P?=
 =?us-ascii?Q?6q6PufZK6X2vX5ZoGgU5Y++Iqz6QRrCWRnIhhigX+h0jGSvXoHG1atPaqL9T?=
 =?us-ascii?Q?zuonu1s6ff5SuCwdpcQR+NXvN+SB1MIBcg5B/J4hpq6SYb7Dwhrnl6yj3tX5?=
 =?us-ascii?Q?iVOEJ4D48lTzyiwtHQDtBlKMrA1jeq7H/xyDzXALWSA75taol2hkIiEb6Ifn?=
 =?us-ascii?Q?6t/EqA2WmgZHBafhuq/8eiYgzTQwO1X0Ij94hwBqxY11SaEX43sO76qBB5Kz?=
 =?us-ascii?Q?+aF8DMmQeBCqqFrOPV4QJdgkH0uXaSHQuI5mD8WDUq7udOWu8OkQ8fsgJebz?=
 =?us-ascii?Q?7ae8Rwxa8BVlOCt18x9A3eC8m1/6nxdp6uNfUINTlrG+QLUeSEXVlUC900IG?=
 =?us-ascii?Q?oLxfR26rPhJkzTwahLpE/VQvBxdgPe3Nlpw1VSpv3K6QZf1WN5S5jdQ3VI1e?=
 =?us-ascii?Q?mwOxp/HYZZ4N9fjR2RHzrBjwCl/aH3chVoxq4EyQ5O3IYjlqYdFgRPWRJcMs?=
 =?us-ascii?Q?F8ealD2xq0Nwu8NSEwjNVjamzfnWwxRp+SI/grXuDDB0R72552Ao/zSndacE?=
 =?us-ascii?Q?qWJ2kwlwahgxGQSN3xjET1ultbuQ4TYW+zoFRGqWffWoCh1+7hZ2l0WSN1NC?=
 =?us-ascii?Q?tXzIbXHcMj3E23ItS1D7BJ8edK3VaVbZR8Phm5YvmagypKUS4aOrqkWQu0Tv?=
 =?us-ascii?Q?p97FOtRYnXOzNZLkptHLbA2GAs56D7gqF4UIJQ251gE6WENX1MnfkcIR41IT?=
 =?us-ascii?Q?txMzOl7W0t5oEBr5k7r1YhBnpoZbjdbVrH4u4UzIhe7M7gSQkt/csE+1I+YB?=
 =?us-ascii?Q?UrG7dSiOa2Hx/SAwSdP2xJWFjR3hXRL1Ri3Ys5aENEh6wFHrOXJ/aUMUbf3I?=
 =?us-ascii?Q?McpW+t+HhzU8ZCGdhyF2MUr8DfHcm5kSLb9MYuxiFrB+DKHT2KxBEpBnFBb4?=
 =?us-ascii?Q?kX3BqEaI9zpZlnRLLjtykdWVNgMwhM8X25WlKl0fCvYWNwAYSUEsSjvzYqUe?=
 =?us-ascii?Q?tOd3zI3Llhi5MenLWdkTDzElVs5mckqP0HoYO9rup67Zu65FrdoNBXT/uygY?=
 =?us-ascii?Q?w3eMjZZLA8L1TBiwbJm+13zMH17t+/Fd3zMYEJFv9gXn0pEd3kGdMXie2hFI?=
 =?us-ascii?Q?+/ZQj99UYM+4Iv/8XpgxXPvxuQW3wb8RVxO4C3M0doaXhKg7lSq76tjZOCHx?=
 =?us-ascii?Q?Xa7jwyggO7fOcypz+zutKGmL9XHAsMtWGDOa/PWWiVb4RKBb8UIg7aPMx9UE?=
 =?us-ascii?Q?dsl8W3LaALk2WnnM+3vIFXmUrjNB+AlTPd8V6THV0UTxLRh27k4OjtZQ+Hfx?=
 =?us-ascii?Q?8Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 023eb697-4ee7-42c5-a2ec-08d9ec56445c
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2022 05:29:10.6806 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IQ7cpmipn7mWJGk5IWTlAXScHhmQFsW5zTeZHrGOtGjLxDBqxDON2xKLAhukMRlOstceUplTywa6HPWBN888aw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1870
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Avoid RTNL lock when
 re-creating auxiliary device
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
> Dave Ertman
> Sent: Friday, January 21, 2022 5:58 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net] ice: Avoid RTNL lock when re-creating
> auxiliary device
> 
> If a call to re-create the auxiliary device happens in a context that has already
> taken the RTNL lock, then the call flow that recreates auxiliary device can
> hang if there is another attempt to claim the RTNL lock by the auxiliary driver.
> 
> To avoid this, any call to re-create auxiliary devices that comes from an
> source that is holding the RTNL lock (e.g. netdev notifier when interface exits
> a bond) should execute in a separate thread.  To accomplish this, add a flag to
> the PF that will be evaluated in the service task and dealt with there.
> 
> Fixes: f9f5301e7e2d ("ice: Register auxiliary device to provide RDMA")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h      | 3 ++-
>  drivers/net/ethernet/intel/ice/ice_main.c | 3 +++
>  2 files changed, 5 insertions(+), 1 deletion(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
