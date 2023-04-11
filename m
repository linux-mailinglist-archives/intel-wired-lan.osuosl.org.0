Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 777BD6DD737
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Apr 2023 11:52:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A38D661452;
	Tue, 11 Apr 2023 09:52:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A38D661452
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681206765;
	bh=2g89uBz8vksBVXGlsUAsn/l4bATstPV6Zqx1ay5oDB0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8UUssSNCJPycWpNDVJ+mNLSOLm8fA4TWJovD2RxI5iFijc47qy74mq/WMHMzR8KnO
	 YstKHcv6j0l/O6vOutkjNgAqGwxasIoWVay02W3m+r/GAPb0oifP4Uo+1g3HzaWDm3
	 bgGgz9mTKudh11WunIiIkaL1EE/SiGgM/ivZMVAZr46bt0ujz6vcmUICo8oyLrSd5O
	 wdzEbg0vMKjAk8ieO1gctm8THdRUMgzeIoabSTIs+DcQwIAGb+Eh7YLDINwrC8uzGG
	 ynU2VsHdiEW9ppmZFyVa3hQmPyX7rKGPEyDWebqq0sI/sz79duF05bFMnruqb19Yzj
	 A0Vx4IaeMN5HQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eGEQhN0lrMSW; Tue, 11 Apr 2023 09:52:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C7F761451;
	Tue, 11 Apr 2023 09:52:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C7F761451
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C75691BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Apr 2023 09:52:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A0B81404C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Apr 2023 09:52:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A0B81404C4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z0UDJqn5RGTT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Apr 2023 09:52:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BFE7E400E2
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2135.outbound.protection.outlook.com [40.107.223.135])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BFE7E400E2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Apr 2023 09:52:38 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VVVKfl+dbR4dCwGy+w8LDgy8G46vaLyxfezXRx8Ge1ZAUqMjbib5N35mVsoIWxK/CIVLip14zNzwYtyMBRfrNrsnIFYOXhNZUUwC0S3Qkur3zYZPzHkwGm9ctSndLwawHB3dsMo/zdl7rX0UFcZytjj3gaiS2xuqPE0PF2UQ78npcttNt3qf2a+d7uSPZAuR7D/9qt+zsYwVwpqX0SH57JCFbrK18cGfmggNTcWZzGUDBoMydxY9RursNHF9q+Vfq9sxX1/K2yhVybNQRRkoRdqvtZ2VBKfezwqtC4/ClqApXELp7EuVjlDBXECbjf0L3uu4yNS7f1RscP2dclblLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aQXJoU7+FLqDfIgzSX/O4FxBFIFP7jIWpTtO4yGqXvw=;
 b=gNL7k1KJtU+ls8ojVdEFSmSolTglAPhV+bbrQD6EktNITYzpz0kNtqED8D8J+HakmyDbH3OE7oYDQbeXaWCnoZzob/9/Tbhiqt8uBRJAzhTMgH7qEg4JxgYThCEF8+x6i2Yv1W+fwILu8VmBjlTtKXr1ChigZaMkwcAqPZGh7/BaksLJnluhdcnoU0t6WoUgbnqEL0KKcs8jOVYF2ndtmg8JQJmZgTqTdLbae+aKZPqEJ5J+ujWiqukRvtrE2NGAec471B1/KXg8jT5JKwcDwNcHaXy2GJEeK6HdFYuTH096lqDD2vDSDoDH4F8V7cGWIo+yWKmJwDHpyPCZ8E1WaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by DS0PR13MB6174.namprd13.prod.outlook.com (2603:10b6:8:123::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.35; Tue, 11 Apr
 2023 09:52:35 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::89d1:63f2:2ed4:9169]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::89d1:63f2:2ed4:9169%5]) with mapi id 15.20.6277.038; Tue, 11 Apr 2023
 09:52:34 +0000
