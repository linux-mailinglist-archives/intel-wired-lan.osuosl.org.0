Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 583D27B67F2
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Oct 2023 13:33:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB6358226F;
	Tue,  3 Oct 2023 11:33:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB6358226F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696332788;
	bh=zpCRPwN8fDAEwJgNmVPoNli9hvLZmynSvlV6iMMfTkE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ui5yTEpHsNarsslw+AA9B9QLsIzt6HxInuGoYY8oWrgIFjxoQQA0yC/nMvEiEb4Of
	 gD4flQ0ImWBspl1RhI4bXpBkhoop8xyt3yy+RTOcJTtr7y4mxoCfIX1uuKVlbkr2hh
	 /pGtmtAw2Lt38U1xLvaaH2UTsgQnKkHexwJCSiGsXnKO5mwSJrIIlUY+0hYiSI9XLt
	 hCDJK5jLH3+qPazRs8BFih1m4wHAN7afAR1sfxmXk/WlrLsdENni0dNDp1TtN1wuZJ
	 fGK57bj8i/IRdfFzPJWDnnYRfIE8NjUyXGmDoHPy8ObKFIq3SJ8LulJJKAXpL1n3G4
	 onZ71Ii+lWbSA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GW9xaFOEThCF; Tue,  3 Oct 2023 11:33:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F43A82209;
	Tue,  3 Oct 2023 11:33:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F43A82209
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 06CA21BF276
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 11:33:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DF1996113B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 11:33:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF1996113B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FPiEQhCEs1BN for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Oct 2023 11:33:00 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7EB8960D73
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 11:33:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7EB8960D73
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="362224584"
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; d="scan'208";a="362224584"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 04:32:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="841322303"
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; d="scan'208";a="841322303"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Oct 2023 04:32:58 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 3 Oct 2023 04:32:58 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 3 Oct 2023 04:32:58 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 3 Oct 2023 04:32:58 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 3 Oct 2023 04:32:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hpW1l3Qs5sQq45acLtx06ZoNjWQJdoPpXcJ0cTXEzKT+2b2MIixUP1/vjioZVb80PdDDhBhpUcoyOm6Yy6sUTQ3v+PqbaSvIoXs1DBfIxpepug0G8mr8yVw9U3pKc+FNfxkebZt4HbwKvyAYAoLkLbpCgiu7GebmJR/OVMS3olzs0B/kaP0TZuKnaxW6TOI+NoqAkCcoRxwxxAOCbEg90pos4dKBZ5wDM6hK/uodWqDbnjRN9YNDbr8Kadmxg9pMPp0IR8E2LYYrOPYyU+X/mRjMs7Jj1IZgeICQQYtWCQuUAwRUWt0Z6m+zycuC2sfavfsv3SkwWuH7EaqlMi9wgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=06nf3lJSqNafBTME+wqPUWPK5DQKc2v/CYMWtMQYeb4=;
 b=kTvaGSgfzBbDVOI2StqgJPd1GIxsniR6q+9C12WnhpammYgKUHPIZmcOaPuvVPmwbtICD9kNm89sy812zNQxAaVTUsyRY87562WZ3ZaZ2bv22eJ2lrDnf1i4p7yZtPj5CkQExdpecNPT0o2nWpB307TaxbkYZp1Wp/uoiErZyrU1YH8oin8uKhdSMI+aplkYVUgai5sEC2CU3I0Bkn+VFd76jRy/qfUWEqcvAiUWOLyj0fVzjkvGcU57w0c1QulFjroRK7DJMOD9W+1uD6KumhXtoSlkKElbbQm1hS6oK0+OVvAYBzJZc7UgMcBxVe37rqfsjH54Yu1jVDmxCHS2Mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by IA0PR11MB7694.namprd11.prod.outlook.com (2603:10b6:208:409::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.28; Tue, 3 Oct
 2023 11:32:50 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7666:c666:e6b6:6e48]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7666:c666:e6b6:6e48%4]) with mapi id 15.20.6838.028; Tue, 3 Oct 2023
 11:32:50 +0000
