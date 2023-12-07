Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C75809679
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Dec 2023 00:16:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 240F542238;
	Thu,  7 Dec 2023 23:16:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 240F542238
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701991012;
	bh=Fd40OWxcXs3B92+RAX7KqcSNKkoDog5SmJ9eFHQUQV8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XWDsMwxT0fB0vZTpx1sHNpdHs3Gr8Fx57QuOpdajFqq5sKp4pD7cmk3OSNqt1vewO
	 YnSNUX/SJGJcCmW01x8tw+bghckLEuyJi/XBUOfa/QgRz9AvzFnd0aV7qgY3DkabvF
	 osVlEG193UsdSgAJKMoTmJIjEMAUjyDGGk3pQZs6973fBhr93QoBM8LyLk/9QGBMYM
	 HDz6oJ7ucix4FWObmYBfFT6RzuS3PridZWuzyRXWA1gy1FEEUmW9CCgbgwxRAre0m6
	 sl6tBaj86fp8vNUuL+/qWQAEwdEpEh0cFwSBE/Su4b4haciO9JXY0fC7S8fBpFreBg
	 ohgl+/sdY7xDQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BrEaMhhhkZZf; Thu,  7 Dec 2023 23:16:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DFE4A42236;
	Thu,  7 Dec 2023 23:16:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DFE4A42236
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7F38A1BF34A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 23:16:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 62BAE60E73
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 23:16:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 62BAE60E73
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CZcbwGbE6EwZ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Dec 2023 23:16:45 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E94F860E6F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 23:16:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E94F860E6F
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="1429878"
X-IronPort-AV: E=Sophos;i="6.04,259,1695711600"; 
   d="scan'208";a="1429878"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 15:16:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="721655901"
X-IronPort-AV: E=Sophos;i="6.04,259,1695711600"; d="scan'208";a="721655901"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Dec 2023 15:16:43 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Dec 2023 15:16:43 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 7 Dec 2023 15:16:43 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 7 Dec 2023 15:16:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q/L0Iprsa4tKs7U6c4SKMVYf+FUEreCqgmIjT/0j2OuprVyGoLmE/N+cIUcRR5y2X66PzHoFA1+Di8gktckEEbuy1a5WG8G/8y8+iA4UaiNmWg8N6i9EbvbDLTEQzJW+q7tj57i6Ot17hGo+hrnD1hlEg8u5UpMcnINcXkcpYjij+v8y+YK5YK5XorJ0eeAkop2cuAbp4saWdNSaxdjylH28sURszJNO0GiBwtdaQQ2OO3sONAD31tv1Xm0b0HnTGpKD+R0ogzBx2S8fAiBQjZsslXzxrvt5nI51q/ETkcAxZBhauRtc1muklTRo78QjNQp34rd1RFJDh2Z36LGyNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CeDFOpZK5Zw2LYIoxpuS/hfITsf6vNX+gAQPMQJscoU=;
 b=eSGLAYqHcZro5/5D5OudawWFioW9WYDNprP5MkxP/FSmEn4E4Q+vIDpKppkbdsyuEPL+bx0x3JjsHRDhmOuV1se2AD/uaF58eQsi0dAgKJFQ780o+Dqhx+Np6Otk7a/GN50tmIi6q7czZAXYQxuJm90+aY4FQCOFGNhlYl8S5lScL2on8SdeaQfcJDtbk9KznsTm2Zs1KNrGUP3CuPATuXa2xJwWCQkYY34+qCkNk+QUhXGrN8JjVnvgR6v9E5EDZ91d7xyZ/rZMytq+gd/Ukx+NZBMebMio0QW7FKa2CbQKbZBm4lLFyyfLvZ3r7B8M5YUsIn80c48y5AogOHU4zA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by PH8PR11MB6660.namprd11.prod.outlook.com (2603:10b6:510:1c3::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.25; Thu, 7 Dec
 2023 23:16:35 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3%4]) with mapi id 15.20.7068.025; Thu, 7 Dec 2023
 23:16:35 +0000
Message-ID: <a0b249ef-68d5-4c46-e059-0346c3d224f5@intel.com>
Date: Thu, 7 Dec 2023 15:16:31 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20231205112840.149813-1-jedrzej.jagielski@intel.com>
 <20231205112840.149813-2-jedrzej.jagielski@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20231205112840.149813-2-jedrzej.jagielski@intel.com>
X-ClientProxiedBy: MW4PR03CA0029.namprd03.prod.outlook.com
 (2603:10b6:303:8f::34) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|PH8PR11MB6660:EE_
