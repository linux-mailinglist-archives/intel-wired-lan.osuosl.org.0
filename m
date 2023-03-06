Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAAAD6AD141
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Mar 2023 23:14:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6154740A6A;
	Mon,  6 Mar 2023 22:14:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6154740A6A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678140886;
	bh=1rAu0QmJxs8cAs5FLNFBtFaQsQq4RbNbEe4bSwsCSTk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qJoPm5PS5/UxvlTrBIkdnLA6rUzztN+m/TpB6Kae+oj+gIBk5S2d+XRfKimSSWYQ+
	 eMxwq0Q7LobhyfJDkTtrd1gcXE3vBGJ+mi/sr/gCD5c8NqzM8w0Q/esbdwxzY489I3
	 xjczT6GwdB0ktHDW0mcOM2dvdAKIkgcg+038lPmdOkUGR72+mHcCUy1qk8itniZ+0t
	 vWPSj++ddvwYYqWoBdCtEvoYb02Q7DM4zlqUbc08P6KEoaevJnQsLtbnfY3+75+fFe
	 rglNzx/5L/nWLq3NPCPLtfkRbBE0zDXzyBh/OTjzvQmG6QztjU1jCwT/tnQCmEtCSf
	 wCtv4+RDH1u0Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1GuHh7Y7noja; Mon,  6 Mar 2023 22:14:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 59189409EA;
	Mon,  6 Mar 2023 22:14:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 59189409EA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C8E6E1BF3AD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Mar 2023 22:14:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AD8816101D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Mar 2023 22:14:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD8816101D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JnjHGnrgQW4n for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Mar 2023 22:14:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 09CED61001
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 09CED61001
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Mar 2023 22:14:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="316090379"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="316090379"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 14:14:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="786437561"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="786437561"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 06 Mar 2023 14:14:39 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 6 Mar 2023 14:14:39 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 6 Mar 2023 14:14:39 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 6 Mar 2023 14:14:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U2RYAqm+aiPO/ZL0Cvx0AcLQ7hhhP/Zbj5xmpZbiUfEvyMv5hWFLlIAWG2xl0lKBgEBVSgg/yZujTSpAsuHniku9VpKv3Vts7vXb3yoleF55Csu32UylHoR8vCuhR3zEbUuZPMwoiW2VUZEpHF5zzH4BsB4g+LTZsOnFnLYFCz5gECvWGY5UnxQg4Pzef/kSXXiP2dCxzJLUpL3ciWaSP3yVQTWhYyZ4k2V3I6iC9pHHJB/JBQfxiDcCOhYUTPLXlEpNSewLY9PoOi7HTsedmlV0LDv6odCktgFOu2QQ1Ca5Mx50jQROe3r8/laCAQtPE8YEt0WNN/oJeakIV2QnXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ifH3YlpAUf7KfKJ3Jqo2z0bAkrZLwT6faOYZn3X3pa4=;
 b=jwCMpKIKYW3vmrWC0L6rliQklF8niUBKMD7wQeJ3+4iQZlo52anQzKQjYZwW+dWZmciaYZUIb3TItAiStKnDOVw93Bg+Bc+EsdqbDRmCPld0rDTg00W/2dGT0hC++GawV5pT5goAW0/3RhocOa6PBbPXVRm8ukEfrZFI9wGiNSntMFhH49NIPN2XGbf/vCuzd7KCNLWllSG62+JI5C3uT86cP6GUIRU1cwJjtj+hFxXAEVtPi7wWXDZcJl4PmKEcVUsidqaE8HJPobgtq2TyoRhQ2fFqMcJ3hqUCHqPFGy4NSCIHJ6W1aKjNLBuu2PJfFPD2epwyqm5P4Ams8icmbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5636.namprd11.prod.outlook.com (2603:10b6:5:357::21)
 by CH0PR11MB8214.namprd11.prod.outlook.com (2603:10b6:610:18e::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.28; Mon, 6 Mar
 2023 22:14:31 +0000
Received: from CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::e28c:6ed5:f47d:3e32]) by CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::e28c:6ed5:f47d:3e32%6]) with mapi id 15.20.6156.028; Mon, 6 Mar 2023
 22:14:31 +0000
