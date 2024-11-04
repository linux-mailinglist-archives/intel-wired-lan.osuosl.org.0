Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7BD9BB24F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2024 12:06:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5003980DFC;
	Mon,  4 Nov 2024 11:06:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mONamaX5b3S1; Mon,  4 Nov 2024 11:06:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 987768134B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730718389;
	bh=b0Yw2IzhKSI+poCZth9TWxVhm31trKYIPnhde6nCUtE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qVozF7qCFX/T8h85z+Uu0K2itOem1+L0nGiKLgv8GOno37mO61mCmZQvaIjf7qUSs
	 xf73CYc+4QiGbcC8wsRnerabnGCKIkbSlseRThZamjxf5YJOgxBK2rrC27413DN2s8
	 SKUhKyeGgDFmXIUJlnC4WxOUkxgtPtgJkYiY/VarjhLsgk7aVkuleWHwrQEo3aJ70n
	 lKDDxBkUdjVC7FeqQySXhSbBsO6DMP8MEESCa00V1REY9J2pqnW40zJc+e0Vpa+Myc
	 Sxl8nWiWML6jhMTUc5ax6rMSmLVLqZxntKMIPSQ/U1OnSOL7vkmVWBRVn5e8ZDmczM
	 zT1QVSBPLzzrw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 987768134B;
	Mon,  4 Nov 2024 11:06:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3CA5AB8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 11:06:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1EB6E40B19
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 11:06:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WWvV2Oswrf_M for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2024 11:06:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 44852408E8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 44852408E8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 44852408E8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 11:06:16 +0000 (UTC)
X-CSE-ConnectionGUID: SHNAHU2mSH6eugAAolJO+w==
X-CSE-MsgGUID: NvFq4U4WQHGuwRTeQsLh7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30183708"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30183708"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 03:06:05 -0800
X-CSE-ConnectionGUID: bOqmypTHRgKV6AgOjkXY+g==
X-CSE-MsgGUID: 55YTkGdiRzuap0DgQh16qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,256,1725346800"; d="scan'208";a="121086987"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Nov 2024 03:06:03 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 4 Nov 2024 03:06:04 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 4 Nov 2024 03:06:04 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 4 Nov 2024 03:06:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yjH6SfLgmGr3zGitRyoWanOQtFDhc26xkLb8Gio7i8Mtu6wk1d4XEKyzP0PjEipmYmKGFe6iWz9DlljmWmvISdn/wQuCjhiv+K1+65Wac6Y3dxtBHzNeuw6W/+WXNvIHg6481DH3pVT1Uuw/bk7plQhHXafOW8Tik1Aa/9c3avD47RksXcQk9yAEq9Hbf3jO4PdZnN7CFbee/OzbvAaygrJ7s2xC0CMAcAXYjGh1MJVy+FEi+1YgBujZQUXYQyrpCWNovJCpUtzgbpuHPOqpyG3thV0Nal5Mp5DMBv+Qbb1Bj0KEeUjiItMSAIWD9tM8rayRY8RwPY8lLPU5uCdKUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b0Yw2IzhKSI+poCZth9TWxVhm31trKYIPnhde6nCUtE=;
 b=Zhql6syGh8HDkftvjwfFiXRaPsdbjMDAmQp6/OYgW4FGvR7bDyqQzjcRUrZQ/OvQ0/C7c7suE4xeXe/n+4D0orvb0J/bMpV4WtzKkf7Pao4d0Xl0tTuEVuBPUOSSjf4O/SAwkQ9YKKkZRBqGKYNNFTp9mdfAnmUlA5PoH3V/Gg6Tz3ZRJr7l6VwkJRbnYdxe/GIb/wmM4QI2E59eVFpUpxxCW9yuHgKcwjWdxckVRMR4ud0y+BIFHbwjszyUIP7e0fHChakg0jqsJvCIrcT0TT9HYnKgAjuWxAh/yeLomunjiixmSZpaBzUohDjBD9OEuzFyI0Xii7kREVCpaDnZLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by CY8PR11MB7082.namprd11.prod.outlook.com (2603:10b6:930:52::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Mon, 4 Nov
 2024 11:06:02 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.8114.028; Mon, 4 Nov 2024
 11:06:02 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Polchlopek, Mateusz" <mateusz.polchlopek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 Rahul Rameshbabu <rrameshbabu@nvidia.com>, Sunil Goutham
 <sgoutham@marvell.com>, Simon Horman <horms@kernel.org>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v12 14/14] iavf: add support
 for Rx timestamps to hotpath
