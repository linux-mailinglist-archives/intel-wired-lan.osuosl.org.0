Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A121852F4AF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 May 2022 22:54:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A07760F72;
	Fri, 20 May 2022 20:54:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CIiZseUr1Gwd; Fri, 20 May 2022 20:54:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 37B6E60B06;
	Fri, 20 May 2022 20:54:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A4B8E1BF41A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 20:54:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9210660B06
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 20:54:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qkfrpxMmCTxx for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 May 2022 20:54:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CFE4760ACA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 20:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653080079; x=1684616079;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=E/aOTlWiyyWfQIQ6LZ6wwTMhqvZgDIENzr2G3YkzRIc=;
 b=JEO+LbExsuSOdTZCMRF0MdHP2Y2PSUIfTYudctk8K6SBKF/mvQGybJi3
 vOkLbPkxr1XwaAvmkoS7SijbdjSzJcqG5lCreGIozFKj1FhkXaViAjuvn
 mgg9LWt1pX47HMIDQfEjHSn9oIRg2lpBY5hmm93/AquA85Gs2a/hBLQQd
 Bzh4uYMcRb/IDktUIyDBELuepfnjoyBy8fG2rgRDmKuZTGsdcRikJ9W6t
 QMrrquGaEA20Cpu+uT2f4c6Ukf2a1FP4NjaSBbKh6HscQiybcTD5rTb9b
 AxATz7P7hQ+OcDdXcwjVTQPVjVuT+s5Z+VZ2h23juycYbWlIvlG14e0KK w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10353"; a="271557201"
X-IronPort-AV: E=Sophos;i="5.91,240,1647327600"; d="scan'208";a="271557201"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2022 13:54:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,240,1647327600"; d="scan'208";a="571014323"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 20 May 2022 13:54:38 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 20 May 2022 13:54:38 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 20 May 2022 13:54:38 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 20 May 2022 13:54:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eCV0t3coy0sYBMbBbOKOoBZhQHtI1+707x+EvBOhQRqE/t/4kPkvhyDwhvnFo47RkH2IE9QTENM1f3r9JwgvxkznCFmej5hnADKuRi3sJ4obMk5qy9n5W4i7PjSgtulCbTOHJLVhKl+UiImdsLZs9eoyhCL9yYwJUHf/NGQkg3AO629m9G4o/Xn9f99vHna+7hWDOeFIuYyCcKrnKS2xmNjPQoOKMzBORCpIJCLIdXlx+kfcKyfbuLMeeO3aLIF6OYENoAJcvaFf3FvkeXjXI1XUQH7MAZgnbfjariZTvc6e8WeM2/7KuL5bj3nO84janE4LSYVwRblXUZeLlRctdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VurVzLjsYtcf29s3WBaS9weaiNCgLmHLk04F2s+8dfQ=;
 b=W8mJea3gGt4u2tOWc9ExnByDv1m0nnd4wQDH7oIkqQGMhHZz7HDQCHUijGKoyCDBOtKnE7Xu/WmauVHyTujVul1DFM/CF/ap/srl58VGgLo8LS5gliqTgOWW1lyBQLElORIL4GmZ2koxNTrn8Qk0N5F+FwWYp30pXKkNkq0gMQwmEC0GYh+u3WIKXTRlYfsBt5k5F2aLpPwGZkyG3x1KJDyBkUfMXz0WkTe+Ipmuq7txU88GqwwdgHLGqYBBBlbAsgJQiNWoQYnljRj1/5My74qfurE1kBcrNkvxyeCVls5Om+FGGmdOUXboBDVEMNpleRWcV3ch0FKImhT9FiW10w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM6PR11MB2761.namprd11.prod.outlook.com (2603:10b6:5:c0::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5273.13; Fri, 20 May
 2022 20:54:36 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3%6]) with mapi id 15.20.5273.016; Fri, 20 May 2022
 20:54:36 +0000
Message-ID: <3092a89c-fbfd-b613-827d-337e7c2b633e@intel.com>
Date: Fri, 20 May 2022 13:54:34 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Wojciech Drewek <wojciech.drewek@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220520084527.123885-1-wojciech.drewek@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220520084527.123885-1-wojciech.drewek@intel.com>
X-ClientProxiedBy: MWHPR17CA0058.namprd17.prod.outlook.com
 (2603:10b6:300:93::20) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 86a36cc6-aa08-45b8-1811-08da3aa2f32a
