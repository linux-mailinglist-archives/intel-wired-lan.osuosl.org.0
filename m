Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ABC5942DC9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jul 2024 14:08:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D83E6405E0;
	Wed, 31 Jul 2024 12:08:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UTRfAy8GhduE; Wed, 31 Jul 2024 12:08:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D37DB405EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722427714;
	bh=0NDMwss5apRqGHSOLF3EQaCXKbv7J8JBQQcmvLwxvlE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rp14xnLJSLiYMTsB86q84JXpfz5dj398Bv1iTK0j4Q/x2P3RT8CK7diXaDU9hJWEi
	 azuBysoPo8bdADJZGLsuYK170zFjPjKZXOJLrKjpXgOEB7NOoZ0plCs/wKs1sszk5X
	 dFevZZW2gzp2AHv2dkmphUdp9xHfHL7PVdZkrn1uBgfU1A1uK4tIZ4X7KJUpLYY9Zb
	 mTSmQ3ZzSTcjVRgqX6W1oW2S628Q3DhGv0KgdX+r99TQpi6BIuMCOZq8Pwykbs4Oj2
	 q0yqrYTVSVsibMYuHUjFos/GiZCt1/ng9jZZyaDUUTd3eABu3Kq50rag5CLri95Br3
	 DOUsCyk9X+p0g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D37DB405EC;
	Wed, 31 Jul 2024 12:08:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3D0771BF23C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2024 12:08:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 299AD60AFE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2024 12:08:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id giMCt7seOroV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jul 2024 12:08:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4AEDF60AC2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4AEDF60AC2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4AEDF60AC2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2024 12:08:31 +0000 (UTC)
X-CSE-ConnectionGUID: 4auOWjlqTgeQhK/i0/NotQ==
X-CSE-MsgGUID: IdLbjF4MQRqAs2aIRezQ1A==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="20248601"
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="20248601"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2024 05:08:30 -0700
X-CSE-ConnectionGUID: 83aj7RUsSjKDRc8sIqdBjw==
X-CSE-MsgGUID: v5Dv3yLIS2G2o/q57SsqoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="54661227"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Jul 2024 05:08:30 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 31 Jul 2024 05:08:28 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 31 Jul 2024 05:08:28 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 31 Jul 2024 05:08:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zCFQnIxiTulb7cNNVfRdXTcXE8vKgV26zfwsGXi10dlOK6kfqvt5ek/3Zyt3hGFl8d3ttX/RgWpBn9yu1xUinHQtjPxYYAmIAke9b2Ccx9X+8iJ6R5R+xdUweCYyxrBnU/txYkD/XhoBy0Damu31F3MKehZcoI1sszDH0yxvXHV8vtikBBQ3hR08sb7laP+zVFFhr/oV7AcopvuQYDVFRw+CDzOdXItyr1IMabo8bbTD0Jsliug7Ld0S7TsCg+T/fUCNlyqwc6wqI/kaK77wXFhwhK/izgt5CHpiu+qr5uK/WC9V5D5j3iNxcFWSuO0q8fKL9QXJy2rBsXOhZcBslQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0NDMwss5apRqGHSOLF3EQaCXKbv7J8JBQQcmvLwxvlE=;
 b=VikBbN7d0xtt/p+MuetlKRoSvHdccGDXIp2W2V0p0akUM/WIsn4SZpXsYmVJ/00v7dgP0t6kT8/BSci5DZczSNrKBeqqbgShQh/B73mZhb4c9FFr8kWWWfPTmGx4DAaD5tgf6RdqLjsUoVyLnl1lYPImzyM97WIfVgbNZ6pejTjIKhCB6rLY4rDgfVyQiCyfh+K1F8hBTw5vG0oIbTtMI6H64Q2wHTaFdBMOsoQXtEnVzp06F3y7viwdBQVSrKkV+gpjcRl7DJVEQcIXwO5/V2Z/XHAYx5GE9O1K1N3xjRSJ9ZK42CA5AVXxB2vyxKWZ+cXVSEtNtE1TwXV3QiTSyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by MW6PR11MB8389.namprd11.prod.outlook.com (2603:10b6:303:23d::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.27; Wed, 31 Jul
 2024 12:08:27 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942%6]) with mapi id 15.20.7807.026; Wed, 31 Jul 2024
 12:08:27 +0000
Message-ID: <21ed191b-2814-49bb-8722-413f62fbc938@intel.com>
Date: Wed, 31 Jul 2024 14:08:20 +0200
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
References: <20240730105121.78985-1-wojciech.drewek@intel.com>
 <20240730065835.191bd1de@kernel.org>
