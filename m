Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 850064C4A79
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Feb 2022 17:20:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1013541893;
	Fri, 25 Feb 2022 16:20:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PykH71BrNULO; Fri, 25 Feb 2022 16:20:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F41904181D;
	Fri, 25 Feb 2022 16:20:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E6E721BF2FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:20:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D46FE41835
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:20:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DoHsUNstE0rF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Feb 2022 16:20:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0A7234181D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:20:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645806032; x=1677342032;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=djN0MRdDCK7WtI+7zDzbgAZ7ngbDBS3zzuqefWvbZGk=;
 b=V627tycL+G/yGtqSD4FNSyBxwsjWav2eZGnot3ssNe+xxgK7rc6I3O6B
 JIHwX4Wy1DYNIJBYnV/Yb+hBBWZ4Mnfns2aQ3h/8+NG7pzEoEZnMjLcCl
 msXdWAcsoGewlvXnFrEmS64Bsx5wbJiDA9dut946gYDIVT63OW8Id0L7/
 t3qyFySu5SgtSwQmyMFn54TsiVsNnnBwtctctHkwc15h1KzNLSdEJj4Le
 Rv5660yKsjIgweu2OzHYorOXPRfCH5OMs9JSor+ifKcbEGflPNiBDeD+H
 Kk8weLnhMDXp1nXM3UIbo6u/+J6iXeeqTH4RwnIFNUnNo18PPLRAw0ci8 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="338961909"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="338961909"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 08:20:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="592527946"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga008.fm.intel.com with ESMTP; 25 Feb 2022 08:20:31 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 25 Feb 2022 08:20:30 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 25 Feb 2022 08:20:30 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Fri, 25 Feb 2022 08:20:30 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 25 Feb 2022 08:20:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f/YOPLvwMPAFZpcKSDnDmmCgLC2LfDzWA4jT6TyzNz6CHhNeY8lCrqfnyEHo5/3bNX2/J+JhWzdvEGVg+iW2dMor/xPNl/zKWe94KkwHV4+hXPBYHuKPcwF+QP3Z39rC9ZZ/KYHZzV72A34o3v+rK+6lUbGrZebfyNmnKYAimUEeXELJoFBZB1uJVZkzxbESh5R/Bek8dFfqwB3CY8ip5jjnde4YJg05KkdDXNhY9q6PmhruLQ0qbLTKyd0OmQmy67EuouTOg9O8Kw+bnuLKEpkHzKojRLFwNp9YSfkCxTeqKSKg3MM0Yu7v4Fia9PNhD2dGuHEXjmmzGAsH9pTyGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J5mwe3v7rGzX3NkfK9PDfT6PNeTnfHDAs3oNPiOoIQw=;
 b=KSNLPhZzghWlui7JCMsSVAW1Io5FGR9mdIOKtAmM4ws95KGVXQZ09CvwxqlhNO/SQ436LpF70We88PN8+UXhITmdFel7os3hyaIckQPq66Z0BxZE4NcU8hM59vL3/FwQc6sy78gTsXDG2H7gUkeX/6fw3AIhuK1HLB/ZBBsjIHXGSm2aKIBeUVGrfoyxLMocLBf+ZL0cOsdYGch6KqexMBrQslte8H7BIBSX2O8U8V5OqBuVwQu+w2LNnLvzspZm6guFr4PXLybOZhliXrQI15A3WhLkZ+0P2vNHMZARclHzDYbPhbHhdmnfd2AwoTL1+52CnZNMeNSPaqjFqhrFOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by BN6PR11MB1876.namprd11.prod.outlook.com (2603:10b6:404:ff::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.22; Fri, 25 Feb
 2022 16:20:28 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.026; Fri, 25 Feb 2022
 16:20:27 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH v2 02/11] ice: store VF
 pointer instead of VF ID
Thread-Index: AQHYI32KCXsO6+zIPkOSnXpFnC4GmqykgCIQ
Date: Fri, 25 Feb 2022 16:20:27 +0000
Message-ID: <SJ0PR11MB5629E9B911D5B88E567D8ED0AB3E9@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220216213738.3826664-1-jacob.e.keller@intel.com>
 <20220216213738.3826664-3-jacob.e.keller@intel.com>
