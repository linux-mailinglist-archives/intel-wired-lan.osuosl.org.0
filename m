Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oI5TADAhF2rw5AcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 May 2026 18:52:00 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6995E80A5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 May 2026 18:51:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CD98741FC9;
	Wed, 27 May 2026 16:51:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4N2qfAY3dJou; Wed, 27 May 2026 16:51:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A67141FCB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779900717;
	bh=zydnhGw9pY07viwhZokRJOpwPokz09rz5j8yW7439Xc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5r7w8SOVRWHaylnMgATpav8E216V77I5rMt7c2SZYWegr+Q5FWIjV6C4wO6JvHD9q
	 bnpPdXwVAcSlSJO8ekzDxAgZPtiXK0YjTs30Q/gByxsodj608Y8aea9C4Ssv4UwmDT
	 jix8VK7MiXgUVHS97g/ub97nhkW5PeM9KDgRXjdaPTjm1alpkWL79KI5H4mWe3ObqP
	 gHhzx6OazDDBU0mvK/oUs3FJTl7PrgbNORFjgbpwFwDuCzpsUcbQ/BoirX9CbovSU3
	 93r65AN+tzdpArsz8XF+TqQic8rIAoy2EvWjVNSzjDxNvhfivO/BwtQGV6M2Z9cMzt
	 haLjz2eVXn2oA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4A67141FCB;
	Wed, 27 May 2026 16:51:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3DFA6CC1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2026 16:51:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3AB6382751
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2026 16:51:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7If73geCcdvs for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 May 2026 16:51:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 721D3827D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 721D3827D2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 721D3827D2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2026 16:51:54 +0000 (UTC)
X-CSE-ConnectionGUID: O5L+5+XFRBCvZVMV5VEtvQ==
X-CSE-MsgGUID: D5yZfyikQMCdamzEcKUEyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="84363106"
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="84363106"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 09:51:54 -0700
X-CSE-ConnectionGUID: 3cEjdecsRnqETM9Iafu0Ew==
X-CSE-MsgGUID: nqR53udxQSmKCACpo+7Lww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="241460946"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 09:51:53 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 09:51:53 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 27 May 2026 09:51:53 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.56) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 09:51:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TcfgIOOBki2mzxKjb0UGqsuXa1QtU6qFBvLiDIBPEyTeMtMBUNpivk1St6o7svrdTV3hBV/DXD4VEVLkprpjCIOGabBCYC9XBlBwLLADYfbzjjW5HvvBfdLQkdLKnyyf4dAPa/RlkmuIKElcTrnF7eUnKA8dRNtXb3dE9RJYxxpCspJJ6OUNp9OopzqdxinDO4lv9PfxcSP1TDvji16nf/e2LZmqNdGBo20Tf3aJVF4/uBiwp3hqcOB+xczNdR0+Hxy7ZYaOWetVQ3VrbzIrOqO5Wbm4LDTbGkzStF9loEL1qwZwl6S+MdtbzhmfSvEmbOAhqnis/LSWJ5LsBac4dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zydnhGw9pY07viwhZokRJOpwPokz09rz5j8yW7439Xc=;
 b=OmwkENzha/ro8+gcVNaiWduYMh0gPZxinf8YeF92A1XA93LJhKLKCYDxpz6ajkFhrpKrolkBcF/xexUtgE5hhIl2LPOBCpRrXMugWELqRLLxAFsLLSADRoeLMBVrlGuAhOIJ9QoIh6aaSMW0ijOCJyXxcCXAJcqA7V/85rFzPtG89RSK+4b8qiljd8hU1lqjwvomMmMG2rr/ElM/1cS21ly+2Hg49+1GsSDfxO2FEjfJAksCtX5L790h6XuhmdeV4TeYnsZXUQqa4xpIq+62zlYW7x0aZyX9pfI++YdO5BOEi/tBgh6prefpiB3W8sX/0QDrY+JPiCtKOdb0pEK7Hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by SA0PR11MB4750.namprd11.prod.outlook.com (2603:10b6:806:9d::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.13; Wed, 27 May
 2026 16:51:51 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e%5]) with mapi id 15.21.0048.016; Wed, 27 May 2026
 16:51:51 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 4/4] idpf: pass the return
 value of skb_checksum_help()
Thread-Index: AQHc4fIl1wK/0kXXqEOvN2Rk44n1sbYiLh0g
Date: Wed, 27 May 2026 16:51:51 +0000
Message-ID: <SJ1PR11MB6297C7FF59A1FBB6AF1E5E329B082@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20260512084729.1338557-1-michal.swiatkowski@linux.intel.com>
 <20260512084729.1338557-5-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20260512084729.1338557-5-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|SA0PR11MB4750:EE_
