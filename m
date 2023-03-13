Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 852996B7C6C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Mar 2023 16:51:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DE57181911;
	Mon, 13 Mar 2023 15:51:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE57181911
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678722682;
	bh=x/CRrwMM8nIIcv+wMgv7xyhxJ2Cs25ZIWBiVyPo0cNE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iGUWzM+qMgBIN8xDIvQfmCAdsGrSaAPP8qrqWfmD6kUbpXTPxXHR9iwSpuE1HzTGa
	 Vc1Qx+KqgRWqK+MexMGhD/kUoI2+pYr6SOYuU/OSjQioqv2hdIzQRsFQWazx+edWNx
	 vV378HbwWe2h6lD7SjF2nO8IfMHXENaVxxkFzIK8oFx44/Yu2tylG6yZgORFeDQJxA
	 HiG1phMAh4ZuqGJKwxjL4wE65H8sYEGDaddTOwfemWwtM4SKL9otKLO69hglg/CN35
	 tWDuuLiGFtciynUaD3HFnfbrHXC0tCYfNVIxWpxSVrCD8kFnUI4uAcOWHzCh3n1gRU
	 9yj7BDib2oheA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EBjhSXy-v4bx; Mon, 13 Mar 2023 15:51:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB2B181886;
	Mon, 13 Mar 2023 15:51:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB2B181886
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 68D301BF2C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 15:51:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3EBBE416FA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 15:51:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3EBBE416FA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F96V5S3o_sxu for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Mar 2023 15:51:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A94FB41548
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A94FB41548
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 15:51:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="402054233"
X-IronPort-AV: E=Sophos;i="5.98,257,1673942400"; d="scan'208";a="402054233"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 08:51:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="742911695"
X-IronPort-AV: E=Sophos;i="5.98,257,1673942400"; d="scan'208";a="742911695"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 13 Mar 2023 08:51:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 13 Mar 2023 08:51:12 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 13 Mar 2023 08:51:12 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 13 Mar 2023 08:51:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ztnc2bAHHeAtWx02RhdYVLaJqsurn6+yy9aEWji6LZepsHAFmEhNFLgSm+AXTwKEjR28ZkUIFBMz+hdO0TjL906+uK8noi9urTKaJu6jFQHn0sh8hm8PTK4ytbjE1su3fEtEjNOsJn/UYsuZ3fzE8OiWG5reyMCG5MH+zM1GWXftSRwe1m3qqVt+k4myeV1OOMw6tPXDK7a1nSWvkT7LtYIYUXuPP1j9mECYL3eexofjss26ZUDrff9RNC4ngME9XDLqBMhz+oXROP/78kvijA3AFDTCheAS4Lqe68rVJeFZERuDlacBgouK9fRrFGb7Fd6dbb3Lb7YXWg/uY4Zn7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B32jysZyzKcM/Nvo7YRcD4WZugOvATqle6HEYq3y5FM=;
 b=SWta6nMwxWj7koJF3dzaQ2IMPyPrMr1N/MTJfcxwb7O+p3Ny8tAlEPCSBIEaz5TpfziR3s7kNnsh7lzHP2QWQ5xrQkiOcNR3XlaeU9hfTHR9TXMNYJTTyEwV56mkAdqaH+t1KzxZfhZ27htWbQewj651vu67vGK3v9t3FWOdmhXT76Gn9tw87r2Jyok7BByoZQdfhC58Uj4C7adhwrcetQAfXOUT9wVk7W3bYcTgOUKZSp8bDAymVR0nyjqc1M4VuFVIoxwZM5+dZkwB0M0rEBdNJ/5Ar/Njy6h43F4BJKRbFg3RPHqjoOZs9PAPD0FF+wB2oYqeNAZsltE3vGe3aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by SA1PR11MB6613.namprd11.prod.outlook.com (2603:10b6:806:254::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Mon, 13 Mar
 2023 15:51:10 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::c2c3:34a1:b4cd:b162]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::c2c3:34a1:b4cd:b162%6]) with mapi id 15.20.6178.022; Mon, 13 Mar 2023
 15:51:10 +0000
