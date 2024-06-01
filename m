Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E654E8D6D21
	for <lists+intel-wired-lan@lfdr.de>; Sat,  1 Jun 2024 02:24:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 13B2B611A9;
	Sat,  1 Jun 2024 00:24:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pgzyDpaYMbUW; Sat,  1 Jun 2024 00:24:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5C16F61191
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717201462;
	bh=4fUYTacRnwiqjh0lxXRM8ffQHNCeA1/GS2hWO8Tzd6s=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=J0cG+SLvGang8aKix++dYXuDr+6nxQsBihcIXNnDTrphJcJvQihilkCcrV9TTjNCX
	 nUlsa7rZG/zCdLhIedbHlhTKviqCxA9zyXeG8TzqikR2EkxqhB5Blovbx7Ezcbd2oy
	 xC3iEilgZR64I3FkDzjLCzWiHrbS9hgyo6CyKCvStj8kK0IWciTUM7bCcIGO+QcADF
	 z+x4irn73n5bAluT7Lm+2Menu0kN0FKE3tC4U9kF8uHeF2gd/i7nb4QZDpRXAj15vm
	 HptJOBT7zrLx/u9NGh5P8TFlRhGl2iRrAW1faNt94/A6jIxHbRbDfJrP+82xtG1J85
	 bxYR/ZyH32gqQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C16F61191;
	Sat,  1 Jun 2024 00:24:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A53611D595E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Jun 2024 00:24:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9DA13610F7
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Jun 2024 00:24:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qoqRiFa1UNg2 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  1 Jun 2024 00:24:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7D7F0606CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D7F0606CB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7D7F0606CB
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Jun 2024 00:24:18 +0000 (UTC)
X-CSE-ConnectionGUID: k76F4G5DRkO0hTCcrC1B/w==
X-CSE-MsgGUID: hvj+xvLySOWRe9x3Dv8jMw==
X-IronPort-AV: E=McAfee;i="6600,9927,11089"; a="11847080"
X-IronPort-AV: E=Sophos;i="6.08,205,1712646000"; d="scan'208";a="11847080"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 17:24:17 -0700
X-CSE-ConnectionGUID: DyUh7/UkQRiAaFZisehY1A==
X-CSE-MsgGUID: Hn1HKAkJRjSEWkQtIfPNXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,205,1712646000"; d="scan'208";a="36903520"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 May 2024 17:24:17 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 31 May 2024 17:24:17 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 31 May 2024 17:24:17 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 31 May 2024 17:24:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oWqT41cGogNF+tLtdz2Y9fQ77fYN2IaRHYQUFNxY07LMW0Yh9s7ZTlWdze5SsURQGh18NpTua+8W5qMw/sSwP8AlBGRHPkn46x4J0LQBwhZo1mesYfDqzriCoHKuOqUpiiLZNjOTe9NDVn/WWBQwBtnfXYsew4Q3nafNYaId0nH+6tjwywQNlKNx1oz1ET73cQJI2RDhKAx0N9CMlz9d4rzrwL4l137VTtiVoueaSkfRlJ6hY9Ppu5Shfs2yENbiaIDPFIen/JMQ2nSnFmGQW5HUqaaRlI3In6qlyDK0ww+LBYH7so+QH8qaYb5Vjg2lrwgkS7AXxVz5RS2LXOFUUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4fUYTacRnwiqjh0lxXRM8ffQHNCeA1/GS2hWO8Tzd6s=;
 b=UGnNrxpH/mVvGD4L5Gw+7vk5DddZWlf2SSUs7JvkBie1OGzdzTHjAeibrc7rdX6PWvuIqWr+Yp/8hKu/iI7IojNBFXEpIeKD/Xp/+tF1vPc3htXxmyUS54kEzA+PJPSJ215C2sUzHxBBrjBMXQmWNJPRJBSsuCLKS81diduwVKJVm7VdKCEDMnLrk8LuZ/JJZ+/jXSvzgyT0GPoiDRkGr4s+tMDsl2oN7jtpav1VayLckVdIj1U731I8Y+m4FpXYkzZlz414dc0Zbf+OOjg6doMb682xBVqiySLq9coZJBSe61O60V//xuv9V5NNZURxYsbQDpydPGqn63XETngwbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM4PR11MB8091.namprd11.prod.outlook.com (2603:10b6:8:182::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.21; Sat, 1 Jun
 2024 00:24:15 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7633.021; Sat, 1 Jun 2024
 00:24:14 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "Zaki, Ahmed" <ahmed.zaki@intel.com>, Simon Horman <horms@kernel.org>