In-Reply-To: <20220216213738.3826664-3-jacob.e.keller@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fed42bde-d60b-4e69-3d3c-08d9f87abc0a
x-ms-traffictypediagnostic: BN6PR11MB1876:EE_
x-microsoft-antispam-prvs: <BN6PR11MB1876803F9C82DE15B0821EBEAB3E9@BN6PR11MB1876.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NAeSfecOs3Ik7oZ+kO4qLKuLzIGaDU6/khPgArB8Qqr97XtH3ShSopZbl5OVP8GrK2sv9dNE/5CYaaAXjecg+Sf/X2kDkuapQq8M1zsu+hYhXsPJ1E9N7RdjFGA+i79JGt8WCljgVuNZzLTfyM/bVHELTdyM3XsE4eSj4I84fxT5E4Zk/VrHQSabwPkG+DfU2RgwQQeJUIzKNrhNoguAId/Xoj+Y2Ek033ECvkrUZ+tSz4KlkGcE4L5QiNhO675KpvphQ++zC0cYy+IKj5E73ILySK5i15UDHc8Di+XEa0GHd0wTO5hGT7eGuzmM7BROU6uOWeNIYjKONfoEHKMrdgsB8TwPyYm45q4h2UT8aA0ZntnuTkvSElXCrgNj2+w78L2lmjSFLEYyeJhLYHMPBQge0W72GcQtXGU+GOXQSCR+8fWkx2YUEuAmxRA4UYWIsr+OOi97rP+bH36AGH+PxC78ZpI36IJt/844yWaROfCqz9jPVHuN7I/42nmCS85IRFqn6jqehzlUDNdLEw3OtLackDj/Sch11lJ+OTNk1VYw3PSG2svIVXMRdmLWfVGaPQO1tYLMZ8O8GplCtfnC47uXoRQaMrd/iuTbdevGE8qUvAUWpqAzMkk7OWwiJ9lCdB71w+KHgeyD9ihgyRiw0dvDRaG9CHilAxcMX5jt9RhorxkycdmmGlt5V4NsGDNHtYBxaLZQ4jXrY+p8wrZSZQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(55016003)(8676002)(5660300002)(66556008)(66446008)(26005)(64756008)(9686003)(66946007)(86362001)(316002)(8936002)(53546011)(66476007)(52536014)(6506007)(7696005)(76116006)(33656002)(508600001)(38070700005)(83380400001)(2906002)(186003)(110136005)(82960400001)(122000001)(71200400001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2KhMz8mH463KUH17uYcp7VAROeN4uusUiH/Wiw6uBM1Sx69h8Q3IKrKJDoZF?=
 =?us-ascii?Q?MKAH4ZipQS/XBpbNnixRm42tIHDCSThXf1ugdF/s62kF1jKxH7OQX0rWh3Yv?=
 =?us-ascii?Q?0TA/NWtbqzDhcybf6CrJH9V462ecFnqKvV6YM3Q6fCCKScTOCxMXMLlJm8A9?=
 =?us-ascii?Q?e61m6dL/Tu9ddtRoE1JHv9mX+8GQo5ohdAuQTZ8oX7YFEP+BUT/lvMl3N+fg?=
 =?us-ascii?Q?lJufI9G4BuN+8ScrWeT74wDvBKw6/Ef31y6DwMbwbhhp4qQaZurF0Jqik8i4?=
 =?us-ascii?Q?rykR2Lb/SVWsiUzd8uJJDtiv0UB1QYOhtTL0roevvLEtW4MsYKoC90O3A72E?=
 =?us-ascii?Q?6TYnNfMDP3jNGYqlUPmkmafbUO6XAK+mNhQ64GMIQxU465480JIJc8KR5e4M?=
 =?us-ascii?Q?IsHBAyNwLg/xurGXRXijrc8aK+uqMUCkcJ3//+C1FDoiqbe3hG+hLh6HkS0K?=
 =?us-ascii?Q?HuKottWTS5r6cXjZQNSDufd2/9vikr8FFf6i9ImKvjG0ey1ENTWMuKB2gEUN?=
 =?us-ascii?Q?Mz34zq6GeL08428typ4VxYnMGnnRZ1X2Rz2GCxJQPiDc1KTnmPurkDvv+avq?=
 =?us-ascii?Q?TvhiP+VDtqd9M/OAIHa7PUPMZzkeJjyBc86uehICZMG5P7EwQhi75uYMscDE?=
 =?us-ascii?Q?aHDkeUJNkMpPPn2wTlUuMHtca2oda6P0kiB2aoRZ1E46xdLbALHuBptoWEhV?=
 =?us-ascii?Q?a0uhC/BjQwWC7/YPnvo1TnqyzAfZyZBKdchiubOryZotCAF2TqsoCg6tpOna?=
 =?us-ascii?Q?Mp4kB3n4hgqM0yVnGUJuCASv6EoIzO/s2w1e5cY059b9p6cgobWUMdhrJHEZ?=
 =?us-ascii?Q?Cn+E7/gY3BThG5aYLSUt3B4cpXb6dN0urUewQSbJE/zxCrDFLLOFdwndvaZu?=
 =?us-ascii?Q?0HF5GiUOKrVnQRnJaLR3zUZaPOq+BGFqXTTz26VIxZ0pHL6yZX4HWCSRTG6I?=
 =?us-ascii?Q?0XdojPggxEUsFPqEOBv4dEH2uMtrwXgjQSu+EydtcypBF2x/MhJRcCoci6KY?=
 =?us-ascii?Q?60npFJmWQ2jvjwEJQx6L/inx7rT1kwiYcBvpvoUcNn6OafYBBJPh0kzpg1a4?=
 =?us-ascii?Q?rDRaZTrXFb/2UbMjSIJWMbRoFKbhmu5PkUngUyP99LtRnpyu3cicK1QG1B1H?=
 =?us-ascii?Q?RO8Q3bJrTZ+0XRNmbYYZVSz7dg3pTEjgcrBaA1dTBaYKN/fCoijwcnZGaheq?=
 =?us-ascii?Q?eVkWlVpAAQzTXfzWDRcQLQ8+rFhO3NLNZ3zDkcgISumyIVQU42ShL60rs2of?=
 =?us-ascii?Q?eQpShb+mmtv0q9QydlZAkkPnpO4nYLfYNPinVSP2886xcy2IfZIb64FyjMLW?=
 =?us-ascii?Q?s3cLelo7RE8wKaxlkPIQpgqG1SsKgIbu9RvS5G35XgwiSwXcDiA9utVv2/DE?=
 =?us-ascii?Q?H5YAeYB4nGhx7pRUE8r7NgANrRM4GF5Ee5zwTpjhrnen4sAa+Ogf9ofAy++T?=
 =?us-ascii?Q?Sdnm34FELwPEkQADRhQ9TAbszPQD7Ju+OzggspI0n3fxd0ud7iIiTusN2+rR?=
 =?us-ascii?Q?d6GxTukiOdrUlvEj9MbKwmhMeAKGO8KG2kS/qYiOL8QGqi/NQ9eYwlnBtXqb?=
 =?us-ascii?Q?BA+i5XdMngmIhaIRjxHVbwke9Jkjffgl7kcO8QMoDipJ//GMmgI1f4ukrVF+?=
 =?us-ascii?Q?YYVnQTvos0d+4l4c2mwro7KVN7uzIL85cliIQoV7ZmJAI1Q/TRVCyVXLY/rs?=
 =?us-ascii?Q?tb3Q7Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fed42bde-d60b-4e69-3d3c-08d9f87abc0a
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2022 16:20:27.3497 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N/4W9GvbEHOfabBv7B40ymt3RCNtd509/CTWm8m3So1Pjw8VqbEVXiRHKYotubr8HOJCGBIZbWOB1k0QqVJZ6NrL08b0NnK/pEFK4vJNpLs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1876
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH v2 02/11] ice: store VF
 pointer instead of VF ID
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
> Jacob Keller
> Sent: Wednesday, February 16, 2022 10:37 PM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH v2 02/11] ice: store VF pointer
> instead of VF ID
> 
> The VSI structure contains a vf_id field used to associate a VSI with a VF. This
> is used mainly for ICE_VSI_VF as well as partially for ICE_VSI_CTRL associated
> with the VFs.
> 
> This API was designed with the idea that VFs are stored in a simple array that
> was expected to be static throughout most of the driver's life.
> 
> We plan on refactoring VF storage in a few key ways:
> 
>   1) converting from a simple static array to a hash table
>   2) using krefs to track VF references obtained from the hash table
>   3) use RCU to delay release of VF memory until after all references
>      are dropped
> 
> This is motivated by the goal to ensure that the lifetime of VF structures is
> accounted for, and prevent various use-after-free bugs.
> 
> With the existing vsi->vf_id, the reference tracking for VFs would become
> somewhat convoluted, because each VSI maintains a vf_id field which will
> then require performing a look up. This means all these flows will require
> reference tracking and proper usage of rcu_read_lock, etc.
> 
> We know that the VF VSI will always be backed by a valid VF structure,
> because the VSI is created during VF initialization and removed before the VF
> is destroyed. Rely on this and store a reference to the VF in the VSI structure
> instead of storing a VF ID. This will simplify the usage and avoid the need to
> perform lookups on the hash table in the future.
> 
> For ICE_VSI_VF, it is expected that vsi->vf is always non-NULL after
> ice_vsi_alloc succeeds. Because of this, use WARN_ON when checking if a
> vsi->vf pointer is valid when dealing with VF VSIs. This will aid in
> debugging code which violates this assumption and avoid more disastrous
> panics.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |   3 +-
>  drivers/net/ethernet/intel/ice/ice_base.c     |   4 +-
>  drivers/net/ethernet/intel/ice/ice_eswitch.c  |   7 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 178 +++++++++++-------
>  drivers/net/ethernet/intel/ice/ice_lib.h      |   3 +-
>  drivers/net/ethernet/intel/ice/ice_main.c     |  10 +-
>  drivers/net/ethernet/intel/ice/ice_txrx.c     |   2 +-
>  .../ethernet/intel/ice/ice_vf_vsi_vlan_ops.c  |  19 +-
>  .../ethernet/intel/ice/ice_virtchnl_fdir.c    |   5 +-
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |   6 +-
>  10 files changed, 142 insertions(+), 95 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h
> b/drivers/net/ethernet/intel/ice/ice.h
> index b562128e7024..9041b4428af0 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -109,7 +109,6 @@

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
