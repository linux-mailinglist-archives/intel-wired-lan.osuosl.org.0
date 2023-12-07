Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E5DF78084C5
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Dec 2023 10:34:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C65CF8177C;
	Thu,  7 Dec 2023 09:34:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C65CF8177C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701941672;
	bh=rXiZTDy+2TW1EWRwEHgWsAMRXDg0LjUrs2tsXzKUQjM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cKeZ3Ydp+8e2jXR/Wmkxc+LSMsCTG8DMlOBxb0UlBGmcQVU3loLuLBiIyZeI5RoFp
	 87pWKP2qgRBymFKhf+xolII/p89a8R28VoRwPH6Gn/dUkfEaoJ+VWWPNZ81c5lxJvp
	 Ky4A9gZ4kLe7rzcFHqAUYQSm7dnE0O9V8G1KEO5Aw0uaJzoAg+2XKMZ7tEaU1yegzL
	 1Yw0ETmMiqCqO7FEoCNcLhm+80K/T37XAlimrgvKpPfbZqA9p752cU1ic6IBCYXx+3
	 WyuT5rqWJbOlYVaOFnl6z3G1zwecxzlemwiulDpfAo4krHwzg7qvQulIfg+5Ju1uKL
	 C2yAbK4Q4CHbg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TfdkZn5kgZWj; Thu,  7 Dec 2023 09:34:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 80F8481517;
	Thu,  7 Dec 2023 09:34:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 80F8481517
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3CD061BF5E0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 09:34:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0D3C64071B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 09:34:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0D3C64071B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mhhbKqkflj7D for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Dec 2023 09:34:24 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9EE87404A3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 09:34:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9EE87404A3
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="391377696"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="391377696"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 01:34:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="895074823"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="895074823"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Dec 2023 01:34:23 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Dec 2023 01:34:23 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 7 Dec 2023 01:34:23 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 7 Dec 2023 01:34:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N2tWpqkLo7yUibSfa8ivR+NA6mH68oFdywe7lx1r7byCDWXEEjOMIAvnmAp89VF8ASaesnVFcURpZKW+hZOXnTGpp/+ba5Mge1vVCJJu7n12KuNpPaLLLCGwk2/FUsoROwJOKjwNiWOgWSHL7Db2JNO5x3hXm8h98eKE/vkCz/5LVPit0zP95VNhAF2NRo3H6m8BwXef/MkVQPV8Tf4tPXtYEzFQvXiIxhei8AfrLRuzcm/Wgw6hNty2aPNewb9m8vjHn2EigiuVYU7Dh7thNNuOFkvVBflQCn2hAw7Z45bNGZOprPoVKIphB8h2zrjAH1dbR4AVw7WZQ6Ph/Mkf4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o4RRkl9fh6Fx4L4G3o+oJ6lO5WiHOLY6Cs5AYQfeGGs=;
 b=Nmk6gwNhte0HveYL438bGYoLEWSIfHyCfEtwiSnANMoZUMJL+ZvfNNzqlxX+qSqR4IQCwAJqpVqdT280y2xeqkxUy8y/taOymCuz8tC8pyeOvgQhpOXQPPzvC4iie4sR+/9255LLChw85P6h5b1yxcwSh8RL5VHcBQ9BuiKyEf8Ggs/+cLZwbuP2CV+P2xde0DywrfpYlUrkuBmQkHeYfteASHxEB3978cWhWyxiAeEfGmqSD4ZKugGAmimbFxYVtIcLaUz12r1CQAs93jo2xh81nieG+ADzGjNQFBvfRE1c8kDFm+HeNNWwQmTOWo7bXFnb6iIkiIpm7JQpH5lzfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by MW4PR11MB6620.namprd11.prod.outlook.com (2603:10b6:303:1ea::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.23; Thu, 7 Dec
 2023 09:34:20 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7%5]) with mapi id 15.20.7068.025; Thu, 7 Dec 2023
 09:34:20 +0000
Message-ID: <9745f1f1-b93c-3df5-e235-db2b256d610b@intel.com>
Date: Thu, 7 Dec 2023 10:34:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Andrii Staikov <andrii.staikov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20231206125127.218350-1-andrii.staikov@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20231206125127.218350-1-andrii.staikov@intel.com>
X-ClientProxiedBy: FR3P281CA0189.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a4::12) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|MW4PR11MB6620:EE_
X-MS-Office365-Filtering-Correlation-Id: e32fcda7-9425-4674-ed62-08dbf707b05f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1lEn7PuJAFRnYDP08ujtikdgepGoYgNugPQbYw9UjgE5o62+J9n4WoAxRe9Ff/ooCATjRIipjR2ShnItePjtYP3JBcUxgPeWuUQqu2TPCoFKJw6evs+6uQCYPt9fo7WEjze3lRzTvuSpE3c81iiYv6iLIU2wYbf1ZlwgIFtP95AjMN2ZrwZo3ZOib+tEs0sqrwkAalbLhJZfbJW7O5z+e1BTIgruTixpNSf5fx6mFkUEglggjNijpEqbTme7aG4YP/e6G/uxL6unbiXZviEVcN9Gog5ikYH29L9dFmWXf+Bq3qcWKHT4QUiVfJwrleqe9tR/tEiyaE8ijlyFFWAI2uH4MiEZ+/bogNV9Va+Bz7RULkt2843TMECFCxdSlzyvZldjTIcgHxE7IXPMAnFj8AnzM//EFSNvImtBbLOvwU0LBl3Zd7VLw8F3ebYu1mXT2DdQLQU9V0+hoeC2B6mdvVhUpcHkwq3icNpZT9lPJKO+D7gM9n/1IKo+hsUKnYOYTTt14JO49M0/nj/vjezFm5j3AuY7vNtKmWB0dp2x445zWp8X81aebMPQu8kHxrBUYmBdgqa09ZEahWRlkNv8QE2iLg8Vxyl+xSKuuT6tum6PI4U+G7UWw5wmdYJip8odLDQJsX5oKB/LfKuZJd4L3w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(39860400002)(376002)(366004)(136003)(230922051799003)(186009)(451199024)(1800799012)(64100799003)(82960400001)(38100700002)(31686004)(6486002)(86362001)(83380400001)(5660300002)(36756003)(66556008)(54906003)(8936002)(4326008)(316002)(6506007)(2906002)(8676002)(66476007)(66946007)(6666004)(478600001)(45080400002)(41300700001)(53546011)(26005)(107886003)(2616005)(6512007)(31696002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?anVQeGoxQlNWNHBVVmxrU0V2SERDUHY2TDhrTTJUYituVTM5Wk13Mm0vUW5B?=
 =?utf-8?B?bzBiWU5VL3RUemRGS0dYSEZtTWZmN21QamNXaE1UUU55ZDhYODMzM2hySFBB?=
 =?utf-8?B?YmIvaENmUlVmbXI4MWIwdTZ6MlNTRWlDUmEvN3ZQNG1Dcm5DT2I0YWJrazdQ?=
 =?utf-8?B?M1A5OUNMU3lzNExOM3U5TS8zT0VvK0M1QmFxcDdvbXdvMFJ6WWh4YU9LQndj?=
 =?utf-8?B?UVdKcWxGeCtsOWd0RjZrb1ZJNjd0QkVmaFRLNmE0bmtUdFJ2Q3dPMFJaT0RH?=
 =?utf-8?B?elJJZXNDVVg0N0NvcGh1U0ZQb2NVN2hEQ2tORWpJL29OM3Q3MFZYTVNjMnBT?=
 =?utf-8?B?UGxtckZQeG9JdmwrTWxlN0k0Y2xiUVJRbDRmTFRzNTdrbDUraU9yOHl1ZGJv?=
 =?utf-8?B?cEtsdGtPbVJRY0tTZTZKTUY0UEFkdVFsOWVnRmJkMW5CcDNWcFdmUkhPZUUv?=
 =?utf-8?B?Nko5MC9IQTFRSXg2WkRDbUtNd1NJSld0YzM1dVNZZ0tjMkwrcndlR05CeGJH?=
 =?utf-8?B?OGp2ajg4NDNIVVdURkhlOGpLYmlnWmRWMnd2WXFOcXpockFNeE5ZMjJNVTNt?=
 =?utf-8?B?WGtwNEpFeElqRkdxb1ZGTlNLWUlLaXFwVkZaa0JTVlZPU005ZWswUXFia2Ir?=
 =?utf-8?B?OVdFMnBzVGdBVHYyQWptQlZ1Nyt6TGZGd1V5R2hPdzFIM0tEeXF4NmVadlNX?=
 =?utf-8?B?SG4yYjZsRVVQZjhMMTFscTA1MmpPY0UvYWtnMG9TQUU5OHdoZEZRazZFeHVS?=
 =?utf-8?B?SzNwWkRjOFVLL280ZTJkY0pydkcrL29IcHM3Z25VUHU1eFA4SXRySUd2dVBy?=
 =?utf-8?B?d0d4bEhoTjZIeldHVUlnN1ZFdUhoSDR1MTRPRkZJcXdiUzZPdy93a1BDUVZT?=
 =?utf-8?B?ZW1zTDNrV214Q2JJVmJFMk5NTTlycGxXdXI1TktEaDBKNU5XUzFRb1N4SU5D?=
 =?utf-8?B?RGpVcHZkZFFjSkg1bEdSMEdheGxEa29Reksya3JDTVZmMU81eENtMU1mQ3gx?=
 =?utf-8?B?V01GTEptSjMyNnU5eWlFMzhJTE5UZUQ2RGFUdDJtOXV2Y041YTc4UEJQU0U0?=
 =?utf-8?B?eVpCdjJFSldDS250SVJycHR6R1p0eTU3cG9HaDRCSlUxMEFNRzl1S1R3bmtO?=
 =?utf-8?B?N1grMWw3Uk9KVEs2VHBMWnpDS0N6NnJ3aDl6bmlPd3FvSFoxSzJPVHp0NHJz?=
 =?utf-8?B?ZHN0bEloY0lZcWRkN2VLOGNqSDRoYWlnR2w0UVhncXBRc3c3ZTlMakZsWEc0?=
 =?utf-8?B?bldhOVpZM1BqUUFKbE5URjJoVHlOWlVaSVBWbUR4eExKSlR3ZXJGbEkyL2NG?=
 =?utf-8?B?S0xVbGIyYjZiU2dBYjlkQk5hRlIxNkdvVDNZcXBQQ1pCRUNyRTdncUZXaDY1?=
 =?utf-8?B?NGdMTmNjZ3h2aGFGcGw4M1BLWnhqdnc2VXFKbjJVZnhLVHpPVE1ObnE0UGNr?=
 =?utf-8?B?VkNWUU1XMFRlRnVVejNrdWxFSmhCbVZtZUlUN1RBVDdXeDhMUitkQXJZcUhi?=
 =?utf-8?B?R2NMSzNFckhwaDFWdVJ5VkRZQzJEYzhnK2s2aGdwS1htNGE3OENMS1hmazh5?=
 =?utf-8?B?cmcrZDZyQ0tzMnRvbFJGVDg5ZzkwVHlxakxCckpXZmROZkF4ejFJRDFnYzQy?=
 =?utf-8?B?RnhNWElDTmxmMURnS2l2MlF5OUJveDR2TzlqSkFjSFp5TERMeEZDeEpmTWYx?=
 =?utf-8?B?Zm5STUZuWHdxNlRPMzdQbG90SjV0UVV4UnRJZ05ZTGlBU0RlOURBbEJMRHVI?=
 =?utf-8?B?UWJRN2diU3BPaUJmakhaRE4xMFFDK2R4RjFUNHdRbWgxekRQeVFvNmxyaG1v?=
 =?utf-8?B?TU1HK3l1MzFtaGQ5eXVFWCtMdEpNQTlXTUphT2VIVkpwVVpFQ1JSMkF2b3Er?=
 =?utf-8?B?RVFVOGFxS2Jjc3FWRGRrcTBWWlhRTkVVVHBEVzR1eFVvZk54SVdBWnZwUWI1?=
 =?utf-8?B?dGVXdUR3dExzL2krZkwzNUJSb2R4a21vNG1UcVJGdGovKzJsQ3pBM3FzSUFq?=
 =?utf-8?B?eDBOL0NzZzJxNGdIbkdYNkdoWVRjL3Q4aFZOb0QxQjg4UTVIQkpGdXpTMUdn?=
 =?utf-8?B?M2NrZEdLbTZOcGpwendCL2NueHdsV0R2bFd5VEJTYllYS1pSa3BXM0FzRHJN?=
 =?utf-8?B?cDFBRG9xUkdFay9hL2RXUXJJeFZ2N042eDNtdTZwSXhBc0NiOFBZa2I1QVFI?=
 =?utf-8?B?dVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e32fcda7-9425-4674-ed62-08dbf707b05f
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Dec 2023 09:34:20.0575 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +41l53kINtEC2ZZJgO4Y0Q88e0uaWu3UHv+ilsOXFbhKtPPgc1BLaffKYrUz5lrIIutbOa2WkXZduTa7n9CehBQw72IMf4zGSo+KOLHxN/U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6620
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701941664; x=1733477664;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=syHTIDbQXCFSuxVyGEsi0NkgArpwnJ3OWEAT+dTmto8=;
 b=RzA6lmm1LjY3T9JepMaZKIW6bzDtK0qYFWoi6txEzIYV7//cHRBF2ETd
 GCk7Npw1sA0vpywo6+jSMjh7lTA0QE0OtY3fjhU+4+TfHC0xSrDuiNAuj
 ugHQ+RgM4SEhl7RbhuvPcQCjmw0p/+vbutcdlgU3H1WWTCZ9iVqL++5DW
 zBpT43IKFIfR36xWarNirXbwAaFYjqXxI4uY3k2ZKF05VMUocFfTzFq1n
 kgfghEBpcL4/u4cBZy29d8YkOZaFz3gfcOgVjbU3cjwwA0rPjCxc/Gkfd
 yAhM7IaDnFoRJbpx5uzDsj3zG2kZPRt+CvEjj+nyhWsnbtDgZcOw6v3X2
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RzA6lmm1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] i40e: Restore VF MSI-X
 state during PCI reset
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
Cc: Karen Ostrowska <karen.ostrowska@intel.com>, netdev@vger.kernel.org,
 Drewek Wojciech <wojciech.drewek@intel.com>,
 Mateusz Palczewski <mateusz.palczewski@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/6/23 13:51, Andrii Staikov wrote:
> During a PCI FLR the MSI-X Enable flag in the VF PCI MSI-X capability
> register will be cleared. This can lead to issues when a VF is
> assigned to a VM because in these cases the VF driver receives no
> indication of the PF PCI error/reset and additionally it is incapable
> of restoring the cleared flag in the hypervisor configuration space
> without fully reinitializing the driver interrupt functionality.
> 
> Since the VF driver is unable to easily resolve this condition on its own,
> restore the VF MSI-X flag during the PF PCI reset handling.
> 
> Fixes: 19b7960b2da1 ("i40e: implement split PCI error reset handler")
> Co-developed-by: Karen Ostrowska <karen.ostrowska@intel.com>
> Signed-off-by: Karen Ostrowska <karen.ostrowska@intel.com>
> Co-developed-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com> > Reviewed-by: Drewek Wojciech <wojciech.drewek@intel.com>

It's good that you pass tags from our e1000 ML here,
however please copy them verbatim from the response body (instead of
copying that from whatever MS outlook displays as sender).
(Wojtek's RB was fine in previous version of the patch)

> Reviewed-by: Kitszel Przemyslaw <przemyslaw.kitszel@intel.com>

You should never add such tags when not explicitly provided by reviewer.

> Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
> ---
> v1 -> v2: Fix signed-off tags
> v2 -> v3: use @vf_dev in pci_get_device() instead of NULL and
> remove unnecessary call

Thank you, code looks fine now.

> ---
>   drivers/net/ethernet/intel/i40e/i40e_main.c   |  2 ++
>   .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 24 +++++++++++++++++++
>   .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  1 +
>   3 files changed, 27 insertions(+)
Assuming you will fix RB tags:
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
