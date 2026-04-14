Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yMO/LLiR3WkLfwkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 03:00:40 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A7B3F4B47
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 03:00:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 63CA9427FC;
	Tue, 14 Apr 2026 01:00:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A0_POQgvdlcL; Tue, 14 Apr 2026 01:00:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C89CD427EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776128437;
	bh=pblcjKaB1vQsojRX6AX8UdUuUfXvS0jeR55S//TxSLs=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FxUVsAzxLAl26JBrAx2PtIdW+4dS8WchPAjU534dYlJesCqy5YDoboUBo/BT/GwG3
	 poZVcKF8/gSxe8DiplNXtqbYTJ+6mHhDb5DpzDC/utxtrbUvjJlkyq6kLRBnJ448N3
	 qsnlYN8xcnFgiUtSTN5Fk429Tm0/jNfU40sLi4BmP8+MbU28ET20mhvM7C2gmywPho
	 qrH+BYMs/JbH3zZxaGltGRDiEDXv9YFv4NPE6teKSBlbKuQ6KAwQ2ajRd7qAJENs7P
	 lJ01rcubUSDtZTjFJ5miCSwYynCnKxPxsLmvB3Q28EwPonsDsP0SrLuCUuvhR/5h81
	 BsG2Dm0WIEMrg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C89CD427EA;
	Tue, 14 Apr 2026 01:00:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 68490283
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 01:00:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5A3FC427E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 01:00:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jcoybwH7Qsmv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 01:00:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6E2A6427E3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6E2A6427E3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6E2A6427E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 01:00:35 +0000 (UTC)
X-CSE-ConnectionGUID: 9BqTkqvTTCSgDsaw4Ux62Q==
X-CSE-MsgGUID: +BfExt4hQv6SC18KC7SdcQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="76981449"
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="76981449"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 18:00:34 -0700
X-CSE-ConnectionGUID: 4X19zRpUT6OUTpZvGUYUiA==
X-CSE-MsgGUID: OjIDj2p9RAKvwsJSzXy8lQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="230177422"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 18:00:35 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 18:00:33 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 13 Apr 2026 18:00:33 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.4) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 18:00:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IgqhTgmMeGby3nZDtXbKLrJkuR63UnSJyozjTeMMazbEamHKQqpzPbppzcNlA9bQZKLmDwTudpyqYzz1yf4LVMuPvfOx2UPSLHEHn7C2arQHxJ9UA0dk7ijr2KmiTFX08wCna25wC+PkF2vNf9cV2r2NlD4mL23kDH7lH88Tgu+CHcclZ4qUEI3xUtwgjMTnaHbV/5uM3cCyAsndHwE5+EKpCijE395WduN7jVrAl5FSN+yjg6qHCT+o7avS3wg1v5vIsMD8/IBLcXqVQMJd3y1uyGq/a9NEplXwZ9BPn6yaUsuHDADUxX+jdIeMIUSFMrYZWKcUhJJjOP25gD3eWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pblcjKaB1vQsojRX6AX8UdUuUfXvS0jeR55S//TxSLs=;
 b=gXCUxSSAXl10rgAvwutJcSbBziUaFMhdy4TAD6ej9Vpi2F5oU0EEzN0PCAcrv2nZP2X7ch2JMwOMZsX16VGLaO9u6hwEh6UDhu7ccf/N+oKcaRAPnQftm8HvJFR9dHyDAvu8WdsbcdvW5vwFn2g/5g3m2jpMNwMgdBnq7sFuBs4naM6GetP6EJfrTUUAykZ5WBrnLQeGnJMG0vZ+eYT8rO/ov4T9NS/LjNaNACJzo4GoTf8YM9HkXtYIPn3vLxstOWpyZ6A/APIuVvZTaJFzr4bFhb8Xm+c9v5YZgAKUh+hwoZuBchiP161TlKZlsjH1FwqDZgKDJOhk5yKkNgSF3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 SA2PR11MB4842.namprd11.prod.outlook.com (2603:10b6:806:f8::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9745.41; Tue, 14 Apr 2026 01:00:31 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9818.014; Tue, 14 Apr 2026
 01:00:31 +0000
Message-ID: <dda1f0f3-f57b-418a-93e6-2cdaa1d2ef35@intel.com>
Date: Mon, 13 Apr 2026 18:00:28 -0700
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <anthony.l.nguyen@intel.com>,
 <netdev@vger.kernel.org>, Paul Greenwalt <paul.greenwalt@intel.com>
References: <20260408131154.2661818-1-aleksandr.loktionov@intel.com>
 <20260408131154.2661818-3-aleksandr.loktionov@intel.com>
 <20260413103050.GL469338@kernel.org>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260413103050.GL469338@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0121.namprd04.prod.outlook.com
 (2603:10b6:303:84::6) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|SA2PR11MB4842:EE_
X-MS-Office365-Filtering-Correlation-Id: 45f697a3-c89f-4262-b3af-08de99c13990
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: FX8k562wzI6SxJQykGEjGvw+rqi+kHY6oKBnJ5JfOMPaWVk+RCthq5lByHiqNZED2JKHCKfYOlLnEe54ej26A9vwP457TdbqsqKMzQZxOiAUPiKV1Ysn+72B4viQB/WWbLuzhD7jd1e6pgba79GE1odcr3VyTvGkURj7l3QRrJXgrsPkn6rqc/Ktt/BIZboNYuhrdjlI5ej1GjLWO/19ekx9+TgpLddVPdTrXHtPwEB2tI4LoxUX3k1mMln63X5iEyS3dohZgx6SsII6ctWc6gSuE8jWAwWJVy5Ks75/XsAWbqMstmz61gfd3xpU7Drw5prIMPE2UsBADZi+9YRqKmwB9OFKFsDMuCnIn9VdpbeWCPOqYLyj5VmNgYOTeO8hwP8ItkABxgw8taj+NxX7Gt/DSmaXyE1uiufu8U0rr1pdLnACP4Jaw3PU7SEK5U0ejS6NodbVyUaZJHtItZk2Ot1nMlO8M6LNUXtpTs8lvx2N3WCW2WPZ1QHUm/CqusaxSC62YgVAUrRu+zJdLE+MJovpGQMD5TZx5J/mIyW/dWzcAt5SJDqBH0MEQ31I6ikYVP5RfGbXFMQ30sx5QK9QpfxfcgFX/v/PvJXO6ON3PTcGYrtC7BlnHg0+H1IQK8id8YA/E92QDLfDpRO90ViCh8o1F3RFWYPm3F9F8sXhHbeSTab20LDwQ3MKSipyceO2EG61weSPW/UUh+R14uamG+LkcVH9vgUBp41OfubdW4U=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eTJyMDVDQ2VrVVJvNlpoL1Z2ZGdlN3dBemMxTDArVVRleHVNQldJQkJpYnM5?=
 =?utf-8?B?Y2g2bzdoZlNjbWxJRHRuZWZJWS8ybTFLTXROc1IvZGtSbG1jRzRqeklqSkN3?=
 =?utf-8?B?WVZOZ1JWUURUTUlpRkJrMm9UcCtnM0xTeGRTa2NrRjJ0MXI2VnQ4eDQwVzhx?=
 =?utf-8?B?ektiOS9ZTHhtWmJYeWxXaUpaM1NCSE1HMDI1d1JSWVBDWjdRR1RFQ2hQcS9x?=
 =?utf-8?B?bGhvdXFRdURZb2xtalh3MGF6ZVpwZm95eGI3MStNUnY5dmE1WDFPWi9IMCtU?=
 =?utf-8?B?ZEdVZWhsVzhkYmdLMVhtQWxmSlpMU3RKc0VhU2UxYzhnenlFSjZna0ZaMGxj?=
 =?utf-8?B?ckF6YkQzWGZSTXpQcHR6Mmd3S0lQM1lUdDFWRXVIcm01ZS96NDhFSEh4dExU?=
 =?utf-8?B?MHN5ZGI3QUgyVy80UVJRenZLM2U3a0QxcC9OdGJYYmd2b0JMalBsY3JrdVJS?=
 =?utf-8?B?R3lXLzc0RG11ZHkydWJNVHFpTGQzbC9QOW5uOEZmZVVMWC95U2JsMFFwTlgy?=
 =?utf-8?B?cHR1ZlNJMGo5ei9ZRVg5V2VMaEdndXhGYVozV05pb2V5SFRNL1ZUY0ROVkZK?=
 =?utf-8?B?dW5iSDdqc0xaUEh6cmhCaS9xZWovbVhMY0JzTlVibTkxWVdmSjNoZHFIYVVv?=
 =?utf-8?B?Y2pGT05KNElRQlFhVE8zajJnY0R4NGlGTFo3eUdrUVkveTJWUkFTaTNzclJB?=
 =?utf-8?B?cWdyS05Rb29NWU8yMHphbXhMU1JhWVZiN0Z1bVhyYXBVTUZld3JRZjRJU2F0?=
 =?utf-8?B?OGZnKzBVMFdseEhHbzEwL1lySnoxaFlIa2R4RnZ1dmJ4b2MyMEpiQ2Q5UmNL?=
 =?utf-8?B?RC9HeXhsRXcwVzN0QVd6SVpsLzJCdU04U01HaGJXZDdrYWw4blp1U0t3ekxp?=
 =?utf-8?B?djk4MUpZTEFNZUt6UWhTR2tvUWFoNktWWWlSN3puaWtOQ3RvclMwbjZTK0dP?=
 =?utf-8?B?MXhOWC8weWFyMllJTWsvaWV6YytuRkNXc3N3NndTb1VXOXVmdkM1UjBsMFRH?=
 =?utf-8?B?VktDdFJtTHZmSmp4YWdNeENzSzd0WHhMc2c0KzY5QUtWejJlNGp0UGRDc3ph?=
 =?utf-8?B?TFhsUGt4dkcvUjNENUJKY0FsdUh0dFZ1S05yQ0s2MlhFSElRNHUzbWtMY2Fu?=
 =?utf-8?B?Y29lS0pkeWpTa0lRZG5iVi9xaGY1YWlZaE5tTzF4dzM5UUROKzVXSjVLL2hY?=
 =?utf-8?B?Y3lvVVpBb0pFcks0dVBhY2lrcHk0VFBDVUUwaTU1a0lQVVhOcWcrU3FFUWNQ?=
 =?utf-8?B?VlhRMGxlVW5hOUFNWHZLVTNJSnB5NHZKaHY3WnJxYXhIdW55cExmd3RPY1BS?=
 =?utf-8?B?bG5WQm9jVWxwdEZ6VGZoV3dZM3VtVGc5WkMxVjR0aWNybVA3T25OVWhHMXV4?=
 =?utf-8?B?SEFXQ0k5WDg2dnJqNGR2TXAyUlVQOUE4SUF4alBWWStxSC8wREdkd2RZK3NF?=
 =?utf-8?B?YUg5d29DY0VGdEJNQ3BiaThGQlZpSHZidE5Cc3d4RmpTMWthTFQxNU4vM3Fx?=
 =?utf-8?B?aVJvYUNkR1N1T0JqYlNTTklkUE5RTXBxcWNqeWhJZmNxQTJaZHJBOVZGeklN?=
 =?utf-8?B?cWVOSW50bk8yamdGRGYzbm5RM1FBMkV4U1R2aGdLbXFudkFMZFpwaGtyYXdx?=
 =?utf-8?B?eStXNi9OQmpjZzVibGZ6VWpPWkJBZzU5RXZ4TDAvZEp6NlpNM0hhREtLSDZ0?=
 =?utf-8?B?ckxGVHJpUTVKWmhUdGFqTHJFZDNTV0J2RVVWNVEwb3kyQVFRVThrT2xiNzNE?=
 =?utf-8?B?NUoxZFMvZHM4S3FWTjdZRWRGZDBsV1ZRTlBpcEJiTytzSUdxT3NBa2tHU0pK?=
 =?utf-8?B?eWptSmU2dHVoejNibENCajU2TktNa21qd1dGTDVpaHpmTEhYQmdGM1p1Y2Jk?=
 =?utf-8?B?eVlwcVp2d0piOUphdEJhSUdINTIzeFdyRmY5ajNHdVpRbVU1aE1WRERnd3dj?=
 =?utf-8?B?dDc0amxrVnluTmc3Wng5SG9pYnE4QjNhNTRIUGpZaU9VdHFOZ0o2WjFYckRm?=
 =?utf-8?B?RVFzeFBxdERBTnJwRWRIMllRUDdqS3VyWEhUcFVMdGVCbkFRcjg1YjhlQUFO?=
 =?utf-8?B?MFRUM1dSdmZGWi9sbGtjNERKWXA1TlRVcjdrSDJRUGlBZWNpb2xWbjRDemNq?=
 =?utf-8?B?OTJ6ZkpLbWFHUFFzUFZKS2J1ZXFhRDFDQjk2S3JpSFBnRk90Y0ZiU0Q2eDFt?=
 =?utf-8?B?SzZJYUUrbGdsRjF0Y2hNSkNleUpmaDZla3BlOTIzYXJMOUJtejBxSUdvWlln?=
 =?utf-8?B?Q0pjQnRmUmd6dkJLbHp2OXF5M01DcUVXUStuQ0MzVEQxcGU2RHpLYjRlYXRr?=
 =?utf-8?B?UTlKVDFYdkdiRHZ2SGk4ajFaTTE1dzA5YWFsa1dYTXAwWmJtTGw0dz09?=
X-Exchange-RoutingPolicyChecked: FaILWPPRs+E6SqPYMWdtUQxWA8aWTmSC/QS3xkIu6V8ZUrHBbHfIbNXw/dEPAlUrZlF/tcb9fC5LQZKuuV/DxOMFXoDZpAS24p45AFjFmhhn8TJUGXHMmuws69McLWWm7PFTcipiLIfWCed4lm0azgtMb48ckUHrV1ODT1Gp4QPay/hr2kvCA2/lUhX6pRGNqyUQ9Afy3+3gmt9SDRc/XtLR6wKUfX1qh2RnStMEtVV/zvY/0oQs39e1QRjdeQhCo3Em4qwjbdz/lfbJ9ItGXsdTyE2ZcFS14JNqK8/FHRLQgzM70mcwhuwgn/1O0Hx164K9j/ZyC4V2AfQ76XP4ug==
X-MS-Exchange-CrossTenant-Network-Message-Id: 45f697a3-c89f-4262-b3af-08de99c13990
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2026 01:00:30.8174 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sIBnmyXIKTt2EtnCvchsJY4Y2yGxaYfwWlpY9E7YwEFhLrK+jEETLVSl9TmNwD7gAn00FFIgG8lGc85li+aiBAy2cMIOT56wGSFMddLTi8Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4842
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776128435; x=1807664435;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VFSJBr0ZPfcM/0//+tnFb28Q7PnE5Oe04blSBQMQWp8=;
 b=WGXkR0ejizAm/b0IqbnYnO7+4Zf0AbqJugjIvT4IudVRPNzzOFCkoeC9
 oAcyeU1fGgTH0/Lkx+I/L0cbJx7syHmwqFkMRSvbuDPoTvF0c4I1zvvGB
 eHSHwnV20BSa4zYW40t7o9G+Jp+llSynLQ2W6k2dCBYAXk55qQWpZjYvK
 sn9MSw0EzikKdAQXJ+81pgC9OqnNglPPDijox+UWL3CdNcT9tvhtupEBi
 tGYUkH1sx4GJ0F/OqRjLbQqFBSDlK+L6MWlohwWiNmpLsDq5PyzekTwqu
 UQu/DxVajJy2BOTYvgNMwep6Kxsd+jfGrTGwsqC0c9Pjq8bm/CJ7UvgVV
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WGXkR0ej
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/6] ixgbe: add bounds
 check for debugfs register access
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:paul.greenwalt@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 12A7B3F4B47
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/13/2026 3:30 AM, Simon Horman wrote:
> On Wed, Apr 08, 2026 at 03:11:50PM +0200, Aleksandr Loktionov wrote:
>> From: Paul Greenwalt <paul.greenwalt@intel.com>
>>
>> Prevent out-of-bounds MMIO accesses triggered through user-controlled
>> register offsets.  IXGBE_HFDR (0x15FE8) is the highest valid MMIO
>> register in the ixgbe register map; any offset beyond it would address
>> unmapped memory.
>>
>> Add a defense-in-depth check at two levels:
>>
>> 1. ixgbe_read_reg() -- the noinline register read accessor.  A
>>    WARN_ON_ONCE() guard here catches any future code path (including
>>    ioctl extensions) that might inadvertently pass an out-of-range
>>    offset without relying on higher layers to catch it first.
>>    ixgbe_write_reg() is a static inline called from the TX/RX hot path;
>>    adding WARN_ON_ONCE there would inline the check at every call site,
>>    so only the read path gets this guard.
>>
>> 2. ixgbe_dbg_reg_ops_write() -- the debugfs 'reg_ops' interface is the
>>    only current path where a raw, user-supplied offset enters the driver.
>>    Gating it before invoking the register accessors provides a clean,
>>    user-visible failure (silent ignore with no kernel splat) for
>>    deliberately malformed debugfs writes.
>>
>> Add a reg <= IXGBE_HFDR guard to both the read and write paths in
>> ixgbe_dbg_reg_ops_write(), and a WARN_ON_ONCE + early-return guard to
>> ixgbe_read_reg().
>>
>> Fixes: 91fbd8f081e2 ("ixgbe: added reg_ops file to debugfs")
>> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>> ---
>> v1 -> v2:
>>  - Add Fixes: tag; reroute from iwl-next to iwl-net (security-relevant
>>    hardening for user-controllable out-of-bounds MMIO).
> 
> Thanks for the update.
> 
> And sorry for not thinking to ask this earlier: this patch
> addresses possible overruns of the mapped address space if the
> supplied value for reg is too large. But do we also need a
> guard against underrun if the value for reg is too small?
> 

I don't think so. This is bounds checking a register offset which is an
unsigned 32-bit value and begins at 0, so the map goes from 0 to
IXGBE_HFDR. Since the value is unsigned, if it does underflow somehow it
would then get caught by the check for IXGBE_HFDR right?

Thanks,
Jake

> ...

