Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AF813538D2B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 May 2022 10:49:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7B21C8403B;
	Tue, 31 May 2022 08:49:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FaqYyCQpihPH; Tue, 31 May 2022 08:49:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 66EFB84034;
	Tue, 31 May 2022 08:49:25 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5F8DB1BF313
 for <intel-wired-lan@osuosl.org>; Tue, 31 May 2022 08:49:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4913560FE7
 for <intel-wired-lan@osuosl.org>; Tue, 31 May 2022 08:49:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Owwzf8eCbpEp for <intel-wired-lan@osuosl.org>;
 Tue, 31 May 2022 08:49:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6C36260FCB
 for <intel-wired-lan@osuosl.org>; Tue, 31 May 2022 08:49:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653986959; x=1685522959;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4B1dDN7AnKz47Jbz4oYjARYb2FjBnHjcYgJ6NN2uY2Q=;
 b=hxkhekvOKRc9+3VeKmkPm/epYZkLVGRKR20RMkhTXcN1qyE2QtUIHbTe
 DlFeAIqmlS9JOmINvG+cJ6OWbKtIc6a/KLVat8VLFQpbVCxaFGB0WsUrb
 /FBECzm4fVIq9GUqHHZU6nkLOxPtsXEYnLloFZPyOI7/HLPV61Q19LyCa
 lx21HkEFD2ciDR+DxLZkEu6+Um1C7qiosmNpkx1ztnSR+DGZxpqpy4c5E
 MqSP87s6utDlE2ZEWehYkWDxCW0sBWnd78iAwXTXkzxjEqLye1ea8YxDt
 eThnM5CWglaPW6rfAdXXUwPxxOJ9ubOIInaXTnWC+Oq07L55CvI9OFDAI w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10363"; a="257256945"
X-IronPort-AV: E=Sophos;i="5.91,264,1647327600"; d="scan'208";a="257256945"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 01:49:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,264,1647327600"; d="scan'208";a="576306193"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 31 May 2022 01:49:18 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 31 May 2022 01:49:18 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 31 May 2022 01:49:17 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 31 May 2022 01:49:17 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 31 May 2022 01:49:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UCvh0n6rOZX7rbkpiDsR1N9OF8tYznh367vECE4H7Qv12RgMFDr+tvIRsvAC9BWykbOJ1/WMtJAvL9tYYv6+GTYQdWCTHBAfoVnXZR8uSEewKYuBulbs0YdlZRMSjVSb/ItsrUKv913zQnZUwZ8ff5PaYKxRGeWYJ0K2QgA94dv+MEguaHnaB7ttztpQSxIr5JqkM9qqkddLVu7KxOopOmPAbX2Ib+fsfOVwslyHewhuEGmIO0ibd8OThMl0Ivnxpxs4FmceFCkXezNpQm+qSnZoujvrwwlUwuR8ESvF+IF0GDrpj+D4Ve1b3Fz+xBbD75LPtq3N4b3YNHwUR9sHoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uTyVl+lIyaSxFdrjpuEm1hw0c/18D2G9+zSYjPnDkU4=;
 b=RvLOlAWmTewh6ZZhkYZJ1rfjlHdtQv1L60lDiEE7rVNo7VVZ/v32F51hpybfr2b4U2rbrFvHC4BibBHrOf/ocJt06XUN26PZIqA6i9nAcHZtfHLflABzpBTQAGGHPRk1AMuQC52tR3qcbJSxB42EU+yI6Qgci7VfLqHZvSVMTmo48hkbJuivyO+zWQwxOUp1nsWoab1ryTA+xIP5bNsarRcSi1uMOCAVnGfYscTGvKNPvizt9cH5xTIYjJH/OTybi4XHqXfHyVFehzVYgcCl4GuGi5xWhrRtq2kQcGor2lqhZZJobBZvyS5ZpAR/bGbGh6c40EIK5w1WfwbzOoqRsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM5PR11MB1915.namprd11.prod.outlook.com (2603:10b6:3:110::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5314.12; Tue, 31 May 2022 08:49:15 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::5110:69c8:5d4f:e769]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::5110:69c8:5d4f:e769%4]) with mapi id 15.20.5293.019; Tue, 31 May 2022
 08:49:15 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Wilczynski, Michal" <michal.wilczynski@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] iavf: Fix issue with MAC
 address of VF shown as zero