Message-ID: <b71bb139-523d-f0ea-e9cd-1aff3670a91e@intel.com>
Date: Tue, 3 Oct 2023 13:32:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Jan Sokolowski <jan.sokolowski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20231003111745.77267-1-jan.sokolowski@intel.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20231003111745.77267-1-jan.sokolowski@intel.com>
X-ClientProxiedBy: FR3P281CA0042.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4a::13) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|IA0PR11MB7694:EE_
X-MS-Office365-Filtering-Correlation-Id: cddf5a4d-8bfd-423f-f6a6-08dbc40478ec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3F7YEbOsLuSZSUX/e52lSmYsvN2PhIBmT7oh7LRh1s/LwKBAiOjtOFbXGrPG5P9Q3GpixdZLHAdTvtLUPJuyueftead0q3OIYnIbQwrcfEF3I5d/5fGteLKc33Ywfj99zoT++2cK1z8t3OfFm+n8x9vYS+YJMxz7XKP1/Kbkke4JbYwdMJDHpHTTekFzfxaGwWhpEBzfC1QfBjKelwyt5G60vlGUR9T34MuhK9vQCbqkbZ3z6Q9zl4mfNu0JszPnnU20D1EWs84D+ky7+SKupzwNRX9TDVkVqwTcOzKwavvLAYzAycWeHUidD6R4hOaLzWQjvt+FQIAUtCi1gRQqrnYe8JeFCqzG3MwnBe/vpQ2q626i/FCDWYe7oOKtl/v2FH5a9WYK94517ZCw4B8NJa0oH0e7Iezg+APvpy1LUbWtAhp4pyrXhbiF2hELtSKdcColSXHuL+a+2GzqZVgjAv47KQU4JIpdGHuDVcdc8fuB/gD8j48MIv4aqIQ75mmCPm5Wt8Wo5ar7Q84qNOUgTZt7vxp1w4kR/Hr5lgV6kotd4vd5nU9iBu1P2oUyq0zvf+XAKftej317dNq64qA7wRwqDFTiBZhWlCmnhwwVUhARPJs8CVAK2tVj8AFxMbN4Pvwr8ldR3zBlelrLxCEl1g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(366004)(346002)(136003)(376002)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(6666004)(26005)(478600001)(107886003)(86362001)(36756003)(82960400001)(31696002)(6486002)(6506007)(38100700002)(5660300002)(53546011)(2616005)(6512007)(2906002)(8676002)(4326008)(8936002)(31686004)(316002)(66946007)(41300700001)(66476007)(66556008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N1loa0ZpZFVQL2VyUm9FSUx3QzRaMkc2M0pGTkRjTy9DUlZJSmNqUGNvZnJa?=
 =?utf-8?B?b3ZnNnFwNFFYZGZmU0NLREIrN0JtWWlXU2RsMnVNZisrWlZYSG9oZU51TC9z?=
 =?utf-8?B?b2tqVkRScks5d1djYzdzbENCNVZpZXB0cUdYOVRJcjUwTW52RDA4eW1xMnJx?=
 =?utf-8?B?T29zRDJ6YlJwc2lLQVhaSDhrVjVBZzJXUnE0aDBhTFRFc3F2bFpKQVBDMGpL?=
 =?utf-8?B?TTBYT2pWK2NmUm5YL0VHbFVOL0l2Z3FsY1FFSGZoN3lBQ0FIVWtxTTM1aFkz?=
 =?utf-8?B?dTd2Sys1NlVFREVsc0F5V0JTbHdKMFlQbW1BOFIwTGYyRWpaOVorMnlHZjB2?=
 =?utf-8?B?bStvbDk5dWVLcGpWNENkVmUxK2Y2Ylk5cG9DY2V6M253ekk4T2gxU0ltQkh1?=
 =?utf-8?B?QTdhUzVvWlZzdzEwVlhUZWIxUmIrTUVsYnZhcHlNUHB2Z01UdEFiVnFDdkRp?=
 =?utf-8?B?bU5VZ09Cb0JrY2VRRytQQ2hpTCtyL3FVQzZIL3lCYlZNaDdIcVVjVVg0NGJC?=
 =?utf-8?B?THBJYnkwMzliWVFmRXJJcUR3VHRVK0RCRDhSSSs5YWQzdjlGSWh3OEdaaFJj?=
 =?utf-8?B?UEFUZzVicUl3RVpyWmVLTmJBdEg5VUZhRVhobkgyQnpxQzhXeWkvbk02TzFC?=
 =?utf-8?B?Rm5IZHhXQXdGMldZYm9MNDVzTm5ac29jOUdKOHllYU5wamxhcnBkUG85ODE5?=
 =?utf-8?B?T1JLWU1oRkZYMG8yM0dpTHkzVUtyTHdrckxMclV3RXEvc3cwZzJraDZWQkRI?=
 =?utf-8?B?clE5Z3lFUHlHUG1NZDA0RXJDNnBSWUoyZ3JSZXhNS3JpRm5HQWJLR1A2SElU?=
 =?utf-8?B?SVdRTFRNam91M0MweVQrUlM3OTFYbU5JNzZ0T3M5Z2ZFZDluZEh5ZmdCTGpR?=
 =?utf-8?B?ZVVJZWV0UktJU3NLV2Zsb1dFWjNETGV0b1YvNzZWZWo1cDAraFVVUjcybUli?=
 =?utf-8?B?YXNCcEI0QXZ0dTJVTllYeS9xVnEzMFlDRHVlWS9ZdlhyR0pKbXdqNVRTU3Iy?=
 =?utf-8?B?Tm96dHJWM0NJSGFtVGQ4SnE4QXhQZDRoVUJmZy9rZTROT0svSjVkeXQvclFM?=
 =?utf-8?B?NFlFWml4b1MzdzhEeFc3Y0ltdnBuc2NsQzZFcERITWxld0l4NE5GcnRQMFpl?=
 =?utf-8?B?cTY3K0MwRU5NcUwzTi9GSFBrbHpBUEdUY2l3bGkrQWV4UmtnamIxc0JyeGFL?=
 =?utf-8?B?b3k5dGw3VHlkUTlDVGtRaTVQTzA5WVhNcUJQVDBXSjR4dUdOWlFQZHpUNkkz?=
 =?utf-8?B?ZWE0SFVOcjhScGE5Rm1WNjZWUW0zM3Z4akVWTlRBeElTQWIxU3ZONG9PMHlQ?=
 =?utf-8?B?MThKL3czT0pjK0s3OXdPdjVpK3plQXFXcjVCcFlZUFFTc2VmT1dQZWJZZVMr?=
 =?utf-8?B?WFZjVEVEeTRaUWFoNFJnVUxBcFM3UzNCT2d2WFJxTE9KUVRlNEtpQWc4Z2pR?=
 =?utf-8?B?NDJWRTJGZ296dERQeEVvK2NldGJobkZJVnBKRXljdWtBY21xbEIrVEpaN3Rr?=
 =?utf-8?B?R1lrWHdoME14eWFaZVlmVkdQYlJOYVRYOHQ5WldPUFJZRFp2azcvVXV4ZHJ4?=
 =?utf-8?B?UTA5WjhISkNXeHRpVzlWaHMrZ3NFTUhNU1F5V2lya0JOVjA3U2hQR3lBZU5M?=
 =?utf-8?B?SGpLWWdOY003TXdZcFp1YytsZXd2WklZcjROY2Jsc0RSSFppVkQ2anZIK0lw?=
 =?utf-8?B?RWYwTnc1K0xDRnhUY081YXJaUWVPS2F2MlNSNGxJNHV6OW5tVDRYZlJ2MjYz?=
 =?utf-8?B?aU1KS0pXUmgzZG10ZklaMEVoQVVrMnFrOVBJNXdlc3IvU1ZhQWp6b3JpbzJT?=
 =?utf-8?B?VXNHQ1dmdU11WjFpbmNVWXdvckRPMDd4VUZGWGpqK284cjNGYVhkZDlKN3o4?=
 =?utf-8?B?bXl5Wk13OWV0YUVLMkxYNDltNzdNT0ovVW1GdHNIUWJQYXd3TlI3bjJjMUVM?=
 =?utf-8?B?Z05QalVQYWZ5aHFUcGVpT3Q1dUV5ZnNqbkNKaTI3MlhLajdxMXhyRkhJeTZO?=
 =?utf-8?B?d0t6NFdQa1ZiUXJ4blMvcU91Zk1IYVdiODBHcmp5TFdFZGNXMkVidjI0R2w0?=
 =?utf-8?B?Q2VhSHdNdld3azRURnhyclo2SU5zMXZIMFU0NFluOHVXdUNuRXVrZDBkYXBp?=
 =?utf-8?B?L3FZSnhWMUd4MFFKaW9sbEJJT1ZXWVVTVnRvaG9ma3h6MG9MQnF3Y0VyQlVB?=
 =?utf-8?B?Mnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cddf5a4d-8bfd-423f-f6a6-08dbc40478ec
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2023 11:32:49.3331 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D/oYRrVo8I3//hdaWg2XgmvHAwf9lqAwOVE+tR/Ak+oSNQYPuqpyJV5F436v7+tybf8L37I9AJuUheCwvxlI7NqIeqm5puYEhTmrD+1S1o4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7694
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696332780; x=1727868780;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vzTjDIiXOS0klfSFgbLoWlf8cYKLyJhtwRXR5vkDAwI=;
 b=a/45maXw4m3ZdQT3aj9iRZxxaxW9uSy37S3BSbW/SE4jYClj73Qooaze
 OwduwcYdlcniD/VrZ5IFJmF5Htg8NSuh/eW/6LNE94GbOBf5s7MLwA6yU
 UMYAeHUlaECUkWgR9EbqnWezE8wz8XoMj5hMoC27Z2XAEv6mU1M+r/taI
 Gr/by+zCFXXTCXwznmhEBAgNZoXJHxprGOLOm1HpT9cEMNbwXRhRPNyDk
 e8mIWlHMw9kxgoyJ6n22ZWq0xLcIqgJjMPNuOOLdQtcYtSUSx/h7y5S4M
 UsqlYB6F+kw1AXtka9FqZx0LRK+6ZSghwAqUq8JCPbsyhMYVTeBkmcpeP
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=a/45maXw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: Fix safe mode when
 DDP is missing
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
Cc: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/3/23 13:17, Jan Sokolowski wrote:
> From: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
> 
> One thing is broken in the safe mode, that is
> ice_deinit_features() is being executed even
> that ice_init_features() was not causing stack
> trace during pci_unregister_driver().
> 
> Add check on the top of the function.
> 
> Fixes: 5b246e533d01 ("ice: split probe into smaller functions")
> Signed-off-by: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_main.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index c8286adae946..ded0d807c5c5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -4683,6 +4683,9 @@ static void ice_init_features(struct ice_pf *pf)
>   
>   static void ice_deinit_features(struct ice_pf *pf)
>   {
> +	if (ice_is_safe_mode(pf))
> +		return;
> +
>   	ice_deinit_lag(pf);
>   	if (test_bit(ICE_FLAG_DCB_CAPABLE, pf->flags))
>   		ice_cfg_lldp_mib_change(&pf->hw, false);

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>


Please be reminded that for Intel originated patches the current default 
flow is:
you iterate on e1000 ml until reviewed-by is provided;
then post to IWL + CC netdev;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
