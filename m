Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F331C878103
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Mar 2024 14:54:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8770A405EE;
	Mon, 11 Mar 2024 13:54:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2cm6Kwg4kVbt; Mon, 11 Mar 2024 13:54:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 73A16405FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710165294;
	bh=ccTBAHijmYTZK8Eol+oZQUjakovc6Hn4QeRFZSlTGQo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=N1UKKouQK0Mf8S5BHF44MBgM0dyIy2YM1jsbh+iSnTsDyHoakb2v5EhDmjUnLf5au
	 FoYWwHL/stUHPTk8KelIgIX9tjAL70sF+Un+znOt/2eguB6Xdiu8U3SsnTPUUw0KQw
	 n3CUr5QU2ZBvq5AgYO/aAj2kK5K5PO2RXh/PJ+ms1BD+GtcX8m5+NpA65liAMj0187
	 iERqGeT6fBJtkv2WkXk7V5UBotryvAn2cnwcXDhDr4Q3XmPYZh3n91nRTXWYzHcZOL
	 DiLsjXFh8WLnVW2Sk7IdjIPkScgUfP1sQKtoNqa03MhwaJKJbJIhx8qsA4p+86vFqs
	 rXK/ru670UBxw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 73A16405FB;
	Mon, 11 Mar 2024 13:54:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 849EC1BF38A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Mar 2024 13:54:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7033A405BC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Mar 2024 13:54:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bVdtVXlxuAeB for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Mar 2024 13:54:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5AE6E400B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5AE6E400B9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5AE6E400B9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Mar 2024 13:54:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11009"; a="4940659"
X-IronPort-AV: E=Sophos;i="6.07,116,1708416000"; 
   d="scan'208";a="4940659"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 06:54:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,116,1708416000"; d="scan'208";a="42162611"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2024 06:54:50 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 06:54:49 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 06:54:49 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Mar 2024 06:54:49 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Mar 2024 06:54:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ys6i7Kqxc1CorCgsvy93SyuXXDgdnwHB+WV3hrI3n8p4X0DZbhShojvS//M7cXSR5RQ6XY3wFYo5ve3epVLeA9RE05EWCAHEeIgtVFlc19QoagbzgMZi4aVeDE3JZC74bVDaw3UScw3QAkjSrWoWr0vsdmpzq6XxvH6qPKbB3rGMgASHlDtt2liuKi4miWan+eNTmU9JAHEfENg28tE4OYJVK3kGJzXpM1quydPn1g+C149pN9bV4FCU+C+5EY4Ktmf6z+9t/ieUiSu0Q4KIUiZoSxIMndALsOqsLUGbZaYk0mi4KxZsiAWZ3cB7gKRSgRTO/H2kLlkVAgvDM6E09g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ccTBAHijmYTZK8Eol+oZQUjakovc6Hn4QeRFZSlTGQo=;
 b=M3KwnweWUpwnFU9azkrexcNiRa6hIWhR+Cz8hQkK8/RvQLeIWtlB3AuByjlLO/avAlu37XC/xD0X6+uRpwaLPGKOyB90W2orvHJRCce5hlDv8d8B4BimyTzyuNWxaGgG9V1sx681uMr1qYjfvBsXx0gdBTY5miBzmuhWUJz1r9BSgIEkwnL0OYCtmpaJdjwmxLlHlck11EeP+kBlGrecya+ge4cfgecw6EETEmel5z+99oOjkpcarGPgyB47qoG4SkgfCssyYdPwR8HxHt5VSSfkaTiX5cKu/bXwOg5wvrOhH4+mnhaxl1GhwBlx7g+2iL51y3jdvfC3jwordSeBdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by IA0PR11MB7792.namprd11.prod.outlook.com (2603:10b6:208:409::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.16; Mon, 11 Mar
 2024 13:54:46 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::618b:b1ee:1f99:76ea]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::618b:b1ee:1f99:76ea%5]) with mapi id 15.20.7386.015; Mon, 11 Mar 2024
 13:54:46 +0000
