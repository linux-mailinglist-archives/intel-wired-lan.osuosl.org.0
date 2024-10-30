Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 830179B5DD6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Oct 2024 09:28:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 080E04053B;
	Wed, 30 Oct 2024 08:28:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DOSLrhx5muTe; Wed, 30 Oct 2024 08:28:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0740540530
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730276909;
	bh=Dj3x/dr0Q2uY1utaUzCuTVPHL5WDbWsNGnyqO2B3QmQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=j4WaFFdU6dHT9WS1vi87eE4mVZSrAU+g+ySL/WFFc8iJyaRgE8xHddtxCY9wo013R
	 E41cZGUAIxwsH5HOg7oi141hdfFarw3L1j7rPOqM1NLAbUjWayH4kXBmqvHTcsotym
	 GoGRQ2iDck7xPGLCzeG2+5B23ukGRbZDR0tYXRiLBqGwNNECY5ge3e3Ot0GJwp+Mfl
	 CzlIyZUGkJ0jJvFf4g8EGdv5T7QxYm9+iaL4Xoa51O/E0GZwziEsVeWK4DCGLqnRRB
	 aBGenO366Yqv40oBF2EwDcp9V6UKt5r/RjLVHJBCtv1MYc3M2G9zQwyvbIrjEj07lS
	 KXCrgnQWbTorA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0740540530;
	Wed, 30 Oct 2024 08:28:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0613B494E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 08:28:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DA65E605FC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 08:28:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7_3kYHXu7tKs for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Oct 2024 08:28:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1F66860671
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F66860671
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1F66860671
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 08:28:25 +0000 (UTC)
X-CSE-ConnectionGUID: XJpdxEZSQsKGZb8WPI9WBA==
X-CSE-MsgGUID: 1Ar+sEYrTJaJxvVooQoMuw==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="47440676"
X-IronPort-AV: E=Sophos;i="6.11,244,1725346800"; d="scan'208";a="47440676"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 01:28:26 -0700
X-CSE-ConnectionGUID: cR+8n7bFTFCvNvqSh2+6HQ==
X-CSE-MsgGUID: fDvsNGiWTdOIOXAZCeGVCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="87015497"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Oct 2024 01:28:25 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 30 Oct 2024 01:28:25 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 30 Oct 2024 01:28:25 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 30 Oct 2024 01:28:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AMowBEEyiiJYdmAe9uhAWGPEL0IcVj7N7EOecO9R1w2IIBfFeuDPJ4s+CDYPnn5s+qQ8g3b2JiQWUKpDGWpFr5Sad4jz/XiajmhJIAUWAtWKt0zvAYIBYplFgLsFHYc66RvKNGl5LhUKh6PRaYnzzqamg8dtWWPgtoZ1jj1kxfOsWF2qk9Ljft0ddC+m+9HNMTrlmEgbBcOjk+vJbsaGFXXzYVb8rwHsEYD28yKb8/MmiWktzLSlu/30+R64zosvNOEZC4+SZ9OM/UNN6zMwtffTqeAIRuPe8cxmaKdeyEpiIzg/bp5MQK21x+jzqkQl3emX36eT0jfOHVhz762OhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dj3x/dr0Q2uY1utaUzCuTVPHL5WDbWsNGnyqO2B3QmQ=;
 b=YyclQeV4s1pRXEEk6rZXCCcdhMA3wKz7OGURTy9TZA7dnTmkemY43K+yUeDDL12VjYCLHQbir/Z1UiY9MXEa5eNC7Uoz6Mji+5wzr5vNFjMeg/BDvSJvQ2mYA9640OIJrwluZyGY3a03ehU/qEd/RhHQLmw60aD9QPwLZFuD8ULX3ejU5wvhAMU9Ehy7uKLx0rI0Duewje6Tvc7imY7OnvkUU1oq0ggTJFmAELpc2R2FqnYobHFePRRkWbeMyDQuSCi0Kgfn9G3P3t8BsEdZRy0JpDd6Q9R8Dkz4tcfbWI6VqTqXHhGdeZzR9OV5zSOTLUGpfHGI5mdeCkREt9mUTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by MN0PR11MB6277.namprd11.prod.outlook.com (2603:10b6:208:3c3::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.19; Wed, 30 Oct
 2024 08:28:18 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.8093.027; Wed, 30 Oct 2024
 08:28:18 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 2/2] ixgbevf: Add support
 for Intel(R) E610 device
Thread-Index: AQHbI8ixCLexlBg+KUWzay2ucC78lLKS9dYAgAwN1RA=
Date: Wed, 30 Oct 2024 08:28:18 +0000
Message-ID: <SJ0PR11MB586580A9A667B99FDD49AAE08F542@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20241021144841.5476-1-piotr.kwapulinski@intel.com>
 <20241022162318.GC402847@kernel.org>
In-Reply-To: <20241022162318.GC402847@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|MN0PR11MB6277:EE_
x-ms-office365-filtering-correlation-id: 3d9aac47-cebf-477a-949b-08dcf8bcce7d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?AY8cXq3uVKu3ksC8J3CvBW5ADJ2SsojLY4pwbk0jGyjH7sUxklvWjB6BSv4R?=
 =?us-ascii?Q?7sxaEcpQHg8MqLSas3WqyK3I04RL011MaW1SddwYUm2Mn58p1u/YIqWe+j8s?=
 =?us-ascii?Q?ylcIkwxKuVVbJl4XyiqEBfuc/jABHnAnxpQVB8LXnSF3788JvHbF5N9KtFaw?=
 =?us-ascii?Q?c6EdLj8DT1ifb7xdGfw7XzLuEMwocUGYRoujp74lKgcACJocg2eo+qYC211o?=
 =?us-ascii?Q?6jMInESApYdxEmXJ/HkN5y8KOGaiLNwEvZcPnLt7mbxXWe0PS7Z975hQY2tS?=
 =?us-ascii?Q?wyGOjOGORm0ZUoKzNcNd3nFcuV2hJzfxSsWTzez4gwJVbW6YanLUJ4KxDT5e?=
 =?us-ascii?Q?l6kRehXrouXCtkHFDvy9d7OZHXOKezakozpL+/+HaosSkHtlXXIG8+QPeazF?=
 =?us-ascii?Q?KBJxssKHoBbFx6PgT2gy9lsYciw3VFk0tXMnKdbOFfeDQd6SFEHEWZ3iXqw/?=
 =?us-ascii?Q?/2ikbc53imTmOc9PJvJbgzPFahX4eu5EOlQRBMqLP0jHK3CkF46dJg5xlLAd?=
 =?us-ascii?Q?PV1SFrbcGgchv16rcjd4p88SrQuVA/vQnvu+TJ8JHFJWNP0Npbbsm9NuzJv2?=
 =?us-ascii?Q?BBqdm4odUUpmAMwruyYEIsDTOYHFsBkPjZyReri1dlvr5ilL0b0fCG26MyPq?=
 =?us-ascii?Q?SJH6sEDso+qkldAEW/8iL4loPN5Er3c9ornp5kZiQUV5vbNAtZTxfb458vDx?=
 =?us-ascii?Q?LTM1udjdr4FMj9yAGvheGfCbMME6/sfIZ/3gcKAUEg/w5FcslxOsFeYTeqFi?=
 =?us-ascii?Q?1EVfVIt4Q6KmbWtWUMOIV0vRDauIOFLIawHZquInw9wGciR3Ax0YZ8T2TMMS?=
 =?us-ascii?Q?RQy904IyEkpZgAk9R5Y3+vb8jGXcf6R7Cv+labC9HOyoWSNSaYa/zFSBttIj?=
 =?us-ascii?Q?ystzSTufOw+17t4L2NPezNBlbCubCzj8Le4w2Lc8dEqGjY3FXHLuzqLezPzZ?=
 =?us-ascii?Q?meLOZ4gfZVaFmWuriiT0yEO9YpXC44gvPK0leOnY727FMEBYoN/4m6RONMg7?=
 =?us-ascii?Q?sqEJqGt0ErCP0ORQxU7I4nuOFUtUwWwgz+2XcCE+dD6VehUlW6W5KsNG4OWD?=
 =?us-ascii?Q?AdTfdwgZ6MOjKN5syR1zCIRnWteDujoH1U/P+/6Wb4vysG91onp3Cv/1qiUs?=
 =?us-ascii?Q?fxgtGMRV84gjGFgsz4YLys1vHFm1DuN5z6EColpVpeOg1LFQ0ny/fb8j1xzf?=
 =?us-ascii?Q?J/ocLzjYkUmoTPB09q1MzEGXp8ud6OWD0cC6UjFZ3TyBvVfX2FCSX41fruHf?=
 =?us-ascii?Q?qFWRBPnvJbGhUR3aa51COvI55gYBt6MrehOW6KBxggBiKUuT4cBnVKxHSG4C?=
 =?us-ascii?Q?fDGO5Yt9C7B63gYQQ4CZFpM8QhkJrYxrW9iFCdbOT/MEiEs47VsXydTv5Sfv?=
 =?us-ascii?Q?jtUjywY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+7zacY/SJr4NDjlBYIOequh8QC7sK2Tzrb8U9HX/Tv4f4v4g4hIW/GUk+Td+?=
 =?us-ascii?Q?S2/OLkzicxWmO8I70VEnXqZMl8I2Ms5ZhB+aX2VsLt8iw8390rnMbLgR1I4i?=
 =?us-ascii?Q?S0nKurkjlmNNsgoTgNSf6IqZ5qARvMtOg+AzrC/FASE8l0QEYeQy6rwbfq5Z?=
 =?us-ascii?Q?XVbQbObYMRuV7FoomzJ2S483CeOVm9WAozihjli02KfqpZEv1tKiQ1CXPgIL?=
 =?us-ascii?Q?ycUC6+OyJk3qn2Q9BRYSxGFr6LjxfrwPXem8LS9bmpAlZSzjEEhepEKmshTH?=
 =?us-ascii?Q?xz201KVuArIBZGpDv5fYOu+dAiGJU/XoC7/4YcqeLYHZMB/vpSu+/1s3FIN7?=
 =?us-ascii?Q?lqxtKoOVFzRmQxhltBHcTZaOhvMoKiR6nnNxacAHgUjXdRZ/e6V/rFBgpLrL?=
 =?us-ascii?Q?ZxhtBg0v4KL+BCxlN9TbOfhItf63JYuYerUMFi+UcIOx4uGRth+yo++NePSB?=
 =?us-ascii?Q?qtuv9OPY8qhNyAnrB5kFZjOJ9hqLvtGCFRdtjx2NMxatzuSD4Tq1qJ+8niu3?=
 =?us-ascii?Q?VQJUxGp59cEWqe9iG+GtfJiBZ0CUZh+qfElR7kTwDILkQdm1yZYUEAcvYt0i?=
 =?us-ascii?Q?6flZxmM2y34riNzvD22KGI4dbLdHzb/+lVVkVKhrCLoBvMJjswVppfvC5vP8?=
 =?us-ascii?Q?+k5qJh2ofErB92KT8MjzEB2IC16qsGd6Y41w+g+DcXmO81S3Fu4P54tJ+xTG?=
 =?us-ascii?Q?l62g4Jt2rP4G6Ywpv+fz/TVTvaUig6lFvm+F39Id2vi6EmJRxZVZKd4dDIKN?=
 =?us-ascii?Q?73tOHDUKxeKISHKOS+SALeWZ7jXLxLY2wo7jWG8Lf9UJWc0mHojc3YlDBTLf?=
 =?us-ascii?Q?CCuOdtu9EQ+hhXTNVHYpLQwGHB4qYEi6SqdsgXVpBF/JvGAyTWtn+hJHUS4R?=
 =?us-ascii?Q?aM5z0JiWkdVLgZCXdXEzme30WygqJoSpXBYbh2KdNmaO99ODvGfEgTJFeQt3?=
 =?us-ascii?Q?6V0YE+n4Wio8NGfNDPn8oz3b9uvFlm3oUAJacFPLMYwKZGX+y8j5ZRqSEvNG?=
 =?us-ascii?Q?/PWPrkgkXoFNvQ+9yktrpb9+AAUenqXEed0LwYjHn3b5Ei7nrBlgmV5HC/ib?=
 =?us-ascii?Q?VDtkMDcZN5kr3XUNS4tKIjAd/rOXQ9Ldy93pyeOlacyAkXwhJC2hSfF74ajI?=
 =?us-ascii?Q?uzM2lnMLMAsXupDzzQjN1EeUYQk9amh0g2NrwMomKhVMYMPGrAahKGROTJLB?=
 =?us-ascii?Q?Tg7Hl3eR5nz9NclX85tz09NZR+oTt2g1YujG4cVyK8g0pKdFNek4yw3R2FIh?=
 =?us-ascii?Q?HMub8JMUhznP8xZA2We6yvVJFLqF4zHuiEcxaGWsqGdTSKVsbzIh4ns+q4n6?=
 =?us-ascii?Q?dXvZDWm56NIteGMrnvF4qjhHVErWUMzs7pmNhkSeib6Ykxpyo5rYetUjzeSD?=
 =?us-ascii?Q?z1teYd1q2OwdyVYNAjcbPO8sjOWIf1vt2zHEhEaQydD0ZRv/ZOGcJ8VQZROE?=
 =?us-ascii?Q?Y5+qVHz10EEAE91jLznmF9TmZU/C7tOCBB+Pmh7arl4GFOVFoQ+vNCt6QOfv?=
 =?us-ascii?Q?PiTRGGzvJma+y+WnbdBFIE/5WMRq62H4kf77FW+/zpKhyg6qPUffWSkaDbmR?=
 =?us-ascii?Q?dW7PPROX4FkoJ9F+u1sd1LBTG/j3mtD6wWKEA3iMXBqMDX3jMidwvRIdiFGl?=
 =?us-ascii?Q?BA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d9aac47-cebf-477a-949b-08dcf8bcce7d
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2024 08:28:18.1020 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PzhYtUaIWllVJkYa/OxbiQu84L5A02y8dECiTNScsK/NZcchxyhypNQiNPDVUpizKSbxOg7TzF0RYt0Yt0Va/ezMZGBWDaNmGAj9ZNLqW1w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6277
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730276906; x=1761812906;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Dj3x/dr0Q2uY1utaUzCuTVPHL5WDbWsNGnyqO2B3QmQ=;
 b=VSmEBPeXr07oNPXownyoq+sjD/mw5L8tyVJys+sqlN7bbXtQbOeVPWdd
 jY7wz+a/9fm7p/98cfcOYbvP8ny5E66xh4NOS+K5kT96PmDQU/pEOCtcd
 GOLx2DoIKqoxJll9u2/ZgNS5itPdpDDWKRYc448Bw4vwWW73LLy2VDRVV
 VtH+oPBDf1OmmOUdsTn2lI0gwn8mDpBDR3vmB80JE6n+Nl2Nwhrn2133Q
 j8Gqdc2enFkhvE44dtLYyPMGohK2u/eQbVqnF/lPBXcyXKEzo1ROT55aV
 W09WG6He2qoBjWNo/06Y24eZyDZDIaxdM2Vt5tW1bw4g/hFeifPXKRn+i
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VSmEBPeX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/2] ixgbevf: Add support
 for Intel(R) E610 device
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
imon
> Horman
> Sent: Tuesday, October 22, 2024 6:23 PM
> To: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Kitszel, Pr=
zemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/2] ixgbevf: Add suppo=
rt for
> Intel(R) E610 device
>=20
> On Mon, Oct 21, 2024 at 04:48:41PM +0200, Piotr Kwapulinski wrote:
> > Add support for Intel(R) E610 Series of network devices. The E610 is
> > based on X550 but adds firmware managed link, enhanced security
> > capabilities and support for updated server manageability
> >
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

