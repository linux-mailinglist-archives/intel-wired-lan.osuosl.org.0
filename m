Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WCsBMFhrDWqHxAUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2026 10:05:44 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 507365895F5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2026 10:05:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DDC2341183;
	Wed, 20 May 2026 08:05:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UWxasgjZgugp; Wed, 20 May 2026 08:05:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D5964113D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779264342;
	bh=mchfuu9JZiB4g5GMPqZZj3wD5JAnO1Bhv2V8uzd9lgw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=orJXU971hTzE53TaogqiQLE0LdVpIB7I61n2ekl4Xy8m3h5ccx2HEgHJkDs0j5OzL
	 Ru0ziyrJvzYtcEPzHCRVyPOqf2Dyxjf3rwNoS1EVHPQSzBmgAGuMfaplTHajQl/56o
	 SkvhamBL9XDmgr2JRgHpu5a4gNpdFbR28ACGl8gQnmXA9SiCSYsFBgy2VQcTe2CiNX
	 y8nEEUKh9dGoXLtI1mzdxJR3PYCPuEVHkS7LtlmY79F7c9FYIavUzt1Tb02wPSapHo
	 ++52X3kch/G9/+qDLRAOxpB1QZyueTUvojVAnhL7Q0YN3tjacOZYnnPr9rZuLwMmYp
	 wOZQWiAmexYZg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D5964113D;
	Wed, 20 May 2026 08:05:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4E207265
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2026 08:05:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3F80D407D3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2026 08:05:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kdYqFRFFU5Ap for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 May 2026 08:05:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3E1D6407D0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3E1D6407D0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3E1D6407D0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2026 08:05:39 +0000 (UTC)
X-CSE-ConnectionGUID: miDVhhAiRyevTz2ZNNYvSQ==
X-CSE-MsgGUID: B1F329AXShi0qN0ueRdERQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11791"; a="80004906"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="80004906"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2026 01:05:39 -0700
X-CSE-ConnectionGUID: J5Zf0yFiTTC5yUUTLaodVQ==
X-CSE-MsgGUID: QeGnDD63Qp+xuCtJySVkPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="239076226"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2026 01:05:38 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 20 May 2026 01:05:37 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 20 May 2026 01:05:37 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.43) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 20 May 2026 01:05:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KyehT8qCReNomLmpesc5+m1b25bPM3/b2G3dPzQAKv3tQZsADOp8suvVyoPUFkXDvr53zkKrprtkits5lVfCLvlSvQ/B0qiFojSSwaE2URnzBf57oeRZ2rH0L66JzUoK1gYXC4ASKcFzIuPMHsaqsvcizqv76W5Jau/3IN7pWO2PUnM98SuooWxWE95K+FylWQ498yjAdan3Y87rxqs8nfrEESfmgXEWN+FIT0nWrLOZa53j+MISgPxzsP0NyTVOjObzldSAz6a8AGp6MtlmQy4R/mVdseWJJjUaRLxKjv/wEDVJVns3OtPBb1beCoRmz9r5v2qUbkpESTezxlTFbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mchfuu9JZiB4g5GMPqZZj3wD5JAnO1Bhv2V8uzd9lgw=;
 b=WrnZKn3Jql0A6dxwjbrOL3UNCk57Xk+SSLJTNRR3dFTBwf9W+1+L7/6r8qL1oFTZ/yx8kvSE2WTbnEZhVAnX0qFbO7O/J/6OeMCFWah4AD6bDv9By/OKYRfz6AdJIXc+0e0lwAmEmUs04DB1DIGMzwFewUjzFZ1oSZlcAqje2GMJyumQvjrIjpj912mpTkeHUkPRBqxyZrtoen3RGhGz1x9JxeSlkHwsnQAGN4jz6WMZSs8m7nDAIrqLHe8GyE0y9qEoC9TzvnnpR0MyKLp063mruaacRrJFlvktjk4KAmh68vEp2NCr6RamrnEysoSsQ+/wWsqG6xDi9CS/hXDeCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by SA1PR11MB6760.namprd11.prod.outlook.com (2603:10b6:806:25f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.23; Wed, 20 May
 2026 08:05:34 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d%6]) with mapi id 15.21.0048.013; Wed, 20 May 2026
 08:05:34 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "jesse.brandeburg@intel.com" <jesse.brandeburg@intel.com>, "Nguyen, Anthony
 L" <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>, 
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v5 4/4] ice: skip unnecessary VF
 reset when setting trust
