Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C2E43D2DF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Oct 2021 22:32:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 990A560B3C;
	Wed, 27 Oct 2021 20:32:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EMS2Z3Y_cs4U; Wed, 27 Oct 2021 20:32:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C5EE60B2C;
	Wed, 27 Oct 2021 20:32:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D09181BF3EB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 20:31:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BEFD94054A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 20:31:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K1I8UHcpdyut for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Oct 2021 20:31:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AB06240283
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 20:31:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="230518846"
X-IronPort-AV: E=Sophos;i="5.87,187,1631602800"; d="scan'208";a="230518846"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 12:46:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,187,1631602800"; d="scan'208";a="529746277"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga001.jf.intel.com with ESMTP; 27 Oct 2021 12:46:26 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 27 Oct 2021 12:46:25 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 27 Oct 2021 12:46:25 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 27 Oct 2021 12:46:25 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 27 Oct 2021 12:46:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Aa5DYVg7fxF/RPe93ZNs6lMTT6cAhQNd4Ean5tSjwMqKtwX3S5Bxw3CIoSmnShCHbbbGuc+d4BtEiwcVv5wB6orH0SgJJsI0wizTy6BepMLmeZxBNjF/zgJk/4oWuCk8jqMfLBa3Nitq+Z+SOsb4QBeSw69vHvZz9VJMR9HkkqeTKZGNdITSJE8lgBtSn8DvaKjbtWeHfvF1TeB9xzcLAouPs7SfNSyEM11OYzQIvcSVSlHNRlat+PGK3ArdXbgHy7kdSPApOEmB5gXcVgQbBBXmf+Eg/ITomXA8GPeIhMAGz3/ZUAOI723d0ElXpX8vk6O1fkC2FE7Fn3o3Emlrqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k4MdFXTFMwiS1yJKjpjv+ZDTLFJ0MRC2l7J3POKEWUY=;
 b=IHSUCc2Ti8ffa2NqPTklPPTT5xrJFO9JGPEZ4QGl/cLXoO5dakxge/Sa1ZFgqEQNaqEYwf60jiQZ5RiUu8u3ou4Jde2s4G9KPSIHHR4rtrYPK5DGhkc7rJgam6K4aG+/7YqSK0KF2GvBq4ioX3GIOMEl0AYitMhC8LynTZ4ZOdzh9p+Fn9FVEJbocbHvJfVJW987UvocXC6PupjbMvKU/S3BUZA8ThJWDMwuaQ5sEGQS7JgNUEaYRQMPrxQ2QlVgCu2746DFgEMlnIfnh4M/ZABo0Hqhs1vm/VTvfYsXBqJXjbdpl+6KaCdv9JszEQ+zs9XSJAM5zDlMakcyv7m0tw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k4MdFXTFMwiS1yJKjpjv+ZDTLFJ0MRC2l7J3POKEWUY=;
 b=CyUTxV0Sj/bbW0umwYdJr2xq9hXxFdhb/h7wwQt0j+j7w6Hy4EIZ/Ol+uclEoA6px6qOeji0CKubvBypHuRUs3504A2aIlG8AhY0YSBxwbtFCAYzZuHT/oyge9m/zgwaBc5EcgTIrJAJnc8IOepIizbrRZeOm0SfsSsqdBDoPgI=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by MWHPR11MB0048.namprd11.prod.outlook.com (2603:10b6:301:6a::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.14; Wed, 27 Oct
 2021 19:46:09 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::3166:ce06:b90:f304]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::3166:ce06:b90:f304%3]) with mapi id 15.20.4649.014; Wed, 27 Oct 2021
 19:46:09 +0000
Message-ID: <850d2742-2191-9cec-e585-dbbb1d796510@intel.com>
Date: Wed, 27 Oct 2021 12:46:07 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <20211026000826.156803-1-jesse.brandeburg@intel.com>
 <7afd99cc66d66f81ce68e9bd9e9cc116cefab1eb.camel@intel.com>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <7afd99cc66d66f81ce68e9bd9e9cc116cefab1eb.camel@intel.com>
X-ClientProxiedBy: MW4PR03CA0237.namprd03.prod.outlook.com
 (2603:10b6:303:b9::32) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
