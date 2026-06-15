Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id N6K4BeYiMGq9OgUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 18:05:58 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E76688177
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 18:05:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=LZij24rj;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F340A83DAD;
	Mon, 15 Jun 2026 16:05:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IeINfyiVasrN; Mon, 15 Jun 2026 16:05:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7695283DB8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781539555;
	bh=za7H2h5HesYCThmx5KRG90gBbvkWOF/vZNaJtn8kuKc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LZij24rj57ReAg8h98OHDZ2IiHEPFB1hYiH3pfhZMeWGnZF5Bv/ohfGfyNV78hRpm
	 Fb+JItyaWxrU0JpuXECsL+F/nTr8cKNAaPnZk/IfddiXtHBDeMKw5ke9T6YhI7kK9R
	 xJmI9hj/G6DTEZWTF9nIOupWCg3T9qTZ5ckbQJQX76wGueA+02KFmpi4wZbATJouof
	 Ztt6BpRH5JvBKNwk2iu+Gc+C4LM/tYyJY+J3FB/TV58ffN1xb1hVQBKE7ZJwHT8WzV
	 SYpv+o6UoD/oy5NakV7OjrdQZZwbB18tBfmDx36lRqN4BCe2v4sITxg/O/S5P1Fl8P
	 GK0hot5HKP2Tg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7695283DB8;
	Mon, 15 Jun 2026 16:05:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 09A71DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 16:05:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EF41341380
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 16:05:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0VF5TgKTE2h5 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jun 2026 16:05:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3CA3E4137F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3CA3E4137F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3CA3E4137F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 16:05:52 +0000 (UTC)
X-CSE-ConnectionGUID: W8amrETeRuqul9GC0PaESg==
X-CSE-MsgGUID: dMkO/kxHQH67lfAjsp2INA==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="82271647"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="82271647"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 09:05:52 -0700
X-CSE-ConnectionGUID: 8bYdU9CWS5WpvordE8bhNg==
X-CSE-MsgGUID: VQ7+f+D/SHS79N+o07yj/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="251431024"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 09:05:51 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 15 Jun 2026 09:05:50 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 15 Jun 2026 09:05:50 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.44) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 15 Jun 2026 09:05:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mcnOhYmAStzxqPBLwQNbMiHiwwcgt/esLVODXkygBsWXwzC0B/snzNrMOD00JvRbbC5vtpXZx8gj5aBZ/vUrDqqzFnNOcDsK/C65a2gUopymFzXZjlcbiqKSaar2+o0/SSZ9jcFV+xeJmUZIDrTBw1TEhw76bJzUN+8o1NA8WzwSv3cb719m2omwpNgY1naNGJNvysCj1UycWBiZ1xXmVxaC/jEWvwupqs6UZgomXRCna91SfLoHW0SrUjNbz5eih6+1rYkoJIQ/TJTteDMz5Vpe7Ct+VK9JoQBa3drt0mqP42NvfwVZ4pQfNDWwgEK2TRkmksJdUoaFxu8iBIgwbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=za7H2h5HesYCThmx5KRG90gBbvkWOF/vZNaJtn8kuKc=;
 b=XwaEPOprTf4SXsKjd2CcaY3kXvDKjRlmCohPhDlq6UtICZZsuAdZJ7MSiIW70FYtP5WfSj3q8jEVOx+EIbZjikYhLw5nK/cH8YkX2Shd/0OLRwkvdjv7LNf4qktyMDL5fhc1+DgHKSCFi8cYPOTvuZwfBy45px3QH9cfXQ4iUv68t5EPbtPF+lh2IAr/JLidZbas84wjahGWeREXhfln/5Lwe8gM2yJOlXX9zjATe4qh7Bym4JmKit8OC9U9j/F5o6qiFe0m5PeeqpCyS6rgIksZrjahnqXmy7ehUk7HcVsSTwo6pVTqnWyI8ZZ7EgvJgr4QfCVKcI1+9pJjQ9I9mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SJ0PR11MB5772.namprd11.prod.outlook.com (2603:10b6:a03:422::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.16; Mon, 15 Jun
 2026 16:05:44 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%5]) with mapi id 15.21.0113.015; Mon, 15 Jun 2026
 16:05:44 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 2/6] ice: count number of VSIS
 in agg_vsi_list
