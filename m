Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 180ECB2B894
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Aug 2025 07:25:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7BFCD40706;
	Tue, 19 Aug 2025 05:25:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YEEUIZ9zt6c6; Tue, 19 Aug 2025 05:25:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 55AB940701
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755581119;
	bh=DLPPjlZVQSP+HXKOxFckxBnB+b/mIyM4aKlFuliaTnA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kW1zijxvXjeYZ32F4ziU6iLvfoaNvsWACB+1C1FnL+J8gz05MPL0x5IQIhWbfk75m
	 INAQWpuzyiJa9CQHZtg7wJ5qCSdDKvV5Higeqm7eaF5oGTnMHPRvtRkS6AuLRIyU6h
	 JNJMrkJuVvFVsssNCqm/rIEiM9+AMhMoPUftT+QjrV4lzT5Mn8hLrzguoOGudh1bj2
	 0ZasuRQiQj73SMlmwCrZ+iEd1o4lKVfNHGh8lrQ3OqXDiQKTUcwYCpEYsXx3cwngY8
	 kBqtFCA08PTnFITLPCrvxwEqNC+rBv/RMhozZSfrh+tVdKij0w9wIFuriuz3+ieoha
	 XPNRH36H7pUoQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 55AB940701;
	Tue, 19 Aug 2025 05:25:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1627AE2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Aug 2025 05:25:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F0AE440242
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Aug 2025 05:25:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 77e0J6JhoM2b for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Aug 2025 05:25:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=priyax.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 064B240231
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 064B240231
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 064B240231
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Aug 2025 05:25:14 +0000 (UTC)
X-CSE-ConnectionGUID: mnFaHyTpS4CcD60niYpKSg==
X-CSE-MsgGUID: XkgTqgfVSy2sP8cgk7F73g==
X-IronPort-AV: E=McAfee;i="6800,10657,11526"; a="57527306"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="57527306"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 22:25:13 -0700
X-CSE-ConnectionGUID: LbMfXS0uTSOzPThLXkovng==
X-CSE-MsgGUID: pEwdeqCmTtOSz3FSlk715w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="166988527"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 22:25:13 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 22:25:12 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 18 Aug 2025 22:25:12 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.82)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 22:25:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TsZsNgYffiuK3JIjjKKrFuVcYhuFIG9PWk36Pvww2pGQYazUPGVttYV31NpC1g4Bfao/9v8ururDMU2YOXCaA6jVgO3BE2U10rpb+EE+Gf7df4OMrs9/8dNnwwc4kHEZkFi0rWdmwItOwBQpW3pw6F9rsq6bAaSi0taAweEwBU929R97BmIwhBISFL8b8dDA9HCg+gFtDE4nxkuJj7aZduF86B8i8S9nb4bnm82cwwyAfsFKg/cg3FQCvLfgaA821jTIHRCTe7fFtaUpwdPrAWEg2YYBPHE+Urbl7Uy2vVW+F6a3OkU9DKY9WVpqP8jXi1qTuqOh8Hv4XuzjO71o9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DLPPjlZVQSP+HXKOxFckxBnB+b/mIyM4aKlFuliaTnA=;
 b=SQNiikwOgFHmFMJ+GtC7qfExaKy41Up557jDwpzbaPF1yS1twsqllnC/iUV39eX/y+OTYMMEgsXeJTf8M9J2B4IhZphyEWQ8cLkJc1PqpTDCq1ByxwygcULUhO06dAIKrmAGGpjB4NhMR6g0g/tOyZhYcvxLCmAKeNndRiGKgH3JrbUTHrlHNNbMVg6D6vFPu3stng+LwHdedb1YcYfb1skEADVwrBAkLJRrPw47etZVUO45Zfv60XEugpcTUA/xW6U+NCPP37M9KIK3XDlew5raVVUF4KeoGGpgMkEXZ6jpzPSoOk29/jbsM+UtKCNsLz0X4PYq4kDfTIy9BorUyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH3PPF67C992ECC.namprd11.prod.outlook.com
 (2603:10b6:518:1::d28) by LV4PR11MB9467.namprd11.prod.outlook.com
 (2603:10b6:408:2d8::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.25; Tue, 19 Aug
 2025 05:25:10 +0000
Received: from PH3PPF67C992ECC.namprd11.prod.outlook.com
 ([fe80::8435:3b39:7eee:480]) by PH3PPF67C992ECC.namprd11.prod.outlook.com
 ([fe80::8435:3b39:7eee:480%4]) with mapi id 15.20.9031.023; Tue, 19 Aug 2025
 05:25:09 +0000
From: "Singh, PriyaX" <priyax.singh@intel.com>
To: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Zaremba, Larysa" <larysa.zaremba@intel.com>, 
 "Zaremba, Larysa" <larysa.zaremba@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "bjorn@kernel.org" <bjorn@kernel.org>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Jason Infantolino
 <jason.infantolino@cymer.com>, "kernelxing@tencent.com"
 <kernelxing@tencent.com>
Thread-Topic: [Intel-wired-lan] [PATCH v2 iwl-net] ixgbe: xsk: resolve the
 negative overflow of budget in ixgbe_xmit_zc
Thread-Index: AQHb/fuJjlyB9GtbZ02vmR10YRv5xbRgf3lAgAkV+/A=
Date: Tue, 19 Aug 2025 05:25:09 +0000
Message-ID: <PH3PPF67C992ECCC9C89104E935C33EB1709130A@PH3PPF67C992ECC.namprd11.prod.outlook.com>
References: <20250726070356.58183-1-kerneljasonxing@gmail.com>
 <PH0PR11MB50135E015152E30636D2AC37962AA@PH0PR11MB5013.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB50135E015152E30636D2AC37962AA@PH0PR11MB5013.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH3PPF67C992ECC:EE_|LV4PR11MB9467:EE_
x-ms-office365-filtering-correlation-id: 2e8b9a47-6ad1-48dc-2010-08dddee0c3c5
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|38070700018|921020|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?DmP9LFPGWd8TMBfone9aMrhKHDcezgi8gvKF0u8AVVv//oFW008tnweog6Gh?=
 =?us-ascii?Q?Qb8p/kzufwXNYCIqpVHu5VytdkEHK8Gjjk0VvdrXiuY9ve6iR0c7kvGGQS3n?=
 =?us-ascii?Q?KWnGT7D7wh863mioxShmHb12fWCkcXUzYY0IsE5gwyPZLw1SK+aPKRbh5/4+?=
 =?us-ascii?Q?wCYZJxxap//a5TJEpfHqG639kQI04qNavLlPK3W3v9WBvQ21odCJdbm5jp9x?=
 =?us-ascii?Q?fY8B1oQoseQdPE17xfx3mvF6tqPIybq37sU2RMsecFIZ8I63VCh/WR6Qh8jI?=
 =?us-ascii?Q?Z1WOAo13H2ZWnDxTkErkqzovzQa0TRbi6tHez5039ls8shKWgo3SNQHbWuGB?=
 =?us-ascii?Q?2wlUfFhEMTbfvn3tVEg3xoa2PAEnPEOtNhqNWBLcAmbv9AOXdlPMxgiFAB+r?=
 =?us-ascii?Q?cFuFnvSCAUFPLrNo0i/l9n/Un8Q8jAVohEaFQZLoy8uAcxnophmTExVmIZ6r?=
 =?us-ascii?Q?bkfq/ggcW3eioxpnrXApgSR5VWrbf669jqXICyDRwx7zuJ5oCOmZCF5Xnr1b?=
 =?us-ascii?Q?T47eHa+9mNDC/yThFfkuAC2f0FoayqPuiN/OBXziWgyF/sg8ppEwGksZxulr?=
 =?us-ascii?Q?E6PLNLaEOhIBB97ohGrvzEythwqpbNxlfIQOyVIUGEA8usKFAskb+tBUWiRu?=
 =?us-ascii?Q?QsAaVlIRiG68wBSQryhSbn/ZM70ea6mV5k2Ud9FhqFr9l9+H+wFY7oQWxEt8?=
 =?us-ascii?Q?pA/NbrgHhvS5TyGQMW27hrNP3egDEfdS0lKujYkIVzbHJmAYIVYjUJOdM5Fj?=
 =?us-ascii?Q?jSYP8BLDBP3qBi3NKMfQCDQEM8X/SgYjoDUuAG1pxMr9B58OnxsBxqdmGLcP?=
 =?us-ascii?Q?myMqvvft6dk8BuJj6oRUtJaL6YfiEj8sCPvh3s8BZ1LBKF4llxCNHnzS33RO?=
 =?us-ascii?Q?jQ9k/QeO3V5kEI+xnrqxhfVWbiIRM9G+RJj9ID9SxxeQU4LrbxvcwlyH5JRH?=
 =?us-ascii?Q?ab2gIA1r48ID69y+1zT6TiyFtEsPcgG40RLQ0hnsLJdY9sTmJ6RxRRt2XpKY?=
 =?us-ascii?Q?/bCT6ZNhGtZNbNtsUiEXyegUOZdjBWZDhc7KbaoqXeRz4IM4kihQyGKjoV4r?=
 =?us-ascii?Q?9G7RfHOrrTMifOjz+rXfxGQ31gp0+7TeDWu4GB5UyA05ia/6/5CKkaNRYe8b?=
 =?us-ascii?Q?f6OUCljkB9aTyMPrahHfCkkp8ADAYOD030HL/t+PcAxs1nV8/DWamD1I5Ees?=
 =?us-ascii?Q?yseY1q6wd8f6Tfgd5qZ7mW45/vevi+xxcP/NyqS5Bo2U2ajFTh1HmvR477/Q?=
 =?us-ascii?Q?G+Wq65e+vznsBlgUDt2k2tpNEk9TBUiBpwHi7AYJhTuUP3KnJjx0snGjFB/P?=
 =?us-ascii?Q?WyIVlfyFGmgy7N88OhltfdK1IdJ/dw2qs1+4/vGBWdZiThngeRXUsZTBNB1+?=
 =?us-ascii?Q?N3hSr9h7IR6hZLz7/xnRY3Uzfimu5Y4qtO2atqEWBuPM+/iaGRTwdIdBM3OY?=
 =?us-ascii?Q?Bi/TflpM2VkhDPnnKnL91fnxXhpjgWKC?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH3PPF67C992ECC.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(38070700018)(921020)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LipnbjJOHxkFgU9W6mYErX4PFUEpAoayQb9+Cfj95qhtLmF9uPjr3QdY1kPP?=
 =?us-ascii?Q?GpOXBykxba5HnoPopH3X97umijrlbanGP4sjvbpTZ6kpoMAaGMhL7FsMCdti?=
 =?us-ascii?Q?tCCGJsKwYRrj0JFhBDKc1TwLX9gcC+63Gn99Nb2au58O2mMiRWXLj0vGf5bM?=
 =?us-ascii?Q?/JjBu3h7q0vPh1v26JmGRp3OH23iAf4FS8xnQ5pnkvksMCkxrN+SrlVsXFah?=
 =?us-ascii?Q?cNAmZIwGNJologIIbT6ZTKt2JUSdhFlHcKtw9ueiQb1AaRYwt+LudX4ln5W+?=
 =?us-ascii?Q?hX0YL6nr0mCdX/BWf32/A2kV+uEVXi4DGyDp5AHgklQs9p0vleP8r9d86CMA?=
 =?us-ascii?Q?DpQyM/9fu1cnrCRcsbnsqo//ZnGtG8NHzieeFfczh66OWbG1k5gz28RWTpo8?=
 =?us-ascii?Q?2tO5I94+3S2A+5MaPo4QAenw/2aBzJgrAk+6d0+YEbvCOj9uN1CWZVz6l7Ce?=
 =?us-ascii?Q?4QcESnqIGKmcLDH+/xkLqf6Pj1U6jS2zK6b7y/aPya5ePfp9m4rnZN/J3239?=
 =?us-ascii?Q?dWZ7SN93meGZe8knCXN9rwDkEaBIb0iqrQS7/cc60aYAdRNi8Td2wQF/DMCm?=
 =?us-ascii?Q?p4uil/FBRHxYSiGQKIIxZTs/MmuLFcXrlw1AR7kKP/HiQVOQQygjF5e2pNcZ?=
 =?us-ascii?Q?4eVfpyyObCKtx0y++6RCWAhF1SqoEKIAmz6FV8hUW+4JBLZ1GqWHmLDscOMX?=
 =?us-ascii?Q?YCwP/GgXoexT0Hz/rSlgjVDCR0sR6iwcIO0IFnPjEbiycOYkNecFuA1Jw4Zf?=
 =?us-ascii?Q?6HWci6wIHam9meJuf5OXXn6R2fAoAG4cVdNn/9BhB+rvE2ewd3Si/Jz1Ik5J?=
 =?us-ascii?Q?vJzkJe7FhNLdIvahBHQOug+2htNdafSFGoQ74ajhhibrlJ8ynUF1QJFQ2UAW?=
 =?us-ascii?Q?HNwfUwKYUkeKmtOdUCltHy8OjS7wQ8giEg8TcsePqPkSGjkpGXiaS8l6WqW6?=
 =?us-ascii?Q?giDKNrGgQf2YoHjm2+7xA9eNU1olv3bh+/ZnlWRhSAEHbgghl1dWKHJwiIhP?=
 =?us-ascii?Q?o3q5PAHD2tdtxbYfav2v0Ly0c84ivEN9+wUMBZhVnC/pRTj+B8qfN0OEWGq5?=
 =?us-ascii?Q?aFDsFAzm2z2lkftZj/TZEIeSqly+NtcQu5PhvfhpGk6sTOF4AoOZj/8QVqhQ?=
 =?us-ascii?Q?IonZ8fCqDCSqX67/DOinT8i/hWcQiUVc1U9kR+e4HV8xPPjDuPJ6wbljY1oA?=
 =?us-ascii?Q?JIBEjsl7qpIwZkrglVDbSl6A0Of7JwOzW4PsqdgPfqovVXTD8zIIoYV9Wlqr?=
 =?us-ascii?Q?U3ALhxoMegW8dPZOJjDOf9+or/jD0IYj5t5tKF0oImDbhTC6SfbidcJrjNcD?=
 =?us-ascii?Q?YW5c3d4VLTTMYEqC/3CviN5pqlzy8W/Dlh/XxaQts9jWRtC9yU7l2DTRQ8RQ?=
 =?us-ascii?Q?TuYq9lGVE1OpGmOs+uozexiqrjSBATY1ebmNIBAMJYF9mHwjfn6w1ljmLOlC?=
 =?us-ascii?Q?V/F1spRLn4rOUP6Yw21tS7JiXqs24sX3TOAHf/DkaLy69upV/5utRYdpFtCz?=
 =?us-ascii?Q?3UqqcZ3Ztkr4hkVRlK+X8NaeRlYk4HMss/rdYxeKzhXnQBM22AzDVJHbCciT?=
 =?us-ascii?Q?wDNVP2iKCYpqE7Itd4yCQTqhYcJsFLhrktf1iK3c?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH3PPF67C992ECC.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e8b9a47-6ad1-48dc-2010-08dddee0c3c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2025 05:25:09.4471 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 60cwT85Saxoq/wx7WmlT+Cpzbl77xjWIKDEJrkSzsx/A979YVIfJC4J2Kodk2kzkuPslzdUMJkSPzVFoOAipsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV4PR11MB9467
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755581115; x=1787117115;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dGH/jU2R0LKMbtpV3w8NKmp9bSW7D+l/jOztm9MbNk8=;
 b=CZSW/IjQHQHaFXEE7zNmumFGwYe7behAocFsN38Ef1qZysHcW8UBk7D/
 mOeRDhKTpHVefRcH88gppXIvdpssIFFAc+DdjFAHRycOsu1jcMmc9fv7S
 X3DjFu2AZbivcDYgejXbwtQ9uj7ny74ZN3Zg290UunkJIiJTNVWqxUIpS
 ZlM1kzIczuW2F0IsilBNC8A1N25Q7y7GSbmo69HwKzndlPgfaYPhA7B6D
 EpGNXzVPp0bwAPI+gexJ78yjApTHKjMCMlBSxFL5bkBkGj8nPb7FtAZ7B
 QhoSuhoCKekp1OT8i32qhRID4QTI0LTdLpbBeX6fnQmBeYp4GowobgiJZ
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CZSW/IjQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net] ixgbe: xsk: resolve the
 negative overflow of budget in ixgbe_xmit_zc
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jason Xing
> Sent: Saturday, July 26, 2025 12:34 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; bjorn@kernel.org; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Jason Xing
> <kernelxing@tencent.com>
> Subject: [Intel-wired-lan] [PATCH v2 iwl-net] ixgbe: xsk: resolve the neg=
ative
> overflow of budget in ixgbe_xmit_zc
>=20
> From: Jason Xing <kernelxing@tencent.com>
>=20
> Resolve the budget negative overflow which leads to returning true in
> ixgbe_xmit_zc even when the budget of descs are thoroughly consumed.
>=20
> Before this patch, when the budget is decreased to zero and finishes
> sending the last allowed desc in ixgbe_xmit_zc, it will always turn back =
and
> enter into the while() statement to see if it should keep processing pack=
ets,
> but in the meantime it unexpectedly decreases the value again to 'unsigne=
d
> int (0--)', namely, UINT_MAX. Finally, the ixgbe_xmit_zc returns true,
> showing 'we complete cleaning the budget'. That also means
> 'clean_complete =3D true' in ixgbe_poll.
>=20
> The true theory behind this is if that budget number of descs are
> consumed, it implies that we might have more descs to be done. So we
> should return false in ixgbe_xmit_zc to tell napi poll to find another ch=
ance
> to start polling to handle the rest of descs. On the contrary, returning =
true
> here means job done and we know we finish all the possible descs this tim=
e
> and we don't intend to start a new napi poll.
>=20
> It is apparently against our expectations. Please also see how
> ixgbe_clean_tx_irq() handles the problem: it uses do..while() statement t=
o
> make sure the budget can be decreased to zero at most and the negative
> overflow never happens.
>=20
> The patch adds 'likely' because we rarely would not hit the loop codition
> since the standard budget is 256.
>=20
> Fixes: 8221c5eba8c1 ("ixgbe: add AF_XDP zero-copy Tx support")
> Signed-off-by: Jason Xing <kernelxing@tencent.com>
> Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
> Link: https://lore.kernel.org/all/20250720091123.474-3-
> kerneljasonxing@gmail.com/
> 1. use 'negative overflow' instead of 'underflow' (Willem) 2. add reviewe=
d-by
> tag (Larysa) 3. target iwl-net branch (Larysa) 4. add the reason why the =
patch
> adds likely() (Larysa)
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> index ac58964b2f08..7b941505a9d0 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> @@ -398,7 +398,7 @@ static bool ixgbe_xmit_zc(struct ixgbe_ring
> *xdp_ring, unsigned int budget)
>  	dma_addr_t dma;
>  	u32 cmd_type;
>=20
> -	while (budget-- > 0) {
> +	while (likely(budget)) {
>  		if (unlikely(!ixgbe_desc_unused(xdp_ring))) {
>  			work_done =3D false;
>  			break;
> @@ -433,6 +433,8 @@ static bool ixgbe_xmit_zc(struct ixgbe_ring
> *xdp_ring, unsigned int budget)
>  		xdp_ring->next_to_use++;
>  		if (xdp_ring->next_to_use =3D=3D xdp_ring->count)
>  			xdp_ring->next_to_use =3D 0;
> +
> +		budget--;
>  	}
>=20
>  	if (tx_desc) {
> --
> 2.41.3

Tested-by: Priya Singh <priyax.singh@intel.com>