Date: Tue, 11 Apr 2023 11:52:25 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Message-ID: <ZDUt2ZWypHcc856F@corigine.com>
References: <20230411011354.2619359-1-pavan.kumar.linga@intel.com>
 <20230411011354.2619359-5-pavan.kumar.linga@intel.com>
Content-Disposition: inline
In-Reply-To: <20230411011354.2619359-5-pavan.kumar.linga@intel.com>
X-ClientProxiedBy: AM0PR03CA0036.eurprd03.prod.outlook.com
 (2603:10a6:208:14::49) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|DS0PR13MB6174:EE_
X-MS-Office365-Filtering-Correlation-Id: efbd6c02-d96e-4bcd-c2de-08db3a7279b0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hP3ci5Fu8Cty95GA1/oLRHCeG0koYRZJimGFF8DZpUrVKt9tC/ufVCIBmi5wVKhXnahzjhYxKAgQwZAQKnG6G/qogi0MRq05qZhZJGzZVypGSk4EsKDOHr+wKVhuT0uOQQMss+b0kJBwr7ltgbWXb26tsEu1QvyPxbX+1YN8Zo65sVQ+fkHd6BpwYZRNgHVPnTQO/6zlijpNHjDfSecGeODr65dt5495pPN9RnZL7gromn4DwzA6BNSfkVOk1BmgE/riSVr6sO4fu088zY5aUj1sL4mghLgXhiuJ7ef1g0yxclcyyfwruV9h4xMM0gzqfyA1N/UmtaJxXNpnYuorWNj8X0n1E8n0aUtFfge4R9roEhMJhVf9++To17/8Z2j1Ppw5U0a5UvTlx/n8blKzV2BJrV7TfcyEhrDtNaYsTdFJqAd0xmeV4ChkZ64QOITTprq2rQiOtiY6JY3L/bLV6dF1mHTag7u6PzzfaEo4FsIIGEEZVsadm+Gp095FDiS7hL5MqAKLquACsgeQP7hCWVM6+jDC0E1eTxLVTp0SHd7KEIN9BgQRjmrO06UezyJoSpeiVcL0t4QjAqVEHiFnGprRVUGtj0YWTsr64284iCc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(376002)(39850400004)(366004)(136003)(396003)(346002)(451199021)(36756003)(44832011)(7416002)(2906002)(38100700002)(5660300002)(8936002)(8676002)(86362001)(6512007)(6486002)(6666004)(6506007)(83380400001)(54906003)(478600001)(2616005)(186003)(66946007)(41300700001)(66476007)(6916009)(4326008)(316002)(66556008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?AGODdQyelXYNuVuyUzw3QEjBw4RxMrQZq2UPdDxjsVizNF7CNmKLUCdcI1qa?=
 =?us-ascii?Q?7PW+2ZmKL9gcKCbC+eqJCsUvqHlxv+WyAUIrun4ijEFpkqgTnFZjwJa+z1Fg?=
 =?us-ascii?Q?016u0qCz771H/bfrw3yc+UX+6yMmuL+341nb8iE/FhMhiAqltgSix7hrhKqa?=
 =?us-ascii?Q?A0lZwhM92hs+KQX4AHCViY6qfzNY6HrBkUt9xfUOamjOu4jEyBpKkQf2jHHO?=
 =?us-ascii?Q?hucYFvnZrMrGKGfgUblfMWB+k12vQbaAkYFOANrbsdkFdsu+3/j50Yzc6wxs?=
 =?us-ascii?Q?Z0Pw2jbWCAcwDWN5ZI9SFbL2WrDWKpMGd7z4GE88ysa2nWhpm+KuYUu4/xkR?=
 =?us-ascii?Q?9Epcnl1GTa2+IeBv7vZ0YKUoz5vRHvQFY6UJerM8qwSfuuW6WkpRQkUM8OPL?=
 =?us-ascii?Q?l3KOtgvkcPcK4fLg43Jokm6sYUiBKipdP/xnoszNioVsCDdLCaYFgh9bUBVo?=
 =?us-ascii?Q?dervtpmwFBHDQcBwZ8UKA9szXwYNK0axT6IRsJ5AYfoJ6PdH1rhRb7CFmhIv?=
 =?us-ascii?Q?MiIH5nylGtSPwazNL5FLW9THMTlRMgPsJ7klSVvpZyU1JWhGFAIee/KZtTOS?=
 =?us-ascii?Q?WVjZCAIupxSJ8qqDzcRQ1E/kiZbuSIrpfl059oM/r6dkgG/WimFQOzywrLxO?=
 =?us-ascii?Q?gyhohDBK4cFnwMVliIoxs7tKfO99cMWNjtPzO/Qnn6YhmRG9qSP267ErOfil?=
 =?us-ascii?Q?v39ru9aNf2C9O0xV956rltkSENJUQ4Hf4mca2alRkotjDisUXD1bete3FA3y?=
 =?us-ascii?Q?G05jqGAgPRjS8wtAE8ZtXDKFZcwPPOAbKs8rn6FQkWsJ/Fls5YkLRZ1Sm6UQ?=
 =?us-ascii?Q?DUjVhLvEFMbQo43b8Y+twS9WhRZN9/ZVulAdDZZKW09My8PrgpHMp1gKjmNo?=
 =?us-ascii?Q?cZ4rP9XLgSgFLPe+kCrLzmEvirguqwNGlewl6y95ScygJk6AQ/BlTotGU15H?=
 =?us-ascii?Q?ps7wiFj1C2ah/3lplzXvQ5xabCzk21MeUmDQaIQA6fk89SGBwVyguYLRz76/?=
 =?us-ascii?Q?Y4tgLINuYN9/0O/1vwTjyyN5FcFre9wsywxHyfq0h/B2MBb7DJG4RbORb05U?=
 =?us-ascii?Q?b8y8k+Sx81TUvnAy/z8MneDv2+8Bk/LHzb0KvEqMIn3ZutdMSiDxnEh1DS+H?=
 =?us-ascii?Q?e32zx0P1wbf3JngblBoj4wfPv8SAwJbqFl5MukYthii6Bv0XJI4+6lrOIeQx?=
 =?us-ascii?Q?MJ3Wc308lOmiav8LzPogD4JyH5j2GLIsUdGsm3JkSx5jW9QwoK7N6ls8AgLA?=
 =?us-ascii?Q?GRkyNDgnn9MAkJ1ttBNbpVvT+DmBJaKEwUnoCccAbQ/MezEeDEwQbPXjtfND?=
 =?us-ascii?Q?/lR2v7KCseexFeKFXd0Kg+d+Glgp8Hxjt7Kk97Vyvg1bORU6gxOEHK5r5oS/?=
 =?us-ascii?Q?mhM3BkjOLLFW0RbWC0Y80oCbBf85F7mbcTPrtsbaOPn39m8Jl/UimGGrKj9C?=
 =?us-ascii?Q?WbC6QoiHbCbGiJO4CJ3o840IWxhwHHon2RzBsYRzXTr0LP8HGdZ7Vmub+lXa?=
 =?us-ascii?Q?zDZMspvgEdfSpHHt3KVldUYHvc06YHXWivVviYZB6zsvinIEtzgGJkl34Fbp?=
 =?us-ascii?Q?2ibdh48aIHUKZumG3y2Swri4n52G8qP/aELF3prkUXRhoA1gBR+qZXqWWpFP?=
 =?us-ascii?Q?TW5B85o8rppRNrZs8IxGTbUYrTui1Q6zyAeHc9ojEjKaMgKylhraR6AOObDM?=
 =?us-ascii?Q?N7nIjg=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: efbd6c02-d96e-4bcd-c2de-08db3a7279b0
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2023 09:52:34.7822 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 50BjgUmPS+rI7BQA1kuJAOZCfVg2BAz4m6+N+zCjgeqnxf+jCdjpHHOQxKBMYpwjhl8aqowO9ihtVhn0Tj5aZxbgh5mCqzs6EhQk6xl+ARs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR13MB6174
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aQXJoU7+FLqDfIgzSX/O4FxBFIFP7jIWpTtO4yGqXvw=;
 b=BPiTBGX0DzmpACbmwQ05rrSVM2+x107wamv2zv7W7ZR4i5RxTgsO9xV7a4vunlP1+45fWEh0IosOWretujjqB/DoiXtSP0CipVc8zEyYlMsmOlWdjA9o56tCbBnfJmF766cntqd7BInByDnZJtUBHA/4P6Fev5k0tDG4Vjuq53Q=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=BPiTBGX0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 04/15] idpf: add core init
 and interrupt request
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
Cc: willemb@google.com, pabeni@redhat.com,
 Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, kuba@kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 Phani Burra <phani.r.burra@intel.com>, decot@google.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Apr 10, 2023 at 06:13:43PM -0700, Pavan Kumar Linga wrote:

