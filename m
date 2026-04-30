Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KIJ7FqZA82kGywEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 13:44:38 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 999E84A24D1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 13:44:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E9EE61C20;
	Thu, 30 Apr 2026 11:44:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KV1h-BzyvsPy; Thu, 30 Apr 2026 11:44:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF36161C21
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777549473;
	bh=qmvJYwaymZ5tYce4sUJmysAAqKpru63J82dhO0BJQyw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WctRxvT+PF4Od7vbW3PYGciPdhcJY59bv/vCqQFEHlKXgYAtYN90/lfbAJ03PSKHL
	 pMMfXuJGF7k5BF1/ufJ+32xIQsa4c4wU5di+jyjAHYImGhnrQq7ICxpQg9k8hXdt1i
	 ueFRjztAss9xCHquRvxlgasNmn9KLUgrDBT47N5VEMAVIhZO9d1G3alqaV9u5ax4DI
	 OwU08ms0y46Uep/7Rne+Og6q1sPZXt3P8yZCm9idkGnwx7zQve0D6/TmQssMtL0Mrr
	 BdKJD9gZ/zaM6rsL+7VwKohBQfbakLEkKgnFmLEiPbLffev+Prxp8m4MuV+NQG8a7v
	 b6t0ISgunEZ1Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF36161C21;
	Thu, 30 Apr 2026 11:44:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7CF0718F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 11:44:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7445361C1D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 11:44:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id imqHsEtk8p4a for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Apr 2026 11:44:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AC4A961BEB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC4A961BEB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AC4A961BEB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 11:44:30 +0000 (UTC)
X-CSE-ConnectionGUID: JCL0dU/1SJOemcson87gXw==
X-CSE-MsgGUID: MpsSddFMSxWVOHxWBm3toQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="89590278"
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="89590278"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 04:44:30 -0700
X-CSE-ConnectionGUID: hu3DwUqCQfWCP1vcSFfUVg==
X-CSE-MsgGUID: nIE4dKdIRDu9/D2w5ezpbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="272680547"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 04:44:29 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 04:44:29 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 30 Apr 2026 04:44:29 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.48) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 04:44:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LQi4PZC/J9zsW38ECV0xdNP2NZvfdF7lttvXuP3LPjE69g6IgOnUL0jkpXOHcduUtwK5mO027ROmxRccpQjbHQzjRvsfWKVuKnI49TLL5mmUKZVUqRwzSU7LwbEvxIv2oWRxVgxVcPdLfEs16LeWr7CFg/oLB2qPdYY9zJaUXZq0uhHyIgbQ7wTSDYZoESb+K7hGqckdwUVANkkTgnZZ+M/ChXRs2m22D4Qh8V623vXpJwFqbLURUdwHJ1s4vM/62xCXCNsMHowGQ5zOJu/W0mM2pRi3NS7Bm59kHkEb2Gx5CWhcqIZfI0bhGEIwKYK+k6cVpe0Njmx8LY3C1GHe5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qmvJYwaymZ5tYce4sUJmysAAqKpru63J82dhO0BJQyw=;
 b=GSERrtLplRnxiUIbpeCMTybFMMvKyMrH19YwyMTjtbQchD/Cc/YokWUr4ZMrpq6kc8ceCca+d5P19zXI61r28/ifSdixHkU9cTWIg/f2miv2paGe0kKTKCiS7raoRI62MWK6HaQPKe7RwCIDS8CLlN/vBcXIwK8dvw/3QmBhHeJid7EovT6kNPqo7tVr/khGu5mQo8x78OjcXG3sUCSIOMeAaRT5GysQnAl7Hi+01DxmURFWp+dqEHt20t7N+ddq0IOvfs1HsG8t1aTjXsPksJ/p5tZHtV2Mf5giUWvXtvYueybot3N7oQeQeyaLNB2s9EOdg//vcq/UDhnePLBQIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ2PR11MB8369.namprd11.prod.outlook.com (2603:10b6:a03:53d::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Thu, 30 Apr
 2026 11:44:23 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9870.020; Thu, 30 Apr 2026
 11:44:23 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, "vadim.fedorenko@linux.dev"
 <vadim.fedorenko@linux.dev>, "kuba@kernel.org" <kuba@kernel.org>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "edumazet@google.com"
 <edumazet@google.com>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "horms@kernel.org" <horms@kernel.org>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH v6 net-next 7/8] ice: add Tx reference
 clock index handling to AN restart command
