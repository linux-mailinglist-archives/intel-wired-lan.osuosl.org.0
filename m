Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9B19C8C5C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2024 15:01:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B4644021E;
	Thu, 14 Nov 2024 14:01:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IlOH8ncaKJMD; Thu, 14 Nov 2024 14:01:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9552040390
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731592915;
	bh=zBVFVC6yrlwgnki9+GUKD5+b4+d2toxn5/ZYz4Yvwig=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4YCKMW+8ByNzGSDWMjBXNfvLevDheVopBa/zUA9Njse/DZzW0fQCfKHBaTXxT54rJ
	 S7sCcRkh0BLB3ecByApZKsKV9JBvuyP2oMbrYVwYGCKx4j78b7Yxg/k2PcEaYXC15w
	 cXNxj2JRzsOI8fd5XHnqBCUGDnhUG/PMhe4vXn4kroFvbkabotZvI7fftLsCRifRN6
	 RWYqogl2gh5rrRgsdgym+pBNVhtx9PgTRpYF15u6DgxL392pqwvvcqaBPxWIlMzMcF
	 Mu2QSvketZ64COc7mYnro+bEOiUFbyMO9GUxFShCgfVPNsJxqswqfbDBh7D01UgpJu
	 8LSoc+h3GwO3Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9552040390;
	Thu, 14 Nov 2024 14:01:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5251E972
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 14:01:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3EE78600B6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 14:01:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TeMzz6vgMYqq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2024 14:01:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 623E160A6C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 623E160A6C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 623E160A6C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 14:01:52 +0000 (UTC)
X-CSE-ConnectionGUID: O6FsrvBbRYqgVG1oQEOhTg==
X-CSE-MsgGUID: J+gj6oCoT+e7gzcakxo2Wg==
X-IronPort-AV: E=McAfee;i="6700,10204,11256"; a="56930022"
X-IronPort-AV: E=Sophos;i="6.12,154,1728975600"; d="scan'208";a="56930022"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 06:01:52 -0800
X-CSE-ConnectionGUID: 368rk1VuQsm1/vK8AZd4Sw==
X-CSE-MsgGUID: HeDMbGrRQbq2CITIsOuPyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,154,1728975600"; d="scan'208";a="93026827"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2024 06:01:51 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 14 Nov 2024 06:01:51 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 14 Nov 2024 06:01:51 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 14 Nov 2024 06:01:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=atJ2fJkFDThVeDHdW9CNgAE0h0UERi5VqUnmlq5cpyO1LXWFWXzEMS1/Q5LaHVNMn7x0AyFs2LRwH1ZBb7kevZo1FnELCuiH6mFU0/kwGhfCWTKVwNoVJyTPPzYSu/wfL+aSZkxh2vjDHenN87a5ge5ViFfSqSUiVvVBvvlK8hjP5InPI6PFUmZijkPc2CCl7IdVWej/tTGnyYL+dcBpl9LOuzT7dhipscPXXJShjXq4EPLqp/3njLyCQuPExelg/ecLSQhDx6pW5FaHc1cy5mh6DByPV91iUXCwyH36/FaEe2zWHcHxaLiOvIHlpVJvDREv8dQj8YOSbpyIRLOI0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zBVFVC6yrlwgnki9+GUKD5+b4+d2toxn5/ZYz4Yvwig=;
 b=kVRZhv7mhDj4ROLY0tf1UEMZmDaIvVk6MkicAYRlKe6kjkUu3Nxj0vveZet2zizfKW8s0g03s067cI8UohpIWPVCqYhQaDgigk6xIvzi96ZQ+fjJsoPs1qnAjIUzkwCNrYTW4iWWDIf/pxDtucUp9ZtzSuL8rKGuUtcxVjb2F3VeMNctyaNrEbtqvO0I+C5iM4oUKIGLNLx/6N9M6u/n9xr77F+En2J/ldm4wds/ARVKEZYu7iwBxk3tF3uyKDy0CSRVXpPWjWEfrpu7BKD+luha/+CrIPwdvBP5AVcyK7W3B5BDbleA/E0KjtBc455fIbs1qNptv4ZACOdV0IR7nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by SA2PR11MB5068.namprd11.prod.outlook.com (2603:10b6:806:116::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.18; Thu, 14 Nov
 2024 14:01:20 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%6]) with mapi id 15.20.8137.027; Thu, 14 Nov 2024
 14:01:20 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Greenwalt, Paul" <paul.greenwalt@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH linux-firmware v1 3/3] ice: update ice
 DDP wireless_edge package to 1.3.20.0
