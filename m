Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B145478275C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Aug 2023 12:49:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4739B8191E;
	Mon, 21 Aug 2023 10:49:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4739B8191E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692614940;
	bh=NubFSa7LsMt8MUppqAS1pIhOZ31OWl/NkYLw+TnkicU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Bs41ZB6WTOFmiCt5AvjPC648O9m8wWo4iIvVEvTBNIRUl6YoJcGyw+WFiYW7gBzFN
	 YNc0plyXLK4FlcfTcSKGLur+Gi3l4McUt3JcQlzyevU0s7i2/xtJpBHd6t1Q5ygM4K
	 DQZx9yd2RhWoPHX+wbn0QQZEUQUyjZFrC62124RijoMMzGPbSr3Azeg6c56kSjZ/Xu
	 Ofw0asWNtCBJkgrnD35gyWUe4Rw8F6AAqghjpkhd/tmI0Nrse/QyKBTTeebGsFqB/G
	 Sz9z1FA/jqU1xvibat6VkT+sAoI4HEdIJDE0ClSQrIENfN1aQung6z98GZRbq2PKDS
	 OMWaNX5YST0vQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u2-LDQbmgRHx; Mon, 21 Aug 2023 10:48:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 38E1181489;
	Mon, 21 Aug 2023 10:48:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 38E1181489
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 18EE71BF2C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 10:48:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E469D40A75
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 10:48:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E469D40A75
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bi7TZ2QH4BK3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Aug 2023 10:48:52 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B6AA1400D7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 10:48:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B6AA1400D7
X-IronPort-AV: E=McAfee;i="6600,9927,10808"; a="372457658"
X-IronPort-AV: E=Sophos;i="6.01,189,1684825200"; d="scan'208";a="372457658"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 03:48:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10808"; a="801232479"
X-IronPort-AV: E=Sophos;i="6.01,189,1684825200"; d="scan'208";a="801232479"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 21 Aug 2023 03:48:51 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 03:48:51 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 03:48:51 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 03:48:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gcrPJ5KMEXvaYjPKEwiXG4wQ1ubkbeyDYHhT9+1Ek442GStlBIqtYCrcuapM0XveLYImw8SfydjB1zNDEVYZC0DsDPhH+S0MoQrOSewu2ST5kEazYax7+JAGeERucTkUdKp2bzNfYjElicjraYXExIM12eobS0pSmpyRpwnE8OkmZdO/pMJ+sBzHRvsZ0A4qqP92NhxOlop4JYm9iRFgaLpaUywdPDGh7aVS9RA0DcEEPH8+9+YIEpHlEprP23YtzlAFuoiCt+pAPKixsclVgi99CMyQHnW1R1+mGPmICx1Q2aswTvHiiUF/lT3R+PvVCRFZ2MCe005P8OxIdfy9Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WIDBPzLN2U/xiYdbvoVwvLTaR8HK+FRCeB4jOvrvoiM=;
 b=bgrpBMfFfXPDmnWw6pFQdicyqWn75CvcishQ8g10kdtGwSOwT8nvdvg/PGEdasTJiSYbdxPX6MMLGz76U2qtlqbgc37yQWOlFf6ZgmOYX7FtqfPbovRIWCCXDNUxxKdIvCWjwp776sVAHCQiSWos4MFkwjKFo0tyWt1SqYyJD4Gkz1pX1OpgnDjs1sqTPli9uhPaKm6f/s4+JhrNeBU4GTbZhzm/IcP4Mi2i3J2cmw3U6Phrn3vHdtKnU5tA9FJjgCPpsc+S8WxuZL4EmkCYsyZsdTxQpX61s4L8dTUcvBqRBaJ3VFqMm8th5RWYH5xhNwcEPBu9xCvp6QYuE+I9LQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by LV8PR11MB8536.namprd11.prod.outlook.com (2603:10b6:408:1ec::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.24; Mon, 21 Aug
 2023 10:48:48 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::c45d:d61e:8d13:cb29]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::c45d:d61e:8d13:cb29%3]) with mapi id 15.20.6699.022; Mon, 21 Aug 2023
 10:48:48 +0000
