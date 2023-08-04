Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A7A770230
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Aug 2023 15:48:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 887B841FE9;
	Fri,  4 Aug 2023 13:48:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 887B841FE9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691156937;
	bh=c9Fs2GXnmg6Z0CS7vQRkeElNsKIQJ8BxzQ59Ya0lcmA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mXZoqF8zQZD211rn7k1pqe+Q5BITwZVe/ngyDaLoHT9nz2EMyuAP4c/htUqTQqDci
	 zriWw4cQRxl8r9nJi+S6nTYwshjY+jnozRT0Q2RQpeIqEIxeDXE3PfQmheQxeZf/dA
	 +EOIls0LPJlfXd+OSzZt6Pvg5scoFp72iYUfJZ1IWewU7gnuWj96n4VDEaa7R4YKUD
	 UCKx3kDi9KZg7wd5pPyCNAsa+NuXEr4VmxrqhDmAKNQDdKjmTzP0/raWi7YndcgTkR
	 RhJGRynhsuYnq+ZA2KnOYplSPppNfvymIaVzig9vWsqCtNRfxEHJQzz2tjxbI59c41
	 S3869zSRBDMLw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iKTKyDdn7TYx; Fri,  4 Aug 2023 13:48:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1067040A00;
	Fri,  4 Aug 2023 13:48:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1067040A00
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7EBE91BF27E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 13:48:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7C79560BF4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 13:48:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C79560BF4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6ia2i_0rHkRL for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Aug 2023 13:48:18 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5289C60A6B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 13:48:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5289C60A6B
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="434005609"
X-IronPort-AV: E=Sophos;i="6.01,255,1684825200"; d="scan'208";a="434005609"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 06:48:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="733262734"
X-IronPort-AV: E=Sophos;i="6.01,255,1684825200"; d="scan'208";a="733262734"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 04 Aug 2023 06:48:09 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 4 Aug 2023 06:48:08 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 4 Aug 2023 06:48:08 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 4 Aug 2023 06:48:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XDVqmboYBkVDABkF3YzMdeTi0cS1EYuzHdgWhorYG1AurCub+takTLCsqhOM59brg3xVqgoWOPLzRJdaYLyCJG88SU7F8/cnES0JmwFRLVy2PWm4zQ/ZKF/8/iPsLhXbbZ0Q9FK5LHNr82JvX+Z0avsFoCzKXcGrWOL7jWAjd01aashqYRQG+xfdcbrz6OXOGZSWKehkmJtiVfUAid+ZaRt/1H5Fjy+y1Ag9NEYCKs1HM0ttHaOtj7uRvuBOzGASpAu644f2LzPT4pT0wq6z6mC0Gd2NIMIS+mrc+mmeRVHZ263q+5CASOgTb6KwHbawJF+jAZQDJscVkEa4Jim78w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P/HofAUmEwtihJNXiSSZ71j62xM9tScEzpOsCge/Ags=;
 b=QSLXk8hz7GwVR+180sS+0n6G44v/1QHi21psWB2GGzX0gNeeLCtNY4BSh5+YRTfu9w07E98eizqJoqmLYXAm2GtbW4ew7vofZovsV+g47lyOKPhO31Jq1uABJzAdtm+w+FcnOMulYkCP15a0MINqZgZyrv2DN+fhHuvYIw0HxOSJVg1FFP6uq+2iuJh6n/8Nfd9GNBZUUK26trqGBsb78Eh/CBP9boP2F4k23bzvtSAJGA0NoF4F7AEFIhnUQJYWNtbtM9h52QKwykYvIFlVml2CaSN67JfLPWOLltPr8WnlyIHZpqjBx2rguSR+521l1PIm3tEmmvKA4VVRbRQ5ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by SA1PR11MB6967.namprd11.prod.outlook.com (2603:10b6:806:2bb::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.47; Fri, 4 Aug
 2023 13:48:06 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7ed4:d535:7f41:de71]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7ed4:d535:7f41:de71%6]) with mapi id 15.20.6652.021; Fri, 4 Aug 2023
 13:48:06 +0000
