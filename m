Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B410E873BB8
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Mar 2024 17:09:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 09F6C41872;
	Wed,  6 Mar 2024 16:09:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mjuPE77iO8js; Wed,  6 Mar 2024 16:09:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2323641852
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709741348;
	bh=2fsf9V+xPwc5XhHdfymbBG1OD0Youj+TXW3rz62+kXQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Sen1AmtKTyJTk1wAqt7hJdqdGJ6TQigW9UxlJMsYyzv3HCnWr+cCrz6zX7K5rwrBd
	 uwyz74Ab9bXNqbX6CZMFH05X2dgVyFlyMIgVmzsEzpDpvVG+HMg5aqdVtgaJmS1GZR
	 4TT6xNYSvVOWFVzrcr8sxCs3PrxeZhLhpa/d3JhKCw31bGZJOHsjmxcnTbrFfUtEUE
	 5SwnmhQcX3QonLYHD8Dd2F5vdort1f3FqYVXJ797gTcka36vpiYi0guMl8CRhbYOmC
	 IRJSbFoqRGFc+1XD6D9KKpp2jURSPi8wWVPfn6Xu/vfwC2ySeDjRn/SRcqFD2h51Vv
	 LQYC2CII3rI5w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2323641852;
	Wed,  6 Mar 2024 16:09:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8BAA31BF357
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 13:48:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 849FF8229F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 13:48:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pcAcchM1Ub7U for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Mar 2024 13:48:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=mayank.sharma@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F29E1822CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F29E1822CA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F29E1822CA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 13:48:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="14996295"
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="14996295"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 05:48:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="14321465"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Mar 2024 05:48:28 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Mar 2024 05:48:27 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Mar 2024 05:48:27 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 6 Mar 2024 05:48:27 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 6 Mar 2024 05:48:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ecmrZAoRBh7gowhwhmMnG1/qfR7zaWcqIsYPiJ/6EQEIG2yesUcoEjadMhGYk0qSOyLtzxoaS9xhrIpIVd/TjHx7zy06EGgqMmqsgxpiy2emv7lTBt2Q0LmyC0D1MmiYfCCk+KqReca1ICQ1WZ5z06/jYckW1VvXc87zNf8VhqVspm5jYDqOLzbljzyl3pDbblswGdoUB/VcK/Ste7AcYEIXYxwQgD+F0zK+LiUr5VnWuwQ/skzqIePNiUQJYljcEF+8zYcTJuXLcBILihd1g3xiYOb9V69Ka7A5VJeblHK6PiCbIOYrE1W+HS1ee9X1VBF7t0kw20v5r+bNfGT7Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2fsf9V+xPwc5XhHdfymbBG1OD0Youj+TXW3rz62+kXQ=;
 b=bRP3dDmME04mobzXS8jd1hPBvCUOpe6TbkItOXIHncDyfBjgmXtv369cdEztWyE5lCz6prhhmK3FltwRYDa+acpFIAytVcGg/NB9/1H1s+ut9ww8ua5KhHbZWbzeuLUDWQ0UtDVrREb17O/HdH+s8TbiMRzfz07jgiR9ZIDjpRsG68oWj0qX7PBvJZa563E42IIrejVUvpqOU53Pitp6vVvv2oJtx4/pgLLLWI++1/S1KdwhYvcSkQ3UUSoCzLOiYPd2yKctOcMa5J8t/N4E6SyBSNl5NQwK7tVIWVyS+68Wat9g59975QOm/e0+TWBJXxJwNQD+pQolXssf8YEruw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB7942.namprd11.prod.outlook.com (2603:10b6:208:3fa::21)
 by PH7PR11MB6053.namprd11.prod.outlook.com (2603:10b6:510:1d1::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.24; Wed, 6 Mar
 2024 13:48:25 +0000
Received: from IA1PR11MB7942.namprd11.prod.outlook.com
 ([fe80::7722:52b4:6061:a38e]) by IA1PR11MB7942.namprd11.prod.outlook.com
 ([fe80::7722:52b4:6061:a38e%3]) with mapi id 15.20.7339.024; Wed, 6 Mar 2024
 13:48:24 +0000
From: "Sharma, Mayank" <mayank.sharma@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Zou, Steven" <steven.zou@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: Add switch recipe
 reusing feature
Thread-Index: AQHaWj9RFF4lJ+IEYEuth4p3GXqMU7Eq4VkwgAABp0A=
Date: Wed, 6 Mar 2024 13:48:24 +0000
Message-ID: <IA1PR11MB79422EFDCA5CDD7EC60125C0F4212@IA1PR11MB7942.namprd11.prod.outlook.com>
References: <20240208031837.11919-1-steven.zou@intel.com>
 <PH0PR11MB5013D1C2AD784512CA70173396212@PH0PR11MB5013.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB5013D1C2AD784512CA70173396212@PH0PR11MB5013.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB7942:EE_|PH7PR11MB6053:EE_
x-ms-office365-filtering-correlation-id: 3c7adb62-a080-49f7-ff22-08dc3de41840
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: b4CaWCMfTYRQ0MfS0fFxD9DGPH2OSIU4TzQxa1pwYgKQooYmq0yoKbb7FAl+3wQ+WTdhmpiZ49xH67Hopu7WRpQJKFTinoH7d53DiWy+Wt3e32WeUcWnN+k7DLUrCD5Z+IXK0/7ppSJIFcBemltvmmaEFCbRQjSFw6z1rIku9AKgxmCsV9NS52Z6NzxUkHwZVBxD3F+G+98slZDxFmy5bAPktEZUCDCdc66eSz3b3zc/+NcW6tgCor+lGSHqyVxqHIVYWNmWaXYrs2JAqhowuSeuSKg2aFLm+/F8MqUz01thwmgvxs5eM64AFhSiYIf4dg6RPXvSM5rR9FXrYLcilNDMj+nB83W+GCQfYsGRoMtofMEBvNZoJbcGq3TC1+2Gwv1/f/nfkuGF5Aj9FnpfQ62Fb7+LdokHjOFlQ6rU8evXibgV9uqxynOml3nMgpXYtBcbdoQWCEgnFeOSjYnlX1qPUXAqKhQJoGzOCiTjNjEESgs3q5SVaTKjqoUtskoL7TsQSvVt2FWZK7sXnQ/TM7IbBZg15hQQ2Zxkrfv7kLeWz0L93Q0kPS5Lvyg9NNdn3oWwSQvfxDvTzsvS6sn9CCQzvSzZdauRmCzvsMxgc+ExSB7lWW4XUiEtDWY0PYnByxbLamnIkOlX1e8bykEnAtxNKfmq8O06IxGM9uk/F/1Zh/9b+CvIGgFaAbYnB1A2k1AkcVYudlpWNCljaV0aR1/aZ2An9kolc2nRq2Ywai8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB7942.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jVdZm1e7lHZh3kboII9USxAklvfW2ylOfbzMAie0OE8SQWwvzh4W1OkIqzJs?=
 =?us-ascii?Q?vHAPWG0/Dhs7wdqHjUM4QXdI0mnWfJGMC6gHFg3PS42WBVIcvG5iMqIYwCKJ?=
 =?us-ascii?Q?h7W6wA3GThaOOsnFRSqYem4JA0xjjPphNMLsMjjJ8aEwiViDJoMbTWjvY1iv?=
 =?us-ascii?Q?Hntpk8a6Pn/KdNXFzyBZ5hjOYYw/kDXgtxiaOaA5ZQnfS97vtwvrvREQ+7e2?=
 =?us-ascii?Q?ChsnLgog4u+OZXjbIJsX4swSISZSkVCASaaFlkggKinQJBXOWIsEunMdapD7?=
 =?us-ascii?Q?4tJVd7U9HaEbCAy0lv3kKfRsmOB3kuGPmTpslmcylW+uSHIorLj8ORCKHGNY?=
 =?us-ascii?Q?Snsh2lASzahlIAAa4pPj8JsN8q3o6vmi0wQGndjGcbBC6TnNrKPE3Ed00Vef?=
 =?us-ascii?Q?A3eFkRIYe9uY7J9CugCQ99l0IFa4O12JvpmMMqiLEUXiAl0taj0eMl2yOtWz?=
 =?us-ascii?Q?JJctIjN4hSuVVu/BNqHmTTq0TAg9EJy0ROhRNQKKzddJV1IrzzRX2P/Ecd5x?=
 =?us-ascii?Q?i5JYv4zzSAa+N9bIeFH7gnxZKKQhAehpf2KTXK3w+gEvWK63vGFqFdWrEILU?=
 =?us-ascii?Q?7FygCP0N0LZCQdEqcJMI2ph3Hsl5kpe1WlwgigCl4Q8t7XxeKTDBaVZfBqv6?=
 =?us-ascii?Q?eASpNH4s/O/txyf81FPRVs3s1XZ1y1z5eZAzFsC81ChyXFgfeXdrgPvqELJx?=
 =?us-ascii?Q?hM695iVw+iykilfwGtOfbsnk9qqkeN7b0gyu/GQM0Li/A1A0LsDoIvW2hbbJ?=
 =?us-ascii?Q?kkzp6zmXyT51ekfbUkt4Kh3ijsDHMlCocUyV5O8SJwNjzP7lD+CDHMhaVip1?=
 =?us-ascii?Q?t75vGFVFHKtKYsqAUNzeXNn15RCJ9f6ixNYXHC8RInT9b/ReCLXhdz3B1KYZ?=
 =?us-ascii?Q?QSglXqerz9EG9jPzjX9ZxU5HWzvQQV0ApmKvHrAQq3iXxi5wsgaopGc9lv9s?=
 =?us-ascii?Q?+0v/D8Ik0NMhwHdh+fbBGIBcSf/3aVTy06ghLD+26DBniASwXF/wzIYnlY10?=
 =?us-ascii?Q?a5bIQ1poTQpvKBnn2+EuFHd3V2tbfGYtq7/XjNyTIQH9MX4fU3ZaCB3CpLBj?=
 =?us-ascii?Q?A7t9RZw/0N+OUbBdoyYmcxwWSD7Qt5bm/oR7AiA/xDhhtBEL3uokwNUFGuzu?=
 =?us-ascii?Q?u8HuLYtmYHQj81Y4EodwxUhTyz3kWw15m8QMUrsGaPxDxJ0WyvxSzSGrpsQW?=
 =?us-ascii?Q?M9AIvqL2JQJZTyZ0QFJnzmCKdN02TcM03QH+6zCklPMPtI8LkDqWPfEb/C0i?=
 =?us-ascii?Q?v9wQvgVEnVnR175dL6G67ABPrLV4MTjGE9TE0TSShIEBQgUB2mGseiaL1eKt?=
 =?us-ascii?Q?fYGuAZr1bd0uqk9vZBhhE6uyqgHf8Ta5E5pJ/FchIgx6kCDSSRaOVJkLHqKL?=
 =?us-ascii?Q?PN2Y6ncnYt+SGyQ4dPgEaMp0RapbCGMpddY20hDRjzgVoVp9pNAmiwmI7thQ?=
 =?us-ascii?Q?agrQB2FZ9iXD9yfS52nmyKUYu0SqwLmjqJXlg1JQbC6hq5k6yVJzMw34mh4z?=
 =?us-ascii?Q?XZ+8rr9yqDuYMJJb9QY3T/X5zrO0YlUhSg/0q0XHW0tGucIdL+sXmXUc+gTE?=
 =?us-ascii?Q?sAbBbTOc3IHk5LpoLul7/UJhd8kuSMe8sr4j1+Ay?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB7942.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c7adb62-a080-49f7-ff22-08dc3de41840
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2024 13:48:24.8101 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2HK9sX0Aq63B8HjSjxCDygf5dFwfBzWqQDdnY//85ixXs4kpDcUlTeZcwBL8xs5JcajHsm2nukkHO/9krRZdXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6053
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Wed, 06 Mar 2024 16:09:06 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709732911; x=1741268911;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/LlZt2taAaEo0mt4oPk0Rj1Zjo+3h5eI8gN3sRKH9cc=;
 b=HFf90S455inU0uvkIIUcmxSpWAwr7qsSRAWgRlaUjT+tjzXysCzxEwoS
 RiWWnrcm1EAnsYIOJP6D+e2tI7QSmNevkbPMWlwUAyue0+5QyjWlwFmV7
 LXBKDSqLoLH9HHDj0iH6NlgB3I/Yyvcuqe7zLszwev/RSSDsU5muPUGqt
 JJh/ODFvFG1XSxSi1VzEF/1Yw3qBM5jRUnSOKxcgM4QeJJQqZpb+OzJ58
 0NMoAvt7lSGV6cJmIJHpNZUIFalhgYBRRmfZ7wPxtEwDVLMR7VyqBT09a
 XTHxmTzYOpjINOaJxupRgxr5IEg2sr8HXTYwgW5z40Xh12Gt8+tdRNQem
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HFf90S45
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Add switch recipe
 reusing feature
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Staikov,
 Andrii" <andrii.staikov@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
teven
> Zou
> Sent: Thursday, February 8, 2024 8:49 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Zou, Steven <steven.zou@intel.com>; Staikov, =
Andrii
> <andrii.staikov@intel.com>; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Simon Horman <horms@kernel.org>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next] ice: Add switch recipe reusin=
g feature
>=20
> New E810 firmware supports the corresponding functionality, so the driver=
 allows
