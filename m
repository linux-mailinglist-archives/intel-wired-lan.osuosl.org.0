Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A9397F07E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Sep 2024 20:23:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E5037403CB;
	Mon, 23 Sep 2024 18:23:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HhaUTT1rFr2m; Mon, 23 Sep 2024 18:23:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8ADCB403EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727115822;
	bh=KEnW7fAa9JACwePSrsPSxfx0imAnBZhsjWmVmOAkaAA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iWtrU54Dp6KPktrxF5vgvnNoAP6f0ECKaxX7q7pGd3CquilOhS90K0WrRaoBb/tMa
	 J11rjlOk/EFT81rkpfQ8I2Pzy3LSJ8HLb6+tNPiK4mL5yQIA7Uk0Qp9X/IeX+gIBrM
	 h/3efsdABUFWx2Jd+H7LaUME5alpuJ8Nq+r7NcPDt1NRIoGoVGmAnCrFRw3DozzyZB
	 N8fVWBfZpPb+7OylEKmsOvDaIdyhttGo5M35JHbC3t77wKM+pKWgrUVKXA3ln3Zc5P
	 2he0UbR8UKsL8X2g7WmFlPvyvNFWKO4RO16xZtoFnDkzeD2FStBllwuDl0FCeqC+eS
	 oOtU4g4NZ6x+g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8ADCB403EF;
	Mon, 23 Sep 2024 18:23:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 40EB81BF341
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2024 18:23:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2F02E80D16
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2024 18:23:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xvu7d5NaXd8O for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Sep 2024 18:23:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B923180CFA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B923180CFA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B923180CFA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2024 18:23:38 +0000 (UTC)
X-CSE-ConnectionGUID: 3aCBFMyiSC+alwK4BgIozw==
X-CSE-MsgGUID: 0S3k2UgfR8OGUN5fBTjYPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="36650859"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="36650859"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:23:39 -0700
X-CSE-ConnectionGUID: nXr+C363Q/a/Gpr3RmvHrw==
X-CSE-MsgGUID: sskfdD6oThqJnT+bf8kaqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="75266517"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Sep 2024 11:23:38 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 23 Sep 2024 11:23:37 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 23 Sep 2024 11:23:37 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 23 Sep 2024 11:23:37 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 23 Sep 2024 11:23:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h5nsD923k/AzhEVcnO8R6zlRpMWD1iYJuYnGCNr3/Ln4lIf68RuD3KdouPzi3TbkqeFA4QaUIe7gBBcqO6dziCuO/B88gisCASqDpaHMzY2i2+3AEu9ktlv4pqvQGL3LEnDYTYZkku2XVxlIKW1r58zpLmLWn29gJJxd1U9qMGCkRmgAeuaQCIrbQizPkB8rqDhWAJxgiz32vuqe3PAnUOALBc3DlDI3x1qwMAK7dIfEXN4fK7CjI8WTGEpApzlLoe0HtfNwLbrLrAXsWdAM93gdEXuRcRv/7roirkRty4saBMNT3mi8XH7IN24fhIufref50i6meUfksy5lE5v41g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KEnW7fAa9JACwePSrsPSxfx0imAnBZhsjWmVmOAkaAA=;
 b=PskMEiBGx573A7+92WeMI4QMR8eHGnLLAARnZTuBGUjT88LzkcZTccU+bWq9bEAEvNQYe5b67ZHWwktsXAdPZ/JbXnaaG2ZGcphzE65ZIoIPmNPrbNqITD6Cq/+hxZJsNLjkY9ozWQbcvN/CruRt3iNW1oPHX5ONpUwpeVLUH18uxD1tYncoB0BN15V92iGv2D2sCocrJhLN/vu5/PyqsG2IsHKzZPLtGN99bxgSHYHWbbw8naUBYcA55Sg03j2/+tjFVzjuxF8DPqhV4iBlEsDFuMbMNXOwVRz91W/k62YV58uIjX69FthPJK6Zgctc1NjSSZ+I2uj5MpiArTViuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by DS0PR11MB7650.namprd11.prod.outlook.com (2603:10b6:8:151::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Mon, 23 Sep
 2024 18:23:33 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%7]) with mapi id 15.20.7982.022; Mon, 23 Sep 2024
 18:23:33 +0000
Message-ID: <65be7465-bca1-fa3d-f549-1849c6188ff2@intel.com>
Date: Mon, 23 Sep 2024 11:23:29 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Markus Elfring <Markus.Elfring@web.de>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>
References: <f3a2dbaf-a280-40c8-bacf-b4f0c9b0b7fe@web.de>
 <58d38533-bccd-4e0e-8c7a-4f7a122ce0d1@intel.com>
 <d9ee8571-208a-45cb-ad51-61926ce23d62@web.de>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <d9ee8571-208a-45cb-ad51-61926ce23d62@web.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0152.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::7) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|DS0PR11MB7650:EE_
