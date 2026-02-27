Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SCWnCWNCoWndrgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Feb 2026 08:06:11 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E771B3A11
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Feb 2026 08:06:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 10B4981352;
	Fri, 27 Feb 2026 07:06:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IUk15MM0simv; Fri, 27 Feb 2026 07:06:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E248813A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772175968;
	bh=Mr5WxBNeqx85ne3SAGpsLv0LjJHQ4YROTXij+EQwklQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hPUgeC9lu7zN54wZLzZ48YCIDriT90fqaOyLsGAei7tt1GmuWkf8Vp/t31lJG+upU
	 j5nw61lWG114iBCjgo64gXTZO3SNhqzijdHIo5FYqWss3gxsHXh1KqirBEp7sqafaZ
	 eLa4XTxgB70DLGOnij5JCu/Td9j9qOv6lhDMLkx4tQ8Sh+BgPPxuH+863x3RrQ/rRh
	 C6xyNfLmdobUk8ebYXNAtp1Gea04BFINV+9iyePu7CcwjkqB7111mFcj6lNnpET9zk
	 FmSxfJ/s5aGdNH5SyjLupaVfBQG9kMqMnes9CshnQfwxzztu9cQKS+7vRZoeOAuMCh
	 BHvQloWaL676Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E248813A2;
	Fri, 27 Feb 2026 07:06:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 933DD1F3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 07:06:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 90B9C40444
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 07:06:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lhoWP19pDjaS for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Feb 2026 07:06:05 +0000 (UTC)
Received-SPF: Temperror (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B424C4041B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B424C4041B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B424C4041B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 07:05:41 +0000 (UTC)
X-CSE-ConnectionGUID: jUEwXItUT82XjpBa4jWByw==
X-CSE-MsgGUID: g8UptnQHSkymoe58vhFzGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="84606916"
X-IronPort-AV: E=Sophos;i="6.21,313,1763452800"; d="scan'208";a="84606916"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 23:05:42 -0800
X-CSE-ConnectionGUID: R8iOnp8TRSKIkIhWXipxwA==
X-CSE-MsgGUID: BVVVhpmWTiKnc8+pxy0weg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,313,1763452800"; d="scan'208";a="220962619"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 23:05:41 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Feb 2026 23:05:40 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 26 Feb 2026 23:05:40 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.2) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Feb 2026 23:05:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UgUIUU+7wJf+BMUronrIDDXlA0tOOMB2ngKOYRLF4fqtVtQGn5+h7mek/QFQDvzHC6lHCQfmC2BU7McSIPJQO/JCt9aT1SUghWVOW7I+I+8Gh2y4qjcpHLfgtaOu9om6VXwDPOUWUgFV/VdwWp6XqcTq6R6FrELFGyp3BWD5Wwyyw+xjK9olWOGrGLv18CA6yhPNF7dWvWdrk7NWA1YJuka4ba8m5hUSAUm8cbKgo4JTJEB0W1Vy0bbZdYoi7vxXV+007MQ4TRAyqygWywvy+DQjo+O4IbiEevwh+HgUqbGPTt5UlXIPnGM/vLLH8AutLDVJ+J22IiHO8rXjvhy5IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Mr5WxBNeqx85ne3SAGpsLv0LjJHQ4YROTXij+EQwklQ=;
 b=KD4ZoerMaY81NjOEqm2IQw7VJnd/Jr3mwCNrKD5Dm9YinNt1A9a6+ZlBA9kh7ZWj9mjrl5T7zlnkvVehBbrJ1nhv+GuqXREMczIHdcxeewchH0tZ+A1NBJ7XIvwSposOw71ygPrT7VsVjeLzJw79VZyu9UqfblIubII1wKuDBCVSbgLDgKKOtmw96lUGlKNx3ZZfQ0mYLnWqXZQsYWbXC8/JyNhfvrFxn4WExiYhTLj1x3YnxRqOm3CEJcfbQLoe8EzWnfxvJBUhrB3d7oVYIpYpHosdsnr6V+KcIbREzXu0ssygBn9/aaV1M98heAJiQl9z6FZ6m1pY0u05ujj0dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by CO1PR11MB4868.namprd11.prod.outlook.com (2603:10b6:303:90::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.13; Fri, 27 Feb
 2026 07:05:36 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9632.017; Fri, 27 Feb 2026
 07:05:35 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, "Wegrzyn, Stefan" <stefan.wegrzyn@intel.com>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3] ixgbe: e610: add ACI
 dynamic debug
Thread-Index: AQHcj4fYEf28jNMW9EiOVK0vDXvSqbWWP5qQ
Date: Fri, 27 Feb 2026 07:05:35 +0000
Message-ID: <IA1PR11MB6241C6D97D9D6BFECA39B6F68B73A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260127123711.595435-1-piotr.kwapulinski@intel.com>
In-Reply-To: <20260127123711.595435-1-piotr.kwapulinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|CO1PR11MB4868:EE_
x-ms-office365-filtering-correlation-id: b5f490b3-eb45-4218-5bba-08de75ce9abc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: CmgbpKvfIzm0vPFIi2bpXaerbSwpbAaaWOOYguaZngvRxu5tHldH9tCyhV9KQtDmMLfebzy+bhszl1idnO/opiIi3EQZU2ne3uoDy+BNG97U9CKDK2MydJNP8ps+uMGa9VoscD1zX7SwwLwUgTcjp/taXYepWUxx/kigsAxBYmOr1d7YqsHxoLsskEV79HflGw7DwK4Bx08j7ItYIb2ugom6EEteBcOZK0YS5O3FBaqKeZ5+4bk1PRae4GmA5laTadeoK7MBSr1OwKgABzx3Ehux/kRP9EKkXxd7vWJ8kKroJPhgac5EI5jBEWMmdGfhkOtOvnu5jVn8xYSSRGrfOV7z+IV0W/VFPi/JfUuNBgAM5sJQFNKnFtYIextCO3uGJqSn9tNckEUPW8ywvwgMi76uULrgCpCM9/KvRuwPjIWJfIUQAcJZRte4lQlzM964Zc5I5n/RwcSjKIBQ2UggWBrhPCO5GNIGBN8C2sEzUHny5Kwspt4gsJcYJTg77w8LavBh1ZM2n//1KVpRq6MRQr1vtLeuUOHF63LqgEWNcfDxFpbcGy+EIyBBOJ8ORHYsTepLH5NJlXMBFCQ/d5fK5Z+eFgEDfzyjLqf+36tAH1ZNf2rgDISgH0I8SENATja/Y9Na26EOLktCjTzSvuEOji6oDUMgE0QlOi4ciX48HdGLICGWFKwnHPrwl8XMeoOnYUHxyU+Mg1xQd4Gptl8V6VuV61CRvawR3c9IzgbdRCtaVjAF1My0yHgRbJD90SzKysiDUELWllvGm3fV+w/ZMg3VitNg7cyPomVW/1AntWE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?es2gcMv73xw9n5ZyKS6fy+6Z/9gWQ7e10o+de0J6mDdU4GPcByAjHYnqZv6y?=
 =?us-ascii?Q?5cWIMFu110P+3w5JFoduQAUuO3eg0Xbkm0fHBo2LnQGts2Mmfi8+HUc21/r3?=
 =?us-ascii?Q?PHvKPMvH9oS740JsFhTQ7IiWfyQgubmSFTfRLS+n+kogSOvZvPWEqTWubTAx?=
 =?us-ascii?Q?wtaElL5aHkeKcbke6ZVo+2wCKhIMY9CjD6w10xma3rUI4zTOrvyrJX4rpmqw?=
 =?us-ascii?Q?3v9kRBStc8egh3drba+a5ejFW4q/NAEafmLTo3NJ4hnNrWHzIv3x5HtgOdoO?=
 =?us-ascii?Q?UCVq0k787U/Cjq38lZZ9RQO3QdH1mgQiDjrgLn87FNXNk96SQzK2TQVkphZY?=
 =?us-ascii?Q?OI+eBsBwafGcN9YfTBtV8Ze+RY100qgSLL3+gm+P1USwuHBEccX+YgU/VGqH?=
 =?us-ascii?Q?K1liWnJXMOwhIZpPO9ggJg++WYi1yldIY8RyCSfXeIfCrZBEuCDotAX8eSu3?=
 =?us-ascii?Q?Btze8OoSowMzi824JljbXGeizav2G+d92tbo6ucKaDlGvz41lLtpbV8Uxxc6?=
 =?us-ascii?Q?Nu7Z7Lr7e9A6bAwMTtPIXdLa/P6jrlAz9RmUekiA0wSzXkRro2eGlckvQEDJ?=
 =?us-ascii?Q?2JW4pUIlMcU44n/dLpzrcPL8/uYazQEPhl31u45LizQrPV7cvz3ACVhMMJhj?=
 =?us-ascii?Q?Ao7NrngSka66EVbvSFhMXUPRYbCf0Fjpc/3PrdFpjKZCyTUFvU3y7ohAsxvV?=
 =?us-ascii?Q?bSXjS7D7FvWJzuAkH1N60QftGXHBSllYmbpJUMcRS1LXRJp+lnmQls/qGaUc?=
 =?us-ascii?Q?8jO5m4WpwP43IJXSSDlkQtnBy33HmHiiB6JgmjIkxeetimQ/9yuDhpNrDQBT?=
 =?us-ascii?Q?ihcrHgf4uHLMzc/MwTI/HF8yaWdgl89mWTQsRQobAd8+9G5qmNS+cIB++Vi2?=
 =?us-ascii?Q?jkc7ONqz9g87GHW9ClBwnkAeCiynsuUxNElGCxqGoTJpfLkzDvLcvJ6R66XA?=
 =?us-ascii?Q?U6CsXrznOUyL3VGywxO4ZEdfCtW6flwe8Bv9cHSfIvU67bk4AEQ+jz3wWFdg?=
 =?us-ascii?Q?d9S1Omf4WZvKzdYkk3aapBB3pxOrQepL7OFpKS919JPGNJHcE1a0gcLBqHd+?=
 =?us-ascii?Q?M1dUDa8Gnm4S4Rt+aP4D9xpJDzdlQUlRuGyH2Dpxik980hi/sV5JjQvvqABx?=
 =?us-ascii?Q?cwC/EQ1O7OwJR6nG8bwX72Lj9yDF6vnEjPXHLLswElZmjPwMWI0qU7wZMUxt?=
 =?us-ascii?Q?fcPyeDv6Uwnt3Y1DaNaVH8JZrDWCisFSXLSSquQe43tWNBfLwR1eyjyjmQn2?=
 =?us-ascii?Q?79BqrQwGrIzB+wHwBjPtMpMY9zXA4yxFpwn1W1Sse9chEmbEcBo9fzc2wweW?=
 =?us-ascii?Q?DOp+WoljmgopUCrYfVqtEWFqZ3IOUs5dCtUWBHuE4xvnp+1nHnLjJuuh5GUE?=
 =?us-ascii?Q?xyCsIGcO/66QUavJO7uJ7u/IJmWyyMr4/HGNRBV8dDAleyaWeaY+cu0G0UU1?=
 =?us-ascii?Q?J7TjcWJVeGBKJEOLw069cyCIajWG97Rr5N+psH38Vdvzdeb2lGGJBn163onA?=
 =?us-ascii?Q?zE8ov1dVULcCPu/LNwoxp92HdQcPIFdHrO+5J2gL+x6GQBMJdEEHPKTLvuC5?=
 =?us-ascii?Q?Rfo2I3Fgtauc4yOxrsyWtVm0Kv+ymQXoLLzcqs/B251/fGWAyJMaMFkXFJNP?=
 =?us-ascii?Q?3KJfxpxeYCzGwoGRT4dhrwSZnvX5rhBlmlZ7CsnBzIVf0beF31D6NWGcZfXX?=
 =?us-ascii?Q?+He0THX9NYjbApFg4uiJd+wmjzcZgWNK8NSE9gPEPKgSePtA?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5f490b3-eb45-4218-5bba-08de75ce9abc
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2026 07:05:35.2719 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fMnXC8gAn9amelhy5a9GQb519dnUE5IPR5IkW+K75HTEsDw7fnvlMxTHc6c95PGysz3D+QaMvvhBMLRI9UKhJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4868
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772175964; x=1803711964;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rTFfo2a/99oSO40jJRJNaZbsDEVoJ7ieOlr2MRP8958=;
 b=S+Qs/aZ6bK0bIQqmRDdnnZf3KJlQ7AjyF03Ry+sadGzwceiV+AdP4v/E
 IGGqzAFFyuHdCuViBWaC1uakxD5dVf87/Iz/ZjGKQQv5ATr5x1uFcvNrn
 PUVBNyESlwPTO90mYRuXgQogd/TLH0XhZ3pOp6OyVnyVi7bUTzWdQY8oi
 /dpbIejv99+Jgm1/b/8oZFdn0ldVFoXA4u0lx+s19w+06AqLJbYUOr8qb
 u3sJ6WH2nvLcJHsBm7VQW1b3gsiUEmiWmzTgNUMcMI7lXDB7gNK/dFRHt
 Q6kwVjiJklJ7MRRIfqbKKJcKjyCszcH0U7R4+D1eGUp0wnOqlMdKvg3aE
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=S+Qs/aZ6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ixgbe: e610: add ACI
 dynamic debug
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:piotr.kwapulinski@intel.com,m:netdev@vger.kernel.org,m:stefan.wegrzyn@intel.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:email,osuosl.org:dkim]
X-Rspamd-Queue-Id: 65E771B3A11
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
iotr Kwapulinski
> Sent: 27 January 2026 18:07
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kwapulinski, Piotr <piotr.kwapulinski@intel.c=
om>; Wegrzyn, Stefan <stefan.wegrzyn@intel.com>; Loktionov, Aleksandr <alek=
sandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3] ixgbe: e610: add ACI dynam=
ic debug
>
> Enable dynamic debug (dyndbg) of Admin Command Interface (ACI) for e610 a=
dapter. Utilizes the standard dynamic debug interface. For example to enabl=
e dyndbg at driver load:
>
> insmod ixgbe.ko dyndbg=3D'+p'
>
> ACI debug output for e610 adapter is immediately printed into a kernel lo=
g (dmesg). Example output:
>
> ixgbe 0000:01:00.0 eth0: CQ CMD: opcode 0x0701, flags 0x3003, datalen 0x0=
060, retval 0x0000
> ixgbe 0000:01:00.0 eth0:       cookie (h,l) 0x00000000 0x00000000
> ixgbe 0000:01:00.0 eth0:       param (0,1)  0x8194E044 0x00600000
> ixgbe 0000:01:00.0 eth0:       addr (h,l)   0x00000000 0x00000000
> ixgbe 0000:01:00.0 eth0: Buffer:
> ixgbe 0000:01:00.0 eth0: 00000000: 01 00 17 00 00 00 00 00 00 00 00 00 00=
 00 00 00 ixgbe 0000:01:00.0 eth0: 00000010: 1d 00 00 00 0b d5 1e 15 5e 4b =