Thread-Topic: [PATCH iwl-next v2 11/13] ice: enable FDIR filters from raw
 binary patterns for VFs
Thread-Index: AQHasGf5CVevw538R0Cz+Z3U7DYE6LGxWR0AgAAp14CAAI/0sA==
Date: Sat, 1 Jun 2024 00:24:14 +0000
Message-ID: <CO1PR11MB50893931EC0BE4F79FA46761D6FD2@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20240527185810.3077299-1-ahmed.zaki@intel.com>
 <20240527185810.3077299-12-ahmed.zaki@intel.com>
 <20240531131802.GG123401@kernel.org>
 <f2cf6650-a164-4d3c-a3d9-cc57c66069a5@intel.com>
In-Reply-To: <f2cf6650-a164-4d3c-a3d9-cc57c66069a5@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|DM4PR11MB8091:EE_
x-ms-office365-filtering-correlation-id: e653240a-cd38-4ca1-0d48-08dc81d12afe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?V2NCSlFDYjNzZlZ4MEZGTERCakYvajk5MVp3bTFQQzJMMFFhdnY5dmpWcWto?=
 =?utf-8?B?cE40cVgwb2k5MDBUNk9pdHp4U1JkSSswdWMzYlJqSVVVeXlRYkl2UEFiVy9D?=
 =?utf-8?B?UTBpQjd5Y1Q5bGh1OVJYVmJ0V0lBSXR1Q3k5VjROdTBQVDRaNFJtM0hFRW93?=
 =?utf-8?B?WmhHU0xvT1BtMjJzZHNWZU5nTDF1dW1Xd3hkbmk2YW5aQkR0R0xNZnhoV21a?=
 =?utf-8?B?akQxMmlaWXZ4ZUI0cndpbkkyNUdVVUhkVzROaFdRL0RmekhVbjhkZlQzcU9I?=
 =?utf-8?B?Rm9uMllpOElFYTh5TmpKb2ZPWmRVcU84Z0FGcTBweE0wNFBrTG5ORXhacm5y?=
 =?utf-8?B?OGRXN3pNZW9XUXh0Nkw0Yks3empGZk1mTnFLSDY3dUVxakUrVlpLcnZnQjNk?=
 =?utf-8?B?U3h0Qkp2Z2dhZDM0VksvcnhoNDRnOXJDNTRBL0p0NWx1THNrTkZMcEQ2UElI?=
 =?utf-8?B?d3VPSkNhUmVaODRuTEgxSmhPcFpSNTdvV2JpcXBsZVRud3g5eHU0R1VJZk95?=
 =?utf-8?B?dnVvYTNJanlvMWRRbkRDZEdZcWZMdU1MZW5lekI5Zk11SUJVNnBrbUdsS1F1?=
 =?utf-8?B?WFkyYko1cUVYT1BqcUp2YlFmbG9HVGcrQTVKaEFhSzIwejdmeU1zbXNscWR5?=
 =?utf-8?B?dVBaTjNWN2FoZUtlbFNQdEZTN0o0WEQvajNOMlptS29taUhrS3pMRGFoOHl3?=
 =?utf-8?B?OEpkVzUxaWsyamd5b2tuY1J5djRORmJPRVhyaThoMUhQRVRzRHlBQ3JIVVZV?=
 =?utf-8?B?WGxkRm5jL2JHOWNQTW5pbmNRdUZEZFFJNVdKQm5uNjJLTjlFK25QbjZnbm9F?=
 =?utf-8?B?b0JxS2l0WHJkc0ZqdDl6SVJnWjQ4aHBPZDd4QjZOWmNzU0EwWkVUNTlXSUNl?=
 =?utf-8?B?YWc5SUdXZlZIaEhlUHMzTVg0aUNJcWdSQU1iRUdJVFdQaGdLZGJPUEE2Ym1I?=
 =?utf-8?B?eEJlaHdRUnhCS2lYOHAyMTFiUzRwbjU4dTQrOTNjOWkyU3NMcVJWZ0NuVlZ5?=
 =?utf-8?B?QlA0QzBVejNxN29QaFZaSXl1SVF1aWdocFlZREs5OVRFTmRoRlArYTBJMkw1?=
 =?utf-8?B?bFNwSDkvaERRdmZJUWFXWlNycWpOb0s2d0IwcEEvcWN6Z0hkeFhYeEVrcEpF?=
 =?utf-8?B?cENNQlNLa05FazBqZUdJTDJHSTcwU0VVSnlZTEo0T3o4YU03SWhmdExneU9J?=
 =?utf-8?B?NDFaSHN1M1pGbTNqdS9YR0FzOS9objNVVnNPZEcyci9Ca3RDSlJ6cVZwUjRi?=
 =?utf-8?B?YmV3Tjd1ZDlYM3JKSWFqdG5XaDdSUTNhUnJpbENxMGF1UHJYWXNrS3k4dzhT?=
 =?utf-8?B?dUJhd0d4SmZQQk9HQUVwTEJQRi91ZkYyVHgzVmtVb1FQa3dCNGU2dFc5Vk5D?=
 =?utf-8?B?US8wL3hFaHJtNEp6SGo0d29iQlpOOVZvZHo3SXFTMjBDTHRBa1JvZGxjZ0Ji?=
 =?utf-8?B?ek5IM3NvODRHR1BLNU1NZ0NXdGIxUFJWS2xVL3lzRTZ2TmNPK2VXTGpHSmVS?=
 =?utf-8?B?YjlDUnpkdndGUkc5TlRDazdHS25TNGF3TlVMRlRzMDVkdlZEZVFKQkpyZ0Ev?=
 =?utf-8?B?ZThaL1hjT0dRdHdsK0dscUZlL0VpRFlaRW1lMVNyUWNHVFBXTXM4S0tMc2dG?=
 =?utf-8?B?SVREMEtzbE1iYlVUdncwU1pVWnhGWC9IbHJodWFpRHNqVndydDZSOG5NRWtY?=
 =?utf-8?B?VWY5N2RrRE4rWll3TVdPMmdmNytDWmtzOU1TbVVIMU5nT3kwenJmYzBWSEYw?=
 =?utf-8?B?aTZvbUgwYWt3bncyNStOUUlDejIxYmw4bmlKNlJid2pHd2w3QzBoekJwdVlB?=
 =?utf-8?B?b1dqckxpcnVlRVc2ZmNjUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a3pFMnh2NmRIcVdCek1GamhhbGprdU5SbGtIeWUyWE5jUkhwa2hZMVlLU2Z1?=
 =?utf-8?B?Uk0ybUx0elZJQmNCODhsYmlnaUJpMGZXdkRmbXQ3VHpyYlg3MzA4ekIydHEr?=
 =?utf-8?B?cysxOVlRV1Z1SWRPQnU5WndhQzBQWmw3Tk5NbUZtcXR6T0JXbjR0RGQ1Znps?=
 =?utf-8?B?b3J4QVVlRGFuU1Z6eDVTUWNRT0FIc0pNZ3RNM0Y3Y3Y0cHF6VDVKa3QyeGJ1?=
 =?utf-8?B?WllyODdHT2FrS1hXS0R4TW8xQVVwT2N5aWZXVTNqMGx3aEtDelVRUDNwWUtN?=
 =?utf-8?B?bG5VbDVvT0d1Tm5oWEl5VnAyODh5MWg2TjBFRUtweXphY1M4ZkV0UUdpeFFS?=
 =?utf-8?B?VFFxdzNEYzNhQThrTjZZRTRCZllGU3BubE9lTktTUkpCaVJvRU0rRWZzWWNP?=
 =?utf-8?B?aFp2eGk0cCtnSXZsNCszbFdLc2JCNmhJaktYTk1JZFFPQS9XaDhkbnBsRk1a?=
 =?utf-8?B?QzZyejRONUhtb1BQbUsxbjlvTW1YZXlxWklSUmJnYmsrcGIxcGEreUhKemJi?=
 =?utf-8?B?V3NrUVZsbEJnV1ZmOXhtbFRMUnpYOCtpVXRrZHBHY2QrOWRrcmJMaWg2eFMz?=
 =?utf-8?B?anJVQVFRcVMzUVUvdjhDeU15MzljYUlpV3drckp0WkMxaWJkTENkdHBySlVC?=
 =?utf-8?B?QWIrRFd5QS91ak8wcGY0ZmNGeGZBeWZaSjFxUkFYT1UzOVlKTHM0VDV0bzZF?=
 =?utf-8?B?SUp2bTN2TkhobVlpcndJbGluUkRUMHRNbzh6ZjY3TXZxaHhzcGx3TUllUjR3?=
 =?utf-8?B?SWVrOHpTOVE0UW55RVlQck9UbjNRQUhKREtXR1BRaERwejdxOVl0WVplWGww?=
 =?utf-8?B?VTBUNnlLYmMyYzA5TlB0VzkyTjBIVk4zV25CQ3dZaU9Ybm5yT0pIekJpVUFD?=
 =?utf-8?B?WHVRNEVmeFZhMFAwZnI0U3ViZlBHQnJ4VkJMbWs0TWJVZU5Hb2JiUUoyR3dW?=
 =?utf-8?B?MlRlZHZvZzlXZnRDem9HOGJZdUpPUThzY2d5OGJPMWc3YzI5UE5NWkhxeDNv?=
 =?utf-8?B?akR5U0tQZGVhZ0dNR05PWCsvRFFKNTFONG5Gcmk4Q2lBK3J1MGZQYjM4MmFU?=
 =?utf-8?B?RmtNYVNSTTV4ZkdnOE9IYmorRUdxMHNQN2ZKeG5NeUw5L1g0aDRtSEVHQWhZ?=
 =?utf-8?B?eGFnY3NCcjZENVFsNlJlbStZNWNWRzR3dDVYUmhQYWJFZjRLanpaVXJFV0Fz?=
 =?utf-8?B?V1JiMFlKcmxJQllVejJRLzIrWFNzeXZ5Sjk5Wncxd1hHSjlyUkYwYkxGMkgv?=
 =?utf-8?B?OHRqRU9DbDh0VEhTYlFJaXgwcWV4YWVGOWY5K2FGVm9SRkdtb3UySU5sVm1r?=
 =?utf-8?B?V2kyeUM4WGhJVHNRYUlsdzdUNjdZR2loaUlLSkxkQzNnZW5mZ3I5TEpNODFr?=
 =?utf-8?B?d2tFbnFPQ1dMb3FzRE1YMXBGU0dZVWJLN3pjcmVSL2kydzU1NVdPQ0tWUHEv?=
 =?utf-8?B?L0ZMNmpPa2dLNEx4V2JNcW1LdE1WamZKekUySXc0Z2pJTXFOSjFMWGJ2RGNl?=
 =?utf-8?B?YW94Yi80OTRwRWV5NlEvQ0pwY3hvUjdtdDVDdlRYd3FXUzI5a2JnaCtkVEYr?=
 =?utf-8?B?WGkvbFFCZDgreWFya25wOS9vamM5NXBBQ3RyQy9rTWk1NnZwZnNNMlhrUTFV?=
 =?utf-8?B?cmVFMEgxUldTYi8zYkRsQTRjRDJBMEQwTmU3eHhmNzNlb0I1Q1ZIc0FrdVZ0?=
 =?utf-8?B?MXFSNmNoZDdpcWZsa29CbzhyRFk4TCs2Z2NWcHl3cWFMcXk4Wm5nejllV0hG?=
 =?utf-8?B?WEhDSDFSb21XQzNrZEVlNGg0STRiUm1hOU5LWndWUGlJRzV1WTE2UFdrdDNC?=
 =?utf-8?B?Y0JOaWdNVlRkbzRuT2JPVWhQcmlodU1TOWFSVTBQMDhRWDhsa2dKZVBXa2F0?=
 =?utf-8?B?T09JQllHcDBVazNhejVWUkZKUXY4NHg0NXBjb0RMdG53ZXd1a3pOeVRBS0N6?=
 =?utf-8?B?MjNILzYzRWtUNlMvUzBCRFN5d1RxYlpSSFpOejJXZTdFWUV1NmlBVncwZEk0?=
 =?utf-8?B?clgzU3E3TWhmaHg1ckQyQ0lURDZBbFo2NXlKakdLMUI1cXlNbzlmZThVK1VV?=
 =?utf-8?B?RUl2c01CajZVUlIreWdUbWFpODZtSlZWOEdUSFRkTGpNTC9xWEdydStYTFlU?=
 =?utf-8?Q?b/9rC87ziPAff3mitH7xU7FhK?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e653240a-cd38-4ca1-0d48-08dc81d12afe
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2024 00:24:14.8595 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cOHUur9B48cD3CEY0pMyOrsmvYlsA43wRskwYlURTdq/oxjSIqOjedXPaazv9kdDEF37wx/H1sYtwUf5qP40ed5VKPYMe2oi/iumQjX/pos=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8091
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717201458; x=1748737458;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4fUYTacRnwiqjh0lxXRM8ffQHNCeA1/GS2hWO8Tzd6s=;
 b=PJteF9kcGm36Wx+fwDmHyk4TKBFDqtVu8QH/3y9vjzTA87ZdBwoQR/YD
 KIaDhqqcTdxUsowWllonkxL1iDAGskAUtO/q84F39mmr+fqTK3rlHuFBi
 5AIHRI/iAfkTQzlrMCnuJ1Mt8IjYrPxJEr4eeNqig+/BEiGPt3+kFxqK8
 lIbfHvAhkfY1xk+NHRz+ZhFEF3SE7IU1+GM8KDwVxp90nMEd2g7FYUpH9
 s+6OzYchNnF0ZR1VcHm8gxvlwCThTB8ZekHliFHgVRpg4f82jQwMTwsqp
 Z7DyxKIgkI9LiWQmLbi6wyEhO7sKzfANB54jxKwze6uTzCmuN/+Fb+1B9
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PJteF9kc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 11/13] ice: enable FDIR
 filters from raw binary patterns for VFs
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Marcin
 Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Guo,
 Junfeng" <junfeng.guo@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogWmFraSwgQWhtZWQgPGFo
