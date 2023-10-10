Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 933697BFA06
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Oct 2023 13:43:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E647410E7;
	Tue, 10 Oct 2023 11:42:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E647410E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696938179;
	bh=bEiOy3v8e/mibRscnwcgxS+JRoogJocpBZTCbsZjvgc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rZG+UC+fBEaIOSFEh14kYRdoTfo9bvPb9uvnUxb4O8F5iSOpPb6C31Hl/f14R8A7h
	 VSSm29eLZT0yap3eyHwCsHcfWkDao4oT0E+oj0Zbg3FtRten+YsuNzwM28MRXWQFcA
	 IPID73jeAkODGvF9/OkIbijqE3qxOtGSbj26I0wdm2rvZHUx7YfDNHhVNzH9octXzq
	 ayGv/shpk6SOyyrODIhIH/8Cr6B+2XjnX/PDmS+6bIBBQTAQI6nEutsHojlvgUqtOX
	 MaMVJEBsHwDwwVFC/KhLgxJa7e7g9Z8W4TiJsu03bq02swPMXEUrOxCcwVzQg01h+3
	 U6mXsrTkI8Uyw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WWd4R5_Y78fH; Tue, 10 Oct 2023 11:42:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7C2B741796;
	Tue, 10 Oct 2023 11:42:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C2B741796
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1AF591BF318
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 11:42:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EFE4D41796
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 11:42:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EFE4D41796
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4yiq-yAg6uvn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 11:42:49 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AA5E8410E7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 11:42:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA5E8410E7
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="5929744"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; 
   d="scan'208";a="5929744"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:42:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="753376552"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="753376552"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2023 04:42:47 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 04:42:47 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 10 Oct 2023 04:42:47 -0700
Received: from outbound.mail.protection.outlook.com (104.47.55.169) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 10 Oct 2023 04:42:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ewMfhiM4TkU6V6TeN5h5j4b47H2mk9k7/40cIG7i161dYdMp0R2smE8fyAcJC2d7Jf/7SrF8k573r1NoP256CuloxGmPrWtNbVeSwXirzxFZw4wbpYiKACzmEpX0jjAfPmlJKVbpOVbsWzdzPzg14TyePO6KKPUpj9sA11iHrFIeOgMbUaIIDJ9LANOfbSmqMVwgWHgkNnUtNdJI0jELT0ah6MZ4c0OHUJi+N7kp2PosFXrxU5lKfKm7k/gCE9E+FgMmQ7E0+CPsGqNE3bmw0Krw8tNLWFS/44Ld49Gs9GYAcifT4R/MCqQ3SXWW12JdUolIkNFNipjLBRFFmNAbKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MN07/YiuGqro4OmdB6JIi2rgvDD1USmchy1JbUTXkRM=;
 b=hhRnvWjI03Hso5NJ1I5UoN8ftLzjf8fah/UsHG/Co9oYXoN77cU6pC3e0/c84N5612xziNYK7wzi4l8J9uVIHleEfwvvOY00pKc3PwNHVZ2MOMdNRg8jwR5F58IbJvV3gdWecIOeFQRPvyMgxbMx/i3bi9w0BNd6MhW6wkXRDoJRW4lP7Bq/ms5MoSnVSl724qP+Jh251l2KYp+9dz58bNhibD1yQrRSfwl9U6P5GXwytOJHoHc1U2BWv9u9uBYDuyRDyNvB5kJ3Q2L65cONl9FH8abN0wjBo4xAk6T7yPn5REAlFiq1CyelHk53pm/7Dv+rrA/ESjMBml7K95cAPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by CO1PR11MB4994.namprd11.prod.outlook.com (2603:10b6:303:91::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Tue, 10 Oct
 2023 11:42:44 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ec0:108e:7afe:f1a4]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ec0:108e:7afe:f1a4%5]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 11:42:44 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: mschmidt <mschmidt@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 5/5] iavf: fix the waiting
 time for initial reset
Thread-Index: AQHZ+xBondPZiCKXHUylpa8W3Y3L5rBC55uw
Date: Tue, 10 Oct 2023 11:42:44 +0000
Message-ID: <MW4PR11MB57769204D0114DD8C71E569DFDCDA@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20231010002444.43507-1-mschmidt@redhat.com>
 <20231010002444.43507-6-mschmidt@redhat.com>
