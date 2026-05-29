Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GMSDMSUZGWoMqQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 06:42:13 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 420F95FD0F5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 06:42:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7AC6B41DFA;
	Fri, 29 May 2026 04:42:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hCKOj3XV6uZX; Fri, 29 May 2026 04:42:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A661941DFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780029728;
	bh=3A/oBSC3IBBNJz+M7XzCbbaQornNeoxPQJS4Y6oANvA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oD1WwGlBhi4y/bAeFQi2iTT6r5VbVm+1mzpSuPOoY4x3/QnU8VcU7DYf9C42e/pXx
	 CL6QfutiNkeQYMcamYClTUYjKtElq4txmmuxtCKXMCAboMMv+xVkwJCJ05Obh5klEV
	 CbREC153Vr8jH9UFqOcqkj4564Gj/uSgdE1hjpWxE2YCqxwv2tzSMZcu/sfCA1DtVg
	 Wnndnc5V4oX4+J2wM0yYTawCp/LV6WhF4wDcZrp8O9MyYSNatDHIVJvTcRjm8W9tW2
	 VJuM03+kdPI7KPTLzojjqewjt/uv/c+68wJ0G6L/h7w6V+oewZGmuNSX6MnNG+DjWw
	 hXAxZ8OI1srtw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A661941DFD;
	Fri, 29 May 2026 04:42:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 93C4ED3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 04:42:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7AFC060F91
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 04:42:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uYMr8wVJrHBh for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 May 2026 04:42:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 349A860D7F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 349A860D7F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 349A860D7F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 04:42:04 +0000 (UTC)
X-CSE-ConnectionGUID: 445F1PnkS6mnCtkNX28L2Q==
X-CSE-MsgGUID: Eul2gOo6TXugbqNjYdTYbw==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="91188425"
X-IronPort-AV: E=Sophos;i="6.24,174,1774335600"; d="scan'208";a="91188425"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 21:42:04 -0700
X-CSE-ConnectionGUID: DktK9mRyRQOgY99NXb+lCA==
X-CSE-MsgGUID: Swo14kpAQqqPKmTSkr+w7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,174,1774335600"; d="scan'208";a="244561539"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 21:42:03 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 21:42:02 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 28 May 2026 21:42:02 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.26) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 21:42:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UdeAZ3bniNKj6hVnQioMblJ5BwIlJfUX+LTVAhoGMdo6zqSXPDLLT7I5VdkRwIWYVgLysSn+hOtBs3SWLmDRy7rK7aiGC4VPdFDIerogGBYYN9pU3IVT92H1b7g46Vq9VW+Ciw2GvYYousWPOXvW3ftyUA7jE21STh1JOoGjiD1kqheJgPhd6z9bNIvDQiI4vDfHKfe6QUP9LBqOfMQaC/yYivPGsRDc2M32q2AWgqaNAkrmGSdcDazJ6qGoZMjhZLC62yyEAD/DAKlngQNgivAwjykNNo4WCJJxERMXsKNcVNKcNuMaoAueWaYLkcwsi7kF18dSw6v4r/NOj4aQ/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3A/oBSC3IBBNJz+M7XzCbbaQornNeoxPQJS4Y6oANvA=;
 b=i2TFd3PRcD6wNWVciJ/uPnGoPrg9C8R2cFqjLSmuyQtIqYwmgoighKf5LZv01ohehLVPjDigPEJxtyuTqViNn5XpTwQsGXolKwDSkLcACvDFoGDCgzh0WVU15aQbUIkRH+zW6Le1tvmWE0hP93M1bfVWtbNiEC4UnZ+HW9+rUO3UFXrlTharra8iRne9Qhyoy1H7CWsDSsyGpiJcbx0On5oqIFAmB+pYbkv6AW/oGb/fz90WrampfIHv6rqvMyEIdHwJaaw3ZUJ6VnDbY6gC0Mi56vD1cCwskMKpjDDlg3/I+PFtEcGsDojlFbaBE0OQIUn3pWbc5kbjPsdZtb9lCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by PH0PR11MB7633.namprd11.prod.outlook.com (2603:10b6:510:26c::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.11; Fri, 29 May
 2026 04:41:58 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%5]) with mapi id 15.21.0071.011; Fri, 29 May 2026
 04:41:58 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Oros, Petr" <poros@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: Paul Menzel <pmenzel@molgen.mpg.de>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Eric Dumazet <edumazet@google.com>,
 "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix missing priority
 callbacks for U.FL DPLL pins
