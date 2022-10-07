Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4257B5F7C3E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Oct 2022 19:29:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 971A740198;
	Fri,  7 Oct 2022 17:29:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 971A740198
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665163755;
	bh=dASrtav1FIEpa4U6ZnkIVMiWrXz/b6xmzPg7u5CIc44=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=alYkyX4QcgnmswCc0U74ifS9zwmSKZH4uZ/XVj6pSfGuZsFlstghKYZFJMyDiMHIB
	 +GsntfizEz02N1C54vW7tcO/c2KTIbmsYQNPcvxAC/P9R9zoi1EtPTqQfP3fnTYGcZ
	 Fpww9AOmz10uMdbKyjo1ClohXCC4v6zWsFgEOgg7G9gUT2jufWxCzkB1yE077L4gjj
	 obb3yAMG9GjpWi7JSlSADyp+2wam+kolQnmoRSLwdWPFx1SHwfDldzd+jlUz4NXVGY
	 +VkBdbv/a5jLJEFvEFDY6q+brG2qLyZhZrGAQWJeBcjscFDQscjwumWjBScI5Kn1Xw
	 +9XootDjPmOpA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L0DpTatk13uQ; Fri,  7 Oct 2022 17:29:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D8B3B40187;
	Fri,  7 Oct 2022 17:29:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D8B3B40187
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E874D1BF35B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 17:29:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CF2B0817F2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 17:29:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF2B0817F2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DS_9Tj4bJTrN for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Oct 2022 17:29:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F37578144D
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F37578144D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 17:29:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10493"; a="330230767"
X-IronPort-AV: E=Sophos;i="5.95,167,1661842800"; d="scan'208";a="330230767"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2022 10:29:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10493"; a="602946583"
X-IronPort-AV: E=Sophos;i="5.95,167,1661842800"; d="scan'208";a="602946583"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 07 Oct 2022 10:29:07 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 7 Oct 2022 10:29:06 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 7 Oct 2022 10:29:06 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 7 Oct 2022 10:29:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c2kKcTyOK3kUk+5MdZQs2TGzPv+E+28PZ1q8ms/KBkM13IYExdi9ka7L1iXAiWsgTHJjZ44cAYt5/RvpQG8ULt3uLCK9BLq7AKbj04q1r/Tu9chRGysJP8RPIrxP8DdH0IEj+wNShtsU5f5vMNilZVlZpaEKNSxNp2k9rQsbZ6boUW9yn+TKqgoUBFODbHAaJrAaHWWgYkemxW8+EhGmqX+B1Rb4G/1qfcEz0ZQ/GF3s2TJqrIW+ZB3WyKvUjgM26fe/6SJ5jon7axZO3q6c2IXWIjjc9ocP1oY/Cxj/l/tmVMgGVkK7udzfIeMOwkN7ACkCTAFK+mtfrx3aXsL3Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qffVwcDGCcLt5H9dECZ0knBk4OCY4x8wLn7R3MnkUVA=;
 b=ik+NXybg2LvOkxk+kcDaS0VIVC+BZswU0B06DbaBXCGT7LpstpHmOllcjDblFpY24MfzrbZeo+75XFngRXqp7dqdhEu/bu+n+RB3IXxSgAXgJe/drWwJar+arV6xH0kAPGSHVWRPrcbFQeaaqvmyIe1tVdt28Wp0EcpWSISw/oS+KZqmKqvhBmWtJ3w0t10Y+1jVlfm/R+bFY0bHJPDWhapE4iMvxZwrelmqsmgJvQ2sBMrbugMkC+QiHngPS/yQ2adMN1u9mR8FnOPMOVJ1UrJiU/NZ5k09VsfKAEL2OZZWG1AY6MNn3cTBhbRM/dbO5K6LRkWOsmoYtYQt5GLxpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CH3PR11MB7321.namprd11.prod.outlook.com (2603:10b6:610:150::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.24; Fri, 7 Oct
 2022 17:29:04 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::2b69:8b23:1fdb:b4ad]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::2b69:8b23:1fdb:b4ad%2]) with mapi id 15.20.5676.036; Fri, 7 Oct 2022
 17:29:04 +0000