In-Reply-To: <20231010002444.43507-6-mschmidt@redhat.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5776:EE_|CO1PR11MB4994:EE_
x-ms-office365-filtering-correlation-id: 0f12d89b-e697-4577-b786-08dbc9860494
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hes22ohCk6nSmiIV9z98FtTCappUMiZxcIwC1YGvbpJrNFyARmS9A2Aa9vODITxDIO7wwF0ZTxJ6i2bzmh5Au1pmRc/mV9ApwSUwI6qdX1UYUwaaRpt9wGQoZxwLkN2KnW5mtjcOdMt0Q0A3Ohv5Z8B1Pw4LZJN8J8+eVnWTILII+0UW7bkTU0SvDjq4ab/iSsRNmZoV+PXry4E/8F81azRiZu1RG1G4cRGZTBrhr+5T4fVgMdhNC1is6BKKfxhPfQXt+fW/jVHdy8I0HoEWxvzU8ZkSJ0FUdJ5NCrK5+TEytyvM5XixzBU809R8wOOG0p0X9nckrfW+Mj35/xzb0A7FxD+I9xgdNYZGOlahWPSfMxw/gvIjJ6/Vx+HGb1LPkfZsP3qmwe03MYuepvjCLwmmRjoRtzbTwK41D9yD+TDQpWf28DuvI88Ph9N4E7cTTzXdyKWLUFN+gfAHGRAWCAn+ZgAkYtLUCpJHa1p+SHKQ4YJAKCwjk3+kTfF7bP6dwijhW9WVZ5arLZnKpv/rEFRYxsyh89Z1LIA11UKAto6karQlcvjp46Ih0H6ABFzMO4u5z0Lvf9IMKblL1BfheAJqhEXKnMfH9zbs2qt+Quc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(39860400002)(396003)(366004)(346002)(230922051799003)(186009)(64100799003)(451199024)(1800799009)(83380400001)(26005)(53546011)(71200400001)(55016003)(86362001)(33656002)(38100700002)(82960400001)(38070700005)(122000001)(107886003)(8676002)(478600001)(4326008)(9686003)(6506007)(2906002)(8936002)(7696005)(64756008)(110136005)(41300700001)(966005)(316002)(5660300002)(52536014)(66446008)(54906003)(66556008)(66946007)(66476007)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iX7a+/szVFzMPRtwWTPlVKbWzxqeJuxVlDhWrYUaoNFQ76zOpahDzAvbX00K?=
 =?us-ascii?Q?mHXgS+bgQtCznsDCfHGUiWgj75Ukj9YA7I4ruJCC4PFpzrOjEln3ICxEUsjr?=
 =?us-ascii?Q?+o/kl/xVdFW3Qrkvf0C3ZqFOGy2yYJ8m/Ydj7uYm3zgIioKx642oVPgC+L8V?=
 =?us-ascii?Q?6FYPZQ3Zso5Td0ag8vamPwjEzq7nC/nQ5sceXxI1YiTPn9uygy1b7BnOdjaY?=
 =?us-ascii?Q?KLaAMgKVGHU4eoAW2wtzNbI4kqFxyAfWGdbpGOlKVRDEeakNtNzNf0bOx8rk?=
 =?us-ascii?Q?39gWQyTG/70068Eb1m9c6j8nW1Wx7KDha+QWObETcXPUUncG6G1eEwu2HVRR?=
 =?us-ascii?Q?kQnso5vFX9S63UnuBxk73B0tdcjFZBwIQirssGX7NMYBgQoz2h0kokuvHUMu?=
 =?us-ascii?Q?7aPmazznolIyW7xdQKnNL5eD+Jq0ahKdLqfRspYUowjqD/Xn3dcw2KEZ1C5b?=
 =?us-ascii?Q?0NUeX8WS6eRjM4rngY+XFFJvGzycpayAGnolHLwzNt1K4sk/1vw1oyYSi1qT?=
 =?us-ascii?Q?xjvXjAzghLVFKSIWGd1ykzV8FmYUZaredL4vwxnrJH20eX2iD7Ys0g3LydZb?=
 =?us-ascii?Q?ftN9X0b3nmlzuB1E5+GWJfTYYmYgInzbYI58BI9TOGvqa2MGrNsrw/O+wo8k?=
 =?us-ascii?Q?BdqKXAQOdJ7X4E8Z+cfQAHYNypBz/C8DEPfMxk9qfJjzO0pHvkCieANzjGHR?=
 =?us-ascii?Q?8H10xzSsf+DkJaA+Elk9Y+5qvP8w8CaDrKDeEm1lwA6nCAGFGPruaUjxioUD?=
 =?us-ascii?Q?46V4M61BnRih8aGt1UiwxUOAcPCxLqGYiBtySIa+1ydhi48QyJxxdnp3Pnie?=
 =?us-ascii?Q?rWYUuYY3pB8sh1wmIm5pA5hP6zkoyh1SorwKICKgzJMp7OIfLEJxzlIwg4K6?=
 =?us-ascii?Q?hvCf2v29pQVVVES8kAoh6mDn+EZA1M+pQt+LD5P+ngBTIzFAguAU2dfqmtme?=
 =?us-ascii?Q?cxtNKEzLf4+6InGwgRQHgzODSJPDEVrpYbCpJbonlb/xsq6kBPo7Rcev/2bo?=
 =?us-ascii?Q?U9H7UX1IiPm9fj61+JD+YHcqRQg7HNl6VPE8N+L23FMbjWqSQX7MnCR8Higq?=
 =?us-ascii?Q?8WE81KDK0e/RK7r9oKKRf9DRBzNpUMHbErIn6HJMw5R5vNbnzk/9QdkKDbJ6?=
 =?us-ascii?Q?kcqpsXQf7eICcpV+EL4hXewdwwoqvDxLUSlzEGldqk6NzXCdguBnNloZbKrM?=
 =?us-ascii?Q?lnQzQD+FwRQcza088Tp1TLX+J/fPHB+or2NtJIfRLy95DGRANfFQnzT8bH05?=
 =?us-ascii?Q?29OlZD6fh39RugmKjeTZLSaTc2LG3P56KLfeSwmdxuLAmAyPwBJdhM+LmHvN?=
 =?us-ascii?Q?nusplyf8Ykp3PE21z2D16H04V/YJyK5kWBxYJh9J/+taQJl1tbCqCGN6a/TU?=
 =?us-ascii?Q?UX5ulvMgaMGSM1ZTijOnhMRzixU5UbbWh0Ocm7R6hnJaWK3PYtH3Y1x+VJbB?=
 =?us-ascii?Q?yRHKHyWYjRlcTOSdnSKd35eTfp5HEFRkH/cHQnLuEUk4ThNJOziXotXO3NOT?=
 =?us-ascii?Q?MD6i0ySL+cNK8/lHNrPKm0IvApzrkkNV+M+Rinyi5ye9acCcAGr52GMNwNf4?=
 =?us-ascii?Q?L3yruNEIZW9F4kckPfTr9uHiMi01RZ6Dj8hNDQ0i?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f12d89b-e697-4577-b786-08dbc9860494
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2023 11:42:44.2528 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GMaSgQJkeoO8lySNZ94C4RnFJNO2RXaNRos2OMWDJHpLzQJJznv8Vpm6gUgjKpmPBWlLxb9yMeV9mLXmGuGLllhiXOkGspxhASfknAt/XT0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4994
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696938170; x=1728474170;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=U//hVEXlEuIgoyPjvlhgQdP4ad2Xt/F5s9frHzVnaIY=;
 b=laLK8B0VnzSCXFmCeW/KijQde3KqsOdlriMxuDs3OHR5gaewOPq8PPA1
 azzVXkmTt1q4GU9JuZ3Hfq74EvVJnRnnKjfn+7N0UPlJK7VeCSVwkHz/m
 LhWCYgbIpr7YTMW8vPPYfJpqZ5xUX4g2Q6qIpUKto7Zfhxab2otbi7/cZ
 BbXS0jcNlCyisIQB4gv3fEFrOoUZ3KWdh1UAGP4K3OJHTYeUBcgAGwFqf
 6TyIRV7DYX2IfujNslHn0mBk0rycHgW43SAtHPSxNc2DJxq/BH9jPAeE2
 k05ozT4Flm1omPAh1WE4y1imZlbNH8pfvy7LzgfMYVy2F5Sj6EkyKpkZJ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=laLK8B0V
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 5/5] iavf: fix the waiting
 time for initial reset
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
Cc: Radoslaw Tyl <radoslawx.tyl@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Schmidt
> Sent: Tuesday, October 10, 2023 2:25 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Radoslaw Tyl
> <radoslawx.tyl@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next 5/5] iavf: fix the waiting time for
> initial reset
> 
> Every time I create VFs on ice, I receive at least one "Device is still
> in reset (-16), retrying" message per VF. It recovers fine, but typical
> usecases should not trigger scary-looking messages.
> 
> The waiting for reset is too short. It makes no sense to check every 10
> microseconds. Typical reset waiting times are at least tens of
> milliseconds and can be several seconds. I suspect the polling interval
> was meant to be 10 milliseconds all along.
> 
> IAVF_RESET_WAIT_COMPLETE_COUNT is defined as 2000, so the total waiting
> time could be over 20 seconds. I have seen resets take 5 seconds (with
> 128 VFs on ice).
> 
> The added benefit of not triggering the "Device is still in reset" path
> is that we avoid going through the __IAVF_INIT_FAILED state, which would
> take a full second before retrying.
> 
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>

> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 2ab08b015b85..f35d74566faa 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -4791,7 +4791,7 @@ static int iavf_check_reset_complete(struct
> iavf_hw *hw)
>  		if ((rstat == VIRTCHNL_VFR_VFACTIVE) ||
>  		    (rstat == VIRTCHNL_VFR_COMPLETED))
>  			return 0;
> -		usleep_range(10, 20);
> +		msleep(IAVF_RESET_WAIT_MS);
>  	}
>  	return -EBUSY;
>  }
> --
> 2.41.0
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
