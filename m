Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1166DD62A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Apr 2023 11:04:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5027E6144E;
	Tue, 11 Apr 2023 09:04:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5027E6144E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681203888;
	bh=eJbQ7uZUSJPK90riGFkWhKwS+OQ4TJ3qYXshYw5mUz8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ISs7FqTfgR/2Ffr3/76X2pEF0f2mYtA/D1nV5NeMaN5PDr5jrG5flStMTMbbBL6bT
	 vcx4t5TSoldpoOifi368b+kpfzm4676196inmJyqkLw6vDX1WxU9YbPq6rm1td1oOD
	 zT3TnYByfuV6veIvvF3Ra9lLCnFkYTmnUkgJT37i84BKlcwJJaxpCTGy7DV/9bH9go
	 fQqZQK3OYtQ3FIh1uBwqU/5t7JteObC8jpKZaEyLQ+tyupthjOIWJ7JE59ULRhS7Aq
	 dtwfcJir1kCWReI7ZAqZPfXSUSbK69ju1clSOIbP1LmiY2T58KhfbfuC7ioZaKCP1l
	 +MXLOTrXk8wmg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xRoJmS6tobyW; Tue, 11 Apr 2023 09:04:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 51CC86143D;
	Tue, 11 Apr 2023 09:04:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 51CC86143D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DC59A1BF34F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Apr 2023 09:04:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C310781E6C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Apr 2023 09:04:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C310781E6C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BORBvRDzwt_p for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Apr 2023 09:04:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D0C6181BB0
Received: from NAM02-BN1-obe.outbound.protection.outlook.com
 (mail-bn1nam02on2102.outbound.protection.outlook.com [40.107.212.102])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D0C6181BB0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Apr 2023 09:04:41 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YkJX0pxcwxUB/qeEUnia9RDVDpaMoSdIFHf65tk3DVTKSWYElNlYpt1//ku6FRfcxEV1BHniOwJFBA4rtCc8vCyKUTUm7a8fU2YVEcL/RDWaex4jLKmc7O25dw7bDHnDFGbMNgCmlCEruvkflvVnLPzYiPAubYWOkx4NOGP2jPvJ7gbTFqYkUrB+YQxzLK+5egV9M7ykuanOtXzzdVL3JUGCwzh5uiDNWfTSTmNWheW2ryOUra+UcV+2KZWPkGefRGtLYXoFh9JaEAAFR/y2A3ZdyPQooo/5biDydx/J8vrmRBo3TlYdDxhiK4QguY/8fb/FgyZ+jakD6RRTGKY9Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CSKViEKsTyeK2hllqGJq7VRkGJEIuKxAevraPF+lGvM=;
 b=kU+OJwLFQHX+77ecLaa1+jp98pI5OjzhO+MaIrHH9evDzWqkStcTUQtRzR1rkzzE8hghG+MagSQSu9QvK+2hwlCR3zcpBifgPvMhoZr9s1NZ0r8/F+wXQe6tHN7RcPnhhRUgsqvmHsfkkg+ZsP/PPrZXxtbBmXbildR82bdMbv1CxxMax/JG7ECM5NAMn7UXl37Er2sBaN47wBic5xVSV8cL8gQz2LLWqet93l6AT3w2AUTfTSUfOqXo8ncqA9/cUL5ie0lp2Czr6vGKhMnosiHQ83OFw8btfT0HRoIaL8rzfMd3cq7HW30pg479xnwK72P1KU1FWkMnSeiVaPNQAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by PH0PR13MB5778.namprd13.prod.outlook.com (2603:10b6:510:119::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.34; Tue, 11 Apr
 2023 09:04:39 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::89d1:63f2:2ed4:9169]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::89d1:63f2:2ed4:9169%5]) with mapi id 15.20.6277.038; Tue, 11 Apr 2023
 09:04:39 +0000
Date: Tue, 11 Apr 2023 11:04:31 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Message-ID: <ZDUin+kC2Zrqk2wk@corigine.com>
References: <20230411011354.2619359-1-pavan.kumar.linga@intel.com>
 <20230411011354.2619359-7-pavan.kumar.linga@intel.com>
