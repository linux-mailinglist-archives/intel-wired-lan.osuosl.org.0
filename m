Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CEOeL4TD+GlQ0gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 18:04:20 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 842014C11EE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 18:04:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BA83361529;
	Mon,  4 May 2026 16:04:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cukju03Uk7Jv; Mon,  4 May 2026 16:04:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E32DA6152E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777910656;
	bh=3D64npJsn0io0FzXOn+se9lPFQojzV5YGSFtKR8OQqA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aQWUCQcHy3gH04njSN3cLcazc812abrEhVaqUKW7ET/cdrVeMlXm5OVZtP+9YN2rM
	 0lFXTfvis5QqQnQAnBCNFWWmeM6BtFiy8z0iSlIVsY3ssY+uAycato1elHnnwpjfBs
	 +xqEs6NGHi91mrD34ifrY9HvvGX4J4VIkaSpLm3GoJknvQ1/wEu3IpvPz5dtOXtCPr
	 S1B6rcNV+UuhVjmIYiEeJbd+s8KfEp5F+qCUis3/6jzb3tShGcfsLOCQxdEFpT8nbS
	 xzj5WPcSNH/p9V9UzzKKtFjffDTvdhnk29JxFHB/npRdh2F32fjHaklsOsXgWDz27C
	 u1MnR5rIVVcjg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E32DA6152E;
	Mon,  4 May 2026 16:04:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8765F190
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 16:04:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 788F061526
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 16:04:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D1QY5LsfxAeB for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 May 2026 16:04:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7629861520
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7629861520
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7629861520
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 16:04:14 +0000 (UTC)
X-CSE-ConnectionGUID: PqI2v6+DQm+96yv7j5zH0w==
X-CSE-MsgGUID: 2QXs7eMVSF6zLCuOoiZ06Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="78962312"
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="78962312"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 09:04:14 -0700
X-CSE-ConnectionGUID: 0aJTRFUhRSalJbxR+n+wxg==
X-CSE-MsgGUID: Z9sS2pICROOGqv+b2it5HA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="273663323"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 09:04:13 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 09:04:12 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 4 May 2026 09:04:12 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.41) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 09:04:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S/7dF7H1NaAvMTQyI3hLqNE/TAa6gX2VomsGIqh7vzonotok/uhx2BixCIm49jl5dyXnsDdDCBU4G06A+a7mNOgW0ttSQG7Zme0gUzs+MOZwa+Eab7jJfrufAFuhToGD8im9NXBZuGJa6ppJm8a0tVetSHwF3gUv2n2Z76nfKG0pNBVP9MqW+WUHMwb23dANjoVcYXOUNcCSfLgzS1sdYZpxf1kGx421xJFMRSSs6Zqxc4/YUo78dWmZMBBMANCs6DxzFTG3g56kB/VdzGG4a21fDVy9DzrC7lQGb0vqMqlnOi650cJ7w+7YlbYNvOCkhYRC/i706aa9YvEf+/aq3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3D64npJsn0io0FzXOn+se9lPFQojzV5YGSFtKR8OQqA=;
 b=Xeqz/4/bpHHjBPEY0RIOGqob1K8Iyq4AjfFPHjhNBNGhbY+J1P/bqsmYXmI3bAosK4Iv6uzvw7zkeJroGpGRDhurrITNrzEX9V6OFBWlDsO6nKaNGe6mKwbQXXBZcuLvvpnLFxSkKL3CB+qidD7yY50FW+Zmccea81zY2QQ/47dWNt40v3G+km023WgqzsWjJHkwDvnNLC6oCVAhi/pzj2iQdj5FQEy3+8GszqG9N+yO85AHvQ8RXCbETmlbmUoNbapbtjg1U/8MrIEshRMOohcPQ0d70cQo6HGBzzF9rFibRovIaD7/6/YyBHr/vJFbQUXVCQGNVJ9h55ynusiEYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by LV8PR11MB8463.namprd11.prod.outlook.com (2603:10b6:408:1ed::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Mon, 4 May
 2026 16:04:07 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e%5]) with mapi id 15.20.9870.023; Mon, 4 May 2026
 16:04:07 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: Simon Horman <horms@kernel.org>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>, "Olech, Milena"
 <milena.olech@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "Ilichev, Konstantin" <konstantin.ilichev@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] idpf: fix read_dev_clk_lock
 spinlock init in idpf_ptp_init()
