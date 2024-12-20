Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 010919F8F6C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Dec 2024 10:56:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9708A4174C;
	Fri, 20 Dec 2024 09:56:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tyKfmdvpsGvu; Fri, 20 Dec 2024 09:56:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BDF5641741
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734688578;
	bh=T1cnZccbV0NSj7jCJIMSZ/s6jSxaN7qp20a4xsCXz5c=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9Rozg3gt1deSpqkflRa7By0sfmVcLZrHQYRy2S9yGepzj6ZBnL7WoNtJvvLxsBWxd
	 cTxKhJ8T3VxfWySRVjkjT1Yd+qBz5bsZvxsPWg8JToUe5Yni8qINN7FULleUeqgTHA
	 aPtcQK0aKl8GJCbxldDDxpGOlDcZ/OPvFvjB3EQByAkRFHUS/QeVWUof4e7tAeoIQZ
	 toC2igkRCiiiRuavtEHgh8Bf8IP5fRmU/NaYcRS0L8I0eAzcK8d1K1rj1+3NLikIaP
	 NhfiOsOEDoTdSg1ZGetWnLapOamfdCK+AOxiwZuhpoTxgGbN9+ORTAFdvJPlUl2uTY
	 B4zYiXOYkdPAA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BDF5641741;
	Fri, 20 Dec 2024 09:56:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 30B526C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 09:56:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0B62C41735
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 09:56:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tl4IszQpFu4x for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Dec 2024 09:56:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CA0D541708
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA0D541708
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CA0D541708
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 09:56:15 +0000 (UTC)
X-CSE-ConnectionGUID: lnPrGyliQrmy6lsMZb8kmw==
X-CSE-MsgGUID: RLf5x0ptRsmgG0oTC+ZnUg==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="34554938"
X-IronPort-AV: E=Sophos;i="6.12,250,1728975600"; d="scan'208";a="34554938"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2024 01:56:15 -0800
X-CSE-ConnectionGUID: DTIVFwrIRo6x6L7Ay8oAZw==
X-CSE-MsgGUID: icrRpgRrTsCa6okqGy5m6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,250,1728975600"; d="scan'208";a="98259438"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Dec 2024 01:56:14 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 20 Dec 2024 01:56:14 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 20 Dec 2024 01:56:14 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 20 Dec 2024 01:56:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cl31XmcC7o+zz3AZzJiQAaNt003yAAXORsqSk/uYXfDos6mzgDtG+FcHVNI7OFD40+tM6i3zor/XeWHlvSV6oqAhbrM+I1AJ1TeoFb8AbOjkOj+BvzMVmRseZNpOnNYDWYqNUUVh1XLR2Ce4O2/ZQsRHIy0NfDjJIa819oZ9d56PZOXYVRiVXgpMhl6+7aVRB5oBlLN55f1Fe45QhYDLCsnSrE6VMKDTkuhJun8rxhbdsS3knQknimXzYu2mOUEg3cNpINoeXTGnziJOTKRThyYilqUQm9RhvB8JjPhEpd9LgpNSlmXYYH0pY8243lQIJjM7NF7vbMVfGDmGsqIxUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T1cnZccbV0NSj7jCJIMSZ/s6jSxaN7qp20a4xsCXz5c=;
 b=qwOkECX3p0WMeXwtgEBt6B315LCp9hkJScjWCAF/rfrUAd8jAWNTwtNizd+ICs9pyCz1Wg+6elMUfX93FvtHCEc+PeG8FtXpXSuKEiZsjAUT7KtmqfCpdhHeKaROmDnXaoyASb4av5iB1R0cChWVhe8M5ND+GGxGgoFP8zXC9fLK97Hw2vDRsJWHLCDeKQms9NqNu9S6zCyGydtlFY1jhOkzpDZYIkkiL4re7HkVD+kRhpUnexTZAUHPc1IJIPR5PLbTij6e8BMn7pHgg+kV+r59ru2HR2LLxOg7APaLgLadVLeLx5Hua1uu8h1e4cAJTMKJMwNitE0vI5XISHlEmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by DM4PR11MB6480.namprd11.prod.outlook.com (2603:10b6:8:8d::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.16; Fri, 20 Dec
 2024 09:56:07 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%3]) with mapi id 15.20.8272.005; Fri, 20 Dec 2024
 09:56:07 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Bjorn Helgaas <bhelgaas@google.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 1/2] PCI: Add
 PCI_VDEVICE_SUB helper macro
Thread-Index: AQHbUU6nFFDwoTLZkkS2flA3Ih+pRrLu6BMw
Date: Fri, 20 Dec 2024 09:56:07 +0000
Message-ID: <SJ0PR11MB58653BE471F6DE907423A8878F072@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20241218131238.5968-1-piotr.kwapulinski@intel.com>
 <20241218131238.5968-2-piotr.kwapulinski@intel.com>
In-Reply-To: <20241218131238.5968-2-piotr.kwapulinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|DM4PR11MB6480:EE_
x-ms-office365-filtering-correlation-id: 76da7856-29bf-4f12-a872-08dd20dc866d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?rv0JkFXp9vZfu6eE0TZbzSV/CW58HxXilddx5w4Gk68BOM8O2CO1BL7GGqYr?=
 =?us-ascii?Q?3JUcPtB/gvZlplH4hwGZkRd+Q7AF2YEYhKMLJ9Whri7D/nVOtTCRqjzDxdrG?=
 =?us-ascii?Q?E2pADyxYkMzbN/iKkJ70kUFKo1i2rvPjHlpb9B9kty4qtuW2eENohFAAq43C?=
 =?us-ascii?Q?LJQhw27LofsZiz9SqwyyJqjunB9XBC4GVbbrUStIgqQhRy/FarD5k5rQB6an?=
 =?us-ascii?Q?YIpddPGrn7f6Lw5wa8VshGEnDz+HB7K3Y2nlekSuBxMWAqUrcZPABD6M0VAj?=
 =?us-ascii?Q?iQXLwgI9qzU2LvINy0yMeemhpK94NAqtUGpeLYcV1Kk5cGBnuWF8xJKjvf+0?=
 =?us-ascii?Q?9s+efPd2mNYdNdbV4qEkUH3XvZ58n3SZRrou+THiq4LSZOZBOKlVYjh3b7kt?=
 =?us-ascii?Q?n7TLWVEXP/t/SYvAgYSYE7c9Hgn0Mae0YENCNfuaA7PElJOvBDbzFMHDOM3O?=
 =?us-ascii?Q?Tjk5WhZchS70ZHFMSxzh0wTHMuAWyefunyr4tVl/EX6iJOWOPRP73gAgnmpN?=
 =?us-ascii?Q?ogn4Iw19szWiRLnFxWqcoQKXj6PptNxNh9vaWotSiPn1yOIJw8oOpZZv6b7D?=
 =?us-ascii?Q?v+YWd+h5Ul+Ggh7VWR9JaMdY8R4V4aRpw5eUw6Ex3dQJgW4CC26vrRGNhTIU?=
 =?us-ascii?Q?P8xJJwmzza5Ndya/otlPcBMLxMYM7phdNdwDQev7S/Ssae3h8xgGxWAy98M8?=
 =?us-ascii?Q?gX4CvDJpFc4XH/NIBinAGbvbaqjKeH1ek9TavDAyq1IOF6ok6KjgSrTSTZs/?=
 =?us-ascii?Q?iv7/Uby/I6qXnNQetTTqDHFzEkDIDGi9A3y/VOFM2kj3jAtVB6Ru9eP0nst5?=
 =?us-ascii?Q?i8XU7IJx1/y2s7xnsvkPfDHKBL61iPHiRLOAGgw1K7nMJVQJ8pyNHpiDZugS?=
 =?us-ascii?Q?ZfQ3I20mrKmWXOmY9t3A2NMYBY77k259iZCQj2hMsHhWJOisJC4hh6jnd4e2?=
 =?us-ascii?Q?HNXQGdPd6TS4Hk41WDRT9tgSXmgbcGAET6qkI0wm1pRYm4obJWulxIkuzTTX?=
 =?us-ascii?Q?rpcJWQBH/Nk+/8naM29CpXOuwc9+ymqExiM24JKBXGk9apeWsy0COuwe41Zi?=
 =?us-ascii?Q?OoHxD6eXHcHp/4hCaVZvRdHw3icYcdMb3vx/w0n/MhcL864Jpk3Y03ruLskW?=
 =?us-ascii?Q?nNBijlOoHKHlSpRw2CTw9FUkbu7eDlIOYHR26ru3z5VQrWGx7U3sYFF7eeT8?=
 =?us-ascii?Q?PsJqwvVB1P6zUCozX/D2bdaylkpre93GUqTzFf6w9kEuWa6XticNBISb8N2f?=
 =?us-ascii?Q?SYQLiGu1tKYHmwj1WyTfA08cKHVhT4CUOPpzjZpaWtTJtGjgYS/KH/aqioHB?=
 =?us-ascii?Q?AgPCrT6AQS2ajutSjbZVsAHKZwjkcFDvIVXXimcDNoWkkqDMUOhvMpqw5NKQ?=
 =?us-ascii?Q?Fa+t1QkQ/rz9XwIGP+Bhpcgc0doDqPl+Du+aPVxH2Zwn4qAioQkyWYJLzPYl?=
 =?us-ascii?Q?/enuwoTiomU9VQkbAMPWvtnAM+fWjxhA?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iCQ9uWsfhN24AvvbboUhB/1BFXm8PLf7lV473JwzBT6oWtJqvFpdnUFhaphb?=
 =?us-ascii?Q?i8g+Kzj3t7LBIvH8g6004ujHD70PTd1Gh2y/hvhM8dPjMlhAl/wYkhVeCUtG?=
 =?us-ascii?Q?5g4fvyN7AAi7DRiyMQn6MNvafX9cASCuvbtEacfDHHnlUlx/VLcPXiIhiKk5?=
 =?us-ascii?Q?3xmifZMWv1aiHo4f/eOkE1F5l5bxYcbq0KUosxKCaovsg0b74u+Gc6cVISPx?=
 =?us-ascii?Q?wjKrfG+9coCrLUjNzIteB8h5cYXvd8ynKuxO8r5r6Zdj2LOoJ9t24kxNEIYT?=
 =?us-ascii?Q?AXcGCin31FHHglxD35tK7o1dV1NzsZYTW1M/p+xLLIw69eshMZTxX+UmI7VX?=
 =?us-ascii?Q?scw+esPQfZxbPOAEAv+iCqIUb9N68xXblD8pxAi1SmtK1H7OuVlQ9zGoUQgx?=
 =?us-ascii?Q?u6FehN1dMn81aA5jExA1U4EaQ2v4sQQe5lMd6j3YuuDbvGCYjkU22HxxhCrz?=
 =?us-ascii?Q?IEquFBJVl3IKwmra+CmH2JMq/fedizwiBuU/vxTf8SoVhv6rWhQ4MBYmw/1H?=
 =?us-ascii?Q?z8bjf468fq0B7EHmoN27NpwNHi8Z464nM0SD2zKxsd+m1uYQ9/tS6evajXxY?=
 =?us-ascii?Q?EVhqVrxQ386qAVDAr2ARLu//gsleioBlkPsLfl1PJ+4mHlf1Ei5tStnrPKZZ?=
 =?us-ascii?Q?hvnk4z26BjrFlbpBii0h2ukvpp8fI80Glii7RUaLByXCwNZUqbE3SDYYjuG3?=
 =?us-ascii?Q?qkbgXwAToX68SKLddUixuXjEbAQWpo66pNRYGk2NVL1VYK97JJBe9spY0WbD?=
 =?us-ascii?Q?z9fSOnUmGFuOC4Bd4pwg5+xV+Np/abEsNT7js8nqQf+RO/Ke1WfRiT/ALGkl?=
 =?us-ascii?Q?WPWrByvpjiJXMEXn/4HwP69rxbmorLgWYUNzL0C7NVZjS9hShzbi4Ym79qxC?=
 =?us-ascii?Q?wHB2FP/34R98znMyXnq2R1ivbjCMpz16qTfz75mxVjq6jnJK5GhDXaFDd6zT?=
 =?us-ascii?Q?PLt+UeUxEvAO7aUC4mHSu3Aa9AFhHVzr2ABNfHDGqDzejRuh/kLY2C42HPsB?=
 =?us-ascii?Q?ToEsRoZorOtsUMsv6Bk6KuWjd2b3+f36PtgnGv50fJTukmrl9RKyVTQbeqVa?=
 =?us-ascii?Q?yL7cNPDrkpMk+DFgefU74Kv2id3vmTQGLu0mg2DSL4TsC+DFuwiVewIA6jly?=
 =?us-ascii?Q?F9hdRDpGOOZfEn4aZCitqj0mCTz0JF5aIXUObbo7hmXGlnhz/FmXZ15YE4k4?=
 =?us-ascii?Q?hZt/GLlgvAvLdIvSkBxTmk0AzUTueKwZGvVrCYV+Be5lQeW/JlVEXxiWiZPo?=
 =?us-ascii?Q?be4xRbGQVUBpqAks8KWF9pdT4bpgf9I8dcxENT2lvxpjhJPs9K1zgfqN642H?=
 =?us-ascii?Q?DYwXQRPF/jjSjwt+S21uTR3r1Rp47vPrE127esMIHlR9MhJe6GahYN+5ZuGt?=
 =?us-ascii?Q?UGPTTL8VTd2Qf7lVfqI3hvfRrZRYgSAKaXeLIGGbZaJR9MbkH7FCRvE9YLdf?=
 =?us-ascii?Q?zFyg+hFImrZjyb1yj27igT52aP22DzXaOaho6XHs+8pkuHZSCqYlFqp8D6rX?=
 =?us-ascii?Q?2n2vBgf84gHu+W2QStp6JYxQkWnufDCzfZKWHizToyI3EOMRY04Hupkt98yz?=
 =?us-ascii?Q?SIJmmM6sx/aTqw75X7JwEz7lRsTV78EBrDRj2MbbDCbs4aLpo2huj+TFAhb/?=
 =?us-ascii?Q?tA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76da7856-29bf-4f12-a872-08dd20dc866d
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2024 09:56:07.6492 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N8POpq+Sgr10cVyowME2IAISvmeGbBxTbhLJuVZFzzZe4ffHzehyDmzxZtDzykuQob2VeVokPY0QnLEUfB8eJKr9nYtNKaxvhW3opzqBzD8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6480
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734688576; x=1766224576;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gDjodUL5QPpk0Zcx1Cp55f0s0bxevkYgrNBVcDZDKbw=;
 b=brNVEmJER5rN7yQK3nZQ8iYe4rQba9ocxGXNPTW6apx4D7ZmvVSHx250
 HOeWzc0ShIrH0sSvz4+ZSQtPYD5I4zssWGDfQIUlRMJ4GZSojLQ6rBIpy
 ScFT8sqzZFA+AWRnTmL4M2GcRzMV7KhmLFNXMHs398BYrDe1hXY396uQw
 ZhvE5hQRySkY0J4tRPA939oZQIvqmcecBaQVURkj+CK0DG0C36O8wg9zc
 77ZnLZDZriNStEbsiIHBwgEch/9rh21+Cav0kNnHrakIh3I3zQ3SygCMA
 XhtXfIGUArZnM7hQgnSbb18YUgds1LfQHf3ybsIbcqXzsI2Xd2YZk7rxa
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=brNVEmJE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 1/2] PCI: Add
 PCI_VDEVICE_SUB helper macro
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
iotr
> Kwapulinski
> Sent: Wednesday, December 18, 2024 2:13 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kwapulinski, Piotr <piotr.kwapulinski@intel.c=
om>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Bjorn Helgaas
> <bhelgaas@google.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3 1/2] PCI: Add PCI_VDEVICE_S=
UB
> helper macro
>=20
> PCI_VDEVICE_SUB generates the pci_device_id struct layout for the specifi=
c PCI
> device/subdevice. Private data may follow the output.
>=20
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> Acked-by: Bjorn Helgaas <bhelgaas@google.com>
> ---
>  include/linux/pci.h | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>=20
> diff --git a/include/linux/pci.h b/include/linux/pci.h index db9b47c..414=
ee5f
> 100644
> --- a/include/linux/pci.h
> +++ b/include/linux/pci.h
> @@ -1046,6 +1046,20 @@ struct pci_driver {
>  	.vendor =3D PCI_VENDOR_ID_##vend, .device =3D (dev), \
>  	.subvendor =3D PCI_ANY_ID, .subdevice =3D PCI_ANY_ID, 0, 0
>=20
> +/**
> + * PCI_VDEVICE_SUB - describe a specific PCI device/subdevice in a
> +short form
> + * @vend: the vendor name
> + * @dev: the 16 bit PCI Device ID
> + * @subvend: the 16 bit PCI Subvendor ID
> + * @subdev: the 16 bit PCI Subdevice ID
> + *
> + * Generate the pci_device_id struct layout for the specific PCI
> + * device/subdevice. Private data may follow the output.
> + */
> +#define PCI_VDEVICE_SUB(vend, dev, subvend, subdev) \
> +	.vendor =3D PCI_VENDOR_ID_##vend, .device =3D (dev), \
> +	.subvendor =3D (subvend), .subdevice =3D (subdev), 0, 0
> +
>  /**
>   * PCI_DEVICE_DATA - macro used to describe a specific PCI device in ver=
y short
> form
>   * @vend: the vendor name (without PCI_VENDOR_ID_ prefix)
> --
> 2.43.0


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