X-MS-Office365-Filtering-Correlation-Id: bec8fa3d-6004-4bd7-1d08-08dcdbfcd4e6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eWpXV2pPYWxvaWJ3b0I2SjY1OW96OFBTenJYbjBoNGZ1d3VneTJ3UlNZc3Yr?=
 =?utf-8?B?TjBjeU9STERsZS93aXpVUzc5ZDJtd1E3VjNQejl2b3NOWnR4SS9OV2o3eDhE?=
 =?utf-8?B?WmRveUk4WEdCcG5XMjF0OW94SjJrN2x3TUhVZVp6UnlZZHJjRGdlY28wZGhZ?=
 =?utf-8?B?WFVHNitUSUZiWitoWTBnc0h0aUhrUXA5L3VZMitGcGI0dllMSzVhK1pmNGs1?=
 =?utf-8?B?bThFcHJEWlFQZmlkMkdoZENzUGpkekJEQmNTNDZSN3RJcmtXQ0J1UzQxRmJz?=
 =?utf-8?B?YWx1dStJZ2tVQ01HZ3UyMVFUNnByN2llVEJtUVlETjdYQURSN1dDUEZoTHFP?=
 =?utf-8?B?ZnZ4aE9Md1grYnBYQVpZNWFXcVlXRmNObitmMGNLeVJmbWVXQlpDbDRNTldD?=
 =?utf-8?B?U3JJYXcySkxXWkZOSnh3Qzh5QXV4NVJuVW9EVjZUOUVxRkxIUnRTbzRVd2tj?=
 =?utf-8?B?ampacUduMUZSUHNsWHZWdGQwcmFBb2gvNEp6RCtLbGNXZnhmOW1rcy9UVDFH?=
 =?utf-8?B?NjE5MDBVemV2aW96UVd6cGZmdmQ0OTd1ZS9iU3RtQUIrQUwzUFYyQm5sTU1Z?=
 =?utf-8?B?d1d3RzVpMTdUbFR0b21INW4zbEdpZWpBSE05MjVRdTFVN2YrOWhkaTBtSGZZ?=
 =?utf-8?B?MmFyMlc2L0gyREJHT3JQYTVzVGNrelhYQ1h0UStiRldLQ2JOSzJhOWVTSmwx?=
 =?utf-8?B?bkFSckd0REh2NGV3QW5UY1JDU2paTzdqeVNldWl1aWJyZlpoQ25OL0haL0cy?=
 =?utf-8?B?UUxqYXlybnM1d3BXditacG5nZDRHT3BvdEpFRklNamxYK242c0dJZWFNc1FG?=
 =?utf-8?B?Y2ZpamllTEdzOUR0eU9XR2FoOHVENG5qNE1FbjNEZzJYVEpqTE1hT0tiNzFF?=
 =?utf-8?B?K0UySXJ6cEVvL2ptSzRZblRqSHQ2cEludVQvcys1NVZnNlF6c0tnV0dYZ3da?=
 =?utf-8?B?RUVUVEF6Qk9IZThNRU0wZExUOXl3VEIxK0ZZNXg5c2hhMjdmcnZYckxSL2E4?=
 =?utf-8?B?Mm5MbVJhdW93M2dIbGZJMTN5cjd2Wk9oMnJvMmlUQmlzQ1FmVXRSQWx2ZjZQ?=
 =?utf-8?B?aGNkbEVGVHVxK2Q2RkJQQktFOG8zV0kvZDNpQnBkaW1ZR01vTkxza1lUZ1FE?=
 =?utf-8?B?MjUrMk5TK2NXREJPNEtXaWswRlRKbE1IdUxmbXN4eGZQYmViUkM4RC9lL1p0?=
 =?utf-8?B?VlJ2ZlR3NjJ4ZDU1aHFLczlub2RGVGUwTmZnYjNlRVFyVmVVN2JLU1EzbURu?=
 =?utf-8?B?am9Md3c0ZDEyWVpoM3BRdnNMaGtIcVl6TWFqYUtRVnRjNU9CYzlyQ04xZEZI?=
 =?utf-8?B?N3dMaGJteXZoVFJ0MVR6TzBWUmU3SWJQZTl1STVFek15eDlVNmIydWMzaitv?=
 =?utf-8?B?KzdzRng3V2ljbjI5eFZsYWZVTGM3ZnRqTWxsYVhGODhwVTIyN2Rsd2dhV0hN?=
 =?utf-8?B?aHNtcmJmSzJ3dmx0OUh3RXpIdERrQyt3YXBIUWcxRmVuOW5CL1NiMUlLdzBh?=
 =?utf-8?B?bHlGRXlZdDVJdnZPaDlRWk9IMWpYbE9kZER3WmE3SzJHeWwyZTRZSWxmRGkx?=
 =?utf-8?B?SURiTmhMMkY3d3hSSGcrSGNnazZyMEhQVU45eXpSSmkra2tVVzJCTk9qY09n?=
 =?utf-8?B?VWQyWEpJU1FuVkJNVDBxTVUzczBmamhSRXJuZ0loWlZUaEdJVkNDRU1vMGJy?=
 =?utf-8?B?K2l6QjF1czMzbHB6YjJQSTM2eFdrRksvWmpyZHNKbTl3ZUU4b0hGeFZ3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?elFIdG41RGdsVTRnV3pRUlk5V3U1TjdNYTZFVFJvMXJTU2tEWitiM3djbENr?=
 =?utf-8?B?UFh2K1IwUENHMkRCWVdmMmNzYklCRzZXcTBkcDZhV0sxSzBGQUJRTUQyM09i?=
 =?utf-8?B?N0JqalZBUk5md3dCa1AySTdoSk5IWDUrMFh2aW5FMVVQWUZ5U1ZrVFpITjZD?=
 =?utf-8?B?L3Iwc2xTeitxTlA4K0ZuTXZLOXlIWXZGWjNLb01BejFpUU42UkFOVVNtSG0y?=
 =?utf-8?B?TEhpeG1OVVp0aXZFaFp3UW03WUZjOE1Fd2xCaGx3cStCWThoQmdPSGVNVlRr?=
 =?utf-8?B?SVUxdE1GWXREclI1S3RJd3lGcmJJdlBJd2pObWtBN2tJbHhlWjhEOGFZRits?=
 =?utf-8?B?SFpLRGpyTW5jMDJxUkRZaXlVSUlrMGFYdWNkbzFxQzlmSWNJaEN0RSsyK0dF?=
 =?utf-8?B?QzN3cnhzMDJBK3Bzc0NqdkVaQWRvTDRPUXJuR0FaeThXS01mTXlXQzdDcUhE?=
 =?utf-8?B?UmNhWUM5UVcxNEpGMmV1dEd6N2U0Y25ZUW1Pc2NjcmdZNW9icnh5TUdFVmRa?=
 =?utf-8?B?OFdUazRPOUFjQWN2ekQ1bnVUYVJzcWFrWnZzVGM4N1J4RXZiWG01blRSb1A0?=
 =?utf-8?B?OERsVnh6b1FJRjZKWWt6VmJSb3dkWFZKbm5mNS9VcGtxR2RSeU8rN1dHSWQx?=
 =?utf-8?B?L2NHR0dQWUE0ejd1TU50dW9tQWRkeUlKS2gwR1QyZDg5NmpPV29SOTk3Skky?=
 =?utf-8?B?NWZjR0g4RDVBdDJXQ2JtTHpIRGNDdGtJREExZnJUaTZNNkFyRTJQenorUjVj?=
 =?utf-8?B?dFhobzFnNUpOZ2pkamJhVndqcHlVNi83UC9CUHZqR2owMTVzTGN0RzFxcmpI?=
 =?utf-8?B?TU5kR0FFZ2RIOFBlMGo2OWxLZ2RBS1hYOHVBV1ViMDVpeElkT0szUVBtMUNQ?=
 =?utf-8?B?cjRkblloUE03R3hvOHNrWkN4a3duMUN4RGJ2RkRONmVwVUhWQ3paYjZnK1ZZ?=
 =?utf-8?B?aGVaTndvMUZIa05MSlc4akZIUzA1MEZGZ3BlbFU3K21DZkhzOHRXQWdjRmFs?=
 =?utf-8?B?NC9JNUxRamVXQTF4UzR6STlpNzhUTk1ZYjgxOEZnNmRGMW04RzQvS3RBWkFa?=
 =?utf-8?B?YnNjMzB3c0p2WWFSaTRBRWtJNFlUdmpFUzQ4L2VkQU1ITkNjV2pEVEozUVB0?=
 =?utf-8?B?NlJxaElNamhaZE9jYlBsakRqZVZiR3RabWpHU1RaYVVQSituWVBDbWU4dUVW?=
 =?utf-8?B?VDFTS21PUGx5dzlBaFFQT0IxSHdCQ21jN3R2ZUhKdTF0ekNvQmE4anhkODFE?=
 =?utf-8?B?ekdLeWY0RXd0eTNLNWlPUTNlZ2dnWHZtb2M0SVd6TmxJUmlKQ2UvQlhJZWtx?=
 =?utf-8?B?NDNwK244ZnZtK0x1c0hNS3pmR2RKbzZwUWVMd1lwZjZMRHFNSExVTlZQN0JE?=
 =?utf-8?B?T0JmTldkS25zeThJSzlLWDc4MitHeUMxS3RtdExQRW9aMzlockozaDFDZ214?=
 =?utf-8?B?aW10QjVwUktxcTU2WFlsNE1kL29TRjBMc0FmZXl3SmYyYTVNK2laUXYrZzdK?=
 =?utf-8?B?SjdROGppcS8ydkRFT0k4WkV0cXVhRkNsV3c5TVRiYXJibjc5a1l2UDQ0bC9j?=
 =?utf-8?B?bDVscnFxL05vV1dwbG5ibW5ibmZoMHhacDZ4R2t6TWJBNTdZMHNjOEtWUm9n?=
 =?utf-8?B?M1dNY3BLK2dRUUpHbkhXamU2M0hwN20wY01jMFFMMHZHNjVVWm82TUtZbU9Y?=
 =?utf-8?B?S1JibzhXSE10cEhnVUFVSGU4c2MwVWFhbG13b0d3YjdOUDZBMWtSWWF6eGc5?=
 =?utf-8?B?VW43QjFMM0NjTFNRNHpHSGo1Vnh4a0l0bC8yNGxWb1FSNVRUSWZmM21PQ1p0?=
 =?utf-8?B?cU1Vc2l2YURKU1g2TEpYT3U5Y0tUSVpCZnFNMTRqMk5tUXBIYzBBVXRqVmMv?=
 =?utf-8?B?ZUZoSFUveUxIY2JrOWZjY1V1cU4wRnljU0VXNUN0NmhIVFJNNmpwbzRRZFBM?=
 =?utf-8?B?bk50UTA2QXYzVGRCMXc3dDdkT2JqRDRwUThmZytyNjdMdk5oT01UN051RGFF?=
 =?utf-8?B?V1VybG1DK3NycXFlYkIzaUYxUmxEVnZBTUJMdWVQM1pLZjg4MFZGbHJlMjlS?=
 =?utf-8?B?cWZqclF5MXc1TmV0d2ltV20vZGgra2cxakFZL1E1eW9zL0lVTFVITC9NVnFt?=
 =?utf-8?B?dG5JbHJTS29WaVNDSEFLQjdhUGl4YlluajY2ZEJvT3U5eFg1bXpkYVJjcXlJ?=
 =?utf-8?B?Smc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bec8fa3d-6004-4bd7-1d08-08dcdbfcd4e6
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2024 18:23:33.5633 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cZMfhDFrGUX6c4qI6UQnDLzD3Dn+RTT6u5ATFtWswBRWR6r0XHkXHvGaIA8sg5YPsvVTGslAaFMDxQklNVOeL/NDj518ETu6z8CxJP5TEZc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7650
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727115820; x=1758651820;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UdT57ojdnfihQsxbaaMQBf589IxxnBQYlYvIXstiN8k=;
 b=AisHLWRY0FztMDNx1LF8FaR+OiP1SJ1BFriYga7ZA22J96RPDFuCbce0
 XXrmLPvDrSDU8Z+qAgPd91zjsrxJ+KTlm7Q3Ltk6q5uwYqfIAQA40PsmH
 ar2xpDPFgqTJ+Xf0YWsiIiClrk1ZUQ30DTA7fVsssqIieKPZ8/BA9D928
 RzWjLFj8nh63cvopLbg9oPZD0hxrUodCsmUfvFlJ1evpB6e4MTPRwL1G6
 SXBdhuYf2/2wgNOTftE2dcehGaOLqcjF+3Xn1NDeoqdRfLEEzTSPXKPBy
 sTpEDZ5ya4gia3SiQCyFKnimouuuFMrxlmmNiG0XZBYDUo1zNjxze1iCw
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AisHLWRY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] ice: Use common error handling code in two
 functions
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
Cc: Richard Cochran <richardcochran@gmail.com>, Karol
 Kolacinski <karol.kolacinski@intel.com>, LKML <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/20/2024 12:05 AM, Markus Elfring wrote:
>>> Add jump targets so that a bit of exception handling can be better reused
>>> at the end of two function implementations.
>>
>> Thank you for contribution, the change is fine,
> 
> Thanks for this positive feedback.
> 
> 
>>                                                  but not as a bugfix.
> 
> Would you like to qualify my update suggestion as a correction for
> a coding style issue?
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/coding-style.rst?h=v6.11#n526

It can go to -next to correct the coding style, however, for -net it 
should be user visible bugs.

>> Please send as a [iwl-next], when the submission window opens.
> 
> Will a patch resend really be needed for the proposed adjustment?

I'll go ahead and apply this to iwl-next without a re-send, but please 
keep Przemek's comments in mind for future submissions.

Thanks,
Tony
