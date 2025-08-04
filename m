Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 59CDCB1AA52
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Aug 2025 23:18:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 76B97412FF;
	Mon,  4 Aug 2025 21:18:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VnSMhhKxgNYR; Mon,  4 Aug 2025 21:18:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C056641286
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754342303;
	bh=alS0OOEu2l+iLi5QoU7FAt1WbX6Pa8/KbiGF21Z2ji8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UBay8Qo/ti8aunG8iKVMrTtjTHkwKk2oekilsv9WYH3+3oSdbussmiCD0i7c61z5l
	 SYgGtq+BaTX58/JohHqqjTRnO2g7vhy779VQTzdEcgyaUd1u41lreMJZQ19NWgzmB9
	 Laa8WfOuDs5uMuYaGilXfRl6gHkZpFztUuIbBEiOyM8Lf7fIhUX3TDVmVlMEb7fDuz
	 NABJ+z2WiPj72WR64pAGxTw82q/C2pYEurQYwzJtWUnrP5OlFIGzfclKSMZmvybVrU
	 rYBrt0HUdjQQumP9x4ElSeYxuyH8Tk5PRknFf2d4d3EzpwA+8NpRdIqchYfAmvVxSy
	 qG04Up+DofSCA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C056641286;
	Mon,  4 Aug 2025 21:18:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 836601A2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Aug 2025 21:18:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 692C8827FD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Aug 2025 21:18:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FNydMMgKbRHv for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Aug 2025 21:18:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3416F827E0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3416F827E0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3416F827E0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Aug 2025 21:18:21 +0000 (UTC)
X-CSE-ConnectionGUID: rOh7K92aTOus7orJ9lsbig==
X-CSE-MsgGUID: EU0ez1xIQhaZANi0UkbUQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="60429661"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="60429661"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 14:18:21 -0700
X-CSE-ConnectionGUID: KwkSHDNfQN6/DBoGr0OlOA==
X-CSE-MsgGUID: EHC2IzySR62yJkGOb/UiRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="163818902"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 14:18:20 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 4 Aug 2025 14:18:20 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 4 Aug 2025 14:18:19 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.68)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 4 Aug 2025 14:18:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lGLHBI5iFvj+7kQtRladh/mkrh7sIMC44LRmISHi+g4jD0hR6tr5eJjqWluGpsUMX76viUjv36y+/TKUIlJsPeFDXgVXVukl73gbgAPKRl3tWe8G/XviEgb215/vFIMX1PQRYYiplhTaQG7YTukkTetDHsbizYxN7MU/UX+EPbbpju1ZaWVX6LIsCM3P16qvQ337Xz6OBPnAJkU1BoZRn60JIMae/aYpsfoPzvtQ8CgZjo64qhIoOa2mV7Wbgxy+uDC4bQ8QiDSPYrabHuFPibiP1x9BjbQ5+tEgGGd9nBWhLsWUOb2ncTpbQHU0PjC03sdQJk+tOE/5qnKvljyXAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=alS0OOEu2l+iLi5QoU7FAt1WbX6Pa8/KbiGF21Z2ji8=;
 b=heODnIyE2x6rSE1+v8Plx2UW5W98z7mAOYHu1OMG0BmO9+yJ5NjPdnWG7omFNUkucgb9L+h+PrD9s3tutWYEkpzOGhIuApthoqkSNohK1VjLu4WkCSJPCXfBGT4lkl7FKFm1id5Uh0x2vh3TP4vT12knkIXUpoSc/tZjO95d66kAioGbGE6MBc1OgLuqpJ1xG89N35If2NrJJrl8sSQhDodavAbBCRi5YO/yDT5FSWc0edYvcu4I38aWPftmYESsWHpVn1pY0cWrfevLVAZPF9Hto6uWr/eqMlKhIagbei6ivKC7K3MJepjwIR0NHyFiLOjhB+NSnUDbhDuIelzKZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by CY8PR11MB7899.namprd11.prod.outlook.com (2603:10b6:930:7e::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.20; Mon, 4 Aug
 2025 21:18:16 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%5]) with mapi id 15.20.8989.017; Mon, 4 Aug 2025
 21:18:16 +0000
Message-ID: <4a9555f6-a494-4ee1-85a0-d95d8f0c5703@intel.com>
Date: Mon, 4 Aug 2025 14:18:12 -0700
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>, Sergey Temerkhanov
 <sergey.temerkhanov@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Grzegorz Nitka <grzegorz.nitka@intel.com>,
 <netdev@vger.kernel.org>, Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
CC: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, Jiri Pirko
 <jiri@resnulli.us>
References: <20250801-jk-fix-e825c-ice-adapter-v1-1-f8d4a579e992@intel.com>
 <8a676506-dd13-4198-813b-b61ad2953603@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <8a676506-dd13-4198-813b-b61ad2953603@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0248.namprd04.prod.outlook.com
 (2603:10b6:303:88::13) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|CY8PR11MB7899:EE_
X-MS-Office365-Filtering-Correlation-Id: ba86084e-1e9f-4bdd-59e3-08ddd39c6d28
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SHhFdEJXbkovQk8zSGhwM0d2MzlvT3RIUzJJdFMwRDE0a0VQUFNoRDFCdUhR?=
 =?utf-8?B?MCtGNnRzeCtOd3loSHpLZUszYzJCQzFqQmNpVUlXTmVRMnJjVTArUlR6Skhi?=
 =?utf-8?B?NERlOEVaU2tzSmtzWW16Wk9pMkEzR2laMzNsNXVMZ1pGcGZ2RWNKbFY5SG9l?=
 =?utf-8?B?RkR5Y1FTanVTNTNrNkhqOU94bnpaeGRFR0dKU2pMVTYxMzY5dHpodVhRcHhP?=
 =?utf-8?B?SlRzd05WWXJqTDdoL2lhK2hBWmliOUFVOWtxdS8zZk51Vy93TW5wWGlIMmR6?=
 =?utf-8?B?ZVFMS1liaFR3b0c2cTg1cWNwUkJOUm1La3Jvbm1ONEsvb2xHT3ZQRndjNDBm?=
 =?utf-8?B?UlNJKzc4WnRYcHVxendvUXZzWWFtd1FXZHpXYXJMS29xTGRZczk0bzdvK085?=
 =?utf-8?B?VEJuelVUNEJpSkhPZ3dQcVgxZnN2R0RneTh0bEdkM05sKzNHcGxQSWpjRWhJ?=
 =?utf-8?B?OG5xSWN2R1VxbVFBR2h6bk5YK1NOdlJoV3AzR1YwSXliYzdiWk9ibkZoekdV?=
 =?utf-8?B?clBzK2c5NmVlakU1R2MxQUthMlZhRkVkUWFVRHFnejJPN2piYXJGeDlVUEFl?=
 =?utf-8?B?OTJUTlJOMnNWUUhPUUxaSmZuM3JGbmRlUkorTVpKUHIweEV5a09uVXVIZnRi?=
 =?utf-8?B?ekszcGQ5ZnloWmJqMHZLbGRLZFFPbmxTMTYzQmJXdk92TE92T2U5MUhXb0dD?=
 =?utf-8?B?WUxpRlBUbi8wME5RMHJLaExLM05NUTVLdFdPSWQyWUFXTmo0SStNc0Z1dk5U?=
 =?utf-8?B?eUJLUmloNFlPNS8zZHV4SUJxMzBVc0FSaWZwbkZyd0VuU0orMFNDUmNsY0x0?=
 =?utf-8?B?V1VTT3V1emNPQzBiajFqa1pXaUFpc01qOFBDWmVpT3JhbmlZN1JCM09la1JC?=
 =?utf-8?B?bHVEYlYyRkNodmhHR3pRY1ZDeTlEblFaYUlSd0JCM2xQZ1haYUZQeGJLa1p6?=
 =?utf-8?B?NzlvU2ZCY2ZuS2YxYzJXVjZDZVNLc1BHSUJsYnQ1SCttK3E5RW5wNzMrM3Zi?=
 =?utf-8?B?dkFZelhjZHZGQmxYbG5RRHNwMVZXMldLZEJwanU4MTF3SE4zRnNIZDBTOVpx?=
 =?utf-8?B?Z05uTG80T0I5UHRXdnJUbGNhNUNOU2x6RUJXQUFXenQ5bnpLODlicW5BdXNF?=
 =?utf-8?B?QkxOOGNHTTBJdDRZTzJoOFkwdEU2N0drYis2cExTM283RjBoOUUvVmY1T2Zu?=
 =?utf-8?B?RXNPcVhBcVd0ZWFiMnFIZUJrOU1IOVVRRkhsYzZKZndJajRnamUwZXhIODMv?=
 =?utf-8?B?NGEwTlZUWWtDSHEzTjhtdlhXeXVSTyt0RjRwaHQ5aXdVcnJlR3JyV0o3UmZX?=
 =?utf-8?B?ZVRwc2dLaUUvUlVOY0VsWWJPM3piaXErRElxemRNakVLbWp0cEJyK3hSckwx?=
 =?utf-8?B?YXRBODhhWTc0dGp0cjBaVUFxSHcwVjYyOG9oU3IvaEY2ZGxXVHZDZG1DNCs3?=
 =?utf-8?B?Nkl6RTY1YVIxajdnRklzZ2h1WHVHZ2lsMVpvamhlL0dTQnY1ZG5IYkNKYVNQ?=
 =?utf-8?B?RnBINDRyZnRVM0VXMmQvNTlsWE9adnFGbnY1OVNQNUJKSGxkbExyUm5uayt3?=
 =?utf-8?B?UkQ1U1VMYU9QVG1mQ0p5bkw0TE9VWi9XdlE3WURJZVVYRDBYREE5N1N5L2tJ?=
 =?utf-8?B?NE5tZ0wwaExpZHAxZ1E5TmhOVEV1THBTZVUxNFoxNGlKNFc2cTZnam1BSEh0?=
 =?utf-8?B?QmtxK1ZsZXIxVk5sNWt1dHJ3aVVaUmRBR0lWU2QzN2hySzJ6YzR4enBvQ0c5?=
 =?utf-8?B?MW9sakZoc0FiYmJTYytrejR3ZjhkSXk5ZEZwNVFRNG84RVhrTzgyQVBJWG05?=
 =?utf-8?B?SUFOd1Z1dEl0VlZhbFZTMTI3MDBqZWNiZENjTEpGNkdOaXZjcDBIT2t4VkJq?=
 =?utf-8?B?bVlYQTdhcGhkdEU1eDMzOHlQQnlBUGNsbjJNaFE2Wjloek1HV1JEd2JxMnFV?=
 =?utf-8?Q?9O5FXhTI0nQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L04rY3lLbW1PSnZwWkd0TlZ5WTZIUDJ4KytrS1JncmZEU3lNQ2dEalJJdGNK?=
 =?utf-8?B?SjB5R3J2YzNBUDErcE9rUS9Nb1cvMUEyZUJrR2lnTGlsQWM1dXI1aXFpVmgv?=
 =?utf-8?B?UEFmZmx3NHVCb0JxVEswSlVWUy9LQ3l3ZlBwL3JLTk80MWNvK0hVaTZ4QytQ?=
 =?utf-8?B?RlVnVW0wenk5YkU5NWh3NGxNZkZka0tmSWxQVzR0SEZyWnJndzVUelBqYk9E?=
 =?utf-8?B?TVo3a3Q1Rzc0ZU1kUGhUNCtuOVpxZ3NNY0dYaHpITmJsTDB6Tkdocit1clhY?=
 =?utf-8?B?OW8zamlJUFhRL0NQSm1SMm5wNnU4dWZXZWg5OVJEc000NXhRYXlZWDdjNk9q?=
 =?utf-8?B?c1N6blNBVEw2UlhsbGM1L0NTMlQ1NDRaNEhHM05VZ3Z6LzBLNHRnbTUxU1l3?=
 =?utf-8?B?U0RlYWQxVURyTTZQK1ZyeHFSVDVic3pva1pYZkhtZk1xRGZFcE9nRUJsUHQz?=
 =?utf-8?B?L05SR1gwOEt3TndBSENrTWYxcUFpc2d0b3NhTXV1emNSL3dUem83dDB2ZVJq?=
 =?utf-8?B?MWRmYWVhV2FKcFZKUHR0bGdFeXkxZ1FiQ0FYdnhoM1dzdXlwYzhGa2U4SjNW?=
 =?utf-8?B?d3lDZmJacXpsYmRpS3pLekNhbDhBOEJSUG9GRzFrOGNiekg5QW1jZVRlTzQ3?=
 =?utf-8?B?cmM0RmRXQzlOT1VvRlNGamgvMU5LSGZSdnVDNFlmY3Q1TmNwYUZPNFpkeWxj?=
 =?utf-8?B?RkpiL0VQSzMvdGZWQ2ttRlR2SjBjdmUwR2lVMmRsVlBKcFAwdDljclJOaWVo?=
 =?utf-8?B?cU1reXhSK1VzSmloRGVVaHY2bjFzaDNDNmtTNVZ5MW1BWEJZSkNlK1Z5eWhQ?=
 =?utf-8?B?b0E5RkF5KzdGTTdGbldWU1I2NGI5NlRjcXJROGVva3VELytJL3ZlTmttM0RI?=
 =?utf-8?B?S2oxdVNvRGxQNy8zajNOdlFBbUFWcE5ub1pYWjQ5UEpMYU1VdTU0WUVkVExm?=
 =?utf-8?B?Smw2NEJGcFNuV0RaVjhCdmdBM1JMUjBGSTVLVWJTK29obGVTVGxjc3I1cEJG?=
 =?utf-8?B?TGUySjZpeTF5S3ZxVnRKSWdxSStYa1VLa0hjUFNkVGQ3Q1ZKcXFvUHZUY1FB?=
 =?utf-8?B?Ni9GVUdOWCtEWlN5bDRhUGxjNGZEMVJiSzFkem1sNnhGczY0U0NHOHNJQ3JO?=
 =?utf-8?B?dEVYdkxId0NBeXpjbDB2dmpnaVUvT0wvZHNSenNaRE93OWprSXkrWHBCY1ZO?=
 =?utf-8?B?OWVEeEtPYUM5SGxxYlYvSSt6NGpxT0I1YUU0OXlHSFVMbjVTTFh2NU94a2Zp?=
 =?utf-8?B?TGJYM25jTTc1dW9VVWQwUnVvZHF2bmtLNkMwaFdvK2UvbXB4TnQwU1Npc0h5?=
 =?utf-8?B?NHh0SlJPNk4yZzdIeGxOZjhmb1A1S0l2VTE3bDNOMVB5Q3pRMVgrVHQvdU5V?=
 =?utf-8?B?eWRSOXFQR01OZE9YdWZaUGJKWkhza0plUFcyWmZ5NDIzL00vWTVzcm9uck8y?=
 =?utf-8?B?L1ZETzQ5YmVFdlY3NytacktLUGtYWkJoVnVwSFVWajJQa0VzckRoYW1JQXFm?=
 =?utf-8?B?NUpsdkplbjIwdFFyTGhGUzBkaS9Cb1ErT0NoOVIrVDQzOHZ0VFY3UXY5cGZl?=
 =?utf-8?B?Z0FPYW1iRlpqaURkemg0VXhHWU5wQldPTmJGWitrUWZPY2pnQktDN1ZEa2ln?=
 =?utf-8?B?WitKaWNTTXdId20zeVNwa0x3d3NBQjFWc015dVR4TGR0bWRoNmxtajdmb0pD?=
 =?utf-8?B?MFMxQXA1TWV0TXc2L29zV2tsT2xvSjhlNVZsMG5tS3VVVkNBNS83YUhraDF0?=
 =?utf-8?B?WjV4MWdFSk5XM3R4RVh2YUFnS3ZhV29lZmNzZnhVVjlPci9VNTMrVjQwbVJO?=
 =?utf-8?B?TTVPTWVvV1h3NXViYXp2VTVHN1hXVllLdGFGMFRidmphdGRkU3lSSDVhOFRl?=
 =?utf-8?B?d1lMSEZNMTBwQzJmQnVldDJQaTJlSE1yQmNWNzB2eVp4T0trTm9rWWlKQjND?=
 =?utf-8?B?UVFsY2wwMjY0dXBqc3pyVGpKcU9WSmN4a1NIQU1PbFBoWWRXcm1kbVpIL1dr?=
 =?utf-8?B?QjJOd0NqZXRsdVUrMHpjbWo2SUp3WHZOQzFpL1JZUEhaMkpoVEZYaUUyMTZO?=
 =?utf-8?B?QWM0WTNUYWg4cjgvakU0WjlxRVh0Tjd0QVVEQjlGc0xDN1VlTnZYMzhHYTRz?=
 =?utf-8?B?VWMwRXpUQURXaSt5UFVRMkZlS0JaUUJVTWpXTnJ3di9uZjdvd0E3THFUQXRy?=
 =?utf-8?B?NUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ba86084e-1e9f-4bdd-59e3-08ddd39c6d28
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2025 21:18:15.9049 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cchhKYq3yEJ+KqfpBG9l6wppc3kguYxm896kWNH5lQ0ojfhcUiZ6TnkJLb8CLdVyvzrhTRynGnE95u+j+YHY+HKmIScRfGTFThXvmURQhXU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7899
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754342301; x=1785878301;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Es2fIMefz65aNvXkscFQEwnPA52iAWq0cyYqVA9aMJs=;
 b=fuvylzDj3rimDYjawvEjTvgsj5ROehD5zh+g4GSGBm02VN0wHY2y6mjV
 ua0MItK/krdnKVkEvOfgLCbLgteaU2CCj7rNhGA4sibcEvDYO3mLyOPCo
 KVIxSGZENe2XMjnPwDWKwatsMWuRGk3qf3cilZ70X+iy1aAuPc8ntLB5R
 8OnjVqYaYvVNDopHVTqZ2Ug/Zs0mg6cO0KU2pT4zSm3B++jGlPU0RQikZ
 eGgPul+JnClcfHyksNDv2R2SW0bQSg/VYSCIUaoqjQPhW2WztLZRibW93
 B5wtKJ1c3cL7/HNo0YodwJYTz99yMJuHDTM8DdT8IrnfUidWaQmn+egau
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fuvylzDj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: use fixed adapter index
 for E825C embedded devices
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



