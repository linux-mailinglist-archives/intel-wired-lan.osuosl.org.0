Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E6D63DCF0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Nov 2022 19:18:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 52A5161050;
	Wed, 30 Nov 2022 18:18:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 52A5161050
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669832308;
	bh=+RysgBFgJPkUwnQa2YjQWfzmrLXZC1nWp6jKy2F+wBw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1cgkh5MjGNCO234rRHNqZtHkLSLNLYZKbarYNlcFGNwFO+CpDtucx20aLgqAPBNA+
	 SX0sHSfSyihd+Pf6FT+1QDDuZcIfXtWXEBmuLCmM/eikJGlx30PDtN6qI4BfPU2mVY
	 zXgeU1wCJUlaBS8ZrUhcfN3y5PMtNCNZQ5HKmC11HqAPFwY5MSDq9pMXPOSzn9+fzK
	 hcWwe/5VWs6883liWiefkcuQExqdScDx88GJXdSR52Bw2pFA5MhXDt4MMjxz/0NXNA
	 CCfv/bMZ1jTQl7v50VhmcmqT1iyEjEfL9YBXd52QLspveoBPYrmyQWDV1XSZFTpZ1P
	 OS6vAlSHqcNCw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zr6noJLS7vK6; Wed, 30 Nov 2022 18:18:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 32E32607FE;
	Wed, 30 Nov 2022 18:18:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 32E32607FE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DE27E1BF418
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 18:18:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C457C60BAF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 18:18:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C457C60BAF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aRzp_aqmWdJi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Nov 2022 18:18:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 113FD60AF2
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 113FD60AF2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 18:18:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="316622025"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="316622025"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 10:18:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="973206242"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="973206242"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 30 Nov 2022 10:18:17 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 10:18:17 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 30 Nov 2022 10:18:17 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 30 Nov 2022 10:18:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rp/MwB34UKMaYGxapHmGHGTK47Xz7q7o5lDxbAOeGvE6a5L5KCD9h2sWSlUNgpynNpZCIqGWeDysE3zG/2HzN65wIYi2ypuIlgy6QsmCm0piv1OkaCaQfwg4446dvrvBnWWetWZMwasuc7dxFk77SqbpnahZRM7LcZaVOLcW2RS+idMfRP9Qr7RBUL0v6ZWM3K6V6mKGTAArd8I5Ms00dFtAH9bbOxF+2rrCCXBCOYRgVPiEA5UkeIAflqILDAS1RdclwrJtcoPb89dMmwT4pSCpo/U4eUcisUSspmJYVGtnuiAVQf1IfupmGloWDcnQ0p4AFTbeXh01RAK3FyFDGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SbdaXS+JhFPMa+tTxq1zoWHZzqTedVZ2+UARc6oytnk=;
 b=dwlr4vLedkliIKqTu0uKYpCfHUXQ81CeI+vGj5leXx86+52pRs82gR9Ky9znjItNc91ij2Cxn4smyod//B43H5RRCact3qFAIBfWC8xdBnJPOCf7xJdr/BZOjFHnlIeJbeAkh1vHa1DoYDk1Fk3b45Nt7v0pCVW9ARSm4f8wNSNu34p88hCpEUkRtwdjCaWkhuOyId2nfIXoeg2X+u+MP7uBNZYVshRhxDVZAnUxKWEK790q9UeED1GIVurGHYLzziiBwfqo/iFWEfSzAEoa1yzqiVLLnP4CMrbhQz74oOU11iPMwO9H8xhjz18ulnewdzgTysHAn3PBFesELzBuXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MN0PR11MB6230.namprd11.prod.outlook.com (2603:10b6:208:3c5::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Wed, 30 Nov
 2022 18:18:15 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5%5]) with mapi id 15.20.5857.023; Wed, 30 Nov 2022
 18:18:15 +0000
Message-ID: <db3bc7e0-2d68-cfba-8803-9124e6b3d915@intel.com>
Date: Wed, 30 Nov 2022 10:18:13 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Mikael Barsehyan <mikael.barsehyan@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20221128170354.2537171-1-mikael.barsehyan@intel.com>
 <20221128170354.2537171-3-mikael.barsehyan@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20221128170354.2537171-3-mikael.barsehyan@intel.com>
