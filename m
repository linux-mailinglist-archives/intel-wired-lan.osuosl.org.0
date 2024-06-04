Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B9C8FAB26
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jun 2024 08:46:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 597A161175;
	Tue,  4 Jun 2024 06:46:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vHGhE1EJIKts; Tue,  4 Jun 2024 06:46:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9E6E760636
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717483606;
	bh=B/Kz89JQOmFZXJfws4u0QPGgGEtjEA5VNyaePAwxtrc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yGfzZk5h5AbxUg4fNSGBCvVv9mjazN4R5a9lshzSHInKuTze4HktpR3xiGB2jU8PC
	 WO2+oR/fApWKmyNWn025eS8EPI9LTd5kDbVl78g5Z8auBDNBklMpRPnQIyM2PlmQGN
	 dw1P5YZ+Uxh+khxDbiwbNQLN2uxglJpkIsjKRAEdxH4IdcmqscJSbByGDYsRSHOjHJ
	 XFDdkm3GJqOViONx/zKZtk6zP9dJwXE6/zxqxdj5YLIa6EWGlO8TISW0iPT9PxgCR1
	 7+YBbU7i7ThynRaYz4PLlPNdq+WjRn42mme8Jru7CUJIK0pIiU1Jb/uGh1JwjK3/qA
	 x57n6/lU05YxA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E6E760636;
	Tue,  4 Jun 2024 06:46:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B6EBF1BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 06:46:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A26F061163
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 06:46:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vmraCi4HeMQQ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jun 2024 06:46:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=chandanx.rout@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E781060636
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E781060636
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E781060636
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 06:46:43 +0000 (UTC)
X-CSE-ConnectionGUID: zdx2k66GSoeAFm9reVhAXA==
X-CSE-MsgGUID: DSMboCaoQiSYvM5II9PH1g==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="14161923"
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="14161923"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 23:46:41 -0700
X-CSE-ConnectionGUID: dgkeSsBwRiG0Fyy6KfLrJA==
X-CSE-MsgGUID: FdwNNnyOQMeGRH8z9jOzMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="37003678"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jun 2024 23:46:40 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 3 Jun 2024 23:46:39 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 3 Jun 2024 23:46:39 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 3 Jun 2024 23:46:39 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 3 Jun 2024 23:46:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C8ssX7A5AX/PpgaGyIeb7sb1+a7nxksNV5nSTr4Y4a7ODIMkE5Y/fEFOvnu1lCemJSd6YdCZQ0LtTImLftDcfTzTjDJ6/+S2DP6crfA+OB72Ogd+AFOe8uZn3V9rJPkigT2irTkkzGp7jySXw9ycudwNEVYHeoGy3+z8fUW8T3CRiF8Kf0/xfdZzbqvaUNZZHG1JMHGM9go5qYR5j4hBMMgAidBlOx9WEUNoWEy0u4qvbKnVbMC6AmTXBfsTjWbiTNnRfltv0TqU/WlJmnihL3R9b+sCAvwiWtXplXButJZo9zRmCDAuyAumfaGKcxFEChkeWWTS2WXGxbv31fCPiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B/Kz89JQOmFZXJfws4u0QPGgGEtjEA5VNyaePAwxtrc=;
 b=Q3Ak2zWFJkWRQwqPin4l7v8Z8wFD56NmpnVtSE/+cfuU0pnrv/NhZN7bPlZ0FuhdFB4GlDbQ6dA+Pl2dc96GpDl+CMfV6IAHHLJ8i6s3tmN2LbT6KL9gbAdLxCq8QKMyh1HDTHcTujRNDDSEzJZy8txJc/em/ymlqlbKNSwwybTUK9DWnsEZSnYNFaaMq5omxadBUNR/ZxnEpfLb5D8p2UPPH+8M/GOqhn36MDJol0Wr89SskBR0c42DdzwCaQdvwz8qYoTw8qQZkNC0HjGRwLdHnaDcro2qRsoE4uREKUry17mOPucp9OniD9djNF0a5aPikICLbvt3fMk5qAJzfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB8297.namprd11.prod.outlook.com (2603:10b6:a03:539::8)
 by IA1PR11MB6244.namprd11.prod.outlook.com (2603:10b6:208:3e6::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.25; Tue, 4 Jun
 2024 06:46:36 +0000
Received: from SJ2PR11MB8297.namprd11.prod.outlook.com
 ([fe80::f3af:9f9e:33fd:8b22]) by SJ2PR11MB8297.namprd11.prod.outlook.com
 ([fe80::f3af:9f9e:33fd:8b22%5]) with mapi id 15.20.7633.021; Tue, 4 Jun 2024
 06:46:35 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 iwl-net 8/8] ice: xsk: fix txq
 interrupt mapping
