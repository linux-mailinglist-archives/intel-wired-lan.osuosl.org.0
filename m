Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D03A9BA9325
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Sep 2025 14:26:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9533081169;
	Mon, 29 Sep 2025 12:26:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id csCrHgs-TWx2; Mon, 29 Sep 2025 12:26:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 094CE81142
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759148801;
	bh=UO1q7nZcBwRdZrzNNMa8A4RDJ1vF2nZDIBP9z/YVUpY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Lfmy5e7gRwRKNRQ4HC8QuuL+XKCjNF4XoPfcU2X9RtF3J9FFU2uU4GAORO9/vKCvo
	 KaDS908UHg+t+b8c4CNcg78gHt6qNQKy9db65R+cgsU/5R+n2aN2WAcDJfTXhfqDD3
	 jMqTFuX7qQb6X/2tMBSiSmG7xM0NqOFAhpi7Uz+8+erllpOUxG4k0uUMstAuRc0SaP
	 oQFBf2fA74wWj5OpAyDU1ATm80iH1HOEjJ39mprw3z47vcYjwyatuYBkOIXnXAivWd
	 nLuivR2DoE1A9ryCOGc6SNVYNzBVu2xIMLJ2Qwnb4lM+hHVIj3NIycj3ar6LjDz17o
	 19hcDD8EVLPCQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 094CE81142;
	Mon, 29 Sep 2025 12:26:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E5033194
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 12:26:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CBABA806E4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 12:26:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LOpNbLQMeDCr for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Sep 2025 12:26:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E4187805D3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4187805D3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E4187805D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 12:26:37 +0000 (UTC)
X-CSE-ConnectionGUID: t4g7L2WbQ2eAEuK1PCe5/w==
X-CSE-MsgGUID: Q6i44n3fQQWu6QGFO2XV6g==
X-IronPort-AV: E=McAfee;i="6800,10657,11567"; a="64013404"
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="64013404"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 05:26:37 -0700
X-CSE-ConnectionGUID: PcDN7JGuTvKm1giMQursDQ==
X-CSE-MsgGUID: v0RliFv8Slucn4uM5YC83A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="178972905"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 05:26:37 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 29 Sep 2025 05:26:36 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 29 Sep 2025 05:26:36 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.11) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 29 Sep 2025 05:26:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wZUCVH2W6laQocIGswhHGZKpjoUcGuMKwhOVViBXC32Ci1lz0ZXYuaXN7zo6gTVgpvXAWxJroKp0+lTo6YTjK6kY5+dUcgpK/OLK023mJFGOtLZhgir7MH1G6RaX8qE9XGNXuhvus7dZauj+oL4FgTn9aVW3yO3z7KCGmHKjfJzu8Dhd5v8EAzVzSjPE9O5R4o2mKAKrqszeButP3/TxB7YNJovv7EKDIUlloozkPPs0+n54PjVx++q7YQn/fDtE7Bfb+ZteEFUwsBR8GIITGlb6EOguP+f3vRK8jXY1PNu0eHUHIYf0hPly3vNHAL7H4SAe3Phk8AnC6Jddb7oHoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UO1q7nZcBwRdZrzNNMa8A4RDJ1vF2nZDIBP9z/YVUpY=;
 b=TFARPvahIwDVSS+oke53ivGk8ZfSTU+iIVXvIhMeKFaFfJS4DXJtIVewJtsOfgpJIR1MAgOt1v8WWPLxQYWW3gWyKu70qVrCFDykdozXWKnmSn0TF6KUYwdu3mv00HygN+gdT3u90h0EKWZU/gxSQbsjY0gVw9Af0l5Ll6JUqdJ96JuPNXYap+aNIaoZGULttmIBGn2uiHJoIvDlu1sSZh8ImGaIp0G9AD16adX1KGmWbf0vdpxmi9w2YLKDm0PbA9HvRiFwwooeQs/5DdmSgStvgaIO7uIFoUNxnxnDbJBjuAgvRqjoznwUBNZ2BdqZTWURIYVekOudRy/CrN1s8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by CYXPR11MB8729.namprd11.prod.outlook.com (2603:10b6:930:dc::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.17; Mon, 29 Sep
 2025 12:26:29 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9160.014; Mon, 29 Sep 2025
 12:26:29 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Simon Horman
 <horms@kernel.org>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 5/9] ice: move udp_tunnel_nic
 and misc IRQ setup into ice_init_pf()
Thread-Index: AQHcI+eb3Mz1C6VWUkK3CCiTQB8nr7SqHw/A
Date: Mon, 29 Sep 2025 12:26:29 +0000
Message-ID: <IA1PR11MB624147EFDA7BF10757A6D4E38B1BA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
 <20250912130627.5015-6-przemyslaw.kitszel@intel.com>
In-Reply-To: <20250912130627.5015-6-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|CYXPR11MB8729:EE_
x-ms-office365-filtering-correlation-id: dfa9c6ba-b987-400d-3cdf-08ddff536ae1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?hf6BW+DGKrT7wS9fMf41+i5c1bhXi0jP3KWsgSKp5srdkxOEkw/+kqn6n3Sz?=
 =?us-ascii?Q?YUvLjJtJjacGa6+56ZK2Gbsg941rpf4wl/lK4k6DotvcERy5c0XOTs1nesyE?=
 =?us-ascii?Q?pZ0ECwEyJT2Z1bAXEVkObUPER3XEtrzw2DroRuNkAc4ZPrdSXFIxCP8y1ErT?=
 =?us-ascii?Q?lbjGaPjb7jkGKWkTrLWW0x7eXexN50dgAeE39pUnrqPYGtWBIbeSpyxrJhTA?=
 =?us-ascii?Q?bVapkuyBJ3KDNCexWbf8Fd1KJhMmlLrbp5UMBS1zTHYYq9Ev9MQM0oZJFMvr?=
 =?us-ascii?Q?RNgmX7tbAxi9me/6UBX5g1bqy6MoTnRKQmmXZfATam9b0mN2VCwBmFbQn3Dk?=
 =?us-ascii?Q?bQ4OU5Ht5YqU4r277B0xrx48i9SDcD6FG9H2bX/Qq5RCUdk2tsE2Hgul8U7J?=
 =?us-ascii?Q?9RXlFsW4Y+0j+BK/t5eDGc5efIUe4vXNlbjnCpoFVjRq52BoqS0LAL5+JAxs?=
 =?us-ascii?Q?TD2tyS6EhRKpjHQZy4/fnCP5v+f0rycEvhEbDbCVh+3A2PwF3roc1NopdLJi?=
 =?us-ascii?Q?UEJZOOs6wxgXnzqvWe3X6EbgBnPj+NPOal0VEeFYpzUW882JV6W19rSj0izi?=
 =?us-ascii?Q?x41VJnM8+j6dNHvXu6b5GZrpgXJEhgcvjKX6LJZo8B96TBllHb5XxRIG3cgu?=
 =?us-ascii?Q?YJmvUxT0rwVlbSWmTPWiw6mTmdxrcqkUSBu+qlbTGnyg3LdirRmCe5FEP9uh?=
 =?us-ascii?Q?F3KlllPnbRq98x5FDyMpGvYveXTJaVNEPTmTH4EEP80f4eI4TpGclT5xEf8a?=
 =?us-ascii?Q?6MyR33DZEOppyu0KmExUbuoPoM/+yWhox6LNBHlldplIOcVlfcW4FZWJlCyU?=
 =?us-ascii?Q?5aYMciJOTy/YYaaOKwk1UHec4zrm2vevII+wXMBVAlmo8XqeIr7wDwWq4965?=
 =?us-ascii?Q?NaVaISffuhEmAGtYOifSFc4TjwvYLke2emqKClCtTxtgXsSc/YJ8lWcQprMO?=
 =?us-ascii?Q?C+JuLyOS82tUJdJXXcPuqiqHQf5eJ3Lm9+vIQuZHnb7maHJXeV5OlWvxxNGY?=
 =?us-ascii?Q?SJYEenoXhl83hSJEijf9MyAFYGywSZaElOCdjNJlsEWOGeAvsgJNvqIUWyIW?=
 =?us-ascii?Q?Njr0TDthqkZvRRBJlnM+uCwqiih1Mf71o+YERq5ZhFtOZht5dZr+Le81SXTQ?=
 =?us-ascii?Q?8anwH8DmaBq3D1O5EiRGug1og+Tq0rljQNloRqgDlWieNWiAT22THj8p5sek?=
 =?us-ascii?Q?Z39MKzRg79rHCiarDOV54CaaxuN9n/VYejHMFRNqOYD6wCjfBjcvlNSNDYD6?=
 =?us-ascii?Q?ixlXZBGPKx58PqpHmArxaNxhaRP33b6i7KrUeKeYScled35QmA8xJEZMKb4O?=
 =?us-ascii?Q?pdVKPvm81IoMFIRUur0k9QtANPCJYIuF/7IPTbCxk8OcHuPZZOAkHxuRB4t7?=
 =?us-ascii?Q?E34UaVQ5Udx09JnaxrfQQsf6tL9mp/n1s0dTHRreW0gRXe2aGiW4mOti+h51?=
 =?us-ascii?Q?jTms6tfrnsP/UQLnDeAAmv7OSSkFVEfoQKRLhLiD2TveerkObV8NVcujvLR5?=
 =?us-ascii?Q?CI22MiNGJQ57BhEqPsvYqnIvVxADs3kqO63b?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JIGt7b9QwbF3oIqh9ALt/9VAjI3zcW0LxeDLVpZN2/nLdtVJvPVyi4GVvkCt?=
 =?us-ascii?Q?yN3ECyZUrM2pW/sdAlBQj/hw4E9XntwFRgS8eLr+da/1a4C8c5cEeIYdygse?=
 =?us-ascii?Q?BtNMc8Y4M6Y+6KHpVVzqBOANKsHPXi/IdgKEPaSmwQaNgCgZ7UWig7DScj11?=
 =?us-ascii?Q?BDFqZCOLw2suH8NS+Ig1+Uf00gM1pPTnrecmbJ1Ktyx2Ncg6WHmp6o0/gfTA?=
 =?us-ascii?Q?XJNrimml3HnYj7JJn/eM1tPZIeyUM4JjQ9fzfufBZUvUgrsML5nzgmbzGFMD?=
 =?us-ascii?Q?v0Olsa+d5HI78G5tcJwQ96F/UVkt8SqXmLi2/IMZvzOKyG0AB3voDVx09Ucx?=
 =?us-ascii?Q?CvsTwmZB7E/EbWI80hzHKpD9qCYmi/oiJTjDzfyaFjxjqqSlvOqxdYpf2suA?=
 =?us-ascii?Q?su2U+wQ9Xzva+pPa4u0CzcVqaRmck7oJeWXofde4SBVu5AH3b7D8gjg2ELtj?=
 =?us-ascii?Q?9pOc3iM8AwjN9bRLVUl10NsXWA4mvqGU2EKKBeIx5k7VpD/aCW//G30tiP8O?=
 =?us-ascii?Q?LO254a77OxipDbO+w1jdkRANHBmEsUoalyyw0j7wwa4DUjRrX9/19IIapMFO?=
 =?us-ascii?Q?su6ZCyB/bNW5xssv6fpgoNsbe1S5OAO6rIqoORLjbzcP6lZE/88+lTlV3t0Z?=
 =?us-ascii?Q?RzDFDGLXWG7JY2aZEIVRSsRXCDAsMxbXTrqKk6RMjnj/4z4cAIzh25HiFHvs?=
 =?us-ascii?Q?U6p1eUks2ycdIxjBHAH9q6ic7d6sDNruhw8/8CcSkEnuR6RkewzIEO6ebWJe?=
 =?us-ascii?Q?ipz1arqnnqezMlX0JDrgzRqj8n2gv4aedNyAKN4p0jUjL/XA3mZ65cBad7lI?=
 =?us-ascii?Q?nyaJCUNeNhbGrh2lfUV+xr5z1cOxsijqYMNs0Yeu35X2ppmL0VP5yvE7LLOx?=
 =?us-ascii?Q?0Cs0o6VY32/xQO1q4EbXvSY2lYlLOrCeyIyZY+nnepGPYpbECHZ6htyD5rt3?=
 =?us-ascii?Q?XIAF7M3nVZurLmPEuQb3VBucCViM0L5Aii1R9k8DN5uITN43BOf15Y6kexbL?=
 =?us-ascii?Q?lR+xMRPkcEjcOPpJ1T5TZvr4zlblf2tyX6SHMUF1vFeCQq5MneL3aRLmJBvu?=
 =?us-ascii?Q?C9tNe0JnKyZVKEE2RaKhkSQU8sX7h/FBky5i4vHBMq4G9ixIAlhi1eRLXnWy?=
 =?us-ascii?Q?bA8LCT1jJ28mdCrWjKZq9t6DYsH1cZWjC6lzy+Un8S111szxiUVTnGSS7bQr?=
 =?us-ascii?Q?0w0g4BndfBPh5Eu2S3vRyKff4MJV191XfjWBDwO5jSNMkhRGB1zwz7Iwhdq8?=
 =?us-ascii?Q?33XxljcT/zNco/n/jXpfrwfT6riVAFxcGjvGVizY2uVON295sbJ7CppUJGzm?=
 =?us-ascii?Q?raiJYu+JP+2lyrgNIvh4kQpfFsqmM4R1z5NX44/aY3/JCp7YiHc44bVAJ6DR?=
 =?us-ascii?Q?TgLzinz7j3vSzuC6KSQJv7NDkLotgG4CXKAdt/R/L4gsEsgaphI8EoGnWpLj?=
 =?us-ascii?Q?oM91bGLCceivz0nptGkBG08YhKUIThzftiYdM1iC/K5B1688ZSvHiTq7udsC?=
 =?us-ascii?Q?gzPL5gv2krBAAO2fk2rh4oBsnayWRLdsPUo0BVA43pBc66gRgZSCjniCNpXf?=
 =?us-ascii?Q?Eye/ILyOzVqYdgIYkfNyjuah8TpNyhScTGD9uC0b?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dfa9c6ba-b987-400d-3cdf-08ddff536ae1
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Sep 2025 12:26:29.5840 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rxl7LQl//ELWB5gd1iTE0IunXTTm8zHwHgcIKlnmEThodDBLMz7KdIM1zdqKrYXVnvP+1ZUsr2+JcEdWa2B1ew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8729
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759148798; x=1790684798;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UO1q7nZcBwRdZrzNNMa8A4RDJ1vF2nZDIBP9z/YVUpY=;
 b=EE0HkPXTc7/pDflmbn+y45ezWvzh53rkw2lcjDUGizmg8RvDjjRX8jDu
 1+Em9K9j42dKGy22JOgKyu/hVjjj9HPToJr1b+XKEf8aqXizYtwXXZZL4
 9iEbjirE2WR8mIXQ17bZDNb5KOmm/FRwj0DSoQYTTfJZ8pNl1dtNMb7iw
 uH4crVEjK4DpRISiDSZDkWsBCxs5gm7uo96b+QZ/T2y1+Nk6fXiwo6YJM
 FK1FEQtYhIwKJvCq9LisFxUTEAv04BzEEpuPq+wfSKhHVxYjIq0mh0zMa
 LcF0pWdeAiBSaYMJWcpGcxKt9IiJpDd7mYs5w0ISDfgp8IhJBRbLGYbeo
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EE0HkPXT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 5/9] ice: move udp_tunnel_nic
 and misc IRQ setup into ice_init_pf()
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
rzemek Kitszel
> Sent: 12 September 2025 18:36
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>
> Cc: netdev@vger.kernel.org; Simon Horman <horms@kernel.org>; Kitszel, Prz=
emyslaw <przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller@int=
el.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 5/9] ice: move udp_tunnel_nic =
and misc IRQ setup into ice_init_pf()
>
> Move udp_tunnel_nic setup and ice_req_irq_msix_misc() call into ice_init_=
pf(), remove some redundancy in the former while moving.
>
> Move ice_free_irq_msix_misc() call into ice_deinit_pf(), to mimic the abo=
ve in terms of needed cleanup. Guard it via emptiness check, to keep the al=
lowance of half-initialized pf being cleaned up.
>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice_main.c | 58 +++++++++++------------
> 1 file changed, 28 insertions(+), 30 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
