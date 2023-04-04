Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D9126D68B1
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Apr 2023 18:26:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6CBC960E1D;
	Tue,  4 Apr 2023 16:26:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6CBC960E1D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680625562;
	bh=gG/D5dUXw+dgFFTX1iMfOzCtWxs/E7j5v09CP5S9Ow4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QXuIoqHm950TdrmVPIXWoZSqCKawFLoaqzYqtWKD2kx6iWIIgfZDcftEI/5Tw2mbZ
	 NKIK9vrXXuFNJE+6bIE0tctyTmS9r3dDKKnNECDN2MzJ9uTzJPc2KY9YBXHSINrLYq
	 es5yUnzEtg2Myf81VHg9gRDWKfsPfd7DS0R16aTJCpFmmoPQbOHOdNGgkzlu3FWy1V
	 4P9Ee+lb/ARZbTz7GifgW3o3Gwx/bEEBkUagPhg1fWQ8W1i5LhvK0meng9n+B+x9PY
	 a+9x/ujSk2FFUp1JDqB/VfupXkQJ8/pD3wrryLlmAo0zI0MJcooeYeXwQmDsrXyvx0
	 1swz1LU69j9ww==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2p9YGa6Pcxyr; Tue,  4 Apr 2023 16:26:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6461A60BF7;
	Tue,  4 Apr 2023 16:26:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6461A60BF7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E0C621C277F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 16:25:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C476560BF7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 16:25:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C476560BF7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gSApCrRnZT-D for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Apr 2023 16:25:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D57EF60BEC
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2065.outbound.protection.outlook.com [40.107.244.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D57EF60BEC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 16:25:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LXdNguzBn89PFEDQW48xhLHsMoBGH4T2PPalgBpzby74/IFZuYljqbcin/VE5pkBeU73KO/VdTD+OnMrWNJ+LfU5RC5Z4oypAdt5s2Z0S+QiVTOofKIKstxrRhqLG3LWDrp5SdHBPADyMo9fUI+z8IG0mdBeejxzR29evcLXPsvz4hkboeo0HDa50MRZGemltTIy180TD7tgWmqPRLW4zBjrU6m8N2wVKvXsMRvm+5BLKRjNBaILwAE92MS2IythK2cadPb2sS/pD6k7iuuxe0WDviXinR1GNH3NFuE8hmIUEmfiprWMNdlKlMoXcLjejw1Kpe2XAkDyvCoXPemSEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t1hC3AP7xZkMcK9EZf55X4wzGYoSvMg49fHQ4m7Xq18=;
 b=cZkoMzNZt6/RYvO9O4IO6EQ9zdQNDD9/z2qM2m56r3n1ibq65Zk3AKkVCluaDDSiCxjfeAb7mTO/y+hMOANjUWVCW5GwiAQKqazSua50P5412LM9O5ns1ET9Csy0JuG9Fj0/Uh4Pxgr3Hph5rnTlmfVPcAtUgk0KVMfJ748hoGBdgQUxjeot517gg19Uyd6QtXKGfFzbkCZ0oMPNClmuug3Uo1C7fNaP/eeR6ke2VfekN7ZfqxzRbyEIJIsjZ7LhnhPfEIQYm39HB76sM0Z/ZbDOBT7gOoKdV3i6/UZ9I+8BSCnmK5TZDjHY4IrFfL3iUaEexyHkMDX2+kw380tgyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DS0PR12MB6583.namprd12.prod.outlook.com (2603:10b6:8:d1::12) by
 MW6PR12MB8999.namprd12.prod.outlook.com (2603:10b6:303:247::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6254.33; Tue, 4 Apr 2023 16:25:54 +0000
Received: from DS0PR12MB6583.namprd12.prod.outlook.com
 ([fe80::e786:9262:56b5:ca86]) by DS0PR12MB6583.namprd12.prod.outlook.com
 ([fe80::e786:9262:56b5:ca86%6]) with mapi id 15.20.6254.033; Tue, 4 Apr 2023
 16:25:54 +0000
Message-ID: <3477f7ca-2ba8-48db-3086-481c0d35e83f@amd.com>
Date: Tue, 4 Apr 2023 09:25:50 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.9.0
Content-Language: en-US
To: "Orr, Michael" <michael.orr@intel.com>
References: <20230329140404.1647925-1-pavan.kumar.linga@intel.com>
 <20230329140404.1647925-2-pavan.kumar.linga@intel.com>
 <49947b6b-a59d-1db1-f405-0ab4e6e3356e@amd.com>
 <20230403152053.53253d7e@kernel.org>
 <eb945338-915a-64cd-52c5-3d818ba45667@amd.com>
 <9ADED21A-AF91-4B3A-82F3-FB257EC2B3CA@intel.com>
From: Shannon Nelson <shannon.nelson@amd.com>
In-Reply-To: <9ADED21A-AF91-4B3A-82F3-FB257EC2B3CA@intel.com>
X-ClientProxiedBy: BY5PR03CA0004.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::14) To DS0PR12MB6583.namprd12.prod.outlook.com
 (2603:10b6:8:d1::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6583:EE_|MW6PR12MB8999:EE_
X-MS-Office365-Filtering-Correlation-Id: e8b54f9c-97bd-40d8-ee66-08db352942c3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /9vgVzB+5k7V9Qc6KrEPukp2NFW9lFxnYDpntGp9CtxlSaPGOUa1U81syujq0GZIGBuFZX6AUk4SUUSD1LDmRfj1SuCnic1QVBsaYQCa4+iSSl+EUpZmBcrxg2mLDKxTVZTiXnQsExvyR9JTKGec1iyoy2RiuC1qoLmyqiYD2w+Y73zcLxMmSegBS0ZXM6Od8z+lvd5SSH61zNrDOdPqUeuWYlixPEsWqdgQGP9D3gwx9K6Q3wPP88NQxHXuMZ6XX/TmFXk4darKCwxhFxWvVkQg4yHhV9UxF6lUt2N2t58bVkOg0sTfXrZ0We7tYyoxOxu2j5gMWkulEH5YBvjwE6k4MOJvSTDwSUffYQ3UD8d5bAsU5p9seCWOZhy3vUivj/x5ngh5j1FLO7mlyY0kt4vlzJvX/LUIr8bDpsdixD2ArWFBtL9qqIEHJwQyLfXeJYcnnXVDgEQllkG3cCqcRBTUKCcCwM+3V3/nE/FHEB+V4nBIfc8tCqeN5jfnJhX1PAlkq/SaH2KCEBj43FbW0m9IUQ+oz6a/N7kWPqjUeWrWpDsXBaWx+TwA+QBBTC10OPj8GIh8uXHQVWAVYSbGp+7Yz8Wu0ddWXTTseJXAmW+qybBGGO5Wwqbv02vwKwffV29UMyhPxMWN6QM5lDgo1g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6583.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(39860400002)(396003)(366004)(136003)(376002)(346002)(451199021)(7416002)(6916009)(4326008)(316002)(8676002)(5660300002)(2906002)(66556008)(66946007)(66476007)(31686004)(6666004)(478600001)(54906003)(6486002)(41300700001)(8936002)(44832011)(31696002)(86362001)(26005)(6512007)(6506007)(83380400001)(186003)(38100700002)(36756003)(53546011)(40140700001)(2616005)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NC9kNjJLTkx5bGZVQ2x3dC96SEhhSnV4N0NBWHlITFh2TGEreGNHWGhWaCtL?=
 =?utf-8?B?TGRQV1R3YmIxU3NkVUlQOGZ6MnZFSTE0SHVtVHhaN2NtMlN2ODh0OGpOTWFW?=
 =?utf-8?B?Zm1yNTBmVDZpSHEwN1ZnVEVidTcwbkhXWnM2K1gxM3NJZ3NGUStCSWZXVmdW?=
 =?utf-8?B?WGFqMXowNTV6cStVL1V1clM2cUNDNkgyNFR6ZllBTUlzcEJmUTNsMVFucVVN?=
 =?utf-8?B?aXhFU0NsMjA4VjBkQis1MVp2UUhXYUVkZ1czaHRSQVNKcG9NOWpuMmFhWkQx?=
 =?utf-8?B?Q2l4L0JGYkh3NG43UmwxV2xNM1pwbHlnWnRtdDdUYkF2MzRad3hWTXBtR0VV?=
 =?utf-8?B?Mkd3Um9kcW1PTjE3TlNRS2RFZWF6ZWpzTlVORWltYUw3L2hKSDE2dHVzSjN3?=
 =?utf-8?B?VjBGK0xRRTZjbENlalJQODJGay9xcFRtNDhvTEpoRi9NL2VHemtlNFI0enhv?=
 =?utf-8?B?SXdieUJBWEZyVXVCYytlNWZ1Wm9KYnFLOGhPOUNqanRHd0dRbFNMY21BUk5x?=
 =?utf-8?B?ME9OT2FiMTdKMjVjTEVQVVhQL2I4TjJDMUtRUTZEajJuQUhVV2VEZnEwVkdX?=
 =?utf-8?B?dmdYRXZZc2c5eG9BWGVTOUJHdGUvdjN4TGZ6M3FuZGJTMzdpMkUxZ0FvT29a?=
 =?utf-8?B?ellsRkY3NjB1djVScGNDYm14L1ZIUkVXRE0wNWNrQXFYWURET1d2ZXJJb1RR?=
 =?utf-8?B?cUFTZGo4Nkp4amtwQXhBa3dTRE9acG1SSGdxbUhWQW1RYnVuS0RPQmVsbTBE?=
 =?utf-8?B?RmhQVFBSaEw2N1A4bUFOQ0E3UDJRY014RC91YUM0eDhqelk4T1o2a0ZGcFAy?=
 =?utf-8?B?Nng3STY2S3NLVkdoUnZ5ajlrSytEVWdZK3VKRCtMeDMyQ3k3MTBWbGZJcGlI?=
 =?utf-8?B?UjFuRjhNUUJEdS9leHdRcS9iK0NycVhvTkFOQlAwWWdxM2ZzOVhGTXJRZWx6?=
 =?utf-8?B?M1ZCdndKampYUXhxMWJBT09icXgxMzNUTFpwQ1JKa2hybXRNVU40M1p6Rms5?=
 =?utf-8?B?NzRvcWdlYnF3NzVtM0h6K1oybzIxN1doNVhwYms4Zit5UUtWV0NwUmZJbWhI?=
 =?utf-8?B?aG1SVzNwNFBieWEyZFptN0JhUFZqcFMvV1B1TTRCTHlGVy9TRnN5Zk9UQ2hI?=
 =?utf-8?B?Vko3WnFObEx5UW4xc2Evb1FISUo3aHU2Vk1vRE1WVlpIRTZZNEJEVGo0SU41?=
 =?utf-8?B?TlFwd091UWVRUFNySnFTcWdlelJBNm5HaTlUZVVscForWkh1OHhLcU50M3Z2?=
 =?utf-8?B?dzdvdDQwa2N3UXpFTDB4S0RwSHRpdVF2cGNJNENKN25LcWlWSElJaTRWbVBI?=
 =?utf-8?B?bG1FMEVwNk1VTkthVlpWNGFYZUJ3NTArS0EzcXVaMWtSUHRTR0N3YzR4QmY2?=
 =?utf-8?B?T2lyU2ZYdTJIN3FZeFF4bi9idWJPVndLVElLR3dZZVZkM2ovVU50NVJRSXNv?=
 =?utf-8?B?MG5rVDlQUzNhYzdwNlp0ZVVENlhDU2dUQXhkOHBzc1orWnIyZUNjQ1k1aUdR?=
 =?utf-8?B?Vi96WENvZDlSNmltdEFXM3U2QllYZnBjTWdGeFdQbUQ0d0pCL0ZuMktXWlhM?=
 =?utf-8?B?N01mU1AzNjhSNUJSYW1uWkd2MktlUHM5UU45RlFSbldrd2ZiMjR3UXhLYk91?=
 =?utf-8?B?Q0I4d2RPYmUrM29TK3JtTzN1Nlk5dFdxWEZxeVh6dDJIU0EveWcyUHBWblJC?=
 =?utf-8?B?NXRhbmFmNituV3U1M2w3KzlmMXpKYlJ3aG1iMDIwVDFXejVYSWU5ODQ0dkNw?=
 =?utf-8?B?QWtrM0p3WTVMa2puTmVNVEZxM2MySXJwSk04Y0UzTnNnZWJUQS9qc003aE1T?=
 =?utf-8?B?SUZWU2R2WjB6TExMem9CRlg5MmRCSjdWbTlWK1ZmR1JydkhBTEx1cHNDZDU0?=
 =?utf-8?B?ZVp0ckIyK3hlYWtxS1hOM0huZG90MkxXQUMyNVZ4eVJJTkJNak9tL0k5dzJP?=
 =?utf-8?B?ZFNlYmxIL2w0ajgraHUxbW95UHY4dUJFTTJwZlliazBvbkxyK2YxRkd2aWJQ?=
 =?utf-8?B?T3VoN0lTeG94K2hibkVkUTFyck1VaC9wWVJxSXp4SjVVZGV6QlNsRWhIZEZ1?=
 =?utf-8?B?NFIvVlhkamNjMnl3QldhY1lnT2MzK0E2ditUaGlwNC9oeUU4dnBzNnlzOE9O?=
 =?utf-8?Q?V9solIDMI1xJ4HpwgodpqNM21?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8b54f9c-97bd-40d8-ee66-08db352942c3
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6583.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2023 16:25:53.9480 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MuEm7ALQzBuIyx+ekRpHH3RO81wU2czg19Tt25+ONCnNvkTnuB5g+pd4RgFoyrYR3H6VR18DyNkYBVYF0oZ2Iw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR12MB8999
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t1hC3AP7xZkMcK9EZf55X4wzGYoSvMg49fHQ4m7Xq18=;
 b=j8FH9DTbopXhAWWz953EWCRTOuUtqsnJBG/FE7HLs36azH5DB1XOSTy9SY5ed58AXoUZdUwk249IVLge0bvZzgFyOOfzE97Y9aY4WzGVxhomUaMqkZ2GHJCXmAQT/aIIzstsgoeVoI21CcuitJSncaqvOjNELx8lHxvvQEuj7vY=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=j8FH9DTb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 01/15] virtchnl: add virtchnl
 version 2 ops
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
Cc: "willemb@google.com" <willemb@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, "Burra, Phani R" <phani.r.burra@intel.com>,
 "decot@google.com" <decot@google.com>, "Saleem,
 Shiraz" <shiraz.saleem@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNC80LzIzIDEyOjU5IEFNLCBPcnIsIE1pY2hhZWwgd3JvdGU6Cj4gCj4gVGhpcyB2ZXJzaW9u
IGlzIG5vdCB5ZXQgdGhlIHN0YW5kYXJkIElEUEYgdmVyc2lvbi4gSXQgaXMgdGhlIGN1cnJlbnQg
SW50ZWwgZHJpdmVyLgo+IFRoZSBtZW50aW9ucyBvZiDigJxzdGFuZGFyZOKAnSBhbmQgT0FTSVMg
WmFyZXRza3kgYmVjYXVzZSB0aGlzIHZlcnNpb24gaXMgdGhlCj4gQmFzaXMgZnJvbSB3aGljaCBh
IHN0YW5kYXJkIGRyaXZlciBXSUxMIGJlIGRldmVsb3BlZCBhdCBPQVNJUywgd2hpY2ggaXMgcmVs
ZXZhbnQgaW5mbyB0byBrbm93LgoKUGxlYXNlIGNsZWFybHkgc3BlbGwgb3V0IHRoaXMgaW50ZW50
IGFuZCBhbnkgcmVsYXRlZCBleHBlY3RhdGlvbnMgaW4gdGhlIApjb3ZlciBsZXR0ZXIuCgpzbG4K
Cj4gCj4gLS0KPiBNaWNoYWVsIE9yci4gICAgICAgICAgICBDZWxsOiArMSg0MDgpNjM2LTM3NDQK
PiBOb3RlOiBEeXNsZXhpYyBoZXJlLiBFdmVuIG9uIHNwZWxsZXItZXF1aXBwZWQgaVBhZCwgdHlw
b3MgUHJvYmFibGUuCj4gCj4+IE9uIEFwciA0LCAyMDIzLCBhdCAwMTo1NSwgU2hhbm5vbiBOZWxz
b24gPHNoYW5ub24ubmVsc29uQGFtZC5jb20+IHdyb3RlOgo+Pgo+PiDvu79PbiA0LzMvMjMgMzoy
MCBQTSwgSmFrdWIgS2ljaW5za2kgd3JvdGU6Cj4+PiBPbiBNb24sIDMgQXByIDIwMjMgMTU6MDE6
NTUgLTA3MDAgU2hhbm5vbiBOZWxzb24gd3JvdGU6Cj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL3ZpcnRjaG5sMi5oIGIvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWRwZi92aXJ0Y2hubDIuaAo+Pj4+Cj4+Pj4gSWYgdGhpcyBpcyB0byBiZSBhIHN0
YW5kYXJkaXplZCBpbnRlcmZhY2UsIHdoeSBpcyB0aGlzIGhlYWRlciBidXJpZWQgaW4KPj4+PiB0
aGUgZHJpdmVyIHNwZWNpZmljIGRpcmVjdG9yeSBpbnN0ZWFkIG9mIHNvbWV0aGluZyBtb3JlIGFj
Y2Vzc2libGUgbGlrZQo+Pj4+IGluY2x1ZGUvbGludXgvaWRwZj8KPj4+IFRoZSBub2lzZSBhYm91
dCB0aGlzIGRyaXZlciBiZWluZyAiYSBzdGFuZGFyZCIgaXMgcXVpdGUgY29uZnVzaW5nLgo+Pj4g
QXJlIHlvdSBjb25zaWRlcmluZyBpbXBsZW1lbnRpbmcgYW55IG9mIGl0Pwo+Pj4gSSBoYXZlbid0
IGhlYXJkIG9mIGFueW9uZSB3aG8gaXMgeWV0LCBzbyBJIHRob3VnaHQgYWxsIHRoaXMgdGFsayBv
Zgo+Pj4gYSBzdGFuZGFyZCBpcyBwcmV0dHkgZW1wdHkgZnJvbSB0aGUgdGVjaG5pY2FsIHBlcnNw
ZWN0aXZlIDooCj4+Cj4+IEp1c3QgdGhhdCB0aGV5IHNlZW0gdG8gYmUgcHVzaGluZyBpdCB0byBi
ZWNvbWUgYSBzdGFuZGFyZCB0aHJvdWdoIE9BU0lTLAo+PiBhcyB0aGV5IGluZmVyIGJ5IHBvaW50
aW5nIHRvIHRoZWlyIE9BU0lTIGRvY3MgaW4gdGhpcyBwYXRjaCwgYW5kIEkgd2FzIHVuZGVyIHRo
ZSAobWlzdGFrZW4/KSBpbXByZXNzaW9uIHRoYXQgdGhpcyB3b3VsZCBiZSB0aGUgT25lIERyaXZl
ciBmb3IgYW55IGRldmljZSB0aGF0IGltcGxlbWVudGVkIHRoZSBIVy9GVyBpbnRlcmZhY2UsIGtp
bmRhIGxpa2UgdmlydGlvLiAgSWYgdGhhdCdzIHRydWUsIHRoZW4gd2h5IHdvdWxkIHRoZSBkcml2
ZXIgbGl2ZSB1bmRlciB0aGUgSW50ZWwgZGlyZWN0b3J5Pwo+Pgo+PiBzbG4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxp
bmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