Thread-Index: AQHbMjBROUgjDEXir0+bSVRUrZzGQLK21qDQ
Date: Thu, 14 Nov 2024 14:01:20 +0000
Message-ID: <CYYPR11MB8429F33E7CF26FC5C7616F19BD5B2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20241108223643.2614087-1-paul.greenwalt@intel.com>
 <20241108223643.2614087-4-paul.greenwalt@intel.com>
In-Reply-To: <20241108223643.2614087-4-paul.greenwalt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|SA2PR11MB5068:EE_
x-ms-office365-filtering-correlation-id: 72571599-26b8-4cea-c48c-08dd04b4d12c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?pe03+uyojr1yx8rwAgSnFa69C6t96JHD8X6IoZbCngapBJJISmS24VMFrvQk?=
 =?us-ascii?Q?U/ThXZQPGDzJQGErktk/8bV275eeQaq6ab338Pqar1sw7zLm5ytfJ9ZlMCTP?=
 =?us-ascii?Q?F2L7DDZA/syWO1RhZkv7WoDSSLp1y7Q+FMLwiy8SZpQJDbq8DAvSzEtzGy+4?=
 =?us-ascii?Q?9M2bq2/I9ZKUVt6Zjj7b53wqWSJgoalbPWQLl4Yid0NE8OrT1kk8Tj3yfM/X?=
 =?us-ascii?Q?lFlWW0STs9xqzeHMem/gmwqnhbyel7VqY6trbEbgkdPKRFOB6TbWcz15B+6Y?=
 =?us-ascii?Q?gCJipb9QODlByJXbAgr7vQGazkfkAyXjaGdx7Uo0i2l0e3/Hh4mKbH5R9Nr/?=
 =?us-ascii?Q?FqmLJnj0fGlcb5Im1rbMMbfbuagYR96i6NlvMqy6hay8Um/hu08RsUSZ8/Ca?=
 =?us-ascii?Q?1gF+vjaO8KgEbKQ7MsKACf8JCBdICVoVDfsltnJne91lhP++D/ZBJY5lxrIl?=
 =?us-ascii?Q?hzg08mV1IvqpWH/JEvdk1emk2p7OUSdNZqIEAHjMkEyzdKhZB/0nAAoaijUG?=
 =?us-ascii?Q?9GRh4+ak9dj3GWDBA1UukZ5CTYAHF0Utn+FyWwKgdPZw7TpjRFnhw661zTED?=
 =?us-ascii?Q?cJ7iDK8umYczBLdcKpnYKPvWTZaAU6a1JwMmuLAASRJg4bwGQvZbzxcRtDmH?=
 =?us-ascii?Q?uPlo7k184DU8fQPB/dzFMNzyTmpWNYYXW6oTQSKyHPx0s6RF/IO/qeE8orQZ?=
 =?us-ascii?Q?sHT85M6KAqLJkkHx5yE2vpIEBeT0nDhRmXkx5zacJz3Pt9JYGgFhBA+JCL+g?=
 =?us-ascii?Q?j+yX8bjYeIA3a5udCXxN7uM3Srhu/5Y3RoZpU63UHnKOs6DtaVU0vVPp1S6+?=
 =?us-ascii?Q?XjqHdGgpptXlH4A+H/NKf4V7lOGZ4Vm+r0qQaNgiP42g59XHe1TNiSJYXfvf?=
 =?us-ascii?Q?gJ6+L4sbOrESwl0YTyoDGdqwLPLPvcTKv5qRjjOvCofRWZ+y7mMuLfW0+YNA?=
 =?us-ascii?Q?ed/eeHy7p/jDYxIlxDOJpxJQHrfXf+5Mfym06DwhtdwHqkB3AKCbur0fTQBA?=
 =?us-ascii?Q?ciN1ZdhGgpnXMprpbJpktdUAfo34fBuGoCTK9oHBmrIiZ+rit2QawLusjRr2?=
 =?us-ascii?Q?GiXC7sSWcHPW5q5ti4vEWLWvjbwJzWm2YqxzB6v8FZyv9Zn8quTkaBUdfG74?=
 =?us-ascii?Q?Yd6bp71IW+fYA8FJuLISl9kGY5PrNYCmlZ5+gjranANCe1opveY1rxYlVzLT?=
 =?us-ascii?Q?8h0UsxpLh/KtQj/HQ+eDK1Bz6YUNVFrt9+1Ff/nhHXAsKvcORYftuV4S/kE3?=
 =?us-ascii?Q?O1Eutrz2z6xjeIyS4NRuMgAHm85JxRqLNpCI8rcF9QZiyltwNxwexN322PlR?=
 =?us-ascii?Q?L20QbV5AWouJ/YFdDsJbC7iqu2cu0wNXP6eN6vvegnUtDyqejkVMAubI6wod?=
 =?us-ascii?Q?FLPHs38=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ig02NONMkctIB3IK9AjEFWCBVYhGLGpX+dDWGCUnJC9lfheOOaPSp4tGgf2n?=
 =?us-ascii?Q?SY4d7FeCu8YjC0YqG8ry2TxR8RzUoZao8DeyBv0y6ODMpsxNRkmEOE2u4qLj?=
 =?us-ascii?Q?G55Hpjuav+5bhe51dnlkk68KdMO7NiAdSK5c0VUO8ojUp3ejI2G71/+jx9xq?=
 =?us-ascii?Q?BeU3EmhAGDMLP9TKAdwj1INSU3vrva/vlH2jIndOQjpIOcr7CBjTIDIGqSfB?=
 =?us-ascii?Q?mUz9CtbSXPW7TOit7FBXUSgbGmjenw/FsEPfFEC5/SKuAJq8+6/otEfF/IyV?=
 =?us-ascii?Q?0hp6NnPd3YCZPHkR8ohMzhhisBrsaofrwpby/h/kbEjSxwE/yUAI6saPlM5A?=
 =?us-ascii?Q?fIwBsNluHylhqoUiEEnUPwZAeF+ePSnydCW3n17GJEmaNBV1TTdrcVIoasPj?=
 =?us-ascii?Q?lnDqBnT9461TsMdscIdyY9iBlgeI+9k8LziLBOGgYdweMQ9Qbvw21jy9zOMh?=
 =?us-ascii?Q?pnv6ydYVjNbyaxzbCe6glHKhw+yImrmQXL/XEA/zmNDTNWeSmtwYN0E0qhbw?=
 =?us-ascii?Q?sNGN8ubjJFM1JaJK7AK59ajHBUGG5ApNEqrEZym3dP/q0g+s2WNJQTRZvdr+?=
 =?us-ascii?Q?8OrkwXVNYSa2uAkLJZjKU8mkkL9dtHk3Kg22rDbwlACfw7PKzbUcWUaWFxsI?=
 =?us-ascii?Q?Mp0DHkdzUhKR8Txxrb6NoPaLRfS70mAaONsR48/Nquom0lR5qaU8r0E99dJe?=
 =?us-ascii?Q?6zBnrlD1j+gJJVKSqZAW8xsJoIoAzT+EocwTheRNejUaAo7Cs/u7h/82shZl?=
 =?us-ascii?Q?r7FHAFklwt86X9k5+pcm2vcb/INEOUICc4bOnzb7W7alh4r7BpYYo+BiKxsR?=
 =?us-ascii?Q?qNNSbWuAvx9af7gpy/uQd1vhDxVfCQQlIN2+HhmkbvHD7P4qV9WC3N9yPjYA?=
 =?us-ascii?Q?yppzR7o/3ewbGP3TfEjznjMlN4nip1+MZsxiBWaya1D5Hs6UGrV8GX5qwXEh?=
 =?us-ascii?Q?CQF0Pbvx/0qpty2JQXa2JNE8iZWAnrMHUdxACW6M1Sv6+9p13nj6ndact3aQ?=
 =?us-ascii?Q?NYqig9TnKsbPFhDXSEHtGQPZnFPTG0XvSVqYbazt7/Z1VA8yJGvkHImBD8KI?=
 =?us-ascii?Q?CW3NBApgmUnSdl9kIy6fU+knqvXy4hOQ9pLxNtNi5KCNnsHIfOTLHuBUEIrt?=
 =?us-ascii?Q?LCIY3tO9iChe7+lnOhA8sP8DYOLoiP1OojNKGtsbs9ZHAUDwZLiOFK8VlSOb?=
 =?us-ascii?Q?HcPwWzpXwnm3m+n5rPOgRy+Pkc7zlXLKgHa1wgSYIbl7rv0iYu1yWFn7MYhN?=
 =?us-ascii?Q?fnV9p2h3DqF+mTycvZjr10CypgYApaTEksc8WzcCruXcVwV3VfRSIyXzs9ug?=
 =?us-ascii?Q?KCHuBvJUIpYRtedVxOwBog9NDIh8+p2zMrVB8PEGPp1LpPnffLLM1bjnX2E6?=
 =?us-ascii?Q?lNy/edn4ZDfUGU2cVfF1oT/RQ9+kB+UDUfUWAWe+GuSyElnn6pb4lCQhPuiw?=
 =?us-ascii?Q?UypbfClWxGz7vmtrFHuHflMrMFBp+m0Hog1KVT82iTfJwCU9bwsoR9FH2tt+?=
 =?us-ascii?Q?N9Dujz1Y0PJtckFD7Ew7K6Rg5wVbMdPRS9Qcvw6ffiz1DaIMgdlhxLTG2Crn?=
 =?us-ascii?Q?vtn3Z2f7elBCgmolce4rmbGPdVsq4HJ2st8wlbnqGACOmOKWd0OjqPxPLt4J?=
 =?us-ascii?Q?DA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72571599-26b8-4cea-c48c-08dd04b4d12c
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2024 14:01:20.5883 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +EHfMMa4Y3hFORZNgsawnUYCAZIC8ER3Om1NwPxUJxmB1Q52r0aF9IOVCQEzQZAhNz28sOTV+gtOR06GcHVuDtvJmlpuGbqH+EyupPcwWGv66C3zO6hAt49mL8P8McYM
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5068
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731592912; x=1763128912;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pdrm5hIZVAi9SGe8ovvVtXXnNUBRnRBoteY22iNiR7w=;
 b=Eht18R79Gzqb+8Yq3jEdUmNU+3YCuN8jXd3or6k1e8s2CYePodghTIyK
 sCc4sDRfM4i4BB7Bi6JQW7Rlm8wImHavYAFKYGTx02o12/AExZbb9x4EA
 Nz3B595W6LOk3nAaQVLGXSIaMSBOJsHWVQI+CY8jndkWbzzkOk7wetjUp
 Xmfa1yv0b6lYofVoDth0tv1CY2Cx9utgCUr2WMRDIMmhgvNXjhaDfOmX8
 uDOdgemkTOzDjwqbUeSDd69Q1bClhOcR5xZiAvlp3Y2s5y6Ghip9KdKA+
 1Si2sKMRGBQVRCelJGL/YbBx8Bt470kcOzaHsGFFbdmaSd0uEYbn8j4U3
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Eht18R79
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH linux-firmware v1 3/3] ice: update ice
 DDP wireless_edge package to 1.3.20.0
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
aul Greenwalt
> Sent: 09 November 2024 04:07
> To: intel-wired-lan@lists.osuosl.org
> Cc: Greenwalt, Paul <paul.greenwalt@intel.com>
> Subject: [Intel-wired-lan] [PATCH linux-firmware v1 3/3] ice: update ice =
DDP wireless_edge package to 1.3.20.0
>
> Update ice DDP wireless_edge package file to the latest version: 1.3.20.0
>
> Highlight of changes since 1.3.13.0:
>
> - Add support for Intel E830 series driver using a dual segment package
>   with one sgement for E810 and one for E830, which increases the package
>   size.
> - Add support for 192B max header length.
>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>  WHENCE                                        |   2 +-
>  ...3.0.pkg =3D> ice_wireless_edge-1.3.20.0.pkg} | Bin 737832 -> 1442692 =
bytes
>  2 files changed, 1 insertion(+), 1 deletion(-)  rename intel/ice/ddp-wir=
eless_edge/{ice_wireless_edge-1.3.13.0.pkg =3D> ice_wireless_edge-1.3.20.0.=
pkg} (50%)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

