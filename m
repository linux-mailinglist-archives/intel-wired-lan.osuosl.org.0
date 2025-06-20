Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B6016AE18C1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Jun 2025 12:24:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 625DE40E43;
	Fri, 20 Jun 2025 10:24:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z__kk6mrwVbv; Fri, 20 Jun 2025 10:24:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 922EB40DA2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750415086;
	bh=NMvQrC17/EPSNhVYeJu88N6g79pGspzRihx/RXHjh/I=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=j36e4N+gM/Me3HIGLzVXg0mc7YANLBnW3tfD5WJQc0HN2v/eoTL/FMtj0TlOH+YPq
	 Q1r+o/MlYbX9hV2RcYyTqK7XyH8wSeZRLiTZTMkP/HCrtb/LIBVi4SK267ahZCvY7f
	 3LkutN8nkA2bM2ZFPiYM9/8cYtqUb9y2sA1Bk/mG4UtpRcvcQJ6LZyg7PGpaAJ1ViF
	 R9PqmVDtc8x0HEkyOQoHITDi3u5AmjN9X6o+Mts2aqdcaugwRfMpkeyO7lfrZzXjdA
	 3ZA0UJdrNRWrLTHUdwasFwMdJy7jvepMgfABYm+/j7C76Uiu7ecHymzISpC3NEpj4z
	 nc8hHKx8yfIbA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 922EB40DA2;
	Fri, 20 Jun 2025 10:24:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B3136E2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jun 2025 10:24:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A1DD260EFF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jun 2025 10:24:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2MJJuPhPR-9d for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Jun 2025 10:24:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C69096076D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C69096076D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C69096076D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jun 2025 10:24:43 +0000 (UTC)
X-CSE-ConnectionGUID: qaUYg+hJQGKvsi76LUaQ4A==
X-CSE-MsgGUID: lMS3W2NaQfOB2GJoBc8Skw==
X-IronPort-AV: E=McAfee;i="6800,10657,11469"; a="63363220"
X-IronPort-AV: E=Sophos;i="6.16,251,1744095600"; d="scan'208";a="63363220"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2025 03:24:42 -0700
X-CSE-ConnectionGUID: 3xh+KJZdQ+ON01yDp2h8Aw==
X-CSE-MsgGUID: CMJS/f6kTSaf5WfnDe9CbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,251,1744095600"; d="scan'208";a="151419579"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2025 03:24:41 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 20 Jun 2025 03:24:40 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 20 Jun 2025 03:24:40 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.57)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 20 Jun 2025 03:24:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Tcd26HrDP95irsWBcHP1R6q2z7jkfKL+hCitY3a+O1tK5nl1gio9zl1n9kyhoHBfv1Qgo552BH/usaAynVPH9cZp1N260gWNsnn175SJfEhJwGCvr4ornXiG4q406m/Z0wgMAZz8MUggkIzcvjzNlM9/IkDxaD/SoqcbEdQTPdRpmazR0PqrocERKmYDrxiXft934y6uxkeJDqs9ZH1RjkS9Flvn9ItuTlp/sTxxU75jeHWnMwnpBPPAs6i1TCTG4BsI2wnY4ZULq13WSj0khft98P28cmBU4kXU91Qgp4+rUXuIXnA/g1OJHAUc9FkvYfnG80CU5Hquyhx65Go42w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NMvQrC17/EPSNhVYeJu88N6g79pGspzRihx/RXHjh/I=;
 b=lCVh0piui+K64fOrYx60ety3+nNBRbNucY5S2daEka8gx0ZF/39epnUVZLnoPRajMDEmaji5VEob3om9NcRlpkpDbNH7a+YVV0qc0lqpxxcvbISPyP9iwCXh/5LAV72/FMTDEKZwXlZG7yl/82duanu2HX17HnIm8DGnFzXGLYDfsToH/3FPucSTolLnGac786GJPCsTlq8nq3dpjukHXjfvRFJKlTLIZnSdchzE17HzeCg3ZXptMiwY+b82sDsaFSZIuUr9vpaYyqUwpns7zWoqadCmhedUYbJoAo1YpdJClI+vx0LBmwcr/rHuH/WCbVT2VrpuKGZPFC+9alsb3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by BL4PR11MB8869.namprd11.prod.outlook.com (2603:10b6:208:5a8::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.30; Fri, 20 Jun
 2025 10:24:37 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%7]) with mapi id 15.20.8769.022; Fri, 20 Jun 2025
 10:24:35 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Song, Yoong Siang" <yoong.siang.song@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "David S . Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jesper
 Dangaard Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, 
 "Gomes, Vinicius" <vinicius.gomes@intel.com>, Jonathan Corbet
 <corbet@lwn.net>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Shinas Rasheed <srasheed@marvell.com>, "Tian, Kevin" <kevin.tian@intel.com>,
 Brett Creeley <brett.creeley@amd.com>, "Blanco Alcaine, Hector"
 <hector.blanco.alcaine@intel.com>, "Hay, Joshua A" <joshua.a.hay@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Kurt Kanzenbach <kurt@linutronix.de>, "Marcin
 Szycik" <marcin.szycik@linux.intel.com>, Brett Creeley <bcreeley@amd.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next, v3 1/2] igc: Relocate RSS
 field definitions to igc_defines.h