Message-ID: <d5bebdad-64e2-fbd9-5298-790e4b0e9667@intel.com>
Date: Fri, 7 Oct 2022 10:29:02 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
To: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20221007080722.99641-1-mateusz.palczewski@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20221007080722.99641-1-mateusz.palczewski@intel.com>
X-ClientProxiedBy: BYAPR04CA0023.namprd04.prod.outlook.com
 (2603:10b6:a03:40::36) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|CH3PR11MB7321:EE_
X-MS-Office365-Filtering-Correlation-Id: ed4c3ad4-c4f8-4535-d505-08daa8896e49
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BRghcDG9B2N9vvSv8TnqBMqQ7nhFkWJSF7O1d+iLGmVMU6AzEb0R82Wj+BO9zhreJJhZU3OWNHK+06kNhMichR5n70b+81cArv3MZR9TjI4VDQzhIbLBd6416JkcDMz1YxWu8uAg9SlMei28/pXN34tlekWVli5GS4UY5vGwy4T1XopCVLbWCHFc8bIoLMkbCBydl3TbnHA6KdOvoK1ZQSVS45MoKAG3ltC8p+PbJ+gHShPLgzAwJA2bguecvpNdcJfktUMAZvDzuVTm4zOYLPjTgwdMtndv1FQslA/J7NiOPFg62RK28GR/y8nCilJuahkSZMXmGRPZpOdEcLG0UvdUlDR4gHpFBo2tWNTUXBuqgr7wg/E0zYf1t1+7gT4ssXP6v+N4yuPgkITGMaUTaeaUfIMNJGPcn6wI3iNIlgunahXjw/K1vaHpp89Zy6n1Y0urhzYw55bh/d1LMAfT/KtAHXk6JdZYGnDz268KTIZ9gTOZroUnbI9rswdvveFagccM6xGSAng5yWfPhVWn7UgT3PDRKfK71kTVWKA9MuPfAvw2lZUgvtY23VaoSxDmECYwbBTxg/CPtGLK2VRI1hrUzaVHg6eAVroJG4hLQoI62Kk/ngARLy1V86Dvh9uEIP9kLRZ7UVIYeopzhR8qVoukRfEo9pmyWfmajebHZ9JrUyWOCxftHuREZjFIHKfBsMtDJIfe+YpfgXxBMYV0OlcrB52sMIXEt9tOIpEjM7LrSViTkQl2JEkZYkqNJn1xOq5QIPbemg1ldD41IF6n8tyynezFGVXxjwIo+1s8pCI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(136003)(346002)(39860400002)(366004)(451199015)(107886003)(38100700002)(86362001)(31696002)(36756003)(82960400001)(316002)(6486002)(66476007)(5660300002)(66556008)(8676002)(66946007)(41300700001)(2906002)(8936002)(4326008)(186003)(2616005)(83380400001)(53546011)(6506007)(478600001)(26005)(6512007)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?akFOb3JEWjhpVmN6dlRwaTNHcW8wbEM4Ry9WZ2xaNitwUjFhekVJWjkrdkNR?=
 =?utf-8?B?Wk9hZEpnQUlSNUFwYVA4WkxzOVoybmtDU0J2TFBWcnNqYWQxakUvNVBZK0lM?=
 =?utf-8?B?R3phMUsxbGRIVndYUmo4bzYrQlBsSkxIenhiRmUzTTg2RWpZek5Id0hISHRG?=
 =?utf-8?B?N0dzUnNNUDIwUFZkTG5qYWVWWGV3ZjJoem1VeDhyV3E4Zks3VkdpOFQyOCtP?=
 =?utf-8?B?Nm1WNXdIUmYybEtjdlFqdXQ2MllhVWJFNmlSajBXNnQ1dWZ3SnZvVnkzdGFI?=
 =?utf-8?B?akhpMnRwcm4vT1BUTG1WRnhaV3d6K2RiZ21CZytwbFhCYU9SaUtrT3FOVjI4?=
 =?utf-8?B?Kzd1bThKWEZYMzR5dUhjdWUrSVNuNHBxUmJqak9zRFNDOFdaaGpPWm5GS29J?=
 =?utf-8?B?eXA3QldqenpoSkhRWW1rWmliSkhtWk9QUTZsTC9CVTlPbTUycUlQbG9KQWZ0?=
 =?utf-8?B?YzZhUjBQVkRoSFJYWnhzOWpUR2JIajUvWm1USDRQUkZ3Q0hCVldvVUVWQW9H?=
 =?utf-8?B?eGhNRGdKYWJNeWtQK3d6VWZCekwzNVdobExYdC9rSUErVlBzNldDS0UwMmVi?=
 =?utf-8?B?WEZTU1QwRzlaM0JOZXEwNW1UejZoZXgvNU4wenFpSzhYYTd3eFA0bVQya05X?=
 =?utf-8?B?elNtN2MweUEyNVJ0N3ZXMkd0aTczaWI4Sy9xUGtYWHdtMlVURjZNLzBOVXMv?=
 =?utf-8?B?S000VFpDOTAxOHpia3IwVWxJZjFwOXZwaXFKdkFtb0J2a3Z4NE5VK2hLa2do?=
 =?utf-8?B?cVpwNDhxR1o4U1k0K3NCUTF4VU5GbVlGcklsT1J5WmxsVUNhY1djc21xRmF2?=
 =?utf-8?B?NWpMTDVoZ2hQKzNWMDJRQVFxVzZ4K3Q2NXVNSEhTbmFSb2tCd05qS2gwZnNo?=
 =?utf-8?B?cUNjaG84UWdIU0dVZ2FTdm5INjc0aVV1WFFkRzZ3MlJxbllKaHkyNHdiZ3hF?=
 =?utf-8?B?Y2RydzAyNDNHVDV1bzZzVk85QXZ1bWprTUkrczNlQ3E3NzJqbDR4SUU4UVVG?=
 =?utf-8?B?WHVSVGwvZUZpNmNleHM5TTU5TEtoWlNWc3BvTHIrZWF0U281T0RJaTJKMVJz?=
 =?utf-8?B?ZWdKaVpXWWJUOHFuWEQ5RkN2MlM3aUJLenU0aG1PdTM5ZUNUU2ZCRmNHZW9v?=
 =?utf-8?B?UzNZY2h0Yjlldlc4Wjd4SG0veUZoTW5IMmVQT2ZubUgrUXNsUHdRYzZXWGNZ?=
 =?utf-8?B?Mlo1anhHZ0NRYlBsN0ZKY05UaWVmQTU2dk56NnVncEg5N0hZNXE5UVcwYzBQ?=
 =?utf-8?B?OS90ejRYV1FYTzUyNzBOaDB5L0V6bXhrRnRFY1RoTFA5a0UrMG9OSXRQV3B6?=
 =?utf-8?B?NUxPN0lwdXF4bm15d2ZYc1JzSXUxMjFITlJkQ0UzTlRZTXM3emVhSHJOMDdP?=
 =?utf-8?B?dTdBcnJLdXlWRXVRdEJFbHRYV3NKL20vR053ZC95YWJCZUlwdDlsZGVweGFX?=
 =?utf-8?B?cUludEEzMnFBaVRWeDNidHdXbkZSYlR4SHlNVjJjSnlXUGY3ZkJKUVU2RGh1?=
 =?utf-8?B?ejdPRCs3a3NsSDJRMTFobGVrSnRXZ3czN1BBZGs5VEExN0JpOXdMdkw5RW52?=
 =?utf-8?B?OTJOcHhGZkFNenNXQWJHQ3BvdnZsVktNZDRTdDRIMXA0U21Qcys5aXlmY0Fk?=
 =?utf-8?B?Y1E4dXJrckRmN3lRdHRsSlZhTTM3Z0FmdzMzTERpMjFHNko4TkR0RWxxNXc3?=
 =?utf-8?B?ZVNieWE4OSs5eTNCU1haeFBVVU96VWkzZmlzQnFqNVl1RkRFbkF1T1VST1I2?=
 =?utf-8?B?ZktsaC9qMEVyOFZRUU8rekM0OWxrVThPS2ExZUxHRUkvTzZtQlJYdUJmRzBU?=
 =?utf-8?B?UWRKYndZeFVQbTNqQkJQMHhhMDBONDEvcE9zU0VYUFRsNlBvZCsvTEc0T01i?=
 =?utf-8?B?blBxa2xsQ2xIRmFUTndWWnVSMkY0ZUROb2p2MVU4bEdMV3ZpdjUyYXQ5ZFFw?=
 =?utf-8?B?QmFKZ0MwVFoxSG5leGRpNnc4U01NUmE3bTNLakNTR1pZZm9nT2tQT040Rnp2?=
 =?utf-8?B?QldCSnl4Y3NtYzhHcHB2ZTJCQU9sdE52bWE2MWdrU1NDUDFLWlNwd1kvbC9H?=
 =?utf-8?B?U3NqNEVHQUZIdTN6dVQyeEljZWRxZXJoYTJaVlgvUjkzOVltNHlkMjl0L2VZ?=
 =?utf-8?B?UDY2blNsV1RYUVpaSVR6YXpLMkowMFZUSUJCY204YVhmdmRBZHBhZlBvSElW?=
 =?utf-8?B?WUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ed4c3ad4-c4f8-4535-d505-08daa8896e49
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2022 17:29:04.2852 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7aOhA/dx6i+ID3aR9fcRk+0HJyUD4TKu907NDuEFHYGj9n/IhV7+n2+fy5fmIiLLZmU0Ixz4PeSP5P9SSPk5DAo6N+7fWtRS3yMnYGP7Co4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7321
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665163747; x=1696699747;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2kZgYUkHrn6ZaRlw9uXSyJKR/vz1AtLm519ikVwnNyg=;
 b=mkq1oZTcXKfCMwyjheW8UVJG+ZXp9WbZ6FAU9VmsEZVAOtXuVEjpuYmQ
 sumOzPjcqGmGWzd9shRoJPofTpkKWsgKal48GceOXF9KDAQYURfruqW/h
 JcqZipIU0EvWls9XFE79gsdmwdNtK3Dre0Q32VVyseqZi8jX0gusHijYn
 OLj/p25CtmFMlmKP9qrVExpTYNJGY7tdsnOLEBm/4YQ3+urD5kZcfmke4
 I50DJh1h2mwj8VQOHmO5v+QHKKWE4xBeZKFaLERPxl/SkOEiMg1p2dazS
 wDLOzTfVT+CBOMaHJBiehUUuM0dSBMW5DNFTZ9VEIgbJRhuZdYrv4B+yJ
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mkq1oZTc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Fix spurious interrupt
 during removal of trusted VF
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
Cc: Norbert Zulinski <norbertx.zulinski@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/7/2022 1:07 AM, Mateusz Palczewski wrote:
> From: Norbert Zulinski <norbertx.zulinski@intel.com>
> 
> Previously, during removal of trusted VF when VF is down there was
> number of spurious interrupt equal to number of queues on VF.
> 
> Add check if VF already has inactive queues. If VF is disabled and
> has inactive rx queues then do not disable rx queues.
> Add check in ice_vsi_stop_tx_ring if it's VF's vsi and if VF is
> disabled.
> 
> Fixes: efe41860008e ("ice: Fix memory corruption in VF driver")
> Signed-off-by: Norbert Zulinski <norbertx.zulinski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_base.c   |  2 +-
>   drivers/net/ethernet/intel/ice/ice_lib.c    | 25 +++++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_lib.h    |  1 +
>   drivers/net/ethernet/intel/ice/ice_vf_lib.c |  5 ++++-
>   4 files changed, 31 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
> index 1e3243808178..9ee022bb8ec2 100644
> --- a/drivers/net/ethernet/intel/ice/ice_base.c
> +++ b/drivers/net/ethernet/intel/ice/ice_base.c
> @@ -959,7 +959,7 @@ ice_vsi_stop_tx_ring(struct ice_vsi *vsi, enum ice_disq_rst_src rst_src,
>   	 * associated to the queue to schedule NAPI handler
>   	 */
>   	q_vector = ring->q_vector;
> -	if (q_vector)
> +	if (q_vector && !(vsi->vf && ice_is_vf_disabled(vsi->vf)))
>   		ice_trigger_sw_intr(hw, q_vector);
>   
>   	status = ice_dis_vsi_txq(vsi->port_info, txq_meta->vsi_idx,
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 58d483e2f539..156a684831b4 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -2222,6 +2222,31 @@ int ice_vsi_stop_xdp_tx_rings(struct ice_vsi *vsi)
>   	return ice_vsi_stop_tx_rings(vsi, ICE_NO_RESET, 0, vsi->xdp_rings, vsi->num_xdp_txq);
>   }
>   
> +/**
> + * ice_vsi_is_rx_queue_active
> + * @vsi: the VSI being configured
> + *
> + * Return true if at least one queue is active.
> + */
> +bool ice_vsi_is_rx_queue_active(struct ice_vsi *vsi)
> +{
> +	struct ice_pf *pf = vsi->back;
> +	struct ice_hw *hw = &pf->hw;
> +	int i = 0;

This doesn't need to be initialized.

> +
> +	for (i = 0; i < vsi->num_rxq; i++) {

ice_for_each_rxq can be used here

> +		int pf_q;
> +		u32 rx_reg;

RCT on these please.

> +
> +		pf_q = vsi->rxq_map[i];
> +		rx_reg = rd32(hw, QRX_CTRL(pf_q));
> +		if (rx_reg & QRX_CTRL_QENA_STAT_M)
> +			return true;
> +	}
> +
> +	return false;
> +}
> +
>   /**
>    * ice_vsi_is_vlan_pruning_ena - check if VLAN pruning is enabled or not
>    * @vsi: VSI to check whether or not VLAN pruning is enabled.
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
> index 8712b1d2ceec..441fb132f194 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.h
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.h
> @@ -127,4 +127,5 @@ u16 ice_vsi_num_non_zero_vlans(struct ice_vsi *vsi);
>   bool ice_is_feature_supported(struct ice_pf *pf, enum ice_feature f);
>   void ice_clear_feature_support(struct ice_pf *pf, enum ice_feature f);
>   void ice_init_feature_support(struct ice_pf *pf);
> +bool ice_vsi_is_rx_queue_active(struct ice_vsi *vsi);
>   #endif /* !_ICE_LIB_H_ */
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> index 0abeed092de1..1c51778db951 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> @@ -576,7 +576,10 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
>   			return -EINVAL;
>   		}
>   		ice_vsi_stop_lan_tx_rings(vsi, ICE_NO_RESET, vf->vf_id);
> -		ice_vsi_stop_all_rx_rings(vsi);
> +
> +		if (ice_vsi_is_rx_queue_active(vsi))
> +			ice_vsi_stop_all_rx_rings(vsi);
> +
>   		dev_dbg(dev, "VF is already disabled, there is no need for resetting it, telling VM, all is fine %d\n",
>   			vf->vf_id);
>   		return 0;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
