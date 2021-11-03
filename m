Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A50444925
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Nov 2021 20:45:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E4265404B7;
	Wed,  3 Nov 2021 19:45:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cSCINjjDuE9o; Wed,  3 Nov 2021 19:45:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 50B13404BC;
	Wed,  3 Nov 2021 19:45:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 267DE1BF3D1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Nov 2021 19:45:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 14CA980FBC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Nov 2021 19:45:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RfqiOdq5NKhp for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Nov 2021 19:45:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DB0EC80F94
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Nov 2021 19:45:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="230302849"
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="230302849"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 12:45:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="578319014"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 03 Nov 2021 12:45:17 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 3 Nov 2021 12:45:17 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 3 Nov 2021 12:45:16 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 3 Nov 2021 12:45:16 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 3 Nov 2021 12:45:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E4yfsB3iFwhbVu2lVVsGjSSCLx0qKTKv6idxAJdQjoKbHubiY3+ICLXJWo9JRTu56VIL5OOItlpserLPhbThYXgWncpBuXVatD68E3zWi5JqimE3Ab/08qR4jozc/T6W5dThPQC3Uv/ctlTsyqZdgFoOCTP4Ckqw8EnXWHjkKGIMvCNzjHnzgQqO/+Bu1s+v7evGfwYzqbom6WGyZ1QKGMlrpnBy3Yub5s1qhAJMeslFCwcZqd33m7CM3YOuLloQ/dKYh/2THXfzl7PeOo/eqnK+DL7raQaKwBYmYvWp097M6XNn9WA0BpSLUIl6qqXbRAKWra+IJklPrYaCtvImrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OcKXd9kWE6h2MH2ccczbBgqdlEok3OG6tgSjn82l+Cc=;
 b=Bpfxkj4/qUT5zmBELrtF2H4iw9R7BVWuzyq5tU1jtSSH30fLCy7HrBB25WJfA7euNC0sbf+8MgayOTqxP/CDCrzBZ/iasSyi9Ev51a5RaRUJCOWl4FH2jbyqc2jdGX/RLkVaI/RioLgPwe7yhfQilItXNaVhk4VHMHwyZZvuZQ6Ew/i+7E8WPwDOYrBiY1z2OzGQvrm5OgYq+C8yCVl2auasGILyfugcWYYmRDNqvuA2fB6E6BkRIV1M2+5FXxu7djTvP0ja2UpTQcDFj6WMiSXuP1zMLbP2UeYoruuEPVaC3FoXlChMpVjmDSqR6egEQtFbByJgZ0aUxtOV5eL6Jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OcKXd9kWE6h2MH2ccczbBgqdlEok3OG6tgSjn82l+Cc=;
 b=kI3f9wmpS84dfAGreEDHmSP2dHNmPAn4HilFySF1svfnFpyx44i3tbCdwRsFp3XsVTJt7sqFEX8/pwn2L9m2JuE5Prg+HSt3F3cWrGi3/fC+6/fwtCjpxNGpxyetZLms2bwfcDNJ/W8Sk1n6BHv9B108vi6qubyvLxAOofnfy4s=
Received: from PH0PR11MB5144.namprd11.prod.outlook.com (2603:10b6:510:3e::20)
 by PH0PR11MB5045.namprd11.prod.outlook.com (2603:10b6:510:3f::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15; Wed, 3 Nov
 2021 19:45:15 +0000
Received: from PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::f5e6:293:84ac:6f0f]) by PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::f5e6:293:84ac:6f0f%7]) with mapi id 15.20.4649.019; Wed, 3 Nov 2021
 19:45:15 +0000
From: "Kuruvinakunnel, George" <george.kuruvinakunnel@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 15/15] iavf: don't be so
 alarming
Thread-Index: AQHXWWQHrk2lP+nwYkahiY7HnMsDn6vzI9xw
Date: Wed, 3 Nov 2021 19:45:15 +0000
Message-ID: <PH0PR11MB51444B9CC8BF88F0FD0F1E94E28C9@PH0PR11MB5144.namprd11.prod.outlook.com>
References: <20210604165335.33329-1-anthony.l.nguyen@intel.com>
 <20210604165335.33329-15-anthony.l.nguyen@intel.com>