Thread-Index: AQHbJEVA1rhxIz4eU0a8MWobqnYJa7KnCnIg
Date: Mon, 4 Nov 2024 11:06:02 +0000
Message-ID: <SJ0PR11MB5865FE4484294C2FB8D34E348F512@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20241022114121.61284-1-mateusz.polchlopek@intel.com>
 <20241022114121.61284-15-mateusz.polchlopek@intel.com>
In-Reply-To: <20241022114121.61284-15-mateusz.polchlopek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|CY8PR11MB7082:EE_
x-ms-office365-filtering-correlation-id: d0d9063c-bd98-424d-d11f-08dcfcc0ab7b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?sdBQolLcsCHubwvgHEN8qGVx/pDfRQbNmZot/GdTnVG5tVI2NAVVyvpt1dZa?=
 =?us-ascii?Q?1HYMQWEhopO0Yvk7TP5Z40x1fCrPUg8JZD7trZoVg2Negjfoc3T/eXIr8Zk0?=
 =?us-ascii?Q?1xh6caDolEr3Xz0h2nKoq/Tv7zHJkCO4KjyhWdh9Lw2os/IAgLd7A+qOiipA?=
 =?us-ascii?Q?SchPLMw9y2reFXwCseqMbseGIamivRMzwpapxtu6rD0Lf9n/+8jiCSRFAxaW?=
 =?us-ascii?Q?iEopHEWJPj/QcNZgzqRw0/utWgIiiZa95ToqNp1PqG4I5WFzTjoysp/d+9e6?=
 =?us-ascii?Q?mu/jx8m/aMYhhamCphrjLDV64JvZuQ6LG4zVXoT1MbEi5xL6YyYlZAvwDaAJ?=
 =?us-ascii?Q?veLiG5FWat6ib3suF0uV6bW2Gan7KNPy9SZfmDRYoU7/dULckrWi7+zlpEV0?=
 =?us-ascii?Q?T4rWsiT/+BP4vDms5NC/PK6I5OzHXX+b4Pgf9yxnrOFmtNl1533ZzGDiTi3N?=
 =?us-ascii?Q?hwfn95K7ASJs6WGu2H5itr0AtXjva05AwG9PQ9NEnIZhg0SKVRq9cJRqkVjf?=
 =?us-ascii?Q?rOlvdtfmQD93qurPle5A7tQS2fsqcP48hBwCDH7Fdu26QwOR7lX83CkX1hbN?=
 =?us-ascii?Q?TQ4As3A2IfCb7LSFvX+vNe8J4e8y0cAsnwCIx2RCix4U1CZ+gLSB3CAmF0aR?=
 =?us-ascii?Q?DwjtLK9WUA/YpOxHbhP9ZEJI7dNdSYcljRvk1aXJSedXT6zLdMvAzcD5j0IV?=
 =?us-ascii?Q?eZs4DQZvbygSwvRqvMMREihyl4/jErCJqmXwN+jNjI411XqpZD9bfA0+yNNL?=
 =?us-ascii?Q?45ZDjJfBRsHF7DsIR+fZaZJFt4SjRDoNB1unA7jz23T47WM9VPeDNr2ehvO+?=
 =?us-ascii?Q?xdNI7d7io/JH3cphh/Fo0MsvGZqqrFBtQM/AfZCgMQTupy7SDs1m1AQf2KBq?=
 =?us-ascii?Q?CPJaFX0yXfpL4jwzRKVv6er+RFAWJl6un8UQfe70KV7IqxBc+LI4FlxXjE16?=
 =?us-ascii?Q?Ti9mjeVI5fWD9tRJtXOPwEpaKpJC47MbZS+qRhVt9e1kQofq2orDArF3BBaT?=
 =?us-ascii?Q?XYzs9fapGonOP9wVMbp2L6Xbw0/PJRXSh4KJ71ZlHfVsVdoSZwWdjcwi1knH?=
 =?us-ascii?Q?Dm49CdK9Ov22Q9hTgayY2dE1CvzCTvfC9pInyWpl7oZuNWWOJaZp5DbBqdGP?=
 =?us-ascii?Q?DtR7a6W2A1iO9pR5C/Mp3zVFRkqtMXzKdwOVzRJahCfHfjJ/WiV4bz9xorJX?=
 =?us-ascii?Q?M1gSYbKJcMr3jc5vROXOfntcDXfJszYV1udLaVaDvCQ5mRU1ESwYlhKGJ9mf?=
 =?us-ascii?Q?Yvktse6+HwT5VVvAdSo8sYupU80VMnBZxHlhr1p93MzyeMY0HXuUxQDBNHcv?=
 =?us-ascii?Q?Fe+Z5Xv3Xyrnk+cHOzswE8CUv4wp8/BshDOa/8niclwJHSkPl4ui7El5zhJt?=
 =?us-ascii?Q?4y8eZTY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/GjolYm7GDqGJdoJ0DjgyncirJOEf+N9d7YTv5wbtd04L84UE49ha5ZUk2Ii?=
 =?us-ascii?Q?PQrTAWHUdwYug49huO9neBdjr7HUp0+Mk7LtjRNIC6+H8FnwS6oOoGkPVDkN?=
 =?us-ascii?Q?J8q14m3cqPzH6fnDmarI4wLCWuM9RqMis2DB97ecb9dMxtuY0b1JEyeYNy95?=
 =?us-ascii?Q?+Y41weRVyoLE6+2Zupreo6JecBZYEoHfJdoiRMDaCq3+o93suQLaN6CnJvAy?=
 =?us-ascii?Q?kLub+04wy15+9QfNlz3z4nHKZiBMTwTUS/wClk5AOP5a4xabC9PeYGakfa/E?=
 =?us-ascii?Q?VFOf8jsexuMKcJ0bBtx3I4Xkt3aMG+3w/9puuHShkDvjKpp/XO0UyCeX9AHV?=
 =?us-ascii?Q?4sJ2RvEpnusdOYxxd0Rg56HU/WbebVKzW569R2vEGSwE4SP1x2TYeM39+6NQ?=
 =?us-ascii?Q?+Hx6vD2ZcHBiKuFyojG2+pzWh4Lb0N/GNEBNbfalOIcYUsO+066kUksH+ihu?=
 =?us-ascii?Q?OrAeK6AyeN6xHzzVJOU+x6xLYSsrs8UO1iH5IHpetI60k8Oh+Cqh/82cGXmb?=
 =?us-ascii?Q?usfpl03qawB6LW4BKkrMhUt++17rOvxahj1FlHz3rx/zCR0JIxqZjmrUuas6?=
 =?us-ascii?Q?vN/9MGJ9eSU8PJn0M0UDZRakRkYY15m+ckjpUbLZYbBnanIV8mQ5D0J8rgB7?=
 =?us-ascii?Q?wt3g1qNoH3MqHr2J2RFNov79tFfAaTfi5HefO7EZ5GnUPvN83et7ei4lB6kY?=
 =?us-ascii?Q?HkjV7dh2G2xfUjOCOr2jGciv2vkFXufPUrIwLkmU5AcmdO1H8zQWlKf/o2/U?=
 =?us-ascii?Q?Mu2PBTUTKU/LovNKlKbTBHyrqaa2RukaazyP9moFO+JUxMFICnhb2ZCfAoR0?=
 =?us-ascii?Q?ZGtQRroWGpRzICvtr7kfEP7CmDaAm7zHV7Yi5USOIJMsh4fl4VFYchulzd13?=
 =?us-ascii?Q?MwadybQafPIijRzv6asVFFbzAP2zuKwNJJJar7PJBA1dzqKJM61r3mKKaG5s?=
 =?us-ascii?Q?SXyHSSNxFXo8RN3uRzeWUM3Vop1ekxoxlX4t3vzzU4B0Sd4SBmksx5r1UEcJ?=
 =?us-ascii?Q?mg2QkKdy1cYgnFE1fMF7tqWCWMaE3Md5BGmQCuRoHazjgScASlteip4zRYFR?=
 =?us-ascii?Q?Dpu3KmsMhYoEUIDFJTvBEqxbdwhmUKhDDSw53+o1jSkCmeRQiU2q0JLrcHnT?=
 =?us-ascii?Q?51b18y8pvwDeVudEMnpzf4W8Br3UD/yNQBxjbgsA6GsHFQp47601/aJ/P5RT?=
 =?us-ascii?Q?MeGnEFalXT0zf0bLbvcn/yzZ539HvjyzhxiOLVwvdAyLJb5EswULxm6tA9ks?=
 =?us-ascii?Q?w8XxM0Jyv1gZlw9lMJ/ofgOn7E4dwmmSGMfgGT7uJh/Bd1gEmbKSd6ppvTut?=
 =?us-ascii?Q?A9Bdxrk1AJgarGygfZdGO2JQ/vi492oyjwowuTSfO7aWCAXLXAWPOTTRJJuf?=
 =?us-ascii?Q?0wL8kOMbJIFOur73A+M9knj/KfSuiUz65xtFGp5UgMwQFMsSx/I8ZiarzKm/?=
 =?us-ascii?Q?Sy6KCS9J+7if+PC7Z9EhEk6ZTwfkh/mbTI7xRDNCjTMQ3m/sNYEyE6nDftpc?=
 =?us-ascii?Q?GT8paK2yaWAHiNt6QK2tDyCnZ7PmXnA4mQToXft3dE0oRtA7PF+XvYmFqggH?=
 =?us-ascii?Q?x+b5trvdoFW3RebcPT8Q92DRdtMqrX77EFval/+BJ6aapL5XpuLSIGN2bJc1?=
 =?us-ascii?Q?sg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d0d9063c-bd98-424d-d11f-08dcfcc0ab7b
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2024 11:06:02.0562 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RUt0uVi52PY+EG9JnmOOUNPxxGWu7XudLAEZVahsaIQSS9oghLXC4ELxMAA3zHiPhWfJbe5SkXozmkCGRvr37ZGy2yQorpsw77RGbhcKYjU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7082
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730718377; x=1762254377;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ty9w7Myah2Av9x87u4GUyR2YWTKA3B/c/kZSak6Xwgc=;
 b=WrEtX+UBrEWyy3Kzc2ShgjCx222u7eQC8CxkP68zDfJHkLkqdmntbuGs
 oKKHHt/Q69NGi+VujmXUB+1J2kjLga8PdIwwGwsGg7lJmWyjrUSzO1uS2
 i9GpE3pDW7Uzzz41cUtTzHuHCE8uUodoGcb8kEks//SFxTNHptzWMfSMr
 XAu8UjgsuSKiEjOP9zqgYYVrFKss8y05xGKESuv4WILm5kajmCt/Ww/Cs
 ueVozDa0D0x+jhccb/3dWmLXsrRyyFpeos4W6SioHdZhybC6YGOLBUq9a
 YBe7GvP3FQJrayjl0m+ceDVD3EzUwKA5whi1/QqGsUmAYuxGTbU+MpklF
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WrEtX+UB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v12 14/14] iavf: add support
 for Rx timestamps to hotpath
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
> Mateusz Polchlopek
> Sent: Tuesday, October 22, 2024 1:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Keller, Jacob E <jacob.e.keller@intel.com>; D=
rewek,
> Wojciech <wojciech.drewek@intel.com>; Rahul Rameshbabu
> <rrameshbabu@nvidia.com>; Sunil Goutham <sgoutham@marvell.com>; Simon
> Horman <horms@kernel.org>; Polchlopek, Mateusz
> <mateusz.polchlopek@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v12 14/14] iavf: add support f=
or Rx
> timestamps to hotpath
>=20
> From: Jacob Keller <jacob.e.keller@intel.com>
>=20
> Add support for receive timestamps to the Rx hotpath. This support only w=
orks
> when using the flexible descriptor format, so make sure that we request t=
his
> format by default if we have receive timestamp support available in the P=
TP
> capabilities.
>=20
> In order to report the timestamps to userspace, we need to perform timest=
amp
> extension. The Rx descriptor does actually contain the "40 bit" timestamp=
.
> However, upper 32 bits which contain nanoseconds are conveniently stored
> separately in the descriptor. We could extract the 32bits and lower 8 bit=
s, then
> perform a bitwise OR to calculate the 40bit value. This makes no sense, b=
ecause
> the timestamp extension algorithm would simply discard the lower 8 bits
> anyways.
>=20
> Thus, implement timestamp extension as iavf_ptp_extend_32b_timestamp(), a=
nd
> extract and forward only the 32bits of nominal nanoseconds.
>=20
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Rahul Rameshbabu <rrameshbabu@nvidia.com>
> Reviewed-by: Sunil Goutham <sgoutham@marvell.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c |  9 +++
> drivers/net/ethernet/intel/iavf/iavf_ptp.c  | 61 +++++++++++++++++++++
> drivers/net/ethernet/intel/iavf/iavf_ptp.h  | 11 ++++
> drivers/net/ethernet/intel/iavf/iavf_txrx.c | 43 +++++++++++++++
> drivers/net/ethernet/intel/iavf/iavf_type.h |  1 +
>  5 files changed, 125 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 1103c210b4e3..a25ceecf1ea7 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -730,6 +730,15 @@ static u8 iavf_select_rx_desc_format(const struct

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


