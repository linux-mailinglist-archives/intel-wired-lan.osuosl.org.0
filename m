Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 344FCC2CC78
	for <lists+intel-wired-lan@lfdr.de>; Mon, 03 Nov 2025 16:35:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BFC4940208;
	Mon,  3 Nov 2025 15:35:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y5_rnp2ShRfD; Mon,  3 Nov 2025 15:35:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B4BCA40209
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762184152;
	bh=ol3zpAtWHFWfXL6DlGOysg9lvvE40Oy3b2U+lfu7jOk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=b7K/wM9qrmTeSdN/pNuZwNY9A3qIF8gjBFi99MKbO0HsEylTni5rVJKWySAFb3+yx
	 jyX1SO8KWCJEvnWXDuzTnJjcszQFk2B+0tFYPHY0+gQ48M2I1/0d9tysXcKJA2qKca
	 w2u8ooj/jPOOBHNUlqLLw1pA10SCfpn6KWapc1tIsPPWHkSxdyebvqrgZ+7XalbmM7
	 PWlfSCvY/ltLUviJkK1MdSoe4ueDyWt0+9f9T0plVFw93c34jMZnSYwvFADT4L1AOw
	 AuRDYHjKnGxmJtep1Qt1aFMs1lP0SsYPmJnz5C+Poo/DHV0XHX8L303uE533dqa2wj
	 hCvih9UOl8tNg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B4BCA40209;
	Mon,  3 Nov 2025 15:35:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5268E278
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 15:35:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 388EE4003A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 15:35:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RhIWAG1aYLOs for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Nov 2025 15:35:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 331D54002C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 331D54002C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 331D54002C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 15:35:49 +0000 (UTC)
X-CSE-ConnectionGUID: Hw4yMww+Q6+CkoZU0VGYAQ==
X-CSE-MsgGUID: Did4VEP3TPmKxzapUH2Wfw==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="75370809"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="75370809"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 07:28:42 -0800
X-CSE-ConnectionGUID: iyFPFYChQn+i/yS8nvcsrw==
X-CSE-MsgGUID: NkATSaG9REWAYfEcK1076g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="224142642"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 07:28:42 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 07:28:41 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 3 Nov 2025 07:28:41 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.2) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 07:28:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Au88/Az5nzPj3D7B/WE2IqEjvayBZRv/KBjbzN0mwbQU9M3qRzY24tsMl1rpgWQXXu5dU0nkCK0j2I2Ghi9bsrwxyHzsrAublMsgQlgbW+fuTToh1G1jtu6W3bWhxHehqqlrlIRQ0Hu2MVZaJt1VuqMP3Wdcuu5SyTFfqA7c33xEWqvSnVVeBHxrholylshfOVnkr9GinQbHHnjk8I0PaBv+5SpBcGzV0FDQA9mHoU65V9PvAyh6awV9uTkU0QsD6068R/pakZ99d6FlJJVkVK8lFKdoculWqTCP8Zabes9lSRVW3H7AshOxV3F7FEAa/DeDKySzWdBjZp3GZfb7tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ol3zpAtWHFWfXL6DlGOysg9lvvE40Oy3b2U+lfu7jOk=;
 b=axd49LMBvhmAWyDe1jmReghdSX8YrTTqczYQByWeQSUQDoOEqTT5BhjhxlIIIm77y8b6W8t2BPJ3SUuAiO5XY+csmydjPcxp1GRKMlhmftqVYe+KcncZY5Sxx7+itaZpMnQ8AIb8FsdbC5fpMo01XlooaFQwwuKq8W5t1qrDUYad1vGJCFf3E9i4yps/EH/Q8xOQ2xg/mXbzTXPZA2LKIbzMgwadJAwoHR3BWy6oxgZPqy5gY1Zf8gOUzw++qL+C4l9rCF2RssQhEFPr1YIS23KPgdYglcQZTDtGO1vzLjpaRt9Q/1sUl1UJCB2Af5i32Vl81QNDFDOmApGqc4PPkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Mon, 3 Nov
 2025 15:28:38 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9275.015; Mon, 3 Nov 2025
 15:28:38 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v9 08/10] idpf: generalize
 send virtchnl message API
