Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 332E06DD673
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Apr 2023 11:19:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C535B61449;
	Tue, 11 Apr 2023 09:19:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C535B61449
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681204790;
	bh=/MgSrnU2y7ZY9a9B12lBQzbEJwSjv4af+v4ftJWRVQc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zOCXBsm9RbJjo6ivF8kbLlklZpYTCRcoV21HrSnASM9ahIGVvYUJF5Y2C0qx06Y80
	 SmBkE2pw4L3gOZFAaFlcvf4QEsOP+J2byncN0qNAyftK8Zb2WR/w3fmFjbC5r615n5
	 +j1rsnnMNHqTMkBn/MyC9gTOPuy4TFzobCRGo4OxXzGO9j7l0tvySoLV1JhTF6gifD
	 4Rw8o15GH5yykEvS1xcuVWYn5aJVQq1aco9Kr0+H62Ng+HqIyN+eCQocVaNzmpocOe
	 n+j8X4DtkELlimkYqrx2G53bV/tPmou8Y7zp63R6+W59bNCvvFiUs6Ub05aBbuG1qf
	 TLL9w5kWVITyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gt3bQtHy3YLb; Tue, 11 Apr 2023 09:19:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B90CB61442;
	Tue, 11 Apr 2023 09:19:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B90CB61442
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 20DAB1C3BE4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Apr 2023 09:19:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EE22B404C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Apr 2023 09:19:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EE22B404C4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t-CU0UiZ7cyR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Apr 2023 09:19:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A6AE7400E2
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2095.outbound.protection.outlook.com [40.107.220.95])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A6AE7400E2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Apr 2023 09:19:43 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JW2HfDVofbD6c79CXcFRtqlV59mEaM5n30tlgDQOoY9YLI7ZTyynfdfqttW+l8VHMWdrC43j3OMwNCpcFTcTF7KAYER0nQ3raQoaMS/nCYpWyDNjFpCSsyLjZ/InJtlqW6nprg6gIOR0C7IPZhNiDEoGOpguW37Ss9t3Hr7+1Flsr2zO/FOb28VGANnVYYfM5y5nmtUvZLPJ4+gyFIdoBs4IuODHuJFqMzoS8uKC4Zu1yW3RGt38ihhF4IkEmtEeusKORq+DD1IAyZP9VzgLRnTmH5EmiWJiXdXoFbrGwrPilY57KgzZ9Im6YzGYsgqKIlhhA+gA3r2/b9FHctv1Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qwSSYLGV/O5z/lWDVsFoYZa6y5hPQg1FFb9vkYqBeLw=;
 b=Dqw+vyc8+PckegEIhgfZNgEjeHZuG9MKd61eTLQWHiSSK0dHa/t/mcoRGlx9WuPa8oTIt4HYPsTyQkZDXfW9q4rZo5cTg+pJleo8bMAUZB7gDPjXAHQWDgctoXW2K1N+Ubh6e/3rRAUrzRy00Ue+CP5eoq2DK3lFXC2xnsGH8/EyzAd22MUKVlGQ8VsPkbzpnNDEU5ouuYuFTI/QkK0Njfc8mcji8x3HVe9YDQacnRYXN9w93boWvG6LL5UXCBRSvG9ARLvoHWaSCVy2rJEBamteLR8FIExH4EVkIzuVKBNAZI0XZSd+seySTjnQC9xWZ5FL+7NuAv0gqE5GQMLxYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by MN2PR13MB4149.namprd13.prod.outlook.com (2603:10b6:208:24f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.38; Tue, 11 Apr
 2023 09:19:39 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::89d1:63f2:2ed4:9169]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::89d1:63f2:2ed4:9169%5]) with mapi id 15.20.6277.038; Tue, 11 Apr 2023
 09:19:39 +0000
Date: Tue, 11 Apr 2023 11:19:31 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Message-ID: <ZDUmI00WofNY2a1G@corigine.com>
References: <20230411011354.2619359-1-pavan.kumar.linga@intel.com>
 <20230411011354.2619359-4-pavan.kumar.linga@intel.com>
Content-Disposition: inline
In-Reply-To: <20230411011354.2619359-4-pavan.kumar.linga@intel.com>
X-ClientProxiedBy: AS4PR09CA0022.eurprd09.prod.outlook.com
 (2603:10a6:20b:5d4::14) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|MN2PR13MB4149:EE_
X-MS-Office365-Filtering-Correlation-Id: dc23516d-2f7c-453e-1a1f-08db3a6de02c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 50eeJ7IYEWyBsoDSKHqgP64TCRUfgk38K6mxLZfWZebVWYyAMwY3kyRZlcmM4PFOY0OhRyKaUVjkSh6c4EEUG9JcR0MFGTBd5hTRaVf2efqKHplm0+36lmC++nTkp8qelkbMafVH5pLoYEv24+S8c1VSkcK0XQiDnLKIXqI2S9ouMcVocfaFdb9Y6M280E5uykAbRshC/Ij6iKXeU1qs+oCSpSK/4VxyxOLEZlCLlZiSOSznsiZs8R9TNQceDrA7Hj1urKfRrpmLhFUJk8ncPpAbzZBk8S4dwqaRU4bKJ2YxbcxyKdTPhItj6iC1bXNm46YakSuqQdlqexlpq/DzvJVtYj4tjCMATiDez6n5rzklP8eV9XsWQeBJvfMLe4wwAqjtCKcs/AVfXXNPnnhmXsXkl5g1xzDaqBjObpJ6NpRB1FyKG+mRuN9YYsckOGX8AIeL3kSKDA1SJaY/V+OseqVY0U0MlcRBXseqy9GAOZA8Vpbw99ctnDuz8iiGVHGI8stjet79O7bDLuaXv7iFYtNkl77FRYMeJYD+NOF8uBR/p71QAh3anZZwZDsR1MCTZPkk6uEVn1Hk2QsA2eJTSuCev2KAZdA6rAV+M/t8GEQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(346002)(39850400004)(366004)(376002)(136003)(396003)(451199021)(478600001)(6506007)(316002)(54906003)(6512007)(186003)(6666004)(6486002)(2906002)(44832011)(66556008)(66946007)(4326008)(41300700001)(7416002)(5660300002)(8676002)(66476007)(8936002)(6916009)(38100700002)(36756003)(83380400001)(2616005)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nPLWbxb4HlaQ4mYz0jVQIlAtdd9Ub30DZU3J5Ly9rm4RECZUxhJW56tBtbe6?=
 =?us-ascii?Q?NsloMmIcurE+ZS2CNfdTuNZ68mx0EoFNIhY3x+VJpEsxj1Xp99IUuTbtrv9r?=
 =?us-ascii?Q?Dwx4LSp9Bb/5n32TC17Gw9db6F2k7JTnQj0G1ui1HmDKyExdXUZfBE8Xvp5J?=
 =?us-ascii?Q?silQByl+a9zJiJ8b6Tc84xKd8fudKInup/de81M78E5l5XBip11FFzrEuHiT?=
 =?us-ascii?Q?TWxk3Ul5ci3fho5vvS3hDg7g98C6Yx9xg0o5lwAVw7461hx51nxN2b+YKbRH?=
 =?us-ascii?Q?dupfk1BPCEnohDrJGuJ3wtijzftoc7H7cW/z7wKIJv2fiNICD7Xv47Clfm0v?=
 =?us-ascii?Q?N1wmPJCLDXnoCVfKmOzmB9Z44jUBBUupKvneouQF44VM7jdorISZaSO9fMf6?=
 =?us-ascii?Q?1S0BniFSl2xkB5LoSsYAqOw/q/K7klnm+TCZBojgahjdWRmrJENJGlgtCwmQ?=
 =?us-ascii?Q?W1Vksvt2AN9TWq0pAvu9BG2crJgoeHElenZsXzr/hxBpPRSVX9TGqub6ZzSp?=
 =?us-ascii?Q?J/6QSGs7oNGSdOpZ+EyWuZg517WyMx8n+paniQ3ooPHefWi15+PqVdX5Nola?=
 =?us-ascii?Q?PwBB2Y5mrhAnAS9zGks9Waa9IilXtnKT/Naj7d2iMuNgngJZ/0NF60b2gjgR?=
 =?us-ascii?Q?lBNyEao+MtvCgceYNQl88jhZ0cww3FvGncDiOEsLVa+7v76d1pTf6/DqK1Jx?=
 =?us-ascii?Q?KapJW9UZLKrAutQyQIYAxCeBG4zL+7XtWrejMF4AItYjW++LSjAfKcFEmxqW?=
 =?us-ascii?Q?dacYv2yDWZ8GZyFduP/IOyFJLNz1KjwAaal2wYEq43IiDwIecnGqLaZypCmd?=
 =?us-ascii?Q?LZx1NXbfZXkXQK4NKe7hMg+y8sI3N2iWx9ITWx2r6CdATKRQfQ9HQVuqO2ax?=
 =?us-ascii?Q?O6JTgri3yIhT0PAzyv1iLwmSDZ5m4B3QRDxjCKIUY9GT54IGBsvuT+3LRDLM?=
 =?us-ascii?Q?ayD/ls71Rgon1tYqzKzJ5X3P7qelGhOlVWnf+TGfNDQWFBEQn3uGUk3j3luO?=
 =?us-ascii?Q?VpcME7CuTPll3gsV1eOJl7HiR7THEJyPQvPTLvu44M2CM9psWvn0ykzpwHFF?=
 =?us-ascii?Q?fnRxNJ2MlIo+qDSMqKMBaJXYkyEV8YmIRNUw/qcGHr10/vyos5neTxjhPsKd?=
 =?us-ascii?Q?7GKwaXeHSAcR4byrsO3uTvE4+rd/n1ox3CuD9Rs5s7u+hKG7LfhjPJ8rnoYC?=
 =?us-ascii?Q?98+dJd7z1eaiN1ro6y4/XxKsVndu8NTzpvbkhNK0ev6sHwXcdQWIwE2GXhSa?=
 =?us-ascii?Q?UuIycKyRJibdgtc7dQaf+WRGERNY7h/sE4/Nm7EoM/8Ns7HfMh936PRS6ZqY?=
 =?us-ascii?Q?SuOwFCmbfOykmaZKn9IyYgiB9pBVDgMLNIPJ/LfBetR4S2pTbRDVJSJBr4NK?=
 =?us-ascii?Q?MQDef48Am4nBMi9N+EgivRT5WXz16WtwbIz1W3V+0h/6WirCCYzr5kmIvNWa?=
 =?us-ascii?Q?D7oH+O/akPjgZLDo/+ZguVhv0hw2zEPZrkJJzZaFqaHxB5j2CwEcIkpPx/qR?=
 =?us-ascii?Q?6SMTfSj0V3fdFrdTlQRB/NkODjELf3F43m9sIOGUGm2SU6Yta5h4cMgKtH2q?=
 =?us-ascii?Q?/3Hh9D0WLBbQKNHEgeQQpKByk107ea9/rt9WQdGbonF+YgeN/DbaHbCQQYGb?=
 =?us-ascii?Q?X80JZR9avCfzEFVVmdzQAvcgR8NnIC6cuwMLzL2n71iFS9Dh3YNFOsMGtuus?=
 =?us-ascii?Q?rMHyww=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc23516d-2f7c-453e-1a1f-08db3a6de02c
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2023 09:19:39.1623 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Pujn4+U0zajo/SUUE14D8/NABJfgzRq0KerXJ3TanURHcSIVQJbZJ16NeFLcRD9CN/Xz/tfR+d39KDNlFvu938DXFG9hq4lrgCCPiKTuyhU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR13MB4149
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qwSSYLGV/O5z/lWDVsFoYZa6y5hPQg1FFb9vkYqBeLw=;
 b=ILn7G+jlaOpydYpcJat6qdK/2odTDD/Sx9KaAYaLxnJs+GMh6o/iQJ2/XZtDEhYep3J+Hh/sQjvJG64XBImpaNoXHQKwG30KvFXaytEjtgWmqxojDH6FX0GAmdx8CBjIGEdwUB0pdXEsTQMPXLpWVJqDfx09vq9GjaIoXDhKcgg=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=ILn7G+jl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 03/15] idpf: add controlq
 init and reset checks
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

