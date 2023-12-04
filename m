Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 512EB803041
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Dec 2023 11:28:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CBC6160F0D;
	Mon,  4 Dec 2023 10:28:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CBC6160F0D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701685701;
	bh=JYTvO9mBe8uti0/dTMPZMzdUtdQu6sMazyk8/1s4KcE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5aOP+o1hPaNjAaRoww/pfTXI/Vv9TvghaJwO2ozcOq6ql7jc54DuvRFQqBCKl45+f
	 GDGji4qVpMnC2IpKqSiJu1XCUKeUt7MAo/J7YSqHblWqSGzAuG4ZsAYVPeM+BciIUG
	 WjZFc3WZN6znWvqHwpaVYOt5E0Daev6IG9ei+L76TYfYnKyiftuH1RebGutYxpufGL
	 BYPZhWPc5sI+W9cYyjxQ0GdoaBsAr0GvzwGtOCaClZ12UdPNORibf4p40O7XnzB/gK
	 2thcDiI2KeCeUg01okhw+XyV1oh9Nw9w4aeoprEejrqXLQLG8osGUqamnvm45vKISV
	 dA4SAwqBCg6HQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pBZ6USdPtDrV; Mon,  4 Dec 2023 10:28:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7257360F0C;
	Mon,  4 Dec 2023 10:28:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7257360F0C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4318A1BF37E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 10:28:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 18228817A6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 10:28:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 18228817A6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A6Knvm66i-By for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Dec 2023 10:28:14 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2930F81470
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 10:28:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2930F81470
X-IronPort-AV: E=McAfee;i="6600,9927,10913"; a="378746937"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="378746937"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 02:28:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10913"; a="914372920"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="914372920"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2023 02:28:12 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Dec 2023 02:28:12 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 4 Dec 2023 02:28:12 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 4 Dec 2023 02:28:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LtVZjZlLkyZTFftmRqCOz4Dg1rk3mdilbtDljnHO2cyYOFBGudOq5WrLS//F26S2nRcXw51wHa6j+gLoNorF1SslA7QtAk9XBmcswJPVi8daLgNKCbRmLQ1yMwy1gf2wrOseb9Z9cN5vvi8IHCXzqCyQDoIaqNpI/eHaHzqmgd32CSLiewnaR68uxWRObssgJc/luhN6dSXKNx+XoSniM+k+qVmkQmRPOJuWVKBWUEMEbsx5rVfZMOAdb3QzijOAcHis8g4biLfS0CLVXHH56+B89jePguCl41uj4GrBZnTfY5yzSvxYIhi0PeroYULYVCv9kb8IwAI85HMlJNSACQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n8p1LdjOpZiyMkMiVZ2m1LbpXxSrThnBlxUo34AH1uY=;
 b=CxxxoncdN37oYwJb+9SEXwU8Vq6LC9Ygmz0qIq+fEor1GT0WXrBgsKVgU1egyFxnQb5YupJdNwqfoLqx7QL7XWNLdZWe5g0a3BuLUxlHw8GMBJmJMMlTrlUKH2TYCD5zjiTjXLJZwquohdqSPyDfBnJQOm0d3plEQlA6BkD9/kOP8Tt4eFozhaT9jlD4x0aFgjA4/NH7FWwH5p6oOh5IuZ7bkavCttPc3/RmVyswqZ/OcMcZhnsmlY00h+0RkA2f99hQ9k25fYCiiTmPvWXUwilxFS0jL5ukV625HZZv7xi0CWEzm2auinyS9R7knERdknG9Ev7grO5VJJhcbP1RQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by SA3PR11MB8022.namprd11.prod.outlook.com (2603:10b6:806:2fe::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.33; Mon, 4 Dec
 2023 10:28:10 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::36be:aaee:c5fe:2b80]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::36be:aaee:c5fe:2b80%7]) with mapi id 15.20.7046.033; Mon, 4 Dec 2023
 10:28:10 +0000
