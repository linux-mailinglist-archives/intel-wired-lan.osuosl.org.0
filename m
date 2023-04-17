Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 66BD46E468F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Apr 2023 13:35:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC15960A64;
	Mon, 17 Apr 2023 11:35:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EC15960A64
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681731337;
	bh=ThGh7h3p7+Gxeg5rjjFj9x3YEw8Qfx7ekyI2ZbuJwHY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ij/9BFWujxH/H/FTW1TgHNBy13ohZhXh5qNpRHYNM/glHApH4Lhuqh8h0cnjPu/xL
	 XlXmnlkqFPCZlXIl1IyAyfSkcYBhUwbh0lroLRc4r/L4woR/QpxVtagpiPV0kvuBig
	 69+nxDdnwiGCzCByBz4Mo1VU1YKZ7qGEFvdfAMUdIURcQByOCOtuIQOg00EpVXK4O5
	 O+9jQ7GsdzIoSCkGnENbpN6Ipwv8PJYafPBljeMSkEY64n98OM5pjtM6EDDyizBzD1
	 A8YbMpEBHAzF1yvy5Aa4yHSb8fwGi6Kokuj23+h43mAGEYjXlKC0P0rid4Wrg4aLE+
	 lsQwWtF9DEISA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FdyIb9fYzX_X; Mon, 17 Apr 2023 11:35:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A05060A69;
	Mon, 17 Apr 2023 11:35:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A05060A69
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C76621C40BF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 11:35:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9CB1841834
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 11:35:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9CB1841834
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ciEb8yGajfQI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Apr 2023 11:35:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 21E074182F
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2103.outbound.protection.outlook.com [40.107.93.103])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 21E074182F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 11:35:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hm3F88jytIOekDhLUqkfKOnmOBOsreNZ1X9yhIl2IwQNiboBwnW3pCVKl/GPI07pgVCh3biy/E2OyUqDwmFvYQPQzk+altmlUPbjla6YKrA55Bo6+IYvYZRo6IKkX4Z4jm2H8uFrCEzRNQ3qAa0fYiXqN0hOHN0h6eEk5r0S8Kbq0LADUm+JI3qKgo9EfEPsIXWeRhB2HDBrQ4FpZU5Nzfx81dLF2XuLBCcQsiy8+q5gBD9YSfvgLlX26uXhyw7jBqF6Ld0gUjrhSXECtstI+tWUqjar3YWPZVpe0gXLUS87mHc9KoOaxx9FAaapTbrSmnKBk4qpnPfGHVnhPE2LyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FlAROnkAYihJtb8qk3AteRDhqWNaWPyaxxryUDANZhI=;
 b=DE9jh16KYq9kRVbUO8smJRcRREPcOeYwaF7sMrT79ywBw1MxPIfmHGjIHmQhC4IJx9oJSiq0S5Iv3VfmoxO0edg0xCEuKasg3OdizxDEXEWAShTOu/ogAwiGJaPkuI+pxlVoIKvnhyJBpJhqnpVyC2nT2O1Ljmb3Sb3nNpxZuCM9+XgZeJgpoDfieKwCP3xllRH8UK3qDs/JR/xc07Rc+Rqz3CU0czluToi9w+i6tT70LIz8msmT6nzN62elzaLt6Z+8KrGaAfYMIkO/YTI/htGcnTpZrfG7+IRc3bi3FegRF4cdXZrIWr5d9w/eb+edKrSyLeJ1mE/f+0v7ykrMCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by DM6PR13MB4431.namprd13.prod.outlook.com (2603:10b6:5:1bb::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Mon, 17 Apr
 2023 11:35:23 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::89d1:63f2:2ed4:9169]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::89d1:63f2:2ed4:9169%5]) with mapi id 15.20.6298.045; Mon, 17 Apr 2023
 11:35:23 +0000
Date: Mon, 17 Apr 2023 13:35:14 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Jesper Dangaard Brouer <jbrouer@redhat.com>
Message-ID: <ZD0u8i+SIr6IAQ7C@corigine.com>
References: <168098183268.96582.7852359418481981062.stgit@firesoul>
 <168098189656.96582.16141211495116669329.stgit@firesoul>
 <ZDQnFmZdESpF1BEz@corigine.com>
 <8cd2d200-09ec-57c2-0619-963dfe5efd58@redhat.com>