Message-ID: <08422143-3253-36e1-7319-bdf4a88c4ad8@intel.com>
Date: Mon, 13 Mar 2023 08:51:08 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Junfeng Guo <junfeng.guo@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230309051011.1165676-1-junfeng.guo@intel.com>
 <20230313021720.3274870-1-junfeng.guo@intel.com>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <20230313021720.3274870-1-junfeng.guo@intel.com>
X-ClientProxiedBy: BYAPR08CA0050.namprd08.prod.outlook.com
 (2603:10b6:a03:117::27) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|SA1PR11MB6613:EE_
X-MS-Office365-Filtering-Correlation-Id: 984d6974-1a98-4689-d5ce-08db23dac427
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YzA+h1T12BOmYSa2JnkjydVr9pc4SqejxtkLZ+uNPwnvW/XjCZr1s9L2ojhkXeHEDmxi7caGsmwBBnUfgtzDw0hM8dEX8ixo7CWbCH1QJmbEwqzE1aJT9zBoIlqABWkkbn1UIxYU6bD6UDzEFKBzffHz1DRPjlo7EvGqjTH3kvEpmBJdTW8cO3ETXlwLhtcoKSG5tXN4wVRwv1T/ghdkFuYS8DQSvTd7KNPpcD2dAjeWk6AlV+e+uZ7BYYTVGahQtunE2Sc0ogCB4UMuJXgfPp7SMaCFbXvDJcH7n5BQSI6n8JlACq9nMIaHagioMb+kLCqGjhx5eQJcxVGTDi+ufDmo25SnXCee+QG0Yijb7Vt64yIMPYosQfCaOtLpYnA1BnV3iRhGYnqODL9wsAvT4tYDINWuBSVsYxAQscaBswuqweqesoFUcuk6xPJvmGsq/ZC/XzbRZLLrRqPX3yX6lVbz2z1aeiq/7s+NI1P+pc8ty2EuQXKgz62p7YOaRDFvvpYvElQehPYfBzOU2vp8eSaVnFyGQ/nK2kj2QIZaTLppA9fy2iagwZ1TKVPvGEwgRAVNXYRCnFM8ivVG4vgbF1vuRnvM8zpLt1CBfIKj7E29MNe8smt3q0tTQGS5cVaW/R2C+jJYVf+gGJWbPvU3qmcc0/ulxUmZ9wLzHtv5m82Gto+WUXNgYjpQmypvYbboh7ItyLlYqvCUiMBOQ3mRAyB1oqFpFTbhON/Vt1qwYds=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(396003)(136003)(366004)(346002)(39860400002)(451199018)(26005)(41300700001)(31686004)(82960400001)(6512007)(6506007)(8676002)(66476007)(186003)(38100700002)(8936002)(53546011)(44832011)(5660300002)(83380400001)(66556008)(66946007)(6486002)(2616005)(316002)(36756003)(2906002)(31696002)(86362001)(478600001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VitlSm1lOTJMRHhUYnpNelUvcVpadE9PSG1WZG55SVpwbnR1bEM4dVdsaG9B?=
 =?utf-8?B?NHVsdmd1d2pYYjRacC9KSkIrTEZqQjhXbzA0dXBLdUJmM05MTUZwaG1TQXoz?=
 =?utf-8?B?OXFwOUkvdFBheGNDV0x5bnZ4RHNncnk5R29rVTlHU05iWHI2aEtWVXg1MnNM?=
 =?utf-8?B?WjNjdHQ2RWRXS2xyM0txdFhJaUZyYURxSFV2dzhKRDNza1VuakdCNVdOK2Jv?=
 =?utf-8?B?ajNRR0pJS1ZCVEFzVE5ibTVISE9oR0lWZVJOZWg0UHVWMUkwb2hNdkh6c3N3?=
 =?utf-8?B?US9UN1JiQzVPa2xtbHZha2htbW1YcE5tVlFyUEc5VUJEWVozMDcyemd1TU9p?=
 =?utf-8?B?b3g5aXJvMlpoczdHTmhwRHZna1VRSlcxT0RKNUNKWXBlWHZNOGo5b0FMOC9W?=
 =?utf-8?B?cjhxVlhkYmR6NWdER3ZxU1FFWGJMeHpvekk2OWlmK0IvbFcwQWtScjY5d3NE?=
 =?utf-8?B?NzFmV1R3TW00ZjlMZ1g2OVN0T05NQjhVSVV4NUZjcnBIRnNnMkFDRkZtaGN6?=
 =?utf-8?B?cDJ4TVJESCtJd1IzVXJsdnYxaGFscFl0bDBiejA4dWIrMUh6RW9GMk5meFQ2?=
 =?utf-8?B?MC9oNUtQQ3haS2dnemJ1TzAyN2kraXpDaWppRUgvNHdHSTZRRTZ0SWpmS3h5?=
 =?utf-8?B?dkdtMW15cVBad0ZuT0pTOUpWUVdOTVBWbTN0eTVjc3RKeHJFdkRNQ0VEWWpL?=
 =?utf-8?B?WFMrbmZ2YlR4VndjcmNnTkVOOW1PaFRPejJPNWpkckVZVUZ4Y3JScmxTYXgz?=
 =?utf-8?B?eXUyY0Z4UWtwMlBaN1JmaHJPN2JOS2V5R1VZNjNBd0h5WDJJY2VOUDUvakZR?=
 =?utf-8?B?cE1qWmJhVTAvMHZBSlI0WVBxOHpVTStCY0I2MDQvbUpRM1gyc25KU0VLbE1x?=
 =?utf-8?B?VmV4cWg0TVZOR2Z2QTlxUkJHeTBwbVphSzdHMkRUczcwam5lL3M1d0tGNnp6?=
 =?utf-8?B?aXZDRFRLdCtveEdrN3RqYXU5SEdEdUFlZ1Fkd2cyb2FTYS9RZ20yMTFxVXg5?=
 =?utf-8?B?VnVFVXB4bk5KR2UyRUhnQmhkZVhITE5McE1xSExZOGduaVk1eGltak5xTHh1?=
 =?utf-8?B?SmtBY3RoMU53OS9vQnMrbmthUW9MVXJTNXhVVkhMQnBwZE8xQllhQVRHNXNT?=
 =?utf-8?B?WEQ3YlhuZXd5dHJZV2tlSUpNeHAvMlpXekFzUi9aZXZDTlpHMEx2UjltSFBL?=
 =?utf-8?B?cUM4dnRId2RRMHUzaHozSUlQejF6VmR0VVB1TWJ0dllhTTdRczBvd3hTTkZa?=
 =?utf-8?B?MmNkTEtqV1V3Wk9VTTU0MEhUTXROUkNRVFJsZ3FpN1FMdHEwdWJpMkZFSVBk?=
 =?utf-8?B?bmo0UUt4UDd2Z0VkV1FCelVxV3hUbXppcUw1elhHbDVFUGZwZ0p3dnRQMVZ2?=
 =?utf-8?B?bVNiVWd6ZGVmNkhuNGNjbmtwRVJiRkRISHR4TURsRUpYNnZ6STUyZkJJS0lV?=
 =?utf-8?B?ZkxkQmlvYWVPYnNSNlYrV1E5bE9HSU42eFR6Q0FTOTQrQmpxcm5qR2Z4cmlu?=
 =?utf-8?B?MzlkTzcySmtxU2FoTlZHZ1NhUHRsLzNSRnRaY3QyOFI3d3ZKTlQ4N2JVUVM4?=
 =?utf-8?B?MVNqYk9lcTBGMnhjeEJHSEU4ck9DZGhrSU1hOEFJN0FqR0ZoYUxqdTRQMEls?=
 =?utf-8?B?S0tEejFRT0RuU0ZYY2U0YWQ3WTZKWXN0aU96VlZvNUpiK25oZjhOZjZlWWhJ?=
 =?utf-8?B?ZjJ4UmFDTVZPV25aRkZaRDh5ellZbTBpd0hWUFNiQUw5V2RqUkVOdjA1SFpl?=
 =?utf-8?B?WXV3d3g0RHo3T3pEd0hlVFBzUU5oQW5Kejc3N21LTmhGNWlsZXJGZlYzVHVL?=
 =?utf-8?B?WUZGeVNJQXU0R1VySEhNbFE0dzZ2TVg1aVpzZ0JNYUdsTkxnc1VmemsrQ2k1?=
 =?utf-8?B?L2EwS01kMDk1cCttV3VOaWFrdFdFV2w0UkFrN2g5cHA2M0ZTV0ozbWFENWpF?=
 =?utf-8?B?QXN1b2x0YWRlVU5VVHNmZ25iTE1rQnZ3TlRLRHdGanh3TUhIQnQ5a2NKTUxw?=
 =?utf-8?B?eFdVblhxNTRHNGV5QXJKZldkRmo1KzdOZ3UwUE00aDFCcHY0eGdMbzVIVG55?=
 =?utf-8?B?VlIxbjdISWJyQjFQMWRZUk5sa1JXRGRPV21rK1p3VzE0WTc0dExmTWtvYngx?=
 =?utf-8?B?VG9zeHl0WXpRMElpeWxZS0ZFbUZ5N3hWaGxlVFFsWjFhUEtjWThUeU56OGJF?=
 =?utf-8?B?eHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 984d6974-1a98-4689-d5ce-08db23dac427
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2023 15:51:10.5563 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QpvhzgofZx44rHqXjKas1nSTS7rtKZcybphQtCXAt0l1+sh3hojshpzATTSL1cFdNPg4Uv5+J1AZNhV2iY1OCi5qrHAXTv0hDft9dBDyaMM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6613
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678722674; x=1710258674;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=N5cR4yZkRWKyuQVq9PYjQRlI2AgPt7yRCjMGeywbI+s=;
 b=Se0tm8eJ8WNdz7BtDsE66J2TSZWh+QgxEvIW9AdSlZT7tkuzUVfAC9ov
 cwMVK5u/l9J3RjM7BdWcoj06Vi2/LgOxcr0pscg8IKEa+1JgAPeLIAso+
 P3M+rUYCb7SeYHivHW86zebUPYHanykKlLEospjv1TrWaoerDPkoT/LN3
 qKHuzzyqFjB0yYqzzG94uUnh82JF7s61wN8hzGAytJmyLvkODkWmpDTea
 NN9vS8OsPcaMq3IPqz0t0l6FP8HvpNDkacDizxaXIsgZoHLO5ry+tgZZM
 QtCprQt+bcbtv5e3lzOfSL9qEJv3Gj6dlVDco2RdxjOYrEHF2CogX5a7T
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Se0tm8eJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: add profile conflict
 check for AVF FDIR
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/12/2023 7:17 PM, Junfeng Guo wrote:
> Add profile conflict check while adding some FDIR rules to aviod
> unexpected flow behavior, rules may have conflict including:
>         IPv4 <---> {IPv4_UDP, IPv4_TCP, IPv4_SCTP}
>         IPv6 <---> {IPv6_UDP, IPv6_TCP, IPv6_SCTP}
> 
> For example, when we create an FDIR rule for IPv4, this rule will work
> on packets including IPv4, IPv4_UDP, IPv4_TCP and IPv4_SCTP. But if we
> then create an FDIR rule for IPv4_UDP and then destroy it, the first
> FDIR rule for IPv4 cannot work on pkt IPv4_UDP then.
> 
> To prevent this unexpected behavior, we add restriction in software
> when creating FDIR rules by adding necessary profile conflict check.
> 
> Fixes: 1f7ea1cd6a37 ("ice: Enable FDIR Configure for AVF")
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> ---
>  .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 73 +++++++++++++++++++
>  1 file changed, 73 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> index e6ef6b303222..06296ffc3608 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> @@ -541,6 +541,73 @@ static void ice_vc_fdir_rem_prof_all(struct ice_vf *vf)
>  	}
>  }
>  
> +/**
> + * ice_vc_fdir_has_prof_conflict
> + * @vf: pointer to the VF structure
> + * @conf: FDIR configuration for each filter
> + *
> + * Check if @conf has conflicting profile with existing profiles
> + *
> + * Return: true on success, and false on error.
> + */
> +static bool
> +ice_vc_fdir_has_prof_conflict(struct ice_vf *vf,
> +			      struct virtchnl_fdir_fltr_conf *conf)
> +{
> +	struct ice_fdir_fltr *desc;
> +
> +	list_for_each_entry(desc, &vf->fdir.fdir_rule_list, fltr_node) {
> +		struct virtchnl_fdir_fltr_conf *existing_conf =
> +						to_fltr_conf_from_desc(desc);
> +		enum ice_fltr_ptype flow_type_a, flow_type_b;
> +		struct ice_fdir_fltr *a, *b;
> +
> +		a = &existing_conf->input;
> +		b = &conf->input;
> +		flow_type_a = a->flow_type;
> +		flow_type_b = b->flow_type;
> +
> +		/**
> +		 * No need to compare two rules with different tunnel types or

"/**" is special magic for declaring documentation in kernel and
doxygen. Just use:

/* multi-line
 * comment
 */

which is netdev style.

> +		 * with the same protocol type
> +		 */
> +		if (existing_conf->ttype != conf->ttype ||
> +		    flow_type_a == flow_type_b)
> +			continue;
> +
> +		switch (flow_type_a) {
> +		case ICE_FLTR_PTYPE_NONF_IPV4_UDP:
> +		case ICE_FLTR_PTYPE_NONF_IPV4_TCP:
> +		case ICE_FLTR_PTYPE_NONF_IPV4_SCTP:
> +			if (flow_type_b == ICE_FLTR_PTYPE_NONF_IPV4_OTHER)
> +				return true;
> +			break;
> +		case ICE_FLTR_PTYPE_NONF_IPV4_OTHER:
> +			if (flow_type_b == ICE_FLTR_PTYPE_NONF_IPV4_UDP ||
> +			    flow_type_b == ICE_FLTR_PTYPE_NONF_IPV4_TCP ||
> +			    flow_type_b == ICE_FLTR_PTYPE_NONF_IPV4_SCTP)
> +				return true;
> +			break;
> +		case ICE_FLTR_PTYPE_NONF_IPV6_UDP:
> +		case ICE_FLTR_PTYPE_NONF_IPV6_TCP:
> +		case ICE_FLTR_PTYPE_NONF_IPV6_SCTP:
> +			if (flow_type_b == ICE_FLTR_PTYPE_NONF_IPV6_OTHER)
> +				return true;
> +			break;
> +		case ICE_FLTR_PTYPE_NONF_IPV6_OTHER:
> +			if (flow_type_b == ICE_FLTR_PTYPE_NONF_IPV6_UDP ||
> +			    flow_type_b == ICE_FLTR_PTYPE_NONF_IPV6_TCP ||
> +			    flow_type_b == ICE_FLTR_PTYPE_NONF_IPV6_SCTP)
> +				return true;
> +			break;
> +		default:
> +			break;
> +		}
> +	}
> +
> +	return false;
> +}
> +
>  /**
>   * ice_vc_fdir_write_flow_prof
>   * @vf: pointer to the VF structure
> @@ -677,6 +744,12 @@ ice_vc_fdir_config_input_set(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,
>  	enum ice_fltr_ptype flow;
>  	int ret;
>  
> +	ret = ice_vc_fdir_has_prof_conflict(vf, conf);
> +	if (ret) {
> +		dev_dbg(dev, "Found flow prof conflict for VF %d\n", vf->vf_id);

This is just a nit, but generally messages to the log should always
contain full words and not abbreviations.

"Found flow profile conflict for VF %d\n"


> +		return ret;
> +	}
> +
>  	flow = input->flow_type;
>  	ret = ice_vc_fdir_alloc_prof(vf, flow);
>  	if (ret) {

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