Message-ID: <30c89a45-602f-4fd4-9fe0-70f335859f8f@intel.com>
Date: Mon, 4 Dec 2023 11:26:48 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
References: <20231130214511.647586-1-jesse.brandeburg@intel.com>
 <212e5518-0f72-4bf5-bc5f-49d184be1931@intel.com>
 <97ed09be-cb2b-48c3-846d-7a0e453ef816@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <97ed09be-cb2b-48c3-846d-7a0e453ef816@intel.com>
X-ClientProxiedBy: VI1P190CA0003.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:802:2b::16) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|SA3PR11MB8022:EE_
X-MS-Office365-Filtering-Correlation-Id: 1a976d18-01e4-4873-8ae4-08dbf4b3b655
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CPppmr5De3MFeTgRutNfpkHNjIwrfh7VbxAsSeO6jAdbaYeIBySwbEg5oaKd7DhcJQxWVgyf0ekvvAds/l7IWBLD0yaCLGaV9f0PL7O53H5z5k2XJWly6uXMtBTxF1nIO3FQj9MrjkaVPe4J+0rXscLg/lVeW6lugmTEZc2RaQE2/NrmZxUfO58fWwBRyGL5ZqpFAv8IUeJrE5kR0w5GaGyna5T1bfXgWVxzRHqS48dKIXHmm73cZ6f/N+zhmLgllNkIL8VNovnci0mhq0xxqkW67BbW9J/4Qh73nYV8qy6vU30F2WROuATI5VhweTuDGm+NJumGZ0iL/enwwEAHe7cU5OIjLoMmNpkEe29OtiYo2PhNuWgWO8ItxRQYYTKC81U5uhirp+1CIUcmsYsHp4Y0krzhNtj6K5jSab9ShTVaBa0oEBB3ca9EqqKkOrgzrL8mDzxSPG9TUjK7fk2eu46JhDTPL1KJttuosquZfHt2gQm8Z0PnMpGAMw32ydTcHHrWNm+yEovS2hObbHHe+JJIJllhQ2kk8KG2gfXZBLbvoYcQl/+9ixBetRnnoJe7fVtbBHx/mFCSEHMzjrhtzRasCYbVrkN8sluAMHDsW3fV49fxvw1OhgolN0Ez6v8valSBXB7ClCmyqKvZpPAiAA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(376002)(366004)(396003)(39860400002)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(36756003)(31696002)(31686004)(6486002)(2616005)(2906002)(478600001)(86362001)(6666004)(4326008)(316002)(37006003)(8676002)(8936002)(6862004)(6506007)(53546011)(6512007)(5660300002)(83380400001)(26005)(66476007)(66556008)(6636002)(66946007)(38100700002)(82960400001)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RUJldDJDODg0NFphblZ4c3hLRnJHeHY0aUNGS24veFJ0c3pPc0trZVpxT0tW?=
 =?utf-8?B?UVBia0tJQUxKVS93L0taZFJVS1JhQVMwekRaZHVBYVFWZ21KZVdzQUNTQzRh?=
 =?utf-8?B?MzlIcjZiUUxsTGNrcXpCVE51OERYY01hYWFPNHh1TERxbDREakJ5cWxNajF4?=
 =?utf-8?B?elVSeno4Zk1hQjcvMnV4MkJpUzQ1WE9QUmZMdDRRaE5RSFphbUZnMEFmdWNm?=
 =?utf-8?B?dWtuY1lHdFdZSTMwSEtJZUh0VG5laVNHQlMwYWhneVNWS2RBWWNLYi9zRm9r?=
 =?utf-8?B?Umg2NXRFN2JsK2dpb3B4dWZBS0xBWld2YjNkWlZFTjN4RHJmUld2ZW95NVhs?=
 =?utf-8?B?RUJlR1hVMERPbnRmc0lYRElPSWNJaUdVUDV5cXh5d3RTcUF1UEpsZWdlV3hW?=
 =?utf-8?B?UTdDdjNEbHEwOWJxNmMrM0tVVEdDejZSaEhYakpvdGVrbkIxQ05kZEdpUzZY?=
 =?utf-8?B?Nmp4MkVZWlBDbFhkMk5tNzFZS2lBUFFTVEk3c3RRaHBZalJ5NkxxaHdUWnpL?=
 =?utf-8?B?ZGFHVkl6VEJZMEVyaHBZazhQWDYwdk02YU5NS1pTcmJodWZuNkk4b2ZMc2tv?=
 =?utf-8?B?ZzJrL2wzMlc5aGFaYjcrMnJ0dUtzczVVd1B3dWdNZ29teDZIMENMbzY5cFRn?=
 =?utf-8?B?T3BBTjdOM0YrTnREUkVrUFNxSlkwVGU5UFY2K1Z6MEVuajNaUithMUUzN3NY?=
 =?utf-8?B?WjhzWEVGK1VyMmRtSWdzTHlid1ltR1plZmthSFRWV1ZmR1BmT1dPcVozQ0l2?=
 =?utf-8?B?KzJWS0kwL3J6dVlKVnNzSzdhcHR4cUNtZW1Mc05JdUJvUUMzbmZmemtMdUpa?=
 =?utf-8?B?c0pJRmU2bjZDUFlzK0NPNEtZWUJtWnhsYnczT1l4dkpNY2pQQkdiN1ZGcU1a?=
 =?utf-8?B?c2kwOG5nOWozVytuYW0rb0tXc0F6eUVRZ0M1TXNoVndNdXlYcWhpcEs1NTF4?=
 =?utf-8?B?Nm9YbDVmZ3pUc205cWpmUlZnaXJTQ0ZFUlFjd0FEK2dGanpwaXJUbWRoeDZI?=
 =?utf-8?B?dWhPc2EzMU4zOEFqU0pjNVVqdThJRWJqU0ttUGh2bEI0SmVVbzNKY05WRzFz?=
 =?utf-8?B?MHphNHFqYVE3eXpwNVVERDc5R0U3enlqaktMR2pVb3FtamRoTDhkVTNEeFpq?=
 =?utf-8?B?WGoxKy9aUWROUklqRUVFZ1JGMmlZa3p2NzRqUzNJMEUzY21iUVJKdVk5R3Jv?=
 =?utf-8?B?ZzRxNVN4enlvV2lycnlSOWFHMTZmeVdTaTVEd0RIS0wwM3RWVEtTa1VRSEg5?=
 =?utf-8?B?K053VnBhdnpUWXJvd1dFbzhOYXZYMkI5Mmp6VmdoYm5qeHpMbmEvWTBkVS9P?=
 =?utf-8?B?djdUTHp4V3hRb1NpYmdpbkF5S0tWVzF1bzFFKzZsS3FEQk9QZTZ5b2RvOHBY?=
 =?utf-8?B?RGl0Z1RjUlZrUi9QSlhldVEzME1GQUNNZXM0eiswSGdMQ1Z2eGs2RHpJTmx5?=
 =?utf-8?B?Y2UySm9makxzMFZvYXZUQ2JqR0ZxN2x4bGh5YjVMeHdSRXQwNXZlVElhNlBx?=
 =?utf-8?B?bUtwNlBYQS8vUzFPNUV0aGpXTC9PZ3pWL2VFWHBuQVBIbzEzd00zUkhNT1JL?=
 =?utf-8?B?eER5WGtIc1hQc01zWlkxZThDTldpc29EQnNpY0ZoTUY2WjlzdVZGdCtWVE5S?=
 =?utf-8?B?ZTljeTE4N3ltTFNuZ2NyU2JqKy9reHY0N3VqVHQ1WW8zL1RUYnl4QnYvMmRo?=
 =?utf-8?B?WUJVYjF5TUJmTG9Dc1V0WHlFOXVqZVlEbnVEaDRVRVVKUnd3bzh5WFR1eFNj?=
 =?utf-8?B?SHNmRHRuanA5Q3BmeEJDa09jaUJwZi8wend0aTM1cURra2NrY2VQbkZLa1lo?=
 =?utf-8?B?MllPSHNheEdZNHlabDhzMzdSUjFNYWdOUWwvZk44QlIwNFltNFZua01VV2Jj?=
 =?utf-8?B?U04vWnpaNUF5V1d1OEViaXZXNFNOYWppYXlEZ3BtcDI0akV4dEhON29lN1NG?=
 =?utf-8?B?TDhKYzRyVjZxZmhPaU9HUWxCWFQ4N3dvMkhmMHZKQWlHYXJIM09qRlZyekk0?=
 =?utf-8?B?eGNhOVpJS2tiYitDcjNWekVMU0dBZWZXRXo1azhteFkwUnF2WUtjVTJvZytO?=
 =?utf-8?B?dFBXazRLbzhlUE5rVFFhN0h4LzdSZm5UVWQ5enVvS0oybUFsSHR6all6Vklt?=
 =?utf-8?B?dHI3aXcxd3ZzQ20vWGM3eUl2OU9ucm04L1VGYldpOUNMLzhzRXhjcVhrQ3pY?=
 =?utf-8?B?QXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a976d18-01e4-4873-8ae4-08dbf4b3b655
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2023 10:28:10.0738 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PKVz8zNRbM91Z2ShC3w72KAfnv5F3ijdCBGHZbLb0AznWBhx5yluq4u2rVNjwpUYNdR2qMe6e4W9HR37oEqshIVMtrA9ItbcifvhPjmeCZs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8022
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701685694; x=1733221694;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CnkZiH90aeqyE4L2WYNNx5D7syeS9cThy5HxThB7s2U=;
 b=EYbhx9rofNTKUZm7qnFXrg9kVijwYXaENxB1y9shuXIfej6ujhj8x+bx
 h+0K3HU8qtVE/0Pln5k2BPqooqIxNkugAna3L9Zhlr+4M1u1E1k961SAk
 Hx5gcUB97U9LYSuIOkUbfrZQz5bwUfZcERjYCgYTb6Qv7ZzN4gdhUabvi
 kOuMsMASBQm/Yrc788Ao5qipZ2rPUngrUuPDOKbnyh5jJJ5mfy98rVyYc
 kIsiByZeYa22w1MORFgcbxCoEpIAsupreAp+0HGL9RGIfELD+XphZQtIC
 CEbkTTd4TpL+wU249JcbuS98nbM4vXnILYXfE80aMzo1GK7e6/z7Hh5lA
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EYbhx9ro
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] idpf: refactor some
 missing field get/prep conversions
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
Cc: Julia Lawall <julia.lawall@inria.fr>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jesse Brandeburg <jesse.brandeburg@intel.com>
Date: Fri, 1 Dec 2023 12:12:05 -0800