Thread-Index: AQHcw3+O4hZQ2U2V3Uq5FcVjdl4d97XTyPCAgABj7QCAATVrgIAo1b7w
Date: Mon, 4 May 2026 16:04:06 +0000
Message-ID: <SJ1PR11MB6297355527DC98D2FB8E86E09B312@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20260403153538.11516-1-emil.s.tantilov@intel.com>
 <20260407160241.470945-3-horms@kernel.org>
 <626f3619-499d-458e-8536-2cc30984656d@intel.com>
 <20260408162749.GD469338@kernel.org>
In-Reply-To: <20260408162749.GD469338@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|LV8PR11MB8463:EE_
x-ms-office365-filtering-correlation-id: c6a5b047-c49b-4ea5-23f8-08dea9f6c54a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: GZ13YiD3M97z9Etv3kbpXYXWT7zKX+W2IqQ98NRm90ilisT00SZ+8AjrCLRINL4rm423J0VgYZ7oNgWuG31rQGqXq/tWNIDKIJ3sIJlHy38z/vwCbC8Ok4RNCqhqWwNmPvFpqqrrZtOGT1FMYfXLUZB/qpXfARW8jRdlhSQ7m/TeBLzS4Z4grXI0Wg1vV2vpLhjsreFIM5hDy58fYgUOa5hYWBRqZLxicDspcv2AKdvnzr4M9VXVVF0+Fa4C82slFh9iGVAiAecc8CjWOQUQ5XIsrgo57PAMWYtSG7e/t1Ab/QEmnCRCkOsnuoQeM9tjUlAXxJypUBwOWUrb1bfc2pzyXBX3mf/XTx4rkXwni3c9KTPa1WFwFIwsuDBt9kV4SgNvSMziODXZ/gr9H1TJQozU10io4cAtDLAqCZYuzDLS1T8FwxG5XI/wkLt5it+2Y2R9XLw/Wn04SSREqsMPfAzJ8xjqxPDpJ7AgZd0oa6WBZYDcEksEWlQUJI2mJMEMUEHkMrHYd1d9LFxuKPlMnXNPM42sBE8Ntqr1lYRVVAp5Po5t1vcRKrE/nOb4sr0Fe1aS5czwNMydUD/cZyAmvMrvZU+mJqxL609l0GCrEZorPyvauQVAqXyAvHj3/QCOoYruk32A69cgs8beY9sscNgLLOCQgOXT7NM1i8X8c7Y0GXXADHJsH2nRjEMinpHQ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dVR+WJ9GCvhFyd5MQ1nfqnbo8qylOM26Y+4PS4+FDowok7ukd1BTXllipXIO?=
 =?us-ascii?Q?1k9fDI3IiYB570tmfWpjMUxygtgbqPLxXg3EZIK8boLrlf+7zk/HAA1D9xc3?=
 =?us-ascii?Q?UrS7oP4wohcfrtai2yBURU8r1JjUdPz++JDq/lSHF9TlGmko69bofqqT+ciH?=
 =?us-ascii?Q?HQIWhwnRz4M3vSp4x2P9g8asE6DUfGhMOVx2iC+Ff3xwOSByOs86uZbGU4i6?=
 =?us-ascii?Q?jamQ4CRDbR68qW7kYoHWifLKYy5+UZrOxV78yZIKcrOYC8yz8f1//burjH++?=
 =?us-ascii?Q?sLbaC4QOY1+mqGESwO0A1uLB3NII/BQazDcunE7nY4/gVp7XT4fsm9nL21Jo?=
 =?us-ascii?Q?WLtUnTKT522570MTS0yNOtcb6/NvgeRTeQq7Ca/l3F7eY3pNWYGbc8nWUuk8?=
 =?us-ascii?Q?IlABRXcwDOJ6fbuuNGDkIteWAdSoqL6g7sEAMzwQrTs7dCoZuQfKJaQge3nf?=
 =?us-ascii?Q?7wuG7FKg66CZjxLlFmg+g55IbSO/Gbcno596fpqSwaG5j4H6IRVZB4rJTij5?=
 =?us-ascii?Q?VAA4r7Q+H35BMYeFg7NnQOJUHPtn183JnwkLu/tucm2Ise3iboe9qO3mIQ0E?=
 =?us-ascii?Q?A7sTV6L7iv0Qmmg2WtSXldi5oQPaPYpAzFzdPNKi3FQaQGBOxSKIo2dncuQm?=
 =?us-ascii?Q?F6SRJBa7oRymLHPxTi1DKFHOXCTj0CIv42Ofl62HPreHFaXdbfMviDuw7R/S?=
 =?us-ascii?Q?wQuDQT5HzEH92Cr/M/ydnALHwhL17miwOw4bFvTvNezsnY0GE59LZ1zVkMG9?=
 =?us-ascii?Q?vJXwj3PDm0OzcVH9ngfhcYxQlHKwTHvUSZ0ViqgvLhI3tKJsRaQYqMTCdAJv?=
 =?us-ascii?Q?j1Cxu+s6XuCx+1Mmeh3Bd5bPFPpgTf53H4hzjePebY/92rkkN1BZNCaezVid?=
 =?us-ascii?Q?GS7GbJq6jz41gAC0ahvNpR6SQrVa6cQQ3hSg/RCdl+gumwMPtGOs97/Hbmzl?=
 =?us-ascii?Q?MSUKFNBIgyTR9gBGmmQpFL1ycwTuG6HLFYUUH+TcVML7dC+ErEW6Rxh332kQ?=
 =?us-ascii?Q?mWs905wlaPSE6aPnuYilxMdc4+MBeBrQGtn0phpJBwuTyddxwaPT+x1hKMUB?=
 =?us-ascii?Q?60iME4AK+GKy8tnQRDZWJhkWNFKOLKKUb3aFAuNRZiuEz+iGPT+vrermY36E?=
 =?us-ascii?Q?US67AjlN47aRLRBUDgMU5YMOS7k97cL4ANPIfqcdicXgFc9WaS/h33QWUFD2?=
 =?us-ascii?Q?Q0rIsESR3wHqD/H0avk/cLCvBxE+yGbQzM80rZGdv88ThNJ5FMj7JkmqKpUw?=
 =?us-ascii?Q?hYYJZwGi0l+z+q15EjaNzZNiynX/0mM8/X7R3P+6/IdV4izZOTf5zWtrjYds?=
 =?us-ascii?Q?9QeD5zbU9H8oEFmk3y6t8AYily8D+ux5MGpIEPYN6RY0h0UPkG5vGth00IgS?=
 =?us-ascii?Q?ioyDiENixMPJqAXetXcUg6jdOUCj+OPD56AoVy6AXoMC83Fmb0leCGTuqnd6?=
 =?us-ascii?Q?6voVzydKA1klWIHsOy5XtxGEHPIb+05mmru/P4gM6W2xZul8dR1+PNNU1XNp?=
 =?us-ascii?Q?pWLUUCdwNHxrOpGwvRIPV3fc37/tQSezLJXljYmpuh5knLQR9r8wAi4xVB1E?=
 =?us-ascii?Q?nUn6NR0Qw09kKakUmzun04qk8vfJSLbtQ0DdiyEk4WbJaXNH82qT6J5sGP4+?=
 =?us-ascii?Q?Ct2FnGJiYDWN8ChzuhOHdfXfNRUpMKVj0VQsOrk8CziQvHBdOgDZAEJJeOJP?=
 =?us-ascii?Q?0L3tzqjlvgnPGx4Tpw9DRxncfZBYolmTmyzu6ZsrHj38m392?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: mqfuwmJsQ1AWpbnk2lrw03wUehe9X9YLLj6/L3ps8+RtHfV8/F5UYnLoVPFA/EJOv5r/Ug2BFNm7m7zhTaTOcoi0mDW9YFjI+spEnHXpcScVE9chPbQQBi2rwphV9ZAm2zS6g2WhBlyRhTLjqtw2qud3dZF2pWqjYyJejrwAbQFOL+6PSE+5J2ToAk7BIWSGo8WhGp3g+c3qdbrmWCu7Xmq2p/p7efE+PFkH56UEcEUyKeNw//2Jq6IHb4GR669fb0GUPr2ZAweVYhZx6pGzf5nOqzjZplKpoy/IioIAkye7h3925U1nfNHM4gT6NOfHfuoSP7ApaiL8HfonUmXaJw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c6a5b047-c49b-4ea5-23f8-08dea9f6c54a
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2026 16:04:06.9639 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SFHvtUrL6COqup5PahQsB4Oy19q/FLcXy4bj6XodNh6T0EoiG7g6MztkQF7wZlPqUFwSupY7aJZ5jkjG/qlSjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8463
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777910655; x=1809446655;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3D64npJsn0io0FzXOn+se9lPFQojzV5YGSFtKR8OQqA=;
 b=M71xOyConpIXT6TZdVVz0iZaa6OzYlF6b86u2SZAbfWNuNunOP7Njp8M
 D04QEs62mjSD4MpOWebldcupXA/jqBbEfiwqm7UIcO0P8fQf7Tnmb0CTg
 iZTKtIy+m7GhGnEyB+XRYyZkYOkAq8rX9YbbFy9qVGmO/1AauA8zp7Q3N
 1oRKvPyRIOizOsF95ZR4Yjlt1BPe/TQOxYeQ9/doCKCModbJTD5/oo72r
 KKsXs66tvIGPEBAKBDQzUQ/8gDWmi/ZEnOcA6Z3EHIKolM2GQLi1LcgUJ
 1+RUnROrKF1fH5TMjd1Tyk6gAN032KW/mfB8mj5Ye50FhA/sfZJZ4vIIc
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=M71xOyCo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix read_dev_clk_lock
 spinlock init in idpf_ptp_init()
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
X-Rspamd-Queue-Id: 842014C11EE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:emil.s.tantilov@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:richardcochran@gmail.com,m:milena.olech@intel.com,m:jacob.e.keller@intel.com,m:konstantin.ilichev@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[lists.osuosl.org,vger.kernel.org,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Simon Horman
> Sent: Wednesday, April 8, 2026 9:28 AM
> To: Tantilov, Emil S <emil.s.tantilov@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; richardcochran@gmail.com; Olech, Milena
> <milena.olech@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>; Ili=
chev,
> Konstantin <konstantin.ilichev@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix read_dev_clk_loc=
k
> spinlock init in idpf_ptp_init()
>=20
> On Tue, Apr 07, 2026 at 03:00:22PM -0700, Tantilov, Emil S wrote:
> >
> >
> > On 4/7/2026 9:02 AM, Simon Horman wrote:
> > > From: 'Simon Horman' <horms@kernel.org>
> > >
> > > This is an AI-generated review of your patch. The human sending this
> > > email has considered the AI review valid, or at least plausible.
> > > Full review at: https://sashiko.dev
> > >
> > > Simon says: I don't agree with the regression characterisation made
> > > by the AI review - I think this patch is good. But I do think the
> > > issues flagged by the AI review warrant investigation.
> >
> > The point of the change is to resolve the use of uninitialized
> > spinlock. The questions below appear to be generated around that code,
> > which would be out of scope for this patch, but I will address them any=
way
> ...
>=20
> Right, I agree with that general statement on the review: it muddles up
> potential problems in nearby code, with problems introduced by your patch
> (none seen).
>=20
> I do thank you for analysing the problems raised. And I'll leave it up to=
 you to
> provide follow-up patches as you see fit.
>=20
> For this patch, I think we are good.
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>

Tested-by: Samuel Salin <Samuel.salin@intel.com>