Content-Disposition: inline
In-Reply-To: <20230411011354.2619359-7-pavan.kumar.linga@intel.com>
X-ClientProxiedBy: AS4P189CA0037.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:5dd::8) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|PH0PR13MB5778:EE_
X-MS-Office365-Filtering-Correlation-Id: 7636b74a-0d61-411d-50f4-08db3a6bc7ca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ocvRTn3WrP8zEGkqoA+qiKY5vOxd9m0muXhjPd5NKHRC3MsReHP7YLGAAC8cRQf+oyq0kG+M06xaUhGVM26srvIVDcB9EPdNqaAZGx5iMypvoXrbvjMjpJAQGwamP2M3NpllNSXc7gCBI/sjc9Lw81d2/rOhGFAaLrny7Y9YV+cKFGKsanpGyu2p+Pugn/leak6c6vA2oD6cuukkblfg3zhqqJMhU+shTN1RljkvMd3uba/fHknmUMqY8zJqc/6FOCuRN5Qpy63aziBJzsjWmypfvL1LWyXiQFPqwNAb6C6E1C1sz8XfV5x0CZmNxc3tA4tHO3KLq+bJIuaTJRIEuRvpYkqUrpiimpszy7+hR25tc04fbYeChgIrDppEp403qu8nhQdWIZmcI+iF3eQwQltl/tPV4loV6A5uosWCL8wgf565vecLbZAmYrblDgI7MjcBOPjsQ96o/eJuJATEqEw4K/+6lyCik3cLFpLbpowlva5DYDvDAjqnb1Ag3NO+M9NhKVQIgE2aiTSSFB1QM4d89pb3pYnkaFRXNbM2xzCICiAQB0/BZmqE3kzRlX1Ps/Y6xuRBpaVr/FUCXZmq8wfNpp5/ODJkAbbmxQptMVoIxAXPqRN7uL8UMrsmB6uk96Xht4GPEBlqvzG8USVt7qMmowRsB9RLyxzI++VJkJs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(346002)(366004)(136003)(39850400004)(376002)(396003)(451199021)(66556008)(6666004)(38100700002)(2616005)(4326008)(66946007)(8676002)(66476007)(6486002)(6916009)(41300700001)(36756003)(478600001)(86362001)(54906003)(316002)(83380400001)(186003)(6506007)(6512007)(2906002)(5660300002)(7416002)(8936002)(44832011)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?YfA/UL14ZR0VNdZ992AjmYsw+qc4NO2H3Iqdh5e2yq1PrAfTUAvxsx0U4c7g?=
 =?us-ascii?Q?W0kq90sArsEjbLeHdbEkbDpoRrbDDijHw/sckMV4p9kpvBGrxcl7LjUN5T49?=
 =?us-ascii?Q?AXpSEnTCC1Fm8MO2IAYgSnwNWmRMiNA+HEejrB1mj/YiNaBUhppbKYmb4iv+?=
 =?us-ascii?Q?5iFY3EDwvr2Ez1MMlbwpml2OF+WEZVF9EhdS/7EktZLqNLwpOp/BxqnVKWBb?=
 =?us-ascii?Q?xGlHEjJ40Lp1wKifZ/6o3F4BTO6JGtYegp0XLt21LR3cj4rtHxzY9rdHCvtJ?=
 =?us-ascii?Q?C8rfEUdWlW3R/muLca3dkNTpNRVsRw49qj0Mm48RmXWVwAOrNE+ftFfX5U5x?=
 =?us-ascii?Q?gpJdDtNaKKftXoG/rAJrO5srdAoM4ITDw+TjzytiaYJB8kZVQ7Wnd0U4g+wo?=
 =?us-ascii?Q?/VuCLLG3OW2jx78ok8rcZZLB/rFo37eiLTPxhbakDYotCjTnYrLtbBQC+Jfn?=
 =?us-ascii?Q?9Lz3nxFYlEY2srJvcDwy3zLCXLwd9Y6//kPSH7FRDU9nTCSafB3SxH+QVrN+?=
 =?us-ascii?Q?7Xj+c1d/a5KA32zQoLbtBSUjvyE6ZDycGJJO50ZiO7y3EM1HcNdtE4+zGS6O?=
 =?us-ascii?Q?5M6ai/8ttia24pIq5bwLvXFP3QrANJ5qyRPNCJQsTM3VvMZwIphfhC2LXsh4?=
 =?us-ascii?Q?PJ5LZRazTq8kEUv/Blo6ZG3Ak1KtugAb6hVxxRWWMgXGCn+s7l8Tq4V7oDOC?=
 =?us-ascii?Q?aJ/GGCEp/XnHW8TNVZTv+fzL3FFHIm6pPmrcjgnvaH8JAf90YlwVBH+xHAWI?=
 =?us-ascii?Q?EBSmcXMJF8EWqe/U2Mw/edj1fkZ2qNA9r1hSMx5jMzoMk+CwFTlzyXeWDQLp?=
 =?us-ascii?Q?0uZolpuCjlKDsxJex1X/LBKoY7464fzNsIaWbw7qvvq4f6z3UwqmwJJDwX8j?=
 =?us-ascii?Q?yn48vPgJKmntBUypCUgYogvETFg2uLAnjDjxpVH/+XG3HIgtlqhXc0f0IKBs?=
 =?us-ascii?Q?BY4Yf4MskS+01J5fjMZwHrMbl699HhqOWh6aL5YMLBH6HmhMJYyXO5IV3c00?=
 =?us-ascii?Q?ZqyXMB7zUrZQZHNcj4MH4CpR86E/pZsBWQVs+6I9ljE8rGGR3Gl6YUr6wvk9?=
 =?us-ascii?Q?eore8ev7pOp6ZMlMog9m6bOqnIDCEnPTLD2yEFyKGyhjfWiKy6M0vV7XJVyt?=
 =?us-ascii?Q?9ep8KXakL8bzUYVR7oHS2wm6gvGTq2Igik2CY0/iZggtXbVX8uwpxyEmFwiN?=
 =?us-ascii?Q?PAGIe0ocNWPJbuwMXRZp3PwOuf91O8n9uMEXtl2xTMx07CZurGt+dVuTP++a?=
 =?us-ascii?Q?1F0jy+zGX+A8h6rDpxOXIPEMtweyZJwAIXzmZqwshsWdxh+qzTWpts0zaMYc?=
 =?us-ascii?Q?bDPJJkIRZ0ec+1miBJSf2q7/7Icd2Q+Vw4XULkN5/h5DnG1IGQUi1ABHSxSE?=
 =?us-ascii?Q?92jubWq+2skZNUJfFBAhxCUiJy3h+WkHl0rF7q9JB41B7r9dnqRmbbB260NP?=
 =?us-ascii?Q?x81W+W5fr/y1SWTAzn83TAu9yo19HrtIh3a4RwfEdCE0ETOKLYRWUitIoBkn?=
 =?us-ascii?Q?Vjludq7qNYEyS4p4S2KYwe9qgp0yEqUnZ3thVzPk+lBcdPOGkNBhB6vbumCx?=
 =?us-ascii?Q?8Soyyf/wVBdt+K05doBMHN0x5elk0wHWnxyBQJYyr90XHBzc2nQkASjuFxrC?=
 =?us-ascii?Q?g6wNlGQRYN7ZdvO4kpZHDUlgILQkMTu2TApjRKVOE04H/oYSbosZC/zKSvmd?=
 =?us-ascii?Q?HxmrJQ=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7636b74a-0d61-411d-50f4-08db3a6bc7ca
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2023 09:04:39.2418 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3GtU3YGWtwFeqXEZyh3A1zM+4OqRupkOr5HuR9TGId4IbsiyujudcWXNYJGXEFdlOUP6FgqHvEbCkL1k5ak1Dd1gVM4357aqrF2tT+BCn7I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR13MB5778
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CSKViEKsTyeK2hllqGJq7VRkGJEIuKxAevraPF+lGvM=;
 b=ZC7YEzrLCHeA+KrNZWKngMVVwTAXIj0ABvS25phRI8gbMPH4cYcFEAJ8fu3zGy2d8Q5kYHVW9FTFQXoRRZqxo8aa2fcGtnLa1tr+5at1rL7QUt1POa8i7D4SQSCH6CExhn+anGBWu6lAjr/sgBlphHrBK+7QW6zQUPW0fdiCW3I=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=ZC7YEzrL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 06/15] idpf: continue
 expanding init task
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