On Mon, Apr 10, 2023 at 06:13:42PM -0700, Pavan Kumar Linga wrote:
> From: Joshua Hay <joshua.a.hay@intel.com>
> 
> At the end of the probe, initialize and schedule the event workqueue.
> It calls the hard reset function where reset checks are done to find
> if the device is out of the reset. Control queue initialization and
> the necessary control queue support is added.
> 
> Introduce function pointers for the register operations which are
> different between PF and VF devices.

...

> +int idpf_ctlq_add(struct idpf_hw *hw,
> +		  struct idpf_ctlq_create_info *qinfo,
> +		  struct idpf_ctlq_info **cq_out)
> +{
> +	struct idpf_ctlq_info *cq;
> +	bool is_rxq = false;
> +	int status = 0;
> +
> +	if (!qinfo->len || !qinfo->buf_size ||
> +	    qinfo->len > IDPF_CTLQ_MAX_RING_SIZE ||
> +	    qinfo->buf_size > IDPF_CTLQ_MAX_BUF_LEN)
> +		return -EINVAL;
> +
> +	cq = kcalloc(1, sizeof(struct idpf_ctlq_info), GFP_KERNEL);
> +	if (!cq)
> +		return -ENOMEM;

Hi Pavan, Hi Joshua,

nit: I notice a number of instances in this patchset where either
     the first argument passed to kcalloc() is 1, or the second
     argument is sizeof(u8).

     I think it would be slightly better to use kmalloc() in such cases.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
