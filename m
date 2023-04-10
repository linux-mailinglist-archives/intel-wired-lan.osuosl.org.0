Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C826DC838
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Apr 2023 17:11:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E56C681F0E;
	Mon, 10 Apr 2023 15:11:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E56C681F0E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681139497;
	bh=rflM7ykD04Ou86UH7Q4fVKU2hQnXzq5Ke/F6v95XYX8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ghKCMj1WvQ2Plp84Li12vlf1z63stq5qVy5D7exi3KKsyqvDtlo3GiZ604KvNSvCp
	 IhWMPpV7eTPiWs26S7tUlQS12tH938QMC/obj579mo8aRfrbC7YmKC8XfTCiLX0dij
	 2LtAv+pJPcaavkyJeJyampv5xgqXnmkGajZAzBHaZUo4TB9eMQz6DLGwnUmBu5ju8H
	 nvnk1gpCIqjjnMLqQ3cqAL6hSYvpNAhFIEqyL/cpfXWFOcuMnUGdsSEwJD1QPnoHtB
	 fs0OaDJCfT+MHvaRam+co4cOb3OISC13sXlmw1/hT2CEBpNrhqNtdi9WTozprbK5at
	 atLWHz6rlNJtQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SJPhzhiBjNG7; Mon, 10 Apr 2023 15:11:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD4CA81EEC;
	Mon, 10 Apr 2023 15:11:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD4CA81EEC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 902BC1BF337
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Apr 2023 15:11:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 74B2961156
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Apr 2023 15:11:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 74B2961156
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id co6u0ZGCaukJ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Apr 2023 15:11:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9EAEB607BC
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2136.outbound.protection.outlook.com [40.107.244.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9EAEB607BC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Apr 2023 15:11:30 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k9O4P71yjEbMTnG17i8H9lYvcTYm0NG9fMCVfj1KinCsalhBiBBnTg1MN/1550kNSMmiIXCEVCUwLfyeRERUPIP8w2Xnzz58LIMb+G+9Y8sbF+E6kXhveBE/XXFJjWNMEHHN5v09rFsIekJ6OJl762vroOelbuGKRZmneEqYM6owmiAWR6e0I9KDQeAYWXGY9+ZLbcBeaKR5ySvUlPEMjWIkhEL8wlc+777k2P2N2j5WvcaoNqAN9TRFG1EuXGMq5C0G4aGmCAelkwt/HLXDhKlkZj6kl/YaQpgqqthUPMXQzPQzG5EHSmPv+/Y4wg7XwNXaJKQz/v22hkd7kx9yiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tM5LC/InXP9K3q9n9kTbZbZOYBJKBKmQTSqUkMH6RNc=;
 b=fbpJ3kOIqUDDjhqBoAr89hMYW+5rtb3mLoPAMbZ7hNhJ6N2SZVMsIa8DXIqgZXxJrqV7JtpgoB9QSaO+eyIcKmM2hc9MsifpLQkizJZH+RiNNc2GWAGBRz6Ope24TXWzraXqSHx7vR/TdUftV60eGeT0jAMpRavr0gYX6dJwD+15ySjCBzuS7OO+3R8JzmnFaAgSbyLsOrk7kbfY871d8E5ISHC0y06/CJ6v3KzehzdlpeVLPGc65xLmDIKCqfSaQLbv5fGEyt5V56OV0lf+4e8ryDbevgqG8eYdYEe/x9Hqdh4CcWGzWyIz+yUNoYA3kR4Exmzw4bTslshZf7T7mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by SA1PR13MB5418.namprd13.prod.outlook.com (2603:10b6:806:231::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.38; Mon, 10 Apr
 2023 15:11:28 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::89d1:63f2:2ed4:9169]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::89d1:63f2:2ed4:9169%5]) with mapi id 15.20.6277.038; Mon, 10 Apr 2023
 15:11:28 +0000
Date: Mon, 10 Apr 2023 17:11:18 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <ZDQnFmZdESpF1BEz@corigine.com>
References: <168098183268.96582.7852359418481981062.stgit@firesoul>
 <168098189656.96582.16141211495116669329.stgit@firesoul>
