Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 15720C781EA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Nov 2025 10:21:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BCCB184ADB;
	Fri, 21 Nov 2025 09:21:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d7aXmYEIoBq0; Fri, 21 Nov 2025 09:21:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B53A84AEB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763716887;
	bh=K4C3I7TNIUS54Ure2uBwz5aGuGVysB8rQnsLsCWxgGM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=syiKd0w4e3imMHxCgl533faKRH2lPLeWimt3a1/YuSp37QRTHT4XN4RowsV2aiP+1
	 7sj+Egi8SOfesoBZIxLTelq+NFQZp8MFlVZEUE3f5TNVPV0pQGG8W0FJplq/ragQVO
	 GPi9mofl8BsAfTzSEEcMIzxUu6C6lg2HCmHI5oFi/6Ex/vVywLUh7ai4riDWyqYLvE
	 crQACEsNwU/Hd5JmFHgn/FT4RZHPtkSWeJNnvPuczDVjqM7BhudSFITOaQhe1Ljeij
	 1tjTdIwVLK7YlKSyxy3tTLnII3q1RDcuagKepvjEz4R/PVgHM8t5Drd8WpMMwOyo10
	 PkzT7JPQPkNPw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B53A84AEB;
	Fri, 21 Nov 2025 09:21:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9AD7A158
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 09:21:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8492184A35
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 09:21:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mK8UFdzLVw3P for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Nov 2025 09:21:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A09A7849F4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A09A7849F4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A09A7849F4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 09:21:24 +0000 (UTC)
X-CSE-ConnectionGUID: zMYdRertQxi8u2j9VY/dug==
X-CSE-MsgGUID: Y42kYJunRp+BaqDYMPO9Eg==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="88456911"
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="88456911"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 01:21:21 -0800
X-CSE-ConnectionGUID: ZjDqRMAvRsaHj7ms6/z11A==
X-CSE-MsgGUID: 4E1o23oATWmpXWe956NEMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="196595849"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 01:21:19 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 01:21:19 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 21 Nov 2025 01:21:19 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.14) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 01:21:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZC1WgiSWsFmGvAVN94SXn68aWFnQFiZ7rSPYVA6VL6Mv+BzWLdAnxqPAjiF7aCEvOdZBa6p4kXxlArOYFyLW3vXjCaPDmYZvx9cx2p6eWqzMUl1emPf6m9h1DkL4neI0aCmQOupAJVQt2iH0RV8GcgHF3CwgEY0b2F3EI3xtqVb4OJs5QUkp5iJjAc0WqUQSqUlFatVRq4LzuwcK4KnNDI+bpGtqABlHRIzoONvppWVMWPs7STDrHuaGg/JP/EFZbNPzK+swbLTaR4xbj8TnzX7w3FH/PpqAqzE4g7HkvpU471X7VRZ7YcJnpMaoDM0rjFk5CmHzH12ybgG9Bn3Azg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K4C3I7TNIUS54Ure2uBwz5aGuGVysB8rQnsLsCWxgGM=;
 b=W/CqFAt9hiyj/vy0vGKnhU6MXLkJ902qlgMTbBX95rCXNEf8BXOYi/1ztCSv12ORy9moahP0G4yV5TQalkJVX1/VGnkge3Y9Pg713OyBXEMooClDWm17FlNCXwXSRxTxrtETlvKhM9VzylvnEakG0dc57kU9xWmKaU/n16iaYLw0kaW7T71EFUrFeippaBhlKxvW9nEiHGpv8opIGLiMS3R4ycrwWOLC+g/jptJSQbXYWPCir3jARKBR3eOqXLmW1qyxirdChbREcf6S/E5QDHNnL09KSW8sk2dk8tcz4RrFwB0K2IeztlnDKY0OcIiJAI9ZYWLQy44S1wLMhHbQUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH8PR11MB6856.namprd11.prod.outlook.com (2603:10b6:510:22b::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.11; Fri, 21 Nov
 2025 09:21:11 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9343.009; Fri, 21 Nov 2025
 09:21:11 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Slepecki, Jakub" <jakub.slepecki@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "michal.swiatkowski@linux.intel.com"
 <michal.swiatkowski@linux.intel.com>, "Slepecki, Jakub"
 <jakub.slepecki@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 4/8] ice: allow overriding
 lan_en, lb_en in switch
Thread-Index: AQHcWj7Yly0Q2RHZ2UWt8T72RdAc9bT81jWA
Date: Fri, 21 Nov 2025 09:21:11 +0000
Message-ID: <IA3PR11MB89860CA2EBCCEDDF0C9E05D9E5D5A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251120162813.37942-1-jakub.slepecki@intel.com>
 <20251120162813.37942-5-jakub.slepecki@intel.com>
