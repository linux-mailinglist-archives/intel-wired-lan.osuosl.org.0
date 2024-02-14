Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF294854F69
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Feb 2024 18:06:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8E0F7417CE;
	Wed, 14 Feb 2024 17:06:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ppDaE0VTZC4O; Wed, 14 Feb 2024 17:06:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 655F6417C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707930389;
	bh=6MBPCRGNXay0WqzBgggEle2ga3YmUEX9T3BHs20LsI8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=d1IjE6ns1bWvK1pDvmgNbsGfLKf6EAKtwK/YpiDHcSZowtYcCsHtWlkLkKVqhO9eP
	 vBOkcS39nw0SDiCj3cGzn+9sL8J5mDYjhvjEa8bHp60fpVcTSKIyhc/2ZaIYSkTtun
	 WkACuReSE9QF1Wmi9bQjKChErxWEmhjxsLr8J2JDILpTx8QOtUrgGzCbiX25pPN6J1
	 8zxno1/3EGo/zFBoZWAjKOn34MuhkfPOh9qFFiR8l72VRoBE82GU8sbIAfUP5RKfeo
	 ULWHxYekW/tMd6UkDWdxlyIl09V8U9Eo3NCVIjFNcksiV/d4lVBiQeoF0wc1P3amJP
	 llA232t0eZ54g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 655F6417C4;
	Wed, 14 Feb 2024 17:06:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 836481BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 17:06:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6DF35416E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 17:06:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fWj8eQrgj-i8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Feb 2024 17:06:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=alan.brady@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A201F415A2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A201F415A2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A201F415A2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 17:06:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="5762868"
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; 
   d="scan'208";a="5762868"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 09:06:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; 
   d="scan'208";a="3575099"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2024 09:06:21 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 09:06:21 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 14 Feb 2024 09:06:21 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 14 Feb 2024 09:06:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ViWoagLT23AxCbY1D39VXUZrP0TZ2eb3z6+T+MzpNFVtIkzwoB3ebI8mVr7LQXM6s9MD9y05kPeWXvjeTzF6+W2fakwFAabM8S5aqzp17SXvOGGy61oh6DXNm+92awzK2cGLbbDNGHVBKYkEjgsUFw5QVOJHFZZHD84Ss7qhIkvVb7f4X3XZPfarb0hfBY2eVDSuhXLSlxrJBVu4KqEz+ThsswjzmWtt5xvpO1eum5Z0Bp2kZZ8mRi5NE8v6rp3JPw+lEPvB1p20wv4Ot+s9A4ybcR2R3imZkuHXrPzNyh68k8APcYFk5EXDXzsF3rz8CsLbQ2VcPGghM12kTqKeqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6MBPCRGNXay0WqzBgggEle2ga3YmUEX9T3BHs20LsI8=;
 b=TrRggmmCZtfbWQxw4fUTn9ydlH6NXpt9zN8ndTenlTD78ojNeXJd/rYhm4EpxLKIFeSvF45eN1EywJALjGpNwPvujK4DdXAU4r0TAu0gA7zHvCwrg+muONx7znsyJjZadWPIYSINi8mQVXZeg2WvspYpVkMZZMLSPzSVASy56ukUJCTw0B9bLsdWB9Oj+7lo8YoK8OCU0qyyqj1Hqcrhn7ZyyE3ZEoCr+VulTTmkwx4WTqlHzRXjY2xflhMi+NexfqRAXgZ3RJToIW83/7c/iZ5DaNS6d2YhCJB33YxyVkujrMZJOGTk/0t+2lYBykWNvNHRqqZux+seAsRY3kGL1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5186.namprd11.prod.outlook.com (2603:10b6:303:9b::24)
 by SJ2PR11MB8298.namprd11.prod.outlook.com (2603:10b6:a03:545::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.28; Wed, 14 Feb
 2024 17:06:18 +0000
Received: from CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::bedd:e757:f922:119e]) by CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::bedd:e757:f922:119e%4]) with mapi id 15.20.7270.036; Wed, 14 Feb 2024
 17:06:18 +0000