X-MS-Office365-Filtering-Correlation-Id: b9d0297b-91da-4184-cd08-08dbf77a8e2c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GoQW+pJ21bB11kKOUcw4WjrHDKWPni9WZdc8ErLAc+r86r/+rpjIIsyiVw96k/ChfuGKs5r+iDQuFk6ASDuu3nU/0h8RhiewhMDvYHyGikUCUzOFLIX4tIO8JLbAEoUkWBJZ+DSFJlxI/xDF9mCI8ZvAOjZ5zvzgGixtWYnWrJxdtiUCUA4p8zuyLYAJicFoeWL2QemuBSld0BZVkFlOMzfAYsTeLDs8F6tmv3Mw76UupyKehtDDmVxuGxZ71zKhdRzxpb1bQ5wQ+6D8GTUgQSQyVXxi8SH7SotSDE+jR5XZ2zHj1X33MxQcHemw0Lg/6xEg18LdbSXmH7BA1IEg3bVizyAgcPrNunU5oPv/+MBJm55GAAEzT+me9FhI+F6foHge1PHMWIYz6RJl7m8biMtKEojwrMVOgv1bcJf53mHgPAAvDzER3GoK/yDw6KjGS5MScrCrzgUjmJPCq3HBQJVEXXGcXHhoQnqMzu0UiA+HLseaM72aeq6DM/pUEhapnCh/3d4sRr/fLizuOI3Mv+57lkgs5baprA8vL16+bakKHRg6yROJYRqHKkfkidO4bwqgkP/0GZglGXtKEYKpNo0QNWh+9bF/M2pH0/EiivLSAHc2WM5xBbtA5hcnfMJM0UaVhoqJsIQj72CO8A4ekhbanqf8YEDpD1VpEoy8QWnD80XsWg3narEPMwb4QAEf
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(366004)(39860400002)(396003)(136003)(230273577357003)(230922051799003)(230173577357003)(451199024)(186009)(64100799003)(1800799012)(6512007)(107886003)(2616005)(316002)(26005)(83380400001)(66476007)(66556008)(6486002)(478600001)(66946007)(6506007)(53546011)(6666004)(5660300002)(4744005)(31696002)(82960400001)(38100700002)(31686004)(2906002)(41300700001)(86362001)(8936002)(4326008)(8676002)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RTBleXJLWE5iWlgrUXA3SU0vVGRPVURaTzJHSnhQT3kxTlBlREV1MFJnT1dN?=
 =?utf-8?B?L2QwK3hqU0VubUNnNWFUK2Jvdk81Vk84NG5QT2xTT2xuTXV1M3hJQmZ4RUNx?=
 =?utf-8?B?a1NlM1BOZ2JvQ3QrUU8xQmptWHNaOHdZQ05KRkRveEEwb25XZ2NWSnEzSlpH?=
 =?utf-8?B?bmRCNTdZNDIyL3E4VWZDbytHaFl5QUZyd3R0OTVOaW5IWElBeUZZKzVuYUJS?=
 =?utf-8?B?SEJEMndMOFRmRE5CNWpyRjdmTW54TFU4QktFeFpid0VEbGVSUXBvVEkzc0tm?=
 =?utf-8?B?eGdUSkppcWFKWDVHL292T0x2b05CUFF6WWtmNVZNc0tVWXRKcU84Zi9td0E5?=
 =?utf-8?B?REgyTFpIbkoxWGN4OFpGbkFtanhxM08rSldMellMR0t3aEZsSXpDNkFZU01M?=
 =?utf-8?B?VDNUNFp3VXNzZk1TSzJSTnRpUzJjYXZPWnFicnBVam8wUEpGT254bTgwcm1j?=
 =?utf-8?B?R3NRN2JtYWttNjJQclNaRkUxRFRqbEZyYkZxNFFxTDlMTkJWaE5wTnFQTUdo?=
 =?utf-8?B?d2V0SU5Xd0RNcEYwY2k1MlJwcEJkeUFyc1EwN01kdS9Da0d2dEtsNzJPTUZ3?=
 =?utf-8?B?NUkva095LzF5RDk5SHFXd1JRWkpBTzE2dkg5eUcxUWQvYmVGOE9kQUJ0aVZ3?=
 =?utf-8?B?RzRHenA4L29JenZsN1ZDNXQ3cHJtbVhnRlV1WHlCTkZqRUFpNjFBTkxpNWo0?=
 =?utf-8?B?QmRweTlxRjI1R2had3BmbjdZYVh5Q3ZYSjdNRXFKRkRNYW55RTQxU1cwVmt1?=
 =?utf-8?B?bGd0MHNTWXBtOVVCREhsYyt5ZG5oVFY5eU4zMmJPVDRPbDgwdFFuYmxiRlJK?=
 =?utf-8?B?WG9Zay9VeHVPY0RmbklaZzdHeVIwUllOVFI3Y3FOT1FQWVdFSXkrN1ZXaHU3?=
 =?utf-8?B?Y3FCK2RudjNxNHlSTnp2NXVnVU9TZ0kreFk3dkRveURIQ003dndYb3J5elNZ?=
 =?utf-8?B?QVVUMGVLRnpPSXVJaVIwNnQ1VlF2YnN4S2RGa0tza0Zxck96eUpITnRCNXZy?=
 =?utf-8?B?ZlcwTWNlb2hvVGNIakN1VVBudUdvdE1DYTczV0MxUEVqYlJtWnV0ajN6WFpt?=
 =?utf-8?B?MGdDSmwyZkJCM01pZjd4R3QvcGFLYjM4OGhNMWtGY0lFQ1Yvci9adlV2bnJw?=
 =?utf-8?B?VHVuUWV4WVNERXF0Y3p6dVlvSldXdk1oaE11bi9oNXAyOFYwZXJzdGdiTG8r?=
 =?utf-8?B?YUxNSi9lbDFpQlJzREdCc1NGbmV4MWhHaFRUOEJ6WXVIWEVvcmtZd0prRm5C?=
 =?utf-8?B?MHptbVc5YWp5VHNJaDk4Nzc3QkJyWWlGVm56aGFlZWhKZFJXWFgrSmtJTWZH?=
 =?utf-8?B?bFZ5WWdvWE1Mclp4SE9TSFFyZitLRjRUK0YwdlFXN2I4YWZncFhRK25BcWtC?=
 =?utf-8?B?RnpXNmdTa2RNeEF3N0FGL3FCTGtGaDBZaHAvbitvbmtNZDBvT2lrS2ZVOHNG?=
 =?utf-8?B?M1F3cnBTUlJSNjc1cXYrZ0xjdVBDMmFqTU1MdmRIcjhPR2JZckhUL091VFU5?=
 =?utf-8?B?eUdpNkJ0S1RnVUFPZ3FIYWZLQXVNa0sxa3dxbExKdkY5eVFMOFNiRkd1Z1cz?=
 =?utf-8?B?NE5OZGljUTNvNUc3NXpNREtEaTFua2E5dnJHUkszZGhtOHdiV0J2VkRZZkRD?=
 =?utf-8?B?OHJqU2h6MSs3RGw5ZXdwanZvU1ZUcHJabUNmVEZsY2hkRUREc3pjOU9KMWVu?=
 =?utf-8?B?ZE9CUUtvc2ZhMXhEalNidVlPMGJ1TUFZZTljc3ZvdytyQ3NtRnBibFIybW93?=
 =?utf-8?B?S1VYVFpQL0h4RndRemZlSkE4dTBmZk90R2pWZ3NySkNKdXhSL3JDSEdQcTFv?=
 =?utf-8?B?OXE0bVV5OTVXbFBEQmptS1UzbElha2xZMmZ3UFI1QkZ4Ulo4dDNNTEdJUVNj?=
 =?utf-8?B?OWtqS0x1WlRrbzQrUEhMVHBoQW9pcUMvOEcwWUY2Ny9FbGE0VUF2Wndic2M0?=
 =?utf-8?B?TnN0WEtHd0hPZk9EeExtcUJ4QTZJaWlSTXZnRVhpYUd1QWpoRExCbTM0L1Ew?=
 =?utf-8?B?L3d1VmlabUdTend1MitmT2hFM2JKWlVSdkZYb3VuVis4UlRMVUVuWVRROCtM?=
 =?utf-8?B?dlRTNW9pdHpzVUdxT2dGRVZEaUt1Y0dpSUozTFhtWHZJRzBaQW80SHA0cS9x?=
 =?utf-8?B?UXh0VFhFZzhuR1FnS2UwNGxTQmJQak9RRWtxRE4ySmVsSGgyNWxOQ1J2UGZ2?=
 =?utf-8?B?OWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b9d0297b-91da-4184-cd08-08dbf77a8e2c
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Dec 2023 23:16:34.9660 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eqSHj4a2XCFg3ifGQRG0nA1w/Ir97FaQw+XdEwBZJN+/5a4qaBUtbl8wxGJEohQ4tubx4KuVkeUdQ5KjBr138GKQjCr59RYylefieeUoIy4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6660
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701991005; x=1733527005;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kojVfVYByTKt97z0H8v76sqlXE94hikgi/Up+NDSg8k=;
 b=TzX8R0UXmnOHqkoHvOgut/7Y77lrSL95NgCYAwqCBnqxM9lZUDHm8TZk
 h6pt7N2SBbzsaXVJKKYt51vF6DKNPGjG2dR52AbyS4mNoDclUsLHQZKHl
 98Fvtj4JovPNgGoZSSYwPBH5EaAHI9Y3iG0W+bgqoJKjiuJEuYOUumhoh
 WpFG7ZZset1BHqGKYEboMrVj4urewXhJOwi8nypHILJcBnHWe6WJSmovS
 HJS8yLdMLkMoQpgW5KvGK4xXkDBmzg43dF8du7vpBUZ6Sf4Kwfsdc+rD1
 TWFmhvEWdoFNh6MQD24l8Y8akkHgfyubrbNkHJ7SQ/8O6f35dkC1Tb08W
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TzX8R0UX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/2] ixgbe: Refactor
 overtemp event handling
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/5/2023 3:28 AM, Jedrzej Jagielski wrote:
> Currently ixgbe driver is notified of overheating events
> via internal IXGBE_ERR_OVERTEMP error code.
> 
> Change the approach to use freshly introduced is_overtemp
> function parameter which set when such event occurs.
> Add new parameter to the check_overtemp() and handle_lasi()
> phy ops.

These patches don't apply. There are also checkpatch warnings on this.

> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
