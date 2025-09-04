Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DC332B43AB0
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Sep 2025 13:50:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9BE674266C;
	Thu,  4 Sep 2025 11:50:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3FiZkHmmI7bI; Thu,  4 Sep 2025 11:49:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A717B42673
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756986599;
	bh=vZjfMB6sbDozFNrrjF1a+DSE91KPrd7NPNv/izr1YTA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nMZPuYk8M8IBQ8xoP5DT1GXYCgsqm0ilMOoth+X1oYKJKjkd4xmRXaL+ll5LpSlau
	 ClOgApYGgnSMdHZXCTcs94NDLSoaQDr7fjUYxqfFIbpkO5VpUblogpPe5u/ok1vMvR
	 2LAGvCJ4bJIgbsRT2Sgpz/7ENDaOsjLCk2+2ZFbo1vsISeA7sMLt5h5KSz8x0zvf7d
	 dN1lyt9Mbv1A+yksSQ2JkA57GcFe0wuymPHtJzMAdqml7Bb1yPhcA9AOUWoqqO8/SZ
	 Er0iPgwZvlB9ZkVmhasHA8f0C4wJtbkPm9gyW2dXqoPOlrB/M7Eb0dnXUdQ/WCfLWq
	 k66F6VtFLMQbA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A717B42673;
	Thu,  4 Sep 2025 11:49:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 42C6C106
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 11:49:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 30D5142483
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 11:49:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UBKUNbphbBve for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Sep 2025 11:49:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5944C41099
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5944C41099
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5944C41099
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 11:49:56 +0000 (UTC)
X-CSE-ConnectionGUID: dn88qHWWTGesgWH5Ek05Gg==
X-CSE-MsgGUID: ibNITGGZRl2QCZr02j2Pqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="76924162"
X-IronPort-AV: E=Sophos;i="6.18,238,1751266800"; d="scan'208";a="76924162"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 04:49:56 -0700
X-CSE-ConnectionGUID: ++UeaJU4TwmwMZhstKAFvg==
X-CSE-MsgGUID: dZylgzskSlqyr5TApy/9PQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,238,1751266800"; d="scan'208";a="171115042"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 04:49:56 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 04:49:55 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 4 Sep 2025 04:49:55 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.87) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 04:49:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rC5Zxozyyu8ay3iMdK0yNA6qCO9pLEgPEBdOpKZyXIPt/EM/Vwj+T9MoMmK9MFl8YAHQjF/lxAEyTxNnfZA8sC2v7hMKIp5K1s5CrYHcUwZXS4hFM/Revf/hApaaD82CIy7U6u+iqb83z7md0RhdTTPEcDKczY2Be0XWKGm/l0yDK76nx7VxXzAEQD4E+NRnkX6dDjzR9kRVPC/NZ+nNiImDEMt8t+0UmYEuz7yNcmgdoPr6RIvgV61yCmHn3By2QlanJUZi3Tqwf2eWT2eqndEubSdnQc3kse5dyeoLY2rbd6bLDmlo3Bqy+/arI8xnKsKcrlNFKoPvPLvEki0DbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vZjfMB6sbDozFNrrjF1a+DSE91KPrd7NPNv/izr1YTA=;
 b=iHfNMMc9gatlUuDM9mdMBm2Of3GdYoAefqDSO22UEwC5O7mV6txdyH+q+VJni3f0CHCRG94ugktLz/koTFz75yA05iEWnytA+VqVIV64eAE0ot7gX12Tcetr2hW9c0XaKNIu0DkwVXs1TWMhD+GSbL+SaekB3VtJQ3pfiAcYSZdQPr7PVFNK8y6h6jScd+kcn8CSLFuuH4TH/gp7W76GTI+1PNsVo3OYLnW/wQO1xfHr2NV2ZcOZua9f6k4IQ/fwPLTPLuAFqGp1cAliHKzrYP8ELy/kB9ERbsz1HaRfaLLRetdGwQ7AlVgQaYXbZSpesyrSSUjUoy9nNsrcSQgABQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by IA0PR11MB7187.namprd11.prod.outlook.com (2603:10b6:208:441::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.27; Thu, 4 Sep
 2025 11:49:49 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9094.016; Thu, 4 Sep 2025
 11:49:49 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Schmidt, Michal" <mschmidt@redhat.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Jesse
 Brandeburg" <jesse.brandeburg@intel.com>, Alexander Duyck
 <alexander.h.duyck@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] i40e: fix IRQ freeing in
 i40e_vsi_request_irq_msix error path
