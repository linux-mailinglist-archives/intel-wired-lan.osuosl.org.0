Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB6C7F1FBE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Nov 2023 22:49:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7F7AC40A81;
	Mon, 20 Nov 2023 21:49:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F7AC40A81
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700516990;
	bh=jaG9HoI/trbjmL4rljp4ahQ/JsaSf7mSNFaW/MvXPig=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UaSuXtB4ac5i5dsFUbx5+BhCvlduDOKWdKfLktAHLlkoTZRLH9YHoQZ1BmC4Xwg6R
	 EGU5EGddfutL5EOmk5fWicdewE/TryTadYILtB6Vz6pmk6kmFXCZHmZipIWHo0aw9t
	 8XDBfVeXsqtCY12cZOF5MgApwvLtzOJ+wfX57Jnz6L96MDJyWEo46Bmmy7XHwndzK3
	 +8RD9SZ5KJhjyOtWAm8UiGGXGwiO9w/Y3AGVyvv6kqjcnHdHj7Z+aIVGKBnuCO4mMn
	 I+VYAxVYD1a425DjCNH8y2m0me22C+S+eeqY9/VE4b7WKqKDD6Bk8C01fGhqxD/FYc
	 j45H+fgkRQHNg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TWD1bCEYn8GU; Mon, 20 Nov 2023 21:49:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 107DD40A78;
	Mon, 20 Nov 2023 21:49:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 107DD40A78
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E73341BF255
 for <intel-wired-lan@osuosl.org>; Mon, 20 Nov 2023 21:49:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C56F860F84
 for <intel-wired-lan@osuosl.org>; Mon, 20 Nov 2023 21:49:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C56F860F84
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tw5hyv_7nFLL for <intel-wired-lan@osuosl.org>;
 Mon, 20 Nov 2023 21:49:42 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2C74C60F80
 for <intel-wired-lan@osuosl.org>; Mon, 20 Nov 2023 21:49:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2C74C60F80
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="382102470"
X-IronPort-AV: E=Sophos;i="6.04,214,1695711600"; d="scan'208";a="382102470"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 13:49:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="1013705869"
X-IronPort-AV: E=Sophos;i="6.04,214,1695711600"; d="scan'208";a="1013705869"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Nov 2023 13:48:31 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 20 Nov 2023 13:48:31 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 20 Nov 2023 13:48:31 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 20 Nov 2023 13:48:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RW3Uw0MJLRXnmLx3P7BEane1EiWdhTZMNnPNTItHn01foID1pWXUhyk+H57t2VRSdn6CbvvAJXnOcQRoBbYFFzOvBkavFS1xAKEZ7iqP07vKFZ+3Riwuw+YZlEaCBfh9JaDOatWX/Rw1o+rBrFbDE08Ee2y3rxdzC7laEzGuwCal3C/BGNtmV4qwsFjE5nWumDlOBbr1ZYyYbJNnMI0/tphFwWJMuhUfVg1YzGjre1zq+1zB+EIGMYmGOKC5igKFstndOlaL6pzY9UJQhYhmczqxRXhdWu4KdNcYKaStG5LqP5XmkqgXWareIi2jkpkPNKCKXZkhLabzld/6qewWsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1V+KoViyvSVFDIrsMz5HQc75ly6pkbXGeHiSe3a0wQc=;
 b=Qusmqy13fsh4dGTZ3fTE7FZBppR250rHcUZYxOYm24HKlatJslMqAnYByN39dbGouUIq2Mf8hCU9ambofYD3Nd3BeXFyoo8BTLxDKfKWhTil7ahdOFDKOHQi3IfgT42CDxVQ2M294qllhSwKWGHLNS1xPaQoe+wwyQii9A1yhfC6NJYzfQuO8e2EtNoi999orQoXSCTMIRQzCFXdXpjmPHxH7Jq/pOD4lgJ92m9w8nVcK7Zz2aegLulYQWjqUotUHbC2cyB+g4W80xzXpbKgVo3sSG3x9BJox3MR0kdF0mXcljFhNnE7R3uDCM7gXbelFMXGQOAWlamDbDtIYI7h0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ2PR11MB7669.namprd11.prod.outlook.com (2603:10b6:a03:4c3::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.26; Mon, 20 Nov
 2023 21:48:29 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::dbee:4787:6eeb:57f5]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::dbee:4787:6eeb:57f5%4]) with mapi id 15.20.7002.026; Mon, 20 Nov 2023
 21:48:29 +0000
Message-ID: <705464ad-8559-4096-a31f-4f4b6fc05770@intel.com>
Date: Mon, 20 Nov 2023 13:48:26 -0800
User-Agent: Mozilla Thunderbird
To: <intel-wired-lan@osuosl.org>
References: <20231120112726.149409-1-jan.sokolowski@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20231120112726.149409-1-jan.sokolowski@intel.com>
X-ClientProxiedBy: MW4PR04CA0339.namprd04.prod.outlook.com
 (2603:10b6:303:8a::14) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ2PR11MB7669:EE_
