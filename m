Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F07B449B9
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Sep 2025 00:36:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD872404BD;
	Thu,  4 Sep 2025 22:36:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CfpGlgWYt-h0; Thu,  4 Sep 2025 22:36:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EFF58404DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757025368;
	bh=yKSv5dxlxC+CCYyhjxd6lqlQZZtJfde0VLEaG+7QXDI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YNBaVwBA8joDCVpDkx6CmT4IsV9Jubcun85hkfgDpHiDdxbPPUUuA4WNytk/nLccW
	 syB9IyfpzLDN5BlnYBOplES3qiC6vk8p1zFUj2po8L1lkvkD7fKAq5TsG55iPrFlI+
	 x5Uv8NwBUcfGj3HTPor4qcNFxvJw0YHKj/yJDpGOoqsWZrry7IGuW3sEG2Sg6OFNXJ
	 jKMSHKxtLLe4nzElY1Ax814eVGxSW7xZpnA5/KZb7gbb01tMNtRgL4bCkdg8lX/Kau
	 zkm9KcthmeAVfQoj/cOppNtt0TjGRBV3YwYWs1Aockof1LjI/pnQuVR8suHuVwHGmr
	 +nPY6nEFf6+nQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EFF58404DB;
	Thu,  4 Sep 2025 22:36:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 89CE9111
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 22:36:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 704B2404AC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 22:36:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SL47_l2y0ggg for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Sep 2025 22:36:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C1363403A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C1363403A0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C1363403A0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 22:36:05 +0000 (UTC)
X-CSE-ConnectionGUID: sUiiKUXlSMaGvUl2bYgZZQ==
X-CSE-MsgGUID: c1dWnIsQRHKHtSj0dAtkmw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="63211167"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="63211167"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 15:36:03 -0700
X-CSE-ConnectionGUID: F4eQk9CbRLiaR3XLfd9Q9Q==
X-CSE-MsgGUID: bzSs708lQBqzVoaQIXy5rA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,239,1751266800"; d="scan'208";a="171241295"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 15:36:05 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 15:36:04 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 4 Sep 2025 15:36:04 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.61) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 15:36:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MaF4n9KdqfbrsHSppPfYG3VIvr9Y4FqnkHdcONwXF0NG0+MdnSgyrLmAHYtw14bgzk9wiND/wCuR6HO32EMrC29Wh5W+50N9UBIQQuRVCVTuzy8vJFpFxkz+i2jqcxZglY9OODZPUJTWuEsQdU3jLRGZvjMd87MQw7JQnVjdP+UxhX557sU4yhXHkNLmV9ha/cikjT7oZGcIkEu+IIpyPe3DTrtYGO7lqg/KK6XI2LdZ6l2kk8hra/66foy2a1qKOKwnhL6MVl2dkrV4EMTXYWBGMybLSGnpqLQmwAKGT0urKGtpXxhpt4w4aDRg5xlQWh9QhF+o7vo9N6jPm2KZNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yKSv5dxlxC+CCYyhjxd6lqlQZZtJfde0VLEaG+7QXDI=;
 b=ivKHCvc0KYCN+XsLSjwdKmcihMmfRKBWEqvEFlom1l1403BoqiYPJF8+yE5UddPVMSeAn96+iSWrVHMOGZ+UimEfhUAZYAZMo6QBxj0KMwMEhA5InihZLdfZiLOPeYohxlYPavW5kLZPlDHPifz28TqUl5WJ23fZ2XQwXFaPLPIWaQspNPkpW/dY7Ha78LWH1kUY5JCURt0bbRz1+LqrWBmp9k9XYpiIG9qNDts6NN1YNnF89FnMko0GY4ZIl9nBdFRAOzXnkYndTL+CLNBoVKN7FYag4EAKqGC8KBe2GwPTB8vDl3Ijqic9hyvNeZoP+cwJatcvYasdIrx8wqtu4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by CH3PR11MB8382.namprd11.prod.outlook.com (2603:10b6:610:173::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.16; Thu, 4 Sep
 2025 22:35:55 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9073.026; Thu, 4 Sep 2025
 22:35:55 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Chittim, Madhu" <madhu.chittim@intel.com>, "Linga, Pavan Kumar"
 <pavan.kumar.linga@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v7 8/9] idpf: avoid calling
 get_rx_ptypes for each vport
