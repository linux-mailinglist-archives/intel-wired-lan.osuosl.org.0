Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AGVoGQj0y2lwMwYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2026 18:19:20 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B3E36C7B2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2026 18:19:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C84A08261C;
	Tue, 31 Mar 2026 16:19:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zGDidDtrLb9M; Tue, 31 Mar 2026 16:19:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0C29882628
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774973957;
	bh=bzNoND+yGFWBZ898bBnN3coPmV+xIrjmgbBj9zSc2S4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xqYeM/VDUep5Jgj3AvYC9HfMdTNVB8pgOcIbCz+A4aE19N3x2/h28RyBtGalDy5Pl
	 bAUqrqxTcNQHhtxY6S9gj0Ncw65MRwH5SMYC8Bfc9Q5BP8OMh4ifLcimuM75NAtJbU
	 EPgs9HvLyLVAGU1k4Yk3Z95+S5rXLPknNSX4WibjCUls+PsgB0gaty9nruQquhlH9S
	 u+HhW77uzfH2peATKxzScaizNcrUcM7xBxVK9R+QpgEQAAtnuL9uvtf94FOoLanN0t
	 ZG28t1qkYxC1/dhewh/UDFPYR9m9k+tku0QlVFI+YDsP7bseOkCYnPz+1Y/Fup+xRh
	 EL7E1VgYo04Eg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0C29882628;
	Tue, 31 Mar 2026 16:19:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 30A66E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 16:19:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0D4C382603
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 16:19:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AeHu-3vlbGZ8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Mar 2026 16:19:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F2418825CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F2418825CA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F2418825CA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 16:19:13 +0000 (UTC)
X-CSE-ConnectionGUID: UATiitRRS9iyAzs7iQKuJA==
X-CSE-MsgGUID: DZJW4G0iTm+uiWJjjTnc+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="101446596"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="101446596"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 09:19:13 -0700
X-CSE-ConnectionGUID: SShYhNJ0TguHSiPpV4EQog==
X-CSE-MsgGUID: i8wt3gLqROWxHgD86W1+nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="225587860"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 09:19:13 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 09:19:12 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 09:19:12 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.65) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 09:19:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C21GYWxX3BAQp9Q0vrsckBzkNRlONOxKhlehgJkj8PCFa/hVSSByU++L0Q3K0W+eoB740roaKXUWUBR7fIPS481MYXYhvhaeroxkYUXPcMhLMJ9/51EeEc2rrLZZLIFIcoJdUu6bT9diCcMCHGfWG6Cp4NRROf0kx3FJNQ701DPqJJ395yCc+1bU0O+azZa4ceh29Zh5y1o+ZtfBOv/04uGXpCFo7eRZ0rCHw24WndsNWvXmUTa4cgMUFy6rXPbWk6sj0dDzwqUxxtCo4inWPlXdf1bw8+DADP8TP6ShWiqnOH9F1TSS9BY26D/V43fzVCEE3+Xp5JuG7DmIRa/wng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bzNoND+yGFWBZ898bBnN3coPmV+xIrjmgbBj9zSc2S4=;
 b=dH+hCj7CHftQQI/7EiJgjbjPzClUT/tIJqZnk7JjDbIJvzmTZliSmc7c0ZGCQ65a5Jd5IFKw8fesRNQi7WE0I8a1NDf7eXpTFsCIWQlONbi41AUpI2q8PlkBUgIDWAgInXKF4XlEMGZaVFZg8oEjVNP31ZtnLHe3nv6PR+9vJtdmMv1N6qQPpoITPVA0/2BfDg3ro9bxoUhgG+4hqM30LX3/5SbQBLtoJzVfMtC1m1PUPsC2fc3F5X2YK2Ym1iOmHlVpWUGyLXdfjOuX/2TNLyCTrVqa3wh2NFY2o02ZKaVFnA8tp+ESUsQH+DSCK3tqWNW3Pm6dh3kaFna8lcY84w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by PH7PR11MB6545.namprd11.prod.outlook.com (2603:10b6:510:213::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Tue, 31 Mar
 2026 16:19:09 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e%5]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 16:19:09 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Shanmugam, Jayaprakash"
 <jayaprakash.shanmugam@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 08/14] idpf: refactor idpf
 to use libie control queues