Message-ID: <12025d38-a5e2-5ddd-721f-c1c083785d22@intel.com>
Date: Mon, 21 Aug 2023 12:48:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: Leon Romanovsky <leon@kernel.org>
References: <20230816085454.235440-1-przemyslaw.kitszel@intel.com>
 <20230816143148.GX22185@unreal>
 <c1f65aa1-3e20-9e21-1994-1190bf0086b7@intel.com>
 <20230818182059.GZ22185@unreal>
Content-Language: en-US
In-Reply-To: <20230818182059.GZ22185@unreal>
X-ClientProxiedBy: FR0P281CA0115.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a8::14) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|LV8PR11MB8536:EE_
X-MS-Office365-Filtering-Correlation-Id: 41e57746-b549-49a4-a8e6-08dba234330d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FLQAQyeocbtM5DCnhEK8E4f/yoyZgvMdKBqYBc/TIN/fHhQ1O9NqdMuIQ3zut5l7ZqIO+/avOA7kZW+6YRaZpEtpvqzdTwgjnmtrMlzKmPj9N7XNNC/SaZA9BybDlXMd7CCw0LAgecojcuzMxCJP6RgxTPAVdFyN2TVoWD0NohvECc+8GsqkQzJQhmUKNXYWd2AXAdZJ+YbtTNVpgucLjctnRXfu4fwuCREtXhn1q8silEHDVdNbynCHYEoObtLzFdofxM2rs8K0CCcGAMUDaqPT0nwjD+OgUN60JeejEiTW+N8d2vOFQMd8PMzd0tn/mX9iHfWPZ3/H6zUM4gTlK9DX95Z6bvVwC9iftrOmZ14iCLxN+m8cQGuz2/Ru7FOig2xbcPbHu4Bq3BjVwxixUF5AwHoCscz5BCbzDv0VM/IHdDEG+OkUl6SITp8p+h+qq7EBLAnOauAJnNAaId/CkAmAaI0SkiJ2jTUB2YHHsVbBkNeZYNUdpCZmD1kEgOUu7VoLZ3Q+4E2PCVyNeKtuxLaOIEhISW5jfvSzknIhG7bqigGy/OCO5XcbQ4eiomtLxJRgx8Zz0IeENKOgOTK2aC5Co/G9xk+wFp88Lf+1pkX/kn98a7okvof1IT0/L1aEdL1YvBo8gIb4e+AVgSh95g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(346002)(136003)(396003)(39860400002)(186009)(451199024)(1800799009)(31696002)(2906002)(83380400001)(26005)(86362001)(478600001)(6486002)(6506007)(6666004)(107886003)(36756003)(2616005)(6512007)(53546011)(66556008)(5660300002)(41300700001)(66476007)(316002)(54906003)(66946007)(6916009)(31686004)(4326008)(8936002)(8676002)(82960400001)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cDFLeHZSeWkvMDR6ZnFkYUdYeXBIdVdzQXBzVUlwRXJpV2JXbWF0TWFLTFJS?=
 =?utf-8?B?Qi84dGlyZktzNzBxL0JrSm1pSmE2V2Z1akhnb2RuQlFua2haaXgzR1A1Nm1B?=
 =?utf-8?B?R1JuTHlVQ0V5RGdobTczRUlMRUduVG5uSGtCMUxqa2RXd2l6NFBseXp1SFRn?=
 =?utf-8?B?QWN5YUhlcWlhMVp6WDllR1U5WUp6T0pWREVwVktQTGE2YWxLdTlGVzJpYlBJ?=
 =?utf-8?B?ZTlBRzZtVitRS3dSWXFYbGV0S0ZHbFJiLzRwd3JDYjU3bGlCRUtHR3piODFi?=
 =?utf-8?B?N2w2czZEMFF4WklCMVowN0VHL2pOb3pQemtwRHd2RkxMTXo5SnB3L0VHVDJ0?=
 =?utf-8?B?ODUvNTVpZDd0RC9Eck9HWTBNa0hrc2F1VURJeXpsNStLTXBVY2JHYlVUZVIw?=
 =?utf-8?B?cUtTNGNpemZLVHkzanRTbzRlMmdEbm9KVGJoREY3TFo1K2FOdWZSNUttMnVi?=
 =?utf-8?B?U0NXMFh1REdWMmN5TFE2cEROQWdoZmV4VlFHMmhSUElYeExCMGRJM0hSS295?=
 =?utf-8?B?bW1pNW0zRWlQei9aaFhOT3RVUVlhV0daUnV6ZDFwUzV5ZUZNenBLRCthVTlH?=
 =?utf-8?B?UXdWd0ZINWFJYlVlTHREOS9mdHM2dS91Z1Y3cmd3K0k0dEY2UWVRSXhaQVdH?=
 =?utf-8?B?OTdVSFdmUi95Z085U2pUeUhHK2tVYjdTclQzQnNHWnplNnZ2QjRONEl1T0hM?=
 =?utf-8?B?QVJVQVNqREhJZm12UkNWd3d2L1YrRTJ5bFJuOTV2eEJtL1pTSjlsZ0QwV3Za?=
 =?utf-8?B?UFBCTE1hbHc4bzdIR1RZbGxoNVhWY0FTQUZLOUhnZWNheFZEM3ptT3MzWjNv?=
 =?utf-8?B?VXo5eHVMNHV3Z01JQ1dxSFFqaDhKZTRVL2FXemNEeWx1bms0TSs2RDN6VUQw?=
 =?utf-8?B?RGVNYy9QV09mdVZnZE5ZOThrU0Y5YURQMTRhazRxTm5wRFBpOWwreTFHd0Zk?=
 =?utf-8?B?Ti9PcUc1U0JwMURSR2RpQVY1RTlxTGIxenlOWlNqWG1CNE9VaTlFclQyenBM?=
 =?utf-8?B?U3NWQ2N2NlFRM3ZydDlJNmlOOW1Fc3A0TUZqTEk5RjFVOHFtbHAvQ0V0WXB1?=
 =?utf-8?B?S2Y0U0t0Q1FscG8yMFhsZ0h2c1hmOVd3VkN3Z084MG41VXozWWhEMXI5MmFG?=
 =?utf-8?B?azZPRXhDQ29QeFRPYk51Q3ZVNm1iellXbHYvRUNFa2lyRnJvZjYyMlNTcEx4?=
 =?utf-8?B?aHZ2b2NJL0I1L0lnMDNKV2pqN1k5Qmpyb1FaY1Byay9ydktlbGErTysrNmE0?=
 =?utf-8?B?a0pPVEkxWkI2SnR5dWJ1YTcwczNpQlkydlBkODN4aUp5Q3N0WWY2TTIwRE5L?=
 =?utf-8?B?a01iUTNaS3dkbmVnVDFlK3BMZ2tUQ09KVk50V25YZjZnMHlrdGpxT3ZweXBn?=
 =?utf-8?B?NWlUYmFWaG1PTk1ZTmx1RVRTVWNWZVRvS1UzS01wREl3S3F1MHNWOGdRdWtF?=
 =?utf-8?B?cWdNbUVCWG91VmJReGt3YURVczdwdUxPZTZ6WEo3UDBldGVmS3Q2Q0hlOU9o?=
 =?utf-8?B?UmZMalN4c2xMWHNIWW9Ha241c2ttVEY1Tm4rZ25Md1pFVlc4aXNZc3QreHB2?=
 =?utf-8?B?Y3YxWXdESmxrWm9acXF3NUdOR3NWVFFLSnJsYzY5VXl4NXU2aVFBdjlMTm5p?=
 =?utf-8?B?cFFFdVVmRFhUUWVDTVI4QXV4Nit4WHdPdG8xaVJVS1NQb1Y4bGJYeU83Unpy?=
 =?utf-8?B?V2lCcG91MmxhdEpBZHBFRzZqbjJnQ0ZMTzVuQWQrNm1pdTN2amg4MTNEd2VE?=
 =?utf-8?B?QW9NQ0dMeXpVcEt0VDRvNVBpK3hZbFlKNml5Uk00MndvNlZVU29hejN5TE8z?=
 =?utf-8?B?QVE4UVdmZUZsN2RiUnlSOW5NTm1IVmNaaUwzMWpiQVFRODZ4bXVlTGt0K3h0?=
 =?utf-8?B?TFZzYnF3cnlPQWdRckRwa2p3WHM1bzcrVU8vd0FKZC8rcWdITEVEWVpDbHNx?=
 =?utf-8?B?dnlDZW5GRzJGSmpsbDVNdTBZZVlVbVVhVlBPdHJ0VVo3azR4NEdKaVNHeUxu?=
 =?utf-8?B?QXFMV1lFQkJlY1IySndqWmpsL1pIY0gzSU1Hb2plQ24ySG5HM0dSaTdjdnVQ?=
 =?utf-8?B?K08vM3dFVGQwYnF4SFJUOXcyMDg1aXdNd1NROWwzcVM5a2xWQ0VSd2NjZEEv?=
 =?utf-8?B?WkQzYWt1QTYwb0xDaUI1cHhibHRwemNrVW9FWjJsbGFrd25vOGRJVFZ1ZHJD?=
 =?utf-8?B?YWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 41e57746-b549-49a4-a8e6-08dba234330d
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2023 10:48:48.4369 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CpW84nmqzTBw8/XxpXvUzT5SoJlHWzrUYz40c6zH63PGSVmUx0D+3v026jj2/gczJU7uhcMW/gztUV++eryRiuwbF3Q/hJIIMlGIwHgDANY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8536
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692614932; x=1724150932;
 h=message-id:date:from:subject:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FF+6Asnpoew7HAS7c0lltLzHJf5vKswnc/+2MXxkwVc=;
 b=b5Dy63goqcuJ3gWYWdBVthsHXSD2h7OVzq6XjsUb2S67whkAhfECHLNJ
 9OWGB7r4VMpj1yVlseqyO58w1VYvhVO2BrCja1P84ro99M0a4BYXeW19q
 tTrPhGnSAfEh2JCsQbc8r4HDo2LzJ4iXb4TMwDV6r5YMbDy4T0vJsDW6/
 QRUYIql/tEFXiIbp3Gc8aHGMbNibvKQ8cKxTQXCgKSS5kdkY/6fMLie/4
 /fYhg4Id9ZcT5mvw0uLwWIurJIs2JNVbHbEMKl9m8pUi8BJMJzb58dgNb
 coedJioj9qmRNGqOM2NMUQskdXogRd8ZcT7Ayui86j93agJX7pGiUKV2u
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=b5Dy63go
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: store VF's pci_dev ptr
 in ice_vf
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/18/23 20:20, Leon Romanovsky wrote:
> On Fri, Aug 18, 2023 at 02:20:51PM +0200, Przemek Kitszel wrote:
>> On 8/16/23 16:31, Leon Romanovsky wrote:
>>> On Wed, Aug 16, 2023 at 04:54:54AM -0400, Przemek Kitszel wrote:
>>>> Extend struct ice_vf by vfdev.
>>>> Calculation of vfdev falls more nicely into ice_create_vf_entries().
>>>>
>>>> Caching of vfdev enables simplification of ice_restore_all_vfs_msi_state().
>>>
>>> I see that old code had access to pci_dev * of VF without any locking
>>> from concurrent PCI core access. How is it protected? How do you make
>>> sure that vfdev is valid?
>>>
>>> Generally speaking, it is rarely good idea to cache VF pci_dev pointers
>>> inside driver.
>>>
>>> Thanks
>>
>> Overall, I do agree that ice driver, as a whole, has room for improvement in
>> terms of synchronization, objects lifetime, and similar.
>>
>> In this particular case, I don't see any reason of PCI reconfiguration
>> during VF lifetime, but likely I'm missing something?
> 
> You are caching VF pointer in PF, 

that's correct that the driver is PF/ice

> and you are subjected to PF lifetime
> and not VF lifetime.

this belongs to struct ice_vf, which should have VF lifetime,
otherwise it's already at risk

> 
> Thanks

Thank you!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
