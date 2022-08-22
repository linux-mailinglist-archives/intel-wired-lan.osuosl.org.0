Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3671F59CAD0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Aug 2022 23:27:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3921140524;
	Mon, 22 Aug 2022 21:27:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3921140524
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661203653;
	bh=x1K8DL0YUSi73s5EdBwzkmhpAcJVm+TEc+jipmDjgGM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wC7nJL18v7GyZ/7qk90PR1F7tctvjjw0ZcMm8AzKk2l6nhPtH2JTq+DWr/tfIK0PD
	 41syEGBam2J/EjPr0QKrmGnHh+ikUzgVgS4bEeo3XJOJSb7hCJyDpp1zxn1EjGY7hk
	 hWfhJgCEl9dbj4EOM06LrzicjI5XThPCJdiVPsojbemue1luu8GRHRl+dXq1y77qqo
	 6IzrGAYd2J8dknUYyX/zAJ0GuXHJ23HXnVY446CCpra2FiwxLXcdqmxFGFe609vMSH
	 dbvOFq+XwIis86hW0jZF4apleh/ikfMtGxzcLlhrZA3Qt+LNKp0hIOsoRKJFXjI6y8
	 Vile9w27vZf0g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t3GwehOwSEL5; Mon, 22 Aug 2022 21:27:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1AD614044D;
	Mon, 22 Aug 2022 21:27:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1AD614044D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4AD2B1BF317
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Aug 2022 21:27:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1CB95605A6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Aug 2022 21:27:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1CB95605A6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pN_2TYZzV7cy for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Aug 2022 21:27:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A106605A2
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2A106605A2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Aug 2022 21:27:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10447"; a="280495616"
X-IronPort-AV: E=Sophos;i="5.93,255,1654585200"; d="scan'208";a="280495616"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 14:27:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,255,1654585200"; d="scan'208";a="585691935"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 22 Aug 2022 14:27:05 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 22 Aug 2022 14:27:05 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 22 Aug 2022 14:27:04 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 22 Aug 2022 14:27:04 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 22 Aug 2022 14:27:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G3bz773Jc5FAaFeztpm4vEm/jKEi5NIek5f4rwjHMlFaFNxyi0/z1YH6be3YRgaiuRqrumC3Re69vQqNpMdBnu3blqRon2hekfnHsXPLkkNJkbd7ZcCeo26fJCFFO6/MipHpSVUzddPvTB3vyrHygb+rh/XL0RudM0Fy46jVg7iqu9eTRUMQwy3gLz6+Xis5JgPq1y94LePNsfq+0JbsqhQJj7iIwAzaw2VB/DhlKBpqRepQLMRjM0Qi7HgZjo3hGl05j3Ef6o29szya3SEBwMuXt3Uf/ddTUIcDzSsmupW6H1rvI87x4aVwZM8YNx71EMXsqSMkZKyL5oYgnI5a6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3us7zvKkEm+O0mg9GPUBr9SNzG4zs10UhuM11Ctv5sI=;
 b=eyDMopGclRQaqnHHBm2IQvVmHfA+VOcgl3BXsUJEdsJD0G5hwn1AeW0uG0mCH+uredNIKn4bUmlHWTz02V5YYwjEs1OZcJ4ZDWQz79xOjWyvTP6ttcckIgKtVC8tgZUZK6UepGvPvy9R9UxgiCRe1c9XGcZs7Xd15zOUOCGDB+b35nz5OchlYigJCFCZmsYbVW2xMTk+g2N/Vu/wScVzLSBFV7JuaJYLGmO1+tF40t1cRan25W4Ufp1n0u+T28/6rYIUylqqtM6IwxBgK3gNaKzrncpgkbo9Y76QSOSvT1zuRQrngNtOHzQoOB1r3xIzV10YkuIYT6Z6ANvqa8x7nA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM4PR11MB6408.namprd11.prod.outlook.com (2603:10b6:8:b7::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.22; Mon, 22 Aug
 2022 21:27:02 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a422:5962:2b89:d7f5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a422:5962:2b89:d7f5%7]) with mapi id 15.20.5546.023; Mon, 22 Aug 2022
 21:27:02 +0000
