Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F6D536601
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 May 2022 18:32:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DCA064037E;
	Fri, 27 May 2022 16:32:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fP4uyaQbw1Ff; Fri, 27 May 2022 16:32:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D6020418AD;
	Fri, 27 May 2022 16:32:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1C44C1BF27C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 16:31:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1892284949
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 16:31:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lYdjh-f6-_i8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 May 2022 16:31:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EC179848D7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 16:31:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653669114; x=1685205114;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=rgKe4nEt9CGQnj2RaIAUibNguK2o6bKoQt7ox5NEe+4=;
 b=Na68JuxzAgy1YgY0dwUCbsNOOMNYZyB6eViNGEneHuM9xp6Wo3Itg3Z/
 k9+d8O7B3OjdUciuhF3xm1OfvT1avQznK1Pf8GNt15HBUjqvEOJU5TETE
 Sy9TirgXGLcXoHqC60Jk3WCdmVaHgeGoL//2eunsNMLHWfC4VWUgBNTFa
 WFoP9G1YY0xELdSPRDgJWCfbSfP0GWR+UmQBURbhioxpNgvla64y8LdJj
 q4KsMxQwdsIqUbsg2/ij0kw7UtoICOKWZuUPFemuYYXkmpO3VGnggO6Za
 VZvVzQnRnkG3r1JUj7n9nz9XkBT5TPZzNBDnIjWJe5t84s7OWNT6gyjDW w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10360"; a="256592046"
X-IronPort-AV: E=Sophos;i="5.91,256,1647327600"; d="scan'208";a="256592046"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 09:31:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,256,1647327600"; d="scan'208";a="747039325"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga005.jf.intel.com with ESMTP; 27 May 2022 09:31:54 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 27 May 2022 09:31:54 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 27 May 2022 09:31:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 27 May 2022 09:31:53 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 27 May 2022 09:31:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fgl0PY79bthvE2BJTEFMRuLSFngdB84fPdD8hBNVOSNC3RWFLYF13dfSoXhqOfBckJqgY9OSkamHB7LQ+heDmUTr/eRagHi3G6TMYC/QEP20DxeNrv/4XsxtV7EiOu0+bItktv079rv/6eiOCkiXjwnrrQCngttHt6vXXKJB3CqcpylhEgGdN/2uuj+/t2HWEsiKnv/k0oOSiBOopRR9IOn7td42pER0VdlP4c8QTwJygdK0GZ9E0EusXC3KpTUhvw/5pKmAUHPbsc88VznhJGp8bElEpbamwcsW2uSU9wli4zhQYA/MX6OoLh7HwOHQykgeCI++qgZpbHXjkO2DPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/64Yp1PMFVxaEaeNAVj85/WM29V6ISCb/4xBhLoxvEY=;
 b=MKk/mDO66J5Vo4DSlLpgp3ZhAPJo8DDjGOs8f+++A1nf7gmErQ2vHnXe8xETxK7ovG4rLD4E4uPRzikKziVI67gJfuhoQlujabWhzq65XvPq7RZ5fPmxEqwsp9yrrwlqL6MJQmwXG5AEar5cS28/h5BYeHGKfEIJMp5K3n+XGrcAK8t//g9aR+8jVfU6HITb2lr160xAi/+SdNDfi1rBYRpcowWbAtANuGvGK7gyzlokTSbuGoE+JxVo46l1q5syxWHyCxEK9lFzVaBJ179q/adQzUXbFPh3Es6BTR83WEb9T7MsvuRmt4Dn8yOQlYt8/blKhA9SBMh6qptF7sEpmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MN2PR11MB3774.namprd11.prod.outlook.com (2603:10b6:208:fa::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.16; Fri, 27 May
 2022 16:31:45 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3%6]) with mapi id 15.20.5293.015; Fri, 27 May 2022
 16:31:45 +0000
Message-ID: <8fd71e27-7f9a-fab8-62c5-b16839b882f5@intel.com>
Date: Fri, 27 May 2022 09:31:42 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220527115131.7413-1-marcin.szycik@linux.intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220527115131.7413-1-marcin.szycik@linux.intel.com>
X-ClientProxiedBy: MWHPR17CA0094.namprd17.prod.outlook.com
 (2603:10b6:300:c2::32) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8f70a5db-09fd-4bad-1ec8-08da3ffe6359
