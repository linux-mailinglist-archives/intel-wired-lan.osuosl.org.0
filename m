Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EA1EE64BF62
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Dec 2022 23:34:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1C574417FB;
	Tue, 13 Dec 2022 22:34:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1C574417FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670970856;
	bh=zphoCCCpiqjxUOQaQSu2BCF1iUe2wzhjph/DD+gOCl8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0K/ADKeRIP5ypYoIuMKwE85VqOfWKYyCv6R2QlW69IIsI5vABjQEsHTSvc68C9TOK
	 51imZfBCjbt2p4jl6zer0IAmlgno17eceqd0uqhjYY9E350xSZXTJh4COE1IurYF8p
	 CcC94nKO/TnVS2Pqy9KtiM4ofdK2IUp2TihDYi6s5P2E2f0QkpoINnIPDz6JpCvYlW
	 NQmIVRd/lorIxeFu+op4H0pvIfaLoR7LI5eeMnOt9zKXGo0zc6/xy863nuBqf05zLw
	 MDkWycQe5MYR6bWAg0UtGh4uVV8B1S6Zjd+H1NOuPxW/rNIYtKVYGnLtSRfdTSujy/
	 4F3+HM17+QZQg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L4m-oW9KJVFX; Tue, 13 Dec 2022 22:34:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C57B5417A0;
	Tue, 13 Dec 2022 22:34:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C57B5417A0
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BD7A91BF405
 for <intel-wired-lan@osuosl.org>; Tue, 13 Dec 2022 22:34:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A0DAD60ACD
 for <intel-wired-lan@osuosl.org>; Tue, 13 Dec 2022 22:34:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A0DAD60ACD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pv0LLJLinNSS for <intel-wired-lan@osuosl.org>;
 Tue, 13 Dec 2022 22:34:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47D3F60AA7
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 47D3F60AA7
 for <intel-wired-lan@osuosl.org>; Tue, 13 Dec 2022 22:34:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="305892244"
X-IronPort-AV: E=Sophos;i="5.96,242,1665471600"; d="scan'208";a="305892244"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 14:34:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="755654218"
X-IronPort-AV: E=Sophos;i="5.96,242,1665471600"; d="scan'208";a="755654218"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 13 Dec 2022 14:34:06 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 13 Dec 2022 14:34:06 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 13 Dec 2022 14:34:05 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 13 Dec 2022 14:34:05 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 13 Dec 2022 14:34:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YlDLmwxK4tTqRnAnNQawb2K+AyYtyyOaeI5mzPVQPfAjhiq7HIywDO26UCKGdre4DeglRPhe7UeamGzhQDNJAgHz/uwvGFj2s/npFHhCa0ufxm8sfLD0P1637+/w1ul7mVyTnEGuWHhCcONtiOdwrq5BuBRmA/tLH71g/H4YCTipzWqYI474AP6JKixdwJnR+4jI1AQ7yEFFJwYiArTnT4mWX54lGSomsAJoVyNxYkRinJ//odSVGUP4vQKBjgY05ciJx2RPz6uDZtePp0A0hCF4sL538N0Hi/KIOrybTmNdf1ZIf9RYkcZ4Q7T6mJeJfvJ8fohejg68FNG+teCZOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wxFLirioXtxoX5auCVAdtbiNOYipXXikMcs75+JTkHE=;
 b=XSjpC/Lpi+0BaLUmKZV7c1y663OvBQSvoEyjQai/drvGAo/d9nXYz1SIqYDOkkflGWDEyjIeJpK/wemHeBNQkxuPw+It493QINCo++HXO8G1UnYnlvMpnmuLmUqxfJ7XJX+zLAmWSU1kYChRC5U0mdX7/BDaZRwST175gt7+15zNbt9VCTfkjcScL14kW6amI+mP5RamfOymqHcAZcQ0/3JkXSBdrc/r31T1utrAKbjV2RIZ+w1UG8+uebTShg36PhGs35VM2qNwmFzdHZKddavd1L2IlQTbXBcjTRYk+DUJVmYjJsX6oDbqoMcSpz+5sXvMGzoixKuRntwu7B0cow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DS7PR11MB7691.namprd11.prod.outlook.com (2603:10b6:8:e4::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Tue, 13 Dec
 2022 22:34:04 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5%5]) with mapi id 15.20.5880.019; Tue, 13 Dec 2022
 22:34:03 +0000