bWVkLnpha2lAaW50ZWwuY29tPg0KPiBTZW50OiBGcmlkYXksIE1heSAzMSwgMjAyNCA4OjQ4IEFN
DQo+IFRvOiBTaW1vbiBIb3JtYW4gPGhvcm1zQGtlcm5lbC5vcmc+DQo+IENjOiBpbnRlbC13aXJl
ZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgS2VsbGVyLCBK
YWNvYiBFDQo+IDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+OyBOZ3V5ZW4sIEFudGhvbnkgTCA8
YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+Ow0KPiBHdW8sIEp1bmZlbmcgPGp1bmZlbmcuZ3Vv
QGludGVsLmNvbT47IE1hcmNpbiBTenljaWsNCj4gPG1hcmNpbi5zenljaWtAbGludXguaW50ZWwu
Y29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIGl3bC1uZXh0IHYyIDExLzEzXSBpY2U6IGVuYWJs
ZSBGRElSIGZpbHRlcnMgZnJvbSByYXcgYmluYXJ5DQo+IHBhdHRlcm5zIGZvciBWRnMNCj4gDQo+
IA0KPiANCj4gT24gMjAyNC0wNS0zMSA3OjE4IGEubS4sIFNpbW9uIEhvcm1hbiB3cm90ZToNCj4g
PiBPbiBNb24sIE1heSAyNywgMjAyNCBhdCAxMjo1ODowOFBNIC0wNjAwLCBBaG1lZCBaYWtpIHdy
b3RlOg0KPiA+PiBGcm9tOiBKdW5mZW5nIEd1byA8anVuZmVuZy5ndW9AaW50ZWwuY29tPg0KPiA+
DQo+ID4gVG8gbWUgdHdlYWtpbmcgdGhlIG9yZGVyIG9mIGluY2x1ZGVzIHNlZW1zIHRvIGluZGlj
YXRlDQo+ID4gdGhhdCBzb21ldGhpbmcgaXNuJ3QgcXVpdGUgcmlnaHQuIElzIHRoZXJlIHNvbWUg
c29ydCBvZg0KPiA+IGRlcGVuZGVuY3kgbG9vcCBiZWluZyBqdWdnbGVkIGhlcmU/DQo+IA0KPiBU
aGlzIHdhcyBuZWVkZWQgYmVjYXVzZSBvZiB0aGUgY2hhbmdlcyBpbiBpY2VfZmxvdy5oLCBzdHJ1
Y3QgaWNlX3ZzaSBpcw0KPiBub3cgdXNlZC4gSSB3aWxsIGNoZWNrIGlmIHRoZXJlIGlzIGEgYmV0
dGVyIGZpeC4NCj4gDQoNCkkgdGhpbmsgdGhlcmUgaXMgcHJvYmFibHkgYSBkZXBlbmRlbmN5IGxv
b3AuIEljZSBoYXMgaGFkIGEgbG90IG9mIGlzc3VlcyB3LnIudC4gaGVhZGVyIGluY2x1ZGVzIOKY
uQ0K
