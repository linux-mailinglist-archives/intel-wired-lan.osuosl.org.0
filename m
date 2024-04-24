Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CCB8B03E7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Apr 2024 10:10:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B8784038A;
	Wed, 24 Apr 2024 08:10:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1pxN2hyc73EX; Wed, 24 Apr 2024 08:10:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E919D403A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713946237;
	bh=m5ewsNWwQJ1LzcpNey/xF2F4wI/of0sABJgOorNfnFQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mgT6gTA53ymjieh1YydOVTSBob/cKSd7noOl1bLV3XKQ8liRPXnYrlJlCSd5BAbjL
	 BMROR+7K5igLxSbdW8Cqo9eE0x19sHbOLZ4OoU8au8uJT74nUc3boGuVdW+xc+9ISq
	 MRG+bTRtQXmSzfc/xNACMLn5QAt1cT8dwOG9xK5zbCiVKahHg62HHIAkzbXRZFNNcg
	 ylpOCaLZkUTpsG0+G6PhuB0/ym7teIrWDhkuDWUJictVy+qq2Aq/YJAyZwTG8ZuH5G
	 9l/RAXOmpKOlfeluNRnDN6gU6SPa9L8U7//HUZ8uF98bC5+1nVOk+G9Vj5xmokYVho
	 kr8hJHHOF7Pbg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E919D403A8;
	Wed, 24 Apr 2024 08:10:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D6BCE1BF47D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 08:10:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BCCC960ABA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 08:10:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kxVAVqR5lxzb for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Apr 2024 08:10:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AD9DE6066F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD9DE6066F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AD9DE6066F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 08:10:33 +0000 (UTC)
