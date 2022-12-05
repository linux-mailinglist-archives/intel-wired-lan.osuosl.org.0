Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A40AE643126
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Dec 2022 20:11:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E59138176D;
	Mon,  5 Dec 2022 19:11:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E59138176D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670267506;
	bh=GkC1rm7a+wxS1i04n2i4ft05XVJDE0ErY/S7kHaknR4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pOwFHrvDkW5dvd/7pViDkRf0WN8WV+R3MmJqCDPez4F5Y7DCtWyBFmb45dnE6D2K0
	 prKJKiCQp14Yn0wO8V/Hy1cGhuaVC7aLd279az0GGP3ZEzRYhqtxudJeYA3axOE6pN
	 rFZrdGKIGNYy8HXfR3LpHr4QhEHS7YXSa8ozVdfG7rtR4PRYhCeFm7YsDjKKSkH5TY
	 p+xj2ygV9EKiVfyqeFLeF/9bhYeQfjztRKPgu2ZdMpoHmTDKtP05yvOxueGu1ZBI3p
	 oaZb6+TwyASR/dIbpF7gv70/isIhqrsaj+m74JefOBnpVB96/WMxkuv2aVDpK4ITpw
	 fWvCalVCjz3Aw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TWvM5uz94kLT; Mon,  5 Dec 2022 19:11:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E13F48144B;
	Mon,  5 Dec 2022 19:11:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E13F48144B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 95A651BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 19:11:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7BEE38144B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 19:11:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7BEE38144B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3onn5sc3GYiK for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Dec 2022 19:11:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 57F518142B
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 57F518142B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 19:11:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="296131668"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="296131668"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 11:11:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="770456602"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="770456602"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 05 Dec 2022 11:11:38 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 5 Dec 2022 11:11:38 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 5 Dec 2022 11:11:38 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 5 Dec 2022 11:11:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YN8jCbsNvAmC89YYBhE7ClpAUC2gpVjSRQJaFziqcVQ8w5S+5wvabFcuCXHCABqkVL/xTBmz3PwDW/ehOh/uKWSOyrTRlugWPBmWaRSFh1Q1kX0PYgOiR8wYfpbBzc5jnCrZma4ygUWsr7leXlLiHFPEbeJ3DeTZY7vqAZHqwHQRKTlavseZlrXgThIDQ3nNvXPYfnqnksexVt3V36yA9YMXnZONBQAypqNoMYEdgnLbRXjIRc2JRs382GW2E1eF202HKo2wFNkWBiSISRSUZEN+10njMtTKNR1lh9FiWj11fVy7mb67npMr3fvqK6DWo8OjQYNO6uWMzKEcKwd3jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v6GSiwHnv0u+57KlCJDbkAHCN0v+Ni/rH2vES5vB+rc=;
 b=lSue2L2wJNSRi4f8ZyuGYRpqvpI/BtMrnODrzqW/bIwkBk1/j36kjBC0Ufm9SIcaApvo7UJPdscYIA6+fFrL+2MiDIKyAYoO4Ml4BOee0L+KjvX6sBKQ6z7XDPRlkxo3HjXU48Xsw1c3JdEVq7FY/6y2fpNu8y32ShIgl6KeNV74Ki1SvoJ35vzt1fF910ezLUKpZul+DI6YD8m3jrs35BeFGpG5ASNhqSPCvppbkutPoYEnACzZj+gGA0ETJksHuOizQ+HTvV/rDt3ZQmgrQx2RsoYf6wpTUx8g3RUYQ/06wBLNFAK6ggTaOrStWNVMAqJZujwGcGKT1QEbTntaiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM4PR11MB7278.namprd11.prod.outlook.com (2603:10b6:8:10a::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.13; Mon, 5 Dec
 2022 19:11:36 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5%5]) with mapi id 15.20.5857.023; Mon, 5 Dec 2022
 19:11:36 +0000
