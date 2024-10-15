Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BF97899F73A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Oct 2024 21:25:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 18737608C6;
	Tue, 15 Oct 2024 19:25:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m8Sh3XrNitmV; Tue, 15 Oct 2024 19:25:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 468AD608AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729020301;
	bh=cJzqkU2ZCAnF0b/b8cs0BVjAguwzJoDipLEm7hssOR8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=P2M+m9G+AcaGEs5gXzKi0NfGhwtrq+Qv+XF1VhRphWFJNxS2Az3Cp4uTP+4j0G5Gs
	 J+LkcNgGDDVaEwrvi/BUyTrU07XJOdYgxd0QaJOcFCmgY8E1WLL6Fgy54MoV7lnjR8
	 Uczv+RjPu+kS6PqMJUB0/EDThaTTolqL5AQadITo66CZqLANVzhxHTzF0BqWeQK5ZW
	 wITfFt0OoPi5oxAaIYFkiSwnCAgDVl+WtLunzSIHo15sRiMXVmWritFmRRNyKLJwpJ
	 JxR5caa1UuQpXe0TLqgsiaef9kNaSpcIIVIGfQNIFQw4Q1fDkVFzTuUsBzaiYRG+bu
	 2xZ5wGF9LVjlg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 468AD608AA;
	Tue, 15 Oct 2024 19:25:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A920327E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 19:24:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 803D440043
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 19:24:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hZcKPkkuZwoW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Oct 2024 19:24:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 59E7B4003C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 59E7B4003C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 59E7B4003C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 19:24:57 +0000 (UTC)
X-CSE-ConnectionGUID: T+lfnM94S9KI4Zvj7WnFAg==
X-CSE-MsgGUID: Gzoy2ghJQAKR7y3HN1+L3Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11225"; a="39012846"
X-IronPort-AV: E=Sophos;i="6.11,206,1725346800"; d="scan'208";a="39012846"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 12:24:58 -0700
X-CSE-ConnectionGUID: sJGcxyTSROG5GJmzDizvyA==
X-CSE-MsgGUID: RG8g7T5FTJKy8edzM1PlyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,206,1725346800"; d="scan'208";a="82777500"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Oct 2024 12:24:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 15 Oct 2024 12:24:56 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 15 Oct 2024 12:24:56 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 15 Oct 2024 12:24:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yAd+kXWB1qQSPGkvozW42YxDQCzHpGleaojfeCiQesaBkzpAoJzc8HnKgjABbXvnUfttstHyfNQlD0cOGXVYQxqr0LYjqCKBAxXJ8W8ja0L4ScKB78bicguBvOebIc91b8AqLHWLC3hZQ4/MvFT6KvTR5xR2K9pre6kRJXyEkIdWH35UgTaQCjzo2ukvRmdlev+z0kFvMbaBml7ZbtYlYc2EbQrFtdWA+1ORKX2Izhv1CPv1qKjdmNX8xod08zurkuo3186BQGWXWrjaWJoEI5fnDEazlajQtlzy7esBHK1XCkBOBANqsjIc8MNWqZmCzQdRPR0n3HtrWB8PmfVwMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cJzqkU2ZCAnF0b/b8cs0BVjAguwzJoDipLEm7hssOR8=;
 b=GGwC/PnRCZlUUc03gDtlHJ1gT7CjZmJ8ijO6P1BohDvKKk4Qg7lRdqZaMoa1JA+yTmWzkCPGZ6w92gpQVd6r+0UGqmWi9QleKqyj9wZ8H73eR7TX7H5Uy1jh9ZAQDlgS73eP8wWnWmu3xIWuMzvcaAttXF+DRQp9rk7I8S1iPjeSD67d7Z+BZs+UerHQkbsxOXvWRNfREcL6TfrpPCQq/fuKWQWcPQPaGs8QY3id+zKgHlWI+zelEkQD/Ow/6OzOUkqhUxvxmISaJWuYhjGG6CIu8MWuqXm4DbnCenzAg6uo6LTnedCI0chwycJd/5Z/7FzebviqcxdVR02xdE4xQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CH3PR11MB7345.namprd11.prod.outlook.com (2603:10b6:610:14a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.17; Tue, 15 Oct
 2024 19:24:53 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8069.016; Tue, 15 Oct 2024
 19:24:53 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Drewek, Wojciech"
 <wojciech.drewek@intel.com>, Rahul Rameshbabu <rrameshbabu@nvidia.com>, Simon
 Horman <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v11 07/14] iavf: add support
 for indirect access to PHC time
