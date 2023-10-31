Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FBDD7DD14C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Oct 2023 17:13:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 29E9E83C4E;
	Tue, 31 Oct 2023 16:13:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 29E9E83C4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698768785;
	bh=Wz2PcpNVwHPiU6LNbJalL6unwyqEMYHWC1Lyq7Js8yc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tI6KNcgCB/qXlz7ISWFyvftfIdL8zGJwlge2JeqJii++BWsMK3vUhD0xB9Dum5kkK
	 zoxE3Lnt3x0Joh3tVKOBdvnXg8pOlBqx2HLg7uHEe9M2FmHWsD1gM9oNkh6g5X8/Pa
	 0Wk+oPtsHeGA8u2rI+TgrPbT2UteXQkbM1ghoYw95p2T3CfvUyBTkQ/0TSH4M89T38
	 Pa1rfmLEBA47GiHy5RxWERD5LCF4xhKO2gs2+C/lW9zwWO1Po6rZ+uj4JQsKC3Hy6H
	 pjoRQTRPDDZ2vNJ5rNhyR5KABtP+RxseOvPDOnrPasdAt3wMleQWIZJcQcmGE1hLDp
	 s72LZgSG0wrQQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1ZOVio-ykb-s; Tue, 31 Oct 2023 16:13:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE8F083C43;
	Tue, 31 Oct 2023 16:13:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CE8F083C43
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D02691BF2C2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 16:12:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A76C460FE0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 16:12:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A76C460FE0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3TNq5gGZPisw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Oct 2023 16:12:56 +0000 (UTC)
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-sn1nam02on2050.outbound.protection.outlook.com [40.107.96.50])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 792B860FD7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 16:12:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 792B860FD7
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OEsxHD1UPQG8NUi1Zh8AYPCWD9/UcI2/AhdKEvLwchWs7bNiMLwCi2KW0rhfD3kcw1/MHLrYZn74uclUX9KD2oQFhPTCGRXfB+/l0R8xVe6dwhmZFk3yiBNPPTQAg6HXJqezWFxuOpGvCIEVyZ1DEjPIdBHrVLaUdI2TzUpuH1cfyQwKxKcwW4QiEPrxXLf05z3FPWA1VhHZ03NmoG+C0NuK0e10dV6VKF8qYgK+waB8YsZQZ9GZoOn4v7cS4NjlYjlNNv/HTX7gKqf+asjhsNfTxD9S+lgQEV6D+hBCpPTlU9afOM9xVKcNWwl8u8SsqpdtBEoplXXfJGY1jH+lrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UfrW9FFYv0bUvYorS7ZfftGPElITJCxUaAqHlTmcWvU=;
 b=In90nI0rL2SeENuci/6bEVSU03FRB4KRyEKpiDtSFImnD080R7/vcP1EyFvZ9pnaT0TyxvSijtgJ9M8WppD0MsjT9m3TV6CgOPoDThfPyiuqrWUQMJ7F61B4QMVnPqP+pRsrCF7PvUjAnKPcSzUjlu7VXj367Geo9Ju2b+i0963QZb9EjzOMQUzSRSu18iGE+GvKq5FobCUcuAOla6ZMaWU2l0HPLv7RjyBTmdc1fVLFycJX9DoNlEM7GpZuM4EPW9+RDWqRzHOoSTUJxgwq0R2+Ky8Q2IpPqhMr1IrlhTF32uuWtGulktl/TnrUcXETAPrm3JrzTsyR6GH9W4UM1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from DS7PR12MB6288.namprd12.prod.outlook.com (2603:10b6:8:93::7) by
 CH3PR12MB9393.namprd12.prod.outlook.com (2603:10b6:610:1c5::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6933.28; Tue, 31 Oct 2023 16:12:54 +0000
Received: from DS7PR12MB6288.namprd12.prod.outlook.com
 ([fe80::8cde:e637:db89:eae6]) by DS7PR12MB6288.namprd12.prod.outlook.com
 ([fe80::8cde:e637:db89:eae6%5]) with mapi id 15.20.6933.028; Tue, 31 Oct 2023
 16:12:54 +0000
Message-ID: <fce7089a-34e7-46d7-ae93-f1c59297fbf8@nvidia.com>
Date: Tue, 31 Oct 2023 18:12:49 +0200
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Ahmed Zaki <ahmed.zaki@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Alexander H Duyck <alexander.duyck@gmail.com>
References: <20231016154937.41224-1-ahmed.zaki@intel.com>
 <CAKgT0Udyvmxap_F+yFJZiY44sKi+_zOjUjbVYO=TqeW4p0hxrA@mail.gmail.com>
 <20231017131727.78e96449@kernel.org>
 <CAKgT0Ud4PX1Y6GO9rW+Nvr_y862Cbv3Fpn+YX4wFHEos9rugJA@mail.gmail.com>
 <20231017173448.3f1c35aa@kernel.org>
 <CAKgT0Udz+YdkmtO2Gbhr7CccHtBbTpKich4er3qQXY-b2inUoA@mail.gmail.com>
 <20231018165020.55cc4a79@kernel.org>
 <45c6ab9f-50f6-4e9e-a035-060a4491bded@intel.com>
 <20231020153316.1c152c80@kernel.org>
 <c2c0dbe8-eee5-4e87-a115-7424ba06d21b@intel.com>
 <20231020164917.69d5cd44@kernel.org>
 <f6ab0dc1-b5d5-4fff-9ee2-69d21388d4ca@intel.com>
 <89e63967-46c4-49fe-87bc-331c7c2f6aab@nvidia.com>
 <e644840d-7f3d-4e3c-9e0f-6d958ec865e0@intel.com>
 <e471519b-b253-4121-9eec-f7f05948c258@nvidia.com>
 <a2a1164f-1492-43d1-9667-5917d0ececcb@intel.com>
 <d097e7d3-5e16-44ba-aa92-dfb7fbedc600@nvidia.com>
 <aa1dd347-a16c-44f8-95ad-5d50bcba8f34@intel.com>
 <70132b6f-542f-4fe6-971f-ab9ea80acbe4@nvidia.com>
 <e7679b57-af11-42b1-91c7-b18cbcc70119@intel.com>
From: Gal Pressman <gal@nvidia.com>
In-Reply-To: <e7679b57-af11-42b1-91c7-b18cbcc70119@intel.com>
X-ClientProxiedBy: LO3P265CA0021.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:387::8) To DS7PR12MB6288.namprd12.prod.outlook.com
 (2603:10b6:8:93::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR12MB6288:EE_|CH3PR12MB9393:EE_
X-MS-Office365-Filtering-Correlation-Id: 912bd94a-c5b0-4422-dff3-08dbda2c3d1a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yZaRRDSAr2hKtvdD3p1lauS4K7zmDxGfQnDzsTaZhsZXZpn6JQsI2wCIfjJfPC8zFdaxxTJq7edDKbGiTUBjVjJe1sjqIC0URBx/MvS7dXSIciyDSkF5TJJKCosyBvPW8F+AIaa4iyUrrgc8pdqGy6TsHOYawwljTecJW/Amxw5/QTgX3VckDLKUq+noM2YXzZu4+mceKZOjtdB+bggMHUzAWIbQSaxi5O6Oso1v+8qmH9pGYyaa9x+8bBPLyO4OGCf7W2uZA0TxbzEkYNfVIswGC5HNILQMB0zeA5ZBZkVdvAuXaZ9zjES0DKLBq4+spkGhQZXhQYSbMTwv6dQhDz/CR3+7+v+je5++nO4iphtPa/V0Soewew5U0kRoAeVGvjzth6U+NFbPknAq/nN5B/w2dCEHDG8Gwdb6r8tUqgb1wBxTM8YNZ7v8BNfq6X5U5kV4DWVKNM7Q6jvUKVHJMWJ3mlEkRsKEDVBzF+OzFnxTx0fA7ELTRut9ctK5XWu++olM7tkEWZ0cnOKcygtURUrywu/rlUyveVxIhm2bYcy3mep36RPBmR2jNq9qnEVfvwcJ4jzuoOgeSp9dQnxbffyWx5sKpCvbOZrOr2kdoVQvSyqLUn4NBW85QHTALiDqe+vgWp+/hLH7pw1IWjGaXng6pu2atjLFXLSnp0/68RI3e6sZ5tUlKD6a0gJxOnAc
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR12MB6288.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(136003)(39860400002)(346002)(396003)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(31686004)(6512007)(26005)(2616005)(4001150100001)(38100700002)(31696002)(36756003)(86362001)(316002)(2906002)(6486002)(5660300002)(7416002)(83380400001)(6506007)(53546011)(478600001)(6666004)(8676002)(8936002)(54906003)(4326008)(41300700001)(110136005)(966005)(66556008)(66946007)(66476007)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RTY2RFJMZ0poL040bW55RUltS2V0Vmw0ZVl0dXBOOXluWHZia2s3cE40MjM1?=
 =?utf-8?B?MUhjMzlmMCtOaENMWVVDUmFSb2hTcE5tbkMvd2UxQlNuOFhSc3pqZ0EzWGVG?=
 =?utf-8?B?T0pQWjM5bDBRc0RWc01iRldpVG5ub2xaM2xrWDcvS2lKWmUvWU0yVFZ3RndZ?=
 =?utf-8?B?TmlKbjJ0dzZlQmNkN00xVFJxVzU2TU9mVmFZejNnZk9tU3pWTlo5UUprQmNi?=
 =?utf-8?B?VzY3bkJOUkpJK3hKN1JwLzEzTlcyd3IvZ1FzZEhBQ1pnYXdmWUtXZkc4MTFh?=
 =?utf-8?B?dWFKODIrWkkwT1Q1NXltd3JFZ0FhbTFWdDlIWTRyZlU4OUpYTjdLcjBRVFhO?=
 =?utf-8?B?KzFUVzloN2VpRHoyb0w0dmdZV0c0bU9vRjZFbXZWb2tLUmJvL292WVdvTHlz?=
 =?utf-8?B?WTRHeE96QmtaQXI2WHVPenNsWExtMHkwYmVFRmY4emhlVU5sV1lFU3FRZFdM?=
 =?utf-8?B?NCtwZ1hZTTR4dm9na3k1SERiVXNSOVRjRUFSY2cyaWN4eFBGeXh2cFZvV05W?=
 =?utf-8?B?RUo5aUNyY3RwNnJjeXEwYyt2MzB3bGk1ZUJSSTlQdGErY0w0R01ReXllTUZs?=
 =?utf-8?B?bFh3NFVYZnJvajJEcncyN2RSaVh4MndCMnBoTUxkN243MnIwa2FNeUhPcUE0?=
 =?utf-8?B?QVJ4Q2YwTlZjVTQvK1UzR0pCMDRTQU5HVzJjeGY3L0g3UlB2Y2F5NzhhVUZp?=
 =?utf-8?B?bGRRL1lvVWpCT3A3ZUFMWnlhUmluM2dtN25FSURhM0hvSUpocEh0U0R1SjBB?=
 =?utf-8?B?eVRUQVBub2RxMWh4TVBwcHh6Y2FZb2FLUXB3a21HckVQZWVHVmJhTFdsdTR2?=
 =?utf-8?B?VUJCRDNGVWQ2cnRnYmpFWG5zTU9wTzFWd1UxVjZ3aTBhTG1hdXhWWUhJQkFW?=
 =?utf-8?B?Wmh4a0VaRmpjR3JUTmppWGR5WlQ5WUJLSnBaMHIyVy8wSW5pL1A2VlhkVUJN?=
 =?utf-8?B?U0svUVRtcUxqN0V3aXlqMzVEYXA3eEFETmJhay9mTk1TSGFTODhseEhaVXpG?=
 =?utf-8?B?b09jeVY4RDJibGpuYnIrOWNlSTQyV3oxbVFxdGRYWThmblpiNXNRN1BTVklP?=
 =?utf-8?B?ajZCWEhxdDIxSkZjRVVJQ3RKdmVLZ0NKV3Z6NHJxS1lFcmg3bFdHWU5BUkd5?=
 =?utf-8?B?VXcveGZKWU5jUjlndWFEVVpPSUpqSmM3TUxkY1dvT1l5WXNnSnUvZXhVN1Jr?=
 =?utf-8?B?eXNTcVlIVTRqUUdiMlhSYUhDU2ltdzM5MnR2Q1VjbUk3dHZkZHg1ajg3QWpx?=
 =?utf-8?B?WjdOTm9iOEkrc1lyWWVMeExNa3ZZckZqcEVKTU5YT3FaUHUyb2ZLVXdMQjlX?=
 =?utf-8?B?aUI2TTdvdmIrTzJoem5GeFZvc09qV1RsWlhFNjZHeXQwNXkvcWVXSkk5OUZx?=
 =?utf-8?B?OXFzUHFydTFpZFF1dnZGQXRoazJVTHNiNUYva21jMmJWekdRZkZ0MjJmMWxR?=
 =?utf-8?B?TkdUNjFvL09pclgvNWtpVTR4VEhpeXpJQkEwYmU5SVlZa0xOUmRDV1NNN3FJ?=
 =?utf-8?B?dXFhUUQzR3FyclpXbFJ6Rk10dVE3Q051bHI2MGE5N3Y1akFXZHY0aGZHVmpO?=
 =?utf-8?B?MmpKbjFWZVNiQlBYZXFCUUxFWlhXV01RRTlmYVVIbEQyT0FDc0ZqajhnMW9H?=
 =?utf-8?B?Z1lLNjlwREsyTVVmeE8wQnZpcm9ySzRDNWo3M05TMGtmY1JXaGFOQmtoUGlh?=
 =?utf-8?B?c3ZpRzNDRWdrNmU4aVFMR0tmd1RsN1ArRkx1aEN1OGp2K1lkdmdxQUdtcXBz?=
 =?utf-8?B?dFRhR3dnSm15RGFLbGJIQzdPeG4zQXJBU0FTdWprcXZRUjltajJ0dzZRK2xk?=
 =?utf-8?B?a1dVa3h6ekkrM1BRa3ZrZngwWFRkcVZGQ1ZGS3VkaFRVZitIaUpNYnlZRE44?=
 =?utf-8?B?TWRScmRoZThWY1IyYnVDSEt2WUhLblFSaUJrWWZyZGtYVEtjYllxSEprSFZH?=
 =?utf-8?B?WlloQlFDMGMvNFhoaVFuSlhUTjMwTUk1blYwM2I5ZEV6K1M0Qm8vd2g1TndB?=
 =?utf-8?B?d3Fyb1pjdDNrKzNHUlpXeVVuOW9YMTVjS252SkgrVElRZXdZODl3NHk2aXpx?=
 =?utf-8?B?bFd6ZG9jYi9ZZzNRenBnVkhKRjFTanRmR1ZEdjBkcmkzaVp6dm5qdnhLb1Q1?=
 =?utf-8?Q?ElJ4LuIBsfedbB6/bWMJGMNPr?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 912bd94a-c5b0-4422-dff3-08dbda2c3d1a
X-MS-Exchange-CrossTenant-AuthSource: DS7PR12MB6288.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2023 16:12:54.4285 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T13cn1qPavvYNxDAGuc/xoNHDiYY65tlcbcxFsyE8R71rvkZKn7/KxV/d6L1n3+1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB9393
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UfrW9FFYv0bUvYorS7ZfftGPElITJCxUaAqHlTmcWvU=;
 b=g9GPDz+SZzm0BINjeoFGthKVkq4KFTKnQl3MMP7FxvNx8mcKS4UNQfrP4MoNIvULRImr2+yfpICldC5InTWKK4TK2piFlk47n9FK3C2DxueWR0EA/lFh2jgU9tlgJfnFQ6oWfaVWHUR1gW/CtupzunM+el88Q61byHJh0Wj6/HRMiUBgoXejRIVV+249U4AenJYQoqH7OXJz2Rm+4pgYieFNv02wPkUdxm6XBwCJbtkeoPIuX8cPYOtBq1M184DtEWhPpStpeUFPUiW0o+JOA3DAvYV/Oqcq8B2D3t4V0PCNeIgPqVrjVbfpRdaxQY+ED2rIX22MUfKpju2oT9lXgQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=g9GPDz+S
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/6] net: ethtool: allow
 symmetric-xor RSS hash for any flow type
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 vladimir.oltean@nxp.com, Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 31/10/2023 17:14, Ahmed Zaki wrote:
> 
> 
> On 2023-10-31 08:45, Gal Pressman wrote:
>> On 31/10/2023 16:40, Ahmed Zaki wrote:
>>>
>>>
>>> On 2023-10-31 06:00, Gal Pressman wrote:
>>>> On 29/10/2023 18:59, Ahmed Zaki wrote:
>>>>>
>>>>>
>>>>> On 2023-10-29 06:48, Gal Pressman wrote:
>>>>>> On 29/10/2023 14:42, Ahmed Zaki wrote:
>>>>>>>
>>>>>>>
>>>>>>> On 2023-10-29 06:25, Gal Pressman wrote:
>>>>>>>> On 21/10/2023 3:00, Ahmed Zaki wrote:
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> On 2023-10-20 17:49, Jakub Kicinski wrote:
>>>>>>>>>> On Fri, 20 Oct 2023 17:14:11 -0600 Ahmed Zaki wrote:
>>>>>>>>>>> I replied to that here:
>>>>>>>>>>>
>>>>>>>>>>> https://lore.kernel.org/all/afb4a06f-cfba-47ba-adb3-09bea7cb5f00@intel.com/
>>>>>>>>>>>
>>>>>>>>>>> I am kind of confused now so please bear with me. ethtool either
>>>>>>>>>>> sends
>>>>>>>>>>> "ethtool_rxfh" or "ethtool_rxnfc". AFAIK "ethtool_rxfh" is the
>>>>>>>>>>> interface
>>>>>>>>>>> for "ethtool -X" which is used to set the RSS algorithm. But we
>>>>>>>>>>> kind of
>>>>>>>>>>> agreed to go with "ethtool -U|-N" for symmetric-xor, and that
>>>>>>>>>>> uses
>>>>>>>>>>> "ethtool_rxnfc" (as implemented in this series).
>>>>>>>>>>
>>>>>>>>>> I have no strong preference. Sounds like Alex prefers to keep it
>>>>>>>>>> closer
>>>>>>>>>> to algo, which is "ethtool_rxfh".
>>>>>>>>>>
>>>>>>>>>>> Do you mean use "ethtool_rxfh" instead of "ethtool_rxnfc"? how
>>>>>>>>>>> would
>>>>>>>>>>> that work on the ethtool user interface?
>>>>>>>>>>
>>>>>>>>>> I don't know what you're asking of us. If you find the code to
>>>>>>>>>> confusing
>>>>>>>>>> maybe someone at Intel can help you :|
>>>>>>>>>
>>>>>>>>> The code is straightforward. I am confused by the requirements:
>>>>>>>>> don't
>>>>>>>>> add a new algorithm but use "ethtool_rxfh".
>>>>>>>>>
>>>>>>>>> I'll see if I can get more help, may be I am missing something.
>>>>>>>>>
>>>>>>>>
>>>>>>>> What was the decision here?
>>>>>>>> Is this going to be exposed through ethtool -N or -X?
>>>>>>>
>>>>>>> I am working on a new version that uses "ethtool_rxfh" to set the
>>>>>>> symmetric-xor. The user will set per-device via:
>>>>>>>
>>>>>>> ethtool -X eth0 hfunc toeplitz symmetric-xor
>>>>>>>
>>>>>>> then specify the per-flow type RSS fields as usual:
>>>>>>>
>>>>>>> ethtool -N|-U eth0 rx-flow-hash <flow_type> s|d|f|n
>>>>>>>
>>>>>>> The downside is that all flow-types will have to be either
>>>>>>> symmetric or
>>>>>>> asymmetric.
>>>>>>
>>>>>> Why are we making the interface less flexible than it can be with -N?
>>>>>
>>>>> Alexander Duyck prefers to implement the "symmetric-xor" interface
>>>>> as an
>>>>> algorithm or extension (please refer to previous messages), but
>>>>> ethtool
>>>>> does not provide flowtype/RSS fields setting via "-X". The above
>>>>> was the
>>>>> best solution that we (at Intel) could think of.
>>>>
>>>> OK, it's a weird we're deliberately limiting our interface, given
>>>> there's already hardware that supports controlling symmetric hashing
>>>> per
>>>> flow type.
>>>>
>>>> I saw you mentioned the way ice hardware implements symmetric-xor
>>>> somewhere, it definitely needs to be added somewhere in our
>>>> documentation to prevent confusion.
>>>> mlx5 hardware also does symmetric hashing with xor, but not exactly as
>>>> you described, we need the algorithm to be clear.
>>>
>>> Sure. I will add more ice-specific doc in:
>>> Documentation/networking/device_drivers/ethernet/intel/ice.rst
>>
>> I was thinking of somewhere more generic, where ethtool users (not
>> necessarily ice users) can refer to.
>>
>> Perhaps Documentation/networking/ethtool-netlink.rst? Or ethtool man
>> page?
> 
> Do you mean add vendor-specific implementation details to common docs?
> Not sure if I have seen this before. Any examples?
> 
> Or, we can add a note in ethtool doc that each vendor's implementation
> is different and "Refer to your vendor's specifications for more info".

It's a generic ethtool flag, its documentation shouldn't be vendor specific.
The documentation should reflect the exact details about the algorithm,
then other vendors can either use it, or add a new symmetric flag and
document it separately.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
