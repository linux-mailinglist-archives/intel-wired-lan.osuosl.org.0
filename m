Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0394CC352
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Mar 2022 17:59:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D70BF402F7;
	Thu,  3 Mar 2022 16:59:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y6KutwbXZ3qz; Thu,  3 Mar 2022 16:59:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C4E36402F6;
	Thu,  3 Mar 2022 16:59:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ABC971BF20F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Mar 2022 16:59:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A5BAD83F80
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Mar 2022 16:59:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aX1UncUWouEd for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Mar 2022 16:59:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E930D83F7D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Mar 2022 16:59:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646326766; x=1677862766;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=2CA/+ZyBlN3hrrpGuwnA7g2hRwm8fzpcVULSM+7/mjQ=;
 b=P/ab6wn/V5xh9fSQALMFEBmNKp6WaOlsUoTHm8ezrSgqsAI+4p4tlQ8l
 ec2VCwNzIdj+CsC/nbxawowWNMss4juGzV0yePiMh1k708e18YPHcpgFH
 AWOsgE6AmoFJ7+sphtuTdTZnibIyDxoKvt8awAipfzI44ln3yH7KDakgE
 7T62R1bdqg8k3wjYZZF/Lutm/NBUOpF3tvu1+2fU0jwyrY1/JSdGUDTjk
 60zQn/RWaHWm4ehZCoYqzTX46gmQHixhL2xUVcpoGZ1+6j4CLEQ6spoiI
 Sd9X6tefn1ZaGgXJWDxkYpoRWEZ93EYXfMYtti3I4b33jnbNdbmr1alQu Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="253923467"
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="253923467"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 08:59:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="642179319"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 03 Mar 2022 08:59:25 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 3 Mar 2022 08:59:24 -0800
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 3 Mar 2022 08:59:24 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Thu, 3 Mar 2022 08:59:24 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Thu, 3 Mar 2022 08:59:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SsMVZg8U3yOEJtarxsiWuqCE0BpWoQYci3UXrFJt6EPW3B72htDn/4LKSGWiyNeGGQMdix48bYz6xYIPRUooaDtB8clJ1D+aEkLqv32K7jmqBT94aNi63UUzDrfjt1zABsfHzpqzYgXrW/dH2tuye+jQacVgAKnOmlGTW/rUK9g+TjOm9SjCyi83nn0//OMr1dN4lcKnrGSPMeckGf1wXNBwFYg+AGRnDPwnWDL89Cu4LrpJ6oRDD0EgxaJMkzVHvrgLS0XxfAQj6rgS7R5zMa2QZEPiptcFa4sRr5asmUmVfL88Sf8ON5wZiV2zODxNVhOHr3OwnoB2J/8+9N6dfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8m6VF0QPs4Ie/6oIYQI/SBwguwWfiHB5RdhyRZGi9vc=;
 b=DMHdhZ6pwVYeG8Ui7MS2O/Z3JZBRIA/sXKdN5oJZVhecOfrIO/TQjVyCRCYusntid1KNk3mrk1hETyOCGkjDEzlW8MNkHnvR6gg6G8UKSX0IIy9w67Mfg2KFfTjmf3qIMxMjCkdOUVjfLH+wpNMQIhrGgxvfWgIZPPZVOMDQCwU6pXwR2Z8EZxcMrU1WS5xFMVWvqBVaERSPTDbctHOdyXpALkBl+BW2Q+WZ7SiohSh+jl53COyJHNQg7WvBGrP73spkjgPZji6GNWZmYNuTEgA89PA3U3EONDurE/nVz9FHyfovsmnq0H8lv7MZqjAICLqwrTJGUnjjiJhPvQCI+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BY5PR11MB3973.namprd11.prod.outlook.com (2603:10b6:a03:185::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.25; Thu, 3 Mar
 2022 16:59:20 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::a594:7b41:f854:2478]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::a594:7b41:f854:2478%3]) with mapi id 15.20.5017.027; Thu, 3 Mar 2022
 16:59:20 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Fix error with handling
 of bonding MTU