Thread-Index: AQHb4cqlkqsAnlQU90mfFe95zCxG07QL11jA
Date: Fri, 20 Jun 2025 10:24:35 +0000
Message-ID: <IA3PR11MB8986E8534B00D2B3D17C7861E57CA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250620100251.2791202-1-yoong.siang.song@intel.com>
 <20250620100251.2791202-2-yoong.siang.song@intel.com>
In-Reply-To: <20250620100251.2791202-2-yoong.siang.song@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|BL4PR11MB8869:EE_
x-ms-office365-filtering-correlation-id: 536ed57d-fe2f-4a80-2be4-08ddafe4a7ac
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|38070700018|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?NLFAPiy8Klh+YJu0L1BGHI4cvFDy9N6Piu5mAbe/2buufeM/t2oR+PGNZx/J?=
 =?us-ascii?Q?xJPVfNJTJZN7UJLzIm5Lndir/IumqHAaQ8VHD4Nnn24ZHofjlYKK5fdy51bT?=
 =?us-ascii?Q?sA21D1fttgtud3YeJc8pC/fDJpjauZEjVEG/sjBEtQpk3XiXc4hgEX8paW1A?=
 =?us-ascii?Q?RvTrXFrQjlAeH9pz3jVMzK7yLGymcdBVnrAmwT22+t+oe7dHoglGYDgWk0FW?=
 =?us-ascii?Q?rKO28hmEYGEB3l55jsEn6kkcy79/1I6MHzvawLfs7bFIRRIJt882PVCIkwVE?=
 =?us-ascii?Q?40zmBQEiRwZ7t0Z6zYax7OZBNpeOAhMoyGfd3sQv7k5atcfGJCDZLI00syKX?=
 =?us-ascii?Q?F+zpg0pMhbb+DfEqZ6oxhL49OeiFPMT2Ypwc0/nqrgkjYsUfM4RPtfc1DKwh?=
 =?us-ascii?Q?Xl3g9DABJ0JiN6YfhJ9WzBZlH/cpntwxrx8mCGRb+aXbmsWzhL78Qn0SLdWB?=
 =?us-ascii?Q?r6MfH3urJvvs9TiUe1bl6lLYlGTHMgD4SIJxFXCtx+Cold/M0g/vLOTfFlCf?=
 =?us-ascii?Q?tj82We8yiApHpexQ14Kqf4gpMIMk+/ceT8yOCpadG0srvjkTb/TlYIsbXi8O?=
 =?us-ascii?Q?5a2mMDIzFF9jaXiEn3T8vzH46p7mfi5n9PT2zuwFT0gIeeV5D3kFlLxidHxA?=
 =?us-ascii?Q?LIRwLqTpS5uEgTv7RXvcq0bd543zuBbs5MCtP5d36T21zLruNdlzSRBJRSnk?=
 =?us-ascii?Q?8rFnzpe2IEA0BcZCaFoyzsqq9tgJJF/2sM8HamlFAqAwXBLlwSZb5S3SVnc7?=
 =?us-ascii?Q?ZSW2Sc6oO66wg+x27TzB40+mVlmEO1J2iQmL0EChkB0kBVfqUIGVIIRiF8yO?=
 =?us-ascii?Q?vD+Lb4eaQgEKEmQkE4CbJRdwbfCU/8BNYwYp8163gDJkN1w+E2Kzn+DOEwii?=
 =?us-ascii?Q?xwh0ohsj8uq8VUiTeJNphIWktP5UgAEidPPeQKIQOVeS3cTf6iPUi7AgsZS/?=
 =?us-ascii?Q?kRpt3sjt4CRnoz24B3movsZIdqXQiTGptgIyMylS1bt0WKJNRkWbLIqgoV0P?=
 =?us-ascii?Q?Ok9ZrXeohHysXn/TxKx5IRpIw2zWa7+v7u98uJvbm1UDEg3RKamvEXgyGX1b?=
 =?us-ascii?Q?ke0p9bPFU8nBXmQHbj/Pu0jIEw5CgA5MfOL74vlGmyxriOZKhOkLH3HSJWuk?=
 =?us-ascii?Q?uYbMP74HB9DxV8lAzqkeDXnKdI2cRLKpeQX5RUJifYG1jsNjKQwtrAuHXVG2?=
 =?us-ascii?Q?m0g6ZmMMfUE7Ch62o4T4wGPNb0gCNLXIXQxOSagQXlBkxnc6xRGgLTH6KpYu?=
 =?us-ascii?Q?iC9FageT8ht25X9absMqrZ1thdPtOcE+Ev1/rCURbYR+KCwIlqr9zExJd3HW?=
 =?us-ascii?Q?/Jy7cFqNgcvv7CBiMqHVGJjRymv74VKZxuTyCE2gAXGdLxzDeA0egmSWMw3R?=
 =?us-ascii?Q?h4YkByIm1pclO5FzsfMEWqTEH6Ey80ZjOHtAYTDon6C8yZclm/XARC+lx539?=
 =?us-ascii?Q?uAJN3Y/UDINkE5uhfmTsMEzBRJIQSrl+jRpBJLLuV+ljNs5PvpZNSo/puv2g?=
 =?us-ascii?Q?mInJDnVjGUXr/Ak=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(38070700018)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?b6qE9Jo2own4NWy6GFB4GIJzBopRfnNjEmWaeLBG7SM2/bCnyo/qOTYCnK1X?=
 =?us-ascii?Q?pZlir57jFhXkfJ8hwnS16sJA4Sh1fl8A6HoXdB2NeX8Fj3Z5fgPsrXwuV2VW?=
 =?us-ascii?Q?CZWAfNFBsAD0gBo0ogItqsuy8GACr3Ju5Jvm090TPtsVKyDEFD2Ow6L5lb+X?=
 =?us-ascii?Q?TNqOUrIRsXvsSQ18ZvzyU9pxNJTlGUroGjIMnC+ZtiSjr7/skjQcLovkLlQq?=
 =?us-ascii?Q?vo4/srh2J3oniKEeQulnXx3EpqlVsL+IKA096h7PraGgNOqBK568A2WYtOVv?=
 =?us-ascii?Q?R4pX+xlwQ3rVg4YWDT15SeAZzn7LG/trIv9aqYv7HpyTK7QxPvMMQqD520Un?=
 =?us-ascii?Q?FHs4MoNQnnXcNqNHU7fqpxs4PrgZqguanydaB534Z8Wi4HYVAyeFhrM9KAr+?=
 =?us-ascii?Q?+olctIULgyqJyBQM/muidDmWiXdZDLZ2z8dTvWvajLCscdvFe/fNgvZxFNaJ?=
 =?us-ascii?Q?Rw227N2Yb0XOtwv/7cyAkFiHk+pGqCpMDTfKUEez0BPh45gNxXHwAWrpyNZ9?=
 =?us-ascii?Q?03K2CoBf4y6GWaqoq2eQa3QCxQfq6LGrhghhotWCjz9IpxGijaQ+pJ3M1bQi?=
 =?us-ascii?Q?663DEJPKfbYAdJbXufFpgnyXBS62q8VwdXSS4VBxnTndTulXRr2O4ab6fsOg?=
 =?us-ascii?Q?lG1C9ObJwP/rnhY3ZUoP3ynDf25U/eWZTxLq5lKPdvQNISEQnob4ChnToOic?=
 =?us-ascii?Q?A6bGHtmSp8eqr7evY2DSceWjpQlGGL7KODu+n6DnTHER2Ou0LCyPjttyntFq?=
 =?us-ascii?Q?1a0TX1ItEomrTFS8D/+C3LYSbOianVQ3spDAD2eHUJjJuIgG0vuGaTtYHRMY?=
 =?us-ascii?Q?ewDeHB3Vg3xU2YZEbDcdtUmYcOqsqEQG/FzUr7B5lzhT8vyvjGXp4xesT5OQ?=
 =?us-ascii?Q?sh6iUupWKIjN1mPA1pUVpbS0J9YMdBpyI+kFO2JBk4EOUgWANt5M2co6/0YV?=
 =?us-ascii?Q?EdEII2VILCsdiUHP30JWjwlfxHPQqQQG1q9rNbn/o9cOTPg/gvdAtnuDfcAs?=
 =?us-ascii?Q?AWaPqzOoArRsTk2t4Cq/21fM6bTmdGvSoZBiUFmm+Vv4eiUOaooTxeAy4AhJ?=
 =?us-ascii?Q?N2nHugEwtgg8dL38vZ3xQFCZVodiHRn8w0BLjEjB9vuOkWzhbP/IzD4/cH5s?=
 =?us-ascii?Q?SSAv66I9B8LyGoN4L0/uKs2d7wM3qct/UcZCd8zPykjaPA+capzl/iFmdRD6?=
 =?us-ascii?Q?9wJ0T8FckJr6v+aVhqi13KB3tF6v/n6d4ijbxD9PWreg3dzVzwlp8A3gPGNs?=
 =?us-ascii?Q?p/vWmgF05O0qcVuS4znh40DT9NX8/Ncbpf3KZZaMc3BC5Ri7CMcYlV1h2f2G?=
 =?us-ascii?Q?qqRV08w0pEpeB8qk5c9QMZLtnXEUzxvT55k2GOoNEXOfwsFwc7Sv3ihnaACi?=
 =?us-ascii?Q?V9xAGp548/OV5F4KvpWgrhEmyO3FoorhWgKXWAsJR3nGL3x5Q9DTnNHOCJR6?=
 =?us-ascii?Q?4saVYgcVLxC1m5eUxFHDXJK1Hh46XVcKQdmGc0tt8MOMdmKJkzY2yk/Ak532?=
 =?us-ascii?Q?sSAsQ773UYD6XEN6ZdczfuIOwRRQlYWJL3sxYl6oIQUV8ueY85IrFF5EUBoN?=
 =?us-ascii?Q?pvqsj0eREPAfBFqdxvxFi5gKH/XFe95BiYr0k8PDXlpqhTMmJ/LZmihCNQhb?=
 =?us-ascii?Q?ng=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 536ed57d-fe2f-4a80-2be4-08ddafe4a7ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2025 10:24:35.6698 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ALcBdtcuGcZJGtvHn9JADOZu+R/XlKJ9Cr7SbM5vVhmfJx2HiCGccGghmxLb2NFGZuRSD014ADNHeG5KXWN33jEeMUx2ZhVpyJHrNycoDCg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL4PR11MB8869
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750415083; x=1781951083;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Zv3wMyjBoFah3B9o+/TqoDbNRq9ve8j0sggGuxogXGc=;
 b=QP1lCAITP7ZgiOisCU0oe5PA+NFdkQQD07MbQEAS93bftGTJ6IOUH9WB
 YEoFIQrMpz8ncohWexKf/ZBPfuqjoXaZ2CIYY215fJonOQKlDh0YADwPr
 /0H4JOvtY9mh7iD2eB1MMT5iueG5vZ9EeAHkgPgNMKxppYBqzE7iTfKPu
 hxQMYKJtUlijKu/e1wnpl0XTiGoIRuPY4FE1g6DWLJyTiC0iSX19Nnrru
 Z3yg7WT1u2D4xkDBSZH1V+cVg9ai04zKR6uXUBTXZskqwK2wTVipZLnTK
 hoiVUogLuAqAWhKmne2N3tuwiDAUgWt3caqhCm8kTKOEcEX5PYSs5LSfg
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QP1lCAIT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next,
 v3 1/2] igc: Relocate RSS field definitions to igc_defines.h
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Song Yoong Siang
> Sent: Friday, June 20, 2025 12:03 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; David S . Miller
> <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub
> Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Richard
> Cochran <richardcochran@gmail.com>; Alexei Starovoitov
> <ast@kernel.org>; Daniel Borkmann <daniel@iogearbox.net>; Jesper
> Dangaard Brouer <hawk@kernel.org>; John Fastabend
> <john.fastabend@gmail.com>; Gomes, Vinicius
> <vinicius.gomes@intel.com>; Jonathan Corbet <corbet@lwn.net>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Shinas Rasheed
> <srasheed@marvell.com>; Tian, Kevin <kevin.tian@intel.com>; Brett
> Creeley <brett.creeley@amd.com>; Blanco Alcaine, Hector
> <hector.blanco.alcaine@intel.com>; Hay, Joshua A
> <joshua.a.hay@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>; Keller,
> Jacob E <jacob.e.keller@intel.com>; Kurt Kanzenbach
> <kurt@linutronix.de>; Marcin Szycik <marcin.szycik@linux.intel.com>;
> Brett Creeley <bcreeley@amd.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next, v3 1/2] igc: Relocate RSS
> field definitions to igc_defines.h
>=20
> Move the RSS field definitions related to IPv4 and IPv6 UDP from igc.h
> to igc_defines.h to consolidate the RSS field definitions in a single
> header file, improving code organization and maintainability.
>=20
> This refactoring does not alter the functionality of the driver but
> enhances the logical grouping of related constants
>=20
> Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h         | 4 ----
>  drivers/net/ethernet/intel/igc/igc_defines.h | 3 +++
>  2 files changed, 3 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/igc/igc.h
> b/drivers/net/ethernet/intel/igc/igc.h
> index 1525ae25fd3e..0b35e593d5ee 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -406,10 +406,6 @@ extern char igc_driver_name[];
>  #define IGC_FLAG_RSS_FIELD_IPV4_UDP	BIT(6)
>  #define IGC_FLAG_RSS_FIELD_IPV6_UDP	BIT(7)
>=20
> -#define IGC_MRQC_ENABLE_RSS_MQ		0x00000002
> -#define IGC_MRQC_RSS_FIELD_IPV4_UDP	0x00400000
> -#define IGC_MRQC_RSS_FIELD_IPV6_UDP	0x00800000
> -
>  /* RX-desc Write-Back format RSS Type's */  enum igc_rss_type_num {
>  	IGC_RSS_TYPE_NO_HASH		=3D 0,
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h
> b/drivers/net/ethernet/intel/igc/igc_defines.h
> index 86b346687196..d80254f2a278 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -383,11 +383,14 @@
>  #define IGC_RXDEXT_STATERR_IPE		0x40000000
>  #define IGC_RXDEXT_STATERR_RXE		0x80000000
>=20
> +#define IGC_MRQC_ENABLE_RSS_MQ		0x00000002
>  #define IGC_MRQC_RSS_FIELD_IPV4_TCP	0x00010000
>  #define IGC_MRQC_RSS_FIELD_IPV4		0x00020000
>  #define IGC_MRQC_RSS_FIELD_IPV6_TCP_EX	0x00040000
>  #define IGC_MRQC_RSS_FIELD_IPV6		0x00100000
>  #define IGC_MRQC_RSS_FIELD_IPV6_TCP	0x00200000
> +#define IGC_MRQC_RSS_FIELD_IPV4_UDP	0x00400000
> +#define IGC_MRQC_RSS_FIELD_IPV6_UDP	0x00800000
>=20
>  /* Header split receive */
>  #define IGC_RFCTL_IPV6_EX_DIS	0x00010000
> --
> 2.34.1

