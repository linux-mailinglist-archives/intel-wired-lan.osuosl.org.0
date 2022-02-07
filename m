Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 082394AC2C9
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Feb 2022 16:17:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4D854400C6;
	Mon,  7 Feb 2022 15:17:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 09kW0jTqN5lV; Mon,  7 Feb 2022 15:17:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E08B64038D;
	Mon,  7 Feb 2022 15:17:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9D25B1BF31E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Feb 2022 15:17:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 89CE581383
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Feb 2022 15:17:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c247_8krcBn5 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Feb 2022 15:17:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6E32A81367
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Feb 2022 15:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644247058; x=1675783058;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rP3vgdViz5bd6Rk+YW2cIfWc7VqJvWxhE9SfGUEnbMY=;
 b=bpZn9FSgv8ydrqIExHphFLKeg5RRMNuD5M95dL51g2DfZRECF9nrSuwo
 npeVarOswH2EO+lVWP7zMkiewZnPBszUBovpvvgONsdwCw7mSJ83qLwcK
 ERM+qd9VQAfGDm0bIa8rtGfrPXEOM2gQ61IGA1vMc+tLA3wdEyZULuW8D
 LNFVlbOfkrb9nBqVOVlDnJArA8xx4lxt/leHYo4QhjbZUFGaoyjPaN9T9
 91K6+U7KW4ZLI3VygfdLSJPgWnWK/otKDBtuPF0I+rFKfO+QBrV26YYez
 ZkA+ay1z2+vNy1k3Rg5vBDWGlkt/UPuPLNd6Dlhzc5wDjKOzo/6o7si2u g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10250"; a="247569719"