X-CSE-ConnectionGUID: 5/+E99e5QnK6RuTBW2eTiA==
X-CSE-MsgGUID: cX1cclPdT6qhjcx+XLpaTw==
X-IronPort-AV: E=McAfee;i="6600,9927,11053"; a="13353717"
X-IronPort-AV: E=Sophos;i="6.07,225,1708416000"; d="scan'208";a="13353717"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 01:10:32 -0700
X-CSE-ConnectionGUID: TANrWoN/Qc2DmYm0mwuu/A==
X-CSE-MsgGUID: R+j11EUoTSqltWgSlBR64Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,225,1708416000"; d="scan'208";a="24526655"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Apr 2024 01:10:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 24 Apr 2024 01:10:31 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 24 Apr 2024 01:10:31 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 24 Apr 2024 01:10:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HOG2bMgVNLEpmh48YdpjwTigTwXQzDN7Jj5tvVw0Tu/8EykxrH3TfQJvECpexgBBo5py2SaciIcaEAmiSID4vqF4tawKZ6TytMHPKDf0zv3iisblQO0KesJ391cws+wz6HLbTn/klYUMMT5gptEFa6JN5f30CIrBFeP1/NyYD1QYje5PGeBiPo0GGZ9uOiRCvPPhPmU2+Ia2x8PSxiVAvkIdAET5UPaENbtp+seeCGVFBlyenm75XZeW9HynDeybKIMCGChlXxvy9pK6wTwrOH36CZP9eZkndHKu9/rKqUiDOPXKvGbWmbF2DnunsBqnkWQYuvwfS1GvM5OBdtfHMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m5ewsNWwQJ1LzcpNey/xF2F4wI/of0sABJgOorNfnFQ=;
 b=XUMlTU0lk3VppQdOytq5Wl6U2qqUmBau7cnWhCdKqsy1S9Y+zmPh9+BNhaiX6T1UeshXOUUf8Y/swdv+pUCxANMFrVCsLkR8y39nVeCmV/FmPDRIN3+kiE/PKVLrIYR9kHcN/tseqXoRLYgUfd41M9LrjufOYA5hME4P6EPJsgcJcCTgwk0w+B3wTpk0pq2CXEq2JJ5cIojAJS38AK31E41rbYpEhNwRmRJ0Hnkf+lUY0ewGZ0VUd96I6H43uC9yXijQbX7+T/hqP/eLI7+hOxdf7oH4/paZ2sAZ2mdXDXOK9yBUjzux05eFfPlku4PpMDwKiDs8wRgD5FtmcuBVjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4610.namprd11.prod.outlook.com (2603:10b6:5:2ab::19)
 by PH7PR11MB8504.namprd11.prod.outlook.com (2603:10b6:510:2fe::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.21; Wed, 24 Apr
 2024 08:10:29 +0000
Received: from DM6PR11MB4610.namprd11.prod.outlook.com
 ([fe80::e51:4d65:a54a:60fd]) by DM6PR11MB4610.namprd11.prod.outlook.com
 ([fe80::e51:4d65:a54a:60fd%6]) with mapi id 15.20.7519.021; Wed, 24 Apr 2024
 08:10:29 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Thread-Topic: [PATCH iwl-next v4 5/5] ixgbe: Enable link management in E610
 device
Thread-Index: AQHalLOSpXfOeOrsqkSNKJU83qkmi7F0WJIAgAK7mPA=
Date: Wed, 24 Apr 2024 08:10:29 +0000
Message-ID: <DM6PR11MB46109956E70622A28988A96EF3102@DM6PR11MB4610.namprd11.prod.outlook.com>
References: <20240422130611.2544-1-piotr.kwapulinski@intel.com>
 <20240422130611.2544-6-piotr.kwapulinski@intel.com>
 <ZiZzdAX-qI-7wCMC@nanopsycho>
In-Reply-To: <ZiZzdAX-qI-7wCMC@nanopsycho>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4610:EE_|PH7PR11MB8504:EE_
x-ms-office365-filtering-correlation-id: fc79aef9-b4da-47b3-54e2-08dc64360148
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?gYYJsqP0rn0EcVLSoySmNI51R7AAppvgVmiARKQOgueewe43B0c/au40Zkml?=
 =?us-ascii?Q?Bxq/AVXoYXmEHu4DXzPSoR+TFrrDvm+zk/PSsoZ8TCUquwo5Ld+9KZP+PTIJ?=
 =?us-ascii?Q?nt37EMcaSJNiZC0VOMdZP24sQT08JWgKjPptQa3QUh2T3g0qpzSsPkjQ11xk?=
 =?us-ascii?Q?NrfAanXrT3mucqYBtjBa77IEFu1dEsvoWH8SZoh4daks6qU0AWS8DMe/0a6C?=
 =?us-ascii?Q?Kem0XGkin7b8F5fHswoPDNVytdfE6uvTw2PD29ANU5z7G0ZO4Lzx4s0fanb1?=
 =?us-ascii?Q?UelWuj8G8vot4EHss8eIUpbY0sMJzBXgV5yyK93tKkod8oeTflqCEH7yR6gc?=
 =?us-ascii?Q?/iYP34KqWjyoz492/FXgbgVOfjmpRSWgELswA0b8FrWFKZjfGUyN3RVkH7td?=
 =?us-ascii?Q?LzIrJbWF4eqDMrmHB9BBlAILypiN3XjLEC+OZtOOm4MPPNGjymK4oQDXXY/n?=
 =?us-ascii?Q?KF7214PVj8k3yENPr0ThcvpkdAe6VUT9nRH3pc2VDM2MPpouh9tuzfhz6/N2?=
 =?us-ascii?Q?Uqp7BOKE0bZG4DUrwCBNwobZYVdm+ITDmU0DnhGtIf2jRax7orPOUkCb1Hxb?=
 =?us-ascii?Q?POphsLR2sCzHBTenPMVdZXLm+3alnc3xGlkvCWWOwTYLozucNoeZR6DUWI5l?=
 =?us-ascii?Q?qmXhRh5CZFpDhg7DDqir0/HQXnsjAEG/ueqn9q7rca/FjIPiL53MFDX7sfiR?=
 =?us-ascii?Q?eqDj5BTNN9HoIXUqXh1VnW37USNNZ9UZPuEFxXn6MDCCPlmSUcGJIFqB8zOc?=
 =?us-ascii?Q?keFuD0nCzopQ7NgwjclchMvhGs82CliRd7a3BlpquqCW5n8LkAXYxsuKct0Q?=
 =?us-ascii?Q?UgD4s48WFqgr5+XKBDUJ5u06iC7jFih1sQ7159sMCVTeOcUSw2SOHVpcysij?=
 =?us-ascii?Q?OFbYKdvTklLWUvmyVFPVnT6+H6dejgPYetr2CQVMBRvDT1DZazFBzdBW3AcO?=
 =?us-ascii?Q?9Lt8jlsgkVLB/wrJBBWHv4IGSYytE/vXb/h+ABMR/KKF6w6aIYZcGsVUB6gl?=
 =?us-ascii?Q?W83e92/wkNTJ4IzNZX2ndShYDZ0IS3Yyc6hYBJENzD254YRpU+2RQ9uZmXhJ?=
 =?us-ascii?Q?jI80jNxHlpBNF+5PoSgfhoowwIBHe5fgB0Bhllr2CJMtRKqs3B23KbtMQmhN?=
 =?us-ascii?Q?9KhgWU0BQTJUtBpfCGsnhBmWao7BKB8wBmvgPlbkS53vU6I6hU5mxE4/DMgz?=
 =?us-ascii?Q?hK+AKooO/QFHXN27owazSf23ICvrdCbVsE5SBA++CvNExmEeUA5xUsbE/jSK?=
 =?us-ascii?Q?LCWiRdIcoOB+oMa70fwAOn23VCDGZ4jSSxMZKRI6Ccc3GRzBPhqkVpFOaKVK?=
 =?us-ascii?Q?uHZFg70gYKKVdXUf00OtMCQaDaTIUsv4OuJcto4wIaeLHQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4610.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HyD6BkwGTGxJkYD1+aiQcjwrb77UyU7sHDXTh3E1vT2yZ3qraf642Vnot+7l?=
 =?us-ascii?Q?UofnW72xKCYjnYxKTjNLWdiEB7j0NqOS/X+4gSoxzf6uqEDrFwDYxYxmS7lR?=
 =?us-ascii?Q?7Wbi5m+/iKSc/wUYWRFbfwknuaWQipLuv1WDNnyFcT7e/hySV2RQjOWMjCyp?=
 =?us-ascii?Q?ahOMSDXmZf0efoUq1VWkFF/cGdzsaSbzWsgtEECoyYGDWjPpg2Pd4cUdHjfd?=
 =?us-ascii?Q?kDxCPI9GyUuuQqdmouYhPtJ4IDUZIaDCCe04cyjURAgHevljQ20vANeUvnUt?=
 =?us-ascii?Q?OcR4brf6tQT/wbRag3tPPz+TJZI/mlydwkKAepP0tqYqXgZtGblDd0q2af6I?=
 =?us-ascii?Q?XzeKL7tf6WcXvlXAjkgJdzDRdvbEX1WvxyEdL8Jl9qqKp6ikTndliEpXs3o6?=
 =?us-ascii?Q?HMLHYFIuMzJq0TBQO+HrWfKylyHZOEeJJLs7FjzN2apexLAFGbNLH7BduNqy?=
 =?us-ascii?Q?1lDH5GH9RPNlI+sVEvE/xHNhIP4Ys7cudMTPF08MDFIXkkuebCzlx3uJ9P7z?=
 =?us-ascii?Q?8ZjnbuOjWqVq/e4Gj6xsbWkjMBpjt0JWQ35B3U1fELc7ywAuMClTaVmVUE2Y?=
 =?us-ascii?Q?d5oTmVPtV30RpjxIt0A/cbSkyh6vVWuBMlPgfBUCzY2bDX2G3NCZsm2q0VbI?=
 =?us-ascii?Q?0bsux4Nt6ZniouhVFpmyjbxZCgtweTfdfmufUtan9B2cv1SRq7qu1K8W+9Jg?=
 =?us-ascii?Q?7gvae4y8HUnsIivKwoHBc+eadswgXwD6fFq73JGhWckbvP4vQN4d7FKRQOKp?=
 =?us-ascii?Q?fckxp2lqlYdXYs3ahAQZMKgvswWZUjfYQMgOXkfDshuuU762uRhizIvLcwxU?=
 =?us-ascii?Q?yANFDcVfKLecO+6a4ORWK38wqFYfppWwnsY6Y2r9XZ5SmFiWkp6HItNzGjRR?=
 =?us-ascii?Q?zclcer3JtFS2VTlXllsjJoXGzl0HQ9s/gM8I6O7RArYyjD/8CXkgsbUhjeQD?=
 =?us-ascii?Q?SY2dacvqIgFLlQsfJvHl4MXm4Kg2yJdOR7VowuqY6bCESp8D9EMsubBL5rcA?=
 =?us-ascii?Q?JS1iXztwgKDTI7Z6jsbNDihjEj+IvZ1MZQ6Sw7VBOT9E8/p3h0nNk6v358q+?=
 =?us-ascii?Q?UxKUirnJo7f522Llg7Z/KLajYjENaZSmRBUU+cmKQQrGwjwzPlBBV0zFC37I?=
 =?us-ascii?Q?ocOU/eX5usasEJvbroal07eBB+5h2VBk8wo9KawkZoLrK6N3mn4tZSC3lcax?=
 =?us-ascii?Q?HyJa+AyjvVfwqB9Nz7S1W7f7+hTOJWHC9/lG0fAVLRRSfy9Ol96f4eXz1Snm?=
 =?us-ascii?Q?mCBa6Ppe+eg/0tRRZ7KLEw+9YAcvlYFLvlDOLDAQpISHIMnQyTlPdYJJJqux?=
 =?us-ascii?Q?SWb+eJUFbIUvEe7dUkrHdHB2lzXVsUqtS3wXsfb6Hpt6VtXVswmOgAl493u0?=
 =?us-ascii?Q?MtjMXWzSwVCUu4zziB2pX4dBgIEDIBZZ5FDLQWYoYDfQzqZf6lFRKtEdIkjn?=
 =?us-ascii?Q?vUVpXUvOoWCq3jIwBBwrs9nHzxseUuj3uNHSvKz6wlZjyuv9znrshqEyuJgB?=
 =?us-ascii?Q?1x/cPpaoFUDNrflQPWK5sc2RJEP5UL3J8bao4oWMuNhcK06uFn6WgIkWtGiF?=
 =?us-ascii?Q?5P2L2ayUsAuEB8IDvUCkAFkkiDQIa0LIhJQJtj/m?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4610.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc79aef9-b4da-47b3-54e2-08dc64360148
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2024 08:10:29.2067 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4hOpGuH0F/SzmeFjaWnSo36uhArGzI7KUyKEMw6cQ4d9I+X9QzMlZPPZeMORB6SvnVt01YiAZ4a+PRg3++s1WWGeZk0wrjKOILfoYECBWns=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8504
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713946233; x=1745482233;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7qZoEI+XQgtmOCFMQ3TT1+5EEQ8rnHbQMS52cvet4lU=;
 b=EBTYx6JrYFEGRfA1pTJXgw5561om22NFT09OGlnU7zxZW5YPr+DuQQSG
 jBZ5gRH2bSNhe/+D939zUTWkUyOeBT1DifX4DVURPHX7SCKgx0CJXPKfe
 6yOof5Of9BBrug3W+hdAIHlMBDkCXwOld+69NmMXheUZU/qRdUu0faJx2
 Ki1vLn0b7RS0b3Zfn/XCcOW9qayH8VZC5IProzsKb57H5zq0MSD7Et3PF
 c54O3YYXtviKrJIEKmu3s7mk00qtxo6Y2Qj+JAvMAuBx+kMxQ2nMKVFvF
 xKYkanVS2MsgP0vUtZnPGdrV1lTMOMl773kmAf0548MtOOmdhf3ZgsH+c
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EBTYx6Jr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 5/5] ixgbe: Enable link
 management in E610 device
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>, "Wyborny,
 Carolyn" <carolyn.wyborny@intel.com>, "Glaza, Jan" <jan.glaza@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Jiri Pirko <jiri@resnulli.us>=20
