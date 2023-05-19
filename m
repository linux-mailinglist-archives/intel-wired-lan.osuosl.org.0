Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F977709C3F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 May 2023 18:17:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 59FA742674;
	Fri, 19 May 2023 16:17:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 59FA742674
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684513044;
	bh=jyH3GX2AZTMEyHtqpKWh5QMY1L5EBEBN0BhMp6DG6Vg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kpBe0GACCCUM4IDanqjoZ0KTgXLYLJEcpI7H64u85Op1izq6kJaRdnCiFlANGBb9a
	 Z07blSxREp0ok7HpWpQUh/oqlsnwN7PJhQdWYi4Z8WCevz2k/SmJdgpn4fdXN+qc8b
	 YabuM43dbXzkTsyBYSBl2o01oOSdwNCnQBAbsj4vxgew++uWtRzqY7fmoUOl1a4p87
	 4tYB4Klxjf+XwV8blT4wzQZefWerJlUah8Jng4N9l/EWhfxKRagJu6fGUdZEpGIGPV
	 UNKmqqujUAjvxxC7oT13snTYGz8mMtrFOrB0ymVYLaL2WP17y94Ls/49GKYfQvfEt1
	 1IPouTjctww7g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0R4kCWCrjRoo; Fri, 19 May 2023 16:17:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D628642673;
	Fri, 19 May 2023 16:17:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D628642673
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C55A61BF362
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 16:17:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5518B40567
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 16:17:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5518B40567
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nnZJGxRt3k1L for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 May 2023 16:17:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2E5174052C
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2081.outbound.protection.outlook.com [40.107.223.81])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2E5174052C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 16:17:15 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Um4nw6DUiUHz9kQKF1CXBjtbA2wcWf2520aVhSD40BLK4V/yVDVEMuNn6g0m7i3tOCgLl1SOS/D+quaMJR7mslQzeN3p70jd5cZLyOjjbYUWnfvkLVWhzm7IEQWpSTIqp0EozBI8P8kG0hUThnOCn9m7xN6o6mRRNC1Bcc0met4ZlRYwX8qlxHIR2BjPZd7y4K5P4ltDkdnDXeMD7hZrbzWMfJSuae5W9z/JJzGzzSPwtYzl8SeGDz03Vr/BnLmeiQnVMeC9+IkhA+pGKGjLZ+gwykGiMblf3pUtZ0DbvtFxjrnsNfKcqH84wb6YBej3GGSQHdsXCUBC2IM+FZn9MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yxely6fiXpb+yBYMHfhIkm371GUS0R5fwI/2zXXhsyM=;
 b=IbtPbJl8jniYgmhkwxaP0XNcJfbTsLyS+XT9WfuPul4HmTiOPXAxNwAge6maT4KP5WVG2CJzXgsRGuCrohXeNz1mJLdT0Smc98utY3x7jIgyNZGp/bDE0i+NKuxPnIYBHQcHNR+FwOhec5PyUpqTMApZcp9fGDsJGlvx35cnsbhZxFOd72XCsGjvRy8rOgwBW+Ns1i1WCIr9yzDpQP3zZVBfA4G0q3yVtvJxAN440jod/tjBtJRSFJArtIgc0pi+CGXSVjmuJUP3KSm5HuzmCLXh3E2JGNtPf+yYKwpL4Io9ZShEl0pAHvCod92NdMNOVVz0sqm5hXXW0xot0064Eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DS0PR12MB6583.namprd12.prod.outlook.com (2603:10b6:8:d1::12) by
 CH0PR12MB5186.namprd12.prod.outlook.com (2603:10b6:610:b9::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6411.21; Fri, 19 May 2023 16:17:13 +0000
Received: from DS0PR12MB6583.namprd12.prod.outlook.com
 ([fe80::fc3e:a5b4:7568:82bc]) by DS0PR12MB6583.namprd12.prod.outlook.com
 ([fe80::fc3e:a5b4:7568:82bc%5]) with mapi id 15.20.6411.021; Fri, 19 May 2023
 16:17:13 +0000
Message-ID: <7969d09e-2b77-c1a7-0e38-f10d61c83638@amd.com>
Date: Fri, 19 May 2023 09:17:08 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.10.1
Content-Language: en-US
To: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>,
 "Michael S. Tsirkin" <mst@redhat.com>
References: <20230508194326.482-1-emil.s.tantilov@intel.com>
 <20230512023234-mutt-send-email-mst@kernel.org>
 <6a900cd7-470a-3611-c88a-9f901c56c97f@intel.com>
 <20230518130452-mutt-send-email-mst@kernel.org>
 <dba3d773-0834-10fe-01a1-511b4dd263e5@intel.com>
From: Shannon Nelson <shannon.nelson@amd.com>
In-Reply-To: <dba3d773-0834-10fe-01a1-511b4dd263e5@intel.com>
X-ClientProxiedBy: BY3PR05CA0033.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::8) To DS0PR12MB6583.namprd12.prod.outlook.com
 (2603:10b6:8:d1::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6583:EE_|CH0PR12MB5186:EE_
X-MS-Office365-Filtering-Correlation-Id: 93ce0865-8ed9-47e1-4245-08db58848102
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AYx2UwT7LW10W5SKX+O2iye6Zg3SpbBI8jcsDmxdnBR5mKIXbOD5yiRtt7pF2ra8A8LZy8a3kruAjxICz9XG5C29nWORUylRtXPn1B8oS5pjCA2YqMWnP/P4e+kadh0czliMFwLZcEmHtJvEjk5rTflKQVx1kIEoBBfPLWw4zjuJ8Jyp3nmjfnqUUb4jW4cN2M6cO+Du/XRfKVD4XzTHgYz/4FMkAyCGX+ayhKeOxrr0SJindO1oOtiUw9srl4PZDVPcFRalo9rTVgIyBPzveJb7lYk7+5xP32QI/xVC+QzCLFchdAZQ1gZnKPuAjC+7wNnRuplRtuELOl3KVgdzgcxfAiiLR9oxNKewd/jjTyUQVU6+TKmqIB+qUYyY5ZP8rGRMkGvCxubzOQyxSm8BxXq/tsqCtErsnL0iza8eY2pL5poEf1Im2tj4zZnW2PlNZDSDvLzR4toynQ90lmt6VHUILBejhAeH8isyAAvB/DMOFKv979SH1b3uTaQO+cja/ZdrdxcrBnMg1lt/TDbWzcRHALiSk2ce9NFMF7UKOYZlf9AkFTFQFu7afN/CugHUpGhdEBNncuHUTpK11hN/hlputqpZo7CAqdUgSWnYmJEf5jGwo5/D8xh0/PyOoTg5R3EoDg83Z5fllMXQYZfHiZoxa4ANccAjie+a8lGCaf92dubQB85uhMK/tqiudY79
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6583.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(346002)(376002)(396003)(136003)(39860400002)(366004)(451199021)(478600001)(31686004)(316002)(5660300002)(44832011)(8676002)(8936002)(41300700001)(7416002)(4326008)(110136005)(2906002)(66476007)(66556008)(66946007)(54906003)(36756003)(6486002)(6666004)(6512007)(186003)(6506007)(26005)(53546011)(38100700002)(2616005)(86362001)(83380400001)(966005)(31696002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Qlk3TDdpNTlpM29iMDRQdXJsMTgxSVRieTMyU3VSckVHZ3czT1hsUzJTMGpF?=
 =?utf-8?B?bmt6cHd2OTQ4cDJETEt1d0xnYVYvYkpSZXlsV2gzTDYzeTI5dmdCYk53ZnJU?=
 =?utf-8?B?d0RVVHpBdUtyTWVCYUo4eGR2NFhsZGJ3OVdhV1pnRTh3WTJScHpNTUp0N1RX?=
 =?utf-8?B?NSs2a3lRcDNxUStTMnhsWVZoNlQ1YmJrVU0zQ3Vucjh0NlRSUk5lQlBoY05n?=
 =?utf-8?B?d0lwU3VOMzNhTUFrTittYzZabzkyb1BHc1N0TC9iK1UzbGhmaUNQZzFaRFVp?=
 =?utf-8?B?VEM5YUZmKzNIaXJDRzg1N2w0MUVjWTBXVUhaeFQxMkh3ekswNjR0dlVUOUJi?=
 =?utf-8?B?YzhEL25LSDZLTllTS0hFMUpRaGpjZUN6S1ZXVzFFMTk5S2h5U3lMeHlEYzZK?=
 =?utf-8?B?b1BxRUMzcU5FS29GLytXZlVwaDlwejVJMlp3VERsWWlLdGczdmxHc083MGFk?=
 =?utf-8?B?WlJ1SlpJYlg1dmJaaHpBZE9DY3p1L1NtVk01U1RSRmhLc2RKKzkzbUg5ckZ4?=
 =?utf-8?B?ZFE0OUFNN3hBL2RNNmI0Q2hvVGhaY1lKaVRWNFo4TzBYcTFTNlNqNnpPUy9T?=
 =?utf-8?B?a3JldjZLZnpCQmIxM2dCd0M2UmpSak1SSC9KK3J5QzNHMiszN1BHNXZoemFT?=
 =?utf-8?B?ZUx2bVJKb0xBbEx3R0M4RHoyMHZJUGZ5QXhTdmJHc0RwR2JoMnVpdEtkWkdU?=
 =?utf-8?B?dC9BeGR6ZVV0S1BqNTBKSWgzTW9NRzJpYjNYUUhZTGdwNnl0MnA1cXNCN0dz?=
 =?utf-8?B?dlFoL0lHWTNGUVltSzZMNVBZZzBzZ1hROGkvWGxsK1ZhaDZ2RjZ0cXFFcTFO?=
 =?utf-8?B?SDdDbXZjNUVjZlRTZktCeU9zeFpXSTh3aEkramcrbUxrbHRCYXk1aE04NkNU?=
 =?utf-8?B?UU5RaFE5MGN1Qk9VNm5SQWFwSTBiT2NWdVhJbmY4dHhRSUhzeUg5SVgwVERI?=
 =?utf-8?B?TXlBaUF0RHNuZlFnNlEycXNSbXlnaWNQd2hJcGdqZktKcjQ0enU4cVRhMS90?=
 =?utf-8?B?eUJ6MmRNcW9MWGpIb3JuWnFHeG1oQWFZNnpCckYvSW90a05lOHBmYU1DZHlJ?=
 =?utf-8?B?eTZVbjQ1VGdZZWJVaG1yM2FGdit4YjdhR0VSWVFjV1ZQb3J4SThQTXVHYmdY?=
 =?utf-8?B?MFhydUFLMUhMdGtSSFFsVFUyZ3JEV2k3MndDWkpmM1ZESFN3ZER5UVVZYmNo?=
 =?utf-8?B?a1pjbUFXZHZueSsrWng2R0ZZY0V1TExxb3JyQnE0ODJ5WE9zSGRScG4yN2VT?=
 =?utf-8?B?TExhWlZtRmN2RnJ2U3VVZy9MQzdFUTZWMXFtTnJ2VFRZOGhKd2NnMUI3S1Qz?=
 =?utf-8?B?Sk9FUEgxSFBLeUpMWWh3RC9GSVFXcWpMUHlnb01hcm9ETHFDd1JqVlZZUE1R?=
 =?utf-8?B?WEsySFFBMlVNWTk0aFZPRkgzenBIb1RaOEpkcEwyMk9iaUxhcU56b1RoMElI?=
 =?utf-8?B?ME4rMWt2Ry9mcXVjTmVSN0oxU2tuc2JCWTR3RnhZK3FldHBHY21VRzN5bkEz?=
 =?utf-8?B?TnliZC9vR2tQbUZJRlVjRjBneldSK3ZoNGhTOEJaekR2MzFMaHowemtJZFFI?=
 =?utf-8?B?N0RDVGF4V0xwWFh2ZmFnRXBsREVIYXlHVUF6a2VzcU1qMjJMTWc1cW5meWxR?=
 =?utf-8?B?THVCNjI5elMyb1ljR3VjQ3grYUd2NlNrMTFTWHdUS2w3ZnIwRnBBL2dpQ2VM?=
 =?utf-8?B?Yk5aRzFheXdKejJkUFRpbTJjandmMUF4S2Nram1leXI5TytjcC8wNDNSYVN5?=
 =?utf-8?B?UEFuYng4RXowalVNc0d2MmlPa0kwZ3hWdGlwS3RHNHBCekpLbDdGd2NneUQy?=
 =?utf-8?B?TC9POWcwajBwaEV1UHZtOEZ1SDNDZnJTUGY4TUZmMUYwRUNodGUyZUxqOWNx?=
 =?utf-8?B?Q3BUbVQxeCtKN1hwMW1wbDRQdElLZ25la2xrdmRMK3hoaDQ3TmdDRy9oRmxn?=
 =?utf-8?B?eTBQVHo2Ty9TQ09mdEVoZ1p2UGJQVnk1dm4xcEt5di82VUhUdWExWWMzVnJZ?=
 =?utf-8?B?SStGeStQbXJwd2FSUkU2OEpURjk5dnlFbWNaMjVxdElvWDdFamExdUEzRnhh?=
 =?utf-8?B?MG0xS1h4VVpaWHkveTRwQXc3cERKeXN0NTdwT2NjUjkwQkszNWNnRHpiVXRr?=
 =?utf-8?Q?sGLQfc9oKnTuYI/QwHGiYQVlT?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 93ce0865-8ed9-47e1-4245-08db58848102
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6583.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2023 16:17:12.9500 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6s/C2EKoV9GS/S8WOjPqLpvv8KuGa/s78rvFxjOzAl05qEZgYRYXWpqpuSTivJVj/ZdXTh17WNVpIfQfOBtCmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR12MB5186
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yxely6fiXpb+yBYMHfhIkm371GUS0R5fwI/2zXXhsyM=;
 b=rrWvvm/lrOkbck52kT+QxHPyvpjZ6CWFciuZlwJ1vd2+8PoyIcoFZ9GO0rjEx9AAfFfeI3MR4joN1AaT7yt8Vp2y+8s7oDLQBE24nHlB6AJvS9VQTHphhRQw2T2i+0GLzTBTMAWKKpT7IA2T8hS2cii+WHxgUlIKxuSgzkYiW64=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=rrWvvm/l
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 00/15] Introduce Intel
 IDPF driver
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
Cc: willemb@google.com, pabeni@redhat.com, leon@kernel.org,
 simon.horman@corigine.com, jesse.brandeburg@intel.com, edumazet@google.com,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 anthony.l.nguyen@intel.com, "Orr, Michael" <michael.orr@intel.com>,
 decot@google.com, davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNS8xOC8yMyA0OjI2IFBNLCBTYW11ZHJhbGEsIFNyaWRoYXIgd3JvdGU6Cj4gT24gNS8xOC8y
MDIzIDEwOjEwIEFNLCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4+IE9uIFRodSwgTWF5IDE4
LCAyMDIzIGF0IDA5OjE5OjMxQU0gLTA3MDAsIFNhbXVkcmFsYSwgU3JpZGhhciB3cm90ZToKPj4+
Cj4+Pgo+Pj4gT24gNS8xMS8yMDIzIDExOjM0IFBNLCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6
Cj4+Pj4gT24gTW9uLCBNYXkgMDgsIDIwMjMgYXQgMTI6NDM6MTFQTSAtMDcwMCwgRW1pbCBUYW50
aWxvdiB3cm90ZToKPj4+Pj4gVGhpcyBwYXRjaCBzZXJpZXMgaW50cm9kdWNlcyB0aGUgSW50ZWwg
SW5mcmFzdHJ1Y3R1cmUgRGF0YSBQYXRoIAo+Pj4+PiBGdW5jdGlvbgo+Pj4+PiAoSURQRikgZHJp
dmVyLiBJdCBpcyB1c2VkIGZvciBib3RoIHBoeXNpY2FsIGFuZCB2aXJ0dWFsIGZ1bmN0aW9ucy4g
Cj4+Pj4+IEV4Y2VwdAo+Pj4+PiBmb3Igc29tZSBvZiB0aGUgZGV2aWNlIG9wZXJhdGlvbnMgdGhl
IHJlc3Qgb2YgdGhlIGZ1bmN0aW9uYWxpdHkgaXMgdGhlCj4+Pj4+IHNhbWUgZm9yIGJvdGggUEYg
YW5kIFZGLiBJRFBGIHVzZXMgdmlydGNobmwgdmVyc2lvbjIgb3Bjb2RlcyBhbmQKPj4+Pj4gc3Ry
dWN0dXJlcyBkZWZpbmVkIGluIHRoZSB2aXJ0Y2hubDIgaGVhZGVyIGZpbGUgd2hpY2ggaGVscHMg
dGhlIGRyaXZlcgo+Pj4+PiB0byBsZWFybiB0aGUgY2FwYWJpbGl0aWVzIGFuZCByZWdpc3RlciBv
ZmZzZXRzIGZyb20gdGhlIGRldmljZQo+Pj4+PiBDb250cm9sIFBsYW5lIChDUCkgaW5zdGVhZCBv
ZiBhc3N1bWluZyB0aGUgZGVmYXVsdCB2YWx1ZXMuCj4+Pj4KPj4+PiBTbywgaXMgdGhpcyBmb3Ig
bWVyZ2UgaW4gdGhlIG5leHQgY3ljbGU/wqAgU2hvdWxkIHRoaXMgYmUgYW4gUkZDIHJhdGhlcj8K
Pj4+PiBJdCBzZWVtcyB1bmxpa2VseSB0aGF0IHRoZSBJRFBGIHNwZWNpZmljYXRpb24gd2lsbCBi
ZSBmaW5hbGl6ZWQgYnkgdGhhdAo+Pj4+IHRpbWUgLSBob3cgYXJlIHlvdSBnb2luZyB0byBoYW5k
bGUgYW55IHNwZWNpZmljYXRpb24gY2hhbmdlcz8KPj4+Cj4+PiBZZXMuIHdlIHdvdWxkIGxpa2Ug
dGhpcyBkcml2ZXIgdG8gYmUgbWVyZ2VkIGluIHRoZSBuZXh0IGN5Y2xlKDYuNSkuCj4+PiBCYXNl
ZCBvbiB0aGUgY29tbXVuaXR5IGZlZWRiYWNrIG9uIHYxIHZlcnNpb24gb2YgdGhlIGRyaXZlciwg
d2UgCj4+PiByZW1vdmVkIGFsbAo+Pj4gcmVmZXJlbmNlcyB0byBPQVNJUyBzdGFuZGFyZCBhbmQg
YXQgdGhpcyB0aW1lIHRoaXMgaXMgYW4gaW50ZWwgdmVuZG9yCj4+PiBkcml2ZXIuCj4+Pgo+Pj4g
TGlua3MgdG8gdjEgYW5kIHYyIGRpc2N1c3Npb24gdGhyZWFkcwo+Pj4gaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvbmV0ZGV2LzIwMjMwMzI5MTQwNDA0LjE2NDc5MjUtMS1wYXZhbi5rdW1hci5saW5n
YUBpbnRlbC5jb20vCj4+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9uZXRkZXYvMjAyMzA0MTEw
MTEzNTQuMjYxOTM1OS0xLXBhdmFuLmt1bWFyLmxpbmdhQGludGVsLmNvbS8KPj4+Cj4+PiBUaGUg
djEtPnYyIGNoYW5nZSBsb2cgcmVmbGVjdHMgdGhpcyB1cGRhdGUuCj4+PiB2MSAtLT4gdjI6IGxp
bmsgWzFdCj4+PiDCoCAqIHJlbW92ZWQgdGhlIE9BU0lTIHJlZmVyZW5jZSBpbiB0aGUgY29tbWl0
IG1lc3NhZ2UgdG8gbWFrZSBpdCBjbGVhcgo+Pj4gwqDCoMKgIHRoYXQgdGhpcyBpcyBhbiBJbnRl
bCB2ZW5kb3Igc3BlY2lmaWMgZHJpdmVyCj4+Cj4+IFllcyB0aGlzIG1ha2VzIHNlbnNlLgo+Pgo+
Pgo+Pj4gQW55IElEUEYgc3BlY2lmaWNhdGlvbiB1cGRhdGVzIHdvdWxkIGJlIGhhbmRsZWQgYXMg
cGFydCBvZiB0aGUgCj4+PiBjaGFuZ2VzIHRoYXQKPj4+IHdvdWxkIGJlIHJlcXVpcmVkIHRvIG1h
a2UgdGhpcyBhIGNvbW1vbiBzdGFuZGFyZHMgZHJpdmVyLgo+Pgo+Pgo+PiBTbyBteSBxdWVzdGlv
biBpcywgd291bGQgaXQgbWFrZSBzZW5zZSB0byB1cGRhdGUgS2NvbmZpZyBhbmQgbW9kdWxlIG5h
bWUKPj4gdG8gYmUgImlwdSIgb3IgaWYgeW91IHByZWZlciAiaW50ZWwtaWRwZiIgdG8gbWFrZSBp
dCBjbGVhciB0aGlzIGlzCj4+IGN1cnJlbnRseSBhbiBJbnRlbCB2ZW5kb3Igc3BlY2lmaWMgZHJp
dmVyP8KgIEFuZCB0aGVuIHdoZW4geW91IG1ha2UgaXQgYQo+PiBjb21tb24gc3RhbmRhcmRzIGRy
aXZlciByZW5hbWUgaXQgdG8gaWRwZj/CoCBUaGUgcG9pbnQgYmVpbmcgdG8gaGVscCBtYWtlCj4+
IHN1cmUgdXNlcnMgYXJlIG5vdCBjb25mdXNlZCBhYm91dCB3aGV0aGVyIHRoZXkgZ290IGEgZHJp
dmVyIHdpdGgKPj4gb3Igd2l0aG91dCBJRFBGIHVwZGF0ZXMuIEl0J3Mgbm90IGNyaXRpY2FsIEkg
Z3Vlc3MgYnV0IHNlZW1zIGxpa2UgYSBnb29kCj4+IGlkZWEuIFdEWVQ/Cj4gCj4gSXQgd291bGQg
YmUgbW9yZSBkaXNydXB0aXZlIHRvIGNoYW5nZSB0aGUgbmFtZSBvZiB0aGUgZHJpdmVyLiBXZSBj
YW4KPiB1cGRhdGUgdGhlIHBjaSBkZXZpY2UgdGFibGUsIG1vZHVsZSBkZXNjcmlwdGlvbiBhbmQg
cG9zc2libHkgZHJpdmVyCj4gdmVyc2lvbiB3aGVuIHdlIGFyZSByZWFkeSB0byBtYWtlIHRoaXMg
YSBzdGFuZGFyZCBkcml2ZXIuCj4gU28gd2Ugd291bGQgcHJlZmVyIG5vdCBjaGFuZ2luZyB0aGUg
ZHJpdmVyIG5hbWUuCgpNb3JlIGRpc3J1cHRpdmUgZm9yIHdobz8KCkkgdGhpbmsgaXQgd291bGQg
YmUgYmV0dGVyIHRvIGNoYW5nZSB0aGUgbmFtZSBvZiB0aGUgb25lIGRyaXZlciBub3cgCmJlZm9y
ZSBhIHByb2JsZW0gaXMgY3JlYXRlZCBpbiB0aGUgdHJlZSB0aGFuIHRvIGxlYXZlIGEgcG9pbnQg
b2YgCmNvbmZ1c2lvbiBmb3IgdGhlIHJlc3Qgb2YgdGhlIGRyaXZlcnMgdG8gY29udGVuZCB3aXRo
IGluIHRoZSBmdXR1cmUuCgpzbG4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5A
b3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4K
