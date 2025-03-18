Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EAD6A67A74
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Mar 2025 18:10:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC6F240C78;
	Tue, 18 Mar 2025 17:10:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dHEFJ88oU_at; Tue, 18 Mar 2025 17:10:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C8D5140C48
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742317856;
	bh=fW9mK+n3S0qqYyu7JTrpTHPMzOKfr5YsLo2K0Cg6BzY=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AZgvwC1W0/BHS2s/75PJkJELIeLTM0tJTubt+Wpb/VTGjoUhq38VCytTS9/ulcsns
	 IIjwSlFqdIkmj4UerVMhMQqjHtmRpd963McjVGUrnVFzujfZ1PjUDrzTBLYUmgQLff
	 +cuAkF07kxYEFPS1JMeK+SbQKHe4sXjGqGKqYQb/OMj+d9nRJYrY4GpDU/R9AJwqf8
	 hJmRdCVPuwhBgF7l7nYp6MBbHzGTkfBDGj1xxreMeoDIhmfRLUKnTbGYi5HwQFDnIf
	 zjnAi2nwji15SoyB1Ua58NM5irLGzVK1l1KNY0vW0o1Bxk4+eUWKu740LsdNhT7FIw
	 CjrPafevnlqYw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C8D5140C48;
	Tue, 18 Mar 2025 17:10:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 39C56D5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 17:10:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3EAB040BFA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 17:10:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TMP6KkjoA0hE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Mar 2025 17:10:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3D67340BFD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D67340BFD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3D67340BFD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 17:10:52 +0000 (UTC)
X-CSE-ConnectionGUID: 4sfa22w3TkeHfKL9XIR8Iw==
X-CSE-MsgGUID: ARTrCcq+Qnu+gHAe2E3Hfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11377"; a="54854632"
X-IronPort-AV: E=Sophos;i="6.14,257,1736841600"; d="scan'208";a="54854632"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 10:10:51 -0700
X-CSE-ConnectionGUID: pVqyuoxDTDmIE4gAX/CRqA==
X-CSE-MsgGUID: J21gLsnYSL2uLInA8w8y8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,257,1736841600"; d="scan'208";a="127519113"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Mar 2025 10:10:51 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 18 Mar 2025 10:10:50 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 18 Mar 2025 10:10:50 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 18 Mar 2025 10:10:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j9wDHawtUHwwgUwAAi85B/reB5FeF/f3kraf/pKsmG3KDhx+A6BbGzxnN9KKx9g7lc1t24FHZ8Ayxn+NAj0gNZ1BaL9w9TRoGd5sEoRcEANBJUwuoi3MXG61Hw8DX1BZA8icqkWjSXLhbW56kLL+3Wz//N7aeKQ3QjwrMUfmrGX9VX48xZsz6VVF+0x0MVdiO67sb0Gr58j23zohBpPSK3v1JDkDhJxz6nch6xror9oSiRPaViDVADNxBR82o9BATfYdeWqVDeGImR1DheBB9uYXJPpHMDCmjVqTPfVMXUBp5Uv9MabqhXNPSGp5/teRRbiM+wNVpzxtnLz1WuqD0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fW9mK+n3S0qqYyu7JTrpTHPMzOKfr5YsLo2K0Cg6BzY=;
 b=B33imptq5VbpejP+3/yGQaYlaNwQRSZPY+h9NETU4ovKOSFxxYDCFspZ+8X8CVheLiFUjELdWnByvzFj2jyUF7dhHaaTIBW00qSwesoE4XQsD5zgA9Rgeu7XGjDzoDirSCvgNgg4qro6Ps58GElvUUSYHScoTfhF01z4SCGLc4+ObcG/X1K7PiGpSuXRFrmp2QXmxrFAVzIzGjbhq8wFSfM6MVFI/FL5cbTfYUcv9FqSEPk0XGBIs/q0sZyXWLmb5p1JPZ+0hzfnbKA6pvIcVCeaycPTC7T2foaBuazKubjM6RmMxA3ByTT7QAypcp4Ss1UKv1StH012OAkRlGldPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by CH3PR11MB7251.namprd11.prod.outlook.com (2603:10b6:610:147::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.33; Tue, 18 Mar
 2025 17:10:46 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.8534.031; Tue, 18 Mar 2025
 17:10:45 +0000
Message-ID: <a4392c6a-c054-45f2-866f-f2081e55c149@intel.com>
Date: Tue, 18 Mar 2025 18:10:39 +0100
User-Agent: Mozilla Thunderbird
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: Eric Dumazet <edumazet@google.com>
CC: <intel-wired-lan@lists.osuosl.org>, Michal Kubiak
 <michal.kubiak@intel.com>, Maciej Fijalkowski <maciej.fijalkowski@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, "Daniel
 Borkmann" <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Simon Horman <horms@kernel.org>,
 <bpf@vger.kernel.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20250305162132.1106080-1-aleksander.lobakin@intel.com>
 <20250305162132.1106080-8-aleksander.lobakin@intel.com>
 <CANn89iKyyayTrepHuPbnkhVpu3trkRohdKxeT8RVefP95wognA@mail.gmail.com>
 <5c2dd43f-2890-44db-a5ab-68a86dd2d89a@intel.com>
Content-Language: en-US
In-Reply-To: <5c2dd43f-2890-44db-a5ab-68a86dd2d89a@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MI1P293CA0016.ITAP293.PROD.OUTLOOK.COM (2603:10a6:290:3::8)
 To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|CH3PR11MB7251:EE_
X-MS-Office365-Filtering-Correlation-Id: 96ba7c12-0aef-4fb7-8ec5-08dd663fd259
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SU45bi9QUWRWU3l6dVljMlRRRGxFZ3N5cWdIMHNBRUtKallBMS9sQlV2R3pJ?=
 =?utf-8?B?UU54UE5LY3pRYlIvek5GS01Mei9OMXd5ZzNGV2FXTXpmRklBZlRUOE1JdmFP?=
 =?utf-8?B?OU1QbTN5T2tKVkZOTmRKYmszZzVkV2ttTHlJUTZJdFJDWTRsb3BqRGdjWXdE?=
 =?utf-8?B?ZUhhN3gzMk1Pb3NwMk8yZVd1UHh1aWk2ZFJWZis4QmVZUk5uSHBndGVFUndO?=
 =?utf-8?B?SDF2OXN5VU9aaFJuVDlkKzVydThZV3VQM3Fsc3p3Z0NDNTh1eTZiTDhSOFlo?=
 =?utf-8?B?NkI5d1k4S1NrNGE0dkJ4dzFQWmZaU0Q0Vi90OVFnR2FYR0tUNmc1TFE5eXRQ?=
 =?utf-8?B?T0drdnBtK0tBZFdKL2VKT0djaG1IeURvbzg2bjY1S21HVldFcU8rc2dQNFk0?=
 =?utf-8?B?MERSWVQ4ZEVOc1Y1V2pPRy9Hb1hhcUo5WGdXeXlYRUNVTkx0UGgyYTlZeE1N?=
 =?utf-8?B?ODROZUJwWkpYRW1ITXkyQnpzcDdMUTJvVWxJTHNsWDUzZTBZb0d1UWNIUGg5?=
 =?utf-8?B?WnIrVWdISElJQ0lkU1VPOEJvRkpYZVAwS2ZmaDJoY0ZPaVpDbzBuek5aSk1a?=
 =?utf-8?B?WDFFUXMrTDFLM1Q0VFpnV09uN2xpY3dKRytvL1pqdENSTE0wczZvOStDMzdF?=
 =?utf-8?B?NFd4NHJlZVcwR2d4ZzE5YVVMM2s3Ym9CNHVNT0xQbWhNaGtnSWtNY053a0ZE?=
 =?utf-8?B?R1lIajVpcWwxS3RqWTAwNm42czBPS1NDaXA3QkRwbG5oMzdWdjNYeFVCd1lw?=
 =?utf-8?B?WVdmMTZmUWM2d1Rlc3IvUzBIOW5MTGZlaC9iWlJjcWtZRXpwVm1uVG5UQk5R?=
 =?utf-8?B?QXZCM0VIbWJkNmRWck5CblNlcEpuQ3RiSG5CSnNKZmNnL1JUWFdOcWJjeldu?=
 =?utf-8?B?ZE5PZjFIbGQvUE5kYm9BQXNmbW9DNkYrQ0drL242UVN3SEU2WGpZbkg1SU9L?=
 =?utf-8?B?dnpyMDBvdWpvRy9pMGFKV1IzZmVBVzJEVURxaXlmMStTYXVCVjBpSkNjalp1?=
 =?utf-8?B?M24wU2lXWXBaQVB0RXBMb21xOFpWWm1tdGZqWDJ0RVBxT01RR1dwSzdyK2Zm?=
 =?utf-8?B?YmlsaktHU2xXQ3p0c2RIb0ZvS3R2UFA0blB4MThrVFRVVm1MYTR4M3gxYm5s?=
 =?utf-8?B?MTR6c0NRcGkyRXdjL3o1cDNDN25nbGgzYzFjcHFrTE8zMHlrem9QQVdmNlBL?=
 =?utf-8?B?aGw1TVBneTcrSkxtS0ZVdCtGbmxhampwT0R6Mlc1VE43NVVFSU5jU1d4YVhz?=
 =?utf-8?B?YjdJdFVrQ0VGQ21jeFM0OXZBUU5ZL0FwWk55ckNsYVIxV1JrdjRhK1poNThU?=
 =?utf-8?B?M0RpQ1ZXem14OEdzMFFuU25CYXFKZm9YZmduL1JUd0hIRUVDSEN3bERLdDF3?=
 =?utf-8?B?Y3RpWDZoNzhSbkVnS0wxeU9SZWtMSTcvM1gxTnJLNmI0RitBbS9IV1JIZE40?=
 =?utf-8?B?WldLSG5ybUMwUFpHdzM0WnkxWkdRM2d6RWpwRVFrZWNHdFp0N2JVTjZxZjc4?=
 =?utf-8?B?OVBNUWhHTXE2dTc2VFBaV1ZicUZ6WjlRVThKenlsb1pYN25WUzA4NDBtS3Zr?=
 =?utf-8?B?ZkFRL3l6KzdIWDg1WkhYbjJNWGJBOStyRTFMam1NZHhQcnlPYTdHamlyTTYz?=
 =?utf-8?B?cDJNYzkxSGd2MXV0NlNhK2QrM2ZzN3VybEROKzIrTlBuWnVFL25RWXB0dkNv?=
 =?utf-8?B?cWdsaGhieWlBYmM3VXROai85bFl0ODlkS0hNZEFlRTJuRzJ3VjlITnFvQ21S?=
 =?utf-8?B?UDhxRms5WjVtV1V2akhwRzF5ek5sSGpGMGNPTDUyME1SVHBDVnJnSktHbVgz?=
 =?utf-8?B?Zk01UTg2dTFpejJUaE1NcUNnelUrQ1dlMndqSlRqUGdRbzRuQjVSdUlWc2Jo?=
 =?utf-8?Q?5LSbEQ5YqjA9c?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eDBvYVlRUTRKaW5ydGQ0TERneERJVGhrTFltVzNmQnNJUFRRQS9BUGE5bUhP?=
 =?utf-8?B?QnpabzFGWUlJVGNJL3N0b3lPTWFBaVl3Z1FLRFFEdmZDYWg2VzUxQitHWkRD?=
 =?utf-8?B?SHM2SERzM2lxOUppNHA3SEh2ZDRlS1NZb280eXV3WVZ5NzlLVTZDMjBqV3Vt?=
 =?utf-8?B?aFBvYTVmOFoxNms2RXV1UUErMU1ZbGtPZDBTejM0VEdQZUhndEJNU1Y4MWRF?=
 =?utf-8?B?a2E5a0R1UGhKZDFEdU81SGRqdFBpcHc0VTZzaVFESmxubU5BY1ZzNU1OUk5J?=
 =?utf-8?B?KzVCT2tTZFpmazhZbWNiV2VLSUQvTUZSNjg0RkdJbVZZRUpFZnRoNkxOUGNo?=
 =?utf-8?B?WHltT05BZTNiQmRrL3FzcFRQVUo2WDFwSU43UnQwMzdWVXI1emQwUk9hU1ha?=
 =?utf-8?B?YUJZYVhvM0xFNGJvcEFRd3V2R3ZVZEpHQkJJVWVyYTRJMHdNRSt0U3grUzMx?=
 =?utf-8?B?SHI4QzZTdzRoZ2VpeERzQnpMRkVuMGpwMXZHNDJYK3liSXJ3TVFETVQ0R25k?=
 =?utf-8?B?enBMWkdvWGN2TXd6NnJ3ajlvTDNHejBUc0t3ZnB3SlhrTXpsVWg3Q2t4Ti9n?=
 =?utf-8?B?ak9SVGo1YnF5RVhUWC9iV081LzZsbytObzFJUHBsSHNFbVNDeFpnV2RiZkFn?=
 =?utf-8?B?bzBSRktuUzJGczJ0OEFMWGZPUU9QQnF1MkVpTlNZRXk2NUtzajMzMXIwL0Qv?=
 =?utf-8?B?VUxQMU53UzdqdGF1emdBNHhaaE85TEY4YjNtN0VlUnpyZEpZZWF4c1F6K25q?=
 =?utf-8?B?STQ4UVlIeXhTSk9KRXJYakdoM2VPcjg2YU1QUjc4UVlsaFpUQzMzTnhFZlFR?=
 =?utf-8?B?THRqdFQzYkJOUlQvRmZxMTdxQ1JWUlpKRm1xL1RoKzgwbUd5UU1zS0ZSUFBO?=
 =?utf-8?B?Qjk0ZHExdE9ma0F3b0VycmxIZDQ1NERnSmd6eVRlbCt0UmhadlIzVmdlSk5R?=
 =?utf-8?B?MFJVZ1NSb2VWdENBWEZsSFB5MWxmNE1qc2ROd3JiZWtSMExZSHBGVmREaDhZ?=
 =?utf-8?B?RWZnOXB0Z3JyVXJ6cVZpejE0aCttODVNY0dqd0lQYk96a09DeHpFeWJQNCtk?=
 =?utf-8?B?czdUNVExTFArUXhiMjhhWlFKQnl2SjdwVnNHUUM4blBaYXJwRTdjRmlSNkNl?=
 =?utf-8?B?NFlLRkZtQjVUU2dXWnNPbHRUeGxQUjJuTkdQTGt3aGZ1a3pvcVlMbEgzN3ZB?=
 =?utf-8?B?dEZwSmhSclNoMkNXRWpwUXorYTRJV2JLK3RoSjl0WHpvbFdsTXJMbVBHNWhw?=
 =?utf-8?B?bWFrOHppTkFhMjBaWWFWS0ZGMmx4YW1jNXZibTVyUCtYbDJFT2VKd2s1NmJ6?=
 =?utf-8?B?L1RzSGxPeVFNYlU1QWlVUXM1OE5WODRzMHBsNVc5NWJLczJaRFl0dG5uTFcr?=
 =?utf-8?B?Mnh5RjNEQ0hMTXhwVFlCenZiOW0wc2dNV2FSSU9sY1VOYU5vMldLRFMvRzJv?=
 =?utf-8?B?aHN6RHVMUjVackhoZlMxR21NMjFLSFlOVWg3ZUNMUWVHQnAvYVRwR2RmTUlz?=
 =?utf-8?B?Z3lWREZvcVloUkVqVXZwZVJUczMyTTQ2YWM1UXNTNVhuUEJFWHhqV0F2OUlS?=
 =?utf-8?B?M3hZUDVkRmUzYmt5am82anZ1REg2UlBkRTVUMms4RTlvdWNIaldkeVlGV0Fs?=
 =?utf-8?B?ZDhjam1yb1BZcEpKZGV1aDdKQVJTNEpBZGcvbjZCV1ZOMHRueGcrcmZkd0N3?=
 =?utf-8?B?QVVEcmY3OXdRSG1NVHREcmtMWnVqODVkZXhLTlZha0Q4QitYYVZFTDlVaWNZ?=
 =?utf-8?B?QUhTbDJMSlYxeXl0QVpxQUN3bzhFT1FFa2twL2ZTZm9VLzFCZE1WVjh2KzVk?=
 =?utf-8?B?R3RwbW9FMTA2Y1c4WmxJZUJEbG1QSmd2VUhmTTRCUXVxQmRqLzJCY3pzYlFG?=
 =?utf-8?B?OHA4d0Q5NFhidStSVUdRK25uZWRsL0hvQ1RXWE9VbFQzU1huMGhaVnpYYis4?=
 =?utf-8?B?U2tvckFHeDV5TlMzVllMN0FEdmxpTE9CZnFuRVVXVFdaYTZ0N24yRm9ZeWxJ?=
 =?utf-8?B?SkQwRkovQjJ6aFcwd3hnQzRTNEpmV0Y5VjFvV0o1UnQ5aGdSRmpkNzFTVmZF?=
 =?utf-8?B?SEFvMDdGWVM4QUJITTZxdEdCbDBQZGlUTFpxWUlSNlR6cVEyTWtIQW1nNnBE?=
 =?utf-8?B?WE8vbTF1VUdSZE9Zazh2LzBxQkJydTU3djNkRldDV3NlVXNjNWQzcjhhZGc3?=
 =?utf-8?B?NGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 96ba7c12-0aef-4fb7-8ec5-08dd663fd259
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2025 17:10:45.8499 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Kc2AGHlXrIpXm38xS3uI5PEHkvAwBVjhrHASf4dfCX9bdZOPzPo6lmoU7LpPo5LmcQrVBdHBqxSIThcnip+j/OoFcBjqtym3HHbt7dPn04w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7251
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742317852; x=1773853852;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tzwhIRnfiiQr8i9zjIIVUfnGXVGIbCP8UwoNTgXNPng=;
 b=UjthLExQxQFYJsLLXprpSANnkx3HUzo0m4j4uQhHk0qPSjnCV17sbkJk
 eFN4+Cug+TUu7VCa127um6r/33fuDowKliYm6KVQgsMNIUbQ+P7Skq+qd
 UgC2I9J8fJ4PxnLdp5cYB34qoPDFyUV5T1QSyN1dG3LjTbEr8XhbE+k6o
 VX/oQE+hYyQDf1Hx+vy2wNpmMgyVflxM58I0GGd6tkq4D0oxuwt85PKQm
 in3cvYL8i6ibW9IHmTLseGHnU9IEqE92MNc6XUdpJvsv8K3krdFw7glB8
 1mK1aHt7cxuQi3UKzEkjI/tJaR7wC9pMP++jPUPJRVVsRgtBlAHJOXkQO
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UjthLExQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 07/16] idpf: link NAPIs to
 queues
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