Message-ID: <54ce9651-a4e5-4dec-b12c-ebb188d2852e@intel.com>
Date: Mon, 11 Mar 2024 14:54:40 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Christian Rohmann <christian.rohmann@inovex.de>, Nebojsa Stevanovic
 <nebojsa.stevanovic@gcore.com>
References: <f38a6ca4-af05-48b1-a3e6-17ef2054e525@inovex.de>
 <7bbe621e-52cc-8111-bec7-70632900c3b0@intel.com>
 <e1b2f012-7e0a-4167-bfa9-026d49f1b45b@inovex.de>
 <1ec34cee-bfab-4dc8-81eb-9a9688b9a61e@inovex.de>
 <df3b33f3-8f78-4c94-854a-dd70a8b5fcd3@intel.com>
 <ae802f16-d425-4377-82f5-b72f8efac0de@inovex.de>
 <5ff11c63-d1db-4a8c-a496-99e17acc273f@inovex.de>
 <0ffd1e6a-35ff-4868-a15d-d0f12c5c9720@intel.com>
 <fdeefe2c-d91a-4b4f-9b1b-7f592394aab3@intel.com>
 <aba3afd0-444d-4a18-bc78-8051f4ee82e8@inovex.de>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <aba3afd0-444d-4a18-bc78-8051f4ee82e8@inovex.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0199.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a5::16) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|IA0PR11MB7792:EE_