X-IronPort-AV: E=Sophos;i="5.88,350,1635231600"; d="scan'208";a="247569719"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2022 07:17:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,350,1635231600"; d="scan'208";a="770660657"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga006.fm.intel.com with ESMTP; 07 Feb 2022 07:17:37 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 7 Feb 2022 07:17:37 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 7 Feb 2022 07:17:37 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 7 Feb 2022 07:17:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hY6Su6NGzIIoUtBrjSLpk4MOKj2y4ZvfH/OOn3kMSkQnb/JOL4wgoyrT5XVcQdfDExIAguZwlERx6YJ+0YuRIrOxeUWSTBmag+lbOrioVpfCih9Be1WAY9b6U14DliGF/MNy477XyCizdzetq3wiPGHfyBrO3yy9DOJWhcohK3P4uBCjbv2cs5zkBRBykt5hG51TxjRLBY5LNtX4kKZgp80FLzTpqvKJ0f/r3hzSVXPMd/dtl4wKswN0nSrQRlAvOqZYNHbWKf1j+s/O5gPvu3uMpoMZOeKUbpYpvCwxIjaHheCrLJFFZSaje6aDo64RcCBZ1sKLk+w7dkMJRkFCzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QRG17xqVU1Hb/x9rtTaRitYkxIV82tMnJsmoQBQMSqU=;
 b=jbA+ttb1BJZTEfWbzg+cXwj+kebGEpI/rKeLU8yC8bvkMsC+9TVE5aj2aytJVNjYpm1vIU96hdS/N/6ua9pfo49MsW/NRkFEI5XEOaygbp72RaLSb215aQOi+wB1/tFlRMqTX+xfZco87zD/n03qXw3DzCpIOV8n6CL5nnkl8qlykgaOXG+eWHWwccKhlzx5L3fibFlXwuZgFnT6+X1wZfuHnwQ0wDeqqjvfHxyxW6Wnq4hb1CIa8j/Dvw6N4OuvyWcyEl9HrSquYMtzAAreJWdYdEI731nV2gUspY2vPK2vwwZTKfY05b7ql9yl7FudZt9I2hxg8ThNlT3mt2SX6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from SN6PR11MB3518.namprd11.prod.outlook.com (2603:10b6:805:da::16)
 by DM6PR11MB4138.namprd11.prod.outlook.com (2603:10b6:5:19a::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.17; Mon, 7 Feb
 2022 15:17:35 +0000
Received: from SN6PR11MB3518.namprd11.prod.outlook.com
 ([fe80::4d44:28a1:355b:71de]) by SN6PR11MB3518.namprd11.prod.outlook.com
 ([fe80::4d44:28a1:355b:71de%5]) with mapi id 15.20.4951.018; Mon, 7 Feb 2022
 15:17:35 +0000
From: "Switzer, David" <david.switzer@intel.com>
To: Joe Damato <jdamato@fastly.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [net-queue,v2,4/5] i40e: Add a stat for tracking pages waived.
Thread-Index: AQHX832X89dSzerApkCX/rRR6CNDEayIhF0Q
Date: Mon, 7 Feb 2022 15:17:35 +0000
Message-ID: <SN6PR11MB3518C39BFBA3C58F8995F191EB2C9@SN6PR11MB3518.namprd11.prod.outlook.com>
References: <1639769719-81285-1-git-send-email-jdamato@fastly.com>
 <1639769719-81285-5-git-send-email-jdamato@fastly.com>
In-Reply-To: <1639769719-81285-5-git-send-email-jdamato@fastly.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 89286931-b8c8-4f53-6d7c-08d9ea4cf872
x-ms-traffictypediagnostic: DM6PR11MB4138:EE_
x-microsoft-antispam-prvs: <DM6PR11MB413885CC9C7AE15B99176C3EEB2C9@DM6PR11MB4138.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 641UQB89V6btyKN5EL/wnH9xAVinxBKRoMWatTEkyWZ9enUU3JmgQ+x9q7XucoVlzpJ7QDA+EXsHAYtHpBw+VJ76wvUg8lui2GnpaQUC6ZqFV3dgufmyc+/mV3EvJ/w+AWjJpNzuOMVkScsYbca3R7z2htJHTjSiB4EQmLUdouvoG+P9nhWqxS0CCXgJNz5bT1TPhkvAEuSCgo+EAav1RzN5FZ4BrcQSikpztiU/vzFc3+7CeaGz/Ox4KXxjgK1Y13/0b9vCsS4aAeQgMlG1NpephU2rVb7eCMIsptb71NqFUXzKNtq34riG5umcKz6PXIDsx/YsgT4+ji4bFCfo49JLigDIPB0taoWsH4YzHWNFSlvOnV3QqN3D4xfrAOMcKRUYat4oPfKPr3tUmOVNXJYuVSIzhESdzwzkzL8rqoADOxphbIPfaj9gPSp9nBBOJF2kKhuELOaXV6VwWRqJnscCsaFBgZDqZ9Tea+UVYt6LetNLQbjZkIELMWkEcIYhWu0MQbXQo50blAeCYRyTI6CaI8EUFMHmFDIvmS7dfhhkomA+vPifDhsVPJdZmzFxgkspC3LJmfCy5OUJryf/kkkhheqplcgrwlUIJuPHRLJaEjgqC+9EtqL6+L4zOauUuO3GF+xgk/O3QbeJjvKtKiIlqFl5OvH+S84II/4vAoFKfOBzp2ZcdOlhlfGq8bqOGTClAMZaPhdlcSo6zSk5LQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3518.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6506007)(86362001)(4326008)(107886003)(66446008)(8676002)(9686003)(8936002)(64756008)(2906002)(66476007)(26005)(76116006)(186003)(66556008)(66946007)(55016003)(7696005)(52536014)(316002)(54906003)(82960400001)(83380400001)(5660300002)(71200400001)(33656002)(38070700005)(122000001)(508600001)(38100700002)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rZfY1YX9LU5SvYj/uVZ+gITIA+L9SEpIUB9un8pRxwyrwRLO/ja5dcPvknhJ?=
 =?us-ascii?Q?xmlIYHRRRqMxGEEMIBO5BL87LSjJ+iIu2klfBNafN2FbFnd+uQ7hABA9l0Dp?=
 =?us-ascii?Q?92JfXZ6ZK71el+uAraIvk6ODNvOJUxAhgSMBXx31z57uzvWJi0IuSUHpoIpE?=
 =?us-ascii?Q?ZB8eqOEET91347pjuF6bMl8g3vNcxmYtKBt5hqFxHPkeqmI9TRsWAVXpfvan?=
 =?us-ascii?Q?LVUJam2JCdhozCImTLnH6OyEmGRXyww4CY7kEI+ZSTEy0PZxLkVx+h5lM7dr?=
 =?us-ascii?Q?+zBpZZHH5S3XJbv3yP+/OZW3+CsW+tZMpBJEpaXlymED/dDQbv7xLmAv11DY?=
 =?us-ascii?Q?nDpSONiRXtPij4XcURq2BumrbXqyavTdZN9M7MG8eV7/eqJ39nbKiWiKweeN?=
 =?us-ascii?Q?MsVLCIOk9RLMRDMBgnUciI73iIHc1saFeS8LDX1m1wUI1TZzj1Yjt5sl2vQi?=
 =?us-ascii?Q?TNdqBJdrJwqykHog8lri35pX1SYuG7KaR1CzeV/KcpQGW51/vzLWlKOsz6AZ?=
 =?us-ascii?Q?Xmwe5ESQ4cNN0Iu7vgJbOJA9VNRIgk5CmDgFHyfqwI3SxwXWblDmNHEi41tc?=
 =?us-ascii?Q?n88BCy+bJGvwrRGrFiYNO7JwtSubdIaLlqRAq/gUWmxQnuv4PoQLmf14SqR7?=
 =?us-ascii?Q?VEtbY9M12GE7drCmI5/rTom7pwQLdj/cybCp7/HuLs5kwmygQ/Z1l3U5qTEo?=
 =?us-ascii?Q?JTyHu0PgTUFnV+oUa4MKI2KvLvtSEPGRYmx2J5uz2GPAWvuHNVuBecT6L8SF?=
 =?us-ascii?Q?aKHMYNPFWHA8DLRuuE/nFDN5EfAnw5uZh8zL3ieyDnOa3rf0JHztyEFA5xAj?=
 =?us-ascii?Q?uTtZOXrH+I9ELA7cmQU5F97rN6q+8UeSn1hru9KMRbuqiduW8HyK4QDAhNil?=
 =?us-ascii?Q?g5CkWWYvwegq3bnuic3zhKlqsWA/Lpxq3h/s3zomNaMkTgvQzp/0wOkG3nzf?=
 =?us-ascii?Q?4BwCQO/BIgeQeWYW70sLeJGEzCUMfRc/noeuECM8KzDPejtr+v4jtH5QlART?=
 =?us-ascii?Q?G2n8jIJN1NS24mT9bTclDLeZYc0oqpxpFmO5Le33oX5xAJ3tc1amAxoaboDU?=
 =?us-ascii?Q?FT7NUax6jiluVaVaw+8N4WdllrErSh/YhpPKZlAE8jl0IZOL+DKZ0TNX64Ih?=
 =?us-ascii?Q?SEe62tasm/muM1RRHA3vrjdnycXGuHowf7xQtXon7e/bvijQDr1AT7pNQ0kO?=
 =?us-ascii?Q?taMSpxyHI2dcJ6JWZWDeYjfV0YZ/hiUYkXHt0rsAc8t6aOlMkgkA8ywbY9pj?=
 =?us-ascii?Q?RVy7L7aR9U1U5Q/bVs/NvBdJepOVBY468/vESKnS02VDuiu8faTtD3sVbW7D?=
 =?us-ascii?Q?/m3WHYWhW8iRRvSCnGhvucD3EbWIrGxGg6OBAkj8W3P7x1D+X/V7Da4KAgQt?=
 =?us-ascii?Q?shtYF7IF9aVdbYW6zDLjeTncMm6fI2ELiCFiEgsRGjz/K6PcbAmTqfBU8wpl?=
 =?us-ascii?Q?JfmQIj044jwiOK/lWymE28CS3jhkO0igwBs7Rn4cDQJGHRebmA076soQNRDb?=
 =?us-ascii?Q?ptl53sQHvuC4qCwkGH3b5Iqrginh4sglvucbrbqjNIVmHjGwe0c6+75svWhU?=
 =?us-ascii?Q?mLlcURYt1H/Z7VJmS4cJ9FeXAou1po1wp9Wr/SkMSGbOrtjLhADcWJm8XPhm?=
 =?us-ascii?Q?HQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3518.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89286931-b8c8-4f53-6d7c-08d9ea4cf872
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2022 15:17:35.5361 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N0hs2ekdKWo1G5PK7t8GMj5lE9Q9t+k/UTVc9ZX0f+/yhhjacHbMoT5TxWVH/rKiXGlAmdiKcmVBtp2qjm0Jkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4138
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-queue, v2,
 4/5] i40e: Add a stat for tracking pages waived.
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
Cc: "kuba@kernel.org" <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Joe Damato <jdamato@fastly.com>
>Sent: Friday, December 17, 2021 11:35 AM
>To: intel-wired-lan@lists.osuosl.org
>Cc: kuba@kernel.org; Brandeburg, Jesse <jesse.brandeburg@intel.com>;
>Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Joe Damato
><jdamato@fastly.com>
>Subject: [net-queue,v2,4/5] i40e: Add a stat for tracking pages waived.
>
>In some cases, pages can not be reused because they are not associated with
>the correct NUMA zone. Knowing how often pages are waived helps users to
>understand the interaction between the driver's memory usage and their
>system.
>
>Pass rx_stats through to i40e_can_reuse_rx_page to allow tracking when
>pages are waived.
>
>The page waive count is accessible via ethtool.
>
>Signed-off-by: Joe Damato <jdamato@fastly.com>
>---
> drivers/net/ethernet/intel/i40e/i40e.h         |  1 +
> drivers/net/ethernet/intel/i40e/i40e_ethtool.c |  1 +
> drivers/net/ethernet/intel/i40e/i40e_main.c    |  5 ++++-
> drivers/net/ethernet/intel/i40e/i40e_txrx.c    | 13 ++++++++++---
> drivers/net/ethernet/intel/i40e/i40e_txrx.h    |  1 +
> 5 files changed, 17 insertions(+), 4 deletions(-)
>
Tested-By: Dave Switzer <david.switzer@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
