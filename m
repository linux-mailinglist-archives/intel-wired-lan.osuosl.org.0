Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 562F2827498
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jan 2024 17:01:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 35209835F2;
	Mon,  8 Jan 2024 16:01:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 35209835F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704729694;
	bh=t8RIdX0+mKx9r6vz4uOhoSwAvRdvxNFZ5iHHLjyw8/o=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5tq9D3JBAKnV+F9aZ2otZfY7u+XltUF1dDmDlXJwE1YR0aJfO4lzyATja1f9CckU2
	 X74EFNj4N01AQF+d5UtEoiPCEbMYFXgn5Hm6xjgNOjEDmXntZ78zlpTCSTEr6fR4fU
	 I4pJewOPYeKZeZO4nB46eoTk+ME3rDAfYXfs/6wGDWUa7wCeqyv0ptukuePNnnh7H0
	 Phgvc393qZlPgkvITFp9LrPo+NF9uFUItR5EhtFzl2W2FHNujZtGgcedqadnIMF8v3
	 Zp6ETAaJta2QNofAGxcPUKtlcXsEte4Y0yXhMZjwkZnibs5adQttVixErsDt0qRZDS
	 XPHORsEFejpZw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A7FDnygCEJaE; Mon,  8 Jan 2024 16:01:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 025C983168;
	Mon,  8 Jan 2024 16:01:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 025C983168
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D0CFD1BF5DA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jan 2024 16:01:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A731041B2F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jan 2024 16:01:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A731041B2F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JVZH_RZsKHxY for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jan 2024 16:01:26 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AADBC41AE0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jan 2024 16:01:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AADBC41AE0
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="5290025"
X-IronPort-AV: E=Sophos;i="6.04,180,1695711600"; 
   d="scan'208";a="5290025"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 08:01:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="757657724"
X-IronPort-AV: E=Sophos;i="6.04,180,1695711600"; d="scan'208";a="757657724"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2024 08:01:20 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 8 Jan 2024 08:01:19 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 8 Jan 2024 08:01:19 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 8 Jan 2024 08:01:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nPRfEghxzDohiMoqY3XTwitGunQdYcykFBj4VHoztjISPVxd/6mQuTwxxmZgVuksbZ2UDLfpCzBwA0/FOPRzsvk7zs3EqPl5/TqYPYLO1jPM7xR1Ijl+oxenEaDPMTm7/q8FduWNug33TdvT3sbv8J359ne2P0XrSqxisOrMDtxGVFexVzYDW/kX+KNfxubV+VPIrTToDGh2dT90sXg1SGHEQBRN6PjdqoAuxF5GvpdyD2IGWmU1sdT239Ewmi2sb9wgyqBFMeSPfz7yb4GcVd/qRFGZSVI9IG/9TuJSlDV7b6ijtDWyx93yBQ7jHT1lt2kOfMUZlA0K7GNrOCTdyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t8RIdX0+mKx9r6vz4uOhoSwAvRdvxNFZ5iHHLjyw8/o=;
 b=RghnK/PBYpznH7/uohT181T7otYMZ0kOvIimEx/T0Sfj6shmTPQOW/S4puH9fi35Adrhi/63B335f8Ht4tmmzUNeJ8yHaHuwqINHglN2ZbGP431ccq+x5rmutM/tXrOVRGLQlg60dTbVsW91XaUpJdWPZPVRIV2NcJwVMRkNO+DMpUB8N3CO3GdCqKQR6IVZdJE7R5bCjj0FP9DwqAD0dGdTaCnX5kQnCXlYLA67tVextvFzhHzjBW+3NvYJp6zoNf3Uc61qp2+RAlSo/1021Kcd9e6tE9bgBICHjrXNVp4kTHnV0t2cAd8wZjPH4AZZeBOSm4G88qIdM7qDtEt/Ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by CO6PR11MB5601.namprd11.prod.outlook.com (2603:10b6:303:13d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.21; Mon, 8 Jan
 2024 16:01:10 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::8760:b5ec:92af:7769]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::8760:b5ec:92af:7769%6]) with mapi id 15.20.7159.020; Mon, 8 Jan 2024
 16:01:10 +0000