X-MS-TrafficTypeDiagnostic: MN2PR11MB3774:EE_
X-Microsoft-Antispam-PRVS: <MN2PR11MB37749E63A654F8662EAE00B2C6D89@MN2PR11MB3774.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rLjDwRiO17TKti0AM6kyi3AAMIq/zp4mlGSbLj4lCnYmViJ81zrXV35UYuGV7ONe0apBBQTq/P2G4uc2v23+FeLxiQNu9/5yD+DAVouHltSutAPB18vquDEIbMmCT56m3p6+jGvIxw3blDvCO38m8Y1B3lrfZvshdHg20gCUEtqzwilHaS7u7EN+v2Wk1NwRIOK8F/iFkBpuNUGd9rWtQzK7ouZtu4OvvDQ3HmUrz8uxdq2d1b33EZ22B4iYlq49ANQtiESwIGJafYgO66wN30W+g7DrdJLSGuE3A5/0p/9NBlNYYBzP83LuLjVV/tiPMTj2rKNMFCKNii2yaIVk5+NzPfrkJjC2DNoAlzSz4M1WT9qQ3LEdkICbXllz9xryGpAy8Xy4OJymuFpvZrp2LuYMAn6eXXuu5XErrcpUW9hlth65bXnLNTcQe2NmG+Zh98MsjaEyz8iPBfvLNnDQg8f6VZfNN/ePdsvOTX8vpCeSmMInMlCvSb4YuXex3gya8oXRZdTZMgx/ChFpTnC6sOnnKpg0mxcxQwd39XHnAXeujdNYz3Bt9wHQiOxHXvdGxswr803Oo7uz7tDG5h4lhz9C0lXuaFH80QWH5da63OaZX+GCW12mqpC/2qwV3BsYhlyGd7DkPolYpFcJ5AAfVk5XstMr5J47soPAbj/c8230clRJfMbB0ZfZWGfM1MkgqQNAmWG7x/e2f8VKgL2XKADc1VNOoTVaof0hseBtZj6nt+Vtw2jEmdtDrUrGgCNW9hopdN9SQ/Yh0fPiATwBJ4lpiy0qZbhJDZKMwRE6YqPLJ8Y2NUlffEuSMwFLx65AMFD9IKV1Z8THmSuZf6naKIJFAAJ54JuFYNqoB9fLctI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(8936002)(316002)(66556008)(66946007)(66476007)(8676002)(31696002)(36756003)(2906002)(86362001)(31686004)(508600001)(38100700002)(26005)(82960400001)(6512007)(966005)(6506007)(2616005)(53546011)(83380400001)(6666004)(186003)(6486002)(5660300002)(168613001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RzcvMFFXWFJJaUU3bUlpVlRrWDhGT2laMmE5MkRkc0dHY2ZRNkhuekl2eGZ5?=
 =?utf-8?B?OXM4eW1ycEVGbWU0MFBrQzEvVXFsM1NrYWtkS2hlU3M3VGlpRUZJazAzM2FB?=
 =?utf-8?B?RTMwSE1wU3VmNlcrYmtaMlA0OGlpaHZFME1jd2dvZ3crSXNkdUIydlRYTDlk?=
 =?utf-8?B?azAyTnJqV01oRzBVdWMzSUQwbExNYms5SGRvNHBMb1ppRVBjTWJwK3ZhQ3p3?=
 =?utf-8?B?WkJBZXZFK0Vuc2tRTE5CVnhlUDNBSThKMGFDWTVJcG5Scmk2VlVPR2FjNDdj?=
 =?utf-8?B?L0NXY013UU1sTURiSFlOdjJUY3JDSXdTZjladVp2YldDK2hzR28xY0tQclJ3?=
 =?utf-8?B?T0w1OUp4WHQ0bk9jOTR5VU5lQ0JWL0p5ekdyS25UOE00NmduaUw4ZXhxdGtu?=
 =?utf-8?B?UXl1aXh6dytYdkpBeXZQZ1h2WlgzWTkrSzl0YTZkOTRLNnpZM0Yyc1ZBOWVM?=
 =?utf-8?B?dDNnRk1Na3F3VUNEL2RjekUra0hTUkJiZUhtdlhBVFlmZGJHMDNDTEtlaTNC?=
 =?utf-8?B?TTBXOStMNzFMdkNTSW1RZ2diOXdjWndKeXJFNHRZRWlJZUsxMTZERUpaV3px?=
 =?utf-8?B?anArWnhDS1VSUWFoSWNpeWNYRWdlaDI4dTU1b0Y3dzBBaFptN0F4dGRnUS9C?=
 =?utf-8?B?MkcrMHA5SnVkSnlWK1pFc2pOY0czcVZuUlpRcVdTS3FUd2g0b1NWM0dYazhP?=
 =?utf-8?B?WkJqMzYvY24wemJOU0JyZ29KUGZWbzd2WUd0SmZNdDhWdzRIYjZ1aW1HSlF5?=
 =?utf-8?B?bytaU3VTRStTZE9PVkx0M2RaTGdmOVQyS2k5TmdOT2IwVUNUVy9sbEtHNzR4?=
 =?utf-8?B?TE53SGIrYWZlYWk5QXZpdk9uNTNPTVpqUTdqYW1UcSs5U0ZSZVVZNkJoNHZ1?=
 =?utf-8?B?aXJnemNzd2lnWm1UTnl2M1g0NHp5TnZrK1d5SjNhR2d3SGhEWVV1QllpWEsr?=
 =?utf-8?B?eUFQWWdYekVWKzgrc0hhMWNIQ3VBTGE3czBCMU1UN3l4SFVNYkJRTlNncmRJ?=
 =?utf-8?B?VklVSy9iQkd1RlRrWDRIN084RGJmRUFWYTNkUlFYTnhHSitQY2l0ZFR2bXQx?=
 =?utf-8?B?ZktxYzVReW1NS0hqVUdZaFZjNFBHdktiSTRGV3pUVWlIY09BMlgyRlVjSW83?=
 =?utf-8?B?My8xRnFXUlUzZGR0Yy8rbldPejlDVE9oRjRZaXVIRUN4dm1SNUhZdlRqS0Fs?=
 =?utf-8?B?dDFKMHFmSVFySDZ0S1VjVmZ5emN6aytqWXNjajZwVEl1N210Y3JoK1Y1VzR0?=
 =?utf-8?B?SGdITlZqYi9sVm5IMlQ3bjVVSTg3WXFlN1dObDV2SW54Z2hZa013b1ZpdFh0?=
 =?utf-8?B?TldrL0g2U2tvZXZJRVhEZGkyaUxjZ3BjZDV6SWpuTGN3Q1ExOW5VRjFKTEgw?=
 =?utf-8?B?MVNkZEhMV1RSMUZSSFIxM0lrbW44a0w1YVNaN0M5TS9VajNTMk5NUHRUWCtX?=
 =?utf-8?B?NUR4Y0hNYkxVbXBIcSsrcURON3BWM1pLVFZ5emxQSmdFRytvQ0d1eThHZkli?=
 =?utf-8?B?ZjNUTWpyL2VveUFKanB5KzlqN0xBYlVVTGZFVXRtaHFXTitnSVhTM3pUOXNv?=
 =?utf-8?B?eW83NmlOWXozYnZsSE5nemdya0I0d0JkZUQ1bEgrMU1kRmNLazdxWTM5bUZH?=
 =?utf-8?B?OUs2Wlc4RW1oK25RZHQzU01NbjNQb2dGdkJFK3o0NVlvMUpIV2MyT2I4OS9C?=
 =?utf-8?B?YTNqWkpOTEI1UW90M2hLdnpSQXVsZU40QWVyWE05QTlpU1J3WXJVTWVuRjBJ?=
 =?utf-8?B?bGVPeHF1ZE9SNHk2bkVUZzQzQVVoRk41MWNnRW1qRGYxeW15ajdGcDREYlFO?=
 =?utf-8?B?aXI5SFN3T2swUnFRN2xMejRyVDhJZTl0S0ZjSjE5WUtZNlNFdWlKYlBwTm1E?=
 =?utf-8?B?WG83UDY2RWVUc2NQbDhyd01MR2svMG01SDJZb0xDWG9wcXdzRGVUYUdqdURi?=
 =?utf-8?B?alkyVis4VTh3d3Z0b0VkWjlIc0JJTFc0UUVUWWdUSEJKMG1WZ0JhYW11QmdM?=
 =?utf-8?B?R2VSN25WeFJucTcwVXBOUlU4TnVrZG9UY0R2NVIxLy9GQnozdTNaVnRFQ2Zm?=
 =?utf-8?B?TTErM2tMd3F6NlZBV0JUK3Z6M3FOaFd4d2ZYTDNxOXRRRURsYkN0RGN6VHpQ?=
 =?utf-8?B?M2hDL25zNEF4c05wWFNMdjNYRGFOR0RCcnprWmdQZUR4Z2hMdlRkbzROZkdL?=
 =?utf-8?B?K0ZPbFNIdS9jVS9YUFZzVG9tenFXNlg5VjkwcXlYbkZoam9JeFBGZ3NoVm0r?=
 =?utf-8?B?TGw0RnpzcTZ3Y0YzcUNsTXdFQjdPZG9LRGpibkx2OFNrTEtQTENLeCtGdS83?=
 =?utf-8?B?NnNFM2k5bnVnREZYMjNUWFRVY1FHNHdEZ2hoSzQ4ajdYSS9GTWVwcldLTHJ4?=
 =?utf-8?Q?DS1usJPJSWsVYfwo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f70a5db-09fd-4bad-1ec8-08da3ffe6359
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2022 16:31:44.9093 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HFwXM/SA3d22CrWOHblxCOSxRDv2rCSkbYzSJ+5lTcPWn/DQYJb8m+9Rqqmz3f1cO1uyTX8kvpsoL3C2b49GdoHMzWj1bGehDtS7Pt16TPY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3774
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] ice: disable stripping in default
 VSI ctx
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



On 5/27/2022 4:51 AM, Marcin Szycik wrote:

This fixes commit doesn't exist in net, so it shouldn't be targeting 
net. It looks like the patch this is fixing is still on Intel Wired LAN 
[1]. Perhaps it would be better to squash it with that patch as a v2?

> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> 
> In case when driver is in eswitch mode, having VLAN stripping enabled
> causes failure in communication. All VLAN configuration commands are
> blocked, because of that VF driver can't disable VLAN stripping at
> initialization. It leads to the situation when VLAN stripping on VF VSI
> is on, but in kernel it is off.
> 
> To prevent this, set VLAN stripping to disabled in VSI initialization.
> It doesn't break other usecases, because it is set according to kernel
> settings.
> 
> Fixes: f09901aa554a ("ice: remove VLAN representor specific ops")
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>

[1] 
https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20220425062756.14987-3-michal.swiatkowski@linux.intel.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
