Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D221860573
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Feb 2024 23:10:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6B52E41E33;
	Thu, 22 Feb 2024 22:10:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jXO3GH5T5Jny; Thu, 22 Feb 2024 22:10:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 34F6941E29
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708639842;
	bh=RLvUkPS3pZGj+Hupn2yR5zKjAd2XJMAFxquJwejGqy8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EHGRg4ogel+VsLmkrVp9rsX/Vsn0MYZTX2jQwhG4xG2cC8rs2DShM+aouY6RfS56T
	 NCozspq9ec8rhntigBd9b4WmuuhxudKpo+Bc6Set74KM9s/9k99IPECriG1pHxz7ag
	 RzD2lCG5Ydmm25RiUDYifq4g9C6glKYPL3I05eUCUBE3KOrVAKdacHQaTXkSterFrw
	 KrgG7PdCXaYOOdl9Q7G0Iuy4UgVAHAliE20gsj8Ljs7vAL1FNFXNXeARAHd9ZZfLMI
	 I9TEUoiWVu6Cof0z9QAJxT6hI5W8XrEFkQNfAOLinYj1s//BNCd6ZF0Q8xb5Qcaksj
	 DGU9JmyWyLIsA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 34F6941E29;
	Thu, 22 Feb 2024 22:10:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9C8B61BF379
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 22:10:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 87A2482CF1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 22:10:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wPRATEBfRKei for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Feb 2024 22:10:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 85E6F82C38
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 85E6F82C38
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 85E6F82C38
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 22:10:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="6683808"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="6683808"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 14:10:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="5947638"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Feb 2024 14:10:25 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 14:10:25 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 14:10:24 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 22 Feb 2024 14:10:24 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 22 Feb 2024 14:10:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cb/7UB6ZVgUOMFvpba4uF6EAKcEUmzpnDcAQpDzQJ5hFoGzDzVaUSUjS3NdSmsz4wtnXR5GyAV+4p0ARBxWJOC25njcoL2yG3WqnCzMDe+kDC6PltROmiWsOCXAtye68MPf/Ojdv6vz4w2DR89109In8tE8ROzQhrlOlgXy/6ylwkGcgD7MI1CFo/YRlkMQSiAdmYnSMCXFu/VDnpP45UDeZbqgOkhasbPR/bBz8CPkRMgfM6rkRj7R8cz0274EuyqszS6HYKbkPGjO0QzD+UmPL9WnWlMVgIetP1kQDzjCiz+/HxwmrUR4LkS5Awbq/mjO659HXWGPHZ+goqjie3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RLvUkPS3pZGj+Hupn2yR5zKjAd2XJMAFxquJwejGqy8=;
 b=X2O3XJnQmDfqEZfL0DWufnK1OMvqz4k6ueJ/58qEcMK3Ir+yP81V2JDpHkTF8oJgXh4ekIACezaY/CZS/PwbSn4xUYIgxtTB7VPcD4oEgWBuorIqSf7E3Zt/lq/+mclHx9oAIm4k5DLpcVSlsp9SdoVTaZXAkFxKYIjBM+dl/JGkdvMZ8Zt8d5ApKvYxD3Tyx4yH3tZiF4ZND7OWqEJhCHsPAvqXnO8O+u32xdXXrqJ4dMCoulZd6IoFAOY9ZXCpeA39xoVD1eIGzrbIjHBxzgJc+JatAp09TU9w+MluWBlCV3QHgCZVsfz5W2LOh/31CuEAyqFQYKJ2JRpT/kr66w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by DS0PR11MB8667.namprd11.prod.outlook.com (2603:10b6:8:1b3::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.39; Thu, 22 Feb
 2024 22:10:21 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308%4]) with mapi id 15.20.7339.009; Thu, 22 Feb 2024
 22:10:21 +0000
