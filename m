Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AD79F97B448
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Sep 2024 21:10:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5487E61130;
	Tue, 17 Sep 2024 19:10:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j2bl6PssWTl5; Tue, 17 Sep 2024 19:10:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9AC316110C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726600244;
	bh=c243d0np5VOoWffNyMGJLCSIUUlMuMXcf4bqek2b2SE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3DWc3LT0ZnC1/RQUJFQbgWDdDsKewzVupk5XGH9YebLdbkD5v5A9Wjetp9ofpVTre
	 cfT7cZykQ5p7cuKHAZt/9bSh4GEBFdYzjcPgDisYdrXwW6uTGm1jdQiabkH0GUMQx9
	 Sb+42967l9h2E779Pju8RnQ7a7H5HBsTcDFnBNcFLwhPbYJu1ZM+ZPm+QPCXlyVe6s
	 9a8Z3zkDVl34Xz9zpbrIEo/fMa/CRwHz31rKyDcCEsQKoi5IVF3FAXdxKDswEx6fFi
	 zcB1yWHZ0HFFQQA2gKl+KQ4rLfzErDvCpGMKJ3z8HY0X37IQuHC5E1u67hynfzqa6I
	 N7mbwqBNAG8vQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9AC316110C;
	Tue, 17 Sep 2024 19:10:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A42C91BF966
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Sep 2024 19:10:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 92A4A817BD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Sep 2024 19:10:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oh22673lltuf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Sep 2024 19:10:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=george.kuruvinakunnel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A2BD581836
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A2BD581836
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A2BD581836
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Sep 2024 19:10:39 +0000 (UTC)
X-CSE-ConnectionGUID: 9R5aTPbGTKO2xX2E+VU5tA==
X-CSE-MsgGUID: 0l1fzAEbRQS8IcSwMls+tA==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="47989665"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="47989665"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 12:10:39 -0700
X-CSE-ConnectionGUID: ZtviLbRGQgSz1mbvu/cHMw==
X-CSE-MsgGUID: h88E6LbQT++MFMY84Gk+Xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="73651900"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Sep 2024 12:10:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 17 Sep 2024 12:10:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 17 Sep 2024 12:10:37 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 17 Sep 2024 12:10:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kWHiywrJNKzLNdLLUIDCXOkoR0x2qlQNQwDEoTPF4qUDS+fb3eByskHRiXWWU9WtEsWKwol/usO0dT77zp+2koOOGXPbrONorxCtAkweadc8axIqGvL/rNDXmRW5cCxcSe+aOhI21eqpGxdm/bsJq1TabFUpKcjhvaKam/mGMZaRkt4aM7lcQLMq7rzDt6X+Lt3r3xu2vCjCu+q6hTw3db6VetnRRvQhvnHGuyIHt05wnPZyrHZpZ6eZcbDXuuX22QTMkBema6cniGCjVNm0GR5onCUIx297ZIntIA2TaMHOgMtnlkLtCbIbMmzTTcPDmQ279HafHiTiUncH1NkPWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c243d0np5VOoWffNyMGJLCSIUUlMuMXcf4bqek2b2SE=;
 b=K759y4ry6+bc+9hmlf6WFvnHMVQuYhZRedK6heZ1ITVR/lri70+5541CsPA8HQ+liwWDncJOk5RRWm2XfKuClAtKiYWJAXmY7Cdh6R+EWUR210eg0o5a7nAEqrAcg9MbfEaTBt4BlxhXz/Ji6Qp1ptQfGlwtMWAVG8sXjH+hLo1SMDIngRXkyJVYF8qjTLC+Fk/xFZb092bO/0iOaH3QttG8H2qCBYocOV/d+GerlSIGxwXtL7VmKxtCyI97D+/znfVhG2bHwyNho7i9/pyd+0Ay3OGgWAlT+QzXH215KRASsACXu75RxBRqDjvADBbUhD14eChSy8gKVK+cT4YkLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5144.namprd11.prod.outlook.com (2603:10b6:510:3e::20)
 by MW3PR11MB4570.namprd11.prod.outlook.com (2603:10b6:303:5f::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.16; Tue, 17 Sep
 2024 19:10:35 +0000
Received: from PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::5889:7208:6024:bbcf]) by PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::5889:7208:6024:bbcf%6]) with mapi id 15.20.7962.022; Tue, 17 Sep 2024
 19:10:35 +0000