90 63 aa 0b 21 31 ixgbe 0000:01:00.0 eth0: 00000020: 69 eb cd ab dc f8 8a f=
d f4 53 e2 dc 54 e0 81 fa ixgbe 0000:01:00.0 eth0: 00000030: 12 dc 41 82 01=
 00 00 00 24 20 08 26 53 08 00 00 ixgbe 0000:01:00.0 eth0: 00000040: 08 00 =
14 00 00 00 00 00 00 00 00 00 00 00 00 00 ixgbe 0000:01:00.0 eth0: 00000050=
: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ixgbe 0000:01:00.0 eth0: =
CQ CMD: opcode 0x0009, flags 0x2003, datalen 0x0000, retval 0x0000
> ixgbe 0000:01:00.0 eth0:       cookie (h,l) 0x00000000 0x00000000
> ixgbe 0000:01:00.0 eth0:       param (0,1)  0x00000001 0x00000000
> ixgbe 0000:01:00.0 eth0:       addr (h,l)   0x00000000 0x00000000
>
> Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---
> v1 -> v2
>  Commit message updated
> v2 -> v3
>  Remove unnecessary commit:
>  e610: Convert ACI descriptor buffer to little endian
> ---
> drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 112 ++++++++++++++++--
> 1 file changed, 105 insertions(+), 7 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
