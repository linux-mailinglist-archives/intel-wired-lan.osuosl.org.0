Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA386740F2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 19:29:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0A23A6118C;
	Thu, 19 Jan 2023 18:29:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A23A6118C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674152952;
	bh=k4LofokmwjlYp5mntTYUVfjlgQVn0T5lGCrPTNJ8yaE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MNelXjER53kjf9nKlMYk0ZnQSDdY2eTCBkVoBpC6I9XQn+eNOUvt9d/isppHUp3al
	 g79pun8P2VcjmkqpwdvJicz1V8Eh7KW/DTszai4eazS3+5MYgqbnJgwJp+9hZk5ViD
	 cd8bEvoLGk1TtUBxAwh1hCPWSdYibOjTxY1Jhqv/tUg2+j1cL+kt4NsDg+IhvRUecH
	 NWOqwWAtZSQ4OUrsfV5o+pVMzsXk2YIGHTSkaygH3xX/ClAi1OekUYk/e/5SY7vl5u
	 fUyLCx3mjQnpOxWR+xSzDL/HP6uRWAXqETsYQ5M+GWYCU6StQvgH0sKBGC5fYgKg4T
	 wvvZcnqOya8Qw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G_dfzcwwjY9h; Thu, 19 Jan 2023 18:29:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E110060D67;
	Thu, 19 Jan 2023 18:29:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E110060D67
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1773B1BF96B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 18:29:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F164781583
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 18:29:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F164781583
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sq27jlbwjXUr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jan 2023 18:29:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 32EDB81754
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 32EDB81754
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 18:29:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="387742705"
X-IronPort-AV: E=Sophos;i="5.97,229,1669104000"; d="scan'208";a="387742705"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 10:28:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="662206896"
X-IronPort-AV: E=Sophos;i="5.97,229,1669104000"; d="scan'208";a="662206896"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 19 Jan 2023 10:28:47 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 19 Jan 2023 10:28:47 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 19 Jan 2023 10:28:46 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 19 Jan 2023 10:28:46 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 19 Jan 2023 10:28:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BPzI8M0F6EBwKAvW4fqL/UnyplfFUKRb0NOLK6igv1SIkLZU/IgCQqEgqqnBGAc6YyoYtJ/ZdFUzER7WZ4UIsXe8tDJxsUIVymciD+vpfIG6EOwERZN4qFdLc0nKvozM8utKb+UmOOHRxn6IfDNMaK6uK5XoBUtf07Iyv2Sdj6kTojof3Bii83+wI9uvL8rBXIc4h8oPpdi9PIZUGAf+v4AsL8U0nRVUEBXuNRaF3rt1w9QJ7260nZjlnOCE6C4h8pdkPHQD98mj0vW7bC7CKnV9LkIM8xXV0DOCln3nSz7Q4/zAa7sh+sygRmCaLNB+eEzrGp/N02B/rMs2RgO+YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uLOSwKq/oe6CNoLAJNllEn1RUtCxh209cuYQ5RJA5HQ=;
 b=m527fNuIWPdhsJ2AS7uUj1Qok30+D8TYAfjWRMqeY79wywrTBol5EKmHe/qAbjoVsaqF8er2keOukKkcM3NyxSz4qUn1VL8iRO2MhJnF+Q6+Mr7oJ9imOG/cpHuFQxE40yT46dguu3GmlpGxL1QQ/sD5iJAUOKQ+NR12xpz846VWWfmk/Y7kIzgdHuyEDStldzttlExQn4nTplNAblW6b/CgKOGI3dTuXMG4VqpaIp9soPp2z2YuwkXzBzuFru9gbiUPyslpinx7TOdgMf9fJnLu48buHTzkLOMwxas1ASyy1vWtLj/wpxJ0hO5lWcn/SXfA7aR8gxM5jB0rJJhX0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CO1PR11MB4786.namprd11.prod.outlook.com (2603:10b6:303:94::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.26; Thu, 19 Jan
 2023 18:28:44 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4700:1fa1:1b49:1d5c]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4700:1fa1:1b49:1d5c%7]) with mapi id 15.20.6002.026; Thu, 19 Jan 2023
 18:28:44 +0000
