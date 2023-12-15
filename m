Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A2DCB814F68
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Dec 2023 19:01:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B8E341B4A;
	Fri, 15 Dec 2023 18:01:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B8E341B4A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702663312;
	bh=uOMHL3S5omhuGTItOs6BiJNHParXibxxmWzQfQQCpks=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6JcHyLptIZLIEwZ1Og1TRCOr+msLXMRMp9sGy2aoYL9eydSlLuTBV5l/YAzHEKlTA
	 M1D+i7BRA4+xWF8r14EyZ/j0EOEG4ngvyvVJcgELdMaGbq4khGkbL4Ri0bEVkqiguv
	 /X9/ZpDdx4ZQmvKzZVnlFLPtNu3QqRK8SLlEeRhdBLwNWEU2c38ML9mDtXA2orDFB6
	 FHODeqnJWrvaEtYdlEjdjdjDH2+NdP6z5wDUys+XOY1IiOR3hX8kDdu88Epw0hi+qt
	 aZxxD/aFHX+pFSER58IZbjzsUI1vz68jU0p8zuRLlDEgWj8iAYSgJfjb5nnmGNC56i
	 YBqa/x6fwj6ag==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nsy_2tsZ677k; Fri, 15 Dec 2023 18:01:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7DEA341ADF;
	Fri, 15 Dec 2023 18:01:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7DEA341ADF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 91D0E1BF281
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 18:01:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7524461099
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 18:01:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7524461099
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q0F0VHgcVMT3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Dec 2023 18:01:43 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2086.outbound.protection.outlook.com [40.107.94.86])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B6A9561073
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 18:01:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B6A9561073
Received: from PH0PR12MB7982.namprd12.prod.outlook.com (2603:10b6:510:28d::5)
 by SJ0PR12MB8113.namprd12.prod.outlook.com (2603:10b6:a03:4e0::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.31; Fri, 15 Dec
 2023 18:01:41 +0000
Received: from PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::bec4:77b3:e1d1:5615]) by PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::bec4:77b3:e1d1:5615%5]) with mapi id 15.20.7091.028; Fri, 15 Dec 2023
 18:01:40 +0000