Content-Disposition: inline
In-Reply-To: <168098189656.96582.16141211495116669329.stgit@firesoul>
X-ClientProxiedBy: AS4P192CA0007.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:20b:5da::19) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|SA1PR13MB5418:EE_
X-MS-Office365-Filtering-Correlation-Id: 62b44a2d-743a-46bf-1254-08db39d5db91
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RunBres9gOxjj913NA+uhG4cr0VmWjeTQBVUhoRAb/o5CKyWohJ/XdQFm+RgY7jCJbtC6cu0BVMNQc0rxKfGOiWV5kuk1WnphafxwDSMSDfku/Ucf0mC5r/JrLmeE/Nf7PnZV1N8dP695t6BroNWBhgHcjojSO+UnpSy88I3WuB3uyirTGvYTkKS4CqEH3irG+PGlQqXQkJmPorIgcTRyvwk5C42AxygQL47QBtibB//Pm+OHpfrK90GpJ+GmiEC2Yjun2eWDUBM1SUM4D7sCqf0HIOZciF+ByxPklrfYdWdVgsGqRkQerIaGTxQnBVIroGGB/clGMSDLm40CwBiCom4AUWigW3mdxBqlIar1zXeNTOIiOXdzhXlNQlQgMZmOgLLoTeH1ZfxhK6d8hDADfuz+4SMNxPxgdqtxvlIFMJEDueisGPtsSDgjxi1n4ef5p8ugQlqyaSJB6095WJrt6mR9TZm4PsRrPNaMCzdDmjENXt1jAJ3jQZeZqgCzFteKD8xKxtE0vY5XI3dMG2oNTVnNIPX8d3ECbV0GvmPIQA4JewB3+ieJBvJIzEOtP9L
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(346002)(366004)(136003)(376002)(39840400004)(451199021)(478600001)(316002)(54906003)(6512007)(6506007)(186003)(6486002)(6666004)(2906002)(44832011)(66556008)(4326008)(66946007)(41300700001)(8936002)(6916009)(7416002)(5660300002)(66476007)(8676002)(38100700002)(86362001)(66574015)(36756003)(83380400001)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UjRpdE1kRElXZkVkRXMzS0kvai9NaTZEcm1xUTRCeVNVdXN2MEx2dzQ0Yk5q?=
 =?utf-8?B?S0FDMzR0TXBER3FlNU1EZjZ5Z3pPbmxVQjZVYmRUL1g4VFFrZzlmT1dtcm9Z?=
 =?utf-8?B?NzN6L3hOKzBVRGQwK2RRTGVqcnQzdzhtQ1dST3hFMDU1MlE1cHJhOG9ScVF4?=
 =?utf-8?B?T3MrQXVWT20zTG5qcDRHYXpqcFFGajRpa0VCUlRiTEV6S1ZxQ3Zna3BBZnd4?=
 =?utf-8?B?NjF5dlBQU3NOWXp2dDBCeHM5ME00NXU4ZitLMW1wRUwvMk44ankwZ0diLzJl?=
 =?utf-8?B?dmVVWFdkYVcwQ2xDQmkrenFJaVVXMUEwWUpIbVIvUXN1aWgxazVtNmxrSkhP?=
 =?utf-8?B?ZWI3WEl2Mkp6K1ZHS1Q5L0wrWlhUMUh0NjRXeTRSZkR1VER4cldYUEM4Lyt0?=
 =?utf-8?B?R1dqVXVnZHpJdWxWL1RMN3c5V1E3dndzR2tybDRyU3dLcVQ2SjBpTmtGUmZk?=
 =?utf-8?B?NU9lTlFqd0F5SGlXbHN2VHBHWkNKMDZPd3ltd00zUWJSNEM1Qy9tejFLNUlF?=
 =?utf-8?B?bFJwRVdhVGR1M1YrdGdMRGZiYzROVWNIUG00cWQ3RkFQR0Jub0dvK2dGbFAv?=
 =?utf-8?B?ejFPcng0ODk1NzRNdnlhM09JY1BjYnB2TEVQSHVFVmYyaEs0dyt3RWo0cHBB?=
 =?utf-8?B?Q0VmK3Nadlh4ODJ4d2ZFczNaQncyMW1UYnhzV3VocFpqRld3UTZmbnJZaHIw?=
 =?utf-8?B?S1JmSDIwMFlOT0ZUUGYwRmdBYll3anJHSCs2WTl0UXlRWEJPcXU2L1cvKzdZ?=
 =?utf-8?B?OEF6YlN6a0ZEeE85M05lSmVLY3FQTy9EZzdXa0JPSXVtR3crcm1oQlh2dk41?=
 =?utf-8?B?MllhMmhCdTc5cXZwb0lnQnFDVFNEQmF5SVVWK0U5aEF1WUdUNXoyUytBK01n?=
 =?utf-8?B?bGpEZDg4RlV3b2VmZ3Yya2ZrNHlpTVlVaThyUzRQR252eHh0YkVIRStta3lo?=
 =?utf-8?B?Vk5LMUYrZndDRmJzNnZtVGxFMU0yWG4zMmtKTFRmNkIyZ0FSZHR1MkUwdjJU?=
 =?utf-8?B?eElrcjlsUnlhcWVTRlVUdW11c1g4R2RMb2VKWXFQR1ptZlF4UDBzMys2T255?=
 =?utf-8?B?UVNxMGJPcUJER1dlb3RnZ0I0YngwM0FVaS9LMTc4eFlIUktYMUpqTG1NOTBr?=
 =?utf-8?B?VWNQOEEvNVplVHJwVDRDSm54Szd2eEo3L2JpbHY1d0MwUmtVQzhZZ3hBOUNm?=
 =?utf-8?B?bk5MU2lJQTVVL1hXemRCVXdxbzlWSStEOUdLTUpCRXBSTnFQVEVzalc0UkhI?=
 =?utf-8?B?ZmNCRFdyblRlRHNrWEZwdHp2WjhUQi92cXloVE85eU5iZVJVTEpVVFZDeUR2?=
 =?utf-8?B?TGdoUDFtZ2xSdDlPSmRkNVM5a1dSZkhXRGwvZG5rcWdiVXdTZlMrMGNtak0z?=
 =?utf-8?B?dWU4Q0F4U1hGSGtWZ0lQcGJjY292TFAvZDRub3Z3SWl6MUV5MERxK3lNdlc3?=
 =?utf-8?B?VlpKcW9Zc3pBY0p1WGFlaC9pOEc2RUw0VFVNS3JSK3lsVFFXV1ZPZldTaU04?=
 =?utf-8?B?b1NCOFVkZmNsaDdoWFJmMktSRmx6RTM1RGlpdHgzd3h4NGRzb1BOSFdwWFpv?=
 =?utf-8?B?MmtkNGo3R2RyY2VTb01mNnVTQXNGdVRzRThDaVZPQnJYYTNMaENmZ2VpbTBY?=
 =?utf-8?B?Rmludk9TM0RrbGpjM3ZkazZ2blN6N0dqZE9QUFBkcUxlNmVkWnllTytZbnhE?=
 =?utf-8?B?em53MkN0TXlMcU9pbUE3dGJoYzAzWU8zcHp0MEZmUXN4Yy9IbUhCSDdJeEk3?=
 =?utf-8?B?dGlMYzNDWkRrc0gyZG9rY2lOYnJvWFBpSTBzZU5jbXI5Z3ZVOS96WXZMZ0pG?=
 =?utf-8?B?Mk1HZ3FVc3BKYVJLbWd1RlJWL3BBYmxBT29Tb3dSK0p0NExnekljVGY0V0gw?=
 =?utf-8?B?WlBXdlVhSlJiQlRMaUtOZk5jM1NFWVI5bFBkdXRNb2VVTDZtVC9uZ2ZPTENQ?=
 =?utf-8?B?eFFadWp4bkNzczVpaUxmQjU0clN5KzhxTW1VSWhWQlBhRjhBeEZWYjg3WWNy?=
 =?utf-8?B?WmcxZGg1RGl1WlFDdzJnekFaSnVzaVJMbjFVLzF6Q2ljZndhQlJYRTgwd1NJ?=
 =?utf-8?B?aFlOOEQzcU56N0JBRlljWHdPN2c4cTE2dWR6Mk92ajEyYVVWVTJ5eWlwUVB2?=
 =?utf-8?B?djhQdWQ4Mjh5MHg1cWpjeURaUHlqa0UyVXdMQ1JmYXNvM3lEWjJPTnlraEhv?=
 =?utf-8?B?bytKbkU3bzhKTUI2VU9KclhHUkkvNXkrdzNzNEJwekVGa1NlNkkvcGQ3RkM3?=
 =?utf-8?B?bDV5TFF3N2dobjhBNmJyNFp2NzJRPT0=?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62b44a2d-743a-46bf-1254-08db39d5db91
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2023 15:11:27.9706 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7534XWCX7KJ8U8QB5ReIs8PGQBeIvPRCGjSQLqL+33AV1ZVWSvGBeXxytp3phitit0hcjNUVoNdJwHiPpBBYOTCbK2xQExnf/Aw78xS8k20=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR13MB5418
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tM5LC/InXP9K3q9n9kTbZbZOYBJKBKmQTSqUkMH6RNc=;
 b=Kk7c+mfcrmMHeN3H0IBaQ38GO7l50pnJFdfemysjcb7oZdVClct1efT2fPE65DznBBd8mEhb1LTDqmgcmqOni3jbWPzXcp8JzIHQpvJ81dzIXxFtbQoogoK+qFZBF7fz5Pnd7cc7mK4/tdoJiEIQJrmPwqusfbX+cETNo3aVkho=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=Kk7c+mfc
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
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 martin.lau@kernel.org, larysa.zaremba@intel.com, leon@kernel.org,
 netdev@vger.kernel.org,
 Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
 linux-kernel@vger.kernel.org, tariqt@nvidia.com, yoong.siang.song@intel.com,
 bpf@vger.kernel.org, saeedm@nvidia.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gU2F0LCBBcHIgMDgsIDIwMjMgYXQgMDk6MjQ6NTZQTSArMDIwMCwgSmVzcGVyIERhbmdhYXJk