Thread-Index: AQHYJPsRRnV8jUuc7EuvYeUx9CpHMayt9e/A
Date: Thu, 3 Mar 2022 16:59:20 +0000
Message-ID: <BYAPR11MB3367662CCCFEA4E85CBD0926FC049@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220218190604.1888716-1-david.m.ertman@intel.com>
In-Reply-To: <20220218190604.1888716-1-david.m.ertman@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 13ff3d80-f700-4e89-8ad2-08d9fd372961
x-ms-traffictypediagnostic: BY5PR11MB3973:EE_
x-microsoft-antispam-prvs: <BY5PR11MB3973B6D3716D1D273ED11CE2FC049@BY5PR11MB3973.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8Kyi949/etbhJYCit2cB5+BrQnqDRM7KOuGWFjBclwZZ79SnevPK6csdfE4LvLOoCB86SBJWpF5KI5n+Zfo4bWiBSIvnIt8e5Rk3f0SA+0QWyhld55Q4qeyZX4QvcNLX3N3/6yW8IiTcJBiMDx4AVNasANEhSd6s1eJoiEFC6JOcYbAz0NLQESm5xKUKmOsVnq8MQFrHAv6oiSbv3PisfXOlz0SbcTFlZIXWkfyfQvG6BJir04NxZqlpqcdTrFAvyAuku8yuub2b8lWVsZCt87FSMRcFLhyFYPmFsWDzkjNbv7aI1F61lewAeGsDyzjaT+a0Z13uhpgFncWgw2vRA5L9YNalvsibgrMRGlxD7FijEbAjC8dDGmWes1xBBxUGns4EDsJaTk2PncjR2CkpNbssWmuGD/voSdzTPeiKIGnSbfeHncWkX7TUQQOjREvuwHGn1+FMkzeNVqJDsiYZ7WUNSCYN3eUxW3zg2kP3QGYWNbU5wCVesTs44wbvSDtbV7h8+qCU7lcsNWY/nXUTXu4SpLNleQrOgXXmrrJmvSsGf8IoCU1pFnDryE9dNSnm6J3nzR8/IO375xgeSAfOBzVtPTT2Yhwb17IA1NnoLundFTWmD4vadtgFcs4d69l8154t7BdNNg7gjMuG+TmzK7oRdo0M20E9GPwqiYI58f4Lg/zaxRI2/YoUOj+XeG8rlJyiu01P9/DUcasik1bKMA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(9686003)(316002)(86362001)(5660300002)(52536014)(38070700005)(8676002)(64756008)(66476007)(66446008)(76116006)(66946007)(66556008)(8936002)(186003)(26005)(6506007)(53546011)(7696005)(55236004)(38100700002)(82960400001)(71200400001)(122000001)(508600001)(55016003)(83380400001)(110136005)(33656002)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rqpM1kIVK3KpJnwPN2YxZtY2ytb+7w/aimStQ3cubcTFg8pAfUl1bDUnllOA?=
 =?us-ascii?Q?5cJ1JddXYBLZDn7TQp36MgGsQWNVjLRnrEv5iirU8/4nkcZ1IEdEjY5A8a5F?=
 =?us-ascii?Q?MXq6MVOMbYFJsdGa8TLQDKcxUAH5ybB7+waO7b7Yaajmg7pp8kzGo0CZm2tA?=
 =?us-ascii?Q?Ilk+R1SpYupzav8mxwhE7K+0oC9h9LdmPCBq1LwBUKQcrQWYe5NemJiN4W6h?=
 =?us-ascii?Q?jKukeiC9J71gNHFCoMPXMcqRNJLBOOlY5+JDCggh39K7j/sBpY2pgwdxegiB?=
 =?us-ascii?Q?/MCUV25zx08XdzqHZiWcHUS6kjBHt7Fy1cDgXl8I/br/v+9eFhObGW/O94AG?=
 =?us-ascii?Q?mZzspGhGWMTgTWRIlveX/6LTxswdVIotnenJexDa7C6DPozSwLvEmc8jFNBH?=
 =?us-ascii?Q?DIH8PZCyzJbDcMrQWWhUOPCPIr50IkqcbsWwyVrYoBA1UE9Pw0KdHzIMMdkE?=
 =?us-ascii?Q?6JiXk6TnW2DPWCnCk5FKC6BZZtwjxvrbAU/VRG7lnQiJNO2587E6nohiGKPd?=
 =?us-ascii?Q?QOIy8LDGpZSC8S4kwX3PpIppzn5MYOKJ1OV1rRjWdA5BD1C6GkpeyJfkVvDo?=
 =?us-ascii?Q?mVCp6uZMj9n0UxKrqPj0/w+ifd7iN0C1QJmgiXM9jlAWpa89/ye+zt7/tZV2?=
 =?us-ascii?Q?eJrIMR0vcsNW54uytFvpxSw5QfV1ZN8rf/QL7N183uSwN0yUgIiOh8zIsJLL?=
 =?us-ascii?Q?Mz4cL6ZtB5h2HNi9/WKqZX9ns3Xw3xHT+djF6Dg5J4cY0NfndYndIvrM8fSD?=
 =?us-ascii?Q?Uowy6q/piG+n5vlEA4rSIEsEb46VXyi92AQVPfUqYMilDQah7z899YYYXK5N?=
 =?us-ascii?Q?GxVeasPIPL1UjxI+36hukaO/KmLYlNYv8Lt2hlmXtADXZeKcZrf4Z2nOFdLp?=
 =?us-ascii?Q?dKBNjKKk9EzAaQMJkrxNYvEMcFAttkh0vuJSF/miZPYMY0yvXJ+DDqjazChq?=
 =?us-ascii?Q?lVMg9mTEwdHsTW2MtZtLzfppYJoZd7MnF+B6Ma0T4BwmPZTK0VsTmXveXiIf?=
 =?us-ascii?Q?V5fJPovDSUmxizAmgL4bUDdTH9WT4PfZOXDOG3qonWllJ7gAso0bzBcafxa4?=
 =?us-ascii?Q?hO6iCWnIc8G9+VSK/JXYnRgiWpVn5emHh7GD07VPcc6rg3jYCiU5uXrsXEoH?=
 =?us-ascii?Q?1TpQc/abwt5skkQzLMgloD40dfKChQM1aYh9GbirPnDYJI5AP4VamQ52RmLc?=
 =?us-ascii?Q?SPN0yOQhi00D26WZVfuo7h8lW4fDUzRRVJyHJC7JVxrS8ytPiSGzUItnjDTf?=
 =?us-ascii?Q?THvJYrdmzgS+BlkTgX8uUUSa0w4TaYD3mHd1y82nR2eSc0Bo9+ByH1wo1wZx?=
 =?us-ascii?Q?w+9yhwZnMAO/xsKieXl4SGfT9Pyg5EeauE0SnhpgK0Cd34GofT6PbIB3PB4+?=
 =?us-ascii?Q?95S6a9niuB68AyJpeMLG4IoPHFu2RbpWGwnWvE1yZTEfh4ezb8Hk/8lf2Kev?=
 =?us-ascii?Q?c927J9H9Lo27laM0hpi2H0rQQG4cEX8NHWpzfb2rWUgXzeYQnIK5ICvmIzP0?=
 =?us-ascii?Q?LtxClhJ5fhaxB+zaYjlr36Ef7Z9JogWHxsSKu71fwuUwpp+pl0AA7KF5AgKE?=
 =?us-ascii?Q?dqcbH3t8/NFjsRezb6rzIohJaCGoA264GCO6EgFAZ8XGXibaC8L7DbDQXclK?=
 =?us-ascii?Q?mQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13ff3d80-f700-4e89-8ad2-08d9fd372961
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2022 16:59:20.7672 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cs19aR91awupOoNcYOe972+GQJGwknLniPdBDr3Fk2EfAlnD6gJt7nHmPeeQVq9ZffAGNH9z/iQIPvkNMZntrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3973
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Fix error with handling
 of bonding MTU
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
> Sent: Saturday, February 19, 2022 12:36 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next] ice: Fix error with handling of
> bonding MTU
> 
> When a bonded interface is destroyed, .ndo_change_mtu can be called
> during the tear-down process while the RTNL lock is held.  This is a problem
> since the auxiliary driver linked to the LAN driver needs to be notified of the
> MTU change, and this requires grabbing a device_lock on the
> auxiliary_device's dev.  Currently this is being attempted in the same
> execution context as the call to .ndo_change_mtu which is causing a dead-
> lock.
> 
> Move the notification of the changed MTU to a separate execution context
> (watchdog service task) and eliminate the "before" notification.
> 
> Fixes: 348048e724a0e ("ice: Implement iidc operations")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h      |  1 +
>  drivers/net/ethernet/intel/ice/ice_main.c | 29 +++++++++++------------
>  2 files changed, 15 insertions(+), 15 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
