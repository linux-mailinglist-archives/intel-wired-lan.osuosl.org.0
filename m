Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AADsLDNnhGkh2wMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 10:47:31 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F59F102D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 10:47:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E8AA74112A;
	Thu,  5 Feb 2026 09:47:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wUNF2Vqqlg3h; Thu,  5 Feb 2026 09:47:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 026A74112B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770284848;
	bh=7lBeiP1yExZpYU2E8yE0BeV8siQjRm1qmLSXy7s8/mM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Co9esqBJXaMHIY3UhZmgVRwb7PqIuq85q8jeL3q+MrcsPrhR/+aED+9TlqhWZiZzX
	 dZ9A5QNHLVPDsW48hYHeKLWhn5ritcy02Phfgjf4QX+GSh7zm4JWoJL8ShfkrtqkZg
	 ZU4xhCR9C2dC5ZOkR99TOU8wz6yX9AQqPzW6ibEaguKll5QdeHAVCXuPSDm49oqDtw
	 9nLq9BPzSCqoiEz/mrhF/Aj5MfPlozTkLqiC6CvUvuO02N5ho8JdpoQurWZ3NcC3Mk
	 3/G8wIG8gAm4wh75OfHG8EaFC/iiPZWIaJdk1zCQ7lejPTgktXgiHz7HcxY8oceQLv
	 7xohj70U7AijA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 026A74112B;
	Thu,  5 Feb 2026 09:47:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B0582F5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 09:47:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9C72D83F34
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 09:47:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1qacnav81emi for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Feb 2026 09:47:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 58C1A83C90
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 58C1A83C90
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 58C1A83C90
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 09:47:24 +0000 (UTC)
X-CSE-ConnectionGUID: 5uWSEOqpQvKxX5IN74lJSA==
X-CSE-MsgGUID: 0qWt+LahQB22DKjHm9YuZg==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="59055866"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="59055866"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 01:47:24 -0800
X-CSE-ConnectionGUID: /9RAp8ydTHGCjMskZeHchw==
X-CSE-MsgGUID: H+V8CheCQIuaznJos7HMYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="215439731"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 01:47:24 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 01:47:23 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 5 Feb 2026 01:47:23 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.56) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 01:47:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WNcdJFxTYFMZptDH2RryaM/TJbF8RLvNmgiTCsPVkV0HnigE/PbzjhlVOW9R2/kB6PzNXvL8YffRIaGQsf+4TOXoRv+kRxeEPbHEqoUH5YOti1Zb20+8luEjEw9rK1D0XNK+DZt8TQMYOnnhAFfrTuiXOchmAWWjnoclCjQwQR6kNkfzVJQ0VQDMVBJ+E12U3NzrDVil6m5/9ELTSkH7PpZQqVhwAaAY9ACRuuIHibcQOLF8WrRHjIR7BzbnUXuKwzw106dVIW+DekQ98OD979kmTRCScLYbxsBdBhcFSM8ZfbMp8u8mBh23R/PjnPRTNenasoEMtHvQFCt9g9XzNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7lBeiP1yExZpYU2E8yE0BeV8siQjRm1qmLSXy7s8/mM=;
 b=jocy05epuum45dZuxVT6To6sp9VGRFC5x2TO6lufb9Md9AF69mr3ZbgCtl/adM7mzresVkTAC4PoQIu8VNQaXYqa1P1JG59RRZ0SeNHTP9TIGT3iCXv7iO9CY5ebsUD74hmwl9BQYwMhYi9lDv1DGueShZNZl4Veu6DqifItXhhXXd4ZvmE9Ye0e8yUysC+tpEgdg8JXiyQNXNPeGkM5CHGpZETjxZ3Lro+nx4iO4qTPb6qqcYJ9PF10o03LLBdJ8NQRQ2SomDm8M1ID/GxJX5oAxv2ZfuTVDeBq6fWFheqszqK5YoRkLyUwiDVmE1jAGzjWNbu46I9QCKCBxf/GGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ0PR11MB6768.namprd11.prod.outlook.com (2603:10b6:a03:47f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.14; Thu, 5 Feb
 2026 09:47:14 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9587.010; Thu, 5 Feb 2026
 09:47:14 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: Paul Menzel <pmenzel@molgen.mpg.de>, Vadim Fedorenko
 <vadim.fedorenko@linux.dev>, "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Richard Cochran
 <richardcochran@gmail.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, "Eric
 Dumazet" <edumazet@google.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>, "Sebastian
 Andrzej Siewior" <bigeasy@linutronix.de>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3] igb: Retrieve Tx timestamp
 directly from interrupt for i210
Thread-Index: AQHclnYXhLud46uHAE25c+QBK+gWd7Vz204g
Date: Thu, 5 Feb 2026 09:47:14 +0000
Message-ID: <IA3PR11MB898652699383BA265C5747A5E599A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260205-igb_irq_ts-v3-1-2efc7bc4b885@linutronix.de>
In-Reply-To: <20260205-igb_irq_ts-v3-1-2efc7bc4b885@linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ0PR11MB6768:EE_
x-ms-office365-filtering-correlation-id: 722dabc2-cd5b-4dd1-1b99-08de649b8ab0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?WjRxbFhacmZTU1lBYWdCTGZyd0Jocm13WXZ5ZmllMzlmZ1dlTnNkSkJIMXQy?=
 =?utf-8?B?MXl2Mzl1TWttQ1I4NE53YlZiVi9mMVk4aWxDdlJPUmtYMlpPR054K2ZHWlZz?=
 =?utf-8?B?TWtuR3V3bkhFNWJUczBsa3V5Y1U0NU9GQ0lKemRJN2svc2FNek9scWl6V2Zl?=
 =?utf-8?B?bkNaZ3JZYS9JcU05SVQ1dVhmd0ROZ3VwZzIvN2JXVXBrZHBVWlA4Tlh4RlFz?=
 =?utf-8?B?NklpWXVyMkFtR3pyamE1UWRzc3YwTXZoQ1YvTUNkeWZKLzJ3T0xVWldVSElI?=
 =?utf-8?B?TEtCc1ZMWCtScklSM3ZiZVNhMXpSVUVIVzVGVVlzaHNLMElQNnIvaERtaXJt?=
 =?utf-8?B?d1Y5UDdlaWJFcUhxc1BMbzBTOEduelBEKzJVWTVhRE5iK0kxemVDa1pLQUVZ?=
 =?utf-8?B?MEE4aGQxTDZLSzhqakx1MzY4clBKK3d5QVNnM0s2OVkxNXcwam9oQWcydjBh?=
 =?utf-8?B?WkNyYVh2dkl1SEdMUkJtZmk2V21ENWd6emV0NnRnSWNBazlBZnh0NHIreGxo?=
 =?utf-8?B?QzNjS1dFL3Q1akZZZEtRWlVUSSt3TGVJYjU5cnRZb1VLRFoxenBySGlOdVky?=
 =?utf-8?B?MmpDcVArVUx1YmhGSkVwWG1IVlN5QlloZnNTS1hac0hNc1hqd0NpZExLOG5D?=
 =?utf-8?B?bXYzWnN5bGx0bk04RnlzZ0k5OXVuSGoxcENTUjVicmxxNkcySDlrdXE1OS9N?=
 =?utf-8?B?TzNwMlVGQ2hwSlhrblA2RWNDNHVsVm05SkM2Qm8zeUkrTlN6MkZmN1pOVmJ2?=
 =?utf-8?B?Tm85TU1Lb01VZWNYTmpqL3lXMHp6anM5WjE0K2pqZ1lUQlZncnNyY1JWVFhF?=
 =?utf-8?B?K1AvRVVydTBlVGxLMzNOanJOQ2UwcmJMdnJrUExsQWxzNXlHQVhKN081a1pD?=
 =?utf-8?B?VWNwb2pvMnVJcGUyWTlISU44dUVkN0diaTNRRkY0QVZJRlhMbXhja0xGc2c3?=
 =?utf-8?B?TmpTVDdqTk1YS2t2Wmt6SFEvZHdxNVlRbG81MnhaQWpZRGwvSnJwV2RNQ3ow?=
 =?utf-8?B?UG9CYWdtM000QVBJSmVlOWt2dVE1UkRHVGdJNkJLMTNoZnFYU250NGwvL095?=
 =?utf-8?B?ZGZEaTlJMy9qenllUVlZcG9UZXVKU0NGVkF1c3hkczFoSFhjOW0zK05GSUN2?=
 =?utf-8?B?eXZ3WnBDazNkYW1FVThKNnlYUDBVZkdOb0FIL1VTVmx6bXVxQTJiS3pXc00v?=
 =?utf-8?B?bkNxSTIxa3NpODdUem16eHFZZnlwZjkyQWNKK0FHQnVZWjErbWhVakFIQ1oy?=
 =?utf-8?B?aFhZRGM1bEY0Z2xNRXIyMU90WWNjTXk1a0VKcTJYQ3VkUVROVW5pMWFaR0pQ?=
 =?utf-8?B?MWhLZDVqajVHZzZNR2QrN2xhcVhXelU4ckNDUVJBeVgvZ2NZSVlHYXNSSXlK?=
 =?utf-8?B?Q3ZUR004eHNZNzdkZTF5ZHlPazhXNEZYeHdrT3RzTldDeDA4Mmd6cGJORG85?=
 =?utf-8?B?bDVCc2twYi9NaEgxWEdiMW9CUGtFY3lTdjhLZk04RHhsT2RVQkN6ZS9FUGZs?=
 =?utf-8?B?Mk55STQzRlJwUEUyN1hCdGIyaEZKNWYySUw5Sm1ORlpvVDVwb0s5UTNqUURL?=
 =?utf-8?B?L2ZucGc5dVBoMk5pUXFTMEVvOXN1b1JPSVBzVGRDUFRaTUowSWhyUzg3MEZo?=
 =?utf-8?B?UkRvRGtNckEyUytTajY2ak00Wlgzd0M0WnVWZFJpaTdmWkpOZ0RZT0lUUHVj?=
 =?utf-8?B?cG41RmU5emdLakZkK2w1cE90R2ZWTzhma0VadmE4MWFHVEIrWFhJNXcvZlhv?=
 =?utf-8?B?dnFzdXVWWGxsc2hhbzZEeEdiNzJjRlpuZnV5VjFlUytrYmlLM1NrVFZzWWE0?=
 =?utf-8?B?azRWMnh1bUJUa3BEVHREMVRDRnZsaTFWR2lmUlJrbU40bmpGS0hYOTNTa1lC?=
 =?utf-8?B?cU96S1dYUFR5UmQ1aWpmMU05QWg2NkZIaklPRSttM2dmenhITzErd0IwOVI1?=
 =?utf-8?B?WHBsNTkyZ0N5bGRLQnFxeUZFVFF3WUJER2FnNlJleldpUzEwcFZXYVNEQUkr?=
 =?utf-8?B?TTAyYlVQcE05b2hvdEh6TEVaQ3JQd0FQTW1CUWxoRDBQRTFLQUFjUE1vbFhY?=
 =?utf-8?B?eWZKU1ZCRTBxTVVXMVk0clBLZHN2RXVrL0MrRldUWTdjc0lyZXA5TlUxZ2lQ?=
 =?utf-8?B?SkJSeTErcTJMUTRxWTBRNkU2VnlCVnhHUUFZbGNEMkk2TmZXa201eGhGQlhH?=
 =?utf-8?Q?ddRpvGc0SCaLWtxyfhYIkme2gc5FtMqo08RrAQ87ydRk?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NEhYZ25tREtrM04ySkZETDBoR0pKYm5yU2cybERtS3ljcGFrbEhWTkpJREYv?=
 =?utf-8?B?NDRMeEVzeXJTSW8zeldVdVFSbWF0a2RsUEtqUGs0VVkwaXFjMGQ4a0twVXlG?=
 =?utf-8?B?dmRaNkpLa1ErRldoT2o2TGgyVkpNRVZ0ajlTbnhUU2ZmS3lLOC9VZ0JxV1VG?=
 =?utf-8?B?dWNid3pUZG8zcE9qbEgvdXpCV2lDaE9uS21WVHJHZkI3bmVERmM1NTNjUmJ4?=
 =?utf-8?B?ME9mQ1hrTEZpNjZNWHdHeFNsTVE2cklFVElSL3ZxNVZuREhaU21pVVY1ZGRt?=
 =?utf-8?B?enZtRU5kRVNJRnduRFNpdVVybU9ITGpwajBEUmNDZis0TnViRVlpWjNyTElj?=
 =?utf-8?B?bkpYdEp4MTFUbFZzcXdKY3FKOHdSSUp5TUlyZ3E2cnBLQ2lKaHdSdmxhY205?=
 =?utf-8?B?TEt4cm1wOTU4OWxXa25iV0JNek5BSVQvT2J0aTI2cFFpejFzd29ueE5FQ2JC?=
 =?utf-8?B?YjdHckhuOEFIb09OYVI2ekEvdzhpdVpYWFJlTXhUTXRER2ExQkpIQXlNeFZp?=
 =?utf-8?B?WjRQZFF3OW9lOE1MQnY2Ry9zNGlyTTZsMjI2a0FTNURoSmdBNC9XeVFENFI4?=
 =?utf-8?B?OXY2ZkpjOFdTLzl2cEZRNi96MEl6YjFuMnVBV0NBTWRldDZyc2E4UXozL3dm?=
 =?utf-8?B?L0QxUitReDZNNjJrTFZZWktqZEQ1aWRud3dVUUc0NCtha3QzTDF4a1FzYTlp?=
 =?utf-8?B?V0cvMUNiY0hCNUNoakRPNEh2NUlNemtQWDhRbFFVbG84bTQvZjQxQ3grcW1H?=
 =?utf-8?B?V3dqUUVGZkFXK00ra3NtNks2WW14ang1VGo5dXdoeG1tNEhVSks5a01DdUg5?=
 =?utf-8?B?cngydnFVQWlFN3RxLzgyaUpSME5NVHhiQUZnMThuUE5vWHVzakxEQlZqOVVB?=
 =?utf-8?B?cjJsVzRtek4wR01hc0tqakNLeGZienBQYTAxdUF2RVpMRWdRZzM2R3RvMHUr?=
 =?utf-8?B?VjNFVVRDYzJYN05YbFpkWTQxRVF0Tkk2NkxnclpBS0hTb2Evck5wc1RHeTBV?=
 =?utf-8?B?WVZBaXJ0OU4zdnJhV2pLbHRzdXRKMlVUVW5rOGE0SVZBcDhYSlh0MFdzMU5j?=
 =?utf-8?B?aXF1V1RjSlYxelJuSlBtWWNJZGhqZzgwT3prNHVBbFFCZWZYeFowcnBTdFpE?=
 =?utf-8?B?R2ZITnptWUZYUU92bEJKYUhEdSt0RTFUQmVpbnR0WHZnMTRoeCttMUNwODgz?=
 =?utf-8?B?SEY2NlJwcUs5d3lObzRFVjBJWUdZZEJZNFJiQTBqbnRSeG83NUZ4dmZ3UWVP?=
 =?utf-8?B?STBHRllET3orSk43b09qMVBsdGM0ZkFJMmkweXN0QUVrQVFBYkFndS8zdElI?=
 =?utf-8?B?TmZBenBHRlYweDhTcThpcG9sTEZZZ05vWk9mdWpwLytXY3NWNlArMUdTdmtY?=
 =?utf-8?B?cnNuU1pCcDBTditWdWhEbUVUNUdmYVBiS1RidXd0eHdCVHdJVmw4ejk1djh5?=
 =?utf-8?B?L0t6U0xsZlRyaXVvdkRWd29mTkpSaWh0c05zdFgwTmNIakNlTW9IR0tGOGN1?=
 =?utf-8?B?R0l2aVNFb2swOE5jYkdOZTlra05XclhtZklOcTJxa2dUSTh4dXZ6Znp3NHJu?=
 =?utf-8?B?QlBKNVpMVm1MbGZqZHBMMFc5YUVlaWt5bzRQUi9ISGMrcXFKL2MzZklhdDVz?=
 =?utf-8?B?azFKVUU2allqZmFCNmJIUUcraGwxa1RSUHh0Yjkwd0VLTkY4b3puQ0JDTHp0?=
 =?utf-8?B?enNjYnRaUXZSV0JaMXVDMHZKUm9DQ3Y5WW1VU0dqbnA1SXVsUFhEZUdhbWNh?=
 =?utf-8?B?ZXd6SmY5dm1WeUtvSjdqMUljVGMzT3M1RDZXVXhGYkpJSjRBOXh0Tk9OZjFy?=
 =?utf-8?B?cjRLQWJMN0ljZmJUZFI0Z2RhMEVWeSs4NWdOMmpEL2loVEhwR25jc1ZJV2NC?=
 =?utf-8?B?enNCK3g5cUZpOWJMMGFpOHJqN0NpYkI0V0l1WXdncWZGVmx2ZS9HRVVrK2dP?=
 =?utf-8?B?R3VFNlUzVDdJSXRUY0JOd3o4dWVUWnNsQnE3aHIvbE1IcGhOQWtaOFlUSEVz?=
 =?utf-8?B?aE1QQ090bnNCSFRGVjgrS3B0R3Y0cklwVXZxSUtENVp2RXF4SDhaUGRpMjZL?=
 =?utf-8?B?cE41R2ZNbnFxQXVVYjZuZlZ1Ym1qeWVYMFo2Z0JUSUlGcWFwQnVCRjNpUExH?=
 =?utf-8?B?N1lJUDYyTERDWlNqYUVKemR2SThYZDJFN28yTmJrMk8vRmNjNVBORytDaExt?=
 =?utf-8?B?RDljMkZxNDl1bTI3WlhWQlJOYjU1NUl2KzhENklQSmdqaVMvanFrazBWT3pS?=
 =?utf-8?B?eUxodkNZRDQvbDFpK1dGMEt3N2VtbC96TFRaSmxvcFA5RTdtU0drWTkrRDdU?=
 =?utf-8?B?WHRtMWJtVFFXQnZwdjNtRWE5MTFSY0g2aksrcC85TENORFg3UU9IRDIzKy9S?=
 =?utf-8?Q?ke99WgURa+CbPWFc=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 722dabc2-cd5b-4dd1-1b99-08de649b8ab0
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2026 09:47:14.2468 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kzPmymD1lPDz47smo2vMAxWAZ+VaKFobVKvH8/BLT+CHQU7qo+4nfpvgZ51x/ddra2Di8BFw9UsUFJjN1Px2Bi8alnSiOXhiMSnU8G6EiFU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6768
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770284845; x=1801820845;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7lBeiP1yExZpYU2E8yE0BeV8siQjRm1qmLSXy7s8/mM=;
 b=Gk58A5E6tRcc1uxc+W5z+SZ0keNiePQcL1wvlkqDtToefVfAQ/dE6i+x
 rOUbu0ybeeDPhHgprswDzAY736njvhoKhKqQFN4zJHZzqxvRlLMNPGo5+
 0kDRz0dUHXZPCGqqeAHngtESiTw0zbgchgaKf+SIeBOOLi32xG4rLHzB+
 rsh0X/Pg8u8ZdLihYvvuwPIN3zvdLDPdmz4mikTuF/WFNiy7j2l5tCNju
 wnwBI7H5mRGHBrl+WML+agqA3A2ntmpP6rYN29sw4MyZSDcgSoMAG/sji
 xK+Db29xA2XHAD6uC6OKCAmahyC/U7Qpj2XbS8IORWRxK51LBTuCqYuyS
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Gk58A5E6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] igb: Retrieve Tx
 timestamp directly from interrupt for i210
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
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:kurt@linutronix.de,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:pmenzel@molgen.mpg.de,m:vadim.fedorenko@linux.dev,m:vinicius.gomes@intel.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:bigeasy@linutronix.de,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[molgen.mpg.de,linux.dev,intel.com,vger.kernel.org,gmail.com,lunn.ch,google.com,lists.osuosl.org,kernel.org,redhat.com,davemloft.net,linutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:email,mpg.de:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:email,osuosl.org:email,osuosl.org:dkim,davemloft.net:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: A6F59F102D
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgS3Vy
dCBLYW56ZW5iYWNoDQo+IFNlbnQ6IFRodXJzZGF5LCBGZWJydWFyeSA1LCAyMDI2IDg6NTUgQU0N
Cj4gVG86IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IEtp
dHN6ZWwsDQo+IFByemVteXNsYXcgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+DQo+IENj
OiBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xnZW4ubXBnLmRlPjsgVmFkaW0gRmVkb3JlbmtvDQo+
IDx2YWRpbS5mZWRvcmVua29AbGludXguZGV2PjsgR29tZXMsIFZpbmljaXVzDQo+IDx2aW5pY2l1
cy5nb21lc0BpbnRlbC5jb20+OyBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBSaWNoYXJkIENvY2hy
YW4NCj4gPHJpY2hhcmRjb2NocmFuQGdtYWlsLmNvbT47IEt1cnQgS2FuemVuYmFjaCA8a3VydEBs
aW51dHJvbml4LmRlPjsNCj4gbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgQW5kcmV3IEx1
bm4gPGFuZHJldytuZXRkZXZAbHVubi5jaD47DQo+IEVyaWMgRHVtYXpldCA8ZWR1bWF6ZXRAZ29v
Z2xlLmNvbT47IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOw0KPiBLZWxsZXIsIEph
Y29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT47IEpha3ViIEtpY2luc2tpDQo+IDxrdWJh
QGtlcm5lbC5vcmc+OyBQYW9sbyBBYmVuaSA8cGFiZW5pQHJlZGhhdC5jb20+OyBEYXZpZCBTLiBN
aWxsZXINCj4gPGRhdmVtQGRhdmVtbG9mdC5uZXQ+OyBTZWJhc3RpYW4gQW5kcnplaiBTaWV3aW9y
DQo+IDxiaWdlYXN5QGxpbnV0cm9uaXguZGU+DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5d
IFtQQVRDSCBpd2wtbmV4dCB2M10gaWdiOiBSZXRyaWV2ZSBUeA0KPiB0aW1lc3RhbXAgZGlyZWN0
bHkgZnJvbSBpbnRlcnJ1cHQgZm9yIGkyMTANCj4gDQo+IFJldHJpZXZlIFR4IHRpbWVzdGFtcCBk
aXJlY3RseSBmcm9tIGludGVycnVwdCBoYW5kbGVyIGZvciBpMjEwLg0KPiANCj4gVGhlIGN1cnJl
bnQgaW1wbGVtZW50YXRpb24gdXNlcyBzY2hlZHVsZV93b3JrKCkgd2hpY2ggaXMgZXhlY3V0ZWQg
YnkNCj4gdGhlIHN5c3RlbSB3b3JrIHF1ZXVlIHRvIHJldHJpZXZlIFR4IHRpbWVzdGFtcHMuIFRo
aXMgaW5jcmVhc2VzDQo+IGxhdGVuY3kgYW5kIGNhbiBsZWFkIHRvIHRpbWVvdXRzIGluIGNhc2Ug
b2YgaGVhdnkgc3lzdGVtIGxvYWQuIGkyMTAgaXMNCj4gb2Z0ZW4gdXNlZCBpbiBpbmR1c3RyaWFs
IHN5c3RlbXMsIHdoZXJlIHRpbWVzdGFtcCB0aW1lb3V0cyBjYW4gYmUNCj4gZmF0YWwuDQo+IA0K
PiBUaGVyZWZvcmUsIGZldGNoIHRoZSB0aW1lc3RhbXAgZGlyZWN0bHkgZnJvbSB0aGUgaW50ZXJy
dXB0IGhhbmRsZXIuDQo+IA0KPiBUaGUgd29yayBxdWV1ZSBjb2RlIHN0YXlzIGZvciBhbGwgb3Ro
ZXIgTklDcyBzdXBwb3J0ZWQgYnkgaWdiLg0KPiANCj4gVGVzdGVkIG9uIEludGVsIGkyMTAgYW5k
IGkzNTAuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBLdXJ0IEthbnplbmJhY2ggPGt1cnRAbGludXRy
b25peC5kZT4NCj4gLS0tDQo+IENoYW5nZXMgaW4gdjM6DQo+IC0gU3dpdGNoIGJhY2sgdG8gSVJR
LCBidXQgZm9yIGkyMTAgb25seQ0KPiAtIEtlZXAga3dvcmtlciBmb3IgYWxsIG90aGVyIE5JQ3Mg
bGlrZSBpMzUwIChNaXJvc2xhdikNCj4gLSBMaW5rIHRvIHYyOiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9yLzIwMjUwODIyLWlnYl9pcnFfdHMtdjItMS0NCj4gMWFjMzcwNzhhN2E0QGxpbnV0cm9u
aXguZGUNCj4gDQo+IENoYW5nZXMgaW4gdjI6DQo+IC0gU3dpdGNoIGZyb20gSVJRIHRvIFBUUCBh
dXggd29ya2VyIGR1ZSB0byBOVFAgcGVyZm9ybWFuY2UgcmVncmVzc2lvbg0KPiAoTWlyb3NsYXYp
DQo+IC0gTGluayB0byB2MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI1MDgxNS1pZ2Jf
aXJxX3RzLXYxLTEtDQo+IDhjNmZjMDM1MzQyMkBsaW51dHJvbml4LmRlDQo+IC0tLQ0KPiAgZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYi5oICAgICAgfCAgMSArDQo+ICBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYyB8ICA1ICsrKystDQo+IGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfcHRwLmMgIHwgMjIgKysrKysrKysrKysrKysrKysr
KysrKw0KPiAgMyBmaWxlcyBjaGFuZ2VkLCAyNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYi5o
DQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYi5oDQo+IGluZGV4IDBmZmYx
ZGY4MWI3Yi4uMWRlMjk2NzA3ODRlIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZ2IvaWdiLmgNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdi
L2lnYi5oDQo+IEBAIC03NzYsNiArNzc2LDcgQEAgaW50IGlnYl9wdHBfaHd0c3RhbXBfZ2V0KHN0
cnVjdCBuZXRfZGV2aWNlDQo+ICpuZXRkZXYsICBpbnQgaWdiX3B0cF9od3RzdGFtcF9zZXQoc3Ry
dWN0IG5ldF9kZXZpY2UgKm5ldGRldiwNCj4gIAkJCSBzdHJ1Y3Qga2VybmVsX2h3dHN0YW1wX2Nv
bmZpZyAqY29uZmlnLA0KPiAgCQkJIHN0cnVjdCBuZXRsaW5rX2V4dF9hY2sgKmV4dGFjayk7DQo+
ICt2b2lkIGlnYl9wdHBfdHhfdHN0YW1wX2V2ZW50KHN0cnVjdCBpZ2JfYWRhcHRlciAqYWRhcHRl
cik7DQo+ICB2b2lkIGlnYl9zZXRfZmxhZ19xdWV1ZV9wYWlycyhzdHJ1Y3QgaWdiX2FkYXB0ZXIg
KiwgY29uc3QgdTMyKTsNCj4gdW5zaWduZWQgaW50IGlnYl9nZXRfbWF4X3Jzc19xdWV1ZXMoc3Ry
dWN0IGlnYl9hZGFwdGVyICopOyAgI2lmZGVmDQo+IENPTkZJR19JR0JfSFdNT04gZGlmZiAtLWdp
dA0KPiBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5jDQo+IGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9tYWluLmMNCj4gaW5kZXggZGJlYTM3MjY5
ZDJjLi5kMGQ5MjQ1ZTZkNzIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2lnYi9pZ2JfbWFpbi5jDQo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ln
Yi9pZ2JfbWFpbi5jDQo+IEBAIC03MDc4LDcgKzcwNzgsMTAgQEAgc3RhdGljIHZvaWQgaWdiX3Rz
eW5jX2ludGVycnVwdChzdHJ1Y3QNCj4gaWdiX2FkYXB0ZXIgKmFkYXB0ZXIpDQo+IA0KPiAgCWlm
ICh0c2ljciAmIEUxMDAwX1RTSUNSX1RYVFMpIHsNCj4gIAkJLyogcmV0cmlldmUgaGFyZHdhcmUg
dGltZXN0YW1wICovDQo+IC0JCXNjaGVkdWxlX3dvcmsoJmFkYXB0ZXItPnB0cF90eF93b3JrKTsN
Cj4gKwkJaWYgKGh3LT5tYWMudHlwZSA9PSBlMTAwMF9pMjEwKQ0KPiArCQkJaWdiX3B0cF90eF90
c3RhbXBfZXZlbnQoYWRhcHRlcik7IDwtQ2FsbGVkIGZyb20gSVJRIQ0KDQo+ICsJCWVsc2UNCj4g
KwkJCXNjaGVkdWxlX3dvcmsoJmFkYXB0ZXItPnB0cF90eF93b3JrKTsNCj4gIAl9DQo+IA0KPiAg
CWlmICh0c2ljciAmIFRTSU5UUl9UVDApDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pZ2IvaWdiX3B0cC5jDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWdiL2lnYl9wdHAuYw0KPiBpbmRleCBiZDg1ZDAyZWNhZGQuLjhjOGYyYjg2MTVmNyAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9wdHAuYw0KPiArKysg
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX3B0cC5jDQo+IEBAIC03OTYsNiAr
Nzk2LDI4IEBAIHN0YXRpYyBpbnQgaWdiX3B0cF92ZXJpZnlfcGluKHN0cnVjdA0KPiBwdHBfY2xv
Y2tfaW5mbyAqcHRwLCB1bnNpZ25lZCBpbnQgcGluLA0KPiAgCXJldHVybiAwOw0KPiAgfQ0KPiAN
Cj4gKy8qKg0KPiArICogaWdiX3B0cF90eF90c3RhbXBfZXZlbnQNCj4gKyAqIEBhZGFwdGVyOiBw
b2ludGVyIHRvIGlnYiBhZGFwdGVyDQo+ICsgKg0KPiArICogVGhpcyBmdW5jdGlvbiBjaGVja3Mg
dGhlIFRTWU5DVFhDVEwgdmFsaWQgYml0IGFuZCBzdG9yZXMgdGhlIFR4DQo+ICtoYXJkd2FyZQ0K
PiArICogdGltZXN0YW1wIGF0IHRoZSBjdXJyZW50IHNrYi4NCj4gKyAqKi8NCj4gK3ZvaWQgaWdi
X3B0cF90eF90c3RhbXBfZXZlbnQoc3RydWN0IGlnYl9hZGFwdGVyICphZGFwdGVyKSB7DQo+ICsJ
c3RydWN0IGUxMDAwX2h3ICpodyA9ICZhZGFwdGVyLT5odzsNCj4gKwl1MzIgdHN5bmN0eGN0bDsN
Cj4gKw0KPiArCWlmICghYWRhcHRlci0+cHRwX3R4X3NrYikNCj4gKwkJcmV0dXJuOw0KPiArDQo+
ICsJdHN5bmN0eGN0bCA9IHJkMzIoRTEwMDBfVFNZTkNUWENUTCk7DQo+ICsJaWYgKFdBUk5fT05f
T05DRSghKHRzeW5jdHhjdGwgJiBFMTAwMF9UU1lOQ1RYQ1RMX1ZBTElEKSkpDQo+ICsJCXJldHVy
bjsNCj4gKw0KPiArCWlnYl9wdHBfdHhfaHd0c3RhbXAoYWRhcHRlcik7IDwtQ2FsbHMgZXhpc3Rp
bmcgZnVuY3Rpb24gZGVzaWduZWQgZm9yIHdvcmsgcXVldWUhDQoNCnNrYl90c3RhbXBfdHgoKSBj
YW4gc2xlZXANClNtZWxscyBsaWtlIHNsZWVwLWluLWF0b21pYyBpc24ndCBpdD8NCg0KPiArfQ0K
PiArDQo+ICAvKioNCj4gICAqIGlnYl9wdHBfdHhfd29yaw0KPiAgICogQHdvcms6IHBvaW50ZXIg
dG8gd29yayBzdHJ1Y3QNCj4gDQo+IC0tLQ0KPiBiYXNlLWNvbW1pdDogZTA3ZDBkMzA5Mzk5OTBk
YTM3NzY3MmVmNDljYTA5NzYzYjRmYmM3OQ0KPiBjaGFuZ2UtaWQ6IDIwMjUwODEzLWlnYl9pcnFf
dHMtMWFhNzdjYzdiNGNiDQo+IA0KPiBCZXN0IHJlZ2FyZHMsDQo+IC0tDQo+IEt1cnQgS2FuemVu
YmFjaCA8a3VydEBsaW51dHJvbml4LmRlPg0KDQo=
