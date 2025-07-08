Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE10AFCE64
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jul 2025 16:59:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF63E60E09;
	Tue,  8 Jul 2025 14:59:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XDoKstAhAVhP; Tue,  8 Jul 2025 14:59:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 33F6A60DB0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751986792;
	bh=PUIaRkNtQw34oR4+o6bKof9/0NSS0Z1pHr/j15LLTCU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BPRNFLO0a+PJRBoUVfm/JPhZSK5c82x6FhhfFbQ527LLSM+7V8UCH6anI2o5ekrUs
	 1oa4s5YeuWfOIaWJJmhjl4laW/cyNNwQefeAuvgFMSgm47YGCiSHeydIwnW1+ugf+C
	 yT3xe8elvkQR9UmVzs4b/ip4t/Mj1OZlT9SLqbsdq/5hldXB/PWb5uThcQZyItijxF
	 6gn450lMVB3WvbrWmBlZZXNCYFPNLyBO2mIUmhVrL32Qll2/bSqDi/SDFuWo+IlKCc
	 lP1OI6UDIx16Qopzxqdi0wNcYck3qhs8Lt980o6UENsP/8+tS9iPPlA4FKgT7+nfnf
	 LB306sS/Ze4sA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 33F6A60DB0;
	Tue,  8 Jul 2025 14:59:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 22C831BF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 14:59:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 14252820EF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 14:59:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AlGsQ80r3lgT for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jul 2025 14:59:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5DBE7820EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5DBE7820EB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5DBE7820EB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 14:59:49 +0000 (UTC)
X-CSE-ConnectionGUID: rW1Wxs2ASFG2CXwhD2I1MQ==
X-CSE-MsgGUID: wMNcWSqzSdaO0Bpfyh4HnA==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="54355360"
X-IronPort-AV: E=Sophos;i="6.16,297,1744095600"; d="scan'208";a="54355360"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 07:59:49 -0700
X-CSE-ConnectionGUID: eB0VBSSsQvCySlNmZ8ACLw==
X-CSE-MsgGUID: Lc+sv3EsSqiQXV/JdcBFLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,297,1744095600"; d="scan'208";a="155138791"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 07:59:48 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 8 Jul 2025 07:59:47 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 8 Jul 2025 07:59:47 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.52) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 8 Jul 2025 07:59:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TJezifU8R8VWW4Uy39CR9mJ2RgrO1l1KumbHifinhhRYiVUZ+jS7oHK0zYXRVCWJ9LgP6eMtav417m41W5Q5X0PxZukpL1xWJhd0YIQKoF+gbhhdih9S7AmLU7iaf50KMzRDiBEn+xpXiGZUYCPqyIE2j8gVz9oTjw18QzA5rERIPCyhJahtcCLWmjs1rw9xX4wHlc7DSW/0k/GcEZDfKqwA7C08sqTD3boM2ivWlDbcz5PXR6L0KdVzBh3YXizDgvqAxHyWV0zTTJcaYvlVpACwrnry20H1Qg4eEspbbTPb153XY03h3iQSFURidEfMW1pua2doEVCg7SzudMgCZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PUIaRkNtQw34oR4+o6bKof9/0NSS0Z1pHr/j15LLTCU=;
 b=Gj7EdD5GPVnD5kztSaeYM0vcZxkvhh4O0fcx4/xBuJ1Kh03jkQdB9Dg3HCJ29+KctGOOcYg6bddm4fE/T1WInBx5mnw4nbzmWkeQsChVJoF0Oy6XcqnZQSwznMlbSzsQhfYspAPp5zAK/U5MTuGNFBhzWyJRkqjIX0y+fr07vw0BEDQib3j3Vd2m2UrrIW9dtvKrprrOQJm4q8DCxUAhw/yffFmcImSHxZ+WpW+gRkCLHpdQo8PTffr99X6mFGOHa5WZqqKSQ77hm/Iu52wvo5fIlf1JBP4d4iMwPXs6ATvkIjmGfNr6MdH+nCQ+58SA/tCiqtHFsGq1ktN6l4eySQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by PH8PR11MB6801.namprd11.prod.outlook.com (2603:10b6:510:1c9::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.23; Tue, 8 Jul
 2025 14:59:38 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6%6]) with mapi id 15.20.8769.022; Tue, 8 Jul 2025
 14:59:38 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Chittim, Madhu" <madhu.chittim@intel.com>, "Cao,
 Yahui" <yahui.cao@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 6/8] ice: use pci_iov_vf_id()
 to get VF ID
