Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6AB996E9A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Oct 2024 16:49:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D05274070D;
	Wed,  9 Oct 2024 14:49:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XSkKbYlx8H9o; Wed,  9 Oct 2024 14:49:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 99B824071A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728485347;
	bh=+hJP3jd+S7VlS5tT/ktlini5Hy7SwR/wnvN/h/qJoRA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=R0AEo4yx4fUMMB2tnZgiGY0qGKzs3LGjXe1ODCgSNmGALUmCSnOA2KP09t1x7oV63
	 Uf43Jya66kClLq46I1tiisZrWB414dVFGCS5RFYfA//8/i+UlGYV/d3+F0nEHR8Bdn
	 h8Tymwe6NjVjm/SRRlRiFQn2XQmdejNlGzcjoNFLskXUjJO1XFNrq+kbAwhytCZkhQ
	 NdIQmpSDPTCc7I3tdUuGyJ4BEEb05fOtKbI2znbRi8/xJacpKJPR/32Z/roJDo3w1g
	 +M/6Sek0Khqa5rInEzZVKvLZEmre9d5yMgLwceile8Oykg+19VhDHD0A6G6Ts+kJt3
	 wFTsdzfnSPWHQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 99B824071A;
	Wed,  9 Oct 2024 14:49:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C45061BF420
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 14:49:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BFA5260636
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 14:49:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u_e3pnnHeKxV for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2024 14:49:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E0EB6605FE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E0EB6605FE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E0EB6605FE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 14:49:03 +0000 (UTC)
X-CSE-ConnectionGUID: dx4jo1l6RCiPpasETUk5sw==
X-CSE-MsgGUID: KMhynLOARsmLmx1Zd24DWw==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="38358020"
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="38358020"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 07:49:01 -0700
X-CSE-ConnectionGUID: tvKaBaLzRSSmnmrxs3odOw==
X-CSE-MsgGUID: LtPjB/myQ8+UYYdLlVl/2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="75876127"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 07:49:01 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 07:49:00 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 07:49:00 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 07:49:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D74zniTVq7VcG9+8xzgu3zczg4V2MeCpFGMOQ1RSIjbaHfe0XSZyBZGSe3rYt6uLl5nQgIH25DRECN6flZ8P5o58t1RlokIxvklH1sec0ktqYbeuFshvpLmgMWZtbilVz8vizU7nkwd3enEC0h+coIHlTsNY2cjAkNKhTFnx4j+9+U6bFqwxBz+PftpTlpUc1JJrnLRQ09mUUFkgua/r2pQAdhCGUXRzo/EE+SfnJ0q93GPswfkSNct4HhhjpYDl8T+ymhmW3E9Bx3fQM3+BnPCSVnIH7EyGoRhB3xy0cQLhtz1yZfJ0RotV9scCenHPSut7x65wyYYeKHDNYsfKhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+hJP3jd+S7VlS5tT/ktlini5Hy7SwR/wnvN/h/qJoRA=;
 b=ZEKTLcfq2kmwn1wgP58riVzoz3KlYXsfAXyKeL6iaQNA/lu3KqCf1pltLPBfdR1dgAQmkjnNxiBnyoSDottpzNH62VmLuMbmhFaqvBFiXm2Nf5a6ewFjGvkOH/qKgC0wxzj3KiwTgaTn5/SSZKMWRNqKxH+/9ZYbHBrOtjB5HRDla9K9+FBI28CO3plzxqlipGNk1xkFCmx1QXyOisd8H5Nwuyk5R8refJo0NsBgMN7tJmLgRMdiNWIW8kP8KXOLTwywrZDghdI2xxiMzI7JL0VLvBj5v18aZZVCxsk4mEf98DJ0guhhT3MjbT1APVfHDoOyeMe9fKaH5mkMur9r9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 PH8PR11MB7071.namprd11.prod.outlook.com (2603:10b6:510:215::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8048.16; Wed, 9 Oct 2024 14:48:57 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%5]) with mapi id 15.20.8048.013; Wed, 9 Oct 2024
 14:48:56 +0000
