Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 756378CD98D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 May 2024 19:59:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1F4BB4063E;
	Thu, 23 May 2024 17:59:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0aUUlsX3fZjx; Thu, 23 May 2024 17:59:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5DC0E41838
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716487153;
	bh=L4uVPen7xjC5fe95E+S8GJsQA0/oD6ui8LQSX88e6Mk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=q8Tjaj7aJGHz2LaadOBDlHuEe+acwKiLN6U+HjrwFqxBweovRmiKXsS1KKQH6ksA5
	 lHqt1UOCJKx+kq8QIE5sui3CJnRZ7a6doSKm4CupYbXqakcjU6djWJ0PbNJiZBFeP3
	 lxSZAH3iyS9e+Tyk1D1nAAlQfR0upKuvuoAOZG/03Nh81GmFcjq5vsK/T9xHuiKMum
	 fF5NGQY1RAIkTqz4IZXRq9hz9W9SK4EseB5m6t5ySLP4KpWy1TxZsNhfYXTAeeB7p5
	 2CF2HMwIb55vqUrvt4KMI9FesaSIfhFBmA3KKwi5oI4yXcMNCVN7pa8xIDA2UjKSsO
	 OxqzXcq8OmjoA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5DC0E41838;
	Thu, 23 May 2024 17:59:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 047251C65AA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 May 2024 17:59:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E42B460607
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 May 2024 17:59:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EGou2UU8yVJ8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 May 2024 17:59:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8862760629
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8862760629
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8862760629
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 May 2024 17:59:09 +0000 (UTC)
X-CSE-ConnectionGUID: pq5RdSQNSSmjmLMI3QFn/A==
X-CSE-MsgGUID: lFYcCAU0SBW4a0yaIOXD0w==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="30359602"
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="30359602"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 10:59:08 -0700
X-CSE-ConnectionGUID: Rsvn02jJTgeePNbAC/LEPg==
X-CSE-MsgGUID: xKHkOAYrTEO9lMgvWAG2Jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="56990029"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 May 2024 10:59:07 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 23 May 2024 10:59:07 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 23 May 2024 10:59:07 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 23 May 2024 10:59:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YYXROs7QEIAfWD3QN5esa81ehi5X9ztb6Fzejx74vLwn1lfUMpeX2lb6G1J+5da+7X5J3/OXkYOKxhHyktH8CnEvvG8jHVUZNSXKDUxgQyekNazQz7IXdL2cSgEREXPw2s8iJ+U5Sen0BpVALbnANELBkVEoG4xrBL29Ex/lpfNZWGovdWRugq9hm6MkrR0umxe/ikDLS8vVDe3q1qwmpNx4mOvbIate3oF9aa0kZUf1h4E0fgO16M4iFarWNvlZ2mvrVJBy5emg2r2Tt5CbOi5LzutOWFeiT2k3icyZP0zkF0kJTRRJvyeXZkSpET1gAznhM7ghMHJklWPuFAQ+Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L4uVPen7xjC5fe95E+S8GJsQA0/oD6ui8LQSX88e6Mk=;
 b=QzCtXXisJtGcgb6ZTJDCvKn+AYvHnDbrXhRv3NkT9n2J7B5mwEvEiweFhZc1101NZuV105NxeqC21R2ifqU/T42nczuvaqSgL4eRA9VyHgEHEcK3mKTCKQZJcqaOusfLyUc9Q5AC+ts2ZCQIdJgRqy1uzsGSFqSz7xBoPyhD7r6L7n1FxXgD5SteprS6LO+oNWQh4iUMZBWCMoVHtizYD2E2Ni3zS3dnCOY9LGX9PVpavArVVCmH77DUtcvC/YR25Dz9jR3SWnHSMh9BB9lDR1+5JKjDBJLd7dJsCfLoO1beCvnhUqVzk58kB3UWkT4PLn44OcEUmZHOlLwefvHIWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by SN7PR11MB6704.namprd11.prod.outlook.com (2603:10b6:806:267::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.20; Thu, 23 May
 2024 17:59:03 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%6]) with mapi id 15.20.7611.016; Thu, 23 May 2024
 17:59:03 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Thinh Tran <thinhtr@linux.ibm.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "kuba@kernel.org" <kuba@kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "pmenzel@molgen.mpg.de"
 <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net V4, 2/2] i40e: Fully suspend
 and resume IO operations in EEH case