X-ClientProxiedBy: SJ0PR13CA0222.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::17) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|MN0PR11MB6230:EE_
X-MS-Office365-Filtering-Correlation-Id: e1b62de2-0716-4745-523d-08dad2ff3fab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ffbDL1ir2G+PlINt2simDUEoFGhioy6XGhvWLITGNcJTMYbEu/+g2+AcMZ1g7Fad8z1lV12EgyEbnQioAlLPQYmDqv5NmCCevq1To3qyBvrpbJcRon/XTfeLbQoToVoMmzYjZeKQgI/bmSLyuCbDnTfbDFsfgOiH98H2zk7EvRs3PdhUpusGUWXmf6GfgYR6Hd21HcKUWHYZgoexg2bmzOTXm8n7BA64vBC7m4GNsKNZnoBB1kTKZQ+aUDO6ZluZ74QBxj9CHQ7YxHeaIey4I5hp8JdwmXTBf9phHaq8GXL2etD/BFDpAAkTw3p/H2k7Xg7MnqfCgHRWxMS7rzgqGRvFc0qAoE3pG4Rg2TIxASLTRXwAFNm9ddZX39e64TZKZ7wO5OmcUo3tARuAkw/jKc2oHC/w4IazJe+nAObiPVIxQTTJvszjRZ8gSM/t9CEvg3kokP4Ep3wx0Rt5x8+8YRfUT2X4KhkL6TM32hV/Gt504xyJhg32IdXM5gERsJQhgFV9MKcBCksxFg2Zq4udwp9ePmmvk/Gkbt9VVP8pr4rE99eXXIkVdMUULK/sLPY1crSnNdtm3oqwQdqK90XXAZiYX5l0GZ9XQ/n/h99HQFpndGbYE7QE6uf4Ce48ZnTyQYwGAEtXiGfj/m3dzCWVj6VvCRdREY8XwUP5fJNshqbNVvNTGr9h7Vl+VjAvfiDVgeovPF+ZZF8f/i1Q7r+gFOSAQXQJ2HeneZ3aMpbskL0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(346002)(366004)(376002)(39860400002)(396003)(451199015)(36756003)(66946007)(66556008)(66476007)(5660300002)(8676002)(41300700001)(8936002)(31696002)(86362001)(53546011)(186003)(83380400001)(26005)(6512007)(6506007)(2616005)(478600001)(6486002)(316002)(38100700002)(82960400001)(2906002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OEgyV1pVaXM5MTU4WThIN1JYMUhzeW5JTU5OcityTkV4cGNBWWJEQVBDVmJ6?=
 =?utf-8?B?VkhIMEhBcm1rSVp6a2o5TDhQTkl6b2U5cXpQWnduRFViai9sOHozVEtxRkpp?=
 =?utf-8?B?K3FNdUNBM2E2Z2hFeURVMVNUZERtZmpNYTVnS0laNG9keHp5K281Mm85emVy?=
 =?utf-8?B?eUttVDkyQWdvWUJjOUFRU2hleVdMdWMvSE5mWG11K3E3aG9pd0lGODlTNWty?=
 =?utf-8?B?aHhJTDdvWXR4Q1NWOW83NGFNUHcrSy9nTUJVM2lMSi9qZG5RejZTVDFnTUtK?=
 =?utf-8?B?MGF1dUtXdXB4bXpVdVJtTWdTbDRXSVJ1M1pqRGcwOFIvOFlxRm56aTl1Z2VK?=
 =?utf-8?B?cnMwakFEOUFXUmYrcHJOVkF2eHNZbXFZOHBkWFBuNU14UDFzd05QSG40cG0r?=
 =?utf-8?B?RTI4akJiK2hOVzk0ZEd4NHVZdWZWM0gyNE9aRXNjYlJUVVRCRUpOU1l5aVA3?=
 =?utf-8?B?ZHJGYTlnOEE5R1l3aHdJSXRBRER3SHlLWVBFMHd6Ym5JOHRtRkpMcjMrVTdp?=
 =?utf-8?B?SlhyNENIQzRuYmFPcVdXN0xUNkFtN0hMRUtUalI2MTAzWjFTZ3V3RnFvb1B5?=
 =?utf-8?B?MGk2K0ZKL0hmMkNZYzZpUlVhM25CN0w2eG1FNGF2M3R4TmhSbmdJN0R5Vk43?=
 =?utf-8?B?a1dxaTlpeGl4OFJqdnlIcFhHS1ZFQU9QZzFhcTFRb2xzSGhGbmJ3SUFUREYy?=
 =?utf-8?B?eDVEb0VQcHAvazdndnZNQXV1cmFQOUh6Y1E3ODgwdkN1bHpmbGtQTFpRaW9n?=
 =?utf-8?B?L213OWRGcWpOTTd1THNYMWhGaHVGbVl6NWZmSExpZStNRXhhZkpxaDRGSFFz?=
 =?utf-8?B?SG9KU2ltQWtlcE9hZmZFT090VUpsbzU0cEo2aVJGazRONXNBTHp5aFE1Qm04?=
 =?utf-8?B?UG1Zakh1NDRIYW5kczBrTGlEZjdtaWx4N3ppUzZTWTdEOVUzWlRodFVyekxx?=
 =?utf-8?B?WEI0OEk5bU5LNGdkQTVvOE1pOEFzMVhzNTlkeVJUUXl5cmZ1akNxNTJFNm9y?=
 =?utf-8?B?V3N4dE5KcmVvT2Yvd2EzVWZSeHd3U1pzMzVMMHpIU0tuampMeGw1cFM3cXNW?=
 =?utf-8?B?VTJNV2tmN0FsQzl4cmswbGliY212UjhXQ0pNZjlaaE1BbDl6d2ZYSVNSOUwz?=
 =?utf-8?B?MldzRDFDRDVZdmFISElSTFpEV042OGRCcDQwWE0rdG40UmhxRHg0MVpoSlRR?=
 =?utf-8?B?TzJTZVRVYVVvMUZXWTNHNmxyd0YvanhtOVRTMnA2S3FjQmNWMndUTkQwSHhD?=
 =?utf-8?B?MWlPdlBtaDJZUUw0L0thakVpU3BGUHdPSjB6cTNmdStHa25Qc0c5b1dHb3VE?=
 =?utf-8?B?YjVQcFpCc3JLWFE1d3VmL3pnTjZTeWVWRW9SdktrbkRNQzRDZWFDY1UrZW1L?=
 =?utf-8?B?eG9QZ2xEdWIxMHlYbCtqRktYSGhCVkxHRXdZdjg5a2Rzb3VxQ0IvR2k1ZFJ1?=
 =?utf-8?B?MTRxRHBVRlpOeXVjZ1A0dUNYNVV3R3pBQndpaTZNczYzUmtkNDZnK0wyM20w?=
 =?utf-8?B?RDJVV3VkT0VOYmpELzJhaTc2Tk9YVE8wQmVodTRaVHVJSmVTRFRCbHpROWE0?=
 =?utf-8?B?Wjh1eDIwZ0VPalVhbGwyY0s2cnkrRWdqZ2xiMDQyRlNkMlptenlXU3Y2U0h1?=
 =?utf-8?B?T2ZmdldmSy9vZ2ZlQ0xQVUp0OEEvdGl0SXhOL3dIRGVrTTR0bjZoczd2cVBv?=
 =?utf-8?B?Ni9tTllTbmlBQXU2N25wS0RKdmFBQkNtMUl1ZTJxOHFma0V2YWt0bDhiY2Y2?=
 =?utf-8?B?SXJVbEtJWjgzeHpFRDBEemtBOEdjTERxUThhcVBwOFFHNW5aMGxuMGlWOGlq?=
 =?utf-8?B?VDFQZ2NMelhObHE5eFl4c1ZBbDk1NE4vVGpyUHRmdDhYNjQ5T0RNd1Ntc0Zh?=
 =?utf-8?B?ZXVjU2xRcG9SUXRrVUVGSWZQelVMeVl5aDU0VTI3bytiVTJmQng3UUowMy9m?=
 =?utf-8?B?cVBDWWo1UWcvTlNZanZDR3YxWmNJL2dKQVBIa1M5NzQ0eG1qZzFXWXpTeWFs?=
 =?utf-8?B?VjVVdGN3OVM2VjdUQmF4UjdPVnBLazZVTnFhYjZFc1lSSFNNV3hLNkkzQzB2?=
 =?utf-8?B?R1NFa3MwWS9nbW9NTnJtQWNTY3MwMTllNGhXbTZJa3FNTkUwYzk4c2d2VXpY?=
 =?utf-8?B?V3J3UnlvdUM2YU0rR0pBamZQcEVGMjFGaHY2bDg0QzFMVlhlcGtHZjdLajVu?=
 =?utf-8?B?M0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e1b62de2-0716-4745-523d-08dad2ff3fab
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2022 18:18:15.6157 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aN0BvzkmS21TaYhTsP8Cc5ofco5QUdEviLyyEKIzrqjgGTl0b2EX9fczfn+QrNe6WdCeni6SHbYhvxrjcSjaE2Uu5a7+HDIgCgEdhm+eBLw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6230
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669832299; x=1701368299;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=qAr5luYNK1iOjPnnbQXXDBNWNRmiAm1Z3dLsp+nKxBo=;
 b=nvQ7fP4hmnSm03047tP8Kczhudcges3s6MRuH1C4vs1iFUt6uaJD30fh
 NTsmjExfVDM9cy9ZDzSM135WXlTSCBLp1DoxvR0A0h4rv2d2Ydx8vOXDn
 F9yXBA3c4QquY1RdGJXD6S7aduwhnXudQyIcE9JJwRk2J7cp9ihRfukSG
 ohMBo6MGvfk2MNOJSuYhJ9/poTI0pQnUX5VX0vyjtePjvEirtVDNOIZqo
 FYPP1OpwaRl6wIVTQyLd4Xn4tHl6aBck105LYVd/R0uTrjYzHEIf3DfYP
 FehugflLiQIMbnmMgwzCakm6Ibd3a5BXG9iX0OPrdLPM7gQzwlPSNoZJX
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nvQ7fP4h
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 2/2] ice: Implement
 ETHTOOL_FEC_ALL support
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/28/2022 9:03 AM, Mikael Barsehyan wrote:
> From: Wojciech Drewek <wojciech.drewek@intel.com>
> 
> In case of ETHTOOL_FEC_ALL we enable same flags in fw
> as in case of ETHTOOL_FEC_AUTO. One additional flag that
> we anable is ICE_AQC_PHY_FEC_DIS which allow to detect

