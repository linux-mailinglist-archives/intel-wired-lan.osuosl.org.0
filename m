Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FEA34C4A8A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Feb 2022 17:22:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 214D3612A6;
	Fri, 25 Feb 2022 16:22:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AghJUP0c63j0; Fri, 25 Feb 2022 16:22:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 05BA46129C;
	Fri, 25 Feb 2022 16:22:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F0A651BF2FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:22:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DE1EC6129C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:22:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id upyfP9J8S7vQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Feb 2022 16:22:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AD656600C5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645806128; x=1677342128;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=n4ZLyzcJTIB+ok7jpGH4anqtDeA3s3wce4we4fhK6Og=;
 b=nmLB1V9E6A6b3m57X2M5TwFVk1xeJ0WoOuOQl3BYgKpBpu7hB6JSoucb
 KDnJIwH8jJFVnlItJ3LrBuZqfeLxRDeCAXG4fyH6goA5CYo+hWtlUNpjo
 d7rlrxnlsGeFaxI9+knoy6DtJW1vwZrqnchxYOfBM2loswgSQpCMs/oGb
 qowvagR5Rrpu1O4OtgQCxnEGgH/fuTFExCjsPd8Zzb5coYaipsvyAYwsb
 3eCCKSQ2JNbBAPAq58Hy1CgSDOnjnIFRUyLF8D8z8Ngv2cmxLda/lV3pk
 lRzXuwedi1pPQ280LZ+4qDoj2vJWJ5fal08QjrXvKYg8C24hPVJWbxXfb A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="236033721"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="236033721"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 08:22:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="544100808"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga007.fm.intel.com with ESMTP; 25 Feb 2022 08:22:07 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 25 Feb 2022 08:22:06 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 25 Feb 2022 08:22:06 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Fri, 25 Feb 2022 08:22:06 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 25 Feb 2022 08:22:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RzA1ZjO9X9jADQFt3iEd+SkfgoWCnYVPRPAB+IkrzTibJeWi+9BvrAIyYX7ReUTN7DG997sc3tcM5JHS+NPb0cTv4PVrWRFzzuA2K+QlPgqu/0DXOFbvbjAkpiT2ZiK/z8hYcBBD867Pz/g5wRONjxIgLehQ7x3FDrWC+zdTR2QrZNFUNoGSmki4EknzlgGtshDG22pMqY3WFnkfoTYqfmLbCXwpIuuMKq5HWvDg3lyZ0UKDieD2KHAwgeT0czF+oGPydQ65jBHbu5g2u+g2Q8Lw4BiISmyp5QkmTtYMqgXDyzi1hMyQ5JoecTNLK5WdnBkt8afu5YOyJ/uA81br4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IG3donKXl4/HejR0K6PFb/cRgFTJZLOf1y5Hjh2EK9Y=;
 b=R5krlXWOPpIDuX9+yebJ9ln/a1+ZCqbG1di959a+6LqhIy/DK0MjYCS4RcYxH9zAwayHGwo7udrPanU9flek7BZmPqaRMQKYvKWfULkm0J5QHnfB7ml8VFnuSPfIS5XEEvTMSPTlvYwrsTaEymv8vJbykj2FRnwIwNDb2CZJD3lasy4Txcw9rAoEA/K0Zg2vUSDB7xOGNCh8AtnfRN/TkuwMIvTUmYi1MQ6UalCzkOmYDyMZOWyW8viDQjJXpN/F8M0G8khEtp5uH5C6t5AayugYjeYUntBBlFbYfCnQJKb03VB3m69gJKQJip2CU3mnQ+iwmTe7Sq7lO/Ebp3SeVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by BL1PR11MB6027.namprd11.prod.outlook.com (2603:10b6:208:392::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.22; Fri, 25 Feb
 2022 16:22:04 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.026; Fri, 25 Feb 2022
 16:22:03 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH v2 05/11] ice: move VFLR
 acknowledge during ice_free_vfs
Thread-Index: AQHYI32GjjGYGbwnOE2ViGK8cJCmWKykgJqA
Date: Fri, 25 Feb 2022 16:22:03 +0000
Message-ID: <SJ0PR11MB56296CA36A8971CDA8CA4A09AB3E9@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220216213738.3826664-1-jacob.e.keller@intel.com>
 <20220216213738.3826664-6-jacob.e.keller@intel.com>
In-Reply-To: <20220216213738.3826664-6-jacob.e.keller@intel.com>
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
x-ms-office365-filtering-correlation-id: b6ea2453-d808-419c-c9ab-08d9f87af597
x-ms-traffictypediagnostic: BL1PR11MB6027:EE_
x-microsoft-antispam-prvs: <BL1PR11MB60272FD6FAB76920BE4CDB3AAB3E9@BL1PR11MB6027.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VRF8nAMnNZLS4z6TReBfPjDQf1tkGzdn9kot/mApfKEJYvdS+zek87FMo+KAquc5F8fjJe+DzcvthwLEGQgiLcOnUG55ODh4XmuprPjweoUkYcLp8goIAlR7BJllJWUlRR1GGqxv8H0+NXZqwv5M9RYHnKB95SdhTKyYVOOKR3HNMrKPPtp7zdZEjwuaJEkO47VjyJcavVMGoTmIrocng89sEjJ5GJlTANSrwRpiOuuQIN7l9CM5sEp45UygPOQTEDbl+SdNjJI2gF2qW6FXOA9Dbm9wkKwyuoGWE/3w9Orm4zykxVW89ug/hpLPIeYe18OgUe4RK+UPpTjVbsCxSadasshkzca1u42vNYH4Otju0seWRvHxdJnI9typcF3KLY3yy6Fe/EAROpM12BxiyJtLhQgOJvzamq1nMQA6E6BITGXXLiB6jNERO49PIQGGpKen/NoTF1JgliCIh5dccToqQvAWBc0MUiJD3o+/NQOrgPaO6XlIVcaauFftL9QHFvGafF4cuoF9vj6mzHMxvihOF/DGZOZR7v2dfpRifHW2ISSawPhTE6W/sg5J1q8swXT4JfJ8ZooXLzAVqmbhsOp5FFBC993L1IK747gtzUKlexrtYrQzLrJMW5ekmowgXcLrt7OQAtonUVLFNSCr85VaOy5gHjKl5J2CBPgGUuFh1VgeaOInj/NkiQHMT0Xm1kLvBQFxjJsIp45E0/ck1g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(508600001)(5660300002)(86362001)(9686003)(122000001)(82960400001)(38070700005)(71200400001)(66476007)(7696005)(6506007)(110136005)(316002)(33656002)(8676002)(8936002)(83380400001)(66946007)(55016003)(66556008)(76116006)(52536014)(186003)(66446008)(64756008)(26005)(2906002)(53546011)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RnejdH5LsDr+UjjKqiWPmKjgUs3kkVSIi9H5OkTM8kWmZl35tFdeJ5GHhrLS?=
 =?us-ascii?Q?wJK93xvS5LAKti1FV5guh+10vvygA8LI7c31qpipDZwYG905anRDvdtcoYi5?=
 =?us-ascii?Q?uhQ6TdAZyJICKgTHF3iiDXiG0GA/xNPJlmRdCHOEoYve5pdZ67bh7jpNSN4u?=
 =?us-ascii?Q?MMctRq8WU/E7WghLuibQ+gTPWI3XrOiuYOSWKIhgrgBwE+rq3byQqSFbk5Nq?=
 =?us-ascii?Q?3HL2LD+vDfzEnbgcMbU4RfF8O1sEXUvBv8O/ENsChBcg/wKGxB5vyRH5C7ET?=
 =?us-ascii?Q?4DIUVNXzLWcLGjHXWJs6xXu2Pt3tvHj2gDD3PK8Zy3oHvHA2R0Bgjyrj0J5Y?=
 =?us-ascii?Q?jSzdimianmqgnYenpmuSTMJGN0llO9HmAifBFQbpRXm6s0IJbpHzUVbxeCZ/?=
 =?us-ascii?Q?kfJM7kMMnE7GJua67O0qeljjyPu122mzPDfGR/mFJieawSSeeiLjguMAI3jh?=
 =?us-ascii?Q?Gi/dgmuHFREuq5iqaJHfY0uuGBKGeKuJqnb+Q77ZJb4uARdo93zMp7JvbHQN?=
 =?us-ascii?Q?Kv0vb5VOykQfF90sc9goDjKO5Cpy1rme7OPzVUBSACDQBbM1DrZDcpcLm+eL?=
 =?us-ascii?Q?Y/FY7aq0QhvMkywmlgpNi9TPBgKHM8AEJqsSy8Sot6N/expqiWRNhKVT4al/?=
 =?us-ascii?Q?vSDG7G+d5qTXQeOLnuGhgFg5myNdUlRw7QWQ7VdlqJF/LwBz9hUye4LbPUSw?=
 =?us-ascii?Q?vJ14M5MqvMs6olOKwDjPfYmmEnDPztYpuXrSCAgKAemb1dXw48l6NoZ7J1JA?=
 =?us-ascii?Q?yns+JvyUimfd/Mjm9B2MzzfTPra1jDQUyC8PNXa4eaRaaHNDaQKJqcx716Wy?=
 =?us-ascii?Q?vNbDbh/OY40C4f9JCapzGNS+kFHLH00hv8W3P83GXBoLLS+tzWXmK9fjqtHi?=
 =?us-ascii?Q?ilWnx8AHZ7ll2bosPmwSJfHRTAPF7hfHW53wNH9XwqbwUpirZS7emd3Bq1mC?=
 =?us-ascii?Q?R5Cps8Unvz2yc92+1/Jiao2eYvdYsO3SUOobvA6gsSzCEBve1nx9LN6ozFtu?=
 =?us-ascii?Q?7kLjF/S0MK82OkQ8X7zbGMWGfQhw3MjMQXuB4snAikfFi7RJdr2TjIGbQDSk?=
 =?us-ascii?Q?dzeVsMYYp9rX3dUlyZVr9AAw5gkH2Cf5I9tgTopHJrFRTXH6Z75Mpksp7TZ1?=
 =?us-ascii?Q?S8F64HQa43JDJyI4cfBJPK6M2HaXc6bkIih/Brofi48nY8yJnuCWimD6Pt5u?=
 =?us-ascii?Q?Gbd2F2VvVba+JL4BYWUK94FI3uR+/dDfGWAfSDUgeiIBi2CK5939MqS6ZOHO?=
 =?us-ascii?Q?YQ6N/4sR8uFt5j/NOXO4CIuSna/6kIxJZRYq0Ea+WzFADRF/1JCjP115+LCb?=
 =?us-ascii?Q?DAk5BOyyRnjC4pNWHtY/4uiVp+RzjloV9rhbmCYGVUAaXxAGYjPsbzHjees1?=
 =?us-ascii?Q?bFyYTCFeS278Vf+kqZXGGiim/oPfiZljS9zdQp+8kbdXOIMWTHRZQpIbCL0t?=
 =?us-ascii?Q?3bbjMtb4zlMG4vSpBHeHlUFEfXihQSocHZS2sLyl4DPCtAUdDIi+AK/bNk9n?=
 =?us-ascii?Q?mgOj/XHaeBrWYOVLebiOVJkn4rG/4Gt5kxqqnFf3yY9WBpOVESB5CN0yKTak?=
 =?us-ascii?Q?Pe1D84MLRpXlqYJ1/mEMhYMNzDu5DQ014Qc/QmtR0wOFnXDl9WadDEpLMJ6S?=
 =?us-ascii?Q?jYUz/3onkMIqXYLYZP5W91iQXmVKHld+NaPFe8jeJV3P3pUClHlgjFxTni11?=
 =?us-ascii?Q?iZFuxw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6ea2453-d808-419c-c9ab-08d9f87af597
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2022 16:22:03.8918 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qv+/R2mgj9TdveK/N3IT8/rIARpn23G1b7pCzc6youRQKx4posWzz7i61PURYKKea9AGISsMuWtCPCJRYaepSWoxpRWo59vT1z0aAM2BV4U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6027
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH v2 05/11] ice: move VFLR
 acknowledge during ice_free_vfs
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
> Sent: Wednesday, February 16, 2022 10:38 PM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH v2 05/11] ice: move VFLR
> acknowledge during ice_free_vfs
> 
> After removing all VFs, the driver clears the VFLR indication for VFs.
> This has been in ice since the beginning of SR-IOV support in the ice driver.
> 
> The implementation was copied from i40e, and the motivation for the VFLR
> indication clearing is described in the commit f7414531a0cf ("i40e:
> acknowledge VFLR when disabling SR-IOV")
> 
> The commit explains that we need to clear the VFLR indication because the
> virtual function undergoes a VFLR event. If we don't indicate that it is
> complete it can cause an issue when VFs are re-enabled due to a "phantom"
> VFLR.
> 
> The register block read was added under a pci_vfs_assigned check originally.
> This was done because we added the check after calling pci_disable_sriov.
> This was later moved to disable SRIOV earlier in the flow so that the VF
> drivers could be torn down before we removed functionality.
> 
> Move the VFLR acknowledge into the main loop that tears down VF
> resources. This avoids using the tmp value for iterating over VFs multiple
> times. The result will make it easier to refactor the VF array in a future
> change.
> 
> It's possible we might want to modify this flow to also stop checking
> pci_vfs_assigned. However, it seems reasonable to keep this change: we
> should only clear the VFLR if we actually disabled SR-IOV.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 27 ++++++-------------
>  1 file changed, 8 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> index c469b32f665b..7ab4e7d4cfb7 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> @@ -536,6 +536,14 @@ void ice_free_vfs(struct ice_pf *pf)

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