Message-ID: <9af50fda-36b4-483a-4a0e-21bcc6d25ae9@intel.com>
Date: Mon, 5 Dec 2022 11:11:34 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: <intel-wired-lan@lists.osuosl.org>
References: <20221205173721.2601589-1-anthony.l.nguyen@intel.com>
Content-Language: en-US
In-Reply-To: <20221205173721.2601589-1-anthony.l.nguyen@intel.com>
X-ClientProxiedBy: BYAPR03CA0012.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::25) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|DM4PR11MB7278:EE_
X-MS-Office365-Filtering-Correlation-Id: ff8a32d8-1d3a-4f48-3bbc-08dad6f48766
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yVYc6VJzDPxK279ZVEf5pkG3ATskipd2dhJLb/S+Fh1TyBe76LBQS7+UroFy5sm+Vyjws/GxMC/KskfM8dwQOdx8IppyxPOjzc5/pQtUAgG0kL1Fx9RnMKLHCFIqV9xj4GeRZXRjQEGeAMsOx7Re4ikAmWFZh22Sg1Px3qoYvdrswbFN80OBGm1JPmB+vxear4Szp60T3MBssGfRI+CcbtWa6SHxPRsOutCOmEUSlVv4y+s28ipZCDUZZKoIS5H2t0fnUqovvdgu26x1f0yQ/vaRtq1jrRqDBKg87vmVvaWfqc+QfaSySAsAEOOdzboA5FkwaabaHGQGgu7SZLxpUfvlabZ5LxJQ6SPZ2zXUmEy51Z7Oki6qTNiu+4SMO50wIH3EArITfkROF/u8mCaWqrPul7vvxtY1aqqDJL4FMICkv+Tin5725JaaTZIgxWU7fI+hiYW8uJ0tHvFqzOf0EBS27Pu+j5CTx/PpqRvSSM0qs6hpzD3OzlXL7chYPLSt+gATy39bHMerfGpdcrkvr5goPT2UHf10CfusO4jcG01X6Zd7rwxpWCX5lKF5CbLdYp/SZ+e9u2Xc2O8R0DbSyAv5KjKfzW2R5oO5X732XCwwdgHjyN8n1wpJlse4kre86b1C488lc3PbwsNVa4B89gbp4K2/cwY8HK7iGzTKYnHLzDKaUvT22x5aS1ThjXWUaF4Fh9zHg/ug1F5rDQIonGecyvj4v0C/UqbjWs0O2+6HggsQCL6xR8YErQi/F9Py
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(136003)(346002)(39860400002)(376002)(451199015)(36756003)(31696002)(86362001)(966005)(6486002)(478600001)(6506007)(26005)(6512007)(8676002)(186003)(5660300002)(41300700001)(8936002)(316002)(66556008)(66946007)(66476007)(6916009)(2906002)(82960400001)(53546011)(38100700002)(2616005)(83380400001)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZWRTTzVYOWRrU2FSUzJoMEcyWlJmZW14Q3FVUXQrME44VE5DbzJLSFBJd1BK?=
 =?utf-8?B?Zjg2OEtlY0lwUFNDT1ZRczdld1pPVnBJa0wrVmFvNzZFUExYWm5kMnVpY1F0?=
 =?utf-8?B?ZHBpMDRGVXNCQ1RnRTgzNnlSV1VEeVQ4S2M4TUhXNFpTRzRNQUpNbkx3bW15?=
 =?utf-8?B?SEJUSWd4VFlPcExVZlgxMU1sOWZ4Z2ZNL3FHWW13YThwQTNFSDBqZ3BJNmlZ?=
 =?utf-8?B?UnZ3VEZxWUVkbURrMFhWVjhkMEVwaE1uSU1FOVBwaE5RMGxLS0JJaGhKUjU4?=
 =?utf-8?B?WDRrVjRZVFlWMzZ3bEpiaE9qd1hwWVBNQm9NN2FBWFdyZko4SFUwcVZWMjhm?=
 =?utf-8?B?RVU0NStuZ1VkUGl2djhENzBXZXErdTIwU004ZW8ydWZGblp4eVJRUTgrT1NL?=
 =?utf-8?B?c2NrZGVoUXZrRTBlTmJTT0R5d0RpWFp3aER5OE5Cc0JNd0hZeGZPTk1tOFQr?=
 =?utf-8?B?eHc0d0VkY2FKai9na1BUMUxRWGhTY1ZBdlZKanRXVnl2b1JxT29KK0I4RnlK?=
 =?utf-8?B?blIvcEl2OEFmLy9iVjcveG1kWEozaXByU2Zkakp6TDc1ZDJVaGwrZzdZbTh1?=
 =?utf-8?B?aklJM2I5czZwYm9rakxJWG90Y3VHMnBFMElCTHl2d1pyOVpGcGhvckJIaTgw?=
 =?utf-8?B?NHI4SSs2cXlGQTAzTWxRZjM3SytJV0VkdmI0bU1wRWdVVHJqSTRWTlpuanFj?=
 =?utf-8?B?ZEJYUG9kSTZQVElzckRVWUJlWm8zS2lrSUNteFg4amhlVThFRnpTMm1OVFow?=
 =?utf-8?B?TWVFRTIrTUZEbG9YSlh2eGRaNGxzYWFBUW5YZTloMzVUaFl1cHFnN21LRC9W?=
 =?utf-8?B?cG43QjhtMnNOa2lEOVBNRlpxdVU3aldtLzdxdmZSbEt2SEd3WVVnRitvdjRD?=
 =?utf-8?B?Qi9oOHVGZTJBdm4zUm96RW1uRWUzRDNHYUJ5Y0FsRWlWaU1xSmlVUEFTa2Vr?=
 =?utf-8?B?VHFqN004bGNMR2E0MTNvdEFVZlFhVHh2U2V3VUtWQXZwb3R5UTc4NG4zR0VJ?=
 =?utf-8?B?bFNYV1RKcTNSVHVHWTRQQkZKRzFrNWFFbDdadzhxczRMRlkyYUI0NWcrTytq?=
 =?utf-8?B?aEpQWlJFT0pyVERIeXJGRjBUaXVwWUcxY3ZHajVKUDg3b2JJZkpDSEZQT1Jw?=
 =?utf-8?B?VzJyam1DN21RRmVORVE1akpNYkgyUTl6WVA5RmZuenJvT1Myc1Y0djAyZkpa?=
 =?utf-8?B?UDJFTzhkQSswdlFSZW5YUFp3T2ovWi9QWGt1d3BpVTk3dVR6b1pzd0U5b29o?=
 =?utf-8?B?dXFNK2h2Z0NXU0FCbElFd3FEU3lXTkMwTUoyWnpJakx2MlNvSFkwS2lKM3Nu?=
 =?utf-8?B?ZDFUazVIMFd2ZGNHODM0eE5xUXF5Nk9EODJKV3UwNDJ6aEU2TlU5aUFtVWNk?=
 =?utf-8?B?aEpiY2Rmb1dCSFd3LzE3ZVhQZ2RBZWNLUlRKdlBGVmJ3b2VVYzJMNU0wWXJ1?=
 =?utf-8?B?bnREMFZRNWhMcUlQbmJxODVwSk5OUDNCcytNVVBtc29SNWkxdytYK3kxbjly?=
 =?utf-8?B?NVlYZHNsc3pHNzg4d2JDdWQxdnhIaTBqZG5aYnVuRzdtYzI4VUI1clBUQ2h4?=
 =?utf-8?B?UDJmQUZoSGROQk0wTElsOHdDcENpTUlUbkM0Ky9ES0Q1Rzc0RUlUVHJMd1Fh?=
 =?utf-8?B?Mm5ZV241QjdvWGhkcmRPTG4xRXI0c1hTRlhjTk1FSUZaMGtUaVFkMkhSMGY1?=
 =?utf-8?B?ODZHVC9JdjlrOU1abkVrMzlXTG4rdnQ1b051SFYrUktiV3Q3SWNFWEFGczBP?=
 =?utf-8?B?TVVaTko0ekVQOXFDeVdqYWxKZWFucjMrYjB0Q1MwcEdoMzF0R2ZIUXdidVpl?=
 =?utf-8?B?N0kyaEVnblYwLzAxK2FES3ZscGVIdEhVMXpIT21JS3YvZHJQeFJYTHY0eEw3?=
 =?utf-8?B?VEpnZU9qUytCMkwwVkNXUUYzc0plSnMxR0RWNkV3MWlNcGxTaWNQbm5FVFJQ?=
 =?utf-8?B?QUdkcHFlN0k2aWRmZ2t2MTNiRzJMOTF4UWFwOWRsNlVQNkNNMXRiZkU0eE9I?=
 =?utf-8?B?TWZlZW94dXU2K1RSejU4NXFzdEIrVjN5cVVrRFdwT1hGMWgrZTdRSDRMYTRC?=
 =?utf-8?B?d09lWC80VmFodElxK1lIUUVlbXhFbFNxdU5DZHhKYUxWT2Q1MEdka2lUS2d3?=
 =?utf-8?B?NERQaDBiK0ZZbkZOa21YZUFkZXVrZ2NMNVFXWW01TGVTalBqMjNGVm5Obk53?=
 =?utf-8?B?M3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ff8a32d8-1d3a-4f48-3bbc-08dad6f48766
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2022 19:11:35.9741 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x9aMNoSZgbbUYGBz4T7r6MNENexVjfapCqa9gHjdRBfFOa1ibMjSYtFQTBpWCTDyBmUYPDEqpbFIs6nbZCnL+TjKduqCpsObOA7WZlReVL0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7278
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670267499; x=1701803499;
 h=message-id:date:subject:from:to:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=L8bmyPsZaPO/ELbDerFKqD5DBYCkSAvL/s3opRx7D7w=;
 b=VeYso2SsGBYc/XlllWw+iIbQw0XG66fwDnX1GszbhF7YXRCiwSDUNDZ4
 JJstcOD3YA2Q7Ayoxoum6b9qU0BbW8RTN3LjAOu9LB47ZUeCH5a7pZ80h
 pHgTwdENrNyRzdK0lwFKxII9eIRGevUl3iU/6ZVR7ioKGeFG5aPEoPE27
 RG1nM/P9JZvKmbH9JD07jJFXU8v9nzuhyaHYOto7Wv61UjWW3UU4s5Zjn
 AfyLYsDcY4ETtSvodPfszvZx+1zU6Ozwx3ROa/IILSt3niUKPaCclXTqX
 +w3NaXJpOAg1zDZWmDvbNaQOEIlx/JDiqAq4V2b8Dfnw7TT0HHzSxm7UX
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VeYso2Ss
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [Patch net-queue] igb: Correct vf reset
 response size
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/5/2022 9:37 AM, Tony Nguyen wrote:
> From: Akihiko Odaki <akihiko.odaki@daynix.com>
> 
> When an address is not assigned to a VF, sending E1000_VF_RESET message
> from the VF to the PF causes the kernel to leak 64 bits on the stack to
> its response, potentially crossing the security boundary relying on
> virtualization.
> 
> Correct vf reset response size so that it does not leak data.
> 
> Fixes: 6ddbc4cf1f4d ("igb: Indicate failure on vf reset for empty mac address")
> Signed-off-by: Akihiko Odaki <akihiko.odaki@daynix.com>
> ---
>   drivers/net/ethernet/intel/igb/igb_main.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index a5049e342f7d..74694a27e35d 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -7577,10 +7577,11 @@ static void igb_vf_reset_msg(struct igb_adapter *adapter, u32 vf)
>   	if (!is_zero_ether_addr(vf_mac)) {
>   		msgbuf[0] = E1000_VF_RESET | E1000_VT_MSGTYPE_ACK;
>   		memcpy(addr, vf_mac, ETH_ALEN);
> +		igb_write_mbx(hw, msgbuf, 3, vf);
>   	} else {
>   		msgbuf[0] = E1000_VF_RESET | E1000_VT_MSGTYPE_NACK;
> +		igb_write_mbx(hw, msgbuf, 1, vf);

I just noticed this, but I believe the mailbox response needs to stay a 
consistent size as the VF is reading a set size of 3[1] for the op. We 
could probably zero init instead to prevent any leaking.

Thanks,
Tony

[1] 
https://elixir.bootlin.com/linux/latest/source/drivers/net/ethernet/intel/igbvf/vf.c#L132
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
