Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0LpbGX0JcmmOagAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jan 2026 12:26:53 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F4E65F8E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jan 2026 12:26:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3EB106F697;
	Thu, 22 Jan 2026 11:26:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W9PIEazY8JYT; Thu, 22 Jan 2026 11:26:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 96C336F828
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769081209;
	bh=viZrNmHDW4lDi9Zj/JT4Ptekq8f0a5eGxzASK4//EBc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sQl0M2yxMnGj9Yb8kVXbCtzzjaqiVR1wZC1sEcP3t4sxZbVHJM9GSjjDrrQ/nWiL0
	 EHQxbAleDicn8Dwx7A8LZEAMFPd2hzMfFkLRY8HP5ThGwFrpzElIqKFnumx6Y2kMQv
	 0SzOBG3wAH3nd1iV7jMOxndl4PgYRosJYIuenl0Y12+yZzC9LwwJ/4dsUlA0ifruR1
	 13ZBFlSNH4OlLgsZuoJGBYOudRIAM8/nZwbybTHnC+xWunnMYZomt0GFjnI7FPrAdr
	 9Y8E+V9ZpesEA2UO65T9+X+dRwuOK+qj9PunNJlD1Ppuo2jHlGUqcjValmGXuO2bmT
	 GqqE07m7MHQeA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 96C336F828;
	Thu, 22 Jan 2026 11:26:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 87FE6158
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 11:26:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 772398538E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 11:26:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KrpSIPrCWbJA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Jan 2026 11:26:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A0DDE85341
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A0DDE85341
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A0DDE85341
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 11:26:46 +0000 (UTC)
X-CSE-ConnectionGUID: 0TTUaHtgTYWXldW04hf1vQ==
X-CSE-MsgGUID: vy3fgW9mTtaCq4j6gMtpjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="81038704"
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="81038704"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 03:26:46 -0800
X-CSE-ConnectionGUID: l2Pl3kfeQsCBJpPpL2OJ3Q==
X-CSE-MsgGUID: x4egnDTSTICiq5UD5kNrng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="211226778"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 03:26:45 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 03:26:45 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 22 Jan 2026 03:26:45 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.41) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 03:26:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HnJocuqelCc/TRKFTTj0kq/Yfj3H4bYTI9k7EOc2de4FHtijY6snO4rJtqSol35YfB0kBPXoCPU2ZnVE58WbsMStgumSNrMg77UN6dl6D9F9LIo/vhlIvgxwdXddEzsjMR7D8gN/oOUwdo1JdNtNzMJwzHhpFO/tLYxquNHAA5evIRytqcMy6kX7ifAytqE4gJ7AVVmh1vH2ABUDgCSfIw6+LNByuZyhUfI8l4vLaNNWugKftEKyhDXz5zUmHuT88ZJBftGeo0gDjcUL/JnEaybV8d4S25s7dHmfzLCXF3AvUvrBW56/0H8JBQhWWJfZeG2ImcVPaYGP2fJicSBQwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=viZrNmHDW4lDi9Zj/JT4Ptekq8f0a5eGxzASK4//EBc=;
 b=NBXXe0ca0kZHfdR2WnpQ9tGOp1o57LpgvDn0GDy2tI5zMibmSIr1uIiX35sf3gzU7aqv+qbdSROqc9Kw+B20Ld6CzHC1r8DWOfnn2eXx4Gt1lNYpJoHkOvVEoo4PDddVsRTTQDzxHZenpC364wzn8h7CcXlQa9/jGL9y3U7n0VvDakpTefFS+XM0A2cudoTlbCOQz2HNd3mDWUviChDmZyG9dDYZJ/gcvk28JCVOb9fhOKjVXJRvd4gz42o3Gov7OHU4erFBktk2Gt/osUoFhJ2Y3z3N3tEtPwqYh3vFKIgJHTNL+yp7YY1vtpvfZaHG9mQPs2hH7k/6eng6OqzIKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DM4PR11MB8158.namprd11.prod.outlook.com (2603:10b6:8:18b::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Thu, 22 Jan
 2026 11:26:40 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.008; Thu, 22 Jan 2026
 11:26:40 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: David Yang <mmyangfl@gmail.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Pavan Kumar
 Linga" <pavan.kumar.linga@intel.com>, "Burra, Phani R"
 <phani.r.burra@intel.com>, Willem de Bruijn <willemb@google.com>, Alan Brady
 <alan.brady@intel.com>, "Samudrala, Sridhar" <sridhar.samudrala@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] idpf: Fix data race in idpf_net_dim