On Mon, Apr 10, 2023 at 06:13:45PM -0700, Pavan Kumar Linga wrote:

...

> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c

...

> +/**
> + * idpf_send_get_rx_ptype_msg - Send virtchnl for ptype info
> + * @vport: virtual port data structure
> + *
> + * Returns 0 on success, negative on failure.
> + */
> +int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
> +{

...

> +	while (ptypes_recvd < max_ptype) {
> +		err = idpf_wait_for_event(adapter, NULL, IDPF_VC_GET_PTYPE_INFO,
> +					  IDPF_VC_GET_PTYPE_INFO_ERR);
> +		if (err)
> +			goto get_ptype_rel;
> +
> +		len = IDPF_DFLT_MBX_BUF_SIZE;
> +		ptype_info = kcalloc(1, len, GFP_KERNEL);
> +		if (!ptype_info) {
> +			err = -ENOMEM;
> +			goto clear_vc_flag;
> +		}
> +
> +		memcpy(ptype_info, adapter->vc_msg, len);
> +
> +		ptypes_recvd += le16_to_cpu(ptype_info->num_ptypes);
> +		if (ptypes_recvd > max_ptype) {
> +			err = -EINVAL;
> +			goto ptype_rel;
> +		}
> +
> +		ptype_offset = sizeof(struct virtchnl2_get_ptype_info);
> +
> +		for (i = 0; i < le16_to_cpu(ptype_info->num_ptypes); i++) {
> +			struct idpf_ptype_state pstate = { };
> +			struct virtchnl2_ptype *ptype;
> +			u16 id;
> +
> +			ptype = (struct virtchnl2_ptype *)
> +					((u8 *)ptype_info + ptype_offset);
> +
> +			ptype_offset += IDPF_GET_PTYPE_SIZE(ptype);
> +			if (ptype_offset > len) {
> +				err = -EINVAL;
> +				goto ptype_rel;
> +			}
> +
> +			if (le16_to_cpu(ptype->ptype_id_10) ==
> +							IDPF_INVALID_PTYPE_ID)
> +				goto ptype_rel;

Hi Pavan,

The ptype_rel label will return err.
But err is 0 here. Perhaps it should be set to a negative error code?

Flagged by Smatch as:

drivers/net/ethernet/intel/idpf/idpf_virtchnl.c:1198 idpf_send_get_rx_ptype_msg() warn: missing error code 'err'

...

> +	kfree(get_ptype_info);
> +
> +	return 0;
> +
> +ptype_rel:
> +	kfree(ptype_info);
> +clear_vc_flag:
> +	clear_bit(__IDPF_VC_MSG_PENDING, adapter->flags);
> +get_ptype_rel:
> +	kfree(get_ptype_info);
> +
> +	return err;
> +}

...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