In-Reply-To: <20251120162813.37942-5-jakub.slepecki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH8PR11MB6856:EE_
x-ms-office365-filtering-correlation-id: 9d88aa44-cf5b-4e33-7f48-08de28df4fe9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?63ox/uexBLu2f4gJ4yD5qLsghtCYpixlgVdBE+6wSLYsTSODaXl3RPOujtpZ?=
 =?us-ascii?Q?900tL9nlyLPxkmiXrP8bEDN0rEVKyMfd/MR2Hko/S2nUHVV63e9jTTBE4xfH?=
 =?us-ascii?Q?aD1N2siwXHZA881E95rKcvdBb/2EMkzNDBsv7KzOlpyClPA/z62BZ/2O+FaL?=
 =?us-ascii?Q?qRIYQkDyttWKeWQQqnVnVNLKg/Yt/n4Aig4O2ODeMNU35LKEz9/2tycyF+I5?=
 =?us-ascii?Q?eN9q5As8WPeongXYeRQzD1k/vIWgLcKACbaJ8TYZkTh6nX8KOvpDgFiV6JTl?=
 =?us-ascii?Q?NIHfBXTdHhSWny5f4Z5GtPGZWDVGIc7n7slxEA/fL6bV0KYDGrfbogmtnAeF?=
 =?us-ascii?Q?Umdxm88Z4xXLSe9OgkC/7hDYb6jcr3UqToAaW8xnjlnCt6XCHQBQLuM8U7PJ?=
 =?us-ascii?Q?Oa0f7KP7C/Ww2uVSRSml3yptxEgvT50yXloSvc9cLr+kwOYRwSb72a33xccL?=
 =?us-ascii?Q?GgQgSav4ePDHxHTsLPJ7tAxRse7aHtP9Y24y7lf8EAIO9HR+Z4C7gXkicPnd?=
 =?us-ascii?Q?W6nMspS6Mhx0R6S3UpY3sbGEoeSUkCIyb2AXMtopopZgcMJ841JXJR8YRj/z?=
 =?us-ascii?Q?OfTlFHvXhBI1+VZXp+iVyB4OnY4gXQz0Vf7c3rCNnPerjMt7OCqV2TzCCqeg?=
 =?us-ascii?Q?4acXjWSGxrPdDDlX9PhoHpE8vKw1f0yJwb1QIiKHTw2/7yydbtxgJ22OqHh4?=
 =?us-ascii?Q?Fw15Zam1qBYaJ0/RQRzysDH4p/qG/QlU3bsCGu6Cj4aUT7A/79A+dvUYfcIO?=
 =?us-ascii?Q?D7TQooXMaUDEpHEJJYgUpHLFWHGQge8E6dSwXfcc240fUFrsIUXM8tgzUvUC?=
 =?us-ascii?Q?IW1NYUpbpWpdFBsOHx+dyVenn0fjwiom4wJdeJHlSqyriZW2vZp4axU/3i+M?=
 =?us-ascii?Q?eWpIoaObY27X9DDcxNbe7cwxWu6x+nLABE64MLw9bjyoqmXQZjQxj6RufSVK?=
 =?us-ascii?Q?4dL9To7aC2c0+uTxvX0+jLlVLpbuttom9+WmXCxxnEJBrlSRN08X2ILlU6oP?=
 =?us-ascii?Q?i7+Vd6Y4c9YDpAl7wficzygSyusmYUMuGwS8ESvySOSry9OUQ42SkzG8IG04?=
 =?us-ascii?Q?d4kQ3vrZBn/vCWxZa49yqYKubnIsM756/xbCXR0PZvMTXLHp0dLfg2YHclaS?=
 =?us-ascii?Q?WUzhG8TmNkwsIBai39e3pFeSCrUN0WIT1NfXaAuoJuxAhA2kr+YxMMaHtBMg?=
 =?us-ascii?Q?iQl9Ev6n6msvRX+K76SwPfNfbz2MCGqKBNzJXPMDU7E0Dk8EIRICA5jHHEc0?=
 =?us-ascii?Q?Ut/qjpLnymftxEN28uxxo7tGgCKjA4nI5EhxppIU5S/qwv0d8Njg773Lgo7P?=
 =?us-ascii?Q?b30G2y596HYHWj9zlyxzjjE0XmSrgq/F1x3VXQVFMxlkYlZ7wB0AZWq/f5YC?=
 =?us-ascii?Q?RI2Lt94gwawRvSDrqYsqJK6yQ5kJq2U6fEqrtOC4hP0iaD/Pb3aG1Hoe1MwB?=
 =?us-ascii?Q?/BJPZyvI46sUCP1DQOpXYHbid4QTe3cYU5xlKlMnPXg8K+5LWxB4EZnYPvFS?=
 =?us-ascii?Q?DIU65GlTSLlddK0Mabl8fHbIv8xh3tzRg3z3?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?y6jg0FxUli3QmQRxz4K/5O3cjTDMPdOowx53N09DYKiQhtvA2AtaMvN2YYD4?=
 =?us-ascii?Q?FGKKK3Wt5T6fWjS6+B7hn36nRYtKEki1Q4sl8G3qwmivBObANherSh1ksv0+?=
 =?us-ascii?Q?Ne+uCPo6w1EIXR5OxrpP6ZqoLcQenlZmsQkJtYNZZsfeBID5k1ahz3a7HAYt?=
 =?us-ascii?Q?sqmoY4CI8RDfdMl6KDETec+SXDRqmQ7OdFHKP3NduAKv4jxKITrs0wrkNPwZ?=
 =?us-ascii?Q?H1NFRCDYGpqOZSdos584eP9w3DK2kSyfQLzZOSFmh4JE20Eka21/MvtVIEmp?=
 =?us-ascii?Q?MT1L+nHFymNZNeUs39y+oTKVP3PcbxJiv6i87Bz1Jj0uvas784QLptHUyG3y?=
 =?us-ascii?Q?qAR9/d84lQB+PexK06j8In/gyCtiAjte/xTjH7Mt8KU03YzikEHQISm6rm9b?=
 =?us-ascii?Q?58/z64IGsaI/pmtg7oQ7uR71kuuWocyPaLoyaQm8H1l0n0ona9sKiZwgYIQu?=
 =?us-ascii?Q?IueqQM3yl5gvFjcQ9lMorm4X7lVBVKVmYTDoVFjyfk9AsZMqvH1hsIKURits?=
 =?us-ascii?Q?+4+x3fjKt3CQPkzjsmo7TrFWQjB88oJxu+F3rIVcbSTetPD1Wpl24Oq2l+3t?=
 =?us-ascii?Q?RBH64Z3sc9gRBCrbM3nkAEKteb33SwMW6BEpyJexiu28mXsEccAvM1SuR1NB?=
 =?us-ascii?Q?A/pQc6RoxJ1RKtcIrM/YDdUZswRZf5aY6lrr/RNyIZxabpu7tCdo1+T2e3Pp?=
 =?us-ascii?Q?xJvx4wlv9E9zawvWVuHrqRg9Ed2BHumFwdBsDZWizgr1AaxJUN+vd7QccnqZ?=
 =?us-ascii?Q?IfOzCm21KdCrtUibwjH/JwmdnrKVWatQRyWVIyh1KAahM846PpOWQVerq+jN?=
 =?us-ascii?Q?9JUtTzzwv3k0dugxlsw061IaELXhF5cACJeMAONcvhT1+Fo5kEvvBMiYuyOb?=
 =?us-ascii?Q?3P+w7YVmpAsx0Ml88tjP0cvMEkdosG+s7R0pQnez6PDwBL31imrNvexlbWg0?=
 =?us-ascii?Q?sB+ayv6VZm5jT4KgFZ7clmpKzEiFheYur4MFGmsb98R+duo5V3y36a28sLfG?=
 =?us-ascii?Q?swGg9oVQkgsTppheywJUWR93mKf8gdf6LKom27wRl6RVpMzsq12Cb+Z39TEX?=
 =?us-ascii?Q?k6uol7F0xFh1EExqVPU4avkWN58CVWVHPX/+km179AQdFtpOxMGI0mbAysgF?=
 =?us-ascii?Q?cLXAdDOKs/MMtrQBEoI2T2IqjIUT5sxWHN29BO1TdVDT64WHMASQRakvq3dC?=
 =?us-ascii?Q?PdXyXLqL1likTc4yGKmp3p4EQwrluPSumcKoja+ryB0eDvFfqcjBYmCjxEdV?=
 =?us-ascii?Q?z7Ki412trsFdSnys3BvabnfNjR1ceypNi7mBWIm38ZCSl7DfZ2n05qFhC+TC?=
 =?us-ascii?Q?rchR6jIgHDg9vTAuGcpHKsbHKU5QkJ/iEFkHeC8Y8EhkagD59HnEElf3lTm4?=
 =?us-ascii?Q?FJbhjIuJRnhPCQkMb6TmV650AmFcmCwcCSDqmVZQD6nHUio2ncV5BjpOg2/A?=
 =?us-ascii?Q?LcJoHlKPQN41upOLa5HcY4MltKkNAadFldWW16LWUq4kbF6xrkmIJhBbBxmE?=
 =?us-ascii?Q?CiD/fwJ6/2rY3AVY8O9HFhtT0qpleiuH52VIIzYaQfa4VC8ANMzTaaBkDTjn?=
 =?us-ascii?Q?jzKcfnq1+Bkz/3uCWhdOaZstHMM6giKhrHWWGNxLKcBt+Ee6+AnoTsBxRFZK?=
 =?us-ascii?Q?Gw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d88aa44-cf5b-4e33-7f48-08de28df4fe9
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2025 09:21:11.6067 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tlDoLPRXuRboWSM8vhiuS/gluq/mj3c15j+7A04uB4xXAKmGHAw2T7GEuFPv4VM71DHWv/a4Xsvh5qQ0X5LSq2m17IDFeGjeURSgfDhWrBI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6856
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763716885; x=1795252885;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Cg3bChY5rIND71AFMggpWWqQEmSsL4wArv9CBjrZ9ZU=;
 b=EUmhfJxyBtKs1APX70axLQTOgr4pxOku6lq0RcrEbBK0i59ebNl7Xa9Y
 3e4phYIX+cdJ2rHUSCekeaOUSEvKNL7LGztVeAPR0mtRJZsbPs7M9ghdV
 SPkZGRfkgp2fN4LzDwp0IVcMsd2x18P62eiQS1U+x39HaPso9mhmPL/It
 XfZTpbQPVuv89Jd9vVX1DjrkzMke68eqXa0gYwqJYSAsHq0Kh8Hl7eTgs
 KdnDx1qUxIs1y89sQ+iq8jlssvodgXzWUfxIHWuqgKPn9Y4FnjS1awAua
 UCkDYNFrcHqHq66vclgnTUmGEKhB5S8DZTsWAyDAivBH4hoDGd4ZbUnF6
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EUmhfJxy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 4/8] ice: allow overriding
 lan_en, lb_en in switch
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Jakub Slepecki
> Sent: Thursday, November 20, 2025 5:28 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: linux-kernel@vger.kernel.org; netdev@vger.kernel.org; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; michal.swiatkowski@linux.intel.com;
> Slepecki, Jakub <jakub.slepecki@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 4/8] ice: allow overriding
> lan_en, lb_en in switch
>=20
> Currently, lan_en and lb_en are determined based on switching mode,
> destination MAC, and the lookup type, action type and flags of the
> rule in question.  This gives little to no options for the user (such
> as
> ice_fltr.c) to enforce rules to behave in a specific way.
>=20
> Such functionality is needed to work with pairs of rules, for example,
> when handling MAC forward to LAN together with MAC,VLAN forward to
> loopback rules pair.  This case could not be easily deduced in a
> context of a single filter without adding a specialized flag.
>=20
> Instead of adding a specialized flag to mark special scenario rules,
> we add a slightly more generic flag to the lan_en and lb_en themselves
> for the ice_fltr.c to request specific destination flags later on, for
> example, to override value:
>=20
>     struct ice_fltr_info fi;
>     fi.lb_en =3D ICE_FLTR_INFO_LB_LAN_FORCE_ENABLED;
>     fi.lan_en =3D ICE_FLTR_INFO_LB_LAN_FORCE_DISABLED;
>=20
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Jakub Slepecki <jakub.slepecki@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_switch.c | 21 +++++++++++++-------
> -  drivers/net/ethernet/intel/ice/ice_switch.h |  7 +++++++
>  2 files changed, 20 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c
> b/drivers/net/ethernet/intel/ice/ice_switch.c
> index 04e5d653efce..7b63588948fd 100644
> --- a/drivers/net/ethernet/intel/ice/ice_switch.c
> +++ b/drivers/net/ethernet/intel/ice/ice_switch.c
> @@ -2538,8 +2538,9 @@ int ice_get_initial_sw_cfg(struct ice_hw *hw)
>   */
>  static void ice_fill_sw_info(struct ice_hw *hw, struct ice_fltr_info
> *fi)  {
> -	fi->lb_en =3D false;
> -	fi->lan_en =3D false;
> +	bool lan_en =3D false;
> +	bool lb_en =3D false;
> +
>  	if ((fi->flag & ICE_FLTR_TX) &&
>  	    (fi->fltr_act =3D=3D ICE_FWD_TO_VSI ||
>  	     fi->fltr_act =3D=3D ICE_FWD_TO_VSI_LIST || @@ -2549,7 +2550,7
> @@ static void ice_fill_sw_info(struct ice_hw *hw, struct
> ice_fltr_info *fi)
>  		 * packets to the internal switch that will be dropped.
>  		 */
>  		if (fi->lkup_type !=3D ICE_SW_LKUP_VLAN)
> -			fi->lb_en =3D true;
> +			lb_en =3D true;
>=20
>  		/* Set lan_en to TRUE if
>  		 * 1. The switch is a VEB AND
> @@ -2578,14 +2579,18 @@ static void ice_fill_sw_info(struct ice_hw
> *hw, struct ice_fltr_info *fi)
>  			     !is_unicast_ether_addr(fi-
> >l_data.mac.mac_addr)) ||
>  			    (fi->lkup_type =3D=3D ICE_SW_LKUP_MAC_VLAN &&
>  			     !is_unicast_ether_addr(fi-
> >l_data.mac.mac_addr)))
> -				fi->lan_en =3D true;
> +				lan_en =3D true;
>  		} else {
> -			fi->lan_en =3D true;
> +			lan_en =3D true;
>  		}
>  	}
>=20
>  	if (fi->flag & ICE_FLTR_TX_ONLY)
> -		fi->lan_en =3D false;
> +		lan_en =3D false;
> +	if (!(fi->lb_en & ICE_FLTR_INFO_LB_LAN_FORCE_MASK))
> +		fi->lb_en =3D lb_en;
> +	if (!(fi->lan_en & ICE_FLTR_INFO_LB_LAN_FORCE_MASK))
> +		fi->lan_en =3D lan_en;
For me it looks strange.
What type the fi->lb_en has?=20
fi->lb_en declared as bool, and you assign fi->lan_en from bool.
But you check condition by fi->lan_en & ICE_FLTR_INFO_LB_LAN_FORCE_MASK ?
It rases questions if fi->lan_en a bool why use fi->lan_en & ICE_FLTR_INFO_=
LB_LAN_FORCE_MASK then?
And if fi->lan_en is a bitmask why not use FIELD_GET(ICE_FLTR_INFO_LB_LAN_F=
ORCE_MASK, fi->lan_en) and
why not something like:

if (!FIELD_GET(ICE_FLTR_INFO_LB_LAN_FORCE_MASK, fi->lan_en))
    FIELD_MODIFY(ICE_FLTR_INFO_LB_LAN_VALUE_MASK, &fi->lan_en, lan_en);

It could preserve unrelated bits (like FORCE) and make the code resilient t=
o future changes in bit positions?

>  }
>=20
>  /**
> @@ -2669,9 +2674,9 @@ ice_fill_sw_rule(struct ice_hw *hw, struct
> ice_fltr_info *f_info,
>  		return;
>  	}
>=20
> -	if (f_info->lb_en)
> +	if (f_info->lb_en & ICE_FLTR_INFO_LB_LAN_VALUE_MASK)
>  		act |=3D ICE_SINGLE_ACT_LB_ENABLE;
> -	if (f_info->lan_en)
> +	if (f_info->lan_en & ICE_FLTR_INFO_LB_LAN_VALUE_MASK)
>  		act |=3D ICE_SINGLE_ACT_LAN_ENABLE;
>=20
>  	switch (f_info->lkup_type) {
> diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h
> b/drivers/net/ethernet/intel/ice/ice_switch.h
> index 671d7a5f359f..a7dc4bfec3a0 100644
> --- a/drivers/net/ethernet/intel/ice/ice_switch.h
> +++ b/drivers/net/ethernet/intel/ice/ice_switch.h
> @@ -72,6 +72,13 @@ enum ice_src_id {
>  	ICE_SRC_ID_LPORT,
>  };
>=20
> +#define ICE_FLTR_INFO_LB_LAN_VALUE_MASK BIT(0) #define
> +ICE_FLTR_INFO_LB_LAN_FORCE_MASK BIT(1)
> +#define ICE_FLTR_INFO_LB_LAN_FORCE_ENABLED	\
> +	(ICE_FLTR_INFO_LB_LAN_VALUE_MASK |	\
> +	 ICE_FLTR_INFO_LB_LAN_FORCE_MASK)
> +#define ICE_FLTR_INFO_LB_LAN_FORCE_DISABLED
> +ICE_FLTR_INFO_LB_LAN_FORCE_MASK
> +
>  struct ice_fltr_info {
>  	/* Look up information: how to look up packet */
>  	enum ice_sw_lkup_type lkup_type;
> --
> 2.43.0

