Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A02C890E577
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Jun 2024 10:25:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E295A403AA;
	Wed, 19 Jun 2024 08:25:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Op_Pj1RlmsoP; Wed, 19 Jun 2024 08:25:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A9682403B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718785538;
	bh=+LC9XQpi/MgVHiAbFLA9Rhrh9VDAe/mMw0F5iJg9XyM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FNGZeMwE3Mu8gY9fKcNNWqR90JZ5/fUUpkEntEsLuA9nJoGysHFDv8Q4vuxJ+3ppm
	 8wIuz8cEGeZTfj7smiFZBcT18Vpusew2qK5pXVztA/JNiuVK/dMAXMyczMqmpo/i4k
	 2lTS2FYIRZj4HHeMKRdskIV58VMZuFLcYu0eI6eZ/Hu1ui3fbwnGy7D4xwmdqP4ZCZ
	 MRZsdcL+Om3LYxFX6oqyWuuX2bVYVf72RuUlWomgD5kpmsJ+GfM+CY3y5dafsfvV5Z
	 DccfjFB9lgFcSACHdQEEIH5OqI0RTtiBOiBpN4lQW4lN0FhRDOWeTDUiXYLRJMBjvz
	 IBOlB+7DxQ+Ig==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A9682403B8;
	Wed, 19 Jun 2024 08:25:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 382B31BF5B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2024 08:25:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2F56F80DA6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2024 08:25:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id szns0MswocxN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jun 2024 08:25:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 21EE780D71
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 21EE780D71
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 21EE780D71
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2024 08:25:35 +0000 (UTC)
X-CSE-ConnectionGUID: uMVzguQCSfmigW//iZEVRQ==
X-CSE-MsgGUID: +AshEnKNQNy9BIswQvMKOQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="15676259"
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; d="scan'208";a="15676259"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2024 01:25:30 -0700
X-CSE-ConnectionGUID: PdF6ykm5RIWVo+jHljQIFQ==
X-CSE-MsgGUID: hw/o6TfsQTGCb623Dh5U6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; d="scan'208";a="79316619"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Jun 2024 01:25:30 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 19 Jun 2024 01:25:29 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 19 Jun 2024 01:25:29 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 19 Jun 2024 01:25:29 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 19 Jun 2024 01:25:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zx0RUhnQjUnpbTmh6rN6Lw+0PQIhNgifdDIhTow/Wkl04VqxEYMZG+Hcl6y2U2IX417HYnTRLfCmcf1OCWCptmXG8FFsH1E1mIxTdgyxTrwtHc5+aUE3kp4CaSy5QXc9sHxiorW9oGj8J4f0IJuWqJIaQjNCFbJ0+BNPmJXJ1DllC6pTxbtmIaDjC0WyC1pnCsSiH3vN/7YY92dVMiRqGSOYhscSJGq2SmJCDHkvcE0ge853BJMEUOCPbU+Lde9z/kF0qGPd8JgZjMI0rwRUXEI3/SIOGGjswkspfAwgQUTFGHFojrrw/MzJCp6Dnib111G+1uoLYpAqFkAPNQiBHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+LC9XQpi/MgVHiAbFLA9Rhrh9VDAe/mMw0F5iJg9XyM=;
 b=nGxe2MhnsxguJUZBAtGRwl6Q1eqzVAOABqMVY1/NZxG9urALDSwl6nilanTJO+Z24V2HrN8l1hii/H+05ht1UOUb+3nZmXoyPtiJbLxPUQOPjrWSoaDt8bLbRa/mdDpJBGMhGvmdJZj9goS3PJ/+1/HXY1+EmPfgFp3V6K5XUItL2EVbIo6EWJw3Oa2tFiU5SMyL8bo+d54xK7mSiwWw+deJzfiUpPsYkhwDR0CVLbrZZB18PJZEFAnWwOKskVBd3SYQ/InXPtBwEGu/1K1XgIMAQaF2y3LGKek7NwcfcKLyRDRspB1AZOFeBb2nOiCiaREMOYInNiUNcLxRtV0AHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by DM4PR11MB7182.namprd11.prod.outlook.com (2603:10b6:8:112::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.29; Wed, 19 Jun
 2024 08:25:18 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%6]) with mapi id 15.20.7677.030; Wed, 19 Jun 2024
 08:25:18 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Ostrowska, Karen" <karen.ostrowska@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] ice: Rebuild TC queues on
 VSI queue reconfiguration