Content-Language: en-US
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <20240730065835.191bd1de@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZRAP278CA0016.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:10::26) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|MW6PR11MB8389:EE_
X-MS-Office365-Filtering-Correlation-Id: 32dc687e-0887-41d3-d9e1-08dcb1597bc4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ajBjTzc0b1N2VTRlbWNXQlhlbWltZUR0MVovdzNzSnhuVUtxcnZ0d3Biai9W?=
 =?utf-8?B?ZWsydlFRYzcySktrUlArZ3pBaFNMVGhiSVpvZ2daYTEraHdCRjJicTNvZG9R?=
 =?utf-8?B?V2M1QjgxQnJESXgwUThidkppZ0xGMFJzaDBwOWdKcGV4TzVjekZ1SWV1aVVQ?=
 =?utf-8?B?Qm5lMmt3a2xMSVBoclNYYUhBSDBPY0thN2EybGlxY3BHZTk3TjR3QTd6akgr?=
 =?utf-8?B?dUo2a3M2Zm9oLytFSjNQaVN0SlUzcFFKbGIwcTZTRFV1ZDkrSUUvbWE0bzYr?=
 =?utf-8?B?SVdxNEVMMTRSdGxSMmNPckNvaHBIdEExU3E2VXZDZnBqVGF5U1drRjdUSVo1?=
 =?utf-8?B?cGZLelZIcmllTDJCMjJGaHdkWHd1TnRkQ0hHV0ZvZk83SitCUlZOUFA2bkZ0?=
 =?utf-8?B?NVFyeGtsZ05HTXZRQU81ZnFlUGh2K05pRGdBV2poSUNjNS8rTzlNajBuZnNv?=
 =?utf-8?B?ZVVCVHBUaFdWdzJ5UnkxZVB5TXhTNUwzOGpDdG9uVGVyc1FiM3E3dFN6M1hj?=
 =?utf-8?B?MlZ3VUUraHJHMFdMTXo3Q0UvcHVQUDFjNy9uNS9oVHE2TUVsRktPdjlIR0l3?=
 =?utf-8?B?WFB2QjZiQXIvamRUcXZyUlhDS0lJUGkzWTViZXVoVG56R3B3QjR4STh0MXc2?=
 =?utf-8?B?Q05mY2NaNHY1ZGJHdEVIRk81V21JU0RYcWl3OUwzL25weWN2L3E3a2lkVHI4?=
 =?utf-8?B?c1YyYyswd2xWMzlLN2lwNEpPaHhldUpjMUcvRHp6ZEhacWtwd3FMSjB1TjBI?=
 =?utf-8?B?N3QyQ3NueGQ0dXBZTEJtRDNmek9kclNGSjkvWDI4c2hvb1Vzb0k4U21EVk52?=
 =?utf-8?B?eWt0S3BVditKUWJNY3YwZjk5MGgxVmtSY1lPc1hxZlkrS2NJNTFrZzFWNzNo?=
 =?utf-8?B?OU9Mc2NLUXlKUnJZZjNNeXNLWUxwSVRPaThieFNHdlIwQ1NhN2IyeHpsaFhJ?=
 =?utf-8?B?QjdwNTY2bWRLb080K09lejdLeHI1QW1wZCtjVTlBYkx3YmplTmpuc3FFK3N3?=
 =?utf-8?B?QmFVZVRJT055U3Q5dUtiN2dVTjVsRStBVk0vQjI2Rnk0UkkrRGthYVR0QVZQ?=
 =?utf-8?B?UVFTQmxmUWF2Q0V0RXhhcXdNTVl1VzZHeDhmRTlvYWF3TlpBMWhCSzJidU1J?=
 =?utf-8?B?QzFlYWl0NXB1VnhHcHZ2SXdEbW9PaUtzbDFqY0dpS0VLZyt6OEhPSnNTTG9w?=
 =?utf-8?B?dkl0NkdJRERzQ2l2NDRUYXVOYUhHYlIwUkF0TUo3L3pPZ3R6bnN4K0t2UXZH?=
 =?utf-8?B?b1ZNcFFxWmR5Lzdnci82ZkRWZHNvd2hsWFZPWmNsNUwyenBnWkdKa0hPSFZz?=
 =?utf-8?B?cjltcUpyWnpQTnNrSERZODJ0VmRiSW1rR3FROUczdm5UKzNqbUtaOXAzbTho?=
 =?utf-8?B?eW8rdUNqRDhVUlFtRXJQN3pGZXdjTXRqNy9SSzNnYXp3KzVXdEpyT0VMWnN3?=
 =?utf-8?B?bU9tNzQyamtmYStiZDB2bEc4ZjFjWWtFYjJIRndQNFE1cHJDdDYzelRZWEFC?=
 =?utf-8?B?dWZxTUVHY2NHT1NBZWFRZUNrdVpwRTNiTnlDdXZCRFN4WnRSbzNFUkNCVmZI?=
 =?utf-8?B?cDMzblZPREc2UGJ1RW01bithR1U3NkFCbEozajl6OEJEa0VnMFY3aFdKekV6?=
 =?utf-8?B?dFl5WHRtWVdVUzk5NzM2eDdKVlJKSGlpdlpmUGx2Znl4Y0dyVDZhbFdsL3hj?=
 =?utf-8?B?RVV1UmlRbkw4SzgvUmgwZ21VaXBSV090bVBxME91VDRFNVpnTEJkMjBBaUJ4?=
 =?utf-8?B?bzNwSWZqdkdVOUNmeVMwY2NWd2dXWmpXcHFaQ1B1eFNhREVnaExiSlFlclJ5?=
 =?utf-8?B?QzUzZXJGaG1ic09UUUIyZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dzNNRk50NGE1WjFTN1BKV04wRDdkODBCZm5Wd2xacklsSnoxQ21GVlIrM0kw?=
 =?utf-8?B?QXhVNklkenNWbGtPT3dxOVJSMGduZ3Q0LzFSejJPZGNoWk44WjdtcXNUOEVM?=
 =?utf-8?B?Z3F0MjFiNFZhSm4zN2xZK1AzZ05mS3lRRzRvd0JlUmkxNGJnVEkxcW5sak9L?=
 =?utf-8?B?cXBpNHlYekhMTlBVU0ZEaDhZRlpKZ21HWnR3WFJteEdySmpaQzk3YkJXaDhG?=
 =?utf-8?B?bk01NUthL0hERlNOblZ6RDZUK1R3YVhNSGJSOUVmNHlzaVd1T2ZyUUtXMC9E?=
 =?utf-8?B?eVdpQlduWHpmQWVqcmcraURuSGd4T0dYT2NVdlFiTElFYktsSFVpTFo1amRv?=
 =?utf-8?B?WGJlUmpPZUJQbUFReU1CWjNOYXllRnVXUWJ3WXpQaTFKMHlGcnZSbTJYa2NX?=
 =?utf-8?B?amZtUXFPWmNweGJZZENacW1vRFpyT09SQVdPdU5tZ2VwRzNrNFhBaXdGL29O?=
 =?utf-8?B?b1lMV1RqRlBPeW9XOFo2TXpYbythVjJ2Z0hHWGVOMkdMOVhFWDVsQ0p5MnRR?=
 =?utf-8?B?ejIwQzdCWjZzNGc4STFsdk9hajN6TURJZkpCRkJOdTBoWXJvSC9oVmVJVlM1?=
 =?utf-8?B?UXJnU0lBRkQxb3REeTR1aWNwWGhsL0wwWXdHMVNMQ0dyY3JyT2FsVTFGK2ZR?=
 =?utf-8?B?dmcyOERLcVNMaG1BODBJU01PaGlZTXBjU3dHNmZSd3JjdEU2YzhlS1RmSDFN?=
 =?utf-8?B?L3ZDNklmYjZlNURZUVNrNys1UjF0OWJ4Uy9uZ2pFUklHQmxvdUp6b2xuWVRS?=
 =?utf-8?B?VTBCODlRZmtNSkMwckNGOTFZNEVRZVcvN1h2Y3lvRFZuTjgvc1lDU2ZvZlZL?=
 =?utf-8?B?cVNyQVNsbkRoYzI5N3hLb3BaV2VlcUFFcUNnWWh1S3J4LzlNeFg5L21LRjBL?=
 =?utf-8?B?Rm5NLzd4WWlBWEpCbU1KaDlBbFovdU41RGxoaytDTVZmZ1c5OHVudVFZYy9r?=
 =?utf-8?B?czNEZk1SaU9SNXdwbi9qTlZzSVJEVzdWaEp2d0V0cmJwUkVPTDZmZkYzSXU3?=
 =?utf-8?B?TG5OeGNvcTQ0UncyUi92cUlXQWhZTEdYNjN4V1NsT1hCbVgwd0RkWGdTVFZE?=
 =?utf-8?B?cXRJRktFMzNGN0tUTjdKbG9iMlhyeHg2NXBER0phR000WmN2NGV2d0RnSThK?=
 =?utf-8?B?ajF1NHVhNWoxRHBrY3M2MmxIWitSREVYVTZSdGdvNkx0RlI4MFpReVptS0JT?=
 =?utf-8?B?Wnl6eGpNMjl4VkVSSFdKOVVscG5qclpCdkpLQXhGek1GbGJJZEJ3QnN1eEpN?=
 =?utf-8?B?U0t5SnJKeUxYWkU3VUVjTHNMNk8rcWU4U2p5Mzh4RHBobngxcUlDbW1vRGN4?=
 =?utf-8?B?Y2NSV2lzWlZWdDVKS05tREltWVgyY290Y1ZyU3dIcWptRVlvZ2h3clBjL2NQ?=
 =?utf-8?B?RTY2M2h6OWMvcmZGNFZyN0hONVEzMEE4WU5VQmFyT3Q1TkFaeWdzVU1vV20r?=
 =?utf-8?B?bG5XeXFBUjJ4RzdLNVpEcVEvZWlSbzVZMEx0S1R4ejhuYkw5ZzhNZXo2Lytx?=
 =?utf-8?B?UFJvNm53TlNpeDB6NmxaZWhCS0NmMlVmRG5idmNTZUw3c3cxb2Z6RXUzajlw?=
 =?utf-8?B?NGZ1M01TZ0pobzUybGhQMlcrZFVKTmNRQmV0MzQ3WTF4SGdnVk5vYkN5WEwz?=
 =?utf-8?B?MFd5TmY4dk5IVDhEQ0RoTTBBWVZVbmxZS0xCN1VDYWpWaXFEYm53dzVJU2Q1?=
 =?utf-8?B?Tm80RGFsb0lmeWVvVm9oMm40RlRFRFRScmhrc2hEOXl3U1lLcjFZejVaMTFk?=
 =?utf-8?B?UTYzU2ZKV016TkxLSFZOQ1g4MC9IYnNwZGtOdllHenlERFpEVVRNbXdXdC9y?=
 =?utf-8?B?UVRPcXB5VjBMaFFhVGpTenJKb0UxQ1MyOEVpRlFxeG5MUTlQRUF3S1ZoK0xm?=
 =?utf-8?B?dTE1WnI3MjU3eWVkNENFNzdJTUo1aTJqMXd5RXZnOUdmQUwybHQvcHVmV3Fr?=
 =?utf-8?B?Zk1YSDl4Q2NNMXdXVDM1SkRJZVJuMUJwWnNCb0oxaDVMTERqUE5vR01QcDZn?=
 =?utf-8?B?dWxDemZIZ1NBS1NTbXNYNWNpZjJ1MHB1WE52cHZKL0YxcGZ6c3M0ZHMreERP?=
 =?utf-8?B?YUdSN01JTjhQSFFWYmZWaWJEekg3SFRIVXlHTnhwUWY0MDc1RitaQWM4L3k0?=
 =?utf-8?B?eHl3VVdIVi9BSkVQYzN5QkZaemV5eTdCNXJlTEtJMEptMUxWNERIZy92eXov?=
 =?utf-8?B?Qmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 32dc687e-0887-41d3-d9e1-08dcb1597bc4
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2024 12:08:26.9179 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vUo32JYHLs1DKD+Ps5e/UgK+XfHZK3t318pEpmjSR/w8YjiJm8Z6zAvyXaKek6wh9vUnDQ/4+4nadvCjYogz0wfnx9uWCWT14aCU8yneLbs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8389
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722427712; x=1753963712;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WCo371Ejbdc/aetSMyTMMiA+Xt30NR5HgU1V7VWTNI8=;
 b=fTSLLoI6WbY9KaQCvkXLVln9kqt5mQmqFbLmlJfHWfp2e9J5nEGTr3HL
 pzT6lfTivcJz1y2yq0Q5kAaXQ0tMwbdRtscUe9RwzVmubci6GpTkOWnwi
 3k9Ff1Jq2QKYAbIn6v9EfJ2JowNuIK+UPBIxmSzKsmVq/lxK4aXs9irnr
 RZiEmvHYJQON4dGtmymKyHrx/xq/BLeZl05ASXv67h2lvNQzmD8sf7SbV
 hcPGA5y4CyKwZf/37+Cf6OKYdRf1BFu5f21pROteP0BdEjJ71mYyVxpVG
 mKtUKw/2gEOLRygzONX3yyXr2I5gjjWjYgcDYgwuGjF9W6qY8oNNpA3qz
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fTSLLoI6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Implement ethtool reset
 support
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "edumazet@google.com" <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "simon.horman@corigine.com" <simon.horman@corigine.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 30.07.2024 15:58, Jakub Kicinski wrote:
> On Tue, 30 Jul 2024 12:51:21 +0200 Wojciech Drewek wrote:
>> ETH_RESET_MAC - ICE_RESET_CORER
> 
> Core doesn't really sound like MAC, what is it?
> And does PF reset reset mostly PCIe side or more?
> My knee jerk mapping would be to map Core to dedicated
> and PF to DMA.
> 

Quick summary our reset types:
PF reset reinitialize the resources/data path for PF and its VFs.
It has no impact on other PF/VFs.
Core Reset reinitialize all functions and shared parts of the
device except PHY/MAC units, EMP and PCI Interface.
Global Reset is Core Reset + PHY/MAC units reset (including External PHY)
Because Global Reset is a extended Core it makes sense to map it to all.
PF reset mapping makes sense to me since it is dedicated to a single physical function.


