Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id x0SmN1oATWoqtQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Jul 2026 15:34:18 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9AE71BF50
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Jul 2026 15:34:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=gJuKDUCF;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D08BA607A5;
	Tue,  7 Jul 2026 13:34:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yCidLmW91Jfw; Tue,  7 Jul 2026 13:34:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 48BCA607A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783431256;
	bh=c/mlAKutGuv4mCgwhMc1Ze4fD7x1hxS7PbUPUN/gO34=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gJuKDUCFeHjozTHhV+UyMcNUz6TLx5HNNdbYths4PBqAS3Xl15JmeLlTmchg65dDY
	 i23nX+St2+sjveSUe6FdNRd63eSJIdy4RCJLvtLR4TzztJYcVnYUKMoPUVs5vWo6W1
	 i5Jn6NlTsTOfwSU+8ggQj+1d2TnKFnEIfcP0B6uGFgY863LMD4vnkjjKSTIsRg6E0Z
	 pZ1YJ6rxAodGz7qjVsdTyLEwdSa/erncQ7JQLv0/QZ4r82uAJCFq9aWKlld2OdNcsI
	 wJnutN3VOBTBxBqpaxsDEMdxS6LFuHOuuBEUGvKww90zQZ19l8HaVqeoZNRdrQe9qn
	 lnhaNas1m2SJA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 48BCA607A0;
	Tue,  7 Jul 2026 13:34:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4177133A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2026 13:34:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3352A40282
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2026 13:34:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GNEmikQwoly2 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jul 2026 13:34:14 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 251EA40288
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 251EA40288
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 251EA40288
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2026 13:34:13 +0000 (UTC)
X-CSE-ConnectionGUID: Plp/u9sfR1mYwDNI2UdE6A==
X-CSE-MsgGUID: JrvI6T7VSVqMdZiyASgZrg==
X-IronPort-AV: E=McAfee;i="6800,10657,11840"; a="94431608"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="94431608"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 06:34:13 -0700
X-CSE-ConnectionGUID: yfKWI0G+QxeDE+r+f0w5FQ==
X-CSE-MsgGUID: y0ltxcTES72bGZLIg9BVvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="250009897"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 06:34:10 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 7 Jul 2026 06:34:08 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 7 Jul 2026 06:34:08 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.9) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 7 Jul 2026 06:34:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xEjeB2KI37stuhFnwcilGYceJoEGTlZDI+3wgagUiIzc/jg/aqsuVoLKOVpOHLsAd5Nr4AMBLGeO2JHjDw08n819f8XvYsNoUq5MHqC181mZggF+J63xPcNC1b1vsT5TF/iJVp4wciITgGawPrvLbulAoC7tHu83TrnodS7AmINOK2w6JrzeoOoTYd4q3iak0sTqwD6ez9LnKXWUb8Yyp9TZbLLTMFP41YlxGroQqRtVk2wLY3n5EIZ/mWGwNaIsAQ6Lw49lpjW0QF353wA6gcHyifWnW0rqgIjXYtCfv6G1TQYVkoKwdFZKSIV/15jRWsXGuPsCzUxexWoBmNrF3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c/mlAKutGuv4mCgwhMc1Ze4fD7x1hxS7PbUPUN/gO34=;
 b=N/PE5jGoBp917yfmHsJERPwj3hxMCXlvvnH0S90lmF93g4I+hr573ZaRw4q7VOx8A112/bhbCk6pqN2vmNiqHICIqUZ716lJyQk71tdwx7Ml6JUSR8ChnWkYODgWiCK/Jq3aMk67x+VKhMTt4Y/949HEh5sFzZx53OdNAXd65gcZ+0SL5kkyLtkkLzsa7K0KVLHyC6Z7MUnxVCmd3oH8OzEg+8PPbZA5d49c+okRCiy2UnIAln20/sMDxHT7wLvpr4HlenX4L9VLiGFEgftXIG4aHlkLfQ/C6MuI/UPrfAqmDEp/6/YRgrXEk2M50SEcYtW9Lxpf6wt31cZV3g9m6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB9873.namprd11.prod.outlook.com (2603:10b6:806:4d9::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.11; Tue, 7 Jul
 2026 13:34:00 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0181.008; Tue, 7 Jul 2026
 13:34:00 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 5/6] ixgbe: E610: add MAC
 address runtime refresh
Thread-Index: AQHdCgYlCfAt2DgRY0uxGN/8bMYOHbZiFmoA
Date: Tue, 7 Jul 2026 13:34:00 +0000
Message-ID: <IA3PR11MB89863235540F7FB85EC39056E5F02@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260702091553.57112-1-jedrzej.jagielski@intel.com>
 <20260702091553.57112-6-jedrzej.jagielski@intel.com>