Message-ID: <c7eb0b28-4b55-f1f5-7338-dfc96015db89@intel.com>
Date: Thu, 19 Jan 2023 10:28:42 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Bjorn Helgaas <helgaas@kernel.org>, <linux-pci@vger.kernel.org>
References: <20230118234612.272916-1-helgaas@kernel.org>
 <20230118234612.272916-6-helgaas@kernel.org>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230118234612.272916-6-helgaas@kernel.org>
X-ClientProxiedBy: BYAPR03CA0015.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::28) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|CO1PR11MB4786:EE_
X-MS-Office365-Filtering-Correlation-Id: 068bc704-190f-49f7-3ae3-08dafa4aff3b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Qn/NXjmHCmmHw0KFa7D9kpqPjwpDO5mRcZHD273rsujCJ7AgusMi1WGrtdKLxXqnhMH1aF9MO9e7jKBDr3X8i4fedG3biax7JaIYg6o69eAl+Cfz86qt0pBGmVEUEWj8XAiuycxTmydAfDcmJ0LxKmIO37bZSeRf82x4Ie+abQrMkJP9DL9dXwy7LE3TJ2wJ+93S2WvXwa3801nGCbUeqLv5xRhIwkqa8cFFGEgvKyGoAI5QeQisHuWLdTMMVv4qS9lJ2dToICIZqlAfGgmgNPfYshhDRIohnuWyGQhxQj3cz2ietN7QU+7zelVeozc5f4wNBYNhb1wEPx5ZRb1Fd5X998KDv6sTMQWKS+aTTqSHTMXPqsI7+OKcX4TTpXQrRRkAhQkoKwo1uXX6aaH5OodTQjclQNvBCPe3T1h2yXfDfJYOlvoZw/z68jA/p5jr02ZU84S8snIbMWEJ0rW5DwTd5BfstJ8+sf6BAtXlO59/CqdYAqEFCDFl+L5ZxfUjnJJm28iU06zr1BPEz0p4bCczQaOudvxhQMg0lSrKn+eeiVRK/2ab+p8N+RY3k7otbXkp2lOgKVMZBSXfTr6wEa1fvqkr9ybt58VrzpJQ4o2zFKjpJlxgSGGXlnF1aS/4JVH8kKItXiBgpXb/XkkVV64aIqPYVggJ8HPNXYi5ZTFlZcYXCNZIgrIgFCIf8FFJ+jkWbNH6xsrFhDq2p6PoR13pnRluii7t95CtSe3aeHM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(376002)(346002)(366004)(39860400002)(451199015)(31686004)(8936002)(5660300002)(316002)(86362001)(36756003)(6486002)(478600001)(6506007)(53546011)(31696002)(2906002)(2616005)(83380400001)(54906003)(66946007)(66556008)(38100700002)(66476007)(4326008)(8676002)(82960400001)(6512007)(26005)(186003)(41300700001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K1A1NytsZXRLcVJpZ3JwVGQ4eUxZMkQzbllJWTNhT1o4UlNENTUvSzR6M3pC?=
 =?utf-8?B?TUVPS0JkeVMrN2Erc1YyMVJER2taKytiODVJOTFiMnJUSUVmNm5rNnZuUEhT?=
 =?utf-8?B?RGR0d1FwSDMxTktZbzhRVVFabSthMlUrVlpZWnJMdTZrN2JDQU9zTkxUV095?=
 =?utf-8?B?ZlpmWDhPZnB2emcybjFIVFVxU01jeFlqZjVNaTBQai8yOU1melc2dXB4NWlU?=
 =?utf-8?B?aW5wUTVXY2gwUTNIeldiSFJrSHhjbUZpSDhWQWFSMUxISUJrUW5jVlVpMW1F?=
 =?utf-8?B?K3NYemNZbFRzc2g0djZKdVVtczFTcWd4cTVJZXA5NkdRQmlBdjJkeWE2blNt?=
 =?utf-8?B?YTRuWmtyVUJ6YmV6S0ozcjErNG56VEFZTW5YWjNNTk01ZDdxRnRWMDdRTm9x?=
 =?utf-8?B?ejcrQ3BRdzZ2OXdKNjAyd1pKNisvbmFvVjZiUVZvVEFqVkcvc25sVzdDb2Vl?=
 =?utf-8?B?YUtqUy9BdkRiaWxKRXRGbjcrcjFUM3FEZTJCOGdyYThPc0Rsbmw5Sko1Uktl?=
 =?utf-8?B?cVhrOWg3OThsaHJrblA4NkZNMWl1NWpmZE02OEMwZVc0YjJjTm5KQmErMUdW?=
 =?utf-8?B?bStWVi9HbU4xcm1hMzBla3J6dWJ1cnZlUEN2aUU3UURsSEg1enkwMmNHdG5m?=
 =?utf-8?B?cVdqNEM5OE1rcDF1akE1VFBNYkxyT0pDRHFYOFlDdFhqbnFxWTh5SkpMRmQ2?=
 =?utf-8?B?TGdGYTd4ckI0eUpIYys3MGY4UDJ5WWxxMHZGVmhBTlR0RnJJU056VHJQZUJL?=
 =?utf-8?B?dUVSek4zZllzbFI1QUF6dVBXM1pBL1ZBcndVREpEYlg5Z3lDRm8vNUxLdndN?=
 =?utf-8?B?OVNXN2VvcjJNdksxcHJYaGgyOWQ2YXRBdGJuSmhSVXBxWjRaMjRwUnI0cmNO?=
 =?utf-8?B?VFZlYmg2ZG8yRmFkZ2dRZlBnV0VWVXVRaHNYWjl0aklLWis4aStwZ1dLMFBp?=
 =?utf-8?B?R3AyUUFLVE9OUFlJNFA3MGs3ZE9hc0xzOHJyZ25UZGtYWldkZnRKRUJZM0Nh?=
 =?utf-8?B?NlRncE9IMmVQV2JHZndqV1BSR2lnWFVXMXRtcko0QWllUEY1OU5OS2pJYk1J?=
 =?utf-8?B?UG9OaTdzUFdLQ0RDcktqbXByUnJWWXZ4TmpnQWNjZFZBWVpCdnZ2UHNseUFZ?=
 =?utf-8?B?NWo5MklGcXZTVHF0NmNPLys4Y1RpUngwVDVDeWQ4Y1l3VW05UVZqUmdJSlBT?=
 =?utf-8?B?MCt3em5CWXBsMkhPaFhad2lIblc0TTFsaGtFNTlrV2NNM1VURGhFY0c3YThD?=
 =?utf-8?B?VFRNMFJySktiajFSdEFiRm8zT0R5S0krREt1b2xuNVdyWDZtYUNTaTBBSjRz?=
 =?utf-8?B?b0hKelNRQXZoSzVOdjJXZVZsc2c3SFJFcE54eUE2ZjY5TkhrQ1ppQ0J6YnVK?=
 =?utf-8?B?aGV3OGFJbTJmTXExcmNpVldRMXVuVWJRangzZXZvQlRiNzJMZndHU3ZjSnIr?=
 =?utf-8?B?d3NkR3lVQkg1TE1QWTRvSXFWVkN0VWFBQjJhWTBNNzlmaGtRQ2xJWEhUcW1J?=
 =?utf-8?B?ZklJTlZXZ1hkTnJwYnd4dEE1UGpKemNlOHRWNXJMTloyVXBPK2krSUR0R05G?=
 =?utf-8?B?cXhBMklxVE9OQUJ1RUpyQlM4MXlwdk5BdkxYcjZOUDlTWnZZQVRQY09WSklF?=
 =?utf-8?B?citxdjA3Vm1vM2gvdDRQMnBvMXJZQzlqQ3Z6ODNrMnZsZE5YaE1kWUcvbTBE?=
 =?utf-8?B?WWVJSEJON2NsalRvbkc0TzhLL0txdzRoQ0VnYVNLY1BMNG5DbWRJYWhqVGkr?=
 =?utf-8?B?QWhVWnIxdFpTWkFoS3JCQXJUTUpPY1JWUGRnZmlrYjE2U3hZSCthK2pEYVlH?=
 =?utf-8?B?bkRMeXB2bXUxY1BLSWtXSnZxSEtINDR4c20yeFgrTnoxUU9nbkM1OTg5RG1Q?=
 =?utf-8?B?MTdBVkxnYkhNVGlFL1BiTmI2aDE4c3J5emhqR0pNaWtvNDNPem9jOW5zUEY0?=
 =?utf-8?B?K2pFWmQ2N2dQTGU4eDFVTHMyQVlaMDNOTy9TeWxBM1c2by9IYi9MZjFBazUz?=
 =?utf-8?B?dDhQNTRxaGozc0hBV2JXL1ZtbEhWNStSbyt2Z2lybWcycE15QTRPYWFKRFl3?=
 =?utf-8?B?SENIb0JHdGs3aUtJTVQ4ZC9hWXJwekUrWEhVaDhhamFmRGt3NmZscW9vWmNj?=
 =?utf-8?B?VXBtNDRvVkRlVmNJeDUvdmtDR1hucEk3RUdHc3Y1ano1bHdXRnkrc09YSDly?=
 =?utf-8?B?eWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 068bc704-190f-49f7-3ae3-08dafa4aff3b
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2023 18:28:44.5129 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3Tf+GyYmK4/EH8sCbzEyfgCHH75Fzb5WTJrP24yLq4Fxg5KtKoppvKosDXpUPbus34zTqvOOgzYJJ1ff5NIF7NqhnX8b1XTcYcZaZCnyaMg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4786
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674152941; x=1705688941;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7qWcpM5qRvGZq3Xl4cy/+m/xmF9tT/C9dBOz8JKOZ5w=;
 b=aT1UKbENA6AAqSInPp25JeeSzNrpfrLdoHt7avIJcRv2kUnCNF/ZXRsX
 G/3xKNGeX0W/Awnv7h0Ir4ZLEZYWlfwCdm+rzHJUIQlyzwRGJ0+OL1L46
 TQI+Zbtq5YZK+JsV4Lxv6XXqxbxedMNmWM4VR5cnhxo+e4GovTX5boeiZ
 ULTTt551MsOpsMiaMMD2AbOZB0BaF1niC08styFMrhXvSd9FEbe1pIyR2
 TpIgWiU1sq7UNak5IZWN5Ionl56nJc2K2IclBTrqQG0tqywKPf2NRSZFY
 FpUO0F+08tWMjXLSPvfi18qFXYS5yFN4ZiXnLTasAk2FpdA0Xq8Cf73DD
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aT1UKbEN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 5/9] iavf: Remove redundant
 pci_enable_pcie_error_reporting()
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/18/2023 3:46 PM, Bjorn Helgaas wrote:
> From: Bjorn Helgaas <bhelgaas@google.com>
> 
> pci_enable_pcie_error_reporting() enables the device to send ERR_*
> Messages.  Since f26e58bf6f54 ("PCI/AER: Enable error reporting when AER is
> native"), the PCI core does this for all devices during enumeration.
> 
> Remove the redundant pci_enable_pcie_error_reporting() call from the
> driver.  Also remove the corresponding pci_disable_pcie_error_reporting()
> from the driver .remove() path.
> 
> Note that this doesn't control interrupt generation by the Root Port; that
> is controlled by the AER Root Error Command register, which is managed by
> the AER service driver.
> 
> Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> ---
>   drivers/net/ethernet/intel/iavf/iavf_main.c | 5 -----
>   1 file changed, 5 deletions(-)

Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index c4e451ef7942..2835af20ec19 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -4876,8 +4876,6 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   		goto err_pci_reg;
>   	}
>   
> -	pci_enable_pcie_error_reporting(pdev);
> -
>   	pci_set_master(pdev);
>   
>   	netdev = alloc_etherdev_mq(sizeof(struct iavf_adapter),
> @@ -4956,7 +4954,6 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   err_ioremap:
>   	free_netdev(netdev);
>   err_alloc_etherdev:
> -	pci_disable_pcie_error_reporting(pdev);
>   	pci_release_regions(pdev);
>   err_pci_reg:
>   err_dma:
> @@ -5172,8 +5169,6 @@ static void iavf_remove(struct pci_dev *pdev)
>   
>   	free_netdev(netdev);
>   
> -	pci_disable_pcie_error_reporting(pdev);
> -
>   	pci_disable_device(pdev);
>   }
>   
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