Thread-Index: AQHYbDuLHVR+aIXg6EaacIL1cqS05604vgUA
Date: Tue, 31 May 2022 08:49:15 +0000
Message-ID: <DM8PR11MB56213B809A91F0EBE2B6D80AABDC9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220520111927.52384-1-michal.wilczynski@intel.com>
In-Reply-To: <20220520111927.52384-1-michal.wilczynski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c8a5cd57-4acf-4bdc-8921-08da42e2715e
x-ms-traffictypediagnostic: DM5PR11MB1915:EE_
x-microsoft-antispam-prvs: <DM5PR11MB1915F87D0F4D934DE8E77697ABDC9@DM5PR11MB1915.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CY0m8lnGQkp4/1+8eL5SuBMjg5bEgYVfAyCLsghXA/UeFbUbBQidKcBf/tEoYhHylBMNvOUUJ4/mNYTv73+YPYEI9Y1orb97zzwswNDtybjsMGLfZqYz2w/XQLZVMWkcTyRRqGGu2VtyVyAFNqCkQwodZlUaXwFLv5YlHkb8qNApTqYCdXmwu6Q5UHwBBZQ5yB7W0kMhnzFZ1lJple0RZWq4M8wc9BXDbH4CJY6cgEPsh0yMo37B1LMmrd/U4TWPbL27gQO2xlzguKzEPHIa+ik09VG4gw4l2MFaYYPhknhdh3aU58FjAeYTF5V2Ff1lK3WH/kMB4IKdXzWa3yCUSozyyVRKvn0oa0zelyZA5NwyTIHyeKSNSzQYOrITe2YaWYVvV+WxCObHOzd6P4sinhsAXBXBFtrwdYNn5kszdWHyhm2BdfDAWeknJVGr11FMRcqX5kV9uKPIwx+yvjyFtmUvKr5WK5drOKpky/c3aXMhkJKlK0lyM6sAkMEtL7yahWV6+eLWkwD87TtCPUT5CENf7+PB5cnjaSX07pdn5PCdM0uoT0yq4sAm7VRclLRb2CaKM4JP8QEm2iZNgS+rw8psxi2ShLiqCDSIZClwyNg0FO3l3K9Dwxezg4KIgvdgcGw8hV34XvuZ2mwXwuF6DkI/r/aKCiu1hngRFBrRffIxfWcdQDMvkFrzma21lWmHpfMlga4QZy1wSOW9pPIkCw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(66476007)(6506007)(7696005)(508600001)(38100700002)(33656002)(82960400001)(2906002)(55016003)(5660300002)(122000001)(53546011)(8936002)(71200400001)(110136005)(186003)(316002)(83380400001)(26005)(52536014)(107886003)(9686003)(76116006)(86362001)(38070700005)(66946007)(66446008)(8676002)(66556008)(64756008)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3q75dy74C5XvNO6/H6k3AJ8GVwhPKD8JjGJ2gMXyaneVX/MvARDy4HnxRpCJ?=
 =?us-ascii?Q?C/I7Yt5Fzrcj+G+SPqjAud0btAJ5vIZHa0N0j0/LNjmHV3bzzZe0zvLZN7MP?=
 =?us-ascii?Q?7jY0NneLkpuM4QSBkhrKz5+9VuyPhR/XWCJMeyF3V2E7wigpQFtukDQQ9u+z?=
 =?us-ascii?Q?mJP7E/kETG1NC9xu8yrr4eXIKPdljOkRz6MJXQd1F5JZL66h0tXcBmoNg/61?=
 =?us-ascii?Q?Q1kreJDHjFqdu9/08k+we+riWrOyuelUFfJJfPplEWt9nfVb7i00Af327UVL?=
 =?us-ascii?Q?zA+23u2+Pkij7Mu+zp/C3sVoVnG9u/ay1wUcdZpUF2iUU/G3TqxplafiHrsg?=
 =?us-ascii?Q?VzT+dV/audBK5dX5aa6By4OMAV5I7pLIIg4gKXrJ04Kdsef/AhUr5B/TqzN5?=
 =?us-ascii?Q?gpN/tKqCFUiHmZBm8Mk4cEabszasoXQa/4Er9E2bWJjXpeGF8oqeiosE5a93?=
 =?us-ascii?Q?akkkSDa51pqE2kFPrV+lifBo6x755R7LrMQhzlJSqly5cpVYKrBG5gqKn2xO?=
 =?us-ascii?Q?pCHw7JSjtI6LQCAn/n78e+gGQT+p2Mr0EP1JN0eISWqgThgNYdANWGz4W4Bp?=
 =?us-ascii?Q?Ell9J0/jSOYvbCiKXPv8NNHm/rFeVI6YdU1TzINyysoXn83o/DvSn3/FVCVQ?=
 =?us-ascii?Q?WAN13xGU5fYyDzzZ/2rIeD5iCittnJxDkUvIoPKAWzSJdwpKdQN0CFwKO+uj?=
 =?us-ascii?Q?yeDSLaT11ZsI8Pua6ujz/ObJkDVPw12PfDqnUTKtlaGT2PixFyvxM1VJ8wAq?=
 =?us-ascii?Q?prSZ5fXDu21/f7FwYX8q3jubi/la0jPZNweCUp9VJgJDfZQBCIB9ToxyXolO?=
 =?us-ascii?Q?RPofUw5OIN7Hr4qbZlteh574TJtVrswHlUGFCgIJEFou3U4hXklbCRN+VGSS?=
 =?us-ascii?Q?Y8mH7oha313q78KwxRT9WmBlY4Dx4PNn/AKaL1wMzlQ2HvPR87vxkIKM9WJL?=
 =?us-ascii?Q?ysUPQUsPQWGEzy2WnCiwFggLkwjV8lWqo+yHUQ+oPjQ74Z5Oto8WiNLZ0UCo?=
 =?us-ascii?Q?cq36+YbbM057WZsOdyDySUM0wlT0xYjmVjHecmZC/Q/U7RA6K7agIOaU+qJD?=
 =?us-ascii?Q?KyaW4efqZQPYriVQH8ibBIAKjpgNHhjMqwS4q5+jxhgMvyMB9R9W65m9jkGw?=
 =?us-ascii?Q?EqRXXEvq+KNZyi6Q9XZ9Sac86nJHC2qYlJK2wWPVZPZwy1R/HXVyf8Aq5svC?=
 =?us-ascii?Q?psa24HWfrkT79Ls1XIHjJkbM+/nYTQac/hOEsDksfA+k5IE8j3kzkH3J19Yw?=
 =?us-ascii?Q?scWmfmEwsKrXeT84u7HJgxgw041JhhgnAFZZEZ61QkN8xz06E6MG/8Cn+fap?=
 =?us-ascii?Q?qKyF1uRGIv+PO6tjrL49x9+bsPLNQp1iLR3FmMBdNZrsSRN9ME1z2LbEN7XB?=
 =?us-ascii?Q?GqoRH3K56X5IGcEGpCTMF0Ct56X5Ntx/BOBUGkxkw6rfpsPGq50pAORlnL7k?=
 =?us-ascii?Q?AN48m23ZpYeEOJsPOfRapZVBc8SSntO+TpFKKttB4p3qu9FmpELr6cPcrhTY?=
 =?us-ascii?Q?38JLZhMU7B1sbweRBn7NV+84RUh1zw1EWuEubfS6PDtIyJ7pGeJ7GaNVvUAw?=
 =?us-ascii?Q?F2JeaWJ+E3RFiTHWA/Bs8Ei64plZkoJXjrCQ7h651p4ASvD3cXHejZxvwfNL?=
 =?us-ascii?Q?42zLC2FBZ8gIEzbY2/FJPP3zmZFpeQK6znwpFTahyTa6qAQjtF6x+VBaK+ZR?=
 =?us-ascii?Q?s7oct2tBbROHHdRJylmZ6uk/p9a45KoRD9BMJAjhg8juUmjQhTPv7IyTgLUw?=
 =?us-ascii?Q?StZ7e5zYClBZNxF6OtY2IX5CccbQ8P4=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8a5cd57-4acf-4bdc-8921-08da42e2715e
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2022 08:49:15.8253 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hBpddxqMw//BdsrzRz5xlPDfEMOnZsoRzLO06Cf6w3ip7BJBoIDoeB7DM6a3NqINYHzNwwLj2mFkflAX/Ij7SaW38eNa+ZSin+RjyTrZAms=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1915
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix issue with MAC
 address of VF shown as zero
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
Cc: "Wilczynski, Michal" <michal.wilczynski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Wilczynski
> Sent: Friday, May 20, 2022 1:19 PM
> To: intel-wired-lan@osuosl.org
> Cc: Wilczynski, Michal <michal.wilczynski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] iavf: Fix issue with MAC address of
> VF shown as zero
> 
> After reinitialization of iavf, ice driver gets VIRTCHNL_OP_ADD_ETH_ADDR
> message with incorrectly set type of mac address. Hardware address should
> have is_primary flag set as true. This way ice driver knows what it has to set
> as a mac address.
> 
> Check if the address is primary in iavf_add_filter function and set flag
> accordingly.
> 
> To test set all-zero mac on a VF. This triggers iavf re-initialization and
> VIRTCHNL_OP_ADD_ETH_ADDR message gets sent to PF.
> For example:
> 
> ip link set dev ens785 vf 0 mac 00:00:00:00:00:00
> 
> This triggers re-initialization of iavf. New mac should be assigned.
> Now check if mac is non-zero:
> 
> ip link show dev ens785
> 
> Fixes: a3e839d539e0 ("iavf: Add usage of new virtchnl format to set default
> MAC")
> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> 
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 7dfcf78b57fb..f3ecb3bca33d 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -984,7 +984,7 @@ struct iavf_mac_filter *iavf_add_filter(struct
> iavf_adapter *adapter,

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