In-Reply-To: <20260702091553.57112-6-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB9873:EE_
x-ms-office365-filtering-correlation-id: bf57f7c5-d51c-4ca5-9f7d-08dedc2c6768
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|18002099003|22082099003|38070700021|56012099006|4143699003|11063799006;
x-microsoft-antispam-message-info: 1Ed18zfP+bBkoObAt6ejXiWPUFOHgWyyeLL9J8zuu2OD9T2RFPk5scQXZxZSppQgs/Hgm/7WZtDwTtIP40p7LNILa4LnPt9BCOGnVz9u2UZZwVvRkQeR8C5n3n/yyindbv/m9k/EDltT/gBjV6Dr9Y30JZ0997nPgp7oLw86hBQ5m5XaJKCCEOf98w4yaMmYVCSfOTYkv4ovpmhlkmuL5ANPuRv4htTL67kiQFpu3HiPLa7Gpo8nizBtBNr4xD7VxcaCFpUNrEUlHFosdrM3NMmHYxHR9JMUW2iwbyUH3dpp4N8ncErvdD81aZd2+gHkOWPwbWkG51goZ3gGqZoxTmcEXiJubRmrIr4xSfh2yUvbXsJqtnyiiQWDl94e87d8N6WFaY7GRWe5GMqF9dO7xNERLMCxUr8vSZx0AlgWrjKLCTG+xOlK3qZbo0sniujHoEaTAznA9iEe2kUHOz6B8LdVX1xHzNE7Z/a6R6baFnE80tdvlhm30uCivxe5oH9q3uAxQ0vtpYmXGEsQYE2CaEW+PdoT/I+XAWXu2MCEaAz/HWBaPqcLGicfc8K9+G1FoIF4qClAcbbo/7M5BP/dQwG9OpMcGJdg6J+RU7zkoj3wmaalhQa0cTM27QbGE8n6uo5s1QZVupzQClgH7um+GrNfTasI6vfjXGN3fWajGDK1Nl4s/riQ3VQNWZIMFQvK0+Ha+gixu1dllGU73frZds+MfvQAcrayMeVVYJnJaJY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(18002099003)(22082099003)(38070700021)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cc3Sd70lNvzrbCGurBQIGUUqYE0HqPCbQed51cxQA7KYsdtmvtz/FIA4fKvl?=
 =?us-ascii?Q?CqJEON0b62rFH9WjXVD6bUVH9ziMK3tKdTSQ4f2dF1f7GA6J7YbzseE7trTX?=
 =?us-ascii?Q?YCIbBmZoYFjZg2cJNf80MS6q6vOP4s/93q8FGY1NzAO7A9HKAwXU/5ieN9mA?=
 =?us-ascii?Q?DBeVvsJsczCFwXtTKYuQnjCbbjYnEnKXn1tLUTDGZCIZrUdjV4fpxWbKF+mp?=
 =?us-ascii?Q?3Wh1OGmqhWdQitn5Q+pvq5uJpsHoa8JJtEowLygq9O6K+B71+ItgmaL/D8Hg?=
 =?us-ascii?Q?nUCZ7gr9eZWYCFMpMBwu4oIX1Hu2q8ARvXULHa4l0T8DzGZVXBZ1Zxe1aBhJ?=
 =?us-ascii?Q?L+7MNAvQJ7NKewUpJV7MglhvC7brzluVi+KDb93+PBPci0d9B06gbLegnOwf?=
 =?us-ascii?Q?OJyqRk9eRwHJtxa59xaueyoKrqEvRpRkLiZh3zpL1OPSBxyJgjALmuG9UIc1?=
 =?us-ascii?Q?2vbpr4/PoN0YNr7fgS8ynuFY+V6FCpZmHruSOp0vpoa/s65Sz+BBrpE14oNY?=
 =?us-ascii?Q?NIH4Lonhr3Fw/lfOvV3L/PEXtTDt34w1uhZeOYmE2wYHw5IlNJ7ssqP/+m4a?=
 =?us-ascii?Q?f8vL9WbT6bDGb+2LiTRxzY+/bv+xLIptePNSI20VsAmEjSGVYLk8BM+hHJlD?=
 =?us-ascii?Q?U4bDxvQkk3X6Hg+tyvLqKbdqqtC2jdUOVojTuSgH9y1teAEanSWflGtYOFE2?=
 =?us-ascii?Q?V4/GLUgKeh+RDaUwqS+Guv45oZQD2oI1ctcmOgGZOGT9hl8ROAWQaiXOjAb5?=
 =?us-ascii?Q?RXWM65ZKAJ2Bi4sZlDt6mIJne1vh/sCGddTyMFMId4z8TvEgVMnT4ly6r667?=
 =?us-ascii?Q?q+8utvhXFFcoesqYBHuiJfkTaBAc7fxDwjThsgAZfXMsKguzYt65zTrDdafB?=
 =?us-ascii?Q?wG/sSkzBtoNCeMIuhgvanTZ4/4gTEw/lqE2GVxFNd6ZlatW4T0ywpSq8VTMp?=
 =?us-ascii?Q?2c9Vne7wnu/JxMsi8BZhtQaoJhUjTP1l6Hr2SFenstYefiqHl0VxmdIUnhUm?=
 =?us-ascii?Q?Rd76wZcdKKnunsCt8nv0Amr2Wj8pSvN+ou/4c4mGGGjV7G/ZI7CCDqJJJ5+P?=
 =?us-ascii?Q?WEvP8gif2WK4SFQOmMqA2chov/sHtyH2tq3lSNylFhFQijKZ6SNrx6LNfRoB?=
 =?us-ascii?Q?HFGjZ8tDSUJJHlI2qbdjwMwTupu0DYQ85C6VvFyaBM+OQWo0Xt2AdG+73To5?=
 =?us-ascii?Q?5s+5lhqr3jujuu5N00rtWa3tOHn4dhVKVHe8im/SLEgqfLwLPUP+fAyCdyQd?=
 =?us-ascii?Q?EDNUExyMX0DSYsUqtU6CnpzyyIHA48/CyG/yY6AXbjKpbJfIdigBD16pxawl?=
 =?us-ascii?Q?zy1jRHyxmHKB1ErKJkB6XgMtqxbxVOuNY8rkYPEZhbylUnFTzu0OCjkzxwwx?=
 =?us-ascii?Q?RE+PI/S+BpZVYY/KdTPKl61t1QCKL6hO1Wf48fIu6kr+NEnHPs9naQhCIEdU?=
 =?us-ascii?Q?+AFYPBnLAOsLbvmXG0rBd4u2C0tf2Duvw/BrHZlQveZSYVryJ3JtrX31Q7Ks?=
 =?us-ascii?Q?19FCltksFT6TeDz8pA5+dnoXvLz4QfnbQwiKw5EwsNk94r/R34tonNRVcWeb?=
 =?us-ascii?Q?JfG4x3hQ8UW6RR5Gyl+y9vYm9GfcWi2in8eCpFaepvVOBBiR+4uMWPw5o7Q1?=
 =?us-ascii?Q?9g2liBS4loewQ4z/obbembEZ6WG6kfrtMYOMVog7ofDk9OJkkl8CDEVacDSX?=
 =?us-ascii?Q?FNaBQuJN9rH5ekGbIM52zj4XMxpvEypAuZ9jQZ+7VN+tOThFxA0TK2hM7E/3?=
 =?us-ascii?Q?7iebWXhSc6nu2Fx8IWFNR/Ef96Fp6pw=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: qEn1oi0lZXjR1zDdHdtK7sL2cm7U4KPMC1yiU7gRNGiCQpQLO+u/umHsTO36878e3wVcCf4t2DEUmCFDKwH39nqelyjScAUjfX4d8xF6+7dShIC503DWFf8hutvItLtCFRMkGDe/btARs0k4vvbM2qAgJz2SB0AsGyzrJVcNagEsNVOVmh2uz/7tE0guPH8fkN9wfORUCpJ4f2XS4qQZZq7/I3x4cw4DuN/UplLbI47OW3maAdC/4hd1C7rxCcvnVed1K20Rfjpm0NEo+G76XlOcI1SR/L3sziYvRlk40qJVF0da3bJ41cUOxvBeAYCSFSY2ObCxGNNmmdVIHxcmkA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf57f7c5-d51c-4ca5-9f7d-08dedc2c6768
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2026 13:34:00.4189 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WnecDceSHc2Bw/zXznRzVawl6dwWCuFdUsYyBbDm1pwjU7CCTIID4LYI5xjw3vZmwtL/8tlSjlZ6tWua43mZGEJ4eRF84RmGOBNVqZfb2vw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB9873
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783431254; x=1814967254;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+CWzqTCVNJQvT1+Z84qDnwUvmsWNsdmWCQFIdsWUoTQ=;
 b=Kma28UgoskAAZcUt9Nu3iQfkaa/2KgZCXw4w3qfwxf3fX/f8qVozhapY
 h9irBLorrWOSf7PNpNDizCrUDfkxYZ6CMtIJiDTlfnNusVj5JdIUQPJ4y
 n1xeP33Ga47s78UQqxwaVmNxSvCUeOL4P6dBRFo8lcwtH+AkNCxcWOKkg
 +jq3qkJRs226J656L9v1j2uftsiDLzcVN5+U/LT9L2BDA46SYQZbpFbLZ
 hS3OzbDzPtWLpRPA++fAjTJgRbWM2hPz68BwloZxzkQ1fKVQPtKtdEQcA
 C5yRPYNyF/IPb6sJsxJ3NzxDooh3uT1W79cHgWuZ1ohrMki3ssEejsU5U
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Kma28Ugo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 5/6] ixgbe: E610: add MAC
 address runtime refresh
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jedrzej.jagielski@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,intel.com:from_mime,intel.com:email,osuosl.org:from_smtp,osuosl.org:email,osuosl.org:dkim,IA3PR11MB8986.namprd11.prod.outlook.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2E9AE71BF50



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Jedrzej Jagielski
> Sent: Thursday, July 2, 2026 11:16 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> netdev@vger.kernel.org; Jagielski, Jedrzej
> <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 5/6] ixgbe: E610: add
> MAC address runtime refresh
>=20
> Whenever MGMT requests MAC addr change and FW does it, driver does not
> get aligned to that change. Current - legacy approach doesn't handle
> such scenario.
>=20
> Poll RAR0 (Receive Address Register) each service task cycle and
> update driver and netdev structs once new MAC addr is detected. It may
> happen that FW updates MAC address stored in RAR0 during runtime so SW
> shall fetch the new address.
>=20
> Refresh addr also during reset path to ensure the address survives
> RAR0 clearing during init_hw().
>=20
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 37
> +++++++++++++++++++
>  1 file changed, 37 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index d1cfe913081f..ce2b1e208c0f 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -6499,6 +6499,36 @@ void ixgbe_disable_tx(struct ixgbe_adapter
> *adapter)
>  	}
>  }
>=20
> +static void ixgbe_mac_addr_refresh(struct ixgbe_adapter *adapter) {
> +	struct net_device *netdev =3D adapter->netdev;
> +	struct ixgbe_hw *hw =3D &adapter->hw;
> +	int err;
> +
> +	if (hw->mac.type !=3D ixgbe_mac_e610)
> +		return;
> +
> +	/* fetch address stored currently in RAR0 in case the addr has
> been
> +	 * altered by FW; if so, use it as the default one
> +	 */
> +	err =3D hw->mac.ops.get_mac_addr(hw, hw->mac.addr);
> +	if (err) {
> +		e_dev_warn("Cannot get MAC address\n");
> +		return;
> +	}
> +
> +	if (ether_addr_equal(netdev->dev_addr, hw->mac.addr) ||
> +	    !is_valid_ether_addr(hw->mac.addr))
> +		return;
> +
> +	ASSERT_RTNL();
> +
> +	eth_hw_addr_set(netdev, hw->mac.addr);
> +	ether_addr_copy(adapter->mac_table[0].addr, hw->mac.addr);
> +
> +	call_netdevice_notifiers(NETDEV_CHANGEADDR, netdev); }
> +
>  void ixgbe_reset(struct ixgbe_adapter *adapter)  {
>  	struct ixgbe_hw *hw =3D &adapter->hw;
> @@ -6516,6 +6546,8 @@ void ixgbe_reset(struct ixgbe_adapter *adapter)
>  			     IXGBE_FLAG2_SFP_NEEDS_RESET);
>  	adapter->flags &=3D ~IXGBE_FLAG_NEED_LINK_CONFIG;
>=20
> +	ixgbe_mac_addr_refresh(adapter);
> +
>  	err =3D hw->mac.ops.init_hw(hw);
>  	switch (err) {
>  	case 0:
> @@ -8701,6 +8733,11 @@ static void ixgbe_service_task(struct
> work_struct *work)
>  			ixgbe_handle_fw_event(adapter);
>  		ixgbe_check_media_subtask(adapter);
>  	}
> +
> +	rtnl_lock();
> +	ixgbe_mac_addr_refresh(adapter);
> +	rtnl_unlock();
> +
>  	ixgbe_reset_subtask(adapter);
>  	ixgbe_phy_interrupt_subtask(adapter);
>  	ixgbe_sfp_detection_subtask(adapter);
> --
> 2.31.1


Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