From: "Kuruvinakunnel, George" <george.kuruvinakunnel@intel.com>
To: Hongbo Li <lihongbo22@huawei.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Make use of assign_bit()
 API
Thread-Index: AQHa/hJoommR+TKEz0a60udWYf362rJcbHPg
Date: Tue, 17 Sep 2024 19:10:35 +0000
Message-ID: <PH0PR11MB51447E4D5D2D7194EBB1B1A0E2612@PH0PR11MB5144.namprd11.prod.outlook.com>
References: <20240902131407.3087903-1-lihongbo22@huawei.com>
In-Reply-To: <20240902131407.3087903-1-lihongbo22@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5144:EE_|MW3PR11MB4570:EE_
x-ms-office365-filtering-correlation-id: ea754535-19a9-4988-7778-08dcd74c68c3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?u5ZF7XO3t3zfPizbgye7Cx6wfijJeUVxR9+PCU01OtfDq5svoNt1eiQc7bsi?=
 =?us-ascii?Q?cm2y6ZPC0VHLunG32sUZvNMS5fWR+eBHIDV8+L4mivPxQs8MkdR/+uVORdWE?=
 =?us-ascii?Q?ppvzO2J1YvhHv2/anaTFkMUu7QyExTw/hj5aK7P9HWSPrzmNeH5P/jGyrUSI?=
 =?us-ascii?Q?R35uyNapfe0wHN6EXlszUfV52MopP82jHxv5lo6pFzWY4Xg8t6e0hHBD+wMF?=
 =?us-ascii?Q?Nl4jIQNxYIyIzGd8Rdeuconfxznt6mNI+wLiVI/9jQZTh6IHzqj1CTJtE80k?=
 =?us-ascii?Q?2ufpLni9eFJg5b8K67s67KfT06PW9qlnAB/ujDOqGir8pnX58gFo8N88Qsm7?=
 =?us-ascii?Q?448IIht3jvg+fRvD89xiy/KI1IDmyG3BJ06eKb2wc9P5Q96ooW19sgOfJC0+?=
 =?us-ascii?Q?Iusv1ULv64YOqBzsuwi9mmRR0M7roaS+OLwklI7IW9ijSAAAaJMbLhYeO+Ci?=
 =?us-ascii?Q?kabm5os5s1+SYZCPOKk267e8GeENStYw8C+ZiPEZEqKGFp2QjzDOGjrMS0kP?=
 =?us-ascii?Q?ytnnOr8ce4GlO2Uqcdlq+MA9VkRzPPzyoF5ASZQb4H/Z7CKuPu28ezWO9qeJ?=
 =?us-ascii?Q?Wbof0FqFNRu8eG8ehZ8m3CMzf/c/raNo7ayUipQ2QHhoVHH995EZo8nBiUnB?=
 =?us-ascii?Q?3t0Si+d1i0HjpTCmDaE01isRfRGincVEsfb1Oc8Iq0M5yLDOLRquHRN6IQlm?=
 =?us-ascii?Q?qdiJ1DRnM06qKfknuvvzmuFQ9w5U+vQNh7nL0EvP7Aw0UThnFd+z8CADhkPV?=
 =?us-ascii?Q?xiH1KneSEaFVPi3xSiCjp/HO+37uwudxm/jDF69OrgqSPDRKhoKSUjVbmM4s?=
 =?us-ascii?Q?JwTtwFJNC8j8ckDlHYMPaLruBNv7tGj06v5QzUnkr+YVpBPLgFSDGaP24i2N?=
 =?us-ascii?Q?SlJUD2kouw3aqjAjC1pZwyOdDV9dvMZ8k+/ycMkZcuqFLmJb494Zd3qZ/E2h?=
 =?us-ascii?Q?BIgNS4z+iWncUIRsMtlqNv4UkgDE8zQjFH/a7PS/YfnujDzGIZ1hD/ygKh5X?=
 =?us-ascii?Q?nn7HP2k3CyfPaamb6yRUxH5xSDg3+MsZsZBGwzlPJT3DWpQgiTbXoSM3r9et?=
 =?us-ascii?Q?+8w1hxJOKYWwcHmsSG1vJbSfkw07WcbV9UmMqAWGBwhIkEz+HADi4HCVal1m?=
 =?us-ascii?Q?dvrz3GmqiMCKIUZ86Nd3Wdfgf2Sphya3ZsufAd4TaYLO1mjL1dQ7c8VTXPMV?=
 =?us-ascii?Q?o5d0UEuYRc8rEmWB7frMItxG4FdmORHEm140EYVNKj/JQLY8A3xQ3k6KTqsd?=
 =?us-ascii?Q?Sl43lQT4+P6cOxZ5J6vQP25dpCeqgNi6o8yIKqupdgTzzRwxUQ+f9HngdmhF?=
 =?us-ascii?Q?AXrQJeOupUTvBYtz5BgjMBir6iZxeBDEbJqeVC3CN1RL2XA2D0FrYhNljeGd?=
 =?us-ascii?Q?xOQKGacceRLXv1pFda2NEAkTqBavnhlpQhV9vNSQQzEECLMuIw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5144.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?AoFwvbDFz84yJ/hVEG0HibiD2DrDRPnUFNjeliR5MZ5e2flJRQPEEbuQkC9J?=
 =?us-ascii?Q?wKEVWuvrsqoC0e9aJuuA9DY/bG1QTtJs9EQC4NDeb3LmtssYYxEeE+rFiq6V?=
 =?us-ascii?Q?witRKXHYxbFlhMjLQP4OKKsqT7+MGlAFvHRI0l7N7TjcpZOfTAheVL8VOvuH?=
 =?us-ascii?Q?6ilTrUlxkJgfIIwVZN/OYB3YkYmLoYvaPqnugHoKk/0Lg587Kk4DuSdvGeeu?=
 =?us-ascii?Q?e726Rqo3fPsT3TVdAcvka0LDg1+3sD1QKDLipmPJOSD7UqJt0oHLFUYKpBcu?=
 =?us-ascii?Q?MdzmUzlLhai+IL/Yda41YZ5fQ/oXTHEZZ7o/iM3ZXnp0JdDu08SGPGoM3ief?=
 =?us-ascii?Q?AOfMjLKNFLga9mmMDeWMsMU8S9nCErL4wNq9J5IOnfr9tnQaSB4rhSfcRI0Z?=
 =?us-ascii?Q?IUkSeXIqOaHay+MCHpdydnFO+AIsx91gBLOlRuc5W+/ZfP89EL9uOXZVtEZg?=
 =?us-ascii?Q?yph1+1GfKwWBXgT4qn1AYtFMHoacGi5aUAoDV0nJt0kzD914iDvhT/+4OahX?=
 =?us-ascii?Q?gtaNPiPOx/4mUARHlAaBq3FmgQOBrev0iwCwXAaEBkYAA6Db/486uaLYDkuK?=
 =?us-ascii?Q?n9lS/uj9KZ+ORGAYAjzgrjBxlQIRp/pG+JQS7LZr9SW3S+UKhQ+RDUlQS58h?=
 =?us-ascii?Q?Qg3gcYx+qJjGWOXBmHyIQU+inMjvTmBtLotlfu66gPFMY/RsDHGz+C6J69F8?=
 =?us-ascii?Q?0NTgio0sAmavcwhYmoU1Btww6hk3NTc6QcOg8jJuuZ/XduFnG27n6BLJrZZp?=
 =?us-ascii?Q?GNewApnBzx7l2igYq83nst2YvUoOtlNm5KZEU23EA5Ricx9xm+7XifT+H8P5?=
 =?us-ascii?Q?EIIcKudYARSBk8Q/zoUHjOoMZ4bRSDinHx8qNrVfdEAEsc72Z1a8p0sKjrYg?=
 =?us-ascii?Q?D2p+661Jpnv6Ger7+zzG6n1sNSy12S/JMWq6tH6z6H+cd9iZgO9hSKIHsIGl?=
 =?us-ascii?Q?P0xGkmQW92XuMeUnjysvNnm8CS8wWQfBoH+jIAXlmwxW+Pc2puqewBV243Kp?=
 =?us-ascii?Q?9wcZQ0JQfh3++Oo0s0j1idiRmnDg7t0zzjWviyz/lNnxyf1Qbe9gQHs7DQSj?=
 =?us-ascii?Q?/O8CNyH3xZNDbKLU8aGzxEhaFVkydKW6VTM9h0qNOz9g+QLSUZx1AsYXM6+4?=
 =?us-ascii?Q?pw2AKx2ZR0rReySE1b31Qkqc9Fek5IOaflKHxikhrJKaASydKmU9ClvrnHO0?=
 =?us-ascii?Q?PJu9Uep532Tm6UwKbajz3cNDUhm+IDKs2h4u9wXNEKRGq2I42NXamU/wnV3o?=
 =?us-ascii?Q?AHrx1od7hiNFyl5OHxSjCIT+MMABl8yuHmYDiJLO/M7RD2/5/ehK/LF8M50n?=
 =?us-ascii?Q?7wcBsbvih66e7ekOwDJj5C30C7mgNXpk9yRBgnD1fa8r4W72NervvWKIS2+l?=
 =?us-ascii?Q?a9O3ckKuj9WhoRLWT8sEjnq0qmlBs15VFpXNxF9rgaaoFKc9p3qdyLearb7k?=
 =?us-ascii?Q?6ytdtmf9HZvL5nOz7IdZu1ClvqRhZpjjZ2RAVhhnPYYZDzA/k3aFS+FttnK+?=
 =?us-ascii?Q?CEgrxmrZXyhoeQp+lsbdYsNrp+jL8Yzx8418lpCsLAMUZd3LwknaJXJBMXgF?=
 =?us-ascii?Q?q7PLxOnwwLzgRewFkxvNcB9dWXEPArxk+fSrvFuxXBa/t0ElRmakwqXpyixa?=
 =?us-ascii?Q?Hw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5144.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea754535-19a9-4988-7778-08dcd74c68c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2024 19:10:35.4321 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lmwsWZGjmKRhOlGe5fFZnGcVH1+7NgrkTTpro+mxnM6ln/blyJ/0OMDN2G+jeSVkRsfqaRxEBlkwgsHSWdwko1DyzFWtFYMeU88B6MK/S2Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4570
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726600241; x=1758136241;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/mEDDrTXK+IopIxIY3dLvGPJ2PCJwKDWGultIuCwvHY=;
 b=C+I8bYTERS4B6vpdpGiTjmZrdktvyKSbI/Bf/5oaNu9GnpBIIxAJefr3
 ILMJVwgiG3AmBGpnOKW15wF2zWyDCTd8RGLI/0W7ZOPtUPGalGI0P6X+n
 YIz8rjogVDNcM65wRhf1iuBTpH0xjU5/wxrQHwcyVoUrGUu9Jbh3Teuck
 99i3czm5EsD+O7WL5KWzvBYcK/+749kj7uFCY4RGiqd5RtUJx/Pg4RfX6
 IlKNrzrSW+ZjS1dg7yoS5rjCRB8kMgn2p8E0uzTDyNlTtGzPmDpfbxK1D
 OXJdMXmojOeGS9JLwzlmeelHPYdkvUzOzLQ1kDmBuu50NOzG41eH+lrxK
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=C+I8bYTE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Make use of
 assign_bit() API
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of H=
ongbo
> Li
> Sent: Monday, September 2, 2024 6:14 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; edumazet@google.c=
om;
> intel-wired-lan@lists.osuosl.org; lihongbo22@huawei.com; netdev@vger.kern=
el.org;
> kuba@kernel.org; pabeni@redhat.com; davem@davemloft.net
> Subject: [Intel-wired-lan] [PATCH net-next] ice: Make use of assign_bit()=
 API
>=20
> We have for some time the assign_bit() API to replace open coded
>=20
>     if (foo)
>             set_bit(n, bar);
>     else
>             clear_bit(n, bar);
>=20
> Use this API to clean the code. No functional change intended.
>=20
> Signed-off-by: Hongbo Li <lihongbo22@huawei.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>=20

Tested-by: George Kuruvinakunnel <george.kuruvinakunnel@intel.com>