Thread-Index: AQHc3I3tpwgIsskqJUaVE9frKmtd47YkjzxA
Date: Fri, 29 May 2026 04:41:58 +0000
Message-ID: <IA1PR11MB6241A898FBA41ACC05918F788B162@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260505125108.2019998-1-poros@redhat.com>
In-Reply-To: <20260505125108.2019998-1-poros@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|PH0PR11MB7633:EE_
x-ms-office365-filtering-correlation-id: 91e3edd5-cb47-4c39-f451-08debd3c9e5b
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|7416014|38070700021|56012099006|5023799004|3023799007|11063799006|6133799003|22082099003|18002099003;
x-microsoft-antispam-message-info: Awl3oC5mWTj1Pf5b3zgkib8D8YwcOS3BJrC2lJFcGXDvnGPi9MPZIr8TKwEqWOykz39Xx2lvQKQ/4Wa2sgDLIM9moZLN1E/8OczbHW8ui0SNotizNWcBCP5XczqUdmUBUi9PmWd8Muc65w6pH7noJnqz0rAIEGGMp1M7u/IYVRsGoz/7Fv2Y6IrTiFfnatQZefdCCRpNV8Flej0R5yoEty9KUspAC5jQ1oi4G/F7HDshW5hr4a92PRhkd1n4QNGUX5pY7DA4gBgDxo6X9Rr+8yqQO5lIKAyYnqsEQkAJQUDh8yBD54ocwCvYpF+Ap1R6J2F+ZCzHgl274rjPiPVAiD2LtZjDWkQtH0tt9yJDZcyvRW0VpWscwhEGyG5VBaEbsUlQUupxfFirZI30u9tVhKCgGbHuPbTJxGCLLE6b7LaeWdxaVgEkbTd37JjrBQTHmXaugxmmvEiNjWgaYXjJuPDCq3K9Pyez+gx1TmufBg1mtU4KQy0DnRXzn19IviRoDMt5uvBCfQYjA/4b+EN6TE4nX/01omNQxJE+RoBL2uIH5WJ+9PPWc/Dy8qMTOKdIiuMvf782eLbQSkmC/8V3u/e13N6iNlNFRH70m3aDwnRDhPi2pjZ5RUQe5oG9THii5jff5PAY+UyJjEgp+SVOB3JkWl/Zn3onAgW9ykBVUHLVzuH2PFmJV4tRASYQ+OLHnLTymesYERUDiHfMPvtj6Aqq56Zx88LCRoFSJZZGkSQgpuwSFq/Jy/zwF1V0RME/UQ+vU9/kFXj4rKdCoK6eVA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(7416014)(38070700021)(56012099006)(5023799004)(3023799007)(11063799006)(6133799003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NSr49L0gNAEGpCdWLy/A2YbNTxxc/n8nIEKnogaRmm9kOLSuu0UQyhqUvay4?=
 =?us-ascii?Q?WurFiTz28R+fUXcVc5hU9jRoy9YBIMKRh412nbKA+JFww+IKlFNg5VMny4zc?=
 =?us-ascii?Q?zvhxTUoulmVwyI4iQBZ34D3LEJ98jBIE3cDFBpf1/OSFtFX28gcUFobeCqHX?=
 =?us-ascii?Q?6zga1jnuz2XpSz3vpV3W/Phc2IB35fL+JhOqzRMia9dkm4pdpWg0qZ8GsaK7?=
 =?us-ascii?Q?ubBJ+cpvP+IbuCxokVUU75LBY/Ke4OdEi/ldi3Cbt90zg2EmBxLSStFfpVbl?=
 =?us-ascii?Q?CuBYc6zRbDj8XgJd0F3Ai623kH5szAxqUolL5t1TaDoj7WoT1tPTcJoS/ML2?=
 =?us-ascii?Q?ulmGsA78Vk255ygeW+cOXI9rr/aB22XiL/UgCD6i0Yvjt2Xwd+PZvWHcmUYV?=
 =?us-ascii?Q?4u01qcTCM5ogHHH9usal3cX+efTQYvM1MTmvxX+IhOljxI15LIY7nWdSjflW?=
 =?us-ascii?Q?HMI+L//FJ/DG+zG9qRC3x74iXTBgjlqkYTcHKWngS8pV91L0engo87gipKeh?=
 =?us-ascii?Q?nnBZt9wrJHH2FOR9WCiH9ODv6QhY64uCZFXqxJbHqpr/zYDpmqQXE8MtP0pZ?=
 =?us-ascii?Q?55RGGvirWa27jyDOwRw6Tqz4MLgrt5R+Sh4Crl5Bc40+Xd4NX8vH5HssqVkq?=
 =?us-ascii?Q?Td9dodk/7rhBGSbqFGFHpGY3lJcAMtreZfipKE5Dx8P4V7IepybTEP9CtlkE?=
 =?us-ascii?Q?R9cJuckJQxSoQ4mY8HFWhnJANpIihPXJCwhh/B2v3f+WvvZVLBIh8f/4UW33?=
 =?us-ascii?Q?zQwJkzbNhBD+Ku1GBfHYYt6wSmf4fM6c4QgO8vNZwOfFbPAw8inO0MpCEHqx?=
 =?us-ascii?Q?ZqQrrzhvO5m0Yr3KUN9ize2vJPN9iich0yN9vopFAtI7/n+dbPg62kVEg0tJ?=
 =?us-ascii?Q?MdhbsPZ9ioJMSnw1xghIW4w2sxDxHGIOmmTwkNSifZ6DRsqQHte/D9t8+WMH?=
 =?us-ascii?Q?OYPGNtIc2xaL5TCmqQxlk1vWvMmciDg96F+8/Gr+bTtcs99HjTmY/39GDYJA?=
 =?us-ascii?Q?llsvNTUCWBDxW35Rhgh8XuoPefEikRSgnNHXZlXBa5kUPExEMsRAYWkUeo7/?=
 =?us-ascii?Q?TmnBA9TIq9rFac6SGrd4T2fobzJPbUySmIYQwpDZVRIbh+N/sCLxDg7R2VXh?=
 =?us-ascii?Q?E7ZvqM9pnlUaSSdZrs4fcqYHGBgEEts9HJKTEb7sTwD7M79u5OE0AvIIDx0i?=
 =?us-ascii?Q?xHjrLwT0HhnEydBle5MddbCfFFHHc/dn/TplD9vXqsjJ3n64VNAHgjkkYhAn?=
 =?us-ascii?Q?x03DwIugEjtDNYI9sGrm1cCq+AWof8PA+bdCRhT9VWkY+lSsI06DZ5ZEY02L?=
 =?us-ascii?Q?IhGy9eGafhBKpDyAfbaitbddbhLAURrZFAudrcZJDyMUjqHJKOwQIQcSMx9i?=
 =?us-ascii?Q?oRs88r/4qpJ/gpax0sl62E7YE5RGTz7lFl8faIQF1cwlGXCHOgtkmGTlFI/D?=
 =?us-ascii?Q?YLyjaNFZC64273iCtDRNhNeoQ1QK4mQYqUQnis3BIuJC2Ita4Kfk/JJMpZiY?=
 =?us-ascii?Q?4RSdf/KcXtij/eQlmJfIxnvDF1EyKYA3P8VvU3hE4Vb+13QN187BvE2MwHcc?=
 =?us-ascii?Q?4MEfNAOJYjxe1mDDBZBoTsMBGgur9Mjwsqwd5TyMlUQEChJ0nahtgn2DhBCx?=
 =?us-ascii?Q?BoNs4TL52693ndy3WUu/KMmXBEfCjj3nCYEpDX5MMcRmsM8xv4a8EOG6PKLV?=
 =?us-ascii?Q?uLa/RfaqLa39oLJKB4pZCPlYPhtYhQ6cVPsx88NlRelX/cY1qVcaOHk2k07V?=
 =?us-ascii?Q?chwlLu596Z9ZliWqY25uLnF5XgNqeSOjXIe2gXgdlzXxC3UXgOwKvCigVKtQ?=
x-ms-exchange-antispam-messagedata-1: 5wDBzBxCnU0dfQ==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: pBKapxV87ZUYZ9RMki1A57DA2bnJyhzLBmtfKuOH5xlJUFX3ZzNiEF7KzTNfxvY/+m1eDHNDlTaPek4tn68nY4hearcMjUhUKvf50X1P1LZvvfl0+Xa560yt6dj/zjW+lif2fuFsV/DCeEuesQyjVEesSY/SXMWykIth3B9ASFDP8Goft5+E/telZHW4tTWpX114FeXIrTDP8d3muxptdFCHcMYWZqwga2uKhi0B6dqKNYKlw4WbbfirHyVKKibGMFifKXIF0qSuvxwZ8V2xWRC7opsKqKMP7HOgIgMSrte2XHYPmTwgfT5nj276EWh+73Y1ePvFfOtlGd5GqlU+0Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91e3edd5-cb47-4c39-f451-08debd3c9e5b
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2026 04:41:58.5222 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XDBmXoQTf3B02S3l/tYTu90yGx0siwsQzZ8Q6Wu86cGfYLKdpFELbFle6YGMclUtJk66biA1LDDehZKw6EReEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7633
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780029725; x=1811565725;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=257lz2pXUGYYg7DrVwCeVSqG9Jm9OkoTDD8TA3RsPzo=;
 b=mHS8hfifGaUhiD708FpTvU1Pkia3KRl0Sd5dmj0hlL47Ue3VHvaOnBLk
 nQ6/5H5LDUD5oCpAaEDJdFRM3ggy09dwWQqF6MVp2GDt/jde6/bZec47P
 XcyLqu7WKzfFaydudYR9SSFMtCqTidUZZLhOwg64AxV5U6XvyG38yeOqs
 5H4arD5oAjYJY3Mo8u52Y/ge0XSyPFnRuAtzv+83qb67O3AEW7oz97pkp
 ov3SiXyOVGg7BEZ48jEjlRYdlGyvAck+B92ugVrLPOjOXqJcB9c5f8xj2
 0YSFm/ePhIyQ6ng7YZLnmINsXvOAT/7gXa/4/79wx9mTeGiOc32VSMxXZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mHS8hfif
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix missing priority
 callbacks for U.FL DPLL pins
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:pmenzel@molgen.mpg.de,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:arkadiusz.kubalewski@intel.com,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
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
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo]
X-Rspamd-Queue-Id: 420F95FD0F5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
etr Oros
> Sent: 05 May 2026 18:21
> To: netdev@vger.kernel.org
> Cc: Paul Menzel <pmenzel@molgen.mpg.de>; Kitszel, Przemyslaw <przemyslaw.=
kitszel@intel.com>; Eric Dumazet <edumazet@google.com>; Kubalewski, Arkadiu=
sz <arkadiusz.kubalewski@intel.com>; Loktionov, Aleksandr <aleksandr.loktio=
nov@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>; Nguyen, Anthony L <ant=
hony.l.nguyen@intel.com>; Simon Horman <horms@kernel.org>; intel-wired-lan@=
lists.osuosl.org; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@red=
hat.com>; David S. Miller <davem@davemloft.net>; linux-kernel@vger.kernel.o=
rg
> Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix missing priority c=
allbacks for U.FL DPLL pins
>
> The U.FL2 input pin advertises DPLL_PIN_CAPABILITIES_PRIORITY_CAN_CHANGE
> in its capability mask, but ice_dpll_pin_ufl_ops does not provide .prio_g=
et and .prio_set callbacks. As a result the DPLL subsystem cannot report or=
 accept priority for U.FL pins: pin-get omits the prio field on U.FL2 and >=
 pin-set with prio is rejected as invalid, even though the capability is pr=