Thread-Index: AQHcyHx3xgf6NlglUUOklepvbyes1bX3m55w
Date: Thu, 30 Apr 2026 11:44:23 +0000
Message-ID: <IA3PR11MB8986CF5526309AD63C6FD5D8E5352@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260409235122.436749-1-grzegorz.nitka@intel.com>
 <20260409235122.436749-8-grzegorz.nitka@intel.com>
In-Reply-To: <20260409235122.436749-8-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ2PR11MB8369:EE_
x-ms-office365-filtering-correlation-id: ffed5b9d-dd24-4ccc-be46-08dea6add346
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|7416014|366016|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: cONc7P3MCT8y6HlPY3wHOfo3NvV51FimUvRfbfXbD/AqzijFG2XMqk76MX/5izAgVvkvM3H6cbpLglDk8wW5cg+Z1yBPqIIuwN9YGPqsZcHfZNUOTXEcPoegrDFOa9Ozh29p9oiLfYqE/I5mUutbgfPvpYO1Kp7kSj75zVa/h+IurVRG8zZPwGDeI4F2q1SUv0tS8kgcb2IluAOb/TpB6f9+BOGZkdjlzLBCOmBOP+6g0aFHbDWSVr4eN26Mqg4UCoBZJAIxEpCHD6xBfc8D3eyqCfdZowuigoIji5vXaFZAsARdW3pFweEQ0aDp2lTyQffcRbtFrBaowYyhsit7OexEMpFM8OnQyQFBwIqcF7utM6ZM4y0PBXip2OFqkToV3NPXDF9H+m5IO3b7scULVKQNlp4RUlKNojk2UOmVtuMVxA+TM3wH1Hv8seSXadayDQypR30trEYZI0Wyi00pdRJyBa1mJZ23RVxhoP01tX5Yh6zMH+XfQTbgpaD248O/l3jXa9EiRR5It2ZsygmF85NcRUPGArMG+6JbS4QtFMHIUO3Z7zTb0HSxjZeXiDiiArVR3jUm2uHTVjfmWGMYsow0cDlVpXFWw25oEjsxZSfMHEXi303AB+5D7kdKoXSLGBjlVBv2/G/zkiPWv6R/PTzlxSzkIZoXVwoDS+ONh+L3Xe9tfTiBasr/TYU+iZmaZmtusCp3Esp8an0reiwWun02UGPwCBiUu6DIhmjL/LMRbYZYDrWK/gZT1oq1IgCo7ExOjOy738Meo/rRotqErOR9LG+MpEn9OlujzQrfNxA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(7416014)(366016)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rBWaYjibrbQ5mxXIAA/2llDlogNw2MC5Dn55vl+VvYSEdoDSfsELTvmc05OZ?=
 =?us-ascii?Q?fBpOwCsLTAqdgyORRc2Gxq0CJZqutmbp88ZcN73EMvl7JSlrzQE8/rnKOdKf?=
 =?us-ascii?Q?21wZkfs5TJc6+aCpRVQdlSVZ8aLk+vfckVmXmjQGMiWm2EV7o8PfDSlfqfg4?=
 =?us-ascii?Q?jj2+/XFo3oIydyaZxngYHssVtay71AVdcOlDTa3K4oFrQMAKs2wt8F+UNv48?=
 =?us-ascii?Q?xexcd/yrAdiS8/Wh6NTTqtc3IDq/u7uVo8XF9xjk8U/6AzIiSj0mF3IBYr2G?=
 =?us-ascii?Q?131tntwctqeChbEJgkJGWSZyqMMf93UK8GdmUf1CiTLNhgeC8VgkimsdL6iJ?=
 =?us-ascii?Q?5mIJb+uWg8yHXWYZbWI/0tSgPalONwwfE6OfRWeNZSiUIjr67kCmTEqCQ2zO?=
 =?us-ascii?Q?KKZyr5DREPlEquwWK0V7JD5vzhVATVhdTT8pviw02G/p0SbNQCdKsyLLacwg?=
 =?us-ascii?Q?ZcF2ZfRkLFEpUfIB0e1BUbrrXu3PqPu4mn1mMcaRfHvwvL6wF4gAsJkS5FvM?=
 =?us-ascii?Q?JyN4brbfADa9l0sJ20xUMlK/5PqxhF98VCltCoHmCjDA0O5Pk0Hr0kqdNk7h?=
 =?us-ascii?Q?13rBcglThki7DaavYTfT9ulZfKPI8RTPRg9cIChgh1GCBYUR+6RIdBgufXiQ?=
 =?us-ascii?Q?ep69UtYBTGPtKL2SyMjy8TjZnDHkhSDEEU/bjvt7Q7fjBsNZglMB7UMdDCvn?=
 =?us-ascii?Q?WzWeUkaMRd/nSvxG64GE+j7NyA2qpWbykVIM0iqtHDhutRNfebU7qHGBxkZh?=
 =?us-ascii?Q?NbSKIGvdoNgnHCjzz6cGAbCLzZE+ONgpibrXKkHtH9sWAkLkDa3kI4rX55vM?=
 =?us-ascii?Q?2+JjpLtiaxn0r5bo62V6XW9BFNdSSxwHV39F6JttohHtU59hHvbhS92l+s7U?=
 =?us-ascii?Q?44hM3GzJXz/WT8OLF02Tunzm/VsOF8RCxLIakPlI5SdPOaUUN2XWqGjXv0VG?=
 =?us-ascii?Q?QM9d6DyIZJhSgycdWo1jDW89kswXQ0f3vBnyePjxvcTxSYgqb50x1qXlg3vJ?=
 =?us-ascii?Q?qVwhbvT747ct693Ch2S08PUxecIDfcfTjTDPB9ILlAsEgMNE34C3AEoNrgyF?=
 =?us-ascii?Q?lhpCnM7W+FQmIQGrwS0TnNwVa3lZtyA5iuYkJY8lC+8vJsjuSt4ydwz7X1+k?=
 =?us-ascii?Q?eXa2TAlgBtFYUcF3uWW0siyxdtE+N3mk2+y1Ogixr0eya8msyP1oI8m3qGE7?=
 =?us-ascii?Q?+jNfwzqg/yWAFeMVcifK148bUX+HG6WCzbuQxizDHb3Sj4CezKzWKirWL91e?=
 =?us-ascii?Q?ISb1MiZcx+tLtp/cOH/TuP+9zL8HI8clg3xDSmUuiDFFb1kaIyhxQkootB0r?=
 =?us-ascii?Q?ggjEK4p9t0lLayurTSQN6kDy64sz+xL6m/tv5NaeCIHOt6Hgsx3pt9z5BCoR?=
 =?us-ascii?Q?QoJpRk8FB5rWlwoKvxd8p2EQdkFpwu1f+hj9M/7vB0szuv5avroIsIbLlCiZ?=
 =?us-ascii?Q?hO6FwrPUIephnhq5EEIRxBVJcJ7tGOAeRx8p0b/C2xQQh9I7oZlF+fwiJWeP?=
 =?us-ascii?Q?f0uRViUDHb39t+cUxUaewMlL2gYlm8S/ADLMO4TuGhlBahn/1+MkioaazQKM?=
 =?us-ascii?Q?5cVAnsGDBlethhnYOx8AmFwsCcL73ZuxXHYPERCAAWZmRQZCzUPv5txoy4+W?=
 =?us-ascii?Q?UN87U6dISoap4W7365pmlNgSgIsQHtqacDueDR4McAHuxnAgIDphwd4M27kp?=
 =?us-ascii?Q?OTJmclyY1eJlJ068rye2c6aAZdSmECQrxJC1MJ0yIORpSb0Q4+IJyiN4vtvC?=
 =?us-ascii?Q?ZA4KJ4ay02Jogk/JLDMf97XcvcPEQbM=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: efWUXYoueapgvfhCoDQJT90XfdW/Cv1/hYVxYkDhb1+kIqWUceXhi69hpG+qOl0uRiEjPGugb6vfH8TjbqHyA/1J3xr6CTxYnMsE+xuzUMtE3vrOFwp55DBx1ZeWmJG9CPMYLzO+AXNSnKMo60nfNE7iswONf+DE3lcOc3SnL0BXxbtuD4XHaxzvH2teSUMtmWJ3LYi5Gh8fbl+nTpHzokA0wH+bEym6KY7ELO3wGEJLNVol7sC6cQrzOM5X6k9NtUkouoYvRzPRZnpBYAwlyWHQg7KezVaL6Qrv6aI2A3B8E5y0J9cATPIr1Je7pRxoVYHvWnoCt2eVZ9fZNUX4EA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffed5b9d-dd24-4ccc-be46-08dea6add346
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2026 11:44:23.6742 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eQorGxcDV7p8p/7J938LLPrpdqxHQM7WP0I7YSz/R0BLo8fracNQ5JGwVZvKgS/gqZUAva/Crk16USn0Pa52zzYifPfCgwtIIJLLKpR3c/c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8369
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777549471; x=1809085471;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mG+FpkwKrQIrIRHVjW771AGyIbULgX3R6yJtzDsGlQs=;
 b=gw6aU0dSaKSTkNJGTJJGvLWNYZmTvwMKhbPtYFDfqgFXCA5foH/yuLha
 GNylM+6fjkCqpt/ff8uvvQ+vB31ithahr9sh93kPcIZwDczosjMMw7hs9
 jt9UnY4lVKRs4nIAHiJvcVXyu8Rb1qioelsSyAk6f3sx4kOEGfLkVf4AB
 4YJu8kHBLBjURkleeYP9JljQDiBb8nNXOEGSgcHY28xaSxYWYUf5CDEsE
 ZlVKTEYATQri6BfV0lxiwNvF0wmNj+nl4ZsOG4rgrCdiLXG4hU1f9l2Hn
 9sHONGBp35qxxW0X7+R1OKfSndq8bjSoe9aLTuxSBFoiSfhfXtBkLBdrA
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gw6aU0dS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v6 net-next 7/8] ice: add Tx reference
 clock index handling to AN restart command
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
X-Rspamd-Queue-Id: 999E84A24D1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Grzegorz Nitka
> Sent: Friday, April 10, 2026 1:51 AM
> To: netdev@vger.kernel.org
> Cc: Vecera, Ivan <ivecera@redhat.com>; vadim.fedorenko@linux.dev;
> kuba@kernel.org; jiri@resnulli.us; edumazet@google.com; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; richardcochran@gmail.com;
> donald.hunter@gmail.com; linux-kernel@vger.kernel.org; Kubalewski,
> Arkadiusz <arkadiusz.kubalewski@intel.com>; andrew+netdev@lunn.ch;
> intel-wired-lan@lists.osuosl.org; horms@kernel.org;
> Prathosh.Satish@microchip.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; pabeni@redhat.com; davem@davemloft.net
> Subject: [Intel-wired-lan] [PATCH v6 net-next 7/8] ice: add Tx
> reference clock index handling to AN restart command
>=20
> Extend the Restart Auto-Negotiation (AN) AdminQ command with a new
> parameter allowing software to specify the Tx reference clock index to
> be used during link restart.
>=20
> This patch:
>  - adds REFCLK field definitions to ice_aqc_restart_an
>  - updates ice_aq_set_link_restart_an() to take a new refclk parameter
>    and properly encode it into the command
>  - keeps legacy behavior by passing REFCLK_NOCHANGE where appropriate
>=20
> This prepares the driver for configurations requiring dynamic
> selection of the Tx reference clock as part of the AN flow.
>=20
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 2 ++
>  drivers/net/ethernet/intel/ice/ice_common.c     | 5 ++++-
>  drivers/net/ethernet/intel/ice/ice_common.h     | 2 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c        | 3 ++-
>  4 files changed, 9 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index 859e9c66f3e7..a24a0613d887 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -1169,6 +1169,8 @@ struct ice_aqc_restart_an {
>  	u8 cmd_flags;
>  #define ICE_AQC_RESTART_AN_LINK_RESTART	BIT(1)
>  #define ICE_AQC_RESTART_AN_LINK_ENABLE	BIT(2)
> +#define ICE_AQC_RESTART_AN_REFCLK_M	GENMASK(4, 3)
> +#define ICE_AQC_RESTART_AN_REFCLK_NOCHANGE 0
>  	u8 reserved2[13];
>  };
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c
> b/drivers/net/ethernet/intel/ice/ice_common.c
> index ce11fea122d0..de88aec9137c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -4126,12 +4126,13 @@ int ice_get_link_status(struct ice_port_info
> *pi, bool *link_up)
>   * @pi: pointer to the port information structure
>   * @ena_link: if true: enable link, if false: disable link
>   * @cd: pointer to command details structure or NULL
> + * @refclk: the new TX reference clock, 0 if no change
0 is not a magic number, but kdoc should better
mention the ICE_AQC_RESTART_AN_REFCLK_NOCHANGE
What do you think?