> PFs to subscribe the same switch recipes. Then when the PF is done with a=
 switch
> recipes, the PF can ask firmware to free that switch recipe.
>=20
> When users configure a rule to PFn into E810 switch component, if there i=
s no
> existing recipe matching this rule's pattern, the driver will request fir=
mware to
> allocate and return a new recipe resource for the rule by calling
> ice_add_sw_recipe() and ice_alloc_recipe(). If there is an existing recip=
e
> matching this rule's pattern with different key value, or this is a same =
second rule
> to PFm into switch component, the driver checks out this recipe by callin=
g
> ice_find_recp(), the driver will tell firmware to share using this same r=
ecipe
> resource by calling ice_subscribable_recp_shared() and ice_subscribe_reci=
pe().
>=20
> When firmware detects that all subscribing PFs have freed the switch reci=
pe,
> firmware will free the switch recipe so that it can be reused.
>=20
> This feature also fixes a problem where all switch recipes would eventual=
ly be
> exhausted because switch recipes could not be freed, as freeing a shared =
recipe
> could potentially break other PFs that were using it.
>=20
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Andrii Staikov <andrii.staikov@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Steven Zou <steven.zou@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   2 +
>  drivers/net/ethernet/intel/ice/ice_common.c   |   2 +
>  drivers/net/ethernet/intel/ice/ice_switch.c   | 187 ++++++++++++++++--
>  drivers/net/ethernet/intel/ice/ice_switch.h   |   1 +
>  drivers/net/ethernet/intel/ice/ice_type.h     |   2 +
>  5 files changed, 177 insertions(+), 17 deletions(-)
>=20

We are seeing following kernel compilation error while compiling next kerne=
l:

"error: dereferencing pointer to incomplete type 'struct dpll_pin'"

Regards,
Mayank Sharma


