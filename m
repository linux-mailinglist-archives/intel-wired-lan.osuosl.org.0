Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aF2NB9NzAmqAtAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 02:26:59 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA6F517DBD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 02:26:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0591E40B1D;
	Tue, 12 May 2026 00:26:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Kd17gvDTl69B; Tue, 12 May 2026 00:26:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 744A540B1B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778545616;
	bh=XQlmv7wr8Yn3kl/P6aDWEznZrojb/afPJxlHfN4c8ds=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tr0OBu53QF1AORihXEpbzQsyQCkYLu8aaXA9tJLs6QN7Snd6MNcH2zYEcpaKOPBE1
	 MyVGg0Kfo1pDRYh6XecNehoVjY5lVxWvKUy66dTa306dpWjM7BpAmQ9hYVOR//TLT7
	 ctdcqIneHcuxrVciEku0Br+mSwpyVb1LVOeasY/s0PB9TjvIYrjb0awhPAF3GYgXnp
	 UgAyHDEpIc9d6fXg8rA6O1A3SDOxHX+na8fJ6uMQ/fTACZqkD0DzgloHDjwPMBy1JP
	 0u4pSzcE8orxQGN/2ynuJOXa2lDoYLRRWfMcAIVfmMxyX3H6jnkWZUciNw9Qa7wA27
	 8P3efc5/LiCmg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 744A540B1B;
	Tue, 12 May 2026 00:26:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 96CA515F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 00:26:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 888BB40B18
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 00:26:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EjKT2shTJmPi for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 May 2026 00:26:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 92D6340B16
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 92D6340B16
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 92D6340B16
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 00:26:53 +0000 (UTC)
X-CSE-ConnectionGUID: +jknM2k8SD+NDaqbLi5k2g==
X-CSE-MsgGUID: Z9iWO4zKRwuY91zAssbIQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="90546658"
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="90546658"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 17:26:53 -0700
X-CSE-ConnectionGUID: 7UlmXpOrQDKznc+NBUODUA==
X-CSE-MsgGUID: ASTyYql5TN2Y3Q9ltRzTeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="234938568"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 17:26:53 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 17:26:52 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 17:26:52 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.46) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 17:26:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Wx7HfkhsAXSKJYQK0rcoWHPigq3WfdtTwUE8rAh0fFfap+HC3F27KINU/90qqh2Jdc0lZpb46w1QPoxRAnQiONulUWbPvuo2SonVHVi97beutPzBfPzfqDosJRTZFuTS4cTDgN/oA1ZFlD9Ni+p+Nvh14PgIypt+npwLMa0/6kMQY514ozvKJc6eLmIxBJBuuIFEjHfyRBHcc9y/vwPnu0xWBpeCRBWNyICrG/b2/oTDG+1bPAuGEbuGJFuyWtnqTUGpCdlreczFaWzCWm+SW12HpqyXgykl86Wfwa3KI+Jfdj/kjSqML3WjcX5WbXS7xIo8lxyb1CUzMvVpuxB5cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XQlmv7wr8Yn3kl/P6aDWEznZrojb/afPJxlHfN4c8ds=;
 b=NKBPj4RjkVZUyp8VG2BWOzs7JTj4A4TKrLOzEkYQboA/ovMwdkUwoFEaSd8wNCEbekHjkI4Em+ltdwCtT/fS/M2kAjk7Vk/0tesYX/sOvaDvA+SjekWWTfqm4iYvDhJnJmxlpMxbhckZ26QeOLakcbstiWYI/tfxiqZ/FYADT3+bEnEZIJjcWrlCMg+K4wGE1Ongpsoa4MEiKRjVHlVHDHE9gQA32xKaj138p0usrNhLCO3Zem6VHIjlrooWRwIOBR3FNKp/WCjrjldpqunKbysxT1aztyVrUIK/73C7N249NlSywcBE/Pcs5JD2TPOrKjzfqcd9OJBp2nBTU5jDWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by DS0PR11MB8230.namprd11.prod.outlook.com (2603:10b6:8:158::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.23; Tue, 12 May
 2026 00:26:48 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%4]) with mapi id 15.20.9891.021; Tue, 12 May 2026
 00:26:48 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "edumazet@google.com" <edumazet@google.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>, 
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: restore PTP Rx timestamp
 config after ethtool set-channels
