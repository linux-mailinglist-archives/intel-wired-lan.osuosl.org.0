Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E520F852DBA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 11:20:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 97BAD81E24;
	Tue, 13 Feb 2024 10:20:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JMDoWEypF_5M; Tue, 13 Feb 2024 10:20:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4408081E0E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707819641;
	bh=EXYc5OxDzmtY+jkuw5cjlvlrfCOLOJ+dNIUvmbmpreA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rrtUfmRHgScJZP2vmoYS1QEZnL7e68yp8dgLLz6VGTs9RpzxaRJwn4wsIM5yEFkS8
	 zekVIrpCEp0Pzf8r1EtXhZHDz14unJ/gcA3C9A2Q5AxtKu2dFCrTNnK6F9xtAcMVwa
	 CQjWu0v/IkDq0NtetweEVh6QFUP6XAl45Rt5fjze0dB8JH2+v2zU3dLEjYJkukABpu
	 LfUGVP5IPHQqEr3ixNdvFgEajAA2Eg22IgexrWskIhtpgXVBgOZF3eZraTV3hG+Eo4
	 G7QCRwoUFMt0VRb+kUhgmwa9NV+5SKeu1TY0dlNJRiNu1xcoUWbIMx5CjOE13aQMEt
	 P5Nlfd9DqL3EA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4408081E0E;
	Tue, 13 Feb 2024 10:20:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4E44C1BF47E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 10:20:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3647681DFB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 10:20:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1yA_W2pG--9a for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 10:20:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4329181DF6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4329181DF6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4329181DF6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 10:20:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="12371486"
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; d="scan'208";a="12371486"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 02:20:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; 
   d="scan'208";a="2774085"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2024 02:20:31 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 13 Feb 2024 02:20:30 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 13 Feb 2024 02:20:30 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 13 Feb 2024 02:20:30 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 13 Feb 2024 02:20:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LCUzARnlPF1vbsF54Ra5YC+PCMFTy74sFtftOiM+yPTrxfRWR0VlRYMZDKKPneHnzEq8zVGPg/odeN4DnhrWrx6rAXhVfxld/tUwMZiW46QwlOLYPj88QexARQM2j3Bfj6je/zMHhlV6O1MRbosQqZOXGbrhOXoRgQw4LPjNmeaBiOOL7V4PeVZTMzGS9kHLiaTrf12UXQHSq0Yw+pxzklcT6EE6K7qDaI8RbECdrpq4Hhfb2wBrc1sOvZLl3A31hif02VuiV9GwsA9VNq7DcQr6EhKiHodFbE5/e/Q4IDh0H2tl9WVS26okgoQBu35pvpTucDE2fr+GGo3v+wwG2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EXYc5OxDzmtY+jkuw5cjlvlrfCOLOJ+dNIUvmbmpreA=;
 b=kqBsbK+6s4MSqtu6FFQKxrQXvYXxue23lcTZl8vjyTIHyjJtGK2ZzpUEk517CcIIis0K9s+gNLy934bjbr/aEpOruUlXReLEYYIKwvGV3hCF8U4Buqrn/jcnxAynEyfkd92gRl5Akfawbu8yYMaIKhQggxMDeEUwVe68iKEuAtFMEqv/n92NDxePZ7zl1MbNK8XwUeV1FLGfSZ/XFoYbrwxRM3sLqRmM/zsGDsjMzu0gtWkCu7m743Ji+WnHnGqSC6iwAyBWLO9hokFIRztc6doT2hLntwPEc6nDvNg5gNvO5tendOvTYee1yiPsTmAe72lb2w/MizWEtmaMmSD51g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by SN7PR11MB7116.namprd11.prod.outlook.com (2603:10b6:806:29b::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.39; Tue, 13 Feb
 2024 10:19:55 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::7733:f6b8:e322:f670]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::7733:f6b8:e322:f670%4]) with mapi id 15.20.7270.033; Tue, 13 Feb 2024
 10:19:55 +0000
Message-ID: <bb501538-29d5-4930-97b6-1c02f1b7ecba@intel.com>
Date: Tue, 13 Feb 2024 11:19:49 +0100
User-Agent: Mozilla Thunderbird
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, Jiri Pirko
 <jiri@resnulli.us>
