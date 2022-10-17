Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE4160199D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Oct 2022 22:25:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AAB8741802;
	Mon, 17 Oct 2022 20:25:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AAB8741802
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666038356;
	bh=hxwdGxB6Ka46TqBXTVjN48pozJTFWmbWqPX9kM5x8zM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Z/5hn3y38rqF/dP6bNIHP18DiW+5XlUknKj/FwnT8mPuh4mASVBZptZYJRoOes8Aq
	 aRpg9mVBxmDYWY06pm3VhFvaOXtbLrSuOIVgitgv+i9lQKE18sEEZogSJD+jrAefjm
	 WJoGcbzqwMeo55lyQ46RLsD6ym9/f77udgkI6E8/eOiIxtqcX9Req9fcdoT19sSsrR
	 70f5YISAPKsVds+n8YWmNio48mCOgWk2jVJhrGTyYi+QsrimUEL0jgh9cVX7AjtLh1
	 ic4MP20hQKEjKu63VYPgPr9MMlGPElgC6i2OV2NcsbQeuR3uz9apWyRpsszj6ZYpS4
	 ntRpo7jIfqPsg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8RThUOmHrbZc; Mon, 17 Oct 2022 20:25:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B06841805;
	Mon, 17 Oct 2022 20:25:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B06841805
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 798EF1BF313
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Oct 2022 20:25:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 508EA41805
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Oct 2022 20:25:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 508EA41805
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id otq02-8M0O2j for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Oct 2022 20:25:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF8C841802
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CF8C841802
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Oct 2022 20:25:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="303524415"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="303524415"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 13:25:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="628435238"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="628435238"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 17 Oct 2022 13:25:47 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 17 Oct 2022 13:25:47 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 17 Oct 2022 13:25:47 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 17 Oct 2022 13:25:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VPDepPFnxeJk317Nx2l/Y0ZK/R9RaVBfjc8uBqE4etAAQB7khz488v0JvMwJiSrX3i0k6vMIMVt41f5/GnvnV2QdTjaF5FNlRF6BM8TWsssjCwn1arnfgTKJD+lYvyC0ITPHL5eHitd34EWtaDbtCKeWAzUtbpaWly3Kk6Eivl4sYH2fQ+ZJM6c/BjRMTENLGm5VDFWsEOo2f+S0Qz05D5pfGEe7wfuuLrRIH7Q0E3NnB9s5zf6eBw0m/88niB67DhWAkuZezUtPjEVFt0atu0OVNuZGZast2A23Q4LeEm2Y2cveNzO96WtOW47qS5LV9iitMEkYRIIEmsW5joLfWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KstE/nUljVxfsfXk8EBpvmE0Yjiz5u6rtp2mahZCHKg=;
 b=Bl2Xesc0/+R0snzyXYnGukSjjFjND135T4SBI6fS5SNbczAllLNiAU+gwrdOApbomPiDxTdGJW7JvZPMN2pRxJWj0OFNF6dY5Vw2KiR6JwIx5i328UYRJiSpVqFZLvKmcGsaFD9QM6IfVg2IIOI3wUOn30FGKfOpwsPfZzNLyOuU+Jn6dwweT85f6xUBMzEyMOonhotOXTJ7Q1E0EXQobVt0UiCVJq2jvQQiCNWRDMZILyx0D6JajY210RNdbuHEiddf5XaThtxRmma3qpmdTta2u0jQq/WED8ie9xQF2NzyZjEcBKb5NkvetNMh91gXyhaLv7VjcLvsV0AlfQU8zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5095.namprd11.prod.outlook.com (2603:10b6:510:3b::14)
 by PH7PR11MB6330.namprd11.prod.outlook.com (2603:10b6:510:1fe::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.29; Mon, 17 Oct
 2022 20:25:45 +0000
Received: from PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::19f4:9008:905b:3b8]) by PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::19f4:9008:905b:3b8%8]) with mapi id 15.20.5723.033; Mon, 17 Oct 2022
 20:25:45 +0000
Message-ID: <e1d1ed2b-76d6-9f17-5256-6246a3f8e012@intel.com>
Date: Mon, 17 Oct 2022 13:25:39 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.13.1
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>, Joe Damato <jdamato@fastly.com>
References: <1665701671-6353-1-git-send-email-jdamato@fastly.com>
 <20221017124555.5d79d3f7@kernel.org>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20221017124555.5d79d3f7@kernel.org>