> On 12/1/2023 6:32 AM, Alexander Lobakin wrote:
>> From: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
>>> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
>>> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
>>> @@ -505,7 +505,7 @@ static void idpf_rx_post_buf_refill(struct idpf_sw_queue *refillq, u16 buf_id)
>>>  
>>>  	/* store the buffer ID and the SW maintained GEN bit to the refillq */
>>>  	refillq->ring[nta] =
>>> -		((buf_id << IDPF_RX_BI_BUFID_S) & IDPF_RX_BI_BUFID_M) |
>>> +		FIELD_PREP(IDPF_RX_BI_BUFID_M, buf_id) |
>>>  		(!!(test_bit(__IDPF_Q_GEN_CHK, refillq->flags)) <<
>>>  		 IDPF_RX_BI_GEN_S);
>>
>> Why isn't that one converted as well?
> 
> Because it's not a constant, and it's not checking a mask with "&", so
> the automation ignored it. I *did* a test, and we could convert the
> return value from test_bit (a bool) into the IDPF_RX_BI_GEN_M mask with
> FIELD_PREP, since C-code allows the luxury of converting a bool to a
> "1", even though it's a bit type ugly in this age of strict typing.

What is "not a constant"?

	ring[nta] = FIELD_PREP(IDPF_RX_BI_GEN_M,
			       test_bit(__IDPF_Q_GEN_CHK, flags));

