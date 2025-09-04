Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id ED452B430CB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Sep 2025 06:08:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9BEB86F5A5;
	Thu,  4 Sep 2025 04:08:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2yjoJ6D3u7pF; Thu,  4 Sep 2025 04:08:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BAF3E6F5A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756958901;
	bh=NVi0WMqQFnkUpwV87vmeK+cn+xGrCVk26Vl9eUxDS6E=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aam0SEi7QHJ6xdj+EGXGeip9k2Yr4KAEm+4wQMxPdZA2A+13H7tMnmwWwvopSoWCN
	 uHxtdqp7Cf7vblT4O69Wju3ZXjJPVd32PCKGfXzXo3FQeWfv7Q5k3HOxRb22s+NKJ2
	 ralV3xD74OiTaApBREmFNfexky2MEW3uvP0u+JD2pknQqrsvKRXP9ZEz08f0L9xrS4
	 IS/0V2lCtSoEkjuBbk30nOJ/hfZ1GWmsd2PuXsNQl/k4NZriH7vQSwB1KHWclYrLhS
	 SpMLTPgA5T1Iz1OKk1EnFQxehwYp9HlRWSLkDLK0BGz0C7gSsnuRyQWKA+lJe8JSRs
	 FXwMKgXmOtUxg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BAF3E6F5A6;
	Thu,  4 Sep 2025 04:08:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id DB45D930
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 04:08:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C1D6384C2E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 04:08:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BCz31h9ghIPB for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Sep 2025 04:08:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2265984C2F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2265984C2F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2265984C2F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 04:08:18 +0000 (UTC)
X-CSE-ConnectionGUID: f1S1xeRKRmqWm/IUxRCcxw==
X-CSE-MsgGUID: 6Zt2cNYBQ2mk/1bQzUIHzg==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="69901158"
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="69901158"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 21:08:19 -0700
X-CSE-ConnectionGUID: qkL2eFQwRSGnlXyqe75qWg==
X-CSE-MsgGUID: Tq6ArEAaQsyiXGgXiW8/4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="172224627"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 21:08:18 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 21:08:17 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 21:08:17 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.48)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 21:08:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OM3vQGF60u+ADSC0pOaw5JPNE+TDAb0LR8xqHqMOfDq478tjHEdDCD/2KeNDI/onyWAInn81EChkKsLsruMCEv/ZTSRG3zf/9jrhZlRAfPbqN3HLJu5YZeLeb8O8U2BzcG7qwGd2PRf2heuoUSfggAFeKgkdlw4CL+LoP8lZ0IiPkCcnCItq2ciY9HSTnthnf8MnwOFQe20kJFTSAoYXlbgtx+CPpDNWzv8pf0jVQcJctwAxTdalJjo0v+mg/2CUEOqsDH5yipyVk3B9/Omhf1+nBvOixgg+feTboBzUPaWU9pSsVSWEv4XiwTer9TUydb0R5Sqq4ZNZLzl4oUkafw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NVi0WMqQFnkUpwV87vmeK+cn+xGrCVk26Vl9eUxDS6E=;
 b=l3sqlnDHbSfHsC3EBabeiWEUQldGfaoy7FVIy0ALKT0KlIkqaRtc1fyWOpp7f0TwULO+FvhVGQP912bZQ7r8EH0qiEo+UF1GXE49aD2eHYoJGKBp8rv0rZ8tG9TJ3fnxPb15BTGrVaAHQTIIigerhGjygK0FU0QEaUEEe1kMtVCip9R1n2oevFE7+Vadb7/YaiEyBmlsNcwek63NfZmMIoxwXRMEPA4d+Nt3i5uBxLEc5OEwMV2NlruwUvogWkEHD8wVda1YKsKRbxiQn6DVkz7ETvPLHuZPb8DsOrtYQNVBRWqvhz/mMwkmHLKe1j94eNO0KPw0f6+1Up19jXlQjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by BL1PR11MB6050.namprd11.prod.outlook.com (2603:10b6:208:392::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.18; Thu, 4 Sep
 2025 04:08:14 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9094.016; Thu, 4 Sep 2025
 04:08:14 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "dawid.osuchowski@linux.intel.com"
 <dawid.osuchowski@linux.intel.com>, "horms@kernel.org" <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 10/15] libie, ice: move
 fwlog admin queue to libie