Thread-Index: AQHc18KRz7QRmunUh0iOUoM/R957D7YWr0yg
Date: Wed, 20 May 2026 08:05:34 +0000
Message-ID: <IA3PR11MB8985E5BCE0EAB8D89E05CBD18F012@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20260429102426.210750-1-jtornosm@redhat.com>
 <20260429102426.210750-5-jtornosm@redhat.com>
In-Reply-To: <20260429102426.210750-5-jtornosm@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|SA1PR11MB6760:EE_
x-ms-office365-filtering-correlation-id: 26830d7c-1c1f-4071-704c-08deb646920f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|4143699003|38070700021|11063799006|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: qKn4UrefcgU07BwsE2s0nLHSnmMHUERP74pTAtORyI32HTDOS4bB4S16NWi+tUbeQtJFImv0UBav+/dTMc417BpGsx+A0A7ih4FsywAsfA8p/XZtWTVsYTJwvUygaDB5pkolzR+MI0S0x3JaHDJ/MnyPJ5wD9jf19HK43w22tk211MIOB/cyD2Rc1tjacFYRb9iGTSCpbxfnoWgqwTxQzm97XKCgal2hGGMiB2iFptZIz5QSPxZ7P3ESTQFzVCHezY/2oteRGyxb8QuSOhCGiBWPCDge64Sj6hLFr54xlvl1SQQQxPUgNFIv1mrl21gLATdwq9SD3UtTS7DRdNs5V2oV/ln3rczsd+CYI89iiYMqUBfICq5FUsOdy5lAJjqNpKNlIgjtqRw7mJJcGRlR1fsFeRays0tz0p78qtQTMdLsrOuzhkBIfxhJi06UsMAYgKC79daOLWVCcXJ0WeILhbslvKj4jIkPp0Wm1tZR0pGDhwrpJQr+ftns/7kUz1lJbiHXic8b6Y1lgnvkYv43/x5jJFsBSHkj1pqGVZxwNYQzUZZqYwAY3DKjICU22L8ikxChXx/BGN8BiZuFkzUqHPIYpY7MqIMGxIY5OYdLj3HdvEiQgxtVmRM7ObpjkJHgU1+Y7tJe7/KAp3Oae+MVXqiFKgAjpsiXke5sXpqCx8sBWaOFncjDa8gY82fZ0QUzviKys6wd8gXqUcEcIU8YvuAC1PoKP33xSV5+FTsFytkJCElz2fZwEr+J5hPg78/Q
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(4143699003)(38070700021)(11063799006)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jTGuhs0EHgXmbG7TWG3cZMvN7xsrrBVNkZfg4eU3QwvpruMA8LcNiO7Cnt2Q?=
 =?us-ascii?Q?Qi0YpLZMeMTPv1P+82BRY+thwZgIJGvLh7dXZqymrFOkPumifSJZtQwSYzQJ?=
 =?us-ascii?Q?zaJEjFPxcKQn9BTs+BjlAPTYCMnmGYDdJRF0i9SpPHa+sUtoheI/HQiPd0n/?=
 =?us-ascii?Q?RQsq5G52IKCCActCisiddVWTSubuX8MPE+5jqx0TS45yQ8qNUrfi1VxBDpMs?=
 =?us-ascii?Q?9Em2uZc5UwzGm7E0VDP3C/BGLlxA5n5Gh9sDA9mhJjJ0N6D1ek+MXAHVSqnY?=
 =?us-ascii?Q?FubxhpeBUe7RSKR//wbL/8sNU/BnTMmsnqh12dkNOSFOhSPi5z3kcouckXB2?=
 =?us-ascii?Q?h3YbgZW/eqA4S6NNmtWmcT59EzjiCC/2eBIkvj+3rzhrteswJkfvE7sbntau?=
 =?us-ascii?Q?noM87bCNZTnDwyKl2+YqiJiKc+d6IMl7VkXws0R5PAEe7pmhz2ULZMtQZp9Z?=
 =?us-ascii?Q?enYfb84V2QUYm+vIs0ZzeM5ZjIEcAmAvYSblkY2WXbehr5VTiVi5+vQZJ4/P?=
 =?us-ascii?Q?jFYYHaAzgpuB13YhtgMkmuSGxk9Z4jMbOaFYT/n8euOaCuawdZxDbhRPidqd?=
 =?us-ascii?Q?0QrvZ+l+t8gQJGzzPxYMjR9zo50BQGUoZuoKKcQwzPzIklfBD5j3w5NVmtRD?=
 =?us-ascii?Q?456K12gIvhVjsd0K7p40EwpM2SLv/SQwtljx2QyIde3+nsoIxMze7lmf2MnA?=
 =?us-ascii?Q?ysFSBzyN22cC/KSvTGYr6jitvsSma+npUvf68PzQTFUeI8xw0yJLLOKGzqnj?=
 =?us-ascii?Q?APJUmMeGPQcPlAeCcJ/+MDJgOYvDpwHXRCUao5BviQii+SEvK/UYrvYCLbnT?=
 =?us-ascii?Q?wKKnanc7XNaEQI9m9UsyqWZmKJSSbJCl/FvZAktIqSiCJ1mbl64UMxRsZ6V4?=
 =?us-ascii?Q?6hEy+fyw6rOtoowxOMSEOzRH08N+94AMqj2JVopD2hS9o5b7R/xCBPozR0SE?=
 =?us-ascii?Q?aGyLnfVfB8CK1xEKxB2C/LXcR/8R/QSgZx7tYs+IvVn+9JQwNLc3n4MZJ938?=
 =?us-ascii?Q?A010XXG+m9ay5PQ9ZznwRyCrL3ZabBOod5Z/lO5gI97CAnFr0w7vhsRAveM/?=
 =?us-ascii?Q?DTysYeJGNNTs/1YYJKIA/yog6BcMzg9J5W5ProIKE6xWLDL/6NUAyDoXldr4?=
 =?us-ascii?Q?84LeEKCT+HpyfT0pjn3hyntjTMK2EINmYyXfQVcvYo7NYJx/R1yqG55LfIGf?=
 =?us-ascii?Q?xzlQxLNlNIDbXwjpbllELQLM8/XGIeBXuWlNQo2v4nYiLd/EeAZaqP/o3c1U?=
 =?us-ascii?Q?PUHZEzrjunalhtsgBMjoeZfUlPNkJ8dETWVn+AXnJjZRFLabdl5X+BpFUX9T?=
 =?us-ascii?Q?uyJGbYdt08ys8J9YUCF7d4eBM855N0744Ndx3zFY9nL3cCFuheSsGGx9KkP9?=
 =?us-ascii?Q?IDog+jklXiYHyjCa/f8PMkXA1mh4ZkJlZKeZmtoNpjY8bwzPtvnOeaNVrq7V?=
 =?us-ascii?Q?A1nHjh7fkzyyN/ctjOso4+kJ9Nmmys5WV6/n2x1ghrDeaxayNa221H/Z8CBS?=
 =?us-ascii?Q?iC9GH9chvksKhbAXrHQE/U+dAna0xiLLDTYPMZTF/Ysts74iSlfU4RlnJm4W?=
 =?us-ascii?Q?rESpWavMZaLBPfUIDYP6IPGixUVEwzg6jOlI11p8Tk+3xTTwyRMW7qSXWSN3?=
 =?us-ascii?Q?tor72NulXA2UnNiQzmk0BfvrqOHhSYbvCUrbs5hJMoDcbDFUzzN3KMycCi5J?=
 =?us-ascii?Q?b+tO93fEk+qniSgMsmzxMOQS4x/gk37zvqyp/wbrjGRB3MXKVw2BRN0dfuld?=
 =?us-ascii?Q?NgZ7E+70Hg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Mb/B26bAQx6f0tvDUT+TR0RPGFTfOUZ86s07sxbBt1+1cGZBtToGr0TqcXXcnfGaziFd+1X8Oq/5ZQCYz/41qMrgHTZQi/6gds5nwAoF4eOBKrcmt5E9D1WBLj/6HatH7gaSR4iFbyI/vODfjFJHxWOkL8pSja1cuKnekxRYU26qSTpGWPuLil7T6sBddWz4BvcOJmF+Zi9Ow/atv57sNLiBtEp+eGhKHssfKAmcXw1d0k0RVeJqNJQ2RKCC9PqASQ/nJb4hQOWjxs/FjD7B2Jw+k1Sg0pd8D0qeeH6JbCgjn+qVkiS2iRYyoenpDNN7i/blzzWzmLvVtvyQDlgk5g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26830d7c-1c1f-4071-704c-08deb646920f
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2026 08:05:34.7337 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: usFCmAWmHkQMJZjfewmfP3YmdvsmQzNkK5ntXmDp2VTOePjJuZ12EuS5cBTSc0tbS6oKBuibmXH5Uuey7tR7v/w0MZabf/zTWVU6e/nragQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6760
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779264339; x=1810800339;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=43TYURbuxacJj93wmYFrxwLat9daOZMGOA6JVDdzAHY=;
 b=LK9JLaP6b0q3fH1dNilO5TnG+YL7REdYC2/jE48Y8+B8dsGh+m1p1yDz
 AfCRjf8P4kPEBpKkJwe32M3pXE3ucWRFEdhrlI7Hi9o9eO8iudnFHeu+6
 jS0x0k0MfwXI57x8qUF21j2GbLmRAqaXZSV3aAKkYWHEF13jNZsUbhS9E
 TGiEzcLJgBJNZfIqP1xVdoOPe3W3QxOppliuEXW0XNowwklzCXXhvJdzL
 v2fW5Hhe+o0GJbOuzmgj0hsipkpnU0HsmxC00H0yc2nWQPslUaABwCDyM
 g/Du9ilQs65AfFLc19TIUz+RtgOhDGkSMZTALNEzGM7yyVyJ9UcLTA4IK
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LK9JLaP6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v5 4/4] ice: skip unnecessary VF
 reset when setting trust
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jtornosm@redhat.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:horms@kernel.org,m:jesse.brandeburg@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo,IA3PR11MB8985.namprd11.prod.outlook.com:mid,intel.com:email]
X-Rspamd-Queue-Id: 507365895F5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of J=
ose
> Ignacio Tornos Martinez
> Sent: Wednesday, April 29, 2026 12:24 PM
> To: netdev@vger.kernel.org
> Cc: intel-wired-lan@lists.osuosl.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Keller, Jacob E <jacob.e.keller@intel.co=
m>;
> horms@kernel.org; jesse.brandeburg@intel.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; davem@davemloft.net; edumazet@google.com;
> kuba@kernel.org; pabeni@redhat.com; Jose Ignacio Tornos Martinez
> <jtornosm@redhat.com>
> Subject: [Intel-wired-lan] [PATCH net v5 4/4] ice: skip unnecessary VF re=
set when
> setting trust
>=20
> Similar to the i40e fix, ice_set_vf_trust() unconditionally calls
> ice_reset_vf() when the trust setting changes. While the delay is smaller=
 than