Thread-Index: AQHasbrXJxhM5h8oykOo5ANZflwXhbG3Mi1w
Date: Tue, 4 Jun 2024 06:46:35 +0000
Message-ID: <SJ2PR11MB829700AD0EE85D078FC51196EAF82@SJ2PR11MB8297.namprd11.prod.outlook.com>
References: <20240529112337.3639084-1-maciej.fijalkowski@intel.com>
 <20240529112337.3639084-9-maciej.fijalkowski@intel.com>
In-Reply-To: <20240529112337.3639084-9-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB8297:EE_|IA1PR11MB6244:EE_
x-ms-office365-filtering-correlation-id: 253021db-9675-4fb4-b06e-08dc846213d9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?LH3V9hZwXkHK+EX0IWhKeL2ZL0g9wcZS1yzV+JsfsyCtNUmiAM8kWY3PumIp?=
 =?us-ascii?Q?fgeDldPOVy74oyCHYVyvb+6Q95pe6QlI1wTTKywJ5kPkQSw4rOtmQ37yvVMc?=
 =?us-ascii?Q?cRiTG3ajO1u6Y0jOg2rhHJqfpDVz9xse8fnLFPiswAqSWyEVqkr5N+Edv/zd?=
 =?us-ascii?Q?+H+eFmhRivoY9ODjgeOMHSFkn86XiSQ8PuJrRo2UWAxpiygNMylEDpRO7w8c?=
 =?us-ascii?Q?tWrBZTvrn6TS+iBJRvcS0Z3zvjeZ8uOpjvN4Hm4nMKe5IXY6PxKxhLX4j4oz?=
 =?us-ascii?Q?dcqFlppZDaS7AQBTQPPB+aAgz9hwiKy3FGUUpVS0KYfkO1H4Ow5EpouZCPyL?=
 =?us-ascii?Q?mJ99tlKIIIW2HzFLo4LO3BMxNxu+Qms7rlLP5LuX+Q4pUho6cfBs7b5NrdNE?=
 =?us-ascii?Q?+8T75dtv+kgKm7FtO/JsuH+cmAaf+M4UVaaHTkANQM+dobT13g+vlY1hmakk?=
 =?us-ascii?Q?2vSft2V+VSWe4dLES0ikutXsrn6ANVAXD4SerOeNn6kxOs1/HJbou1fgv37E?=
 =?us-ascii?Q?FI9DvQJrt177EggRt7x0M8R/6GFNsNoL4xIWL7rmr1drKY228W3rnuwy6IaU?=
 =?us-ascii?Q?MY0uOtC8RnU03DpHPvNE3vc38913s+GG1uFF9fst59QKGFRJrXKzdMO0NZyM?=
 =?us-ascii?Q?H2p/7XS+/EvvVSmVsLftL1U+qY5M4BjqQCDRuhK6QJ2P5kIaWuLhBPG5H6nq?=
 =?us-ascii?Q?4ISZclU7hrV6e9E/WGE5KJbvzBF91cH4Lnq4m+qQT17KkzAx+sod5vAyhkyU?=
 =?us-ascii?Q?JI20M/gh98PSjkh2hc8MAOY7fUBGPYKz+0dr0bUV7Va+mBB+EJNDYo0nCRtl?=
 =?us-ascii?Q?V1g+p03y7watcJbVrnVLWceznBFjzEApcveaqjS5ln4MClfuVF57B6oCsmZw?=
 =?us-ascii?Q?XtsTvEuoiVDPffEyD0OpiOCOlrzZFN7ydR/rIOcrHXQq92j217IO1uzE6HVk?=
 =?us-ascii?Q?XNb4896nA3S8cmj03URJacW0PCAA/TH0YD2S4d7/3RC+vWY36l7GvV9LCOF5?=
 =?us-ascii?Q?6wxC99MihXbfdVTm8I4okIgyETWAMKkb6bsawoLbzaznl51JCS20xsyyOi6i?=
 =?us-ascii?Q?6PjNdnb75S19rTDp2+Rpn9BwKS2K092JGujRSimZJOiAvPacgDWxOq7a2Wv7?=
 =?us-ascii?Q?lO7f27ZSGLn/bvfopMfpoKKSpvylIft1U9q7DxpKDCV9GfWvLBihfdC0Q58T?=
 =?us-ascii?Q?0TZ4YRRVGYzA5fcAXNywyKZnyhRrE2ohPOTAkKrbzl8A8eRUq2bC94P6jKQC?=
 =?us-ascii?Q?OfSnLxtsNZ+ucS3H/qvreWKwhYRCJHrzy6Ls5NrEHu5CvcE9jPEa3dzVOhdo?=
 =?us-ascii?Q?vyVk9zfsu8g7+nmS/7M+MCkwjnDmSHWOEuZ78QVpokSMHQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB8297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/jcTDv/3UkD6/xGMVU/IOJI889LcQyQdyaajASX4M2A31aqHir0SfgYH70Uh?=
 =?us-ascii?Q?iTogWN0y7GjlQZnnr38tAllsNJ6a4IuSnLpFIqHgg6vgcgQVMgV7tIhRuOHu?=
 =?us-ascii?Q?yjONIVt30JobzRXJvfN35HyfFYLzg183KN8snsqu1KLYZqX5on57X8uaVPfU?=
 =?us-ascii?Q?7hA5MwlAqKaUVXujVIJk7k8L5Tn33RfxJtgZMuCbeNsU7JugPWV0IVKD2ttO?=
 =?us-ascii?Q?+CVXQCDf2zjfiREo8yKm11s7+57epfcAp0LUmHHFHWkGbHBXc+a90VrMuwtg?=
 =?us-ascii?Q?mS+gX2VSBDnue1Id8N94nNHp/nK+aed4bau0CE8DD6HykvfmEhavg9aPhDLo?=
 =?us-ascii?Q?wE9nFj8Z09ozC6kvBFRsV8Wi2xzeg3O4DmRDnEkxQfhVH3swg84QN4jn7DQ5?=
 =?us-ascii?Q?XO/xaqaiuQcIQNvGcAZC/iYZp42kApf9SjZG5PDbhLd/BwFQwcBBgTOv+L5k?=
 =?us-ascii?Q?Q8c1U7EA/+0ZdLjoKhL4rGZ9e0q+JBleL92+pQYsy+og00VGeBmaweUl/SKv?=
 =?us-ascii?Q?CToV23/UVjK6c+V7SaSveTVpN1T7NJ8pAHIZqMlx7KP1BbDZ6MAa3L+qltV/?=
 =?us-ascii?Q?Jpq+LC3VgzUGIxlgFdIEYwT4F1y00yEYW6lcyAU4byeUG/BM+OQgZqsU66uV?=
 =?us-ascii?Q?qE8cU2pTK5ytR/L0a1CRYlbXgcTwjNVbyuLiWANykAlEtRxnDGcjcuXvUGGg?=
 =?us-ascii?Q?BCKc32ahLMI+6gsZJDcsMeQFCOf2IbILu07Ac4CiIZGmPcw+HBvvp6+EtqK/?=
 =?us-ascii?Q?Za47zsOtg3zpoOp5I3uAT8S0K4zjy7tjwi7h3cqPgwN+zkST4YQxH6TYmP4D?=
 =?us-ascii?Q?LW3fxjWCkV3c/ED/kh17oFNWxc9o7nG8E0R1T+FPlFGqA/PWlxJOFC/bvxIG?=
 =?us-ascii?Q?csgdxoHOWc2hMPy4Hl8ZaWm+lCU/7ByaN9frogfy2kaFcL5ATrBg/XsjT493?=
 =?us-ascii?Q?xBjQZpxHD92YjTHW2oSsq8STl5JY+LwVhYuynWcMtPRyun2uK56IL4o9BSRA?=
 =?us-ascii?Q?RBjHmvkKvq94cYvQgSUkDQz2r/ZJWCUEHa0HfOsLtKi+Imp/JQLyb01PUYxq?=
 =?us-ascii?Q?DKClUPjmJYZJbbnPpVVvXMk4xXdNwMz2r26yctdcAx5eA6wV2WuhBvA1EDit?=
 =?us-ascii?Q?lNxFzmv65H1Z9N/6JrZgaxkuuIvQoHacYHGT52ke3zop72BAurccQbrfapSE?=
 =?us-ascii?Q?rWKnipTqO6IdFYP+iM3e6xeoUKCUjRt1RjhOLiE88mk7MBbu+WcSZlDkTpqI?=
 =?us-ascii?Q?wO1Rb7yTowTVb7GPR82DUFcOe+3ZbpJ6bvwQUHX7ReCu1VnUppAhNVyVJRvE?=
 =?us-ascii?Q?YcCrqJ59D7ZBQSW2c+MsAJOtL+u5cXLVyLsxhKc8PsULRWAytpfNhiSmf7lO?=
 =?us-ascii?Q?bPxC1uE02Zkd/Nm/hTxA2Bc0Ekph64SeunxCxHc81PzUhCpHiVOnPw8t+Atq?=
 =?us-ascii?Q?sFQT2SW4OHPJR/HbORYcxH/a7JtXKKIi4VQBMC5uzlk1aV/HDNCbsiBZxOHv?=
 =?us-ascii?Q?xAeUMf41K5yPy4C9xk7HWDPlfXXs8s3AQ/PPe9GXykFQmrs0aD+dDvQgoXsM?=
 =?us-ascii?Q?Ma5c7FiwuhozbnHyD4BGl8T0i91Cszsf0SR4n/bH?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB8297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 253021db-9675-4fb4-b06e-08dc846213d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2024 06:46:35.4063 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R874IxWPcNqRQBlZsyllnnYwixFhtrxEu4DaZzDrQJ6DHe3ytr/spuCH+GzR8pXGAoq3+yN4y4QaQIdE2HGVxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6244
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717483604; x=1749019604;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=B/Kz89JQOmFZXJfws4u0QPGgGEtjEA5VNyaePAwxtrc=;
 b=dKrR5c2PM3O0Nx/qFgJE07QTKdqhDJpy+qSysTlJY+T6wzVi79PDtAfJ
 p2KVpzBM/xQ2t2TNTkyCsMbkZZxlG2BIQn2gPoa0riaADhd3aBEkH96Wf
 pNSHHb6noKMkHV3djmBeVTGbcGgUkBCxg3Y5jJLpgUhzxDvtr2SxBkoQK
 W2MT3YfSeE0EBaEc4ilTzHlWgxQlR4movE5XXbE6tHziHhDwOhMnUsxtw
 lPvb6fSMxpaY50F15RQK80nEBs7RrG8kTJX6LDRS9eQulrcG0fmjYaQiW
 fH8YoSyU/OIEwIbQnpgyKafXtJfSFw4A9ZELb9Yc7E/pAo5VkKkRpkqQV
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dKrR5c2P
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net 8/8] ice: xsk: fix txq
 interrupt mapping
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
Cc: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Pandey,
 Atul" <atul.pandey@intel.com>, "Kubiak, Michal" <michal.kubiak@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Nagraj,
 Shravan" <shravan.nagraj@intel.com>, "Kuruvinakunnel,
 George" <george.kuruvinakunnel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Fijalkowski, Maciej
>Sent: Wednesday, May 29, 2024 4:54 PM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>; Zaremba, Larysa
><larysa.zaremba@intel.com>; netdev@vger.kernel.org; Kubiak, Michal
><michal.kubiak@intel.com>; Nguyen, Anthony L
><anthony.l.nguyen@intel.com>; Karlsson, Magnus
><magnus.karlsson@intel.com>
>Subject: [Intel-wired-lan] [PATCH v2 iwl-net 8/8] ice: xsk: fix txq interr=
upt
>mapping
>
>ice_cfg_txq_interrupt() internally handles XDP Tx ring. Do not use
>ice_for_each_tx_ring() in ice_qvec_cfg_msix() as this causing us to treat =
XDP
>ring that belongs to queue vector as Tx ring and therefore misconfiguring =
the
>interrupts.
>
>Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
>Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_xsk.c | 24 ++++++++++++++----------
> 1 file changed, 14 insertions(+), 10 deletions(-)
>

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worke=
r at Intel)