Message-ID: <49f86f3c-2476-4991-b01c-171a54258994@intel.com>
Date: Mon, 8 Jan 2024 17:01:05 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
References: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
 <658b364d56c6e_5c2a929468@willemb.c.googlers.com.notmuch>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <658b364d56c6e_5c2a929468@willemb.c.googlers.com.notmuch>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR2P281CA0125.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9d::19) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|CO6PR11MB5601:EE_
X-MS-Office365-Filtering-Correlation-Id: ecf80b3f-1a54-460c-0682-08dc10630836
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aRJnJmDg/vYmZ0l7Pe6omigg+GWs1/5KyxANl0T+sISD4+YYdAb7svf+aTiZZ0ZG5gfVZz4FzoQyU6PyFgs6OF948VDzHRY9aPr7ZjPeNXamTepAWUsXX2qzSxioXErxw/x4paKi6WMyO9oKR32gtIedH+9GKUfUOXrD1vNiE5/5mlGoVqkbGiRTd84MT/+t87ce3/Z7D68SXaeEZa+/6HFmPrAUXgY99rgXMRcXfOePvM6UyIo8aDk3LkWxdzA48FC9mwaids7I6YTzitxaMs/NvQDzUr2EjozoTwf8GKQR+a7dezSkEgrqPDFr9aHFQDQ37Z4FgsRCiLEeYeE4KpvJKtr2rRraVgJ5/CJQaXZrHDaciGZmVGMC/Ucxa2TXQ4PQ7ysfu10Z1lsB/WS7aSiVnGqdwMcvUysG4vkYmAg3FwL6sVYxwOoq9G+QCdtG3+gl12keTVPrq6sLji4B7nl6RnD7q3N+M88Qo9NofDDdTOSvOhgDKWB+Svmk0KYszlJXlBENRFSKqmTzWh7s9plJB9X+bhbdqF2zQrNrGnCKV1EjFby5hcjxeaQz87ZGqClPRIRvDHMqjHsQwxA92I0+ACxVtjUhfjebxPE2O8Uasl1K/GXNAUrFmsfe8PaWCqZ/D8gKzqf10fQLSGEP3g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(39860400002)(376002)(136003)(396003)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(966005)(6666004)(478600001)(26005)(6506007)(6512007)(83380400001)(2616005)(38100700002)(66556008)(66476007)(66946007)(41300700001)(6916009)(36756003)(2906002)(5660300002)(7416002)(82960400001)(31686004)(54906003)(316002)(8936002)(8676002)(4326008)(6486002)(31696002)(86362001)(41533002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V25IS3h2UlUrNHlLYmZrQ3dyRHk1MUV5WXV5a0t5WFYxZzJDcjVwQlRCSFJn?=
 =?utf-8?B?Nll2cVVacEVrM3cwR2lxYWt0cmdycElTMkZ5dEg1TEJRdStheHlTYmQ2NjBv?=
 =?utf-8?B?VHgvZ3ZmTEZyUmw4eWF5Y1JsRk1jaythQjI0cWIvNk56ZHBQbndqVTZGRjFQ?=
 =?utf-8?B?cE1LaHVaNEx0VWE3d0lZM25Yc0lnd3ZhQTBadnZhV1U5WUJmUENueU1jM2xW?=
 =?utf-8?B?b3ZucFFXV0FhNkc2L0VFSlE5c2NQbVhvSEsySXRTb1NNTGVONHF5eWttVzJY?=
 =?utf-8?B?UDAyYXNtTFRqdFVzTWRtT1pBQjJ0ZHl1NEhKTXpaU1Y5R1lsMXVEQW0xWnQv?=
 =?utf-8?B?cldoSnRvT0VQT1d2UGdVcFNVSFlKbFpGR1RSVjVPSTZadnNJcU1URzMrS0cw?=
 =?utf-8?B?SXMyNkloMGQxS2pTUTYyRTZJT3BrdTRGZUNmQ1A3V0RvVi9aMUVtcWYxUkUz?=
 =?utf-8?B?bHo3TlJESHM0cCt3UUcvSWRzSHVDcUdadHZ4cmMyQlhHNzJxdlpTMFJGbGVO?=
 =?utf-8?B?YW45dEZjN2RHQ1pIR0JlR2VZc1BlSjIvZ3k5dzBsbDc1eXVrcnNISTU5NWl2?=
 =?utf-8?B?eWY5eEpYTHdWVWs3cTdaREFTL2JFVFg0NUJQajJEbDBhaXByb0I5dDhCd3BH?=
 =?utf-8?B?SW9lY2Zna0RPREtnK3dQQ095U2ZuNHEvemhiTkkzL0NNektTTi9aNGNQSWRI?=
 =?utf-8?B?UWFXWVZCME50QW90Y0tGWVJUbzZ4Tk9iTmZ6Q1h1eWYxNUhoUmZGS1ZaVTY5?=
 =?utf-8?B?L2JtdjJrS1FnMVZIS2lqV1VwZDA3N0N4bkJNVXdESWNBYWJBa2tzRjNaYU9N?=
 =?utf-8?B?d2s1Tnhza3RlbmoveDNXeGRUekZCV01wZEJQRnZxMTAzcUlRb3ZXR0kwY3dm?=
 =?utf-8?B?WndnM2RJa3R5RmN3WmNoMFpsN0YzSndFa09mUkFYU1BCM3R0UFBaU2lHUDhI?=
 =?utf-8?B?c1grRzJoQm0xNVNVZ1VlYVpMM2VZcHVJQmJDaXFPTGtXZ1B4MnA1Nzg1cTVi?=
 =?utf-8?B?czhzT2NDK3JGNFIyL283R0tPODlGSVBidTgrN0V5bktBcW9JRVVJSit5dWNn?=
 =?utf-8?B?MUVNSmZKM3VseFU3RHh4NHh6VWJjU1BsMWVjTUVVUmFLRHpsdm5SWWowQTh5?=
 =?utf-8?B?Ny90czkxeU14ZVovcjViZXFkaDNBSjNaVTlPR0pJVFBzd3JtdjdLOWxkNjh4?=
 =?utf-8?B?aWlyYW84VEQyc0tRVlpjM24vMXRMcEdEWGV3OWhXOTFsSXd2OVo1Z0tYUHJx?=
 =?utf-8?B?bG41TWd1dm5xZEVlQ09UUHZVL1BIL09VbTkvWnZrLzRiVUx4dnNYNEl1ZENS?=
 =?utf-8?B?QmxLQjZhWW5pL2tLbnpMOS9PendpVmdhYTYyR24wbDFjNlZ6UWc0S1dtZEsv?=
 =?utf-8?B?V013d29Vb2V6OXNjdVhzMjdkUWxuYnQrR2p5RDI1MzdxWUdjU2lYdm9UTk9P?=
 =?utf-8?B?ZGtNRUt1UTFYS1BOQ1RnbEE5ZU9laWRvaDYzTnptemdYWlAyR2QrcTBCZHc3?=
 =?utf-8?B?ak8xS3lzRklUM1NVRkJ0Tnd0OCswd3BHYlYrbzRHK0NNNW1zMHJYbklNREhT?=
 =?utf-8?B?eDdBQmhBWElxZ2pZZXFNbU5md2hsaFdmTWZFdllwaWpTTzlPUmIzVjc4RmFj?=
 =?utf-8?B?S3dkMEtBbFIwZytlYzdBOWpUY3V4VE95dndhZ2ZhYjBkVm5oa1VNWFYyUmtQ?=
 =?utf-8?B?ZmFibEFUQnNLc1lpc2ZmUjNrMVVIeFl6ZkZTV3JicW03eG5JbmxsbFh6TWhy?=
 =?utf-8?B?T0RXNUVUS2VPWlJ2VzgwUXNCUDl0V3l5eWVQK3kvaUhkRi9vYVBvQWVXSjVw?=
 =?utf-8?B?RkVuN1ZkeGQwTEdISVZrR0pOZlRoUE9Tem5nK1N6YlFDTzdqcWJXa09LOEd3?=
 =?utf-8?B?ZU82TWx0MWlzK0M1Z29LVEFhQzkrQ3JRcnludXZncThUSjVYcUFEbTlIclBN?=
 =?utf-8?B?a2VRSG8yUjRoWkZvVGJJUmkvM1BzQm9lRGhESzE1b3loY3JUeFRoYmg3Rk94?=
 =?utf-8?B?K2FIb2oyS3A5dk9DcGNwSlRjVVRER1EwZWpVeGpudzdYd3Jxa0pzbkpKSkc4?=
 =?utf-8?B?NDkzQ1VCazdYanZTaGliMVlCU0JrbTk0QS8rTzhzWVlUOWZuSFhvdFZOeHdp?=
 =?utf-8?B?THRrKzJpTE1RejlsT3kzeVg1WUZaUjNHSUlWazhvdC9zcnhBaVlQQnlRblRZ?=
 =?utf-8?B?Y3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ecf80b3f-1a54-460c-0682-08dc10630836
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2024 16:01:10.7697 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VDUmLqp35FQmuPSqO/piGDWY+2GGshdd9KfbLipN9Xq1HSrn7o2qCNdASLaZ/kseT1i0sEdlUW+jzw0cEUr4dnCM/c8rB3WTk0ScsH7IIek=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5601
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704729687; x=1736265687;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Zxtjci5/GmGHks+8vxpLlt6STKZy1s21LGfEL1m70gw=;
 b=KdGkfzkQE6Tkp13Y5YmivjpLrff+eMX6dD1I+0zfEgLMXqCtkAB/SU51
 8BgM7/nx3zCiQeXbnlOjxoBThKcEXNGMte4xyZFQnv7LLysRWAixQv0CP
 bKNf1kaVV1oVzTtnwmyiy5uTNjprFNfWO/qiVA6pzFBY1n0ueaxr5JHlx
 fXIMs/XN1amue7y8evtQylXqhloVvsOS7uVmhy5MTmssCvNzS6sKgKwuT
 JIUb/NV6oYBS1J0bhkA8QSu1u3eieB4hHDzGEFflCqw9Jo0JGbPMkWPv0
 FNzr3ezqSx3+LDUEUKl3KlCCD+eUBiPOJWhSkKi6/v8SBEfvrHMdh9XIB
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KdGkfzkQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH RFC net-next 00/34] Christmas 3-serie
 XDP for idpf (+generic stuff)
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, Daniel
 Borkmann <daniel@iogearbox.net>, Larysa Zaremba <larysa.zaremba@intel.com>,
 netdev@vger.kernel.org, Alexei Starovoitov <ast@kernel.org>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Willem De Bruijn <willemdebruijn.kernel@gmail.com>
