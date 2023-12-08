Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E966480AEDD
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Dec 2023 22:34:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F37D6FA65;
	Fri,  8 Dec 2023 21:34:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7F37D6FA65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702071265;
	bh=DCjGg8vk6vvel1PhWXNsniazcFC91Gv3rgpSFgKn++s=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5ynXfs6ooCmvnlKyeGwKLMNCkDfRU5pHfPELXFCyNHfo6MkWMUcCgcYVzqQU0I3Y4
	 tQjD2qPrYGxjOfMR0XtmU+OqdYIOnKl9E3OzFCpny6qYRE2z3T/IpbJlBp2gCiwQoc
	 3SR3OHBkdeE+8/t1iU+/jPNk8H1xqyp8TE2T9zjZgueeOmb1uRUJXbYd+GDCoa5GQf
	 tWUax5kwW2pninjhG2GIoa9/01N4zXwZbDgd7vDhxhiST7MPxfznhVSKFl2RJuQhtV
	 uSMoJlqXdtCLnAO3iuYMBBsX92RaGcgwAPlzyI3TwLFj3deHtFm3acbCVIm02aQ0+y
	 jW3VZUj2pOkMg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WgqZEsfVn1Li; Fri,  8 Dec 2023 21:34:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 332826FA5E;
	Fri,  8 Dec 2023 21:34:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 332826FA5E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 400181BF417
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 21:34:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0B76F409DD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 21:34:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B76F409DD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ym73C_0xrpsB for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Dec 2023 21:34:17 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7FFDA40463
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 21:34:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7FFDA40463
X-IronPort-AV: E=McAfee;i="6600,9927,10918"; a="374630248"
X-IronPort-AV: E=Sophos;i="6.04,261,1695711600"; d="scan'208";a="374630248"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2023 13:34:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10918"; a="765618489"
X-IronPort-AV: E=Sophos;i="6.04,261,1695711600"; d="scan'208";a="765618489"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Dec 2023 13:34:16 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Dec 2023 13:34:16 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 8 Dec 2023 13:34:16 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 8 Dec 2023 13:34:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hqj4H3Z/JH1uFjPGAfXp9AUNBvdWj5Tq+DvyukUTSbfr4VnRK9l1SGqwNRLXGbF/0+YIgDbFNoPW7IBNK055ZX7DF9RnM7CJwREBNfZuG++XQM3h7JFQdKd5lEogPd6xoywYROGawrGmO4+iPy3M4Ug+NBhkXzEeYUDU4XOTY3xo206qzwSHp24fEugKQeq2F5UZ2zLpiMl5pWmWqDlEUFzT2+UC38uflal2uQOxbdWuFtOsMqiHirRa7SdfhDhQJuGs5sg8WWcaMvsVQ5x2sV2Ykv+v5fagGib4HZcWHloOGrwyh86hCc5jEQWB8eLO/8Wq8dTpmpSEX0WNFtfmrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uL12Mu1ZowITAW8ziy0mxAaBwuWI91ZnGvKDoCH36Es=;
 b=O8TyicHELTwDC7+pWMrlc1gDHKD/Q5sfsTRzD/DxVkDPv96t4LnnzEOKVRpvKNmy1FDeOGvg7Al23d0msisabZePYPfNFrlG6eY0J2YCJMR3qTsyjbWImLnc1ptisqrdVbvgWn2KewSoW+4x6qQU2sheEBVF1+u2RtDlYFSOt8PZK/RylG4hizpqI8zqUpmI381jFZ5bnEEhwtLq8rwkRwwgF4cG+wXgkJgIw+jHvmuP74029RQsdMdy//MiUxVirc1BH7UUUnxWdfnPGFwpP3iKqS6yShiIAjcsAF2F/PP9mvH/Pbgyime9Xc7VfiCVPCY3T9/U6dmceJPyJ/n4mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by MW4PR11MB6811.namprd11.prod.outlook.com (2603:10b6:303:208::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.28; Fri, 8 Dec
 2023 21:34:14 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3%4]) with mapi id 15.20.7068.028; Fri, 8 Dec 2023
 21:34:14 +0000
