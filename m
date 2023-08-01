Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D29876B1B4
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 12:26:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2224040890;
	Tue,  1 Aug 2023 10:26:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2224040890
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690885590;
	bh=STY/3Ias1X4/M7crEyVXW89X5zVGx/f+/DbUW9Fkq+U=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ahDerRQ2HXDEwJdefEkZU/3JkYQtKxUfvVNfnmjps8+Dcz31lKhANbSH4W7Fiz/h3
	 9TZgmGSE+1Zv7nOaeNlgpTm/hZ9fP7IFYix1fH89Gg6rUI801U2x25Rb8pRthB4GlO
	 RBnvhiH0VHeP9vjsbvoQaBsypD3ko28LBn9X6wqZUI0qcsDIU+AEUZcMNMsqXA+dZF
	 siUZZC+YIM7TRMxM2ZHIEd88oqcXvT1RC40cNLwl985VebVSmYZZbswmsJb+pcSg1t
	 sQcFHEvYVZa793CPP7SfdGvQQ+u9vLI+p+q/+al90NKBIYaZh9EBfdJSTgqBkh8bn8
	 PrMtTeGj70OBA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cvH7TI87xrzo; Tue,  1 Aug 2023 10:26:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D308D4171A;
	Tue,  1 Aug 2023 10:26:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D308D4171A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 21FE01BF290
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 10:26:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 24CAB40201
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 10:26:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 24CAB40201
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GjwpjzJDE6Uk for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 10:26:12 +0000 (UTC)
Received: from mgamail.intel.com (unknown [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E445740192
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 10:26:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E445740192
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="455635128"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="455635128"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 03:26:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="758282063"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="758282063"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 01 Aug 2023 03:26:10 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 1 Aug 2023 03:26:10 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 1 Aug 2023 03:26:10 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 1 Aug 2023 03:26:10 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 1 Aug 2023 03:26:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fdzl5fFe6QhY/GM86C5pdi2r2qhyNjzKpEbwja9e5rqCl7u1YeA4od8HE3JYA1STRwHq+28vsdZBWERzvwhf9JK64yEzzdrQUkigAWjbkxtx4+pp2DV635DrPrnif7kCb0PDmYowjmaz+XmuYnk5iovucBCSSMW5hF22S08LFtDsc2Vb2UXyVNt/wAzXM63ERNQ2wBlf3W4lzvQbgrB3PQbqye30rvdNrItcs7ydRXpv8s0Zkm1jYl8CcMM1Kdl4AgEfAKulWbZdThKGcc694E+bxW8pzTrFNyDU8F8JCdoTypaVuEXCBLDR1NhtEDqm8lxGQ+/H8XNuMJUgSW7Opg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i+ZZdRT7qdJ4uUqI0yh67CnO4WkUUYVwWQMoKdGpJ7A=;
 b=BkON148JUb3UKT++zKc6LBgOAuxaxRJJyHNF5FArczrMaHIh3ShiTC0AbSPjg3XLSsPRzcC9ij391svtIND+2wk6TIiBMTD40hj/Tbh8Z8hUJMxqHXKX/kQME2foeMT5tEqGQCc/kX5JuScQOKpCzhs+rct2nrbqwR+A65CI95azKjD3LoK+i3BPJy7z5/kaGDG62D2oDlk6Vu1PrJvJODt4RQRa0eMnA2mgczKkChGrZKQtAkNAy3f4RdT9pU1KBpDw045l8AXJIVlh1bYBD3NJ5f3R4PkKN1V8ennxiEmoc2cRmT6A26tvSkO3wVl2GiexzeaUOWRJHyCcLtEOEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3674.namprd11.prod.outlook.com (2603:10b6:5:13d::11)
 by CO1PR11MB5122.namprd11.prod.outlook.com (2603:10b6:303:95::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Tue, 1 Aug
 2023 10:26:07 +0000
Received: from DM6PR11MB3674.namprd11.prod.outlook.com
 ([fe80::7f4:c05b:358b:79c4]) by DM6PR11MB3674.namprd11.prod.outlook.com
 ([fe80::7f4:c05b:358b:79c4%7]) with mapi id 15.20.6631.034; Tue, 1 Aug 2023
 10:26:07 +0000
Message-ID: <32847384-5513-3249-4b35-c81f6d1ee566@intel.com>
Date: Tue, 1 Aug 2023 12:25:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: <intel-wired-lan@lists.osuosl.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>
References: <20230801101545.519944-1-przemyslaw.kitszel@intel.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230801101545.519944-1-przemyslaw.kitszel@intel.com>
X-ClientProxiedBy: FR0P281CA0124.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:97::13) To DM6PR11MB3674.namprd11.prod.outlook.com
 (2603:10b6:5:13d::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3674:EE_|CO1PR11MB5122:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c68e99f-3a20-465c-a9c9-08db9279b764
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: o0oeCpgzaALKXXRXEOIX3aKfUHzuwPiPNnH/3WJkeNYNK7lJ1DxucWT+nF/vv4Ze2N/MR9odn6hjYnrghfwA1S7q0ZqwOzFMFYSU5MwaI5c+LdZNY3CII+zKQ71/nHBqR21XKzHes9skUg5dR+wUVK1fOh9CHqUE7n+3BQSpw3FtFjb1vOznnSIhr0b7R8kCTaAwl0XGTWPZ7dB+17IXWbmfuKLR0t2fLRasWAX2oa+XItjnkvTkZV+HWvZ70IrT2s67JRd+DhgGDqzd+VrSdSRG2C1C3LuUtlfmqTaMGv9S9fp5XDuY66vSDGAzX1T9pVdjpf1TmgogKqN6xibEoLWvOG741AcxI522EYZhwwL1ME547XiUahHO7cMRVdPx3POdIl572kUNQceCP9JGol6rB+2lsniClx/tHSQ+Fbfih6FymII3sARMHba9+BAUncvV3VM3g+wlZKnriFRqRMiSgou4MOlUTkqhtNwP6DwIz9Ebn7yRWJIem3t5DAlMa9i1+YeSbMnOJn+1mdoVuXSBFdg8+2PVybtUuhnjHun5PD2mUvWKXKUYBJgMo64KaA+5LclqsKZ0v/f3NiPrukTW5AVEQuyPiohdcyaKGS3t4vsmqcJNdvRj+2/BQBvvDnervizTWblPrzdNrZdT+Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3674.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(366004)(376002)(346002)(396003)(451199021)(31696002)(6862004)(2906002)(26005)(6506007)(186003)(316002)(38100700002)(107886003)(2616005)(83380400001)(53546011)(66946007)(5660300002)(8676002)(6636002)(36756003)(8936002)(82960400001)(54906003)(41300700001)(478600001)(6512007)(6666004)(6486002)(66556008)(66476007)(4326008)(86362001)(37006003)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UzIwRC9jb21xWVdmcXYxTE9wbDFUMWV4MEhzNG5LZTR0OUQvTHhMMDloSkhU?=
 =?utf-8?B?NzExZWNIcGdDTC9pd3Z1eG1UZ28xK1pSdWVCSHRZbHY2MWZ6a3R4YWxqLzBF?=
 =?utf-8?B?eEljRXZBZmR3ZmphcURka05NMWlVM3BDblgrT0JXYTc5bi9henhsQWw1Nlh1?=
 =?utf-8?B?TmNrSzFEc3JzQXljNklWYlN4OUJWaGI2ZWd5ZjdPTmVPUVo3dWdFOFhWQ0tC?=
 =?utf-8?B?TFljY2piQ1BTcnBESEN3ZTg1L3JDR1hjbTdCcExKWVkyYjUyWXEvQ3Q5VzBr?=
 =?utf-8?B?VnJQQTV2Z2lwQzlsblZCRndlZzhjNzRKWXlQZ05MZWRIQUlKMjEzL0hJL1FY?=
 =?utf-8?B?TFJ6T29OMHc2dGgxZ1ViUmYzNGxzcFdkMWtnSzl0ajQ1Nys2SkhEMkY0MXpq?=
 =?utf-8?B?ZytZOFRGVk9ZUDBpVElrZ2hWOXpNY3J0cmc2VGo0MlBKUXFrMVpoQ0x6ZSs3?=
 =?utf-8?B?ZFJTY0pJRFdjRUV6Zk1YVWJ6V1FUQ2paQTQ4TTFCdXZuMjZzUzlNYTBodXM2?=
 =?utf-8?B?ZUFjbzJaWXZ2UitTZ05JNS9wazNPTUhOV25LREpLcldScXMrOXU4RUNDTjlG?=
 =?utf-8?B?U0JPK21IZ0hIV1dLWXdmTUdrZGxwZEdOQWtXU1JIcDZUMEoxaWgrTmFtQnh2?=
 =?utf-8?B?bVc1RlR4WlNpQnRDU2g4LzN3NitiNXpjUXNka0JqelRaV2UzOFRSeFpmeTlo?=
 =?utf-8?B?N3E2NzBGNVZ3T1J6bHhOV1VnTjYxWGhjM0VhL2xZcURnU2VIMmZ2eWx3Q0xk?=
 =?utf-8?B?WWxjbkVaUEVDTTdwMUlZTmtDdWgyQTI0bkI3dWFrbHdoYUp4V3FzajVVbzFY?=
 =?utf-8?B?S0JnV241bERFY0lYUUcycjdxM0lpZXFYVnlMZU9oTE9VTHU3cnUxOGl3SHp2?=
 =?utf-8?B?blhaVi9RaGYxOFEvaktrblpMbUlMbXNPcFQwSXQzNk00elRvNW83LzBFaHZC?=
 =?utf-8?B?L2ZaOWk1Y1RZUkxWTFNYVmttTjhOaFFJZjZFTkR1dmtRRmgwV0QyWklMbWR0?=
 =?utf-8?B?QmxxVGhreEtUMytBZHBtNWlQT3BWZk1BMjhSb29YTDJCZ05JTlpLaTAxNW1U?=
 =?utf-8?B?UjUwc3ErRzMzVnloVXNtTllNMllyZkF4dmhwK2QzVFF2SnN1SFIvRkdYK0JF?=
 =?utf-8?B?TGN3clpGcDUvMDBzanNxQ0p2OTcyWS8ra29hN2xsa1lUd0VJOUNiQzBPYUg4?=
 =?utf-8?B?VXFRME5ROFk4SGpjeUgySWpkWjNPT0VKbGlsaERYUTVRNWNYbEdrL1J4MlZn?=
 =?utf-8?B?OXlFdGZDOHVLRkJtbHBMSmpxQVpBVmphbXJqNDJUS3NORkt6bDZqYXljd002?=
 =?utf-8?B?dGRoelZkQW05aTMxWTk0ZGk1UkZJUmNQSmtBeC9oajJuT3prUGdKMDJrTFhE?=
 =?utf-8?B?bkoxR1JlL1Nza0pUeEpUNDFPL2h1dnVXdzBqQzdZM2xPVHhocEF3NXJ5QkhN?=
 =?utf-8?B?R3RxaWd5Zk5pa2dqN2lUOWNrVFlKbDVwL3lNMW1sY01NcTV6WDNzKzNjR2Iv?=
 =?utf-8?B?clh4Nmh2dGZKazNScVFUM0pIbVExcVhkYVR1bVpORGxtRnJiNDFJaGVaZ2ZU?=
 =?utf-8?B?R2M2amwybmpZT1Y2YVFZSnJJZjJFTkhITnhMQWFjTXZUdkVYT3FsVXdiZVV5?=
 =?utf-8?B?NlpJMFFzdFBTeDBwU3RLRkNPMDBWUVN3d2MwSGtuTmlYZ01OZGN3VDE4endi?=
 =?utf-8?B?MVlFNXg5Q05Wd2lCRUQrL2crc1ZDUVFCV1JpZzZMQzVOeTRKc2VwYUU1dk1y?=
 =?utf-8?B?dHJkK0xJd0pmZjI0UW5naE8xNUZpOTZ2L25yZU00ckZjbjNMOTV3ajI4VGFU?=
 =?utf-8?B?eFZncHdWM04vWGJMTkJQcTNNMi91L1BaUlZkSFJyRHFRS2VGUm9PTHdEUkVI?=
 =?utf-8?B?VmtNVXNFcThwaVoxRlRMckdDSGxzVzUwRlllOTl1SXljaTFTTzZkUENQWHlO?=
 =?utf-8?B?SmhXZDhtM3lOZ0NLamhmZTVnWFpRVHBlclNQTlByanNtcmt3R3k3UVBkb0px?=
 =?utf-8?B?aXowYURyc1VLWHR4YlYzUklKRGI2N1BDUU1MTncyVTlIZ2RlL3NyQVRxWlIy?=
 =?utf-8?B?RHEzaSs1SjJ0QUJFVEg5TTFCdEJnNmxjS2tLTjVla2ZmRXlVY1EwNmFnYzRJ?=
 =?utf-8?B?TDFYRGxyQUZIdHRQZjVRclgvaTVGek5tMFJYbWUrR3FMaXhPS2RuT0VGRnZu?=
 =?utf-8?B?dlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c68e99f-3a20-465c-a9c9-08db9279b764
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3674.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2023 10:26:07.1214 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GhnXRY+aMfP7fJB3rUTKTU5Q5MQdxVPcNjv2YYqgnrOEu2pL1ZW7KN7aXXBlST6wohwlRP7khsaLFcQDBPG2ou1uncOrfA67mNDkrawYm3w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5122
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690885571; x=1722421571;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RIb1wHjPrHAgVtR6AEmQEIK2gMj0xx9oH5XiuEZO7nk=;
 b=lSkA0+oFGOBlX79lWpNe4goo14GUyCUzsSf3Q8gzokvfGR5H7pjyRzfr
 nKhZ++hjhaN/rADDiypQD7j+kjyPG5ELNkyM+UITZxxVPFj/egkCeQdrM
 z5MAo6tD6bJd4QSguJNGuCzqtcckUnTAmLxWuNpEKSJRZOdsYylYZKnF/
 iSZgwWcvzpzOc06O0KcUU29/V/bwr0MEbN4Hi39p4wSnfr/VBuyxIvOby
 gd+0UiraRitKP2Zo6ZeeQeEFa/sIGMOBYkycQIEzcM+LPtWKJp5w7VjAk
 7PVJzxNXMnmc7zAHQmXlZDnM8SielT4I0TLbRFybrzHL3gwDM2fkOS936
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lSkA0+oF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ice: split ice_aq_wait_for_event()
 func into two
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
Cc: netdev@vger.kernel.org, Jesse
 Brandeburg <jesse.brandeburg@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/1/23 12:15, Przemek Kitszel wrote:
> Mitigate race between registering on wait list and receiving
> AQ Response from FW.
> 
> ice_aq_prep_for_event() should be called before sending AQ command,
> ice_aq_wait_for_event() should be called after sending AQ command,
> to wait for AQ Response.
> 
> struct ice_aq_task is exposed to callers, what takes burden of memory
> ownership out from AQ-wait family of functions.
> 
> Embed struct ice_rq_event_info event into struct ice_aq_task
> (instead of it being a ptr), to remove some more code from the callers.
> 
> Additional fix: one of the checks in ice_aq_check_events() was off by one.
> 
> Please note, that this was found by reading the code,
> an actual race has not yet materialized.
> 
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice.h          | 21 +++-
>   .../net/ethernet/intel/ice/ice_fw_update.c    | 45 +++++----
>   drivers/net/ethernet/intel/ice/ice_main.c     | 98 +++++++++----------
>   3 files changed, 92 insertions(+), 72 deletions(-)
> 

Ouch, I've forgot to mention that it is for IWL-next, will send v2 
tomorrow with proper tag :~

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