Thread-Index: AQHashbOpfadZbzwMkiV15fgBiuMa7HO3+pA
Date: Wed, 19 Jun 2024 08:25:18 +0000
Message-ID: <CYYPR11MB8429EA7858A2666E619C9BA1BDCF2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240529071736.224973-1-karen.ostrowska@intel.com>
In-Reply-To: <20240529071736.224973-1-karen.ostrowska@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|DM4PR11MB7182:EE_
x-ms-office365-filtering-correlation-id: 52b62d3a-5548-44bf-1ddd-08dc90395a7a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|366013|1800799021|376011|38070700015;
x-microsoft-antispam-message-info: =?us-ascii?Q?r5zAvwuGOXFHY0s7ZKXle4dWrTIxeoLDBOYAzensr32fS0e0p8+WEOxC0VTf?=
 =?us-ascii?Q?QgYunxG2YJOxD+PsqlpfvJXfRlLWvpuQw+sKIcn8ZhoV2gVNoUmpFmWvlVlL?=
 =?us-ascii?Q?UHNgEOu4mxaYEuz6Vw6TswsjrxpCmhjGvHJAU1kG1XEeSvzEZcuckt5u4Y4W?=
 =?us-ascii?Q?B9hu0XSVY23+NbltHsRNJyyUejr9FSumqpCU8JzW+sLqGhiln8rMGbqIbhhW?=
 =?us-ascii?Q?IR/MX7PQOR4lKMf59szpBO77NCaXQbCttPBJm9oooTKF9FAYku1lnvMSyNBX?=
 =?us-ascii?Q?c7gIwlun95japfTfIBr2rYKCeXD9UB78h6kUMhWewBBxzIDGi7OEmzjBAy2O?=
 =?us-ascii?Q?VadhE3DH9Wtd3Edc9bgbWf4WNMYj3LRIaX09nXmPT9aVUOuXZhj81vTp7Yne?=
 =?us-ascii?Q?CAlH+9fKgYawTm2yj1X0IVYvzplNYeo87TRdhOzOc9aDaWeTBNaO0Xw9DWTd?=
 =?us-ascii?Q?BIW/A5GnqGqOCgBFWyftLET3DNttYAa8ApRO3M65wo2qtO4dg+xG9fqpCbVN?=
 =?us-ascii?Q?eqMG38t077inLdksgN6ei44XmLERSRxvLe8DnzIYS5vKD0bD1y69PjE/kNF9?=
 =?us-ascii?Q?93OxED3oShjxq8RPgni4LD2X5XlZeQC1YXxdVxnXkFggF0tfBAf41ovWQG9Z?=
 =?us-ascii?Q?vAITAV+Lk2V/8VtoRU1sNnQmqqXfrn1WBynI5X+7fC2DZELBMVapSNvymOD9?=
 =?us-ascii?Q?swHIDr9VwtOpanTThjHWwAU6Pqk7XUkoQcE2Zmd6h+CKJelaHFCsLl6eStnm?=
 =?us-ascii?Q?p2cAXYMzVcGxtBmcuUcnmViK1zTvf6VM+yF4vuRCHdfCK+MMJQ2e16CbgEkh?=
 =?us-ascii?Q?usp0rfavOixZpiXj30zM0WdWUNZIu5vGVQEEGLjSSgLVVBMl0b9GWBJZvZ01?=
 =?us-ascii?Q?I55zzI2lJ3xRWt/7v/gxcsmfeHPUZrw7nr+odNa3cyc4tMb85IKOXEzokGPG?=
 =?us-ascii?Q?P7/2dblaHCNPN7wp+jtXAOnJYvNp34L8/hBkVMdSU92bLadQEMgtV8tzYN/i?=
 =?us-ascii?Q?CQZufMDSlZFcLHrn1WZPpUCUZRLrzbYtsjEDM1eYc1CmHB5Lk+ir7El7EWcH?=
 =?us-ascii?Q?hepcokIEems9QcIoageXJ3QjIsVexnsrCWMv2lpRBsFa3KnLbD4xuBofXTTO?=
 =?us-ascii?Q?3zdn2x47aetFUkjMahQHcC8Lya0pWfmf/b7iseA650vT+Wxm1TkBK6yDdWUu?=
 =?us-ascii?Q?C1uW6QZ6xKxZ1JbagvKGY5xFPmYKeq2HMtw7O/G9XdEdVLqhxbETAv3ZzUUu?=
 =?us-ascii?Q?yHTnJIJRncQmlagdcKxbDIwpxuKGei67QVqV3ItAxlxK9S2B0IaoqB3dxBNp?=
 =?us-ascii?Q?3ogaSPwLv8wM14HVZAOVRpHvpCpk4P+iJOFgegFnrX5JG05abu0BKdeMm+i0?=
 =?us-ascii?Q?2UOv9UM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(366013)(1800799021)(376011)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tfXLbefKWzUN6r7FxXFE0oUofO95NR9//3xnFNEBzdSPsqetEoVVAIKcH133?=
 =?us-ascii?Q?gyQO6j6GGK6ElZ+9afpwCw+IXTRDt8y/Se5tVfA21jbSneaRAolR5wdOQ3gw?=
 =?us-ascii?Q?PMdVG1dvAveJOg3XS2V/DylWsbV9dK4Y1U0Fy9tiEPfZ3dMnoUGg9An23Ry5?=
 =?us-ascii?Q?CZXUbi3fAtwQYF875qCgisQ40Yj+EE/kCdh4VBUj7IBt1HzMSOEtn4+JPKU8?=
 =?us-ascii?Q?VLhAKCmv0+bNN3abeTNmCVrqY/Qpa283KUCbz89I02WHrL0E7sXD8AuWIjEq?=
 =?us-ascii?Q?6XKckPNGoKWPH/vL9baUkg4qUd79r3mSmjtfkYeLfzyc3PjlXENKxDahnRfb?=
 =?us-ascii?Q?nmjMOhp2KAji1ZuiIKzYsXIOj40CSEzaGJ1xKueX751ZXRsRKfW5s/y/Vcl7?=
 =?us-ascii?Q?1htH/FZ0+SP/j3OG9x0OQgnvk/PfmEhLIRtuGlULMcNAJlKnKrS5y96r1/xi?=
 =?us-ascii?Q?BqgATwwPtWKE5LOu6DxhyGT4px4pvwDKtd8CJQCAIud2vPyra2MU849oZOE5?=
 =?us-ascii?Q?ZfT7h7E9oqCH2gM0T2FGhSRWyXE+TzhUd4wyJF5wsvt21e17xsvAMjBKTEyF?=
 =?us-ascii?Q?rAwr4s8FBr6sg6e3qcgSMWsLTwYsq+EBd04Rac4/sDblAmKJTLlHFVmpRwB2?=
 =?us-ascii?Q?2ZsCkPW6iXNoZfQm3VPvvx2Lti3ZjYIhBe9CoHX7foC3dtNN2RvZj0wgfrJh?=
 =?us-ascii?Q?lj0LBjv2XZF4sFGEVY/WvtvnCCafMJ7LjTc0HmnBdc/+1q769sjOvaqtdqAI?=
 =?us-ascii?Q?n6FtYPOT5D61U/mRWV371wf1ZLTHy7pVa0V7O0J1/bEpFP/66DO/6ynXQSsK?=
 =?us-ascii?Q?d000HOOc+xeEsBokRl2EzfScdFPvUqxtqvN4nQYQvyirfjLtqwZtuSw+WsAj?=
 =?us-ascii?Q?PDDsqep6vGYA+ipIeSCtWSlfuAFP7l3Lr0ek+th/G2CO/rJoD0+Sxj+81q6/?=
 =?us-ascii?Q?yM3XvlKpA2bYGRu1c75AZ8aCF/XDU1KcMTNu/AYcdZNLfwAqwMLUPhnUwYv5?=
 =?us-ascii?Q?QdTeXJ3hThN8fQYtYYBIx8Ph6MGHG+BAfRgQzwhoB/Vt9jnfkOnAkAbHofrZ?=
 =?us-ascii?Q?9xH+ST0uyhq9Xqc6hQHYJo2+L6jpdtcmP1wSXS1ORUS7ZYGwXlhB88DZyK7r?=
 =?us-ascii?Q?JG46ImbfsdcwJIiVvTl8XbWHcrrlZjGkzSkZRRD8U+fIqJysXY+4UZXaY1fu?=
 =?us-ascii?Q?1TNGWFuwFwpdDNCoqc8UYF6quRRbBRaB+2sE0AAgL2UrgCcq6Ac/5RC2w8l3?=
 =?us-ascii?Q?Otv+otGL/flcH1RuWTEJCZHr4QmcB8mT9RwMe8iejCKzhaEYyj34P1TqJIDe?=
 =?us-ascii?Q?S0Ab69Ra/HOmUpW73o/vW76mi1kBB0/OBh3p53TUhbkXO73dWaOFmv49YoeV?=
 =?us-ascii?Q?benkSJ9ODzMrTO3BOZSPPPrB1NlzmV5m12Qd7A18qludFBy2POGb4D+J6FY6?=
 =?us-ascii?Q?IGffavtokc/epsMQgl9sA7StMGdAb1bLEc2Jk0Jf63rPZiVFyebYS5nczkCH?=
 =?us-ascii?Q?+jahLCUOawrJwCXyr04cZ75EkcOqUZmDxfRKxoMbjMmf05e0tcJCyMoHAB8z?=
 =?us-ascii?Q?JHJHOcQ+AWmI+Rb+Ip2WODBuPSkaj+EpB8lDyLQeRb7c9Ar/ERX+aC1JXFFS?=
 =?us-ascii?Q?RQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52b62d3a-5548-44bf-1ddd-08dc90395a7a
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2024 08:25:18.4891 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CH6NF2irEEX2b5iezckdXVEnMQCY12D8/AePNEWD5YtL/fbeCNz1TYvBFjww6Xg7JHiaabKfRPY18rD0TVK0lFZlzgHR1uSPawIa1lzFIhoUbZaDxPuJKuHasdic18Eo
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7182
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718785536; x=1750321536;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aQbHT/5911NdahMMb8/UqPJMaRnrMszLwt8t2KnVyZo=;
 b=NbNYH0ME0KALKrMAbgBk75xIFevoHulYcZV8Ud0z0OLFwOSRHbbMmmxh
 qJH5DHUReWSHhsvVuoaJDCMCvgClVJwRhsKbq2nPbxDnX/5s0QzgfNg7/
 luQw70FjIDcXMtE7U9s2fSUAXzeMUwz9F9k5s2OhmTL2O0f96ehdVf9SG
 xFTloIRIkvMzRwM8rrSzcYFreoEsyHpUSV3kwpI2lw0b2VIGZMEovPhh8
 x7FS91F26AOlD9rI9vRPFZOMGD5W1/RmDpWBbhtQguYggaopc+Olzl8Md
 rQy7Sb091vX+1Nf4PJyvgOJc0V3/L1gbrLjasnogpR+MMvykB6dME4T9x
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NbNYH0ME
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: Rebuild TC queues on
 VSI queue reconfiguration
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
Cc: "Ostrowska, Karen" <karen.ostrowska@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Sokolowski,
 Jan" <jan.sokolowski@intel.com>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
aren Ostrowska
> Sent: Wednesday, May 29, 2024 12:48 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Ostrowska, Karen <karen.ostrowska@intel.com>; netdev@vger.kernel.org;=
 Sokolowski, Jan <jan.sokolowski@intel.com>; Drewek, Wojciech <wojciech.dre=
wek@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: Rebuild TC queues on V=
SI queue reconfiguration
>
> From: Jan Sokolowski <jan.sokolowski@intel.com>
>
> TC queues needs to be correctly updated when the number of queues on a VS=
I is reconfigured, so netdev's queue and TC settings will be dynamically ad=
justed and could accurately represent the underlying hardware state after c=
hanges to the VSI queue counts.
>
> Fixes: 0754d65bd4be ("ice: Add infrastructure for mqprio support via ndo_=
setup_tc")
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Signed-off-by: Karen Ostrowska <karen.ostrowska@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

