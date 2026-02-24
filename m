Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oMzFDhagnWlrQwQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 13:56:54 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B411874BF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 13:56:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E01B60A40;
	Tue, 24 Feb 2026 12:56:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gvyZTtQufqml; Tue, 24 Feb 2026 12:56:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0974760BDB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771937811;
	bh=e6R1hcnxx6ujhv6XN8iyPmxuH38cIaXd8OKFxeZQwPU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mMsjwmeE+WAnXCPTTJNlpzqGDAKOPTpEV/QKPRkftzRpx2qEee9YPDOGug3D8vIPk
	 u7+Sl6ZWk+eeGuWGsERQLdur1ZAljbAs5m2IlExeFy+Sc0E29LxsrMB9rlu0TuGn89
	 SNNnwp56p11AbTpzPnjnAPT4iyoKhSa58tYHQT15JE0rfy0tSeie8EkstJXpVhXn2L
	 ufzUartiIULeV3n+bTrsSktpFfof/KnrseoBsrA6j2mqRhikvvkzkkIzlvdd877lYL
	 WMb0OyrjQiCvyxrXUJetKJz2FB6PrkD/I6vPwmRiJ91V0Qox15x25RL3JFEey4cSIx
	 E1CzeUFinaf2Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0974760BDB;
	Tue, 24 Feb 2026 12:56:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 180B6249
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 12:56:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1514440486
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 12:56:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HVl9am-kAOvB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 12:56:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 605EC4043E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 605EC4043E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 605EC4043E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 12:56:48 +0000 (UTC)
X-CSE-ConnectionGUID: MaNmj3cRQ32melC3DVMWUw==
X-CSE-MsgGUID: Qi7zk+DOQnm0Gb1Gxy7CVg==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="84311590"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="84311590"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 04:56:47 -0800
X-CSE-ConnectionGUID: u/7tYLC2R5mprSLfBpg0Yg==
X-CSE-MsgGUID: LeJv/OuPS66CYX0JdtzQMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="219995961"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 04:56:47 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 04:56:47 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 04:56:47 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.39) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 04:56:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Dze752ulh7lnvwR5lfHRoeH4rJ5fWeRntFib1e/IpA1Y6irssQfl0+mwCSKSnjEqQS7ZHaCR7yBj0iYWO3pdMpHV6Ht5mFFVY9D0xWeb1JxznrDRNhSDUbd4KMyVx+lhmh6i44/eYYaxKjOu7cWzRSLZWlG3RFDiWd4yxg01pXiTvlLE31LbRCc+5ybEXhsWnw84kK4vupyZWkRtnsUYENrj6nxyiwbAq/rKANUEKTLP/NsFSq1ddna+/wykeXGwle1poJNOrrgHgmGnXohD/gPp+8SBJXI7xAUz7p41ZFgQXMJvNhOiJdA6h2la4V3XDEJVAFcYNcxm2RUcgN44XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e6R1hcnxx6ujhv6XN8iyPmxuH38cIaXd8OKFxeZQwPU=;
 b=ykCIkUCZO18FBMyFK5NVCK52Y2lMOhyAcgg13fhaiM6ReZ03HdGQfNfPGiUO+mL0m49nvGrwrmUKqNSy9pNYw+OYwxbFE1xZ2mAbCtjVskD/AMmOhtCTlsqd58ALnSgYQ2CMX3jRgzie2Y/pWvMnXmCyDyvKUCdm9o59IrA36NqlmRHrzhy4ZeCOI+j7PeFimo9zv0FMtQtpLPG0XirqrlUK824CyO1mcwWd7pjVEGrQbNgiK2yhZohDYTxFIX0ZD/+NIxAD131hb6BYAOr5Uc633KJITG3+LizyHpqVY5maod2K8m5PF2kxbeE5Hu5JzGrStr9nBIfAWr+Tjfdgmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8013.namprd11.prod.outlook.com (2603:10b6:510:239::8)
 by PH7PR11MB8571.namprd11.prod.outlook.com (2603:10b6:510:2fd::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Tue, 24 Feb
 2026 12:56:36 +0000
Received: from PH8PR11MB8013.namprd11.prod.outlook.com
 ([fe80::26a5:58f7:7e5d:5572]) by PH8PR11MB8013.namprd11.prod.outlook.com
 ([fe80::26a5:58f7:7e5d:5572%6]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 12:56:36 +0000
Message-ID: <c0736a76-2126-4d95-a1ad-3823bdb5ef18@intel.com>
Date: Tue, 24 Feb 2026 14:56:29 +0200
User-Agent: Mozilla Thunderbird
To: Kohei Enju <enjuk@amazon.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <kohei.enju@gmail.com>
References: <20251025150136.47618-1-enjuk@amazon.com>
 <20251025150136.47618-2-enjuk@amazon.com>
Content-Language: en-US
From: "Dahan, AvigailX" <avigailx.dahan@intel.com>
In-Reply-To: <20251025150136.47618-2-enjuk@amazon.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TLZP290CA0002.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:9::8)
 To PH8PR11MB8013.namprd11.prod.outlook.com
 (2603:10b6:510:239::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8013:EE_|PH7PR11MB8571:EE_
X-MS-Office365-Filtering-Correlation-Id: 2103ddc5-4c86-47b4-d22d-08de73a424de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?L2xNa1hETWVJZVZlTkRFSWlNLzB0UkRFTEZQL09NRHM0YWI5Q3phUHdiRGRU?=
 =?utf-8?B?cFYzalRzL3Q0VjdEL2lncFp5NkYvRXh0cmZ6cEZld3BVcVpLQUI4RUY0ZWdD?=
 =?utf-8?B?WjNpZVpvU0s2UWRZUHgyQnN4SDY1OG5sNlRiMWVZYzdkR1hldDFKSjRjWlA2?=
 =?utf-8?B?QTR1WHFsV3hoR2N1ek9VNGw4V2ROSDhnZ0s2d2JZbkFxM0ZhNzMrcGRWS2VQ?=
 =?utf-8?B?anhGRlhOakVadUdjM2psalNSaC9ObTZSNzVxNnRRMGR0a2hqeFVyOWpLaXl4?=
 =?utf-8?B?SWlwVkNycFU2MmI1MVZ3K0lKNjlZMVhvVFRBZ3FJQXJ3ajRHWjRmalZYRkpp?=
 =?utf-8?B?UUJyNzdVN29tNTBTd2U1YnMyYk9QV0o4S0k2OHZsWkFtakg0YnJUS09YSVNn?=
 =?utf-8?B?QW55Qm9UY0lydmhkM05ESE5XMXJpSk9DUXVJVFlqcElicmhaejJibmNlcmhC?=
 =?utf-8?B?Vi9QbFlHMGdqWUUrMW8vcEc4aTNSNmU2MmRXU0g2MURCL3Yyc1BQWDlKdmw5?=
 =?utf-8?B?cmE2RFdDcWhxOHdDdmhDN0JGeXhoSEFWWVlvT1dad3NxVXJ4TWFkdzdiT3gz?=
 =?utf-8?B?NVUxYjZGZzRjTzZuUzY2WHo5SnpCcHVpdWtjbUVPc0prRzkxaGRYR3dDdkZn?=
 =?utf-8?B?L25tTUFlVE5NS0FUakROSzRHeDdiZWRGQnBldDQrbFpsY3RwdWVPRFYwbW9j?=
 =?utf-8?B?YW82NldpcUpaUzJhNG15NTVuU3pCZGowM3l0N2F3UVV2WEtYOW00dXRxZUlK?=
 =?utf-8?B?ZnJ5d1d6M0duSFEyZ2haaTBDdlJrcVlFODJMd0h0aWZqRDVQRmQ2OWloZXBI?=
 =?utf-8?B?RnBNb2MxbDR4Ly81ZGIxdzdHaEgwR21BbmZNcU45bVc1TkxNOUdGUGNmcjRz?=
 =?utf-8?B?ak5KTTAwdmo4UjA3dHpxTEFLTVdMN1hiL3BnUGxFUmVKR2gzZ3Zsbkx4dmRF?=
 =?utf-8?B?NDlVK2VWVEdBQVJDbElSMWloQ1g0NC95MHg1WXpkbTVWbC8xSThQbGp2Wk1J?=
 =?utf-8?B?eUV0M0Exd0R4Y0g2MkJxdW1JL0VaUWk2dkhkdExaQzh4RUxwWVlNcTd2VVhL?=
 =?utf-8?B?UW0yNTVMZ0dJb0xveVV3YnVRU0ZQYW5sOXVKWHZvVTE4WXVZa0ZzYXZzUS9p?=
 =?utf-8?B?NENid0dYT25YY3J4RlFyRXVuWEp1RDlOcXdjYk00MVdQb3F3QzE3NlUzUHN3?=
 =?utf-8?B?OHY4Sjc3OFhkeVBHTDFpZXFXVHdOSVV1QXNjMUw2NkxsQlBGbkRKVTBXK3lQ?=
 =?utf-8?B?dWtIdkFVRU83RnJISUJsYmFBWDgzMitFRTlBSlIxc0drQW9YVjc1WFNZVE9r?=
 =?utf-8?B?VHdVTmczM3hpY0VnalZUaktUb2krU1hZM3E1M203SUx0WXNqRTkxcWl2NWpF?=
 =?utf-8?B?R2k5T0JYYUpmQ1NWQWhJVUNKOENIdkpycmJnUitiRGFZbHpEWHdURSt5Ti9j?=
 =?utf-8?B?QU9BRUhRV21nVmxNMTUvVXNhZHE0U05jSTlad1Vac1N5dWlQckh1dCtTUVlM?=
 =?utf-8?B?NFVrQ2NQbkphbkViYTV1SXFXOFhvQ1FaZFdKQ1hwd25tb1hncnFBc0g2N012?=
 =?utf-8?B?L3ZBY3FpTU1Yc2hsQnJSUHM0V010WWlCTXZSUjQ4SWR0QjJ1UEtxcGZNTkU3?=
 =?utf-8?B?MC93aXB0c2lvYml0b0VWVWlnYmJTSzFBeFhIc2M0aWF4UTErdlA4MGZSVVpS?=
 =?utf-8?B?NU5veTdXQ1NGeUMzU25WTytMSmRKa0VPME1kNjJtZVpITUFaMy9iN0JBQUNu?=
 =?utf-8?B?cisyejFLTGk0eDV4VXBIRW84MTFWOWgxSG5YUkVIWXJuMi9NOUVnL1p4Zmc3?=
 =?utf-8?B?dGllWW1PNUVxYk15cE5qOUlOWi9laWhIZjBQZEdrbkduYWoxVjlTRGJLdm8z?=
 =?utf-8?B?WnZqa1dSdjRxWDRDVWE1bGFzS3R1Vit2QzhYRVd2ZkFiclZWd3FQRjNaVmxy?=
 =?utf-8?B?VHJYY3I0Y0NXenFOR3J1VUpqbjFhcFo0ZUpRVUdyRGtEbCtpZTllWVFCSE9F?=
 =?utf-8?B?cTVkci9pRWdLcGJmZGlrQ1F0NTUxb09odmd3NVBDM0VmbHR4NFh0UmVnaDNP?=
 =?utf-8?B?WVkyUy9iR1JKdjZPTnRCV1FWemRocUZrWXk1NHdtOSsraFBJdkhDRHd3UWRB?=
 =?utf-8?Q?VDwM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TWE2ZElYNmFGRFVDa25wYkg1My91NnMyL0VYZFMvdWtIYjhodGU2QTdlbEEy?=
 =?utf-8?B?SlloNGJMTmVJUC9IdE85b0dpK2Y4Sjk4ZjJtOEc2OHBEVG9NTUNlNmtDYVBo?=
 =?utf-8?B?dVVNamRabm5mMFN4SjBrQlhCTnYvYS9yeEI4NEU2WnN1S0tOcXhDYmd2OE9s?=
 =?utf-8?B?WDVJZDB0dVdwbmszN3N3d3lnT3ZGVm9panRCL3prOHl3REZTaUJwWnIvTytR?=
 =?utf-8?B?NndSNzdiYkVKaFV0Rm9WZkV1NWFIaS9JMTh4RjRGZllkbXZjcDlrMmdVZUlL?=
 =?utf-8?B?dm13RlhGdCtUZFZuTnE0bmFERk9Sc0RsTmJ4NGdWY25oVVRrK3VNWGIxd2FC?=
 =?utf-8?B?U09ZSkxyd1BmMXlzY1pwVlhyMDN6cGxZWldnTysyY2YzVC8xditrWjh0R05a?=
 =?utf-8?B?eHc2NC9KVkYrY0RHSGxFcUxPQzRPek0zOUFFUGl6bEs2Z3VzcDJHYXFQWXYz?=
 =?utf-8?B?WDhoZTFEeExMQmpBVjc4L2wxNVdUOEdZS2VlcE9tTUFpcGU0dnJnOU9mOGhl?=
 =?utf-8?B?czZocWF5OWN2Qld3aVF4cTJvWk13MVJ3RVc0Q21uWGc0NFY4MTZDVitqYjBp?=
 =?utf-8?B?MGFqSU1ZdTBSUDJxMXBNTlJCak9OcXJFTVkyOVoyektzemF2azhGTm5ZWVQx?=
 =?utf-8?B?ZzNsSVUxUUNFWURTUVJEc1RaZ01yWHZudG1UYk1lOHFJMkcxN1dMNjVKY0x6?=
 =?utf-8?B?MTRLVHFwWWpPZUc1SHVBMWg2elJ5MHp5aDBRRkw1dmFndXBJbitObmN6Q0FO?=
 =?utf-8?B?ODRoNXo3eDB3V3FsWXNMS1NMakVMcGdTS2loV2JsK1c2c3AwTDl2Z1lkZjVk?=
 =?utf-8?B?ejA2eEgvZktjK3JqLzB4MERIaXdVM1F0bGpKNnRRUUlaQmdzeXZ5Q240UjRS?=
 =?utf-8?B?TnJsZGsvQXc4c0F6cmdPcGJQcStpdmQ4cS9ENXY1NUE1VThnbnl2K2JoRTIv?=
 =?utf-8?B?akNaV3Y3dWZmcHgzUXY2UU96aHpmVlNFM0pQWTdMRnhZRnB6MlU5R214cnZJ?=
 =?utf-8?B?dDNiRGNwSjJ4STE0Y2dXZ1RyT2Z0eW9MR3VGeHJMTGUvT2hqM2RQRWwrMUJJ?=
 =?utf-8?B?MzhrdmhNRnJaMWlkYmxqVzdUSlNHaXdSK3pBTEhTQWFxS0NzNW5NOVNOQUhy?=
 =?utf-8?B?NmFlb3lVR2VmRk9QWXplaGNvRGtUZU13TnlkeW1ZTkkxa3BsWHFWMldhTDIw?=
 =?utf-8?B?Z0Y5VFBKZ2ZWRi81UHA5ZDNjSXlHSmhBZXZZbUFNaEpFZ3h4SDlEV0pFYkhq?=
 =?utf-8?B?ZlAwSTBETXpidVdPdUtmaDhsWlRFU3BTWTJvYnQzbHRhL1NqMkkxalcwbngv?=
 =?utf-8?B?ZUhaWlkzZlFiUFFRdGZFRHdnSWxuaTg5NWRScHdWMjFyRi80ZzlHcld1cWov?=
 =?utf-8?B?aHowUitjZi91L3gzTGI5RzhlRDJTdXhtcGNrL3oxN29sZ1hmalMwSjhwNFVm?=
 =?utf-8?B?aCtVMTF3UnpHVU10T3kvWjVJYzBrdk5oY3lHdE5SZXd4SXJJL3VCSGg2TzF6?=
 =?utf-8?B?LzE2UUV2Y2kzeEhDT3lCRTV4SUkxdXduSUYzSzhBaUVXR0h2R0JucnhDY3FS?=
 =?utf-8?B?blpHQzhvZXF5dEtFSWg1RUw1KzQxYlBjWGZpVStzOU9rYU05ZHl6Um1nZjJT?=
 =?utf-8?B?ZkZFV3FCUXhNdjg4bG5HOTl5TkJJVUx1Y3g4cDBnZFFIT1BLSE55dTdIN25W?=
 =?utf-8?B?L3ZBMlNWYitHRUs5M21NYStIR3k0S0xDaVgrVXV1WkhFcVo5Zk5xZlZETTlx?=
 =?utf-8?B?YXNlUlVpZHM4OGJNWGFMN2ppYXpzUjJmRjZhbnFYM2Q4aTFTSFJBN1RpSnJX?=
 =?utf-8?B?TG5nbFZ3YWs2QmR4STNBcGVRdWJBMGdYd1psY2hLakd2SGI1OG1KZ3cxZjE4?=
 =?utf-8?B?SGpYdDA0TXpkbWFCWThSc2FPSURGMjAxN0gvY1E0aHlLYzA3Y1dOQ2s3S3hX?=
 =?utf-8?B?NFFMVGlGbFdsYTNrcGkvYldJRTZOTm1JM1h3ZG0xbGhpS1RjbTZDaVJodXRl?=
 =?utf-8?B?d0p3a0d2U0tQMWV6YW85WVhwSHYrbndsUGNpaDlDZnp6ZXVBM1ZuNUN5bEta?=
 =?utf-8?B?TVU5ZFJKT0FTWk1ReC9lQWNacjdkSXZZenZaeW5OajcwNjJjK2hQOU1RQmNG?=
 =?utf-8?B?V3hkRG00TFpEekZKb0E1bjBBTitTQ1M1eGc0b0JJRDdTNSt1ajY3dUhEQVBa?=
 =?utf-8?B?UHJucG9HMlVDMk0yQmNKVlNrVEVTR1hQektXanBVaEhmYVdvVlAwZDRidmNV?=
 =?utf-8?B?TU5KS1d5T01IQlNEVWhldldvVitRcVdBWU5MOFJBQUJWQTQxb2w3M201dk9u?=
 =?utf-8?B?Yi9GVFVoRTNqcUcxMXY3aUtZUmxUL3hQcVJLOUNrR3czeVFxbnRnUT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2103ddc5-4c86-47b4-d22d-08de73a424de
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2026 12:56:36.6621 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vej/ttOxyQsr/Ag6Yl3OE415aaukT1nn2YpsKqS5+6fngCl7O7b3S13WbWGPc44f3PaINr5+L/z/9nGDY8kNsHnzOeUMuEqawqBK8vskD+0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8571
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771937808; x=1803473808;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rnYeBaFPtEfV479Bs1FPdPqpYqklWf6mUvhXkL0LTZc=;
 b=E23dD76dXn4v08lbKSPqAflBkXe3lEeUiyFiH78qccnSOLmYlAQUTP1k
 SC4xZaPsva11JsfXgOJkXKKyfkIzvziqOjk+pV2G1bxISGAROe+DMf/J8
 9oBIDi1PywRiqxwV8HUTLEn9fExpSMKDBphDGNJDQn3HW1q5S1Ix2sPRQ
 NhVTP5Nix4gshXPVD9xrz8LkVyAkIa0bF4m9XHKdreqLT7IBZFztxHpe2
 Dib1PosuE45QdwIKm9yOn3F83PibjXyH6pdtFajYLrI+1cqd8o5C1rqAg
 eXgCYcd6fQJpB7oslhJw0KMPycREPMp6UeNqRKW8TWQP2nwM+/2+3l8nW
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=E23dD76d
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/3] igc: prepare for RSS
 key get/set support
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:enjuk@amazon.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:kohei.enju@gmail.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.939];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,intel.com:mid,intel.com:email,osuosl.org:dkim]
X-Rspamd-Queue-Id: 88B411874BF
X-Rspamd-Action: no action



On 25/10/2025 18:01, Kohei Enju wrote:
> Store the RSS key inside struct igc_adapter and introduce the
> igc_write_rss_key() helper function. This allows the driver to program
> the RSSRK registers using a persistent RSS key, instead of using a
> stack-local buffer in igc_setup_mrqc().
> 
> This is a preparation patch for adding RSS key get/set support in
> subsequent changes, and no functional change is intended in this patch.
> 
> Signed-off-by: Kohei Enju <enjuk@amazon.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h         |  3 +++
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 12 ++++++++++++
>   drivers/net/ethernet/intel/igc/igc_main.c    |  6 ++----
>   3 files changed, 17 insertions(+), 4 deletions(-)
> 

Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