Thread-Index: AQHapwwEzti3UZHw9USwZwUL/ISo+7GlJ0mw
Date: Thu, 23 May 2024 17:59:03 +0000
Message-ID: <CYYPR11MB84292258D6E64C35CA5687B6BDF42@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240515210705.620-1-thinhtr@linux.ibm.com>
 <20240515210705.620-3-thinhtr@linux.ibm.com>
In-Reply-To: <20240515210705.620-3-thinhtr@linux.ibm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|SN7PR11MB6704:EE_
x-ms-office365-filtering-correlation-id: 00f7f690-5dfe-40f0-6e72-08dc7b520825
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230031|1800799015|366007|376005|921011|38070700009; 
x-microsoft-antispam-message-info: =?us-ascii?Q?o+smY0x6UZ+BCYktnp3nHvOAHHPSc70RBXDVo26+9sZ7mN17cf952CjOQj2o?=
 =?us-ascii?Q?OuSEU5rLKWHVxlGUWuYs2alYJL85X45uWBo2sANpBaou4Bx+QY6m55NB4pZh?=
 =?us-ascii?Q?e1zGaWV0TsmoArHYe1W/PxUe+JIemERVsZ23Nct/ybjO7A5jYepYX35D6Imb?=
 =?us-ascii?Q?4ZkNS4Y1Sv96wW9ZCCgDr05lTQKf4Mb6+DNa53gedf4tQ+Ltg2zUDZubB/Qu?=
 =?us-ascii?Q?4bWO0IP081StachZOhpDAjM/leNodwVQ0FMr+Hx8399Q6FC7RCNy3gAnmrSw?=
 =?us-ascii?Q?XsUoMZ0868skp296nV7a90cLnVwQDg9H/KtDc88szANrxfg6oZphvSupyN1Q?=
 =?us-ascii?Q?z0hfLKhysS+AJgWF6pww4KnLRvRJHsUci0aj3mxeKxzTTeE122oA01yW1Y6t?=
 =?us-ascii?Q?l76/2WExSDGX3cKEka6lOv/qGRykDvxHa44qhO9bgPJLT7wZaAfKppOvjpbd?=
 =?us-ascii?Q?hS2t1y+yBksbVi/VF3RG7jvaAP/gyyiy2TL69jfwL0vBl4mMawP5MchFbPnB?=
 =?us-ascii?Q?aHlt0fVtdAvGtvXxBYRZb50fN459kQaWCNrjqsV/16B9FoHhcVsMsGynBv5j?=
 =?us-ascii?Q?25bYPZpHjAwOuQ0eILmxdzXFD8gJogQkbEm27/MCPBnFL60tDvKv4p4oObmi?=
 =?us-ascii?Q?8LRFfmDXtu6lrg0EkLLlWeuDjHiD3PuuQ6AWeOZSNyDUf1Q5/TMymSvTITO6?=
 =?us-ascii?Q?lLlwARAaHwuZdPpS6l4BS2g7VVOqF6q3mQVSXjP8IcE3DLq+2EOa29Q1I+xv?=
 =?us-ascii?Q?K2hfCcRPAKkBMKnDRtMXz8rA/IfHJsWZgVaK2QZpj/X97OzF3cbf1OJOlz+L?=
 =?us-ascii?Q?xitaoyEB6SY1iKnQU/xGYt9gu03XFZPU89aH6kmIEIwWA53n28dPn1l40XVQ?=
 =?us-ascii?Q?K2zpl08MXfka3WVAl0geOVFDZ7gHIXZNjSvfTVysPSCCE0SgIIEOeMjcwy1z?=
 =?us-ascii?Q?HucuYLNvV9fccKzPdwBGijebkKaQiagQOovi9mif8z41NFD9yFXyvBiJsAlc?=
 =?us-ascii?Q?oKf3ltRv2ikRcmxHEw4efiCDPLAdCPsz3Gz0Dt8T94F30qEiveJcWPU9aG9D?=
 =?us-ascii?Q?3egx31A3N/ms0qxPhIODi2ZkbAYzY5/P0b/87c9n4pkcQ6Z01hY2FMgNtezY?=
 =?us-ascii?Q?DWiqd9WWgqsbzTdStDHVfpgzxt3tWzsOWa2gJYgI4P2o28NYHvwcNVNjpTMO?=
 =?us-ascii?Q?cnupGZDN0wHQ4/xAcgMsUgb1f76AhExr+xIRS8jGxvL97V9lcmKzJ3usrlkz?=
 =?us-ascii?Q?5WuDbs8u+98k23b+XLjZaLEO9dQ2sxBMgt2AKgHoQabCIvmyTNXqKm+g962R?=
 =?us-ascii?Q?azuuGej6gA4GpkUueH3Njc56jkm6VRqgup+K5QP9BTGax3Um2kMznSXpJ7r0?=
 =?us-ascii?Q?tPJzTh0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(921011)(38070700009); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gTgSwPA/kfx9vdfN4mRyFBlGUve17ZzRMaZyYhMRy9y1J8xzOcPF7InFECca?=
 =?us-ascii?Q?E9OLUupFv2+3NeY2+WOdQVb2agIlzkQGwqVZ1ALB5La9XrRPP18xUsfJMBY2?=
 =?us-ascii?Q?CohEjbPu4VYM+gzq753s623TDcTHX7JMggAIuPpfslfQxRj3+zPZs7am+mKe?=
 =?us-ascii?Q?Ss+yrHDfJFdHHfaYa/mHL5VUxM4TAKErzkdc+bHzLwA4ja2Yp1lOed6OmURb?=
 =?us-ascii?Q?+FxMTtTcuwBv30h7uO3y0QT/8dQBcpIQyL1QtUWC17EWOiUhixYl4tPdkOye?=
 =?us-ascii?Q?347rX0XrYqLMn6JlQfTqG2KqZB89RA2qkOHGl9KkDBdxruxmWW9kIsr3t/J1?=
 =?us-ascii?Q?CKKx8w5ek1HGee8VVefCuNLTcgxfIirCKNbKR3SfrGM+1V1sZNZwzAwRfdjI?=
 =?us-ascii?Q?ooLmxrLD3+2ZO2/Vl5iEbYZXJJa5KJK88lk4EhgpsedTN+lVU+gemIRsBB9u?=
 =?us-ascii?Q?IXE1cmDFIrzDxVnLNXemNLcUD9XhYejm/NocuNYZVaNRr96DkGemXO3ANNXS?=
 =?us-ascii?Q?HdDUxKI+sEV+QVWpEiJ5M3G+wyhyICdfTXgg2FfIQt4ehvnNcG6fGwkU1E/M?=
 =?us-ascii?Q?eGCl+KwaJz8eVa0rKliJpnvGjlPf8acj7RhasANPChh53pDk/yF//9Yz7lui?=
 =?us-ascii?Q?cWlsCJZZnYj/Ky/n59wneYU8heZWxGoqeK7dXSGc9GqhonCx83wWcqCJhISj?=
 =?us-ascii?Q?TWWlSxzh0tFsGRaDbF9Br8fikXR4JaM7bnR9Lf35Ej5nUapS+kr8nMvOjlNQ?=
 =?us-ascii?Q?M0FaeQl7u4xzB+dZPIkENHLv7A7mu2DS8Gx3HNF3IIOCWkeUMUCkkWtjsg7y?=
 =?us-ascii?Q?FQ99IW0NIKDMQQgzxsv6TxlEssPb7W1xB4CxpzZ2MJrFWg9tjL9iFEG3m9uU?=
 =?us-ascii?Q?vxfmXDsHGtea6F8VutET/wqqTSs3LDoG5HaumOgJz6d4k8rrLpReZMXp2m46?=
 =?us-ascii?Q?YQ8EYRGy24LR/2HuX/KpGDbLyDSFhdTIhaMHm7RdNnQ0Sg9eUkylQeJeAPR1?=
 =?us-ascii?Q?nq862aUYlpUgH9VUiZWpuGlzTz2hgCUzCVYNwYdeo+EN8SsfmOA3jDtDB4UY?=
 =?us-ascii?Q?ct+kkVzizZbGG7qI2vIILufQXTRMQOd/gF9qtpaKKGRyVYjz/YHVOFL3jlc4?=
 =?us-ascii?Q?naFKieTu/JcZV8LLN9357Y6/TDXzrl84vbLnse/CN72StlFBA68TqSWslXLS?=
 =?us-ascii?Q?+DyACzUusLVjdGO8mOT3QURohJRoKTClOVp0yk2wgEVjynLZIlrn4755Fxt6?=
 =?us-ascii?Q?MXzjvM+pDXAOgjg0UWR2dGIxnvWPFYRT83jolKZ4EMOl+dpYosmTC2Y98mYh?=
 =?us-ascii?Q?FJ8QqWoL2aCDnOoSQLm1urXAgcx8ZP7dZLXUr0emdhvdkhDEHOBMM116UBq1?=
 =?us-ascii?Q?WyHEqlMO5/Aj/uK5P/AFhCXH7mVEIws1YUp0ZNcADId/qH1BYmDD8wTY3OZP?=
 =?us-ascii?Q?hyyCIi3r77Db0QAjC93ZgH4JA9M2PcLdDlHdR3sEVn8dr7EnXCyA3ivdcfkT?=
 =?us-ascii?Q?uxgzFtBf+LdNNDHQ6ZxTSrlyn6/LRhA2RPEg0ni8HrnbIFpR/CUcuf32POEl?=
 =?us-ascii?Q?5JBeGt6jjyP80F5h5Sz3D6dvOb1mUiZUJDa4EMLX11W3jREdsc4GOAbC2klI?=
 =?us-ascii?Q?Fg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00f7f690-5dfe-40f0-6e72-08dc7b520825
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2024 17:59:03.3681 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7eSwu0wDzb5YuNkZUsyBDvafWRjJnaJtxWeNOZt7q5Z1wS1j4TpDqZ89uSmy/K5PDqGk+lskhCRDrx3KgD/oojDylWSo6NfJ+5vcKaAsWK4ZUU4csaF5OT0fqRKj/ICd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6704
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716487149; x=1748023149;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TCNC1l7QH5uM1+owW3W5RAELCRIwl/z/w8HSqKm6X9M=;
 b=Srs1SddyS0d17oFs/VYxzJGAF4M2+uiU9aJ3TAr1hBKNZz8BGaqdqIpV
 BCoX+5wMk4V/3p2kKzPrIoduHnP6b/NvxcUUeZlW//d4aEPqiBGh5zAtO
 8DSXCx8s+bSz+88usB1FfYfnWL7fh4cOBaJhMxqkOfAV9jS+C25FSF5ae
 Gc+lnji9s8xg6nyJ+uGV4RlkPqbkTNQNrBt2rq7XkyXsa73Jkxbp1m/8L
 5M8tHn8eJ3Sf8QRHpvYEw8M2d4aLvNlkNy/rlqRNtHpaILJU58DaPZopW
 JLmNmQ5aOfxtbNGECONDuGh4/qL5crKo3ctBVR4d7ba5bCxYoC+QtAj3B
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Srs1Sddy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net V4,
 2/2] i40e: Fully suspend and resume IO operations in EEH case
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
Cc: "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Thomas, Rob" <rob.thomas@ibm.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of T=
hinh Tran
> Sent: Thursday, May 16, 2024 2:37 AM
> To: netdev@vger.kernel.org; kuba@kernel.org; Nguyen, Anthony L <anthony.l=
.nguyen@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; K=
itszel, Przemyslaw <przemyslaw.kitszel@intel.com>; pmenzel@molgen.mpg.de
> Cc: edumazet@google.com; Thomas, Rob <rob.thomas@ibm.com>; Thinh Tran <th=
inhtr@linux.ibm.com>; Keller, Jacob E <jacob.e.keller@intel.com>; intel-wir=
ed-lan@lists.osuosl.org; pabeni@redhat.com; davem@davemloft.net
> Subject: [Intel-wired-lan] [PATCH iwl-net V4, 2/2] i40e: Fully suspend an=
d resume IO operations in EEH case
>
> When EEH events occurs, the callback functions in the i40e, which are man=
aged by the EEH driver, will completely suspend and resume all IO operation=
s.
>
> - In the PCI error detected callback, replaced i40e_prep_for_reset()
>   with i40e_io_suspend(). The change is to fully suspend all I/O
>   operations
> - In the PCI error slot reset callback, replaced pci_enable_device_mem()
>   with pci_enable_device(). This change enables both I/O and memory of
>   the device.
> - In the PCI error resume callback, replaced i40e_handle_reset_warning()
>   with i40e_io_resume(). This change allows the system to resume I/O
>   operations
>
> Fixes: a5f3d2c17b07 ("powerpc/pseries/pci: Add MSI domains")
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Tested-by: Robert Thomas <rob.thomas@ibm.com>
> Signed-off-by: Thinh Tran <thinhtr@linux.ibm.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