Thread-Index: AQHcEFZWocJsR29cd0yeRoJCxrESR7SCve7w
Date: Thu, 4 Sep 2025 11:49:49 +0000
Message-ID: <IA1PR11MB6241A6EFDD3E33252F467EA58B00A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250818153903.189079-1-mschmidt@redhat.com>
In-Reply-To: <20250818153903.189079-1-mschmidt@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|IA0PR11MB7187:EE_
x-ms-office365-filtering-correlation-id: 5f67f4e5-d76f-41ee-ab0c-08ddeba92706
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|921020|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?5hTHP4XOooWSOr2czloYgmeKArQ+3Pa83jEfGOeJZQyXLHGkt3h/dt422UgH?=
 =?us-ascii?Q?FmEDqKlnmZpkZdM4QXHODQx9nHHuNm3Mm+ZENPqZV39hwsDR+YIqo38ZR23C?=
 =?us-ascii?Q?tb1av9b68pju3JigBKjSomJCsdqVpW/SySbPCmZevMLMjT8PwZnLe1caSmD0?=
 =?us-ascii?Q?G40yTvdNOGkoYdv+DwLgqf2zjcUXM0nWHgMC+Y9+PYQvOLcPcDDhLcRAKf5y?=
 =?us-ascii?Q?E4EcioXRqWyc7GAMt1VPnJqxs+T4ZXztX/lySz12ADmaLX+L2+rgk4fTmIJP?=
 =?us-ascii?Q?RlePknCyTJly8OBaZMrXv4xtH66+wTL/Agk3ZJm3WAGIbRS+YyQkoplO9Sag?=
 =?us-ascii?Q?HYZZdMp/fY0C//7qHQ1TCo/xHKYCetST5iQlzl9eZghABePG8ua4Ks8S5PBt?=
 =?us-ascii?Q?unCVm2xOC9zMdS6AtnOkCs8MQ8B4qhzcj5lNbaqxK2Q++AW7dZiMwmG4qevt?=
 =?us-ascii?Q?bdoj4NenRzyMwauo/NZs0kyBeqnJ2M6zmb6z1vinZXBAu6E/5h3Iej3ohhzp?=
 =?us-ascii?Q?CxN0IiCH45wpBR7Iv+GL5Tc/6D5FQ9KRVdZsPLFUlHHzZkORARBvkZs1dQhC?=
 =?us-ascii?Q?OFnpoaKmmhhs/NT0TzJCnGad/vdrd3WoOS2q9L0ICuWAb1zBVhTckG+f5L+w?=
 =?us-ascii?Q?BSTmFOO+fCm8YGFaBL8o/3lnkZ1LcMiQKb+rEjXB/X7CQqFrcUCI9ftYY4rf?=
 =?us-ascii?Q?rUKXuIoLTU1UFummQ7NSuawAve4cqozox+ex4F1GdOlKETGPDwvkq3S/mDqs?=
 =?us-ascii?Q?dqSWkFegJ6gI8LgAIQnzghfN9u02YaT9eH3iMgLmYvsWRS23AVv8WGTZa9j5?=
 =?us-ascii?Q?mqXwfAaBnWVDhtSAQShpSF/IWdedlcZxcWKHMoQgLe30MFj5NUJmToBW9OHx?=
 =?us-ascii?Q?U8XmXWnzGTSpSo30EsbdZDbS0pI4W01PhBZbXQBGJBJ5rcVLaWJ2i/8Zuau8?=
 =?us-ascii?Q?Xbkmdkily6K5kROXQhXk1COJ+saO+QlwbYN8DSLHCQZ4pG+nke9rCqoyqlsV?=
 =?us-ascii?Q?91YPG+DE0DaKYZ50F4Q4jTeejTJrittqo6ZwMf9dPGii9A7hQDyfAJTpwuNe?=
 =?us-ascii?Q?KGqaAM9tU5e5I7wI188lUYxGWd5L9ak/Rry6Y91vtccbETb758XNZMynVbcx?=
 =?us-ascii?Q?6NpHsCCN0yQwAcUrMXvqO5RNg3Z+gx4/wPQo+cwyWDlz4mzT+lZ8WWzKdWfU?=
 =?us-ascii?Q?4oMm3vsxLeqYWBGWnomza3qFteIfB0q0Q053Rw9zlCPf8Uyh+j3dQ0dDDdH8?=
 =?us-ascii?Q?KDMAuods6Rj/IrsN3CtrIbr934AzJ84gBlZ4KBRCzDZZFWijoANnrS+cvkG1?=
 =?us-ascii?Q?0zZY6JfpqoaHWIIaFZUmwAmMpM8vWHNdaJ+pNdUrH5PgZfqrWV0W3E4YNL7M?=
 =?us-ascii?Q?XB6c6VghC2smQgL8zIoWUY+uElVQgDV3IdXKGmfE/lyrtIJ2C3rqMvmdFjS2?=
 =?us-ascii?Q?/MN7Fg9VWP18WHF0lzGh7oaP6ZoEXQxOeeMVV2sZlcKw0FYYaayb54irL3yb?=
 =?us-ascii?Q?TelEvXVNVkjkSO4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(921020)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9ht1FxS75LDrpQITmJsFKZ4dj1EMF1PspdiAEHwqGs7ch8V27cejBYZItduo?=
 =?us-ascii?Q?jBxbP7PL+HHPk0Kku2D3yOBJHeAKgmXh2zAEFeX0aoa1SPSc4+C2IdGeJVyQ?=
 =?us-ascii?Q?yCpwX9FhvT0FwCyvBaSUBFBt6gAs0iSvGvIHlyXCHoF3VjomanASzDNoZi73?=
 =?us-ascii?Q?vDcLwODSsq5QR4lG7YhGyINvdb2ldj/hU5VxAhqDosKV1s0EOms+CSntAeS3?=
 =?us-ascii?Q?nhCa18/eSJd4tU36fNpFe97h74IG6xdfddsMTtugSYlmL0GSmwZ6lzAKt+b+?=
 =?us-ascii?Q?6batpMPAiJgrEx9vYsYvVUql1Y5ZTcagytnvP3Nv4S1QeJQnGJEjyeFLSPR5?=
 =?us-ascii?Q?6xRTnkhrKyfLKcWTDwhQEC9kQ80TAhBzmXWcRdo3CaQXuONirjYF7ZDiPwEZ?=
 =?us-ascii?Q?UObfd2GgA8JC33diCsFxsKAjNCPPQZ8gA/kSmDs/Z0/C+4fU3a8p1YLqWjci?=
 =?us-ascii?Q?9/fLnafEEnCSVE8yF+VL8CUZzvFlruO/J5JQzLQDq/03qrTHy+JP+hn2lCV6?=
 =?us-ascii?Q?4UVDJMiL5Jr0o2Xii1Is64WhdoXo2X9DU2gvQZYrORVBNcFC2zC8w+ht3eMs?=
 =?us-ascii?Q?2o3dpOLhQSHgoK0MkpmAtd5gN6ZJV9M5qljestm6sGdkr7W6NnzF2rY57TBQ?=
 =?us-ascii?Q?pjvsqDIsNXjGA6jH26w1wmBK5L48dZ0cweBPp94L27fWDvz2uef0TctD8IeU?=
 =?us-ascii?Q?0sj51gu3QrB2HVqDBdjmcgduSCPjDdjrSgb3twqW8vSIjB143RDWbV/ry9uI?=
 =?us-ascii?Q?04sqaE9IXa9sgoHTai48ZvrYfVNVDWCMsUz80lRLUhJgOXZADLRmbaw5LpDJ?=
 =?us-ascii?Q?UYl+7uuyWn78FMkRmIgu2hOlkvBzw3Yw64t9mMvB6nu5L6oYvo7DOAxVp9/s?=
 =?us-ascii?Q?yuzKfuL96/QRYuB/fRz2hxh4jxWDgVtKZiOt/6tRhYrzB2gwNDAOl0L3sWwf?=
 =?us-ascii?Q?/VKoKZWmrEeUwBVWuw9VHpZ+IU28ZYyAGLJHPgRYPi2BqRbHcwpeuFJ5Maga?=
 =?us-ascii?Q?OmZh3Y/XZNlfdiIRtmofHC+HJgocF7iClzQhJa1zT760mJuFwiNV0bulxiDe?=
 =?us-ascii?Q?cDH3Fn4qPdwygRwJ2uulVfFUsEyvRpAFkCpuony1A1H6ckh3wbexjQ1Pdyr+?=
 =?us-ascii?Q?2ryf60zseVJZk4rwvPiXamfZQWpYX4HRZJeGZxXGa+CvHQka59ASoNQ+K/4W?=
 =?us-ascii?Q?bvR0YeI1nrgaUgsMtnj1lZPsFg30eH8vkOdiSG6gJiY3Bek5sg4p3JJg7qcu?=
 =?us-ascii?Q?yeP7MaqObQipGfemeXZRlq2L3QzUG2XE2Q9H7TTl3EHhFbgDI2keefLz64HR?=
 =?us-ascii?Q?8XVSU70W4mphMMFHPXfLf1Jij7ptn3N5yIPR4zK8b33rBI+5MSwASEDOylNO?=
 =?us-ascii?Q?k+PUv9rN5uHH/AIbM1EVLvrzMGvQFFbblhHtfI/7NGjUFTwadfAqaKJcEUH1?=
 =?us-ascii?Q?vqcZDLazv1z+8hIpqiDlAPwV6EgZeftbACLI22Rk9uilrkQ1TAgNNa2wqIsh?=
 =?us-ascii?Q?UArWF+rXWvOxQ2mAFLdOiTtQWhGVkk9ET2de3y0ocBPtdH9b28qsMv3E8Cph?=
 =?us-ascii?Q?MX93+IS9ojF8cf77VWzimOViCbd/TWvp7bCgaSwn?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f67f4e5-d76f-41ee-ab0c-08ddeba92706
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 11:49:49.2952 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h0gz4E0ynLiH6wiwmW2qh6oqsxsTEaZRq9HvLOghLg9JpLctADIPJHvZM8FyEOdeIvBDyCNxmFjAtYxzEPPTUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7187
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756986598; x=1788522598;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eyPVq9+uBaKb3bIOw4D+XkVVr7fqYczPLsV6WvTM8Ds=;
 b=BDjNQ/WZzaom+ltwedFD7KMH31HfIol7hgubkEIfZuEeyb+kqI1luo6r
 bA0Ba8KKH3FmBbCCeMmVfJijVdU6/VOugXMbhgzFrRAIgTCmjkkdCpcrl
 TA3lK2GDrMhjxIuiny0G3ugp7Bl1HfpVwh7gdTYx83mokfA74bShVHlHs
 j0XXW1NKOhq94/V9FxpCPCB02R7VwZEeP5YxB2YhOY1XyHG/gYMJxk0Cb
 ZhWqtVKIJjVtLf70N7So4CeohYvN1sex+Y5dOW7OSKKiT2n9Le6NJkxkd
 t7Yc3aacD7zgMwYCu0EU0qHhNsttYgiac/BzPzItsNuMnsczAZsC/gQN8
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BDjNQ/WZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: fix IRQ freeing in
 i40e_vsi_request_irq_msix error path
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal Schmidt
> Sent: 18 August 2025 21:09
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <=
przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>; David S=
. Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub K=
icinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Jesse Brandebur=
g <jesse.brandeburg@intel.com>; Alexander Duyck <alexander.h.duyck@intel.co=
m>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-kerne=
l@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH net] i40e: fix IRQ freeing in i40e_vsi_=
request_irq_msix error path
>
> If request_irq() in i40e_vsi_request_irq_msix() fails in an iteration lat=
er than the first, the error path wants to free the IRQs requested so far. =
However, it uses the wrong dev_id argument for free_irq(), so it does not f=
ree the IRQs correctly and instead triggers the warning:
>
> Trying to free already-free IRQ 173
> WARNING: CPU: 25 PID: 1091 at kernel/irq/manage.c:1829 __free_irq+0x192/0=
x2c0  Modules linked in: i40e(+) [...]
> CPU: 25 UID: 0 PID: 1091 Comm: NetworkManager Not tainted 6.17.0-rc1+ #1 =
PREEMPT(lazy)  Hardware name: [...]
> RIP: 0010:__free_irq+0x192/0x2c0
> [...]
> Call Trace:
>  <TASK>
>  free_irq+0x32/0x70
>  i40e_vsi_request_irq_msix.cold+0x63/0x8b [i40e]
>  i40e_vsi_request_irq+0x79/0x80 [i40e]
>  i40e_vsi_open+0x21f/0x2f0 [i40e]
>  i40e_open+0x63/0x130 [i40e]
>  __dev_open+0xfc/0x210
>  __dev_change_flags+0x1fc/0x240
>  netif_change_flags+0x27/0x70
>  do_setlink.isra.0+0x341/0xc70
>  rtnl_newlink+0x468/0x860
>  rtnetlink_rcv_msg+0x375/0x450
>  netlink_rcv_skb+0x5c/0x110
>  netlink_unicast+0x288/0x3c0
>  netlink_sendmsg+0x20d/0x430
  ____sys_sendmsg+0x3a2/0x3d0
  ___sys_sendmsg+0x99/0xe0
  __sys_sendmsg+0x8a/0xf0
  do_syscall_64+0x82/0x2c0
  entry_SYSCALL_64_after_hwframe+0x76/0x7e
  [...]
> </TASK>
>  ---[ end trace 0000000000000000 ]---
>
> Use the same dev_id for free_irq() as for request_irq().
>
> I tested this with inserting code to fail intentionally.
>
> Fixes: 493fb30011b3 ("i40e: Move q_vectors from pointer to array to array=
 of pointers")
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> ---
> drivers/net/ethernet/intel/i40e/i40e_main.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