Thread-Index: AQHcC0VFj6sUURWhn0mwZQqqx9VHdbSBDVXw
Date: Thu, 4 Sep 2025 04:08:14 +0000
Message-ID: <IA1PR11MB624108F4C2AD6F65ECBDDA738B00A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250812042337.1356907-1-michal.swiatkowski@linux.intel.com>
 <20250812042337.1356907-11-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20250812042337.1356907-11-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|BL1PR11MB6050:EE_
x-ms-office365-filtering-correlation-id: 211a3c2d-e0b5-44a1-6d48-08ddeb68abbe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?OowPeQ4DG51evoeRByDlNfJRS89fZY9bR/3MElXndAMdNiuV+OqRBNqsIs71?=
 =?us-ascii?Q?2OsiC4mURcjjbQVtBy4iwk+fpoMjGccFJHqFclT2U+QqQpiTWXLmdRc+kuv2?=
 =?us-ascii?Q?boX19zJTXgySWngtoLMh7Isi5xN2ABGtMyiIBztK7nCjJizOZ7zJYK05cJbX?=
 =?us-ascii?Q?5V7bOBXFkt5bH2+4xSt/ZPOi3qeQgeyHFAUtBJVSbQ76n9RLnq1lkuhtzpnl?=
 =?us-ascii?Q?f1xvrYChb3J7xiGiXZn+a1/mMW2dVJt/JaRZ/KXSZYRBEgOs3MyEkd7bWV1Y?=
 =?us-ascii?Q?vzvAaPjid0ja4PSgLd/Hcuy585Jr4eS3LhfxOGX59gBjV+SfBLpRDkPaCwWe?=
 =?us-ascii?Q?ne1BgSp1TzHj8amAiEMbcXTDH51bBUFLUp0fEVr8IpFT5UeR7EwNIC8xavza?=
 =?us-ascii?Q?q17f2kZGQ/hmScWQ2s4Azf/Eh9Cmf8YKyTOpYMm+kqqEyNXk2JYxlG1uwqMr?=
 =?us-ascii?Q?6EJeMr63VaXyKn+UmUfE6t7tZHxCl+T14y1v33aLYViSUS0qGIIly+vwlSxE?=
 =?us-ascii?Q?wow38UZ0W1UvOGL8wMEOwM0+Fis2EYZpq56atAr4ML/R7us6IhWOuws5+WPY?=
 =?us-ascii?Q?5qr1nca0cyTJQKlRJ8yg6tdekMaymsxRoZ30AUHEKCWtefK/xr0SFVfR+pK+?=
 =?us-ascii?Q?L2ioiZp5EdosLdBsyWtwzXd5Gfz2piK1qxNnl5d7j3y5eifl6NXEaT1T9GIv?=
 =?us-ascii?Q?BKZB1tLaDRiZQP/r+E6WpdSHY5NDBt0FcpO5Ou4AYhkfPIaktDilk3mskzvF?=
 =?us-ascii?Q?4JI/MPWyQLI0gnPLDCKT2rSIRFKgPFq2fC/NUpemqJJOXFVm8sy7LCuFmFml?=
 =?us-ascii?Q?Jfnr9lT8Q6Ya4RvvTuwYLI2yJGOv42zNPYQjPNwD6YIijUrEwGaoCay6+vf1?=
 =?us-ascii?Q?OnQJTQ4M4xqPG9hEM72aanpKX2n9/ladXTe3I8kfGN9HVlapz9SQVRXT1cxU?=
 =?us-ascii?Q?Mo5xMUro7Wa6YJY94nzFGj8tYu08fTs6Hm2syOvBur+FqsQkCAUMtSbTKB6V?=
 =?us-ascii?Q?WQ+I5YJRpHrqcV/M2M3J7AQZUn8k2JpDYMzw7r0CcJnegmEFDTFMmOQsjNmH?=
 =?us-ascii?Q?1gmfH3sxWEl7QUZ5cdaz8WxvyYxboz33XkQ9rHbY6ajxmwZz77QcQcy778v8?=
 =?us-ascii?Q?Tq+bHtsL1V/oAU6+9zZRKZXzP2T2I1cqkS4Z9d2nWNOF4UeOwYmyGznp6icx?=
 =?us-ascii?Q?BFEfSAT3Q+BIqsFv7EBwI8ML41EFRXxPTnJ9Sup9UsMtjAvlD7p/tZEYwtVc?=
 =?us-ascii?Q?bU8GEmZ3URIxkhzocpr26CzvPIWOcEqSlB+SmPu2pZOxC0apeVRwX3QLaY4O?=
 =?us-ascii?Q?lElqbQyNvcQuNVt5NFQs6nY9nnCqUpWm0PCPNYwJA+qXyd9B0xDvQDY+Zuck?=
 =?us-ascii?Q?HLHJ6+wei/eKvuKdXOvVbUb8scdu4tv5eJCFMO3tsSbXbxNKhxB2G2SNdHaL?=
 =?us-ascii?Q?o6GDd/ukOiSym+gpTKlxZeItDLOV+k1KaZcNOteilojfvJLkGvhTYw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?C+jDR/3wYmxcDCM3QUQwylkn+MmwRGo7TQpMazyr162gidjzLnmgsgjt+TwJ?=
 =?us-ascii?Q?J8wPJth+tXHWRXJV3BPzGTNaEqzKuqZR0dI6B43L9lHWG1hlYqp0OkedlKPe?=
 =?us-ascii?Q?RABCbUqFr6VjvbBKNZBDFG3kyHSEHWLcZKscyepJ5DBL8Tj+3Ap9tV0O+mCL?=
 =?us-ascii?Q?LSLBHcFhLfvnFgreiMFyZ6bvVxmgdufzZ1y+Y1hXGb6BL745cw5Y/CKkP0mU?=
 =?us-ascii?Q?VYabd9430j5clGpSL9s5A2XXjFzgDQ1t1KqTJvlpEH5wBYTUAqmngEoIf0WP?=
 =?us-ascii?Q?ltCzd1N0PgBZn8o7QbLyKjy3mZFQm0PRgifuOd514vEJ3VHYxnB5Y6k4yEqy?=
 =?us-ascii?Q?y5LsAvaq6anAOv9gRStjSl0nKmhRXeenumG1SZ1vIxtlfKZm4fM3jAOlphTb?=
 =?us-ascii?Q?ebQWJQaUuA3vVV62iDxCz920QDtDhmGwj8SrB71Ia2N9XFsgmiFqgfiHfrso?=
 =?us-ascii?Q?MiQ2s+GVN59lyc849Q5pH0I8T5/cCFWZTZBILwmM5SH00MFBtZnmyL3SqOJQ?=
 =?us-ascii?Q?GAvgyHxTQ+eHunwEUkNSD3V1/pNoccTg4/PcQw++pjAzfOBhS1xetwqNrcRP?=
 =?us-ascii?Q?Ce+MEjSkRe7Q4E3V6GgkRfYZzpkRh+vpoFFQRKfuRSMCyQAef9KXR8fo3j2s?=
 =?us-ascii?Q?/fPw5bGgdopLSTOdU84zonVNJ+nVFuka3RUnAdrz7s6hPlSp4tUS0KgCpO4o?=
 =?us-ascii?Q?b0eV3RhbY0zTQYdyqO4tR1QCBLhG1HwD/lcIg5HrHqQayTGWWTeTnwHnb+tD?=
 =?us-ascii?Q?GsYLh9IWV+ZqO2Izdv8/AoN8f7AgpCarNYqPWy9vhBVynvjAMtshnwiDz/0v?=
 =?us-ascii?Q?PfjeiAbiuezkFgVS+lEYdVEQe1ptwmBprJGK3TBEyjVyW5MbCPZDK8T7nK7U?=
 =?us-ascii?Q?/yzrTubUjH3H3zKQBwEX51Hi8JdBxx5snbMGlp3I6yGvEaEG6+/LVaD+wQkH?=
 =?us-ascii?Q?D3AQ9IKNG2isppV4HnJFJsag4PEqU09LR2UI51R0iZTMcdThQxbuGuV+nCEu?=
 =?us-ascii?Q?WnSvlelu9z0Uk8wohUQfGL26ovUU/9ITSgQ+VWIjz8FW1rz7qmH0hHv5nXkh?=
 =?us-ascii?Q?bjPKBoNw6sI7G0btIUJ4IEH8dtC71Hqd//s1sWt+loexTq8n+buvstijynKN?=
 =?us-ascii?Q?ml5xVurHPeWNBUWBPnihHyzp2VF5PmLG2juHavOAj0Y6rMODyZAUv9RXLRpN?=
 =?us-ascii?Q?eXyrf65PfTaEMj+0LvmTHZ5GiLPKixhLkvCKIXBVidyqjXo3dRi3rRaUaX5K?=
 =?us-ascii?Q?mW+p5CbhBIJc0N8IWfK7JFml2uU4Ua5+hO8OOa3qZYxg2wvVClxoKYqp2lXw?=
 =?us-ascii?Q?gsi5JGKzzu+aKDltO6Ersd8yu1LVWrPY6qPHO7V7SZsaO35wRPfnce+50FKc?=
 =?us-ascii?Q?Gtq6OU3MHET6n8bSelGK0639kytBkZ0h/twdD2Yie7cQXnqu/WsG/S1GTLBf?=
 =?us-ascii?Q?9n8N0KKsGWG0NnHCjGPXPoEf2O4UOfGEIkHlQ92cd+zqypu2v41P3P6pYq27?=
 =?us-ascii?Q?0R9E4n3FjnutDT5FQp3oHApH1Qa55wQtzewxgGY9gPOZMvtnGyHiaYw6epzs?=
 =?us-ascii?Q?Kgdi0OR32+9FXNqvgKik2HY2vq2To2O2XmpS7P2s?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 211a3c2d-e0b5-44a1-6d48-08ddeb68abbe
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 04:08:14.6672 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3aE36TNMq+2L1zc87u9KcAgBDqL9HtjGJnQ3SYhLx8I/1TLSZq/a7DxfE7Dl5ida/2gDteJfZiRj+ldHNCAAbQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6050
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756958899; x=1788494899;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=J4fsCbMeXb14GqvDXRI4UR4OgWYM9ifxP9uVS0RQhLc=;
 b=a4fjP36o/eewJbg22TmAsTo3/yt/sv7dFuMWC6Go+ODwR4QrL3jp+tc8
 JYW1E7Mr+XfAKwMgEoKlVQA7u9SHL7TL+b7Hr/livSmGwbflqmL0nNgzi
 bo3yA5TwpD4gDv/r50Y7zclxJ3juzvv6NEYUPUNzgJvFPPP6h/3qoL85A
 XR3Z5Jjd/keFy5YzPwHsBzxCx6MygcseznxGd1eYFUG6L7Owx2KjenFYN
 evEbuVeEmO7myevfgBw/KqI5lOwJlDoWHaxPvPargudriLjgp/Y4RdSpo
 4O0/ynHEmNXpdA905+YFfJciH4ZM+WRDe3qKW4IJrWiyNBu4nvnIGalWs
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=a4fjP36o
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 10/15] libie,
 ice: move fwlog admin queue to libie
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal Swiatkowski
> Sent: 12 August 2025 09:54
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel=
.com>; dawid.osuchowski@linux.intel.com; horms@kernel.org; Michal Swiatkows=
ki <michal.swiatkowski@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 10/15] libie, ice: move fwl=
og admin queue to libie
>
> Copy the code and:
> - change ICE_AQC to LIBIE_AQC
> - change ice_aqc to libie_aqc
> - move definitions outside the structures
>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 78 ----------------
> drivers/net/ethernet/intel/ice/ice_debugfs.c  | 21 ++---
> drivers/net/ethernet/intel/ice/ice_fwlog.c    | 46 +++++-----
> drivers/net/ethernet/intel/ice/ice_fwlog.h    |  2 +-
> include/linux/net/intel/libie/adminq.h        | 89 +++++++++++++++++++
> 5 files changed, 124 insertions(+), 112 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
