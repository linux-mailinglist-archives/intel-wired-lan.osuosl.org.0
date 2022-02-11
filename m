Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2006C4B1F47
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Feb 2022 08:27:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C9235408FD;
	Fri, 11 Feb 2022 07:27:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id buLkGWiD67lS; Fri, 11 Feb 2022 07:27:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CD763404F7;
	Fri, 11 Feb 2022 07:27:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E412C1BF35A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Feb 2022 07:27:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CC8A740124
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Feb 2022 07:27:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4DkCDk4PxQag for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Feb 2022 07:27:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DD02A400E6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Feb 2022 07:27:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644564434; x=1676100434;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pfbngEE0F1RJT66smWu4QUT1cp8mvEllJk4o9Yoweqg=;
 b=k4yd+xz35FDBmLC72Dee4lKQ47PpWQH7vwYu+EADpPj+tTCgS+2NloQG
 Qght+VXblbXbNVfOkmQqDs9OGt5u+mM9IgKz0nfPDR6VwWGSWwmjkDdiF
 WXv9aFl3PebBRnWVeMCKdZfWl68AuqOVlcRUg1+79YuSypbumtehqtE+7
 /tbbKFN8CChMeh/ULRx2L4vjXrAr69+J3mkHJaXiMQK9p8CkBE8mwT7Cf
 o9J1otvinSzn7fEBMcxsHUjqUU0jyIIwTN0Tk1tCDaS6xPGWe/G4zZD0O
 9DfF8gJ7w2mZxULy8GliGXZ7DCGyWi9S3P6fqCOScQQNqk1B6hAkXp+xt Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="248511527"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="248511527"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 23:27:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="526854421"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga007.jf.intel.com with ESMTP; 10 Feb 2022 23:27:14 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 10 Feb 2022 23:27:13 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 10 Feb 2022 23:27:13 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 10 Feb 2022 23:27:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VMYRF4fdU6kurhvTvy0YxsERgvA/eOoO4Z+tJw1aybFY2DAVhh1KN0xzwqMYU3Yh9L6emDsJXefIW9lphxTpRPq6+e+o1+vU2TqRCZH3HUQfyGSgCRqsIV5StOA6xlxUMOorjgKx2cgdGm/7OWhTKowiui7YGzO0JYbt5ZpPGW4uN/yaQ1w1VlTLZx09nkkxMb+OYh+6DJF4jjcIRG/H0VvVWDa30BTuToCtNbgbFVHgpR01rtJIwFX4pKVAQRDz7m6Sd+wrhssdJ9zHYMerL9a6iYCPKvOgVNQ96PaWlHa0NsVL3MqH368CyHowP7As4cANstOImeW4MOfudcSUHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rDshPv8PMBn4+VIbrMUsi540EDzvbBymlaiB7s1QkJs=;
 b=DSWAJXJepswrDtYzy3jg9nPkSf2HX/IOnd9KBsz+OyfwLEL2/0IRq8zGUCqKjXSHHIr819isgBalyAoVLJDcjMp/e3/RmD7xhxfkXiplfdhXZSA0RBKAR3ZTOV9e7CUdEUXeS0Ekl71Jv7Avjby4D8cktVWEH1lYULJqkolSsEllgsJMkD9R6BlnI1ILgcP785YqvIKITBg4DpqQCAwZHc+LbqCRYCkaaavBrGfyrVJ0gBSYlP/RAT8LHMXuWr92/13cO7Gtvi3l3hG+q/Ra2UIdqxudfMmUk6mCMV6PKY1+zEcJl2PLXsiq0ElRkvM1jqayJ3LAg6Iz/dpDAgbtcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 BN8PR11MB3652.namprd11.prod.outlook.com (2603:10b6:408:87::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4975.15; Fri, 11 Feb 2022 07:27:12 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::fcc9:90bb:b249:e2e9]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::fcc9:90bb:b249:e2e9%8]) with mapi id 15.20.4975.014; Fri, 11 Feb 2022
 07:27:12 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 1/2] iavf: stop leaking
 iavf_status as "errno" values
