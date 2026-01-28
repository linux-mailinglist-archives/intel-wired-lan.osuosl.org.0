Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iHL5AR5Memkp5AEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:49:18 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8A8A72EE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:49:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E09B480B92;
	Wed, 28 Jan 2026 17:49:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1lmLcJBcEbj2; Wed, 28 Jan 2026 17:49:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3FBC580BA9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769622555;
	bh=2qteYBnzP26okSeAlQ4+fXZMMg8cvkKCPiZquSpCKX4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=INgZYi0wc21CRj+PO31ebtZ8nK7nrAjv/WaUzbWs8yRFea47pkid3mNArLupDLC9F
	 pdMoH9umYGkniR1oLzZIUI5S59ud5mzQgNRHr73jatuhO9oNUYlFsz+8x89qGYRs/t
	 3Z382uPmLTNqk7Z3WnNhayUn5wXTjPMForHKLV1LYM2/FZ7KPSegx0RcfsmAT2xF4g
	 yzeo+YQcqBz703YnkDy0KKZsPRoYC8NGSqXGFe9BS4ukq9Bk2+a77HAXRp93AtTqAt
	 kmb17CJbR+AUNO7aa1BxXxuQhebBOZLUPkYbNh+dj4t+VS/EtnCGW7IcIYk7git1Y7
	 Kz4YVDc7JvOOg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3FBC580BA9;
	Wed, 28 Jan 2026 17:49:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1FC901AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:49:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0FB1F40184
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:49:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JrGGkDyCNUpD for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 17:49:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 447B2400CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 447B2400CE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 447B2400CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:49:11 +0000 (UTC)
X-CSE-ConnectionGUID: 9YdeAAPJSr+1uzXI1cKMIQ==
X-CSE-MsgGUID: qdEowGCSSoqkxdYrpNYyqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="70898175"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="70898175"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:49:08 -0800
X-CSE-ConnectionGUID: O2+uy+ulQXSwPMFsBVQMOQ==
X-CSE-MsgGUID: /G7JRr/IRDu1hYrWn9BxcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="213197209"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:49:08 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:49:06 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 09:49:06 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.63) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:49:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dOLT3CirdKRtHpqGYVLIKacvCcPWwt0IXvJ6Q+sO1Dxx0W56WzgZz0pqoBtsC5XJ9GA4TVxIKfh5jXXIziTANzFbrE2igHq8YwpxLjDBhX4Zjs+wmEDkmGzFbrClWPsSdwIE/NSnrVXlHoQoinEm/LKO3KCBztq77wLaZzb7IK3Uc5GK7D3ilATYuc6LWLDMX0+KqX0jWTbW3AXuQID+o4IbEdy1AhlxgtWhRE7wEYuiqjcxDPEtdbWy7HdwJ9p4fqxUy0GN/wMVQv7fX/e8WBRIRjEdYsHQG9sZO0yiw88qgkgO7fEITfgH/DMhx18aREUNlrY1SRHE3EbhaXyxvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2qteYBnzP26okSeAlQ4+fXZMMg8cvkKCPiZquSpCKX4=;
 b=VV//+Z4hFPmKEzSJgahXgah97xyyVpxPuHlQqedliY8v/iWbKqxPnLCwCMQeiPgX+wwghtph1zOH9eWH5Fej+5Av8dVYFOz2ln0FsAftqtepHtjDlvpNx6PE4KcVUlqXlxCgCRTU40bMzk3ZreJYCkiqx6R7ulHf/QgINjEyBsPCDqW1FSLkKDitqD9ZtCgpC3Cx1B98ygloIf2DPU8QAFllet+IE+Aes+W8m7+1K2hB7fgQDIvtPoIRYVZphUKEf3WibPyxc6fYv1WHu+fmOjmdrm859XMTQCI69MaMFv75EvOJ+jn6xfHbOdAejbgkPzJu828eKpRfIatLKmq2XA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA3PR11MB9160.namprd11.prod.outlook.com (2603:10b6:208:57a::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Wed, 28 Jan
 2026 17:49:04 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Wed, 28 Jan 2026
 17:49:04 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Peter Zijlstra
 <peterz@infradead.org>, Randy Dunlap <rdunlap@infradead.org>, "Stephen
 Rothwell" <sfr@canb.auug.org.au>
Thread-Topic: [Intel-wired-lan] [PATCH v2 20/25] tools: kdoc_re: add support
 on NestedMatch for argument replacement
