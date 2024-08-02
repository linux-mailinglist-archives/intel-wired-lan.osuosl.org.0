Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7829B945550
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Aug 2024 02:22:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B73E820EE;
	Fri,  2 Aug 2024 00:22:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mE_Xxq4PphMg; Fri,  2 Aug 2024 00:22:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0F79182107
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722558163;
	bh=nPrbhoGCz6YCIkx9oUgrHGy9p++JnWyx5zecfUU0eBA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oKhlgb7Im7v5o61HaBIT+obWQIMIZD/exQvsr7mQ8pI59l3K/8M2T1+c9ce4bAfnS
	 o/mw1qhdKZz17t9UxEl1ACpHw87C3m6zHs1otm1Z7cEFvBMXWTYSNuJrofdihoysOG
	 BjIYzRCX/te8PReuKNa6zUp0fxRY9rOdpDgUSeS6k6FBbgseuXjde0RB2Vt9WQ++bE
	 SgNpr/f9faCKIeuG0BcnST2eqoXB7Oec/1mZz4IC89XxRdZmOGKSK0sGK4WcI2JZkH
	 lMf7ntZT+qoSr57ickpzhpXyD0iE5HWnDwwIRGu4GHwyY5TVczcApzbtomUBI12499
	 1N8H31IZ0HArA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F79182107;
	Fri,  2 Aug 2024 00:22:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DD0F91BF3D9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2024 00:22:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C6F1B40274
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2024 00:22:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cjMex6F-qHD3 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Aug 2024 00:22:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=krishneil.k.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6B3C1400A4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6B3C1400A4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6B3C1400A4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2024 00:22:39 +0000 (UTC)
X-CSE-ConnectionGUID: QDxs3lMbTVeS71T2LU5j+w==
X-CSE-MsgGUID: AHMOqcPvQOulmJM2VFpgmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11151"; a="24427389"
X-IronPort-AV: E=Sophos;i="6.09,256,1716274800"; d="scan'208";a="24427389"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 17:22:38 -0700
X-CSE-ConnectionGUID: MY052sFLRY2COopiqjUAcg==
X-CSE-MsgGUID: ow/VdfF/Tb+xYdMg8hEfGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,256,1716274800"; d="scan'208";a="55463057"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Aug 2024 17:22:38 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 1 Aug 2024 17:22:37 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 1 Aug 2024 17:22:37 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 1 Aug 2024 17:22:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xW8XCNNiUa09Gbm+vW5mpuwcHgyS9Mg6uaJDYWhiP9nYOHGbpkQD/PsK/Dd28fT968AA8IfaPodt2ZLlv/9IHteoxIGWnT1rpplVnBE3+Z+GS7JOZAvEQ9x0u4CFHkvXWUGtTHxmTkXf0YL9xIdz1EPLdIXWCytbgHAnveoQ5KiSj+DhDC7GR99hthml/8mik6+JpEmcA1llOQ+fiJPuWOluzvrh5gycOYqQxk0Wu4RODZ2/mn42jF0fxRy1CF3jf1C+8uNjTkZAGJA34GblFpIRsC7OVMWfSG7MirLRcO6zEECjZ/cwRMPHX6+H8Ih9ElijRoD+/KiRw+fD2NF7aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nPrbhoGCz6YCIkx9oUgrHGy9p++JnWyx5zecfUU0eBA=;
 b=uzZ/K1Prhpiud5QsiLEIVcopQ8ZDD9EeYQzmnNh+/g/nRJ/dc8CAeVUbonUqAiGCEKeyQcXlyS1q9tt9IA5NtBo1dc6jQevlwoYoeiD/FokJf1v1IGg9dgEXJnxBHNgQnnmwT7rkPfOQ8pxI2ybDrNKr03R0jutxy9Fh/mNnIYuN6RZP8Ofi+kjO+e1DCYZJmscT34u3ZUam7AwfAQsQl8lomyO280sVxDXKodelU9EvVYqqPQpSPp10GGxvZuUor7Q0mxSsLcxyNmYgUE33rkVAml7QaRyGgK+1LpRm/oXhvsjqVOm2iDPZtiYqiwQsNEXp+O19JkfDuCtv52roSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by DM6PR11MB4707.namprd11.prod.outlook.com (2603:10b6:5:2a6::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.23; Fri, 2 Aug
 2024 00:22:34 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::1d00:286c:1800:c2f2]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::1d00:286c:1800:c2f2%6]) with mapi id 15.20.7828.023; Fri, 2 Aug 2024
 00:22:34 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: Simon Horman <horms@kernel.org>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 2/3] idpf: fix memleak in vport
 interrupt configuration