Thread-Index: AQHYE40+3yDHymmZBEKzkOHDcVKRAKyOClyA
Date: Fri, 11 Feb 2022 07:27:12 +0000
Message-ID: <DM8PR11MB56215CF622505ACE28CB7809AB309@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220127141629.28189-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220127141629.28189-1-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ed63f6e1-137f-4638-eedb-08d9ed2febbc
x-ms-traffictypediagnostic: BN8PR11MB3652:EE_
x-microsoft-antispam-prvs: <BN8PR11MB365224E9C0904A21318DA9BBAB309@BN8PR11MB3652.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DYdhgiVE9NW8P0EkpzVUs7K29pu5I+7xRIWbj8gN9QbcGX5Yji8UAug/4ztFd9TMiXqBzEHFDcV7V1F9Ca7HZna/AErlx2ivV86RZTkMWRPGJP+qdlQ0xAT7BI7vkFOWUWB5Pm5blKfLw0mTIu+/mW5giCnfLLxDWew8lhDL6V7krdLzNeApzz4gvp0OGdjqy/RKZ4bShPpzJJwPMLCWjwljsLvUcz5UzKQo3UJItDcoL7SOpfNDIiZT5EbiEKVDulj+KLcttrZSocSBfidLLJvnM0DVbEoI9N8LJFSDAWjSNY17o1HfK+YmpFAmwh3sbQwGW+1vitRx3L/Eu1IfamWUIOGFbpW7grtlrHkMEBKzbZnqqKZ7/cJ5EwXGgYVek3AXUHjJpK1NpOLIbAmMthVy1VDc8FbnbWl9zn5zrDdDxL7hKh38sbcDQXgw2yv9WOG9bu/Fqedy6wwtULme8+YgePW0W1MNGxHcLSycH9EUeWLRaY9lFaBR4Uy9W5+MN3RIDflaQUL6GWuT6vnwe4p5AydXE5qTlqg0zM0MnwneaR1ladAu87JhO/F7OiN/Jpv6TtXe9L+9jts4cryNybQYWfgIM8fAIbkIvQOUWQwIEODuTAUgzZPGND/NBeVYgTImX1nZPn8oXgc410++tBkX1c8K8f03bypRerPaNmr/G2ZSqcOusshRfcrm8FB50gcH7FE6kvr4ABeueOfhxw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(76116006)(8936002)(64756008)(8676002)(4326008)(9686003)(316002)(82960400001)(110136005)(66946007)(2906002)(52536014)(38070700005)(5660300002)(66556008)(33656002)(66446008)(66476007)(86362001)(55016003)(71200400001)(122000001)(38100700002)(508600001)(83380400001)(6506007)(7696005)(53546011)(26005)(107886003)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?29dedIK9xiQKwq5PUvM4vGsI1Ibx0hcy9/OrI96xG1vkdnOaiHEfGtHG6lAZ?=
 =?us-ascii?Q?n8AmmfmfpZs5wZvwm72agLxzkjvJdY6EQzMcnNAng35rQ0DdiXGMlNlsYwS4?=
 =?us-ascii?Q?s1PridKGilXk0Afb88/o3aGHB3OQmqIgw2ZFRUDEQvgcULjLLNt0fct2PfI8?=
 =?us-ascii?Q?G9ahdUR8R36N8c66nfky++7bi0R8sKuCjrOqrTi6kqQ0NWvEMCFxNdywdGAk?=
 =?us-ascii?Q?h6FADLBxopbCbrAhJRv8nNU+I3g5t5ESn1xwKeXjvZnV/nrew3FvpKLot/zw?=
 =?us-ascii?Q?0aqFoaGmdveyCK0GDSlQ6h94MIlxermcvXdPv05XdV5iBUUIj5Da/VeQYQe9?=
 =?us-ascii?Q?TuIRzJGa60Jf89m1IwCLu+Fxul/q28H+lR+Da3b27tHK0lH83p2ecyMrc1hY?=
 =?us-ascii?Q?/yn+Zokw40lpmfwQkeOn9T0L2kMbFauywNEsEPmmTQIni/g6Nzg1tNy98ctH?=
 =?us-ascii?Q?JdfApG5d9+oUH/08qMhk+Qx6N6sUJka1oBBVboFPhBHg7WUv3xd1zePf8KUB?=
 =?us-ascii?Q?/fWlLspO2H0OmYT9F7nNcXpYY/3EOtoz5H/bINHVP0qXrNQp9JjKXojl+K3a?=
 =?us-ascii?Q?OFVbzkgDOoRB+R1XuKEYG16sHYYQBvhVLwq9qUA6rpBVCGTlV9ojmMZlK8xh?=
 =?us-ascii?Q?mBbv+tXlwj7VR5h1YrjU3pghZ1kvL9tR2BnAUJABnF1ShDgsuzmiqSSFYcZ0?=
 =?us-ascii?Q?DQwP/CoCbkKY2v/fcnYEPMrnS3laeiEzy8APE+GmvMg+8DX4+yeTctAwBP92?=
 =?us-ascii?Q?rZ1nUstEY0J+5kNvCkEzKuFtfbH4SS5vUi7VERx0kMgC19N/IHoLpppu9PMm?=
 =?us-ascii?Q?uBI2PVBlWK/jr/GNGzBUpCJzuhHy6CpMwDIl9w+3ZdTcQHMwnV+0eG5lg9DF?=
 =?us-ascii?Q?nEEM0YPazRZ/ExMPe8yv5bQrio95V6XFThK5Qb0lm0h+yBMu9e5HtVpXuZOa?=
 =?us-ascii?Q?JXOYUgZY1+Paav5Cos85S1CienPIypzI+1L5mAXJRxM/JxCQZCSp0qsZty9y?=
 =?us-ascii?Q?JmLr+EtsonBCXlzRwGFHX98/3mOwJT/BKxzJYm+Bk1vEYf/IVPTq6vXEl0e+?=
 =?us-ascii?Q?7tP0zBYXyOliy0jeKzIvCU17gG/pKsAUMMfFLjlB+tGF/eMOiDAtl5Ne+r5/?=
 =?us-ascii?Q?0+UVnuHcg7ytzbBpsClkPVfRCZW0KNIZ5pRzjsMiFbolP5Kr8633oatZblW0?=
 =?us-ascii?Q?ZuPhVFYcqqtxv8RdUyCYFpsS8ZAFHsgAVJq88fzcxj/wG06DuOJKso/eXpHo?=
 =?us-ascii?Q?u4KPb33YeOSwspfG6XW4avUIYb2niuFpv17G+6kbaT4y4MakXbyaKb3tobxE?=
 =?us-ascii?Q?+LI2jPudM99m6vmHILKxSwBXGsbF9HDp5EvjMYIrGtmMItkTzaI3AQ0rsE07?=
 =?us-ascii?Q?CaJYVALEBNKerXj/q7n4YSwRqI3ww1RsIJvRWP7z6PM7K7SXG7+Lz48Jikb5?=
 =?us-ascii?Q?72alW23ewrKyaidSUxgjhUuNUUPZjSD8phb5kWGvO/QuVOQfMwRakDvnKxfd?=
 =?us-ascii?Q?SzuukyTsXfxheKxFr38A1w2mz9pSgr477aBnTbBTfGGkMMxvAj2BWPDyKFPh?=
 =?us-ascii?Q?Qudqz7NwQGN15jGRTemMBQYcunwTGdyx7Ucsv4SZFrggPxIAvwc/T6l3l2g4?=
 =?us-ascii?Q?JPUYdDiuG4mGuN8qhTktTIJv2tjSpNhp+tEaBzP8WJi3Fij3IQIc6d0o/4Ys?=
 =?us-ascii?Q?WNk63A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed63f6e1-137f-4638-eedb-08d9ed2febbc
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2022 07:27:12.2972 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Bvp15f8+Y7MsZA6re4172c7K2kVdyczHOA81GpaLcnqudWyEIIOETsjhDk7SURyobI+s6hFuc74Cs/mRobA/QRpLjMFKPHULCoWbqJBmKrU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3652
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/2] iavf: stop leaking
 iavf_status as "errno" values
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
Cc: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Thursday, January 27, 2022 3:16 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Palczewski, Mateusz <mateusz.palczewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v3 1/2] iavf: stop leaking
> iavf_status as "errno" values
> 
> Several functions in the iAVF core files take status values of the enum
> iavf_status and convert them into integer values. This leads to confusion as
> functions return both Linux errno values and status codes intermixed.
> Reporting status codes as if they were "errno" values can lead to confusion
> when reviewing error logs. Additionally, it can lead to unexpected behavior if
> a return value is not interpreted properly.
> 
> Fix this by introducing iavf_status_to_errno, a switch that explicitly converts
> from the status codes into an appropriate error value. Also introduce a
> virtchnl_status_to_errno function for the one case where we were returning
> both virtchnl status codes and iavf_status codes in the same function.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  v2: Submit this with additional patch introducing iavf_status_to_errno
> function
>  v3: Change iavf_poll_virtchnl_msg to int
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        |   5 +-
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 172 +++++++++++++++---
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  18 +-
>  3 files changed, 156 insertions(+), 39 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index 6f93759..8287f9f 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
