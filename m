Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E6EEAA10100
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jan 2025 07:54:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6FA8A813FD;
	Tue, 14 Jan 2025 06:54:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2KvUGBKbKLi1; Tue, 14 Jan 2025 06:54:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C07AD81412
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736837656;
	bh=7JrN3ukVW0Jyam0ndGFIARo1/9YuIWCywXuXanGM7tU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rFcq1AhOgn3keww8T1L0/naxnxkrMy/kG0HUQNjad5suGqL3hE5s1KTvEDifpgVdp
	 3Qob/3gRNUstBZnNf5xo5NwmANMecqXTfdUNeugF4laptTdBYSICDOOxVVDTHFWv2f
	 wsojO5FEx+tHhscQU/mabQrv1viKwRhp6n+WSp4hkzkzxygGmvhxA0HDQXdRfeUTqg
	 rcb26p8L2M0/6N1ekACfoT7af8Z1V+BjpgeZvPIeP+WDOD/Mcedy2GNumoBbvRutXS
	 COAYCZGHFzjEhCv3iqrLgE5YydD88eHU68VNOeLo1mO9toBVBeWdfQq3ZqdIktQm4p
	 4X7wEe2M/l6OQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C07AD81412;
	Tue, 14 Jan 2025 06:54:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id D55BCB8C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 06:54:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A2ABE40167
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 06:54:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gpI_GEAFRk2h for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jan 2025 06:54:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=krishneil.k.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6A0A1400D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6A0A1400D2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6A0A1400D2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 06:54:13 +0000 (UTC)
X-CSE-ConnectionGUID: vtnpMIUYQ+eP7P5qvYjCoQ==
X-CSE-MsgGUID: 6xafVmN+TniFKCrXzRQF+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="37348430"
X-IronPort-AV: E=Sophos;i="6.12,313,1728975600"; d="scan'208";a="37348430"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 22:54:13 -0800
X-CSE-ConnectionGUID: hnwyeBxcScaL32fJ7c283A==
X-CSE-MsgGUID: +RoOCWvuQqOCRE3x4n72KQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,313,1728975600"; d="scan'208";a="104670123"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Jan 2025 22:54:12 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 13 Jan 2025 22:54:11 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 13 Jan 2025 22:54:11 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 13 Jan 2025 22:53:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sPyUOpvXX9c2msbKCgy6WMCiMvusdy4SOdXdnEY2teaSQcYX5gKlLAXVHSGE0/qFT3M8mDd60B2MefqWXloNzuE4QSA+y0zZ/58pIh5HOCBPCPsOLOo9dWmbo1JztYP2WqvlXtul24PTaxs/4E3iC3cIC4Xe7I9qeyJL0f119LZZGDg0XFsTTkKi1j79E3rYMGCi2bqyCoPhShfazgNeEqCXSxftLKSEDUAw01kLwD6tRUI6ZB8w2/E4vMd7v9r88CBxk6ws10/+FLNhDNkfsakNnoPkma7KghVuSleJvcG+rBv/UIXuwwIdgxvjrsmNrkCbB6xgmmIdCieya7uPcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7JrN3ukVW0Jyam0ndGFIARo1/9YuIWCywXuXanGM7tU=;
 b=nQ5d/nOGxDWMF6bN7M3HUpLoFWe8znXno/Pb2EZ6M4mq36PdGXtBvStmbXPoKYcasMu9//yS/si3kHro2LMT5ZhBDXlhw27vameMMZ+N5Xnqllx+ZB0KlPxVffceYgLgIfl8eeB4j0PZivQIKHrLtF16Y+q633zJFyH9F5k2USEhCvJFgQWWyte8yc1YZpC1cgtxJpAGK1dcd5FzBj0GH6kpBaov/3uMG8lGofam1AvS+cipw7OtWeiS7nGg7RHVD5oHndSonJM0Ii7cCp1/CbTdtHZ6naa98ysVxn/B4PECT5xcb9S9IAWa1Bz5N74Ho6lbkYN9K0m0taSfTSQgDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by SA1PR11MB7062.namprd11.prod.outlook.com (2603:10b6:806:2b3::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Tue, 14 Jan
 2025 06:53:30 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::1d00:286c:1800:c2f2]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::1d00:286c:1800:c2f2%6]) with mapi id 15.20.8335.017; Tue, 14 Jan 2025
 06:53:30 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: Tarun K Singh <tarun.k.singh@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [PATCH iwl-net v1 1/4] idpf: Change function argument
