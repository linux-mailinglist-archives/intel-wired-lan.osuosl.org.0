Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1BEC3F64A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 07 Nov 2025 11:20:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 453F16130E;
	Fri,  7 Nov 2025 10:20:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q_uJMre0pmTD; Fri,  7 Nov 2025 10:20:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C3DD61317
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762510851;
	bh=p1JQTeyEo7ZKrVNLWbX2wv87P3PiQZnHZMCaKxFHhpA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QATFsCgoNbm1tW3psCBfvHDMyZhjMlPtUuqqox/PZHNbRz+crmVDrzD07SD1TWFar
	 L94aZTVI52Vgapr7+QC8IWk8Ri6/f7uQXX5jR4WojzVn4CkC4e+Xn4FDff/WGC5Qcm
	 0zT+YQye0wYQrxARvDIktKwgNqSSt5KGovJuH+RfpsW1nm4CzpgkO8zXxtguUXEsNX
	 kR9/U6V/DxIef1DjH1XJR6+E04Ugq0JOtANM8G7TN3IaUdzoWPmH7El73sFuAYC1do
	 jxwMKXc4datS+BrH20RWHjvQneuXjGH2mB7pJ/MiajKky9s5JqaFBKuDIczeBkp9dy
	 n6GSAd2bWz7cg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C3DD61317;
	Fri,  7 Nov 2025 10:20:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id E28191CD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 10:20:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DF8F74053F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 10:20:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b2LKmHNtXfYV for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Nov 2025 10:20:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3155640531
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3155640531
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3155640531
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 10:20:48 +0000 (UTC)
X-CSE-ConnectionGUID: Y/JgfeUVS26oSV/d+zBWGw==
X-CSE-MsgGUID: TjyCjWjyQ2i/cO8dKo9Vig==
X-IronPort-AV: E=McAfee;i="6800,10657,11605"; a="63867322"
X-IronPort-AV: E=Sophos;i="6.19,286,1754982000"; d="scan'208";a="63867322"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 02:20:48 -0800
X-CSE-ConnectionGUID: Mh1T8esiRWirdlvNiyulGA==
X-CSE-MsgGUID: j+EXALULSOyKF6QEJE1i/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,286,1754982000"; d="scan'208";a="187260106"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 02:20:48 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 7 Nov 2025 02:20:47 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 7 Nov 2025 02:20:47 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.16) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 7 Nov 2025 02:20:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VERlSomd+pQjrQ0jt4Dex6+DpmSdmXEf2kFb73JSG8MTLeH6RWBDzLRVzv32ClxArjMfBCPluf3+TflM8Q8pcvu7gLrQNfeDUcT8zpNikyRl62LCjcyJdivz2RCrLlfJlazhCvet8Y48eMcQToueLHlGHhpoHj5DHlDm7qiMyv+k228gEvpRoh/+PK8DcjMOPjlivwS60OyquzhU7yNKZ6YJntuQElGcwv3ElfBaLlnDel1z2Q6SNhe+nRHRSePlwrn72d6CD6Ay+epA9es149TRpkicZsHd5+xq96VlrzHuti+g20/+iLM26gaFn4r79kQMlXPv1QRI8H1S/xo4ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p1JQTeyEo7ZKrVNLWbX2wv87P3PiQZnHZMCaKxFHhpA=;
 b=X4GOMYD1eweQC67xvyz4sA1u1T0AhTyr3IkECrvABIsYUFAnLTMaeXkMaYCNR3ktByJ1RWMW8geVTt9RAaTOW1atHzuSvWuxM46ldD4LrjZwYUUC369Obywy150KmWWqHktEc+QtDq/R282YKEAHcIZqyHv/9KkNrrf1ClvExjBRG/wdCuO2+wFwIb6ECaTH+jtBC5Nlinzch8qiyg4neKxBlG+HSGLpZul8U0a4F4i5RNniA83NmQNGg0A25J8B3bxJjBV1o+ZYQd2dvox6XsznnlejHKcBRt7ISoOnqS4QGJ67DH+Sf/gXpDMUpEm8lHbZLsDS40wR6axs1J31SQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by DS0PR11MB8763.namprd11.prod.outlook.com (2603:10b6:8:1bb::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.7; Fri, 7 Nov
 2025 10:20:45 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9298.010; Fri, 7 Nov 2025
 10:20:45 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>
Thread-Topic: [Intel-wired-lan] [PATCH v2 iwl-net] ice: fix PTP cleanup on
 driver removal in error path
Thread-Index: AQHcQaj1I8AyTnFBi0KL4VEA9ph37bTiY14A
Date: Fri, 7 Nov 2025 10:20:45 +0000
Message-ID: <IA1PR11MB6241452E8500393A6CFF32A58BC3A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20251020100216.4144401-1-grzegorz.nitka@intel.com>
In-Reply-To: <20251020100216.4144401-1-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|DS0PR11MB8763:EE_
x-ms-office365-filtering-correlation-id: 90e44cfc-9c78-472e-6eb1-08de1de7504b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?R09igYcFOOsWnUAWXw5a7V39UrVjxZTeXbrod9llgKOjaNDL5AIoOTYb5ilB?=
 =?us-ascii?Q?s5GTh5gC0DE3qw4wrkffUTLDuZ+lBmyeXocsM++FYPBo1647mb24xz7FDUfv?=
 =?us-ascii?Q?jnbhQHiX8z0Xuyv3lHKFnGS+P3JjyYFFbC/My24FrVpNTsiZRpRyTh2MNvQ6?=
 =?us-ascii?Q?bX75F1U/9FJ0sVNbG6MaT2sbrrXRAYfxTgwmgsqzy5aLcVVQBOgiePFb4RNt?=
 =?us-ascii?Q?YFNu0PYm2Y9kBg6Ag/TOaocVsqi+S4NLps3lWJ7ynJ+faFeYPeiYX9aijXAM?=
 =?us-ascii?Q?HiTejr9fD/DSz2d395L9SvMQ5UBJobTAJ9qh1ubRDuV7cjFAvsIdIIwPatoY?=
 =?us-ascii?Q?esgHzlK0/GA/Ai1hf92TvOepO7PQ2x8B6nF6ebtYbrGMXZiwpvZD8Nalz1TX?=
 =?us-ascii?Q?ugKacIQQG3/A+ajT43/o4zN4HTKT9cn/Kzu/Qm1IsXImk+v3I9NrLKOBDd/Z?=
 =?us-ascii?Q?WdLX3J2QrcZ802ujw2k75eOgYiHkHE9jExzHWmaG4gmu66xVJHHp7MbSxdes?=
 =?us-ascii?Q?ZyuHdbB/K5sxmhazz55yiufQJx+tsSynkt3c7tZbiXDw67n1F47QRl+QqoYA?=
 =?us-ascii?Q?ucVBWedUncTDnTyY4WYjC9gI+zfONp3K/upkX1nDcJgts5f0IwxRz7LGv0cQ?=
 =?us-ascii?Q?EZUuxoTxfbLW6rA1VcQv4lH0XxiLvjvVFrZMQ+DR0yYd925VeT0yAIzsapyz?=
 =?us-ascii?Q?QbdJKxV9v3ZSamydwLK3RfJdCYTDR7iYtqeG1DZFMsJYdMeVa0PE1HDO8Iva?=
 =?us-ascii?Q?gIHIkEdib8EHlS9sTg6TkK+pB93EFXDPpuTXJ6eYd+ab+fcGdIqFM0PSd5xQ?=
 =?us-ascii?Q?K/QgEVKK2lyX3s2Z+M9JWRuaYFLt+zlEqdoHkVZpWeVIxmw1HqUZwFOT+4r6?=
 =?us-ascii?Q?sX/KzvzDEvGEJ3yUD3yNfUXtLozoT/cajdRwo0Le8fkVzfdMJvs2wutOGuj7?=
 =?us-ascii?Q?F9YoggoLOTzpoFl4ABo0sTigfY7qzdZF89K8UqbOUGw6SZ1hOlxSGfsCGzZN?=
 =?us-ascii?Q?sQub/EQ/7kXqAXiU7W5LNt8l2TTz1zBJdEsmFgZQCzNlkYEzltVGVaM30VO8?=
 =?us-ascii?Q?jlDI6uqa93BG5oVBpT3J6ose37BkC7njl4MW95DsUhIG1Z14hGYCgJepLaQS?=
 =?us-ascii?Q?iw5lBYjEPtz4HiKr7nKV6EWOPcGrvjULD/nscP+0XxPU+k8Lr0YSSocIh8vh?=
 =?us-ascii?Q?0CU/mrxxfWJs1LPDK9ncmAgwm/+YhU/gNdXACoTZYPrWs2bZg1yzxMe5Tdc+?=
 =?us-ascii?Q?rG2uA+iEuCgKAw6AWQyznD38kEESULnj8pcmlkyWWtAh6O1GlGM4bC8DwUfu?=
 =?us-ascii?Q?z6VGtfN65ZNwViRrnBoP9rBjObY+rwiSlHGnxwbo8qz2EwbZIyOMyu/3KDna?=
 =?us-ascii?Q?NhFHnFAoHe9Hv1l9b3SAvvK9uzcr1I4uw72QHRoQ8QhqhCdZGhxPNaqvviv6?=
 =?us-ascii?Q?OnNStuVuTGeXBwvx6L5Qu5VCahVKnICejh3GLcAsx/kYT+52+5q6whW71Yor?=
 =?us-ascii?Q?A0pIu+K+tlTj1+aNtBI2os+cwRPPl6/eGGcA?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zRuoW0oN23TFTc0iKr92h3ov0qaLN3lVwgH8mwnLE6mbN5KOM2EKv4TS7pNx?=
 =?us-ascii?Q?8hnMGOwOFlP8n/ZJIjcQa7CVY4uD708ABN+fXk6jbvB5o/B0wdhkCzx7DeeE?=
 =?us-ascii?Q?Mf2puq3DVZAyENy4hj4pwS2uvGztVTuF/6P0VuAxVtSeBBUZE4TC6B3MExkf?=
 =?us-ascii?Q?ppQ2e44VBTbsJJWn7tXhYBwhZvJO3feHc/m5f2c9xjc5ZmKsBST9nHayVYFv?=
 =?us-ascii?Q?Kp7Sb0Ety9lt2e12xCxChJKwLx6xfvAHczZNcCsys34W7322a9/OFJoEA4p3?=
 =?us-ascii?Q?tPVmJlT9knxSVM2ujzczBc4BJP0re5qmhnX7sbp8cKYL1bDFgS2zlnK5imVG?=
 =?us-ascii?Q?ZKzPZB6mrYJTXuhDQUtc1rIn4JFia0cfBkOg2ULi0h5iVMq3spTx7nihqfNa?=
 =?us-ascii?Q?yoqfPI5Cxg/HfM7Q0p0cZRRiMyYfTTRRM9KIzrBQnZ6BA+5triRwJHPzReXH?=
 =?us-ascii?Q?DPQuYnQgE347nCOsfXdNdpGLYsB8CqAqOI7OF3R20kCvDcXp0Wg9jyObVVMX?=
 =?us-ascii?Q?tASrLcHO+z9JBKJkD3TSlSULkD+h/pv8OuVT1fY7kUXUD+2v5ctmReYJcoFi?=
 =?us-ascii?Q?eT8zOPlNvlsO5+wjoI3u38U5/JcawfcNSjD35EJswSYBNXb66IM24dI1hyI+?=
 =?us-ascii?Q?cv/M9+TnhzQN76k2o6uHRR+4y5e+OxE3WVnt8dQ+mvQq9L5nrAf9z1UTWeew?=
 =?us-ascii?Q?N5LD6J5FlG/6q01Fu08uH+7jmjteYVtiBaqzkzSn/uwwfjtETVW8xngJKoOo?=
 =?us-ascii?Q?6oW+6nt1GEvGoo+S/fvIe9UQ0RE4X7eRbYg64ywk5e4MUzNJZnF5FjNh6b4O?=
 =?us-ascii?Q?oYHkIZ8QtjS16pKem3iKSstlUlrx2Qmm6I+kKPQnEBoLMzu2/xewBQ4RGdcI?=
 =?us-ascii?Q?3LGCCbYmTEgT3a4Tjfj4ITONrGuj6/TMsbf4suIWceT5HRkOB/TAKSc08Law?=
 =?us-ascii?Q?L+afwA1jEAG2V6+o5ullBb/rJ9MUTqoU4/BiC58ZtIKbw2+JYXHXI8Yn5ApJ?=
 =?us-ascii?Q?0uHyB8BQASigu/w8EWtT2FZagX3U66fmniavjkEStyZQ7Ql1V8gXVZIIbfla?=
 =?us-ascii?Q?mqcQAOff+WMwks/xKjrrGVSIkEwF+JuR8nbdPtKbWjszRCybflBtbJYZS139?=
 =?us-ascii?Q?zYTityD+0QDKGvymP9tY5K80UkBYCrSHCiiJJ1pvSXA1JaY5lsot6CbTou6I?=
 =?us-ascii?Q?Ds3C8lk0hcgNR9ACFcQguM3espCV78DhFfB7+or4yMYUO9XUa3/t2ZvYWliG?=
 =?us-ascii?Q?F0/CzZ8KsYJiqx0f7nTGfdCrGNe61wjyeoreC4kBOGcSgVyhlNXAIwxDKRbT?=
 =?us-ascii?Q?lOpvKKAyRqAEEFsEnSUzesxwRZzCcLlXZmiHENtHmwvGpdmyQFUmXqBjmwNP?=
 =?us-ascii?Q?5jvG7HdPOdkOXiBGdmeIFAJYG7jrvecjh3n0S5w6JBP6ukpvusgivO0kQ3SU?=
 =?us-ascii?Q?Xj1WCJqX68hhwF4anSH0W6jU/t9klD4i87mjJgSTdFfILbpX9XBvDdeIuYPv?=
 =?us-ascii?Q?KWT8whxR2qcoGKqD5TzZu1YCmrM8iP1gIyU/naLSP4Cb+pALzpWYw0xYBVNv?=
 =?us-ascii?Q?zZMMsu+SYPbmTGzgyADeohfI0CLpVkRqWpdCef/H?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90e44cfc-9c78-472e-6eb1-08de1de7504b
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2025 10:20:45.4810 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ykI6qCN5YqN0XiVu1zdSplwnYmTJ4t2wbdniiomcJUxxhmmABBp6HgsomPMbVMOYm8e02r97NsWkNZcPO2NO3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8763
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762510849; x=1794046849;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=V2rA4c5XnwDWv3gvoqJ+ddBGxtC1fIGTzlujaQU2LnM=;
 b=iPH4jBSvyldRQ71GzYcGcZF9uFy5qUojAQDHik6UP5QdYbCuJhGx9jUH
 aOdmRUwLs1aA9mdAdvbnD2JseFY3oukofL3mOrxg+JJLOBP3lx+lkIDrD
 O/vv8GRw3gFnzzRsGGYKnujDSHMoSKXW62qT6xyHbq6UVlxUqFn00eI0I
 xaUcwiAjBS2tBZFlP09nqmTjVUj2HS0jpSL4lB7Hvo2qeZx7CjtQPBB9a
 FLGepLSpG/0E92fu0HzQkfnJM6+C7fq7HUfiRYUciSlgE4gDAJkw9LuEn
 zZxVT0EXHDuC8oHBqBJ1zzfVtLpGW+7tc9tsWjyFduogEkTKyDQTtLvG+
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iPH4jBSv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net] ice: fix PTP cleanup on
 driver removal in error path
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of G=
rzegorz Nitka
> Sent: 20 October 2025 15:32
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; netdev@vger.ker=
nel.org; vadim.fedorenko@linux.dev
> Subject: [Intel-wired-lan] [PATCH v2 iwl-net] ice: fix PTP cleanup on dri=
ver removal in error path
>
> Improve the cleanup on releasing PTP resources in error path.
> The error case might happen either at the driver probe and PTP feature in=
itialization or on PTP restart (errors in reset handling, NVM update etc). =
In both cases, calls to PF PTP cleanup (ice_ptp_cleanup_pf
> function) and 'ps_lock' mutex deinitialization were missed.
> Additionally, ptp clock was not unregistered in the latter case.
>
> Keep PTP state as 'uninitialized' on init to distinguish between error sc=
enarios and to avoid resource release duplication at driver removal.
>
> The consequence of missing ice_ptp_cleanup_pf call is the following call =
trace dumped when ice_adapter object is freed (port list is not empty, as i=
t is required at this stage):
>
> [  T93022] ------------[ cut here ]------------ [  T93022] WARNING: CPU: =
10 PID: 93022 at
> ice/ice_adapter.c:67 ice_adapter_put+0xef/0x100 [ice] ...
> [  T93022] RIP: 0010:ice_adapter_put+0xef/0x100 [ice] ...
> [  T93022] Call Trace:
> [  T93022]  <TASK>
> [  T93022]  ? ice_adapter_put+0xef/0x100 [ice 33d2647ad4f6d866d41eefff180=
6df37c68aef0c]
> [  T93022]  ? __warn.cold+0xb0/0x10e
> [  T93022]  ? ice_adapter_put+0xef/0x100 [ice 33d2647ad4f6d866d41eefff180=
6df37c68aef0c]
> [  T93022]  ? report_bug+0xd8/0x150
> [  T93022]  ? handle_bug+0xe9/0x110
> [  T93022]  ? exc_invalid_op+0x17/0x70
> [  T93022]  ? asm_exc_invalid_op+0x1a/0x20 [  T93022]  ? ice_adapter_put+=
0xef/0x100 [ice 33d2647ad4f6d866d41eefff1806df37c68aef0c]
> [  T93022]  pci_device_remove+0x42/0xb0
> [  T93022]  device_release_driver_internal+0x19f/0x200
> [  T93022]  driver_detach+0x48/0x90
> [  T93022]  bus_remove_driver+0x70/0xf0
> [  T93022]  pci_unregister_driver+0x42/0xb0 [  T93022]  ice_module_exit+0=
x10/0xdb0 [ice 33d2647ad4f6d866d41eefff1806df37c68aef0c]
> ...
> [  T93022] ---[ end trace 0000000000000000 ]--- [  T93022] ice: module un=
loaded
>
> Fixes: e800654e85b5 ("ice: Use ice_adapter for PTP shared data instead of=
 auxdev")
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v1->v2:
> - rebased
> - complete full cleanup if failure in PTP intialization path (no need
>   to do a cleanup on PTP release then) and added a comment with clarifica=
tion
>   why keeping PTP_UNINIT state on failure at init
> - setting ptp->clock to NULL explicitly in error path
> ---
> drivers/net/ethernet/intel/ice/ice_ptp.c | 22 +++++++++++++++++++---
> 1 file changed, 19 insertions(+), 3 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
