Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA9174B06C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Jul 2023 14:03:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6E9BD40629;
	Fri,  7 Jul 2023 12:03:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6E9BD40629
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688731405;
	bh=QBeAsOOalqfmmBgUC+kGOav8s3dXb4UCCXoU5w3cARY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5z4tBv5wORR1qF/G4PnEb0DBm0ZQynqij0iy+Mls73i53Ar5yB+ZHNn66gjzjkKps
	 IYIegIRO/DQMf6qj/q/S/lFwbArWIKRabvFmX0D8rdq380NdmvuL7d4n3ELdPpUos2
	 u933187eg8ol4svnvEFtgYhoo34W1KLi3EG9vtvpJ6gav2UKq9/hWaMGmzWirYnM55
	 JF3OFAZObbNS+bQuvKdi0cQ+O/p46w8L9Fn5riEsedyfmkVYe7aGAbSqMuQID28dqP
	 UbvmLIX+LrhjtZZjCuZiXyvGdSMmlNJuIdjOso+WL9aQyr3RYh0WJDKA3jxF46rJIb
	 YSQE73z6VpERA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 49pmxund17rX; Fri,  7 Jul 2023 12:03:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 01080401F3;
	Fri,  7 Jul 2023 12:03:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 01080401F3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1FD9E1BF5EA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jul 2023 12:03:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E9584400CC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jul 2023 12:03:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E9584400CC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OZcAYnnmQeEJ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Jul 2023 12:03:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 29B1D400C5
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 29B1D400C5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jul 2023 12:03:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="367363581"
X-IronPort-AV: E=Sophos;i="6.01,187,1684825200"; d="scan'208";a="367363581"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2023 05:03:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="864522244"
X-IronPort-AV: E=Sophos;i="6.01,187,1684825200"; d="scan'208";a="864522244"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP; 07 Jul 2023 05:03:03 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 7 Jul 2023 05:03:03 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 7 Jul 2023 05:03:02 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 7 Jul 2023 05:03:02 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 7 Jul 2023 05:03:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gqjJk4CbMcYRLiXOhKj7E5Gr7KIfqIjF3FRUm4NiXK/MKLaPywVymJvoAkSrfNk5rtz/GgDDV15mUvR0h9i+AbZmUDPvWVzqmwkAzaVHXRz1H1ihPuW4pm2ieO1/EkaWtNqXmJvTt39C3eUthp9q+7Vgdg+nE1a6BVrG3xY0cJ3KXx7iqayR4+szbNGI0Zg1nDeFbmmTAB27vNZ60NWaQGTXDPHpYwEWAnM916rQnwkcAjPXksqMXsB2WT0KPH4jiCRkCbR22oD1bRfYy/wE6tUyNjEU9wkYT/mPq/RU4huJN6XjjLcbcJ0tuVQ+8u6RwdwPDjkoi4nY3gciONItsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zbyL39JKExkFm8o4cHdAcaPaDwnurgAdcmj01ivgYs0=;
 b=H4a9y1RJ8vfoUMX4tNCeMBlHQC+wsQTC5HTun2+DXSo/5H2d0YUtrNOXVKTneddDcH11CBxB72vxXr8cnS/Deq457MnQbbBjtqDn4dpJ+STIdThHQ0sOoS+k5nFMvMSPi0j1p5ouQ/3ODCu21OIHHe3t93JDv1FlbyrdUtvOjz9/s4kkM7FaA3WKmGLCRdcWPQBDxXSsBknFFvKil5ne2mJ8KKt2CvmjFBQ88Nodz4//ECUHPb4m3ogilfxDtv4WUO7IfqLx+kbl8cbm3Qlru7UBcnass25IaSCCR0V256cyW9AcWECycg6JCFjQzCv0UDMyfM6gg6HDaRMyyu5+Fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by SJ2PR11MB7501.namprd11.prod.outlook.com (2603:10b6:a03:4d2::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.17; Fri, 7 Jul
 2023 12:03:00 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::93f8:ecc4:eb28:7e65]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::93f8:ecc4:eb28:7e65%4]) with mapi id 15.20.6565.025; Fri, 7 Jul 2023
 12:02:59 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 10/10] ice: update reset
 path for SRIOV LAG support
Thread-Index: AQHZo8XknIyvOYoca0CxTbbF9/DLq6+uTlHA
Date: Fri, 7 Jul 2023 12:02:59 +0000
Message-ID: <PH0PR11MB501368D314374C5ADC06699C962DA@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230620221854.848606-1-david.m.ertman@intel.com>
 <20230620221854.848606-11-david.m.ertman@intel.com>