Thread-Index: AQHbL8yexWmgGVyPBEqfRl7fI3Npk7MWQk9A
Date: Tue, 14 Jan 2025 06:53:30 +0000
Message-ID: <MW4PR11MB59115A267594DF773E66D4DEBA182@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20241105184859.741473-1-tarun.k.singh@intel.com>
 <20241105184859.741473-2-tarun.k.singh@intel.com>
In-Reply-To: <20241105184859.741473-2-tarun.k.singh@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|SA1PR11MB7062:EE_
x-ms-office365-filtering-correlation-id: 1698d8da-cb58-46df-3fc6-08dd346827b4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?cPSRkxdpTt3JQIiJKByvxqS4hgqL+CH8VCOXq+848PoNC3L7qUEaG4IaICAz?=
 =?us-ascii?Q?w03qcSvPrhN+p5y9aQcAMUkPH8KdRshSTdhntKMioJ2stUrZ+9j0dwFNPt3D?=
 =?us-ascii?Q?EjM7vD1rAlebSVmztulPk5HeQ7L+HP9rBOZQ+TgfFBVIu7/OzyV2Ua0VfXY2?=
 =?us-ascii?Q?vX7fhf4l2GVCI417BrP+Q/Mw4K/isHG4DMQjDlVTJGT07jGicJW4SBodx4UE?=
 =?us-ascii?Q?pXuOoW978lB+G3xRVtx8n8GMpCuD9b8KIoE4XxS/6Epb7KoGH30cwifwBLZN?=
 =?us-ascii?Q?YvTwambPlDKLHQK+XchICqC0XvNBt+6BAV/kq7ZC1BaC9h0no/hIzp8xJzRb?=
 =?us-ascii?Q?aZ0JMLgmE0QewbFHTYTiTRk0s6x5Tl/zZ4w/igByzCZO6hKbDy92NZtzhlvW?=
 =?us-ascii?Q?4azNkfIcDfzIH4KRhQwEWTA6CgfIrEWzQHn08+upMQkNLcgUA4FoQLf2mye7?=
 =?us-ascii?Q?ack6hwOiQIuy/KbT8Ci0+j+VCxdKG1aTJTMwPmp7M0LUU5t9+6/eAB4abt3E?=
 =?us-ascii?Q?qiynfKB9ZTY4Tzv5/30LzvP4+AejI4n8ZEVp6PGglwZJaW7eeVvtAfzbxi2U?=
 =?us-ascii?Q?4vdYgcDZIsYcveAe/rw8k089mGdv+0fjKCaOxGSAZWZ8g/3Yg25rblY1hIOQ?=
 =?us-ascii?Q?sHf1mmeP2eKtkLj37K7VcIasKBSJeGICq9P4eXlnwjV65MCzEVF8uLhdC9Oh?=
 =?us-ascii?Q?zpMh8t8RbXxLlGDgquxzTngkAIMaXLs38qW7sOt2GqT6njTPme0JeJgQ5Ok9?=
 =?us-ascii?Q?k++1HtsSSi6WLgsVTVdmtALMhTmCeFZurIa0LL2utS05PVKXaAauuJVc+BZv?=
 =?us-ascii?Q?wbSvEi7pfIwWfCXubo8mzxstgnxcoXmG3Qp6UCQ2en/eYkTFZZL3m5sddcfF?=
 =?us-ascii?Q?FjuSBR31MX29lKiI80gJ+w5JAqHrYrtSWyWOgZj6iGwR2qvsoSc0vmIELQ+4?=
 =?us-ascii?Q?f/j9/mirKPrC9GrU1dNWgTLTsQYSBQO11MNQl+xKY6vTia5uFGyXZIMdkYju?=
 =?us-ascii?Q?4qpJcbNPMZPEe7ciT2WQui2EFzO/9mxu4SXcbapMxio61llbcdfBXcrFumUm?=
 =?us-ascii?Q?vqRgnMbK4Nu4BWKxBPyHws6aca68Bl/U8bJtDDpzZHkFU94CyMQ40XlBAEsj?=
 =?us-ascii?Q?D8n5z77Nz9JZYz+WK5GeCZyTXc9ZkcQrfrdcrCHJjpG7k3XZo78zOsXjmLOF?=
 =?us-ascii?Q?iLAyPlmLRrGhcfJQp8PERQhQuE5oYmJ5wt/1HSYDVtRMn9bG8se59RYQtZek?=
 =?us-ascii?Q?XftNvAgFrqOZXWCZIW5HO9BRIGLFzWGhGNk6MV9sw7NA6J+52EMDrKF9t5Yi?=
 =?us-ascii?Q?Mpiz4JdLpvFRDQmRgR3QA0s7yu9SVfqGHaLaCya+i3ntGpaXMxhibVz0OSET?=
 =?us-ascii?Q?321P8TGuCtSOgpfghxyGgh51x+1xcfEidToGQ7Cr6X/jO/1u8yz/T3n05jeR?=
 =?us-ascii?Q?Owhcs7Q+QgJMHfFhCdCIngA9G2pUsT6V?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vDIYfrdBVzmQkjb5awkQ0kmjFSzytLynY8axgvfuS/sOwC8QH73iu4hVaTz3?=
 =?us-ascii?Q?PhdiZYl1VTI6doIAzNONzPfvMBEY8773oQBuqEyx+JmMntemWDX6upIhIVQM?=
 =?us-ascii?Q?jKYtPe9BKnJ43Z7vRXSfSavqvCn+IIz1NtXgAEdVcOcNcsbbctsCt8dFADSp?=
 =?us-ascii?Q?LNjlJsDSca4NCIPJFXeNiPbpXJKJZGkbwOh6Gsfv9aA9ryL6Bba8/7Scb6i2?=
 =?us-ascii?Q?mK1EqS0XQ6gNIoN/lJngEFiy/L3CoyAnCkYyZ0y/molmQLIpiNI7sTmkl+Xk?=
 =?us-ascii?Q?whvtDzQfNQIrAj8rDrQTahFP16XppTwXl2OmsV5cePt6kE/Ru4AoyBJ6A+u7?=
 =?us-ascii?Q?msPwJimi6otFUBgCotTugKi8NEuwDAGJfeUxOotqH9NudmmXMrXkQEEUcn5M?=
 =?us-ascii?Q?joiKEy1eAIggNM5kutnY5XMraum6nOpEnEKtzLN9lEQdeATWGJix5YQ/zrmY?=
 =?us-ascii?Q?mKVjRFw4qPXVu2pzQBoko9WoYXLQ+kkMgSu5r4RPojBsHluUMwZEDAFMcCwt?=
 =?us-ascii?Q?Wb1d36uVqbGazWq/kzdZ5OS7uPAzoE6WM3CEMEd3qe3PDT1r4Yy9hbz5IZTM?=
 =?us-ascii?Q?3DqpQqj1R/Ddh26EeLCgEZRpJUWwqykR+mrn+EMWfXe27kHPwbZrxP1WqM61?=
 =?us-ascii?Q?45eeDd4EEMyCaOPEXXWWZ2Bcl4c5RR8YNrPLu5ndFBUMexL4oKz7FQaVnChW?=
 =?us-ascii?Q?bx8PvODP6tYbiOaEGbuZr0fddOKglE6Jsj995qoa1dAIZ4Qu02iOvm4gnWHG?=
 =?us-ascii?Q?b+OoF6xojFLa3QX/ZS5asrxrrBSlyzm5xNa+lF5ESP9+08hFVPvtABLUw27r?=
 =?us-ascii?Q?Wq+h0yJROkT9RcfjSn2avu/MefrLx3r48XCx8TGUBfZcIlLi45utoCQb30h1?=
 =?us-ascii?Q?nKzDlwl74i7jkyrTH0lrVkMIsgMul/a4g6PG+jMiXma0bQxx/QDRJq4o6oNV?=
 =?us-ascii?Q?2QcO3NpTHzpRjV5DQyoSInK1EtfyHSwiiV1LvoWj5ATO5G1lXFmM2P0fq+S+?=
 =?us-ascii?Q?bcBgCSNeAM5xTtDcbQy47tX4BbmR7E9hQMl7HCjfC0lvTwjptPpGiw5oTNrS?=
 =?us-ascii?Q?ARZftW4+S5o/e7zrjRazvLJ7D3sCK6nVz4Rf34q6gMhFaF0rTv+pqSqGyGu/?=
 =?us-ascii?Q?BbNL74TrSbJPAA/spHI1APP/88jsPU8+Nut9NybTJcEb4uhrIX6ajGpnxKAl?=
 =?us-ascii?Q?WgG4PQ6CuzNfBLkvM7piHYPtYO37ja3Mx2PECYkeaRS6gOFO+4QI0f+fTI4t?=
 =?us-ascii?Q?RBSxMHPQtvl4y5Z6KpuFA55c/Hrx26mjdL9v6maUB40Pdu1ZIdGppLjMLzI3?=
 =?us-ascii?Q?D4KVT3Q05zesmX6MzqXg+StDTtVBKst8JpA7rHtxYWtVxJ2a8KIxXjATtpTY?=
 =?us-ascii?Q?84cdOhGopyrtIy4XK/voplo8cI0IZGG2t1z92WgC5rtTV6Zdu5L6xNKINund?=
 =?us-ascii?Q?qNwhAM9Lgbkdi7sSN/Tp01jR9WH75zgDCOhu1xdB7O+qbZm8C8Fc+M4HDYeY?=
 =?us-ascii?Q?gN7Ghy/fgutx6ffXZi3Am9J2rzqqODLey4HPNgFbSYyPcHwzHTSes9gSmUpX?=
 =?us-ascii?Q?t1mG1cZU7NgvGIYlAD7en08r02SFSTsb9JYQa37d?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1698d8da-cb58-46df-3fc6-08dd346827b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2025 06:53:30.3657 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4CfUA9NZsg4os0HAboDEL2xHoscf8maj3tUwnvOFLuwzp+eiDShhv4BfRaCqPxG5Z0lnNYm/JNbNZVUYktBZ22bg7UGQXQZEqNRaD+MZ+oM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7062
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736837653; x=1768373653;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7wleaBsnH2/CuKZkdQER8IMzwoOsx27G9uMdJ6U/kZ8=;
 b=JWmK1u4zGUCRp1BDY3mAgjddm0ki0vKfbfzbQdzEvbAw6J2bKOwKfzgx
 LlVqH4WZtcGfaVmKXdYSFILZmexN96uxdTfsjDmHYRWMCOqUzU/sEIfmO
 cGBXxe0MOKZrIzj9LJB2fPdNSQqGa+jKOVnslzacNKJuW1I/Ui2kSrlrf
 EjFmCxQw7Ky+WU7hU+1kHAYKQyw5e6rJAl32lbjz4gtCQZajFX5y8EHVA
 PtiBGbZ8VxQT/OV5iZBO16zre5jWWkvZnVY2emK/EJg0Yv0OXFPh4inRT
 R+ZKwkMsAdrTTzRT6kHq+W/6c3ZY86BxFl2nNXUDUiVgoyFv2IeAbD2Ii
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JWmK1u4z
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/4] idpf: Change function
 argument
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
> From: Tarun K Singh <tarun.k.singh@intel.com>
> Sent: Tuesday, November 5, 2024 10:49 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Subject: [PATCH iwl-net v1 1/4] idpf: Change function argument
>=20
> Change idpf_vport_ctrl_lock's argument from netdev to adapter.
>=20
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Tarun K Singh <tarun.k.singh@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf.h        | 16 ++---
>  .../net/ethernet/intel/idpf/idpf_ethtool.c    | 59 ++++++++++---------
>  drivers/net/ethernet/intel/idpf/idpf_lib.c    | 39 ++++++------
>  3 files changed, 58 insertions(+), 56 deletions(-)
>=20

Tested-by: Krishneil Singh <krishneil.k.singh@intel.com>