esent. This prevents user space from using priority to select or disable U.=
FL2 as a DPLL input source.
>
> Reproducer with iproute2 (dpll command):
>
>  # dpll pin show board-label U.FL2
>  pin id 16:
>    module-name ice
>    board-label U.FL2
>    type ext
>    capabilities priority-can-change|state-can-change
>    parent-device:
>      id 0 direction input state selectable phase-offset 0
>    /* note: no "prio" between "direction" and "state",
>       even though priority-can-change is advertised */
>
>   # dpll pin set id 16 parent-device 0 prio 5
>   RTNETLINK answers: Operation not supported
>
> After the fix the prio field is reported by pin show and pin set with pri=
o is accepted on U.FL2.
>
> Add the missing .prio_get and .prio_set callbacks to ice_dpll_pin_ufl_ops=
, reusing ice_dpll_sw_input_prio_{get,set}. The same ops struct is shared b=
y U.FL1 and U.FL2: U.FL2 (input) delegates to the backing hardware input pi=
n, while U.FL1 (output) does not advertise DPLL_PIN_CAPABILITIES_PRIORITY_C=
AN_CHANGE so the dpll core capability gate never invokes prio_set for it, a=
nd prio_get reports the OUTPUT sentinel (ICE_DPLL_PIN_PRIO_OUTPUT) on the o=
utput side exactly like the SMA path does today.
>
> Fixes: 2dd5d03c77e2 ("ice: redesign dpll sma/u.fl pins control")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---
> v2:
> - describe the userspace reproducer (dpll pin show / dpll pin set)
>  in the commit message, suggested by Paul Menzel
> - collect Reviewed-by tags from v1
>
> v1: https://lore.kernel.org/all/20260504121603.1702674-1-poros@redhat.com=
/
> ---
> drivers/net/ethernet/intel/ice/ice_dpll.c | 2 ++
> 1 file changed, 2 insertions(+)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