Thread-Index: AQHcuvEa94lyh4kC3k291bh4Z0r3ebW8eDEAgAxla0A=
Date: Tue, 31 Mar 2026 16:19:08 +0000
Message-ID: <SJ1PR11MB6297F2F543BC23E2CCF44A919B53A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20260323174052.5355-1-larysa.zaremba@intel.com>
 <20260323174052.5355-9-larysa.zaremba@intel.com>
 <32bcd784-5e28-4a62-b659-439283d5a5cb@molgen.mpg.de>
In-Reply-To: <32bcd784-5e28-4a62-b659-439283d5a5cb@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|PH7PR11MB6545:EE_
x-ms-office365-filtering-correlation-id: fe7f8a97-e8d9-4d5e-0cf1-08de8f413ce0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|22082099003|56012099003|18002099003|38070700021;
x-microsoft-antispam-message-info: DAXuRBvOx4SJ6cKaa+oSZfjhadh1aZq/9UO2bp+WCP8oG+ZZISOothnBje5FtB2otsWaQ9nyf3elIXJxH4KxouVH8uQvCPubiwJ5EKgCQWtdESXNQuFGiqytCZ+mxJKxGjfjx30NZwFt7sRuuXL3d3vh63mHzof1ZboBjg+qZ+oVNaCqn64zW04KX951qowlsNotzeCl2ymk9SmqJnTwgiytYzS5+YLZCtD0tb+GjClwliWgJpXp3rtfa2A6uoIXZqZ6reO+3lIbMtWXgKMzEvJlaV+nieRkoer2L2EOj38lTtr8rBpgYA9iZ/tYhq82LeXSaF5znvKOLeWcgNP6Y7RhmZ+dD14ZT/DjaqIIu8FR1tWnEikDXy4NaWOZAbsUNRDNYNwrq85SEZpxqAeLQS98hojSRVAs3a8j6hLs/1cuQ/292F/HQKwZxEXXkJGasNRhflk2m3Cv+svcXH7+/INRHx7UnEpDDuBYD9/CptuWRVpxcjncDUtFmyhnZsXtK+FcutHxQUPvSPFeuBaN7rXWptOZePyiA0gVwiGD26LaF3t1xLlg0iYAZUhnp/timlq+xGMRFD/rh6IBVUmnYxQzoF21rVyNYuqfT/0FLOMwH8zDEcHo6zjI5IT0UIGEBbeo7nbvCHhuvpQ3aKONfeyOgTg0/8l39VkvzMZQi1ch621hzpNw5pLMUWKx7ClTpaeXKYcxMR9NyPVLolvFYn3Qwl2tIwhKewVHivGNy07qToH7SH6sGieYAmpmiAkH8+KoH4KM7w1imy7kmc3l58+FKBr7RVKy8qsoMcTDA/Y=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(22082099003)(56012099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dzBPenM4NHZZMUQ3WjhXWGRtc09HcThHZERLM0xrNU9tOCtWUXhLL1NraUxC?=
 =?utf-8?B?YXNIQnQxZlVaSW5VSVB3Ujd6Zzd6Q0tETXdPQ0NlaDRjQWJ4MHRLdUhOVFYx?=
 =?utf-8?B?TlBGTVdzbUloRHlhQk1mWlhxWE1ieS8xVjJrYWNSekl2SW85TjZWaHVwbHpH?=
 =?utf-8?B?SWRuOVZNVnYwbGcwM0xLVnBQbXJTUmRLbTl4WG5PeUlsc1JrRmxndkMvSUcw?=
 =?utf-8?B?L2F2ampCUk1qZ3Q4L2xwaWdFT1dhU3ZldCtBRVFLWCtUdmgwd2c5aFJOMmZ5?=
 =?utf-8?B?RTl4QW5rVnMzVHZwTHNnZ0FpUHF1RlpDRnIxZGwrRGdWUm53UTYycCtrTUJD?=
 =?utf-8?B?cVAyVC9TOFlQWWJvZHJSRE5wU2JtSE5DNncrc2l1K2piUHZDTFNOem5jaXlz?=
 =?utf-8?B?eVBPKzd4S3JBTDc0dVRCYnRCVm1iN0YvMXVPZWJJT01iL0pHM2x5cklJbmRG?=
 =?utf-8?B?YVIvRUN1SjNzWmkzZlZBaEVDK3pzRmlGZDJFSjczZ3R4UzNGbTVnMG1vVjRT?=
 =?utf-8?B?ZDhEVnlRRUVQMkZYaE54Q2tuMnJKbEZUSWdocll1ZDZTVThTTWgzZjcyTXlW?=
 =?utf-8?B?NU1taklCU2ZFSWk4SVhta1pGbTNPZnBQbWplSzNvcFBiZVlIM0g3N3hKa0c5?=
 =?utf-8?B?OFNYVEVqK051VFFKTzJINlNnMGt0cWE2K1g3YzN3WU5WbmNsQ2hiMGFCZkxJ?=
 =?utf-8?B?dTFhU3JYZjQrcHMyUC9kemFHbUhzdTNrWVNVdGp6Z1BiQTJLY0FRL1ZPaDNK?=
 =?utf-8?B?TWk1T2JIcUZZOERmK284ZUhhc1VUZUR3TDFBZ0N6QW5yd0FpQURaUGp5Wkl0?=
 =?utf-8?B?ZVliZkFJR25HT0hhdTNhS0lyM2FNYUdtVFlTaEM1RGlSaE5zNSt6Q3ZKc2Fn?=
 =?utf-8?B?VXorRmplbFA5dm1RQldxVElmOGJwelJ3ZXQveHlxcHhocVMyc3VueUJNbzd2?=
 =?utf-8?B?OGY0ZnFlNkNyR0tBNzJJTXFwZ29SMEVXMXBhdHpJN2xJSHFxcjM2MTcvb1ln?=
 =?utf-8?B?aWI0bmlFUUFQekhRc1YrSXFPVmpIa3kyWm9EM3NWV080ejBXY0VHR2toanJR?=
 =?utf-8?B?VXJueUJaN3ZXYzAyMlBLbE9hVFNkVXUzUUxWeWxxNk1aMnQ4enZyaWZIb3ZT?=
 =?utf-8?B?YnFQaFFmWHhOU3psdStPV25vUzlJRENET2dnS2NsUUJmTXM2bXBBcmY4WUlN?=
 =?utf-8?B?V1U5S1pmRDVpUWVTVUxiVVMzRis1dDl6RmhLcktwZnFKRkVua0NmNGx3MmxV?=
 =?utf-8?B?czlZSlZhOWNac1Z0eXNpMk5lZTJIZmpYeWpjTnZXbHZYZ0h3VzNiQisza25Y?=
 =?utf-8?B?R1o4b0J0b1B0VEdMdXZBRTdkMGxGM29xUFFSZ2pNNmJhcjAwSHd6YldtYUgv?=
 =?utf-8?B?dWZ0eStnYXRtU0dDVlZxd0FvL3JzSzJwUG1Tc3pGNEVwSFJBcFlPVVdCYUhx?=
 =?utf-8?B?OERHaGdyQWhrS1E4cmVaVTNCV0l5cmFMVU9Lc1V5anBCai9UcXkxSTliZjg5?=
 =?utf-8?B?ekhzNy9DSng1ZVlJdmgwMXlpMG1oendzTC9BZUFsYlNLYjlaTFM5aXh3UkNV?=
 =?utf-8?B?STZzYy90eDJqVlE0VXNKeUNuVVA5MWpZOVZ2Nkl3L2tKWFJqSWlySVNCR2I1?=
 =?utf-8?B?SnJsZ3E2SVI3ckVMQ2pZeXpJZHJjTVJDMzd4M25LOEYxMml5b29DZlpPSUVE?=
 =?utf-8?B?K3BNbHNyUVVIcjh4YWFwZGwySk1MN05MWGQ3ZTJ1VUxVa1NnWjJaU0VQNE5n?=
 =?utf-8?B?cW5hT25UYjNjSU1XU3hzSzQ0a0JEMkdrUnlMOHYvZVdFNmhIeE1jOFJ1VDE0?=
 =?utf-8?B?RVdMQm8wcUVpcGdyMkYzYlFRQVFiUTV6MGxvV3hkbUtMSHJCZlZlb0lKSEVV?=
 =?utf-8?B?cDlDNWF4R09ZcDcwemU0cTFxODNhNXJpaDBQNHJveW5vbnlQTzV6VkpkVUFm?=
 =?utf-8?B?UWVvOWxvcUpnWHUydDllallzMUNpSWVQOUpzVkZheEEweExlc3QvM1FVc1Fx?=
 =?utf-8?B?OE84MGVMcE9JZjdZYTBtSzdjRWRNQWdzbUdaZUtENEtPSDhVdmJmMldicTdT?=
 =?utf-8?B?QjljYlRUN0IvMEpmQzZIRVk1T2FwUFhBODg2TTczYzQvZ2FLaXZPYXE2ckNB?=
 =?utf-8?B?QzRnb2F2Z01xTUc3aVpuSDBGVUw5NjBtalZaYWJJUm1DVGp1Vjh1VTRqbnhs?=
 =?utf-8?B?enJ2bGx1b0ViU3pnTXQ2aitUWXJsb3JmdStmRmtyU0l1Z2FwNkVtV1BDR1Ux?=
 =?utf-8?B?S2hIcy9pM0x5Rkgwejd1Qkd3R3Q5dExQTWNkZXVrei9nTWUrdmpyWXlOMHBR?=
 =?utf-8?Q?Z1mxnLSzQ/LXIeVzfX?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: SQik/cruJvNNT8sqoiCUYyH6K6f2VxuEZeqGSITY/vhiAvI/x/LsthxvtLlCLOvXfnD/DpU/dWKy8mGj+42HAcVX4cab4ooOxgv8DVtG86jQYWyn1zTGpjSttgSLQ5Y0Le6A+lYmm8ljVUZuxe0w0Uq9TG5YwUbiOdKucDQSdiHd4rnA4ve8efTtdUULcPxjteEmwJqRH1dS2NFZtltNWtSv49mgDt1ho3tPA8yBRvtAcAM2fvPLX8UN0NHt4jTNuhmS5Pu1turLuK0ZqET7tRKnHko5EvzmJtKUQtB7JSe0U1AzgNgt9JnqoMQnvTZvSXkWyX41WCfNC9MIPsqY9Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe7f8a97-e8d9-4d5e-0cf1-08de8f413ce0
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2026 16:19:08.9662 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +pRs3Gs+Fi3wguMfAv+v1RnZH8cRPIbXKIS1nSp+kEy36JLm+TWF+p418nNx//c6NGYljJpnQGCAkFOteOab3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6545
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774973954; x=1806509954;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bzNoND+yGFWBZ898bBnN3coPmV+xIrjmgbBj9zSc2S4=;
 b=Jq6s54YbIz7bYiBWerR0GKquuuiip6t+Z/nyndYM28pTelNhqxK5wP3f
 YMlAObyQ3/pG9foG+ASQfUkCqYgdCBN3HwcErSBDn8zGtXIV2ewMpe6ow
 YDAdXYKmOao+FFRXlolPDYz/ElPftBuqCTtI84Jcii/rxF82P5cdCopDi
 PQA2IJaBojt/+dlLOdcy2Ul/64tJkObMMj2WqKCzn3T1N/zlxPqugufmt
 rJtslRcIc7fcR9SzQM9ishs/Mkcmhn2AfM6qxc+qmGn8EKR2OG0gTZYUR
 hhTBCCCbVNSwIp5hRlIa8GZvCp5o/yiDp+BbbNvSgNyhp+c+T+iwlR0OL
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Jq6s54Yb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 08/14] idpf: refactor idpf
 to use libie control queues
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
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:pmenzel@molgen.mpg.de,m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:anjali.singhai@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_TWELVE(0.00)[27];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[lists.osuosl.org,intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 52B3E36C7B2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YNCj4gUGF1
bCBNZW56ZWwNCj4gU2VudDogTW9uZGF5LCBNYXJjaCAyMywgMjAyNiAxMTo1OSBBTQ0KPiBUbzog
WmFyZW1iYSwgTGFyeXNhIDxsYXJ5c2EuemFyZW1iYUBpbnRlbC5jb20+DQo+IENjOiBpbnRlbC13
aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgTmd1eWVuLCBBbnRob255IEwNCj4gPGFudGhvbnku
bC5uZ3V5ZW5AaW50ZWwuY29tPjsgTG9iYWtpbiwgQWxla3NhbmRlcg0KPiA8YWxla3NhbmRlci5s
b2Jha2luQGludGVsLmNvbT47IFNhbXVkcmFsYSwgU3JpZGhhcg0KPiA8c3JpZGhhci5zYW11ZHJh
bGFAaW50ZWwuY29tPjsgU2luZ2hhaSwgQW5qYWxpIDxhbmphbGkuc2luZ2hhaUBpbnRlbC5jb20+
Ow0KPiBNaWNoYWwgU3dpYXRrb3dza2kgPG1pY2hhbC5zd2lhdGtvd3NraUBsaW51eC5pbnRlbC5j
b20+OyBGaWphbGtvd3NraSwgTWFjaWVqDQo+IDxtYWNpZWouZmlqYWxrb3dza2lAaW50ZWwuY29t
PjsgVGFudGlsb3YsIEVtaWwgUyA8ZW1pbC5zLnRhbnRpbG92QGludGVsLmNvbT47DQo+IENoaXR0
aW0sIE1hZGh1IDxtYWRodS5jaGl0dGltQGludGVsLmNvbT47IEhheSwgSm9zaHVhIEENCj4gPGpv
c2h1YS5hLmhheUBpbnRlbC5jb20+OyBLZWxsZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGlu
dGVsLmNvbT47DQo+IFNoYW5tdWdhbSwgSmF5YXByYWthc2ggPGpheWFwcmFrYXNoLnNoYW5tdWdh
bUBpbnRlbC5jb20+OyBKaXJpIFBpcmtvDQo+IDxqaXJpQHJlc251bGxpLnVzPjsgRGF2aWQgUy4g
TWlsbGVyIDxkYXZlbUBkYXZlbWxvZnQubmV0PjsgRXJpYyBEdW1hemV0DQo+IDxlZHVtYXpldEBn
b29nbGUuY29tPjsgSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IFBhb2xvIEFiZW5p
DQo+IDxwYWJlbmlAcmVkaGF0LmNvbT47IFNpbW9uIEhvcm1hbiA8aG9ybXNAa2VybmVsLm9yZz47
IEpvbmF0aGFuDQo+IENvcmJldCA8Y29yYmV0QGx3bi5uZXQ+OyBSaWNoYXJkIENvY2hyYW4gPHJp
Y2hhcmRjb2NocmFuQGdtYWlsLmNvbT47DQo+IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNs
YXcua2l0c3plbEBpbnRlbC5jb20+OyBBbmRyZXcgTHVubg0KPiA8YW5kcmV3K25ldGRldkBsdW5u
LmNoPjsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgbGludXgtDQo+IGRvY0B2Z2VyLmtlcm5lbC5v
cmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcNCj4gU3ViamVjdDogUmU6IFtJbnRlbC13
aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV4dCB2NiAwOC8xNF0gaWRwZjogcmVmYWN0b3IgaWRwZiB0
bw0KPiB1c2UgbGliaWUgY29udHJvbCBxdWV1ZXMNCj4gDQo+IERlYXIgTGFyeXNhLCBkZWFyIFBh
dmFuLA0KPiANCj4gDQo+IFRoYW5rIHlvdSBmb3IgeW91ciBwYXRjaC4NCj4gDQo+IEFtIDIzLjAz
LjI2IHVtIDE4OjQwIHNjaHJpZWIgTGFyeXNhIFphcmVtYmE6DQo+ID4gRnJvbTogUGF2YW4gS3Vt
YXIgTGluZ2EgPHBhdmFuLmt1bWFyLmxpbmdhQGludGVsLmNvbT4NCj4gPg0KPiA+IFN1cHBvcnQg
dG8gaW5pdGlhbGl6ZSBhbmQgY29uZmlndXJlIGNvbnRyb2xxcywgYW5kIG1hbmFnZSB0aGVpcg0K
PiA+IHRyYW5zYWN0aW9ucyB3YXMgaW50cm9kdWNlZCBpbiBsaWJpZS4gQXMgcGFydCBvZiBpdCwg
bW9zdCBvZiB0aGUgZXhpc3RpbmcNCj4gPiBjb250cm9scSBzdHJ1Y3R1cmVzIGFyZSByZW5hbWVk
IGFuZCBtb2RpZmllZC4gVXNlIHRob3NlIEFQSXMgaW4gaWRwZiBhbmQNCj4gPiBtYWtlIGFsbCB0
aGUgbmVjZXNzYXJ5IGNoYW5nZXMuDQo+ID4NCj4gPiBQcmV2aW91c2x5IGZvciB0aGUgc2VuZCBh
bmQgcmVjZWl2ZSB2aXJ0Y2hubCBtZXNzYWdlcywgdGhlcmUgdXNlZCB0byBiZSBhDQo+ID4gbWVt
Y3B5IGludm9sdmVkIGluIGNvbnRyb2xxIGNvZGUgdG8gY29weSB0aGUgYnVmZmVyIGluZm8gcGFz
c2VkIGJ5IHRoZSBzZW5kDQo+ID4gZnVuY3Rpb24gaW50byB0aGUgY29udHJvbHEgc3BlY2lmaWMg
YnVmZmVycy4gVGhlcmUgd2FzIG5vIHJlc3RyaWN0aW9uIHRvDQo+ID4gdXNlIGF1dG9tYXRpYyBt
ZW1vcnkgaW4gdGhhdCBjYXNlLiBUaGUgbmV3IGltcGxlbWVudGF0aW9uIGluIGxpYmllDQo+IHJl
bW92ZWQNCj4gPiBjb3B5aW5nIG9mIHRoZSBzZW5kIGJ1ZmZlciBpbmZvIGFuZCBpbnRyb2R1Y2Vk
IERNQSBtYXBwaW5nIG9mIHRoZSBzZW5kDQo+ID4gYnVmZmVyIGl0c2VsZi4gVG8gYWNjb21tb2Rh
dGUgaXQsIHVzZSBkeW5hbWljIG1lbW9yeSBmb3IgdGhlIGxhcmdlciBzZW5kDQo+ID4gYnVmZmVy
cy4gRm9yIHNtYWxsZXIgb25lcyAoPD0gMTI4IGJ5dGVzKSBsaWJpZSBzdGlsbCBjYW4gY29weSB0
aGVtIGludG8gdGhlDQo+ID4gcHJlLWFsbG9jYXRlZCBtZXNzYWdlIG1lbW9yeS4NCj4gPg0KPiA+
IEluIGNhc2Ugb2YgcmVjZWl2ZSwgaWRwZiByZWNlaXZlcyBhIHBhZ2UgcG9vbCBidWZmZXIgYWxs
b2NhdGVkIGJ5IHRoZSBsaWJpZQ0KPiA+IGFuZCBjYXJlIHNob3VsZCBiZSB0YWtlbiB0byByZWxl
YXNlIGl0IGFmdGVyIHVzZSBpbiB0aGUgaWRwZi4NCj4gPg0KPiA+IFRoZSBjaGFuZ2VzIGFyZSBm
YWlybHkgdHJpdmlhbCBhbmQgbG9jYWxpemVkLCB3aXRoIGEgbm90YWJsZSBleGNlcHRpb24NCj4g
PiBiZWluZyB0aGUgY29uc29saWRhdGlvbiBvZiBpZHBmX3ZjX3huX3NodXRkb3duIGFuZCBpZHBm
X2RlaW5pdF9kZmx0X21ieA0KPiA+IHVuZGVyIHRoZSBsYXR0ZXIgbmFtZS4gVGhpcyBoYXMgc29t
ZSBhZGRpdGlvbmFsIGNvbnNlcXVlbmNlcyB0aGF0IGFyZQ0KPiA+IGFkZHJlc3NlZCBpbiB0aGUg
Zm9sbG93aW5nIHBhdGNoZXMuDQo+ID4NCj4gPiBUaGlzIHJlZmFjdG9yaW5nIGludHJvZHVjZXMg
cm91Z2hseSBhZGRpdGlvbmFsIDQwS0Igb2YgbW9kdWxlIHN0b3JhZ2UgdXNlZA0KPiA+IGZvciBz
eXN0ZW1zIHRoYXQgb25seSBydW4gaWRwZiwgc28gaWRwZiArIGxpYmllX2NwICsgbGliaWVfcGNp
IHRha2VzIGFib3V0DQo+ID4gNyUgbW9yZSBzdG9yYWdlIHRoYW4ganVzdCBpZHBmIGJlZm9yZSBy
ZWZhY3RvcmluZy4NCj4gDQo+IEV4Y3VzZSBteSBpZ25vcmFuY2UsIGJ1dCB3aGF0IGlzIOKAnG1v
ZHVsZSBzdG9yYWdl4oCdPyBTaXplIG9mIHRoZSBidWlsZCBtb2R1bGU/DQo+IA0KPiA+IFdlIG5v
dyBwcmUtYWxsb2NhdGUgc21hbGwgVFggYnVmZmVycywgc28gdGhhdCBkb2VzIGluY3JlYXNlIHRo
ZSBtZW1vcnkNCj4gPiB1c2FnZSwgYnV0IHJlZHVjZXMgdGhlIG5lZWQgdG8gYWxsb2NhdGUuIFRo
aXMgcmVzdWx0cyBpbiBhZGRpdGlvbmFsIDI1NiAqDQo+ID4gMTI4QiBvZiBtZW1vcnkgcGVybWFu
ZW50bHkgdXNlZCwgaW5jcmVhc2luZyB0aGUgd29yc3QtY2FzZSBtZW1vcnkNCj4gdXNhZ2UgYnkN
Cj4gPiAzMktCIGJ1dCBvdXIgY3RscSBSWCBidWZmZXJzIG5lZWQgdG8gYmUgb2Ygc2l6ZSA0MDk2
QiBhbnl3YXkgKG5vdCBjaGFuZ2VkDQo+ID4gYnkgdGhlIHBhdGNoc2V0KSwgc28gdGhpcyBpcyBo
YXJkbHkgbm90aWNlYWJsZS4NCj4gDQo+IFRoYW5rIHlvdSBmb3IgYWRkaW5nIHRoaXMgaW5mb3Jt
YXRpb24uDQo+IA0KPiA+IEFzIGZvciB0aGUgdGltaW5ncywgdGhlIGZhY3QgdGhhdCB3ZSBhcmUg
bW9zdGx5IGxpbWl0ZWQgYnkgdGhlIEhXIHJlc3BvbnNlDQo+ID4gdGltZSB3aGljaCBpcyBmYXIg
ZnJvbSBpbnN0YW50LCBpcyBub3QgY2hhbmdlZCBieSB0aGlzIHJlZmFjdG9yLg0KPiANCj4gSXTi
gJlkIGJlIGdyZWF0IGlmIHlvdSBuYW1lZCBhIGJlbmNobWFyayB5b3UgdXNlZCB0byB0ZXN0IHRo
aXMuDQo+IA0KPiA+IFJldmlld2VkLWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIu
bG9rdGlvbm92QGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBQYXZhbiBLdW1hciBMaW5n
YSA8cGF2YW4ua3VtYXIubGluZ2FAaW50ZWwuY29tPg0KPiA+IENvLWRldmVsb3BlZC1ieTogTGFy
eXNhIFphcmVtYmEgPGxhcnlzYS56YXJlbWJhQGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5
OiBMYXJ5c2EgWmFyZW1iYSA8bGFyeXNhLnphcmVtYmFAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1v
ZmYtYnk6IFRvbnkgTmd1eWVuIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT4NCj4gPiAtLS0N
Cj4gDQo+IEdyZWF0IGRpZmZzdGF0IQ0KPiANCj4gDQo+IA0KPiBLaW5kIHJlZ2FyZHMsDQo+IA0K
PiBQYXVsDQoNClRlc3RlZC1ieTogU2FtdWVsIFNhbGluIDxTYW11ZWwuc2FsaW5AaW50ZWwuY29t
Pg0K