References: <20240213073509.77622-1-michal.swiatkowski@linux.intel.com>
 <20240213073509.77622-7-michal.swiatkowski@linux.intel.com>
 <ZcsxRRrVvnhjLxn3@nanopsycho> <Zcs9XeZmd2E1IHKs@mev-dev>
Content-Language: en-US
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <Zcs9XeZmd2E1IHKs@mev-dev>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA1P291CA0001.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::12) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|SN7PR11MB7116:EE_
X-MS-Office365-Filtering-Correlation-Id: 426cf191-c168-4751-e8f8-08dc2c7d52d4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SKETfYVH/LfRnDn4bWY9WkMdCKYsB84rXCEif0M7bmJDB3k2lLvNi6A8P/h4I2Lh/9+q8Go+MaUm62lp2hwpI5q0ljCniSTjsJ/o3iTLvuMFoqoXtUSPhbDYTKMLxWsbaN/RT4K1L8Cfnf+WAczm4R7BqjOtJOzRqWEl5EQGl+H+K9h6vNbSJ8rCSV0ILw8csIXkNExOaYA2DhCJ8R6nPSirpszO1gFCPVnnHEBuQxNTbvru0KqziD7ZmNQvErX56tghjw/l0EZ+w49HWkb+0RBtzKlK1sDv4mm9NwtFsQkIkXiZzCt7jCpJT7GFXI3m7SgvobUxNVKW93i0Rkcu5XnHJMasBPpvfpv5s1KJSh81Wptac1tFUxCGVjhxi8geWraUy44qYnr5p1TLBMoNcAJEB58Xkzyc657CmdmLX+OSl9izssgy0L4Ngk7JU4XZBSqJ0BEQAIuuN9rkBdUA03mFRODGlrjOC+Hu8HYrUMeBtxQW19231ekq1tMzFj/XaTtfko6xcb0OFy+3DS3EzXd/xlGzieDCV8wUqr0ZyjQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(346002)(39860400002)(396003)(376002)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(86362001)(82960400001)(31696002)(36756003)(966005)(6506007)(53546011)(316002)(478600001)(6486002)(6666004)(6512007)(26005)(83380400001)(2616005)(41300700001)(110136005)(38100700002)(4326008)(2906002)(44832011)(8936002)(31686004)(8676002)(66556008)(66946007)(66476007)(5660300002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y3R1MTJPNjQwa3p6RTM2MGU0RVlObXdFSWlLYUtWRDBEb2d0YjQzQWlJcDg1?=
 =?utf-8?B?czVXdEtiSmlwL2lHM2lwMFVjLzRYVjEyVUZQLzZMV2hDcklWV3Q0QmlzL2I2?=
 =?utf-8?B?L1QrOGlKWUdmRnozRWU0Y05sSDN5ZVQ0ZnRrNndjVFIzeVp3RHRoa2RnQzRF?=
 =?utf-8?B?blJLRWxIZkdzNW5IZkdlODR3TXF5dVg4QzJDSSt1cWhWNWRsZGZlUWNrOW01?=
 =?utf-8?B?cEVpeS9HSnZ2OGpnNDUyaUgxNTJ6cmwrNko0Q3RpYXJGU1AwL0xvYWk1TWkv?=
 =?utf-8?B?cXltYjg0d2VTSjRacjFjbFpoQVpuODhSWEs3SFRyVnpONGduMGFkTFpXbTZD?=
 =?utf-8?B?T0F3Umg2NFFoQ1B5bHUzb3hkTWQ0N0FlWDNocHQrc3JsSlZ2NXgyWkQ0L2ps?=
 =?utf-8?B?eDNUcm9rRUdtMUpMMW5RYTE2MEh1dVpYYXoyd3U1RnNTUVVkeER4d0h4SVo0?=
 =?utf-8?B?SGRibE1ZSlRMeTg4MkNvY2JWbHlXTlZuMWhIVVRoZ2R1bjBVWjBOaENDWlJX?=
 =?utf-8?B?ZkRwbm9yNUZpV29FaTF3bzdReEpDYWZKTW45elBPZEd0ZUpoN25YMlVuWDVB?=
 =?utf-8?B?R2tseFkwSHVnUTZyck9XV0l1NEhRUDRVcTR2Q2VWcjVrMGNkMUpCMllObmtQ?=
 =?utf-8?B?ZzF5QXVNc0JjbkNQV0dhUzVKN0dLSG5KQXM4NjhuMFhadzVvbytFYVlQZE5v?=
 =?utf-8?B?OFhWQmt4YjVqeDJIMzFwbjRZQ3lwTkdOL0gvWGtKZ2F6WEVpTUdoUXJXUUto?=
 =?utf-8?B?TUF2aDlyVzh6N2hYdUMvZ1JvaDBtNDJ3RFN6V3BGQngzVC9VL1ZEVlJFamJV?=
 =?utf-8?B?UE8zNit0bFZCcGsxektLdWxGNEdPYktGaERzbDZOVTRpREZQaXRmc2laNHRw?=
 =?utf-8?B?cFp4c05uNWNZVm5Cam43NUxoM20weit1TlZKc0ZKTG00NzBJOXg4S0JPanh6?=
 =?utf-8?B?WkhPdEFMNSs0SmU4bW9nYW1pMHFrSUloanhMSjFINDJnVStIY3JyQ3J4N0pB?=
 =?utf-8?B?dzZKb1BTeWlMZ0t2djBTKzZxc1BidXEyaERZVjdXcU5ZUitYcWNmNTBDN3Jy?=
 =?utf-8?B?Wk8vci9kR1ZIVkl0N1ZHWkJzMTBLdmlEdjkzUEtqbVlQc3NLMzZCWEVTQjVj?=
 =?utf-8?B?eEpINmxnZjR2ZDBEUUFjTndNWlVPSWRPM3lZN1daVWZzQ3kxTyszRjl1UkpV?=
 =?utf-8?B?WU5naFhBVE9GRmZqbEtTZXdUV1lLVnBZRGhXUnVtZUxzOVBZMWJ3NlBWTWFE?=
 =?utf-8?B?b0pGU2V4OE4vNlVRbWZLY25vc3RhbmFMbTI5Q0dRd1czamZXdUw2VXJES1FV?=
 =?utf-8?B?TlVnbW12Tk5HYTMvRHNUa1JsY1l2NE15WWtjb1Zoc3NBMW1HeHluTGxQdTNR?=
 =?utf-8?B?ZGhvTVFzUHdsdVFqYlV3N1paWlhxd09xTmswLzFOdGhSaE11dWxwYjFja2Zm?=
 =?utf-8?B?V1k3cDdpUE1uL0lPRU1yQUx2TU4xTGdzTnRNKzZPUWpYODdHWUhkeGcvQzFY?=
 =?utf-8?B?VWFjdzJaT0tLdGx1TzJOb0NDc1gyekhpNjNGYWE2NmVidDlOcFo4TnkxdkEy?=
 =?utf-8?B?Nm5UeVNKbXdtb3YxaVFFNk9FZ25sVDVIRG93NFJHU1NBbGg4a2pTM0I1eEFp?=
 =?utf-8?B?ZkdYc2JxRSs2YS96Y24xazdLUHlVbFBqZm0zSmtlZkMyL0F4R1NIOUJCNWtY?=
 =?utf-8?B?Smo1NmNIT3hSVk01emFzcXNiYUN2UTJ1RmxBVC9ZY1J5MW5ibWhxTDFvUmdV?=
 =?utf-8?B?cjVvSStNYkNNR3Zzc082TllvR1lzeVoza2c4c3pyTXc0a2RIYjM1UDdLRG93?=
 =?utf-8?B?UXMxb0VVdnJSZTltSTdMME5DSkJmVEtObXE1NHd6YzZ3cFBOZFdPZFhQZStw?=
 =?utf-8?B?NFhIU1UrYWh6LzFIMUJQK25Qd0hmMzZxSHkyUEtwZm5LYy9RUzRLV3JXOHli?=
 =?utf-8?B?bzJITWIxZ3paYktMV2VtUExyOXk5ODcxTHExKzhkNlBVdGhOM0YxNmgrRWhI?=
 =?utf-8?B?WEVTelY5N2t1RWNOQmF4T0dsVXYwVXBBTEJLWW9vd3dvb1pJOFRodE5SYWtk?=
 =?utf-8?B?N3hacHEya3VGWDlKZE9HaHNnbDZkWVd0ZmRacTNJc1lGdXpIdmlvRHNVR0RU?=
 =?utf-8?Q?xz48M2g+Sfvnaomue1kwuP/+A?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 426cf191-c168-4751-e8f8-08dc2c7d52d4
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2024 10:19:55.4722 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yGzQxCWshCUcQkxjkh/d/38fuVZ21mhEN/n8c74M6vmYUz6hlTpBl/+7khwcbetHPLTjqD8cgsaJmBhfBuHr637JBHeFN66o6lNX5MT8w14=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7116
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707819639; x=1739355639;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rgn7xR0HhHzJ4cmDDoq483oUtTc4Gtzw3lWzaMm4S0M=;
 b=oGd98r0yxbcU3JbLklQ6rk6gbjcA8FIPlmLQT6wTB1D71Q6TfotijnQF
 Ew1pDNdvuKd1sKw6dwp8wNxgFVqx4AiUorNVWRBGqKnU3vT727XV2NyQf
 3SOiER8gMSMe5aiBusZT/w4nGT1e/wogrTdsJFekUI0L06D1VrhsUgsTG
 7DxHvwqToDUjQQWV88+BgZHDQHJV/mWq4Z60s0LCC6tYtj7A13DOgND3W
 C4WXhFFEfUEE22N2LOM6A8ZJ7PsGF5CbDSgbMQb7MgcJqIkzmXFNcmCXJ
 H+nr52eScfrv3etNSUrbISOY0n4QUK/JSbnkYAaE7BYXzec8D1By6ClN+
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=oGd98r0y
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v1 6/7] ice: enable_rdma devlink
 param
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
Cc: Jan Sokolowski <jan.sokolowski@intel.com>, marcin.szycik@intel.com,
 netdev@vger.kernel.org, konrad.knitter@intel.com, pawel.chmielewski@intel.com,
 intel-wired-lan@lists.osuosl.org, nex.sw.ncis.nat.hpm.dev@intel.com,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 13.02.2024 10:58, Michal Swiatkowski wrote:
> On Tue, Feb 13, 2024 at 10:07:17AM +0100, Jiri Pirko wrote:
>> Tue, Feb 13, 2024 at 08:35:08AM CET, michal.swiatkowski@linux.intel.com wrote:
>>> Implement enable_rdma devlink parameter to allow user to turn RDMA
>>> feature on and off.
>>>
>>> It is useful when there is no enough interrupts and user doesn't need
>>> RDMA feature.
>>>
>>> Reviewed-by: Jan Sokolowski <jan.sokolowski@intel.com>
>>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>>> ---
>>> drivers/net/ethernet/intel/ice/ice_devlink.c | 32 ++++++++++++++++++--
>>> drivers/net/ethernet/intel/ice/ice_lib.c     |  8 ++++-
>>> drivers/net/ethernet/intel/ice/ice_main.c    | 18 +++++------
>>> 3 files changed, 45 insertions(+), 13 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
>>> index b82ff9556a4b..4f048268db72 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
>>> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
>>> @@ -1675,6 +1675,19 @@ ice_devlink_msix_min_pf_validate(struct devlink *devlink, u32 id,
>>> 	return 0;
>>> }
>>>
>>> +static int ice_devlink_enable_rdma_validate(struct devlink *devlink, u32 id,
>>> +					    union devlink_param_value val,
>>> +					    struct netlink_ext_ack *extack)
>>> +{
>>> +	struct ice_pf *pf = devlink_priv(devlink);
>>> +	bool new_state = val.vbool;
>>> +
>>> +	if (new_state && !test_bit(ICE_FLAG_RDMA_ENA, pf->flags))
>>> +		return -EOPNOTSUPP;
>>> +
>>> +	return 0;
>>> +}
>>> +
>>> static const struct devlink_param ice_devlink_params[] = {
>>> 	DEVLINK_PARAM_GENERIC(ENABLE_ROCE, BIT(DEVLINK_PARAM_CMODE_RUNTIME),
>>> 			      ice_devlink_enable_roce_get,
>>> @@ -1700,6 +1713,8 @@ static const struct devlink_param ice_devlink_params[] = {
>>> 			      ice_devlink_msix_min_pf_get,
>>> 			      ice_devlink_msix_min_pf_set,
>>> 			      ice_devlink_msix_min_pf_validate),
>>> +	DEVLINK_PARAM_GENERIC(ENABLE_RDMA, BIT(DEVLINK_PARAM_CMODE_DRIVERINIT),
>>> +			      NULL, NULL, ice_devlink_enable_rdma_validate),
>>> };
>>>
>>> static void ice_devlink_free(void *devlink_ptr)
>>> @@ -1776,9 +1791,22 @@ ice_devlink_set_switch_id(struct ice_pf *pf, struct netdev_phys_item_id *ppid)
>>> int ice_devlink_register_params(struct ice_pf *pf)
>>> {
>>> 	struct devlink *devlink = priv_to_devlink(pf);
>>> +	union devlink_param_value value;
>>> +	int err;
>>> +
>>> +	err = devlink_params_register(devlink, ice_devlink_params,
>>
>> Interesting, can't you just take the lock before this and call
>> devl_params_register()?
>>
> I mess up a locking here and also in subfunction patchset. I will follow
> you suggestion and take lock for whole init/cleanup. Thanks.
> 
>> Moreover, could you please fix your init/cleanup paths for hold devlink
>> instance lock the whole time?
>>
> You right, I will prepare patch for it.

I think my patch implements your suggestion Jiri:
https://lore.kernel.org/netdev/20240212211202.1051990-5-anthony.l.nguyen@intel.com/

> 
>>
>> pw-bot: cr
>>
>>
>>> +				      ARRAY_SIZE(ice_devlink_params));
>>> +	if (err)
>>> +		return err;
>>>
>>> -	return devlink_params_register(devlink, ice_devlink_params,
>>> -				       ARRAY_SIZE(ice_devlink_params));
>>> +	devl_lock(devlink);
>>> +	value.vbool = test_bit(ICE_FLAG_RDMA_ENA, pf->flags);
>>> +	devl_param_driverinit_value_set(devlink,
>>> +					DEVLINK_PARAM_GENERIC_ID_ENABLE_RDMA,
>>> +					value);
>>> +	devl_unlock(devlink);
>>> +
>>> +	return 0;
>>> }
>>>
>>> void ice_devlink_unregister_params(struct ice_pf *pf)
>>> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
>>> index a30d2d2b51c1..4d5c3d699044 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
>>> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
>>> @@ -829,7 +829,13 @@ bool ice_is_safe_mode(struct ice_pf *pf)
>>>  */
>>> bool ice_is_rdma_ena(struct ice_pf *pf)
>>> {
>>> -	return test_bit(ICE_FLAG_RDMA_ENA, pf->flags);
>>> +	union devlink_param_value value;
>>> +	int err;
>>> +
>>> +	err = devl_param_driverinit_value_get(priv_to_devlink(pf),
>>> +					      DEVLINK_PARAM_GENERIC_ID_ENABLE_RDMA,
>>> +					      &value);
>>> +	return err ? false : value.vbool;
>>> }
>>>
>>> /**
>>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
>>> index 824732f16112..4dd59d888ec7 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>>> @@ -5177,23 +5177,21 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
>>> 	if (err)
>>> 		goto err_init;
>>>
>>> +	err = ice_init_devlink(pf);
>>> +	if (err)
>>> +		goto err_init_devlink;
>>> +
>>> 	devl_lock(priv_to_devlink(pf));
>>> 	err = ice_load(pf);
>>> 	devl_unlock(priv_to_devlink(pf));
>>> 	if (err)
>>> 		goto err_load;
>>>
>>> -	err = ice_init_devlink(pf);
>>> -	if (err)
>>> -		goto err_init_devlink;
>>> -
>>> 	return 0;
>>>
>>> -err_init_devlink:
>>> -	devl_lock(priv_to_devlink(pf));
>>> -	ice_unload(pf);
>>> -	devl_unlock(priv_to_devlink(pf));
>>> err_load:
>>> +	ice_deinit_devlink(pf);
>>> +err_init_devlink:
>>> 	ice_deinit(pf);
>>> err_init:
>>> 	pci_disable_device(pdev);
>>> @@ -5290,12 +5288,12 @@ static void ice_remove(struct pci_dev *pdev)
>>> 	if (!ice_is_safe_mode(pf))
>>> 		ice_remove_arfs(pf);
>>>
>>> -	ice_deinit_devlink(pf);
>>> -
>>> 	devl_lock(priv_to_devlink(pf));
>>> 	ice_unload(pf);
>>> 	devl_unlock(priv_to_devlink(pf));
>>>
>>> +	ice_deinit_devlink(pf);
>>> +
>>> 	ice_deinit(pf);
>>> 	ice_vsi_release_all(pf);
>>>
>>> -- 
>>> 2.42.0
>>>
>>>