In-Reply-To: <20210604165335.33329-15-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 02d35674-2f95-4750-3079-08d99f027561
x-ms-traffictypediagnostic: PH0PR11MB5045:
x-microsoft-antispam-prvs: <PH0PR11MB50453EC45EA643CA50AF6B43E28C9@PH0PR11MB5045.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1728;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EW6F7ofTK0jQJ8UgoM3Q7a9VYoNzU9XVjcEjPtZi5S5cm1zittV1zMppmYlVzdmS6fjrQjajqPl4Z0l/MRKzHzI8OTVWRwf18qGndBmKr6gQpwWP0ww/jvmWbxNelg0yqDT5e5AneU4JHhDRCIAQE6vR7PISKxUz9UW32e91Sbvn8Vemy+VYZHDsPpDWD5CyLvRNQIbWRvKWUxW9XTUg1tywaIK8a1RMt6UBHEfdqGLCIT8HxrBCmrSQ52ASQN56AOkfftlMjnuhsc1eaUYT0IHMdbZCfKHJ15ttwVg8ZiZdgHBe9UVpSL8x4kSPQPLAeN3KZZg0DhZWxGVeVdMZDR+xJahnYslqpKAAS1EKKcpLQNLyfQBVEafTgW1OLRdn/nLVtlLFWPAZeUcWO7y93xS+2e5BTVCNdjai57xhSdZTIx6rFWUBC6ZF+5Em3J6Pv1A4cVgjapdtovfM4E3Kp2c7Cvio4CDazzXywijc1s9AUcL84yjK+8EqyPvz3XIa8YSPAcow8u8FmpaMv8HF8LpNmwec7R3EC/upPfi2RAGf+Vz5VNAdH1VvpK8qoCIGrROra6IhsCXbfvI6x1/xM0Of5Xd2qjHWtLSOrPLM15tAjjaXonnk+T2F28AuTNm152YAO1lQ4O4RJ+Q/Oou5PI8dHLUS4rjzNl5pgkx0ek9GnDMCy9zwSG0LRTrGdK37
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5144.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(508600001)(38070700005)(55016002)(4744005)(9686003)(122000001)(71200400001)(66476007)(76116006)(26005)(86362001)(186003)(66556008)(66446008)(64756008)(66946007)(8936002)(316002)(52536014)(8676002)(6506007)(5660300002)(7696005)(4326008)(53546011)(82960400001)(2906002)(83380400001)(107886003)(110136005)(33656002)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZhrNpaP0Ex0JXyZk3xT4igpjMQPSYyIHxoiqvzGjFY1OcRwTmuaX/hIXbw8B?=
 =?us-ascii?Q?RMKDpFdGv4s8/NBarX3lsnPC+5tNsr83g5jb5WR1WgLQzhsPS5K7kxhzSze2?=
 =?us-ascii?Q?MlaNcu+vCSDw0RMgsFtRrrVstcqYwjyucTB2V1CD9OCn2muy0wAhh06K5U6k?=
 =?us-ascii?Q?WLd9A+qut3pHzaFvx5/Lxgg8uWE7fbJr5WpbWDO6SGCVx5xJC5mecTVEasoG?=
 =?us-ascii?Q?oNFYUfRNAmRoYq3Wuz2SCztl3epL5ya+OBNtnVyVEqciwEuWyf85YO+3DPfl?=
 =?us-ascii?Q?EmwQOp1PSVhNZuqV0h/RD7jcffIzQHWQgOMDVcdxd5xj5Vd02+D6oaHTcCkL?=
 =?us-ascii?Q?n6WsTOp3xPaxKB7IJ7Ny+naEWZq1/e3Y3YD2buFfhQND7WUDvDLZsR1lA51S?=
 =?us-ascii?Q?gX/r1WoRomBbIJyeI7OK1sdg9ToNrlTbGYY+e4j1yTSwgP2GkHEmU5xdAMXy?=
 =?us-ascii?Q?Upk2o9vOC4drO5wXHZ+sd4LC4llXxvUiAjnj5p9N5/19HsiXdmvpSPL12nkb?=
 =?us-ascii?Q?MTNaE0CX7kaF5J0BCuqcWbeLclwaHIt3EjNHQCSuzWwSFqCqaI0kwdo2MsM3?=
 =?us-ascii?Q?L3GRIbXcOK88+7rQJNhsPSvNa7zrhNKX98QVAWVB3tn9WSLHPMQBxu3y15F2?=
 =?us-ascii?Q?GIEznv1sRDJ71oE2o0JGdNF4pfT8VmKXaR7AYJHjOwznboFYwMxHoj/NVuKm?=
 =?us-ascii?Q?zKBBjrSZlvOnB4etiG/d8onRpYZPTScg+H4U+J3rKRZmi9eO6qzQCNMRqazy?=
 =?us-ascii?Q?p6EmAtiAwcLRr6vc7rM8Nt7FQAXgNBXLS2bVOo0pa9lZfmgDP7F6vxAgbqC4?=
 =?us-ascii?Q?iCxGQVGLaNMec3/Whhy1CHvC6clfBdOBwTeLbEzpgSNlk/ljyzKST8tH71VC?=
 =?us-ascii?Q?vYFv+KlOuwyWNkLUrB8FNbjvWokHEvcR5ZOAbBp2XXbvg7lkfsTuzOI6jagy?=
 =?us-ascii?Q?CpnlzK60NKvFnWVK7XrEEYs67TPTKSE/QtpYX6xrpqdgZpVIv7qz3PKIdaCn?=
 =?us-ascii?Q?wO4RBuWirB3Ob72vm3fTlqdSihkI0ouHJl6NqBBMZv5992lOKRKu7PziZk5u?=
 =?us-ascii?Q?kdMMSm7wU9AScqaLDoy9s47XGyllbyg3xsTEHAU63sBlJ/XUyeVjgVj+zBfu?=
 =?us-ascii?Q?xoCyftUBIRzIsKifVHQf9RG07tgTRQl/I6IXptaTqsTcbxrb0gJGsEanqrql?=
 =?us-ascii?Q?JBu0VagL57s1ll39A9vDc6mrh9lwPlFZhaA5Ho9g//AV/xWvpngYvoCzSp5s?=
 =?us-ascii?Q?NM8vmMmcLEumfPnCK8eD/yWUXAyAlpunnHUZMULXrRn6oQGJ4556L57uHT9q?=
 =?us-ascii?Q?o6Z0e8sKoFlyK0paVxFipjHnMBwBv/Yit5IsEVZJSGPfgk+CSbkC0UfVi/K1?=
 =?us-ascii?Q?OW6PcfQDgSXLzYHedm/YnskuGWcFDeup45b/TfLoZDziT92yMNmqVVC7W+AV?=
 =?us-ascii?Q?rfVDTPIQFp8n/EaP+3kMgcsFooet9SByvgq8+DXjMqYUe8GkK57PWxiF3WyI?=
 =?us-ascii?Q?vt/EJXOg78wYy0mCz8GRJT2dp9/6j0E9RvUTyuYcoJ8OPjjLv20NlbL/kBo6?=
 =?us-ascii?Q?2BjGR4KtskSq7rvfe94JoaahEJ7d8E9Dmgr1GJ2MLKr4OFM+uA09teujNPIS?=
 =?us-ascii?Q?BtmiNyZxbHC0oHkrwqbZ5Y/+tW8LKVafmQnb1rKM7gAdKwVSQ0RsUsQNPW/m?=
 =?us-ascii?Q?xmrV5A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5144.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02d35674-2f95-4750-3079-08d99f027561
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2021 19:45:15.6903 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q1fnMaMPHmrdgTgi8KDM7t5yIpSS4LT5edYBPCLJ3IOLt91pOddqbMXEwdR7MHcHAFU7iiyxwxT03ZbZ4ygDzhJR7wf+QRcu2whu/3RETZk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5045
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 15/15] iavf: don't be so
 alarming
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
> Nguyen, Anthony L
> Sent: Friday, June 4, 2021 9:54 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next 15/15] iavf: don't be so alarming
> 
> From: Mitch Williams <mitch.a.williams@intel.com>
> 
> Reduce the log level of a couple of messages. These can appear during normal
> reset and rmmod processing, and the driver recovers just fine. Debug level is fine
> for these.
> 
> Signed-off-by: Mitch Williams <mitch.a.williams@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c     | 2 +-
>  drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 

Tested-by: George Kuruvinakunnel <george.kuruvinakunnel@intel.com>  
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
