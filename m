Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9BA3C7EF8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jul 2021 09:04:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B85DE60A4C;
	Wed, 14 Jul 2021 07:04:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fAuf7lviugdg; Wed, 14 Jul 2021 07:04:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8FF8C60724;
	Wed, 14 Jul 2021 07:04:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0CAA81BF842
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 07:04:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0740840691
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 07:04:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j1AelQEEdr1W for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jul 2021 07:04:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 150A840687
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 07:04:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="208482361"
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="208482361"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2021 00:04:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="571012919"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga001.fm.intel.com with ESMTP; 14 Jul 2021 00:04:34 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 14 Jul 2021 00:04:34 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 14 Jul 2021 00:04:34 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Wed, 14 Jul 2021 00:04:34 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Wed, 14 Jul 2021 00:04:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CSj+4P+CjY3DJTFxVevA9GVk3ziVgTPWAKM/l6HqVFgNaxbC6EgYaeBhg+eUmKpD8TVeL4lwXwF01NwgypMfQXELQLnvO+G0VcA1RVUc3cueS0uaXAF9TfmEGo5rf00GS5yrOI/p9YYhfn/1xAVlIUFHw1kf+w68hZwEzxiSALkY7DMgecG5C0q7Z1rBgg+VthS6pJ/N80FStaz0nnvBw4Gnnn1tgE5PmkSnpMYX6q1VJinIXpfPOyaQ+rIp/P0qIE9uTd3BZxiMy7jp2tyc1OI+8ypZEghTDIWYnD5KoIbwm5wrkUPmO1NhEeRPVM19A4wTdJxWD/fxwoNxLpp8Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PFcEjPvv4bKMiCIU8L41rj9zQf8xcbXPEHOA95CZ5so=;
 b=YJdWvIAaNskYdfqflWl0ZTVBEf3rDOyK7eQpl796xnq3K67wcfCgjFKHIojZh4x778MmgJppaRRpx+/vCYDhy6IEhPrQIanu81jQ0UJLVHQp1YpQ6GzBu8Fd/fVg7DZ162fq3CP+ABaSogJl2UkpUZXbFtxHmOTkKjB9vX+Ad2t1IYEHzgAhzrZ1R/nKbCMxf4zZUyWwJyU8vBARYUkPKDKeY38zdBqDXsgJ0J13lXPXTb8JI91jH76+KJfqs+i94jqQNt1dVv+ZAFBzEr3lB5b0MwNEVhpx68hX0snYigHMqmjI98ELiREeW1P7q0BhwqxsFfHKEptVPTDwhj+SGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PFcEjPvv4bKMiCIU8L41rj9zQf8xcbXPEHOA95CZ5so=;
 b=l85TwcdwTVrICrGxP3GXJwMO3DiLC4d2Nq8dTsgjw4hE+YBp60qFVBLToTXI+bn2UtBlIc9RhC8P5/GBuACYcWJPL4s8PaC49no443kGSAOuHa/Fee4XLUoIhT8WPXKyacWLK9ccr5srwJCobSvLMEwVr2mCtPmNaPXvAvXmmos=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4787.namprd11.prod.outlook.com (2603:10b6:303:6e::10)
 by MWHPR1101MB2205.namprd11.prod.outlook.com (2603:10b6:301:59::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.23; Wed, 14 Jul
 2021 07:04:33 +0000
Received: from CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::b856:1bc7:d077:6e74]) by CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::b856:1bc7:d077:6e74%4]) with mapi id 15.20.4331.021; Wed, 14 Jul 2021
 07:04:33 +0000
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20210624081908.568757-1-sasha.neftin@intel.com>
 <b144efbc-9dbd-dd7c-b8df-a504a757bded@molgen.mpg.de>
 <3de72f51-8f3d-29c9-dc74-b016c13c5b08@intel.com>
 <fab23c51-cfcd-2a20-0558-346ade1199b5@molgen.mpg.de>
