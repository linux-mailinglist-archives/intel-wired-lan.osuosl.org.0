Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qFNtChlqoWkOswQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Feb 2026 10:55:37 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E96D1B5A0E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Feb 2026 10:55:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 17F2F816FC;
	Fri, 27 Feb 2026 09:55:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hmZW5wr0Tzxp; Fri, 27 Feb 2026 09:55:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 85035819B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772186134;
	bh=86NmHDZ9biD6Ygt1mq8l212umu6O7uOUBLWggwpkpMY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OJGJoaJJSZVX7ILGBYOPo4gBPOiDUHH5sJhuhCBxHkYmLqQvc2O/TLqMjDICxWHOt
	 +rjaNCFnDsKdaOMOG8KeRFT2wuX61wWi7A46N4usTPe9khJpfe7SLvCQw0xFYvk/dL
	 S8OfWUo6zaW8mwwEltvCXCsHrfABoHmyHl508hG/qItqIdPI/rsa86KY/k94pkqJ41
	 +o4hPz0ixKSSmGDc2KllpqNmq5STlq6Io/+4YzajHGSQEHlO3EqrbOfdCwemZP18NR
	 EZvWdUj3M+gFhKfMuCr1Nb1T7F6hofF6VsnaCJY2EWh/2kDJ1hBvRxLfkrHyK3079x
	 92cgQfXuVz6Ew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 85035819B4;
	Fri, 27 Feb 2026 09:55:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 247101F3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 09:55:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 13161409C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 09:55:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id glKZd5JoIt28 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Feb 2026 09:55:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6ADFF409C2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6ADFF409C2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6ADFF409C2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 09:55:32 +0000 (UTC)
X-CSE-ConnectionGUID: lfZHTpAbQQejh57/0orMMQ==
X-CSE-MsgGUID: fS/6r+VNQjW21A8evC+c9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="90842660"
X-IronPort-AV: E=Sophos;i="6.21,313,1763452800"; d="scan'208";a="90842660"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2026 01:55:32 -0800
X-CSE-ConnectionGUID: jo15Wa6xQlW11oi7g/FuIg==
X-CSE-MsgGUID: 4bb1f/CgS6+HZvM+lUvswg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,313,1763452800"; d="scan'208";a="216863578"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2026 01:55:31 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Feb 2026 01:55:31 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 27 Feb 2026 01:55:31 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.33) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Feb 2026 01:55:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Euvtu5JejplIKx+W3RsYL7DThvOUN/8nD76MiTSSHxmJ8JNSh4Atz8UkbHwUi1SlhFOR0n1W64LREse172GouRKyLc+fk0utayV6Iu/t0IgWPtsupzFzPTwfsa+gknKlsvXUKTTJVwjauv//jrKBYI3Gyl/1DLO6bXwM/h08Uwj6ss7Ew2mVk675qVIwaxn4nYOfZDLJv12lVkGx4BWJXxYajatVZxCCRsUUisP1au8myFRroqEHU+QYpMIzTUFB7Qdu7etI7v7t38hNZ2TRsCs6MVgJqdJ1E7IbM+AU5nBT0GJFy6nO65qmRYWuTlYcZ5VeAKtR9iyq4YwncOkwZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=86NmHDZ9biD6Ygt1mq8l212umu6O7uOUBLWggwpkpMY=;
 b=F227tNBe6lBhaanghumfQj20iOwgPpe7pjVt6hdHOTHtXLTiNTY1gskX3Xt/1T0GCt5LzwFAh7aj7lEvrQWzUu1AYhljq92WZBYh4G4XiPlLzUqnqblEuDhTfzmpvQQfLz1lZ5vkl5GXYAFPnkrKlftyyBchU1RlRJhB4m3bzurTai/IKHaWicmJia9YmfR2+ii4EWhq/M22u8NoJEJOtvxNMfrFGoCCWGL0NgMhAzmEZeSRxvhftPMS1S6GqesOZEjc2TC/VfjxXitKq7xWSHUHRLOCKiSG5dFA95cUNbuetZmXgLvtWZYG6t91eY7DctDqrb1zWdLege1gRkD0xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6258.namprd11.prod.outlook.com (2603:10b6:930:25::16)
 by IA0PR11MB8333.namprd11.prod.outlook.com (2603:10b6:208:491::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.14; Fri, 27 Feb
 2026 09:55:27 +0000
Received: from CY5PR11MB6258.namprd11.prod.outlook.com
 ([fe80::3aeb:4e49:6de6:9ee]) by CY5PR11MB6258.namprd11.prod.outlook.com
 ([fe80::3aeb:4e49:6de6:9ee%3]) with mapi id 15.20.9654.014; Fri, 27 Feb 2026
 09:55:27 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Takashi Kozu <takkozu@amazon.com>, "horms@kernel.org" <horms@kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "pmenzel@molgen.mpg.de"
 <pmenzel@molgen.mpg.de>, "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>,
 "enjuk@amazon.com" <enjuk@amazon.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 2/3] igb: expose RSS key
 via ethtool get_rxfh
