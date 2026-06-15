Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id x0jYHyUjMGrSOgUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 18:07:01 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4A46881AC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 18:07:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=UVjQnU1Y;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 457A16144C;
	Mon, 15 Jun 2026 16:06:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RnriGQ34Rv0R; Mon, 15 Jun 2026 16:06:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B701F61451
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781539618;
	bh=HBH4YWwcFGp2YJ3gM700XdoV40jSKW/ZP6KkkTbzWYM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UVjQnU1YCHgihtlSFzkvjsk9Qt87GVsh1JXUNDWW1eN9DtBL+Yng/TOUEcQZ7I53Z
	 wKVl3r7G1BnB6yCqd1lQ8nFgAp7lf//Mtkf0eVTUjMOoi255tz0PSAiDah51LIRfk7
	 h1+h1XNxkPIFVI5G0Y9QfkEeyT5eaBz7+w0k5PnOwRG+CrO6NRaoXf05cm44eqAvIi
	 iBukX292XOSp7p7qMCBx2cRojVMjKqHpAUundavHdpfnp3wa09NiZ+/qS3Y/TDC9mv
	 uMds3Aql1LhDPgPzLiuHag8a5vRFixvlIMLsKIMUdXUykbpmPCnU9n/3mfeShroBNi
	 QLLMGUqZoGt/A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B701F61451;
	Mon, 15 Jun 2026 16:06:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7B94A2B8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 16:06:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6D7FE402F1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 16:06:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bvdCZdPjriF8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jun 2026 16:06:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5F8C9402EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F8C9402EB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5F8C9402EB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 16:06:54 +0000 (UTC)
X-CSE-ConnectionGUID: kV/S9suuR+eGjRMuchp/ZA==
X-CSE-MsgGUID: H4k6Zu+2QtSOp3aR4NNGyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="82026220"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="82026220"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 09:05:40 -0700
X-CSE-ConnectionGUID: jI2j2C/wSTmi3BrFjxxxZA==
X-CSE-MsgGUID: KlIeBn3NQf2BjjOtjAMXFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="252623131"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 09:05:40 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 15 Jun 2026 09:05:39 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 15 Jun 2026 09:05:39 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.41) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 15 Jun 2026 09:05:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bwVBNJeMmqWfle1oITJdwnd6mNCVfEIC16DB7hR3y6ryAERyDQnVawqvCIHQMfZwCBlMnWWTyByLgdJIrR/EE/p1Zw778EDPYA2Wplc8njtgQ0+Ki0tKaXm4Rhmll901nVMbWUHkBk0EN/jvg6lC37JRMts4tGZPXIEkEwkY1u7qjAQS0uHT0Xe0+aeIkhmctE5MnZ5u3nMDKG16fbC5Gv3nSQB+jHz3az3MB0+Hkmh+0CvB9AUbLzsYzYhvhlJkEgYT9zAyIzgvmlt6x4BNmeglMho1ZHexGHoqOtdYkEQEd0Kpk6jt5eye6F7mdUQtMxg4LklCPjyAkGHyYLVmFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HBH4YWwcFGp2YJ3gM700XdoV40jSKW/ZP6KkkTbzWYM=;
 b=fO9bwmCITsiJkH7E9tzWuG47GCZD52rEqMyf1jsrZhTCEr0LmGeVYC3Ax3bmlaSUchCd6U2K/VP2CeZjKKrinvOE/JpEkO2PAoMB4c8HfqjAhPbPCxX7JQ+NID1iWLTl0E4IktKz+EcGJ+MuOTTdAuBztV4NZKX5pB84SINrsNBhVb9+H+0Turw+QFjBVacgdi2Z7tLFNTmxNr/rU2Rz8M6wzr4psM03wC2T8SfMHHLmo0p1jAX+MrTkbpnphMnlx9r/Bbdx+sKUP0zgUzidLNRDBrzoBiPww5lgXXygu/ytcuYCRTKYzppiHk6qLDr9q5UJoGmJHVsIvUB+a7AB0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SJ0PR11MB5772.namprd11.prod.outlook.com (2603:10b6:a03:422::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.16; Mon, 15 Jun
 2026 16:05:34 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%5]) with mapi id 15.21.0113.015; Mon, 15 Jun 2026
 16:05:34 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 3/6] ice: extract function to
 allocate aggregator info structure
Thread-Index: AQHc8iT7IHNpML3r1kG1LwVvonQ8/7Y/0mcQ
Date: Mon, 15 Jun 2026 16:05:34 +0000
Message-ID: <IA1PR11MB624129AD19DA99F335909AE28BE62@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260601-jk-cleanup-vsi-aggregator-nodes-v1-0-36d6ecbe5ede@intel.com>
 <20260601-jk-cleanup-vsi-aggregator-nodes-v1-3-36d6ecbe5ede@intel.com>