From: Sasha Neftin <sasha.neftin@intel.com>
Message-ID: <183fbfd4-5523-593c-0eb6-814eb6a1e03e@intel.com>
Date: Wed, 14 Jul 2021 10:04:26 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.11.0
In-Reply-To: <fab23c51-cfcd-2a20-0558-346ade1199b5@molgen.mpg.de>
Content-Language: en-US
X-ClientProxiedBy: MR2P264CA0125.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:500:30::17) To CO1PR11MB4787.namprd11.prod.outlook.com
 (2603:10b6:303:6e::10)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.168] (84.108.64.141) by
 MR2P264CA0125.FRAP264.PROD.OUTLOOK.COM (2603:10a6:500:30::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4308.20 via Frontend Transport; Wed, 14 Jul 2021 07:04:31 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a646e949-bfa9-4300-1c6a-08d94695a1c4
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2205:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR1101MB2205D75A43E8F6176A47027597139@MWHPR1101MB2205.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OnCOcvWdqut0lnsFWY4WbCTx7YwQqFTTxYPZl+chH3jZtkD21sJeGrq9BW+67OeQYOUKlrp4LsW9bGdqZi28J07k/rOb+RJzso9wswZJcRe2o2YqyQTq06F1gJGC/+JC+UyOQR0h0OIOvZvGt9R1rXFL+Mj/zFZwkRNQWeY/YdJOIZwmLgAk14mmR+WjIBxvTXS7ndO2kfSvrTIEros3pPtChGfWQAoPfuoYKKyYKPW4MQBmDjz5aaxFs+I2/0prcz5ityONUauj33HiSSCGWBxa4mo9qPWyXb8omlYPeiHXgp7gpfTir2bmGKuEX1jvP5gDBdpfRs48n4QAmTvh0wvNILvoZkkN+2owgDtMkfliZDIfNf1GZrFXqjPNeW0EofJj+YvIMx/4CLXTLZPlM7KwGlSU1ibj4GX0IgHAgIWvYcZTqNE76EGPrlNO/CH++657YRWYsD7VIcFDn7rng/pjljaVwymVcg1/K/bfQzVjkuBVqgi6ROUdwSUrhe047pjAnFhgI3wGfbLkPj3aoHipCpTOT1QC6hrlYoGb07M7/VTtdcGj2bE75pXzEU1+Un9gMFe1Il2Womg7vvQ4Bk8ns63j6ozUvjQaVDxQHIs70tXPHLS3rKu/+aPZDSBMQkJJxqrLsn183SMEcFoAhcZpLCAfaORR7jdoBSYTxDBXLYzm94LINEZtvRm2k8lZkXhLciOh3LAYIydOTe6fHvmdIDkVk8FGvRT2vRpTpyPaRw2iOxOZDyiSBuOfn7GDAqf/7j7VsixoGchOeWUOzg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4787.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(376002)(136003)(366004)(396003)(346002)(6916009)(86362001)(107886003)(186003)(83380400001)(26005)(8936002)(478600001)(5660300002)(53546011)(8676002)(66556008)(66946007)(66476007)(6666004)(4326008)(31696002)(36756003)(44832011)(2616005)(956004)(31686004)(316002)(16576012)(2906002)(54906003)(38100700002)(6486002)(32563001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eTk0OEVNNFUyQVhuSjlVZjMvWERGVWdCblFEcTNETFRkbUZNR3hZSTc0UVg1?=
 =?utf-8?B?bHdBOGtTSXV2ZWsvcUZab3p2UjVpUDVXbGFQL2sxTUNSVGJBTkJCaVo3WFZh?=
 =?utf-8?B?emNXOGx6ZGJuRGlZeGQ5ZVpYYVBxNHlpdklNaGZTQmo2Sk5ZV0JjMU9vb0pE?=
 =?utf-8?B?akswYWUxRmtlSmtLbHBGNjhwVWUrb0R1aEFRTzNoTDhBMmdBRXNQa29UbFhM?=
 =?utf-8?B?Z1JadWZ2ekhQRzkxK0xQVTVTd0llaVJyNEgzc0VpTndwQTBaMVN1SDVXNDVP?=
 =?utf-8?B?S0t5dmh3ZWc1OERtalE3TVZYVERXRkdLblhkY1F0QXl4M1pqd1ErK3FqS1Bx?=
 =?utf-8?B?aGhlMUM0TVNlZG1HaHdwUDhXTTBPazJtTEdqVjRoM0tYT2gxZ29sQTdtU0E3?=
 =?utf-8?B?WFJMRmthekZ2QzdoTlBvRzM0c0I0UFNoTWVOc0FEWXRLUmxiY3o3MkYrRnlP?=
 =?utf-8?B?QTgzLzJoWnNaQXRvMnZOUWt2S3lzaVhIT2hIM1d0eGo3ZVJqcWVTaFRSV29Z?=
 =?utf-8?B?amw0aE5HbnRyMjRtQ2J5QzRreXNOd0hUVXdDUjBJMHVvZ1phTlcxQ1ltcGVp?=
 =?utf-8?B?cVprQlpQcFE1aDNtT0kyN21PT25zUGc0ait4RXNKUElvKzFDbjhHOEhPVERZ?=
 =?utf-8?B?SDd6QjlRaURXQ0ZXb2xVRG13dVJIa2IwemtKeTFaSmtZaGZBSHM2UFE4eVFS?=
 =?utf-8?B?WktFNlN6eGxOc0hpdXJsakVhSmFoK2FDSEV4Ym1hVU04UENid2tRS2paQTRk?=
 =?utf-8?B?MEFlUjFkZno2YkF2NTZDSnNYNHpqNlhEVnNmT0FZN2R1eGVmZk9jd1pVSklP?=
 =?utf-8?B?N3dGby9IUjc1eEpiTUJwU1ZlYkpwV2lzNjM3NDFGRXFxcTc0bHBlSEFPZ3I0?=
 =?utf-8?B?NjFDb1FIQWhpcTFhMzhFeHJndDV6Ly9pUE9pSjNONUxrZldmVndTSCtPUlFm?=
 =?utf-8?B?ZUZ2YjJBOHFZTFhzSEVveEdLSU9JS2ZEODJDT1c2bDVYbERNR1VmcitkdmFt?=
 =?utf-8?B?QmZSaTVaSkdjd0ZCVTlqNjMxK2drZTA3RHVZNXdBWG9KaVRHU0xLdFIzci9s?=
 =?utf-8?B?MDNKZmoyZlZjelk3VlVyOFpXOFIyRCtNMjllZG05c0h3bGMyRExmbFpSWEpY?=
 =?utf-8?B?aEszcnJ0V050WlBiVnRPRUJCQk1VVEc0Yy9ldU1JM3dJRHpzVVRLSVJDRk5V?=
 =?utf-8?B?bUM5Vnh2REtLVnVrVXFQM2ROcm9PZzRrSGdadmNzZk1uRUw1c0s5QStsc2FP?=
 =?utf-8?B?SWFRMytsOVNHOHQ2MWRadUNMVThIV1AwanI4Yk9XNmw0MEdPVWpWTVdQcnAy?=
 =?utf-8?B?cFBWR0t3clFtbmJVSU4xSFlDcllpaktJVmpzUU85RW1UaTFlY25MOHpvTkY5?=
 =?utf-8?B?V080TDZqTGxoMjBYNERnTkNxY1RQVGJEQ2RlbTRRYnVLOSs5RFpJSGRsVjhi?=
 =?utf-8?B?RTF6VG0zMEpwaE9JK1R2Y05waU8ydy90REtVUUZnd0xmMm1QNFFObmlGQmU2?=
 =?utf-8?B?UklSbUpNUjlqU3lHdTdpTDVlQ21SM2pkT2JBamd6NlJKZTFrYWgwTmtzNlJF?=
 =?utf-8?B?U0RKa2hmcU5DVWRjcWVEZVRETXlZQzhBS0d4c2JkSzlrWUtrZG1IYjM0azFn?=
 =?utf-8?B?Ym5wOHJ6Skw0Q2c0ZTVud2xTMlZUVFo4UjZVZzFVaVZPWWUxVVpXSHprQzJP?=
 =?utf-8?B?VTR2VVZNdWNTRDRTaUcyOE1ZajN6bFlzMXFaWFNhQWVTTmtOaU9SeFFoc0xB?=
 =?utf-8?Q?tVHLVpNNGc+Fjhv/q9Fv0aEWuL2iwQfvjAGP0u9?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a646e949-bfa9-4300-1c6a-08d94695a1c4
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4787.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2021 07:04:33.0339 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oa07yRoowsJLOucSF+jvcM3hfzTUcAcWla7ZMt8zRMLk/9kBfhkrTQjRm3TTA3xpzUDjGcGx3Vki8kirqA3Vyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2205
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 3/3] e1000e: Additional PHY power
 saving in s0ix
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
Cc: michael.edri@intel.com, devora.fuxbrumer@intel.com,
 Dima Ruinskiy <dima.ruinskiy@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNy8xNC8yMDIxIDA5OjA5LCBQYXVsIE1lbnplbCB3cm90ZToKPiBEZWFyIFNhc2hhLAo+IAo+
IAo+IEFtIDEzLjA3LjIxIHVtIDE4OjQwIHNjaHJpZWIgU2FzaGEgTmVmdGluOgo+PiBPbiA3LzEz
LzIwMjEgMTA6MTIsIFBhdWwgTWVuemVsIHdyb3RlOgo+IAo+Pj4gQW0gMjQuMDYuMjEgdW0gMTA6
MTkgc2NocmllYiBTYXNoYSBOZWZ0aW46Cj4+Pgo+Pj4gQ291bGQgeW91IHBsZWFzZSB1c2UgYSBz
dGF0ZW1lbnQgaW4gdGhlIGNvbW1pdCBtZXNzYWdlIHN1bW1hcnk/IE1heWJlOgo+Pj4KPj4+PiBE
aXNhYmxlIGFkZGl0aW9uYWwgUEhZIGZlYXR1cmVzKD8pIGluIFMwaXgKPj4+Cj4+Pj4gQWZ0ZXIg
dHJhbnNmZXJyaW5nIHRoZSBNQUMtUEhZIGludGVyZmFjZSB0byB0aGUgU01CdXMgdGhlIFBIWQo+
Pj4+IHdpbGwgc2F2ZSBwb3dlciBpbiBTMGl4IGxvdyBwb3dlciBpZGxlIG1vZGUuCj4+Pgo+Pj4g
SSBkbyBub3QgdW5kZXJzdGFuZCB0aGlzLiBQbGVhc2UgcmV3cml0ZSwgYW5kIG1lbnRpb24gdGhl
IHRocmVlIFBIWSAKPj4+IGZlYXR1cmVzKD8pIHlvdSBjaGFuZ2UuCj4+Pgo+Pj4gUGxlYXNlIGRv
Y3VtZW50IGhvdyB5b3UgdGVzdGVkIHRoaXMsIGFuZCBleGFjdGx5IGhvdyBtdWNoIHBvd2VyIGlz
IAo+Pj4gc2F2ZWQuCj4gCj4+IFRoZSBQSFkgd2lsbCBzYXZlIDQ3LTg1bVcgaW4gczBpeC4gSXQg
aXMgdGVzdGVkIChieSBvdXIgZWxlY3RyaWNhbCAKPj4gdmFsaWRhdGlvbiB0ZWFtKSBvbiBhIHNl
bnNlIHJlc2lzdG9yIG9uIGEgc3BlY2lmaWMgZXh0ZXJuYWwgYm9hcmQgb3ZlciAKPj4gdGhlIFRH
TCBwbGF0Zm9ybS4KPj4KPj4gVGhpcyBtZWFzdXJlbWVudCBjb3VsZCB2YXJpYXRlIGZyb20gcGxh
dGZvcm0gdG8gcGxhdGZvcm0gYW5kIGRlcGVuZHMgCj4+IG9uIHRoZSBzcGVjaWZpYyBwbGF0Zm9y
bSBkZXNpZ24uCj4gCj4gVGhhbmsgeW91IGZvciBzaGFyaW5nIHRoZSBkYXRhLiBQbGVhc2UgYWRk
IGl0IHRvIHRoZSBjb21taXQgbWVzc2FnZSBpbiB2Mi4KUGF1bCwgSSB3aWxsIHdvcmsgb24gdGhp
cyB3aXRoIG91ciBIVyBhcmNoaXRlY3QuIFdlIHdpbGwgcHJvY2VzcyAKc3BlY2lmaWNhdGlvbiB1
cGRhdGVzLiBJIHdpbGwgbGV0IHlvdSBrbm93IGFuZCBzaGFyZSBzaW5jZSBpdCB3aWxsIHJlYWR5
Lgo+IAo+Pj4+IFN1Z2dlc3RlZC1ieTogRGltYSBSdWluc2tpeSA8ZGltYS5ydWluc2tpeUBpbnRl
bC5jb20+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogU2FzaGEgTmVmdGluIDxzYXNoYS5uZWZ0aW5AaW50
ZWwuY29tPgo+Pj4+IC0tLQo+Pj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAw
ZS9uZXRkZXYuYyB8IDYgKysrKysrCj4+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9u
cygrKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2Ux
MDAwZS9uZXRkZXYuYyAKPj4+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9u
ZXRkZXYuYwo+Pj4+IGluZGV4IDZlNmUyZTY4NWU5ZC4uYzRmM2U1Y2E3Mjk0IDEwMDY0NAo+Pj4+
IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYwo+Pj4+ICsr
KyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYwo+Pj4+IEBAIC02
MzgwLDEwICs2MzgwLDE2IEBAIHN0YXRpYyB2b2lkIGUxMDAwZV9zMGl4X2VudHJ5X2Zsb3coc3Ry
dWN0IAo+Pj4+IGUxMDAwX2FkYXB0ZXIgKmFkYXB0ZXIpCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKg
IGV3MzIoQ1RSTF9FWFQsIG1hY19kYXRhKTsKPj4+PiDCoCDCoMKgwqDCoMKgwqDCoMKgwqAgLyog
REZUIGNvbnRyb2w6IFBIWSBiaXQ6IHBhZ2U3NjlfMjBbMF0gPSAxCj4+Pj4gK8KgwqDCoMKgwqDC
oMKgwqAgKiBwYWdlNzY5XzIwWzddIC0gUEhZIFBMTCBzdG9wCj4+Pj4gK8KgwqDCoMKgwqDCoMKg
wqAgKiBwYWdlNzY5XzIwWzhdIC0gUEhZIGdvIHRvIHRoZSBlbGVjdHJpY2FsIGlkbGUKPj4+PiAr
wqDCoMKgwqDCoMKgwqDCoCAqIHBhZ2U3NjlfMjBbOV0gLSBQSFkgc2VyZGVzIGRpc2FibGUKPj4+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIEdhdGUgUFBXIHZpYSBFWFRDTkZfQ1RSTCAtIHNldCAw
eDBGMDBbN10gPSAxCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqAgKi8KPj4+PiDCoMKgwqDCoMKg
wqDCoMKgwqAgZTFlX3JwaHkoaHcsIEk4MjU3OV9ERlRfQ1RSTCwgJnBoeV9kYXRhKTsKPj4+PiDC
oMKgwqDCoMKgwqDCoMKgwqAgcGh5X2RhdGEgfD0gQklUKDApOwo+Pj4+ICvCoMKgwqDCoMKgwqDC
oCBwaHlfZGF0YSB8PSBCSVQoNyk7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHBoeV9kYXRhIHw9IEJJ
VCg4KTsKPj4+PiArwqDCoMKgwqDCoMKgwqAgcGh5X2RhdGEgfD0gQklUKDkpOwo+Pj4+IMKgwqDC
oMKgwqDCoMKgwqDCoCBlMWVfd3BoeShodywgSTgyNTc5X0RGVF9DVFJMLCBwaHlfZGF0YSk7Cj4+
Pj4gwqAgwqDCoMKgwqDCoMKgwqDCoMKgIG1hY19kYXRhID0gZXIzMihFWFRDTkZfQ1RSTCk7Cj4+
Pj4KPiAKPiAKPiBLaW5kIHJlZ2FyZHMsCj4gCj4gUGF1bApTYXNoYQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBs
aXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