s/anable/enable

> No-Fec mode.
> 
> Introduce ice_fw_supports_fec_all function which
> checks if this feature is supported by the firmware.
> 
> Co-developed-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
>   .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  1 +
>   drivers/net/ethernet/intel/ice/ice_common.c   | 53 ++++++++++++++++++-
>   drivers/net/ethernet/intel/ice/ice_common.h   |  1 +
>   drivers/net/ethernet/intel/ice/ice_ethtool.c  | 13 ++++-
>   drivers/net/ethernet/intel/ice/ice_main.c     |  3 +-
>   drivers/net/ethernet/intel/ice/ice_type.h     |  9 +++-
>   6 files changed, 76 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index 54c87ced4fad..4e3934c4e9b7 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -1141,6 +1141,7 @@ struct ice_aqc_get_phy_caps_data {
>   #define ICE_AQC_PHY_FEC_25G_RS_528_REQ			BIT(2)
>   #define ICE_AQC_PHY_FEC_25G_KR_REQ			BIT(3)
>   #define ICE_AQC_PHY_FEC_25G_RS_544_REQ			BIT(4)
> +#define ICE_AQC_PHY_FEC_DIS				BIT(5)

Perhaps ICE_AQC_PHY_NO_FEC_EN would match the existing naming better

>   #define ICE_AQC_PHY_FEC_25G_RS_CLAUSE91_EN		BIT(6)
>   #define ICE_AQC_PHY_FEC_25G_KR_CLAUSE74_EN		BIT(7)
>   #define ICE_AQC_PHY_FEC_MASK				ICE_M(0xdf, 0)
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index 0e9584e50d82..f7db43ac41e8 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -3300,8 +3300,11 @@ enum ice_fc_mode ice_caps_to_fc_mode(u8 caps)
>    */
>   enum ice_fec_mode ice_caps_to_fec_mode(u8 caps, u8 fec_options)
>   {
> -	if (caps & ICE_AQC_PHY_EN_AUTO_FEC)
> +	if (caps & ICE_AQC_PHY_EN_AUTO_FEC) {
> +		if (fec_options & ICE_AQC_PHY_FEC_DIS)

I believe this is a capability bit which would mean that Auto FEC and a 
module that supports No FEC would report FEC All?

> +			return ICE_FEC_ALL;
>   		return ICE_FEC_AUTO;
> +	}
>   
>   	if (fec_options & (ICE_AQC_PHY_FEC_10G_KR_40G_KR4_EN |
>   			   ICE_AQC_PHY_FEC_10G_KR_40G_KR4_REQ |

<snip>

> @@ -1257,8 +1265,11 @@ ice_get_fecparam(struct net_device *netdev, struct ethtool_fecparam *fecparam)
>   		goto done;
>   
>   	/* Set supported/configured FEC modes based on PHY capability */
> -	if (caps->caps & ICE_AQC_PHY_EN_AUTO_FEC)
> +	if (caps->caps & ICE_AQC_PHY_EN_AUTO_FEC) {
> +		if (caps->link_fec_options & ICE_AQC_PHY_FEC_DIS)

If it's a capability bit, this should probably check 
ice_fw_supports_fec_all() instead.

> +			fecparam->fec |= ETHTOOL_FEC_ALL;
>   		fecparam->fec |= ETHTOOL_FEC_AUTO;
> +	}
>   	if (caps->link_fec_options & ICE_AQC_PHY_FEC_10G_KR_40G_KR4_EN ||
>   	    caps->link_fec_options & ICE_AQC_PHY_FEC_10G_KR_40G_KR4_REQ ||
>   	    caps->link_fec_options & ICE_AQC_PHY_FEC_25G_KR_CLAUSE74_EN ||

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