Message-ID: <7b89cd46-3957-4d57-88ff-ca30e517d214@intel.com>
Date: Wed, 14 Feb 2024 09:06:16 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20240206033804.1198416-1-alan.brady@intel.com>
 <08e761c6-d79a-4a64-a61a-9536dd247322@intel.com>
 <04033c1e-c3f8-4f05-8c88-f0cd642e8c55@intel.com>
From: Alan Brady <alan.brady@intel.com>
In-Reply-To: <04033c1e-c3f8-4f05-8c88-f0cd642e8c55@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P221CA0012.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::17) To CO1PR11MB5186.namprd11.prod.outlook.com
 (2603:10b6:303:9b::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5186:EE_|SJ2PR11MB8298:EE_
X-MS-Office365-Filtering-Correlation-Id: 4188b6eb-0b3e-4139-88a9-08dc2d7f42de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vvvGBeF7mxThWI6t3PpDL2F3bqL78WEBc32PHUx1WjuDWixgcvdGoaQBz7lBq5j/ffseQpRk8mn+CulAPx5oeMCYTMQxcjufxWhf2k5VjOcUm3kBdgrRcsWR4iQMv+Ves+G2MO8CANd/lzIciYyuHEYGPcT4AZt2UakwxBTVifrGX0o+LZsm/cUC02LYgcZLyXwCwbIeZK8DJyVjf7fQ7Rv4KNOic+UwlSdY4bLcRSF1Tj5Jim+qhgZt4ejogyMR3Ih3yb1VeeG1nT5GjDVaUk2HewzmKnUZ9xRViOp5WLG9CeousPNYKtewiwl1Z+gbuKJc8UDkw713TtOsRW1LvcJwAERDF/0Ww4Uq4UIyWPJnPeKkeJ/5b9aDxE+T/5Cah3f7Tkm18+7zfyhO+wyZytQQWCzdteavDh9JV28ddDeL33FXING5rv5rEoiI4Yw+pyAlJwAvXX39LD/NF+fHanKrZyoD7DDm/os6hFwRwNaYK0e+BCKwmjnJVkaOqjZ8WEVs86gWXXc24XPiQ9lU5aqB4hhh1u0IfVXc9Em/o3d4qiuU+StbqicnnGK/ODSN
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5186.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(366004)(396003)(376002)(136003)(230273577357003)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(4326008)(8676002)(8936002)(66476007)(5660300002)(66556008)(66946007)(2906002)(15650500001)(44832011)(6862004)(83380400001)(26005)(38100700002)(82960400001)(36756003)(31696002)(86362001)(6636002)(6506007)(316002)(37006003)(6486002)(107886003)(2616005)(41300700001)(53546011)(478600001)(6512007)(31686004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aCt2SUhhWHZGUXJuUDQvS2ZLZUFSL01DUjIrSkcrdCt6SGQzUFRGZldSOWQ2?=
 =?utf-8?B?Ti84UEVTTXlOMTFVdWd3TXpiVmhHQWRGams5NnYzV1p3SC9nM1ROM01kZXNJ?=
 =?utf-8?B?SnBkTU02ZStFek5oa3FORm1XNUFzOXhsT0d4d3lGWjhVNTZkVHdLYW9uR2No?=
 =?utf-8?B?TFNyTkpEVzkybG4veUJaK1RwMWxZWmI4OStBV3NqNHcrQU1HekQydzl1b2hQ?=
 =?utf-8?B?NjFzWG5xWlR4aWFHQkVLOWhQYkIzYlFkd3J4QWRjNHVDelJaR1RDNW5UVVk1?=
 =?utf-8?B?MlorK0R4MGx1OTdNSE1KeldUb3JXbzhKNjN4di9SM1R1ZnZwNC96UC91OG0r?=
 =?utf-8?B?UndnQTNKU0xPTnIwSXl3YXMzVUVKd3pmTnZGVldZL2FveC9lYml2TWhaelhD?=
 =?utf-8?B?TEg5RTRHdlRhNWUvT2xLNXFyamdjWGVaV0hUOFF4L2JmUXUxd2F1Wi92UTkw?=
 =?utf-8?B?dTFrN3k2OExkTnFNUW5tdzdYOXdkQXZubm5kandYS0dXcWRDZkF5ZFhyU21E?=
 =?utf-8?B?ekdZQWVyclFVMWl3SmI3R1hGcnBVY3U5NXVEWWk0bnJlVHdYRmNRRS9zUTYv?=
 =?utf-8?B?OUk5YWM2OGVFQUtxWXR3UXpwQmNnbCs3T2haSTNBR00xU3lObUhSNUMrTjhh?=
 =?utf-8?B?N015M0VIcnI4Ry83VkRlRUxwV1hJVlYxbGdXNW96YkZ0Q0V5Y3h3RDlHOFVP?=
 =?utf-8?B?WEZuOXk2RkMrSEhrc21KakpTMXQ4OHdNeHdITVJwTmpaVW9UUVZsK2ZOdjNG?=
 =?utf-8?B?ejFNUnlEUDZRemlxSHBKck14Vk9ESzllMmVRM3V4dExFZUExejIyOS9XZXE4?=
 =?utf-8?B?MGFCL2paSUVZRUMwZ1FtaEFBcjZMNlpWd0dyMkI4RCtLbEdIemw3Mk5ldENN?=
 =?utf-8?B?RDc5bmxYU2pjeGZOc1ZiNEh6Ym1ZcFRNTjA1ZG1IQlVIOXI2U3haMkE5Rm9z?=
 =?utf-8?B?d0Q4RTF6N25EbXBLNzZmTXY1SEFaaFFrT1lLMEt4S0JxenFRZnEvYUl4cWlU?=
 =?utf-8?B?WmJDUmJNc2tKV0xVdUtxVFJvT2dBMkJ0Z25kYWtZUFIzYnFnOHpCVHhsMDY3?=
 =?utf-8?B?dXdESkhtNHdXRXdLSHdYQ2ZOWVBDa3RPd0JXVmNyTmJ0UlJlZFU5OWR4bXhF?=
 =?utf-8?B?Z0Y3YThWNzBrYTk3MUxRclRyS2lXd3drUWFDSzVqc3AyUlFlaXFlZ2FHWkdY?=
 =?utf-8?B?a3FjQTFsWERjckJYeTVoNFNCV3FBNERtMFUvM1htUVVwWEd1QzlRS1c4MHQ2?=
 =?utf-8?B?ZzJFUGxyNFYrbE5USm9hQ0NhMGcyRDlNR3pDQVlRbUFYR0JLTWdCV29SbEkw?=
 =?utf-8?B?MEk0Y0ppRHBoMFluQXlwVXJBUCtnODBCcmJEcWJQV3I5aENkeEVqZWtjL1cv?=
 =?utf-8?B?OWpJRDdoU1RQNVVGQXdLUnBidzcwUnFPOFZjSVhkYlJteVdySjhYMC9nQkQ4?=
 =?utf-8?B?N1ZoOWpiTHB3eGRGMk95bFpjenZlNmNjT2tabnBWSzJXc1lETTdQbDJHNDho?=
 =?utf-8?B?WCtpU25oNTNvZWZpVUo3dWIzbm1GUVRMSkhyM05KV2ZQUEUvWVNvMnpDbllV?=
 =?utf-8?B?U0tNTUZOMDZ4UUFPQlhkNURuQjdwWDB6VTV4YzJpODJZQXRFeUFYYm1RdnJj?=
 =?utf-8?B?MEMveGJqdkpaZURmc2NaMzFPNE11bnYzTU9ac2hESEw2MXZvRnh4WngxeXIr?=
 =?utf-8?B?ekNFT2d3UXFTUThiRXM4MFlZTm16d1BiTUJDTFA2T2I3Vy84UytYTHBGd3Ny?=
 =?utf-8?B?K21QaFBtN2Y3amtGY1JQMVc0RUJaMEY1T2svUjlqdHVNZjg4R0l3TFJYQTRB?=
 =?utf-8?B?V3I0bDR0RGdnYVN3WFptZDlJWUxZNUd5djlKcVFEYWRZcEN4QjBVUVJRT3hR?=
 =?utf-8?B?WGl2WU1VcE5SQXgvNFk3VWtnVGIralMzTklJUzExRjQ0eDRhNFdXV3VHSXhP?=
 =?utf-8?B?djdxZG44Q3BTem42VG9iNTRSN2M5THhRSEVHSGxseDFFYitYRXJMbjg5Rkw5?=
 =?utf-8?B?RjJuQW9JL0RjWXZuaHdzVmhSRS92MWRZYTJMUmZudC9OYytwRTRGZW5PMW5N?=
 =?utf-8?B?ZlNaSUF0TGQ2cTFoVXVQTkRnVkRJSVdETEZ1VnNEM2hvUFpqYjFNOWlkTWdT?=
 =?utf-8?Q?4l6tHa3CFl+XbUWSCfAx1n+hZ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4188b6eb-0b3e-4139-88a9-08dc2d7f42de
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5186.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2024 17:06:18.6988 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qDl3R7cgcvfbt9jtLR1hT6r97vbG/vFwDezuGffR+7w2T5x+Cff9o0voO13/Hi7jHEGhNZq6Gu6UdukPBj7kvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8298
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707930385; x=1739466385;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hj3Kjx8cZgJDA1GJGLwUihrZTGUtSr/6+1lWmkp+exM=;
 b=OrUUSCTs3QntKwbijGa1z/HF+0M56Fb0aynXq4X6wGyBFfdgMaqtVtlg
 QDTGFAhDzXzfYBXC+KQFIv3ZBSU3KZHaGjqKlrsuc93fIM7n5uFxTwGyF
 +H2fa2Jz2l41qQUWV2R5ANHnEF5jFpHTHF1MCMtMcyfjm5XlE6qamsi6+
 h/r/yMv2WQxZ0L8feqApxmHcwGbVbuZ8XamMLT4ikLarOcVdZvFlNni99
 05HRDRThaAzaVpfvPX+VhJoNKbgghB+RMHUTr1T2JgOzOHqs1zU6QniTn
 e2cPOXTUX3ZHVJkYjTl47Cgvwk4r7H0POUqSVseiQbOwud3XOxYn126XM
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OrUUSCTs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 00/10 iwl-next] idpf: refactor
 virtchnl messages
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
Cc: netdev@vger.kernel.org, willemdebruijn.kernel@gmail.com,
 intel-wired-lan@lists.osuosl.org, igor.bagnucki@intel.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/14/2024 6:49 AM, Alexander Lobakin wrote:
> From: Alexander Lobakin <aleksander.lobakin@intel.com>
> Date: Tue, 6 Feb 2024 18:02:33 +0100
> 
>> From: Alan Brady <alan.brady@intel.com>
>> Date: Mon, 5 Feb 2024 19:37:54 -0800
>>
>>> The motivation for this series has two primary goals. We want to enable
>>> support of multiple simultaneous messages and make the channel more
>>> robust. The way it works right now, the driver can only send and receive
>>> a single message at a time and if something goes really wrong, it can
>>> lead to data corruption and strange bugs.
>>
>> This works better than v3.
>> For the basic scenarios:
>>
>> Tested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> 
> Sorry I'm reverting my tag.
> After the series, the CP segfaults on each rmmod idpf:
> 
> root@mev-imc:/usr/bin/cplane# cp_pim_mdd_handler: MDD interrupt detected
> cp_pim_mdd_event_handler: reg = 40
> Jan  1 00:27:57 mev-imc local0.warn LanCP[190]: cp_pim_mdd_handler: MDD
> interrupt detected
> cp_pim_mdd_event_handler: reg = 1
> Jan  1 00:28:54 mev-imc local0.warn LanCP[190]: [hma_create_vport/4257]
> WARNING: RSS is configured on 1st contiguous num of queuJan  1 00:28:54
> mev-imc local0.warn LanCP[190]: [hma_create_vport/4257] WARNING: RSS is
> configured on 1st contiguous num of queuJan  1 00:28:55 mev-imc
> local0.warn LanCP[190]: [hma_create_vport/4257] WARNING: RSS is
> configured on 1st contiguous num of queues= 16 start Qid= 34
> Jan  1 00:28:55 mev-imc local0.warn LanCP[190]: [hma_create_vport/4257]
> WARNING: RSS is configured on 1st contiguous num of queu16 start Qid= 640
> Jan  1 00:28:55 mev-imc local0.err LanCP[190]:
> [cp_del_node_rxbuff_lst/4179] ERR: Resource list is empty, so nothing to
> delete here
> Jan  1 00:29:08 mev-imc local0.err LanCP[190]:
> [cp_uninit_vsi_tc_q_region/222] ERR: Failed to init vsi LUT on vsi 1.
> Jan  1 00::08 mev-imc local0.err LanCP[190]:
> [cp_uninit_vsi_fxp_config/1101] ERR: cp_uninit_vsi_rss_config() failed
> on vsi (1).
> Jan  1 00:29:08 mev-imc local0.err LanCP[190]:
> [cp_uninit_vsi_tc_q_region/222] ERR: Failed to init vsi LUT on vsi 6.
> Jan  1 00:29:08 mev-imc local0.err LanCP[190]:
> [cp_uninit_vsi_rss_config/340] ERR: faininit_vsi_rss_config() failed on
> vsi (6).
> Jan  1 00:29:08 mev-imc local0.err LanCP[190]:
> [cp_uninit_vsi_tc_q_region/222] ERR: Failed to init vsi LUT on vsi 7.
> Jan  1 00:29:08 mev-imc local0.err LanCP[190]:
> [cp_uninit_vsi_rss_config/340] ERR: failed to remove vsi (7)'s queue
> regions.
> Jan  1 00:29:08 mev-imc local0.err LanCP[190]:
> [cp_uninit_vsi_fxp_config/1101] ERR: cp_uninit_vo init vsi LUT on vsi 8.
> Jan  1 00:29:08 mev-imc local0.err LanCP[190]:
> [cp_uninit_vsi_rss_config/340] ERR: failed to remove vsi (8)'s queue
> regions.
> Jan  1 00:29:08 mev-imc local0.err LanCP[190]:
> [cp_uninit_vsi_fxp_config/1101] ERR: cp_uninit_vsi_rss_config() failed
> on vsi (8).
> Jan  1 00:29:08 mev-imc local0.err LanCP[190]:
> [cp_uninit_vsi_tc_q_region/222] ERR: Failed to init vsi LUT on vsi 1.
> Jan  1 00::08 mev-imc local0.err LanCP[190]:
> [cp_uninit_vsi_fxp_config/1101] ERR: cp_uninit_vsi_rss_config() failed
> on vsi (1).
> 
> [1]+  Segmentation fault      ./imccp 0000:00:01.6 0 cp_init.cfg
> 
> Only restarting the CP helps -- restarting the imccp daemon makes it
> immediately crash again.
> 
> This should be dropped from the next-queue until it's fixed.
> 
> Thanks,
> Olek


I definitely tested rmmod so I'm frankly not understanding how this can 
be possible. If you would like I'm happy to sync on how you're able to 
cause this to happen. Our internal validation verified 1000 load/unloads 
passed their testing.

Is there more you're doing other than just rmmod?

Alan