Thread-Index: AQHciWB5PvnYe/FYQU2/PgJdctZt1LVeER9A
Date: Thu, 22 Jan 2026 11:26:40 +0000
Message-ID: <IA3PR11MB89869E1AEBB3C8908546ACBFE597A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260119162720.1463859-1-mmyangfl@gmail.com>
In-Reply-To: <20260119162720.1463859-1-mmyangfl@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DM4PR11MB8158:EE_
x-ms-office365-filtering-correlation-id: 6b177394-18b3-44b9-7ae3-08de59a91cfe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?XQQ7r8DXMP9foYHLtZL25X4tbybeInO8Y9lBlCnt5THFwk3bQLqX5W5f2TDM?=
 =?us-ascii?Q?k1aMEfB9j9Ic/GwCtFQ0tOvhAMwfb2V4B3jupKsJirrkemFmeVVRs1YL4CVR?=
 =?us-ascii?Q?6Vd2NcpHk6rrdwnDmuzPmEWL7jMTAbFnQqdmsevmjBf5rJpwQ/8dAer1pfqv?=
 =?us-ascii?Q?WX5VKEk3OrmlVIpH1wN8/EtDMQd1M5rdGd02gRJpFZTbgef4oDNwCQDsDtBO?=
 =?us-ascii?Q?/rNqkVzZQ6hK6XOn2yZ7lW6ABTuLUvcr9nSlw7g1JleXbpG62CrwdJtVduZQ?=
 =?us-ascii?Q?6u6nFDJ6cbECxlTo3kOg8IJKM2dcsjErK1XN11QgI0wC+cr2rhTZBDPE45/H?=
 =?us-ascii?Q?W8ttFlyzXuSIrs+NimBIYqVbtAoT10DbT3Q38M2SBH/GnYzlyoFGE2YgLIgB?=
 =?us-ascii?Q?V35e0ZNGXrwvpG/aRwbn5zgjuWoYHufldFC0BLifcyc1H0LvcvskndQAn8jf?=
 =?us-ascii?Q?3bHoehqKdI0MsFEQJmsulGZgk9r9oTNZSgzdFsI79WAoMq8o1Ia//p9MZdbJ?=
 =?us-ascii?Q?kU2BCM5STClZq6ruEStSyxfAHvkMOFXewYVrZMcXfq7L0R+WeIDmld6YFGS5?=
 =?us-ascii?Q?4KYF/t2Q0ThEQJGl/dUdvkMm9VLJTMD6jZfgf7FLaBPnF9jSVg6qDjHuBXCS?=
 =?us-ascii?Q?3p0/9OjY+cNLLCOMbcgunwHjKCCTGXNgKMCQ7+iVo70Fa/eDzuHKDO6Q6BfM?=
 =?us-ascii?Q?9KC/pwqah1nkbvE/4/DF5lGXFG/EgC0gGyakKA6ZMdBf2ZkLdTEu5o5JQ/Br?=
 =?us-ascii?Q?peCznznQozfR8N1CIGniCjchvA3eucTpQhlBemF7iG1nZ2TLJy2OZ7Z+jTHl?=
 =?us-ascii?Q?JbGqMoM3NUePkicsA67p2Q+Obe0tjO24JE1+zqjsYF59dpN2Kj+78YIg/Yge?=
 =?us-ascii?Q?jCimBfAJEArow8DlL7Ohd3kf/VymlpeiP7BShMrSoT/rDAqFs0v2Ab29AroW?=
 =?us-ascii?Q?UFv/voYV41SghEqf2m9BuEN5Zh+dLY9UF9NBtpyLGZWkrStCpMrcs1Vt1+DP?=
 =?us-ascii?Q?MRDAWKjPELUg8+MadSJtRmuShOXU+4UfSUTb8iFo7GGCaAFfHm3GRQTthXF/?=
 =?us-ascii?Q?R4J3V7KpzSGail3ha6u4m3V5AzR41uN3iImHWbbfdiKgsn/X302iyTtckLxF?=
 =?us-ascii?Q?JwGaYGJ2mlrAQ4zNIRpFf5nnVL4RkJqQBoRShiN2hPnCwXXRwdiisF0W0mWn?=
 =?us-ascii?Q?lBHPsnkrJ1DCqv8Q7sEtn3YG6epDTBzAihGJQazRM00n7TgtICFyUxL+3o8Y?=
 =?us-ascii?Q?Mg4PN1EgAEUgaR2QGix6QvgISkByRMrA7+ACQaQtfdHsCgrxQg8plD8F5OvX?=
 =?us-ascii?Q?qrJRa9YbfohxNv6E3dgQCkcJIJ9X6W8Ykb6GqGVmjeD9kbnPOO5h3q2oM3lS?=
 =?us-ascii?Q?BPN6nl02FBypiPsf/L2SHHicSrYNu3vcHG2zW0chrncN8V8TtjWy5CWuCznd?=
 =?us-ascii?Q?S5tTMCoXyDcow1gHWyuqIdueqgyyrHsgWHb5k+CnOrNL011M1y7In0GX44Mp?=
 =?us-ascii?Q?eZuSA9TT57CScC/QO016PqW2SD+Q+cOn10r8R1JwAK+2f8qI3h1uUr8OvDEE?=
 =?us-ascii?Q?BJqodjZpJc5zTZ24UOZQV0jlyeYdvLK+RSuuDzS68uRX+HaiwNmBnlSH3XJI?=
 =?us-ascii?Q?NufsoFEQ1+ei99eq98DBrbM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WzrYHlY/87VJ8/ljM5kY0/kVvZm60T9lsiP+5b3Bv9dcGgicnkSWMG14cImQ?=
 =?us-ascii?Q?bMwvCAOTcrGCK8hCgZnM78UXvIe3OXqWvtEg5iA9uoQjE+mGC8QQoPYwfLMk?=
 =?us-ascii?Q?sLOQSUjJqwEMhmwAYnv6CX4l4sEtOB9PQyVK7y91CYRWvnxjxU9LGgUiZtIG?=
 =?us-ascii?Q?hZPkVeL8JNp0NXGN7PWdQfjCKdqSyjeLt7G/B20zg6ILUNBSWZwuHH3tTBtx?=
 =?us-ascii?Q?ZNufmvxZZ72tAhdk/Ieimt1az6MJIYTA0pc8HfHGgWU/2X/chW9GkTGkYyd9?=
 =?us-ascii?Q?tlB2TpXN2Wg/hoplDPs82zN2EANvYSrReK/D3BipA+gZCqOkkaK05NA47eQP?=
 =?us-ascii?Q?JzqkmlshhUk/BJFmuTYsgIIZmJZ+EMM1wXYyXYVu/UqNtpJKcMtLoGSFejz8?=
 =?us-ascii?Q?mYfXB2/ssRd4w4UeLdzzSkjX4PtP9z+VOaAAJKHx+krDbQaDfkzqUg0y4qp8?=
 =?us-ascii?Q?VViXBjHf2Gz8PE+f9WZi05sEGkzWTACouFB+Zj8quv01AwyuF2n/UjiYxc05?=
 =?us-ascii?Q?CiryuRAMvgTvNaR/Lswkgozep3pjbVdjy23cjdOYkJX0WWB+bJr7bfgj6rac?=
 =?us-ascii?Q?ab1UpYnziEo+Q9FBAwnsi0+i4M68wjUQmourYiJejYy1tX3wwZJGoNW/8GCc?=
 =?us-ascii?Q?en00j+AMs5oyjdDHtb9kqbF3ebKvSayz1EXJTeguZDJ0ma9YWg7nP9Xwt4yS?=
 =?us-ascii?Q?hKhI7iwmytqT8kNR+K078QuPaEZzCD8UoDoN70HTtSBEQoaO6mOTb36CfLoX?=
 =?us-ascii?Q?haBTYxLTwqrUuFB7M3yK6Sy8tJ418/v2bG/jvdyicsglsC3IaoVMFQQWJWO7?=
 =?us-ascii?Q?QyV3/G028tCQNzwHO8U8mtS7MTTeZY8IeDfyDGC+Ag+FNWPXf+ido7TXcaWt?=
 =?us-ascii?Q?CiaBTbPfZx5jvTnAyIUV9UKTfLd2nuSxP/aPw2a18K77XlBkD/AUupu0xAA7?=
 =?us-ascii?Q?mvvNWmVlYEqC8JYolr7xsg6Dzvm3B/mtIxAY2E12gq9B8W11vDQHPxwXDtTW?=
 =?us-ascii?Q?wfUwwNEHJYdt5sVAY6GpWWKTCmnzryxXinsERn0+npz9pycH5fd+8rTziRGg?=
 =?us-ascii?Q?8NPnr5AUOO8iApKSCK9NXUd2D6A6hnFnZqUwkdSs1bQ+qCknO/grsEca3d3S?=
 =?us-ascii?Q?stuqYpmNpXCD7e+Dc4dWD+Hje8m0t/lkuNbLTY5yTfHp6w0ot0SgQVTIzWm/?=
 =?us-ascii?Q?VjpeLFvGc6pKy7oj1ccOLJerZNgThYzcoEc7ejxwHRsdHKP2vqV3olHE7FAZ?=
 =?us-ascii?Q?tvtc9LokCD/TExUzdxN0McnGPb61TtKUwfLjgUPk93dT+C/94yyOjjXBfRvU?=
 =?us-ascii?Q?DWZS8sUHFOG3XgPdQan7yHeBYvp4DTJX7KodKMEuwkt5zQb5URzzCyJj6lf3?=
 =?us-ascii?Q?uevTs/Ksz3s+Kl93DfOlvXijBkqMLYw1yicyi07IyN8j/XyoYk1nxQsnPfKT?=
 =?us-ascii?Q?/PW+uL+2YlDeE/m/YScEKIbDr1Bf/ixNKuvfFonkDMpup9E98+I7bMIBngKI?=
 =?us-ascii?Q?1QyObohgcu8Io2cHPl6EAiqew0hJEbZYJEAnuWMJSFw+otRNTtW+ZT9TzjGC?=
 =?us-ascii?Q?nO8Cjy1wjDjyqQVQYuUsKEw9fi9RXLG580jE/MdsEgE1FGZVHNJ0G8RHY63Q?=
 =?us-ascii?Q?hyJKpw9rWZ+YPWzoIDYj7PTmglLlkCuhEMOHiElyot8d3ZSCjxLclLeWIu2X?=
 =?us-ascii?Q?dI1fJKKHoDDknkC1hG8KWKnBs9l5RTC+/bSK/KOMnWLSD6kYrKR8kU0GQroq?=
 =?us-ascii?Q?6nPZ2oL+WxxZFbUKroXLDI3rM6ATIZA=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b177394-18b3-44b9-7ae3-08de59a91cfe
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2026 11:26:40.3693 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3l30Hxi1BTFKR5MLuEp8jNqj8rqAdw1CyBbkZk0uIzEoyCl4m+0wP49LjJKO2o20Z6XSUehLzoFI+E5HMe3IZAxNlrKyyv6gXhx8GrYvHLY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8158
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769081206; x=1800617206;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eRazPndlhSbCcKfIpvgXbf4isgtR20odI87k7BzRGN0=;
 b=nuKxMcQkhtbQ/3eU4DGXDXXRzqTSYXoIRXMxscvHBqmqUCAPigJT5pKV
 oz3cRLYcAh60kwtTQNA6Or0ZH9BWgnfnh18e7gncqH10JSgOWRmy15fPG
 K3pgEoez9M+87TGxhrrVLQOQwwoWBVpGOTyS4jnjlo9VeIqpaSL7p5wwe
 eZFwV+NRTcjP+l2w8NVMfrdXjH39SXbUmnU9MSH8LSUrV610rBN6utGzg
 V//tlqigNw4blQv6274RmIPjc8o6twFEwPRi2ZSMM+DlLudWJvkiJDBRE
 015lXMjuT5sNO7H9TE/J21SXikJj6SaLAZRCoXrWHxLwfX0lHqLripS05
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nuKxMcQk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] idpf: Fix data race in
 idpf_net_dim
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mmyangfl@gmail.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:pavan.kumar.linga@intel.com,m:phani.r.burra@intel.com,m:willemb@google.com,m:alan.brady@intel.com,m:sridhar.samudrala@intel.com,m:joshua.a.hay@intel.com,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_TO(0.00)[gmail.com,vger.kernel.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim,intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 88F4E65F8E
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of David Yang
> Sent: Monday, January 19, 2026 5:27 PM
> To: netdev@vger.kernel.org
> Cc: David Yang <mmyangfl@gmail.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Pavan Kumar Linga <pavan.kumar.linga@intel.com>;
> Burra, Phani R <phani.r.burra@intel.com>; Willem de Bruijn
> <willemb@google.com>; Alan Brady <alan.brady@intel.com>; Samudrala,
> Sridhar <sridhar.samudrala@intel.com>; Hay, Joshua A
> <joshua.a.hay@intel.com>; intel-wired-lan@lists.osuosl.org; linux-
> kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH net] idpf: Fix data race in
> idpf_net_dim
>=20
> In idpf_net_dim(), some statistics protected by u64_stats_sync, are
> read and accumulated in ignorance of possible u64_stats_fetch_retry()
> events.
> The correct way to copy statistics is already illustrated by
> idpf_add_queue_stats(). Fix this by reading them into temporary
> variables first.
>=20
> Fixes: c2d548cad150 ("idpf: add TX splitq napi poll support")
> Fixes: 3a8845af66ed ("idpf: add RX splitq napi poll support")
> Signed-off-by: David Yang <mmyangfl@gmail.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c | 16 +++++++++++-----
>  1 file changed, 11 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> index 97a5fe766b6b..66ba645e8b90 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -3956,7 +3956,7 @@ static void idpf_update_dim_sample(struct
> idpf_q_vector *q_vector,  static void idpf_net_dim(struct
> idpf_q_vector *q_vector)  {
>  	struct dim_sample dim_sample =3D { };
> -	u64 packets, bytes;
> +	u64 packets, bytes, pkts, bts;
>  	u32 i;
>=20
>  	if (!IDPF_ITR_IS_DYNAMIC(q_vector->tx_intr_mode))
> @@ -3968,9 +3968,12 @@ static void idpf_net_dim(struct idpf_q_vector
> *q_vector)
>=20
>  		do {
>  			start =3D u64_stats_fetch_begin(&txq->stats_sync);
> -			packets +=3D u64_stats_read(&txq->q_stats.packets);
> -			bytes +=3D u64_stats_read(&txq->q_stats.bytes);
> +			pkts =3D u64_stats_read(&txq->q_stats.packets);
> +			bts =3D u64_stats_read(&txq->q_stats.bytes);
>  		} while (u64_stats_fetch_retry(&txq->stats_sync,
> start));
> +
> +		packets +=3D pkts;
> +		bytes +=3D bts;
>  	}
>=20
>  	idpf_update_dim_sample(q_vector, &dim_sample, &q_vector-
> >tx_dim, @@ -3987,9 +3990,12 @@ static void idpf_net_dim(struct
> idpf_q_vector *q_vector)
>=20
>  		do {
>  			start =3D u64_stats_fetch_begin(&rxq->stats_sync);
> -			packets +=3D u64_stats_read(&rxq->q_stats.packets);
> -			bytes +=3D u64_stats_read(&rxq->q_stats.bytes);
> +			pkts =3D u64_stats_read(&rxq->q_stats.packets);
> +			bts =3D u64_stats_read(&rxq->q_stats.bytes);
>  		} while (u64_stats_fetch_retry(&rxq->stats_sync,
> start));
> +
> +		packets +=3D pkts;
> +		bytes +=3D bts;
>  	}
>=20
>  	idpf_update_dim_sample(q_vector, &dim_sample, &q_vector-
> >rx_dim,
> --
> 2.51.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
