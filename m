Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0DB787918
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 22:08:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1B5D6415B6;
	Thu, 24 Aug 2023 20:08:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1B5D6415B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692907702;
	bh=iFy8vBPuRGi5Nn0/2D2LbxWyXd2bMUokKPrbdzVtW7g=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aTLzDkFpqM0oJUH3FAakL+l+Ws47L9WbYFq+rAy0xXmXbHJKeCmtCSH+aExd17Mbp
	 W9c+eeiYtXJLlGtxTSA07szVLYOPD8YPy49Dm8Ae5jmIzSRIbgG05L435xRvt3NE6r
	 07l5FsXYZ3BNhrVHFGffLkxwldJ4ScMLqSORDg6stZhAmjeF3GEDxKCjEK1VAtPuTR
	 B1DU2OWalJSP1RWbNWW7HRdf2i+QXzOHQmMmb3tPQdxPAYrTDn0prdS6RyfuUoiZRy
	 fwtE9AMMwrnDrwXfI8a9PYna4fh4ptZbYuJqokdlpSJx/eecE4vHim9ggog5kWGtuC
	 yVDPYF7y16hQw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u61F4JYnWtTU; Thu, 24 Aug 2023 20:08:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EAB7740913;
	Thu, 24 Aug 2023 20:08:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EAB7740913
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 792CA1BF83E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 20:08:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 50CB483422
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 20:08:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 50CB483422
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5lFzMPN_T1EE for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Aug 2023 20:08:14 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9DEC2832A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 20:08:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9DEC2832A9
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="405546975"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="405546975"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 13:08:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="851651524"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="851651524"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 24 Aug 2023 13:08:13 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 13:08:13 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 13:08:12 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 13:08:12 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 13:08:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mHanRxKtpiZcy6TsehZ26eFXAyljrDKZ2RU5ezj+fOh7IudXV2wZIIMncDl6Cg6sfitptoqaikjvHy/PKsAXoKFtjNqUCPpk1qzb4YxOA2bNlYtCNsUc6iIMG8Fhg5i5EAUbCGKWmxuH837Wp7WWh8NO7O5BDe3++P6CUREo6z8pwbTiU1edoMIXEDYhpZTTVQC18MKmSFFP1tDIYd4soqi3pic295EEMITm9PVhZNktSkvNWT5SQh3A1QyetaMUR8FZNLgy13yA5hWT1LJHkry68YCuf7yp8n8diaar3Z7U2JvgCIkAyNARq3MNHqwi4aOBK3R1JVs2KuqYv932vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IGCvvp393Es2GuzJJAgdp3N71RI0tVRIV6wFvK8JJZY=;
 b=JsoPFWtoe3eQCXPaVIh0IJU7kZRoFdqO/CNy5Ymi9xUFCAYvDqpnCCl8gRyvejUe883Oz5rsWmpwXe0HSzBMOWyvLl0ubwQvYoXXnlzlxmbw2vD4vZ/teKl6kDcXJGvnNtUQtJx+zQBlQ3l8YhBaOmmvthR57lJ9i9rz01G7cSHrjrj2zJLGzpsyxRZq1eMBBWqPvFjA4MRELUuIk/5dCoYExk4DLNzNszDMTibmkRnmpBKU15WsggG+GD6W5PUfzIoiRYJiBsMTEkiaDwKP6hZS0soFb473nH/tYkZMsa8zSZz4olUrKE7fRMuBSVrkPUESiHe5bbWP3PR1284HLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by SJ1PR11MB6178.namprd11.prod.outlook.com (2603:10b6:a03:45b::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 20:08:10 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::3e89:54d7:2c3b:d1b0]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::3e89:54d7:2c3b:d1b0%6]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 20:08:10 +0000
Message-ID: <30ae8892-3332-7fb7-273d-81f40a068175@intel.com>
Date: Thu, 24 Aug 2023 14:08:05 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20230824122337.3300895-1-ahmed.zaki@intel.com>
 <bb334cef-1cd5-0aaf-6fe3-fd632b34d756@intel.com>
 <536c1d2d-d371-97ed-d550-26800c142274@intel.com>
