Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C176D2429
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Mar 2023 17:40:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 86F75846E0;
	Fri, 31 Mar 2023 15:39:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 86F75846E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680277199;
	bh=iMMx/Di1e++HUhQFuzKvm4IiR0e0ufMUqcFkXT7S8K0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ev4r1URf3WSgvAOe1f1VgfahBrC3QIaMWIhTx/YgulS3Rk81xEtZ/rRcgLFLZxAbo
	 bytzHZetDLpucPY9+g2NNjRicSivthNZKMKiqNAX01WoAOA+1jtfF6Wvt86oMx/IsL
	 Dt5IAeZxQSdQ6/25DDzLgIVziFLCgI7XxuVMN5iggLO7unPhQZnPymtbPtkE7j2zYT
	 NbhkNJkT5FGrqVQCP2HEyMR+fbkNQptAam7RgZko0IOQ+CnQyOKKzrSPi8AFtRJvg+
	 G/gfwck9gxmYwPVrRvpsxewc3L6U8y+VRSOzPzXPElS7zIjCelgkNBUQTydiXOyTEt
	 K8h3IBlYjOBWg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E7pAAA-x7028; Fri, 31 Mar 2023 15:39:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 749DE846D8;
	Fri, 31 Mar 2023 15:39:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 749DE846D8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3C1951BF3EB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 15:39:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1BB9242289
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 15:39:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1BB9242289
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5aG1XfghKIvH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Mar 2023 15:39:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1CB8442283
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2138.outbound.protection.outlook.com [40.107.243.138])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1CB8442283
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 15:39:51 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=comTq/MWdkdGM4z/n+G1leUNgRtx0knFTUt0QMPw2GOSHKGsX+y94hEAuXwhTdkdS3sU4FTsjbOWuBZYtbpBpaahuaS70AoF+jhrYrDqgJ/Uk7t6BzdxdFU+Oypmv26N6NjnR3ROzJ/Uv2rolN2Ca5Kge6oJWMOjRTZsRscTqJvZaVLRRs9O/9anDnbNQbkKzszytKL80PnZrOEtd+9vPS0SQsVEVROLqymWmrBGNKhStnQFHurf3A2SWF+PrFh9ZU59S6N+sTYrmN04QNjFCOPS1TRQLdDdY7A/8kJLXfOUSW/F4hiEDcCjwujcZFUX0CIQ7TBucL+F/lnilOOqlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kFUBEUfTiEsosLy51a14TUSDvfb6hLzQE464Cwm/+tI=;
 b=Ab4Ktu5kn3F6UwZsoR7hd1BOPnaG5YRGMMLgYWObM2GSMASlS2xp7EmJx+4Bfr9/A3MkYRU0WyvH0A3vYP4g4yjqrSKJWqMJ9vH76GaCKMTIB3O62+ibRGFQqXRI/FDb79G36NxHkGqESBGTc33KuynT/+O6YzXIosqAP+EzCPbaxyTuK7pGeLNrmd73cAaSy43YHTq7QBaX6j28QjCHe/Lwx+mV6UqH4ui+wHZ845CkDPk7Ud0YUUDkMsxhOM+JMA8qStc1JDejKdah5aneeICNw9ZfJxTLk10I4NK/hZWVDqVjuwgqSlPnL70bQ59GhaJ9dG1Xo70USoVak2YFHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by MW5PR13MB5464.namprd13.prod.outlook.com (2603:10b6:303:191::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.30; Fri, 31 Mar
 2023 15:39:48 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::c506:5243:557e:82cb]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::c506:5243:557e:82cb%5]) with mapi id 15.20.6254.021; Fri, 31 Mar 2023
 15:39:48 +0000
Date: Fri, 31 Mar 2023 17:39:41 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Message-ID: <ZCb+vUw4a0bRfQFt@corigine.com>
References: <20230329140404.1647925-1-pavan.kumar.linga@intel.com>
 <20230329140404.1647925-5-pavan.kumar.linga@intel.com>
Content-Disposition: inline
In-Reply-To: <20230329140404.1647925-5-pavan.kumar.linga@intel.com>
X-ClientProxiedBy: AM0PR02CA0159.eurprd02.prod.outlook.com
 (2603:10a6:20b:28d::26) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|MW5PR13MB5464:EE_
