Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B904CDBBD
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Mar 2022 19:04:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8766E832EB;
	Fri,  4 Mar 2022 18:04:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yyDFEBElGi2F; Fri,  4 Mar 2022 18:04:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4F66F832D9;
	Fri,  4 Mar 2022 18:04:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6DB481C113E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Mar 2022 18:04:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5835D40516
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Mar 2022 18:04:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eh9VyvBUJo9Y for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Mar 2022 18:04:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 08AD64027A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Mar 2022 18:04:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646417085; x=1677953085;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XelmUs+7fsFJ9tpqEPXEsrzk8+RG/4eMhgKOiwg+qZo=;
 b=PPvJUk3G/dAn9h5p76HKZMiy8qrRGk+oWEcKKLvJn6eBiCERoEtqt7Y+
 /Pu3Lc+T89EFktuVx5DygsAB+fG1DMTXGjC0P2jHN6qagYmtS6TWA2RS8
 oCxjo3XjtAEORAhEhmNurlS3kn/U4TI+2hZbzHPEy1z/4MriVHRoETyTA
 eO4xtaq3k49qxeZMoU2K/dD4krLev+Q+vwFtFJU3ap4e37y8QOePaQ53I
 X1P/VOus/yXuTa5gEYfnY4w45nr+Vu74T2Qv4MuLpE5+swJVrUdDSWqCq
 LR8GDcbeBFTORtwkM6TdQCWPzH/7WJu8G77NhW9j4srJb0P+0Zw9TxdbM A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10276"; a="317259713"
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="317259713"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 10:04:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="642585530"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga004.jf.intel.com with ESMTP; 04 Mar 2022 10:04:44 -0800
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 4 Mar 2022 10:04:43 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Fri, 4 Mar 2022 10:04:43 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Fri, 4 Mar 2022 10:04:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N/fTa2OXhDm7bUcrRv6x4f/xNvb7Z2OdsZ3y7hcXHeSfZ1ULODofWvRSXCl1atRKrDWx9E6XKYkc5b8N7fAn7VDf5kGIyor4irXlFAbPJLwFq1w0CTy/H9KVVsE12HsHMdYBRQFDz+9rAqOgvS+W/TVpPfGS7LH0AflYeAE1cN3YqfbW7ixw9Lz5jIw2lHCP7IXiUCjEZ+rDMUuCO2wCXjg7guGgxdRlPk6hUByA3Gb3tQpUOoHTwnDr15mSkKtluBtaYG4QkAo5rpAJiN8xqogo+M1pLGdWPqU0k5D0ZzA10NU58OzG9AFSTAjS+XkxmduQM2RnL0FfGhRaRYTsHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GrVYVY4JhVCbqrmF5E+0dNOsskW0TFpH3Uo2WppRKTc=;
 b=WbOwYRzjLkonHZy2S7RiRU9HrdoZLsOWs+PvApNrCKwwMIZtvQLyUSjhfuOsenHk74e3TGdeXkctjZP91zXdWhtRiANX0cH0zMhDkY3xVUlpYSyi25Lwly8z3f1CSPKkxBKCucniQRNhhVoOqXA35iKszNe6juc2KAAj1IebvQ/TRiiAKEmhVDtUWT3Hrd+8CxHvOZgRe7b3LDDpwrQk9My+xFTvIaMEPRsTxXNB/d5EBgzLmc0BZj7XtHj8FVJpTKGEZMOqS3sJfbMNGgFlGrCRcDQV3F4aviKGJbqRkn0m2e2UYIrwa9EX2Gw5TMcjdL90VwTOYR5WPldfsZWl9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB3224.namprd11.prod.outlook.com (2603:10b6:a03:77::24)
 by MWHPR11MB1950.namprd11.prod.outlook.com (2603:10b6:300:112::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.16; Fri, 4 Mar
 2022 18:04:41 +0000
Received: from BYAPR11MB3224.namprd11.prod.outlook.com
 ([fe80::90a3:68bb:7e63:62ef]) by BYAPR11MB3224.namprd11.prod.outlook.com
 ([fe80::90a3:68bb:7e63:62ef%7]) with mapi id 15.20.5038.014; Fri, 4 Mar 2022
 18:04:41 +0000
Message-ID: <bf961bc6-2b06-f68b-3d0b-e4a388c7d8ea@intel.com>
Date: Fri, 4 Mar 2022 10:04:38 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
To: Dan Carpenter <dan.carpenter@oracle.com>, <slawomirx.laba@intel.com>,
 <sassmann@kpanic.de>
References: <20220304115300.GA7106@kili>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220304115300.GA7106@kili>
X-ClientProxiedBy: MW4PR04CA0084.namprd04.prod.outlook.com
 (2603:10b6:303:6b::29) To BYAPR11MB3224.namprd11.prod.outlook.com
 (2603:10b6:a03:77::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 25f4123f-4bdb-48d4-55f4-08d9fe09749f
X-MS-TrafficTypeDiagnostic: MWHPR11MB1950:EE_
X-Microsoft-Antispam-PRVS: <MWHPR11MB1950A3C5F5952889D4B0E3D3C6059@MWHPR11MB1950.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lQQgcSv2cjFOfM12mhLmiSLQ1gGgz96UezNaP5LVMehKuvx2/jg+UUUW4+yleeOv1C1W54CQXkhwo94CyOjoQuEGespg3aKAIz9qNaJjicQSAvQVe+/9gzUuU00kYjWeMpsExNHMY3a3XuTPDn9rsBvojDxejRkUhwpK5Rl7YN/hK4NOq6evSSRWFQQn6Fo/NwREiSWAE9P16fLTaTSUnueAPuHJmBAZKiDbeJFiVS2IwUpA/hzuTDjE8lmdjbbyg1SrBw35T5Cxk//tf54GRfk3uSrqI4BEWM0Z1zXlzlQXMCHZxhTK6cPVLOUcoHLBsl7h/lIthisWpp2Bto1a7/aztvr1HycmoW1fpk586QW89/bPaks36LFaOB8MWhVVgXDac2LE2OTvRXEkp1qNfBJfgJItkH4fi6HSdlSzDbXYrTWepF5fITp3mHWkBQmvdBw6I13ovf7DNJJy+ZWZpm5OueVBC3fVmbB4DE2MTotX+LVJftpni7cg6hTvVEVVRbmcoh4B2fRpe8um+I2nAyvxHFvCMe0d/nqSW7X/o2tTlR11riCVNPnesbgrgu1WrlygOtbNZm3va4WMYvIPPh+FgymqcbELY/D0SwE5o8kuZh8waXVWgvljoaRzip74tOEnFz//X2X6CtFFfi9eB+MG9/2DZyQKmD9D1OcyCP08EJqFDtEzlD7mm2WvDZHm8IBdDR1hquhLsRToqihGYF+4Od/F1bREuXX38nysCeI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(5660300002)(6486002)(66556008)(316002)(186003)(26005)(66476007)(8676002)(4326008)(66946007)(6506007)(31686004)(53546011)(6512007)(83380400001)(2616005)(6666004)(2906002)(86362001)(31696002)(82960400001)(38100700002)(8936002)(36756003)(508600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WEFJeWd0ZkRiQWRYZG1HcFF6bUgxUUdDTXhwTVFJRkVTaW1YWnhWQWJTOEVF?=
 =?utf-8?B?N2duZEVJSGt6MGJXNWh0QnArTVlkekdDdU5MR0JWNUFUR2cxVytGbTZpK3VU?=
 =?utf-8?B?Zmd1aGhZZkhSRDJqeWthMElEVllEeG94SGorV1pFd2plUkIxQmh1SVlYSVZR?=
 =?utf-8?B?Y05TakxOTDRnZ1lCczFMVG9TRGtQUlJuRWRoejNTc09rUVRPUDFjR1dlR3VU?=
 =?utf-8?B?eWQ0b241YTZZU2JWemhoRU82cy9MRktHWW5yb0tYRmljNFlZN3ZRWVA3WHp5?=
 =?utf-8?B?NEtvRHJCK0FFRC9tdjh0TmZJS3dHUFMwSmhNK1FoK2xmOG1UV2x3cVFqT1FE?=
 =?utf-8?B?LzVLcUhVOFV3Y09xeDllcmc2QUtNR3Z1eXM4ZVBLTW5yQWd4UmcrTThPUHFY?=
 =?utf-8?B?QkFIRDNnVUdPVzFzMnpJTVBHdWVhTkk3YVR6RmFnYkd2QStIRFI5dGlNL2pK?=
 =?utf-8?B?c2Vya2dJN2FmdVoxZjlLRTZFeUl6aXd0Sm5CN1pLUmM4K0pZTmV4N1dWcTNQ?=
 =?utf-8?B?enVsTVZvc0FHdHIxMUo4NnpSNE1YcDNlUmJ6VDhCa0IwYVNUOVcva1FtMS9H?=
 =?utf-8?B?VjE3Wm40anhaOWhHRUM5Q2duS2o3VEVmclJWeHd6cUNoUEY2bnhtUGxqR0JC?=
 =?utf-8?B?RDdoTzNUeFlpNEUrV080cmd0ZjQwVEdwSmYweWlYbGdpaTNsemhHZVRwdkZi?=
 =?utf-8?B?VmFVOEYyVnVZS296cWk1T3N6eEJCZ2paRTZ1cmhoUTlpUlF4ZDdkRWJqRk4z?=
 =?utf-8?B?cUpIUXp3M2V3MFo2RUhQNzlGdUtNS3JUVjVrMkFnQTJudUNGSWRuVjRLNHdL?=
 =?utf-8?B?RkNMY3pmUThqMzJwbkdidTd6dmJXaC9saGdoZDVWUmdIdGJ3WXN6aGlyOTlq?=
 =?utf-8?B?dEJFVGZvam1qV01lL3dSV0YxMWUrbkVZbldRT3dHQkFPTW9jZVU2dXd5ZVlm?=
 =?utf-8?B?MnBCQm5Fc2F5T1Nrek1qM1Joekh6b0pjOXJSSHlPYW83aDEwSlRxZkZFU1pv?=
 =?utf-8?B?Wm0rNFYyWUNTWHdDcVlFdi92RDB6YzFaVytQZVlUYkMzWHo3eHNORzBPbzVV?=
 =?utf-8?B?ams5anFnTHBOaGNHSWRISDVqbS9LckZFaEFXbnI5U2ZYY1J1UElxRDlDdk1o?=
 =?utf-8?B?SVhDMDBqdHYwMjZyNm14NHNzR1ZuLzZiWDJBbXZkek45QnBYMVhXUHVzZGU4?=
 =?utf-8?B?QnNVRFFsSWloZEMxNDBxZHNmMldGYVVBVDlZbnNydHNtNUtHSmJWWFFuWW1B?=
 =?utf-8?B?R2hGT3JlMzVmcjl4UWYxbVYvWTV1WUVWbjNxeGhUNlhLK25UL0lrbzNsUHlV?=
 =?utf-8?B?c2FFUHdjalJYclhrL1lKcTY5RkZObUk2dC9UOWgwc1ZvOHM0OWhVRnlLbUth?=
 =?utf-8?B?cVQ3R08xRmtZc2g3OE9JQ0wzSlJJREJSVXdoNWFBSzRPT3M3TCs1UWNyblNo?=
 =?utf-8?B?d3RPTy9VaVhra2llZ2U4WGNtcVNtMUhsMWpuQWNrVVJHK0FHMzNVZjJDZjBa?=
 =?utf-8?B?TTlrWDJVbFhZcmI4ZUVnQmpxZVZhMGJOZ2ltYUtaMkhEcHozanB0MXZtaTR6?=
 =?utf-8?B?ZnAvNVJUWGtmSzI0QURLd0xOWE9PRkN5UkZHUXZ5dkhtV1hGQWR3dWRWKzc2?=
 =?utf-8?B?Ly9xRzR6RWFwRndEQ0taVzlwMm9sT1ova2V3b0xwOTlEa3E1QVlwa3d3Q09O?=
 =?utf-8?B?enovMlRWZExWTzVac2N1UktlOHVlTXNoMTJZMk9qNHBZK2FrTnU2b3FTejgr?=
 =?utf-8?B?b3RibWw5azhZWFpoWUR4QmhiZENmdXRPbmdCR3VSSzhGRWZLV3ZQeWpzazMz?=
 =?utf-8?B?SWpsaWx2RWRJTTJBNHA3VlJwTWdKNzgyT2ZBOUkyZ2xjVWEyOE50ZDVDQk1z?=
 =?utf-8?B?dzVRcG01U1F3U1hWL3A5dmRjYklxZmdlMlZWYmlMTjJ2WFVieWoyRDl0THVr?=
 =?utf-8?B?aUdhTGlZYzR1MG1tVUtuOHdZUXFIRFgvKzNiR0tNRU1OdXR2ZGFnWnhxRUpL?=
 =?utf-8?B?enRjbERKYytLQ2YyWUxRZld3dGNucThhanZCR1RaVkc1U0dnbllzNTFhSDJI?=
 =?utf-8?B?VHc5MkpiYjR4eTJGK2pHV1dJZnovc3dNdXcyZEl5cjUrRCtMNjlWM1hib2RS?=
 =?utf-8?B?RVdNUGNvSU1yTFUrcHdUNlBaMVBtQVFMc0NMS2hpbFY4SVZiRDQzTHgwbUND?=
 =?utf-8?B?V2ZwM0xpcTFSaWpLaHN1NHk1a2g1VThSRGc0VzVMRnhWNEk0cGlQSlJPcXlY?=
 =?utf-8?B?bnNZYjNsNnNQNit3QnpoL2orYkNnPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 25f4123f-4bdb-48d4-55f4-08d9fe09749f
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2022 18:04:41.6270 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IGoot8/KKpFtF+w72JTnrDMurq3h7oU9Q2o15J5wSCfRqbc/f0XuFugcuIbY8bJIW/p3A/kcpMgjsJUa0jtpkS0wx59fNeZkX8IxnE2PeGU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1950
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [bug report] iavf: Fix deadlock in
 iavf_reset_task
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Dan,

On 3/4/2022 3:53 AM, Dan Carpenter wrote:
> Hello Slawomir Laba,
>
> The patch e85ff9c631e1: "iavf: Fix deadlock in iavf_reset_task" from
> Feb 23, 2022, leads to the following Smatch static checker warning:
>
> 	drivers/net/ethernet/intel/iavf/iavf_main.c:2691 iavf_reset_task()
> 	error: double unlocked '&adapter->crit_lock' (orig line 2689)
>
> drivers/net/ethernet/intel/iavf/iavf_main.c
>      2613 static void iavf_reset_task(struct work_struct *work)
>      2614 {
>      2615         struct iavf_adapter *adapter = container_of(work,
>      2616                                                       struct iavf_adapter,
>      2617                                                       reset_task);
>      2618         struct virtchnl_vf_resource *vfres = adapter->vf_res;
>      2619         struct net_device *netdev = adapter->netdev;
>      2620         struct iavf_hw *hw = &adapter->hw;
>      2621         struct iavf_mac_filter *f, *ftmp;
>      2622         struct iavf_cloud_filter *cf;
>      2623         u32 reg_val;
>      2624         int i = 0, err;
>      2625         bool running;
>      2626
>      2627         /* When device is being removed it doesn't make sense to run the reset
>      2628          * task, just return in such a case.
>      2629          */
>      2630         if (!mutex_trylock(&adapter->crit_lock)) {
>      2631                 if (adapter->state != __IAVF_REMOVE)
>      2632                         queue_work(iavf_wq, &adapter->reset_task);
>      2633
>      2634                 return;
>      2635         }
>      2636
>      2637         while (!mutex_trylock(&adapter->client_lock))
>      2638                 usleep_range(500, 1000);
>      2639         if (CLIENT_ENABLED(adapter)) {
>      2640                 adapter->flags &= ~(IAVF_FLAG_CLIENT_NEEDS_OPEN |
>      2641                                     IAVF_FLAG_CLIENT_NEEDS_CLOSE |
>      2642                                     IAVF_FLAG_CLIENT_NEEDS_L2_PARAMS |
>      2643                                     IAVF_FLAG_SERVICE_CLIENT_REQUESTED);
>      2644                 cancel_delayed_work_sync(&adapter->client_task);
>      2645                 iavf_notify_client_close(&adapter->vsi, true);
>      2646         }
>      2647         iavf_misc_irq_disable(adapter);
>      2648         if (adapter->flags & IAVF_FLAG_RESET_NEEDED) {
>      2649                 adapter->flags &= ~IAVF_FLAG_RESET_NEEDED;
>      2650                 /* Restart the AQ here. If we have been reset but didn't
>      2651                  * detect it, or if the PF had to reinit, our AQ will be hosed.
>      2652                  */
>      2653                 iavf_shutdown_adminq(hw);
>      2654                 iavf_init_adminq(hw);
>      2655                 iavf_request_reset(adapter);
>      2656         }
>      2657         adapter->flags |= IAVF_FLAG_RESET_PENDING;
>      2658
>      2659         /* poll until we see the reset actually happen */
>      2660         for (i = 0; i < IAVF_RESET_WAIT_DETECTED_COUNT; i++) {
>      2661                 reg_val = rd32(hw, IAVF_VF_ARQLEN1) &
>      2662                           IAVF_VF_ARQLEN1_ARQENABLE_MASK;
>      2663                 if (!reg_val)
>      2664                         break;
>      2665                 usleep_range(5000, 10000);
>      2666         }
>      2667         if (i == IAVF_RESET_WAIT_DETECTED_COUNT) {
>      2668                 dev_info(&adapter->pdev->dev, "Never saw reset\n");
>      2669                 goto continue_reset; /* act like the reset happened */
>      2670         }
>      2671
>      2672         /* wait until the reset is complete and the PF is responding to us */
>      2673         for (i = 0; i < IAVF_RESET_WAIT_COMPLETE_COUNT; i++) {
>      2674                 /* sleep first to make sure a minimum wait time is met */
>      2675                 msleep(IAVF_RESET_WAIT_MS);
>      2676
>      2677                 reg_val = rd32(hw, IAVF_VFGEN_RSTAT) &
>      2678                           IAVF_VFGEN_RSTAT_VFR_STATE_MASK;
>      2679                 if (reg_val == VIRTCHNL_VFR_VFACTIVE)
>      2680                         break;
>      2681         }
>      2682
>      2683         pci_set_master(adapter->pdev);
>      2684         pci_restore_msi_state(adapter->pdev);
>      2685
>      2686         if (i == IAVF_RESET_WAIT_COMPLETE_COUNT) {
>      2687                 dev_err(&adapter->pdev->dev, "Reset never finished (%x)\n",
>      2688                         reg_val);
>      2689                 iavf_disable_vf(adapter);
>
> The proble is that iavf_disable_vf() calls mutex_unlock(&adapter->crit_lock);
>
>      2690                 mutex_unlock(&adapter->client_lock);
> --> 2691                 mutex_unlock(&adapter->crit_lock);
>
> so calling it again here is a bug.
>
> I feel like I owe you an apology on this one because I asked you to add
> the mutex_unlock() here via the kbuild-bot...  It is confusing though.
> Does the unlock really need to be done inside iavf_disable_vf() are
> can we move that to the callers?

Thanks for the report. I talked to Slawomir about this and he is working 
up a patch to fix this.

-Tony


>
>      2692                 return; /* Do not attempt to reinit. It's dead, Jim. */
>      2693         }
>      2694
>      2695 continue_reset:
>      2696         /* We don't use netif_running() because it may be true prior to
>      2697          * ndo_open() returning, so we can't assume it means all our open
>      2698          * tasks have finished, since we're not holding the rtnl_lock here.
>      2699          */
>
> regards,
> dan carpenter
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