Message-ID: <93a298b3-1d3e-be69-ef35-217e3e767a55@intel.com>
Date: Tue, 13 Dec 2022 14:33:57 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Content-Language: en-US
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 <intel-wired-lan@osuosl.org>, <vinicius.gomes@intel.com>
References: <20221212023706.13384-1-muhammad.husaini.zulkifli@intel.com>
 <20221212023706.13384-2-muhammad.husaini.zulkifli@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20221212023706.13384-2-muhammad.husaini.zulkifli@intel.com>
X-ClientProxiedBy: SJ0PR03CA0174.namprd03.prod.outlook.com
 (2603:10b6:a03:338::29) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|DS7PR11MB7691:EE_
X-MS-Office365-Filtering-Correlation-Id: 88cbbd7b-7af9-4483-a88d-08dadd5a231c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: s/c+rt3OZ9rkj49coKzLWVrYNuUK75VZM+3RnE4Y8uPekZaYrpJ7DGeIy+SYf9387bTrGs2S4YKgkIhLnZN1dx8JHB5UoLyaVILBLupAEDF6rgeVMhcGLenLvARTCWPY41eWV7xn6pLjcFIYZ4oMWUnWg5lBFiMl974sR485agEWrDYeayfAiHyPJEGGjtp23j4XLpqynO9r4JG8ox7UD16kEbU+LObEEgxhmXXmqV1KPPal8G8BJaYqZG6rH6w8gtoCFOf147QsL3xIzUyDaS3A/PJl+gdRnND+FQcqL3tzSWbmCRyoxM76RmThbdAIpGADHHwnRlAK/55XKsaP4bpQLNZNVy2laDs3K3jy8NQ7IJUSMmPeekv9w+npphuz4oKwlnk2AvWi8aG4H/3DXr035u5C3AlR864eKj2xQ/c+V9SUIqFMlGXTLit9rNUC0TE5f+JuqGEuGaVaYekVxwbzGSlirp+fJJmvEvSzgTyu0//QuHP4ZKp3nLU3ZLBHYEtjYERVT6HPJJ0pCpayvNKZ0TZqG3hXRXMMJBInfTJPBZ1p+Xvv4p4BEsqfjepKc+VEGvXYAJM6H17UFdD1o99QN/dUmiw4UWlRUR701PuDefQtazvRjW+EOJ+P/Vc85TE+oxPV0HbVuxL64daBULRWXujIriZ3eSt6sBguCGiLbouEBL5T6dEfj4dnW5xu0m9UbRi7cTlpbGWiKevA7LYLPOPme8KtVILU5eC3GGc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(396003)(39860400002)(136003)(366004)(346002)(451199015)(36756003)(8936002)(2906002)(316002)(2616005)(186003)(6636002)(82960400001)(38100700002)(83380400001)(26005)(6506007)(478600001)(6486002)(31696002)(86362001)(53546011)(6512007)(6666004)(41300700001)(8676002)(66946007)(66476007)(66556008)(31686004)(4326008)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YkxsVGlHZ3VBZjB6ZkdJOS9PdDNua2w0RlVNQy9iYnZZSDVwVU4ralBBdStF?=
 =?utf-8?B?NW02cU1SeHdKL1NpK2lEdEJoQ1grY05uMTdKL3haZXJmR09qbWdtWktxUWZy?=
 =?utf-8?B?VElZdDBzcXJ1YkZ5UzZyc3pGQzBxYk9pVVZMWTZsWWVYRncwYlZLaVo3M0Rr?=
 =?utf-8?B?VVNxNVFkVWp2bERpeGEyWnVlbWZrWGNyRk9qRWRYTzYxeHV4VUVraHlSN0tp?=
 =?utf-8?B?NGdQTTVxditiTCtwTlUvOHVzZEl5UlNPU3ZHZjVFMjhjT1lrQ1FCWnpHazZD?=
 =?utf-8?B?MHhPK2g3eUcwaFZCTTRuYVBPVHlURTg3N3RJWldzYS9HRkwrRWpkVVBLQVJa?=
 =?utf-8?B?blpDOEFDNEQ5MFUrK01UZ3NPOEtnLzRkdGU4OWtwVHY5TFRxb09LNlhUcnBK?=
 =?utf-8?B?bHQzWEpvYkRsak9XajRqM1RhVzUzYXUzeDNVektYbEV4NDdvbi9Lc2ZpdzJQ?=
 =?utf-8?B?VVIwNlFjU3RVWmttN3FST1FoQUowRzlUREVwV0lERTBhRVNZdWpuNjRId29P?=
 =?utf-8?B?UnNkTnNhd0FVYmZkMStodlRMb0tJd01SRUhBcU54ZHNaMUk4cEZxMFlhcVNU?=
 =?utf-8?B?NE1sQUVySVJvQlk3TlFtaGdmdWJodHNLNFA2YkNMZ2FLTGN5Ny96NFlxTmRR?=
 =?utf-8?B?cGFBWjZ6elQ3dVE4UEYzRWt1dWxhZlFDMjJkejJwOXZlRFlUSGoxTGpTY08y?=
 =?utf-8?B?OVRVSk5ncld1YTZoWVdsWU9PTnBHcjBRRWtNTHcwYkJmaXB4bDRZMmI5d1ps?=
 =?utf-8?B?a2Y1c2FHSDNrZjlNZ2pBVnlNUk41T3M4azU1NnRjRjBiZ2Mxa05RSDQxdml2?=
 =?utf-8?B?NEdJczhQOE9PM0hhazY1SlB3b1VucUpvNkxRMmJDVlF5Rit6UjdQTXJhdDdu?=
 =?utf-8?B?bEdhZEc5dWFGK0RqL1hjd0R3eFlKbVBiOVg5UllOWWtRN0g4WldsMDB5Nko1?=
 =?utf-8?B?NmorWFkzaTVuOXB3bTJFTDlCSWIrYlM4RUFJRnhkbldvZ08rSTJBYVZkb2xN?=
 =?utf-8?B?TDk0WGZZMXhGR1QzcGY0b2RnRlE4T0M2Nk1XZVNDV0JkbW96SjNXOWVzWmFy?=
 =?utf-8?B?NHJCemhGdGY0MlZ5YU8wRHRiSDBoUU51YXpwWVMzT05naUpMbkVqN1N0bWQ4?=
 =?utf-8?B?eVhyWTRFVnhoemVhWlVxRHpWSDkwMkh1bkhIMlRDV1djTzVNMitRTU5SYnh1?=
 =?utf-8?B?djkzdUk2K2luYW1IVEVReDQ1Rk9VQjc3RTBOQXVYbFpBOW84VXpSQWxJYjFR?=
 =?utf-8?B?NE9DRHlPU2FaYUFRL1hVK3NtQXo2d1ArTy9HbkRzUzczblMzOU1iYmFkdXJ2?=
 =?utf-8?B?WEZnVEphcVp6ZWJhMGkzV3E4a1pKQlJoaUQwRWtaTXVzdWoyWU55ZTJkejdj?=
 =?utf-8?B?d3J0ekwwdW9JNS8yakM4YWt1VkIwR3JvQ1VVSGJzNlArU0xtVEFVcWhFeU9H?=
 =?utf-8?B?WjFNcksydTBBcDVjbkpNblVaNnF2VmZDZ05sc1BrS01YT1Z6dFZhUW9FOU5Y?=
 =?utf-8?B?VGE1VjYxN3ZTOUk4ZzJodUlpQmwzWGh1dnJHUUR0QXVqV011eGlTamdpdDNv?=
 =?utf-8?B?S0wycVhEaWhYUFhLWlkwSnlhLzlLSy9uOW1zUlhaZkdOVVArQXF0cUhZL0hJ?=
 =?utf-8?B?cjhFUDdhajc4a2xyNy9CNTNsKzBUcGh0U1Mxb05GSS9DY003Q0lScE5MRE5U?=
 =?utf-8?B?ek1xRlBxQmJ5bHJlRUtPZzBvb0ZhODV0UzVlVDdjNWVkcGRiSHRPSW1PVi9H?=
 =?utf-8?B?MGJqK2M1NHFNMC9nQ1RTYUxWK0pLdllhY2Q1NzEwZzRsK1pwWFB0V0pRMkNv?=
 =?utf-8?B?RFNTRTdkUDBRVTAvSVRZSWlxWHFaSXlxZU12WTFuNzdDKzNFdjhsNlh5WXNP?=
 =?utf-8?B?RUdlU1M5c08wNXRGa2JTbUxBVFF0T2J6L3BxQ0krRnU0OWk3anNNK0hiYkNh?=
 =?utf-8?B?SlRKRGljUGJyRFNiaFBXOE9RM3Fxb3VlQit2bnhObnhnNFVkOG1TSzlZVWM0?=
 =?utf-8?B?dG1aVTV5RjY5Ly9jazNMOVMrOUhESE9Bc29XdUs4T2VVQkZ5Qjg2NmNJTzNm?=
 =?utf-8?B?U25nMG90ZWoxMDh3eDJOQURSdzAva1ArRmF1cWdKaGM5Q0lqNW1GaGQ4SlJC?=
 =?utf-8?B?ZHo1ejdOR0JEK09TbWd5dzlTSzVUOTZxRFdsQ3dYNmNNL0o2QmdKTjdJU2cr?=
 =?utf-8?B?clE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 88cbbd7b-7af9-4483-a88d-08dadd5a231c
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Dec 2022 22:34:03.5659 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c9Eg3daTpTx6YtBgee9m5ZeQ/Ki4aloqziCVaAvaerGnBIETjAhP6Xb9X82G9VLt5miyKWuYd570vBzCEmWhGHam15HjTAaIAtD2oibhoMo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7691
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670970848; x=1702506848;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=A/mpnLqYM6ik4oNm0/YyJu6kBXGhdLd+cv5B8dcFUyk=;
 b=V1tSiiRpGyZZwVoJmHIIXDeEkUPqSgG29DPbAkvkbU71lORrX87YLT4z
 wBblltNukzkCH/IhtX10Ui+OLZbfT1yv0bX9PAEPhXsTufBuGXGhBpozk
 Lebeo2F2rBs+8NJJAX4/1Ei3GWYZyTLVZhtx6KgCfLxgwoRW0qAx6Jvvl
 BKqXbO7NpYvGIP0Gpj9+UpY2soaItkPwlSpSRQ/KlnpKQK2NwFa64xvVe
 isOQPwCnqAwGNu2PRQywoo+kb/pIRXJGzzCgI1B6IIxJHptkoVHLUL23K
 PvnuTUmzg88YzkgLZj8roB8M9iZ8a3k4u23XP7ktb0/15ZpH+vmikvFw0
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=V1tSiiRp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 1/3] igc: remove I226 Qbv
 BaseTime restriction
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
Cc: tee.min.tan@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 12/11/2022 6:37 PM, Muhammad Husaini Zulkifli wrote:
> Remove the Qbv BaseTime restriction for I226 so that the BaseTime can be
> scheduled to the future time. A new register bit of Tx Qav Control
> (Bit-7: FutScdDis) was introduced to allow I226 scheduling future time as
> Qbv BaseTime and not having the Tx hang timeout issue.
> 
> Besides, according to datasheet section 7.5.2.9.3.3, FutScdDis bit has to
> be configured first before the cycle time and base time.
> 
> Indeed the FutScdDis bit is only active on re-configuration, thus we have
> to set the BASET_L to zero and then only set it to the desired value.
> 
> Please also note that the Qbv configuration flow is moved around based on
> the Qbv programming guideline that is documented in the latest datasheet.
> 
> Co-Developed-by: Tan Tee Min <tee.min.tan@linux.intel.com>

nit: WARNING: 'Co-developed-by:' is the preferred signature form

> Signed-off-by: Tan Tee Min <tee.min.tan@linux.intel.com>
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