On 8/1/2025 4:08 PM, Jacob Keller wrote:
> On 8/1/2025 3:27 PM, Jacob Keller wrote:
>> The ice_adapter structure is used by the ice driver to connect multiple
>> physical functions of a device in software. It was introduced by
>> commit 0e2bddf9e5f9 ("ice: add ice_adapter for shared data across PFs on
>> the same NIC") and is primarily used for PTP support, as well as for
>> handling certain cross-PF synchronization.
>>
>> The original design of ice_adapter used PCI address information to
>> determine which devices should be connected. This was extended to support
>> E825C devices by commit fdb7f54700b1 ("ice: Initial support for E825C
>> hardware in ice_adapter"), which used the device ID for E825C devices
>> instead of the PCI address.
>>
>> Later, commit 0093cb194a75 ("ice: use DSN instead of PCI BDF for
>> ice_adapter index") replaced the use of Bus/Device/Function addressing with
>> use of the device serial number.
>>
>> E825C devices may appear in "Dual NAC" configuration which has multiple
>> physical devices tied to the same clock source and which need to use the
>> same ice_adapter. Unfortunately, each "NAC" has its own NVM which has its
>> own unique Device Serial Number. Thus, use of the DSN for connecting
>> ice_adapter does not work properly. It "worked" in the pre-production
>> systems because the DSN was not initialized on the test NVMs and all the
>> NACs had the same zero'd serial number.
>>
>> Since we cannot rely on the DSN, lets fall back to the logic in the
>> original E825C support which used the device ID. This is safe for E825C
>> only because of the embedded nature of the device. It isn't a discreet
>> adapter that can be plugged into an arbitrary system. All E825C devices on
>> a given system are connected to the same clock source and need to be
>> configured through the same PTP clock.
>>
>> To make this separation clear, reserve bit 63 of the 64-bit index values as
>> a "fixed index" indicator. Always clear this bit when using the device
>> serial number as an index.
>>
>> For E825C, use a fixed value defined as the 0x579C E825C backplane device
>> ID bitwise ORed with the fixed index indicator. This is slightly different
>> than the original logic of just using the device ID directly. Doing so
>> prevents a potential issue with systems where only one of the NACs is
>> connected with an external PHY over SGMII. In that case, one NAC would
>> have the E825C_SGMII device ID, but the other would not.
>>
>> Separate the determination of the full 64-bit index from the 32-bit
>> reduction logic. Provide both ice_adapter_index() and a wrapping
>> ice_adapter_xa_index() which handles reducing the index to a long on 32-bit
>> systems. As before, cache the full index value in the adapter structure to
>> warn about collisions.
>>
>> This fixes issues with E825C not initializing PTP on both NACs, due to
>> failure to connect the appropriate devices to the same ice_adapter.

cc Jiri
>> Fixes: 0093cb194a75 ("ice: use DSN instead of PCI BDF for ice_adapter index")
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>> Reviewed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>> ---
>> It turns out that using the device serial number does not work for E825C
>> boards. I spoke with the team involved in the NVM image generation, and its
>> not feasible at this point to change the process for generating the NVMs
>> for E825C. We're stuck with the case that E825C Dual-NAC boards will have
>> independent DSN for each NAC.
>>
>> As far as I can tell, the only suitable fallback is to rely on the embedded
>> nature of the E825C device. We know that all current systems with E825C
>> need to have their ice_adapter connected. There are no plans to build
>> platforms with multiple E825C devices. The E825C variant is not a discreet
>> board, so customers can't simply plug an extra in. Thus, this change
>> reverts back to using the device ID for E825C systems, instead of the
>> serial number.
>> ---
>>   drivers/net/ethernet/intel/ice/ice_adapter.h |  4 +--
>>   drivers/net/ethernet/intel/ice/ice_adapter.c | 49 +++++++++++++++++++++-------
>>   2 files changed, 40 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.h b/drivers/net/ethernet/intel/ice/ice_adapter.h
>> index db66d03c9f96..e95266c7f20b 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_adapter.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_adapter.h
>> @@ -33,7 +33,7 @@ struct ice_port_list {
>>    * @txq_ctx_lock: Spinlock protecting access to the GLCOMM_QTX_CNTX_CTL register
>>    * @ctrl_pf: Control PF of the adapter
>>    * @ports: Ports list
>> - * @device_serial_number: DSN cached for collision detection on 32bit systems
>> + * @index: 64-bit index cached for collision detection on 32bit systems
>>    */
>>   struct ice_adapter {
>>   	refcount_t refcount;
>> @@ -44,7 +44,7 @@ struct ice_adapter {
>>   
>>   	struct ice_pf *ctrl_pf;
>>   	struct ice_port_list ports;
>> -	u64 device_serial_number;
>> +	u64 index;
>>   };
>>   
>>   struct ice_adapter *ice_adapter_get(struct pci_dev *pdev);
>> diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.c b/drivers/net/ethernet/intel/ice/ice_adapter.c
>> index 9e4adc43e474..9ec2a815a3f7 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_adapter.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_adapter.c
>> @@ -13,16 +13,45 @@
>>   static DEFINE_XARRAY(ice_adapters);
>>   static DEFINE_MUTEX(ice_adapters_mutex);
>>   
>> -static unsigned long ice_adapter_index(u64 dsn)
>> +#define ICE_ADAPTER_FIXED_INDEX	BIT(63)
>> +
> 
> This needs to be BIT_ULL :(
> 
> Tony, would it be possible for you to fix this up locally?

Yea, I can do that.

Thanks,
Tony