>Sent: Monday, April 22, 2024 4:26 PM
>To: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
>Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; horms@kernel=
.org; Wyborny, Carolyn <carolyn.wyborny@intel.com>; Jagielski, Jedrzej <jed=
rzej.jagielski@intel.com>; Glaza, Jan <jan.glaza@intel.com>
>Subject: Re: [PATCH iwl-next v4 5/5] ixgbe: Enable link management in E610=
 device
>
>Mon, Apr 22, 2024 at 03:06:11PM CEST, piotr.kwapulinski@intel.com wrote:
>
>[...]
>
>
>>diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h=20
>>b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
>>index 559b443..ea6df1e 100644
>>--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
>>+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
>>@@ -1,5 +1,5 @@
>> /* SPDX-License-Identifier: GPL-2.0 */
>>-/* Copyright(c) 1999 - 2018 Intel Corporation. */
>>+/* Copyright(c) 1999 - 2024 Intel Corporation. */
>>=20
>> #ifndef _IXGBE_H_
>> #define _IXGBE_H_
>>@@ -20,6 +20,7 @@
>> #include "ixgbe_type.h"
>> #include "ixgbe_common.h"
>> #include "ixgbe_dcb.h"
>>+#include "ixgbe_e610.h"
>> #if IS_ENABLED(CONFIG_FCOE)
>> #define IXGBE_FCOE
>> #include "ixgbe_fcoe.h"
>>@@ -28,7 +29,6 @@
>> #include <linux/dca.h>
>> #endif
>> #include "ixgbe_ipsec.h"
>>-
>
>Leftover hunk?
Will do