Thread-Index: AQHa3c823qiXEyuJ10695m6I89Cee7IJMqAAgAn1xoA=
Date: Fri, 2 Aug 2024 00:22:34 +0000
Message-ID: <MW4PR11MB5911A86FD4BDA2D38651A5ACBAB32@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20240724134024.2182959-1-aleksander.lobakin@intel.com>
 <20240724134024.2182959-3-aleksander.lobakin@intel.com>
 <20240726161608.GP97837@kernel.org>
In-Reply-To: <20240726161608.GP97837@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|DM6PR11MB4707:EE_
x-ms-office365-filtering-correlation-id: db5c4a17-6b3f-416f-8209-08dcb28934a6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Pp6l1vdBIqC4AG18P8vhW3B5EAPj66LrRbbza0N8GYRAA1Vx0N1Nn/hcG3Pd?=
 =?us-ascii?Q?QmBUyGcpvCTy0ruuMt97JlAMm2V7T3VgMJOQCbgeW50FZOPjyED6RQ3t9MVk?=
 =?us-ascii?Q?RCcRbMYUJ+dkWoTelRMKsxnHJPPyYLyB3LnusjlO3ntqUvFn0S+/zAwbCOQb?=
 =?us-ascii?Q?nptwrqBsHoRRsGap5npC23YT4RX/Ck6JZDy0kBUN3lmolKTfiL0l5pROF9X1?=
 =?us-ascii?Q?GKSpfLNsCl8PzrHfuwj49KKsdXpyZZoidFJ+Hc2bmRdwM5sDOC2hc/6FvWQZ?=
 =?us-ascii?Q?StLuWueldSX3to4P9Vg7Kc+9e9CiSZEqU37aQRqKyIT2w68FDEoQA2EHaA6b?=
 =?us-ascii?Q?3jAUQmtleNXVh2r1Bw4SUdDsqfH+JwinDPpuqT5K1we07WjtnipvHtBdhk4K?=
 =?us-ascii?Q?GjvlN8P2hLXWizNoZ9cePONh0EfWxlOMsCmzDhbSyNRM0m1yhv8a4g77e6Gc?=
 =?us-ascii?Q?cBURtJ9N19qSF0vyYCtosCVGCkqmqkDgKFbG6BflbJ9Gham2QaHGCQRiYfHV?=
 =?us-ascii?Q?QWVLTPmAEKMWYfePtXiIKS3eXuuK+EOPs5hb7wrrOGcJ7tfEn/eaWb1VE5Xq?=
 =?us-ascii?Q?qdux6/gx2EThISWf9R6hhPKk6YScuXKlfiOAJcY0gR2qq8sWn6S0QAfaL2oQ?=
 =?us-ascii?Q?JAwmmrPk/hV1oCrP7lZs8OfOGzDK+IOSlD/WQM+N8qyI0fcK6f5w688zskVA?=
 =?us-ascii?Q?bf8aqYAW8Jb9OBQWj1UEyF5bI79AVev2LVcH1i9mCpKXIucM4ygUN7zMcymG?=
 =?us-ascii?Q?YH/u6t1n2m5KkH59lDz0Oq7OE7zru1/b8pMPFU0fDhzPhy0IQTdj4Wes42qD?=
 =?us-ascii?Q?1u7owCzfyxZeKysMamlF39/qImkyocFb9PZOSzcEWNTMqvfuXuBp7Qd5BKHG?=
 =?us-ascii?Q?n8ANfQgCzFbOUcaCpiUvJJ91HVavgzkuhJJVfooXSLAn7+vfWpTsoZw1xOWi?=
 =?us-ascii?Q?aDog33QVi3YvXSp3Cit6n/DJQXlxbSlV9x5t5QbxrpCz4q9hkGvu/PaHzo44?=
 =?us-ascii?Q?ItZwzmOrpCKkGVrovVuiORgdlBAYcxtqqJAUkdlCk0AAA55Wj+sjgVUuLjVS?=
 =?us-ascii?Q?3EXlTvb5fNWtU/YgKSpMxyn9SAWgTJx8UrVCMEq0WHWHqFkY6Z25861Hy+NE?=
 =?us-ascii?Q?04y/F3WadZXwxXdBwJhElNCtlSdAzAweT3XSHSMQ31heSStomCUJUu1lZvbB?=
 =?us-ascii?Q?DWGJK4ZTTXHPD4obInlmqzhUZfVck4bydCTUfKLrsFOjGbfvx3yFG1zHKlS4?=
 =?us-ascii?Q?bqlMrT78s3IsDhIzcMZqV5sZrM16ZXtbT3dEiTb42A8UBxGIUZaOGkSyI5B1?=
 =?us-ascii?Q?0WGvSnnuyI/VEnGQis0feU1NsfhBwYBrIBa7RB0NYQ36XZ0rEPEb8PmZJRc5?=
 =?us-ascii?Q?FgG9QYnJ52q/iFMKrgti7ZiRg+PckcgpOpszYrW7jHxTWzhLRQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0cvL1WLQWGTzNS3HZiQG0gkAybA7FEUtAAwrkNGgT4bVB4sQk7c4uCwZHVag?=
 =?us-ascii?Q?xfn3VuiJfoe2CqI/GJkMSk7hqhdTI73cmVpegi5vS8EbeJpqRpsUKcoL0KDi?=
 =?us-ascii?Q?fvh5RvmNlHnVzcs6FKm2TtUpxSMFMB9PsJrtn2RW9SafBP7OoOXovgJybsCf?=
 =?us-ascii?Q?wAqSmQ3lx67/wPt9iQW9y19S4uVZgZfoZMNTLguJ6aOe/QEsGlPadOxq2oQm?=
 =?us-ascii?Q?VPPBbolBfVqBk1l0pr9JLamAyqNt9ScZIw8DBE6Gbm+lcH2bAbwDlKghrDI8?=
 =?us-ascii?Q?8dkLub4rFHpx4dYy0v10DF0nrmm3WmYOCwGkVbCDu54CanQq6LZzz9qRpJKM?=
 =?us-ascii?Q?hKRUFQ2PlXdfO4euyvnRyhvLj+wKr1Pi74fU+Tgah6QAvRvd94rKfcZS65u7?=
 =?us-ascii?Q?/5uFcYP00I7+tqpCc2TuLWhnydjm46DrbglRsGIHVGd8JsR5tPizgp+pvvmN?=
 =?us-ascii?Q?uLB1h1HY7N6IFKvOujcwQXYzoIg7s0DLWMEroMqRhh6jNYEFVZ2bm3WpvYao?=
 =?us-ascii?Q?uZ9wniV9PhRERRXHVYXCNiy2M6QihuxtXcquKBIy7NxVES0i4u6qbhbEAWz4?=
 =?us-ascii?Q?sKqSwp0kvwhm/Pd9hUVlNuN1l9GVFa2o52U/N4TTBWmtb4d0+/j+6GY0qiGo?=
 =?us-ascii?Q?k9IhFQTO2GI0MAV11MmNKq4PWX4AmL91xNACyJw3hV7RuDZ6mJiuzpF2chs7?=
 =?us-ascii?Q?l9YMrpDJzfdjjKwPx7z2iC7V1PHZxigFp/3UXCNSO8dYaO8NwDMmR0yuVeAv?=
 =?us-ascii?Q?GGYMZrc0+wNqkc+AnLTg25jTYuvdksGE+1/iNNY7LPNz0CrA25juBBSHGla+?=
 =?us-ascii?Q?0oRflkMhLJsKnxIa5U0kTPqsokPcE2JtWI7hlJh4rXr03DxgaZaKPU3RAR4Q?=
 =?us-ascii?Q?w3Uejmo+8ShmjLYBvVmEAkMUBKjpEkGXtLZBVXDLFT/Q8zu27z60+JX8H9yD?=
 =?us-ascii?Q?2fAMp3Prk6fF3NlW/DNBWmLN8U0/VRy7W0n48dSaxL/TeGoOC142M+dQytc3?=
 =?us-ascii?Q?Urx6Aw2dJIHWEXddyMSLQvkBS2pgK3qWPrNS7pYwEeRc4GRvW3xqfjtZi9yd?=
 =?us-ascii?Q?zulBWQk4cGu9OuRT2rT28VF0yGTQFMiePkS61fZg5rbpMM5iJTZ0c/7uBVYZ?=
 =?us-ascii?Q?4PmsegYQrzQxnsShI1FxvbMYv+uTb0KqEdxmjkBr4tvwTMk65IP9anseMRFK?=
 =?us-ascii?Q?fdhUglVPplqW/NUzFiJO4cSPWPpCIsEjIx5uNwJgeLPy1Mbhrg1s4NXBYz6T?=
 =?us-ascii?Q?x13JLLoNQL04GnIchqkxdM3femz9/mf1Zpqf5+ekpmA6ir/1dvVzqiXHLEMc?=
 =?us-ascii?Q?QQ5+2hNP9HNXRbIFJR/hHTgy5S0d1chstRoOCsj7GgzEZ7VOrTrlE2culpLo?=
 =?us-ascii?Q?lzAfxXMzGhXFWrQBjc3217kMIr4k134f9vpx8Fe/1VEYh41wrnZJ3KaBVtIY?=
 =?us-ascii?Q?G1DADkMlrvRQVCcn6GwxU2DynnqytfkQgktOJgGy2CvdYqc3ocK73Q5kTR23?=
 =?us-ascii?Q?tJVU3s4R7QzWFAvT7txldNd0m7xtAHuDjQHbXDTR5j99lnhbJ8PDO+Gh8EjS?=
 =?us-ascii?Q?Y7i1Qxi2emImAdzEQrOLFwsq7pbFKamF0wSAo07AOZ2Iu8VGVqku9TT7cGxx?=
 =?us-ascii?Q?Aw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db5c4a17-6b3f-416f-8209-08dcb28934a6
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2024 00:22:34.2920 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sOiiXps4ZiChKwAqz4u+YKJVeTWxc8oNU8CkSY+qWPMkGrbQkx3+076jui+V08BWkpCNM62mew+y5sG0SNdhUMVYxYv3QxGHVZj33sHkMlE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4707
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722558159; x=1754094159;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hbBc8r7TzBOn25GeVcdDA1RprPowWL/H4Gcq7hkggmA=;
 b=JcwKsoFJ+7/qQHKiYsYmJdlnezD10/jlzGzBP9TQJJTo1vChh1II8epF
 K7rK4pQAkxeg3w3/FFKET64LPUmC1GGwbq3R6bRboXWUW7rBe4HlwtrFz
 V5uwn7nLYJra6dON4gKenTm0Hn6a3Ty6mXXKf5cdscj3hAE0e4ZOIXLG5
 uPVO7Ywop470zRjJGKbeiR9o5M3rhh5NfDAb4O85ftN0a7XC1VnPhGM9Q
 VAD13/M0b1l9Rp/MLbm/jiQJvOUllzHR/WPCsRrsM3nj2a2mTdj7Dawad
 8LmhV6m0gHWbanOVzXBJKKN+Z7kgaPXFX8CKl0KHQCJCgVEI9kAmKw0/I
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JcwKsoFJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/3] idpf: fix memleak in
 vport interrupt configuration
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
Cc: Paolo
 Abeni <pabeni@redhat.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>, "Nguyen, 
 Anthony L" <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 NEX SW NCIS OSDT ITP
 Upstreaming <nex.sw.ncis.osdt.itp.upstreaming@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Kubiak,
 Michal" <michal.kubiak@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Simon Horman