Content-Disposition: inline
In-Reply-To: <8cd2d200-09ec-57c2-0619-963dfe5efd58@redhat.com>
X-ClientProxiedBy: AM0PR01CA0123.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:168::28) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|DM6PR13MB4431:EE_
X-MS-Office365-Filtering-Correlation-Id: 486d9871-041d-42fe-435e-08db3f37d509
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: y43xGCDqODxe8wWoUbXwToAejC9gA+Tekz0H9hHElVzioW1UGBLiCtmQdUVPjTZWg+qun8k65bHD+o6TYoogWbO7NC/J+5Nx5aXvEYO/r1jgB1woFe1PXNq0Ke9bDl81OIgW0FSW1jjSLpz4vHrgbW/bxNDuXX9xIy3j4RnWyldbaANzx3BcWUn8ZbQnLfyvOfBdvkZUH48VBmLesTj2he8H0ejI576QIINEfF/Ytiewpls9ZjqUmABMnkaexZZP74qGGCoZSESM2zhdETvA84RXKfl5klLmN4WowyC1GaQXnnMxxzaZHB8OX3RUN6X+GB2v3C6gHkhAj1yvHh85kTmlDD6QTlMRdoZlD/yh+uJwPQ25AiH/AWDIGHdEZ+lhFjgVitVdL8vcX8zXGjHu1DVBb/gof31JLvOW9Li0Z+totGQf5hrhA5PTSdzNvDkApEf/Xge+kV6NvAQqjkAlW34uIfhiyvf9MIOUX6F8q5OsAV3HeVPbAYFye3cDGTCkquNJOTO/0OPQWgoaazrmcKeS/8Tg1i/W5LUItQqIT+s57Wjqggtux+E2opaL8cXpTyopd79wk3nXmCbFTRkeCef1gXybiDLYBBlGuyU79ig=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(39830400003)(396003)(136003)(346002)(376002)(366004)(451199021)(7416002)(5660300002)(44832011)(2616005)(86362001)(83380400001)(966005)(66574015)(186003)(6506007)(6512007)(38100700002)(8676002)(8936002)(54906003)(478600001)(6666004)(6486002)(316002)(41300700001)(36756003)(66476007)(66556008)(4326008)(6916009)(66946007)(2906002)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZDV3aU1kU0Zsb1NkdlVxaUFiM2tlaFBRWVJJR3owT3ZUV0lld3NmY1ZLRVRY?=
 =?utf-8?B?RUpvelhMWkMxaldHTmNJa0pxcnZMMjVGc2xRL3ZFNVZVWjB3QkJmdExkMTBY?=
 =?utf-8?B?RUE1V2lKeVZuNStxbm9IS3Z6ejF5YWNjdWhkWk1vMmlFOTN5M1R0MmViYXZu?=
 =?utf-8?B?YkxmZUw5ckpDSm1SaHlYU0Q4ZThhbGFCa0EydE5SaDkybUtoWk94YWZCeXlk?=
 =?utf-8?B?TDNGT2hJeEhadWF1aTdJck4xb1RHNFhUY29DL21melBPUjhaVFcvTXFtQm9E?=
 =?utf-8?B?VDM4VDhKSmJVMFVPVVRoT0hFb2pONDlhcU80NHRtZFBzYzE0bkdzMnJoeUpN?=
 =?utf-8?B?aDAxU2kzOHI0dy9PYUFCTUpDOFhUbUl5NHRwMUJPN1o3SWZzcHFLcG9LOXNZ?=
 =?utf-8?B?Um5OSlpkNWIxZFNURDJFRk9pQUZabUQySTBhcVkwUTMzbW9uQTBNb0FTdEZE?=
 =?utf-8?B?Rk5SQUZGR0FFNTFaOW9Wb0lMMThHalU0RVIrLzdGdHNveUZvOXhSRi9WM1JZ?=
 =?utf-8?B?OG9EMlZwbExsVXZJYmVIZXE3MkdrSlBtM0ZiN0cwRjVjYmNjQ3JzSXo4RGc3?=
 =?utf-8?B?L0dHeHdGZmhvU084Q3N3UEVBcFZ5V0N4dzhWM3pQR2FsZnkzamF6eXBjR054?=
 =?utf-8?B?ZlRhNXFjdHhOa25DZU5CZTdFRVNUMGdiekNWQ2dBaFpDeDlBcnJGaFkxbTVx?=
 =?utf-8?B?R3l5S2lqL0xvSWZyWjdwemlvNlpmZEd6Rzk5d2RjUHZvSzBGL2tDVDMvenVN?=
 =?utf-8?B?SUJGZjJ4M09aSEFkV0w3aTd2cWJBaEZIMW5TUlR1YnE0RWJCclJOaUNsd3Nz?=
 =?utf-8?B?eGswdG9xWStIaUVsSlhzUzloVm84dkJaS3JkbFBQbEtTSURWSUUrdjZUSllC?=
 =?utf-8?B?TEtBanlMc2duTzZtNnJHUEpvenZKekJ1K2twMVhhVXlVZG5tSXlBb1E3OTBB?=
 =?utf-8?B?MENZS1g5UkZXN3VlY2pzSHBQMU03L0V0RXl4OEtGK2QyNmhvSzR1bTdRbTVo?=
 =?utf-8?B?K29PTVpENW9lc2F1NHV4bHp0YWp1YU9WWWpXZUdzbnc5eHgvRktNV21LMjFo?=
 =?utf-8?B?RmszRW5PazZXdGhCS1FTTVgzblJPQlhscnY4c0F4dStFZmNxaDJkZkliek9X?=
 =?utf-8?B?aHV3UUN1bGtMdnJYZHF0dmU3ZVFOSEEvZ2hoZk1idnFYZjNmd0Q4eUJiRVpI?=
 =?utf-8?B?Ukx5RmZTeCsvWS9nNkt1dDFtMnc2UjN0cUY4c1NoL0IzY1hXbWgvNUo4QUQ5?=
 =?utf-8?B?UFFOdjQ4S2ZJeHVGREtRZWI2ZDc2YlBtNUh6cm1OSFVDcE5raVJLK3NHUllC?=
 =?utf-8?B?TllSN2F1Qy9pZGs0Sm5ZSkUwenhidTlTMlk5WXBCRHRna1BqTys4RTJ1bE0y?=
 =?utf-8?B?TnVKTkRkUXExNml5ZGVUUTdBaVlFRDJTUFMyUDVWKzVid2tFVEo2Lzg1TzNC?=
 =?utf-8?B?Wlh4ck4yS24vVWlEbzY3cCtaY1FGUFZBSGdNQnNPTGQvbDRxNVREekJDaUh1?=
 =?utf-8?B?T3Q5cnYrTitzL0hMVWt4a2tmczhoSVRpL2k1ZWJCWE1ZS2M0ODVDREhIekM3?=
 =?utf-8?B?a1k1R3ZlelpMdk5tUXVGNHV2KzNpdWE1NzFVSnRWU3R0dm55aXJXQm9UUmp1?=
 =?utf-8?B?TlVIMzkzQWZheEM4V2F5Z1RqMjVQekZrb1NXMWx1RDNabnlMUnh0SVQ3eSto?=
 =?utf-8?B?VTUwcXh2Q2oyQ3d1ZUp5eHNqZmhoR1VjR2Y5S2czdExtK3JNRVpMRmxLeC9E?=
 =?utf-8?B?cmd1a3QzdlgrVWozMTEzK3hpV09RZXRON3JPWXJnZ0lOUmg5OHFTRVVpT2Iv?=
 =?utf-8?B?N0s4S0Y0bzA4Wnp1eHdjbDFTaDY1K3hXNEI0dnJlZzU5NVZFMUlQMFVKM2lC?=
 =?utf-8?B?ZDdjL2VDQzhCby9uY3V3RHVLWTUvK3RDRHp2R1pWeHBSZ0liNEhhd2d6WDZL?=
 =?utf-8?B?WWhJVkhFRWQvUUZuZER5ZUE4ZzBXOGdHcjJOMlVwNlVHaTBhVkpLVk9qZjFL?=
 =?utf-8?B?OFI2dVJYaHpUZDNuNVo5STNrdXI1NG1WdG0wUTZSenlURStIMzArK2dqd2hr?=
 =?utf-8?B?bU1rbkhDUVdYVGR4T1ZDb3hDcTZlMitmWGtQT1ZsTFpPTWRqOEIxTjgwSVRr?=
 =?utf-8?B?RHBQdE56cXhIQStSMzkxaUJvWWcxT213TytuYWd2eUJWelFkc3ozb3l5RW8y?=
 =?utf-8?B?eUREQWNFRXlXQVMxWjV3U2luTzQrVUZXTGhOY2FRZTlOL3JTR0N0aHo1U0Z0?=
 =?utf-8?B?ZnhOSjJRZ1JoSFhzM2QzSk9jS2NRPT0=?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 486d9871-041d-42fe-435e-08db3f37d509
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Apr 2023 11:35:23.6190 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OZ6ydsV//ir72n2XxjIEDbtgY1udDM0OBPTmyrmC6/lxY7aTPtkcoDJL2bBIdZjhI2VhYbjlfcfWId7Vzad29B8+vocovzpcovWO6CeKzOw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR13MB4431
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FlAROnkAYihJtb8qk3AteRDhqWNaWPyaxxryUDANZhI=;
 b=P01AlInQwYJHP20LhebJiH49r7llfhRBuagjivL1LUF6NjMi1lwavw1hZZgsBmJ3jeyW74f0UlsseFnIVTg36zqz9mhMIhBgWTZhTSJq4NGZKQlJxCJ64zxxsY9/dc9VkfyURJWgQh9gqh0yxc+p/ZtpSlAFKhsTy9q8tzR0Exc=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=P01AlInQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf V7 4/7] mlx5:
 bpf_xdp_metadata_rx_hash add xdp rss hash type
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
Cc: ast@kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 Stanislav Fomichev <sdf@google.com>, boon.leong.ong@intel.com, hawk@kernel.org,
 xdp-hints@xdp-project.net, daniel@iogearbox.net, linux-rdma@vger.kernel.org,
 john.fastabend@gmail.com, jesse.brandeburg@intel.com,
 intel-wired-lan@lists.osuosl.org, brouer@redhat.com, kuba@kernel.org,
 pabeni@redhat.com, martin.lau@kernel.org, larysa.zaremba@intel.com,
 leon@kernel.org, netdev@vger.kernel.org,
 Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
 linux-kernel@vger.kernel.org, tariqt@nvidia.com, yoong.siang.song@intel.com,
 bpf@vger.kernel.org, saeedm@nvidia.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBBcHIgMTIsIDIwMjMgYXQgMDE6MzE6MThQTSArMDIwMCwgSmVzcGVyIERhbmdhYXJk