> i40e this reset is still unnecessary in most cases.
>=20
> Additionally, the original code has a race condition: it deletes MAC LLDP=
 filters
> BEFORE resetting the VF. During this deletion, the VF is still ACTIVE and=
 can add
> new MAC LLDP filters concurrently, potentially corrupting the filter list=
.
>=20
> When granting trust, no reset is needed - we can just set the capability =
flag to
> allow privileged operations.
>=20
> When revoking trust, we only need to reset (conservative approach) if the=
 VF has
> actually configured advanced features that require cleanup (MAC LLDP filt=
ers,
> promiscuous mode). For VFs in a clean state, we can safely change the tru=
st
> setting without the disruptive reset.
>=20
> When we do reset (MAC LLDP case), we fix the race condition by resetting =
first to
> clear VF state (which blocks new MAC LLDP filter additions), then delete =
existing
> filters safely. During cleanup, vf->trusted remains true so
> ice_vf_is_lldp_ena() works properly. Only after cleanup do we set
> vf->trusted =3D false.
>=20
> When we don't reset, we manually handle capability flag via helper functi=
on,
> eliminating the delay.
>=20
> Fixes: 2296345416b0 ("ice: receive LLDP on trusted VFs")
> Signed-off-by: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
> ---
> v5 Address the comments from Aleksandr Loktionov:
>    - Error handling when ice_setup_vf_trust is called is not necessary
>      because ice_vf_clear_all_promisc_modes is not used due to the
>      conservative approach to solve AI tool review concerns
>    - kdoc should end with '*/' not '**/' (new function)
>    Address AI review (sashiko.dev) from Simon Horman:
>    - Adopt a conservative approach checking multiple conditions before
>      skipping reset: MAC LLDP filters, promiscuous mode
>    - Simplify helper function to only handle capability flag
>    - No need to export ice_vf_clear_all_promisc_modes
> v4: https://lore.kernel.org/all/20260423130405.139568-5-
> jtornosm@redhat.com/
>=20
>  drivers/net/ethernet/intel/ice/ice_sriov.c | 33 +++++++++++++++++++---
>  1 file changed, 29 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 7e00e091756d..3c64ed1b41a8 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -1364,6 +1364,23 @@ int ice_set_vf_mac(struct net_device *netdev, int
> vf_id, u8 *mac)
>  	return __ice_set_vf_mac(ice_netdev_to_pf(netdev), vf_id, mac);  }
>=20
> +/**
> + * ice_setup_vf_trust - Enable/disable VF trust mode without reset
> + * @vf: VF to configure
> + * @setting: trust setting
> + *
> + * Update VF flags when changing trust without performing a VF reset.
> + * This is only called when it's safe to skip the reset (VF has no
> +advanced
> + * features configured that need cleanup).
> + */
> +static void ice_setup_vf_trust(struct ice_vf *vf, bool setting) {
> +	if (setting)
> +		set_bit(ICE_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
> +	else
> +		clear_bit(ICE_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps); }
> +
>  /**
>   * ice_set_vf_trust
>   * @netdev: network interface device structure @@ -1399,11 +1416,19 @@ i=
nt
> ice_set_vf_trust(struct net_device *netdev, int vf_id, bool trusted)
>=20
>  	mutex_lock(&vf->cfg_lock);
>=20
> -	while (!trusted && vf->num_mac_lldp)
> -		ice_vf_update_mac_lldp_num(vf, ice_get_vf_vsi(vf), false);
> -
> +	/* Reset only if revoking trust and VF has advanced features configured
> */
> +	if (!trusted &&
> +	    (vf->num_mac_lldp > 0 ||
> +	     test_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states) ||
> +	     test_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states))) {
> +		ice_reset_vf(vf, ICE_VF_RESET_NOTIFY);
> +		while (vf->num_mac_lldp)
> +			ice_vf_update_mac_lldp_num(vf, ice_get_vf_vsi(vf),
> false);
> +	} else {
> +		ice_setup_vf_trust(vf, trusted);
> +	}
>  	vf->trusted =3D trusted;
> -	ice_reset_vf(vf, ICE_VF_RESET_NOTIFY);
> +
>  	dev_info(ice_pf_to_dev(pf), "VF %u is now %strusted\n",
>  		 vf_id, trusted ? "" : "un");
>=20
> --
> 2.53.0

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