In-Reply-To: <20260601-jk-cleanup-vsi-aggregator-nodes-v1-3-36d6ecbe5ede@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SJ0PR11MB5772:EE_
x-ms-office365-filtering-correlation-id: 5dc405dc-00dd-4c87-c264-08decaf7ee97
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|23010399003|1800799024|376014|56012099006|4143699003|11063799006|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: LvoWshRKcKd1E3W0RMaWM4PZ9+T7/BpzQY5jRxhIqe34nlRf3XgnhQMLZGrxMOQi1m989erFGJINfj3Hrqi95dU/MmTIjICfUk1G29C54iSKp0c7AkogS+xWcI7AM/mR36JghdXd6lnHRdVF34jfuhF5UXbF+/QzXsAeR/B4+HwNeXpMWhlZjtu94NfUqH7SQej/mmYywkMnd/zU7csZUulVT8ZqsrZAuI+dchrLkI3JC3MsFv0pvO5x5wj9HWccOe9/NlHqblrbRga3bgVCtEXA5HSHZIvwTrBs2uOQmDhyZNeyA+krH8VuY1LXLqgU3hPF6Z9Osh4aJcRdq/rnfc9aT83HzojGJ/afP/ptgOt+3lzgfZF+ml0tMEZE98RAFlwOWaePt+UFwTvuEHWDtg3EuY8db4K/H4qheEpV7LUxjlzRb1oXpQvt67cGBRNrdvrt4081oOupnJ1N9EbtXByZZGg/ws9QHuLEwLDNPX/6PfIN78iTF6ASwk7utAeeaV9Rg2cr1vjvwp9kY1wVY1ftM/VPFZdKfjOdzAsBqU9a28VnY37kNEkCySfkmFR5LQJkxRAqVd6kfV4eHyhRAKguV/2aEfEm6pZIUSupLXvYU4oQWTOY7kjmFLj8yXNYR7/APmbyBuMldtcHVbSwLLhlCAe6HY+gUlnTFdbmoM4m8KK8cIkZpE6kzPVYVC5lnqjPUXJ8vBnx4xO1BvSTspQCuI8jlGIp11Yoeuxe82jR96WMxLwCfFkd7RMKwHtW
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(1800799024)(376014)(56012099006)(4143699003)(11063799006)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c21CVVRjMWlPdWZhZm0xbFRKYmdOdDN2VmVsc29Jb0gyMmw1TERwQm1ib252?=
 =?utf-8?B?MXBjN2trQmtraVJiREtMbEZFYkhrZW0xMjk0T1RpK3h3a0owaGRzTDNWNnRi?=
 =?utf-8?B?VFp5MVZoY29hQ1pUekRxVC90ckMxbzhNNTEzTkFJTFoyVnhxbHM5STFWOUwz?=
 =?utf-8?B?ZHkxZEdsQkR0UXNQZDhscXBvUytJZDRyanViVmwzYVIyRFRIM1FaaktScVAx?=
 =?utf-8?B?QnNCT25DZ25QWWM2YWxVSEtyamxtV2dBS0ZKOFpQK2gwU2JRT2d1UWtETllO?=
 =?utf-8?B?R1l4U0lreU1sN3puWERIbFZyckVoUmVMUDBHa0NYT0JzVkRuMEoxdGtrVFk0?=
 =?utf-8?B?TzZIVll1dWF0ZzBOSzJSZlJ2a1lZMzNDL0tJOTk0QTIveE8zNUcwWjlhUXow?=
 =?utf-8?B?MjBHVlNIQ3IzVW42KzY5dTI1b0RYcFRPdFJ5dFdTOUZ2eGdTVFU4TjBmRURx?=
 =?utf-8?B?RG9NalNxOS9VOHpKa3A4Mm5RWWdVNlNmVC93eHdJa3l0VGMxNlk1Q21YK3RJ?=
 =?utf-8?B?RFRlME5HZDlobGhlZnA0eEQ4bDhjaERzTkVyUTdTQVN2b2dkRU91UzdpVEN2?=
 =?utf-8?B?WWo3OWhUWUkvcGs5MTFBeE9NZG03UzNjQVRMTlZWd2NoaFNmelFLMXBDSUFl?=
 =?utf-8?B?ZDV1c0hQT0NndFE2cmhreTRvUERGOG14Y2NTVkc2SzlEQkN4UHJPb0hJNHIw?=
 =?utf-8?B?cE8xUnJ6OVFqZXVaSDBmQ2puOWF4WEk4dnhnZk5WSDJHeUJrMXQyS2wwUzdj?=
 =?utf-8?B?dGtJWmtRMm56T3VaUUJzWFR2VjB3VVkrMmdiV0tqQmpJSWx1MVhiMWcvMG9T?=
 =?utf-8?B?dXpYWmhHd0RFZEI0ekgvRmY2VVJpLzFXQTZXVTJWUXUvc09nQlgrYVR4OC9N?=
 =?utf-8?B?YmJ4bDM3Yy95d1I3ZnpUckUzT1FUYzNPekRwREYxUGNrNzI2VXVUaThnSm9L?=
 =?utf-8?B?MFQ0VzJHbWRkMU5LdXVSZkFHcUZzejhhekxVL213VlFSTUhrNzErRy9TVjN4?=
 =?utf-8?B?QXEvQk1GQzhjNm02TkJvSFBvQ3BkS2pEaU5oNW1Bait1Ni84L28yOXg1NEor?=
 =?utf-8?B?NmNTZlFYT2g3UUp1bGk5RHVURHhEUVdlSUlNUFdzTi92UDROVEExN2Nidmg2?=
 =?utf-8?B?VzBxZEh4SjIvS3FRR25zbkhhVWVUNmZJeUdmS2RaV2hCU1FsVUhFazVIdW9J?=
 =?utf-8?B?Zml2MTlrc0Q3QXJjZkxaVlZQVW5xVk8wbGRjSVVvekVjeHpJQ0JPUXQ4SFVI?=
 =?utf-8?B?SjJPb3VSUmdIdUc1R2FicWYyaDBkYS9XZE1GVk1wTXZrcWVBdTZmVzBzdkVI?=
 =?utf-8?B?eHZhR0t1eXZCUUJGYy84SytHVjE5cThvbm5odWU4V1JIVXlKNTlhVGZSK0J4?=
 =?utf-8?B?QnJBcmtxeUhKaTRDZFpabWtpVVp5ZXRuU2t6RUdhK1ZlMkczb21NeWhTeWdN?=
 =?utf-8?B?UlRGd1Rpem42eFRXSWdNNlQ3MWRYaEZuK2dJUHVmNjRqTFdQUDB5RzZreXdx?=
 =?utf-8?B?QWZDS3hCUE9ibURMMnlwQ29TSVBONGN2aXo0UlBWTVp4ZzZUM25nQzJhTFda?=
 =?utf-8?B?b2xtcGlDWE5kd0J4cU16dmtOWVNhTE1pdmhodEVqdXdva3NNOEtxNHFKZTBD?=
 =?utf-8?B?YjkwMjlLazRqaXZRRDhZV2w5Uy9NVGhqSXdZbzI4VzY3QTM0QWxwZUtKNENr?=
 =?utf-8?B?WlJsT2Y0NHlxQlp0RDRMN2RVNFA3empIbi9MQTBEOFZwWTNpTkhNWk9mdHl5?=
 =?utf-8?B?SjNmczd4czlqOVB3TjQvUzlXeUJkQ0dxVzNrb3ErSk5YTExvZytpa29ZdHlk?=
 =?utf-8?B?ZGdmUjM3RmpvaEZlTC9Pc0lPK2paV1JuVkxET1hiVS96Sk5GeWNzT1lGTkNn?=
 =?utf-8?B?ejh6WVczOUdINTEzbDRFV1A5YW1LcW4xTzA5V1FERHZpSmxLWjU1ajhoL2Nx?=
 =?utf-8?B?NG0xY3Jsc2dLSDlJakppRHY0dGV6cGxrT0kyeFVETnRrYWVUekREVUMzbWxS?=
 =?utf-8?B?R0dOS1hPQXNaM1pqOHVvSzFpenovOVFGalhLK1orTXRSeXRMMVZ6NjFUYktU?=
 =?utf-8?B?LytkK3pOZnYrOEVNanY5RE00UTJ1OXhuS2ZWWGMzejRvdS9FR2FBQ3huU0s4?=
 =?utf-8?B?ZnR5enJrRVNIa0EzRGVXWjkvTFppRklJbU9yQVVPQU1jUS9GV1hTMS9vdXky?=
 =?utf-8?B?WlQwdzdlR0xiaEdoSG81TEtWUnpIeGF3YXJGb1ZTTGttdjJDeVQzR3NXN3RG?=
 =?utf-8?B?cGhiYlZ4ZTdKSzZjUTZwdVJZd2VnV1hKSWFWcVZKU25Qb1RjM2FpUExtL1V2?=
 =?utf-8?Q?R9GW+Qvo/MGam1HgP6?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: UWMF5x1w5kYTGRXRvCNK/XjCfdJH2EsAJpnTVH+gWqfpcLnbd7PxnEN5iWzvFPGomsvVfwlT1yr3t7UKKqBu+EMwqEn0GZI7p+CO/BL5Bmk3sQ3H8DXH6l6eVLfjSLWg+S9daaYsI+FyBOphOoj8FWUjcUMDwHrYiM+bJZURYy7CSUPf9z9sYI3WM6Dfuop85nqcnx038f/tK3665GBNkkMQSvc6QpQIMyt7Pow0QlTdwHQUwejP2Z69XmcVvrsT6YeqkFKEph0wfV/lJ0PCg0z7BE/ImTwjMIRUOokKuyT5+TDlfAA3Pjg/PxBs3dZBzW9mebS8s2tjaWWCQaWkDA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5dc405dc-00dd-4c87-c264-08decaf7ee97
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2026 16:05:34.1358 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nWadYoSuP3vNAG0ZK5RUr+aW50jCO87q3HjcnSHrOtxYUQWTLJxrq3AUEt+wvf8nSQ0D0dbrfc+5qHWbyQryfw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5772
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781539615; x=1813075615;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HBH4YWwcFGp2YJ3gM700XdoV40jSKW/ZP6KkkTbzWYM=;
 b=dMJA7sMZecsPC4oBCwSDOk7Nb8/pmgNBB4UCm2H3tLIWqwHMN8uiDLd2
 EV0Z08w16ObAPQR99B0ottOn1FUiRnN9qz2XMuP6iE4/P5k/bw3XOxih2
 rj8WQU4YSirgVv98qu5X6pjGmXM6ybxZ4o8eMRofCRhqJiHES3WyKHe94
 9Nydxw3KB0SNqNrOy+Epy3GYtT8kc1fJZC3nmAN3nAvJU660L048YW7Da
 dPoEZG1ZclYPje2wyzeCCdczsJ/EkI4DZKIwYvRQbTv1VGPDyOEPFFiRa
 phzNR17ANMI+SN/G20Q8HlMOwA988wvcXz59S5nANZ+j2aD6le5tPvVkB
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dMJA7sMZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/6] ice: extract function to
 allocate aggregator info structure
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,osuosl.org:from_smtp,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,IA1PR11MB6241.namprd11.prod.outlook.com:mid,intel.com:from_mime,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BC4A46881AC

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogMDIgSnVuZSAyMDI2IDA1OjQ0DQo+IFRvOiBJbnRlbCBXaXJlZCBMQU4gPGlu
dGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnPjsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsg
Tmd1eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPg0KPiBDYzogS2l0
c3plbCwgUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IExva3Rpb25v
diwgQWxla3NhbmRyIDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT47IEtlbGxlciwgSmFj
b2IgRSA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPjsgTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFs
ZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFu
XSBbUEFUQ0ggaXdsLW5leHQgMy82XSBpY2U6IGV4dHJhY3QgZnVuY3Rpb24gdG8gYWxsb2NhdGUg
YWdncmVnYXRvciBpbmZvIHN0cnVjdHVyZQ0KPg0KPiBBZGQgYSBuZXcgaWNlX2FsbG9jX2FnZ19p
bmZvKCkgaGVscGVyIGZ1bmN0aW9uIHdoaWNoIGFsbG9jYXRlcyBhbiBhZ2dyZWdhdG9yIGluZm8g
c3RydWN0dXJlIHdpdGggYW4gSUQgYmV0d2VlbiBtaW5faWQgYW5kIG1heF9pZCwgaW5zZXJ0aW5n
IGl0IGludG8gdGhlIGFnZ19saXN0IHhhcnJheS4gVXNlIHRoaXMgZnVuY3Rpb24gaW4gaWNlX3Nj
aGVkX2NmZ19hZ2coKS4NCj4NCj4gVGhpcyBpcyBkb25lIGluIHByZXBhcmF0aW9uIG9mIHJlZmFj
dG9yaW5nIHRoZSBhZ2dyZWdhdG9yIG5vZGUgSUQgbG9naWMgaW4gaWNlX3NldF9hZ2dfdnNpKCku
DQo+DQo+IFNpZ25lZC1vZmYtYnk6IEphY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwu
Y29tPg0KPiBSZXZpZXdlZC1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8YWxla3NhbmRyLmxva3Rp
b25vdkBpbnRlbC5jb20+DQo+IC0tLQ0KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX3NjaGVkLmMgfCA3NCArKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0NCj4gMSBmaWxl
IGNoYW5nZWQsIDUyIGluc2VydGlvbnMoKyksIDIyIGRlbGV0aW9ucygtKQ0KPg0KDQpUZXN0ZWQt
Ynk6IFJpbml0aGEgUyA8c3gucmluaXRoYUBpbnRlbC5jb20+IChBIENvbnRpbmdlbnQgd29ya2Vy
IGF0IEludGVsKQ0K