Message-ID: <89d5e240-542c-fd81-8598-fbd7965765d1@intel.com>
Date: Mon, 22 Aug 2022 14:27:00 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Andrii Staikov <andrii.staikov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220819100503.9083-1-andrii.staikov@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220819100503.9083-1-andrii.staikov@intel.com>
X-ClientProxiedBy: BYAPR21CA0027.namprd21.prod.outlook.com
 (2603:10b6:a03:114::37) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e70a8363-110f-4881-6791-08da84850df5
X-MS-TrafficTypeDiagnostic: DM4PR11MB6408:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iwUEm4Ik0J4z1MX2nclbbmG7Xz1Z39Z0k665Xcosx8MstaBpmVbZ4HZiVuSkt8hr6RQF9NQp8YuEgJE4P9QKtGhZQWcTlFKlJONdWzciYC8KlWj9rcC2t6z6GzX+SY+wPL9FBAUgqfOK3ys7TDsXs6ZiHBF5pAYzHJyqjOxFeUlxc+sYSEO81xYscK2HW1S9+vr6rC+e5inysud3l056h9+vQznJf8x6w5GMjhf+7Xl+z7fs6UOGbk1E89qmlUGTtujvzviTO4Qvr587w/0OOkpxco8TuN81m8v86xnTrtNYYMrCxrawwgflsTfXNfotuNyOsa6k9aXJlDn6pwQ1nEwdPvlcmZxXy+MW8gU8+G9eX4CPOVQ0pVw5CBSTxrmG2NQKp3MtbCZSZ1niPb0xX234F1qnMOd43D3v+HvHZtNfuM7NOdikqe/AAR1bPyU5NBL6q+Lq94ox/sYlqT5inwh/rWFLw9zoS9p471f3EOR1rm+Hg5/UFb1VGfEzYhQNVcKSogLBnQA5umcaeLjbnGZJYdV/bzqjfjZV0odaFKzDzqk2bV69Pm5V3dk50cys5Rs/6AY5stRyBBAG08lYCqkQYyQ+sIHd83MZd9VcA0noDvUo4uH/mpdl0pYCiUIWv1KqT72iFk8JeRhzUYQJWWirKv9A0Lz6TOdYjt+vSdOv2fItMIPMCQ7bOL8Q8j0GhZFcZFIqIky8E6AAfpnGAfnu7tB53GGb2Ut2ovebyLwn14I04simn23Ud5pMaNbudF07yGg6mVcF4t/1ZgMw459OuOqruV9DxQD5Jy250j37aPOc2p6L4edc4TJpmd1h
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(136003)(366004)(376002)(396003)(346002)(478600001)(41300700001)(107886003)(53546011)(6506007)(31696002)(86362001)(82960400001)(36756003)(26005)(6512007)(186003)(31686004)(2616005)(6486002)(83380400001)(66946007)(8676002)(66476007)(4326008)(66556008)(316002)(4744005)(8936002)(5660300002)(38100700002)(2906002)(20673002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T0t6aGhqUDNRK0FOamRvclFJN2J2eUhsTm9NSHJmMzVZWjk0MWJ4SXk2aVhW?=
 =?utf-8?B?Ti9VY2Q2UG1SUThwQy9jOWtTUFk1T2VpNlpvbG0wUjdJbEo3QzlEc0drUmo0?=
 =?utf-8?B?TGVIdTJBZ2FmUUpNSWo3UXZibzJ5ZlBPTmhXVi9JQUVnOTBsWVVMRmJITEVy?=
 =?utf-8?B?WmdBMklSeSt2bENKd2RiRml3MmFGdUR6TnBxak0rMnREQzN4emNUaHE2V004?=
 =?utf-8?B?d3BnZ2o0dDI3Vy95R0lucHNSZXV1U0VvWGEva0swWlFQbDkwYjZ3WGJIalc3?=
 =?utf-8?B?b3Z1TEZsTXBSdVg4KzZJYVdFYnk0RFNzQzZrVWFoZE9LN1pSVkJITVhGZXFQ?=
 =?utf-8?B?b3FWdlpyQTZUMCtYdkxrZzh3TEx5T1FYS0Z5cjNRd3BQaTBKZXVSdmJwcXhJ?=
 =?utf-8?B?SFEwZmtLSkxqWERPUkJRRHNIb1ZoeklVbmtQOG1DNXBPQnFQc2NqQ2J0SFhR?=
 =?utf-8?B?dHFqSVN0aWU1QkNQSlJ6VnhBWTVQclJ1SW5sYzVQVDBUQnBKSjVJTVQvbmp6?=
 =?utf-8?B?ZXp0OENrMC81cGRFbXh3bzRYY2tGbGorckVhMEFlRnNIeU1YYXhuUVdDZzlm?=
 =?utf-8?B?QzhZSG5NYnNKLzVKaHJrVE1rdi93QkxZUEYzL0FkdTZQMXQ2UXE4ek5pMGdx?=
 =?utf-8?B?SnNJKzBIYmpKa0VCeEpwd2ZTbEtVTSttYkQ1cUFIWjdpenJGWEdEczZTSDd5?=
 =?utf-8?B?cm1HRjRKY3B4WDVRRUJ3eFhMOWhEbEZ0YUlEK3IwY1JLNmc1RDVnMVFuZEFM?=
 =?utf-8?B?SkVDaUlzd21MRVVSL3FOZ05IZ3ErbFVxWE1ybm1kdUk4YXcwZk5xTmtOK2kx?=
 =?utf-8?B?cllVQTZhRHRQUjNKQ2RnTHljeVcxSGc2dUFLOUVKcm00dWVFdzBDYnNsZ2Zq?=
 =?utf-8?B?cHEza01HS2lQaUFib3JZeHJaaEEvdjJUbTIwdFRFQmtKZWhGVkFvWk5lOUlN?=
 =?utf-8?B?QlpnaC85Q0lZTDlEV1ZwWkN4c0l6dEpTcHFIMUt0c2dpN1FlalF0UUV3TUVj?=
 =?utf-8?B?ZGxvUXBMUGNVVXplMHNnc3NmRHo0cFVPT2c1elJNR1V1dFp5THN6KzFMdmRx?=
 =?utf-8?B?MTdIRGtSSnRFUWhlcUhGY3pDWUpEWFhzK1QzQThaRlRkMDZvb1dXMzhlOXpW?=
 =?utf-8?B?Y3dvNkszS0xvVXpKc2toa1lGWm5MSVBiM3ZtL1V4ekJpVzBQSG1DRkVnVndF?=
 =?utf-8?B?djRaSklwK3RQZ2N5RGF0elh2Z0p5eFhPOXhGRHFDTTFEQlJ2a3JrL1ZwSFdI?=
 =?utf-8?B?VlhrQXUyOFRwOUlGYTZMK1dKcHRqTEZSL3Rkb25wN2N5aWx4bXc5L2VtTlF1?=
 =?utf-8?B?US9zbzBsTmpDNjkzUTYrUjFNUXJ4R1B4dGFDMzdzYTFDUzAvR2tneHIzdjh4?=
 =?utf-8?B?TXdTSjVZOU9aKzMrbnJtRmpzVkRDNTBLUE5tL1lPb3JEdXRsWThSOUZVaWVY?=
 =?utf-8?B?OTVxWUljSEJxM1k0WitjYXZCLzNSTWRZcVN1K2RVT3IzMFJVbDVkU0tsbVUr?=
 =?utf-8?B?cHlJZE5OZW9LQ3JwY1JwOVRRTnBBc0NGSVRBNGJOUDk1N2xROGZZbDluTE5H?=
 =?utf-8?B?Y2p6T0hwaHRLQnd0OHNZVUNISjAzb0MxSzN3b0xOTTBkaWcvWGlxRk5DYnRZ?=
 =?utf-8?B?dEoyWnhoa202eTM1dFljSkZpTklXYmhsOUxNdVJoNHMyMXUxOGRlcDFTOXZY?=
 =?utf-8?B?bHB6TXNNYmswSE8zTnhsRVlzZEpld3VheXRxNHN3Q21TT0dUaU4zQ2NEYmE3?=
 =?utf-8?B?VXZKamxXaE5tejZVVjh0STF5cTZRU2VHNkJTdDB2U3U0UWVvZzZQRXRua1Zr?=
 =?utf-8?B?ZEtteE5BQU1ndE5tYlVKa0hsRVR5QUlmLzJES3RhNG9oZzRZb1o3MkdEOFRw?=
 =?utf-8?B?aytjZGZGZW9Db1lnanh2Nnp4SmxlNjZSaCs3SFZKSHllTlU3dnVEQitDcURa?=
 =?utf-8?B?SnRMSVBpc2piT05vOXo5d1c4d1VwM2hXOEpjamJRRXBOc1NocGIyelVLV2I0?=
 =?utf-8?B?Wlg1UjdsT0gzNlM4OXBEdWVqZ2FMa1NCVEhzUktFU0pPVUxIVDRIVlk5QlFK?=
 =?utf-8?B?cFV3ekd0aWxBV0NLMXlDS3hMVzBJV1JEMUlxREVTZG5uQ1JDQ01nSjlEQVNo?=
 =?utf-8?B?UjlaOHIyNS9PKzQ0bmFpbUJqQ2lWdEp0bHh6emNEL3cvdXJWeDBkVjRIV1hB?=
 =?utf-8?B?b1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e70a8363-110f-4881-6791-08da84850df5
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2022 21:27:02.7456 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 181E8aQRD8JzkqUD81wnK/O7fYXHlQzmB1iQMOi7+DvGdbbYWE8yL3kOpmoHalvfhhBXFCi0aX2xGW69fLEhiVKfeaLa/UdgLXq8mBpFqT0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6408
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661203646; x=1692739646;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=K2+ggKLSyQrO0BXPtr7RMpbNh/euuPr/AnW1skW+A9A=;
 b=dOoEqB73OJSAIR43DtzSMZ5G5LBo7slCUyhWU9fi4WdHA2K1cR9zs/Vy
 NmCdUEMJ9vOkPGFHzrHx/AWSut1owRAtcpdZKJm6mGdyrzvLqxKulGFY1
 GJYrYldWuJvO9+HZ05XSL51xAVVcZ516ZabF72dtGkSjUzHGf3WqBBi49
 yK8g4P4NXiooqe4+hPM1tfpDq9uI9dOKtwK2vs7aKi4Kv1lgPcxQhIKVY
 sLvbqYbTuja9qWySz4hul/JF3IapSwFGjWy5OaHwfBMOGSKQXcP8B0hF7
 ZhsB6iCKZ3uyo8t6K9F7CfAyngBOgL494kuCNBZDHsDUBJGgZWQ8IazLt
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dOoEqB73
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix set max_tx_rate when
 it is lower than 1 Mbps
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
Cc: Michal Jaron <michalx.jaron@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/19/2022 3:05 AM, Andrii Staikov wrote:
> From: Michal Jaron <michalx.jaron@intel.com>
> 
> Value max_tx_rate is converted from bytes to Mbps.
> When max_tx_rate was set to lower than 125000 bytes (1 Mbps)
> it was cut to 0 because of this conversion.
> 
> Add a check that if max_tx_rate is lower than 1 Mbps
> set this to minimum usable value of 50 Mbps.
> 
> The visible behavior of it is following: "Setting max tx rate to minimum usable value of 50Mbps."

Sorry, perhaps I was unclear on my comment. I meant, how does this 
issue/bug manifest itself before this patch?

i.e.
"When max_tx_rate was set to lower than 125000 bytes (1 Mbps) it was cut 
to 0 because of this conversion."

What happens because of this?

> Add defined constants.
> 
> Fixes: 5ecae4120a6b ("i40e: Refactor VF BW rate limiting")
> Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
> Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