IEJyb3VlciB3cm90ZToKPiBbWW91IGRvbid0IG9mdGVuIGdldCBlbWFpbCBmcm9tIGpicm91ZXJA
cmVkaGF0LmNvbS4gTGVhcm4gd2h5IHRoaXMgaXMgaW1wb3J0YW50IGF0IGh0dHBzOi8vYWthLm1z
L0xlYXJuQWJvdXRTZW5kZXJJZGVudGlmaWNhdGlvbiBdCj4gCj4gT24gMTAvMDQvMjAyMyAxNy4x
MSwgU2ltb24gSG9ybWFuIHdyb3RlOgo+ID4gT24gU2F0LCBBcHIgMDgsIDIwMjMgYXQgMDk6MjQ6
NTZQTSArMDIwMCwgSmVzcGVyIERhbmdhYXJkIEJyb3VlciB3cm90ZToKPiA+ID4gVXBkYXRlIEFQ
SSBmb3IgYnBmX3hkcF9tZXRhZGF0YV9yeF9oYXNoKCkgd2l0aCBhcmcgZm9yIHhkcCByc3MgaGFz
aCB0eXBlCj4gPiA+IHZpYSBtYXBwaW5nIHRhYmxlLgo+ID4gPiAKPiA+ID4gVGhlIG1seDUgaGFy
ZHdhcmUgY2FuIGFsc28gaWRlbnRpZnkgYW5kIFJTUyBoYXNoIElQU0VDLiAgVGhpcyBpbmRpY2F0
ZQo+ID4gPiBoYXNoIGluY2x1ZGVzIFNQSSAoU2VjdXJpdHkgUGFyYW1ldGVycyBJbmRleCkgYXMg
cGFydCBvZiBJUFNFQyBoYXNoLgo+ID4gPiAKPiA+ID4gRXh0ZW5kIHhkcCBjb3JlIGVudW0geGRw
X3Jzc19oYXNoX3R5cGUgd2l0aCBJUFNFQyBoYXNoIHR5cGUuCj4gPiA+IAo+ID4gPiBGaXhlczog
YmM4ZDQwNWIxYmE5ICgibmV0L21seDVlOiBTdXBwb3J0IFJYIFhEUCBtZXRhZGF0YSIpCj4gPiA+
IFNpZ25lZC1vZmYtYnk6IEplc3BlciBEYW5nYWFyZCBCcm91ZXIgPGJyb3VlckByZWRoYXQuY29t
Pgo+ID4gPiBBY2tlZC1ieTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5j
b20+Cj4gPiA+IEFja2VkLWJ5OiBTdGFuaXNsYXYgRm9taWNoZXYgPHNkZkBnb29nbGUuY29tPgo+
ID4gPiAtLS0KPiA+ID4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9tZWxsYW5veC9tbHg1L2NvcmUv
ZW4veGRwLmMgfCAgIDYwICsrKysrKysrKysrKysrKysrKysrKysKPiA+ID4gICBpbmNsdWRlL2xp
bnV4L21seDUvZGV2aWNlLmggICAgICAgICAgICAgICAgICAgICAgfCAgIDE0ICsrKystCj4gPiA+
ICAgaW5jbHVkZS9uZXQveGRwLmggICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAg
MiArCj4gPiA+ICAgMyBmaWxlcyBjaGFuZ2VkLCA3MyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9u
cygtKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L21lbGxh
bm94L21seDUvY29yZS9lbi94ZHAuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L21lbGxhbm94L21s
eDUvY29yZS9lbi94ZHAuYwo+ID4gPiBpbmRleCBlZmU2MDlmOGUzYWEuLjk3ZWYxZGY5NGQ1MCAx
MDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVsbGFub3gvbWx4NS9jb3Jl
L2VuL3hkcC5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L21lbGxhbm94L21seDUv
Y29yZS9lbi94ZHAuYwo+ID4gPiBAQCAtMzQsNiArMzQsNyBAQAo+ID4gPiAgICNpbmNsdWRlIDxu
ZXQveGRwX3NvY2tfZHJ2Lmg+Cj4gPiA+ICAgI2luY2x1ZGUgImVuL3hkcC5oIgo+ID4gPiAgICNp
bmNsdWRlICJlbi9wYXJhbXMuaCIKPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9iaXRmaWVsZC5oPgo+
ID4gPiAKPiA+ID4gICBpbnQgbWx4NWVfeGRwX21heF9tdHUoc3RydWN0IG1seDVlX3BhcmFtcyAq
cGFyYW1zLCBzdHJ1Y3QgbWx4NWVfeHNrX3BhcmFtICp4c2spCj4gPiA+ICAgewo+ID4gPiBAQCAt
MTY5LDE1ICsxNzAsNzIgQEAgc3RhdGljIGludCBtbHg1ZV94ZHBfcnhfdGltZXN0YW1wKGNvbnN0
IHN0cnVjdCB4ZHBfbWQgKmN0eCwgdTY0ICp0aW1lc3RhbXApCj4gPiA+ICAgICAgcmV0dXJuIDA7
Cj4gPiA+ICAgfQo+ID4gPiAKPiA+ID4gKy8qIE1hcHBpbmcgSFcgUlNTIFR5cGUgYml0cyBDUUVf
UlNTX0hUWVBFX0lQICsgQ1FFX1JTU19IVFlQRV9MNCBpbnRvIDQtYml0cyovCj4gPiA+ICsjZGVm
aW5lIFJTU19UWVBFX01BWF9UQUJMRSAgMTYgLyogNC1iaXRzIG1heCAxNiBlbnRyaWVzICovCj4g
PiA+ICsjZGVmaW5lIFJTU19MNCAgICAgICAgICAgICAgR0VOTUFTSygxLCAwKQo+ID4gPiArI2Rl
ZmluZSBSU1NfTDMgICAgICAgICAgICAgIEdFTk1BU0soMywgMikgLyogU2FtZSBhcyBDUUVfUlNT
X0hUWVBFX0lQICovCj4gPiA+ICsKPiA+ID4gKy8qIFZhbGlkIGNvbWJpbmF0aW9ucyBvZiBDUUVf
UlNTX0hUWVBFX0lQICsgQ1FFX1JTU19IVFlQRV9MNCBzb3J0ZWQgbnVtZXJpY2FsICovCj4gPiA+
ICtlbnVtIG1seDVfcnNzX2hhc2hfdHlwZSB7Cj4gPiA+ICsgICAgUlNTX1RZUEVfTk9fSEFTSCAg
ICAgICAgPSAoRklFTERfUFJFUF9DT05TVChSU1NfTDMsIENRRV9SU1NfSVBfTk9ORSkgfAo+ID4g
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEZJRUxEX1BSRVBfQ09OU1QoUlNTX0w0
LCBDUUVfUlNTX0w0X05PTkUpKSwKPiA+ID4gKyAgICBSU1NfVFlQRV9MM19JUFY0ICAgICAgICA9
IChGSUVMRF9QUkVQX0NPTlNUKFJTU19MMywgQ1FFX1JTU19JUFY0KSB8Cj4gPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgRklFTERfUFJFUF9DT05TVChSU1NfTDQsIENRRV9SU1Nf
TDRfTk9ORSkpLAo+ID4gPiArICAgIFJTU19UWVBFX0w0X0lQVjRfVENQICAgID0gKEZJRUxEX1BS
RVBfQ09OU1QoUlNTX0wzLCBDUUVfUlNTX0lQVjQpIHwKPiA+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBGSUVMRF9QUkVQX0NPTlNUKFJTU19MNCwgQ1FFX1JTU19MNF9UQ1ApKSwK
PiA+ID4gKyAgICBSU1NfVFlQRV9MNF9JUFY0X1VEUCAgICA9IChGSUVMRF9QUkVQX0NPTlNUKFJT
U19MMywgQ1FFX1JTU19JUFY0KSB8Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgRklFTERfUFJFUF9DT05TVChSU1NfTDQsIENRRV9SU1NfTDRfVURQKSksCj4gPiA+ICsgICAg
UlNTX1RZUEVfTDRfSVBWNF9JUFNFQyAgPSAoRklFTERfUFJFUF9DT05TVChSU1NfTDMsIENRRV9S
U1NfSVBWNCkgfAo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEZJRUxEX1BS
RVBfQ09OU1QoUlNTX0w0LCBDUUVfUlNTX0w0X0lQU0VDKSksCj4gPiA+ICsgICAgUlNTX1RZUEVf
TDNfSVBWNiAgICAgICAgPSAoRklFTERfUFJFUF9DT05TVChSU1NfTDMsIENRRV9SU1NfSVBWNikg
fAo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEZJRUxEX1BSRVBfQ09OU1Qo
UlNTX0w0LCBDUUVfUlNTX0w0X05PTkUpKSwKPiA+ID4gKyAgICBSU1NfVFlQRV9MNF9JUFY2X1RD
UCAgICA9IChGSUVMRF9QUkVQX0NPTlNUKFJTU19MMywgQ1FFX1JTU19JUFY2KSB8Cj4gPiA+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgRklFTERfUFJFUF9DT05TVChSU1NfTDQsIENR
RV9SU1NfTDRfVENQKSksCj4gPiA+ICsgICAgUlNTX1RZUEVfTDRfSVBWNl9VRFAgICAgPSAoRklF
TERfUFJFUF9DT05TVChSU1NfTDMsIENRRV9SU1NfSVBWNikgfAo+ID4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIEZJRUxEX1BSRVBfQ09OU1QoUlNTX0w0LCBDUUVfUlNTX0w0X1VE
UCkpLAo+ID4gPiArICAgIFJTU19UWVBFX0w0X0lQVjZfSVBTRUMgID0gKEZJRUxEX1BSRVBfQ09O
U1QoUlNTX0wzLCBDUUVfUlNTX0lQVjYpIHwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBGSUVMRF9QUkVQX0NPTlNUKFJTU19MNCwgQ1FFX1JTU19MNF9JUFNFQykpLAo+ID4g
PiArfSBtbHg1X3Jzc19oYXNoX3R5cGU7Cj4gPiAKPiA+IEhpIEplc3BlciwKPiA+IAo+ID4gU3Bh
cnNlIHNlZW1zIGNvbmZ1c2VkIGFib3V0ICdtbHg1X3Jzc19oYXNoX3R5cGUnIG9uIHRoZSBsaW5l
IGFib3ZlLgo+ID4gQW5kIEkgYW0gdG9vLiBQZXJoYXBzIGl0IGNhbiBiZSByZW1vdmVkPwo+ID4g
Cj4gCj4gWWVzLCBpdCBjYW4gYmUgcmVtb3ZlZCAoaW4gVjgpLgo+IAo+IFRoZSByZWFzb24vdHJp
Y2sgZm9yIGRvaW5nIHRoaXMgd2FzIHRvIGdldCBjb21waWxlciB0byBjcmVhdGUgdGhlIGVudW0K
PiBzeW1ib2wsIHdoaWNoIGFsbG93ZWQgbWUgdG8gaW5zcGVjdCB0aGUgdHlwZSB1c2luZyBwYWhv
bGUgKHNlZSBjbWQKPiBiZWxvdykuICAoVGhpcyB3aWxsIGFsc28gZXhwb3NlIHRoaXMgdG8gQlRG
LCBidXQgaXQgaXNuJ3QgYWN0dWFsbHkKPiB1c2VmdWwgdG8ga2VlcCBhcm91bmQgZm9yIEJURiwg
c28gSSB3aWxsIHJlbW92ZSBpdCBpbiBWOC4pCgpUaGFua3MgSmVzcGVyLAoKSSBkaWRuJ3Qga25v
dyB0aGF0IHRyaWNrIDopCgo+ICQgcGFob2xlIC1DIG1seDVfcnNzX2hhc2hfdHlwZQo+IGRyaXZl
cnMvbmV0L2V0aGVybmV0L21lbGxhbm94L21seDUvY29yZS9lbi94ZHAubwo+IGVudW0gbWx4NV9y
c3NfaGFzaF90eXBlIHsKPiAgICAgICAgUlNTX1RZUEVfTk9fSEFTSCAgICAgICA9IDAsCj4gICAg
ICAgIFJTU19UWVBFX0wzX0lQVjQgICAgICAgPSA0LAo+ICAgICAgICBSU1NfVFlQRV9MNF9JUFY0
X1RDUCAgID0gNSwKPiAgICAgICAgUlNTX1RZUEVfTDRfSVBWNF9VRFAgICA9IDYsCj4gICAgICAg
IFJTU19UWVBFX0w0X0lQVjRfSVBTRUMgPSA3LAo+ICAgICAgICBSU1NfVFlQRV9MM19JUFY2ICAg
ICAgID0gOCwKPiAgICAgICAgUlNTX1RZUEVfTDRfSVBWNl9UQ1AgICA9IDksCj4gICAgICAgIFJT
U19UWVBFX0w0X0lQVjZfVURQICAgPSAxMCwKPiAgICAgICAgUlNTX1RZUEVfTDRfSVBWNl9JUFNF
QyA9IDExLAo+IH07Cj4gCj4gVGhpcyBpcyBwcmFjdGljYWwgdG8gZm9yIHJldmlld2VycyB0byBz
ZWUgaWYgYmVsb3cgY29kZSBpcyBjb3JyZWN0Ogo+IAo+ID4gKy8qIEludmFsaWQgY29tYmluYXRp
b25zIHdpbGwgc2ltcGx5IHJldHVybiB6ZXJvLCBhbGxvd3Mgbm8gYm91bmRhcnkKPiBjaGVja3Mg
Ki8KPiA+ICtzdGF0aWMgY29uc3QgZW51bSB4ZHBfcnNzX2hhc2hfdHlwZQo+IG1seDVfeGRwX3Jz
c190eXBlW1JTU19UWVBFX01BWF9UQUJMRV0gPSB7Cj4gPiArICAgIFtSU1NfVFlQRV9OT19IQVNI
XSAgICAgICA9IFhEUF9SU1NfVFlQRV9OT05FLAo+ID4gKyAgICBbMV0gICAgICAgICAgICAgICAg
ICAgICAgPSBYRFBfUlNTX1RZUEVfTk9ORSwgLyogSW1wbGljaXQgemVybyAqLwo+ID4gKyAgICBb
Ml0gICAgICAgICAgICAgICAgICAgICAgPSBYRFBfUlNTX1RZUEVfTk9ORSwgLyogSW1wbGljaXQg
emVybyAqLwo+ID4gKyAgICBbM10gICAgICAgICAgICAgICAgICAgICAgPSBYRFBfUlNTX1RZUEVf
Tk9ORSwgLyogSW1wbGljaXQgemVybyAqLwo+ID4gKyAgICBbUlNTX1RZUEVfTDNfSVBWNF0gICAg
ICAgPSBYRFBfUlNTX1RZUEVfTDNfSVBWNCwKPiA+ICsgICAgW1JTU19UWVBFX0w0X0lQVjRfVENQ
XSAgID0gWERQX1JTU19UWVBFX0w0X0lQVjRfVENQLAo+ID4gKyAgICBbUlNTX1RZUEVfTDRfSVBW
NF9VRFBdICAgPSBYRFBfUlNTX1RZUEVfTDRfSVBWNF9VRFAsCj4gPiArICAgIFtSU1NfVFlQRV9M
NF9JUFY0X0lQU0VDXSA9IFhEUF9SU1NfVFlQRV9MNF9JUFY0X0lQU0VDLAo+ID4gKyAgICBbUlNT
X1RZUEVfTDNfSVBWNl0gICAgICAgPSBYRFBfUlNTX1RZUEVfTDNfSVBWNiwKPiA+ICsgICAgW1JT
U19UWVBFX0w0X0lQVjZfVENQXSAgID0gWERQX1JTU19UWVBFX0w0X0lQVjZfVENQLAo+ID4gKyAg
ICBbUlNTX1RZUEVfTDRfSVBWNl9VRFBdICAgPSBYRFBfUlNTX1RZUEVfTDRfSVBWNl9VRFAsCj4g
PiArICAgIFtSU1NfVFlQRV9MNF9JUFY2X0lQU0VDXSA9IFhEUF9SU1NfVFlQRV9MNF9JUFY2X0lQ
U0VDLAo+ID4gKyAgICBbMTJdICAgICAgICAgICAgICAgICAgICAgPSBYRFBfUlNTX1RZUEVfTk9O
RSwgLyogSW1wbGljaXQgemVybyAqLwo+ID4gKyAgICBbMTNdICAgICAgICAgICAgICAgICAgICAg
PSBYRFBfUlNTX1RZUEVfTk9ORSwgLyogSW1wbGljaXQgemVybyAqLwo+ID4gKyAgICBbMTRdICAg
ICAgICAgICAgICAgICAgICAgPSBYRFBfUlNTX1RZUEVfTk9ORSwgLyogSW1wbGljaXQgemVybyAq
Lwo+ID4gKyAgICBbMTVdICAgICAgICAgICAgICAgICAgICAgPSBYRFBfUlNTX1RZUEVfTk9ORSwg
LyogSW1wbGljaXQgemVybyAqLwo+ID4gK307Cj4gCj4gPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9t
ZWxsYW5veC9tbHg1L2NvcmUvZW4veGRwLmM6MTk4OjM6IHdhcm5pbmc6IHN5bWJvbCAnbWx4NV9y
c3NfaGFzaF90eXBlJyB3YXMgbm90IGRlY2xhcmVkLiBTaG91bGQgaXQgYmUgc3RhdGljPwo+ID4g
Cj4gPiAuLi4KPiA+IAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vv
c2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdp
cmVkLWxhbgo=