Thread-Index: AQHcEy+V+diP5jX5XkSXZoEzbZIdUrSDshng
Date: Thu, 4 Sep 2025 22:35:55 +0000
Message-ID: <SJ1PR11MB62979583779B443FF18D54B09B00A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250822063215.3911-1-pavan.kumar.linga@intel.com>
 <20250822063215.3911-9-pavan.kumar.linga@intel.com>
In-Reply-To: <20250822063215.3911-9-pavan.kumar.linga@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|CH3PR11MB8382:EE_
x-ms-office365-filtering-correlation-id: 9482a3dc-051c-4307-6f2c-08ddec036932
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?RH1pnVeZxRh8P6W8reMPW9HpMUU6WliGcrnJD+cgIlRoN6KhwNMn1KzKejR9?=
 =?us-ascii?Q?T0FH4+jd1FaTdWREcieuFldtkR5XFsJwdzae29zYyaoCKnwj3v1LNbQciarz?=
 =?us-ascii?Q?9DRZcfwDGxXIEcSfPOc0Uy7Ft+vg6GJWCBIXnM9azV/IMBHGSxg7qy7Yzo8N?=
 =?us-ascii?Q?asy7Kr+apRIDoWeVSy7u6YgtVrByWiD0hL2LJX63l5zntwfPguwqcxhF6OdA?=
 =?us-ascii?Q?tWQIwPW9beMoj+a4+ysrUSNvQwjwxIEvl4qbJ4f5WpJp/rRPUHuM9MIeFO5t?=
 =?us-ascii?Q?R1upJXPKa4GwVq8chyC+VaxFrlf0wIcWZCqZffv7AgHXk17p6APi/CHWQcv/?=
 =?us-ascii?Q?IjGcMlOD2cXs9dZ0y/hg+sCkPiM1RilZlyibXwxM3rG67QEaklc/bW/r6Sb+?=
 =?us-ascii?Q?3r1+Cjhe/jD+Kk3RyNbTTph6rmTcXq9s6nb86c2r8ABg+lJSH0r3aZ+iqPqv?=
 =?us-ascii?Q?Ue2/c3WcgdL0qRdOc9y1yVY6EvdLd/d5c92oCy7sNbxCMQEoSnwLukLiSo0n?=
 =?us-ascii?Q?Uqw2T8PUBSUlFi4PIFbBkfPCANunxivJgVGAA8E7+t+zQCAvPzbzKs/0g9fK?=
 =?us-ascii?Q?51fJobQu/46ikwmOzjTnfP5aili7A6lxeBfFGjlWOwHltMJppqxSeo4DMa7Y?=
 =?us-ascii?Q?NCtiFgavBrRLKqS+0Ijkvmj5yaubj5f29BWX426WAdAnrXrKbbwzzt8emxlP?=
 =?us-ascii?Q?F8CE90qQX+GOAxwhTetJ5TY+Cat3m7kH/S1pAsVe4F6E3clH89xdHqCAMSQH?=
 =?us-ascii?Q?QqOCcNxww1zSG5i79z8AGYYt2pu7oL6MDCS1YVjsv/ypyHVNSjj85qr653IF?=
 =?us-ascii?Q?UcOrT+Wt3yyy+iR9uvVZvhTtDMHk+6g/DAZhLPRJHNnvGgt512eN9TTZorEI?=
 =?us-ascii?Q?x+RunEIbGuX1XYnM+xa55akLJBEya23j0KUhVvcvnGJ90Lf4Rtzn9a3T710C?=
 =?us-ascii?Q?V9PkiCixIxhe2v7fXDCpz0kTyHWvzXJ2fo30FjAhphMn1WrOtmmVrXmonRqa?=
 =?us-ascii?Q?Dh6FAPXYws5ga4wDRCHRS0yTaeCBUEJbJerrTTQIZSo0Ee6hJXX4mZTTr4iw?=
 =?us-ascii?Q?itDPc3J36CfTXtO2kq8N5Ui+e+z312adyRnAVnhQtHrQ1NzJ+Lb0fUgXHkue?=
 =?us-ascii?Q?ofObhgpwQNJZVeQCEbcmT1hi+1e2hAxt8rh3eVxcv0XWvYSEY0uJ0rpw+OYD?=
 =?us-ascii?Q?/8cD8dnpNuayffNaxfPkET87jq8gV+wyN7iLAQ/w9wqYFsYW2uTLYGO0lTCi?=
 =?us-ascii?Q?uWjnsbQxSPQoH3JQQ5FIz2iIpBsmf1Anb1ChoYYHQcsENY4REE1SMqvUsjYP?=
 =?us-ascii?Q?oJ9oUtNFLLrDKutNrZpIYMUxQdb7k42BqBs0ctJRmk/NJBzFUt618dpgpYcZ?=
 =?us-ascii?Q?owN83gd5iRqD+7x+4w1FpQl4PWIS6drc78oNA8uyMqEWhIxfTtQpt082Cwsq?=
 =?us-ascii?Q?CItY2lbZKdCeF4i0P9Jh8ok4yzm5gX7zzTYIDRET4m0Q0aswpvIu6w=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OQeAJ4v0jNqsa0ZKGObqA7RjLibPp/MyzisHqJh2ZefCMzqdBXV7jpSrj3NA?=
 =?us-ascii?Q?hpNqsTHcD9DkTrTmsMcohydOdlwtOHCqzT7y26eUhdBKc0jzDX3bt1Saxfxp?=
 =?us-ascii?Q?bPG3vKad2cP693YbQ0fisOR7b69jgQEVmzOGJijF2ckA1WRK2b6MOI7iHd+w?=
 =?us-ascii?Q?bETwNvLAJT8J1wqmdnzIcmYhOIDCERG8baXe8d2nruGwDPvNnVFG+uCkpPpi?=
 =?us-ascii?Q?X02WSebiRDE/HDYxKLxdZm8HnPMZjpqcsAc+kqexGbHu8WES9sK/dcqOK6jB?=
 =?us-ascii?Q?5QqezSD+SHkPj3Uc4s4jiX4rhZcHnCaqGcmZsBgGEWtbrpIo14eYDew6+yXE?=
 =?us-ascii?Q?rwmK04cE7VUypjynX1hFJ4oad/wpfxj7O30zmKn4gjzH0kCZF00faVO9qHtg?=
 =?us-ascii?Q?sa26P8ovBgWSWQP1fLbRCOoR0kdmP2sdzS4mTysAPa4Hp4ORWKHCd/Hhais7?=
 =?us-ascii?Q?M53mSQN9rld3OX+otoIlwl+z3RiYn6TonSvmnB8yNSRumksQlWuMF17FEGha?=
 =?us-ascii?Q?2JH8M8yhSXgMkXlaMK0S5W5f0cvLTUheAbv/1hw99h0Z4hiKzpHGLNiomI3m?=
 =?us-ascii?Q?XZ+o+RdGvWl+ffdijOk5ns14+EnJFCt1gXq4I3ZCefDQ4E4ZAbr9lC2F4htr?=
 =?us-ascii?Q?gGK1pGfuktZZfbyETGWN3v79BEK8o7suGgoCfrKjcvJShSP8PCPgqsdHw2hr?=
 =?us-ascii?Q?p8+MbPi8rC9W1SQjdiR2qrbyW5+PxppdPUd+si0CZoC6MG5uJ0nFkb+1x1sz?=
 =?us-ascii?Q?MWdbOaSN+Uzmt38Ef3kHa4IWKN9T23kObL2ag2x+5QDCbYKrsROc6LRo2akj?=
 =?us-ascii?Q?nxeJckGI68X/GkvHGD1WuF2vDLjzSvPC7XznozUwVZRtQqCX56DZpikSjr2c?=
 =?us-ascii?Q?T4N6hFlf3VvuEwoWL5tD1aten2Wzz9dU5AE1zUhKLjesMLpqhZw8dxrs2iSc?=
 =?us-ascii?Q?o94OGRfYngqfrabJDlgMvyLEgZAv6cKEFRQRNwi2kOsVDKVQJg414qdEKR7w?=
 =?us-ascii?Q?2rCGC/GLZWxjuDXYn21cu/fRUeFvlWmL2Rouq0ZEIfLiLRleRu1kMjQ8bovr?=
 =?us-ascii?Q?bg7ne9a7g+ssstDaXcZ1ZAwaC5JtzviYJe+mrURwfp3RLsWaFxAdMfWHZqgW?=
 =?us-ascii?Q?NJWbI76zF3PxfPdA6ghHqMH+ymcNTzBisyEnD+eGvxNziTdzy3WJ2IpTsM7n?=
 =?us-ascii?Q?rDY/dgMPra2LoUMOAK8cYI5UeNfR4ZIKDmDe0nPJfvcRtKP+5Yo2dEUt5ija?=
 =?us-ascii?Q?zgOaNXvFwo/aAd+uuw8wn9g7kxzUVCVB/+bmcVh+UO3m+irGIGD3S1jtfRCb?=
 =?us-ascii?Q?Hw/F1iWYbj6kcGdGLKHWGCJsjCr47G63TUtdM2bwXfPVU9DK+Gu0q12MW3bq?=
 =?us-ascii?Q?k01OHfGEsK/Pf510DKHcienXeDsUQlrj9xUmn97L4bF8VnVathhXHqC0QVIc?=
 =?us-ascii?Q?EHhVqCYj1QBSJR/5mXWZeOk3t1tnRdG4/RWjZ4jWry4dIPFXXNlHiFM+sOH5?=
 =?us-ascii?Q?xcnIqgyZVvjL6S4qJ1db6FeYDDbLQrkha9ncRfd5jn2HP0EBlyrKp7wNGzXZ?=
 =?us-ascii?Q?gxc+XD+MchSDj18/B9wZL/uEouIvZ3s4dxXmPRv8?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9482a3dc-051c-4307-6f2c-08ddec036932
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 22:35:55.0300 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g68NAGp+oPf8Swfjjb6Z4VB5VR/jj4zk3zOugFyLx8zFoI1g4ShQSQy1YZDzqzdCP9QXds/SjeHiguw1PupUbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8382
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757025364; x=1788561364;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yKSv5dxlxC+CCYyhjxd6lqlQZZtJfde0VLEaG+7QXDI=;
 b=cyrYiXUHeFsMDyhShlC8SSk0QEBFU+pYwhi/wHGiVYvZlDSUEDz1hs+c
 8hAI7zR1zGN9yeIs1YD89U4nK+yWZBqdBvmPKtDCwx0EVQaBrt8n2j9A5
 0Va6bXT1PRrvhz2nvdfBe3HZbOrI02suvNCmSHZGLedbYT/bYqzD7BKrX
 yLLv4qWD1LmivfX/oSA5WImcO+S6WH10yTs/P/6YhUlK+d+lQZUqFj7mU
 TbKzwy/0mnRrSYFU2muQPmGjh+0VtAe78hdYcoLbom0a1odf26fm8funx
 0jlikFrkwM/Jl6zrVziyDKMqZLMp6cInZnCuZWznLx+YRWtwWPQTUY1Iy
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cyrYiXUH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v7 8/9] idpf: avoid calling
 get_rx_ptypes for each vport
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Pavan Kumar Linga
> Sent: Thursday, August 21, 2025 11:32 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Chittim, Madhu <madhu.chittim@intel.com>; Linga, Pavan Kumar
> <pavan.kumar.linga@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v7 8/9] idpf: avoid calling
> get_rx_ptypes for each vport
>=20
> RX ptypes received from device control plane doesn't depend on vport info=
,
> but might vary based on the queue model. When the driver requests for
> ptypes, control plane fills both ptype_id_10 (used for splitq) and
> ptype_id_8 (used for singleq) fields of the virtchnl2_ptype response stru=
cture.
> This allows to call get_rx_ptypes once at the adapter level instead of ea=
ch
> vport.
>=20
> Parse and store the received ptypes of both splitq and singleq in a separ=
ate
> lookup table. Respective lookup table is used based on the queue model in=
fo.
> As part of the changes, pull the ptype protocol parsing code into a separ=
ate
> function.
>=20
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> ---
> 2.43.0

Tested-by: Samuel Salin <Samuel.salin@intel.com>