From: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH v2 iwl-next 0/4] Fix E825 initialization
Thread-Index: AQHbGlQPLkwWAPxlZkmR1y/sl8+H4bJ+f6/w
Date: Wed, 9 Oct 2024 14:48:56 +0000
Message-ID: <DM4PR11MB61175C3E0CEE0E0FF7F84E51827F2@DM4PR11MB6117.namprd11.prod.outlook.com>
References: <20241009140223.1918687-1-karol.kolacinski@intel.com>
In-Reply-To: <20241009140223.1918687-1-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6117:EE_|PH8PR11MB7071:EE_
x-ms-office365-filtering-correlation-id: 952d2b7e-0755-4dac-8141-08dce87180c3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?461OmLfsRFR7s5dhfkwdHls8BQ6cS1iKQjvJVnUuY9CzvG9BRdt0SMS6TGvo?=
 =?us-ascii?Q?nQCQFwnezL3kcW58IXIohWEw1KsUzkVnair3cGf5LDI9ENX5RvQEuyccP9NL?=
 =?us-ascii?Q?dWAly7bLA56t9o6G5kwJDfNx8XdUN0bnA1erC1aIXTPEKy/JCAh5OT2XOR3c?=
 =?us-ascii?Q?lgL9qyDXEUAT1YgCpB6v+QKhYyFgZOsUF8/BHv9zPIdOQJJcRsNDL78PZa4b?=
 =?us-ascii?Q?Uv3FvVqEW45hLfeYQAr4pa/wO5hD2Qdtm2xJQ6ie7vqxQEyipotsBmfRcLSF?=
 =?us-ascii?Q?xcv6jg6beTqVJr4XDyH+joubQjv3wH9s97xTYiGvWpClNRaMpLxmnqcwzAbY?=
 =?us-ascii?Q?3TwJuBpPwruoV961H4erK+B+g8sIxXxv/rGNpC34xAYomRtoMHJazH4MJN1J?=
 =?us-ascii?Q?LzCZ8IyWgtduphP0YhpbPVvi++9OykQeQp1YFq3GBF8W4zX4L+gc7NDsRlct?=
 =?us-ascii?Q?4nFzhJa2JXVpFNfWUSofJC0ri1HS05vs7KzZIK/W6nv1iXhB7eia26Zw0HmM?=
 =?us-ascii?Q?gYSiMIufZaIMKfWgwZfP358L0jh8hU93Pe7qUja2KRWjVYsBA9kxU66sQfNK?=
 =?us-ascii?Q?kyYNqWRaBzCBC7tJMPDmMrNmYV7IMCVw4mhD/gvAz34FcJya38ZPNWhoAGAy?=
 =?us-ascii?Q?EottRNWqoLQDSkMYfVpwIkokbsQBLq7aA5dAiMChkkgNJqiY3Yq3oNHyBbtw?=
 =?us-ascii?Q?0aoLZkHRrHpJLxTKGxPEzbsW6vQ7sKKBh9iyjBhIznBzu9RMcO97mYiNUIL4?=
 =?us-ascii?Q?eeAdHSln2UBuS7XccqQ4ujJN+67zCMA+fnUwUikiRZDCE7CERRx19W6kkrW3?=
 =?us-ascii?Q?KrxolWwgfM0rWVFSfCKLDenIzfWz4Qc/NAJTa5Lr6ZUvjoR/EX9bMP7Db1bK?=
 =?us-ascii?Q?a4dY85XZPGcN8DtG8Zp3E076SfEkTXtxZQHBbLO0lkm5+52z1t+4Pbxg1N3M?=
 =?us-ascii?Q?n/Uj4JgicbBpbDoUSpI+mfOU5JhRcN0dg+yj5wSUfHVOgDLKpM6/zX0LWyCn?=
 =?us-ascii?Q?SoQtf5xCIEB3msFWUxaXHwxAZ/UQr/vUJVEF3CxTCL0AbzKtSsz/HM27XRPU?=
 =?us-ascii?Q?ZoF7EkRo7Bfl0224aLXU2RyBCUkjGpYB60lxWKrBwPcFzCHhJg5XXcNBQoje?=
 =?us-ascii?Q?DxOAdLWTMCTIYEZkLv04v/pKBxmkTHRo3ADOKyhxHqIuxUwNCBf6jvIqnPLU?=
 =?us-ascii?Q?KZYQlI2nRGpxl615HdVBXDmahf6RtuQlHAQma/3vSaoS4ozCPbivuBh66JDW?=
 =?us-ascii?Q?sF4CTHvlkEgCX8se3RwdhZZxVERgk5zilgEnvzY6ZC36S1ysEVM/XrhjfOVF?=
 =?us-ascii?Q?PfRMY7JWym/PiJr82H6pEtVt8UlG/zwuRZlxEX+atKwAkg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?L2Zqv7Jx5mHi0xGXq/2F6VWElk5AOQnm7ZmkT3wfTH0jjwq6fgsZqakl+pc1?=
 =?us-ascii?Q?AoQS/h8c0sapidKZCf/HNOYaVSiCKF98fRVSQv4ehDntE7789PAuQ3DWFf/v?=
 =?us-ascii?Q?/ThN8hWUuk7zdcf8tlUmys1LhQ/bXQduVANeddQBSTRQPLhE774eCV+Ku52/?=
 =?us-ascii?Q?Qt2VWpL0XWoRU0Kf4A7t5lW0AYP8nof/FTsA1LVD8C66GMp1J0ucKjaZlta6?=
 =?us-ascii?Q?l6wLc6OCbIBOUjvhPRv6RUvIM1biQj89y1tgT4RVR4AWAsXehbmhf77Z8UA7?=
 =?us-ascii?Q?+yRJACEcjtR1vXV0g2mvP+HNKBxu2TqG+G7UM/bz/l+XrAYVn8IoOI8XgbVs?=
 =?us-ascii?Q?4+Xqvj7JWIrCXjG5CTsxuGaJtcg4TJ724R+fxQnr6zGdZlpLFwGPTjKj5QIN?=
 =?us-ascii?Q?3tabrmRjQfXLca0nkT+diCPv4gtj2pBPVhBdSpnwen+5LAX692gy0WY1zQUy?=
 =?us-ascii?Q?XXvrymHBL4iZfDcxG8m6Sv4kVzFX5cl4er4cpJJ1CU9SdUDq0iRE4DItyPXO?=
 =?us-ascii?Q?Esaluqak7U9lhRM/+h8a4S3s8hbVGikRVrv+K6LTYYkqPlY2R2qqHvUKLjV/?=
 =?us-ascii?Q?Srypl1F7f1bMrthk/8kCf4QqzUYJVbch/Tygc+qifztmkQn4BNszUlMiDlyw?=
 =?us-ascii?Q?eOcqcI84HyUDuFZk0nkTbLYkkk1tkR2k7nL2bWSawV/K9Zl2iOXFqZYkOAuw?=
 =?us-ascii?Q?gHPvKx+CcZr9fl0O4S3tdYkdI0pxWEvysAGJ+gI2XQDJUexC1DpcO9kSZw/J?=
 =?us-ascii?Q?I1C/7yOOCvJigtfLS7PsVJPkwkGwp2H1IjKqvEqAMdhJBnAO2sN2VO3DiDOL?=
 =?us-ascii?Q?L61lQlMW8D565ANIzipnnSnCPnmkgEYHBvZshrcx892qEdx4quJLcfaeRvpL?=
 =?us-ascii?Q?Rto9DhP63NyksV7lXjYb/Lj61sp7Po7KgRG2aItvoLCj08Qua3yX0avXPGG4?=
 =?us-ascii?Q?5FhsjSth9MAgq+PI5GOHI31jl2ZFwF9gkIeZKRhycU7wE6AAASCZ4isnQHDR?=
 =?us-ascii?Q?74mXsQqHaFL/zUoVspfbmUw/xfvAmi+m2qpRIzHGTynzUeEz/4wbLBvOOzIg?=
 =?us-ascii?Q?iUvL6PVkPYDFI/pPVEhGx4XRQvKqXEfzR6H2xBvwNNeZN0c2bGQ8C4EMaXfT?=
 =?us-ascii?Q?B4WjeETFIVYa+YcKUaBvG0CP4GrwL2VALKoHq7QPW5A2AlWr2TmnrfIuz5XG?=
 =?us-ascii?Q?lw4dhmv1cZvw4TPfoQM+A3NMqEmHLhicBPXY3Ju2RY4M65vTJDDxcuvc5ADN?=
 =?us-ascii?Q?8SjxmQo8982v/vrSYdaCYahb9L+ry/VuzI8UIumb+wXjfyoKa7eIIiSsPSMA?=
 =?us-ascii?Q?dC/k2tBCDuuqXEicdW8c5Xwn83mszpawk5EZMpPokIhiCuT5WgkZ2wAQXgXP?=
 =?us-ascii?Q?3ht2YTCZGNXOrKnjSWbR2KHzN0L58zF9zHRwUvTxC0k3wUHduwcA28I9+82w?=
 =?us-ascii?Q?Ez3pahe799z9fxdShxk3VGy9CvPQXbjKbJcTg5kMfoBBqn00sjpMOm4EKJy2?=
 =?us-ascii?Q?SUc9XLhHcjpK2vES1z+fOhwBNwgyoQmKRshv5lUneihcft8YeqS/2/0/1CVd?=
 =?us-ascii?Q?HvixV++LxVqy2D9oLtoLvKpoBzBLb+qyBdRUHPIkoKhRvJj5FUJacoir70on?=
 =?us-ascii?Q?Sg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 952d2b7e-0755-4dac-8141-08dce87180c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2024 14:48:56.8406 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5LEP9QGll0iaar1AvIgmke9rjSQdL6oiERybvQinPCC2MyyFxNn2gYgEl/hARG4oTExqVWHpZqFm4PM20Gr4wDgMKG5h9hT9kaoo+RWDssI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7071
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728485344; x=1760021344;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3n2NAYwCZ97Z012xoDkm9aCKApNpxr4kCDSeVLZUvsw=;
 b=Fp2CpCNEhPlAtsE8i4gq1MO7P5u9YtVt1L61yiYIv6iwb9ACey5cQCjN
 MysLXdhbbdHwWlZmqysPrmt/f0rfYtfOEld0h47nyRHY29t7xtvhLNdJl
 q3/LpdXMuoLPvSsG8ph+zTiyyPSWlpJN1Tk8EKderOiJ4svMgDtuwUsRh
 CLcjKKmRmvG4fvQu0Moz8Zjq9xFYiQqvsXhsJ0z+fCd35wqooMVmf3YHd
 568sl9goX8mKcJZqy4Of5t56vxBtWRPxVKLyPIo7LXKxm+zSe/4GGqb3k
 L3oVAsOwQYqBnZAOL11D+WeqbfcsxrZg/egq0Fc0hykvQmGta2kbAXVCx
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Fp2CpCNE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 0/4] Fix E825
 initialization
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>=20
> E825 products have incorrect initialization procedure, which may lead to
> initialization failures and register values.
>=20
> Fix E825 products initialization by adding correct sync delay, checking t=
he
> PHY
> revision only for current PHY and adding proper destination device when
> reading
> port/quad.
>=20
> In addition, E825 uses PF ID for indexing per PF registers and as a prima=
ry
> PHY
> lane number, which is incorrect.
>=20
>=20
> Karol Kolacinski (4):
>   ice: Fix E825 initialization
>   ice: Fix quad registers read on E825
>   ice: Fix ETH56G FC-FEC Rx offset value
>   ice: Add correct PHY lane assignment
>=20
>  drivers/net/ethernet/intel/ice/ice_common.c   |  42 ++-
>  drivers/net/ethernet/intel/ice/ice_common.h   |   1 +
>  drivers/net/ethernet/intel/ice/ice_main.c     |   6 +-
>  drivers/net/ethernet/intel/ice/ice_ptp.c      |  23 +-
>  drivers/net/ethernet/intel/ice/ice_ptp.h      |   4 +-
>  .../net/ethernet/intel/ice/ice_ptp_consts.h   |  77 +----
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 285 +++++++++---------
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  40 ++-
>  drivers/net/ethernet/intel/ice/ice_sbq_cmd.h  |   7 +-
>  drivers/net/ethernet/intel/ice/ice_type.h     |   2 -
>  10 files changed, 243 insertions(+), 244 deletions(-)
>=20
> V1 -> V2: Removed net-next hunks from "ice: Fix E825 initialization",
>           whole "ice: Remove unnecessary offset calculation for PF
>           scoped registers" patch and fixed kdoc in "ice: Fix quad
>           registers read on E825"

You forgot to s/next/net in patch subjects. This is supposed to
be routed via net tree AFAICS.

>=20
> base-commit: af8cac359cecaab37a171039fc82cfd1f7aca501
> --
> 2.46.2
>=20