Message-ID: <e0cb5bf2-2278-b83f-c45c-0556927787a6@intel.com>
Date: Fri, 4 Aug 2023 15:47:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Kees Cook <keescook@chromium.org>
References: <20230801111923.118268-1-przemyslaw.kitszel@intel.com>
 <20230801111923.118268-2-przemyslaw.kitszel@intel.com>
 <202308011403.E0A8D25CE@keescook>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <202308011403.E0A8D25CE@keescook>
X-ClientProxiedBy: FR3P281CA0191.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a4::9) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|SA1PR11MB6967:EE_
X-MS-Office365-Filtering-Correlation-Id: fc307b50-0a1d-4f72-fce6-08db94f16e1e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AhxDrtfrhhr+zNjhZOBWNXhnplCcCIQ1Lq27cTSe6B2UGF/pHjkXi+9J1a02MpJuTDP/ns8ctgAoYXpXXakNlRxEFEUtmDyjfMUmRdrY9gYuQJEPhNbQu0+0GYXOprbpyl1uPY9M/8yTCJuC/6DzrSCLvFVjByWR+O76QSeoSpLY1SDFnyuV+5u+oQJc1VgUuiwT4vCGIM3qhShAet5NifeE8ANUc5tOh9d821a+/NtkmGhqnsxbjk9EejfZU4u2QLsP+Ad6elHO05Tu7OgHRVfXnnE0TQHSyyN3m2IqLOW7RDv4TQvbRLNEn39hiw7FqEH4nqV0A/8I9fJIgEBEAfX/lYxSRfMN/IQzfbFv7/zcoNY7RsLqQIVd6EsVolSWc3jr4hUG3wFm96QXCtD2ZH74v8Ol9G573WzYzrNdaeU/m/J++MCcxcJYqwoAF/yqRUQX9c5Lh1NPRyF5qtsaums4B3jlTyoD4bjn3Otlukqc1AOyZlBrUTbFHqQL4mJoCV+mGP5PXamPYo1TOk8fmkYQ/Z7GvW3r+3CLIISoxzzt7PxY8Cg6xEmmQPFduVTr77yoJT2MBDDs67lKSUDjtCddsiC8ARWBLilRsN0qNsY/tv3/XJxyU5S++F7PD9ix3+2U07xyLczersa/d+g2Jg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(39860400002)(136003)(376002)(366004)(451199021)(1800799003)(186006)(2616005)(107886003)(53546011)(26005)(6506007)(8676002)(316002)(66556008)(2906002)(5660300002)(66946007)(66476007)(6916009)(4326008)(41300700001)(8936002)(6486002)(6512007)(6666004)(966005)(54906003)(478600001)(38100700002)(82960400001)(31696002)(86362001)(36756003)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TzJkZWRCUFhGZ0RCaVIrNDhJcXlSdUIycWVtUWdmQ3JLRHhvMHIyb2NlekFt?=
 =?utf-8?B?dDFsZlpycGJ5SEFSbDl6YmZDTWdZM2Y2bENIaUpmVU1yd2JJcEtMS3Iyd0V6?=
 =?utf-8?B?ZEFTV0dTbEUwQnNrQXRYeEEySHYwU3dQRFRrTXc2OU51SjJxTXFodXl4M0M2?=
 =?utf-8?B?SEsxLzllaTI2eXgrMnphdk9nWHhJR21kcFErZktzeWw5RW5lRm9xWXMxTElG?=
 =?utf-8?B?Y21VU09KeWRQSzgzWTNvWDNKQTdURFhqTitEWkpDQXg1dDIxRmIxeWVlVWk5?=
 =?utf-8?B?d3V4L09Kc1lWc3Y2dVFqZlg3RFJHbG84ZEpGSTVmS285Qyt0V0liYXluZ2lh?=
 =?utf-8?B?dnpUSnhyTnZvbUxGUFI2WXhpUTZ6Vk9BNkpUVmhXeDdIQkFtRWhiK2YzVTFO?=
 =?utf-8?B?RDJITk55bFlNS0I3dllaekZ5L0d0bEZZY2UrQzVSWklwa3FYOURoZjByQlNk?=
 =?utf-8?B?ajhYUXBrY3hMd2Jyc1BlQVlyQTNDZTBrK29aNzRBSDFqclhtay92S0dlcFZn?=
 =?utf-8?B?cjNENzFmNEdGUFEwRHlzTCtMNnBPaHoyREp5dTR4YW1Ubk9HV3Q3Zkd3QXdz?=
 =?utf-8?B?eHdycXRtaU9ock1uR3FWenJvdXdsd3Rmb0JrV1MrSGhDS3duK3NHbzNuL1Zh?=
 =?utf-8?B?b2h3RUxWTnNCeHRGWTFNbGJLZWxZVnNrRDJ1elNqbmZJL1k1aUlSWk9OeUdF?=
 =?utf-8?B?Vm5wU25wN1FZeVJPdnV3ajJQWGc1WjZ0OU1TZ3pEbWJkUTlvUEdWZFR1eXZn?=
 =?utf-8?B?ZFlqZE5FdWRaK1dJYjFjc08rTzROYW1Samp4VVJMUTlZVFcybnRrTnhmcmZM?=
 =?utf-8?B?dDNpZWZzUE40QW4vVU5NZTdrZUtVYmtjQktESW9GYW42anFPbnBDaGUvZkhZ?=
 =?utf-8?B?S3ZVbjVqWlRZL2dGWEpDRmErbWo0dEdRazRtSUM0VjlJdGpPcWYzRy9xb09Y?=
 =?utf-8?B?MDJsWlBBZVkrOEh2VWl6YU1WbWc1WDUyMkRnUGlFUWFRalNYakRoRWhSenUv?=
 =?utf-8?B?UWFnV2xuM0Z2b1M1TkU0eTRJcWVvN3kxamo1K2w4QjF1Z3RYQVhMTkVid2cx?=
 =?utf-8?B?ckRsNS9pSzBJVjFSVkNRUzIyajZRZHNWMEtadjlYM0NtdndJejQ2K0Nka0pV?=
 =?utf-8?B?OWkxMUcyMGFwU0NGcjFDSHBCQytHT2dQUHVxMjVpYVY4M1Q2bDR2ZEZNQU5Y?=
 =?utf-8?B?S3ZCUnVCK3N0WGJLQzA2MFZVamVJSlUweWJzYWcyTFdPR1hEVjBueWE5Y00v?=
 =?utf-8?B?TU1xWWlPa3AyV0kxZ3ZsUk8xV2xIeXRpYzNMUFVhWHcyNjhRKy83eDU5MGNr?=
 =?utf-8?B?dXBzUDJmdWlHWDJRRUVqRjJQRU1qeXNvUGNzcHVhZVdSaVdWZmdhR24yUVY0?=
 =?utf-8?B?aHlOR1hpUThwNlFQN081VWpybkhOOElhSzZXUEJOOEhjRjdOUHovNHlqcHpy?=
 =?utf-8?B?Nk9NMHMyYmlsMGNSWTZzOEhiSzVGUm9kUEhybkRZQmQvYnJLUlA0cnQ3YU82?=
 =?utf-8?B?VzBCYnBDTTdwSDAybFpmR3ZRbUdqOUJtVnZ6OFdxSklPWmpwQTNZa0FlWmtU?=
 =?utf-8?B?MXdHK2hCMlFoMjV0Z2NYWlZ4RGI0REhZTHBmd3YyMVJ4NUZ6U2NmVjJFM1Vo?=
 =?utf-8?B?cm1iN0tvNEFTRHU1b0xDRkZQTTgvWlVCTTIrOHRuMUNvS0VwTlFqZEtvNnl1?=
 =?utf-8?B?S25lT2VTKzUzbis4aXhtV1R6SGhyRnpIUGhuUkE2bGpjaW56c0xLNk5GMGIv?=
 =?utf-8?B?RDQ2RjI1c01LNTZRQUlaQ3ZTaUZuNVE1b2UyVXdBdjFxUm95WWhnTGZ2TEZy?=
 =?utf-8?B?WkxKSnVnS014YkRrUEs0ai83NE1vRUhOWjNtSDJGWklSOWp2bWhDK2VIMWFC?=
 =?utf-8?B?QzI3R2RVOFpaeFhUREJSWTZ6eFVKbS8xWXNGRG1icldmeldnUnMra2F6YnlK?=
 =?utf-8?B?WUR3eXdZME1TcHM5N25lRERmZElTZWswdUJaa0ZrcWI5NWtTNEhteXlHdVVX?=
 =?utf-8?B?WWlyWDNBRTZ4alV1NWVVYTBnRGUwQ1NRMkQ2S0EyTjFnTEZtY2VOM2w1SXhU?=
 =?utf-8?B?M2xjTjlHU1FzZUJsRk9KZC82OVBKKzBtdExGR0ZBVC9pR0poN0h2S1pJYU5Z?=
 =?utf-8?B?MGJrNEdCeEJGbU5heU9XT25mVEorVTRDeVYzRkUxRG1sdldwTXExZThBZDM2?=
 =?utf-8?B?SGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fc307b50-0a1d-4f72-fce6-08db94f16e1e
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2023 13:48:06.1642 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k9IiGkI0a404YuRUi8RsZoX1uc07pxM02kB4Avab8Bjnyo0cuXC2nV2cdiENdDs4CEmMEuOjDIdc3I29FBtdoBhax36RXKTabAc7UsXwkOk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6967
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691156898; x=1722692898;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=v++OkvTBZZoPbY+kfAO0WostFgeHg/5ch2BEOR8c89k=;
 b=HLtLk9AMnkxFf+wysHDTBCeAgOfnoyw0D4R5brRZU10BY25QG2IR5wmJ
 FKMiuu4qp2jW/N6G1/VvKsu6Q8E1a82AC45XLzK5q9hW8Ibre0LrBQF/o
 71ZXXD1wOda9YofH1uGOViZTQhjm3VEDXWdfwm+vNOrJhjWLqcldqyvlH
 vc7gj2f0zbNnY2HeFox3ufB7QL9Z43K5LKXfFAJkD189ALiJ0BZAqIyho
 bXGyyeTR/TAdI6Teu8s/g2TN4pMl7/hdvwvgX4tBH67544Ysm26uvNl9l
 U0eKxLkbr10dPmI7SnSigrAL6GKTha8q1OSrkIwpD5Cly4UyUrz5RSKB6
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HLtLk9AM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC net-next 1/2] overflow: add
 DECLARE_FLEX() for on-stack allocs
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/2/23 00:31, Kees Cook wrote:

[...]

> Initially I was struggling to make __counted_by work, but it seems we can
> use an initializer for that member, as long as we don't touch the flexible
> array member in the initializer. So we just need to add the counted-by
> member to the macro, and use a union to do the initialization. And if
> we take the address of the union (and not the struct within it), the
> compiler will see the correct object size with __builtin_object_size:
> 
> #define DEFINE_FLEX(type, name, flex, counter, count) \
>      union { \
>          u8   bytes[struct_size_t(type, flex, count)]; \
>          type obj; \
>      } name##_u __aligned(_Alignof(type)) = { .obj.counter = count }; \
>      /* take address of whole union to get the correct __builtin_object_size */ \
>      type *name = (type *)&name##_u
> 
> i.e. __builtin_object_size(name, 1) (as used by FORTIFY_SOURCE, etc)
> works correctly here, but breaks (sees a zero-sized flex array member)
> if this macro ends with:
> 
>      type *name = &name##_u.obj

__builtin_object_size(name, 0) works fine for both versions (with and 
without .obj at the end)

however it does not work for builds without -O2 switch, so 
struct_size_t() is rather a way to go :/

> 
> 
> -Kees
> 
> [1] https://git.kernel.org/linus/dd06e72e68bcb4070ef211be100d2896e236c8fb
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