Message-ID: <481ea432-154a-b3c3-73ad-4a5ab6fe25ba@intel.com>
Date: Thu, 22 Feb 2024 14:10:17 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240220231720.14836-1-jesse.brandeburg@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240220231720.14836-1-jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0176.namprd04.prod.outlook.com
 (2603:10b6:303:85::31) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|DS0PR11MB8667:EE_
X-MS-Office365-Filtering-Correlation-Id: a69e81f9-4321-4f0d-35ab-08dc33f30fbb
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /uSa7uvsOXrxMgxcOmm1n+0pHYkv0Vm9DCWgU82vJ/isHTYnTB16bQv8na11/MNcOpQ6j1CQ/iQqXIkHvc+MOq6AIZZ2B2txq4ECLQkGO3xkdSBN0uzEJVoWtP6Jz5HwrEkXfBKSsPD1I/OoVodlgfNLokZPHcKdd/5JTs0+iPqn//G3ovXA3tmE/m0a9RM+PbIfBEsjU+KMPejNZSlslrErIHWCN3g3tclSXx1HG5wgDSfwqSYVYVdytAjIpfnMuAqhDUZa42ZxQuvPooEl5TGRpgPM4qG2i9zZtc/WHCiptE4w8XJMOn0rEnajdvo9UGQ0N5LfxM182uVnfFyOkVMNPYbGS66yCP48yXrB4HucliEj/WX9vfFged1PgNbeeF4QY4yaqMcN6CNj2nlaD/MskD2Z2dYWbvMVdwHvUQcFxE7c99R/wL41VFBnqwMx7Md2arvIRfez8eAufYH0nW07m9wV47QXjQAi7jzcjXiOJJ9xA7MEavKWDLf4UmC1osgBccnIyBUqyRZUiuTmiQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aGdWTlZSdHg3d2lxZk5aVDVVejFpR2RLNlUrWmlydVFHL0V0M28zVjh6UDBp?=
 =?utf-8?B?VEJXcTJZRjF2MG0rcFRuSWpOWmp4cXI4NDVyY2ZJdzFuZWlSM2NkL2VwZTR1?=
 =?utf-8?B?aWdBOEFUaHZuVXZaN3NyeVRZdHF6ZWkwWlRjT1pQOVp6R0NINGVuRmRSQktn?=
 =?utf-8?B?dGJCOTNwa3Q3czUybzhYdDB3cy9PT3hHNGh5Q2V1SzZ4TVpTYXBISmlML05s?=
 =?utf-8?B?dWx1QkpyaE5aSC9PR0pWVXgvaDFzZHUyakJKM1VHd2M5NWlZKzhPbWRZYldm?=
 =?utf-8?B?RkZHS2JTWEFwLytoT3Vtc0VpMjRZWU8xcFBrSHo5NWRyQWhwVStsUlJCcFJv?=
 =?utf-8?B?cE51c2tRWlJOYXkxY3dpQU81ZGJPZkkzcytub3BmU0RmZ1ZsN043UjE0QVox?=
 =?utf-8?B?QnF4NS9CdGk1NXFJd21CQ08xVDRLMzRWTE5nbjExbklGOTBrWThVTzFtckxH?=
 =?utf-8?B?K1VwM2grUkdNbllrcGdOcGUwaXAzdTZpMXZGNkdaWGtjTGw4RDdUU1RQbEZw?=
 =?utf-8?B?Wk9YVDJpOC8veDAxQjZjZ0R3WTg2YWJVYVR6QkJtM3VMZDRYVFFQa2IyaGpB?=
 =?utf-8?B?L0JPaXRmSTVObmRNUThXSnUvT2FGQmwxc2ZQMEtyUW5FbzY3WnBSaHNBN2Vr?=
 =?utf-8?B?dDJVSHBwTUNkTGN5eUtpdlVWek5yZkNmdFFidVpnd09BY1Q3aE8vNlVacG1H?=
 =?utf-8?B?UkNLc0NTTXE2MHRSY2RHTmg0cCtLUXk5Wks4cU1PLzAyMHlrUWZrVGdOQ3Vl?=
 =?utf-8?B?czFVaGxHU1FQcnFWQW56VmJ6RlU0cHpmK21VYlFkbWI3cERXNUd4bzZxdkNz?=
 =?utf-8?B?VFNydlM2dEVwamE2Yk9PZHVpRDl1b3VSWEw5RklaMmJObzkyNERjckI1b3Bp?=
 =?utf-8?B?a3FEZTV1bmxRcXQ1SXNRMkh2UWg1UTVnRnRZT1hCN3NVRXIvWWhWU3lhMjE4?=
 =?utf-8?B?Y2xVY1AxMWN2T3NlNXU1dnlFNHd6UmhCWTlkajA0aEVxMmlYeHM1K0IvcXBK?=
 =?utf-8?B?bGJac25rQi9Gc2txNEJySHZEcDV5dTdqdlJqbUNiRktBdGdEQ293RFpPWGdw?=
 =?utf-8?B?NWdCQVFZdmo2dEw2Q2xnc1B2ZkhuRFNORk1XTFRMcXFwNmppZjBnWkRwZDFp?=
 =?utf-8?B?VHdlTzdOYU9ZUFZwNjYyK042Y0dPV3lIbEdqRTlyNFFYTzIxYlFnaWdQekhi?=
 =?utf-8?B?dzgzQ1J4QUxDY2hYbG9iVHM3NzVJRG9jNUVwNEVrT3pDYnpCN1VuemtReFVK?=
 =?utf-8?B?K1pXSzdkNFhPVTkyT1RNTHJUQi9NWEwzNEt5ZkdXb2RMTU1INUFPYXh6YlVP?=
 =?utf-8?B?eUQ2a2g0dmJsVzZoVmtOOTVMMzFIRDRpeXRFc1lwb3Yza3lCdWo4T2k1d2dV?=
 =?utf-8?B?UC8xdEkyYXFjMThLaEF4Q0xqdUlXQWNXc3MyV0s3aUZuVU1QSUZxTWl0L25N?=
 =?utf-8?B?Z0VpVHNYYXd2aWVQRHU1VmFWbmZXMHROT0M4OFNuKzRBYkkyS2ZNampzWDh4?=
 =?utf-8?B?Rzd0N1JVNXB5TUltQldwVE5wRktCZS9Rb0ZJWnY4UytXeUluN3ozM3prKzlE?=
 =?utf-8?B?MUFEWnBQVjVWNnpPU2o4cnlLRTh6N0FCMUIxbk42V3pRdENwQ012RDkzK2xG?=
 =?utf-8?B?Yjk4dXFVS3VXLzNqQnRpRGpRYXcxcXhUdHNsM3Q2Z1FvU2RHcnBjdlA4TUNN?=
 =?utf-8?B?S21wUEZxL244KzJlMVRrWXVQQllDa0FKa3pIVGRrUnhWdHhhTXdMNFlRNGpF?=
 =?utf-8?B?QkF6NDYvcTJhUkIwWmNJRkpQd0RmbFpjZWx6SGVVbUVZR0srd0JzS3ZDNjlj?=
 =?utf-8?B?endjSHE5NXozZWpzNEpHbG1XMDJoUFd1d2N0dktVQUs1MUkwNVcvdGtWVnQ0?=
 =?utf-8?B?ZGxndkpsbDVlTkpJWDZYTzl2UmVxWFhrWnQyM3pGYlVFMUtVQUcxeGYvakVY?=
 =?utf-8?B?U1VVWURHalVkbk1XcE95Unhhb0JTMWtWY0hiNUttZ3Q3a2V0d2djQnN5MVFV?=
 =?utf-8?B?aDgwZ3ZybkI1czZHRUM5SGNMZkdqNnVkQWFPYzRLdGNnQ3U5bDhudlM3SXdM?=
 =?utf-8?B?ZzNRdkNialNhQXlZaU9HVG9MR3g2SEE4endqUzNaMDN2b1RNbzlKNkdEWEFj?=
 =?utf-8?B?KzBUYmNMZVBnTHpWWjhGWEpiSzM5SCtuSzV5K1VHYy9kakJZTzgvOW5JMXo0?=
 =?utf-8?B?dWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a69e81f9-4321-4f0d-35ab-08dc33f30fbb
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2024 22:10:21.7795 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JyCZpJG9ftJtUMEQq9Ga/8rmbzFgDpYDjB1tb9fmF61NYnUuJPviZXDRnMFiijO8XRoPF0tvqRe/q+JnV29tnzxhE7JmGlpychcgG/6+mY0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8667
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708639839; x=1740175839;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=I8at2lnLjP0x3HJLN7G9TSWr36DxLfhHfEiZQrKT/e0=;
 b=h134/bPKGTwCAbW0jhd3GE+uYdvgpfZwpN3sQMT7168BEcozH+LSy9Tx
 yoEWFj9q3TrJM3jCgToLsP6DvGXBry7Np87e1ZcMiz3IyDWMsWmv5QkHp
 54fxGZnbBnAN+o3zL7BT1+dtv7sTCCAFp1YoPoNR/CzxoviuPr6K1SFjB
 43KU/0FWijgSI4XjkURKhnHa7jMpgz9qzyV6RR9qxzH1dbP9GMkps2Obo
 mwWwMHQVLiWzCO6DJSa2H2Gs4/MHNQkuQPgsEOQGzAZYviFq8dCtQlqea
 8Ct4Oqv9tv1v4jnfTcEzYximOefRu0wtKIqdRscmTJqJlsNDRCPfapceX
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=h134/bPK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix NULL pointer
 access during resume
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
Cc: netdev@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Robert Elliott <elliott@hpe.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/20/2024 3:17 PM, Jesse Brandeburg wrote:
> The ice_suspend/ice_resume cycle was not updated when refactoring was
> done to the init path and I suspect this allowed a bug to creep in where
> the driver was not correctly reinitialized during resume.
> 
> I was able to test against 6.1.77 kernel and that ice driver works fine
> for suspend/resume with no panic.
> 
> Instead of tearing down interrupts and freeing a bunch of memory during
> suspend, just begin an internal reset event, which takes care of all the
> correct steps during suspend.  Likewise during resume we'll just let the
> reset complete and the driver comes right back to life. This mirrors the
> behavior of other suspend/resume code in drivers like fm10k.
> 
> Older kernel commits were made to this driver and to the i40e driver to
> try to fix "disk" or hibernate suspend events with many CPUs. The PM
> subsystem was updated since then but the drivers kept the old flows.
> Testing with rtcwake -m [disk | mem] -s 10 - passes but my system won't
> hibernate due to too much RAM, not enough swap.
> 
> The code is slightly refactored during this change in order to share a
> common "prep" path between suspend and the pci error handler functions
> which all do the same thing, so introduce ice_quiesce_before_reset().
> 
> While doing all this and compile testing I ran across the pm.h changes
> to get rid of compilation problems when CONFIG_PM=n etc, so those small
> changes are included here as well.
> 

...

> 
> Fixes: 5b246e533d01 ("ice: split probe into smaller functions")
> Reported-by: Robert Elliott <elliott@hpe.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> NOTE:
> Requires Amritha's patch:
> https://patchwork.ozlabs.org/project/intel-wired-lan/patch/170785373072.3325.9129916579186572531.stgit@anambiarhost.jf.intel.com/
> to be applied before this will pass testing cleanly.

I think this may be the other way around? It looks to be clean for 
netdev (doesn't have Amritha's patch), but it's not applying to 
net-queue (has Amritha's patch).

 > base-commit: 23f9c2c066e7e5052406fb8f04a115d3d0260b22

Base commit also seems to be a netdev commit.

Since Amritha's patch is pending to netdev [1], I think we need a 
version that will apply with Amritha's changes.

Thanks,
Tony


[1] 
https://lore.kernel.org/netdev/20240220214444.1039759-7-anthony.l.nguyen@intel.com/