x-ms-office365-filtering-correlation-id: 664e5bad-102f-4afb-9695-08debc104007
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|4143699003|56012099006|38070700021|11063799006|22082099003|18002099003;
x-microsoft-antispam-message-info: ki8pBxYrDnfZ9xAABgIBSR12xcdDchS1mfn5LhcBiwVkKV1pj6VdG5JubPFGOpzHHg3XB/zY0hVquUx4jer+Sp4FxU+WxN5LCKC62lsGVUTlfhvlD/h+uDeOqqslzXcJ2TZOf0a3OFsWJv59KUsWrS2Z9SEnZTHL6n38aBC5IGAa7PzRjMUcn0ngG0kM/vkgDJ9eHxDDXMC1DV8Bso6Dfvy5sdgQ6ELk4ifocFGVmfK/mE1Wm3hzJBQqw83yIDzzXnbZ57lvkRQMHglgQ8Wpb2ODsZZBzMn51QoKMLKTvhWVeW1Jp/bkfuhXrlk1dhdtL8m76TUfmeCMQVHTOYf5pddVvRrrqL8M4iVCtsXy6pQOOlx0JiQyIH8gIo8Fx0gkcShmTgc7PXW1HUSExU1Brit6IzJOuFR5cUkj3uXbT4Sqlz+hlMS8BkhQQUurCnCEcw+WYGZLJp/dXXFzDjPruPZWmZUZqg2LgfD7RiUuVnyhI5byB+RFgEM5pYV/JzijCIzNGzDVBC70i7heNwm0+2n+n1ZHKiK6wu//1/M4Sd++mJI+WWQ64GrfZdyWueQMBwuxls7CtfC2JaZsPeWAUy4TtQ+8uuDf/KYXW0jLEVuihKUmbVGS6+yM1fsEKCIDi3xunay3roeVld8jWUdkT2HeU/YWjVfQmO5APK0K0t5mEvH1SwF2r/eopM3erkEYx8wikeHuhtVKRSFg0UOIM26zn3ldr6y/WowkUPlWEsNX26KsfRyHJuwX2KYcaNHB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(4143699003)(56012099006)(38070700021)(11063799006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?J0qK8mTMaMiTyzwzTvkInYuQRbMVIdmpaq61g24Npr4Pu8e/qsLbjcUtpqng?=
 =?us-ascii?Q?ml2LKxbX2vC/pQ72nyrnjze2N5aYf/smd8lOhl0y9taPoa1rigPYhH4TzhJ8?=
 =?us-ascii?Q?9dc1ghhM6pS3EqzuEGQ5h7JG6NzYvoiOvvC99bNuOmuKlMvbyaVhRiYV+oUL?=
 =?us-ascii?Q?QKLbL37ZdsDUhsGlNGig7JGHxBvJ4H8XWemiDjGRYFUJsZOO80UXovStu9Ni?=
 =?us-ascii?Q?Hr23GftdN95X2s0e29P2R7Y94kQm+0D7CJ2tIiQdmXmeLrqqxircmid6fFLz?=
 =?us-ascii?Q?iR1+iO8cNQIyN0eCJNPv5LbhWtRIrO/0qrp1gPxtcJsvlS2ThPRtkNsF38wT?=
 =?us-ascii?Q?kH1XFzHDD1URhqZ7Cf6e8e8pANYV20CAgMyEPCAxZY4AiSHwlmT1R6vpgj2F?=
 =?us-ascii?Q?COxtd2//nqr5+5tiQYhMH3jXn2GAQxND3GUSX/M06js4FieER3dPFks3VeDD?=
 =?us-ascii?Q?4kT2tEEHwvmB3wWTJXvrAryuc0wtXhfIn7fG2TNmQpBXvo8O3YRGlGEfZkBS?=
 =?us-ascii?Q?1yQiRjY5fIRAMhP4P0fY8KZCIJ5alYgLvuOdGXHDj81OBxogSRQcdZwWkdF5?=
 =?us-ascii?Q?KI2Lok/Sx+MHVDlome1Su9NqdGs4O3OkfQOOO4umZpRyiZtBDCDUl2XIFhDE?=
 =?us-ascii?Q?lB34UUhWyhBoXg95TFC43k39GiyHQwJMSSDxrg/UsR2jP/RVNBeq1oPD6Nmm?=
 =?us-ascii?Q?12+gv8wy81WmFFFzK10WjYxg0LlTTwwansufyCvubYB4sQ6ZyUN6vvoqd0oC?=
 =?us-ascii?Q?QsbZwrjcOtFJT6bXOMlWSXyP/ebchj9pNjfAYUSqvuEiYE3E4e9I2aAXGOto?=
 =?us-ascii?Q?gyAT/pITaXUEVXpo+Ljrs7gwFZhiCQZsj1vTu0JWs/COZhmHfDqv+1IrETcG?=
 =?us-ascii?Q?mhIvBXbZdYybQDay+KJmp4SCvAzgzsFo8M3Wn/n0JDjiZStyxfOhS7HWIkhA?=
 =?us-ascii?Q?dGb4djcEtgXLZYIQPM5kuiPTObIig0Wj0PKCO2biyCZf1U6BqVJhNJO56HpC?=
 =?us-ascii?Q?sjq3tupgSPdH+i5tNLIAPUzd1Es2sYc/LN37GrYyFx84iXUUAuMQAUd8qH9a?=
 =?us-ascii?Q?GMKHhq17boYB3nE2FAKFI94tFNSKopEsHLPEwjBc6SG7jpoDGnopYXLJZS4Z?=
 =?us-ascii?Q?+uj5Ul8j233ZoIAwWFp9ABA29pHq1PMPuX6N1gSfu59rZ09guGgdj4qeXIql?=
 =?us-ascii?Q?khK0WwqozK8HHLc0oEfI1HZKyAs04UvR2Z1Ab3VOxXi7fvXZebm3gD7NgTdr?=
 =?us-ascii?Q?Sj2WgegPFtny0JEBkxl7AOQZjteNuaQ8yQcNC8AzEUKX9KB49b8Gw0vM8dkk?=
 =?us-ascii?Q?IFdOOWw4KnHzztsmXHtiWxAJu45UghqVKRaQ27q+2H+NfjQEqjFwq4l4OZJt?=
 =?us-ascii?Q?qnk6e7wGJwUj8Jl8P5AeHYWlBUKDcH3fLNQ3XTjt/X+fY2r9kMOloXP1/P3b?=
 =?us-ascii?Q?v90Biiw75yHzB5Gv0IaD9Gbo5DfIca9vyipfhUhGlLYY6BfZCtSvzyr0Ao7z?=
 =?us-ascii?Q?0FNOsnIdw/Adm1JUJ7sCl/h+OagK+YjIF6m9P+K/VXaSxkDnSasaV4NJ8LYX?=
 =?us-ascii?Q?Xp3oGbgM95BX6XgfSnmikBJD6P/yjFoBIimTXzxKE+epyWgRbE/ESg3S3GQm?=
 =?us-ascii?Q?4mdQPMxwsgJ53zxna7yhLxniPCXSmFR/xFugsKcatQ8nGyz0hRqd4C7rl8Z/?=
 =?us-ascii?Q?qh7O7/wwWXFVMGUgADVIizkjUkc0fOqbsFtclyZP6pNNBeuPS8CiSfAyrovE?=
 =?us-ascii?Q?eCwSZtMdgQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: pSJm3nOyPDUTC0Ljd7YQTdNrNy7qD9MXO/GVIIrd812dyktc7KKqjVCPhokPc5Z9swftsJKZx0NEzHmt8KuzeewxdDFOLrUIR7G5iXRlHLfiZOEqoN1g0nkPJRN8sl9qZkv2ybQdbkNpdRb0cYZr+ew0IRj7quHOwfAKp+F7shWxDeORTmWNdnXQ6nqosXWW5XUaxfeFMb+ZlNiXVMVDAhJAqJWKU3P0GpyUcWZQ1aw4++PqH4oRLKr80CQer+xLIjXylUUG+Czecx/oy9kqwkABMWLEI8yIjB107n90LeqjYcvNJ4dx3sSkjRigMxe2AdLnf1z6RCT6jFlu/ijniA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 664e5bad-102f-4afb-9695-08debc104007
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2026 16:51:51.2733 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A9urX5QWyt6/MXysg/dsDakQUL1TtXOKml0D852+pyp/Ju3C0Nzuvf5VDJ6F9HOk5LDeL01ZC7j6X3BAHVLlfQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4750
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779900716; x=1811436716;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zydnhGw9pY07viwhZokRJOpwPokz09rz5j8yW7439Xc=;
 b=Hm1p9r/2JQsq6gbqDHbNGzwdPzLWMUn3XsfBpuhKs5tFel5qCan5zOsZ
 0Rl0uxRWI9Y9fZVGRH2co2+GMjaeLvHrR3MRjgT59eaQJRzyvUaE9H0zB
 47T98oT83oTvFVfZjpNHQNj4P7Y7dx7rcF5xJ0dolRgz+n+fF5uH2K+V2
 MRqz6pJ4SJkqSzP63Hg83ioFrfvBDPCGzy3DI75c+3a14etkPzXFuvdCf
 eNtHNxSeqX91GySUTJlHQWbJey/ATvtkpsWs5k9xi3wu7/xbCO25XM55c
 M9hti8Ti/ChiCIMpGHHu8zNEZ5cn/e8KB5Jmfo0YBermbzCmxBbE4B5zx
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Hm1p9r/2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 4/4] idpf: pass the return
 value of skb_checksum_help()
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:michal.swiatkowski@linux.intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim,SJ1PR11MB6297.namprd11.prod.outlook.com:mid,intel.com:email,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo]
X-Rspamd-Queue-Id: 4A6995E80A5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Tuesday, May 12, 2026 1:47 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 4/4] idpf: pass the return =
value
> of skb_checksum_help()
>=20
> skb_checksum_help() can fail. Pass its return value back to the caller.
>=20
> Commonize this software path in goto.
>=20
> Instead of just returning error try calculating software checksum first.
> There is a check for TSO in checksum_sw_fb.
>=20
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> 2.49.0

Tested-by: Samuel Salin <Samuel.salin@intel.com>