...

> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c

...

> +/**
> + * idpf_recv_get_caps_msg - Receive virtchnl get capabilities message
> + * @adapter: Driver specific private structure
> + *
> + * Receive virtchnl get capabilities message. Returns 0 on success, negative on
> + * failure.
> + */
> +static int idpf_recv_get_caps_msg(struct idpf_adapter *adapter)
> +{
> +	return idpf_recv_mb_msg(adapter, VIRTCHNL2_OP_GET_CAPS, &adapter->caps,
> +				sizeof(struct virtchnl2_get_capabilities));
> +}
> +
> +/**
> + * idpf_send_alloc_vectors_msg - Send virtchnl alloc vectors message
> + * @adapter: Driver specific private structure
> + * @num_vectors: number of vectors to be allocated
> + *
> + * Returns 0 on success, negative on failure.
> + */
> +int idpf_send_alloc_vectors_msg(struct idpf_adapter *adapter, u16 num_vectors)
> +{
> +	struct virtchnl2_alloc_vectors *alloc_vec, *rcvd_vec;
> +	struct virtchnl2_alloc_vectors ac = { };
> +	u16 num_vchunks;
> +	int size, err;
> +
> +	ac.num_vectors = cpu_to_le16(num_vectors);
> +
> +	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_ALLOC_VECTORS,
> +			       sizeof(ac), (u8 *)&ac);
> +	if (err)
> +		return err;
> +
> +	err = idpf_wait_for_event(adapter, NULL, IDPF_VC_ALLOC_VECTORS,
> +				  IDPF_VC_ALLOC_VECTORS_ERR);
> +	if (err)
> +		return err;
> +
> +	rcvd_vec = (struct virtchnl2_alloc_vectors *)adapter->vc_msg;
> +	num_vchunks = le16_to_cpu(rcvd_vec->vchunks.num_vchunks);
> +
> +	size = struct_size(rcvd_vec, vchunks.vchunks, num_vchunks);
> +	if (size > sizeof(adapter->vc_msg)) {
> +		err = -EINVAL;
> +		goto error;
> +	}
> +
> +	kfree(adapter->req_vec_chunks);
> +	adapter->req_vec_chunks = NULL;
> +	adapter->req_vec_chunks = kzalloc(size, GFP_KERNEL);
> +	if (!adapter->req_vec_chunks) {
> +		err = -ENOMEM;
> +		goto error;
> +	}
> +	memcpy(adapter->req_vec_chunks, adapter->vc_msg, size);

Hi Pavan,

Coccinelle suggests that kmemdup might be used here.

drivers/net/ethernet/intel/idpf/idpf_virtchnl.c:2085:27-34: WARNING opportunity for kmemdup

Likewise for a similar pattern in:
* [PATCH net-next v2 14/15] idpf: add ethtool callbacks

...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