Thread-Index: AQHckHZyix4xSgSd3EmC7nFJtRsY2LVn29Fw
Date: Wed, 28 Jan 2026 17:49:04 +0000
Message-ID: <IA3PR11MB8986D6ED3B745849C887C296E591A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769617841.git.mchehab+huawei@kernel.org>
 <efb77b71a3aba57d85f52968e9a64aee378cdeda.1769617841.git.mchehab+huawei@kernel.org>
In-Reply-To: <efb77b71a3aba57d85f52968e9a64aee378cdeda.1769617841.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA3PR11MB9160:EE_
x-ms-office365-filtering-correlation-id: 8c8bae17-59ff-4056-c253-08de5e958722
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7416014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?RkxXOUIvYkJPbHQxTmtKM2FrWksyaVNmWVZuaHlkeUdXald5SHI4RUYzSURS?=
 =?utf-8?B?TjZDSnRtYnJWaFI0UFJJcmovU1JQRThPbFlXZjEvVDhXMStiTWFndjBxYXBm?=
 =?utf-8?B?NkhuOXlNMXhUMFFHWkcvcUFiOW0vOEp5SjJpVUNVcktxdS8vT0MzbHlwVnd6?=
 =?utf-8?B?NitubGRpSFJtS0ZpVTRyWU1xN3MzTUhJUy9qaEtPbXRsekxMNTYwYldhTGZu?=
 =?utf-8?B?Rm5wUGRSd01JK05acllFUkdNeGk3dDdaNW9Rd2g1MzJoVHlla3VtY2psVXl1?=
 =?utf-8?B?ZkJYL1R6MW9yblNLSDROUFRqY3pMTjVWejk5M00wRm9SVEJaUmxuUVlxQzc0?=
 =?utf-8?B?em1KWVMrSEJmY1pJd3JxaHNOVWl2VHhhcUpnOXk0UlF3OXl5K0JXVXkzT25U?=
 =?utf-8?B?WkhFeWNLZVhwd3pBUVMwUlU0QlNvaXZWN1hKMXR4OHVQS29hM0dUd3l2amYv?=
 =?utf-8?B?UWptS1Y2ZThCcjVwdVBla0xHdWw4NGhLU0N6bWxOY0V3SXJNVWwwMzNKOFIy?=
 =?utf-8?B?YndzeS9VbTlRd0R6bXBXQnREMmJFUm14d21zMXNSbmZaZnBET2lMak41d2xo?=
 =?utf-8?B?TDQyclRIMzQ1Z0owVkUvaS9ERThBVmpScHVibXNFNG1IQXppeDNna0pjZG5E?=
 =?utf-8?B?Z00rWmdRemg3UGlDUWZ5UXhlRGNmRDRPYmJQU2V5VWloL09vMDhOOCsyc2lo?=
 =?utf-8?B?L3NBdU9pMjhTM1RBTEJDSUs4bU45eXNpQXlGVEwrMS9qQ0wvRlRleHBHSXRq?=
 =?utf-8?B?d0hiYks0UCsxbXhybDVyd0FKbVJjV0ZsRVZsU2VyYU00WWNMeTJHczZBTEFx?=
 =?utf-8?B?OERNS1hVNXdPQUtRQk9JbTZqZkduUnJWRnhmTGNxZW5QSjZvR0xiTlMremF2?=
 =?utf-8?B?QUllclZmUnhUS05XcHFZSXl3VmxEVEdNRExCU3FKdWtJcmJQc1V1bVNWS3d0?=
 =?utf-8?B?bmZ1Q1hIWVVmd0J6MEk2VFFyaTRVRGdoNXU4NkhEdHRzdkRBN2FJMzVZM2VW?=
 =?utf-8?B?UTFhdzFzclVwVnlLdkZ4R3hSdVNOZU9IZUxiMWh5VTZXaUN0ZHQvMnR3cFB2?=
 =?utf-8?B?eXViZU82U2U4UFJXSThMaXJrK3dQR3NuY05DQTB1QzJyVTJ4cmYzOVVoUnl3?=
 =?utf-8?B?dnhOUElYYXVmUi9qWmN5ZlYvcDhJU0ZVTlM0TjI2UHpmNTJLc0lZL3pHUVdK?=
 =?utf-8?B?VmdrZCtObEhpL2cybURlUlZob3NUMHlHSkpFSkVqY0xsc1FJb05KOFFCQUo2?=
 =?utf-8?B?UzdRaDBGRDgvNEJnNFJjREtoRmttdkRiTEJvLzVNbWhCM1l1VkZPRHBvZzJ5?=
 =?utf-8?B?VGpIOG1VVGs1UzhIN3FUVDJHa3NYQkFacVF0cHZ6NlBOWU5zNFgwUERQa0w2?=
 =?utf-8?B?ZXo3V0NhblZlaWlLZXNvcTJWdTV2bWdLUTRJVUlEVHVQZE00RmZFYmNYNE8y?=
 =?utf-8?B?QzBVN3MraVpHTkc3S1Z6ZkhMWU4yUVFoWkFaOXpQeVc0dmJ4TWNTa3Vsei9X?=
 =?utf-8?B?clF4UDVtMUlNcUtreXFaYlRaUm9QU2hqVGF1MDFxZW5nc0luek1FV1p1T0FP?=
 =?utf-8?B?S1o3L3JWblB2emlwQnpuWFVqdUhVMkNIclVRdU01UVZnd1FBblB6Wlk2eGNw?=
 =?utf-8?B?OHIvc255RS9MRWZ3UEp0NWxpTklrd3ExTHRrR1BMZndUL0x6ckxYWTd4azBz?=
 =?utf-8?B?NVI1THpyZ1NCK0hjZSt1ay9vUzdTeUpQendWTlo1QjRGdzVVTmlMVTZORXVl?=
 =?utf-8?B?VmxsV1NpV2lTd0ZUUFNCblZkU3o3aWQrSklnSFdER0orY1A4aUhRTDRlQXE4?=
 =?utf-8?B?U0l0UWQ2MEhReUl0bjh5MnBtSmhzMGdrbGZaMk9saERMOUpsRU1vdU5JdVRE?=
 =?utf-8?B?VUFWTHJiTXV5dWNnS1p3d1dKYVkxYWd2Um5CNytUanh4c2hoemFIVzVHODB4?=
 =?utf-8?B?Nm1ySlM1WWJudlBvVmNuZkpyK0NCMGxPM2VJUis4Q3ViR0NUV2VyY1E5dXps?=
 =?utf-8?B?d2g2a1ZmNFMwdUJwZUNHWEYyRHNTN0VCK3dIN1FKNjZFejYzOHI4Nyt2VWkz?=
 =?utf-8?B?Z2kxZTJicFA1NHlGditXcDQxd1BHdjFGYUNGK0s5bzBiR3Nic2pNajRGOGIw?=
 =?utf-8?B?OGVDUDhJV3VYVGNsNHd3MTAra3VwenhZUXRaVWFhS3FiSFFyRE5HUHQxeXB2?=
 =?utf-8?Q?23ym4G+lE7p8OeD5kFKLMw8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7416014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V2UwdE1wVmRLWnJxd3pFY1pmME5sNVRKYmtPeGlXT3Q2YUczSVFKVWxDaFVR?=
 =?utf-8?B?aVA5NDZUZHY3aXhLWDh1YUgxeWJjL21NSStuRHV2RndKeXl5cktlM3laRHNo?=
 =?utf-8?B?ejlKWGRGYVNVSkRSUzBlYm4zOTlrTzFUejdneEEwOU1Fa1B3dlI2bW9ELzRP?=
 =?utf-8?B?N29oK1Y1SHdqRXJ5aENmZmpRL0dHbjMyTG9hVFp6dWUvRnY2QWJ2eGlpT3Y1?=
 =?utf-8?B?SXROUmlzL0tyK2RsTUY1b1Y4TFl6ZzdTZGdCTzVaMW9LbFhJcjZEa2Q0MGtM?=
 =?utf-8?B?OHpLSm5CcXNWdHB5eEpJbDNuQ2FFU1NMWWxXcTdNZzFtelZHRUdwZkpKcHZp?=
 =?utf-8?B?T3Fqblh1N0dvZjdoeVJqVDBlUkpmSy92cHlTLzFVc0x1WFdQMEVGYXhZbzl4?=
 =?utf-8?B?R2N1MlgzS3Q0dnN5UEJpaWpSVy96ZkVlbzI2M2dDelVIanZVTWJNK2Z6cEhY?=
 =?utf-8?B?ejNsYVd0eklLcFNMQ1VIWitIU3FUMitSUng1RFcyOW94Zkl2TzFyK1Vnc3pw?=
 =?utf-8?B?MFpTUEpmYzFralVNdzB4Q3JoWVd0WnFycXFOVGNXMENFUWtEaXo0YUNyM09P?=
 =?utf-8?B?N0lESm04QlFmR1JJQ1Q2UUwraEJEQUtldEE1a2hURktGTG1zQjdwMUsyelNC?=
 =?utf-8?B?eURUNlN3TDRjbHNDMG90VU4renhMdzl0bzdMOTRwYi8zOG83NWhYcllRMTVY?=
 =?utf-8?B?blBEL1B1cWxYK2lxbDRGbnZnQlcwN3FoZGVQby9lN2xtaWEycU5vNFN5UWJv?=
 =?utf-8?B?T2lmN2VhZ21Nczg1OHdocnRhejhBZHJEcVI2WnBhZ0x2M2RFa2E4RkxZdUxx?=
 =?utf-8?B?Q29LMUJ0bkVFQ0F2SFFud3ZjZU11b2dPMktrUkRFYm1ET1ltVlB3bk9ZVnU3?=
 =?utf-8?B?STVldjN3MVhZS0tlU2piNkNPUmx6cDRaT2pvQVdDVXJJQ29wbFZLRGh3dHQz?=
 =?utf-8?B?b3JCbC80Qy82NDZzR1FRSW9JOFR2eGQrazc2R1ZhOS8rNnR1dENXWFFobGkv?=
 =?utf-8?B?STZzdjVhdlFWbzdLTXEyakZLbFMxU0NDSkQ4bkpKWFdQUEpENjFHaFZwZzRx?=
 =?utf-8?B?S2VDYkJlVG90d1FKZXZKTUE2NDdsMFBGWlhEREZJbVBqUUhvYXQ3VTRscmZJ?=
 =?utf-8?B?cng4ZGhtVnZxaHZRSlpmNDlSS2ZLTzkzTDJTai9aSXZIb08zNkEvcTB2OGxT?=
 =?utf-8?B?Z05TZVZ4UVFZazlwV2tYTXFvYkVvTnFqZGZDR2JmK3lZN3lDWWpLZ3ZnRXd1?=
 =?utf-8?B?S2NRLzNlZGZIcHJaMDgwWmhkazdVcTR5VHZkSzZVYTI4OStMNTRPVTlPNGZB?=
 =?utf-8?B?ZXBSZ2haSlJ3c09aeWhwMGVxaVBNM3NvWnEyaVRDdUZENFlRNUp0bzBZZHZF?=
 =?utf-8?B?NXIzUFREYXJJQ1pONVU1ZHJXYVBIazV2d05scUFNQ2FQS0ppY1llQjVrRlZQ?=
 =?utf-8?B?d2hKaEduN0ZnRUJHMk9sREtndmJ3NWtJYkE3akhXSktRbHR6YnRVU2RwZVls?=
 =?utf-8?B?QjEzcEpvYTBEQmNUT3ovTHp2SXJISk02Qk8yckMwS1RmVGxGYjRpcGpYTXQr?=
 =?utf-8?B?ZnlNaTF4OUlWN25Kb2pORWN0aU9hUmtSdTJxQXZlMG1hNlRqSG5BMUU4aVpU?=
 =?utf-8?B?SElpMm02RDZSc2duMHdtUTgrMnQ5TmhKNXI5Smpmbjg5VUVhd290VlRGWkNV?=
 =?utf-8?B?VW1Pa0VLQmZ4UllNVGpZZWsvVVNBMmNXMGRMOUkwOHNuTkZPUEMwd2tSV3Ji?=
 =?utf-8?B?YUEwSmFlM0p1bGRxV3E3Y0JXZkYxYzBrTDA2bUM2R2k5VGFoREpDM3hHNVU0?=
 =?utf-8?B?ak9ueWdURktudEYycEhMaTJpQTVnZU1vRVZRTkkveEpGaVpodDBPMjR6b1RK?=
 =?utf-8?B?SXJKTnVJUTVWUlFTWXBwbFhabFpncUFuUytIaS90aVJTdWpUWU1HbFNUNDd0?=
 =?utf-8?B?aHhvZjJIWWtyUzJDaEZ5RmpRd3VwYmxUL0xOcDJlN1BhRm13NlYxNkQ1YVhE?=
 =?utf-8?B?cDNCT2F0OFE0L2FVN2p6bGtDOFZJL0dudkdPR3N2dHVwWlgwOUxlTGdNQUJZ?=
 =?utf-8?B?U0RYaUF4Z0c3dm1RVEszSHdIeE5saThmcXNiVm9IWVNWUVhoenpCVTlrT3Fq?=
 =?utf-8?B?UXhOTmdIRFpGSEtOSy96V0dhZCtzYnlndkJVRlNocmdSUk1DcktwSTlQZEtG?=
 =?utf-8?B?RkpjNldvVVU3YkV5cmZ1eUFiZW9JMVo2WmNoY25QaUFFdGM1N0ZkWWFMeVZq?=
 =?utf-8?B?ZTdqY0J6aFlXZHNiRUY1UXBEV1FPV05FMHd0aFY0N3pDdE1iT2xmUGx3bTQy?=
 =?utf-8?B?SmxlSG91dStYZFZ0Q1ZLci93QTBObEk4eU1uZTFDZEY3WG8wREY1QT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c8bae17-59ff-4056-c253-08de5e958722
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2026 17:49:04.3324 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VLUx4bu81l0GQN6eZQAq5y/u/eA9yNpSYgeO5Cmrl64qXezYilGbsXhXX714GFQJ/4otTOXPHHOudPKheKae95d+fMiE8zQuNCjSYx5/WBw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9160
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769622551; x=1801158551;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2qteYBnzP26okSeAlQ4+fXZMMg8cvkKCPiZquSpCKX4=;
 b=bZuFPJa3gPJb8gtQucfQ8Tk/oiIpFLgCNd0qDS9uEKQNRK2SYb48aiob
 /+xhL61DQVuaWZwWCDsrRw6gLUfY5PN/1JkWIJWHcYSMxd4/MYeI6bebA
 as5g8se38mvu3G7jnqzsVxcZmDOj9XJv4dTKWNVIKTVZVk3ibY2CtKc8V
 Dnq68W0+eIriuAcumCuoq0A58AUkGyICOFZIxnRAMaV7A+gyxIAbkBI1x
 /oDN6VlXNuEHb48/1Wrf9nNawuyp3lzplOjdoLfb/vY/IiDnB3sSOXOAa
 HzqqAOXnrJgPz3EmqMnXQO4+/p2rKz/spMlSxC7Sg9M246QUy2jZhDF9m
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bZuFPJa3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 20/25] tools: kdoc_re: add support
 on NestedMatch for argument replacement
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
X-Spamd-Result: default: False [2.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:peterz@infradead.org,m:rdunlap@infradead.org,m:sfr@canb.auug.org.au,m:mchehab@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA3PR11MB8986.namprd11.prod.outlook.com:mid,osuosl.org:email,osuosl.org:dkim,auug.org.au:email,infradead.org:email,lwn.net:email,intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 5D8A8A72EE
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWF1
cm8gQ2FydmFsaG8gQ2hlaGFiDQo+IFNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAyOCwgMjAyNiA1
OjUwIFBNDQo+IFRvOiBKb25hdGhhbiBDb3JiZXQgPGNvcmJldEBsd24ubmV0PjsgTGludXggRG9j
IE1haWxpbmcgTGlzdCA8bGludXgtDQo+IGRvY0B2Z2VyLmtlcm5lbC5vcmc+DQo+IENjOiBNYXVy
byBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5vcmc+Ow0KPiBicGZAdmdl
ci5rZXJuZWwub3JnOyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbGludXgtDQo+
IGtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IFBldGVyIFpp
amxzdHJhDQo+IDxwZXRlcnpAaW5mcmFkZWFkLm9yZz47IFJhbmR5IER1bmxhcCA8cmR1bmxhcEBp
bmZyYWRlYWQub3JnPjsgU3RlcGhlbg0KPiBSb3Rod2VsbCA8c2ZyQGNhbmIuYXV1Zy5vcmcuYXU+
DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCB2MiAyMC8yNV0gdG9vbHM6IGtk
b2NfcmU6IGFkZA0KPiBzdXBwb3J0IG9uIE5lc3RlZE1hdGNoIGZvciBhcmd1bWVudCByZXBsYWNl
bWVudA0KPiANCj4gQ3VycmVudGx5LCBOZXN0ZWRNYXRjaCBoYXMgdmVyeSBsaW1pdGVkIHN1cHBv
cnQgZm9yIGFndW1lbnRzDQo+IHJlcGxhY2VtZW50OiBpdCBpcyBhbGwgb3Igbm90aGluZy4NCj4g
DQo+IEFkZCBzdXBwb3J0IHRvIGFsbG93IHJlcGxhY2luZyBpbmRpdmlkdWFsIGFyZ3VtZW50cyBh
cyB3ZWxsLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hl
aGFiK2h1YXdlaUBrZXJuZWwub3JnPg0KPiAtLS0NCj4gIHRvb2xzL2xpYi9weXRob24va2RvYy9r
ZG9jX3JlLnB5IHwgNjEgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLQ0KPiAtDQo+ICAx
IGZpbGUgY2hhbmdlZCwgNTkgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRp
ZmYgLS1naXQgYS90b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19yZS5weQ0KPiBiL3Rvb2xzL2xp
Yi9weXRob24va2RvYy9rZG9jX3JlLnB5DQo+IGluZGV4IGFhYmZkNmM0ZmQ3MS4uZjQ5YTU2OGI5
MTU1IDEwMDY0NA0KPiAtLS0gYS90b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19yZS5weQ0KPiAr
KysgYi90b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19yZS5weQ0KPiBAQCAtMjY3LDYgKzI2Nyw1
OSBAQCBjbGFzcyBOZXN0ZWRNYXRjaDoNCj4gDQo+ICAgICAgICAgICAgICB5aWVsZCBsaW5lW3Rb
MF06dFsyXV0NCj4gDQo+ICsgICAgQHN0YXRpY21ldGhvZA0KPiArICAgIGRlZiBfc3BsaXRfYXJn
cyhhbGxfYXJncywgZGVsaW09IiwiKToNCj4gKyAgICAgICAgIiIiDQo+ICsgICAgICAgIEhlbHBl
ciBtZXRob2QgdG8gc3BsaXQgY29tbWEtc2VwYXJhdGVkIGZ1bmN0aW9uIGFyZ3VtZW50cw0KPiAr
ICAgICAgICBvciBzdHJ1Y3QgZWxlbWVudHMsIGlmIGRlbGltIGlzIHNldCB0byAiOyIuDQo+ICsN
Cj4gKyAgICAgICAgSXQgcmV0dXJucyBhIGxpc3Qgb2YgYXJndW1lbnRzIHRoYXQgY2FuIGJlIHVz
ZWQgbGF0ZXIgb24gYnkNCj4gKyAgICAgICAgdGhlIHN1YigpIG1ldGhvZC4NCj4gKyAgICAgICAg
IiIiDQo+ICsgICAgICAgIGFyZ3MgPSBbYWxsX2FyZ3NdDQo+ICsgICAgICAgIHN0YWNrID0gW10N
Cj4gKyAgICAgICAgYXJnX3N0YXJ0ID0gMA0KPiArICAgICAgICBzdHJpbmdfY2hhciA9IE5vbmUN
Cj4gKyAgICAgICAgZXNjYXBlID0gRmFsc2UNCj4gKw0KPiArICAgICAgICBmb3IgaWR4LCBkIGlu
IGVudW1lcmF0ZShhbGxfYXJncyk6DQo+ICsgICAgICAgICAgICBpZiBlc2NhcGU6DQo+ICsgICAg
ICAgICAgICAgICAgZXNjYXBlID0gRmFsc2UNCj4gKyAgICAgICAgICAgICAgICBjb250aW51ZQ0K
PiArDQo+ICsgICAgICAgICAgICBpZiBzdHJpbmdfY2hhcjoNCj4gKyAgICAgICAgICAgICAgICBp
ZiBkID09ICdcXCc6DQo+ICsgICAgICAgICAgICAgICAgICAgIGVzY2FwZSA9IFRydWUNCj4gKyAg
ICAgICAgICAgICAgICBlbGlmIGQgPT0gc3RyaW5nX2NoYXI6DQo+ICsgICAgICAgICAgICAgICAg
ICAgIHN0cmluZ19jaGFyID0gTm9uZQ0KPiArDQo+ICsgICAgICAgICAgICAgICAgY29udGludWUN
Cj4gKw0KPiArICAgICAgICAgICAgaWYgZCBpbiAoJyInLCAiJyIpOg0KPiArICAgICAgICAgICAg
ICAgIHN0cmluZ19jaGFyID0gZA0KPiArICAgICAgICAgICAgICAgIGNvbnRpbnVlDQo+ICsNCj4g
KyAgICAgICAgICAgIGlmIGQgaW4gREVMSU1JVEVSX1BBSVJTOg0KPiArICAgICAgICAgICAgICAg
IGVuZCA9IERFTElNSVRFUl9QQUlSU1tkXQ0KPiArDQo+ICsgICAgICAgICAgICAgICAgc3RhY2su
YXBwZW5kKGVuZCkNCj4gKyAgICAgICAgICAgICAgICBjb250aW51ZQ0KPiArDQo+ICsgICAgICAg
ICAgICBpZiBzdGFjayBhbmQgZCA9PSBzdGFja1stMV06DQo+ICsgICAgICAgICAgICAgICAgc3Rh
Y2sucG9wKCkNCj4gKyAgICAgICAgICAgICAgICBjb250aW51ZQ0KPiArDQo+ICsgICAgICAgICAg
ICBpZiBkID09IGRlbGltIGFuZCBub3Qgc3RhY2s6DQo+ICsgICAgICAgICAgICAgICAgYXJncy5h
cHBlbmQoYWxsX2FyZ3NbYXJnX3N0YXJ0OmlkeF0uc3RyaXAoKSkNCj4gKyAgICAgICAgICAgICAg
ICBhcmdfc3RhcnQgPSBpZHggKyAxDQo+ICsNCj4gKyAgICAgICAgIyBBZGQgdGhlIGxhc3QgYXJn
dW1lbnQgKGlmIGFueSkNCj4gKyAgICAgICAgbGFzdCA9IGFsbF9hcmdzW2FyZ19zdGFydDpdLnN0
cmlwKCkNCj4gKyAgICAgICAgaWYgbGFzdDoNCj4gKyAgICAgICAgICAgIGFyZ3MuYXBwZW5kKGxh
c3QpDQo+ICsNCj4gKyAgICAgICAgcmV0dXJuIGFyZ3MNCj4gKw0KPiAgICAgIGRlZiBzdWIoc2Vs
Ziwgc3ViLCBsaW5lLCBjb3VudD0wKToNCj4gICAgICAgICAgIiIiDQo+ICAgICAgICAgIFRoaXMg
aXMgc2ltaWxhciB0byByZS5zdWI6DQo+IEBAIC0yOTIsOSArMzQ1LDEzIEBAIGNsYXNzIE5lc3Rl
ZE1hdGNoOg0KPiAgICAgICAgICAgICAgIyBWYWx1ZSwgaWdub3Jpbmcgc3RhcnQvZW5kIGRlbGlt
aXRlcnMNCj4gICAgICAgICAgICAgIHZhbHVlID0gbGluZVtlbmQ6cG9zIC0gMV0NCj4gDQo+IC0g
ICAgICAgICAgICAjIHJlcGxhY2VzIFwwIGF0IHRoZSBzdWIgc3RyaW5nLCBpZiBcMCBpcyB1c2Vk
IHRoZXJlDQo+ICsgICAgICAgICAgICAjIHJlcGxhY2UgYXJndW1lbnRzDQo+ICAgICAgICAgICAg
ICBuZXdfc3ViID0gc3ViDQo+IC0gICAgICAgICAgICBuZXdfc3ViID0gbmV3X3N1Yi5yZXBsYWNl
KHInXDAnLCB2YWx1ZSkNCj4gKyAgICAgICAgICAgIGlmICJcXCIgaW4gc3ViOg0KPiArICAgICAg
ICAgICAgICAgIGFyZ3MgPSBzZWxmLl9zcGxpdF9hcmdzKHZhbHVlKQ0KPiArDQo+ICsgICAgICAg
ICAgICAgICAgbmV3X3N1YiA9IHJlLnN1YihyJ1xcKFxkKyknLA0KPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgbGFtYmRhIG06IGFyZ3NbaW50KG0uZ3JvdXAoMSkpXSwNCj4gbmV3
X3N1YikNCj4gDQo+ICAgICAgICAgICAgICBvdXQgKz0gbmV3X3N1Yg0KPiANCj4gLS0NCj4gMi41
Mi4wDQpSZXZpZXdlZC1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8YWxla3NhbmRyLmxva3Rpb25v
dkBpbnRlbC5jb20+DQo=