From: Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Wed, 12 Mar 2025 18:16:11 +0100

> From: Eric Dumazet <edumazet@google.com>
> Date: Fri, 7 Mar 2025 11:28:36 +0100
> 
>> On Wed, Mar 5, 2025 at 5:22 PM Alexander Lobakin
>> <aleksander.lobakin@intel.com> wrote:
>>>
>>> Add the missing linking of NAPIs to netdev queues when enabling
>>> interrupt vectors in order to support NAPI configuration and
>>> interfaces requiring get_rx_queue()->napi to be set (like XSk
>>> busy polling).
>>>
>>> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
>>> ---
>>>  drivers/net/ethernet/intel/idpf/idpf_txrx.c | 30 +++++++++++++++++++++
>>>  1 file changed, 30 insertions(+)
>>>
>>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
>>> index 2f221c0abad8..a3f6e8cff7a0 100644
>>> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
>>> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
>>> @@ -3560,8 +3560,11 @@ void idpf_vport_intr_rel(struct idpf_vport *vport)
>>>  static void idpf_vport_intr_rel_irq(struct idpf_vport *vport)
>>>  {
>>>         struct idpf_adapter *adapter = vport->adapter;
>>> +       bool unlock;
>>>         int vector;
>>>
>>> +       unlock = rtnl_trylock();
>>
>> This is probably not what you want here ?
>>
>> If another thread is holding RTNL, then rtnl_ttrylock() will not add
>> any protection.
> 
> Yep I know. trylock() is because this function can be called in two
> scenarios:
> 
> 1) .ndo_close(), when RTNL is already locked;
> 2) "soft reset" aka "stop the traffic, reallocate the queues, start the
>    traffic", when RTNL is not taken.
> 
> The second one spits a WARN without the RTNL being locked. So this
> trylock() will do nothing for the first scenario and will take the lock
> for the second one.
> 
> If that is not correct, let me know, I'll do it a different way (maybe
> it's better to unconditionally take the lock on the callsite for the
> second case?).

Ping. What should I do, lock RTNL on the callsite or proceed with trylock?

Thanks,
Olek