IEJyb3VlciB3cm90ZToKPiBVcGRhdGUgQVBJIGZvciBicGZfeGRwX21ldGFkYXRhX3J4X2hhc2go
KSB3aXRoIGFyZyBmb3IgeGRwIHJzcyBoYXNoIHR5cGUKPiB2aWEgbWFwcGluZyB0YWJsZS4KPiAK
PiBUaGUgbWx4NSBoYXJkd2FyZSBjYW4gYWxzbyBpZGVudGlmeSBhbmQgUlNTIGhhc2ggSVBTRUMu
ICBUaGlzIGluZGljYXRlCj4gaGFzaCBpbmNsdWRlcyBTUEkgKFNlY3VyaXR5IFBhcmFtZXRlcnMg
SW5kZXgpIGFzIHBhcnQgb2YgSVBTRUMgaGFzaC4KPiAKPiBFeHRlbmQgeGRwIGNvcmUgZW51bSB4
ZHBfcnNzX2hhc2hfdHlwZSB3aXRoIElQU0VDIGhhc2ggdHlwZS4KPiAKPiBGaXhlczogYmM4ZDQw
NWIxYmE5ICgibmV0L21seDVlOiBTdXBwb3J0IFJYIFhEUCBtZXRhZGF0YSIpCj4gU2lnbmVkLW9m
Zi1ieTogSmVzcGVyIERhbmdhYXJkIEJyb3VlciA8YnJvdWVyQHJlZGhhdC5jb20+Cj4gQWNrZWQt
Ynk6IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPgo+IEFja2VkLWJ5
OiBTdGFuaXNsYXYgRm9taWNoZXYgPHNkZkBnb29nbGUuY29tPgo+IC0tLQo+ICBkcml2ZXJzL25l
dC9ldGhlcm5ldC9tZWxsYW5veC9tbHg1L2NvcmUvZW4veGRwLmMgfCAgIDYwICsrKysrKysrKysr
KysrKysrKysrKysKPiAgaW5jbHVkZS9saW51eC9tbHg1L2RldmljZS5oICAgICAgICAgICAgICAg
ICAgICAgIHwgICAxNCArKysrLQo+ICBpbmNsdWRlL25ldC94ZHAuaCAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgfCAgICAyICsKPiAgMyBmaWxlcyBjaGFuZ2VkLCA3MyBpbnNlcnRpb25z
KCspLCAzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9tZWxsYW5veC9tbHg1L2NvcmUvZW4veGRwLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWxs
YW5veC9tbHg1L2NvcmUvZW4veGRwLmMKPiBpbmRleCBlZmU2MDlmOGUzYWEuLjk3ZWYxZGY5NGQ1
MCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWxsYW5veC9tbHg1L2NvcmUv
ZW4veGRwLmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWxsYW5veC9tbHg1L2NvcmUv
ZW4veGRwLmMKPiBAQCAtMzQsNiArMzQsNyBAQAo+ICAjaW5jbHVkZSA8bmV0L3hkcF9zb2NrX2Ry
di5oPgo+ICAjaW5jbHVkZSAiZW4veGRwLmgiCj4gICNpbmNsdWRlICJlbi9wYXJhbXMuaCIKPiAr
I2luY2x1ZGUgPGxpbnV4L2JpdGZpZWxkLmg+Cj4gIAo+ICBpbnQgbWx4NWVfeGRwX21heF9tdHUo
c3RydWN0IG1seDVlX3BhcmFtcyAqcGFyYW1zLCBzdHJ1Y3QgbWx4NWVfeHNrX3BhcmFtICp4c2sp
Cj4gIHsKPiBAQCAtMTY5LDE1ICsxNzAsNzIgQEAgc3RhdGljIGludCBtbHg1ZV94ZHBfcnhfdGlt
ZXN0YW1wKGNvbnN0IHN0cnVjdCB4ZHBfbWQgKmN0eCwgdTY0ICp0aW1lc3RhbXApCj4gIAlyZXR1
cm4gMDsKPiAgfQo+ICAKPiArLyogTWFwcGluZyBIVyBSU1MgVHlwZSBiaXRzIENRRV9SU1NfSFRZ
UEVfSVAgKyBDUUVfUlNTX0hUWVBFX0w0IGludG8gNC1iaXRzKi8KPiArI2RlZmluZSBSU1NfVFlQ
RV9NQVhfVEFCTEUJMTYgLyogNC1iaXRzIG1heCAxNiBlbnRyaWVzICovCj4gKyNkZWZpbmUgUlNT
X0w0CQlHRU5NQVNLKDEsIDApCj4gKyNkZWZpbmUgUlNTX0wzCQlHRU5NQVNLKDMsIDIpIC8qIFNh
bWUgYXMgQ1FFX1JTU19IVFlQRV9JUCAqLwo+ICsKPiArLyogVmFsaWQgY29tYmluYXRpb25zIG9m
IENRRV9SU1NfSFRZUEVfSVAgKyBDUUVfUlNTX0hUWVBFX0w0IHNvcnRlZCBudW1lcmljYWwgKi8K
PiArZW51bSBtbHg1X3Jzc19oYXNoX3R5cGUgewo+ICsJUlNTX1RZUEVfTk9fSEFTSAk9IChGSUVM
RF9QUkVQX0NPTlNUKFJTU19MMywgQ1FFX1JTU19JUF9OT05FKSB8Cj4gKwkJCQkgICBGSUVMRF9Q
UkVQX0NPTlNUKFJTU19MNCwgQ1FFX1JTU19MNF9OT05FKSksCj4gKwlSU1NfVFlQRV9MM19JUFY0
CT0gKEZJRUxEX1BSRVBfQ09OU1QoUlNTX0wzLCBDUUVfUlNTX0lQVjQpIHwKPiArCQkJCSAgIEZJ
RUxEX1BSRVBfQ09OU1QoUlNTX0w0LCBDUUVfUlNTX0w0X05PTkUpKSwKPiArCVJTU19UWVBFX0w0
X0lQVjRfVENQCT0gKEZJRUxEX1BSRVBfQ09OU1QoUlNTX0wzLCBDUUVfUlNTX0lQVjQpIHwKPiAr
CQkJCSAgIEZJRUxEX1BSRVBfQ09OU1QoUlNTX0w0LCBDUUVfUlNTX0w0X1RDUCkpLAo+ICsJUlNT
X1RZUEVfTDRfSVBWNF9VRFAJPSAoRklFTERfUFJFUF9DT05TVChSU1NfTDMsIENRRV9SU1NfSVBW
NCkgfAo+ICsJCQkJICAgRklFTERfUFJFUF9DT05TVChSU1NfTDQsIENRRV9SU1NfTDRfVURQKSks
Cj4gKwlSU1NfVFlQRV9MNF9JUFY0X0lQU0VDCT0gKEZJRUxEX1BSRVBfQ09OU1QoUlNTX0wzLCBD
UUVfUlNTX0lQVjQpIHwKPiArCQkJCSAgIEZJRUxEX1BSRVBfQ09OU1QoUlNTX0w0LCBDUUVfUlNT
X0w0X0lQU0VDKSksCj4gKwlSU1NfVFlQRV9MM19JUFY2CT0gKEZJRUxEX1BSRVBfQ09OU1QoUlNT
X0wzLCBDUUVfUlNTX0lQVjYpIHwKPiArCQkJCSAgIEZJRUxEX1BSRVBfQ09OU1QoUlNTX0w0LCBD
UUVfUlNTX0w0X05PTkUpKSwKPiArCVJTU19UWVBFX0w0X0lQVjZfVENQCT0gKEZJRUxEX1BSRVBf
Q09OU1QoUlNTX0wzLCBDUUVfUlNTX0lQVjYpIHwKPiArCQkJCSAgIEZJRUxEX1BSRVBfQ09OU1Qo
UlNTX0w0LCBDUUVfUlNTX0w0X1RDUCkpLAo+ICsJUlNTX1RZUEVfTDRfSVBWNl9VRFAJPSAoRklF
TERfUFJFUF9DT05TVChSU1NfTDMsIENRRV9SU1NfSVBWNikgfAo+ICsJCQkJICAgRklFTERfUFJF
UF9DT05TVChSU1NfTDQsIENRRV9SU1NfTDRfVURQKSksCj4gKwlSU1NfVFlQRV9MNF9JUFY2X0lQ
U0VDCT0gKEZJRUxEX1BSRVBfQ09OU1QoUlNTX0wzLCBDUUVfUlNTX0lQVjYpIHwKPiArCQkJCSAg
IEZJRUxEX1BSRVBfQ09OU1QoUlNTX0w0LCBDUUVfUlNTX0w0X0lQU0VDKSksCj4gK30gbWx4NV9y
c3NfaGFzaF90eXBlOwoKSGkgSmVzcGVyLAoKU3BhcnNlIHNlZW1zIGNvbmZ1c2VkIGFib3V0ICdt
bHg1X3Jzc19oYXNoX3R5cGUnIG9uIHRoZSBsaW5lIGFib3ZlLgpBbmQgSSBhbSB0b28uIFBlcmhh
cHMgaXQgY2FuIGJlIHJlbW92ZWQ/Cgpkcml2ZXJzL25ldC9ldGhlcm5ldC9tZWxsYW5veC9tbHg1
L2NvcmUvZW4veGRwLmM6MTk4OjM6IHdhcm5pbmc6IHN5bWJvbCAnbWx4NV9yc3NfaGFzaF90eXBl
JyB3YXMgbm90IGRlY2xhcmVkLiBTaG91bGQgaXQgYmUgc3RhdGljPwoKLi4uCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWls
aW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wu
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