X-MS-Office365-Filtering-Correlation-Id: b68e65d7-3a3a-459d-5672-08dc41d2cf2b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: q5Cmkm+H4tcohrSXuHtefSzvZu7tKo+gmdluLQJO1UuaNaTq5P9oU9aVgKxC2RnonyXUQZ/evBbghuU9RS3PYZIg965GIV+of2/jjQQQijHRziPEwyStFTLV/6kTobLSqb9HdXhC4mtg0yzQPlszKhYG2XS+xeo9l3J+3uvyQzyY1qxfcMHOpuDclkU5TURud9TKPNv692sb3nmYIWhI0YEyRQ2hQpc+L9G/Ov0ALEk/VqFQiAne5Dizbm57T4gvNBenV9NOmmZOMTIelz8lsq7sF+RKyukPYGGzo7B313L8awtophtnI8a700PFIIOONK97FlSlIKV/sd1009QHmrfNIqVXSUVMnMxPpYYHyBvQyrxu/PbPnm6Bdy4pZcI/Ci+TVUTG+qgX9iaqQjDwiIgaxAzxb/UPOZ9zo3/2p/5cq08zl53/CHwoun2J/XciVu9ariTJH6LPpXgeCusKFPfW1DOnVwFwkf7d7Cum68IO5REoh117BPytPO10HVeWzcb/BvBhDPls7f9B/qGYPNNrG8adPmsbqyFGvtXCPzoLKPeqi8JVlcC0aw7ToNsN9eh8LunwX7zEDgNhH/4oz9YYYqh9w+a74wBDLlkqDng=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MkhzT0dwSEtucEJ6KzlsMUxSZEsyUWRuQ0UwYmZ3ZE80RThXdlp3eE9PUVNs?=
 =?utf-8?B?QndSbFM3aUhydnQwdmg3ZkxxL2s5Y2dJOS9INHZEbE91L1lMb0MyKzlzRGdB?=
 =?utf-8?B?RXl4ZkhYK2x5aTlhZE1rb3pvYi9NeXY5bkd0L0F6eUhhOGJFVk5KSjNjc3Qx?=
 =?utf-8?B?YnpVa0h5OEs0TXk1RytkcVpQdjNUa0F6aEhCZzdQb1VIUlVoYlQ1RE5ycGlk?=
 =?utf-8?B?S3V5RldkWGltT3ZNbUVxZ255VmZwVHFWZ2c4RDFqcHBRUUdNSXlER0ZSZHo5?=
 =?utf-8?B?Q1VNRTFJTko0ZllldmVBT2lTQURnRnB2U2h1dXlza3d6TldNS2c1Rm9TREhO?=
 =?utf-8?B?dk1WamNFYVBNZHNESWFDYnF1MUd0Q3FHWUtZRG5SOEEwSUZVSlF4dlM4dWVo?=
 =?utf-8?B?NzN4ekNIako1eksvTWlMTkVHV1k5eUloWHMyNDZkdTAzNTM3OVArSXNQeXkx?=
 =?utf-8?B?ZjhRQlBrZnlZNXBCS0YzZDFEaytJQ1l1WDUrbG84WnZhZkpEcGJ1OEx1bUU3?=
 =?utf-8?B?THRTS1dSczdKa0dBUDRpUDZMWndFeWZCbVZpSkltN1NxVjRmNzRCa2VwMUJC?=
 =?utf-8?B?czR5M2h1UGo5RFpUSXhUUkc3dVlWQnRxRnNoSFBDSjhTM2pNMGZvcmc2cDY3?=
 =?utf-8?B?cHc3U005U3Ntb1kvbDdROVNsb2w3aUdmUXF0akpuNXlFdmhkdXNCTUk4Y2sv?=
 =?utf-8?B?dWNnNHpWK3NLbndFbzMrd3lXRzFicW1lRHk2Wlc5YWNWTm9ONVlpa2o4cGwv?=
 =?utf-8?B?UTRsd0lpa2U5aG5yckZYRk5hNURsRG52R3RHSkxxRU1nZWs3cWt2SkthdkU2?=
 =?utf-8?B?dTdRTThydytoR2hrbkNnRDRER0J5M2tNTzd1bUlrc0RjZk9PS2dHOEgyc2xB?=
 =?utf-8?B?YVRpZkVoMC9SSUhLdHFyK2NsVzltOVU1NzdwOFFTVXordndCcm9mbmtJVUFE?=
 =?utf-8?B?bnRtcTlwN1k0K1dma0J1d3J0K2FXS2pIMS9oT0tyNmJRTWZnakIvZjlNQmto?=
 =?utf-8?B?QWxxaGRIT1ExcGlsbmFiVVU0d1h3cll2WmVvREp5VklhL1BLOGVwUy9pemdy?=
 =?utf-8?B?UzRTYmplR3ViUFRudVVISmo1aHk4RjRubU1SOXl0T2pyK01taFJuV2lhM2w5?=
 =?utf-8?B?SG9FWFlrbmxnTXpmNjRrT2pCSVZ6d01xV0s4YWQzYWR6dDExdkZicThQbWI0?=
 =?utf-8?B?Nmx2YXZ3NkFCNm5meFovMmxoVjF5QThCbFh6T2c1ZHJFczlDa296T3IyK243?=
 =?utf-8?B?UmxEOHFheXNEanQrbitlejJBN3ZIeGpJRXZ3M0dvT0R1RTV6ZlFQdHBaOVEz?=
 =?utf-8?B?bEhwWFRRVTlPa0lsNFliTkxhcXAxQjQ2RjhUMDdXL1ZRU3llYlVFRDg5Yy92?=
 =?utf-8?B?ZitOSHE0Z0ovWkQzZDA4aVFNbmtwUkgwOEhhbitRMWxMNlB5OFp5UkVhYlcw?=
 =?utf-8?B?MzRBd2U4YmtuM0RIRWgxUVpLRkFLcmdiMEtnR0tDNGRnVWJUS1lGZUZHMFFL?=
 =?utf-8?B?bGttcTFqM3NmYlpzSkV6VStnR3JCcEF0a0tKTDUxSmpHVkdjWTc3eXBzbmlP?=
 =?utf-8?B?Ylpod1FvcFFjK0xXbWFmaDN2WFF4Q2FERXo0VjR1UDU5eWY5azJVRFprbk5u?=
 =?utf-8?B?eDBtN3BDNGRTb2VCMDFvVEVpdSs0eFk0QXBUS3hJamdTU2RXeFQxUDZKTnpk?=
 =?utf-8?B?SFNHNmE2WTdYbE81c3BNdHJRaFYrSHhJMTAwR3RCREZkZUZCR3RqS3crY24y?=
 =?utf-8?B?Q3h6WktrR1FtejhhL1NHWFBXeXNML3czVTh6c2VsQTJ1eXFNT1dOZkVzOGdB?=
 =?utf-8?B?dEI2c3hyMnE1WjIxUm91Yi9qV0hCYVk4eDRSenY2OS8wL05HODgxRkRLSy9a?=
 =?utf-8?B?eU11dTMySEZ4WERUdXRyd2pMM2dqZGFsV1dWME12cmdDb29uZktUZjRqN0Zh?=
 =?utf-8?B?R3BSRTg2d2VnUEtJajlkaGhVWktwZ2U0dVhGQ0pxSm9uQmhNalRlUzZOMmhX?=
 =?utf-8?B?Y3Z3OUZhdjc4bjdRbTBEdHI3NEtVazNOTHQ2dFVFRk9iWmVuaVJNRXM5a0xh?=
 =?utf-8?B?SHRGT2R2ckNsdWltZlRqQTdoUlpPdElWZExSdk0xRmZ6T1pTSGdpOWlmVVdF?=
 =?utf-8?B?T2lnWXVTMGh2RDlwUVlaTHJLNlExVkFWWUZkZE5MZHluclVqUzJKaTVDazlE?=
 =?utf-8?Q?ZmQzhu05Z1eeBzN1ja2LkZg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b68e65d7-3a3a-459d-5672-08dc41d2cf2b
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2024 13:54:45.9243 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zlaMVgPLepo99wIB9w8enFPRvH/VCJe4arjLNVoZI+jrCZZmpN2MguRZczerBNrC7ziReR1p1XTVyktlcil3oDhtPMZvadFBmZxbELEdTPc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7792
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710165291; x=1741701291;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vf97Rem6Xh65ndL9bUwhKiXZvDb+M6JQS1Ou7kYWpKM=;
 b=bAqO8zMSwwdTQje5u8OF0OwwgDzp5E0rdINWeEGuaF+0fwhj9zFuDWwc
 RQ7702/L262p0emGLBMdjjP/qbCtMe/6LIfwkSCmhPJOaRd+eVOSxwcPE
 6HfxCKWQvseBKOhnSQv3mSBlcGVO78aYua6pZ42lcj5cvKMTeiprGUQw1
 Y6P1dFHy3x/hDuQFSVgvh9XeSkTTr+nIVTLhFwCfFUVWJ/okSJPNt6WHc
 SaFjWjYQkxbqeqXJPosRrZjuE1MbPM/WcHuorZjeb7Nt+S6VWKJFNXHh/
 rOSjDLc/hO8h6uA8i+LajNawYIDtLTx8s2G2WtyX72Xv0Vm+zV05UfsD+
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bAqO8zMS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Counter spikes in /proc/net/dev for
 E810-CQDA2 interfaces (ice driver) on kernel >=6.2
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, leszek.pepiak@intel.com, "Czapnik,
 Lukasz" <lukasz.czapnik@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/23/24 15:56, Christian Rohmann wrote:
> On 23.02.24 14:58, Przemek Kitszel wrote:
>>> [Ben changes]
>>> By looking at the commit range, this time also for iavf, still the only
>>> obvious candidates to look deeper in are two commits by Ben:
>>> 2fd5e433cd26 ("ice: Accumulate HW and Netdev statistics over reset")
>>
>> I believe that I have found an issue in this commit, I will spin off
>> a fix soon (will go through our usual process defined at Intel "Network"
>> group). I will CC you for our internal review too (if only to give
>> a chance of earlier testing).
>>
>>> 288ecf491b16 ("ice: Accumulate ring statistics over reset")
>>>
>>
>> [...] 
> 
> 
> Splendid! Thanks very much.
> 
> Regards
> 
> 
> Christian
> 
> 

The fix was merged:
https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=257310e99870

Thank for your help on root case analysis!

Przemek