Thread-Index: AQHc3fp7sh3wsyuiPk+OKsorAO+WLbYJj9kQ
Date: Tue, 12 May 2026 00:26:48 +0000
Message-ID: <LV1PR11MB8790B87AD42346A54A37177690392@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20260507081653.1717172-1-grzegorz.nitka@intel.com>
In-Reply-To: <20260507081653.1717172-1-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|DS0PR11MB8230:EE_
x-ms-office365-filtering-correlation-id: 53e04302-00ee-450f-2aeb-08deafbd27a6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|38070700021|3023799003|56012099003|18002099003|22082099003|11063799003;
x-microsoft-antispam-message-info: yUOXk9OyiC1eREtmQ+SRfyv+OtlyzS1M70Gm4m5B4h7rRMN0f4yECbtqpe5sbxlnuK2oeuAqnI2n3iGvIJJ4+j77gMezhevoNlAjiaLZI/XX/VFnFbHBprWIkvVHXA5P/BecGUSgGTqZhASWS5SUKDiRSHvIU5JH7HstMqUkI8BRzOSoYuAv/OQBoKHUpnkA0Dyg7uo1JIKpHR4lDw4xR294QuydJ1ZW7Ng0zIMGyJYQBBrgAY2alAPLbyfPaX3+JcdGzb/ijv50g6frG3uDS1Vw2LMo2z94jxvWvFWlnrkOXzJyVRzvuzbTnBnmERGaHc7X2fnfEps0Xky0zN06UH69bYy8eC5U0ZFV7HTj6o/QDOptYeTc9iqjn3y4dqyHi0IbiMKVyKWDpRvsqX4UKDpkzg/vlMLaNalV7ZFLAuyp7IiufpRa47RIp5//bwnM9MqsgH3uRMqvq/LsG3wvu5ZY9+AY2yqIDuBlQVxyr0sEXKylxx1aDkEpZ81UeZQaHXaNMPAhO8z+9jJECiKFJUXTwqaXOxp+lNEBg8ao91oKAixcqm2ZP6wHxPKESXEXZJzCX4VznVmglJXnohfQcoyN3Dz3BS0L9gh+CeIV13dOMwqz0t1YYXIBAuSg4sUPeid7LYTruyyOZwXwTdSmdSzBdVljQVKGzTXZWWYnjmwZEMMDDjA1yWGTjPn2i3mCCyrv28TwG18DfQc2EfpluOlND9zGHQHnJKwo5pUr32QppcEBZwqX+KIpb+J9ZWzG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(38070700021)(3023799003)(56012099003)(18002099003)(22082099003)(11063799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gl2oDgx5bLpqq7eIno46AujEP8jnd90mKsKdfx6eBSReqqi759Zh8FMCT39l?=
 =?us-ascii?Q?pX1ej5AN+g52CCtXHdXqKyUEkjSxNxev/WRw2Jz4QFiUdAUzpRzYYpiu6vvZ?=
 =?us-ascii?Q?CjIioNzPK9O0fL/y3BfzwXOP7tti/E/YE0O70jHjO86j1Ffcb5X4K7TjuGk4?=
 =?us-ascii?Q?SQWcRqQoheYHpLqCWi6MGm3+iaE7gTBVj5DtVmd2cujjssC9jr5MSy+3BvSJ?=
 =?us-ascii?Q?01e1AEi9OSl0MBWd2nFD2YlFY2n4X3pDlBxuL/DvbYMlxrF2G2iHbdLKH7IG?=
 =?us-ascii?Q?G033HbQHAo5L8FYVqJCSw7SW50HqqKILw8dRSxxlXaFVsRjOovIaqhBNeNgP?=
 =?us-ascii?Q?9pKPN/bJXHa+Gslp9eRw+q73oY0J4K4yzOXjINf9X9UNDvrkkuTOltiw/f0I?=
 =?us-ascii?Q?H8nnvniLjlqYm+VdZy2Qk3bq95GQoq4/4YIdkO7pesTDAcG+4OLla0jXk5kO?=
 =?us-ascii?Q?B0uXGBZ717D9E/5OvaF6xHBwkfJAmPE6SRSiXUp4+hdAf+YbrGROFi9zGQSn?=
 =?us-ascii?Q?vxSPKE3eou7tPTHVvIZLUDmn5/+TjgFQPKMkGRdmchYB02B5UCHsrXzvRjf5?=
 =?us-ascii?Q?u7ZOc6+QxUSoj38cEwl4Uu7Vz2DB0pVBmCygM3fIUNT24GtKf3na0xSID+LT?=
 =?us-ascii?Q?qzi5KxhLzBo40ov9MlZjYcaGBNRW39FWStIcwSzOEFe1ZwdYZzW+FOdlU6K7?=
 =?us-ascii?Q?3thcng0mcMg2JYHm7friw6/eFUXBza+I0rkPnHKY5hVE5wIFlIgcWTirOtRC?=
 =?us-ascii?Q?F4u/wTvcXCduOHXlvjiO/b/LkWWkqFU/lMkzn/mmTfYxuEV34UmV/bbrzaZv?=
 =?us-ascii?Q?DYuQxPT1P4xd6XbHsw3TPcj0GK9NtTLjw/0jtgvmsrY6rNZmpHIoXpQ5ppAi?=
 =?us-ascii?Q?MzORd3vzyrhIN/1wEvYQ3HYcuwAPY9L3XS+nw7QnD+MOHlG0EXWi9udfcx1s?=
 =?us-ascii?Q?m57Ceib1I6soTR/VR3ls7nPzJPLuCbzjpwOqSprOaZsTMe6CJ2teyriEPCOq?=
 =?us-ascii?Q?NtJZ5oZ94lBZHO7xwAVpvfBuv4T42DudXhOkp3JelFYa9x+Prf9dmLbSNSow?=
 =?us-ascii?Q?PhkhOPOiBf5ua9WPogoORRLAiaVDnK3tCtl/8gU8kgkWXohgbgZshZjS6GwK?=
 =?us-ascii?Q?sQDCfTuEVSugvbZYgdvl0ilDK8shwlaZ5QuUOXpYHXB16a/CsdcslrfyKhlv?=
 =?us-ascii?Q?mYeKjWobM6OaIrYdiip3L5lS8rAlj6KYx3i+Zq4N6xJXjONG2C+Hb6d872GC?=
 =?us-ascii?Q?zJawZ/NXjtOakOg+ji+ZHPig/fIshybqXBVzLyy9+H17JuIe6TsGt5bVotKT?=
 =?us-ascii?Q?AEAa3DNDVAtsSL6wmlcsiJt51oAqNXCOzzuIoY1Y4m7++20aDPauGQJgjoLv?=
 =?us-ascii?Q?PkrF0jQP3AacyO/k4SF5LmlCpPQD9gO3wTKhwTKlap789EsWigoJ7X0M4oAE?=
 =?us-ascii?Q?IO7Wz0cKwgMUPzR2K9Ekhh4QkBf1YChsEBHN1fglNr7X1F5a5s9igb9kFU03?=
 =?us-ascii?Q?pCRmSGYGhcAPMWs784kjz74Zf0dI8ZKYIedQmpXTn/WovGOpKrSb+KP3XfaP?=
 =?us-ascii?Q?CyFbAQcVnIeGKfCZTS72v5aUUiFEEPqgEeKXUG7fPG3LnnFwH0b95sy9GYpQ?=
 =?us-ascii?Q?fs52nNcMu9CH7saUpEHozNk/z6nOgTKFzy/cCLe4ISRASncX6B+PjyPBGd2o?=
 =?us-ascii?Q?6hifVtZ78MksjHkq7c3A946amQLYL8gwY0ZDV4TAbZZL9xSR7Kg00V1MOqdn?=
 =?us-ascii?Q?0suQ1PXw1A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: XDuSSunWfpcB7BvBUbkE7YIRiesdZheSaENYLIufwiwviTubRO4mtHjWOFB6zaLt/2bKONYvLSztLHyILs9nC6pp92AW8TnYpQ65RJojMaWmCVjn4bH6h1QQwu3ClS/jydRTlKyxqQDQsq9LI3AM/5eGwUodiCHeW15camRqTY2v14vZmwZsi9z7lOrSyufRUjlREekIyGwDclpfsVD13m0E9L2TL/3T87sMCVVHVRBAbyD+GM30e+uOzLtivrmWjfDtGWruIHV6TfHPadWVmaahbpDgpvYHPM4uSrCJyo51sNnaSZUM0v38Gu+76XZKe4QEcALi9pXbnEW/BQuAPg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 53e04302-00ee-450f-2aeb-08deafbd27a6
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2026 00:26:48.1464 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WecfD+6+raAUHjvJBoO6P9UnLIiOSj7876GcZ+pTN1IDoNaSINgxvxDfdTWSd5YlXWVVYUviqv39XFTjDISq/SN/MP4ZntUnvW5pFnj0L+E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8230
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778545613; x=1810081613;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=O8MV8PajszAi8VpM5OGEVaIyh0be4sOPfFO/mqrB2i8=;
 b=Capjvdgr3ADQ0cPL6gfBjkYjlVdQSsPfAUnsqR4fZ1xkXeaaG+Pbnjp7
 y+DrIa701lwdFVGC2oOIvCiEeMV2HESE+ZidST5cqTYKKWhKkZIMU8lCv
 hQG80MXhuymnOufBWBDaxAQ1Wl9jEM96/lZ5x3zJn3hUfQ+1i0JifCTms
 tTk+X/CLlv4z5YXnDx1x9d1Xzth1pKWXGU4aXwL5AwumW5ekYVxtlDU6N
 B00lVxfBZn9URw7ZMktg6nBIdnwqX8vWX1/Rb+MKQKsDQ1bPuNiBGP4lG
 BL3NiWIzRDPRJSsO+zNKyXGkRPHEl4VFb971cAYWhgx2YMTMHJeezw6So
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Capjvdgr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: restore PTP Rx timestamp
 config after ethtool set-channels
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
X-Rspamd-Queue-Id: 5FA6F517DBD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,intel.com,lunn.ch,google.com,kernel.org,redhat.com,davemloft.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of G=
rzegorz Nitka
> Sent: Thursday, May 7, 2026 1:17 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; richardcochran@gmail.com; linux-kernel@vger.k=
ernel.org; stable@vger.kernel.org; Loktionov, Aleksandr <aleksandr.loktiono=
v@intel.com>; andrew+netdev@lunn.ch; edumazet@google.com; Nguyen, Anthony L=
 <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@inte=