X-MS-Office365-Filtering-Correlation-Id: dcf48cfd-ca41-4d02-ee7f-08db31fe28f0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: p0vA9XuFfC7mTWhOc0gh1WzG5hSjnFrWdQTnGqPN8DB1lYuKmlcTKVpX99xVdm+AUM8Y0Tc9XmUZK+kzpgc/E+wewU/q0XH4Hlt5KPoWDXthgDCAncrKaqUDuA907C418Wk0h+5nbcClZhhPfSMJQ66iOkcOEeMC8wry/UXIVAbGOut0ZZvrO/YrZNFP8jFD3F/6BnpgrEugNmYzUZVdFGGjrQhyhgGQhBBO+zqt1ny3WOQVbn9JpYJJUP1rzmnAxiYzqjgPbcdsvQKbRejqlRbChoJJy8636pWqtwQuXItSd+LjpVxlDW5aHWQFIfRFgq70NMPRjlQOclI7bXSCwFkPcwTIaIVWyD1somPtdYunU53fwg1J7z+Ch/a3sDKosn42LLeY1aScx02igIZE6luEFX1TX9yvxbJD7ZlmewLjNMHjy9BReE/UcW9Oy5zhj6k5AW0ghD8BoEgAPLGPYC/eNVNGNzOMCoxqiqRA9lYJIbQui/4DjfbY/i3/w/CBaCK4gHasikJatEhUtN5TtUyPQA5uo5DwdohzmJaS0a8GjCDS2LkYP0KtDSzlsw63VMNcmzl3VoHlYDW8DG9fCcyLNQSQXjbs5ZpU4LLdkUU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(39840400004)(366004)(396003)(376002)(346002)(451199021)(7416002)(86362001)(36756003)(5660300002)(2616005)(6666004)(83380400001)(6506007)(6512007)(44832011)(8936002)(186003)(41300700001)(6486002)(4326008)(6916009)(2906002)(66556008)(8676002)(478600001)(38100700002)(54906003)(66946007)(66476007)(316002)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?iXGam5tjO3zRn9r08q/CJW8y8K7P2lMtlbRu4wj0sVm3aNiSvoaxUbulkshd?=
 =?us-ascii?Q?50PK9yQlf+nM5k2agQn0EgoxXOR6UJ6PUZrzaWIDDkdwULl6rdDOzxxONkXC?=
 =?us-ascii?Q?ipnP2udxGCQ7yW5LXymFo5AQr/qMEg2+mbFHi3cwjMyRSoiRKXDjbcuBe5Fh?=
 =?us-ascii?Q?1vvvIlH/6XFZE/krw5vwh1BOQHdw5jbaZd89FoWgNx0KzFS5seXiU6PC5/sf?=
 =?us-ascii?Q?xNFjhlDwyWIgwa9AoBE5icdxaaj6CF8fkM1miGMuAcGcRfmVu+1+iZ3AKp/7?=
 =?us-ascii?Q?yDP8O5S0whncqxFrz78fkcQ3f0kqWGzSCy1tQcFL0AYproXCGGFCZ7iOSt1L?=
 =?us-ascii?Q?jilTzqQg2mgAnT0M0TIYWDqWfbOpNzR80hVWk8BbRUICupODX5WRBLT2175q?=
 =?us-ascii?Q?VwmNIORLcy4mocqlXah2qxKEKP+5m8WIjW9h4pL04NgzbRI8w+wW3+Jo/zGN?=
 =?us-ascii?Q?3OZfqSl6+x+srRjIpx3F2qVoloCbRF0pSrEoj8pk+WXSOu2VzBK/suSCnhQ/?=
 =?us-ascii?Q?0JWjq8WX20g7231QXP8b4wpoZ4cv6soVphLaYH1ernuFLvUhPiVCzcowblYp?=
 =?us-ascii?Q?yzcO6OVl2cfLQp7+upFFXA+Dp6Z2WJO5r0TIMDeplVwyZ9qeaguW2GWAUcqn?=
 =?us-ascii?Q?Dve6hgpS5KCrfRlEcpB5upQk9zVh1Y1Q/lXZbjVVZSyTkmr5+q/4iXWxm10k?=
 =?us-ascii?Q?4cR/ba/8HvFwZ//GLXR++S5oUCktHwnq6J6Ly6u2lgQ2XISJXDxeninf9ugO?=
 =?us-ascii?Q?Lu7st3SHdYTUIWn4QIU5h0fo3avi2ch0+VHQ0drwEkQNaOfTUCoKkUOuKt4d?=
 =?us-ascii?Q?dkhXP+64R+lOOg0VvfBfful20+rBzRCookbm4VrM7K+qmJF29STqU2wr23U3?=
 =?us-ascii?Q?Fd37rM7E1n0222dipIVHuVp/zjkVzjJVT89Z2Slb8jxraxyI7t7ygBBaDlSw?=
 =?us-ascii?Q?mBJh4DxTn5mYW9pob+HOYs+P8g7eFfMvlINEe+IhTZ3cpYxmfPnmlseyca6n?=
 =?us-ascii?Q?zzmkg7xmSKFV1sztf+XZvXj6VuMnN80CpzCQ8Omf7CjXuUFeobjqmrJJOemH?=
 =?us-ascii?Q?bqjrr5P4AAROB5Ur/BWjCG7umIg3WnU1YkTqkUIP9U14AUdQcI7rjIaS7s3x?=
 =?us-ascii?Q?MvaSwJD4jI2Y0EN/RvvJDephpFV/qZ+lbdNUo/tESchyUZ8rmBBuzg9p7xPj?=
 =?us-ascii?Q?tysADziKJ4xmIV96bt+1LmUZ+8ShBQKNv5Wn7qlzQFs+2MGfRbnJiXaU+Srm?=
 =?us-ascii?Q?CIwpjBjkJybazFeD3/5DIZDize/3jI64rI02glbs6kP9iPsEZMsZ/T1npVbJ?=
 =?us-ascii?Q?bDOeUkML8WuKG6f0eIGYUSupPD/yOwmb/JdzfT2/8qhicf8xkfR8UBwBQh+U?=
 =?us-ascii?Q?6EREZL9bJlNkrf5cr7ZDGD4C04alLtVUi54EOi7zzy1aEP8p26b0HkbVjfXR?=
 =?us-ascii?Q?rtN93ofqjSNh1zVPIAJBV58pBgvDXxagJPB/aCwlNjRowyIYQdxSjzr0wujW?=
 =?us-ascii?Q?BtbfwipVNsAP2xIXIPUHcufXf6fjr+sP5BSnOIiTqdxSAdOpFj62h826+Dxh?=
 =?us-ascii?Q?d1Xpzt9hI2+lrrvTcHKHUctxygtMABQotR2xuiVLVwrvvqECcW1x3L8jd7Hl?=
 =?us-ascii?Q?ThDyQN2k6aGU5+4PiIYR4LO22Qxep830k4B3SvrLFdydAxl1eEKW+x/BVVe2?=
 =?us-ascii?Q?Qai2Bw=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dcf48cfd-ca41-4d02-ee7f-08db31fe28f0
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2023 15:39:48.4035 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vl78M/xR/5aWkiboPJOvgQ768uxjU/MNj2O+uPkm7hXoI2sZB6Kzi7HKDUOFqkBDm3xQh8/NF5FSX1Pck9l2Uik9SptACF28n4abN0+y2Mc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR13MB5464
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kFUBEUfTiEsosLy51a14TUSDvfb6hLzQE464Cwm/+tI=;
 b=tZvgglQ3MYPmm0ROAw41LoosaQ8Auk08NRNmJmwvPxZNRXbqxNkMTCuIvK5yd8H5nhpvhwSKHczGnxc+EVJWrlWzbugkzgWwc68+lJhC0q+XgU3DdMzzqFiRQAD1SqmRawrhA5ZgPTOdwzrA53bd1V8Lv26qbflIq6meh7q6Fqw=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=tZvgglQ3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 04/15] idpf: add core init
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
Cc: willemb@google.com, Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Phani Burra <phani.r.burra@intel.com>, decot@google.com,
 shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Mar 29, 2023 at 07:03:53AM -0700, Pavan Kumar Linga wrote:
> As the mailbox is setup, add the necessary send and receive
> mailbox message framework to support the virtchnl communication
> between the driver and device Control Plane (CP).
> 
> Add the core initialization. To start with, driver confirms the
> virtchnl version with the CP. Once that is done, it requests
> and gets the required capabilities and resources needed such as
> max vectors, queues etc.
> 
> Based on the vector information received in 'VIRTCHNL2_OP_GET_CAPS',
> request the stack to allocate the required vectors. Finally add
> the interrupt handling mechanism for the mailbox queue and enable
> the interrupt.
> 
> Note: Checkpatch issues a warning about IDPF_FOREACH_VPORT_VC_STATE and
> IDPF_GEN_STRING being complex macros and should be enclosed in parentheses
> but it's not the case. They are never used as a statement and instead only
> used to define the enum and array.
> 
> Co-developed-by: Alan Brady <alan.brady@intel.com>
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> Co-developed-by: Emil Tantilov <emil.s.tantilov@intel.com>
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> Co-developed-by: Joshua Hay <joshua.a.hay@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Co-developed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> Co-developed-by: Phani Burra <phani.r.burra@intel.com>
> Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> Co-developed-by: Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>
> Signed-off-by: Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>

More spelling nits from my side.

...

> diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h

...

> +/* Stack to maintain vector indexes used for 'vector distribution' algorithm */
> +struct idpf_vector_lifo {
> +	/* Vector stack maintains all the relative vector indexes at the
> +	 * *adapter* level. This stack is divided into 2 parts, first one is
> +	 * called as 'default pool' and other one is called 'free pool'.
> +	 * Vector distribution algorithm gives priority to default vports in
> +	 * a way that at least IDPF_MIN_Q_VEC vectors are allocated per
> +	 * default vport and the relative vector indexes for those are
> +	 * maintained in default pool. Free pool contains all the unallocated
> +	 * vector indexes which can be allocated on-demand basis.
> +	 * Mailbox vector index is maitained in the default pool of the stack

s/maitained/maintained/

> +	 */

...

> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c

...

> +/**
> + * idpf_recv_get_caps_msg - Receive virtchnl get capabilities message
> + * @adapter: Driver specific private structure
> + *
> + * Receive virtchnl get capabilities message.  Returns 0 on succes, negative on

s/succes/success/

...

> +/**
> + * idpf_vc_core_deinit - Device deinit routine
> + * @adapter: Driver specific private structue

s/structue/structure/

...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