Thread-Index: AQHc8iT52flBQMMO7U+ly97U2dhJnrY/0hSQ
Date: Mon, 15 Jun 2026 16:05:44 +0000
Message-ID: <IA1PR11MB624147A8329676B45A3209C98BE62@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260601-jk-cleanup-vsi-aggregator-nodes-v1-0-36d6ecbe5ede@intel.com>
 <20260601-jk-cleanup-vsi-aggregator-nodes-v1-2-36d6ecbe5ede@intel.com>
In-Reply-To: <20260601-jk-cleanup-vsi-aggregator-nodes-v1-2-36d6ecbe5ede@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SJ0PR11MB5772:EE_
x-ms-office365-filtering-correlation-id: a5967876-5b3c-4f18-c83b-08decaf7f4bd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|23010399003|1800799024|376014|56012099006|4143699003|11063799006|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: Eyuk21mb4ZlbCvHgf8+LGounsdpI2mVwp7mcwiwnDvr1x2Ds0KIBnewo6eqJKcLwazg+erM94kFpIxdbAkgTk3bS9Z5xiDmEGnTIb6OaZJwnIut+aQFT822fQ1ha8CFqjFy9YK8kug2GbHilXl3XNUlfeatwUE5kE35ZwaiE2FX9Y5BP8Iq6bCn3ArnASznjS0IeTsavMywGHokk6qJqT1YR65xOh133tzgofY4675RpCUioXHetMUsHnwJN/Psz126IH1V+Swo+1ZZTLG9Zkfkyrx1LM5FT2bU8xWaeI/JED+WZLCS5RBGcZxzX/2mYNqfyMERr+oam2FtwujpvhDrLVWkL0uluP6QQbZtRXnCuZ62AYj63h1Qw4s8QFR/jm/xC3P8ZS+leJ+l3Xjq2zDgJBUNNztWVzzNemKbtSPjmC0DYXOIblBnEeo5lZAuuG1zKCEzfIoyBA/h+eTBqiXOKzzd1ukYWnt1ZI4YmQq5HL6pH2xYrWdN9yVWbYGYA6igZU9O0DZQu6RNROBttmnl711XYW5YD9LyKODxrLVx7pwiYvt5VSUdJ1hbIMGT4XNpYg64LzrL+8IA/qsZ1aEtmQkLMjyoCS9WkTdNGtQQfeD4FKQq/fq8gQ5qj5T4V/zE/kI9IZyXai3WLZSoa79YpQzGh55CmjnkcQyuDugJjd9d6cHKzh4jErujXYwLGivrAZj36V6oZHQctNmO9NyT84m9H1/y/Kn+h1eR/TuoSlDLg+BeCaF26CQp4Qwm0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(1800799024)(376014)(56012099006)(4143699003)(11063799006)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U3IyK1d1bE5EQmdNUzVRbXlhSVM0UUFIejRSRGFyemRVK1RXbDU0b1ZvdEdQ?=
 =?utf-8?B?aEwwWSsvdm5iYVFvemlldHVkUGlwMWtZc05Ib0c4Q2tyK29walIwbmNweE5B?=
 =?utf-8?B?WjJGMzdPeTJTUUtRM3FrUm45VnpnbFRhUWJLTjlNdmdlTGpaWE1aVWJTbndO?=
 =?utf-8?B?NUFKYzFiU0V4TjlpRkQ3OG04UjJ4YXl2S3ExbTlma1lYOHlCcFdQd01lOHFF?=
 =?utf-8?B?YUEvWGgwZkxrRHpWeWF1b2N3QlBwdXZ1ZXphbDRTRFFjcVJXOXF0MGtTSDJX?=
 =?utf-8?B?ei9FSXkyQjFtR2VvZndXY043Z0NwVVlvdUo0ZlIrSittUWVLVisrWDV0Q1lk?=
 =?utf-8?B?Yi91RkkzTDBvQ1pyRnc4a2lyNUZYWVA4SElEUFR0cklWU004NUhueGxCa3RM?=
 =?utf-8?B?bXdKckY3T3ovQlhmQlNJTFJKSVRFYmJ1by82VUczOVpaV1V2b0U0RUxRLzZC?=
 =?utf-8?B?N0Nnd1JrYnZEVTJKb2s0UERJZERrK01BYkVhRnlPVytkM09ZbDRjOG84Mjhz?=
 =?utf-8?B?bkZSZVllYTlZM1IydGkzUjNRRGtDZTFqTVAwOXl5eHA2T0YxZHduaVhqbXVh?=
 =?utf-8?B?TFMrWDVaUmtvZytBVTd3V0JZQkVKdWViYzZXVTVmVnpucEZLdkpFUXRqK0pN?=
 =?utf-8?B?WE1lQUZnQzBGVmIxL1EzR00yaDNaVWlKQUNPcWc3cmhnTkg0Wnk2cFF6SXly?=
 =?utf-8?B?NEszSDl1MXZ3Uld1dUgvTGFOeGR1VFdRVFJ0b3FWcjUveDRYbTE5Tk15aVRM?=
 =?utf-8?B?bGZaM3ZPMTFNZjU2L0E5RnhpUUVzdEtUeFoxbVhuWWFSc05BNVlRNVJiNjdj?=
 =?utf-8?B?SHVqQm9jRk92SEhNT2ErSnE2cklLZzhBQ3BRQVFuNGwwdlRuUkJ5YW5TUHN4?=
 =?utf-8?B?OFBBUzhTVTJFamwwQm1pYSsvUkJXaVpsM2dMSy9CSVpSNFRmMHh0ckZFYit2?=
 =?utf-8?B?V3dycDlSdHJraHZaYkJhaURZY3RkeEZTY09mR0UvakNFWjJkd3FNeHBsTW83?=
 =?utf-8?B?TVFkc0tGNng0d0pKYlhvT0xONUhXbGxzemlkcWg4ZVNPbjRXQUt4N3pjM2s0?=
 =?utf-8?B?NWxTZUlBSHdXS1I0WmRvdGFSdk1zWTlYSjU4R2hDNnJMandZR05aSXpIQkhm?=
 =?utf-8?B?N2M0a0FRU29tbDN1UUFIUDNtQTRDSFRDN0dFVGF5UGZkRzhEN2xxMk4rL0lM?=
 =?utf-8?B?WUR1anVYdWQvQ0JrditMZGlkN2xsRGdWeS9FR3M2b25xZUNhVElGYWpJVlJV?=
 =?utf-8?B?VWNnYUJaNktrQnhlT1dTSXlaWFRPTUVDczBZb0dFOEZlaC9PeGU2NHJRUlRa?=
 =?utf-8?B?UU50Vi84djltWWFmTFdHOWp4WEp0aGJHVVViQlpOSGt4Q0tGMEdRelVTaDVN?=
 =?utf-8?B?UzlSSUhDZThZblhyVSt0SElMZllEamhOYzVCWGQvYVVsMVl3Mys4OE9wcy9J?=
 =?utf-8?B?MHRtczh4eFZ2c0Z6eVBiKzN5NW9ZUCtXamJWK291dldFSzVFKys2UXlHTVpo?=
 =?utf-8?B?Z2oyYzZTUjQ4TXRIdGxnanhBcmN1dXRLSHZON0R6ejJJZXZiQ1l1WnBMOEJl?=
 =?utf-8?B?QzN6VDlsa0RDcmNKYXFvS0h1THE3QU1WOE9VR3ZjaVRQUUNMbjdCTmkzeU14?=
 =?utf-8?B?Q1VDQy9FUHRwRTZuQlZVamhNS1lUR1c4Tm5WSk1VQ2c0R1JGMElYcXlCeGND?=
 =?utf-8?B?NjJWcytxUUhubDRSOVc5NHYyTE91SjJyUThIWnFuQVR3aFlwV0U1cTNFV05r?=
 =?utf-8?B?WDc2Z2x1eXFiTVZ1UU54NkdQQmxDcFpkWFVjV3h6UVEzOVB2ZlE5dmY4eHNq?=
 =?utf-8?B?b0VaeThpbzdJRk5QU2F1VTlXcHQweW0rdFJzdWdrMUU1MjlieVEweDFZTnBa?=
 =?utf-8?B?dU54Qk5VVjVZdmFYdWFoVEtuSFp2YWk5eVVXd1l6VGV0b1l4V3RDdkhFZjlD?=
 =?utf-8?B?STAvVk5TamxUUHkvR1dHbk9kR2xqZCtMdnNYMm9IV0hMMnFIQ0pUZmZ3SU1a?=
 =?utf-8?B?M2VtZk5MWWpybmNYbmg2Q0xMb0w5M2xPeGJsR2dBNU4zQkg5bDJUWTRXN3pJ?=
 =?utf-8?B?WlVtWGtUdy9VNjh4cWtZZ0dRcllSKy9BTHFTbEpISVM1a3ZjWmhkeEw5RGZI?=
 =?utf-8?B?dW9BSldpQ3V4em91Yzd2THdrNlVOSFdsVitsaDBIc0lySG11bVcvejdXUCt2?=
 =?utf-8?B?d0ZHUDJHb0F5cGNnQXVURXUzSzNJKzI5b25weG1qU0VGdDU1Z3ZWRVEzVlRh?=
 =?utf-8?B?S2NBMGhUQzlSSXdkRTNwbjlCdjFCSkhWSkRUWjVjbXNSbmdkOGdBaksxVklZ?=
 =?utf-8?Q?BP+wurOpQa1ccRDemJ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: FYRkBwJAXOjcx4gcbyMGuqKVf6BPS8rDyQokTbRck3P9wPAQSgOpyd4oANeOgGmqEig9NKSgCiIzMDFSUsaSt2694lfbfpDEbJKNZT5+Q3er2dJJ3natqjl1dL0ITm9rNY9dxczOdUyfPcW3fmfK61NyRoP0BNPsJSbWm2W8UqsN+QB+C2UJHfL0/n1xI4fzhA5FrBfIervJUY7/T/V0omvKM48v9sfn9tqLlHc5vtUS9/TBlZnz1FJv0pgFfktLFpaAB/Nwm34ErFGC09WWaEWeVoHyM5CvXZVIMUaXbVbuvixNCUZR0VNv0xxJqmOsManFo3wYuHPmNXVrSjlHcA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a5967876-5b3c-4f18-c83b-08decaf7f4bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2026 16:05:44.4460 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y0FxhbqWDchH8vCxRMPF5zFzBzmJc+sQ/oa371H8uAHcoYOZi9YBXz0hIo1PAkKgZE16dpTthyYtZrYY5qgO8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5772
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781539553; x=1813075553;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=za7H2h5HesYCThmx5KRG90gBbvkWOF/vZNaJtn8kuKc=;
 b=aoGV7OC9ZTP5ExCmdK7kiXTsy4+vcZbilbaVL6rG0fqCYrLO4n+gjRPI
 vj3Zr0uc9JWOiH4IH9cMfYPfMYKZ/Bz6q16plDEMU79LNxB+R0yx4Xv6C
 j9v5pYWgUvJOM9ik5boQjusBSBYp2uMPQ7BKiOxE3gR2Zqnx4yuS46H4x
 dBxDYiZCyKhmLmQ4ELh6WrCLIMGOP8MTBLGutpjU8s8AIDk1uMe6OHyZe
 P0PLb/jAygx80WGPgSqvY5hhQ7qHv9BfK2VqDQgcAIZEV56ufwttv1ybB
 r7pYYFJRvPG2SB8SPiGmIcoaMuMz2BcuCnjp764IdEr9LauBeChKJ2Ndx
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aoGV7OC9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/6] ice: count number of
 VSIS in agg_vsi_list
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA1PR11MB6241.namprd11.prod.outlook.com:mid,intel.com:from_mime,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 52E76688177

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogMDIgSnVuZSAyMDI2IDA1OjQ0DQo+IFRvOiBJbnRlbCBXaXJlZCBMQU4gPGlu
dGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnPjsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsg
Tmd1eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPg0KPiBDYzogS2l0
c3plbCwgUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IExva3Rpb25v
diwgQWxla3NhbmRyIDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT47IEtlbGxlciwgSmFj
b2IgRSA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPjsgTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFs
ZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFu
XSBbUEFUQ0ggaXdsLW5leHQgMi82XSBpY2U6IGNvdW50IG51bWJlciBvZiBWU0lTIGluIGFnZ192
c2lfbGlzdA0KPg0KPiBUaGUgaWNlX3NjaGVkX2FnZ19pbmZvIHN0cnVjdHVyZSBtYWludGFpbnMg
YSBsaXN0IG9mIFZTSXMgYXNzb2NpYXRlZCB3aXRoIHRoZSBhZ2dyZWdhdG9yIG5vZGUuIEEgZm9s
bG93aW5nIGNoYW5nZSBpcyBnb2luZyB0byByZWZhY3RvciBsb2dpYyBmcm9tIGljZV9saWIuYywg
YW5kIHJlbW92ZSB0aGUgaWNlX2FnZ19ub2RlIHdyYXBwZXIgc3RydWN0dXJlLiBEb2luZyBzbyB3
aWxsIHJlcXVpcmUga2VlcGluZyB0cmFjayBvZiBob3cgbWFueSBWU0lzIGFyZSBvbiBhIGdpdmVu
IGFnZ3JlZ2F0b3Igbm9kZS4NCj4NCj4gVG8gc2ltcGxpZnkgdGhpcyB0cmFja2luZywgYWRkIGEg
bWVtYmVyIHRvIHRoZSBpY2Vfc2NoZWRfYWdnX2luZm8gc3RydWN0dXJlIHdoaWNoIGNvdW50cyB0
aGUgbnVtYmVyIG9mIFZTSXMgdXNpbmcgdGhlIG5vZGUuIEluY3JlbWVudCBpdCB3aGVuIGFkZGlu
ZyBhIFZTSSB0byB0aGUgbGlzdCwgYW5kIGRlY3JlbWVudCB3aGVuIHJlbW92aW5nIHRoZSBWU0kg
ZnJvbSB0aGUgbGlzdC4gVGhpcyB3aWxsIGF2b2lkIHRoZSBuZWVkIHRvIGl0ZXJhdGUgdGhlIGFn
Z192c2lfbGlzdCB0byBkZXRlcm1pbmUgdGhpcyBpbmZvcm1hdGlvbi4NCj4NCj4gU2lnbmVkLW9m
Zi1ieTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IFJldmlld2Vk
LWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4N
Cj4gLS0tDQo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vfc2NoZWQuaCB8IDEg
KyAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9zY2hlZC5jIHwgNyArKysrKysr
DQo+IDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspDQo+DQoNClRlc3RlZC1ieTogUmlu
aXRoYSBTIDxzeC5yaW5pdGhhQGludGVsLmNvbT4gKEEgQ29udGluZ2VudCB3b3JrZXIgYXQgSW50
ZWwpDQo=