Received: from [192.168.1.214] (50.39.107.76) by
 MW4PR03CA0237.namprd03.prod.outlook.com (2603:10b6:303:b9::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4649.15 via Frontend Transport; Wed, 27 Oct 2021 19:46:09 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ffb66532-6335-4ec6-6935-08d999826c74
X-MS-TrafficTypeDiagnostic: MWHPR11MB0048:
X-Microsoft-Antispam-PRVS: <MWHPR11MB0048D330C8874B3CE921F36397859@MWHPR11MB0048.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /rFFqJeoyB168XyYjt+794l79TMlB1OAzSs88Qywa+AjjboGbuuuwqIRLXkbiVDp7vKjBLZale5QrAgTfIH1ANEl5HMkGxMibJNk6Z49hnITcdFn5KWlndRqaiub23HlRzkCmVCZBo4YzMRmnbA6ID4M/MV4waXQDXkLdxdaj4AurbfVha35yFl5LUD5dgQe+HPDvRL6ybl4/8209ICZaltlDlQ6nb/D+kAAbhSW1S8jUtnn70hRMewRnH7Y+ReCUJWMMHfnfz7W6buqCYV2HMFz5ScTFfvqdyPIrAJOj0AjFq8+woZwGT2TE21Y8r0zQi4sLCOqhnM656TH0ejcR5kJmwOLuBpiSfk3yDDj5OOkfKOeUVaYFyyWDa4NKXtI5gq2gcYDVHMYqZH/Y7r2LgLBqovRGqlE4KloIu2hosEEaNcyn3QOQnfTDzfNPP1JNc6Z1ECt3XOsae5yvRBz9p40LoMdrNaIzZeTyB9gkgWa0ETCcosBRVaKKVgIN34EUAacPN91Q7nkrphOdpFncl+X1hWqFhiwRdXWFIt7oCDT5/MQ2CBfwrXQUbKUnGknYsegzZdxlf/R9H3uKs7CCclsYKfTRntY3yz31TkHAbR7On1ddZpjICq8sgaNgQlxQ9WoxgDTXbkwAaAESJKQdn7XXQD0igWc/VQbXj0jlyzMAL7fbrow61X6Tr9pLS5FgyLT9N18sAwyuP0whs0U+AGn0lLM3PqwtAzmk9nLEoI2nFgVt2SivT8I2oAIXRvWjxwtYfM2Zr7XOn/d/lu3daO6xotASZ5S+tuFx+saxWeSLqyzbFYVHfsyA+vrQZH5
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(110136005)(956004)(53546011)(316002)(8936002)(36756003)(4744005)(31686004)(6486002)(508600001)(2616005)(31696002)(2906002)(26005)(66476007)(44832011)(66556008)(66946007)(186003)(86362001)(966005)(83380400001)(8676002)(5660300002)(16576012)(82960400001)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NThUY3U3TXFXdVYxemRXMmNMWUVVcHJUQjk5L2gzVlI4VHVqY1NzbVhWbDFy?=
 =?utf-8?B?R2loNkZBcWx0U3Q0Zm1ORlFTZG55SjYvSWNOTFE3QzlBcWIrQ3JsY3dKWllN?=
 =?utf-8?B?b1Z0S01Bd0pzckZjSE1PZmt3ZWFtWHcxVWdxNVIyOGYrd0VnemdPKy8vQk1p?=
 =?utf-8?B?NFhCM3JxUFMzNDYvYmFyRVN6QkEreU1Ea1FCTVNZYk1KNlRlaDl6Q3dobFg3?=
 =?utf-8?B?bWdPd2daSFZMcGJNem1iVHgvRTJuc0JhZ2U2VHlKaG1Hc21aUDRRYStkS21F?=
 =?utf-8?B?Zi9Hc0ZzUFQzZWoxWEFoYzJrNjEzVU80MjR3TWk1MEJEaExEWjN2dXI1ODJo?=
 =?utf-8?B?Mm04YzRFb1N4ZW0wQTlscGFScjF2NkFpNCt5QVdXdnhCYjkzSVR0bTFLM29h?=
 =?utf-8?B?bnJCeFMxbDM4UVlDNC9KZ1JOQjArNXJ5dk9nRkRqY3IyVkdnWVAzK2RNNUxp?=
 =?utf-8?B?RmlLWmh5cXhHMHdNTHdnZjZDVHpZaW1LbEkxSEcvOTBEWGt5enpRN2piY09H?=
 =?utf-8?B?NDRxVTBWTTZEN1h4QXFUY2RiV1JnZVVIQVhKbnRST0l3VkEvZDFtaTdpZ2Rl?=
 =?utf-8?B?b0xha3hkUzMrbVNmVEhCYmdPeng4eG8rbTFmc3NPSnF2MU5BRDcwREdHNStE?=
 =?utf-8?B?MzRiL1BKUXFYaitvb29hYmNKVDU3bHY2OXptWk9rTXJGTUU5VnVoODA1ekl6?=
 =?utf-8?B?bjF0V29HeXJYVloxRzF6NU40eEtDTkFIUVhHTmo0V00ybGJYa3hLQ2pVNVZI?=
 =?utf-8?B?K3JFQm9yZ0JKTS9BOEFFYTVOQWdyY0JNck1nTFpodkI4Z2huMmluR0JiUlQw?=
 =?utf-8?B?NllBRklxSDdXSlpJUXVIdTV1Q004OUY2Skk2WmMybzlKMUdOcEpZSW5CWE9a?=
 =?utf-8?B?ZXBnUkUzbUk1VTNJZ00zQmh6MW9rcTg1RkpRZjdlK0hwcCs0Rmx2VXVRaTJ1?=
 =?utf-8?B?RjZQSTF1ejJsR016OURVc2xDV2FkR295aVQzQXlQaE1NenlsSFJJSS9IM2dX?=
 =?utf-8?B?VTdOTHQ5bHdMLzBlU0gybDB3MUhkY0xlOFVFQVBDdlJlOTUwYS8xOWU1VjhG?=
 =?utf-8?B?Z3JieWlYZ0hFbHNNcGFQMWFjTVNtZXFhK2tiTWs3bTRVQ3EwaXpING9lOEdP?=
 =?utf-8?B?UzZFMVRpZ3hvV1NLdU52Z0hoYUtXYUFXaHFNeGZqQTF6UkE2S2Y2a0ZWK05V?=
 =?utf-8?B?UDlvYlgzdjQ4WHh3UCt2S3BGWWVmZi9vTjVGZmZ6MnR1dkNqT3NucUNtbjFX?=
 =?utf-8?B?T3psbGxMUmxyVFVFV1I4anZ4SENKeWU1bEI4VnpxMTBjaWxvbTRwNHNOQmhZ?=
 =?utf-8?B?ZVhtYXhtRHVlVEVMR2tBdkJoa0x0eWplQk93M0FaVkFvSVJRMmI4alhhdjVw?=
 =?utf-8?B?UzRESC9xQkFJUk1FTXJLQ1hKaFdsQkI0M1pNUCtBODBIdmh1NS8yakNXd0lq?=
 =?utf-8?B?TXF3cVhVM2dWMkpzZzR0UHpJTUM2bE8rdmtTTTRrU0ZGenVYS2dXK3dPb3B1?=
 =?utf-8?B?dUxsZGQwM0VsVjFPNmsxbFl6ViswOUdWRnF0L0tEMmlEcDNqVmQ0M3ZmaHUy?=
 =?utf-8?B?WG9xVmRMbFhHL0tibVFLM09EMEhZR3lzc25LbGwwMFhvblFsUFFTSkJnWWIw?=
 =?utf-8?B?UnA3Q2pOdi9jUnJlNWI5RTlTMTR2QVp0Z2t3VjdDY1NVMzZuM1hTRG1MeDF0?=
 =?utf-8?B?MnBCalVoalBhQm9kSUtKNTNNdnFZdzRJbnNRbldHZmk5YjFzRUp2emptUHhi?=
 =?utf-8?B?UGMyZjI2MFBoN3Bvd2oreFZHeEZJL1hDTkZvR0JaQnAxR3ZqVVRXc1JCR2dj?=
 =?utf-8?B?VEVQMEhmNEowdzJzL3JybkYrWE96ZHd5WExIc2YvekpuNHdxOHlQMDRXSTdJ?=
 =?utf-8?B?ME1uSXVjWUdSVmordG4vK3hRMWUyMXB0QitWdDhlQlRibW1yaStPcW50Q0s3?=
 =?utf-8?B?OE0wcW15M0xsUmg5YVp6cjlHcFN6bWwrdDg3cVpjRmltTjRQUy9NZ0J1aWY4?=
 =?utf-8?B?K3p2dGRLTWJwV0JWejhNK2hDY2FnV0VYUTlqT1VEVTN4QitMY2Fnc1FpWjlM?=
 =?utf-8?B?K21yRm1RZ1JubkdEaVBoRFM1YzkvazJpbi94c0x5cCsvQ1VXaDhrWHd1NkxH?=
 =?utf-8?B?c3RwSDkyOFhob0krdnFyRG1tRkxvUXFma3h3QWVsN01DdW9qRHpkWDNtaGJT?=
 =?utf-8?B?WjA1ZE1VamRWS05NNGtMUCsvNTNJaVNoSW5RUzAzNE9jaG9KT25FaHljZEk0?=
 =?utf-8?B?cUNZRXVGYmJ4c1hpcXNJQnZnODdnPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ffb66532-6335-4ec6-6935-08d999826c74
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2021 19:46:09.5416 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MvBPnT5/ouhYxzKGYjcazXzBElqJNf5l9DBDlGTn6oTdRni1+awWjOHOzmK3ASr5rgEC74vdsdTJ8+hWFjd6te8JuAlJUx0YQatno70Unzg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB0048
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 0/4] ice: transmit
 improvement series
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTAvMjYvMjAyMSA5OjIxIEFNLCBOZ3V5ZW4sIEFudGhvbnkgTCB3cm90ZToKCj4+IEplc3Nl
IEJyYW5kZWJ1cmcgKDQpOgo+PiAgwqAgaWNlOiB1cGRhdGUgdG8gbmV3ZXIga2VybmVsIEFQSQo+
PiAgwqAgaWNlOiB1c2UgcHJlZmV0Y2ggbWV0aG9kcwo+PiAgwqAgaWNlOiB0aWdodGVyIGNvbnRy
b2wgb3ZlciBWU0lfRE9XTiBzdGF0ZQo+PiAgwqAgaWNlOiB1c2UgbW9kZXJuIGtlcm5lbCBBUEkg
Zm9yIGtpY2sKPiAKPiBJdCBsb29rcyBsaWtlIHBhdGNoIDIgbmV2ZXIgbWFkZSBpdCB0byB0aGUg
bGlzdCBbMV0uIFNlZW1zIGxpa2UgdGhlCj4gZW1haWwgaXNzdWVzIG1heSBiZSBmdXJ0aGVyIHJl
YWNoaW5nIHRoYW4ga2VybmVsLm9yZy4KPiAKPiBUaGFua3MsCj4gVG9ueQo+IAo+IFsxXSBodHRw
czovL3BhdGNod29yay5vemxhYnMub3JnL3Byb2plY3QvaW50ZWwtd2lyZWQtCj4gbGFuL2xpc3Qv
P3Nlcmllcz0yNjg4NzEKClRoYW5rcyBmb3IgbGV0dGluZyBtZSBrbm93IQpUaGUgaXNzdWUgd2Fz
IHJvb3QgY2F1c2VkIHRvIGEgdHlwbyBpbiB0aGUgVG86ZW1haWwgYWRkcmVzcyBvbiBteSBlbmQs
IAphbmQgSSBhdHRlbXB0ZWQgdG8gcmVzZW5kIHRoZSBwYXRjaCB3aXRoIGEgY29ycmVjdCByZXBs
eS10bywgaXQgc2VlbXMgdG8gCmhhdmUgZmFpbGVkIHRvIGRvIHdoYXQgSSB3YW50ZWQgKGJ1dCBk
aWQgc2hvdyB1cCBvbiBwYXRjaHdvcmsgbm93KSBzbyAKcGxlYXNlIGxldCBtZSBrbm93IGlmIHlv
dSB3YW50IG1lIHRvIHJlc2VuZCB0aGUgd2hvbGUgc2VyaWVzIGFzIGEgdjIuCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFp
bGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3Ns
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