> Sent: Friday, July 26, 2024 9:16 AM
> To: Lobakin, Aleksander <aleksander.lobakin@intel.com>
> Cc: Linga, Pavan Kumar <pavan.kumar.linga@intel.com>; NEX SW NCIS OSDT IT=
P
> Upstreaming <nex.sw.ncis.osdt.itp.upstreaming@intel.com>;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org; stable@vger.kernel.=
org;
> Eric Dumazet <edumazet@google.com>; Kubiak, Michal
> <michal.kubiak@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Jakub Kicinski <kuba@kernel.org>; intel-wir=
ed-
> lan@lists.osuosl.org; Paolo Abeni <pabeni@redhat.com>; David S. Miller
> <davem@davemloft.net>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/3] idpf: fix memleak in v=
port
> interrupt configuration
>=20
> On Wed, Jul 24, 2024 at 03:40:23PM +0200, Alexander Lobakin wrote:
> > From: Michal Kubiak <michal.kubiak@intel.com>
> >
> > The initialization of vport interrupt consists of two functions:
> >  1) idpf_vport_intr_init() where a generic configuration is done
> >  2) idpf_vport_intr_req_irq() where the irq for each q_vector is
> >    requested.
> >
> > The first function used to create a base name for each interrupt using
> > "kasprintf()" call. Unfortunately, although that call allocated memory
> > for a text buffer, that memory was never released.
> >
> > Fix this by removing creating the interrupt base name in 1).
> > Instead, always create a full interrupt name in the function 2), becaus=
e
> > there is no need to create a base name separately, considering that the
> > function 2) is never called out of idpf_vport_intr_init() context.
> >
> > Fixes: d4d558718266 ("idpf: initialize interrupts and enable vport")
> > Cc: stable@vger.kernel.org # 6.7
> > Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
> > Reviewed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>

Tested-by: Krishneil Singh <krishneil.k.singh@intel.com>