Message-ID: <9ea0484d-a2a4-308c-95fd-c9accdcdc424@amd.com>
Date: Fri, 15 Dec 2023 10:01:36 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20231212145546.396273-1-michal.kubiak@intel.com>
From: Brett Creeley <bcreeley@amd.com>
In-Reply-To: <20231212145546.396273-1-michal.kubiak@intel.com>
X-ClientProxiedBy: BYAPR11CA0102.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::43) To PH0PR12MB7982.namprd12.prod.outlook.com
 (2603:10b6:510:28d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB7982:EE_|SJ0PR12MB8113:EE_
X-MS-Office365-Filtering-Correlation-Id: fc3dbdf1-a838-4eb2-56c9-08dbfd97e3b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QPW1O44zYdKlbWcZs0gcrOHCDdHkToHJpdJhBThfX7Gt/WhGr62qALW3nkb+4JKjSCGPS2HS5Ls6vpBM3R7RjsbMvfMmdnwhN4L0Pt9RTRtt2uwrj+WoKDNCf6X96ZI6xyYi9mRKKBbyI9hKaLde1Plymk6o70W51JhrBjfhdhoWg8KbMpldOHCMMpCOQq0MUble/aCvi/qw3Hi3VFrU1Wj8eUQft/DCvgAjgYDdWtQ9ktzpOp9JfrKIHJFhoAUhZNRKOO7zlQrwrSVUzQ/ghRL+brOvCufRUWHOd01rKXPogvlzINLMhXvy9qnxQL3L0pqUO+INtGC0QKnBe7end4ycqT7KTIzqUB8182/KAetBJql7WLzB/wdXYeo9++TO1zEE0Slf0flfOrnXhaQQVOTnSbav6IkztTWIHnNdbXF3fllbeb/syy1yol44VOC4IfBuyERYZrNcpm+5Uj6VjImzZxkBNWmkhVmV/t1PUjGdvliNOeeqJL/f6ZtClaMLOAqCs/55w+hgzWN+pLDoAzHUTF2is1nlEbxX32Sya3WrkyP2YBniZFJUWHlju9lAXRJel0EZzRLs7ebts2lhUmj923r9kT1IHrvqkM754l12406hPLETn4XcUNxF206zmhQFq7hwDTqBFOU8qI2X1X0fAqN1Mh7MXTrLreXMxTAxThMmST5bm4EN7WTkTQDD
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB7982.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(376002)(136003)(346002)(39860400002)(230922051799003)(230173577357003)(230273577357003)(451199024)(64100799003)(1800799012)(186009)(31686004)(26005)(6506007)(2616005)(31696002)(36756003)(38100700002)(83380400001)(5660300002)(4326008)(7416002)(6512007)(53546011)(6666004)(316002)(66946007)(8676002)(6486002)(8936002)(66556008)(66476007)(2906002)(41300700001)(478600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RkVNcjl0TlcybFRkdm5ZYW4vTFRoRFJkLy9PQithOHh2ZHJBc0YzSUF6LzBy?=
 =?utf-8?B?Y0J0bUlEczRKcEJnTW5kZ0xJdjFNSUNLVjhreXhYT0E0dzBvd0s3Qnc5UUVN?=
 =?utf-8?B?MjF1QlRGb3lGejVGQ3NXekRMbFlOQW0vL2xUbVBZTXZNTjFhTWJZbTNGeUMv?=
 =?utf-8?B?ZEs3UlBVRDZrTytkcFQ2aUNmenZzM3NJMVRYNHZQcktRRUtrMElXMHRCdWkw?=
 =?utf-8?B?SWhrcHdScnBSQWRrN3k3VFZYRkRLMFdUeDdKMUhhbDM1ZmRmTXFBNHBNdDZo?=
 =?utf-8?B?MHg0MysvWk5nOXBISFdDWS84aTRmdmp3TUhmRVZ4WUNsenBjU0V0VzZpU2NV?=
 =?utf-8?B?NUpZNlM3blkrSXRrVm5naFAzcGV6dHdNOUxnMnFWRzVjNFZWZ3llYXMvZVc2?=
 =?utf-8?B?RGprZDRJcGNNSGRUdnJ4eFd5VXNYaXhjS0xQUW9mQlBEeVlRQk1XNmdSODBk?=
 =?utf-8?B?R1IrTDNoUzQ2WFZlVklCSyswa0h1ZFl2azZCM2wvRnFpWUlDSU16WGZ4VzhL?=
 =?utf-8?B?Rk5qamJvQWlrUzk0U0p2eHAwOWVBRjRxdXJLM00ya0NHemN5VS9ia1pJSWs4?=
 =?utf-8?B?ZzUvZWlGOEdXTHJwaklvNFFpNWdiby84cjVMU0hDbWp2WDluUlJ1WnpBRGcz?=
 =?utf-8?B?UlM5aW02WHFlQmovWEEvdmlJZmZYWHpLWlZjSFNZK0ltdHRtYzBrMUZoaGF4?=
 =?utf-8?B?YmVQa2YwQnBZekhpRXAwTlEva3RHQU1EVnA0eGdRTkFsM3Q1V1lDaGorOEha?=
 =?utf-8?B?RHNkWHMyZ2Erc1F1Q1o1Rk1lRUw5SUN6Um1iQnlJV0xPK2x2OCt1VDJYck1B?=
 =?utf-8?B?S0wzOEJsWjJZMjdId1ZGTXo5L1NJWHRVSzNRTVRvZ0ZVR0NiMjlONCtYVkx4?=
 =?utf-8?B?ZHMvZzk3MzNRaVJaNzJjWWtqTytwbkZIRXBNNkRWTDdlVVYyQ25DYnNYazIx?=
 =?utf-8?B?UXNYdlJvVVEvcVRWMEhvNVpZdTBQWGJQMXpXajhKUmUyUkNmUmJ4VHUvMlFo?=
 =?utf-8?B?Z3k1aEdSOWt5RW1tVlFjcEpMbG9QWkVWTC9nS3B5RnkwcTM4bXRvTmQ0eXZ2?=
 =?utf-8?B?cU9YbWtQZE5XS1pMRUhHaUFscmtDQzgwU3h1UnJMMGdncU5UREE3cU4wNFZQ?=
 =?utf-8?B?K2R6NUJwYllJblZ4RzdtOHozY2NLWWYrWUF4bktXdzMwRGN0dVB3TWZYUXd6?=
 =?utf-8?B?MDdsQ0grZk85WHRFQmpkY1hxOG1OcklTU2tHdXNJSlRld2JUQk0yUyt5aVNG?=
 =?utf-8?B?UUladzdIaHNvNnl2bktaVkVlQ0pzd1YrbnJnL1NVWWtvWHR2c2NLd2NmL3Bs?=
 =?utf-8?B?ZGhSeFZPZTNBZEVndEtUUjBTMDR0bXZ0d1lVNzlVNXN0c0gzelZxQXFCckhU?=
 =?utf-8?B?VG0wRzhiYU9hQUE3RlQrK05naGRaRE5UT3ZTLzBUZDBnR3NvNjE4ZU04a1d4?=
 =?utf-8?B?aU1hUW1CWUI1aDh0NnBrUjc3QnJTRmVsMFo3c25OcExRM2RNcnFtb0NSNmxZ?=
 =?utf-8?B?R3hkWFZZMW9qOXFOZGNBVUEvemFxQVNHTjZjUldMb2RBRWppTWYwWFJTTENr?=
 =?utf-8?B?R3Z6SUhZcTVHcUFkNEUxY3VnaEZIeURMUkRNaXR0ZHhBWmhsNFZxMjh4ek5L?=
 =?utf-8?B?S1l3SktTcEpxN2lDVkxTZ3h2c21aSWtTSE95cTVpS3ZMaHp2YkNzRnJmaUY5?=
 =?utf-8?B?ZndTY1U2cTh0Q1RCMlFXcllVRTVRanMyTU94QWY5a2oxaXpZRHg4K3FKS2dW?=
 =?utf-8?B?MnN0WGs5anc4SUNscy83OWxPMlFDQmpPU3EyeWxXYzJlZkFRRDJOK3VMQnlK?=
 =?utf-8?B?UStmSFFXVkJvbldRbW1ISGFJV3dvdXhUWlFkZ0U0TGE5TFF0Y2UvQjhVQ05Q?=
 =?utf-8?B?bUkrTUUvMjVSV0hYekFsN3BBWXBJdGR1Wjc5NTU5VFFlUEV4MUk4YWZrcXZa?=
 =?utf-8?B?M3VzbjZzZVpPOVhYK1dXMm05MkY2REl3ZForemFRRGxSd2w0dEZYdy8ybm9w?=
 =?utf-8?B?MlhtVmpDNktmUnByZTQ1L3FGN01rYUJqUHcxYW5GVmVPOG9QNzdsa3lwU0NH?=
 =?utf-8?B?Z1g1ZXZhZ2V6RlBXb2tXWUVZZ0tGUFJ4WVBLZkpGa3M4NVF6Zk5sd1JyU3Y0?=
 =?utf-8?Q?bqwMo3/bJ0H6lCV9W744q1NnI?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc3dbdf1-a838-4eb2-56c9-08dbfd97e3b2
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7982.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2023 18:01:40.6263 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N21rxNRh6PcazCUbxkCat2k5ZpSgZjRqCgmYK4WxPy9Js7AD1or10fLL4wyoFAfLmqPh1UtDXT8lnk2lNOZoYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB8113
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ge0azjWPU2OXEp3q5rURUvypw/otebwxSXMoE5ry/DE=;
 b=IjvjZGUkaxfF+FKzO+sOKwuIK/uGBDazBXZjL/VUutKfChKJz1mq412/qi+oSi1JAmQLEpSb2naeRYGF1kwYcrMHZsGl62JDrdUgP4nlUe7Qo2Sm7EwZ2mkF7DObBJgAPnYqwqEocpod/e5idbVg2qnWZ1oR/oZ9luiw7ivJq6Y=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=IjvjZGUk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: enable WB_ON_ITR
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
Cc: maciej.fijalkowski@intel.com, emil.s.tantilov@intel.com,
 larysa.zaremba@intel.com, netdev@vger.kernel.org, joshua.a.hay@intel.com,
 aleksander.lobakin@intel.com, alan.brady@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 12/12/2023 6:55 AM, Michal Kubiak wrote:
> Caution: This message originated from an External Source. Use proper caution when opening attachments, clicking links, or responding.
> 
> 
> From: Joshua Hay <joshua.a.hay@intel.com>
> 
> Tell hardware to writeback completed descriptors even when interrupts
> are disabled. Otherwise, descriptors might not be written back until
> the hardware can flush a full cacheline of descriptors. This can cause
> unnecessary delays when traffic is light (or even trigger Tx queue
> timeout).
> 
> Fixes: c2d548cad150 ("idpf: add TX splitq napi poll support")
> Fixes: a5ab9ee0df0b ("idpf: add singleq start_xmit and napi poll")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Co-developed-by: Michal Kubiak <michal.kubiak@intel.com>
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
> ---
>   drivers/net/ethernet/intel/idpf/idpf_dev.c    |  2 ++
>   .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  6 ++++-
>   drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  7 +++++-
>   drivers/net/ethernet/intel/idpf/idpf_txrx.h   | 23 +++++++++++++++++++
>   drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |  2 ++
>   5 files changed, 38 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_dev.c
> index 34ad1ac46b78..2c6776086130 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_dev.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_dev.c
> @@ -96,8 +96,10 @@ static int idpf_intr_reg_init(struct idpf_vport *vport)
>                  intr->dyn_ctl = idpf_get_reg_addr(adapter,
>                                                    reg_vals[vec_id].dyn_ctl_reg);
>                  intr->dyn_ctl_intena_m = PF_GLINT_DYN_CTL_INTENA_M;
> +               intr->dyn_ctl_intena_msk_m = PF_GLINT_DYN_CTL_INTENA_MSK_M;
>                  intr->dyn_ctl_itridx_s = PF_GLINT_DYN_CTL_ITR_INDX_S;
>                  intr->dyn_ctl_intrvl_s = PF_GLINT_DYN_CTL_INTERVAL_S;
> +               intr->dyn_ctl_wb_on_itr_m = PF_GLINT_DYN_CTL_WB_ON_ITR_M;
> 
>                  spacing = IDPF_ITR_IDX_SPACING(reg_vals[vec_id].itrn_index_spacing,
>                                                 IDPF_PF_ITR_IDX_SPACING);
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
> index 81288a17da2a..8e1478b7d86c 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
> @@ -1168,8 +1168,10 @@ int idpf_vport_singleq_napi_poll(struct napi_struct *napi, int budget)
>                                                      &work_done);
> 
>          /* If work not completed, return budget and polling will return */
> -       if (!clean_complete)
> +       if (!clean_complete) {
> +               idpf_vport_intr_set_wb_on_itr(q_vector);
>                  return budget;
> +       }
> 
>          work_done = min_t(int, work_done, budget - 1);
> 
> @@ -1178,6 +1180,8 @@ int idpf_vport_singleq_napi_poll(struct napi_struct *napi, int budget)
>           */
>          if (likely(napi_complete_done(napi, work_done)))
>                  idpf_vport_intr_update_itr_ena_irq(q_vector);
> +       else
> +               idpf_vport_intr_set_wb_on_itr(q_vector);
> 
>          return work_done;
>   }
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> index 1646ff3877ba..b496566ee2aa 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -3639,6 +3639,7 @@ void idpf_vport_intr_update_itr_ena_irq(struct idpf_q_vector *q_vector)
>                                                IDPF_NO_ITR_UPDATE_IDX, 0);
> 
>          writel(intval, q_vector->intr_reg.dyn_ctl);
> +       q_vector->wb_on_itr = false;
>   }
> 
>   /**
> @@ -3930,8 +3931,10 @@ static int idpf_vport_splitq_napi_poll(struct napi_struct *napi, int budget)
>          clean_complete &= idpf_tx_splitq_clean_all(q_vector, budget, &work_done);
> 
>          /* If work not completed, return budget and polling will return */
> -       if (!clean_complete)
> +       if (!clean_complete) {
> +               idpf_vport_intr_set_wb_on_itr(q_vector);
>                  return budget;
> +       }
> 
>          work_done = min_t(int, work_done, budget - 1);
> 
> @@ -3940,6 +3943,8 @@ static int idpf_vport_splitq_napi_poll(struct napi_struct *napi, int budget)
>           */
>          if (likely(napi_complete_done(napi, work_done)))
>                  idpf_vport_intr_update_itr_ena_irq(q_vector);
> +       else
> +               idpf_vport_intr_set_wb_on_itr(q_vector);
> 
>          /* Switch to poll mode in the tear-down path after sending disable
>           * queues virtchnl message, as the interrupts will be disabled after
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> index df76493faa75..50761c2d9f3b 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> @@ -495,9 +495,11 @@ struct idpf_vec_regs {
>   struct idpf_intr_reg {
>          void __iomem *dyn_ctl;
>          u32 dyn_ctl_intena_m;
> +       u32 dyn_ctl_intena_msk_m;
>          u32 dyn_ctl_itridx_s;
>          u32 dyn_ctl_itridx_m;
>          u32 dyn_ctl_intrvl_s;
> +       u32 dyn_ctl_wb_on_itr_m;
>          void __iomem *rx_itr;
>          void __iomem *tx_itr;
>          void __iomem *icr_ena;
> @@ -534,6 +536,7 @@ struct idpf_q_vector {
>          struct napi_struct napi;
>          u16 v_idx;
>          struct idpf_intr_reg intr_reg;
> +       bool wb_on_itr;

Not sure if this was considered, but it might be best to put this before 
intr_reg so it's on the same cacheline as intr_reg.

> 
>          u16 num_txq;
>          struct idpf_queue **tx;
> @@ -973,6 +976,26 @@ static inline void idpf_rx_sync_for_cpu(struct idpf_rx_buf *rx_buf, u32 len)
>                                        page_pool_get_dma_dir(pp));
>   }
> 
> +/**
> + * idpf_vport_intr_set_wb_on_itr - enable descriptor writeback on disabled interrupts
> + * @q_vector: pointer to queue vector struct
> + */
> +static inline void idpf_vport_intr_set_wb_on_itr(struct idpf_q_vector *q_vector)
> +{
> +       struct idpf_intr_reg *reg;
> +
> +       if (q_vector->wb_on_itr)
> +               return;
> +
> +       reg = &q_vector->intr_reg;
> +
> +       writel(reg->dyn_ctl_wb_on_itr_m | reg->dyn_ctl_intena_msk_m |
> +              IDPF_NO_ITR_UPDATE_IDX << reg->dyn_ctl_itridx_s,
> +              reg->dyn_ctl);
> +
> +       q_vector->wb_on_itr = true;
> +}
> +
>   int idpf_vport_singleq_napi_poll(struct napi_struct *napi, int budget);
>   void idpf_vport_init_num_qs(struct idpf_vport *vport,
>                              struct virtchnl2_create_vport *vport_msg);
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
> index 8ade4e3a9fe1..f5b0a0666636 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
> @@ -96,7 +96,9 @@ static int idpf_vf_intr_reg_init(struct idpf_vport *vport)
>                  intr->dyn_ctl = idpf_get_reg_addr(adapter,
>                                                    reg_vals[vec_id].dyn_ctl_reg);
>                  intr->dyn_ctl_intena_m = VF_INT_DYN_CTLN_INTENA_M;
> +               intr->dyn_ctl_intena_msk_m = VF_INT_DYN_CTLN_INTENA_MSK_M;
>                  intr->dyn_ctl_itridx_s = VF_INT_DYN_CTLN_ITR_INDX_S;
> +               intr->dyn_ctl_wb_on_itr_m = VF_INT_DYN_CTLN_WB_ON_ITR_M;
> 
>                  spacing = IDPF_ITR_IDX_SPACING(reg_vals[vec_id].itrn_index_spacing,
>                                                 IDPF_VF_ITR_IDX_SPACING);
> --
> 2.33.1
> 
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