Thread-Index: AQHclQxpJN2NrEH3J0G5+CZO7nSsUrWWakJQ
Date: Fri, 27 Feb 2026 09:55:27 +0000
Message-ID: <CY5PR11MB6258EB0F88693482A34D93088B73A@CY5PR11MB6258.namprd11.prod.outlook.com>
References: <20260203125417.37285-5-takkozu@amazon.com>
 <20260203125417.37285-7-takkozu@amazon.com>
In-Reply-To: <20260203125417.37285-7-takkozu@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6258:EE_|IA0PR11MB8333:EE_
x-ms-office365-filtering-correlation-id: d5b1c34a-f1e2-4385-2c9c-08de75e655d5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|38070700021; 
x-microsoft-antispam-message-info: /UDhOkY9hhTMBjtz0iVIHIA2zcrYu/bwFBzYQOpyLbhBJ/enJyDKOF3wtNILJusECs+XOFVW6OsWqFpOEb+8e7rc3jGaxNcqFhsPhgJEYa6NdpTAPbafM0eWwS6NDGD6TPuYBntu8rABC1+zubz4R0U7TkGOY0KZPV3a5LFVjWDSZD1g2nB6kdh4+iWu5ZMTXVudlZbF57z47yOSgMksikhcUGPIDE4KWOLHAugq7FY20znF9Qm18Rb8HMH0yFKn7v81W+U6O4yI7sqT7RylZwUGAXoGWNwx5IOIbyT9WaaBZJHe8vjKozx/Lq7aadaMrO6qAA8e1JO2Pql9q+kDnf+/Qoe7Tj2T2jBJ2v4M4mC9CRPFSDbPPn5rsHjjj6ubydyla8u1fEwNHPj5SDhzab5db1vIHd4fcMskUM6xVeR0FcSsMMNrL+KSWLkBLr7gAiBuFo8YRhHu0tRwdy68VMYhb3Q0ed+8ig3knJddWHoLuF3O8jINbW51e0IYN2944E53ONHDZytRPC2nUzZdZzIQbVZVSLQLsmqZcsUg6OgnSKCzmzSMuasTi3J14wIZDzAVmG2/bK+OEAsMc9ddc4wD36aYVBORPyQaDj5ApyiIHD5KjXcb2DGq74J4lTo1EH6re0FAXEqKDqcKk+hmpmaka54Ug43RlANAWGg0hogNzl3+ta7iFj+Qgc4Mr0JZHv2meVM0ArQ7eKhW/l5bBHT7Pt7+bs9eMA9kk36oMYHDQVAQ7MnV02f+7sZGF+W/otKbDBmats0mnEDmFc3xjQBPAUYiELk/IPM4XzbF+jw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6258.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Nv+AcDhWxWs4fUAcohG846jBWRFQKesjuroQ78HkCMJl+tIugxCmyLRtHaTU?=
 =?us-ascii?Q?RIgsrGBYeApyi577jctlqqlsgHsWNItY5Q17i00gqG7P+mS5qfuDd2id2ukg?=
 =?us-ascii?Q?H22BgS2izNLcY2FCbWpCEhIo7+ZFgCMX6zD29I8Qhn/Dw293k35b7ZFVTQt0?=
 =?us-ascii?Q?6UZtAC7ak0UAdSVGilZv3crqnMPmj68MFuoR/s9ZaZyAXKyFuAQ59T+/Lzg5?=
 =?us-ascii?Q?9oPmg0H32t7Wd5cbBVlqvGxQIi2Ru0MwpJe/nncQ5NCIL1tY4Ik9WI2ucSxy?=
 =?us-ascii?Q?s5g728UJdkwdNhtz1igM0yIAUkLvVs5OtjH/JZ+yFFOx9qmlBPfpqYOJ4AR/?=
 =?us-ascii?Q?57y7uY55vAsfeZ2IPItOYEbZPsYNJ6sUFTPhRHXkyujUoxETlOvgKdA73cGZ?=
 =?us-ascii?Q?XvGIO4gnyF0kxMJc9pJb8vWi5h8YrVEeQ0IrzWOFEiVXj0JlO/wSMDCxflDf?=
 =?us-ascii?Q?AtV6WWqoMND8nbgy6E/gsmu8xQd5WVmNsKj2YGDak4xsLJnE5QKHBQT1w6v8?=
 =?us-ascii?Q?4+BSphG2/apQrZfsitemnFs1ql1ovMbY4r6cZPezXRQ51LHcmzS37O8gTZ6X?=
 =?us-ascii?Q?QhQBWPZ8JJlWagZtgwe3olvVOCfwAkvXNGO4TtsWghAzoZGDul5AWeU0xSHK?=
 =?us-ascii?Q?UYfJa6Jef1TwC7y3pvg66+67NFsuQpIDyZJcn6h/8ZCga8SaTVE3rnT8GdaY?=
 =?us-ascii?Q?/BwNcqifyTXP+Dl1n9FGA1VZ8kgXo7xdLmYCKoXGbtOcUsBSf7QxOmFXZJQp?=
 =?us-ascii?Q?WCiIEBie4CbswkeQajl4hu9TkwWFnSi56Qt4uk6L+9STJuUeBPmYmZ9Z+QZs?=
 =?us-ascii?Q?gPFzsoePVa+RdPrvmaxHUz8VesbLBxNBoEN/qBnOdEji1hmH7hbGCX9sIi9N?=
 =?us-ascii?Q?hemSYeJiSoDSs3OgEOeqO4GLP/GF8a/AZtzCbmVkiT68yHH6SJ0POiAxAoyt?=
 =?us-ascii?Q?nfkLfGtXOZ6f15OWyIu7tftmMfOhliUxirPOaXRh4K2pcuq9VKORer/hYcrR?=
 =?us-ascii?Q?uDlo5r6Np23MJwYuDCIICgLxqups7o0PZZkbKAuHiv6ux/guIc1JbeyPd83O?=
 =?us-ascii?Q?KctKKAtDWNuKFb7Oy2nNaF+T+EpOenhgezozmupPESmcHLmrq91eNdxgdMy6?=
 =?us-ascii?Q?VOAkxumqHnIoAv9xAg8xVm2F4/xf8D+zffhpn+OWsew7MqH+zrfHD8jvVKwl?=
 =?us-ascii?Q?7kK3OSfGt48LK/nGzVfb5x5zXqA6AZg9CulHKKfqrewT+VkmqLlTZNvAfKGL?=
 =?us-ascii?Q?h3KrIvHRaprmwGu1BEAL66xwoj2YoGvm676h3nNwoIvjEojGdD8TrPtWvF5l?=
 =?us-ascii?Q?xZ1Ra1aiXdvAw3KZ5R124zCFun9XsErW2ZIK8yrKiXqBRl+n0MM3pleMod4U?=
 =?us-ascii?Q?2wQ11U8C1I0E0y2LxTr8BDGhwUQuIMaS/VNqDsq0GxFo0BdYUHqg6VT0/5iP?=
 =?us-ascii?Q?3j618XwtuiFBRvvkT+r3afBT2a5TSQnRhzEdawmHuEvshncDPCde5cLwrwwv?=
 =?us-ascii?Q?bPPsz0yRnPRYQ22bEe+Z3EyB/bktokb3Zy9HboUH1TEgsfWb0nMs8bxJ/3Cu?=
 =?us-ascii?Q?ttc6rNN7q17LDDejabXx8eeqc+xYt8RiTAwFlgH3gEabssqZ3UxcehoS8ZYX?=
 =?us-ascii?Q?btVY00r522ohxb5qfBkqzihneF0U+3uzSN7VnCyq861QDNxZ+WhehjWoAaSv?=
 =?us-ascii?Q?VhFVR033KC6majxd1VtZ32r+PDhNoRvhHlGlR2TV4XqOw5ZJ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6258.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d5b1c34a-f1e2-4385-2c9c-08de75e655d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2026 09:55:27.5910 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C58CVj5g+YsH9kCqbCwJQ1epT8tT0yCsJwsxz8ni8nW4MQyFkLYGfeAqdDEBmUtFfjhQeQ0RqrWhiHaMZ8oDgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8333
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772186132; x=1803722132;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=86NmHDZ9biD6Ygt1mq8l212umu6O7uOUBLWggwpkpMY=;
 b=D6WCMR2kffeOS+QP76ykz9eV7wI5M0xMU3Z3AsLd+EQfzvbs7rj/ogLV
 iazcle9cXr4ZOyfvza/gAK+MNvGRDM+UBdE+M2j4+1b9tfADlrIISDPY3
 6w6XvBTlE7X4Qs8baHafKMroxXBPvPPVCXPCc7vZIyVmTLjKM23xcVE4o
 8U56mDFVfnyHy+0f6hK0o80EBsp8c1dYuAfqC2hxgMSNZI5vWdIyNem60
 oEXc7d9bYetI1qOB4DVFk3sMAuns2tMkYk2+9FLU+E3SsgOUfLxBlNbzh
 y+X15dELP+vZWMbRva98VQucvoUWVa3L6JCzt1nXXCrKEAGxXLPxaaH/5
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=D6WCMR2k
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 2/3] igb: expose RSS key
 via ethtool get_rxfh
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:takkozu@amazon.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:pmenzel@molgen.mpg.de,m:piotr.kwapulinski@intel.com,m:enjuk@amazon.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 6E96D1B5A0E
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of T=
akashi Kozu
> Sent: 03 February 2026 18:24
> To: horms@kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <=
przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch; davem@davemloft.net; =
edumazet@google.com; kuba@kernel.org; pabeni@redhat.com; intel-wired-lan@li=
sts.osuosl.org; netdev@vger.kernel.org; Loktionov, Aleksandr <aleksandr.lok=
tionov@intel.com>; pmenzel@molgen.mpg.de; Kwapulinski, Piotr <piotr.kwapuli=
nski@intel.com>; enjuk@amazon.com; Takashi Kozu <takkozu@amazon.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 2/3] igb: expose RSS key vi=
a ethtool get_rxfh
>
> Implement igb_get_rxfh_key_size() and extend
igb_get_rxfh() to return the RSS key to userspace.
>
> This can be tested using `ethtool -x <dev>`.
>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Takashi Kozu <takkozu@amazon.com>
> ---
> drivers/net/ethernet/intel/igb/igb_ethtool.c | 16 ++++++++++++----
> 1 file changed, 12 insertions(+), 4 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
