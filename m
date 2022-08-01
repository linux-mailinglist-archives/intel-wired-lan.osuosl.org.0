Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8F55865FC
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Aug 2022 10:06:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 05DC640220;
	Mon,  1 Aug 2022 08:06:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 05DC640220
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659341211;
	bh=PIgpRsWTE2kRwQsnZBRCKaUyQTYicXT3LZDwvfjphq4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eWauTZguQVovwWGF3cpdYFjVSZNed12nKdft0WdA7n4QPUXZujUqq4f2kXnGvRdCU
	 vGJpkffFyEIsrt+WcjFk/CC2o25QS/p8mS/rPXcMCIRtinQs/33NiIY9lrQRn6lOYT
	 +3XNEL1cR/KAhJwJ3I8SmoVp+F5TMOGN4plS8HEJxPSKrQ1B+MoKe8a4b42tpnzNwq
	 jVXV20daqhkDvx+0udMEJ96VxeohHcHfD5dxPyB1UcC3JFQ6/DUiSBgFT+QRR2fEXt
	 SI4ogrnXlnTKHaeGanZ2kMvevYbhG/1m4HIL9HhEmwlxXMtvL1KCvWUZItpAlPbGBH
	 /Gz5QMcvYlpFQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id flyt5rG0qeHJ; Mon,  1 Aug 2022 08:06:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D7ECF4011C;
	Mon,  1 Aug 2022 08:06:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D7ECF4011C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6ABB01BF2FC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Aug 2022 08:06:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3DF684155B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Aug 2022 08:06:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3DF684155B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gNqY_Z7Cgv7i for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Aug 2022 08:06:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 11C2F4156D
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 11C2F4156D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Aug 2022 08:06:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10425"; a="286649331"
X-IronPort-AV: E=Sophos;i="5.93,206,1654585200"; d="scan'208";a="286649331"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2022 01:06:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,206,1654585200"; d="scan'208";a="601953733"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 01 Aug 2022 01:06:40 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 1 Aug 2022 01:06:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 1 Aug 2022 01:06:39 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 1 Aug 2022 01:06:39 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 1 Aug 2022 01:06:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ewN/XNJs1lcVD8xOIvvqpW0Po+mszdUmtBuAX8oni7t0+g+lDYKpBZCS/iTWL/E6MvSFUjscfqD4zv8sEDOrNCH8uws/VHXDkpxwPZF/TawIsrVAZirUMIKUgJl0MjrQHy7uLFPKJLasg8u1trL5+b3ybRereK9D5pxtkSbroM/49RG27ZV6+j2uM7CEIYQonpesjJvEERY7QllY7q97syBlyi4PQY/1rNEk9JmEo5QIuJk4NaqueF2mXNGyXmZI6BFLQzRijmV1NlDhuVi56EwJ9YbO9e2C/a5M49kJB85KbK2C7AbKAKi9hPZ/r8sZSRq14WBAAAhmRFMvOsb6Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d1P010Ux3whPTbZhhaHIjHhlMl5iuLEABwuEf/fcKX4=;
 b=AA1Veej22Ela6367q9H+zCrOLQMOoK/wLjTNaig3QGUpBReCVRrwKe0FWp2Q59/zDewjSzYFmxD3R9m2Ifc9ToZzr77WDkEBdSgDflBytu01sB4/LbmYo0clmUcCpA2DLyBOmFwfAda1QCh+99CRImzC2s1vbf3rRZlo2t0FX/ofDibRspd6kd6jOO1W9JE3KIYshr7C+yKg8Ud0H0HGNQwaPm3NDcoTW1jbZXnvxNYqzfm4eW0mYVqFziGkmgZ6scoOcCPpau621RFgp9DNRZOGLOFOS/6RhCc3kCKrAmzX3jfUsjOKc9pNKXWRiioGKkW/kvnVuSGiwEQSZbYErQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3413.namprd11.prod.outlook.com (2603:10b6:a03:8c::29)
 by DM4PR11MB6214.namprd11.prod.outlook.com (2603:10b6:8:ac::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5482.16; Mon, 1 Aug 2022 08:06:37 +0000
Received: from BYAPR11MB3413.namprd11.prod.outlook.com
 ([fe80::6423:dab9:c2a3:41d9]) by BYAPR11MB3413.namprd11.prod.outlook.com
 ([fe80::6423:dab9:c2a3:41d9%3]) with mapi id 15.20.5482.016; Mon, 1 Aug 2022
 08:06:37 +0000
Message-ID: <398129b2-be77-fe06-b58d-34e53c219d17@intel.com>
Date: Mon, 1 Aug 2022 10:06:32 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220728140426.664140-1-anatolii.gerasymenko@intel.com>
 <20220728140426.664140-4-anatolii.gerasymenko@intel.com>
 <5847d865-6959-9ff7-a92a-dffdc503b780@intel.com>
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
In-Reply-To: <5847d865-6959-9ff7-a92a-dffdc503b780@intel.com>
X-ClientProxiedBy: LO2P265CA0322.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a4::22) To BYAPR11MB3413.namprd11.prod.outlook.com
 (2603:10b6:a03:8c::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c95c92a0-a372-4212-c84b-08da7394c1d7
X-MS-TrafficTypeDiagnostic: DM4PR11MB6214:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: C0Q3XHD1yJmd8llQKIuBuJgL6rbtIGsOaoBGrsB8Cw7nkgXgK03HcJAK6YapV6nzxy6/ydLmF2z3mb4f0ncKqfEKF42Sh01aUIfWqxIE/e+JgazIb9r2xe6i6/3zRoQ07G0FfwHTnXDl3D8ExTO15VMQPItc0P4nI7/9Lci+l5Do9X0a3EXPDPcnYlmGtZFHkDY7m/86bCY55OLJSI2uKha2WPvZ2iOkQn4Giu6tQmuHNZPpYsWiVOilWr6UV05lYqF+R8gjYYc09dnijfYPWLh7syZ0cieAH27qeqpH2RP40jN2XwBUVl5dUptSjQpObuEG7gIFDksi7GotpKa7p0TVNPTpLxWFUNfZ8kBG00TfCQ00FsjPSbC/3LjD0jN+gjcFyCOXUauSngx/e0aosqWl7eUNZ5uXVWhpkpaqoBroAQ45WGLUo7wlaaqjqEXkfuQPpiLjBrzhK4fC/RQZo0Jv9DV+Si7eYwMqfbOVRvhMhnVjQfkBcQN9nVbiRwgi1Z4O76yFXZ9v8oYDvMNJO/sB9/jbwtf19DdS5yjTcq69iBUYFcIGOhJWn1SHBDFENqtrSWxnZDYbUEAgLFO0ieDMdKr3pot8xe25j4j0zHC2xpWEabqkFFeqdwhBN56XG/2fWu44WX3r7ZLOA9/nFVz4yvuCdIeGZ7AcROGTDnjTsGoWAuM3a7T2nkGFoOdXlvMWuoWImFb0j+EasuqQr6TBzgkKbVCDuTXOcLlXKQe0L4WdInJYzqANaezjlH3yMCEFtW4tFjnNDFUXLE+oy/ygcWI5Ca8jLALWd9JiXiEWA7KXzI+wCsYPl8K5dYMS5IIxBvj0zTCPOwfhnTsXfw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3413.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(396003)(346002)(376002)(39860400002)(136003)(6486002)(31696002)(53546011)(86362001)(6506007)(26005)(6512007)(82960400001)(478600001)(5660300002)(41300700001)(8936002)(36756003)(2906002)(31686004)(316002)(83380400001)(2616005)(38100700002)(44832011)(6666004)(66476007)(66946007)(8676002)(186003)(66556008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Mlc4SE5IKzhGT1phbXJ4SnRNeEpPM253b3dkSDJnbEQ4a2ZKUFE3MWFwcEFh?=
 =?utf-8?B?YzBnRWxFVGZjcERNaTFKK2NkTVB5dmZFN1BWeGlMRnlIM1ZhN293TGRoNGhL?=
 =?utf-8?B?amM5ek1IbnVEM2VqMzlmYW1jdEU3cEVzaDVybm9ic2FQQkFtNFFyU0txVUwr?=
 =?utf-8?B?dlpoL05UelB1T21mSkJ3aW1yRDZOS3hhUzlHcWwxS0tBcGxrVHZJSktRZHAr?=
 =?utf-8?B?bDlYU29BaU14dXlXQ3d5a0M1RlRYSjAxYVNnaC9PN05WMEUvODJWYUd4cEpG?=
 =?utf-8?B?WTRYZnVYWEFMT1RtdG52NGtOZk5XNTRxMG11bW52TWFWVm5YUTZMY1hDajIx?=
 =?utf-8?B?NC9lSFhCc2tMMlYxS29CeWZ5bVhmQjRlOEd5OWtJVXZJS1B5bEJSZXN5aWFX?=
 =?utf-8?B?WElNRTBaMG5FUlJtc2E2OHdRak9qbTA4YllmNkw2WWd0KzR0NWdCR09JVzk5?=
 =?utf-8?B?U1cvU3hNM1lZYWVPdDgzSlV6VEttTXNpM3FVb0djOTE2c080azJNT0x0dUhR?=
 =?utf-8?B?VElzbVN4R1BmL1BLM0N6ZURDYkZTMjgrWVNpTUxaVE5BZVFKdUkzMWlkRFJj?=
 =?utf-8?B?VEFSTzA0UytSUHFYVDNpWEVvdG13VDRjbEZiRXovNURFWk9GM3Z6WHNraVJY?=
 =?utf-8?B?a2J0cEJOZ1lsbitCSEF1bG1OaFgxYVFzUDdhcDk2SXc2U3dvcDBOQmxzc0t4?=
 =?utf-8?B?U2pCMnBLQm1VVkZkSThpay9NYUtkOE9FdkU3NEFUMU1QbFFWUFZqYlhPL01D?=
 =?utf-8?B?SGVqeU9aR1NaQVY3ZDYzMDVqak9wQTJCYmxjK3lyZWdmeEZjb2dpN1ZiamdY?=
 =?utf-8?B?NE1FYW1EY3dIaTdaZ2lTblNOVUxXTStzK3IzV1QrSmJXdG5hR1pOK1hRMmkv?=
 =?utf-8?B?cXJvQnUrbEM0UzRJcWJQTC9tRGtHK3p0MDZPdzRJTzF2RlpqdHR3eGpWNFRP?=
 =?utf-8?B?SXdpQUVoWG43enAweTFDeTREc2wwY29LMXg5amtIN3E4VDR6bHRFa1h6VWRD?=
 =?utf-8?B?Q0E1TTByYUxOcmlKOXNCcWw5UnJtTFFPdXphQ29KZUc4andaSnZQZHdUSWxs?=
 =?utf-8?B?U1NUK01tYVEycG9sUER4STBRa1ZoSmxMY2VlTUt0dXF5U1lEdnE1OWUrSmg4?=
 =?utf-8?B?eFRsanRkSVo1dWI1TjdCeHNqQWJvd0QxMWJsNjBvOVFlUkFkNXRIV0xLR2lj?=
 =?utf-8?B?NytWVlppdTcrdURIWXk3WldxMS9GUDFwQ0NEYi9UVkYycGZpUW1YVlBHOCtj?=
 =?utf-8?B?ZXdZcVQ3dnRCd1g5bWd6KzBnNlpYNjB1TXptRFllVlRSZUhFSWFtRGJtMDJk?=
 =?utf-8?B?V0s5MW9tUkFlTjBvVzU5eUkrUTlSR1JpN2ZrTncvRWFGT0lyb0pUTjNBYlQv?=
 =?utf-8?B?OVkzek81UDdML3VjNFJFZEo3LytueHRlM0RVdmVoNTVpUjgrTTlUY2ZQOU0z?=
 =?utf-8?B?aEtBaEVyclpJZ0xIWDIwVkp5OXV0ZTNjM3llT0hBV0FjNDFUOG5rZ3o3RWx6?=
 =?utf-8?B?OURLd1RqbmZvRXdnQzB3QmplYTE1Q2NjWkdnV1RYcldvdk94YVRCanFRREZJ?=
 =?utf-8?B?aThMTzcxL1NuN21JR1BmdWpiZjFER1F4alpkVmJyUmJnMG9FbklQelZpZjR1?=
 =?utf-8?B?RXlVOFFBc1hNOGpZbkNOU1RiWGJXbjQ2MHJBNStlRlRDWSt5eXpNQ3ZlLzJS?=
 =?utf-8?B?dm43UVhsTTFQbHpuYUNRalNhSWFoU2VKQk1TdFlyTVVtK0RXQVBBV3pJSDZP?=
 =?utf-8?B?QVJXZUI5TXVlRU9xOXh0UHk5UlhRRWNzNi9NalR6TUxBWmhJZ1V1aXV4NVkr?=
 =?utf-8?B?VjZnOGNjVVkwM3UySDNiRGtGcktCWUFnZVlTbmwxQmFBWlRJcEpBb3FHY2FT?=
 =?utf-8?B?dFYvc1VJNmZSVWxQMHRRWTljZjRBTllFUzBObEYxVTVVNTk3S0hXajFYUXpE?=
 =?utf-8?B?UTJxNys5K0JxTitKQ2I4dzNBZG13T2xDbmlrbWs1Mm5rdFdWc0hybXgrazlp?=
 =?utf-8?B?MVRLaTc4Nkp3d1o1eGhRRFI5aUZUZUdPcW0ybERaK3FoYy9BRXlROGdnOERz?=
 =?utf-8?B?N08xRlcyYU1lb3NvTFZ1dWlxOG9leityVytIb3Y4cWRjcXp3anBtVjg5dWJv?=
 =?utf-8?B?Mld2N2o4dTBRYW5mRVBWTFV5QmgxM28zZFBXOXFvQTFuR3RzN1htckRpa2hH?=
 =?utf-8?B?OHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c95c92a0-a372-4212-c84b-08da7394c1d7
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3413.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2022 08:06:37.3032 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U4Ib4IXxmGR9pdvqqNhRsOYyU7mUdohz/N9fgGJjx97cAUSS8uSVKKQjklmkjy+aU+zCOC8WhQh0pUYGjj2/NNHqC0sgsa4qB6f02F1IQG0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6214
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659341202; x=1690877202;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=3pIHaTdw+qgUCsYXPfwb6raFpRoVjF6nvLmWQj3f9cs=;
 b=fuUOGOEAzbhR9gz8Nut/M53Rk1UJpkdQ0jsleCiCxjGZjyUd7PJqgG9R
 V5Ys0qPwET7E88FDiEhnUvfdZ6N0nDYAeXRqbzXiFxCkN9rrWBalYr5iv
 JfkmnSXg1lHL3zaZAuvJu7GnLOdMRDr1iplEaZFgupiZib+5kax/i58xh
 IaRiVqvgSnyW+v6CI1vu11lmi66snghxqzV2AI6H/rQMs9G8ZvVdFiHVn
 CI+bLr+V96eHBu7t2clnxTyXqSOSoxbvSxk4DyFYoQer5VGF+Nxm5RVa6
 taeiAXasSG7+0jv59flNJHZuuiekwneMTEXAMQ7Fj4YnJSjFfCxH8CO64
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fuUOGOEA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/3] ice: Handle LLDP MIB
 Pending change
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjkuMDcuMjAyMiAyMDo1NSwgVG9ueSBOZ3V5ZW4gd3JvdGU6Cj4gCj4gCj4gT24gNy8yOC8y
MDIyIDc6MDQgQU0sIEFuYXRvbGlpIEdlcmFzeW1lbmtvIHdyb3RlOgo+PiBJZiB0aGUgbnVtYmVy
IG9mIFRyYWZmaWMgQ2xhc3NlcyAoVEMpIGlzIGRlY3JlYXNlZCwgdGhlIEZXIHdpbGwgbm8KPj4g
bG9uZ2VyIHJlbW92ZSBUQyBub2RlcywgYnV0IHdpbGwgc2VuZCBhIHBlbmRpbmcgY2hhbmdlIG5v
dGlmaWNhdGlvbi4gVGhpcwo+PiB3aWxsIGFsbG93IFJETUEgdG8gZGVzdHJveSBjb3JyZXNwb25k
aW5nIENvbnRyb2wgUVAgbWFya2Vycy4gQWZ0ZXIgUkRNQQo+PiBmaW5pc2hlcyBvdXRzdGFuZGlu
ZyBvcGVyYXRpb25zLCB0aGUgaWNlIGRyaXZlciB3aWxsIHNlbmQgYW4gZXhlY3V0ZSBNSUIKPj4g
UGVuZGluZyBjaGFuZ2UgYWRtaW4gcXVldWUgY29tbWFuZCB0byBGVyB0byBmaW5pc2ggRENCIGNv
bmZpZ3VyYXRpb24KPj4gY2hhbmdlLgo+Pgo+PiBUaGUgRlcgd2lsbCBidWZmZXIgYWxsIGluY29t
aW5nIFBlbmRpbmcgY2hhbmdlcywgc28gdGhlcmUgY2FuIGJlIG9ubHkKPj4gb25lIGFjdGl2ZSBQ
ZW5kaW5nIGNoYW5nZS4KPj4KPj4gUkRNQSBkcml2ZXIgZ3VhcmFudGVlcyB0byByZW1vdmUgQ29u
dHJvbCBRUCBtYXJrZXJzIHdpdGhpbiA1MDAwIG1zLgo+PiBIZW5jZSwgTExEUCByZXNwb25zZSB0
aW1lb3V0IHR4VFRMIChkZWZhdWx0IDMwIHNlYykgd2lsbCBiZSBtZXQuCj4+Cj4+IFNpZ25lZC1v
ZmYtYnk6IEFuYXRvbGlpIEdlcmFzeW1lbmtvIDxhbmF0b2xpaS5nZXJhc3ltZW5rb0BpbnRlbC5j
b20+Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2RjYl9s
aWIuYyB8IDI1ICsrKysrKysrKysrKysrKysrKy0tCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAyMyBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9kY2JfbGliLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX2RjYl9saWIuYwo+PiBpbmRleCAxYzU0ZWI2NDNiNmYuLmYxNmU0YzU0
NDA5ZiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9k
Y2JfbGliLmMKPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9kY2Jf
bGliLmMKPj4gQEAgLTkzMyw2ICs5MzMsMTYgQEAgaWNlX3R4X3ByZXBhcmVfdmxhbl9mbGFnc19k
Y2Ioc3RydWN0IGljZV90eF9yaW5nICp0eF9yaW5nLAo+PiDCoMKgwqDCoMKgIH0KPj4gwqAgfQo+
PiDCoCArLyoqCj4+ICsgKiBpY2VfZGNiX2lzX21pYl9jaGFuZ2VfcGVuZGluZyAtIENoZWNrIGlm
IE1JQiBjaGFuZ2UgaXMgcGVuZGluZwo+PiArICogQHN0YXRlOiBNSUIgY2hhbmdlIHN0YXRlCj4+
ICsgKi8KPj4gK3N0YXRpYyBpbmxpbmUgYm9vbCBpY2VfZGNiX2lzX21pYl9jaGFuZ2VfcGVuZGlu
Zyh1OCBzdGF0ZSkKPiAKPiBObyAnaW5saW5lJyBpbiAuYyBmaWxlcwo+IAoKQ2Fubm90IGZpbmQg
c3VjaCBydWxlIGluIHRoZSBjb2Rpbmcgc3R5bGUuIElzIHRoaXMgc29tZSBraW5kIG9mIHRhY2l0
IGFncmVlbWVudD8KU28sIGp1c3QgcmVtb3ZlIGlubGluZSBoaW50IGFuZCBsZWF2ZSB0aGUgZnVu
Y3Rpb24gc3RhdGljPyBPciBtb3ZlIGl0IGFzIHN0YXRpYyBpbmxpbmUgdG8gKi5oPwoKVGhlIGZ1
bmN0aW9uIGlzIG9ubHkgdXNlZCBpbiB0aGlzICouYyBmaWxlIGFuZCBkb2Vzbid0IG5lZWQgdG8g
YmUgZXhwb3J0ZWQuCgo+PiArewo+PiArwqDCoMKgIHJldHVybiBJQ0VfQVFfTExEUF9NSUJfQ0hB
TkdFX1BFTkRJTkcgPT0KPj4gK8KgwqDCoMKgwqDCoMKgIEZJRUxEX0dFVChJQ0VfQVFfTExEUF9N
SUJfQ0hBTkdFX1NUQVRFX00sIHN0YXRlKTsKPj4gK30KPj4gKwo+IAo+IApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGlu
ZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