>
>
>> #include <net/xdp.h>
>>=20
>> /* common prefix used by pr_<> macros */
>
>[...]
>
>
>>+static const struct ixgbe_mac_operations mac_ops_e610 =3D {
>>+	.init_hw			=3D ixgbe_init_hw_generic,
>>+	.start_hw			=3D ixgbe_start_hw_X540,
>>+	.clear_hw_cntrs			=3D ixgbe_clear_hw_cntrs_generic,
>>+	.enable_rx_dma			=3D ixgbe_enable_rx_dma_generic,
>>+	.get_mac_addr			=3D ixgbe_get_mac_addr_generic,
>>+	.get_device_caps		=3D ixgbe_get_device_caps_generic,
>>+	.stop_adapter			=3D ixgbe_stop_adapter_generic,
>>+	.set_lan_id			=3D ixgbe_set_lan_id_multi_port_pcie,
>>+	.read_analog_reg8		=3D NULL,
>
>Pointless initialization, it's null already. You have many cases of this b=
elow.
Will do
>
>
>
>>+	.write_analog_reg8		=3D NULL,
>>+	.set_rxpba			=3D ixgbe_set_rxpba_generic,
>>+	.check_link			=3D ixgbe_check_link_e610,
>>+	.blink_led_start		=3D ixgbe_blink_led_start_X540,
>>+	.blink_led_stop			=3D ixgbe_blink_led_stop_X540,
>>+	.set_rar			=3D ixgbe_set_rar_generic,
>>+	.clear_rar			=3D ixgbe_clear_rar_generic,
>>+	.set_vmdq			=3D ixgbe_set_vmdq_generic,
>>+	.set_vmdq_san_mac		=3D ixgbe_set_vmdq_san_mac_generic,
>>+	.clear_vmdq			=3D ixgbe_clear_vmdq_generic,
>>+	.init_rx_addrs			=3D ixgbe_init_rx_addrs_generic,
>>+	.update_mc_addr_list		=3D ixgbe_update_mc_addr_list_generic,
>>+	.enable_mc			=3D ixgbe_enable_mc_generic,
>>+	.disable_mc			=3D ixgbe_disable_mc_generic,
>>+	.clear_vfta			=3D ixgbe_clear_vfta_generic,
>>+	.set_vfta			=3D ixgbe_set_vfta_generic,
>>+	.fc_enable			=3D ixgbe_fc_enable_generic,
>>+	.set_fw_drv_ver			=3D ixgbe_set_fw_drv_ver_x550,
>>+	.init_uta_tables		=3D ixgbe_init_uta_tables_generic,
>>+	.set_mac_anti_spoofing		=3D ixgbe_set_mac_anti_spoofing,
>>+	.set_vlan_anti_spoofing		=3D ixgbe_set_vlan_anti_spoofing,
>>+	.set_source_address_pruning	=3D
>>+				ixgbe_set_source_address_pruning_x550,
>>+	.set_ethertype_anti_spoofing	=3D
>>+				ixgbe_set_ethertype_anti_spoofing_x550,
>>+	.disable_rx_buff		=3D ixgbe_disable_rx_buff_generic,
>>+	.enable_rx_buff			=3D ixgbe_enable_rx_buff_generic,
>>+	.get_thermal_sensor_data	=3D NULL,
>>+	.init_thermal_sensor_thresh	=3D NULL,
>>+	.fw_recovery_mode		=3D NULL,
>>+	.enable_rx			=3D ixgbe_enable_rx_generic,
>>+	.disable_rx			=3D ixgbe_disable_rx_e610,
>>+	.led_on				=3D ixgbe_led_on_generic,
>>+	.led_off			=3D ixgbe_led_off_generic,
>>+	.init_led_link_act		=3D ixgbe_init_led_link_act_generic,
>>+	.reset_hw			=3D ixgbe_reset_hw_e610,
>>+	.get_media_type			=3D ixgbe_get_media_type_e610,
>>+	.get_san_mac_addr		=3D NULL,
>>+	.get_wwn_prefix			=3D NULL,
>>+	.setup_link			=3D ixgbe_setup_link_e610,
>>+	.get_link_capabilities		=3D ixgbe_get_link_capabilities_e610,
>>+	.get_bus_info			=3D ixgbe_get_bus_info_generic,
>>+	.setup_sfp			=3D NULL,
>>+	.acquire_swfw_sync		=3D ixgbe_acquire_swfw_sync_X540,
>>+	.release_swfw_sync		=3D ixgbe_release_swfw_sync_X540,
>>+	.init_swfw_sync			=3D ixgbe_init_swfw_sync_X540,
>>+	.prot_autoc_read		=3D prot_autoc_read_generic,
>>+	.prot_autoc_write		=3D prot_autoc_write_generic,
>>+	.setup_fc			=3D ixgbe_setup_fc_e610,
>>+	.fc_autoneg			=3D ixgbe_fc_autoneg_e610,
>>+};
>>+
>>+static const struct ixgbe_phy_operations phy_ops_e610 =3D {
>>+	.init				=3D ixgbe_init_phy_ops_e610,
>>+	.identify			=3D ixgbe_identify_phy_e610,
>>+	.read_reg			=3D NULL,
>>+	.write_reg			=3D NULL,
>>+	.read_reg_mdi			=3D NULL,
>>+	.write_reg_mdi			=3D NULL,
>>+	.identify_sfp			=3D ixgbe_identify_module_e610,
>>+	.reset				=3D NULL,
>>+	.setup_link_speed		=3D ixgbe_setup_phy_link_speed_generic,
>>+	.read_i2c_byte			=3D NULL,
>>+	.write_i2c_byte			=3D NULL,
>>+	.read_i2c_sff8472		=3D NULL,
>>+	.read_i2c_eeprom		=3D NULL,
>>+	.write_i2c_eeprom		=3D NULL,
>>+	.setup_link			=3D ixgbe_setup_phy_link_e610,
>>+	.set_phy_power			=3D NULL,
>>+	.check_overtemp			=3D NULL,
>>+	.enter_lplu			=3D ixgbe_enter_lplu_e610,
>>+	.handle_lasi			=3D NULL,
>>+	.read_i2c_byte_unlocked		=3D NULL,
>>+};
>>+
>>+static const struct ixgbe_eeprom_operations eeprom_ops_e610 =3D {
>>+	.init_params			=3D NULL,
>>+	.read				=3D ixgbe_read_ee_aci_e610,
>>+	.read_buffer			=3D NULL,
>>+	.write				=3D NULL,
>>+	.write_buffer			=3D NULL,
>>+	.validate_checksum		=3D ixgbe_validate_eeprom_checksum_e610,
>>+	.update_checksum		=3D NULL,
>>+	.calc_checksum			=3D NULL,
>>+};
>>+
>
>[...]
>
>
>>+/**
>>+ * ixgbe_process_link_status_event - process the link event
>>+ * @adapter: pointer to adapter structure
>>+ * @link_up: true if the physical link is up and false if it is down
>>+ * @link_speed: current link speed received from the link event
>>+ *
>>+ * Return: 0 on success and negative on failure.
>>+ */
>>+static int
>>+ixgbe_process_link_status_event(struct ixgbe_adapter *adapter, bool link=
_up,
>>+				u16 link_speed)
>>+{
>>+	struct ixgbe_hw *hw =3D &adapter->hw;
>>+	int status;
>>+
>>+	/* update the link info structures and re-enable link events,
>>+	 * don't bail on failure due to other book keeping needed
>
>Why don't you start the sentence with capital letter and end with "."?
Will do.
Thank you for review.

>
>
>>+	 */
>>+	status =3D ixgbe_update_link_info(hw);
>>+	if (status)
>>+		e_dev_err("Failed to update link status, err %d aq_err %d\n",
>>+			  status, hw->aci.last_status);
>>+
>>+	ixgbe_check_link_cfg_err(adapter, hw->link.link_info.link_cfg_err);
>>+
>>+	/* Check if the link state is up after updating link info, and treat
>>+	 * this event as an UP event since the link is actually UP now.
>>+	 */
>>+	if (hw->link.link_info.link_info & IXGBE_ACI_LINK_UP)
>>+		link_up =3D true;
>>+
>>+	/* turn off PHY if media was removed */
>>+	if (!(adapter->flags2 & IXGBE_FLAG2_NO_MEDIA) &&
>>+	    !(hw->link.link_info.link_info & IXGBE_ACI_MEDIA_AVAILABLE)) {
>>+		(adapter->flags2 |=3D IXGBE_FLAG2_NO_MEDIA);
>>+		if (ixgbe_aci_set_link_restart_an(hw, false))
>>+			e_dev_err("can't set link to OFF\n");
>>+	}
>
>[...]