l.com>; Keller, Jacob E <jacob.e.keller@intel.com>; kuba@kernel.org; pabeni=
@redhat.com; davem@davemloft.net
> Subject: [Intel-wired-lan] [PATCH iwl-net] ice: restore PTP Rx timestamp =
config after ethtool set-channels
>=20
> When ethtool -L changes queue counts, ice_vsi_recfg_qs() closes and rebui=
lds the VSI, reallocating Rx rings. The newly allocated rings have ptp_rx c=
leared, so RX hardware timestamps are no longer attached to skb until hwtst=
amp configuration is applied again.
>=20
> Restore timestamp mode after ice_vsi_open() in the queue reconfiguration =
path, matching reset/rebuild behavior and ensuring newly rebuilt Rx rings h=
ave PTP RX timestamping re-enabled.
>=20
> Testing hints:
> - run ptp4l application in client synchronization mode:
> 	 ptp4l -i ethX -m -s
> - run PTP traffic
> - change queue number on ethX netdev interface:
> 	ethtool -L ethX combined new_queue_size
> - observe ptp4l output
> - expected result: no "received DELAY_REQ without timestamp" messages
>=20
> Fixes: 77a781155a65 ("ice: enable receive hardware timestamping")
> Cc: stable@vger.kernel.org
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 6 ++++++
>  1 file changed, 6 insertions(+)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