>   *
>   * Sets up the link and restarts the Auto-Negotiation over the link.
>   */
>  int
>  ice_aq_set_link_restart_an(struct ice_port_info *pi, bool ena_link,
> -			   struct ice_sq_cd *cd)
> +			   struct ice_sq_cd *cd,  u8 refclk)
Double-space after ,

>  {
>  	struct ice_aqc_restart_an *cmd;
>  	struct libie_aq_desc desc;
> @@ -4147,6 +4148,8 @@ ice_aq_set_link_restart_an(struct ice_port_info
> *pi, bool ena_link,
>  	else
>  		cmd->cmd_flags &=3D ~ICE_AQC_RESTART_AN_LINK_ENABLE;
>=20
> +	cmd->cmd_flags |=3D FIELD_PREP(ICE_AQC_RESTART_AN_REFCLK_M,
> refclk);
> +
>  	return ice_aq_send_cmd(pi->hw, &desc, NULL, 0, cd);  }
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.h
> b/drivers/net/ethernet/intel/ice/ice_common.h
> index e700ac0dc347..9f5344212195 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.h
> +++ b/drivers/net/ethernet/intel/ice/ice_common.h
> @@ -215,7 +215,7 @@ ice_cfg_phy_fec(struct ice_port_info *pi, struct
> ice_aqc_set_phy_cfg_data *cfg,
>  		enum ice_fec_mode fec);
>  int
>  ice_aq_set_link_restart_an(struct ice_port_info *pi, bool ena_link,
> -			   struct ice_sq_cd *cd);
> +			   struct ice_sq_cd *cd, u8 refclk);
>  int
>  ice_aq_set_mac_cfg(struct ice_hw *hw, u16 max_frame_size, struct
> ice_sq_cd *cd);  int diff --git
> a/drivers/net/ethernet/intel/ice/ice_lib.c
> b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 689c6025ea82..c2c7f186bcc7 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -3769,7 +3769,8 @@ int ice_set_link(struct ice_vsi *vsi, bool ena)
>  	if (vsi->type !=3D ICE_VSI_PF)
>  		return -EINVAL;
>=20
> -	status =3D ice_aq_set_link_restart_an(pi, ena, NULL);
> +	status =3D ice_aq_set_link_restart_an(pi, ena, NULL,
> +
> ICE_AQC_RESTART_AN_REFCLK_NOCHANGE);
>=20
>  	/* if link is owned by manageability, FW will return
> LIBIE_AQ_RC_EMODE.
>  	 * this is not a fatal error, so print a warning message and
> return
> --
> 2.39.3