Thread-Index: AQHbHh2kQpaNq8pBjkSwDvHGrgL5ULKH19QAgABauJA=
Date: Tue, 15 Oct 2024 19:24:53 +0000
Message-ID: <CO1PR11MB5089BE76404AA25EE5974468D6452@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20241013154415.20262-1-mateusz.polchlopek@intel.com>
 <20241013154415.20262-8-mateusz.polchlopek@intel.com>
 <58b00c7f-b74b-4f14-a8c4-080d3fcedcb1@linux.dev>
In-Reply-To: <58b00c7f-b74b-4f14-a8c4-080d3fcedcb1@linux.dev>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|CH3PR11MB7345:EE_
x-ms-office365-filtering-correlation-id: 691bb05e-fba9-4a30-f1f6-08dced4f0baf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?bUlvaE45MlpSK293UmNjMVFmeE5YWjdpQ2NkaElwRU9VWlFzclZaTXJtRnRM?=
 =?utf-8?B?aWVuOGtzYndkYUV2NnZYT3hVeUJIVlphZWEvRVdtQmxUbjF1TVpuK29ubU4w?=
 =?utf-8?B?dkkrcHhkYXFOaWVISTFvSDJKT3p6NEpHSTYwMkRWQXFqSmdqSmt3QXNVdDlh?=
 =?utf-8?B?VTBlMzVOcXdmb1J3NnlrSmhvWDJKQVB2STI4RHV2djhQU2pnRUNNdXF0QUEr?=
 =?utf-8?B?SlR1NFBocVpxUjRGTFZZandBTEppQldaOUpUdVBqYkJqcEtKVVN5UXdSSm8v?=
 =?utf-8?B?R21IVlJtQW1RV2Q2eHFDVVg5a1dMYWhBcUpOWk5CY0JyeitxR1Fia1lKa2M4?=
 =?utf-8?B?QnlXS2JPN0xrT3hsZVpEZ3g3UHhWeWswL0toSFZMOHdURGVIc1VaNTg2aGFi?=
 =?utf-8?B?WHBEM1M1RU04WVp4Yjc2SnA4S2tVVGRCWUsrVDlTcDA2R2RmcExhVjZHVysv?=
 =?utf-8?B?cjVRanp2dmJ1cE5KckFDMGE3c0VLdXVodzJKRW01Sm1QQXdoZkhTSnppK3Y5?=
 =?utf-8?B?d01TSm9VeGR4bGtaSTZvay9INHdjTm16alg5Z3ZsZGg1a1hhVHRxNzc2WExU?=
 =?utf-8?B?OGU4VFphTmZiR2lsbDhTWDZoZVQvdVliS2V5MWVucnJjUWlaWnEyZEdZVkox?=
 =?utf-8?B?dkgwMjhxNXBVM0h5OXphZXVLS1NPZWpNTnFEaHRkSnRMWVpkeUVsUTNwbFZF?=
 =?utf-8?B?bHVjTTlpM3JjNytvYVJNM1h4TXVWSklZMTZjNHNLWG4wNVNIaVkvNHRWZmlr?=
 =?utf-8?B?eXVacFNNZVR4L3AwRzFnZGIxZldGL2RyRWJsckVuMlJMUnhleFZMNjJuSVhZ?=
 =?utf-8?B?SzZEYnloUTdJOW5RQ28wNHBSWmpNKytKb2k1SmFUWFQxZzdGd0VkUitMN1A0?=
 =?utf-8?B?alRhQlUxUU1xMVlTeDFSTGM1ak1EZy81dlY1bi90R01TS0FiSU94dnVwZ0lq?=
 =?utf-8?B?bXorRUVJVVdmbUNpeitydlk1TGtOc00zMFAya0Q5MW96enlCUWlLdEcrZUJl?=
 =?utf-8?B?QVF3UDFVWUJlai9RdnJtaVVnU3d3LzVZekhvWlQ0OWdUa1ZOMEd5NEJYVWdp?=
 =?utf-8?B?a2hOdFU0SEdDQmxZeXZFRmtaNWN6RHJSeEtrdmFEWWcwZ3lBb082RmVoV1RM?=
 =?utf-8?B?K09oODdYRW1tNUhhSVhWdmRaOGg2OHBnNENoNFBWbFBwUUtVVU44Rjd3dW1i?=
 =?utf-8?B?cTcyeUtwY2dDUmRDeFdoMWxuUXg1QStWcDRuUFhkOFNIR1ZZYTJGSTVPZXNx?=
 =?utf-8?B?SElQYTZRczhJQkNmTWh1cHFoZmp2QUkxaUwzbmh0TGwvVVdEOFRrWk5KT280?=
 =?utf-8?B?WGhJR0dZbnpoU3krRDNXQVJ2MmYrbVVNU2lteWJDQXlSMnhSNzBReDhRVHMz?=
 =?utf-8?B?NDNnQUVhdDNlU250dWdpd3pxbDdOVXVLN1VFY2s5dkhhUXV0bnQ4aDF4QkFo?=
 =?utf-8?B?bUVjNkkyYzVQRjFIM0lFQkJreWhkSThhUjkvSC9OOExpYi8zVisrY1pydjJl?=
 =?utf-8?B?MlF1eDRnVnJ6UEZZK2xYdDZ1OE9PdThWZGY3emRvcmdYbjAyVkRmUWsrd0FH?=
 =?utf-8?B?MENEc0diNHVlUkFiYXlEVlI0NSthcDJ4cTdDeGd3YTFmK2tNeGFjR2VVU2Ru?=
 =?utf-8?B?M1M4SmR6TGlwNDlJcDB6WnM4VFdXSWUzU1pGWDlvQ205Mm5VbzdsMTlBV3Mz?=
 =?utf-8?B?ZHFVNjJkQkRON1liM0w3UW1mT0pGZW9JWUd4OVVqSkl2cEd3STFaejlIQXdW?=
 =?utf-8?B?Skk3TFZNeGlKcTFEUlIycUdwUVZud1dwdWk2cktHU0g4V3pRS1RaeUNqM1I4?=
 =?utf-8?B?VGR5RUQzV3F2cUR5WGg3Zz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NjBBc3JjQ042d0hWZ0t0THZzeTlQNGdUa3RUbkVnaWdYUjBrU2JrZU41bXF2?=
 =?utf-8?B?cEtIVG1qUlR5UklzeWxjbk5VZXhhM3dvRFJuUkc2ZTZZazdMYTBtQ3Z5aUxn?=
 =?utf-8?B?UGNuelNjcEIxWGZQUCtha0g4cml3aHppVUZ4b2UrbkpNT0dhM2NqM3RDMmV1?=
 =?utf-8?B?MWdzaGdoNmFHakd6WTd2Rm4vUUVyTDk4c1lYVGJPemFKa1pSLzdRemxtUVIv?=
 =?utf-8?B?SWZ6cnByR3FuWXdRVm1LOU50RVBEWCtvWWhRSGxUSUdCQkZlQ1NVNWM2N0gr?=
 =?utf-8?B?WHIwUzBUR2FqNXovWHQ1dWFzZDFqamkrWSt2bm9sUmF0UmJ1SFFrb0lTam1w?=
 =?utf-8?B?MTczcGFBcHRBTEFtR0tEUlRYbE0rRU9VUlRTeWFKNXdsWkMwR2p6cEhwYzJD?=
 =?utf-8?B?ditYeXh6Y0dFVHhtNVpjajFxYXBLcGNZT05GWEZxRi8vcUZGck5Xd0poY0g2?=
 =?utf-8?B?cWFqWTdEWC9HQ3hIUisxazJ6WTZmdEtSeCtGeWlScnBDRnlwOWQ5cFBuUVZt?=
 =?utf-8?B?SFcvMy9xSXBDRUMxY1ZDd3FqMUV4b1c5RDFMVDg1cWt4ajRleFF6ZzdNVDF1?=
 =?utf-8?B?S1BMZ3BQc1RFSDdXV3FvaXdyajZYNlo3V2kvYWFqSGZKeUdCb2xrUTZGdWM4?=
 =?utf-8?B?bHhoYlZMUzJDU3dGTC9iMWZ0V3pacHlOREI4ekxWSFdNWG45MmZQcXY3RWkx?=
 =?utf-8?B?OUtNLy9lSGg0WmsyNGd0dWZ0U2lkVjhla05RL2QrdkJRRzBlNUVtaUROdlJF?=
 =?utf-8?B?ZjdTMExaS2F6RDlFQW9tS2V6dTYzNWk2NWd3Z1pxRXExWHdGU2pSOXBMTDhu?=
 =?utf-8?B?eFpWQmJlSlkyZDlaY29qb0h2cUpwLzA2LzVlVk93STdqendZa0NRb2NMZFNZ?=
 =?utf-8?B?cnVLOC9LZmluUUNRV0R4UGtzUlVuTlZrdE9LdEZmVEVYVTczVGNOd1Yyem5Z?=
 =?utf-8?B?VVNoZTE4T3M2cGp0MlZWR3lUR1ppd0N2c08wbjh6SnBIT1dGVmduN09CbHZI?=
 =?utf-8?B?Uk01UWNoT0FIc2NzR2JPeU1uMGZKdFhTWDgrRkJyOE5DMitmVm5ZZWRYZlR5?=
 =?utf-8?B?K3BpR040TndPcTNYcjhaREdZeEVYb0xzb1FXSnlRQUpzTW5FMktQNkVPNUUv?=
 =?utf-8?B?cFpRKzNoVXRVZHRXOC9IKzV6aEV1V0k5aWp2aXpBM0V1cndBeThLT2k5N2Zq?=
 =?utf-8?B?b3lBWU1PbUVVVnFaZVBtSmFsZFNOMWRsL2U1ZXFTUTZBWnVMaHllS3ZuV2FQ?=
 =?utf-8?B?Z0Nueis1VU91dHhDQVlhWE4xL012cTlxbnZ1TnVOaUZvYUtMK1JiRGVEeEc0?=
 =?utf-8?B?cVNULzA1WnVVSUlURFBxUW9iMm4yVFF6c0poKzRVSVNkamlPcXhEeVJiakl0?=
 =?utf-8?B?RVlFdkdGd2dwbGo2clVrb3ptTndrakd5eWVwN2dRemN0VCtzQmFQdWE2a2tP?=
 =?utf-8?B?ZmNXRDVrQ29Kd2k4a3h1bHdRaFZtV3VhckRoM1Q1alpSVHVVMDROc0xuTW9J?=
 =?utf-8?B?ZnI0cGFwNXJRT1ZWd2FpK0dNNlRlRU8xL2hQQVUxMW52V0JwZEw4VU94SUMz?=
 =?utf-8?B?NXhvdzNrOGhNRkU1UVA3WjR6TSs2WHZQN2JIZjlkUk45eVEzTW9qOFoxOXdI?=
 =?utf-8?B?TGllRzRkOW00OVpERTdDVnViQjBzR2cvbFBlNzl1SERodGhsUktCb2JDZk5u?=
 =?utf-8?B?c0hLc0x6UUt6VzJMRkFnYUttWE5hWjlsbGg1Z2htWmNLUzM1QW96TTRoeFli?=
 =?utf-8?B?enNyUnkxZm84SmNZVVozYUJDY1UzNndUc2tJT1RldGhSelJlT2Eza0s5anQz?=
 =?utf-8?B?UDBUUktMb0V0djVsU0ROeTZ5SUF2SlU0YzZ6TFFGNVA3Z2lpZExMRWprUUYz?=
 =?utf-8?B?Qlg4NXBueFp6enJpbHRIVkJQYUp1QW1aR3I1ZVk3bUliazBTcWVSOUltdVJu?=
 =?utf-8?B?MVlvRGMxS2VkZXJqOUFtR1A4dDdreG1FenpnNDl4N2tGSnFJTWw3a0V5SWZn?=
 =?utf-8?B?U1ZDSktGV2tUWjk5ak5IQXBaWDk2SWpZaGRXU2FsUWJPTHJUYzcvVFViUTBz?=
 =?utf-8?B?ZUFxOWxCOW11cWlTOVlZam9COVNMQmFyRUpMNGpwdFdndzF3emZwbURkQXM5?=
 =?utf-8?Q?g+2FpXUH2vuUufQXzcP2lC7J8?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 691bb05e-fba9-4a30-f1f6-08dced4f0baf
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2024 19:24:53.3537 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 49fPEzai1aKO6xFP8T5OwKujp2E80lelVXxrA+o26lG3a3Wb0BTwm4dlCKDlOxShyrTX5QMI0bnYzmUkfb0mzFvL8XcYLlpT7otTNq8dArQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7345
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729020299; x=1760556299;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cJzqkU2ZCAnF0b/b8cs0BVjAguwzJoDipLEm7hssOR8=;
 b=WN6mKOZTdTlZCAYqwEqwpRSon4tc4ONFqMFAwIBDseKc9Datgnh0lxGu
 uN7VjV11Z3PDiBHJfEpjY7NZ8ShWDH0KErMAiwRo7Z8UBUjI2I+Ngd9Mv
 Kz4gNDTxYFSXFD5ZJWx/KzlWBozSkKcqYOEBiNjCQYu2Jq6P/syElNCZ/
 ssAKxDIqa3hiVKsy/4N76qnigWsUnZtXNuH1YwRM4YiaS+O3eNLvX9sqy
 tlCATEV6i10DWP18hU7/gBNTWRDd03jyzFOn/mKs7BLbjrMj77PMQWq0J
 W7BUeTf9lPeTtDZFYFO13noJeH8ZBoHgVSdv6RX+OaKSS8hHu116vQkRC
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WN6mKOZT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v11 07/14] iavf: add support
 for indirect access to PHC time
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBWYWRpbSBGZWRvcmVua28gPHZh
ZGltLmZlZG9yZW5rb0BsaW51eC5kZXY+DQo+IFNlbnQ6IFR1ZXNkYXksIE9jdG9iZXIgMTUsIDIw
MjQgNjo1NiBBTQ0KPiBUbzogUG9sY2hsb3BlaywgTWF0ZXVzeiA8bWF0ZXVzei5wb2xjaGxvcGVr
QGludGVsLmNvbT47IGludGVsLXdpcmVkLQ0KPiBsYW5AbGlzdHMub3N1b3NsLm9yZzsgTG9iYWtp
biwgQWxla3NhbmRlciA8YWxla3NhbmRlci5sb2Jha2luQGludGVsLmNvbT4NCj4gQ2M6IG5ldGRl
dkB2Z2VyLmtlcm5lbC5vcmc7IEtlbGxlciwgSmFjb2IgRSA8amFjb2IuZS5rZWxsZXJAaW50ZWwu
Y29tPjsgRHJld2VrLA0KPiBXb2pjaWVjaCA8d29qY2llY2guZHJld2VrQGludGVsLmNvbT47IFJh
aHVsIFJhbWVzaGJhYnUNCj4gPHJyYW1lc2hiYWJ1QG52aWRpYS5jb20+OyBTaW1vbiBIb3JtYW4g
PGhvcm1zQGtlcm5lbC5vcmc+DQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFU
Q0ggaXdsLW5leHQgdjExIDA3LzE0XSBpYXZmOiBhZGQgc3VwcG9ydCBmb3INCj4gaW5kaXJlY3Qg
YWNjZXNzIHRvIFBIQyB0aW1lDQo+IA0KPiBPbiAxMy8xMC8yMDI0IDE2OjQ0LCBNYXRldXN6IFBv
bGNobG9wZWsgd3JvdGU6DQo+ID4gRnJvbTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBp
bnRlbC5jb20+DQo+ID4gK3N0YXRpYyBpbnQgaWF2Zl9yZWFkX3BoY19pbmRpcmVjdChzdHJ1Y3Qg
aWF2Zl9hZGFwdGVyICphZGFwdGVyLA0KPiA+ICsJCQkJICBzdHJ1Y3QgdGltZXNwZWM2NCAqdHMs
DQo+ID4gKwkJCQkgIHN0cnVjdCBwdHBfc3lzdGVtX3RpbWVzdGFtcCAqc3RzKQ0KPiA+ICt7DQo+
ID4gKwlsb25nIHJldDsNCj4gPiArCWludCBlcnI7DQo+ID4gKw0KPiA+ICsJYWRhcHRlci0+cHRw
LnBoY190aW1lX3JlYWR5ID0gZmFsc2U7DQo+ID4gKwlwdHBfcmVhZF9zeXN0ZW1fcHJldHMoc3Rz
KTsNCj4gPiArDQo+ID4gKwllcnIgPSBpYXZmX3NlbmRfcGhjX3JlYWQoYWRhcHRlcik7DQo+ID4g
KwlpZiAoZXJyKQ0KPiA+ICsJCXJldHVybiBlcnI7DQo+ID4gKw0KPiA+ICsJcmV0ID0gd2FpdF9l
dmVudF9pbnRlcnJ1cHRpYmxlX3RpbWVvdXQoYWRhcHRlci0NCj4gPnB0cC5waGNfdGltZV93YWl0
cXVldWUsDQo+ID4gKwkJCQkJICAgICAgIGFkYXB0ZXItPnB0cC5waGNfdGltZV9yZWFkeSwNCj4g
PiArCQkJCQkgICAgICAgSFopOw0KPiA+ICsJaWYgKHJldCA8IDApDQo+ID4gKwkJcmV0dXJuIHJl
dDsNCj4gPiArCWVsc2UgaWYgKCFyZXQpDQo+ID4gKwkJcmV0dXJuIC1FQlVTWTsNCj4gPiArDQo+
ID4gKwkqdHMgPSBuc190b190aW1lc3BlYzY0KGFkYXB0ZXItPnB0cC5jYWNoZWRfcGhjX3RpbWUp
Ow0KPiA+ICsNCj4gPiArCXB0cF9yZWFkX3N5c3RlbV9wb3N0dHMoc3RzKTsNCj4gDQo+IFVzdWFs
bHkgcHJldHMoKS9wb3N0dHMoKSBwYWlyIGNvdmVycyBhY3R1YWwgdHJhbnNhY3Rpb24gdGltZS4g
VGhhdCBtZWFucw0KPiB0aGUgbGFzdCBlcnJvciBjaGVjayBhbmQgbnNfdG9fdGltZXNwZWM2NCgp
IGFyZSB1c3VhbGx5IG5vIGNvdmVyZWQuDQo+IA0KPiBOb3Qgc3VyZSB0aG91Z2ggaG93IHByZWNp
c2UgaXQgY2FuIGJlIGJlY2F1c2Ugb2Ygc2V2ZXJhbCBxdWV1ZXMgdXNlZCBpbg0KPiB0aGUgcHJv
Y2Vzcy4uDQo+IA0KDQpJbiB0aGUgY2FzZSB3aGVyZSB3ZSBvbmx5IGhhdmUgaW5kaXJlY3QgYWNj
ZXNzIHRvIHRoZSByZWdpc3RlcnMsIHRoaXMgaXMgbmV2ZXIgZ29pbmcgdG8gYmUgcHJlY2lzZS4g
V2UgY291bGQgc3RyaWN0bHkgbW92ZSB0aGlzIHRvIGp1c3QgYWZ0ZXIgdGhlIHdhaXQgaW50ZXJy
dXB0aWJsZSwgYnV0IGluIHByYWN0aWNlIEknbSBub3Qgc3VyZSB0aGF0IHdpbGwgbWF0dGVyIG11
Y2guDQoNCk9uIG5ld2VyIGhhcmR3YXJlLCB0aGUgVkYgaGFzIGRpcmVjdCBhY2Nlc3MgdG8gdGhl
IHRpbWVyIGFuZCBjYW4gcmVhZCBpdCB3aXRob3V0IG5lZWRpbmcgdG8gY29udGFjdCB0aGUgUEYu
DQoNClRoZSBpbnRlbnQgb2YgdGhlIGluZGlyZWN0IGFjY2VzcyBpcyB0byBlbmFibGUgdGltZXN0
YW1wIGV4dGVuc2lvbiB0byBjb252ZXJ0IDQwYml0IHRpbWVzdGFtcHMgdG8gdGhlaXIgNjRiaXQg
d2lkdGguIEZvciB0aGF0IHB1cnBvc2UsIHRoZSBsZXNzIHByZWNpc2UgaW5kaXJlY3QgcmVhZGlu
ZyBpcyBub3QgYSBoYXJkIHJlcXVpcmVtZW50IGFzIHRoZSB0aW1lIHZhbHVlIGNhcHR1cmVkIG9u
bHkgaGFzIHRvIGJlIHdpdGhpbiB+MiBzZWNvbmRzIG9mIHRoZSB0aW1lc3RhbXAgYmVpbmcgZXh0
ZW5kZWQuDQoNClRoYW5rcywNCkpha2UNCg==