In-Reply-To: <20230620221854.848606-11-david.m.ertman@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|SJ2PR11MB7501:EE_
x-ms-office365-filtering-correlation-id: fbcfc8b5-17ba-4cd3-b748-08db7ee21bd9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9ShtJbMGWGLZO1WGmg2uIZuvQluoVG91L5Y85Lwp6d/FiBdU0B8u2657HXzHX0NlAGA/6KO012vPcop2Ur9JVM1xNV3lliSfziZujhGpISeoCqXvpWUH14zt2wLZm0P3eL0SPjmq5fSnkLtVkL4rGCWffii0/McjQGtoFtoTODUNKDYvUO1RBY0rpBmmjkTL0cx6j1twXiQkax1hzuxwNSwHyj0kSSzgRQC7RepTLEuXZAedDjqGgoD6I6hsPgRN0V9ORgYbAyXKCVhPac/fyMOZ9ACRi1yLbq1dvnuLYKGs8DTXZ/5MQG78qLIFktX/QiZQAT3rCr57ueSi1CDMcIFP+1J4Xa9BiqFROQA6xfR5aieOxSPAzOlIMGsxLYh/2XYU33xtzNQ+krso4CYl+7Xlm1SVGxc0tNyITM9ifBlZdEvo1DQiUKxhak/n9yOwAtsYucFv+YOULBEES9qpU/vkUZ6fyp5+YYwe9bjVjeDwzqu2Sr54J6OONyQfB2mrn6jgwhwDjsjvM4UmYNqs55j4IHOzDcBKY1RrGDzWgfscBPDiTUBdM1rZ/KNh5BETs94BMACvlJj+fKOFcY0Uh3siU+yESAvHOyZP2LeYJL8AwdsDqY2P66evbxJcrIWL
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(376002)(346002)(366004)(39860400002)(451199021)(71200400001)(38100700002)(122000001)(82960400001)(55016003)(38070700005)(33656002)(9686003)(86362001)(478600001)(7696005)(6506007)(186003)(15650500001)(53546011)(26005)(8676002)(8936002)(5660300002)(54906003)(52536014)(76116006)(110136005)(66446008)(66476007)(66556008)(66946007)(4326008)(2906002)(316002)(64756008)(41300700001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vQxZi0fk9BdtqWtQaIKIfAzk95dvdIiOjGOXdTsgrWDkXfyiweCAhOrVMMgA?=
 =?us-ascii?Q?FYewstMrXzSAe8jkUdEewgeLSp7I5x7JrLN7Go4VaJYPd1SdnUGAio7vwKDi?=
 =?us-ascii?Q?ghdcaYQ2hAcD0sA5M+nFAJwQSLiGiqeS4ikM0PZ2FXDbldj6MnYw3hN87RDv?=
 =?us-ascii?Q?IMlgK8aekf3qPo++TflPDH13khfVTTRw4AZAvjjzpvE2MrQG+aSAW2MrGak9?=
 =?us-ascii?Q?IRBjxhi9SPdKGXxU/XD0DK0wh0cEj5a3p0+9QqlD7VYth++OPQekmkWJpaER?=
 =?us-ascii?Q?fQ6Fgy+qBU5q1z1PG/05zfNkRVjzjd78SP1NNf6x121j/dF1Abl6Ip1jkSrf?=
 =?us-ascii?Q?E1S4Jaye+9APgf6agTr44ulBHJf0lyO0VHXmSYJm1kPNaWW9H8X1GVJnQZvf?=
 =?us-ascii?Q?jVUp9DZOygHLnmfBb7SiLlGaIXdoR0fiiJoFU/w4+7PR0U2X3npU4twPp6Bj?=
 =?us-ascii?Q?zKvonlsIxpN4Zr/NmMptSoZgHUUbQNdJQqOQiTwMismq2nQiURyxwDIrfiMP?=
 =?us-ascii?Q?w05icszWBS7PWAUsYebOKfj76uNaTW1gkDp+Q1SOuEeoD20N+dqV90QXJKrU?=
 =?us-ascii?Q?v/brcwymdyJIGj8ASyHyFfV/imja1o5o+tdGbFkItX/b9GisXZMjWXSHMt8D?=
 =?us-ascii?Q?xnuJiPkyyhHLOU5VIUrL4caUUMVzohgIdIB6dmYTdrWQPAtXohepnJ9uu/SI?=
 =?us-ascii?Q?uWI7HM69DcGhk3z1Wwf4bvqzoUbVs8Eg3WE83V+cUpwRumdbyVbQaZrh64m9?=
 =?us-ascii?Q?z2ltjf3Lb76+8+RxSdjImWVAG8ZSieizNF9teP7FQyRyEodnGixdeml/AH0b?=
 =?us-ascii?Q?5NREkHI/gIAtuj7mQSvYiinIa0bovubmZ9czRACKAQorZP+v7PXFWc69OicL?=
 =?us-ascii?Q?Cn04z54X7i28gYCSV+So0vQM71X9nHHKIZUHgs8Ka7ej5g/JKuQ+dHb0ElKn?=
 =?us-ascii?Q?5+A/ZTkUS32GUqKbmyup1DfsNNVQ4CLHPYoFC22b7FbZWWSbo1/hWq0M2/Vi?=
 =?us-ascii?Q?Q3LBJhZc8PVgS4IWF6PHgeMzT6cli8Z5AUym5q6l3WfMP7Rypuy5+ZWpheOt?=
 =?us-ascii?Q?YJZtmCsH+o7YOhKUGsjSGzKcfwu9XBAlVRj218Kc053ZM3v26xy7S4sVpLOb?=
 =?us-ascii?Q?LrhBYMXYF9J4+F5u86+a1yXz3WzdFXmlqe9CrnQNz+dDyeuywdBtcqSwSnSH?=
 =?us-ascii?Q?F+xNT7J/7h6De/grtrsbKKIrO+07Me6xGWQXPjfmyFTBtoB3WgmhU8xfNyGT?=
 =?us-ascii?Q?yLG8enhW4v33uslgx8+guK5VWce/d/kB9Z2NFC16WxwQkf9lJSTp/3HMP6EE?=
 =?us-ascii?Q?gN2RSII7mw0vR4OhH71E53R9N6ENGHAAprvDKV8Tbm0EDDsuJNneF4/ok+/3?=
 =?us-ascii?Q?bMBfyK9JCtoA09NMfoLpNqPuQuxZKHkHrgz2ZAJ+UpPMsxm+otvtpu4dD37w?=
 =?us-ascii?Q?gySRkxIeORcCO2R0ny662xWzZV+eALn2wj/YRUAH1+PnsvW9pRwx6zpmQAIw?=
 =?us-ascii?Q?fLnZsQTysweOHePbvI7ALyHlnMs6LyotuOY96vaLRnanqZotGj/smJ+YjATs?=
 =?us-ascii?Q?ADC18ZzdE9/F23Lh1zpHO54e9SOBPORAbrTGQEXDg5o9/cU4bai6fZyQVuuK?=
 =?us-ascii?Q?qA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fbcfc8b5-17ba-4cd3-b748-08db7ee21bd9
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2023 12:02:59.7855 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L5sOONsRWFNHaOiF7KFh5c7D5jDKbzSpEyObXH/WH6Xf1mx2hmi77E/S6cxasvfqg2Hc8wpPbE+7PJdoZJllE54LQPPgpb5+aNfi7UEH2BA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7501
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688731398; x=1720267398;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TjUChbaIMGBohv91kBgJCMi0jJ5dx9Y59mpNUIyol/c=;
 b=Px7PTOlt5pmsw5sBMAFFvmL/CMYgok3I0EgWvjZFgOPttg/YqxlhQ+46
 voR/bdwmQqwc7c35RhERb78X63R8V1Htxq2uTWqPUOQ1zHFGvyDiTOvcy
 o+ZiHYoMXgCLtvGz0jYNZ2ZJpsckOvpCWYSN8jk6vkxhSJcVxWQKC7T4S
 BepWqALd1gWtRpw+irzS29Ij0yF+S7d+VY2odPCdHJhPyBlyIz7JfrzYN
 qo8u0nFA4zHJxirIxCycDr5PXu0hEphqopZfJ81nktZNekmLw6ZDGHqUx
 LfmLupIlYnFHCNxPvni9Vdl4EYi6kxcsQoMcgkR3obqMk4XwfoHBitD8x
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Px7PTOlt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 10/10] ice: update reset
 path for SRIOV LAG support
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bcreeley@amd.com" <bcreeley@amd.com>,
 "daniel.machon@microchip.com" <daniel.machon@microchip.com>,
 "simon.horman@corigine.com" <simon.horman@corigine.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Dave Ertman
> Sent: Wednesday, June 21, 2023 3:49 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; bcreeley@amd.com;
> daniel.machon@microchip.com; simon.horman@corigine.com
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 10/10] ice: update reset path for
> SRIOV LAG support
> 
> Add code to rebuild the LAG resources when rebuilding the state of the
> interface after a reset.
> 
> Also added in a function for building per-queue information into the buffer
> used to configure VF queues for LAG fail-over.  This improves code reuse.
> 
> Due to differences in timing per interface for recovering from a reset, add in
> the ability to retry on non-local dependencies where needed.
> 
> Reviewed-by: Daniel Machon <daniel.machon@microchip.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lag.c  | 231 +++++++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_lag.h  |   3 +
>  drivers/net/ethernet/intel/ice/ice_main.c |  14 +-
>  3 files changed, 244 insertions(+), 4 deletions(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