Message-ID: <b3e5ec09-d01b-0cea-69ea-c7406ea3f8b5@intel.com>
Date: Fri, 8 Dec 2023 13:34:10 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20231207164911.14330-1-marcin.szycik@linux.intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20231207164911.14330-1-marcin.szycik@linux.intel.com>
X-ClientProxiedBy: MW4P220CA0027.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::32) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|MW4PR11MB6811:EE_
X-MS-Office365-Filtering-Correlation-Id: e3923f92-cd2e-416f-cfd5-08dbf8356c62
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PqCb70JjiVAY801eNmJCLVmLakg6uEUUCD3zhLfrOc34zpMa9aWDRzxT8fPfwvE8T24HWhbGqzCEoX4tBb8XaiuF3huwAe3q8C4kL1tVtMaQVykFW3BRURyvzpBfOJL7X/sRyw1Jgt3DbfKYrWDwgHplYb9Ew7b0l2UfHZI/GfHx0dXguhnibW1mI6PFBh+EjWQkazqujJiqlkSJET1vEME3ngrDmLUmY7cDlqFsiD17N6KgbfGUQX3k0trwIDgxMZzY8w5Tr3qJzLEUTPWri8xhHhmKpXS+a541j4uTPVlKbZfT4cCsl9KrAouGTqzKlbzD544jZ9MNL7atWqlw+LKOJgdRcrQTRodMd7hj2kxEOasmIExChWZ9xzeGCDI4hQ9z1c1WpwM0seRUPX250DWZtfjrJSdrrwdacPNNgP9xt1ap+XGXrpGelViL79NpFN0qScnu53fCbU/QeQ0Owj+SWslbyJJrMP2z6lX7mALyfIljc2sOOhnIYBjbIRAnvk7HxpuiI7OXxTc8G7NSPenEursDSxr0OJ+rHbKaobUZXqihwLF7Dr5bIVsZMnm0jqZH6pFgTS5qdWMiQ37k/s8Lc61rmY19SnLFSUBEIHf48qaIiU8Udf29W2TqYTdZvVe3XixLQP5511q/n66Dj4dfJCNSN7t9kNPQFJchRI0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(376002)(396003)(346002)(366004)(230922051799003)(64100799003)(1800799012)(186009)(451199024)(31686004)(83380400001)(6512007)(2616005)(26005)(6506007)(53546011)(6666004)(478600001)(966005)(6486002)(316002)(66476007)(66946007)(31696002)(66556008)(38100700002)(8676002)(8936002)(4326008)(86362001)(36756003)(5660300002)(2906002)(7416002)(82960400001)(41300700001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Wi9DTVVRbUZ0d2ZZTlJBY04wYkM5Mko1WGg4Tk9oZkNVenNsTzdtVXE4ZS9T?=
 =?utf-8?B?SVY0c1M2ellTL3hqMWd0dmtDcVpHcVVucTVralUyblFRVGZDTUYwR3Ztb212?=
 =?utf-8?B?ZU9nSGcrUnhxTjU0aGZzOE5sL3U0dFV1aVVGRzhqOFg3dytKYXdDYTJ6K1Zk?=
 =?utf-8?B?dm42R013UUdRbmRkMS9UaUhLZ0xEczh4SmVEZHN1azJSWjJSV2RBSWlZaW9i?=
 =?utf-8?B?dmxhTTlBR0lhckNQVGdlQ2RXUDI1MURDYWU4MUErUWF4T0VKc2NiUFFoWkdi?=
 =?utf-8?B?WExyZFVJNHAzZ1pqQlNDVzhQZ0FPZ3dFN0xuOEVuSlQzY1p4WTRYY0VUZk5F?=
 =?utf-8?B?ZndKaW45Q3hWRGRNdi9USG1iVTZEdVNQQkJTckZmREpnbWZ6K1I5Wit0QlRi?=
 =?utf-8?B?NDlxR2xGd1lTWlUwTm5rMlp3N3FocmZDeE5FL2gvb2Z0a0lMMUdUNEtpMlY0?=
 =?utf-8?B?dzQ3RGR0eGNJN0premNNWlVYT0l4SEJpYzJrOVhBNnRDYUJYM3ZrcUh2UnZw?=
 =?utf-8?B?dzdZeDczTkVaODdXQmVQUytPb1J4MVluRlJGUGlwU3g5THJmbnMzRWVKTm4x?=
 =?utf-8?B?SjR2ekcrUk12MmxDYXhDdzlGNEd3aGxhU1ZIODZqaGhGRnVKbkluMFIyQkhT?=
 =?utf-8?B?M1JBZHJpNE0wQkhpNjhwN2c0YXRQcjQ0QVVOUnc1dDlpTE1La1ZyZVk2dm5y?=
 =?utf-8?B?OURlUkRWbkNUdmdWUzBuSVUvK0NzUEpkNEZBQXN6bnE2MWFlZDVFV3Yydk9J?=
 =?utf-8?B?dkUzOEpPWld4MkhTR3J4ZmdRNmRTeEpwUnl2aDFzY1pTZ1hDNURqclBhRE1K?=
 =?utf-8?B?UUdGTnBFZ3NsQlBGcWl6ZVdERVlZOXMxMys4RmtNM3ZOWEthN2RwVXJyWS9h?=
 =?utf-8?B?TXhVVEx4ZGJoRE1vaFpOdmlTMk5WTmwyQUYrQ0o3ZDlHaTB6NCtjVGN5SnA1?=
 =?utf-8?B?M2l6d0JNUnRPWmJ5aE56WVhQd1BKaEF6bE0rdSsvSEt6UGJ1aWlKN1RZY0xu?=
 =?utf-8?B?MkFkQ3JKQk5wY1hKMERiUWNKMVZFQVlpUXYwMHplaWdzdkh5em45MlhIdU9H?=
 =?utf-8?B?RUUzK0hrTkxUWlFIanNHa1FLOGlvUWpoOUxKdTgyVkFvQzFncUs3RHRTRG85?=
 =?utf-8?B?b3VXZWdEZnFQdk80dHZyZFJXUUxjRWtpR0RuN1NySTNMVTJlVnV3VmpvU2Zq?=
 =?utf-8?B?WXJibGQ5VVZqRDlyRDRZL1FlQzFlUHdYa2JTUDhVeVlKNURjUktHZ2YyKzZ4?=
 =?utf-8?B?bEdMaHBhYngyWlJXRFRwcnAwN3ZjTGVTbUY0ZFY2RUFGWkpoR09BczAzeElL?=
 =?utf-8?B?alNPSHY4d2tsWExXUnhkeGltYnNZUjhkdnFVWHZlNXdpS3QrQ09iTTJGaXox?=
 =?utf-8?B?ZlZrYjdra0ViR3JKVFRlWVltbjJGNXhIR09qelZNRzFYVDFwUVA2ckVQMkhW?=
 =?utf-8?B?UXEvMVdJTjJEV25wOFUrWEVVZWNqSVRNZUFJMnJCZkRUZWZ0YWRadysxejgr?=
 =?utf-8?B?UVM4M0gvQVhqV1ZRZERVZ3RaSURXL1ZyMUE5ZFJVQ0VNL096ZVJyWlpSM1FV?=
 =?utf-8?B?dldHeTRoN3Y0MlprVlN2dWxEZS92K3d1NDd5UzJxMmxJbEZlSS9vQ3dIVFNE?=
 =?utf-8?B?WWo0TnRRSDV5MzMzNFVyWjZiK21PY21XNDZCK0dFWXd6elBQb09BcWp0bk5v?=
 =?utf-8?B?Z2EwTi9JeXh3OUpXdzA3dnBJNmNUUVBIWU1aMzNRUG95ajlYSHQ0MnRsRXJC?=
 =?utf-8?B?YUxiK3pMSlFJVXJvZE1KQVl0RldGRDJUcTlMTEErZG1hUU8rWE9sT0wwWDRu?=
 =?utf-8?B?Zm5pd0NKZXp6MzFveStkeDJIWTZZdlYyanBOQXhWYVJMZjBQbFhnMlVPUjY1?=
 =?utf-8?B?NFFEU2lkUUdyQ2d2ZGwvYnY2RGlLTXQzbXY0b1BRU1RUSUNDaWZlUFZuN0xZ?=
 =?utf-8?B?QmlFOFRpV2dHZXFKYmo2d1VEQWhyVVpaU29GSVh1UktIWG14cnNFOWVuSnkw?=
 =?utf-8?B?aTdUd3ZxdnRvQWZNcmxlTG5KdjlXTFhjMHdwa2FBaVo3MzZaWXBSaEVsa3Jq?=
 =?utf-8?B?NmRnS1N4MDVKMFljZ1h6bVpGcXNPdStMZmNqQ3l0N3owcmprZXVxaEJtS21i?=
 =?utf-8?B?VmVKY2MrRUhqRjNWalhoVjZ5UEhzZFRycU9tSnhLVElWZFBoSUJWa0hxTVFa?=
 =?utf-8?B?WHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e3923f92-cd2e-416f-cfd5-08dbf8356c62
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2023 21:34:14.0110 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0yZU/BWBjPSHjZE8UKlG/fLjPfBmpBEJjVXt2DXNtKeYH9nuQqwoVol6+iAJmMA57SoiZI/5tWZvpwE8S5eagtXqluOtvJgg7laH0ipkZNc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6811
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702071257; x=1733607257;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7hp8Y7ST/nkoORWDbgKBSfxVYNRVzLCxw1NoC+0h+B4=;
 b=Uk++x3hqOvFN1g4GNfSu3Pskbq9OyAOOeFqEPY3WHbsx5ZZd0pWF7k2X
 nTYbKIiDsaw9PKBgsdo4V13jUJ7WLO1MBrf0ZRsrpSSl0wDO49tAtAA+a
 unPhHrXgcgoLKFfNEz90zyAG9MHvuCzqd63hJ+NwOx+fiu1FZ0Tpqbe2c
 Clve224W+V01h1TYJaUcsste7BWkc/WWU4DA+mwZk4vxik8EEq0enG9Dt
 yXRdyQidTZhCTIAE2oKjNSJEy7rm2vfmxraxE6CtGOtDnr843neUBK3ng
 PUmqdav/PNOW1/ia9I+cHIq1RnTqxLYVJPFINXO8NYqIvm4tSD4MKzyVi
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Uk++x3hq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/7] Add PFCP filter
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
Cc: andy@kernel.org, michal.swiatkowski@linux.intel.com,
 wojciech.drewek@intel.com, idosch@nvidia.com, jesse.brandeburg@intel.com,
 aleksander.lobakin@intel.com, kuba@kernel.org, netdev@vger.kernel.org,
 simon.horman@corigine.com, jiri@resnulli.us, pabeni@redhat.com,
 davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 12/7/2023 8:49 AM, Marcin Szycik wrote:
> Add support for creating PFCP filters in switchdev mode. Add pfcp module
> that allows to create a PFCP-type netdev. The netdev then can be passed to
> tc when creating a filter to indicate that PFCP filter should be created.
> 
> To add a PFCP filter, a special netdev must be created and passed to tc
> command:
> 
>    ip link add pfcp0 type pfcp
>    tc filter add dev eth0 ingress prio 1 flower pfcp_opts \
>      1:12ab/ff:fffffffffffffff0 skip_hw action mirred egress redirect \
>      dev pfcp0
> 
> Changes in iproute2 [1] are required to use pfcp_opts in tc.
> 
> ICE COMMS package is required as it contains PFCP profiles.
> 
> Part of this patchset modifies IP_TUNNEL_*_OPTs, which were previously
> stored in a __be16. All possible values have already been used, making it
> impossible to add new ones.
> 
> [1] https://lore.kernel.org/netdev/20230614091758.11180-1-marcin.szycik@linux.intel.com
> ---
> This patchset should be applied on top of the "boys" tree [2], as it
> depends on recent bitmap changes.

Is this for comment only (RFC)? This doesn't seem to apply to iwl-next 
and if this based on, and has dependencies from, another tree, I can't 
apply them here.

> [2] https://github.com/norov/linux/commits/boys
> ---
> v3: https://lore.kernel.org/intel-wired-lan/20230721071532.613888-1-marcin.szycik@linux.intel.com
> v2: https://lore.kernel.org/intel-wired-lan/20230607112606.15899-1-marcin.szycik@linux.intel.com
> v1: https://lore.kernel.org/intel-wired-lan/20230601131929.294667-1-marcin.szycik@linux.intel.com
> ---
> 
> Alexander Lobakin (3):
>    ip_tunnel: use a separate struct to store tunnel params in the kernel
>    ip_tunnel: convert __be16 tunnel flags to bitmaps
>    lib/bitmap: add tests for IP tunnel flags conversion helpers
> 
> Marcin Szycik (2):
>    ice: refactor ICE_TC_FLWR_FIELD_ENC_OPTS
>    ice: Add support for PFCP hardware offload in switchdev
> 
> Michal Swiatkowski (1):
>    pfcp: always set pfcp metadata
> 
> Wojciech Drewek (1):
>    pfcp: add PFCP module
> 
>   drivers/net/Kconfig                           |  13 +
>   drivers/net/Makefile                          |   1 +
>   drivers/net/bareudp.c                         |  19 +-
>   drivers/net/ethernet/intel/ice/ice_ddp.c      |   9 +
>   .../net/ethernet/intel/ice/ice_flex_type.h    |   4 +-
>   .../ethernet/intel/ice/ice_protocol_type.h    |  12 +
>   drivers/net/ethernet/intel/ice/ice_switch.c   |  85 +++++
>   drivers/net/ethernet/intel/ice/ice_switch.h   |   2 +
>   drivers/net/ethernet/intel/ice/ice_tc_lib.c   |  68 +++-
>   drivers/net/ethernet/intel/ice/ice_tc_lib.h   |   8 +-
>   .../ethernet/mellanox/mlx5/core/en/tc_tun.h   |   2 +-
>   .../mellanox/mlx5/core/en/tc_tun_encap.c      |   6 +-
>   .../mellanox/mlx5/core/en/tc_tun_geneve.c     |  12 +-
>   .../mellanox/mlx5/core/en/tc_tun_gre.c        |   8 +-
>   .../mellanox/mlx5/core/en/tc_tun_vxlan.c      |   9 +-
>   .../net/ethernet/mellanox/mlx5/core/en_tc.c   |  16 +-
>   .../ethernet/mellanox/mlxsw/spectrum_ipip.c   |  56 ++--
>   .../ethernet/mellanox/mlxsw/spectrum_ipip.h   |   2 +-
>   .../ethernet/mellanox/mlxsw/spectrum_span.c   |  10 +-
>   .../ethernet/netronome/nfp/flower/action.c    |  27 +-
>   drivers/net/geneve.c                          |  44 ++-
>   drivers/net/pfcp.c                            | 302 ++++++++++++++++++
>   drivers/net/vxlan/vxlan_core.c                |  14 +-
>   include/linux/netdevice.h                     |   7 +-
>   include/net/dst_metadata.h                    |  10 +-
>   include/net/flow_dissector.h                  |   2 +-
>   include/net/gre.h                             |  70 ++--
>   include/net/ip6_tunnel.h                      |   4 +-
>   include/net/ip_tunnels.h                      | 139 ++++++--
>   include/net/pfcp.h                            |  90 ++++++
>   include/net/udp_tunnel.h                      |   4 +-
>   include/uapi/linux/if_tunnel.h                |  36 +++
>   include/uapi/linux/pkt_cls.h                  |  14 +
>   lib/test_bitmap.c                             | 100 ++++++
>   net/bridge/br_vlan_tunnel.c                   |   9 +-
>   net/core/filter.c                             |  26 +-
>   net/core/flow_dissector.c                     |  20 +-
>   net/ipv4/fou_bpf.c                            |   2 +-
>   net/ipv4/gre_demux.c                          |   2 +-
>   net/ipv4/ip_gre.c                             | 144 +++++----
>   net/ipv4/ip_tunnel.c                          | 109 +++++--
>   net/ipv4/ip_tunnel_core.c                     |  82 +++--
>   net/ipv4/ip_vti.c                             |  41 ++-
>   net/ipv4/ipip.c                               |  33 +-
>   net/ipv4/ipmr.c                               |   2 +-
>   net/ipv4/udp_tunnel_core.c                    |   5 +-
>   net/ipv6/addrconf.c                           |   3 +-
>   net/ipv6/ip6_gre.c                            |  85 ++---
>   net/ipv6/ip6_tunnel.c                         |  14 +-
>   net/ipv6/sit.c                                |  38 ++-
>   net/netfilter/ipvs/ip_vs_core.c               |   6 +-
>   net/netfilter/ipvs/ip_vs_xmit.c               |  20 +-
>   net/netfilter/nft_tunnel.c                    |  44 +--
>   net/openvswitch/flow_netlink.c                |  61 ++--
>   net/psample/psample.c                         |  26 +-
>   net/sched/act_tunnel_key.c                    |  36 +--
>   net/sched/cls_flower.c                        | 134 +++++++-
>   57 files changed, 1652 insertions(+), 495 deletions(-)
>   create mode 100644 drivers/net/pfcp.c
>   create mode 100644 include/net/pfcp.h
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