Date: Tue, 26 Dec 2023 15:23:41 -0500

> Alexander Lobakin wrote:
>> I was highly asked to send this WIP before the holidays to trigger
>> some discussions at least for the generic parts.
>>
>> This all depends on libie[0] and WB-on-ITR fix[1]. The RFC does not
>> guarantee to work perfectly, but at least regular XDP seems to work
>> for me...
>>
>> In fact, here are 3 separate series:
>> * 01-08: convert idpf to libie and make it more sane;
>> * 09-25: add XDP to idpf;
>> * 26-34: add XSk to idpf.
>>
>> Most people may want to be interested only in the following generic
>> changes:
>> * 11: allow attaching already registered memory models to XDP RxQ info;
>> * 12-13: generic helpers for adding a frag to &xdp_buff and converting
>>   it to an skb;
>> * 14: get rid of xdp_frame::mem.id, allow mixing pages from different
>>   page_pools within one &xdp_buff/&xdp_frame;
>> * 15: some Page Pool helper;
>> * 18: it's for libie, but I wanted to talk about XDP_TX bulking;
>> * 26: same as 13, but for converting XSK &xdp_buff to skb.
>>
>> The rest is up to you, driver-specific stuff is pretty boring sometimes.
>>
>> I'll be polishing and finishing this all starting January 3rd and then
>> preparing and sending sane series, some early feedback never hurts tho.
>>
>> Merry Yule!
>>
>> [0] https://lore.kernel.org/netdev/20231213112835.2262651-1-aleksander.lobakin@intel.com
>> [1] https://lore.kernel.org/netdev/20231215193721.425087-1-michal.kubiak@intel.com
> 
> This is great. Thanks for sharing the entire series.
> 
> Which SHA1 should we apply this to? I'm having a hard time applying
> cleanly.
> 
> The libie v7 series applied cleanly on bc044ae9d64b. Which I chose
> only based on the follow-on page pool patch.
> 
> But that base commit causes too many conflicts when applying this.
> Patch 6 had a trivial one in idpf_rx_singleq_clean (`skb = rx_q->skb`).
> But patch 14 has so many conflicts in page_pool.c, that I'm clearly
> on the wrong track trying to fix up manually.

net-next was updated while I was preparing the series. I also did a
couple changes in the basic libie code, but a new rev wasn't sent.
Please just use my open GH[0].

[0] https://github.com/alobakin/linux/tree/idpf-libie

Thanks,
Olek