In-Reply-To: <536c1d2d-d371-97ed-d550-26800c142274@intel.com>
X-ClientProxiedBy: FR2P281CA0084.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9b::11) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|SJ1PR11MB6178:EE_
X-MS-Office365-Filtering-Correlation-Id: 1b11992b-371a-4bfb-5a9f-08dba4ddd6ac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZCzx1vQyoq7G9iNDZ3t8xHA0vTlRmbq/kpJ+I1vsEwyME86LReJggaVQkX2WXRs1Qh/XuwiDAoVdK32/LWWQhiZsSW/yYa+ifCOPn1lmXNOZMbznTsaBrSd8cNemwyOwyu8qsGTjJ5tTcvpSq/1axJs0Uvj/MNwNBVf1LZ31mo1G68grFdP3BhVuOrT56Cse4qGHjizqYHSBon8lfolhJd25zZ2KvrrnIehzav+u725shd5IZRsYd4D45E+08CKMWGnDhujI1r/UbhUZGHjkkbzJxQdNwRjdVyV6MpHVQyfdFT7yfTzKAXQexY5IB54UAlojU66EvzVBhlbCkWWysYr6Tmub86nz9sEZv9ESbIzI501TUrvVFTOeC/kZHVhue24ytJuoZTEvmROLXBYcsnxFNUjF8+11qPHoebbPM0WIGImV7XMhpbzUucOy0G6MKniAfTO7HtmSBW0il37TrYwPpRHfI33ueyaULfSnliASAGKQI4hjejF2kJjvijMdISD2OvjGbCWRRj/1f+yi4775O6E93jp2LBiVMbwMerRsc0J9sRnUVj6opAkGNsgnDidVew72rW88jyCnCXBc5MoGsHpLk8LkPC6TYbgDBX+bfixQ6zvD8k48zzDOwaAJMgVzf6hFsqM8XV+RzNOC/Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(396003)(366004)(376002)(39860400002)(1800799009)(451199024)(186009)(44832011)(6512007)(26005)(478600001)(2616005)(5660300002)(31686004)(2906002)(6862004)(8936002)(4326008)(8676002)(82960400001)(38100700002)(37006003)(6636002)(66476007)(66556008)(66946007)(86362001)(41300700001)(31696002)(6506007)(53546011)(6486002)(36756003)(6666004)(316002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VlZYaEpUT1Yzd3lSY0lWZkxWMFNURldvWjJXQXZWTnB0OW9PNjZjMVhCU3Ar?=
 =?utf-8?B?R2xVMWRtYnI3WnFVS1V2a2w3c2I1K3pPZ0sydVl1NnczWkNRdktjdSthRnFl?=
 =?utf-8?B?MXdpNjgvWTZiaDR5NEptV0pXV2NDU3pWaTQyU0NCZ1lsZEVmcGl6THZwOW5X?=
 =?utf-8?B?VjFvdEc3aWtZMXpHbTJZOXVPVy9KcitpM1JWRHdIRStSeFF2NVptZkY0WE9Y?=
 =?utf-8?B?bzFPNzIwdzgrTzhheVhZejFQNWRVQm0rWTJnTWVDaVowYmxVQVVQMTdvZXBr?=
 =?utf-8?B?SW1wSlFRU3dXbUI5am1EWStRUlIyY0hSUS8wZmRxZUlaSUNLTEdKZEViaDFx?=
 =?utf-8?B?bnEvTjJ2aDVrWmJvMlNsUjRES3ArVlIrZFIvWWsrNnk3Tmtzc2VuSTcrczhX?=
 =?utf-8?B?SG0yQmtqZjYxdjdoS28wSTlicEdhOU1PckN3cjZWdTk4dXVnRVhsUlVYVUQ0?=
 =?utf-8?B?aWlMTUVPTFZsNklVVy8vazdNclphNzJuNXMvWlEwWWtORHF1dXN1ZmkwdWFC?=
 =?utf-8?B?L0M5MlM1TkVTaUNaSzdCT1hZOWpPZmpMRFVUZHk1bzhhWnRHbXhHYTVFb2pn?=
 =?utf-8?B?ZHptdTY3VElId2RTT1Q1Y1BmbHUwQVdRRU1McHY0WVZhZzBaMXd2Y0FYRmpB?=
 =?utf-8?B?UWhUcm5sWGlIaEE2Q0NmOFUwWnJvblFWNUFqNldWV3dBUG9GWWhhY0RlblFY?=
 =?utf-8?B?UjFDSllIa2xhWkZ4UWFuaTg0N0d2Mmo5ZmNJVGdqNktyWmFCSk9TOVBjVWE4?=
 =?utf-8?B?QzFyM1NGVW15UXVRaUtDaE85aTBKU0xxWDBzQXNJZ2owUVVKQUgzcjRnalE5?=
 =?utf-8?B?bHJyamkxTjY3RkYzZ0FCcXRUTFlMWk9lN3p5ZEp6ZFpoOEg4ZW9oYXVJMGFn?=
 =?utf-8?B?OTVuNUhjcENVZVFiTzJuVGJlN0F0QkNvMGN2Y3FaUHdvbDUzeFBEdDF2dnJW?=
 =?utf-8?B?UndjYUM2a01wRUszU1k5N0RRbHJFaWYyUUYyYVFoK3BWbXpxSDdCOEpaUXlq?=
 =?utf-8?B?blZ2WjFMb1FUREVBVXhRVXRrNjFXdmo0TFhCQ0Z1OTFCVStMOW1jNmdXQXF5?=
 =?utf-8?B?YlpNenNDQVVPQWhzb3l0NmRwL01ZcWNTSjYzSjh0Q1VLaTAybXlZcnRzUTF1?=
 =?utf-8?B?V21SNW5iOGNnQktRS0ZKRGNidmdZREkycllmTTJtZXJzM01hZldFZ0oxZjRL?=
 =?utf-8?B?cG5PcE9UbWs2Y3FnSytUdERVSklWL1ZnRm9SeTh2cnl5NEp1c0QrNkhRMU5H?=
 =?utf-8?B?bFl1cFRyY1dkTng3emlwMEp1aUhrMHdISmViczR1Ym9VMW8rc0VLZGh0djJq?=
 =?utf-8?B?VjlzdlVNTFVpbFRhZVRqclRsS2dDVlcxM1M0d2ZwYzZlY2ZJRDlyY0NKZ0pZ?=
 =?utf-8?B?T2xFSWRSVC8xdWpMQlNMaGdIa2lMRHVSc0ZPczBVNGVZeW5wTWRFZzJxRUt4?=
 =?utf-8?B?UmRkSzdIQXFUSmFXTVo0cXdKay9ydkc1cHR6eGxpYWI1T2NJay9tQW9mQ1FD?=
 =?utf-8?B?bGR4bi90ZnJJNW10Z093WWNHUVM2YUhoN3RROEpJdTQyZ0hOWHo1MVpuQTJY?=
 =?utf-8?B?cmdNMFVCeVFNZlJlRnVQNWhIaUtZRlU4RmRmdnZPZVhKd0c1aCtMSjRmM2Fk?=
 =?utf-8?B?bnMwdXBIS2pBM0x3anQ0YnNQb2Z3QmhrTnEvNlJwazFiZDdsemFFcy9LNlNR?=
 =?utf-8?B?SkpVTjU4dUxtQ3pRZ0ZYaTZOd1lVUllQWmhFZ1paSjFxdmxrZUZBbWVEZEdE?=
 =?utf-8?B?NjIrU3lKYW9nVXA4QzVnNmRUTFVndjl1YWQyN0hVa1VsSFJwQzY4N2tWSnFL?=
 =?utf-8?B?UmgyZDB5OWQ1NjRjeEN3YjRxL3hoV2x0TE9SZFdHekpCcS9jTTFYa1JJTmVU?=
 =?utf-8?B?UVh4c2N1UHR0YXduKy8wYm1laDhwV3NFbTV4UjhPM2ZnUVE3MGhxUEI2TS9E?=
 =?utf-8?B?NXlUTHFmT3lYUTRqMUIxRFhkNmtia2dIQWxiaEtWN2JIYmptc3BtWnQwSDhQ?=
 =?utf-8?B?NHJWU0dTbkF3VkdwdmJJanlUb1RXa0dRRi96ZGZHY0xKeXpmUGZaTi8xTDF1?=
 =?utf-8?B?SUNkelU1RnltaGdDU3hoY1NGN0l6ZTc1NS8zdEVXR1FsRVRkaEFiUXROT1cw?=
 =?utf-8?B?RjA0RGxuc29MMVhSbStXaVM2ZnN5bkl6aVJIWkdDZ245dU5MS1Z2RHhma1ZM?=
 =?utf-8?B?dlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b11992b-371a-4bfb-5a9f-08dba4ddd6ac
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2023 20:08:10.2047 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZalQr/jqPSnC2/4IW9YD71wUAeIy/0BUQwPElz+NC8JznbcgBG2YEqsTo5KWusXgsIG9WIoA9uCYI96TuCrEzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6178
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692907694; x=1724443694;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yX+MQSM1ccmDV6TIoTHohmn0TLGtgzZ2+go9DsdmZBE=;
 b=fIKBnEqASbM6n+eOva32GtXnhnuivXXyogBk76Umqn4FyopmVkKCFKt+
 VWPD5LdjHeOU7c2zBq/Ir2WF9ltsW9xEgKY8DpOG4GIdz27gSIY/kSiWb
 k5xx2i1q6GBYVzcUZ/WVgmRXjWYU7HMNgtwjbqs5mFYm9PGoABQoUBxP1
 CHoCp1vqnVKDXr4mJTSbWRAoiLCmsfIaeIfAWpbqaYlCuXLLn5AOwlBui
 MWFonQAWa3f7P/NIKhRGv3FxZeNsXmhQwB+zz/drnSy9NS8jHaUPeItXL
 AeSuzSfSDa6ek2dyjgCJ/bkHVZUS488zTV5FeaM8O72cG7bRLdSv+QC+Q
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fIKBnEqA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] iavf: remove "inline"
 functions from iavf_txrx.c
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDIwMjMtMDgtMjQgMDk6NDYsIEFobWVkIFpha2kgd3JvdGU6Cj4KPiBPbiAyMDIzLTA4LTI0
IDA4OjQ5LCBBbGV4YW5kZXIgTG9iYWtpbiB3cm90ZToKPj4gRnJvbTogQWhtZWQgWmFraSA8YWht
ZWQuemFraUBpbnRlbC5jb20+Cj4+IERhdGU6IFRodSwgMjQgQXVnIDIwMjMgMDY6MjM6MzcgLTA2
MDAKPj4KPj4+IEZyb206IEphY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPgo+
Pj4KPj4+IFRoZSBpQVZGIHR4cnggaG90cGF0aCBjb2RlIGhhcyBzZXZlcmFsIGZ1bmN0aW9ucyB0
aGF0IGFyZSBtYXJrZWQgYXMKPj4+ICJzdGF0aWMgaW5saW5lIiBpbiB0aGUgaWF2Zl90eHJ4LmMg
ZmlsZS4gVGhpcyB1c2Ugb2YgaW5saW5lIGlzIGZyb3duZWQKPj4+IHVwb24gaW4gdGhlIG5ldGRl
diBjb21tdW5pdHkgYW5kIGV4cGxpY2l0bHkgbWFya2VkIGFzIHNvbWV0aGluZyB0byAKPj4+IGF2
b2lkCj4+PiBpbiB0aGUgTGludXggY29kaW5nLXN0eWxlIGRvY3VtZW50IChzZWN0aW9uIDE1KS4K
Pj4+Cj4+PiBFdmVuIHRob3VnaCB0aGVzZSBmdW5jdGlvbnMgYXJlIG9ubHkgdXNlZCBvbmNlLCBp
dCBpcyBleHBlY3RlZCB0aGF0IEdDQwo+Pj4gaXMgc21hcnQgZW5vdWdoIHRvIGRlY2lkZSB3aGVu
IHRvIHBlcmZvcm0gZnVuY3Rpb24gaW5saW5pbmcgd2hlcmUKPj4+IGFwcHJvcHJpYXRlIHdpdGhv
dXQgdGhlICJoaW50Ii4KPj4gVGhlIGNvbXBpbGVycyBzb21ldGltZXMgZG8gdW5leHBlY3RlZCB0
aGluZ3MuIEkgd291bGRuJ3QgYmxpbmRseSBob3BlLgo+PiBUaGlzIG1lYW5zLCBJJ2QgbGlrZSB0
byBoYXZlIHNvbWUgb2JqZGlmZiBvciBhdCBsZWFzdCBibG9hdC1vLW1ldGVyCj4+IG91dHB1dCBo
ZXJlIHRvIHByb3ZlIHRoaXMgY29tbWl0IGRvZXNuJ3QgaHVydC4KPj4gSWYgdGhlcmUgYXJlIGNo
YW5nZXMgaW4gdGhlIG9iamVjdCBjb2RlIC0tIHRoZW4gc29tZSBwZXJmIHRlc3RzIGFzIHdlbGwu
Cj4KPiBPSywgSSB3aWxsIGFkZCBhIGJsb2F0LW8tbWV0ZXIgaW4gdjIKCmJsb2F0LW8tbWV0ZXIg
aXMgc2hvd2luZyB6ZXJvIGRpZmY6CgphZGQvcmVtb3ZlOiAwLzAgZ3Jvdy9zaHJpbms6IDAvMCB1
cC9kb3duOiAwLzAgKDApCkZ1bmN0aW9uwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9sZMKgwqDCoMKgIG5ld8Kg
wqAgZGVsdGEKVG90YWw6IEJlZm9yZT0xMjE2NiwgQWZ0ZXI9MTIxNjYsIGNoZyArMC4wMCUKCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2ly
ZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xp
c3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