Thread-Index: AQHb4J/shJXOiVAisEmP3Y6AZOoNxbQocIpw
Date: Tue, 8 Jul 2025 14:59:38 +0000
Message-ID: <IA3PR11MB8985E041208546CD2E945EDA8F4EA@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20250618-e810-live-migration-jk-migration-prep-v1-0-72a37485453e@intel.com>
 <20250618-e810-live-migration-jk-migration-prep-v1-6-72a37485453e@intel.com>
In-Reply-To: <20250618-e810-live-migration-jk-migration-prep-v1-6-72a37485453e@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|PH8PR11MB6801:EE_
x-ms-office365-filtering-correlation-id: 7679d9a4-4ed1-495e-86bc-08ddbe300f72
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?LzRSQkZzMkI4aFNQTDN1T2U2d0hvRGRFbXNIK0Rud2FzZ0NGTmNzejFHT1ZX?=
 =?utf-8?B?RHNXWDQxcTFha1UvS2ZxRGNOMUszZ2xJTlJYZlI3N0tkUnExa3M4c0hqZ3RF?=
 =?utf-8?B?cFgveHk4cVZKc1htaDc5U0FuQnlhTnl2endacSs4dzZVdUxxcC9yQ1lMY2NJ?=
 =?utf-8?B?M3g3MitTZWd0aDNJMGxpV2QrdjhOelVHc0V2N3lTb1g1MVQwNHFzMUVhY3li?=
 =?utf-8?B?ZmJ5blVPYThyRWZ3RVNwdzhTVXZBUzA4TldHRnZlZndrLzQyRlljN3lRWXIy?=
 =?utf-8?B?cDdKOWY1NlFhQ2o4bWRXdlFiZm1CTmlVOTRDeVA4Vm4rNDFzQW43VmJ6L1Rw?=
 =?utf-8?B?T3BqOWdZaXUzMmZGVVdPOHNSbFVmbVdoMHYyLy94YUtsL2YxU3A5N2dreHhK?=
 =?utf-8?B?SXBEUnRuMXYzdEI0SlFnNHRpUWloVVBVZVRYOU9SUjM1MmIvek1WNmNDK2dB?=
 =?utf-8?B?V1crQXhab2p6anFsNzZkQ1hMTUVsTDhWVlRRUjJUVDR1aml4T0JUNlNtWW9h?=
 =?utf-8?B?TERlSFlsaFBvcW1leVJ3d3lBZVRYWG5BL0dycWtrZkp2UytRN1N0RU5lLzdi?=
 =?utf-8?B?WHpOcW5LdC9Nb01pajAwY0k4WStwS2x2bmtvV2xSWjJwNWQwY0JqL2pkdTJI?=
 =?utf-8?B?bnRORzVOdzZtTGE2aWg1eVdFWXcvRkwvMi8rQWRZU0dkR1BYMzJNdTNlY1ZB?=
 =?utf-8?B?LzAxMHJCQWxRa0o5ZGxlNkttMEFrUk05VXU2clVnUmpxbEFydFhYSUNoQmYx?=
 =?utf-8?B?elBUaHpWYjdoN2ZpSDQwOCszS0xOeWpGdXBRdTBPTGJ0RXhsSkRNVitmRkhh?=
 =?utf-8?B?ZGV1ZlRjYm0rSXRzblQvMEdtajhGNGY0U0ordWYvRlJ0UVNsOEhzM3pZcC9h?=
 =?utf-8?B?UnVUdTV0UGRPbGZKZVY3cHdFeFk0OVFxS3lKL20wcmZ2djhVVUROaFo4RGNG?=
 =?utf-8?B?RFNsTE1yeFBlSWZCOVJQYWhUNUJQZHZsclpVRjRLRmg2NTZvL2RzS1VvdHR3?=
 =?utf-8?B?bjk2cEdMYndpQkFmSzdDQVY0NEgyYWE3Z2NxQ3VjSCtjWjNiQUh6aXozbnBn?=
 =?utf-8?B?UWRKdEtYdk1mVVJLUzJpdlVkZ1pML2JhY2l3d0g1SHQ4VTlqTTBUWXVCaHFI?=
 =?utf-8?B?aC9vaHpLK1pVQXJpOUlHMkdJLzJZeDJIa0owWTZzWWlRazZtbitzU0IwRFV3?=
 =?utf-8?B?aXVhZFdUSFZ0dDluTGw3SVpwekQ0eTRwV2JSL2FST1ZJS3ZOTHl4L0N0WlNP?=
 =?utf-8?B?b0dYc05NN0JvL3dXdmVZVVhCTzgyTzFJOWx5dkpkd1kyYnhTazg1WEZSekto?=
 =?utf-8?B?REl2Z0xQTlRaMHFBK1pqRUg4WTNLVDhpMXRZelR2OVRqWW9yeWI4dnUrMTVr?=
 =?utf-8?B?V0FFT3VxM0ZuaG1FRk1QTm9paU92M05zaXRzRDFSRzF3KzlOZ1RpMmpWTHZa?=
 =?utf-8?B?SmlRbGx6YVJmMEg0NGo3MnBBb1gvTno2YUZzb29xMzBaVU5tSmxHY3o1ZUsz?=
 =?utf-8?B?clB0VDlYdWR4NGlXSEFPRDJuNFhFai9lK1pxa3Z5c09mU2w4QnZzT0g3Qi9q?=
 =?utf-8?B?TnN5TWNEa0hCOUhjNXAvc1UwZXAxWnBCbUxUZm1yK0FHQkVEbkJnTEd2TFRM?=
 =?utf-8?B?MEhLZHlXb2dGTDZYRDJ2R1dsZlRKcWhEYlE0Zk96V3FzbGR1akZCengweG9L?=
 =?utf-8?B?RU1Vbmo3NTBnZ0QvQVhLU1c2VHlaRHdPK3VwYi9zOGplYUxvdGMyZTBGY1B4?=
 =?utf-8?B?dHRqQm5hUzAreFJHREZkTEtOTVlQRW1EODdaMko3UzdVN2Y1R2FBR2M4eU9W?=
 =?utf-8?B?YmF2N0E0cStneXBkbXV3Mmp6NzZjWHNaczdJZjhwMkYzSmlORUJhekpDYmU3?=
 =?utf-8?B?QXAzT2s1RzlUR2QxdkRGYm9MV3RST2NHcXZKd2IvaTJlNzREUnRxUGxNalhq?=
 =?utf-8?B?RTcva0Z5dDNEbExBR09Id0FmdkFSbURLL1NNZzg2Ukc0RlJ2MVdrb3pFR2dP?=
 =?utf-8?Q?Zsn57i9ukfZ78QBMARb1PsSDAh2TvA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aVhsRVZQcjJHa1JiazJDT21IdTNISnJ2eDlWdGUxZCtMOUE1VmcyYWp1aTRM?=
 =?utf-8?B?ZFQ2bG9kZGpHc3M2VmdTVUtlNE9RRlhZMXlTRS9SVFg4b25KNkJTb0FqYmRT?=
 =?utf-8?B?THdMcHA3aU0zeEhmeVZGc3ZKTk5LUmtvcU96NFl6b0ErRVVzNjE4Zk81TFdY?=
 =?utf-8?B?TGVLWm1TV3dHQVRWbTdaM3JVUWRUUXVidHFudDNGdTRDOHJIZDlqTkwrSmZt?=
 =?utf-8?B?YUo3RVNJNWYzODdYejJoam5rdndjc0JmRllUUDY0T0c3TVB0c016VUZLOGNh?=
 =?utf-8?B?QTBLR3ZsTFdnT2FYYlNncnNldFFWS1gxM1hBcTZMV0JBSEtKUlNMN3hpUUZY?=
 =?utf-8?B?YkJ4ajlUWXZ4d0ZIU08vT0dzU2ZMU2hiNGY0NmtwMHMxNXV6aVVSQVcvSmU2?=
 =?utf-8?B?eGovcUVtS1RVNWRrL1cvTlFoQlpCSSs2eGloWjg3bGFYRGFGQ1c4L2g5bkJx?=
 =?utf-8?B?WEhuQ3E5ZWpsbk1yOGpKRWx6L2VGelVVQWdkVWxUR0c3V01kalEvaVplVXZ4?=
 =?utf-8?B?OFl5b1lLSTc4dVA4MlBhZUNuTnhmRHFwdDlFblhTMytjK0tQYlRNMTNPamhj?=
 =?utf-8?B?MVhIZ055Z0ZTbVcwYnlxZ2lUVWJ5Qy9SNGY2NWxmRzNSakhWUjEweFBlTllt?=
 =?utf-8?B?T0x6U1RLcTZUenVXTUdaMS9qQmlnelcwbUZnTXdwdXRGU1J5RnRtMytPamI2?=
 =?utf-8?B?eXlqdUJYaWlBOWppQ0Ywd04wWjcwUVRiZ0daejhkTkhqSy9zUi9SdDMxTElu?=
 =?utf-8?B?cXdQaEJEMW5MaS9kR3g0UWdUZGNEWlN5M2ZKOFdzOWNXSkMzaGhZamVkRmlS?=
 =?utf-8?B?WWxiMVpsVVlwdVYvVTV6WmtFTVBsNWdrMnZieHZDZmZxVUl6T3h4QVVDVEli?=
 =?utf-8?B?MkxjRVpCd2gwdTRod0c2WEFjZUVvUWY1RWVocmd3ZTdIRldGbmttZk8vM1Jm?=
 =?utf-8?B?ek5UMDF1TjRGSXlidkJCMDJjS1VHdWc0eCsvcG9pK2VwNzljS21jZk1uRG9X?=
 =?utf-8?B?OEcxUjJESWdlR1RYQ3ZCbmJMd3hLVUcxZG1teUQ4RE1aUXkyMGVnbXpicSts?=
 =?utf-8?B?Q0kzWkdvYzI1ZFk5ZE15YzBEM25tcWx5YUJuaWtBZmlDNnJURlF3Y3craEQw?=
 =?utf-8?B?RklOeXZhNEZxV3VUTWxrUXZpSEdvM2FwMFZKTUpsT0NuaWd6WEJIWWRUazdK?=
 =?utf-8?B?Q2xVTTBieEdDZmVrRWJJLytFYzY0SjcwakY2Mi96VTNvU0xmWmpMT2lxTlpr?=
 =?utf-8?B?bGZBTmxSL2RUUTdqVGI3TEZVMnZ3VTB5S2o2R2gxN2JCSzN4M2RjNytHb2xD?=
 =?utf-8?B?L1VET1AycFMvY1d4bS83bUZvZDU3eVVTcVJZU3NsZnNzK3M0andRaVRaUkc2?=
 =?utf-8?B?WXBXVmtJTE9Qbk9RakRSb3lhSG5RZGlseGdaMno0dFpoa2ZyVlpObTJPaWRi?=
 =?utf-8?B?R01BOFJiMXBQa045V2hvdjIxSm04eTJvV2RqaTFxbFpVM1FQblAzZzdvTlh3?=
 =?utf-8?B?am9xOVpra2JZQ2NqR0Qrb0FXb0g0VGtCQUNOZVJGVG43YXdERTZMTGZ4UGdP?=
 =?utf-8?B?RWtsRVlqTjFuQ0pDVDNIek9jT2hhaFZzclh4WDE5MzZueWVUZGxtYWVzOUdI?=
 =?utf-8?B?dEJtdFlqbHBNbUYvSUhBZXB2WDBkZUlXUitLSVdJZUxpdkc0eWN1SUpRMFA3?=
 =?utf-8?B?S3VGclFNVFpBUkJma0ZVaDRDakF3dUFpMmVDc2NRc3c4QlIvQkJzdE91Z010?=
 =?utf-8?B?a1puWW13c0U0K0xPR2tLajVaNERsMUZjR3F3emd0cndRcXNGY1MwcmpnejYw?=
 =?utf-8?B?RmJYVUR5dHpIVHR5SUxuN2Z1S0xHVWg5dU50SzVwc1hGSmUzSEhNWGQ1V1Rp?=
 =?utf-8?B?T3I3YkNJQUZ5TkExTHFKck1LSGRBRzY3cDlrNnNHVE5VN05XSnhieTRFR3JC?=
 =?utf-8?B?MG13QitvWHM4NVJ6OTVraVBMVW5qNllBaUFFbzBmWW1OWmZuN1EwTXR2R2ZM?=
 =?utf-8?B?S3ZUVGwvTjlieVhJclBDRzdpMHZ3dXJFMFhCdjBZR2FwK21NN1NRbzFRYmt5?=
 =?utf-8?B?cmt0MnU5UWNoV201cFVtckI3Z2h4WStkQ0c3aXU2QUNNOEcyMDhyam95bkRC?=
 =?utf-8?B?WjVqWkhRV2thNG9MQldBNG9uaVNVcERETkEyZE5oMitSeThtMTNKUXh3Zjdq?=
 =?utf-8?B?Wnc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7679d9a4-4ed1-495e-86bc-08ddbe300f72
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2025 14:59:38.3315 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wuOF5mqQgnc03qOa2ItgEU0Vo00UXiZ4+AXbiJIs8rb8vVfi8io6qJmJxO8rYacw3J7h6RddV8i2f4BcU7PeaPMgtTmxLD1th202L523rvI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6801
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751986789; x=1783522789;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PUIaRkNtQw34oR4+o6bKof9/0NSS0Z1pHr/j15LLTCU=;
 b=e0bLCCal4U1T14mVwtdTKmhveUyR008ZTr/oIxyTqDd8WaHVL5VFR1fQ
 NRO3gJvAt7mws4SP97HJ70dlxDg2g0XxO60/J3uwshHh3ErUnq+7O8Dop
 tkV2yCs83mFX/zszX3/drKoSd8IMubS7hOwALIgDW6MLXKsQXttX7WaPA
 V94wEqe8HGd4NMBfU229BJXzSBNz2ONwSMFlMvhXMo8LbIX2rYTA5dq44
 Cbh/jBjuD8bUlrNsybEuI3PlU8mA261M9PUv1TuG9EOFADEwVgRud9QhZ
 aT3RrUEVtp6vsw0ln6emoAbwyNJor3Is2/SIs10IGw7Rw7iTV8H8lG3C4
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=e0bLCCal
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 6/8] ice: use pci_iov_vf_id()
 to get VF ID
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBKYWNvYiBL
ZWxsZXINCj4gU2VudDogVGh1cnNkYXksIEp1bmUgMTksIDIwMjUgMTI6MjUgQU0NCj4gVG86IElu
dGVsIFdpcmVkIExBTiA8aW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc+DQo+IENjOiBL
ZWxsZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT47IG5ldGRldkB2Z2VyLmtl
cm5lbC5vcmc7DQo+IENoaXR0aW0sIE1hZGh1IDxtYWRodS5jaGl0dGltQGludGVsLmNvbT47IENh
bywgWWFodWkNCj4gPHlhaHVpLmNhb0BpbnRlbC5jb20+OyBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50
aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+Ow0KPiBLaXRzemVsLCBQcnplbXlzbGF3IDxwcnplbXlz
bGF3LmtpdHN6ZWxAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFU
Q0ggaXdsLW5leHQgNi84XSBpY2U6IHVzZSBwY2lfaW92X3ZmX2lkKCkgdG8gZ2V0DQo+IFZGIElE
DQo+IA0KPiBUaGUgaWNlX3NyaW92X3NldF9tc2l4X3ZlY19jb3VudCgpIG9idGFpbnMgdGhlIFZG
IGRldmljZSBJRCBpbiBhIHN0cmFuZ2Ugd2F5DQo+IGJ5IGl0ZXJhdGluZyBvdmVyIHRoZSBwb3Nz
aWJsZSBWRiBJRHMgYW5kIGNhbGxpbmcgcGNpX2lvdl92aXJ0Zm5fZGV2Zm4gdG8NCj4gY2FsY3Vs
YXRlIHRoZSBkZXZpY2UgYW5kIGZ1bmN0aW9uIGNvbWJvcyBhbmQgY29tcGFyZSB0aGVtIHRvIHRo
ZSBwZGV2LQ0KPiA+ZGV2Zm4uDQo+IA0KPiBUaGlzIGlzIHVubmVjZXNzYXJ5LiBUaGUgcGNpX2lv
dl92Zl9pZCgpIGhlbHBlciBhbHJlYWR5IGV4aXN0cyB3aGljaCBkb2VzIHRoZQ0KPiByZXZlcnNl
IGNhbGN1bGF0aW9uIG9mIHBjaV9pb3ZfdmlydGZuX2RldmZuKCksIHdoaWNoIGlzIG11Y2ggc2lt
cGxlciBhbmQgYXZvaWRzDQo+IHRoZSBsb29wIGNvbnN0cnVjdGlvbi4gVXNlIHRoaXMgaW5zdGVh
ZC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEphY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50
ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vfc3Jp
b3YuYyB8IDEyICsrKy0tLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygr
KSwgOSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX3NyaW92LmMNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX3NyaW92LmMNCj4gaW5kZXgNCj4gOGQ3N2MzODczNTdiYmJhMjdmYmNlYzRiYjIwMTky
NzRkMmEyZWI5OS4uNGMwOTU1YmUyYWQyMGMzOTAyY2YNCj4gODkxYTY2Zjg1NzU4NWZjYWI5OGIg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vfc3Jpb3Yu
Yw0KPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3NyaW92LmMNCj4g
QEAgLTk1MiwxNyArOTUyLDExIEBAIGludCBpY2Vfc3Jpb3Zfc2V0X21zaXhfdmVjX2NvdW50KHN0
cnVjdCBwY2lfZGV2DQoNClRlc3RlZC1ieTogUmFmYWwgUm9tYW5vd3NraSA8cmFmYWwucm9tYW5v
d3NraUBpbnRlbC5jb20+DQoNCg0K