X-ClientProxiedBy: SJ0PR03CA0299.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::34) To PH0PR11MB5095.namprd11.prod.outlook.com
 (2603:10b6:510:3b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5095:EE_|PH7PR11MB6330:EE_
X-MS-Office365-Filtering-Correlation-Id: 46373a53-50db-487a-9aae-08dab07dc504
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Xl/J8qReOXCF6OaupcobN2oFMDCGpoMpKrxBHJgew6VWMdJ0lPESqDziaN5WieURl+js7qgOBFelN1Tu2H7jnC+FlOoy6X9VpD60tPuMeTVUC5oADV2xcU317WeFSXy7TaiA+UTcNFNWP+KWyQTv9SsKWFdqngIzl8ugOwpqJzM3r6Up8re2dhPo8NIxJUWGXn72prqHduS9IPvTOOGdJ5j7eONWEse4M7SPK49utmAybGhYQHMMqfXMVddRs71euhYwjAx0WY+ijBA1O8AdV8itdu7UqGJk4N9IyUPk7gL8Pls+DbcQwBug0SXjF7CbyDViJffdoJaQ3uWGxl9WbC4avmwvRSZDbuYL10T8yBVOXgJbK3YO1VZRy2WWdaq5QPf2S/spsyhYHiucwtGYReRWzwDSIYa8PdtoTmB4817J2dt/JbG3NArLy79brf/0QOckPqyjQ1Lu88+PtWRAEGdRH7RZPbbUg9tnrb50PUq/L9lAtGKUP9ZtHhwpAkuCuC5awda1YnxixF05FAxPxROPz4w5P3CQwjhbV6krZvqNtBG5cmiEEyrb8T36gUO5zv6SWCdLJq6rTFPnDuGOt1yBLH+xMckJ9NUJlpQtBjHgmpXuypUs8ggpW1NjqeA4/Xrf1yUxBJU+/6fQ0BmqexR3nN6jFZQrnPLFeOQAtSlT82oI0Qtwo5DVq4Q9tC3OuPwNA5rRJsC6tjGR8dTAi1K6l9myX/3ZbtpbtL+ztmEi6zUEffmK3yXOFBwa6LhYnbRvWXcodsPwtzuDAvbd25M84fqq7B6e4isc5laX678=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5095.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(376002)(346002)(136003)(39860400002)(451199015)(31686004)(83380400001)(2906002)(2616005)(186003)(36756003)(41300700001)(4326008)(8676002)(6506007)(26005)(82960400001)(53546011)(6512007)(86362001)(31696002)(316002)(38100700002)(8936002)(66476007)(66556008)(5660300002)(66946007)(110136005)(6666004)(107886003)(6486002)(478600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SkU3MktQRUljVzg5WUlrd3U5MzN6c2xhakd4TVFGcXNGWXREaC8rMHJ4Qkx3?=
 =?utf-8?B?K2c4NkxiRTFoNm5ROFJtaVFYWDZadVFVTXU3QVF4SlpvcUhFTnl1MjJtbUFo?=
 =?utf-8?B?Zmp6V3ljVFR2UVpxZWFTVjluKzJGRXNtaXRIYjJoQzh3djdzb3UxaTNXQVpQ?=
 =?utf-8?B?bXNZb2FUdHhUZmsvNU5lQWI0UkFQSm5UdWdBNis5cHBTcVAybWdrZzZFWnd1?=
 =?utf-8?B?YVV4QWRKS3IybHlMRlR1V0NSb1BCUWhGOUgvakZzT3BGZDJndW8xeVp6QzBO?=
 =?utf-8?B?SGVRZ0l6dWZ2KzhQdmtXMEVJVkVwYUt4V3pqK1QyRTZHRHV6Z29RNWFtTGh3?=
 =?utf-8?B?NGt0MW9pMTFIckY0VmJtWW53TDh3VndEelVkWnI3Z2tsZEIxWk15emdWNjZH?=
 =?utf-8?B?eUZQVTZHL1FUSGJBVkRmeCt2bWFoY2g1cUk5dUpZS0o4UGlSY0xWTWl3OW41?=
 =?utf-8?B?ZEpuZktIeHRGTFNHRGo5clphazBTbkRQcFk5bVRVc2Y4ODNyd04zQ2NEZWxK?=
 =?utf-8?B?RDhscXB4ZGJHeG5kcW9tQS8rQ0U4eHBJbGRpaXhWbkZKSlFxVlBPNzdXV2t1?=
 =?utf-8?B?dG83Z2JKTnEvWWluM1lHN0hBVWZhUVNRdzRDR0FoNE9qS3hlUlEzaHhXL2tG?=
 =?utf-8?B?UHlZeDhNQm16QWtUSDEyTTFCZEYvVkZHdzYrT2lRNHhIRjF2OXIrdHA1VWs4?=
 =?utf-8?B?Yldhc3dNUG5tRVB0RG0yU3IrcFZnNHJ6RkRybkFEYjVlVGhtK091SkF3eWR5?=
 =?utf-8?B?UVg4QWlDZ0NUSkorQkRsc3gvMmtmeTltVmlhSldzRTUzV2VpRURVclpSdkE1?=
 =?utf-8?B?Vi9CZGhnN2Y2UXE2RktSZDRjQ0thQXh2M1M2T0Q0S29wR04rdjUrd0I2enpW?=
 =?utf-8?B?aHZwM0hib3NGemxqZGVPaktncUVDelliUEpUcXNGYWFZRWszM1lXR21tVXFH?=
 =?utf-8?B?Rm5mOU5UK3dkNmpOWFZiRkRzQk92eXVWU0UrYW41cGtzN2xXelNKYjJoNGpz?=
 =?utf-8?B?ZTNaMmpCSitaZi91N3NVZU53NWVUbXMvd1JnakJydFgyUjFhS1VuWVBRSzJv?=
 =?utf-8?B?TjBDRVZzM3FlOU5KcTJ2MUVBNERTK2pZZW9SemZob3Vwdms4bFJnbjZlUlBh?=
 =?utf-8?B?TE4ySFNtNmdGUkxnV1RoZmpNUW45cnpXTlBWNkxPVDRnVmw3QVRETTI5YmFL?=
 =?utf-8?B?dTZzNXdMMGkrYXFadXhhVE9VWE52bHhLRHBVQWw2eVJSc3RpSVpsdHFQaFNm?=
 =?utf-8?B?Ri82YmxMd2c3TTNYcXpLd0ltTnFPSWhCekRDdUhlUzF5WEUzRDhvUmRGeGJH?=
 =?utf-8?B?WlYxR2lNWXB0OWhISmdwOFZJMkUxR242bm96RStOWjBveFVrT0FMTGM4V2JD?=
 =?utf-8?B?RVBuVW91UVNXV2V3djlkT2JEczR6MkdZaDh6Q25CbDZwTktZR0RyQ3U5L2xX?=
 =?utf-8?B?SlJZbURubXhSK1Y2NnQ2MnpuN0FEbCtyN1ZFbU8vdVMwTmZCSERxMjd0OG5k?=
 =?utf-8?B?cDMvb1FXdlBHaEc1YlJsNy84QjkzZnNXVzdnVnlVaXU1b2FJWUN0Ykpta2c1?=
 =?utf-8?B?dkMyMmhyczF0QlhnRkVqTHZwVXplaG44Yktmb29iZWozOVoxaVh2bkpDU3g4?=
 =?utf-8?B?eUR5NklEdE9WWUp6T0dRZXgrWGFWTVd5K0d3VHdxd3dQRzVDdmtDZ2d1TE9X?=
 =?utf-8?B?TGplemk0bnI3QjdvcDQ5a1lDOUh3OEVWTlN4U0cxeUZvRkhoRkZWa0IrbjQy?=
 =?utf-8?B?Q0xSZjJ4MXFGbjZwSXpvSzNWS29UaGFzcVJNdXlERXZlS0x3VzhTVEpsQXV2?=
 =?utf-8?B?MExXVGJZRkhJUVpnVi9SWk5kZlRWb0VEYitET3NTTENheXdPY0s5WmRkU25Z?=
 =?utf-8?B?cnA5bSttbmZIWjhZeXhRMjJ4WVdMejYwNlR3YzVvblM2cHNuYVpWbTJtSzlj?=
 =?utf-8?B?djBOaEMyRUZQVVBuTEVWanpKSjloM3lqRE9ja1QzbFE4U1BJS0JyOXczdTh3?=
 =?utf-8?B?d2NDVU05RWxuLzNmK2V6ZVh0b0Z4Q3RGQm41SnEyNlQ2UUtTSFlGV2pUQzlF?=
 =?utf-8?B?QWc2N2hYcmd2TXFsWTg3STNSZ3AxU09ST3kxQkNTNEFOVVBHT2VtaWhHbVZo?=
 =?utf-8?B?YXo5NjdkNEh3YUhsSng5WG1wY2lOMXpLdHRINVdrbVVHa2JuWTkybmNwRGlV?=
 =?utf-8?B?RUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 46373a53-50db-487a-9aae-08dab07dc504
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5095.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2022 20:25:45.0566 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zA5Amak6nt3WF1IwYQUJm5gSAcYSoH2V+tCgQNZNsvgH7KvyFkTKsTEtMnnQ+RwkofMF6uFH3PUgb28AOnzCdAhM+/tSU+BhKSff1o1enjE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6330
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666038348; x=1697574348;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PFdH8uunxtStx4u+jOykmcmHJqdpIU9J1idIuaP6xV0=;
 b=LLm4zrTZktbqRK2xL5NBuGehI8tn0ibkWFjCN98TJMy5tIgUuzc371ik
 JTD65mMG5DZ1eXXQM8lJwXOUopKpzDUGH4Bciw410UW/L+ryHy/1HrgwO
 cyEcDDQpxitL0AONgDNY1QWdJRmALLtfDkEbI8fn6EmjVrFUThzkIOrm3
 zIUOc3W6Vug6iyeH5tvBHNUXDWMtLHf5mWU0W0sAS5ForMzLGmFbTae0m
 sZobJiPhc71JzUwN3zyZaw2L62s1PClxZvMkMo6Sv5B0jsOt7shSOLvtH
 YpqRX/6MX3xQLgvZgNHyXMMi8mqL/YJ0+8I+nQqE4K2JJXtDaqszAvwWY
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LLm4zrTZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-queue bugfix RFC] i40e: Clear
 IFF_RXFH_CONFIGURED when RSS is reset
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/17/2022 12:45 PM, Jakub Kicinski wrote:
> On Thu, 13 Oct 2022 15:54:31 -0700 Joe Damato wrote:
>> Before this change, reconfiguring the queue count using ethtool doesn't
>> always work, even for queue counts that were previously accepted because
>> the IFF_RXFH_CONFIGURED bit was not cleared when the flow indirection hash
>> is cleared by the driver.
> 
> It's not cleared but when was it set? Could you describe the flow that
> gets us to this set a bit more?
> 
> Normally clearing the IFF_RXFH_CONFIGURED in the driver is _only_
> acceptable on error recovery paths, and should come with a "this should
> never happen" warning.
> 

Correct. The whole point of IFF_RXFH_CONFIGURED is to be able for the
driver to know whether or not the current config was the default or a
user specified value. If this flag is set, we should not be changing the
config except in exceptional circumstances.

>> For example:
>>
>> $ sudo ethtool -x eth0
>> RX flow hash indirection table for eth0 with 34 RX ring(s):
>>     0:      0     1     2     3     4     5     6     7
>>     8:      8     9    10    11    12    13    14    15
>>    16:     16    17    18    19    20    21    22    23
>>    24:     24    25    26    27    28    29    30    31
>>    32:     32    33     0     1     2     3     4     5
>> [...snip...]
>>
>> As you can see, the flow indirection hash distributes flows to 34 queues.
>>
>> Increasing the number of queues from 34 to 64 works, and the flow
>> indirection hash is reset automatically:
>>
>> $ sudo ethtool -L eth0 combined 64
>> $ sudo ethtool -x eth0
>> RX flow hash indirection table for eth0 with 64 RX ring(s):
>>     0:      0     1     2     3     4     5     6     7
>>     8:      8     9    10    11    12    13    14    15
>>    16:     16    17    18    19    20    21    22    23
>>    24:     24    25    26    27    28    29    30    31
>>    32:     32    33    34    35    36    37    38    39
>>    40:     40    41    42    43    44    45    46    47
>>    48:     48    49    50    51    52    53    54    55
>>    56:     56    57    58    59    60    61    62    63
> 
> This is odd, if IFF_RXFH_CONFIGURED is set driver should not
> re-initialize the indirection table. Which I believe is what
> you describe at the end of your message:
> 

Right. It seems like the driver should actually be checking this flag
somewhere else and preventing the flow where we clear the indirection
table...

We are at least in some places according to your report here, but
perhaps there is a gap....

>> But, I can increase the queue count and the flow hash is preserved:
>>
>> $ sudo ethtool -L eth0 combined 64
>> $ sudo ethtool -x eth0
>> RX flow hash indirection table for eth0 with 64 RX ring(s):
>>     0:      0     1     2     3     4     5     6     7
>>     8:      8     9    10    11    12    13    14    15
>>    16:     16    17    18    19     0     1     2     3
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