Thread-Index: AQHcQuFX8lmytvB5xU+jgH7FMqJqxrThJl+A
Date: Mon, 3 Nov 2025 15:28:38 +0000
Message-ID: <SJ1PR11MB6297ADE2F43A33F2EE2999C79BC7A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20251021233056.1320108-1-joshua.a.hay@intel.com>
 <20251021233056.1320108-9-joshua.a.hay@intel.com>
In-Reply-To: <20251021233056.1320108-9-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|CY5PR11MB6211:EE_
x-ms-office365-filtering-correlation-id: e48b9108-e6aa-47c1-e2d2-08de1aeda985
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?SwBEVrDk97fusNY3P56oZcO34d7/eEcy/AOaC7WWqTNSYGXUMnKhzDhuN692?=
 =?us-ascii?Q?DE67/S4Tj8YI7NGTbnHevUKbQv++OGfbwwcoeUQRgk2GbCdKxLJ3CvQeFsTo?=
 =?us-ascii?Q?jH+QVzXv1XyPKAb7v8dIEMFPqUbPwJmFBwbBXj/fN78Kvt6H8dW61YWDvmlk?=
 =?us-ascii?Q?7JMwv1v4vDa1OZw+pFakXmmicXYgQesXTiGMDSC2+15crScHhKZS0TmgjUj8?=
 =?us-ascii?Q?bDbOWJBejec+PmhtpC4IQUBF2gRkE9lEaYtj6AnLUdzOE49uQ/aXLkq/syql?=
 =?us-ascii?Q?JF5WtMh8nuoy+ELTFJtC+/6aFHUSmzBzWI1F4YVcJMAOlPPoAbM/4iMAI7oB?=
 =?us-ascii?Q?+YU5kCJedd2ypV2QspJbrAUUuU8cmyc/kUhsu9pESi4h7oDUzhiB+nEqti09?=
 =?us-ascii?Q?lZMoH2fMTNEMijbPbsn2OAC78OaBjLtzh55bQSBvJeVsKBlzpF+bW7eXz52C?=
 =?us-ascii?Q?L5Cx77cmXeTVaB6stil2MX4C0fX2eVkSVsx5tl5kA2fP9hqJsgtlgIx06iLu?=
 =?us-ascii?Q?3AlFnp8xZZIK4CyuNuAuIq6jNuI3K6zW5+23sa6QLFY3ij5IyrErqXjFQCA6?=
 =?us-ascii?Q?OBpMav4BxnUD4/XYso0DusXpAMbNqfbwUvoQTqfR0mgvHHt+0VTY88wyukS2?=
 =?us-ascii?Q?cVRsQNObBp3CCe2onNiAB8Jf8fzdakUGO/zMeKwAt3k/I9Bw/MxkmB/uQzI8?=
 =?us-ascii?Q?rn82hBbyN7ZRt07ncm6XBVyN3b/30+A9H6pnUL72zkmYLwZMMW8llC20ovE4?=
 =?us-ascii?Q?wjzX1GyzCO7JGlcQukpR98N5R6t7jTDObTlqL+HMbVn6/ELfAg4n39UoqQnA?=
 =?us-ascii?Q?dlboeoEjxxzblc/5DvS2gtQ99UrAZ3GFH3f4RXLjxtD62DI/B5IFLghBT+jZ?=
 =?us-ascii?Q?VEQ999fzypM9FQ9tE14RM0TQvLTOVuLV/FNpJB8z9BIl+Gn2ohVzCAybnCfj?=
 =?us-ascii?Q?UL9B+eaNEY/HRGHKu0A2zICmSkjNiR2vp6NB4ej2SCzO0tYjPm0Lrcsotoho?=
 =?us-ascii?Q?rByUphri/Fc19lCWdab5LRIvsDnDk+sTQrosuR/8dJXa8yce5KGFiW6Dn/gr?=
 =?us-ascii?Q?MdIY2JJ8FpcT5Wru+pfEqCi8/pJ08YbRbaplFR6L2hPRNrh2D9uAJdeVfa3V?=
 =?us-ascii?Q?TOpqDcjSLgplwHgTdH8hHBgg5SkLkP3xbJ2wUUln6keHZz0bwk1s+/BlvzTj?=
 =?us-ascii?Q?BZDFsyLojUMibiK1XVMqrltdzVdIIz8NuTDAOG5x0FWTGjxIGRhIBSNLOujL?=
 =?us-ascii?Q?mZKR1VruhVUo+eqY5EEWvgybB0iZDjFP2ionmsn18wm6g+VCHxyQLvsg5M7J?=
 =?us-ascii?Q?iYNK0lPJNYa2v20OPO1PG392BTnm0wr/iXdDhlrayT6CWc0ZqDU818J/+6Dv?=
 =?us-ascii?Q?Y/tAHQKYIHvkvsdHXt5Z+VZ23JxqPjJhrakxsBISWws1CjoycSdiA5tqXPMC?=
 =?us-ascii?Q?uZTHCU+KBYvHQBgi/qUcSpI+VA6kTslnsVlCwFk1S6NiTeeEF+NTwEIM5LyK?=
 =?us-ascii?Q?iK7lFTkTRKscIHXKagqrCXa2ejPyjB/F9tLX?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NTvnW2ebJZgkn8KCv9MRlkNP0tVQLNdug2KNOxBddc+EexcrNNl/E3PEO/Ix?=
 =?us-ascii?Q?HzKC+4cTwD0xmXaiF4aMhNft06qqggTZ7bXdwc8qiF52kHvi37s977jMOuMu?=
 =?us-ascii?Q?5goZmTM8dWZaJL49lfOWLMH22woxIHaOsH47ZZ+Vhc3cghDQVu+GlbIPGDHo?=
 =?us-ascii?Q?jKpFtl3IEb3QanQtbP9jySNvWmGDcWOwJnWXGnzeIJozKuf10lMWfxSUpPdD?=
 =?us-ascii?Q?o00a02WrOPZfqrE4TsYontj6d3JcU5tvhwmdrPl16H9ekR1N+Vw6K9KedZfE?=
 =?us-ascii?Q?jakbqXkS+9I2OdHUprfNjF5aDDEHkz5fZonsG83fvAVtY8JjOZuvPBaIbSaJ?=
 =?us-ascii?Q?elWdK1xn1QlzSQWAnKNjgevl0jE7gYXD413Hm05MA5dPXzAc8WbZrHZGBV1+?=
 =?us-ascii?Q?4mzMvimzvs0ukmWtWj2moUo1lOquB8zcZPlgCaRyZJ6CujiYmfi8xiLr21SW?=
 =?us-ascii?Q?29atLih2GrwvGANx7YsAAUU+6veYaBcq0A+YhkvRVq6q3Yr7ShLA66i/AT22?=
 =?us-ascii?Q?6obWgo5yTsXrrBvi0VyZdHuGUB2Wte+6Ubd2boC7xUUQ2IoTTQn+rA98ljUu?=
 =?us-ascii?Q?kvmsbcvykUx+x8JfAN+p0lz5cbyohUj7OyQcIWoyCyK3WKsP/iICq14iJIAS?=
 =?us-ascii?Q?Powu7hdWPSziBUqMtfx3NQSDOZ1wZzqpdaPhM20m7T924pU1B+BXA3i3AiSB?=
 =?us-ascii?Q?/eTMeqnDHfEO57+cIKIk5vu/4KSUR0r5LWLS0YjalPaIYUR9jZWZs/oBN/2M?=
 =?us-ascii?Q?1+3HPVCq7shgz/atSXhh/b7zD4cexxvTDYIrpenrkVr6W5x9uyR6kZx515hM?=
 =?us-ascii?Q?9kEjg1NJ8iKJg1DOTZ4Nxp2+QyEaUj6I3sfqOA6ENXAqIXpMmm8wy/vZAoQt?=
 =?us-ascii?Q?RS8a3S+qrm7onE0KuByqhqhq5aF09j+ortuvan/fgfLq4EdIdX75QpU7qQWm?=
 =?us-ascii?Q?gXVV5SB0KEOnECAUS0XwiDVP/872uCiif1c8/nC8sGAD9lMkFuaup5XK3tW1?=
 =?us-ascii?Q?tYrJHgb2ecDQ0xSA9uxCsorl99cYPdW/D8aCnRROaZLBIiZy4ZlTma/clYMp?=
 =?us-ascii?Q?R+oaacX8WJIxJIvMYoc5AF4lZ+4eisRGvK7SBdqj9sifO+A4+aTBCPPtIm3M?=
 =?us-ascii?Q?Q9/ucBVc4Ttm1pUYe7ubKfAt+yQKXoZEXmdzHjeZ/qcTRWC4fjuaximZHYVB?=
 =?us-ascii?Q?irGAUjrS81+UmUUyeEVwycSDGlGoZaz0plY+6EH7hw0Fgvi7nAVGwpvitrbO?=
 =?us-ascii?Q?t+GjAgiEh3xhmGIC4qSFBcQw0r6nQe8vVjld3NI20Z0BFWERIUiRSWoswAsB?=
 =?us-ascii?Q?a5xj89JuAu+p26Q1m9htWc6FyoIOLRZ6OqSRYDmYiSuCE07jQdzYpcHMuPqn?=
 =?us-ascii?Q?iFhRi3Z9+cN4cCBVdMrFCkcCpRDtVbaLBGRu7x4cVkxgwHVlO7WfdoUBhqUN?=
 =?us-ascii?Q?TDYLJQJh3Bk8OYVEULcg66/2onadj/pCb7Taacl425prH2aJChlvuSo9456O?=
 =?us-ascii?Q?+BlOhT6dJNUX5ZFnWowhe7mGWd0yuHx5bVzvxXwBCm+++MXlL0naTPJnMCWr?=
 =?us-ascii?Q?NPxZRjYJ601naF+qS1S5vXWgGyfSPEES87GWr8S8?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e48b9108-e6aa-47c1-e2d2-08de1aeda985
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2025 15:28:38.6314 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mVbdQuJdHZ+W+7LaSyQiacqTZhSLsPFnuYtW96u9Bop3dS96nYi1r5ZXaHVOKl7EKSDaxtumc3MYJc+PkB9RWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6211
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762184150; x=1793720150;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ol3zpAtWHFWfXL6DlGOysg9lvvE40Oy3b2U+lfu7jOk=;
 b=W//eg9hm1GlwfSr+pwyaDl/0BLYbAB+I8ZFWy4ueZ/Bc/wHN3Y7S/R8V
 0M1kYrIfjaWzve+m20zD6uDPDDpaGrxSYNwoCtzfe8PQDdCRwgnCBz8An
 Os0f8eyY0laEdNZCc188Z27mSYoxMjKB5I/J/d62/SwWAVgGlPw2j+pH3
 npFGIxsnDeP+MUbgNQ6HLcQ6iwDCKyjMz5IqTGTGIUecl1UD428+SGXYn
 f7jQIlJsTys5eWlB4q177G9M2jp2FHWyrNDv38Z7Jj2MYnPvkLKUDaDgl
 pS3s13KH9gq8qRh4uwZ136pBojzphP/0v4qnDKZixBV+tOlMGyaXdjscV
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=W//eg9hm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v9 08/10] idpf: generalize
 send virtchnl message API
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
> Joshua Hay
> Sent: Tuesday, October 21, 2025 4:31 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v9 08/10] idpf: generalize sen=
d
> virtchnl message API
>=20
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>=20
> With the previous refactor of passing idpf resource pointer, all of the v=
irtchnl
> send message functions do not require full vport structure.
> Those functions can be generalized to be able to use for configuring vpor=
t
> independent queues.
>=20
> Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> ---
> v8: rebase on AF_XDP series
> ---
> 2.39.2

Tested-by: Samuel Salin <Samuel.salin@intel.com>