Is there a problem with this ^ code?

"The scripts ignored that" is not a good argument I'd say :>

> 
>>
>>>  
>>> @@ -1825,14 +1825,14 @@ static bool idpf_tx_clean_complq(struct idpf_queue *complq, int budget,
>>>  		u16 gen;
>>>  
>>>  		/* if the descriptor isn't done, no work yet to do */
>>> -		gen = (le16_to_cpu(tx_desc->qid_comptype_gen) &
>>> -		      IDPF_TXD_COMPLQ_GEN_M) >> IDPF_TXD_COMPLQ_GEN_S;
>>> +		gen = FIELD_GET(IDPF_TXD_COMPLQ_GEN_M,
>>> +				le16_to_cpu(tx_desc->qid_comptype_gen));
>>
>> The definition:
>>
>> #define IDPF_TXD_COMPLQ_GEN_M		BIT_ULL(IDPF_TXD_COMPLQ_GEN_S)
>>
>> Please don't use FIELD_*() API for 1 bit.
> 
> Did you mean that gen is effectively used as a bool? I think that has
> nothing to do with my change over to FIELD_GET, but I could see how
> redesigning this code would be useful, but not as part of this
> conversion series.
> 
>>
>> 		gen = !!(le16_to_cpu(tx_desc->qid_comptype_gen) &
>> 			 IDPF_TXD_COMPLQ_GEN_M);
>>
>> is enough.
> 
> Generally I'd prefer that the kind of check above returned a bool with a
> constant conversion of the mask (compile time) to an LE16 mask, and then
> use that, which is why all of our other drivers do that instead.

Ah, good point. Smth like

		gen = !!(tx_desc->qid_comptype_gen &
			 IDPF_TXQ_COMPLQ_GEN_M_LE);

OTOH x86 is always LE and BE is seen more and more rarely nowadays. It
might just not worth having a LE-version of each such mask for the sake
of a bit more optimized code on architectures where our drivers are
barely used.

> 
>>
>> Moreover, you could use le*_{get,encode,replace}_bits() to get/set LE
>> values right away without 2-step operation (from/to CPU + masks), but
>> you didn't do that here (see below for an example).
> 
> Those aren't widely used yet in our drivers so I wasn't picking them up
> yet. But thank you for pointing that out.
> 
> <snip>
> 
> 
>> In general, I would say those two issues are very common in IDPF and
>> also the whole your series converting the Intel drivers. The scripts
>> won't check whether the mask has only 1 bit or whether the value gets
>> converted from/to LE, so they won't help here.
> 
> I had been hoping to do some more followup work. it's possible that with
> some tweaking the coccinelle script could learn how to detect non-pow2
> constants, and therefore possibly one bit constants as well. Maybe
> @Julia can help us refine the script and possibly get it into the
> scripts/coccinelle directory to help other drivers as well.

Every automated change needs polishing by human.

Don't FIELD_*() macros already check whether the passed mask is actually
a contiguous mask?

> 
>> Could you maybe manually recheck all the places where bitfield masks are
>> used at least in IDPF (better in ice, iavf, i40e, ..., as well) and
>> posted a series that would address them? At the end, manual work is more
>> valuable than automated conversions :p
> 
> I think a followup series would work better for this, do you agree?

Nope :D If you want to convert all of our drivers to use bitfield API,
I'd like to see a complete mature series instead of incremental series
of series where followups will refactor the code introduced in the
earlier ones.

> 
> Thanks,
> Jesse

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