Message-ID: <a6641cb8-c04c-5f6c-0b5c-6d2019e7e990@intel.com>
Date: Mon, 6 Mar 2023 14:14:29 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230302215109.124-1-paul.m.stillwell.jr@intel.com>
 <20230302215109.124-5-paul.m.stillwell.jr@intel.com>
 <b7a5e4b8-cbf6-04eb-017a-b8629429f763@intel.com>
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
In-Reply-To: <b7a5e4b8-cbf6-04eb-017a-b8629429f763@intel.com>
X-ClientProxiedBy: BYAPR05CA0100.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::41) To CO6PR11MB5636.namprd11.prod.outlook.com
 (2603:10b6:5:357::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5636:EE_|CH0PR11MB8214:EE_
X-MS-Office365-Filtering-Correlation-Id: cfe2f113-4f31-4e03-853c-08db1e9028c2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZJDS6zUauYkF2B73+xsGn4vOi9q/ccjF08AoXbPY7Ndw1V/jMKEXKC7y5Ij02QSG7qXVGRJdbiAmfjqohUNo2ebOD8L9P/AoyI/RPI+HMNJQbRYQC8wu1cEYhe/K5uLwICzUFegfIYWlFNtQCJmnd6F2RFzoMQzMPvJ/JV7J6c0bFxY60FUuINT35/uE1KHtf3Z+ckwh4HkaEOZWM3VEf9Ojweock4aF6Ikp9KJeeJ6LdO66Fl+zTBMk76j76msCfSxe7PrHNXjXx/a6JE8QWbrZCs0v1yGzV7wEHUgMs+dzm73oGAHkqu5wzz0L5Nibg/6MUNqrvM1SGHiaOt5+XK7sjwXXuJbgVBHgIH2moYOWte6B3xr9SFMOkMBfGOMxdgnB+XddRBEJJ4vmzSfSVJGmCBpP9WrCe68z8N05fQYRh838C7uRtgv+1gbe7dNlaWpmJBOxE3PRhcWpKcdUf+Ly9eEKkH7B0KoXACt4LcOO4DzjuS6cKCYeCd1J+E7OgECGUubaCJdGWwJeLCvNZspyrEOc7ikhU8KGV5B7CYqWgncX8gHEGBZSoP9sGrc0DKvIr6z6ioq9+uaxRETxLfDntgWcNuTw+98JKG9Si3LepPUUXxqSxEMA22VB8ZegTOKiS6+Tlssf9+VW/QsJlfUr6Qc1kldBcb3Pqj8VqpbY/mAotouQcKRC8076PkqWjkFBSRsSwplBVsrXX4PwPI+NdTLS0hjJk+Nu8FuCUYw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(346002)(366004)(136003)(376002)(396003)(451199018)(26005)(6512007)(6506007)(53546011)(6486002)(107886003)(36756003)(86362001)(82960400001)(31696002)(38100700002)(186003)(2616005)(66556008)(66946007)(66476007)(41300700001)(8676002)(4326008)(2906002)(31686004)(8936002)(4744005)(5660300002)(478600001)(316002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Yit1ZU92MHphNm1oMnlxL2lIdWdvcFJVRnJYTlIvNVZNWVA4YTZNeU9DVTVJ?=
 =?utf-8?B?WUczMk1sNmFFdjFha09LUGtXYVlFUThIVkdEOHN1V0NnR0JGTDhpaTJVc3hW?=
 =?utf-8?B?eFhibU0yclpoQ1dzNEczMlVtUjBKaE80Y0JNOGUyUlJ3cmVSaWVDUGJQbUdC?=
 =?utf-8?B?c2I4T0cxRjB0aEFDZUIwUnNmaEpPT1pEemtHWnVBa2E1S0poWDVyUGpSV2F2?=
 =?utf-8?B?TU44MXRPRzN0TmY1eW5qTmFFV1hCb0JpRnNsNEhPL2JhRHJhZUNzcHcxMm14?=
 =?utf-8?B?UTk2WTlhakY4SkNBcG9HeHdMd05TdlhKajJyUUFMcC8zVVN1UGpiUnROS0M5?=
 =?utf-8?B?bzNReGo4Uml4emkyOXZxWVFSU0RBeEJPOG9GUTlDdlNwV1djR2VsRDdrMm1H?=
 =?utf-8?B?Mk91OCtZWE9URDV3YVYxOXFBZVkwS3MzSjlrQTI4cXBhT1B6ak1SQk5ZSzhJ?=
 =?utf-8?B?Y2FSVGQ0aThIZGJnVEptMzdxTU1ibDVpVWc2R3FNWWVNSHBYMVFlczBkNThL?=
 =?utf-8?B?TVhBbnNGRWlxS0dha00xYXhqOC9pdE40SDFCbVJzVmRIbzFHRGs5bDV4V2tU?=
 =?utf-8?B?YVVWV0Rkb3lBcUlCOVJlL1pobnNpUGpieHorM2RaelFoWFZ3YjZuZTZYaHA2?=
 =?utf-8?B?MUNMa3o5TTRXRG1JUEVlbzgvbXBjYUZDenRRMVlFWjdOajVZQWVUNmxPZmN6?=
 =?utf-8?B?eEk2SW1QV2txbkFPVXlsN3hKY1cwNWNKZS95MThldlh3dHFXYllUenhJbkRI?=
 =?utf-8?B?WmxSWi9PYVFIQVZ4bi9COFNKU2JUSDBTL0FUQnpmY2dha0hqcE9pelVMTHVO?=
 =?utf-8?B?cVN0V3JheW50enJZRzBHY1dZakJQSkkzRzlhWDFHLzBlUTEyaWhJZFhQL1g1?=
 =?utf-8?B?TzkzNk8zS1cwRUtDOUIwd0UrUGF0UXJSTVo5SkVERGFWdEpuTzdXU2Q1OU03?=
 =?utf-8?B?aVh6VEJhWEJNOXVzT2pYZFNyM3RlZVdJL0ZLTCtoUUp0UmhkRC93dnE0ckt4?=
 =?utf-8?B?TWxYQ2FOSXhremxsZlFETXpQNVVkSS9mN3V3MHFkbEZ0WU56NUhWZlJDa0k4?=
 =?utf-8?B?ZHVmZElBaUdRZkRCUkZrSmpCSWc2cmhSbHY5TkdHZmxhWklERlZxckpUTDBi?=
 =?utf-8?B?VUdTYVdVZ3ZseHJ0aGdYZFRxUkRxWWhwZHpyRlVmTE1TZFk5RzRzc2MyVEFJ?=
 =?utf-8?B?MUFFVnpkOFBEV3gwbW5vMmkzelE4OEp2UkdCWWZqaTZlNU52bXZMTkFTSnhW?=
 =?utf-8?B?YVpwaFhMQlNhU0twVVJ3TkJoVUxUOXYzRWZ3cWdiNDkwN0lQNDM5cUd5MWxN?=
 =?utf-8?B?ZkovVndkUm5BL21TZVhNZDdGNmZKU0hBcFNMR21ZbFdka2ZFeHFrQ0U1YU1a?=
 =?utf-8?B?WGNrdnVNS2VHYXJMMTFqR3JhQlgrVTNSUjRJVnhORmdrQnJKeXlQZ1ptSjlR?=
 =?utf-8?B?U2daNlhqYjFraHo3aUo2YUVCWDJjSzFsT28yUVZ0VHV4UmN4bU9Ib0hHUTRT?=
 =?utf-8?B?aHM1enV4WmZRbERwZS9sTGdVOEhSM051M3UxcGpDUFN3Z1ZjQ1NGWGhMOG1K?=
 =?utf-8?B?UFdIQlZzc3NwL3hKTVNsRWovL3Q4OG9ORlhWa0JCUTY3K291RFBvZE9wVUFo?=
 =?utf-8?B?TmI2bXhicWFLaFUrem1DRkN0MVFMU1NOcGIxS1ZvMjF3QWtSSWs1bGJ5VVFF?=
 =?utf-8?B?WThENmcrOVRnREYwSHdCZ3JkR0JLdzVOeHdSUWd0cjdiWnBMRWhPUkk5ZDh2?=
 =?utf-8?B?eW1rc3JsSSsrVXpOK2tJdFdTVjFqTmRBT1EzdW5VaHhWUHNDWkZ4aU5QWm1V?=
 =?utf-8?B?bm84WnMwVW1MMmpuQ3lPalBQUmJ1eHJGVlJhdVNUd2VPK2MvTEpXMkxBWVNp?=
 =?utf-8?B?ZjdOYUtJOXFMY3ZtVlVKcEY5NWt6UnF4MW81dFZ3WHBoNnNkOWFmeEhQcVo1?=
 =?utf-8?B?SXJUVVc1TXprVDBURWFSWmFVVFVleDJNZlNLQjlIdUV1REoyZ3djQllEVFhF?=
 =?utf-8?B?UXUzUHFkTVdYNEVDbHc3Tkc0VEh5dk9UUEJ5K0tMdVpKRm5tOFJOUXBLN290?=
 =?utf-8?B?WFBQeDlvakdYUGJOVjFQYTdCSStYSlIyVk50Q3AvaFRhb2tMU0VqbkZrQlJz?=
 =?utf-8?B?RnhWRjBjOXFUVWI3M2ppQ3laQ0duTWc2QnlpL3FNakd1a3hsdlV5MGV3eUxx?=
 =?utf-8?Q?9UYBJhlLzDgq56c73ZnJU2M=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cfe2f113-4f31-4e03-853c-08db1e9028c2
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2023 22:14:31.2736 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IhMwI6IlSBjaa4meKnaEBbYCbUAG+IImg8Dpf3Kc6F8axf7aYKVziakK40q6FXX9YcWYVUE/UF5mmv4CkgIvWiPc96FLFf7MSxIkRy8sxLU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8214
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678140880; x=1709676880;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pfEs2yOlm+640PMUw57g4U8+bt6J2e7F8J2YnIJDmr0=;
 b=K4jB69/T6s3Pc7Xd8POKOL5pnKzgcK7fuuRSwNVE0Di4RuGPnt5g5Vw/
 CQx278kVyP8zgKx5YwOcKfEOiZTpQNpy3seqxdeK0A2qBUsYw1tplBSqa
 Go66pQLC6RlL/cBKhSnJo558Qi8d9+fHpwOssdbZogn04DNweanI2Awnd
 7ks7C5/dOum488sauvlkI6LNx70VdPeUNkVYQe6ezuEvpdatMatETqiqx
 8hQce7r5+BIT881aqoYTvQFwddZQ834s9V0Sg+3L7RabSW5idCxr4o55Z
 /d1M1dcH3TSEv2Kx1uqbFfQciEAforSNXPZDF5HCK5Gzc1C6cUQ1MYRR+
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=K4jB69/T
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 4/5] ice: enable FW
 logging based on stored configuration
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
Cc: Brett Creeley <brett.creeley@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMy8zLzIwMjMgMzoyMiBQTSwgVG9ueSBOZ3V5ZW4gd3JvdGU6Cj4gCj4gCj4gT24gMy8yLzIw
MjMgMTo1MSBQTSwgUGF1bCBNIFN0aWxsd2VsbCBKciB3cm90ZToKPiAKPiBbLi4uXQo+IAo+PiAr
aW50IGljZV9md2xvZ19zZXQoc3RydWN0IGljZV9odyAqaHcsIHN0cnVjdCBpY2VfZndsb2dfY2Zn
ICpjZmcpCj4+ICt7Cj4+ICvCoMKgwqAgaW50IHN0YXR1czsKPj4gKwo+PiArwqDCoMKgIGlmICgh
aWNlX2Z3bG9nX3N1cHBvcnRlZChodykpCj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVPUE5P
VFNVUFA7Cj4+ICsKPj4gK8KgwqDCoCBpZiAoIXZhbGlkX2NmZyhodywgY2ZnKSkKPj4gK8KgwqDC
oMKgwqDCoMKgIHJldHVybiAtRUlOVkFMOwo+PiArCj4+ICvCoMKgwqAgc3RhdHVzID0gaWNlX2Fx
X2Z3bG9nX3NldChodywgY2ZnLT5tb2R1bGVfZW50cmllcywKPj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgSUNFX0FRQ19GV19MT0dfSURfTUFYLCBjZmctPm9wdGlvbnMsCj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNmZy0+bG9nX3Jlc29sdXRpb24p
Owo+IAo+IFJldHVybiBoZXJlLCBubyBuZWVkIHRvIGFzc2lnbiB0byBzdGF0dXMKPiAKCkRvbmUK
Cj4+ICsKPj4gK8KgwqDCoCByZXR1cm4gc3RhdHVzOwo+PiArfQo+PiArCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGlu
ZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