X-MS-Office365-Filtering-Correlation-Id: c14e16c3-8000-4144-62dc-08dbea126ece
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dZIZPKCEUXld7VV46GY1sFWl+g+R9jz6aPSI73PGjXniRwEsBcQRErPDgkhgbqiURTYIca2eeTpHEaNROjNtJb00EoPT5AAjcjj4r0cxu+jNJWV/yjRLhTkBQlN+kclfWK6gFQ1d6mGo1tARaFBDCVMo0Xh6Cxr49yRcVOB/c8Mn1EenzGLqOA7VCm9amQ8wE0Kbi3S7MApHLiTaKe8l8snNJpSXARF2o9Q+789HwuIcwCkszHjtIqhmk1oenAmLzjLp/zclpivxll5LWkWcJSqJ6XjtqoIcCjpNrV8sNN1CWtnydB+tTxgiKx3aUsgvxsl2mkKZoUADzi19JjBNKS3pWpFS3ADXef9Nb6g9oUys3YiXWpGRX6qoGZVFK32hUusaPASEUb3a8L/WwWGyDQJhNWwn+7HoN9n/IOSQjpis/JOfy6O0wvRUT+4O1GOFdeTtFLaTMRjDRhpAZbUfCwGcPtrAwT2WR9G9eET5fZC6S6xI2b5vowap8eww0SLkuVmv1beoeMsJAdNPzi5tDhnfjy+qEG73ZzaNxlHMqV1UlHhFULRBxXpaIXF18GuMWwRNGEpUxbCil18Gz+S52M7ZxJH/yfDEYWHi8dN5X+8aXKydW5pgmTezPdxv9UEZOAMz2EAEb+gD+x35V3csvQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(366004)(396003)(136003)(346002)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(66556008)(66946007)(316002)(6916009)(66476007)(26005)(36756003)(8676002)(8936002)(38100700002)(41300700001)(82960400001)(31696002)(86362001)(2906002)(4744005)(5660300002)(53546011)(6506007)(6486002)(478600001)(6512007)(31686004)(6666004)(2616005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TUhMOWhKdWxZWTZDU1NTQ2hpT1huZndOb1dneEU0KzZwbDNkRUNaN2d6RCtr?=
 =?utf-8?B?Y1V1b3MzbEFyMmhlTjV5UjJPTUUzRUxpNTY2b0lGazBMMTluRUNOam9paXk1?=
 =?utf-8?B?anhMOFExUXU2WHd1MlVvK3VQajNDcmJFZkg3b2ZqS3ltZ09PM21zZEliTWN5?=
 =?utf-8?B?UXNLYVBDTGVIVTJjQisydzBNMk9Kd3habm5SMVB1Tkh1RE1Xeno0b3l4d1pi?=
 =?utf-8?B?S1JBcDZRYTBsa3pMTTNZRWN4bGdYN2NNMkdVOGdiNXFackFUem5vTGJSTVBh?=
 =?utf-8?B?Mk04cTNaVE9FYXd0WGtiN3dHT211NUFHNm14Z0M3UzNiL3dYN2RpMUxOT2ZR?=
 =?utf-8?B?OEMxeFVpaGxXeFlMdmlHdXhnZWlzamR1bmpudm1FNXZhekNYakNLeUJBbTFl?=
 =?utf-8?B?T2I4TVozMy9UQzV0cURQNFBud3VaUWxVdUNwTllOZVBRT3B2M21PZlRveTla?=
 =?utf-8?B?ajdkeWU4dHY1eVVRbVlSS25VTjJBbVVoWmp6UUV0U2RuYkJRakJycG1xMW9m?=
 =?utf-8?B?c1dzUlZ4d3g2QmQvMWhVTzN6eXdGZ3krM29iRm4zOVJ5c2RGN2p2WVdGUjJj?=
 =?utf-8?B?TGVSWjV6ZWZUVFdIeDZXUEhKb1gvSXl6MmgvSmFKd1B4c284T2U1YkFvMDVH?=
 =?utf-8?B?M1VNbUZlWVZwYzAxb2dLSllMdkNMekRvckpWV01XbVpqbVQ1eHpYd0FsR2Z0?=
 =?utf-8?B?SUxyM3N2Q1JsK3Z0SlZzWWxVV25TdUtIaHdSQ0tta0ZxeGpNWXBHcXF2dWJJ?=
 =?utf-8?B?YUMxSlRkc3ZBeTdmajBTNVprelppdXp5cFN1WFJUY2l6ZnJDSXgxdDlrWE5T?=
 =?utf-8?B?MGRVdHhydjc2dzJZQTNRUGxrdXBxSTd3Qm1PcU9rclFxd2ZNTmx5SmRMMXNz?=
 =?utf-8?B?K1NsS0RubWNDMTJ2VFMwTlhvVGpBYU9JVkNPcVhGOVpHSmN4algzNUI3LzZY?=
 =?utf-8?B?VkYvZmIxNUlYNkNFNkszSHBlUGt6YlFVODludTVyOEJ0SHJtV1J5emE2bmpI?=
 =?utf-8?B?dmI5Mnh1dTJaRGsyNEZpem8yTS90cWFENWVPTGt4Z0lyS0VEYWdaTkIycUZv?=
 =?utf-8?B?NkNRWXZMMTNFUTBSUW9UQzB6aVUxV2d3SlJIblVEaVB4WUZRNlloajYxT0ZG?=
 =?utf-8?B?UGVMT0R1Yzc4ZTRic2ZBV2NaY0dxUkdkWjVSNUtXMkZjUDIyMExqblFKbmhp?=
 =?utf-8?B?V01GcSt5YUsxZlFaNTd4dHIwM2JSUGpxZ2FvbTdBaVlqU1ZYMzhIYzdXYXRx?=
 =?utf-8?B?VWZ1ZnlTMWMwWitrV0lBNmRUN2IzNWFVUjFGWXIzQ0hjL1RFUG9UNFBDR3NI?=
 =?utf-8?B?aXhvbUFuOXVIVUdmL05NQTZadnkxY1dTUE5zUE5QYkc0Nis0ajlwOHJSMmZH?=
 =?utf-8?B?VXRuWTFpWkpEcVEvanNWUmtqR3FLMFVXUUQ5R1R2MW1MenpEKzRzaFlNZlZH?=
 =?utf-8?B?elJrUkdxbVBXci83ZmZLb0hVTERzVlpqOGlwS3lzU2M3TDBsc1puQmJBRE9O?=
 =?utf-8?B?Y0doeSs1bkRDWEhMdGpwTVNET2FKS05aZzNJQ0N6MitYMHkrQ0kxNDlOMlh6?=
 =?utf-8?B?ZFJTV3JxQWlCNHVpbEhHVWpqUUdMQzdXaENkaEVDOUpNYkRMRG9yOXQzUytq?=
 =?utf-8?B?Q1I2cmpSWis3aXVyelRNZVEwVVcySXRBQ1dCTGQvNTM3NENNN3dJZHQ5eEJY?=
 =?utf-8?B?M2JMVFp1QldYQUR0d1FJVHRUMkl0Q3ZXY3NtUEpnUDRxaUtmamJHV0ZwV3lI?=
 =?utf-8?B?SXJkczB1S0w4NXVEOHV6KzBoQ1RTcE1QM2VoT1RGVHpIVW85SElNQUNVaG51?=
 =?utf-8?B?bUU4bjhPUzBNalNHZDNpYWkwTi9FcXdra3hLckJnTnpmcDB4R0ljcEtqd3lq?=
 =?utf-8?B?SC91UXNIWTZpVzNqV1dhUXFQcmFLem4wak9XVysrd2lYY28wUjl2QVpOcG9Y?=
 =?utf-8?B?Nk9GdFBnSG83b2FzNms5bktVdWdoMUdLSXZJb3pMQVBVTm4ydEJwUVJCYnVP?=
 =?utf-8?B?bXVWaGRPdXRlMkUrNFNLQWNNbStINGNqMFcrVTJjazc1a01SRGJCbHVrRWlS?=
 =?utf-8?B?QmJVdWZUak5obU9abWVTcUh3RFNBVnJqOWFER1pWU1hwcHdaQVVTSG9HcWxT?=
 =?utf-8?B?S1pCaWdpcUhMaUZ2OHpPam1GRElpWitpM1dHWUh3MDRzbjB2WFR4UUoyZWU2?=
 =?utf-8?B?cFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c14e16c3-8000-4144-62dc-08dbea126ece
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2023 21:48:29.4589 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YhKbyi5vprUMUJa74+KhTY00m1+w9vDIvbeMntyH8bX/EyQvnB0aCEs424n5orJifBusknJRNM6DUi15oqh1BNcZh9XcANThHHMHsOVMyT8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7669
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700516982; x=1732052982;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=D9NR2WmttVsF0s2dWv99G/FKplmO/361rmHj0f9AIhM=;
 b=ZY0vBZ/nuYqmuczbfHz3k7Pk1pLuIvQ/baWrpUw4B3fUgveEPVmyUijk
 2xr+RXY60uuIbELLdnTPQ6QMRyisIfwDmg+lDl/LuI2glQn0NwQA+uK9B
 k236pbfq3BGCQKzSSiMp53o/JtHZbFpk3H0dCo1LTizKD51CGQK/4oA7Q
 DCqczUAiGbZs9dH8ugEPHZS5MzDWz0GavFK3kUjPYhVKgeqwxMEKm0EDe
 ZXXyNI/3z8OYgVvGfBfrN6oWYoa7gElnt6S7MvnXcMOs+oGhjjmsgiJTv
 SZ/au72jqVShUkyWIv+4koxhkoDBDAVGfFrRsOwlP+1TCSRRgN1e3tWGw
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZY0vBZ/n
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: remove rx_len_errors
 statistic
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 11/20/2023 3:27 AM, Jan Sokolowski wrote:
> It was found that this statistic is incorrectly reported
> by HW and thus, useless.
> 
> Remove it.

Is there any further information about what is reported incorrectly? Is
rx_length_errors part of netdev stats and standardized? Does HW fail to
report some packets or does it report packets which don't have an issue?

I mean the hardware does *something*, so I think it would be good to
have an understanding of how this differs from what we expected when
proposing to remove it.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