X-MS-TrafficTypeDiagnostic: DM6PR11MB2761:EE_
X-Microsoft-Antispam-PRVS: <DM6PR11MB27611126CD2F1468B6A56645C6D39@DM6PR11MB2761.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6qaT6PKX+GW1wEfeOn5QuEmYxYcainh9jUJkyecU6DUwXL+pUNZ2kDsVVqmlYHhg4Uv2rbfDBF+rAnIY8T00O9LwD3jAI1Jcn1JKx5+uIjzz/O+VuvWTTdKRixAOn8vo1V7mBG2hFyrJAlslfYE31nLwZ7mkfaNA8bjvObkudcHyOeGQStkLfMgK664BXNQe8hRGS07f86PVt67A3CYGxWiqjCDldPUjWya4von0pyHl97UAI9X26kzkx4g6g+KAP7v858MjkhxQdE7oKT9R1fpxbD19qvBGhGowB2Ysv1zM2B8UHmQOXRqOG3BzUaERutD/dI0S0tBH4juNLrBTB95/X3nxytUz5ddxRXwK8ysvCfehINYT3aWLEmKTp24KPa5GIq4l7W3W80aUjPR7x1ZhBJSVxJttHu4oQIwByq37E9shI+23LIhkA+cbSzjpd1CmLU54IRVqYBNlVP1RmONbKc2W+yYCyhzYiJn93odGLYshpQaFlnlL+MVDpx1+IIAxUlpg0z/KdFhBLX4BivJKXtYvYRxIQxEXPHm3g6bynwjDp3IyzWrq0uNRcgCbuRLFT0OKYqRoRWFNqKfTKCN0wEyUWJtnak2rp3/hrGQvYUeFL/RtgxF7vh82tQ6YN+xmUhwGNHG6O49zuON+eg542XlIwSp2C5vZgwTI/RzclTzMlEZWCRm9YGzCVR+50/w8xL/Q/TCTqDjEyL1aEzYHrlgg5QAVXnMLl3KgOUo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(316002)(8676002)(31696002)(26005)(186003)(38100700002)(66556008)(66476007)(83380400001)(4744005)(66946007)(5660300002)(8936002)(86362001)(6512007)(53546011)(2906002)(2616005)(6486002)(508600001)(6506007)(82960400001)(36756003)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Ymo4WlBLWUxRQ2pNRWdlckJJVTR3TW1TeWFlOTVmVjdXN2lrd0twOG4waEpB?=
 =?utf-8?B?WEhnS3hUcjlvaDhZU0dLei8ySzNlNUwxbkJWL2RQQjQ5dkJGeDA1UDFtWEd4?=
 =?utf-8?B?dEhoTG85UEhsSjRxSitzbzd6UmZ0TTZ3VDBqQmhsR0tnWGdkaU9DMU5Ed3Yv?=
 =?utf-8?B?bkNSNVZscmZRT3doM09lSjlwMGJJUUE2QnovaWhoWWNBZThRRytyZ1JOcXhB?=
 =?utf-8?B?TmtxWWpFWjZoRW14aFRuZyt1eG9GQkhubVJYdDVhYWRBVU1KempEeEpRL00x?=
 =?utf-8?B?ckFZL254MXcwR3NpeU1QRGlsaUg5VFRJNFlZWjMwbkk5NGswbW5aTjZHMnBj?=
 =?utf-8?B?Q2hHMDZ3NFFmekJuNHVNSElCNnJadU9vWDRUd1JOTW9HRUJjLzhhbkhzVmtB?=
 =?utf-8?B?TVBZQ0xhVEZ5M2JVbXhyTlI5dmtGUDdtUWYzdlAvNXRNTHlUYzRHbDZ4cGhj?=
 =?utf-8?B?ZzhFaG5pR3BHWU94OVh6ZWNLMmlleDJhZEpkSk5jOHh1RTJwYUJWdEsraXVv?=
 =?utf-8?B?SWxOOWhNQWptMlVzc25MNTJiQk5GR0FIVU1oQ1V2eHhwalJENnA5WjdpZXpy?=
 =?utf-8?B?MTM0L1pZUkJYSDBZWStPMWY0SnpsR1UyWTV6SE1jQmg4TnRpYXpoQ0R4MEh0?=
 =?utf-8?B?VkZIMEJxak9sU21NaHBpdzc3a2JJazU4UmhleWs5UTNhYmtjMEFFWlMzYkF6?=
 =?utf-8?B?YjhKNWI3akUveWFKVDMxNmZIOXlCRFRoZlhUUHMxSmlKM0pnRkhFb1l3T3kx?=
 =?utf-8?B?SmhuaHpsMlZiZ0ovVjFhTldSa1dBY21NNUlLbFJqNkNnY2YrZlVvZjg1V2xm?=
 =?utf-8?B?RGhPQitzeDlZOEE3UEVDTUFzS2dVUHVXR3BZK3VoTlBzY0d2MjB3VGdOSG1I?=
 =?utf-8?B?eVJLTkw3ZGQ0RGh3Zy83VFREV0I1TTZvRStFQ1hBZjZtVXE4SE4wZnRxV25j?=
 =?utf-8?B?Mjk1MGxzNFg2RkZlcCtnM1pxR05DVmFyLzNRaG9FUmEyakoweGVFckFoVmxN?=
 =?utf-8?B?Tng5TkdndCtQQ0lsNlJKVlR0Y3RSVHRXS0FxOUpFTFJ3M3RTcHJRQkdOdGVT?=
 =?utf-8?B?VjdYMkNYd3NpQXRVa1QwWm5sWVBvbUVrakhRNkZ0SlY3dFk1T0RzTmMwVXBv?=
 =?utf-8?B?ckxHWHVmbmJzR1lxSEpGa0VLS3BlN0R3ZDlaUHFWRWFwMGhBNjNzbENvazY3?=
 =?utf-8?B?YUhxTzFrem5HRUhGQXZxNGlIWG5yNEQ2QmJxRlllRFUyRGZiWnJ4ckVUZTJF?=
 =?utf-8?B?ek1EaEFrOW5sdjg5akFDQTVpMUV6N0IwVm4xeXhYMTVlQ1NvaE41UEs3d00y?=
 =?utf-8?B?TSt6eHZock9OWjl2Y1NJQW03Q2ZZVEdLMjh6UGxVM3JwSUowOVpXQVpoclN5?=
 =?utf-8?B?MWlVanRZd0xSWjNIQlhJL3lOWERuRGZjWmd2SEdYQ0gybFpudDFsWExNR2xS?=
 =?utf-8?B?YndrSkk3enZZa05FbzJ6Y3d1S29LTUhPZUs4TGRBcldDTE1hZTBJbUk2WXhr?=
 =?utf-8?B?OURXT3dJY1NKazU4Nlc0SmszWTNYcWR1Um9CME0wbmhNcGZweHJYMHZTWUZK?=
 =?utf-8?B?bExxTjJRQ1hVTDdvbS9aamoyY0NOZitYM09CektNVkROUVA0OEZVMEVvV25U?=
 =?utf-8?B?ZkJWL09hZ2lDSHpRZ0ZMZGJlNlozRlJYOWNYamdoRGMxbU9zNFdQdGE2Qlhr?=
 =?utf-8?B?cHlJQy95RUVBZjhieC9zYVZ6TEY2MjhuT2Z6MERLbGh4R3hpcExJaThuU3FM?=
 =?utf-8?B?T3ExZy9jcnFKYlk1TjRZYU1penNrcE56QWd5cmZqQ3NrNURsZWtIUGpXVFJV?=
 =?utf-8?B?ZzdHbnF3UkUzMDJLOC9IMWNLaCtTeVZ2bm9TemhtaTdWTmgzS21mdHBxQzFK?=
 =?utf-8?B?c0xPd2VPUi9PbmJhcit5QU9HWStmT1F5czZrVWtVOTdOQk1ISy9xVFhKV0N5?=
 =?utf-8?B?Rjl0MUMweVAzVTJXVW5MdHBkVFoxR2lqRzAweGg5aTBJVEdoYUl3K215QWJQ?=
 =?utf-8?B?Q0x0bDN2UGx0bGdlTk8wUTM5c2N2SGFja2NRYWJ4S0IrRWZnU3VuWUc1Vm81?=
 =?utf-8?B?Nkl5ZkczVGRiM3I3aGljUjdEMlNCQzA2emZ6NHBaTkFvTkM4emxtZW9MaCt5?=
 =?utf-8?B?Rmw0M2VuRmJVTDByaWlVajVMOVpRTEZFL2tVT0N4MVVNUldsSDVzTUNLbEtX?=
 =?utf-8?B?ZDZsVzN2YmZqRHg1Y1ZhMDEraVE2aGc4cWZCZFRaWW8zYjBpRnk3QS9lZjhV?=
 =?utf-8?B?eUdXbkNFc3ViaHh5b3d4ekJkSmhtSzYxY3lMV2J5eXV5OUMvVERjcUtHcVN1?=
 =?utf-8?B?bFlnVllhakRFSmhZQjJFWGNRenVBTXM5aTNiRU9PNGVoWHFqTFlCWk1TMmxj?=
 =?utf-8?Q?YCaUQX/mQB785+Fs=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 86a36cc6-aa08-45b8-1811-08da3aa2f32a
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2022 20:54:36.6956 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bGUVUew2Bcpx66UIlDPCwOPLcPzitMsfc/iiWIBnzuO0oMGf2Bea6HY+JBN5pRyg/4jJKUkfUiQwDCCCR9fohXkU2UWsd/ODXvKcewxQ88I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2761
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix switchdev rules book
 keeping
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiA1LzIwLzIwMjIgMTo0NSBBTSwgV29qY2llY2ggRHJld2VrIHdyb3RlOgo+IEFkZGluZyB0
d28gZmlsdGVycyB3aXRoIHNhbWUgbWF0Y2hpbmcgY3JpdGVyaWEgZW5kcyB1cCB3aXRoCj4gb25l
IHJ1bGUgaW4gaGFyZHdhcmUgd2l0aCBhY3QgPSBJQ0VfRldEX1RPX1ZTSV9MSVNULgo+IEluIG9y
ZGVyIHRvIHJlbW92ZSB0aGVtIHByb3Blcmx5IHdlIGhhdmUgdG8ga2VlcCB0aGUKPiBpbmZvcm1h
dGlvbiBhYm91dCB2c2kgaGFuZGxlIHdoaWNoIGlzIHVzZWQgaW4gVlNJIGJpdG1hcAo+IChpY2Vf
YWR2X2ZsdHJfbWdtdF9saXN0X2VudHJ5Ojp2c2lfbGlzdF9pbmZvOjp2c2lfbWFwKS4KPiAKPiBG
aXhlczogMGQwOGE0NDFmYjFhICgiaWNlOiBuZG9fc2V0dXBfdGMgaW1wbGVtZW50YXRpb24gZm9y
IFBGIikKPiBSZXBvcnRlZC1ieTogU3JpZGhhciBTYW11ZHJhbGE8c3JpZGhhci5zYW11ZHJhbGFA
aW50ZWwuY29tPgoKTmVlZCBhIHNwYWNlIGJldHdlZW4gbmFtZSBhbmQgZW1haWwuCgo+IFNpZ25l
ZC1vZmYtYnk6IFdvamNpZWNoIERyZXdlayA8d29qY2llY2guZHJld2VrQGludGVsLmNvbT4KClRo
aXMgZG9lc24ndCBidWlsZDoKCi4uL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vf
dGNfbGliLmM6IEluIGZ1bmN0aW9uIArigJhpY2VfZXN3aXRjaF9hZGRfdGNfZmx0cuKAmToKLi4v
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90Y19saWIuYzo1Mjc6ODogZXJyb3I6
IOKAmHN0cnVjdCAKaWNlX3RjX2Zsb3dlcl9mbHRy4oCZIGhhcyBubyBtZW1iZXIgbmFtZWQg4oCY
ZGVzdF92c2lfaGFuZGxl4oCZOyBkaWQgeW91IG1lYW4gCuKAmGRlc3RfdnNp4oCZPwogICBmbHRy
LT5kZXN0X3ZzaV9oYW5kbGUgPSBydWxlX2FkZGVkLnZzaV9oYW5kbGU7CiAgICAgICAgIF5+fn5+
fn5+fn5+fn5+fgogICAgICAgICBkZXN0X3ZzaQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdp
cmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLXdpcmVkLWxhbgo=
