Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IPruGedqDWq+xAUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2026 10:03:51 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 44DE0589585
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2026 10:03:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 99D2741247;
	Wed, 20 May 2026 08:03:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b9mbR6J5qdyH; Wed, 20 May 2026 08:03:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CAFBC41244
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779264227;
	bh=zvykMXe64qS12wnlhrBm+ThGg9iSXmmFBTumGZW5z6g=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YIsjFeLwB/AI0GxAamkW3CTJhBgvGz50zZr46wT6oFT4M8Btj3RRuvfOGiZ+vePwu
	 9+RenNqDk6AiMT3lPIaHkKkVyNTvyl3DwftghP0ULJ8i7JPy9pPt7LNobP5eO5NtpI
	 qcTMP19XGaYHcj4DaqzhCy4JQYEv96OYTy/nZacXImz8R1SiIvYI5JgfYMp8pIDFcN
	 9V43toFaE0ZqKCmMdt/p+3KrTfydN4267y2otOXlZHYMtr4HdiIcoeJRoTe6LhJ66O
	 aWCs5iEpU6jTslmFfVnQtoNOHD/S14nsSJ2Pc4v7kLEkcHcP6wrfZxQGptuCWtDAuD
	 TtOlcnSHXRSMg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CAFBC41244;
	Wed, 20 May 2026 08:03:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8608F1B2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2026 08:03:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 83C9E60F31
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2026 08:03:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8Ycylweu7o9P for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 May 2026 08:03:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4C71360E31
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C71360E31
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4C71360E31
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2026 08:03:42 +0000 (UTC)
X-CSE-ConnectionGUID: 1DDGsZnrSkWwaxpFP1PzeA==
X-CSE-MsgGUID: 3SvtASsRSBSlH3T62yhHvA==
X-IronPort-AV: E=McAfee;i="6800,10657,11791"; a="80004598"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="80004598"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2026 01:03:42 -0700
X-CSE-ConnectionGUID: 8wTxBgexQaeP3ui1Roc7Ug==
X-CSE-MsgGUID: ABHzFCE8SwKNt5yIbcS9tA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="235639102"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2026 01:03:42 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 20 May 2026 01:03:41 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 20 May 2026 01:03:41 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.16) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 20 May 2026 01:03:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jDkyS9bsL+DqORCBJvyNrJXdE8YDwDQbKjBPrghfJOTNfO8Q4TZd5j2uEyLMmfisYJmvJ97shVSNdCtAnV6A/wgBmc+v3g8+eYc14SyG+wglNZ9OVxMfruhsRLd7/pqtUl6o3oQzRwjek30xUXSYD54QcmQ8wD2MwxzOYgxWMdr9RWVvBa/TChBQQpjcGI33CBnxjoypGx5cre2c/wWOoDswWkSOohJUMk1mHjS7fRioS5sH2JdUv/utC6s7zmbXwbX5VKA2ID2KgjZgY2ASxe6GrbSRT50FNsFAS6lUPbeL+GfhK/V6+kXKsMUNxneSD+mSQuu9X9dVjfTOwR1o/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zvykMXe64qS12wnlhrBm+ThGg9iSXmmFBTumGZW5z6g=;
 b=aTpxinZNTy2AJeKR/dXpz7tMSknAFem5WBkxjc1knRKhw/RUeVTLsMLlshym2NL4vsaH8Sq4B77zRTXonjDp3Slv4a4ZSMCD1NIFnW79WCp7LlirjZ/DdiEkaRwwr8oJLCcBjLrivXwWq14qkj7blrWINYDpVl4WSBTgliFPqNYgOd4Qavkph4Cw9ELBT/QrmeZzdKt0rvuQLnm2sEaw9SqBM+C17heMe7ThKNrNvCRzunKBzjSsHbEel0X/ojKYixkdeliUKids2RAqjdKrYuYd4l2IW+lmZqFRRVPzRzJcqwo80F9Pm010eXvf8PO1lOwuR1D4b9HEaRPskCFvzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by SA1PR11MB6760.namprd11.prod.outlook.com (2603:10b6:806:25f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.23; Wed, 20 May
 2026 08:03:30 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d%6]) with mapi id 15.21.0048.013; Wed, 20 May 2026
 08:03:30 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Schmidt, Michal"
 <mschmidt@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Andrew Lunn
 <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>, "Nguyen, Anthony
 L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Keller, Jacob E" <jacob.e.keller@intel.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "David S.
 Miller" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: fix stats array overflow when
 VF requests more queues
Thread-Index: AQHc1lk3eR/95smh/kq0eDKPsPHBp7X94ccAgBjPuVA=
Date: Wed, 20 May 2026 08:03:30 +0000
Message-ID: <IA3PR11MB89858C8AFFE1B941E5928D788F012@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20260427151827.43342-1-mschmidt@redhat.com>
 <3bce6411-6d65-4f4d-b5db-53fffbb0b77d@intel.com>
In-Reply-To: <3bce6411-6d65-4f4d-b5db-53fffbb0b77d@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|SA1PR11MB6760:EE_
x-ms-office365-filtering-correlation-id: 29e1f8e6-7f86-4f84-9e62-08deb64647e3
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|4143699003|38070700021|11063799006|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: 5FtPijdDnURUjk3wh9SzzMgBLsg4wlN6S9lSR2d/aJoGSSfdZPfn+f9SxcCofSu3EadxWpA14wknOCC7fdz5OLmR5nuYqbRfqygg93WTs56SBvMXzrLL2n7TzgUPrgJEHfAZfF1Uv5Otcd2lTFFrQ6P83RdWv+T6znOQKazEmnTD7W6FSid7EoLVOFGHa9E0SgDeDTgplUVPNfgG/pxJcOZ08fyaBcKkASIPMHGynYvtsBDd5T7DGU3gODYvxWCD2QQAJX4AkcfeBqNaXRrEc3rKKmMoymBAsY+On948K0xnn/Ez4LneFWWWaQUG2ycaAmQbWz430omZAhuh/AGe2Z9C1biMGU2rsJ/x7A4z+jNlFX4Uj4iUwqDXNpB3he2Gh11iGTNUkkqAuWxsjtEV4bb1DH7l4ubN+VeBS0WnV6X+P51FMwH0Q8YJWps7LuZhmFVHbZl/q5/3bENilElVMSUKA201Dq8Bz++mRvHW+hlEX64NRaolwh22yNiKARq3DgrYF4Ndbh6L2gzuhSwW1YKo1COdQoTKJXVdVdLkuBlBBRLmJA7DBxEkWLtY6Gze5+mJFMFlOwu6CndfdK2uWb9LfYGXqvqVT0bovUTMDq/70IvnEQUYqjArHbglZfb0ZRx7hMfbqqjn8motRt2hl+0Zlj7i2WMDXYp4rAioA+Ch9C41VSFfZv+KWNvg2xratGwmV3UdCvgG40C2LrzJ88p8PM27GACrUed83HfMsviGOKVo7yKZwhZUMP2TtJv+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(4143699003)(38070700021)(11063799006)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VHo2QmhNR05YMkNhUVN6WkRhNnErWmVoVDF1WHhQTHJKeTcyTnZpTW1ETGs4?=
 =?utf-8?B?YldPYWZ4OFhsazBtZjQ0NGorNGZ3aTIyaXE0YWpMbHdLL3FhUjNmT0RCZklQ?=
 =?utf-8?B?OFVMNERzK3N3dE1NM2Rhd01Gdzc5OHZmYms2SGhhdnZrWXpOVTc4aUQ3aEhX?=
 =?utf-8?B?UzlMRTBXSEtvdlp5YWhMeVhiV2puZTByWkpvMjhoR3doV1NmelR0SlZCeFRu?=
 =?utf-8?B?cm9vWEE2K1lua3Q5WEN2RjZHK3RmMHowRUxESW90cjM4V1I5bjNoQWllMFN6?=
 =?utf-8?B?R1RvYkRjK1BrdE9IY0RTZFQrTlc2aldXSjJuSXdQN0hzMWhVWEZuajU5OFJa?=
 =?utf-8?B?NnQ5eGxqRG0wQ29HUXZ0Tit0UlpqbkhpUndoN2pVRWlIT2JFZ0NQUE1peDJN?=
 =?utf-8?B?NHlDRktLclkycWRJVUJNVU1SdG5GdHNCeExTY29HWGcybFNrQ1cyY1IxUUsw?=
 =?utf-8?B?NzhWYUVRbzQzM2FVSXlBdElxWVZCQThXUS9UNEpQWGE3RkVvNnp4eDE1M2Qv?=
 =?utf-8?B?ZTlZMFByZUlONkJJZ2N6YmQ0VU5kTk9nS1FwYkpvYTdKOVBuVUFSQXNLSkxr?=
 =?utf-8?B?M0I3NXdUOEtHbGxzS1FhemtqUmN5V1d4Rm9DYWNWWnMxb0Q4Rk1VN0ZxTnFK?=
 =?utf-8?B?ZE5xc1hsbkVDc0JHOG1lZ2RQM1pIUVU1ZTAvNitOdHBMWHl2VXhhRnhoOUdN?=
 =?utf-8?B?M2xUSE1wR1h2T3BMaVhtQi9IVGlqTEJhamljZzdEWTlBV1libm8zdEhpQWFI?=
 =?utf-8?B?QnN4VUZwWjFWODlaTHNQdXpwWDBzY0sydHJxSFBoSHlmSEFuZkdUTExjR2p1?=
 =?utf-8?B?SytubnFmWk1ERGYvWjB2RHZkZnJJZ0RvRmdOMVlnbzNkUGZWQ2xQdXRWL0N5?=
 =?utf-8?B?TkhNeVpDNklvMXFSa2Y0SnNpSGxGb3lXeFVlODlJbzk2MTUzZytkKzZaWDFP?=
 =?utf-8?B?TlR0c0NaTjZPa25nNUZNRnlwVmd5V2xCWFY1TC9GaXFzUmtQRU82ekZBdHo4?=
 =?utf-8?B?WHRkZ0xZTjlvbWxTZWlwUCtCb0VTWWI1bkx5TjBROENUVlpGNEdmc1d5K2tE?=
 =?utf-8?B?YVNsVWtPRDEyRGtpZVZ4NE1mcGZsYm9Bcm5NSWZaV1ZHeldvM0VoRFhjNUZ5?=
 =?utf-8?B?ZjcyUFpvSmVJUHlCWHV5bGUyL1RGRDkyR0I2UGhLOHJqV2VGc25LamxpWkt2?=
 =?utf-8?B?UWdUaEc3aUgvYmgvNWlVSHJ0cnV6dGRSbFJvdXdrMTR3M3dpSmplWGhZTWFT?=
 =?utf-8?B?c1VUZGF0cEpZSXJjNEIxS0lTdk9jSUVUTlp1Rzk1M0t0U1VEaE9ERTl5T3Y3?=
 =?utf-8?B?NkVvdTRMOW9kRWIzU0pNNmJqekZOenZncWZCOXd6QitZNFB0clRScm5Fa0Jn?=
 =?utf-8?B?aE80MXJsWEFyak40bXBLaHhpSUVRcVVlRjhxQUpXcmoxVHlwOU5FMEIzVWFL?=
 =?utf-8?B?aUkrZlJtQlRBSjJnWUt1bUh0bHlLS0s0bWFHeks5RldFUDUrV0lVM0ZDRytC?=
 =?utf-8?B?eWFWWGs2cEZ6Tmw5a1ZHV2UwdjNqWnFjekh4M1VVSmRnYlFkZndRRVBONk0r?=
 =?utf-8?B?dUdUOW8xcS9XSjB4cXczVGtHT1BjbTJvdTM4c2pwOHdMQ0pub3EwcGUyMitF?=
 =?utf-8?B?eWlmKzRBNUVQSFFjR2JpQ1YxREtmdHFPU1dZYzEwUnp3Vi9oaGlIYlBuY1Ji?=
 =?utf-8?B?SWc0Z3JkZ29ZY3hud0hDaXdUdEpkcmEvaGxCZnVOYzdPMEYrNFdhUE5iUi9Q?=
 =?utf-8?B?YjBCZjZmRXdLcXA0ZXl3RkcvcUV6cU9CZTM4eWt1VWFvZDBSR0JxWDFtakpD?=
 =?utf-8?B?KzMvSndWV2ZqMkhldHlnYy9GdGRScHFFSmR4RG1KTllKM05xWDRKZjNKS0U4?=
 =?utf-8?B?N1NkZ01YWGdpUFhlZjdOQVY3YXNIWTM0TElKUmVJbnNVcGpNa0lGTmp0YVUw?=
 =?utf-8?B?NEE2d1Y3eXF3Y2VydHRWVlRGbEg5YmZoTFhYN2xaNmc0Mzh5eE9BZ05DT0Rw?=
 =?utf-8?B?bGlBR2dHMmh1NDdCRlFFckFIcnRVdTdLMlRZZFJ2c1VwSXFVOXB3bHBtOHo4?=
 =?utf-8?B?RFJwZGdQUW5vS045eGFmdGNqLy9JdGo2WElFem9VSXRLcTJjdVZEL2w4cDN0?=
 =?utf-8?B?NTdkeWd1MzUxRnVFeEJ1Wk1IbFM0cjQ5OUdjMUtZaW9yLzRVSVpoZXRacjQ5?=
 =?utf-8?B?N2dZMEN3bkFrK1MzZmhDWW5HZlJ6ays0S0Z6cTY5VVc3djF2aHJTY1VHUlY5?=
 =?utf-8?B?SHJUNUN2N1NSRVhBNkJHdFlkM3o1WWJRbG4zVlpFM1FEejdIYXdWSEhLdUIz?=
 =?utf-8?B?bTFaQXA0TmhXM0JVSVBqNS95a0JpRnFZRFNxNE0wcmVXaDhiY25PQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: OlvzhYcRTkFZq7jyKKfLEHhM2Iu7peI/eZ9j0CEF2SAmj7el6kwB4EJwVY5u5tWHwqNaUWHRVL3dPYQyj6BKOLwCYBT4f8x9iEs20XWB8kcMWD4ahyRpoIWlPXndA2Dr/62tuNI8XbNqH0lOhbxPmEkX8T8WrAQQvDKH/vhK6mW+eI5lXj6cP8Umq+SAYrYXf/ciiqnNITtacauDDQtpqhsFuv7jHVQLb7if5ZOrdZI75sjmkrLgthhyeD4ijbdyUIB73uItwhN1n2kZvPFObD1oKAIc7Oze3+kLs0CNGqSlllhDjIG7G6BdoC1h/1JR5jPq8YduG5UnLk/QuzvRDw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 29e1f8e6-7f86-4f84-9e62-08deb64647e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2026 08:03:30.2620 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4KNQ6PVR1LTtaqxe1thiZBCMfiv8hNADm0ET/iAI3zFCt/VDSQHjMUbf5mQqg19YPS4oUIjjo6pRqF9enKVGjoPv9uNaXQcqsOFcSWlfFTE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6760
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779264224; x=1810800224;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zvykMXe64qS12wnlhrBm+ThGg9iSXmmFBTumGZW5z6g=;
 b=SkcKrD4jrZJi6lMNcdln/2Tg4aRicPid3Ccnz6MikMsOQzauoi8o+4/5
 M//b/mjqUa5xvgpNwh1NVYcRdOep9Y5NxhR4gltwVlgg9lSEzQ3cUQVF7
 /vWjosfTSdRezLqSx/xyZNlwOADSlEcQYuH8N/I3HRYRNaMs3DtDdRR2l
 w7Dwa4nP7tlY4/38GOXHRjrr04Nb69MDuBb97DiTsptcn4wJtI7VzN//A
 TifhvYcWBFEgD0QdswMPRwy/4+EFF3i0aG1pFEmhn08pXdFhyOKkGifpX
 Rcd+jrasGqVVTYbz4Cm1Lejg7vtqgK3EKOAk4sAgugJvMv8X9A6X6y1pY
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SkcKrD4j
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix stats array overflow
 when VF requests more queues
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
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:mschmidt@redhat.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo]
X-Rspamd-Queue-Id: 44DE0589585
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBQcnplbWVr
IEtpdHN6ZWwNCj4gU2VudDogTW9uZGF5LCBNYXkgNCwgMjAyNiAzOjA5IFBNDQo+IFRvOiBTY2ht
aWR0LCBNaWNoYWwgPG1zY2htaWR0QHJlZGhhdC5jb20+DQo+IENjOiBpbnRlbC13aXJlZC1sYW5A
bGlzdHMub3N1b3NsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgQW5kcmV3IEx1
bm4NCj4gPGFuZHJldytuZXRkZXZAbHVubi5jaD47IEVyaWMgRHVtYXpldCA8ZWR1bWF6ZXRAZ29v
Z2xlLmNvbT47IE5ndXllbiwNCj4gQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNv
bT47IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IEtlbGxlciwgSmFjb2INCj4gRSA8amFjb2IuZS5r
ZWxsZXJAaW50ZWwuY29tPjsgSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IFBhb2xv
IEFiZW5pDQo+IDxwYWJlbmlAcmVkaGF0LmNvbT47IERhdmlkIFMuIE1pbGxlciA8ZGF2ZW1AZGF2
ZW1sb2Z0Lm5ldD4NCj4gU3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBuZXRd
IGljZTogZml4IHN0YXRzIGFycmF5IG92ZXJmbG93IHdoZW4gVkYNCj4gcmVxdWVzdHMgbW9yZSBx
dWV1ZXMNCj4gDQo+IE9uIDQvMjcvMjYgMTc6MTgsIE1pY2hhbCBTY2htaWR0IHdyb3RlOg0KPiA+
IFdoZW4gYSBWRiBpbmNyZWFzZXMgaXRzIHF1ZXVlIGNvdW50IHZpYSBWSVJUQ0hOTF9PUF9SRVFV
RVNUX1FVRVVFUywNCj4gPiBpY2VfdmNfcmVxdWVzdF9xc19tc2coKSBzZXRzIHZmLT5udW1fcmVx
X3FzIGFuZCB0cmlnZ2VycyBhIFZGIHJlc2V0Lg0KPiA+IFRoZSByZXNldCBjYWxscyBpY2VfdmZf
cmVjb25maWdfdnNpKCksIHdoaWNoIGRvZXMgaWNlX3ZzaV9kZWNmZygpDQo+ID4gZm9sbG93ZWQg
YnkgaWNlX3ZzaV9jZmcoKS4gaWNlX3ZzaV9kZWNmZygpIGRvZXMgbm90IGZyZWUgdGhlIHBlci1y
aW5nDQo+ID4gc3RhdHMgYXJyYXlzLiBJbnNpZGUgaWNlX3ZzaV9jZmdfZGVmKCksIGljZV92c2lf
c2V0X251bV9xcygpIHVwZGF0ZXMNCj4gPiBhbGxvY190eHEvYWxsb2NfcnhxIHRvIHRoZSBuZXcg
bGFyZ2VyIHZhbHVlLCBidXQNCj4gPiBpY2VfdnNpX2FsbG9jX3N0YXRfYXJyYXlzKCkgcmV0dXJu
cyBlYXJseSBiZWNhdXNlIHRoZSBzdGF0cyBhbHJlYWR5DQo+ID4gZXhpc3QuIGljZV92c2lfYWxs
b2NfcmluZ19zdGF0cygpIHRoZW4gaXRlcmF0ZXMgdXNpbmcgdGhlIG5ldyBsYXJnZXINCj4gPiBh
bGxvY190eHEgYW5kIHdyaXRlcyBiZXlvbmQgdGhlIGJvdW5kcyBvZiB0aGUgb2xkLCBzbWFsbGVy
DQo+ID4gdHhfcmluZ19zdGF0cy9yeF9yaW5nX3N0YXRzIHBvaW50ZXIgYXJyYXlzLCBjb3JydXB0
aW5nIGFkamFjZW50IFNMVUINCj4gPiBtZXRhZGF0YS4NCj4gPg0KPiA+IEtBU0FOIGRldGVjdHMg
dGhlIGJ1ZzoNCj4gDQo+IFsuLi5dDQo+IA0KPiA+DQo+ID4gaWNlX3ZzaV9yZWJ1aWxkKCkgaGFu
ZGxlcyB0aGlzIGNvcnJlY3RseSBieSBjYWxsaW5nDQo+ID4gaWNlX3ZzaV9yZWFsbG9jX3N0YXRf
YXJyYXlzKCkgYmVmb3JlIHJlY29uZmlndXJhdGlvbiwgYnV0DQo+ID4gaWNlX3ZmX3JlY29uZmln
X3ZzaSgpIHdhcyBtaXNzaW5nIHRoaXMgY2FsbC4NCj4gPg0KPiA+IEZpeCBieSBjYWxsaW5nIGlj
ZV92c2lfcmVhbGxvY19zdGF0X2FycmF5cygpIGluIGljZV92Zl9yZWNvbmZpZ192c2koKQ0KPiA+
IGJlZm9yZSBpY2VfdnNpX2RlY2ZnKCksIG1pcnJvcmluZyB0aGUgaWNlX3ZzaV9yZWJ1aWxkKCkg
cGF0dGVybi4gU2V0DQo+ID4gdnNpLT5yZXFfdHhxL3JlcV9yeHEgZnJvbSB2Zi0+bnVtX3JlcV9x
cyBzbyB0aGUgcmVhbGxvYyBmdW5jdGlvbiBrbm93cw0KPiA+IHRoZSB0YXJnZXQgYXJyYXkgc2l6
ZS4NCj4gPg0KPiA+IFNlZSB0aGUgbGlua2VkIFJIRUwgSmlyYSBpdGVtIGZvciBhIHJlcHJvZHVj
ZXIuDQo+ID4NCj4gPiBGaXhlczogMmEyY2I0YzZjMTgxICgiaWNlOiByZXBsYWNlIGljZV92Zl9y
ZWNyZWF0ZV92c2koKSB3aXRoDQo+ID4gaWNlX3ZmX3JlY29uZmlnX3ZzaSgpIikNCj4gPiBDbG9z
ZXM6IGh0dHBzOi8vcmVkaGF0LmF0bGFzc2lhbi5uZXQvYnJvd3NlL1JIRUwtMTY0MzIxDQo+ID4g
U2lnbmVkLW9mZi1ieTogTWljaGFsIFNjaG1pZHQgPG1zY2htaWR0QHJlZGhhdC5jb20+DQo+IA0K
PiBJIGhhdmUgYW4gdW5wdWJsaXNoZWQgZml4IGZvciB0aGUgc2FtZSBpc3N1ZSwgYnV0IHlvdXIg
cGF0Y2ggaXMgc21hbGxlciwgYW5kIHRodXMNCj4gbW9yZSBzdWl0YWJsZSBmb3IgbmV0LQ0KPiAN
Cj4gUmV2aWV3ZWQtYnk6IFByemVtZWsgS2l0c3plbCA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVs
LmNvbT4NCj4gDQo+IHRoYW5rIHlvdQ0KPiANCj4gPiBBc3Npc3RlZC1ieTogQ2xhdWRlOmNsYXVk
ZS1vcHVzLTQtNiBzZW1jb2RlDQo+ID4gLS0tDQo+ID4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX2xpYi5jICAgIHwgMiArLQ0KPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9saWIuaCAgICB8IDEgKw0KPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV92Zl9saWIuYyB8IDcgKysrKysrKw0KPiA+ICAgMyBmaWxlcyBjaGFuZ2Vk
LCA5IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2xpYi5jDQo+ID4gYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2xpYi5jDQo+ID4gaW5kZXggODM3YjcxYjdiMmI3Li5m
Yzc4MTc2YTJhOGQgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9saWIuYw0KPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9p
Y2VfbGliLmMNCj4gPiBAQCAtMzAxNSw3ICszMDE1LDcgQEAgaWNlX3ZzaV9yZWJ1aWxkX3NldF9j
b2FsZXNjZShzdHJ1Y3QgaWNlX3ZzaSAqdnNpLA0KDQpUZXN0ZWQtYnk6IFJhZmFsIFJvbWFub3dz
a2kgPHJhZmFsLnJvbWFub3dza2lAaW50ZWwuY29tPg0KDQo=
